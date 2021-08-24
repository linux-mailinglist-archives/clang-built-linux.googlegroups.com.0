Return-Path: <clang-built-linux+bncBCRIZROPVQPBBLFXSKEQMGQEKH6ECII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C503F58B5
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 09:11:47 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id s4-20020a259004000000b005947575ac53sf19262315ybl.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 00:11:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629789101; cv=pass;
        d=google.com; s=arc-20160816;
        b=ozfFCoCunYfrIQUMdQKNpLEoWhIbo48ZHeTR2Mn0oWBGWZpE0vt6z+beM1Rj9d1YII
         Dk4zIoG1BrWDyMO5pvUCpvqfFMBU+bJxybdSZP5liMQTx11nskkvhLPU73NMMfyUr152
         9gLx00JEVdm3UU9Jhpja8TTx4W4cvYsSt447nVWfxuMdBYO6pK7hlADAJZnomDUdXlEI
         W8D4y0TB1Uk3VnGLR9CM7y9/Jae6POL3cZ1WOFBBB5kesTIU3vuob22YIU9qHd7z40PI
         /8VZQ4+uuGbQv4YKFpb/VBlFR5MqcI+bPbpo5xw9hwCp0pY31hYTgyuO9Dye0jlTYoJY
         V6UQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=jkjrQQwVvFuOQNFyZvKUvWdUK2BVAvGazP8cQc6FunE=;
        b=nW/ipSCXi7g+OpxyHBEfECK2JhxfBNJjGdcS6n+TkQkhm2rmjb3iDAZUTC4ZtsjR3C
         LXk2rueilsmwWyZYQ6oe+YM9dwJFmNkeIFIsSl08acUAKSjWfoDqVTFubKLughmtk/l6
         0EbrLmJMevphOF2R7JRyTFVvSd3zgEyX+2GPbi/3Dm3UAnNQBUFeI8smQbeVUTwVwXt6
         y5ZNV3dz1ZhVwwS3lCdYtlD9QW5QSsuvHriHwOczk5B8lfNPYkwYnm39UonkFyrVVxrl
         4fOsrOjBmISWP6Lam5Ktd3XO5tV7/NPQK2pbn2lkcKnx2BYtcN4KnEz4kn6tW9IukWaz
         wDvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=QMMD8u5i;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jkjrQQwVvFuOQNFyZvKUvWdUK2BVAvGazP8cQc6FunE=;
        b=jLdpmF1plLnD36JCeYQeTGVU8AdCoZeOphcBzWEJJTif9fME5LiioW7eZvpnp5jHg0
         FuI6XYuHgTdMNpaeiW/+iUB5+6LoBfIeU4vwDsysHgwkAZvpaTcCamNL/E1wEQ9cfl1B
         JZhAZWHStsVlnmICHC8q7QyGvO2uye8m5Lj+aChzpiVxJDJNcOtukMc2Eh4LyTjka3Un
         PuGvlw5yxie/AwEun0i2q8PZOpHC5MBboz2FwYFrQguOgIEGRbzyb5+wNyKgdQtvpzH5
         amBTTbLGMJPjYnIAJTuiERuJ5oO2xGJm4wH91LkYK8KACTsoyySx6MIhCYgQhl7jdPjG
         ofrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jkjrQQwVvFuOQNFyZvKUvWdUK2BVAvGazP8cQc6FunE=;
        b=ucmzW1gHWM4KDVRjA5TRaCfpboftWQ/QgkuDR4dajKj3//OBYuS6m97ve6kCUO1GJ4
         EtQTndnlyg5M0Xkun0zpwCfIWeRXwKKo719VpXbJEPqJvNZauSyQM/aZZNbQqmcbVuH8
         mlAN8XqZ8RVYCmzcG8UFeyyHoKJX1NkVwRBC3SAiJRv8+dXYXzpFGNJTG/Ln6dd1KyEp
         jeA8l0Fp4sSO3LhkCQrqvwlVNWc7yfZ3wpX72HOoLwrwcjrv8GJPI0bUDDShiVmI0Rsk
         UARfU5Ud4/oO0k3IzkCWrEPVhx8jRcAEI5ABuYNbyyRd0UkMV7Idt5ywlwwfnqvfEFMM
         SxNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329i+6680xqHdJ8deLXC6rzXZVG00nX6pZFsHYEsBAMLepER5CK
	c5YgrQ08De2o7eDPpUt0mM0=
X-Google-Smtp-Source: ABdhPJxt0DlADT7gfmb3GctzOGSXRG95gMr6gBx5LgVU4WdlXiohsTsmlpNORsZp7gfWjFupEMOEgA==
X-Received: by 2002:a5b:4ca:: with SMTP id u10mr17527276ybp.344.1629789101093;
        Tue, 24 Aug 2021 00:11:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9808:: with SMTP id a8ls1356288ybo.11.gmail; Tue, 24 Aug
 2021 00:11:40 -0700 (PDT)
X-Received: by 2002:a25:53c8:: with SMTP id h191mr50128496ybb.71.1629789100621;
        Tue, 24 Aug 2021 00:11:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629789100; cv=none;
        d=google.com; s=arc-20160816;
        b=E3jaEKvoRpS32YXZHUHW0T9d5g3u2hJO9koGueZfuNHcSV9aGH25sjyH90RnHM/9BX
         wnWc3eFB+V1CHdyZ4sV99lTipoPwW0SAYIucKJ5BxEocGGR27evIfTe80DuswC8AYF41
         P+jFkD0IAtrDKiYjlFPu4v56ngYBVl/pAR7Wvy5lDYn7GlcY6Z5vb8N3prdCh1gcEaLn
         Ywjve8X0c6Ul7AA6jVbRwU/DCDk4CMXtl50LW1pt29cTfjBvOkJWhoDo+M3fVakSW3v2
         sn7PawVL0Cc+NTy9O+L6H6uXWfZSiXsbUkO89hU1b58QgiRsT4+UlDvGIVgihvllCgZo
         6/Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=4yj1MsIvR997A+hpDaBXq6r8GptVAD/IgfIuiHBhOHM=;
        b=EEgpR5sgd7gYV9KMeQt1Ilw4XNZVAruhSsGuEcwhvMfYRyRgBB0XRxdUSz7UZM5ZTl
         RpXDIHZUz54GdRrDsYocETKe3kUbcG4GjzK7eU6k1zk11/Jk71/aRW5TpjibLoaH/jDM
         Ro1XNAJQfFi+VCF1uz8vj872mNo972BVCCACBRnGCdW7M/LE9SHNLKMDxEbAaBq0uiWk
         aBiqlFuzmgqsKp8y15IagLhWF4LdJscipenBlcxTTEQjP72REP6yMcqP26TBDVyEk2E/
         ugBQ1WMSTVxSVMUr4cBQbfB96NY4qGXKP/m9ZjO9X5dzgRLL5okDQ5H5DvGDffgIgEYc
         K4CA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=QMMD8u5i;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id q62si1153902ybc.4.2021.08.24.00.11.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Aug 2021 00:11:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id w19-20020a17090aaf9300b00191e6d10a19so1188779pjq.1
        for <clang-built-linux@googlegroups.com>; Tue, 24 Aug 2021 00:11:40 -0700 (PDT)
X-Received: by 2002:a17:90a:c705:: with SMTP id o5mr2866780pjt.55.1629789099672;
        Tue, 24 Aug 2021 00:11:39 -0700 (PDT)
Received: from localhost ([122.172.201.85])
        by smtp.gmail.com with ESMTPSA id s11sm10349375pfh.18.2021.08.24.00.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Aug 2021 00:11:39 -0700 (PDT)
Date: Tue, 24 Aug 2021 12:41:37 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Chen, Rong A" <rong.a.chen@intel.com>
Cc: kernel test robot <lkp@intel.com>,
	Thara Gopinath <thara.gopinath@linaro.org>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [linux-next:master 8440/9522]
 drivers/cpufreq/qcom-cpufreq-hw.c:294:3: warning: Value stored to 'opp' is
 never read [clang-analyzer-deadcode.DeadStores]
Message-ID: <20210824071137.m7uhzwccfuhcrncf@vireshk-i7>
References: <202108221933.WIgFqDfv-lkp@intel.com>
 <20210823065211.mzagmzexavwxu4vy@vireshk-i7>
 <38f16bcf-40bc-c400-ef64-da8e43b1135f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <38f16bcf-40bc-c400-ef64-da8e43b1135f@intel.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Original-Sender: viresh.kumar@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=QMMD8u5i;       spf=pass
 (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::102f
 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On 24-08-21, 14:53, Chen, Rong A wrote:
> 
> 
> On 8/23/2021 2:52 PM, Viresh Kumar wrote:
> > On 22-08-21, 19:41, kernel test robot wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > head:   86ed57fd8c93fdfaabb4f58e78455180fa7d8a84
> > > commit: 86afc1df661a99dcd6b8d264cae171f1ead2b7b8 [8440/9522] cpufreq: qcom-cpufreq-hw: Add dcvs interrupt support
> > > config: arm-randconfig-c002-20210822 (attached as .config)
> > > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project a83d99c55ebb14532c414066a5aa3bdb65389965)
> > > reproduce (this is a W=1 build):
> > >          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >          chmod +x ~/bin/make.cross
> > >          # install arm cross compiling tool for clang build
> > >          # apt-get install binutils-arm-linux-gnueabi
> > >          # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=86afc1df661a99dcd6b8d264cae171f1ead2b7b8
> > >          git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > >          git fetch --no-tags linux-next master
> > >          git checkout 86afc1df661a99dcd6b8d264cae171f1ead2b7b8
> > >          # save the attached .config to linux build tree
> > >          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm clang-analyzer
> > > 
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > This doesn't look right, it says issues are with cpufreq-hw driver but
> > points at hid-core ?
> 
> Hi Viresh,
> 
> The warning with the prefix ">>" is pointed to this commit,
> others are only for reference.

Fixed as this and pushed as Thara is away:

diff --git a/drivers/cpufreq/qcom-cpufreq-hw.c b/drivers/cpufreq/qcom-cpufreq-hw.c
index 26293d3b15a4..a2be0df7e174 100644
--- a/drivers/cpufreq/qcom-cpufreq-hw.c
+++ b/drivers/cpufreq/qcom-cpufreq-hw.c
@@ -291,7 +291,7 @@ static void qcom_lmh_dcvs_notify(struct qcom_cpufreq_data *data)

        opp = dev_pm_opp_find_freq_floor(dev, &freq_hz);
        if (IS_ERR(opp) && PTR_ERR(opp) == -ERANGE)
-               opp = dev_pm_opp_find_freq_ceil(dev, &freq_hz);
+               dev_pm_opp_find_freq_ceil(dev, &freq_hz);

        throttled_freq = freq_hz / HZ_PER_KHZ;

-- 
viresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210824071137.m7uhzwccfuhcrncf%40vireshk-i7.
