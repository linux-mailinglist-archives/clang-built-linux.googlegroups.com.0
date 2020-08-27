Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBM54UD5AKGQEHBK5ESQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 073DC255040
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 22:57:25 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id d20sf3697520ooh.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 13:57:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598561844; cv=pass;
        d=google.com; s=arc-20160816;
        b=WV/Oa1jXN27PH8+ClOFEYJw6nwj7BkOCsK8mFEfMrit07wF18LefFRc8JtPcJy5ku4
         Kh0SZHJQqvEU8+Ll3Ze9JrlMOZ+6nT7bTue3nWzqEPhsRI/fkHu/Gz/H5hOJ1enRgo4Y
         CU+Y8uy7Vza78G5R3vZb4Nv9KVGHKTyQko5+fw7zQ3C1F9OA8PP0DF7jhAm+MTHPssAr
         /S1fENxAf7/Xnf6oRzwBCOAOsGyu6GCfZgqKo+g1gHWZ0anCTG+Xiw1FvvEgIjtmW3Eg
         8cBaDXrQNOny6uyFwiRcUA+UFk3a5pRBFR6P3SR5lyhB6oscZ+CseH07XEkA2Kv2ylDm
         YGJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=WUwMD9ys7a1051yyWGWbZtnuEo1l9QXynYvWRCWBoNM=;
        b=ZbtzXWVBIXk+4JVdVHocqrfDMzl8n+VueLm9IiFALCD7L6ol1kGu0LZLoLPhpfnP9K
         yNVsKRrfSz/vZewEfI2FYKLB3Y2mbO133xyLoy08+MzZIu/vK3DakN6P//z2d+Mg/qhC
         u+OwMizzeddGG0lDenA4b6SI2FY7sCsVlPZ9VFzD0V6gY+i4p+v9bLttw+6szkphdDYU
         mgNuJfJ5g4/N6YUPPcA/s78XMfyTCuxmQNu392Lavt1AVCtghKHl+EF8PSzXKPoYIOAD
         wzN45QYhAyJk/J/aE41G9cON1enBKBQpztfsV3e+L3obhoFsaHRvtjYFhQhMZOImFC2v
         Do5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aJFr4QsY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WUwMD9ys7a1051yyWGWbZtnuEo1l9QXynYvWRCWBoNM=;
        b=lt8XU/8A753waqsVtv4FKdXV5q4wEDzJKjJ+/pB8uvv544MqfVzhAN5wd+oR/qCK61
         sSyqgE4BsnUb2qtDjtk2i/6qNX8N7Ix3/kLvyI4oGcOhDe24yZMmXEabxoqqR2JFCWyX
         HF8NZYbzFP2PzWDk9niu1Qn9C9Yq3xGcSBkDtXAzgFQttdW+3zqnugITVFjgSPv3tbQS
         MGaSHqlEdfXD2HM0Y3nG/nYhai9GdJjG3aa3g5SOLghYHvoRm70DlJdlu69mYFwrWQLJ
         z5+nIw8CeKXmuAu+OzHr84V37w8IJug0QFb18Kjj25Ztz6XSIYx9hdL1lgANtvVEnA4X
         YsAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WUwMD9ys7a1051yyWGWbZtnuEo1l9QXynYvWRCWBoNM=;
        b=F1CVAJI4SVOjJZA8InP7OAa18iLtjyBvhw3+UlBRrgvc72v4FYIOgUErc9UTpcEphZ
         E4EkM9alp6Sn7kiK2la1YpZ8fURCAAM5cGiUm9ZTBFMl7UppbIVC5R/TkYWduc11B5I4
         9I19KeqIzET9wGwp8Bw4JqO6n1a2lH73b0yDtknhoHbbQlLcvw7eFrJ20Dr+lJFL3dWL
         84G2Ac1cdwrflwxxGh4f7/+MqzXGm6PVc+YJ7bh9YgaXfzmReqlKjF1dK0lFl3F/4gpz
         ur1uQ0BtkVadOp4SbNncYoDd/Sml987DV+NAZxq0vM4+qyzSAWbwRRlXUQWKBfUGzI1S
         LxMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WUwMD9ys7a1051yyWGWbZtnuEo1l9QXynYvWRCWBoNM=;
        b=KH9HfRnz4DGCa+auPA3Go2EGrYpP2qcBhEQRKfFdFqC68q91nB3w2qCxf5Pey9inPh
         TYp9q0GZ2s04hCusoRAyXyMV87R18bl5XboYLI7zJvVMI34hd0JMSa76fPk/XXYj9qsN
         swKB++URghlSjE2s5Izob8jnxz+5JeSDw7pmDJCpXEmCoUg/uP93VKW1zyNx50laX78y
         aRIOi77ekUkFLT8OF+FmNJmrzzNntvhpOdObcwu2XqjwdE6uzNeiAKZRfvuUyIfGvR/0
         OyvJeP8FLRWj/Tbe09uLm2wfYRUth4YglHdjtLFNqp8sCMILWMJFbqHksY1T0lTFITQd
         b4vg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nDlBxLNhloNJaYLq3hzsQWOUUmAnm5Am3kxGMqOz6kgEGf5CY
	yU19b1uDHuLozS5sIXnKjaI=
X-Google-Smtp-Source: ABdhPJyKdZNVOF/KAPqqX74B19VL/T6Fx2AnaCUZm2+JyLCLdSHPhZ06t8FvFVWD0FTAWjEKImW7nA==
X-Received: by 2002:a05:6808:54:: with SMTP id v20mr502068oic.69.1598561843885;
        Thu, 27 Aug 2020 13:57:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4816:: with SMTP id v22ls924110oia.6.gmail; Thu, 27 Aug
 2020 13:57:23 -0700 (PDT)
X-Received: by 2002:aca:cd44:: with SMTP id d65mr516933oig.75.1598561843626;
        Thu, 27 Aug 2020 13:57:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598561843; cv=none;
        d=google.com; s=arc-20160816;
        b=r3U7wUfH0/uq9ZRoItuN4tiv7Pr618ACgPlzrXSXXHV2yqL7AtMSUgAmakspy8L/84
         fbLeMZPpCTXHqOXo3wBqZt3Y14E6GCDEICVhqmIDAI82zYhtlW1N0why9IOvlc8Bkva8
         V/eSqTrs10ry/kpQoCZF2m+WGt5NVGeZtaFgz/pHMhWBaNXPdPOhH/3jmve5YZJn7Jye
         xIZfOywrFP0f3vmL1GEGOmQQarsf0H/Rwy/kjGV+YbrJlh1lTs6/+9skVFHbFNwqbsXK
         1I+Nxxy2IXiw5QY1QN8/6B/8NYBJuPPHcn+rZoPLie1gOndFbnbwsPS8kx85W4cVVrqZ
         ZKBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rJfXwaHbG/yykBPHsUHYR3+FIiWYlEcAMtX9/Xzsg+c=;
        b=Oh1CcltQgs4RtJ7uaFZtpE3BICpLfZV9RhKbzlvlpthdBSx219lg1sdkb5FE6Vu1su
         DeRT7kGRhqf+NIVf3Cl+jCgJ3Fe7rEVpjQHrVohTF62iE5lRDPRhZaO29UQAgF0i5zSk
         ESrO8Aj38e3F44cVexQDys/zKlVMADPkhpCsEhuopVm/KiUPLDiSkMBdfc9RtmTOIBy7
         Qo9nD5ArUiI61ty/9sGxvKOtiCOpA3Y+URW4M0IOcnBTFQN6hqBtpm5M1R3BoobXK3bX
         PdL0HAtajYr+gB6LGSeo9p3fCdMiJp8zFPlFJ+IXsZY7JnAM0Da/gAneo6OcC/B5T2OL
         VuLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aJFr4QsY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id m19si217550otn.1.2020.08.27.13.57.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 13:57:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id t23so5796831qto.3
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 13:57:23 -0700 (PDT)
X-Received: by 2002:aed:35b2:: with SMTP id c47mr11445305qte.95.1598561843011;
        Thu, 27 Aug 2020 13:57:23 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id r6sm2742617qtu.93.2020.08.27.13.57.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Aug 2020 13:57:22 -0700 (PDT)
Date: Thu, 27 Aug 2020 13:57:20 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Zhenyu Ye <yezhenyu2@huawei.com>,
	Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] arm64: use a common .arch preamble for inline assembly
Message-ID: <20200827205720.GA987541@ubuntu-n2-xlarge-x86>
References: <20200805181920.4013059-1-samitolvanen@google.com>
 <20200827203608.1225689-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200827203608.1225689-1-samitolvanen@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=aJFr4QsY;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 27, 2020 at 01:36:08PM -0700, Sami Tolvanen wrote:
> Commit 7c78f67e9bd9 ("arm64: enable tlbi range instructions") breaks
> LLVM's integrated assembler, because -Wa,-march is only passed to
> external assemblers and therefore, the new instructions are not enabled
> when IAS is used.
> 
> This change adds a common architecture version preamble, which can be
> used in inline assembly blocks that contain instructions that require
> a newer architecture version, and uses it to fix __TLBI_0 and __TLBI_1
> with ARM64_TLB_RANGE.
> 
> Fixes: 7c78f67e9bd9 ("arm64: enable tlbi range instructions")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1106
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

I have verified that this fixes the build with LLVM_IAS=1. Additionally,
I have booted a kernel with this patch on my Raspberry Pi and saw no
adverse affects through a compilation workload.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> Changes in v2:
> - Switched to a standard preamble for the architecture version.
> 
> ---
>  arch/arm64/Makefile               | 11 ++++++++---
>  arch/arm64/include/asm/compiler.h |  6 ++++++
>  arch/arm64/include/asm/tlbflush.h |  6 ++++--
>  3 files changed, 18 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index b45f0124cc16..20ab5c9375a5 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -82,8 +82,8 @@ endif
>  # compiler to generate them and consequently to break the single image contract
>  # we pass it only to the assembler. This option is utilized only in case of non
>  # integrated assemblers.
> -ifneq ($(CONFIG_AS_HAS_ARMV8_4), y)
> -branch-prot-flags-$(CONFIG_AS_HAS_PAC) += -Wa,-march=armv8.3-a
> +ifeq ($(CONFIG_AS_HAS_PAC), y)
> +asm-arch := armv8.3-a
>  endif
>  endif
>  
> @@ -91,7 +91,12 @@ KBUILD_CFLAGS += $(branch-prot-flags-y)
>  
>  ifeq ($(CONFIG_AS_HAS_ARMV8_4), y)
>  # make sure to pass the newest target architecture to -march.
> -KBUILD_CFLAGS	+= -Wa,-march=armv8.4-a
> +asm-arch := armv8.4-a
> +endif
> +
> +ifdef asm-arch
> +KBUILD_CFLAGS	+= -Wa,-march=$(asm-arch) \
> +		   -DARM64_ASM_ARCH='"$(asm-arch)"'
>  endif
>  
>  ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
> diff --git a/arch/arm64/include/asm/compiler.h b/arch/arm64/include/asm/compiler.h
> index 51a7ce87cdfe..6fb2e6bcc392 100644
> --- a/arch/arm64/include/asm/compiler.h
> +++ b/arch/arm64/include/asm/compiler.h
> @@ -2,6 +2,12 @@
>  #ifndef __ASM_COMPILER_H
>  #define __ASM_COMPILER_H
>  
> +#ifdef ARM64_ASM_ARCH
> +#define ARM64_ASM_PREAMBLE ".arch " ARM64_ASM_ARCH "\n"
> +#else
> +#define ARM64_ASM_PREAMBLE
> +#endif
> +
>  /*
>   * The EL0/EL1 pointer bits used by a pointer authentication code.
>   * This is dependent on TBI0/TBI1 being enabled, or bits 63:56 would also apply.
> diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
> index d493174415db..cc3f5a33ff9c 100644
> --- a/arch/arm64/include/asm/tlbflush.h
> +++ b/arch/arm64/include/asm/tlbflush.h
> @@ -28,14 +28,16 @@
>   * not. The macros handles invoking the asm with or without the
>   * register argument as appropriate.
>   */
> -#define __TLBI_0(op, arg) asm ("tlbi " #op "\n"				       \
> +#define __TLBI_0(op, arg) asm (ARM64_ASM_PREAMBLE			       \
> +			       "tlbi " #op "\n"				       \
>  		   ALTERNATIVE("nop\n			nop",		       \
>  			       "dsb ish\n		tlbi " #op,	       \
>  			       ARM64_WORKAROUND_REPEAT_TLBI,		       \
>  			       CONFIG_ARM64_WORKAROUND_REPEAT_TLBI)	       \
>  			    : : )
>  
> -#define __TLBI_1(op, arg) asm ("tlbi " #op ", %0\n"			       \
> +#define __TLBI_1(op, arg) asm (ARM64_ASM_PREAMBLE			       \
> +			       "tlbi " #op ", %0\n"			       \
>  		   ALTERNATIVE("nop\n			nop",		       \
>  			       "dsb ish\n		tlbi " #op ", %0",     \
>  			       ARM64_WORKAROUND_REPEAT_TLBI,		       \
> 
> base-commit: 15bc20c6af4ceee97a1f90b43c0e386643c071b4
> -- 
> 2.28.0.297.g1956fa8f8d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827205720.GA987541%40ubuntu-n2-xlarge-x86.
