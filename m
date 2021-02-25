Return-Path: <clang-built-linux+bncBCCKLU67Z4KBBBVZ36AQMGQEYQ4546Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id D69B632547A
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 18:21:11 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id w36sf4295587pga.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 09:21:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614273670; cv=pass;
        d=google.com; s=arc-20160816;
        b=bahGiWnjxx58QCDZT7k1E+AOCa1VkiCyg1ei66qtVRbaXnEVT/YdqIgJXS+lctIdKv
         vMwFhGfQVP62WBWoiiiIRjF8bpsjz7bd50ybjieDUQzuf3Jj53spyDqkAYJcmqItyiQ7
         YdBGQKdiBeS/2INN6sGNS4d2flrtQnYk5aQ1r5GXncYMpj4MQEQ4K9MSKgUYr3gnV7y3
         JLSCMt6vxuvPcYqkYd1we1wFelXZ9+LkNqTewAcH3TeWl2uZelKkBrn5gzzu/cJsfG52
         9qH+PmaQgZrtyETwUMBDxZ88u907OYNUic40XecDagbMgqUbVErrZZAKl7WJi70mIFEk
         Rbxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=aP2mI5/eiqkRMz/YGHqR29BDo2MRMHMf1zg0xSWXFhg=;
        b=jGScAv2sJCc0WHfK/WLr8bH8bT9jXiewWIJUb/zS+oqT0TIIkxaoTizIAVPO2a6oba
         SocVQA93hIEcg3ol5i8l1mVd0arjoNxbhNtyDR2cxY0sJtAK7CPqHE2tLS0n09GXhDhv
         mSLv2E6SUsEutMXRATFHiYVj+L7gzj2mWOrubHoTWEYuf+LoFnIGK/HuZ8/hMqoRZQez
         MUMHe+/UOqVHesrbWhKOgHthq6DvdS+X/cQQpv8e8mG0KXlZ5TxupiHwuNI4CKc9Ozno
         2hDIHqwFPXtTEGAkPzFtn/wPK+hLfxsoQ81K8FrOKqtNICMN3lq7RTjfA+GSzAzE59ly
         aU6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of suzuki.poulose@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=suzuki.poulose@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aP2mI5/eiqkRMz/YGHqR29BDo2MRMHMf1zg0xSWXFhg=;
        b=rRubHJ+0kPhy86EWUlO+V30GkeE3IC+AwOrPdECzEgmLrr+Fp8JROQ4hoc9JEjzWgW
         ZvytOcB05ebhkxaJ8PZpojDM1Eu0GL1Qe9tjYZYFs/OvOSNJjC3u6a/W1ig1gV+nqEWI
         opyhbsRP8pf3Ku88zm0xfGK5cM1DI/pSVbUueHKwnzGf9HCuUwYSbCAazrNe+Fd1Vt69
         irF3aAJwXalHjt8bagZ/SDTqNEfiEnuaeilMtmh+mBFIamZng3mR8Mi40SF6C3mTeniJ
         GzUzQwB0xSIrI33imk/BkOKezR5UvvePC4e++8QWBiT5yWStGetiLqifG9GwvAs5H5GF
         5zWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aP2mI5/eiqkRMz/YGHqR29BDo2MRMHMf1zg0xSWXFhg=;
        b=LFSdZMElvo+HcmGK0S/1gBCBTUkbAEzLm3mgQBCavO11mgOlqEZQxTpy+6tK2bd/GS
         LN+Qh302z4xsxbsRLz8E/8lEhZVzlCY+ncolqcd0TJgz4p6eP1Ki+xcHJpFjnmCzcDRs
         Ry3XPM1hMVg6LrOoG2rHPGpLJrQFh3td3YoyiKmIcHTuV2mEHVHKf8TlL4WAuguyw/CH
         1tjPM/lWVSmInHaB8whQElZpdxS5L7MtlgniAKSgmY2A5EiuZEBEDMoPkx2G58C1WL68
         4Tn97Wj5RcrqWqslW8VExs3oWY2PdhnWQO9isAYqBYAg3iIjyatpNRgw3fLIrfCxSqw7
         O+bQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hjIDwdpSRVrxFMpruhzcqm4ansrYFelaN6Yr0wzPjoJmLoz5E
	XadRvNGvVdUOxfIX6ftM50Q=
X-Google-Smtp-Source: ABdhPJyuJqgXRck/kCPfBjm52XYqmoe51ObSkmVjcwWjZyqJrLIHa1wQII9NNYOmyAabloufAHytZQ==
X-Received: by 2002:a17:90a:3d47:: with SMTP id o7mr4144481pjf.149.1614273670244;
        Thu, 25 Feb 2021 09:21:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:300f:: with SMTP id hg15ls3818383pjb.2.gmail; Thu,
 25 Feb 2021 09:21:09 -0800 (PST)
X-Received: by 2002:a17:90a:b782:: with SMTP id m2mr4231061pjr.220.1614273669603;
        Thu, 25 Feb 2021 09:21:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614273669; cv=none;
        d=google.com; s=arc-20160816;
        b=eKFUnCrdv5O+kg3jouVsO22DSRI+TgspvmcXVbQqRvGhBJ6rds1KISRnfxUXNLAWJ8
         OHrX2XOAUzZAUmnVu/jgIZwIA/8R9g5y0ns72xECNnq9fwc+Q89svYtzAMIfZW6jtDxT
         0bgeqSpaq/BMlJ/tdg4pRf+RxG4sJbB9S2Gb2o66q/1Vh5P649Z3/Gryhm9JhMPzkik/
         WXGACtR6euGAvEHThRc4Qy1atQDj/G2PidMLQYLD+ZYlYmFSH4SoRi+oGdGuBH9frxXQ
         LUZ/a2dltd94BGIwWTW5GuTKiCNgJfpYrjZM3zUl3qDMXgHPiaosgOrDSKlg0NUny3G+
         zXWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=FrrGfd1EdZQPPUGwleXpAq9NNkW8aJFy98CwizL+8Gg=;
        b=OvlmdPU5TtInJe5EIuJQyjjO4P2zDkdKB7jufpoeK59MWuy4brdPXPVeEdwv7hr3jp
         aZvIF3WAmkofhXDZabajg3L7zEHiJSLBv1MzDk+gTcPoLovSzHcOhH8gUXYJXIbQ329C
         7gICbJ1OG0LDodTuv6GsmVOf/n12lTVk6g255jBmMV/L8cbqaS64lrH6ue9JELUmyD7D
         JraCdauLmeecJfdRGY4A+RG9H+gIqUTKTjDcfA2iDKSABq/VaUrvgSEC7mxd1Bx0O7fO
         uxpkXQD8+DoAauw1FhD/gBSOkNdpiCcm1UJRLtTdWIZd0iweaI3km/vXsXLGmVjvnql7
         tjPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of suzuki.poulose@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=suzuki.poulose@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id f16si317548plj.0.2021.02.25.09.21.09
        for <clang-built-linux@googlegroups.com>;
        Thu, 25 Feb 2021 09:21:09 -0800 (PST)
Received-SPF: pass (google.com: domain of suzuki.poulose@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 810F8101E;
	Thu, 25 Feb 2021 09:21:08 -0800 (PST)
Received: from [10.57.49.35] (unknown [10.57.49.35])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9339C3F73D;
	Thu, 25 Feb 2021 09:21:04 -0800 (PST)
Subject: Re: [PATCH] coresight: etm4x: work around clang-12+ build failure
To: Arnd Bergmann <arnd@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Mike Leach <mike.leach@linaro.org>,
 Leo Yan <leo.yan@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210225094324.3542511-1-arnd@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <19c9eba2-c5cd-301f-4dfa-a31c971728f9@arm.com>
Date: Thu, 25 Feb 2021 17:20:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210225094324.3542511-1-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-GB
X-Original-Sender: suzuki.poulose@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of suzuki.poulose@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=suzuki.poulose@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

On 2/25/21 9:42 AM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang-12 fails to build the etm4x driver with -fsanitize=array-bounds:
> 
> <instantiation>:1:7: error: expected constant expression in '.inst' directive
> .inst (0xd5200000|((((2) << 19) | ((1) << 16) | (((((((((((0x160 + (i * 4))))) >> 2))) >> 7) & 0x7)) << 12) | ((((((((((0x160 + (i * 4))))) >> 2))) & 0xf)) << 8) | (((((((((((0x160 + (i * 4))))) >> 2))) >> 4) & 0x7)) << 5)))|(.L__reg_num_x8))
>        ^
> drivers/hwtracing/coresight/coresight-etm4x-core.c:702:4: note: while in macro instantiation
>                          etm4x_relaxed_read32(csa, TRCCNTVRn(i));
>                          ^
> drivers/hwtracing/coresight/coresight-etm4x.h:403:4: note: expanded from macro 'etm4x_relaxed_read32'
>                   read_etm4x_sysreg_offset((offset), false)))
>                   ^
> drivers/hwtracing/coresight/coresight-etm4x.h:383:12: note: expanded from macro 'read_etm4x_sysreg_offset'
>                          __val = read_etm4x_sysreg_const_offset((offset));       \
>                                  ^
> drivers/hwtracing/coresight/coresight-etm4x.h:149:2: note: expanded from macro 'read_etm4x_sysreg_const_offset'
>          READ_ETM4x_REG(ETM4x_OFFSET_TO_REG(offset))
>          ^
> drivers/hwtracing/coresight/coresight-etm4x.h:144:2: note: expanded from macro 'READ_ETM4x_REG'
>          read_sysreg_s(ETM4x_REG_NUM_TO_SYSREG((reg)))
>          ^
> arch/arm64/include/asm/sysreg.h:1108:15: note: expanded from macro 'read_sysreg_s'
>          asm volatile(__mrs_s("%0", r) : "=r" (__val));                  \
>                       ^
> arch/arm64/include/asm/sysreg.h:1074:2: note: expanded from macro '__mrs_s'
> "       mrs_s " v ", " __stringify(r) "\n"                      \
>   ^
> 
> It appears that the __builin_constant_p() check in
> read_etm4x_sysreg_offset() falsely returns 'true' here because clang
> decides finds that an out-of-bounds access to config->cntr_val[] cannot

s/decides finds/decides/ ?

> happen, and then it unrolls the loop with constant register numbers. Then
> when actually emitting the output, it fails to figure out the value again.
> 
> While this is incorrect behavior in clang, it is easy to work around
> by avoiding the out-of-bounds array access. Do this by limiting the
> loop counter to the actual dimension of the array.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1310
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>   drivers/hwtracing/coresight/coresight-etm4x-core.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x-core.c b/drivers/hwtracing/coresight/coresight-etm4x-core.c
> index 15016f757828..4cccf874a602 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x-core.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x-core.c
> @@ -691,13 +691,13 @@ static void etm4_disable_hw(void *info)
>   			"timeout while waiting for PM stable Trace Status\n");
>   
>   	/* read the status of the single shot comparators */
> -	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
> +	for (i = 0; i < min_t(u32, drvdata->nr_ss_cmp, ETM_MAX_SS_CMP); i++) {
>   		config->ss_status[i] =
>   			etm4x_relaxed_read32(csa, TRCSSCSRn(i));
>   	}
>   

There are more places where we do this. So I believe you need the similar
change elsewhere too in the driver. So, that becomes cumbersome for circumventing
the compiler issue.

Suzuki

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/19c9eba2-c5cd-301f-4dfa-a31c971728f9%40arm.com.
