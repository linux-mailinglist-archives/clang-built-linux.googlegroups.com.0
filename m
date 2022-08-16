Return-Path: <clang-built-linux+bncBCT6537ZTEKRBA4T5WLQMGQERBE7MNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A64595400
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Aug 2022 09:38:44 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id c14-20020a05640227ce00b0043e5df12e2csf6231747ede.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Aug 2022 00:38:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660635524; cv=pass;
        d=google.com; s=arc-20160816;
        b=juQYqLEvSEzaPpULO0Qh8Y8z8pc6/QVqp+VFyYwXle2lQ/9twFfbz6gx3jxzWqI4KY
         sBUqOKlFMuj2OIFdKh6GA0ROJ0MkjBycQ56QKtIRAKT1Ga0DEGvDRfYcUqJjle+Sf2as
         2Y161j/L4Pl6uFBpH9bdrSNRVLVY4AEj9gfPiNahr3fPoNtxsfv6RpGQWXvguYqHK4o4
         xHRm367kl9+DG6ho86dorRRPIiKPWU53WuIp4BiHIgRe0r/KHHy5lgG4vKtyjM5VSr6e
         J3+7MYNhfbIEJqbOw5Y5ctN1hda6f07SZ0Lfqk6m2zNhkQZNsxscE8n8+b5sNxT3Lwua
         SxYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=GVJhXBJ3BqnmNS62cCKec2e6Sc6yPh0kPDTL+S97GTQ=;
        b=cCWFSGCoHj27OOpR8v2bnJ4wQU59aTOBhjkUN2aukWyHNjWQoAimn1t2YUFnoNdOuL
         ap/AGhubL8jnEq+Q/1aSiCpLGuDtKPtnVfhhqsffqYD44gZEOnvtUjmNAxJpz4KHED0I
         MleZlHL9HUpD2egGOZBVOB1Ku7NlS8z6PsUg9v5VKBZeZolEeg/kZX510nAwUuOLAEKJ
         ykpvnJufQ35dCm+Gv/6xKdVa95n/iy/eYnZaj3BOvzKadWufeCNIWbutOrQPnwP6Vk2z
         s3KZl0ABbYyBT9x7zgnEYUg+cDZOGtpCVE0gBz+7Hf3SKrYCGpoTZ5u2dj8FqzT50umk
         d3Mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=KJkXLDKg;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc;
        bh=GVJhXBJ3BqnmNS62cCKec2e6Sc6yPh0kPDTL+S97GTQ=;
        b=DrK8xfzb4Hgv4Uyl5ykiCzxdMBuWx8lpxX1hQRxhwYYUw1hF8STCLydXju343qfSSr
         61+XtQ4t5YETgDYfN0rC04TnsWEpsTTHQYaBrexGq9gRA1k803Ni8YP7zyic9HsKlcfD
         kcFrfaRQ6BRu/wtirG5Zg/67RQZxpofqDTt5sRIF3FxEDRLdUXx90diT2cV8M52Ih5yZ
         5KO2BISI5vDtQrNfS6Bxtys9idTkzNqIdQpa5GEjkz62U7nKLPRPH7v0GqtWw+RNVIZ7
         cbuvVlPe95bsbTzHWJ8xi1ILLxskkyfwbsbgQRexljPNVv/NdW6wB5zLAS/FyKY0p7LL
         6dbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc;
        bh=GVJhXBJ3BqnmNS62cCKec2e6Sc6yPh0kPDTL+S97GTQ=;
        b=yTkGfgv7VCxypeY0jGBGm1iB7v5tX0BAPQS/gOxZQI0KNg72zz5kUMV0pUkhM2x0Wf
         y+xJ2I5Hmd7Rr8xBhJ2sAT06oHdYM87aiwWgu1fsLvlxavkoYCkSYx99rqOCwfRLjhTM
         9Usm/fPVAksAmvP4Z00Bl/z+dWe/CbaJnX6NLt3ok6C7iZkUm3LsTQoHtTPB+uk5mVBl
         rS/bNJAZ0q5QyRkd9rqAk9gRDQWO4oPAOWkfEF0ifOeO/7g+rzH2687FszinwaSTcqi9
         yuq1tXksFqcwtyzjTikcZmP7C1vYfTjlouSXFFfV8wdjo/9Vt5maYZ9/DRLQwDMq3+3n
         hlyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ACgBeo3/57fgmm5sax8XPJDPSem44Ez8f/ALGfH8O80CVU8TH6uIp1mi
	7V3Mp6WsyKKwKU1Kd/1v314=
X-Google-Smtp-Source: AA6agR50B4M2Lr+ObzR96JaqFMrefkDTR8u2FAHIylnHGgO9L0MJIQ+q8MisbPx9+b5yXeZWn5P2fw==
X-Received: by 2002:a05:6402:440f:b0:435:2e63:aca9 with SMTP id y15-20020a056402440f00b004352e63aca9mr17173632eda.162.1660635524185;
        Tue, 16 Aug 2022 00:38:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:d8a1:b0:726:d068:52af with SMTP id
 qc1-20020a170906d8a100b00726d06852afls3835206ejb.1.-pod-prod-gmail; Tue, 16
 Aug 2022 00:38:43 -0700 (PDT)
X-Received: by 2002:a17:907:8a01:b0:731:4316:b0ad with SMTP id sc1-20020a1709078a0100b007314316b0admr12961841ejc.477.1660635523122;
        Tue, 16 Aug 2022 00:38:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660635523; cv=none;
        d=google.com; s=arc-20160816;
        b=q5SLn7xec0XIba2JKRYUdSb1etY9Brky7h+uxnrDTvW71Ksc9GKspKqQyZXH2QdTld
         q/6FUqwWzoupymrbhInPEDnDJGxQnlKnsBmtaG8AKZ3uO9mGHmVqbk0EESlnw/eLi3Ur
         SdaICYuK9UmwEh72MmoKY0cl3Vg/MwRPpuTT/slUU6JDSaKkIhKbFm2bDU122MDjfiR0
         YswkMNnBlyIeIpdSjL48aKYCej94/L0cjVVibl7SThCXOF5sRfpVcbVRFJA3YwvD0mVn
         uViLyEYvgnKZxhJJJ9MGGdFA4NBORBFT6aBnNCPQKJBmOXpktx8CJ81K9Gzw7tJ1kLp0
         rfNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7buQFKX9OZIlEB4+dje7yWbqm2+cxtfTWEbPmdc/htk=;
        b=e2Sxa64YoYjAkk1sSvFl+c9tkmccVLiOEAbXz2oKbRInIkzB8UbW1IH3pzRm82H9Yy
         7FGIW2/rLDT4/2zgzSx6PkVjbJkJAxtxFrs6tpie6HbUW2IpjCLWUoyRovNNdhvlqxWl
         pJPGff2ZJxgMknVS+jzcIAqf99HvtwQD7QUgD33bqAmxNSwqx8eYfuEdOmjl3KTPke8/
         yEXy3ab7EmmNXJZGdRW8FPCs7hV2sX97rKbc3bYx4SsALLnU+KnBUE27x6MJwSYBqC/i
         FL3lgYvow2OyGh4/SqpFM7MQ9eBBIjNV7u/BwhR655Un2RnYzV2aaamv8FWsZuunjRVb
         nBMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=KJkXLDKg;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com. [2a00:1450:4864:20::532])
        by gmr-mx.google.com with ESMTPS id bo20-20020a0564020b3400b0043c90c086d5si837667edb.3.2022.08.16.00.38.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Aug 2022 00:38:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::532 as permitted sender) client-ip=2a00:1450:4864:20::532;
Received: by mail-ed1-x532.google.com with SMTP id y3so12404116eda.6
        for <clang-built-linux@googlegroups.com>; Tue, 16 Aug 2022 00:38:43 -0700 (PDT)
X-Received: by 2002:a05:6402:2387:b0:43d:3e0:4daf with SMTP id
 j7-20020a056402238700b0043d03e04dafmr17756151eda.208.1660635518010; Tue, 16
 Aug 2022 00:38:38 -0700 (PDT)
MIME-Version: 1.0
References: <20220815180439.416659447@linuxfoundation.org>
In-Reply-To: <20220815180439.416659447@linuxfoundation.org>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Tue, 16 Aug 2022 13:08:26 +0530
Message-ID: <CA+G9fYtZP_rYnmRyLbMrxKPGtJuoOw4h412dJXBJnzab41CzUw@mail.gmail.com>
Subject: Re: [PATCH 5.19 0000/1157] 5.19.2-rc1 review
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
	torvalds@linux-foundation.org, akpm@linux-foundation.org, linux@roeck-us.net, 
	shuah@kernel.org, patches@kernelci.org, lkft-triage@lists.linaro.org, 
	pavel@denx.de, jonathanh@nvidia.com, f.fainelli@gmail.com, 
	sudipm.mukherjee@gmail.com, slade@sladewatkins.com, 
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>, 
	Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=KJkXLDKg;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Tue, 16 Aug 2022 at 00:58, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> This is the start of the stable review cycle for the 5.19.2 release.
> There are 1157 patches in this series, all will be posted as a response
> to this one.  If anyone has any issues with these being applied, please
> let me know.
>
> Responses should be made by Wed, 17 Aug 2022 18:01:29 +0000.
> Anything received after that time might be too late.
>
> The whole patch series can be found in one patch at:
>         https://www.kernel.org/pub/linux/kernel/v5.x/stable-review/patch-5.19.2-rc1.gz
> or in the git tree and branch at:
>         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.19.y
> and the diffstat can be found below.
>
> thanks,
>
> greg k-h

The arm64 clang-14 allmodconfig failed on stable-rc 5.19.
This build failure got fixed on the mainline tree two weeks ago.

* arm64, build
  - clang-12-allmodconfig
  - clang-13-allmodconfig
  - clang-14-allmodconfig
  - clang-nightly-allmodconfig


make --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/2/build LLVM=1 LLVM_IAS=1
ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- 'HOSTCC=sccache clang'
'CC=sccache clang' allmodconfig
make --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/2/build LLVM=1 LLVM_IAS=1
ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- 'HOSTCC=sccache clang'
'CC=sccache clang'
sound/soc/intel/avs/path.c:815:18: error: stack frame size (2192)
exceeds limit (2048) in 'avs_path_create'
[-Werror,-Wframe-larger-than]
struct avs_path *avs_path_create(struct avs_dev *adev, u32 dma_id,
                 ^
1 error generated.
make[5]: *** [/builds/linux/scripts/Makefile.build:249:
sound/soc/intel/avs/path.o] Error 1

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

Steps to reproduce:
-------------------------
# See https://docs.tuxmake.org/ for complete documentation.
# Original tuxmake command with fragments listed below.
# tuxmake --runtime podman --target-arch arm64 --toolchain clang-14
--kconfig allmodconfig LLVM=1 LLVM_IAS=1

tuxmake --runtime podman --target-arch arm64 --toolchain clang-14
--kconfig https://builds.tuxbuild.com/2DPEiUmdALSZq7DeNthZFYoPLaN/config
LLVM=1 LLVM_IAS=1

--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYtZP_rYnmRyLbMrxKPGtJuoOw4h412dJXBJnzab41CzUw%40mail.gmail.com.
