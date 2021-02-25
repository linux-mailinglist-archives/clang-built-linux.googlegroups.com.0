Return-Path: <clang-built-linux+bncBDLPBG4DUEARBJVI36AQMGQEN44QAHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 490913253D0
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 17:45:27 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id c12sf6756163ybf.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 08:45:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614271526; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z82tItJU/UFfntNT2hqXlyX8Yl4T5j2DsUkF755Xu0y48z6mKSw+6/NzvzsS+JpFK5
         kKkzV15E4Slk4K/csQonGgzRDZh3FEUQCeiTQT8ExGNIWrjLLZM5f3RhAGrlD+eIn4qR
         X0ZTQFh9k8okSUqTXafcg/AM2tlaRppiQdVDpyoy0hdJTxty9GVRl1Uus/u9YCmZ/JJB
         3eYuTzFlvQ0pidYlGrimhgBI/ts0dPSv8TdZct/Pj0WqJlRVb3IKFIadx2BQyRg8apzV
         /fYqUyS71H0js3cpkfP4xxenpjhgO+KTgOkg2pdZS7iMT8bGwlT5dXcYPqMndsqAm5ET
         Ajeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=k/dWGBPKqUjqlrb7XOk4dE7puhO77vz0ohuc3IK9cZE=;
        b=IaB7u8XP6wbsF3hXJsuILP+E0tvzdi5+hlwZgozs1EkppQhHdMU4oHpO8HlzZC2Q13
         ljjm5dsoCU1fmt7qzM9aXmqPxWGi/gTd68vYTAnOMPi904Xu+2vpJCzkbMjXLqvDM27z
         jFUx63KPGynoJDzw//lkElzcczwRhwLB2cwRW0I6rOZ9sZgzvWlEMPsOPfec9X6or88J
         VTtF9xYaICNXPLr/ICCgprmm4QMikfdIe21g1SozIGZzETXxQ0OgbGo6dpKYkKs0D2+C
         NkzHo4pS1kOdF2HVR17THE91TLNqUmvMIDadSZqcnbds+AEVczKQWlPti6gUlISkQpob
         g+ZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=aHUCEcGr;
       spf=pass (google.com: domain of mathieu.poirier@linaro.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=mathieu.poirier@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=k/dWGBPKqUjqlrb7XOk4dE7puhO77vz0ohuc3IK9cZE=;
        b=TKW9a3bgioG2qr33hdgY+PU3Vp4hlZE/+Ms5iJR8hvaEJe2HKHkw0KUyFba3VeNoa6
         iUFAt45OpJbbIH9U8u/xxAkdSiaCwuWVcJXTJoo5kFQnODOOGfBqxpN2sC0lxWcI6afu
         FukU9fqOj8c0nLFD2Feya+1UHXZ+jJ8G44MfOpxqZGYDVtGAeb4+fZrkFeAjJDM6yZRw
         zCEUFfZXZjdLl80lFx5QnIiVTaKUnA5dFsM28HKBOTxg+yRQLnLuim+vdbXh09QCzpFk
         f1WnITW0Pu47m103LTxr3y70gJy39UdAkPPltCYl2tOdlZzdeoZHEZrWTVBuBsbBRjzI
         HKXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=k/dWGBPKqUjqlrb7XOk4dE7puhO77vz0ohuc3IK9cZE=;
        b=ZZ6aSFrActYR8DdqtM6gZbYBG1CQNRvLgUWBaAMDa5/KOt9RyrIs5tqdL1GrA5OQsn
         Oc/eEFeVJyeO4+yn27//kdvF1SN6EF2iI4qVZhliEdrl2WSwraJzpy64u6wLUv4kcn+A
         utL37dL2xlS19Y57Y5oWpS3bY+BC8syZLIYvLGtJT8F6DcrjY+Yh+zTomnKi9p/i48ax
         2csy7Ii09JfPeXBlu3+gNKeNSzMPgACuUUc4NCVsyq1JupJeDa/n9GqZAE+sxfZTajQY
         BpqaEiYpvEPWJt7I/Yy6IiYtrVlqv7zzSn2C4ztrv7Lvy3cYX/4vblstGsIBzIK3sO16
         N11A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533y+5MI9sBXorRp6cASX71x0ak1ebwLDDobOfwLYg62tZSSjl3L
	zzkNn+bm2K+bRLQGuE8kal8=
X-Google-Smtp-Source: ABdhPJwDjHTDY8H8Uuy0cDez5Eu21soPMpdzVTNul/vaXVdRrrX0Jw8O1ftsAUWm8dV5fLepMXKarg==
X-Received: by 2002:a5b:98a:: with SMTP id c10mr5315670ybq.406.1614271526336;
        Thu, 25 Feb 2021 08:45:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7807:: with SMTP id t7ls2857924ybc.10.gmail; Thu, 25 Feb
 2021 08:45:25 -0800 (PST)
X-Received: by 2002:a25:b207:: with SMTP id i7mr5152843ybj.301.1614271525910;
        Thu, 25 Feb 2021 08:45:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614271525; cv=none;
        d=google.com; s=arc-20160816;
        b=H+aWrFfEYULNMtj1gxHkYwvPCKjda7ICrt8TP/Grr6jTTSv9VKIztnh/OBlKKy4Cgz
         f28Q8xremHH3LRE5PCJJHf9NvIeLYtoH0nCm8IcIG3UT62MdAoCvjg9Sl3BNr8mGRSn7
         s5/g10Sb+4TTNIGSCjCmB6q1EYhLxkV7jHSMUUdSURD1gYS+wAxtCC3wTUCET35lffLx
         N9qFhO3LBadBPJkWtjuN9QIN0XWNWDv1qchRu0WNEWjw8/DivtPr43A+jir/JXQYK77/
         7T3pSkuLiEQpkUxjjLbgdvsBAnQ1IsNYGz5Ek3lSoO6EqKX9nO4Z7ioBBm8HrakT5WHo
         ky7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/A3h88rm/bzKYDHwXmy10vJWFNAxrqRS/0m9On458gU=;
        b=pd8GrRRyvOmCy3iXu6qOrgUfxXB0Hq0js5xZlbxg/dcudSlFTlsZ9ObzV5r9pK54V1
         5q/Sg26/evmCEqE9Med9jb9VIrRilYojvaUieGSbnfPNrlraupTG2HPkxYozau8CQT4t
         BEV0jEgP3s9VJy6gK7IJn99zM27LJg+HyCVS+M8O7j0gdJbousWuXSZIticGymYx+7S5
         XK2XAREtm6mouwJBZbt+VH6cAhBkLO1wObz8r16nBHEMf8xgxGcKIrYFVWJ9OFYdFU88
         Q2YjxYEcTnUMnSvSPEPFVmUAZF1r21TNvaKFzEzK6LDi/qjeDLtLyv/PfHrBA//Tc0l7
         P2aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=aHUCEcGr;
       spf=pass (google.com: domain of mathieu.poirier@linaro.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=mathieu.poirier@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id k6si234279ybt.4.2021.02.25.08.45.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 08:45:25 -0800 (PST)
Received-SPF: pass (google.com: domain of mathieu.poirier@linaro.org designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id p5so3501270plo.4
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 08:45:25 -0800 (PST)
X-Received: by 2002:a17:902:6949:b029:e3:1ee9:6bfd with SMTP id k9-20020a1709026949b02900e31ee96bfdmr3897370plt.66.1614271524938;
        Thu, 25 Feb 2021 08:45:24 -0800 (PST)
Received: from xps15 (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id s10sm6530952pgl.90.2021.02.25.08.45.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 08:45:24 -0800 (PST)
Date: Thu, 25 Feb 2021 09:45:22 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Mike Leach <mike.leach@linaro.org>,
	Leo Yan <leo.yan@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
	coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] coresight: etm4x: work around clang-12+ build failure
Message-ID: <20210225164522.GA3554437@xps15>
References: <20210225094324.3542511-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210225094324.3542511-1-arnd@kernel.org>
X-Original-Sender: mathieu.poirier@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=aHUCEcGr;       spf=pass
 (google.com: domain of mathieu.poirier@linaro.org designates
 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=mathieu.poirier@linaro.org;
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

Good morning,

On Thu, Feb 25, 2021 at 10:42:58AM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang-12 fails to build the etm4x driver with -fsanitize=array-bounds:
> 
> <instantiation>:1:7: error: expected constant expression in '.inst' directive
> .inst (0xd5200000|((((2) << 19) | ((1) << 16) | (((((((((((0x160 + (i * 4))))) >> 2))) >> 7) & 0x7)) << 12) | ((((((((((0x160 + (i * 4))))) >> 2))) & 0xf)) << 8) | (((((((((((0x160 + (i * 4))))) >> 2))) >> 4) & 0x7)) << 5)))|(.L__reg_num_x8))
>       ^
> drivers/hwtracing/coresight/coresight-etm4x-core.c:702:4: note: while in macro instantiation
>                         etm4x_relaxed_read32(csa, TRCCNTVRn(i));
>                         ^
> drivers/hwtracing/coresight/coresight-etm4x.h:403:4: note: expanded from macro 'etm4x_relaxed_read32'
>                  read_etm4x_sysreg_offset((offset), false)))
>                  ^
> drivers/hwtracing/coresight/coresight-etm4x.h:383:12: note: expanded from macro 'read_etm4x_sysreg_offset'
>                         __val = read_etm4x_sysreg_const_offset((offset));       \
>                                 ^
> drivers/hwtracing/coresight/coresight-etm4x.h:149:2: note: expanded from macro 'read_etm4x_sysreg_const_offset'
>         READ_ETM4x_REG(ETM4x_OFFSET_TO_REG(offset))
>         ^
> drivers/hwtracing/coresight/coresight-etm4x.h:144:2: note: expanded from macro 'READ_ETM4x_REG'
>         read_sysreg_s(ETM4x_REG_NUM_TO_SYSREG((reg)))
>         ^
> arch/arm64/include/asm/sysreg.h:1108:15: note: expanded from macro 'read_sysreg_s'
>         asm volatile(__mrs_s("%0", r) : "=r" (__val));                  \
>                      ^
> arch/arm64/include/asm/sysreg.h:1074:2: note: expanded from macro '__mrs_s'
> "       mrs_s " v ", " __stringify(r) "\n"                      \
>  ^
> 
> It appears that the __builin_constant_p() check in
> read_etm4x_sysreg_offset() falsely returns 'true' here because clang
> decides finds that an out-of-bounds access to config->cntr_val[] cannot
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
>  drivers/hwtracing/coresight/coresight-etm4x-core.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x-core.c b/drivers/hwtracing/coresight/coresight-etm4x-core.c
> index 15016f757828..4cccf874a602 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x-core.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x-core.c
> @@ -691,13 +691,13 @@ static void etm4_disable_hw(void *info)
>  			"timeout while waiting for PM stable Trace Status\n");
>  
>  	/* read the status of the single shot comparators */
> -	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
> +	for (i = 0; i < min_t(u32, drvdata->nr_ss_cmp, ETM_MAX_SS_CMP); i++) {
>  		config->ss_status[i] =
>  			etm4x_relaxed_read32(csa, TRCSSCSRn(i));
>  	}
>  
>  	/* read back the current counter values */
> -	for (i = 0; i < drvdata->nr_cntr; i++) {
> +	for (i = 0; i < min_t(u32, drvdata->nr_cntr, ETMv4_MAX_CNTR); i++) {

This patch will work and I'd be happy to apply it if this was the only instance,
but there are dozens of places in the coresight drivers where such patterns are
used.  Why are those not flagged as well?  And shouldn't the real fix be with
clang?

Thanks,
Mathieu 

>  		config->cntr_val[i] =
>  			etm4x_relaxed_read32(csa, TRCCNTVRn(i));
>  	}
> -- 
> 2.29.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225164522.GA3554437%40xps15.
