Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBI7TUWJQMGQEYAQVHDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1F8511C82
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Apr 2022 19:13:09 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id v10-20020a17090a0c8a00b001c7a548e4f7sf3705646pja.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Apr 2022 10:13:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651079587; cv=pass;
        d=google.com; s=arc-20160816;
        b=kRf+vnjpKlCPjpvmPlFney0eUK6QRLNWNRAdimQBI2gR/UgqjhNorvQPLrc1TDP7JV
         gpOFjCJHunCKc/mzom9fR73QpKak3eqFuB7iCJ0tkBFewMi54PSaLRATL7ajsvC5jqdy
         D1hVq5HSW8boMImkESGSI/TXLACTF+64R5QIbo4WFCpxHruKUPL0IjB6E+QFYgxHcx6f
         Ndq1+mgJWpOCA5hefVCGgl5QDk+lZQdSIDKPiwFDOdRt4uV+rCd2sAC63yIjE8rMCPAX
         zUscsRXHFfdn3EEdLviwR07jznlrwGyboZigiubPEu966znGTHdxL2Q+tR+aevyTlyty
         cVdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=hAOw94FVK0VOZyvtLe7iA8fodB6A/2j+o87Zh7oL16Q=;
        b=oxJgyQzcxpbsiH0oaBpNMkjIIkppu6vwvR4LPHt9oIz4x57bhRxf6F2DuZY7ORCsMi
         E8y/HGKcBy+r0ooRtXxRn7ay8nr3w70hsAWAXCwuYPz60vdC0Y0oa424I/ezsWpuUPer
         hNCl8ONm2VEuDLDZPs6czKt8eKDWUxBg6uCZk/dEm6cDgh1AwQa75XDgFQNJw4V9gZgB
         5KjEyp4VGHB/0J8TK000zDcE6826KbtbhXcgHoYsvZNb8y7nfugodjhLMazedzepC/sI
         NlQj2UebpEa+ko02wSOsobH9KGoyZX4VFFFRHEIawSzsTVEsDhaGGLjib+vcDMM4XLJ4
         rGuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="AD/8r+7A";
       spf=pass (google.com: domain of ardb@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hAOw94FVK0VOZyvtLe7iA8fodB6A/2j+o87Zh7oL16Q=;
        b=eICh/nJ9PnAYo/PeZD/rogkJkUkXMSjUwYKkBb3lKj7yGjOj6TO7ao4WVtWmKBefZ0
         vegdyfi0uZ9kHNsmEIxKt9YDIiYp2to2ZD2c+VoEdvW2aR2owrMTiaDt7ccKgnRWHjKs
         6Il4WiQp01lodqA7dEL+CFm6Odc1C+EYcc49bmel8gp/VlGh2KtbFY1X7YFR21j537w7
         sGGcVOCdD8pd15M4v+PXpK8UWlQjIVcfDfsm+LEqvS1SD4I7UG6QD1gU4ArvSLoyEnoZ
         xw5GBkQtGOLmGWlQfTVu0/L1W9+Pz/EZY9bPnu7EhMcJ7qNuBujNGMhb9VO9xzm4exRL
         E3BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hAOw94FVK0VOZyvtLe7iA8fodB6A/2j+o87Zh7oL16Q=;
        b=P5nUTNrLa7707MTHjjqAkavi69OLNyEQ4GtyMMNqb/kMP8f2ZUD4LepfI3rSmcP9sZ
         d1wnA/0fQeLFAPAq374d0Bnkc+n7zc1ceUWMpFUqYlV1PrDQ2jdeocn5On0CcNNQdCT8
         qh226hOPEa6PDJzwOMQQlsN/pDcCgfNXlLiPdwCCB4d98lZVjmQPTHBPCnDTCdxB76jy
         XBOk1MMniaSppaoCkAKHYWt5xpR5vSfNlZf+9xtBuu3cN0uLb1f+tWIGCu7TMqhgIUZJ
         BTQqut/qUfxGWYoEYbxJLiVPx+B956ghf1qMNuueWc392Uq5TdfHkXR2yj2RiQJ/J2X4
         ONAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531U/8quq6TTrS9Ni2qz0cOcJQiu2ZPlRw/Z0Ltsji6/0P1SpMIw
	Vod/SXcX69c5gaPJuoDFylo=
X-Google-Smtp-Source: ABdhPJw3mbhx2lo5XIgTPZpPzJesCTkBkWeRRRglMK/x1Ti/odcGOi87fkGfAbA2RHytCLPdH54mHA==
X-Received: by 2002:a62:6347:0:b0:50d:7da1:b2c8 with SMTP id x68-20020a626347000000b0050d7da1b2c8mr5204693pfb.29.1651079587444;
        Wed, 27 Apr 2022 10:13:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:6782:b0:1b9:7c8a:8c03 with SMTP id
 o2-20020a17090a678200b001b97c8a8c03ls2477157pjj.0.gmail; Wed, 27 Apr 2022
 10:13:06 -0700 (PDT)
X-Received: by 2002:a17:902:7789:b0:156:8b5c:606f with SMTP id o9-20020a170902778900b001568b5c606fmr28454902pll.100.1651079586676;
        Wed, 27 Apr 2022 10:13:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651079586; cv=none;
        d=google.com; s=arc-20160816;
        b=gCO7vXyhFv3BAX5dqufxZ9VxZTk5GM5f1IlBp16CO1vhmP3aiJzpkC12jXH218GhM0
         WW9aJd04JQZFojIqm5bYoo+hD/6IZIOBDmppYfXdq2suPbOHe53bdG19ousfJv+RSobk
         rR6ssR4ZDKG9LgyYaX0ZNm6GmoiaabzXBXninqhXlCpEruuc5GRZvEiokKFpWTLttxY3
         pQHSs+PsoAhV5lWQ+pN17pk1wgp3uYweYw8uG83zRGlkocHg/++WDAH6ohI+FBhUaWI6
         rpzUUZKGqLefaNMjAa+Bqx/x0FvKz5npK92HL9LyPW5wprVFz37g1G/lpx+VX+CSh3jk
         +s6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6+lbRLRpRrX2OW6ZkFb4fmbmDRAc7AxO2oRFIIF0AXg=;
        b=rnVLXmNG1EAgi823H7elPowoH4McGVakyGkeIWde1hN3u23R/nDWHZ3L21sQcmGOsW
         wus9YgJpuv5y9+0ZFtYMRCmpamYLI3Aq1nH1PENFhOcelHdTnATGw3+acfJCBY402DRS
         BJAGcPislqQxOqqeVMjopNCNn8wnlV42yb0vjxrtsgyDYaLVhbXCOjhEO7SxpYL+G8q3
         5fIubGO2a2+7uz9N0JguO15xaoikHIpUY5G8VzY4QQoyi8uB/j+jaf2sLmXLRxFy9rJ3
         NgzDg7yFBDnaroIPx9AWBFImJRxYJMkE7Xpcd/uv5F5XPzPGe+gtNWkLSplL5c6zS2bp
         SPyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="AD/8r+7A";
       spf=pass (google.com: domain of ardb@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id 201-20020a6301d2000000b0039d954a1759si188291pgb.5.2022.04.27.10.13.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Apr 2022 10:13:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1FFB261DFC;
	Wed, 27 Apr 2022 17:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EC0AC385A9;
	Wed, 27 Apr 2022 17:13:03 +0000 (UTC)
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Cc: clang-built-linux@googlegroups.com,
	will@kernel.org,
	catalin.marinas@arm.com,
	keescook@chromium.org,
	mark.rutland@arm.com,
	nathan@kernel.org,
	Ard Biesheuvel <ardb@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [RFC PATCH 2/2] arm64: kernel: switch to PIE code generation for relocatable kernels
Date: Wed, 27 Apr 2022 19:12:41 +0200
Message-Id: <20220427171241.2426592-3-ardb@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220427171241.2426592-1-ardb@kernel.org>
References: <20220427171241.2426592-1-ardb@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4534; h=from:subject; bh=0zQad1AzUfSHcODYLrfSNabOLPAeMX8RNzogCZtNbtY=; b=owEB7QES/pANAwAKAcNPIjmS2Y8kAcsmYgBiaXmImHHxfcHQw0Gp6ComhPU3xoA64oQsSc9QbO9i oGwpLHGJAbMEAAEKAB0WIQT72WJ8QGnJQhU3VynDTyI5ktmPJAUCYml5iAAKCRDDTyI5ktmPJPbhC/ 9R5hCeZkcm+5EEtGr0stIHqQ68Du8cfsdjjfZwtbXcgNBoFLKZFwGN7kHZQisTOy0x6q2qEBh/SKND GQomgfP582S/Ohi6YDdIM1VZGNgG19SvkesvwKETvDFK7auiISiTjUGuUI+AKAsTyq4cGChSvgC0B/ NGDTkoMP9ixpFZ5CItrKfFx5CxlvseJuAe3qRchGE70uI0AHd3/JZDPVZW0RiiXzr5sLykNMNTa5e5 b25i/Yt5EUxWTXArUPeL2QWU/qP/kMllmjRw8t6faVn8boNvwI3VekeIgaHU3ea6iHCcM25DoTkCjI CZH2qJItBhRkQ1zmbgwcrlB4+fmNw5Jn8fAgI3TJXF6Q+JPhqA+9zUlXCFmAmwPwGrZsPsqfzdHNwf NfAZfuzWn/CsjnU2+AHfAt9JpxIfUVVXSirPeoOmFo0CaZGoU5YTR/87xobnmy5h50VoZ6+RSgCObx 30LxnC42XW728cKqCOVeecpWVZoKx0LNo31RwVjT8dKmc=
X-Developer-Key: i=ardb@kernel.org; a=openpgp; fpr=F43D03328115A198C90016883D200E9CA6329909
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="AD/8r+7A";       spf=pass
 (google.com: domain of ardb@kernel.org designates 139.178.84.217 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

We currently use ordinary, position dependent code generation for the
core kernel, which happens to default to the 'small' code model on both
GCC and Clang. This is the code model that relies on ADRP/ADD or
ADRP/LDR pairs for symbol references, which are PC-relative with a range
of -/+ 4 GiB, and therefore happen to be position independent in
practice.

This means that the fact that we can link the relocatable KASLR kernel
using the -pie linker flag (which generates the runtime relocations and
inserts them into the binary) is somewhat of a coincidence, and not
something which is explicitly supported by the toolchains.

The reason we have not used -fpie for code generation so far (which is
the compiler flag that should be used to generate code that is to be
linked with -pie) is that by default, it generates code based on
assumptions that only hold for shared libraries and PIE executables,
i.e., that gathering all relocatable quantities into a Global Offset
Table (GOT) is desirable because it reduces the CoW footprint, and
because it permits ELF symbol preemption (which lets an executable
override symbols defined in a shared library, in a way that forces the
shared library to update all of its internal references as well).
Ironically, this means we end up with many more absolute references that
all need to be fixed up at boot.

Fortunately, we can convince the compiler to handle this in a way that
is a bit more suitable for freestanding binaries such as the kernel, by
setting the 'hidden' visibility #pragma, which informs the compiler that
symbol preemption or CoW footprint are of no concern to us, and so
PC-relative references that are resolved at link time are perfectly
fine.

So let's enable this #pragma and build with -fpie when building a
relocatable kernel. This also means that all constant data items that
carry statically initialized pointer variables are now emitted into the
.data.rel.ro* sections, so move these into .rodata where they belong.

Code size impact (GCC):

Before:

      text       data        bss      total filename
  16712396   18659064     534556   35906016 vmlinux

After:

      text       data        bss      total filename
  16804400   18612876     534556   35951832 vmlinux

Code size impact (Clang):

Before:

      text       data        bss      total filename
  17194584   13335060     535268   31064912 vmlinux

After:

      text       data        bss      total filename
  17194536   13310032     535268   31039836 vmlinux

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm64/Makefile             | 4 ++++
 arch/arm64/kernel/vmlinux.lds.S | 9 ++++-----
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 2f1de88651e6..94b6c51f5de6 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -18,6 +18,10 @@ ifeq ($(CONFIG_RELOCATABLE), y)
 # with the relocation offsets always being zero.
 LDFLAGS_vmlinux		+= -shared -Bsymbolic -z notext \
 			$(call ld-option, --no-apply-dynamic-relocs)
+
+# Generate position independent code without relying on a Global Offset Table
+KBUILD_CFLAGS_KERNEL   += -fpie -include $(srctree)/include/linux/hidden.h
+
 endif
 
 ifeq ($(CONFIG_ARM64_ERRATUM_843419),y)
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index edaf0faf766f..b1e071ac1acf 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -174,8 +174,6 @@ SECTIONS
 			KEXEC_TEXT
 			TRAMP_TEXT
 			*(.gnu.warning)
-		. = ALIGN(16);
-		*(.got)			/* Global offset table		*/
 	}
 
 	/*
@@ -192,6 +190,8 @@ SECTIONS
 	/* everything from this point to __init_begin will be marked RO NX */
 	RO_DATA(PAGE_SIZE)
 
+	.data.rel.ro : ALIGN(8) { *(.got) *(.data.rel.ro*) }
+
 	HYPERVISOR_DATA_SECTIONS
 
 	idmap_pg_dir = .;
@@ -273,6 +273,8 @@ SECTIONS
 	_sdata = .;
 	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_ALIGN)
 
+	.data.rel : ALIGN(8) { *(.data.rel*) }
+
 	/*
 	 * Data written with the MMU off but read with the MMU on requires
 	 * cache lines to be invalidated, discarding up to a Cache Writeback
@@ -320,9 +322,6 @@ SECTIONS
 		*(.plt) *(.plt.*) *(.iplt) *(.igot .igot.plt)
 	}
 	ASSERT(SIZEOF(.plt) == 0, "Unexpected run-time procedure linkages detected!")
-
-	.data.rel.ro : { *(.data.rel.ro) }
-	ASSERT(SIZEOF(.data.rel.ro) == 0, "Unexpected RELRO detected!")
 }
 
 #include "image-vars.h"
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220427171241.2426592-3-ardb%40kernel.org.
