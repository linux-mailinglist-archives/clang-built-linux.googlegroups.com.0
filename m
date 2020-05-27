Return-Path: <clang-built-linux+bncBDV37XP3XYDRBHEMXL3AKGQEXGSIKDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A46B1E473E
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 17:24:13 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id o11sf9891189qtm.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 08:24:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590593052; cv=pass;
        d=google.com; s=arc-20160816;
        b=kfR2Pmht+pA37KzV4eU7tgCMJb5g9wcqp0ui/EZjlMAs8eLCItNq6AGK23U+b3MxjI
         GSEMiQsg/CI2+sFxr8A4JF4TRE4yyC7fHxjrLIpKpL9EIA07Uxm35DQW+rKWLIdARiuv
         gfAo102CZOGkufYwPLzTjGLmgbsnh3VoS8OSns18G8wXvmzKYm6XEsu+z4A9EcBDajcA
         +ot5FiPWeWCPZ0cywcTnzz76DpXM31uv8Y6Ti5CUCsrV4sW6cgT44g05ffLahmfVxPH3
         hxxC3hsdofiJjMBqx4hyk1Ab6C2fARDkWj38b+d80gl+kGACu2Vaoerrl0ThW/LK2jfY
         ZfwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FVA2uK+HQwkTfJlyQVe+ponUT47JmgyVRQrk+k2vHjo=;
        b=1GM82oYqLrXEiKuJ98v0WqxSX+N2c+yjw3uvAz9BuYM0X6xlyETeRk1gvMsll5VxHV
         cYX3jHs0kHt+kUKaOLdc/lWsmjNVrbA6NRsY4sXdEoqvChXzsFC4OipY+StbFyATsSVo
         azKlBpowOCi7VAUmZC3yqojvIKqNwiOVHsvo5y1WyiQAkRZkSxAQNriequ4CWQAC/QcW
         dSMi87zCJpE+sEWIakOL2cQSoJHi3++FAB/Guotlz/3JNUR8ZEXQdpxm1BllPxDLUjLR
         DaCZZsmt35bQciH+ZzHgu3zb7E8N0ZNVgzZI5GTAVsBfahHEYeENhKerMcYS7k5t25V8
         rxOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FVA2uK+HQwkTfJlyQVe+ponUT47JmgyVRQrk+k2vHjo=;
        b=QCgCuz52QDXjqyhDxN5tcTI4jLM+TJ3mASOLZ9HuToXNlOs/TFwt1c3HjSaM/OesIL
         37K/M8CX9sDZAnZkx94aL6gFnjZQkn+M2t4BM7Vzh7084mVKhRPWJlhrLj/bu6nmJ+y7
         rdW9JXpk+RjON2w3+oaItSb2/j9+gaWjA9+Bcd429c1mDjl7rZlKG5dRL7sk5YhgLL0J
         Nbuds4SQRVEHFm8BNs5Vq16zTH+I8C6osbFhSbDxdSuOk4LdZhpSXULp3U66Y4LPUBli
         6RRD4b0EZA014cnWjIS6w/vf7te5aPZSL9jk2PwwVDhzIfdvc3P50cC0AF9cwics8dK1
         33xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FVA2uK+HQwkTfJlyQVe+ponUT47JmgyVRQrk+k2vHjo=;
        b=T5o9P2SLLBhzM0GcBZhDPf1k41Y9AVcpvNvgl7DgeROwZ7XVAjaX+vnfJrmGI5oOed
         tEwQE6m7MTpC3FqrtrfqS7qnBJ2q7MosGFRs+osXjuYKHUQ2yj2K1CxJDMojDKgT0zYR
         IvY4jTuTOklv3uXlkF5ADRP2Vk5+7lbzzWWX7w7AfikPj8QRpuiHpdlq1a2hlCm2AfFw
         7xMCmiIdwjWd4qXdgmtnoMfjPYzw0etkJCvHPQlCnvCgtVNbvT1YdF8mGsVXH+yLZtnN
         NOsXGMr+kPiJPXiquFy7JnwvF2XjhRzUrK5EYEffqYAp+vdMXBh81mCCuCuRFGiQOvzc
         vmxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pN5HhiGYaCFpXRE7YZXwmBONt+IITI5pgw1B7fEVjl5gpYNDm
	dzOkWqBYFbL98+jigHHz6Mw=
X-Google-Smtp-Source: ABdhPJx0JBFZ7Tctt0k0ZQlG3Gp0sA+jICs+DmHqwviZCsDIxCJPKVh8VgR53qcSN9z8RoZ+8wa+LQ==
X-Received: by 2002:ac8:5253:: with SMTP id y19mr4905348qtn.291.1590593052409;
        Wed, 27 May 2020 08:24:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7542:: with SMTP id b2ls5988353qtr.1.gmail; Wed, 27 May
 2020 08:24:11 -0700 (PDT)
X-Received: by 2002:aed:34c7:: with SMTP id x65mr4986582qtd.340.1590593051541;
        Wed, 27 May 2020 08:24:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590593051; cv=none;
        d=google.com; s=arc-20160816;
        b=l1CPoACGEIpGdDLIu9OZVrSAdGttuKSMCAMuE0Nn48NN2lnpq0gVkrTpln1+16Q+m3
         ozWx0rglVATDEPOUF/kZbVmgSS+dYxFNJVU4lwQqIp2+kczlfQvmf8RZsvQApJSfekFV
         hE76uM6KScMbc6d0L6jm8T3emvMrZttBiXPHr4+JxbOe8I+2g83epzSK8EE95/+xR6DF
         uYnefgz7kh15X0pO2p0P0Aqi8g/IWeJrqWSw6gZ7pv8j99Db7AcIa60vkr9A3s61Ewhh
         bV8NP8UeFb2N5Ngen3ZQd7BDFHfoKMM0R4eNC4p7DsHnbJeD4E7aGXuOzt9X1SICTs8Z
         wPoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=i7E6r4O9SxRdi44Ehy54vcdVS79hRFjoVmMHi+meKsU=;
        b=siSZsB17nKY4xkpGkJxozXvrYtr+QdeIc+u7DWgizjRsUFrXooN9jdCOeAHkwtBAFt
         5bybWQ3unHq7RHB1s/5P8aMZS1RaiaW5TVJV9pxQuty0+itMVp82M57WoClJ6s4GJzmi
         NPdVRM8Acm70RAoOdlRHdqhHkMaHqPvvu1bBGbVZKaLtMOalT5c0ZWCy7c+YH38oPXew
         TDtJ4qTiOoZSsbEKizTqkJL7xi+scPJZYS8fPWnMlgyBsUBMKhxDkxZDUGEHGlGa3EvS
         PH86bt5/uoXi5euhVncC07w5rRoxk/gSLJRHRmXcHMtMNITOLp2Rjg87FpMc33zwJ5OT
         bi+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id m1si234109qki.3.2020.05.27.08.24.11
        for <clang-built-linux@googlegroups.com>;
        Wed, 27 May 2020 08:24:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C3DDD30E;
	Wed, 27 May 2020 08:24:10 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.7.129])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 01D3E3F52E;
	Wed, 27 May 2020 08:24:08 -0700 (PDT)
Date: Wed, 27 May 2020 16:24:06 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: disable -fsanitize=shadow-call-stack for
 big-endian
Message-ID: <20200527152406.GD59947@C02TD0UTHF1T.local>
References: <20200527134016.753354-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200527134016.753354-1-arnd@arndb.de>
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Wed, May 27, 2020 at 03:39:46PM +0200, Arnd Bergmann wrote:
> clang-11 and earlier do not support -fsanitize=shadow-call-stack
> in combination with -mbig-endian, but the Kconfig check does not
> pass the endianess flag, so building a big-endian kernel with
> this fails at build time:
> 
> clang: error: unsupported option '-fsanitize=shadow-call-stack' for target 'aarch64_be-unknown-linux'
> 
> Change the Kconfig check to let Kconfig figure this out earlier
> and prevent the broken configuration. I assume this is a bug
> in clang that needs to be fixed, but we also have to work
> around existing releases.
> 
> Fixes: 5287569a790d ("arm64: Implement Shadow Call Stack")
> Link: https://bugs.llvm.org/show_bug.cgi?id=46076
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

I suspect this is similar to the patchable-function-entry issue, and
this is an oversight that we'd rather fix toolchain side.

Nick, Fangrui, thoughts?

Mark.

> ---
>  arch/arm64/Kconfig | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index a82441d6dc36..692e1575a6c8 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1031,7 +1031,9 @@ config ARCH_ENABLE_SPLIT_PMD_PTLOCK
>  
>  # Supported by clang >= 7.0
>  config CC_HAVE_SHADOW_CALL_STACK
> -	def_bool $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)
> +	bool
> +	default $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18 -mbig-endian) if CPU_BIG_ENDIAN
> +	default $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18 -mlittle-endian) if !CPU_BIG_ENDIAN
>  
>  config SECCOMP
>  	bool "Enable seccomp to safely compute untrusted bytecode"
> -- 
> 2.26.2
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527152406.GD59947%40C02TD0UTHF1T.local.
