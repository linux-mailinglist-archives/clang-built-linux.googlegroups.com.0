Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLVL6L2AKGQEFVM5DOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 953511AFD29
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 20:17:19 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id g55sf8535752qtk.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 11:17:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587320238; cv=pass;
        d=google.com; s=arc-20160816;
        b=0mBJxgNu/gFiq1xWqcznuNY2bmFTBOAYWfkREK64c0hAODJ/NY6XD/ODZmY36VdDf9
         ykcxCAfo52+O1az+zbwmKwarAECPSms8qOq+LzmaGesJ8+y8Hhrz8JZV3fl4XY0hYYKI
         LjEVLno7ZyV+DRua1fu4bto2227Q64KzNuA/b4mFFGDM8+n/lEjiViJtwimtUuz5R/ut
         8Vne7vNSDbs/n01Rh5pZXidP08d/BsOLx/GenGhOUet0N0Ga1LQAA2Gy6qyfJdnaUvTc
         f3OMFek4opc/N+z1gBG13gYVNK0QL/y3wdphIpa8Un/XwCGm6p2GjRnsBXP5kIrNY4Qg
         mmow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=bhAfRUamGaUWd/mqNhI+wXGJ8+O6zVNN0yTTwet4exU=;
        b=eTLXceXI2r6yf1fxuahIHRdi6EYvR9t28XocOQnZRqJ7whQGe9BLTb/CTnpi3nkidG
         tsQ2FRIhW+WunPGTJARGrXZf1rd2H1ZwFVfhSgu5ohdvK0pH5wM/Vhy+TDoxy/l44NFQ
         KxGCPeqxS0ZYAKoOEVsCzk6swL2YnbMiOGVM/tTxrQC+SRnBHIXOoTZCxG2t36IBp5fG
         KQn8aFNWh8J1UrT3MJlzy9LduAKAOefNXrraBQCks4aMJXTkNqMPhsbQA5CqcQYAtcAI
         kcWzgUworxON4d0m8yPi1doaHKNlwy9IZA0NBwQK9XRKClKd7wY6quF3NKrxkK2O2Bf8
         tqCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OFPZulq2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bhAfRUamGaUWd/mqNhI+wXGJ8+O6zVNN0yTTwet4exU=;
        b=YPAEOIInsm3zQTROstpZr4pzLHmZh9Cack9ZlUSWQQp46/PfRZD2mNWj9IZ65hvjlA
         RZVYhBpvNQk7SOXQCVsdFWZrCZXjZuxHVsQKkLblsD/jvexIMgJY7f+wHFvlw51wKCJr
         ItAzaKL99WXtEmU3clUEiUgAfDcni8O26JP6w/ckVIUocbcek4+5eqVC8eWS1m5r5C2N
         BVquFYPxfP0BxvaexZ3DYlEiOSrFR7w867x3SWjz9Qu8C8UfAufUskvqw81k1N73cuwz
         4kuZcq9NWPNr3+8Y8hPKNDbSbfJEVHsBXsw5c0tDOeShDVvvZJwZheBzpLtjgt6YrkNK
         6gaA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bhAfRUamGaUWd/mqNhI+wXGJ8+O6zVNN0yTTwet4exU=;
        b=CDZqKcYFpwqoxuMVZYRpdWR+AJkwaak5jzWVhsl4A+rmlRvjVB6wi/oikuSoiQykqX
         uYjCqxfaNbmlVCnZPVi951ibvKKh3afmKLtxXJg/9SEs28+OF1qjLWwyNAvYAQ0hINvr
         gjqUfRFBuD6rtk6Ckm9F3PiEfzeMmBTIWHavieE53bskV8nKrRKc1hHSEpqnVaU03OMj
         NwNHSICOze63t+A3mI6OiWd9ChMWo0WRrtFwbevV2aeLWiV3ksVHP7JLrPJORC/IK8ke
         ifJATXZkFrMazQndAYuJUcrru1a5bt1WgcG+xp5IpPj/BsmX2srrWu+GB87cvMZn6COI
         Ai9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bhAfRUamGaUWd/mqNhI+wXGJ8+O6zVNN0yTTwet4exU=;
        b=Bgz7ffcbfw2CvE0r7+upjU6CBn7/Q7ufU+GRYFsgKqbUwlLSs75oqomM2rixgo9JnF
         5oVC+BszFScJXH8NNRj/e4xKQICFedB/sEoSJVxtYZf4Suqy/V30HOw/WPVInQIz89/5
         HkasqSb699etaAef1GYBZZCHKRFy+JXJ6m9eqgT2nHRgjatKzpYlRzY/7Bx4pwqvSbuM
         PMroMaFUfirvesqUkc+aCScZeASym2qSAKHWlOJdJLFSCtcus8XjatptCEuKwvqCjHdJ
         Ws/SMErmTiYe47IYS7eLj+a88wxBLEGMdyJvIajtzciQhTE5wY6Xq6LYJiEfdZz4eva5
         Pp3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZRBqquzSvKUG6KvZc+0x+yC8koln0TER7uEDNQEDQF4lbvBPe+
	2HywPcRKOxIiknby9MLeMUw=
X-Google-Smtp-Source: APiQypIV6j863aLQaOool7T6ZgHH4wPuRR2QU69LCewzPtjc1Kiywo74mXMe8UT4xfNZE6fAuXECoA==
X-Received: by 2002:ac8:2dab:: with SMTP id p40mr11960218qta.6.1587320238539;
        Sun, 19 Apr 2020 11:17:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:7d4:: with SMTP id bb20ls2711272qvb.3.gmail; Sun,
 19 Apr 2020 11:17:18 -0700 (PDT)
X-Received: by 2002:a0c:f004:: with SMTP id z4mr11637475qvk.29.1587320238248;
        Sun, 19 Apr 2020 11:17:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587320238; cv=none;
        d=google.com; s=arc-20160816;
        b=lZIbWE+Qz2LF+91CQlh1WQvxUmSPDzLY4edHljq+JOe1yox5G+MA8lbH2dFdiUTUYc
         8utj99VG5Na7282IgOsQ2um4AmTH3sTmafAcjV0MGEpcTWZPf76AOZU1sVTO5RcpmaRF
         ZQf6uDBkpEBbjtIdOmq0z6hgEihiWcwZBihJgrGU0gdJt7I/EYwLLx9DIeVkNCF+Tdxo
         KvbKfSzdqz7bnImi9SYQYoYzB8FRlUqD0L4kakchtDwwyXIr8z4vAoj4h1DmaD1Z87IL
         mQNSKLdmz5M9wyIQI13m8iGVsMKSIHcExTigCbPMj7e45XlWEFgoym8A5Cqka5p6c9WM
         EFiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=lVp5J3L7xx8RfXE2l8kRTsve29d/FePp3kDwKpOyzDI=;
        b=ZPpQxL9f5B1E28Aad2x5WFnj5wfIbnCOH8bmm4EhdoaXt4CZg2cAiB8mU5xm7gYpd2
         ucXUWwo9FP7ubPNsaSDzXESOOKjJBGmlNVpjuU15GAgaSDoajkEuIeJoDqQRhBl3mHY5
         qv2E1pYT07fgJodEpQ2ACzX7s67teBWxWrNFlCMRtnhG5gf5Yz9t84FyLO+B3HoEOBOE
         I+VTfHrwTeFReDOCt0EvXZqqy5Y876s7SNPMDHEtw5/LUEC6OpCkGfLmb7YyHWOmy4VT
         rhIrODFIADmeLY/Zt+4lOVtm0+FiR0IPpLdyrPapro/KcERhdvRrLGleh5FBcDEQltDe
         oEUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OFPZulq2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id d11si1055247qki.7.2020.04.19.11.17.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 11:17:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id q204so6823421oia.13
        for <clang-built-linux@googlegroups.com>; Sun, 19 Apr 2020 11:17:18 -0700 (PDT)
X-Received: by 2002:aca:c70f:: with SMTP id x15mr8168206oif.80.1587320237904;
        Sun, 19 Apr 2020 11:17:17 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id r67sm9556198oie.19.2020.04.19.11.17.17
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 19 Apr 2020 11:17:17 -0700 (PDT)
Date: Sun, 19 Apr 2020 11:17:15 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH 2/2] MIPS: VDSO: Do not disable VDSO when linking with
 ld.lld
Message-ID: <20200419181715.GA36234@ubuntu-s3-xlarge-x86>
References: <20200419180445.26722-1-natechancellor@gmail.com>
 <20200419180445.26722-2-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200419180445.26722-2-natechancellor@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OFPZulq2;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Apr 19, 2020 at 11:04:45AM -0700, Nathan Chancellor wrote:
> Currently, when linking with ld.lld, this warning pops up:
> 
>     arch/mips/vdso/Makefile:70: MIPS VDSO requires binutils >= 2.25
> 
> ld-ifversion calls ld-version, which calls scripts/ld-version.sh, which
> is specific to GNU ld. ld.lld has a completely different versioning
> scheme (as it follows LLVM's versioning) and it does not have the issue
> mentioned in the comment above this block so it should not be subjected
> to this check.
> 
> With this patch, the VDSO successfully links and shows P_MIPS_PC32 in
> vgettimeofday.o.
> 
> $ llvm-objdump -Dr arch/mips/vdso/vgettimeofday.o | grep R_MIPS_PC32
> 			00000024:  R_MIPS_PC32	_start
> 			000000b0:  R_MIPS_PC32	_start
> 			000002bc:  R_MIPS_PC32	_start
> 			0000036c:  R_MIPS_PC32	_start
> 			00000468:  R_MIPS_PC32	_start
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/785
> Link: https://github.com/llvm/llvm-project/commit/e364e2e9ce50c12eb2bf093560e1a1a8544d455a
> Reported-by: Dmitry Golovin <dima@golovin.in>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/mips/vdso/Makefile | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
> index d7fe8408603e..f99e583d14a1 100644
> --- a/arch/mips/vdso/Makefile
> +++ b/arch/mips/vdso/Makefile
> @@ -65,9 +65,11 @@ DISABLE_VDSO := n
>  # the comments on that file.
>  #
>  ifndef CONFIG_CPU_MIPSR6
> -  ifeq ($(call ld-ifversion, -lt, 225000000, y),y)
> -    $(warning MIPS VDSO requires binutils >= 2.25)
> -    DISABLE_VDSO := y
> +  ifndef CONFIG_LD_IS_LLD
> +    ifeq ($(call ld-ifversion, -lt, 225000000, y),y)
> +      $(warning MIPS VDSO requires binutils >= 2.25)
> +      DISABLE_VDSO := y
> +    endif
>    endif
>  endif
>  
> -- 
> 2.26.1
> 

Hmmm, I still see this warning when first runing make <config>... I
assume because this Makefile gets parsed before Kconfig runs.

Perhaps it would be better to check if ld-version is 0 (since that means
we are not using GNU ld):

ifneq ($(call ld-ifversion, -eq, 0, y),y)

I am open to suggestions though.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200419181715.GA36234%40ubuntu-s3-xlarge-x86.
