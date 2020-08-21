Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBFOIQD5AKGQEO2623BA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C03D24E0CA
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:44:23 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id 129sf1957266pfv.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:44:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039062; cv=pass;
        d=google.com; s=arc-20160816;
        b=hzfU3bJHMpkh/rXGOyUohKhgt5kKXz4d0lD5bVv5tfkIe++rtRTp4G+y63dMiOWQwu
         ZIiWQ1huG9zFgBAWICN0vyqj4kcp760UE0dnnTyPSByGkci2Af1wmu8EGyd7YVRbAAM4
         fb23VtGqwIujAiYcGdncvzQca9jr9iuktI0VsgXFPEW7Mw+iyakPSQfoBPA9ybL39qSZ
         mCRK2NDr05UQIUJm2xdIq5QGwpXrwLZPszDSNAkrdl//E5AeC1t1L7IlNi9ZFK80SeDI
         Df5BYNHU79vD5SVUIIzcWbGiDn7+QxMt/7U8CRDq1umHrQSjAHgy4y8qBoSidFEAk6HD
         GL0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Y+V++0XT/j0t9gxZ6cQhwDg644T6XLvSAtNye8sXtvo=;
        b=XOT3DxQ5J37QjMFSy+VupzwiB4WIV9rEUyjW/04sZn5/jGP3XLL9G04uoTY1f7dT25
         V5YrMHIF7XtjjAc+ZWZIX4ZstOs3B0doLCSa9CIYShOrw5asjPHDRhPPCIHehMGJfCWw
         Wq5oxghKzfNnid4lFVdGxsxI61+/nF26GUBWAaTcQW0FSyoAcozWeBNa/65blApCQNqT
         uhY8WF/0Hz0O3Dl9ypMEhTUTnzUUOipZ+aAEijJ9h6KTzWff8htxorJ3V63u5Fg/rF1C
         j+JWU0zgCUNMIRE1KT7NGislQnnw+0LTco1wYkWMlcu1ufqMsLf3uJpQGjvTZoEMa9Ws
         NNbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kh8rUgVl;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y+V++0XT/j0t9gxZ6cQhwDg644T6XLvSAtNye8sXtvo=;
        b=Sx5NNBfr3DCXpTC7G3bxIcYh1Szk5RIOal5rfQrbddgxKyWI4xZ5P8JoxsYZFQFTE7
         BhHntBa4j49fO1jrKRbPn8iUat7uuI7GhDsuw8sVH3Py96q4wV6uj5pxW+Gqy4JsipSq
         wMawn1iKkQDVxAgFLxJTEnU3ltPXUPM/J3xao2YTw/KtiH7AcdCpvxz6m3dq13WQQiwT
         LLW5olFIyx20fpvAollPufhMgkJNeWflZgUGXl0oefjlUm9+PnNOO3upL9kLoh3YTMgl
         OIvtt/cCgGoPuGx9pndTIN6QRK2JpBlgFNOWCY+lER+UQT1JrB+UVdoYxxGzW894hw52
         BO5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y+V++0XT/j0t9gxZ6cQhwDg644T6XLvSAtNye8sXtvo=;
        b=dxzrLtHUkCHqD8xgoakqrGJq+7gTlW/ukmcDpu1O6sSOTPsnq7UbdGaf87wJyFPNvi
         JF1HeAJGraZH6+hqSjYtkWYi1+EDofEX6dF+SMuyoXnC0FNGPZQEok91HS0hdYKqQ2NX
         G1EpQIPuN0Ph+N+wV7VCIpyquhP4PECM35LhKc2H2NgHaPi3adt1iH8wm5HC6IXId3yG
         YeFHXEpTkVAXvqGrtUgN5zfnd/QTJ3X0MkrPvJ+8CJxcGMfokChqck3WKS4T+rZ7SBiC
         Y+LPH73Z98BXPedhV339mPRjfVPlJCogXz5xOo0c31e03U8OHDujKRPXEyFzOwaX5xMU
         J9uA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xJg4bNLyp55hZ7Y105zWDZH78kFAaWYjBYwgWJrOrLKqu7khr
	KbOCPmo9owJh17hAOcgUgeY=
X-Google-Smtp-Source: ABdhPJzZbalHeJRLOCtPOyB2yKvkZAz/sbDQuj3nbv/O2T1xWrI5lp6SslJvIdzUD6lQHSIq81pwBQ==
X-Received: by 2002:a17:902:a503:: with SMTP id s3mr3563878plq.190.1598039061937;
        Fri, 21 Aug 2020 12:44:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:304:: with SMTP id 4ls996594pgd.8.gmail; Fri, 21 Aug
 2020 12:44:21 -0700 (PDT)
X-Received: by 2002:aa7:96e5:: with SMTP id i5mr3779561pfq.108.1598039061467;
        Fri, 21 Aug 2020 12:44:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039061; cv=none;
        d=google.com; s=arc-20160816;
        b=rF2VlTpRwaVHyneKQOXc6hVKHC/ciZC+SC/WQESvHZYTpwcuXIC3x6Dzhp+wLKkSLs
         AGXkezeBLmBoKZ/2DVqf4mLpTfxkM/dbTKGvVQw5dnGaCxvjQki+v9fQjX6VWHzJ988r
         aJp4Dqkuk9oPxB0agJlrykl96KN5QReLmLCtEH3P5eQJ1trLb9CCFRIaDUBU8DJbzviF
         Nl7ir8YKwZzPkUFZihEUEqqCG0rAtXazhWQMuVYmZuG0B+VC1Tj8D0R2GMfwXqtZY2zL
         ymVWP/bFXhLYcVjDvQDRp3ZDmJ9wEV2XOXL9ZaiFI/wPfItpRPcPtNh5I7cqx0GP6lc+
         2Lyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=yvp4o2qxjsx/g4fp5+EngLXg9VgoAsFpnYqBwOLxFH4=;
        b=hRGuc4xZehcJmDDdMWkJZxycihOu62SmqXPUqYRpOx8cVLUzcNa8fhBq4Z8uL4cgvo
         r29i1Bw7A5wCWdUamcUT0BBN5ShvYOf36toAkPoR0sWDEIp+GH4KR3tiVEK5DGl1L5v4
         DGnre/estmzhKbsdOeu58QWALI+AGYpfuj07a12Q7zi9cziNX15VkrDTW/v7SoaTdn60
         5K32k1LrjLyQ+vjcM7ZtT3uS5ZNYhhCDfwcilHcKaCYC/jxVeVAU4rYC/t/npBqXOgEi
         Kyj5gzWacjLdxw+9r3cHLGceAWwiJaYgAGsGzoub4fJV20UG7hJdoch2SGz9dscSoe/T
         TGCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kh8rUgVl;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id kr1si218250pjb.2.2020.08.21.12.44.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:44:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id o13so1485538pgf.0
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:44:21 -0700 (PDT)
X-Received: by 2002:a62:3303:: with SMTP id z3mr3826111pfz.252.1598039060999;
        Fri, 21 Aug 2020 12:44:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p11sm3129748pgh.80.2020.08.21.12.44.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:44:19 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 04/29] vmlinux.lds.h: Split ELF_DETAILS from STABS_DEBUG
Date: Fri, 21 Aug 2020 12:42:45 -0700
Message-Id: <20200821194310.3089815-5-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=kh8rUgVl;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

The .comment section doesn't belong in STABS_DEBUG. Split it out into a
new macro named ELF_DETAILS. This will gain other non-debug sections
that need to be accounted for when linking with --orphan-handling=warn.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/alpha/kernel/vmlinux.lds.S           | 1 +
 arch/arc/kernel/vmlinux.lds.S             | 1 +
 arch/arm/kernel/vmlinux-xip.lds.S         | 1 +
 arch/arm/kernel/vmlinux.lds.S             | 1 +
 arch/arm64/kernel/vmlinux.lds.S           | 1 +
 arch/csky/kernel/vmlinux.lds.S            | 1 +
 arch/hexagon/kernel/vmlinux.lds.S         | 1 +
 arch/ia64/kernel/vmlinux.lds.S            | 1 +
 arch/mips/kernel/vmlinux.lds.S            | 1 +
 arch/nds32/kernel/vmlinux.lds.S           | 1 +
 arch/nios2/kernel/vmlinux.lds.S           | 1 +
 arch/openrisc/kernel/vmlinux.lds.S        | 1 +
 arch/parisc/boot/compressed/vmlinux.lds.S | 1 +
 arch/parisc/kernel/vmlinux.lds.S          | 1 +
 arch/powerpc/kernel/vmlinux.lds.S         | 2 +-
 arch/riscv/kernel/vmlinux.lds.S           | 1 +
 arch/s390/kernel/vmlinux.lds.S            | 1 +
 arch/sh/kernel/vmlinux.lds.S              | 1 +
 arch/sparc/kernel/vmlinux.lds.S           | 1 +
 arch/um/kernel/dyn.lds.S                  | 2 +-
 arch/um/kernel/uml.lds.S                  | 2 +-
 arch/x86/boot/compressed/vmlinux.lds.S    | 2 ++
 arch/x86/kernel/vmlinux.lds.S             | 1 +
 include/asm-generic/vmlinux.lds.h         | 8 ++++++--
 24 files changed, 30 insertions(+), 5 deletions(-)

diff --git a/arch/alpha/kernel/vmlinux.lds.S b/arch/alpha/kernel/vmlinux.lds.S
index bc6f727278fd..5b78d640725d 100644
--- a/arch/alpha/kernel/vmlinux.lds.S
+++ b/arch/alpha/kernel/vmlinux.lds.S
@@ -72,6 +72,7 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	DISCARDS
 }
diff --git a/arch/arc/kernel/vmlinux.lds.S b/arch/arc/kernel/vmlinux.lds.S
index 54139a6f469b..33ce59d91461 100644
--- a/arch/arc/kernel/vmlinux.lds.S
+++ b/arch/arc/kernel/vmlinux.lds.S
@@ -122,6 +122,7 @@ SECTIONS
 	_end = . ;
 
 	STABS_DEBUG
+	ELF_DETAILS
 	DISCARDS
 
 	.arcextmap 0 : {
diff --git a/arch/arm/kernel/vmlinux-xip.lds.S b/arch/arm/kernel/vmlinux-xip.lds.S
index 6d2be994ae58..3d4e88f08196 100644
--- a/arch/arm/kernel/vmlinux-xip.lds.S
+++ b/arch/arm/kernel/vmlinux-xip.lds.S
@@ -152,6 +152,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
+	ELF_DETAILS
 }
 
 /*
diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
index 7f24bc08403e..5592f14b7e35 100644
--- a/arch/arm/kernel/vmlinux.lds.S
+++ b/arch/arm/kernel/vmlinux.lds.S
@@ -151,6 +151,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
+	ELF_DETAILS
 }
 
 #ifdef CONFIG_STRICT_KERNEL_RWX
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index ec8e894684a7..13fc2ec46aae 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -241,6 +241,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
+	ELF_DETAILS
 
 	HEAD_SYMBOLS
 }
diff --git a/arch/csky/kernel/vmlinux.lds.S b/arch/csky/kernel/vmlinux.lds.S
index f05b413df328..f03033e17c29 100644
--- a/arch/csky/kernel/vmlinux.lds.S
+++ b/arch/csky/kernel/vmlinux.lds.S
@@ -109,6 +109,7 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	DISCARDS
 }
diff --git a/arch/hexagon/kernel/vmlinux.lds.S b/arch/hexagon/kernel/vmlinux.lds.S
index 0ca2471ddb9f..35b18e55eae8 100644
--- a/arch/hexagon/kernel/vmlinux.lds.S
+++ b/arch/hexagon/kernel/vmlinux.lds.S
@@ -67,5 +67,6 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 }
diff --git a/arch/ia64/kernel/vmlinux.lds.S b/arch/ia64/kernel/vmlinux.lds.S
index d259690eb91a..9b265783be6a 100644
--- a/arch/ia64/kernel/vmlinux.lds.S
+++ b/arch/ia64/kernel/vmlinux.lds.S
@@ -218,6 +218,7 @@ SECTIONS {
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	/* Default discards */
 	DISCARDS
diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index f185a85a27c1..5e97e9d02f98 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -202,6 +202,7 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	/* These must appear regardless of  .  */
 	.gptab.sdata : {
diff --git a/arch/nds32/kernel/vmlinux.lds.S b/arch/nds32/kernel/vmlinux.lds.S
index 7a6c1cefe3fe..6a91b965fb1e 100644
--- a/arch/nds32/kernel/vmlinux.lds.S
+++ b/arch/nds32/kernel/vmlinux.lds.S
@@ -64,6 +64,7 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	DISCARDS
 }
diff --git a/arch/nios2/kernel/vmlinux.lds.S b/arch/nios2/kernel/vmlinux.lds.S
index c55a7cfa1075..126e114744cb 100644
--- a/arch/nios2/kernel/vmlinux.lds.S
+++ b/arch/nios2/kernel/vmlinux.lds.S
@@ -58,6 +58,7 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	DISCARDS
 }
diff --git a/arch/openrisc/kernel/vmlinux.lds.S b/arch/openrisc/kernel/vmlinux.lds.S
index 60449fd7f16f..d287dbb84d0f 100644
--- a/arch/openrisc/kernel/vmlinux.lds.S
+++ b/arch/openrisc/kernel/vmlinux.lds.S
@@ -115,6 +115,7 @@ SECTIONS
 	/* Throw in the debugging sections */
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
         /* Sections to be discarded -- must be last */
 	DISCARDS
diff --git a/arch/parisc/boot/compressed/vmlinux.lds.S b/arch/parisc/boot/compressed/vmlinux.lds.S
index 2ac3a643f2eb..ab7b43990857 100644
--- a/arch/parisc/boot/compressed/vmlinux.lds.S
+++ b/arch/parisc/boot/compressed/vmlinux.lds.S
@@ -84,6 +84,7 @@ SECTIONS
 	}
 
 	STABS_DEBUG
+	ELF_DETAILS
 	.note 0 : { *(.note) }
 
 	/* Sections to be discarded */
diff --git a/arch/parisc/kernel/vmlinux.lds.S b/arch/parisc/kernel/vmlinux.lds.S
index 53e29d88f99c..2769eb991f58 100644
--- a/arch/parisc/kernel/vmlinux.lds.S
+++ b/arch/parisc/kernel/vmlinux.lds.S
@@ -164,6 +164,7 @@ SECTIONS
 	_end = . ;
 
 	STABS_DEBUG
+	ELF_DETAILS
 	.note 0 : { *(.note) }
 
 	/* Sections to be discarded */
diff --git a/arch/powerpc/kernel/vmlinux.lds.S b/arch/powerpc/kernel/vmlinux.lds.S
index 326e113d2e45..e0548b4950de 100644
--- a/arch/powerpc/kernel/vmlinux.lds.S
+++ b/arch/powerpc/kernel/vmlinux.lds.S
@@ -360,8 +360,8 @@ SECTIONS
 	PROVIDE32 (end = .);
 
 	STABS_DEBUG
-
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	DISCARDS
 	/DISCARD/ : {
diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
index f3586e31ed1e..6f3af7bbc49d 100644
--- a/arch/riscv/kernel/vmlinux.lds.S
+++ b/arch/riscv/kernel/vmlinux.lds.S
@@ -97,6 +97,7 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	DISCARDS
 }
diff --git a/arch/s390/kernel/vmlinux.lds.S b/arch/s390/kernel/vmlinux.lds.S
index 37695499717d..177ccfbda40a 100644
--- a/arch/s390/kernel/vmlinux.lds.S
+++ b/arch/s390/kernel/vmlinux.lds.S
@@ -181,6 +181,7 @@ SECTIONS
 	/* Debugging sections.	*/
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	/* Sections to be discarded */
 	DISCARDS
diff --git a/arch/sh/kernel/vmlinux.lds.S b/arch/sh/kernel/vmlinux.lds.S
index bde7a6c01aaf..3161b9ccd2a5 100644
--- a/arch/sh/kernel/vmlinux.lds.S
+++ b/arch/sh/kernel/vmlinux.lds.S
@@ -76,6 +76,7 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	DISCARDS
 }
diff --git a/arch/sparc/kernel/vmlinux.lds.S b/arch/sparc/kernel/vmlinux.lds.S
index f99e99e58075..d55ae65a07ad 100644
--- a/arch/sparc/kernel/vmlinux.lds.S
+++ b/arch/sparc/kernel/vmlinux.lds.S
@@ -187,6 +187,7 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	DISCARDS
 }
diff --git a/arch/um/kernel/dyn.lds.S b/arch/um/kernel/dyn.lds.S
index f5001481010c..dacbfabf66d8 100644
--- a/arch/um/kernel/dyn.lds.S
+++ b/arch/um/kernel/dyn.lds.S
@@ -164,8 +164,8 @@ SECTIONS
   PROVIDE (end = .);
 
   STABS_DEBUG
-
   DWARF_DEBUG
+  ELF_DETAILS
 
   DISCARDS
 }
diff --git a/arch/um/kernel/uml.lds.S b/arch/um/kernel/uml.lds.S
index 3b6dab3d4501..45d957d7004c 100644
--- a/arch/um/kernel/uml.lds.S
+++ b/arch/um/kernel/uml.lds.S
@@ -108,8 +108,8 @@ SECTIONS
   PROVIDE (end = .);
 
   STABS_DEBUG
-
   DWARF_DEBUG
+  ELF_DETAILS
 
   DISCARDS
 }
diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index 29df99b6cc64..3c2ee9a5bf43 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -82,6 +82,8 @@ SECTIONS
 	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
 	_end = .;
 
+	ELF_DETAILS
+
 	DISCARDS
 }
 
diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
index 9a03e5b23135..0cc035cb15f1 100644
--- a/arch/x86/kernel/vmlinux.lds.S
+++ b/arch/x86/kernel/vmlinux.lds.S
@@ -411,6 +411,7 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	DISCARDS
 }
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 6b89a03e636e..cadcbc3cdabd 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -34,6 +34,7 @@
  *
  *	STABS_DEBUG
  *	DWARF_DEBUG
+ *	ELF_DETAILS
  *
  *	DISCARDS		// must be the last
  * }
@@ -811,14 +812,17 @@
 		.debug_macro	0 : { *(.debug_macro) }			\
 		.debug_addr	0 : { *(.debug_addr) }
 
-		/* Stabs debugging sections.  */
+/* Stabs debugging sections. */
 #define STABS_DEBUG							\
 		.stab 0 : { *(.stab) }					\
 		.stabstr 0 : { *(.stabstr) }				\
 		.stab.excl 0 : { *(.stab.excl) }			\
 		.stab.exclstr 0 : { *(.stab.exclstr) }			\
 		.stab.index 0 : { *(.stab.index) }			\
-		.stab.indexstr 0 : { *(.stab.indexstr) }		\
+		.stab.indexstr 0 : { *(.stab.indexstr) }
+
+/* Required sections not related to debugging. */
+#define ELF_DETAILS							\
 		.comment 0 : { *(.comment) }
 
 #ifdef CONFIG_GENERIC_BUG
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-5-keescook%40chromium.org.
