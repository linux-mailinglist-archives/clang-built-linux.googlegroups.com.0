Return-Path: <clang-built-linux+bncBCRIZROPVQPBB3VFRSEQMGQETZOXNVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 406473F43C8
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 05:15:59 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id k2-20020a1fa1020000b02902842f3ea686sf2585967vke.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 20:15:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629688558; cv=pass;
        d=google.com; s=arc-20160816;
        b=aEKwRmeB3AYHJR1Q28NxCLxxZR3aYP1ELaN78w9niBCHugnhyjI/DGqszVujXojO1/
         NekC0jIecL+ABCPvuZFk6PnoGbNjjOwE46eJt1fG3Ba9m12iHaBOyKBjQxV3MXiHU6Zz
         +UNVNeICOGqk3siUwTolH4bJSLx2MklISa50XR2LhNpNO1xLbjpaU9WAw23+S2pZ5rvZ
         k8aKBRJnZQuUsw8EQ+qytECrbCEfb2TX3VfD5Q1DcYX3xqYoM7mdwOiKdkgT5hDdJpBn
         h3imvfyBYhZ/qWG9lFc2VggN++wE4SAh+xZ0JjJed+VD04MFr2rNNq9vmTlZSnHkUDbP
         0vsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=1TDfxuxc38SV6D2IUjIIQViSf/zyL87EMFafc5ooKsw=;
        b=Jk2/e8kM3/8L3R8PGp1lsKvrixs2w94mndISP4oymxjCaMFLH8GPb+RBQwCSxtfEEB
         bE2f7Un/ym9E6gZ8Lfr4cuj/wt8EoCRJ5EcszSKdT2XKKcY5Nbmbl5u9ucMPZAcsRl5X
         uX0vS8JbsY1/y5vuyhAo0tRvQ1Yh80FDrFoTeP5jsG3lizkX8xh5VDS0oXr5LBT8Cx4g
         pB7BpUWlAFM+0PVmK8LPzZQs1zGRDtQOXlmydWnOGo6sf/dyXoNr0VhWm++LAxRvca9a
         s9PSHLtYs2MIsa+EvqJ+fSeC8fhEmu1A/sRc5OXCi478WajfQ8HeXxslIVndhaPSFgyH
         7mmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=RFPiUbmt;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1TDfxuxc38SV6D2IUjIIQViSf/zyL87EMFafc5ooKsw=;
        b=PJaPcozOUEZPlcwE/ffo2p0OU6sEI5G9nrXfXd0a5VpntqWfMjgSNhXNLRcohN3U2S
         j0WGXMyzgiUiMEudp/vqPu3oPXKAHW1JUlkai9L+nkeu8z0DdwZdus250wF0vV46S+aL
         7ojGWR1BQl4NtvcC7R8gZN9WNFMcl2oDk73IGKM8Su/7Z4rlGDX/mGD+szChFy7mSpUF
         EqkyvLda3FAATVhcPrN9WTozybEC/y7tnN+OLGMyBqhTUKxr/78b6kNeRGaBpCDjLjHy
         a3IG7fcQKpQIAvwGlkt8Um93GhjV4DqmsSsDdS7c+eET2Tdkd22+pQBtB/Pmjh0SuXHd
         RIFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1TDfxuxc38SV6D2IUjIIQViSf/zyL87EMFafc5ooKsw=;
        b=OIhK1d4J4mMl7Jqpfp2ggZ0IZUp8UUB0zDmbB7NVsySQXrNmH4KozMmJMjVpBKS6qW
         ufihcSHsy/TcpUGzu8uKYoFv7L6RQHwnpoIJflY3W4Wt3YNxZ4rS/8lNLV8+1HVbRaiH
         tmBQuVVlEs5+zUy4Gr/FaBYNVNMCYtWAhQlA7SE2pXHPDK+hRCMnCWspvsq0cZrSU7sC
         KRhbbT97XNF8r6ngWCymoj7MrunmUuJR9YOy/IIDGWB0yikJHCQPJydabUYHFd0lSjwy
         c6/jtzs/rvbHhncb7KuLYPvJhCHY8THMYnAWKehTbbTMiGtG+/Jr1xf+hAjY6d4TzEMk
         dHJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530o9e7lcKQAsKHtIG27NoGrfl0B1F3DIw9a7bkIVo3j5tJWta0C
	I5vpSMIy11UMbH+aSoGk3+U=
X-Google-Smtp-Source: ABdhPJzPTHY0YitMr+4u7kNhqo8r9EF1PdQ4VGpOiZXDd7qqzrOKab150ZCbabklkB9+8t+JZJfRsA==
X-Received: by 2002:a67:1a45:: with SMTP id a66mr23072641vsa.15.1629688558188;
        Sun, 22 Aug 2021 20:15:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:48a6:: with SMTP id x35ls1397042uac.2.gmail; Sun, 22 Aug
 2021 20:15:57 -0700 (PDT)
X-Received: by 2002:ab0:7305:: with SMTP id v5mr20590366uao.47.1629688557743;
        Sun, 22 Aug 2021 20:15:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629688557; cv=none;
        d=google.com; s=arc-20160816;
        b=OOJA3L4Kk5lLJTWBm9CRt7HJdTiv/hm8FKU0P+hX6FrXge5L7ByLVVAK+SFeQlHpOZ
         nEh4AACYv+StWagjoCJOQkpGNA6LF+7DPmg5pg57kgcSydyqkYOeT7ZnMDY6fRvz4e/6
         8IGI8AZ7Kj9BA2sqKEtE1Wk21lSY8lgPAf0rTUyR3/MjdMH1hyza2l+v8ukFNcaf8mt9
         97g4hbZzCBt+jSOLtyP/wusZfBGB9EaMgfGMLuy5BIBDLciNjW8FCj+Ki9a0ECGiTfdW
         QZTe8tL3+FAFvVVZhCLA5OBUDXw9JyurEu0DTLs3F11TFDAl4G7TN6fp1uudSi7Q7l8h
         6cFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fQQOss/Yb9n2T7y6Wzh0ROcta6ZEY7+Hq1Zg7Phh6mU=;
        b=ExLuDRJAg6apDykuNKhdqjffUX2CL1rb6hSyHsOmme/xg6RV6ReWzlbIQDrc0OYUTc
         mmnSdEU37DrLsMWdoDNpivWu/J9hz8978QM0Xbo3v382oZj31l0N3zDYKZxZCWSOdAhV
         jtbpB6yNe+CJbIKv0Fa1/9N6BIQqZhnCp6EFU9aYta1lP9h9nKhGghQpYz95gVRudVEu
         ZzP8maxfh7+Xg/BJeCyzbPEuP8Q7ECXApu2528Kfz3BVexKgWPhd3L6JAOUo9VDmXIfw
         MZmeBtVFqQC7Ua5LPTd/Tzyf2KsWSMOZQDkYzwr/1Vyj7hGiMLHEM0dBZT7hHJODpM4W
         hh/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=RFPiUbmt;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id k21si774246vko.3.2021.08.22.20.15.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 20:15:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id o10so9379844plg.0
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 20:15:57 -0700 (PDT)
X-Received: by 2002:a17:902:b947:b029:12c:b414:a018 with SMTP id h7-20020a170902b947b029012cb414a018mr27191354pls.30.1629688556867;
        Sun, 22 Aug 2021 20:15:56 -0700 (PDT)
Received: from localhost ([122.172.201.85])
        by smtp.gmail.com with ESMTPSA id z11sm13879748pfn.69.2021.08.22.20.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 20:15:56 -0700 (PDT)
Date: Mon, 23 Aug 2021 08:45:46 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: kernel test robot <lkp@intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Linux Memory Management List <linux-mm@kvack.org>,
	Quentin Perret <qperret@google.com>,
	Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [linux-next:master 6632/9522] include/linux/pm_opp.h:458:58:
 warning: unused parameter 'dev'
Message-ID: <20210823031546.fupzmdxjntacsq2e@vireshk-i7>
References: <202108210311.CBtcgoUL-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202108210311.CBtcgoUL-lkp@intel.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Original-Sender: viresh.kumar@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=RFPiUbmt;       spf=pass
 (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::629
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

On 21-08-21, 03:30, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   86ed57fd8c93fdfaabb4f58e78455180fa7d8a84
> commit: c17495b01b72b53bd290f442d39b060e015c7aea [6632/9522] cpufreq: Add callback to register with energy model
> config: i386-randconfig-a016-20210820 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d9c5613e856cf2addfbf892fc4c1ce9ef9feceaa)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=c17495b01b72b53bd290f442d39b060e015c7aea
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout c17495b01b72b53bd290f442d39b060e015c7aea
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=i386 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    static inline void pm_vt_switch_unregister(struct device *dev)
>                                                              ^
>    In file included from drivers/gpu/drm/i915/gt/intel_llc.c:6:
>    In file included from include/linux/cpufreq.h:12:
>    In file included from include/linux/cpu.h:17:
>    In file included from include/linux/node.h:18:
>    include/linux/device.h:653:46: warning: unused parameter 'dev' [-Wunused-parameter]
>    static inline int dev_to_node(struct device *dev)

False positives ? These are mostly inline dummies, which simply return
errors. Their parameters aren't supposed to be used.

-- 
viresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823031546.fupzmdxjntacsq2e%40vireshk-i7.
