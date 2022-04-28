Return-Path: <clang-built-linux+bncBCS7XUWOUULBBJH5U6JQMGQEJZWZ2XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id B164C512997
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Apr 2022 04:40:38 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id i3-20020a170902c94300b0015d34d24e91sf1958043pla.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Apr 2022 19:40:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651113637; cv=pass;
        d=google.com; s=arc-20160816;
        b=e5OQsUkeoDX9z1rrdMknNawvhN0G4TgXn80kGLCr/HgsR3liDTcTD2jhgxuZAhHF+A
         jBqZ7/KdE2ofJBUs60V+AVYsBLQjQFwHDqykZfBnQNN787rHi7hkDe42Rq/lyT1SAmtj
         p8WlXH4BVQENPRUUY+7HCQh9JDY3jkof2jxd5Jl2DXCQHcXV2aFvyDHI6Obvq3aQgZfq
         /mhOMwEeUrvQql48+8y8cPqXhb9kg5s8hejqotqih/dXqlaPHLCEUIefrFBCFp0nZ8aN
         7xZZcSKKI8QCaxT7YRn1JTjfPeWKgM1rCeawApFQ9dWYv3VvdlrP/O08gmtQ6q4Fw6NP
         Y+6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=93KGz0GONolbmxExlOJAXbc4tbFkJXyDCLUYtXkqlak=;
        b=Y2RtjNiyEXlegTAfOQbuVDxPcaX5AZ8PZA5KpeZ32GmE89EOQK47/aRVmYkRez06Uj
         3Rl5u4F7TLxmR4U3C2HncwBggXKsRo4VdPCRBrlt994sw6pieVq9l9lpzgnOYBJIFxK9
         qkfSNK+AxR8CQXw+AdH1KC3bC68RMX4zv3/MNHH2eYLJLiUgrF7zQaselaawK1CxQ5Bj
         W81eIhGrsaLD5HHysbEP2zm5C+GznRy1V3AFOuozZ15KyXZr0gdK5goBO0ng+wsjnkoJ
         e1EW0XN5b4zjM6uhG9fuGaRWvNBV79cleA24shA4aaJJ9Vyilrh0DhpxHXlJ2IhLyw4f
         NdZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=PCfCRwFz;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=93KGz0GONolbmxExlOJAXbc4tbFkJXyDCLUYtXkqlak=;
        b=HeY1EufQ6F86pBmsPWIMpKeUL6/VIgHeWn2QZ+uJADePz/ZEbi3m3exnc3pf/pgOOD
         KMELA/el0dOOT4TNGpYid+QBTxQ8SRUvO8ubOgRX8tRlRCX2f6hpK4ULY3yvmYk/xGS2
         2upokdtBNTOjTocSHK68qh6Qj6in9eeyNSdT1cqNiwq4TGNtBkAU+dq//TUFJHdfd7Jw
         ci8gf5V9sFcnhcz2xZg2APEFDvXVOBRNVkwP2wAVqZRAASgiFjvdapf5NHSX1A0L+sLK
         ycGMmRVNaS5HintP7TR6OqdSXwGQfBoq8Hfqv1AYzi278SA08pZok5yqaarQlHyprDb/
         cRow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=93KGz0GONolbmxExlOJAXbc4tbFkJXyDCLUYtXkqlak=;
        b=QGJKmCLRk8rDmpRwIiZB4WDGApxdmfB515c6HIC11Mr0YklcUIofM/NaSl6cptLo2U
         C+AHejm3WttnSL0ZsdpWDQjji52Tk49809TLpRvSIqaiaKR3EVpiz7zNyia05ArC59Lm
         Bv9pX/Zkf0axyPnPyptQHfwt95YsLKt0UPSuTYY1qjhsvaeZ1eCDkz3hOHlouQcd0/o6
         jJLxEMv4sMYzKlx2WzeUUyQn2Qh0j4yQotOr5XdGn3lhaNkoPAPSPwJ4DHVa14skbfXA
         7+FD9fvB7efEwEpOm2S8v1Pyhk11lWmWv9DD6olj6l2vlElfj3l9w0iXiiIEa7CLWtiq
         zsVA==
X-Gm-Message-State: AOAM532QiS+snv6OmZja/ZzRjucNLK8zxpm3M0TA2Y8gKFii+BDR87dZ
	+WUl7vykq8a/n2PlkSeHCOU=
X-Google-Smtp-Source: ABdhPJyH7GmP5/VVSL4JjkpIgeiwZNy4FO9LhHWzaU2iGHTEMxCQTAFQDFxTy05h+cyKh5fipFOWvg==
X-Received: by 2002:a63:864a:0:b0:3ab:1a03:4e33 with SMTP id x71-20020a63864a000000b003ab1a034e33mr18420499pgd.241.1651113637005;
        Wed, 27 Apr 2022 19:40:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:8cf:b0:505:cce6:5f13 with SMTP id
 s15-20020a056a0008cf00b00505cce65f13ls8767073pfu.7.gmail; Wed, 27 Apr 2022
 19:40:36 -0700 (PDT)
X-Received: by 2002:a05:6a00:2d0:b0:4f4:1f34:e39d with SMTP id b16-20020a056a0002d000b004f41f34e39dmr32599898pft.14.1651113636251;
        Wed, 27 Apr 2022 19:40:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651113636; cv=none;
        d=google.com; s=arc-20160816;
        b=bHsU9nLuPOvnTzenUg0R3qoYk6IBGnbsmMXUJsl+BVh8dxqX/yw9zdHG4SeOJqWaB9
         lCpjE4omEINL3mS1Anm6Kv3/E2ecXC60M1aQxa6CUeiBIecLNsluq0lE64AS+hBZGZCE
         7vlk542lTAL+UR8j6h+NhztoNihFU/zYqUSiW3yQFgjXjR/0E38moEtpHNMsYbF+rrBt
         R69PWIuc550LYyVma1SoFGJD/GmvTkOqR1mFVUJHTI2GRT64gfJX7VQtSToZuhYRjKVT
         lGKMAglPxYNU5k3YHR5qAMjIHeo77rz8kUSTClbYMCi4wRqWaaZfM9xb9bA6lWG2c3aQ
         I/Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1S132FtdDmdc4cHE8X/HeLW8XsH3VQUAfBpB17jqPrQ=;
        b=gQdk7n3IsSjGISn9+5HdxNBJvuMXG2cGAnfhzkDTlKr7A0SuWzBhScdz14KNBi3u3Q
         FncsfMwHc/oLZRfc+q7U5jGjksTDyKGRrLhL9eGOst1ehF3xxnsks5i78fJmEOpwrk03
         lE91m2hFyxwKhTWTAATHE0FNT3rajzA5aDp7zVavUP7IptUy3f8Q6eE9Jzy+aigizXl5
         GuvDk7dVbNLlVOxA4I1X8EB23Q/7burRGpwIFRIPZFFQ2s7zVv8fD0yPklNRFmDa8oky
         w7o08o08ybluFyYtWtPUaKP9S1isoD+K3hH3dsntGR/YX0K3d2GAJyyVi7dc52MZpyXH
         VLHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=PCfCRwFz;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id n16-20020a056a0007d000b004e1a39c4e87si268345pfu.0.2022.04.27.19.40.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 19:40:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Received: by mail-pl1-x62e.google.com with SMTP id n8so3165053plh.1
        for <clang-built-linux@googlegroups.com>; Wed, 27 Apr 2022 19:40:36 -0700 (PDT)
X-Received: by 2002:a17:903:14a:b0:15c:f657:62cd with SMTP id r10-20020a170903014a00b0015cf65762cdmr22830900plc.36.1651113635689;
        Wed, 27 Apr 2022 19:40:35 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:200:97d8:6a3e:53c0:230d])
        by smtp.gmail.com with ESMTPSA id g13-20020a62520d000000b0050a923a7754sm19975656pfb.119.2022.04.27.19.40.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 19:40:35 -0700 (PDT)
Date: Wed, 27 Apr 2022 19:40:30 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com, will@kernel.org,
	catalin.marinas@arm.com, keescook@chromium.org,
	mark.rutland@arm.com, nathan@kernel.org,
	Sami Tolvanen <samitolvanen@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [RFC PATCH 2/2] arm64: kernel: switch to PIE code generation for
 relocatable kernels
Message-ID: <20220428024030.gwxb746c5gwvcnw6@google.com>
References: <20220427171241.2426592-1-ardb@kernel.org>
 <20220427171241.2426592-3-ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20220427171241.2426592-3-ardb@kernel.org>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=PCfCRwFz;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62e
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2022-04-27, Ard Biesheuvel wrote:
>We currently use ordinary, position dependent code generation for the
>core kernel, which happens to default to the 'small' code model on both
>GCC and Clang. This is the code model that relies on ADRP/ADD or
>ADRP/LDR pairs for symbol references, which are PC-relative with a range
>of -/+ 4 GiB, and therefore happen to be position independent in
>practice.
>
>This means that the fact that we can link the relocatable KASLR kernel
>using the -pie linker flag (which generates the runtime relocations and
>inserts them into the binary) is somewhat of a coincidence, and not
>something which is explicitly supported by the toolchains.

Agree. The current -fno-PIE + -shared -Bsymbolic combo works as a
conincidence, not guaranteed by the toolchain.

-shared needs -fpic object files. -shared -Bsymbolic is very similar to
-pie and therefore works with -fpie object files, but the usage is not
recommended from the toolchain perspective.

>The reason we have not used -fpie for code generation so far (which is
>the compiler flag that should be used to generate code that is to be
>linked with -pie) is that by default, it generates code based on
>assumptions that only hold for shared libraries and PIE executables,
>i.e., that gathering all relocatable quantities into a Global Offset
>Table (GOT) is desirable because it reduces the CoW footprint, and
>because it permits ELF symbol preemption (which lets an executable
>override symbols defined in a shared library, in a way that forces the
>shared library to update all of its internal references as well).
>Ironically, this means we end up with many more absolute references that
>all need to be fixed up at boot.

This is not about symbol preemption (when the executable and a shared
objectdefine the same symbol, which one wins). An executable using a GOT
which will be resolved to a shared object => this is regular relocation
resolving and there is no preemption.

It is that the compiler prefers code generation which can avoid text
relocations / copy relocations / canonical PLT entries
(https://maskray.me/blog/2021-01-09-copy-relocations-canonical-plt-entries-and-protected#summary).

>Fortunately, we can convince the compiler to handle this in a way that
>is a bit more suitable for freestanding binaries such as the kernel, by
>setting the 'hidden' visibility #pragma, which informs the compiler that
>symbol preemption or CoW footprint are of no concern to us, and so
>PC-relative references that are resolved at link time are perfectly
>fine.

Agree

>So let's enable this #pragma and build with -fpie when building a
>relocatable kernel. This also means that all constant data items that
>carry statically initialized pointer variables are now emitted into the
>.data.rel.ro* sections, so move these into .rodata where they belong.

LGTM, except: is ".rodata" a typo? The patch doesn't reference .rodata

>Code size impact (GCC):
>
>Before:
>
>      text       data        bss      total filename
>  16712396   18659064     534556   35906016 vmlinux
>
>After:
>
>      text       data        bss      total filename
>  16804400   18612876     534556   35951832 vmlinux
>
>Code size impact (Clang):
>
>Before:
>
>      text       data        bss      total filename
>  17194584   13335060     535268   31064912 vmlinux
>
>After:
>
>      text       data        bss      total filename
>  17194536   13310032     535268   31039836 vmlinux
>
>Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
>---
> arch/arm64/Makefile             | 4 ++++
> arch/arm64/kernel/vmlinux.lds.S | 9 ++++-----
> 2 files changed, 8 insertions(+), 5 deletions(-)
>
>diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
>index 2f1de88651e6..94b6c51f5de6 100644
>--- a/arch/arm64/Makefile
>+++ b/arch/arm64/Makefile
>@@ -18,6 +18,10 @@ ifeq ($(CONFIG_RELOCATABLE), y)
> # with the relocation offsets always being zero.
> LDFLAGS_vmlinux		+= -shared -Bsymbolic -z notext \
> 			$(call ld-option, --no-apply-dynamic-relocs)
>+
>+# Generate position independent code without relying on a Global Offset Table
>+KBUILD_CFLAGS_KERNEL   += -fpie -include $(srctree)/include/linux/hidden.h
>+
> endif
>
> ifeq ($(CONFIG_ARM64_ERRATUM_843419),y)
>diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
>index edaf0faf766f..b1e071ac1acf 100644
>--- a/arch/arm64/kernel/vmlinux.lds.S
>+++ b/arch/arm64/kernel/vmlinux.lds.S
>@@ -174,8 +174,6 @@ SECTIONS
> 			KEXEC_TEXT
> 			TRAMP_TEXT
> 			*(.gnu.warning)
>-		. = ALIGN(16);
>-		*(.got)			/* Global offset table		*/
> 	}
>
> 	/*
>@@ -192,6 +190,8 @@ SECTIONS
> 	/* everything from this point to __init_begin will be marked RO NX */
> 	RO_DATA(PAGE_SIZE)
>
>+	.data.rel.ro : ALIGN(8) { *(.got) *(.data.rel.ro*) }
>+
> 	HYPERVISOR_DATA_SECTIONS
>
> 	idmap_pg_dir = .;
>@@ -273,6 +273,8 @@ SECTIONS
> 	_sdata = .;
> 	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_ALIGN)
>
>+	.data.rel : ALIGN(8) { *(.data.rel*) }
>+
> 	/*
> 	 * Data written with the MMU off but read with the MMU on requires
> 	 * cache lines to be invalidated, discarding up to a Cache Writeback
>@@ -320,9 +322,6 @@ SECTIONS
> 		*(.plt) *(.plt.*) *(.iplt) *(.igot .igot.plt)
> 	}
> 	ASSERT(SIZEOF(.plt) == 0, "Unexpected run-time procedure linkages detected!")
>-
>-	.data.rel.ro : { *(.data.rel.ro) }
>-	ASSERT(SIZEOF(.data.rel.ro) == 0, "Unexpected RELRO detected!")
> }
>
> #include "image-vars.h"
>-- 
>2.30.2
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220427171241.2426592-3-ardb%40kernel.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220428024030.gwxb746c5gwvcnw6%40google.com.
