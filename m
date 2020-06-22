Return-Path: <clang-built-linux+bncBCS7XUWOUULBB2OWYT3QKGQEJ3JFJEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 811B720434B
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 00:06:34 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id l32sf9011508otc.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 15:06:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592863593; cv=pass;
        d=google.com; s=arc-20160816;
        b=YjuWP2Fm9a7B6RrDTGDQCcEl+u9G0aX5tBUrrPubXhgLY1gehVt7P1oXktK9gd/QWf
         qbh2XjLgWTK7KjpdnA9L0jRXK3sIZPow2YYtEP7Q2xBkH+ioiTJuuRSxLxHhXTvYhsEZ
         oHUfjllW18hyT8UOpnwwHACxvfOARJkq0aj0yoQCYzTGDPGZM0kYMDsSNsI1vSd3FdM7
         j7qOsYDiK3nVKuR3pHLbTxyJIcZkIqK5w1rqkDQm9WRwUgw+xh88jev2kGGVBumnJHjK
         k5b5mOx68r3As+DeFyK4u+LynHTggQhHdPjzn1qkrcGiMeYES6x8Lkz/rYHgyaU60FIV
         tBkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=mW1C6xlI4j+dLtSJgyorHKdADM1K4ZapyKccyi9Puyw=;
        b=Lg3dOeSXF99bZ0bUBeeNEFxfZZOckgXH/bc3tgcKFFbPnelx+D3eEHFbHSvdRoVOqL
         pTzln4rVJtvsLJNi/2KkPslRo0xzJRkmPEyWedShQICXXAQuzFfpRs1UmZuKig3X12Bt
         Ril9jX9TcWwDFBOpn8WWVCrVhbISOo9DkUwlA/rFhClaY4isUxaRAfDAvsVVrBQzwig6
         Oo3cld3mdf3xD822JnExzZ9T+Pl4r5Xzin9hWtShXy84HZ86IH3eOwun/n1Hi5AK692L
         fCJK/NShpNYBhTi6A3aNHWpiE0zND7Qi7epdS1weOanSLyLhWz26s1+i4NuzSOXoEYz/
         SpOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UIzUj+ug;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=mW1C6xlI4j+dLtSJgyorHKdADM1K4ZapyKccyi9Puyw=;
        b=BQMwKm2+V5/M37nOXeRPpQe6oWDCn72mQrJ47u9ot6D2N3SduFtk1yEN+qVOziNiSE
         LqghLTQINsntbZ43dOQXCTOwtrzXBSGky932JImSJfXJPR6e55co5U0tWmeRgC8Et0HF
         7vwRotMcWrDHDepyJc/8jIBfvhtFMiQLJ4+mTBzZz9EWyHCKwE3tWfc2faM24+/0ETGA
         /LuLTZSNmR2nAjS5sG1G/LiKs4OiZOGRgdeBa3RpeUjntPsgTD112jAUmNYzO5Z/3R6V
         wiO7XiIdU32OB8xvoREaJRP718vu70AdYnXmRr91LyRKVAMe9PjsjskXNrv+GfoBfKIl
         Yx6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mW1C6xlI4j+dLtSJgyorHKdADM1K4ZapyKccyi9Puyw=;
        b=c/EfOOIPCXD2O9joXZ5ipzrrrY/RCavYZ3RitizCyx7clSrR+D6cCGxtNGhVMwBBxq
         /fEL1yUOmsz63rKNOXRmO5Qpo0VO0Z0xXsFZuojk5+fb5M09VmPNFqbnbMuK50etN0DN
         DwwqxcC8iWLpKDpXCi1pVkeiUqQmZZXdJlXakbGbu+7OjAfGeD3J1Y4sM991rcbDklcH
         g79f3KvBVli9toPni677wgbTyuSpN0nF4QqK02F7b6fSN0qebyDLM7xJ7ETxKKHfTn+O
         tfP9FbrzYOHi6SHgfYSw+nsBN20bfsZqGi99iFLMaEpcrTheAz4jWkgHyYsvtcNeFzmu
         NUjg==
X-Gm-Message-State: AOAM532iytFb9PEYiqjUy9Uyth5Aoi0QlTmRD+cT2se6Tyz5YZ/MfXj5
	hggPV8UkGRjrOScB9uBQYfU=
X-Google-Smtp-Source: ABdhPJzNbFUP6wd3yu3Kd6iw2bGHEnVZaSKOo95OLVqcD0Uzi8ui1/RunyJf7/TOg/LqHCB38CRfDw==
X-Received: by 2002:aca:d0d:: with SMTP id 13mr14742071oin.174.1592863593465;
        Mon, 22 Jun 2020 15:06:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4fc3:: with SMTP id d186ls3592984oib.1.gmail; Mon, 22
 Jun 2020 15:06:33 -0700 (PDT)
X-Received: by 2002:aca:ba03:: with SMTP id k3mr14105132oif.33.1592863593178;
        Mon, 22 Jun 2020 15:06:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592863593; cv=none;
        d=google.com; s=arc-20160816;
        b=PYYdNhlgMCqQ2/bWnfo1F2SIshBR/Klcx5HGiBwq0VrrXsqIwr1SPnjxHqRNS3i/Sh
         2wiRvoWmqekmsqR155qOMGd8vSDa5xZz4iSHLcAJFXRBYPpqUAezmXC79nEeAeNaGRCR
         iiMN45iW00SVdRI4ECxsJ41UT8MMytbPmIxNo3ahwBltWrTJCo9Td4rDhssp5jzak32G
         gDoeJhqDJk7v/XSj8KlrjT173XKoLVVCrD/8mshaK6PCb0XePvV0uepw79RCtmJPmiex
         JcPnnD9pGCHAKOnw2Idm27EdEdWe4nIFQ89naj4bRwuUl6ud5mDBlwpFFgcWL1Rvnqjy
         xs0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NZrrNoLnR5tCsJjwkOg87lF2Y56Tb3KMrg75SysWUh0=;
        b=EqV6ZD7em49NhSX1DuqWB5cCdV2SLk5Kvn6dHFtR55NOjeDPJFRVDYdbcQOorN6Xcc
         sUF8GOUGDdt3vSFMhBcmrSI+/m3VTpv5cl7LD36IMqgWbJnLH8vWhlLEIQSQAPKsLqkZ
         4TbG6xKEg1gBXAvvlIjxJABVYhrRkTcLjN82PzQBeu7+D7VhAOcSGpP1NHHlij7e+dWD
         Vz9N/aJiZUd9YfHPRrPDeqdUzy+5MUvFmOE85IPnwKbHvZm1ZaWsKEYhY/S2HaKdxWpc
         1+Bim1iI3jd1afyao7j+n6b1GNXOGOzqFzX2T9Pngz3XKU9vSzzQFXwdoqxoObfi7ktD
         4DsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UIzUj+ug;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id c26si1067960otn.4.2020.06.22.15.06.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 15:06:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id q22so6023554pgk.2
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 15:06:33 -0700 (PDT)
X-Received: by 2002:a63:1d4d:: with SMTP id d13mr6212600pgm.28.1592863592255;
        Mon, 22 Jun 2020 15:06:32 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id g65sm14702797pfb.61.2020.06.22.15.06.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 15:06:31 -0700 (PDT)
Date: Mon, 22 Jun 2020 15:06:28 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] x86/boot: Warn on orphan section placement
Message-ID: <20200622220628.t5fklwmbtqoird5f@google.com>
References: <20200622205341.2987797-1-keescook@chromium.org>
 <20200622205341.2987797-4-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200622205341.2987797-4-keescook@chromium.org>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UIzUj+ug;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::541
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

On 2020-06-22, Kees Cook wrote:
>We don't want to depend on the linker's orphan section placement
>heuristics as these can vary between linkers, and may change between
>versions. All sections need to be explicitly named in the linker
>script.
>
>Add the common debugging sections. Discard the unused note, rel, plt,
>dyn, and hash sections that are not needed in the compressed vmlinux.
>Disable .eh_frame generation in the linker and enable orphan section
>warnings.
>
>Signed-off-by: Kees Cook <keescook@chromium.org>
>---
> arch/x86/boot/compressed/Makefile      |  3 ++-
> arch/x86/boot/compressed/vmlinux.lds.S | 11 +++++++++++
> 2 files changed, 13 insertions(+), 1 deletion(-)
>
>diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
>index 7619742f91c9..646720a05f89 100644
>--- a/arch/x86/boot/compressed/Makefile
>+++ b/arch/x86/boot/compressed/Makefile
>@@ -48,6 +48,7 @@ GCOV_PROFILE := n
> UBSAN_SANITIZE :=n
>
> KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
>+KBUILD_LDFLAGS += $(call ld-option,--no-ld-generated-unwind-info)
> # Compressed kernel should be built as PIE since it may be loaded at any
> # address by the bootloader.
> ifeq ($(CONFIG_X86_32),y)
>@@ -59,7 +60,7 @@ else
> KBUILD_LDFLAGS += $(shell $(LD) --help 2>&1 | grep -q "\-z noreloc-overflow" \
> 	&& echo "-z noreloc-overflow -pie --no-dynamic-linker")
> endif
>-LDFLAGS_vmlinux := -T
>+LDFLAGS_vmlinux := --orphan-handling=warn -T
>
> hostprogs	:= mkpiggy
> HOST_EXTRACFLAGS += -I$(srctree)/tools/include
>diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
>index 8f1025d1f681..6fe3ecdfd685 100644
>--- a/arch/x86/boot/compressed/vmlinux.lds.S
>+++ b/arch/x86/boot/compressed/vmlinux.lds.S
>@@ -75,5 +75,16 @@ SECTIONS
> 	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
> 	_end = .;
>
>+	STABS_DEBUG
>+	DWARF_DEBUG
>+
> 	DISCARDS
>+	/DISCARD/ : {
>+		*(.note.*)
>+		*(.rela.*) *(.rela_*)
>+		*(.rel.*) *(.rel_*)
>+		*(.plt) *(.plt.*)
>+		*(.dyn*)
>+		*(.hash) *(.gnu.hash)
>+	}
> }
>-- 
>2.25.1

LLD may report warnings for 3 synthetic sections if they are orphans:

ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'

Are they described?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622220628.t5fklwmbtqoird5f%40google.com.
