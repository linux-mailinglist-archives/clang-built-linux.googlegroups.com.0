Return-Path: <clang-built-linux+bncBCVLJ7OQWEPBB7OVTT7AKGQEFXNMYFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7A82CB4B2
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Dec 2020 06:49:50 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id s18sf550119pfc.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 21:49:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606888189; cv=pass;
        d=google.com; s=arc-20160816;
        b=tjb492ffek37wL9eFkoXh6kc9opg1sDs2dpGtT88FsNCPdZngRrqVLt0S18Sz0PuV7
         7Vs5iEQFH6pgUs9Lwe70KR4gnnw5/j9ErWzkNiKrP51ooErCV2sQ0spwGpyxEzmNYyhS
         6ovdTpeUxIUyeWFQlGJr3n28ECMolgacaJfhxq5yweFgRLB9LFsTGfX3uY14b/gYqW66
         CramFKYjwtW1dh/lDo3Q7KrXKZVEm2Wl+LnNyYizyLIi2I0kR5VEcS418+/HizlnK5Vb
         qhdVPTQWu+5RuVX81vIps1jtyLI1HnU3fFiSYtOOMkMmRLlgpoPdQsrPP/WIEtpJ4Ef9
         uiRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:from:cc:to:subject
         :mime-version:references:in-reply-to:user-agent:date:dkim-filter
         :sender:dkim-signature;
        bh=d89FACePYuxV4R0esveayyg2VMrwBj6rInVF2d/kSD0=;
        b=iGcB8SkR+wJ6VmZCfs1cXXDAqxc51Gw41yzRMV93JD+RHajo6jc09/roXC+3m1oEuI
         kAGMvFG6bkHW6/GZ6tC2A9Y9GLLxGr2dJa+GBGPbr7rU4MAU5G8XXb8Wxhw+d5KD334n
         t4WT96V3dsdPaFmTXyOI+gch6b2rqOT6O9yYi/d24ILuBpWVIWogw1zILXW9cf+5E4sl
         yyTyRdxAiCsqd44yaP30V6g8orGeHuFJXX6TeGbO+paIrNiCxOfbNBKhcYUUFWGXec5j
         LxDw83aGZLsXsT8WHUCs1gkrm15JajvrIFq0kEQm02bsBVSfMTm/O8D4oXbFaP7FHMgE
         aGYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=fail header.i=@zytor.com header.s=2020112401 header.b="XND2Rhi/";
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:date:user-agent:in-reply-to:references
         :mime-version:subject:to:cc:from:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d89FACePYuxV4R0esveayyg2VMrwBj6rInVF2d/kSD0=;
        b=VKqf8GyLFyWnMHkdgX1v5NOKsw3QKDauBA7A77f09KFrCFuE9r//HmTSfYk1xWERru
         QE36DlP0Y64/GL3aSVuD4bkGIs3vnBXwLoh1k+xUswiBe1071JkxxuIVcbtm8OCvvU2C
         /kY0wCcmWybBKWeVGhiQyJn8QNl+n4j1V1vI5UCSaF3aJPei4sdq4aLoFLLaO4IfNMo0
         kVmwo1M51uO4dhSBaNrYuTQk+5QFMZNP+Moi78HiR7WsTd3wDGSbgQB9Wtrt3qNg3d0C
         BGWCm+TT7TFrJA/3CoejpZ++5YT449CE6BnGdxgzfIn8PMdCV1FjFMI+p6i5vl4R6ySu
         wvyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:date:user-agent:in-reply-to
         :references:mime-version:subject:to:cc:from:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d89FACePYuxV4R0esveayyg2VMrwBj6rInVF2d/kSD0=;
        b=S0tQmIudHNnihkqdM1242La1M2p1UAof8vlg8POtXwPTPWMInrEC6XIjlfZYVLDuuu
         bX7rGXwj6mDS/GpmKU5wdwklkoW04EJQaTEwxyjkwWbH5ZLeZS3IHqQdjKeNuiZojN97
         xTC0ujl2i5P6/LdhoJ9o1do2i/LkLQ15HKsMW0Qz+UjNBr0CdXKW38r/QSTn9Lg2qypP
         906bPmMKCp2qnvlThuR5QIeuCHAeJlQ3/cMs4iPXGP+KMGFdSth5YICXUBCo6aH4WEW9
         AEqre7tdrx8groD4ie9sJyUTtDALGv8JlUlLoV32Qu0KNpyJUKfv6OSKn6LuwZYqLGWU
         cF7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GDDAhZYhmQOiBlGRvVWOQf2Ajf9jdzSx2AQXsIP4CnP6vkkkT
	oyZ0eQHIGP4N11B+XJaBhwQ=
X-Google-Smtp-Source: ABdhPJw4YAvav8gMzs14KsQimn3ULGu/40HvrVJQmxTjfz+57Qeh6ihsrqHLQWccbg6SQGyqYt9RkQ==
X-Received: by 2002:a63:ee0f:: with SMTP id e15mr1227097pgi.292.1606888189196;
        Tue, 01 Dec 2020 21:49:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:15ca:: with SMTP id 193ls283785pfv.5.gmail; Tue, 01 Dec
 2020 21:49:48 -0800 (PST)
X-Received: by 2002:a63:171b:: with SMTP id x27mr1244401pgl.70.1606888188552;
        Tue, 01 Dec 2020 21:49:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606888188; cv=none;
        d=google.com; s=arc-20160816;
        b=lc55syBe9lul471Tlf/AJncUQKDCHRY82v5QVCRvb1ihK1a4KBLNEwcnfQDTBppTnZ
         ZHejT1K9eZ57AXZP4ejB8Lj4E3dDU0wd1XY0AQxaev+Sg8yEHW3+WFIH3CpzaUhOkTGP
         EODfErYRGDOYsqJIRiKbR3lhwiRoXukQMmSk7Tc+xvQRFa4mFzdKLDepcNHc4joqIYyz
         QSLodfnZlyMafetMcbsNRC1eeXFV5bBa3dmu8qHGXrqIc0RwkUk8G5kI2pUvcqxJdcGg
         r245P1MVSgWvcuIK35tUvbI5Z8LFvR4otkbYsQb+0eaX1prIBNJh3PzVF6OowfWD2Ggy
         87vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:cc:to:subject:content-transfer-encoding
         :mime-version:references:in-reply-to:user-agent:date:dkim-signature
         :dkim-filter;
        bh=lZoblTuZ444n2VQoIdUJL4/MfqKhqZBv8uTRQf1VZY4=;
        b=Ghn9c8F8ltNaRv+f2sAjdUxojQM9TWUZ4zPt1UFvbTIfjKB3q7N4xNLYM73Kwrues5
         8HbVPmaBSVZ53lZMoUXEP7n+Eq5nvJ7453/kYEjze+cBxu4qSytNEuZVT9LE3apthZdb
         Ye6m0pyLUoAUGMw6ELi6nWRKNqIC4ywQL3p91eOQlO6I9dM3rpdZKxlQqg7u6Aq9xFIa
         UJblKwlLT+dAJahfTrNiMMJzVCtr8cPugjDIOUpzzqvYYV0i8Wj9cy42LkgAVnb1Jejj
         3dVkTD8KnfHFhes/4Upa/A8qxqoSl6w3HhtPkp/Qh2z6DF7veJWUqaRTt2rjXRMIUOCi
         nPfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=fail header.i=@zytor.com header.s=2020112401 header.b="XND2Rhi/";
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
Received: from mail.zytor.com (terminus.zytor.com. [198.137.202.136])
        by gmr-mx.google.com with ESMTPS id 7si6625pfc.5.2020.12.01.21.49.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Dec 2020 21:49:48 -0800 (PST)
Received-SPF: pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) client-ip=198.137.202.136;
Received: from [IPv6:2601:646:8680:a581:c193:6030:78e:4f19] ([IPv6:2601:646:8680:a581:c193:6030:78e:4f19])
	(authenticated bits=0)
	by mail.zytor.com (8.15.2/8.15.2) with ESMTPSA id 0B25nN3V155135
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
	Tue, 1 Dec 2020 21:49:25 -0800
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 0B25nN3V155135
Date: Tue, 01 Dec 2020 21:49:15 -0800
User-Agent: K-9 Mail for Android
In-Reply-To: <20201201011307.3676986-1-ndesaulniers@google.com>
References: <20201201011307.3676986-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [PATCH] x86, build: remove -m16 workaround for unsupported versions of GCC
To: Nick Desaulniers <ndesaulniers@google.com>,
        Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
        Borislav Petkov <bp@alien8.de>
CC: David Woodhouse <dwmw2@infradead.org>, x86@kernel.org,
        Nathan Chancellor <natechancellor@gmail.com>,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
From: hpa@zytor.com
Message-ID: <E9235D82-F8D5-43E0-B990-C2F0410A997C@zytor.com>
X-Original-Sender: hpa@zytor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=fail
 header.i=@zytor.com header.s=2020112401 header.b="XND2Rhi/";       spf=pass
 (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted
 sender) smtp.mailfrom=hpa@zytor.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zytor.com
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

On November 30, 2020 5:13:06 PM PST, Nick Desaulniers <ndesaulniers@google.com> wrote:
>A revert of the following two commits.
>commit de3accdaec88 ("x86, build: Build 16-bit code with -m16 where
>possible")
>commit a9cfccee6604 ("x86, build: Change code16gcc.h from a C header to
>an assembly header")
>
>Since commit 0bddd227f3dc ("Documentation: update for gcc 4.9
>requirement") the minimum supported version of GCC is gcc-4.9.  It's
>now
>safe to remove this code.
>
>Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>---
> arch/x86/Makefile         |  9 +--------
> arch/x86/boot/code16gcc.h | 12 ------------
> 2 files changed, 1 insertion(+), 20 deletions(-)
> delete mode 100644 arch/x86/boot/code16gcc.h
>
>diff --git a/arch/x86/Makefile b/arch/x86/Makefile
>index 1bf21746f4ce..7116da3980be 100644
>--- a/arch/x86/Makefile
>+++ b/arch/x86/Makefile
>@@ -24,14 +24,7 @@ endif
> 
># How to compile the 16-bit code.  Note we always compile for
>-march=i386;
> # that way we can complain to the user if the CPU is insufficient.
>-#
>-# The -m16 option is supported by GCC >= 4.9 and clang >= 3.5. For
>-# older versions of GCC, include an *assembly* header to make sure
>that
>-# gcc doesn't play any games behind our back.
>-CODE16GCC_CFLAGS := -m32 -Wa,$(srctree)/arch/x86/boot/code16gcc.h
>-M16_CFLAGS	 := $(call cc-option, -m16, $(CODE16GCC_CFLAGS))
>-
>-REALMODE_CFLAGS	:= $(M16_CFLAGS) -g -Os -DDISABLE_BRANCH_PROFILING \
>+REALMODE_CFLAGS	:= -m16 -g -Os -DDISABLE_BRANCH_PROFILING \
> 		   -Wall -Wstrict-prototypes -march=i386 -mregparm=3 \
> 		   -fno-strict-aliasing -fomit-frame-pointer -fno-pic \
> 		   -mno-mmx -mno-sse
>diff --git a/arch/x86/boot/code16gcc.h b/arch/x86/boot/code16gcc.h
>deleted file mode 100644
>index e19fd7536307..000000000000
>--- a/arch/x86/boot/code16gcc.h
>+++ /dev/null
>@@ -1,12 +0,0 @@
>-/* SPDX-License-Identifier: GPL-2.0 */
>-#
>-# code16gcc.h
>-#
>-# This file is added to the assembler via -Wa when compiling 16-bit C
>code.
>-# This is done this way instead via asm() to make sure gcc does not
>reorder
>-# things around us.
>-#
>-# gcc 4.9+ has a real -m16 option so we can drop this hack long term.
>-#
>-
>-	.code16gcc

With enthusiasm:

Acked-by: H. Peter Anvin <hpa@zytor.com>
-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/E9235D82-F8D5-43E0-B990-C2F0410A997C%40zytor.com.
