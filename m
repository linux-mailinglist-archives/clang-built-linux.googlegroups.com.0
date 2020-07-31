Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB66ISL4QKGQEMOXA54I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C2E234DF2
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:44 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id c202sf16036612qkg.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236923; cv=pass;
        d=google.com; s=arc-20160816;
        b=QfQ3CVj7x5pjWgfVhcCiUMzCZ9Mzwgt+LtsljHRm+LlJYWgPndweYwXdkmwCo4wcyJ
         CSB3JYwFnB7g8l/k3DfleLaOtDf/H70sBCG8vIwN6NxBL9oSIzcne6my9sCJYWNtrVvk
         0UrQ0eSLv42ruHp8bftJLdnF8I9HN+ZkrrRYDBZ8tDDzH//IcGGymRP2C9mU7WFOA4wi
         MyFVUjqForcFVZj6/T8STb+v6J7QIM5izzy1yruklTp5wmVa4ci9oJHpGuVrQuTh68HL
         E9ivedE/GnlKEhZh04KYt5gCVae4WiHS/HBC/TGotCB9LhbU8Y4Wzor5IOxp1vsoneQb
         S93g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nCK0Ntw0bmHXLzliPmPtUzc/MB7EXo6eD67ySzbLD0w=;
        b=GlUGKKpegTdzDZBuKkBf2VDZ1TlY3H+Cy+v3oMROiVueZohS7Je7gk6jWCEZ+P3uUp
         nz5h9xpTXZ6y2dXGbbCrcMfytH7rwZ/uazgGZW2d+9DvHl7IdhoQ7d3oRevS2eK/Z1Pp
         7GmSKJJO4I/n6ppTwzQnSj2C0lkVfY/+pXeqgsGTyyVsvLnrsKL/iaG0IUml0q2TA2rs
         u/yiP5KzNYj4PJb6nv3HSiCzdxctAaQq0rssMloGuBQ+5qmVKGRd04lLPtcXhTGiqy5K
         74JJ3E2dcmqjEcSmq6WqVplhYQBW45AONz527jACtne+oLgNySM2ekdie8kSOMDwrHAj
         auWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=A63cd838;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nCK0Ntw0bmHXLzliPmPtUzc/MB7EXo6eD67ySzbLD0w=;
        b=FKqdn28tjStIVWnUvqrVtAlscIJNOia4qYgo5CalQxvs3HBTdc0XYXLbKe1CwUp5fV
         2B6zMDQNIyKC1pn7q3rZAeeIzSzOsAb36By4vUesXYfhpd6hq22CqYEijwHs3V7YVYYV
         va8X8qjk8UYXWxeRWmXuesrqRcnRZOFT0xdz44ma7io7AGvN0G+MU4MyLBqU8+7t7oqY
         Rew/7LwHizNK5RZcsUqtzwaUNC/BWZvp5d86U50r2/hxhdUWN6vONosv8gZS0TN2xhkn
         wqXLi0ld0TDWWXFclh2MsGXyIWYEXIlWwuoA3sB5NRmjVSYBz/cTXeLZwpRi8DBPUXRR
         Dmlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nCK0Ntw0bmHXLzliPmPtUzc/MB7EXo6eD67ySzbLD0w=;
        b=VAv6UOaB6lsDqudb1Za2Pa9trNWO/Hk2QBJFOWkCLH81yUafPu2zn/xIXvf920vsjx
         DO/BYuK8S3+rofvekHFvWUpgu66XU9W28CfjsDmmWQTtounLZ2fowkKXs239eah8+C++
         bkJug271Dd5+CeuPZOaDYF3l0kNlgT7X9NXgn2I/4viME6jXbTCWEziWAac2dvanIFH9
         NeKzNnaSeOvTCDlK2biDE9f1g6Ah8kzsoKRUGhM01XZuaLMUTLdKsmVJNqSyU6uUL2B6
         5yt70K1MoaQHd903omO/XemfocyR5gWpPFasGskz280C5hAJomgF1tRvS5/PTV3ewtuy
         vJ1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532YDdTmuuwK0Tki0fAGMuizP6qgT8KPAjVh4D6j13CDC/4w783q
	Cj9qKZPAaHSPd6MhlovM5cU=
X-Google-Smtp-Source: ABdhPJxHQfZWXZr5KNmqNaj24WVCAPAncnipo+5QW+NIynEI8ywjB/0INSpuI9w5F/j25g6XYPMT3w==
X-Received: by 2002:a0c:ec02:: with SMTP id y2mr6379857qvo.140.1596236923549;
        Fri, 31 Jul 2020 16:08:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:eb0d:: with SMTP id b13ls4915313qkg.7.gmail; Fri, 31 Jul
 2020 16:08:43 -0700 (PDT)
X-Received: by 2002:a37:aacb:: with SMTP id t194mr6537964qke.317.1596236923122;
        Fri, 31 Jul 2020 16:08:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236923; cv=none;
        d=google.com; s=arc-20160816;
        b=P3OvDSTxvJlmXHr2zCTQkufQH1BfN+tzBBNnEzHUKMmDnklHTMWxUjyy5gnjCpJUmK
         I+lF3hz26WTMZigfT4WDa31vG+/UEB+ILReQdP/SPF4l6QjsPzD5NeF+sWIuXh2dUBXz
         s9xyow2XNDBRkvKJU0E/O+06HgTybCgeWe+VJnQJSeHXwwjAwtVez4sfLpZ9vRZt/r5n
         H/6FQkAuDEnhtJjeh7GP2G8ic5dAbHpkq9f1441PP/ivqtsib1wVrxBH2F07DwLVNB54
         +L+atiN9EwKnyCRGgWIKR6z5zznGv0oKeijre1Z2bCLJroNkwNlWowmPc/iJYW5euh20
         rQXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=o+ddCiDhuNFGc5utBQHqB8G42WH9oIwzI7MN1raBTAA=;
        b=BOo59tCRcUgqsyP0P87aC6aTWd7h9hrrabQeVqDhjuTy/uGPgNDHWu6LDpvmxMwCom
         Jj0augwiWgFS+uPcoK48qlcwXjyrlvIjnvmSQiZYQAH2em6ijusW7ANBs8togAaYVL/I
         ZCUzAoKHioNCYq9ihUxstKJ14flmpbobVBIfgj1ij1lSFk7iqscJmBJfv94kG4+1tRAx
         NDQVI5lLGOSqSXui0wJnzugTZIkZRn+IAJbrAlN9dIsEOmt+9GiW39nMVlVyayj2E3CP
         fo/l5P0hQWLyMYi/KWq1i+x6aHjzQeKnV1Q02cYxOoDcX5ZgUQJ1XAtSTgukTUZR/+77
         igEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=A63cd838;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id i9si518675qkg.0.2020.07.31.16.08.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id a9so8077432pjd.3
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:43 -0700 (PDT)
X-Received: by 2002:a17:90b:255:: with SMTP id fz21mr2155161pjb.50.1596236922268;
        Fri, 31 Jul 2020 16:08:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 3sm3730734pjo.40.2020.07.31.16.08.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:36 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
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
Subject: [PATCH v5 11/36] vmlinux.lds.h: Split ELF_DETAILS from STABS_DEBUG
Date: Fri, 31 Jul 2020 16:07:55 -0700
Message-Id: <20200731230820.1742553-12-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=A63cd838;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043
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
 arch/unicore32/kernel/vmlinux.lds.S       | 1 +
 arch/x86/boot/compressed/vmlinux.lds.S    | 2 ++
 arch/x86/kernel/vmlinux.lds.S             | 1 +
 include/asm-generic/vmlinux.lds.h         | 8 ++++++--
 25 files changed, 31 insertions(+), 5 deletions(-)

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
index 5423ffe0a987..df2916b25ee0 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -242,6 +242,7 @@ SECTIONS
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
index e6f8016b366a..00a325289a26 100644
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
diff --git a/arch/unicore32/kernel/vmlinux.lds.S b/arch/unicore32/kernel/vmlinux.lds.S
index 6fb320b337ef..22eb642c7280 100644
--- a/arch/unicore32/kernel/vmlinux.lds.S
+++ b/arch/unicore32/kernel/vmlinux.lds.S
@@ -54,6 +54,7 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	DISCARDS		/* Exit code and data */
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
index f236cf0fa779..22c9a68c02ae 100644
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
@@ -787,14 +788,17 @@
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-12-keescook%40chromium.org.
