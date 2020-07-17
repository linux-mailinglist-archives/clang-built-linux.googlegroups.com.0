Return-Path: <clang-built-linux+bncBCIO53XE7YHBB7UOZD4AKGQEWYT2IEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5281722450E
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 22:18:07 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id r9sf7245833ioa.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 13:18:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595017086; cv=pass;
        d=google.com; s=arc-20160816;
        b=zIEgy6Axv16YfCaGVB49OWyIM18jEoAbfZrj+WskmP3lsRxgimC74C+Z/t89/sfmSd
         DWkTddsB7js37heVW4JebsTM5L11HwsDlZw6V3o9k7wmBK4WRf3kqkl0hnm47HdaR3Bw
         gjlR1fqAxp8AQ98lFnMNiFuq91n9R4m51bHny49JiFNQJqmTX3YazmfbCri3sg3iMjut
         VQQdvhN/HnNEeT+eVkW/YZRpccoe8J96di4TYmreJjAFbh2Px30dXv3j/gF+jn2AXAd4
         A71axEou54ZWE4lY1xW45K/oT5Q5xggWoC+KeQ2mUxYhuu/+mkaFSXW14klVUy95AwDm
         8lhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=SSH6qSirELvssEKOGqB+GwVvQw/8QzeteDRsIqx5ZV0=;
        b=A7tNuoV6NAxHaDcY+PNimpiwD+U+gr9HFXhK0ZvGDGxWRmsUqgYIFvlSdoT4kapn7n
         8cHYDkDAKQrXrid3nUsYYtlTF8KMEN3eyeKmzMBWan9eLYej64KiRb1IwNB2p8AJmzGW
         X2ztqU4qpoJkQXK7rlj2VTmlmN/DusEp+plL758tlqjoBnThym98tvfKq3d+0nyLcv7g
         LM6+S42iRIkj0KFYfjHNgWNWBOsI2Y9Dep4t3didmWs0akUjYShFroTj2NoXsoWp4HnN
         ZGJtwSOQDyDKkbenYGVRLGT/DkCOsHHUAAj1b1IjCHyl5DO0aeWxtTs6ntV6/SJYPj5l
         ARNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SSH6qSirELvssEKOGqB+GwVvQw/8QzeteDRsIqx5ZV0=;
        b=LvQF/N7sATJVRK9A8/EjsifZag/f6CGcJ5TFkn/bQscYHnl3Mr2izsO6nrnBDWwNdm
         WX3pG3RBr4yc9H01bJvHBSevSx16iao5iTCcojhxQGUdFrgKDAUrkUgAFmK1QnPbxcPF
         t+UgvxhsaG0kU6C6U1xnljfFAceldrwF7VZROEHKrPXYVIlohrhQbYRZ4xjhAdcufP6S
         g1ngJGY33hHuiahvKZgzbnlb4Ph7pzFUP5jo6IM+/F4fgtkKY7YXu+iW+qFoa/Sn0YTG
         xhVo9LxX7sJJMGuUxZwnHESCPvZR53yKxeD2SP+FRwLiLlwjVAuUGIueySiwIDI15awN
         B4hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SSH6qSirELvssEKOGqB+GwVvQw/8QzeteDRsIqx5ZV0=;
        b=XvQi0APkxcjfX1Wgi7YPXGqEdzWChnbU/koNbZzPD87HLJlNu7pIpcPcLJb/8IHXBa
         Fh2kGMLxfyWUzs9XbJwwvpWzfCT9B3cfdoE0kOO7QEe1vpvqIPfJWD3UyYBEQxJGD1f7
         4Ky+YXFx1byQB9QL4OS61inRep8/H0e7lvygGXd1Zvz9tUIKrjxc06dhn9E6Kl9C9iE9
         HNI9SPBT1b1dJmlD0uWRb8m8jy3wMPluCTVopY5pHZuU/+ZFnYnv1HtVZdw1mOX/OVli
         fvoX+e3Cf0qrc0Bync2CASEv40Zbz6b3qG9uMfnXW/1QFqo85KOBl/oakJIz3UgJURJW
         e5fw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533R5m9xRL9gcbTwiEypY1fzD0DN5kDlMlg6gafoAS9ivtPMIHPQ
	hyv4/nyvgxk+DIko3BeOC2k=
X-Google-Smtp-Source: ABdhPJyNW3MH11Qjp2WPKSexXARdZxNr9uH3Af0Ok0ino1s3DkCp2Os8AfWEjR/eCq8/QsFzeyzBuw==
X-Received: by 2002:a05:6602:2c83:: with SMTP id i3mr11191630iow.144.1595017086137;
        Fri, 17 Jul 2020 13:18:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:de07:: with SMTP id e7ls1894827iok.5.gmail; Fri, 17 Jul
 2020 13:18:05 -0700 (PDT)
X-Received: by 2002:a6b:5c0a:: with SMTP id z10mr11307480ioh.131.1595017085772;
        Fri, 17 Jul 2020 13:18:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595017085; cv=none;
        d=google.com; s=arc-20160816;
        b=YkGQ2QbX+ed/GnLHfs6qnX3tITu5WsXSKjOizDvkIZo578mrSuZuL0ZLzM2uY44LTp
         XpD4/ux/TtlQc2zhwcV6pOhCfKYvvl0OooK00KWorUgB1dU1WkFqKunwQsfF73CXDXmh
         0ISTipkaY9pDHT6tUsPhhPlsux6djax4lNVMyYT2jMZqDkImlM+EHVIKDKpFHLJ/6V3G
         dXlRCe/K5URnJ0sEqLbf46CmqoACWrgtPiiQOfBg5Zk2ZXftBrApX9BKkqJsEsQiebXH
         qSfm8hIgooVXJN0h5npOcDQdA8a9ULw6GqJSd6irs6MepDn0XGde9ImMz8u7GZeHCb2+
         N9tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=po84J/oWM/Mk4bSxLHCPaPfI2tYpz1EeKchAg5NX+Rc=;
        b=IDHB2exuzHgpfDIY9FS/GQMjDFLRshzZkmdEp6OY8aRVTj2E9fIjpM4ESvo1rhorWk
         Rj2pAWemw2AarH8F/0oKIkb2ZthsujMYCW5bz9r+AHZXyiO+ZgMcMWkXwCurjTkl8Hvl
         YajPcRUfKN6bgACsVz1sn4ELWGpH5hOESgQ4YazxHIat3qzSsIdDN2x3PuhVh8LHkbow
         rt1MMy5K0DuuxbRgiph9dQ5DDqiF2Jz6bwz4ra337zqmqhWuoNcW5JvYACUiI5oT6ak1
         hkro3A2F1PGkjjn7JwnTVHktOUTZDxDpe9KP9LufnaLsVqm6Kh8qOzfWYfckekgF/d3W
         ApwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com. [209.85.160.195])
        by gmr-mx.google.com with ESMTPS id k8si471765ios.2.2020.07.17.13.18.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2020 13:18:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) client-ip=209.85.160.195;
Received: by mail-qt1-f195.google.com with SMTP id i3so8581714qtq.13
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jul 2020 13:18:05 -0700 (PDT)
X-Received: by 2002:ac8:4f13:: with SMTP id b19mr12537727qte.146.1595017085423;
        Fri, 17 Jul 2020 13:18:05 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id a28sm9509977qko.45.2020.07.17.13.18.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2020 13:18:05 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH-next v5 2/7] x86/boot/compressed: Force hidden visibility for all symbol references
Date: Fri, 17 Jul 2020 16:17:56 -0400
Message-Id: <20200717201801.3661843-3-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
References: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

From: Ard Biesheuvel <ardb@kernel.org>

Eliminate all GOT entries in the decompressor binary, by forcing hidden
visibility for all symbol references, which informs the compiler that
such references will be resolved at link time without the need for
allocating GOT entries.

To ensure that no GOT entries will creep back in, add an assertion to
the decompressor linker script that will fire if the .got section has
a non-zero size.

[Arvind: move hidden.h to include/linux instead of making a copy]

Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Acked-by: Arvind Sankar <nivedita@alum.mit.edu>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
From: Ard Biesheuvel <ardb@kernel.org>
Link: https://lore.kernel.org/r/20200523120021.34996-3-ardb@kernel.org
---
 arch/x86/boot/compressed/Makefile      |  1 +
 arch/x86/boot/compressed/vmlinux.lds.S |  1 +
 drivers/firmware/efi/libstub/Makefile  |  2 +-
 drivers/firmware/efi/libstub/hidden.h  |  6 ------
 include/linux/hidden.h                 | 19 +++++++++++++++++++
 5 files changed, 22 insertions(+), 7 deletions(-)
 delete mode 100644 drivers/firmware/efi/libstub/hidden.h
 create mode 100644 include/linux/hidden.h

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index b7beabecef8a..b6d7caaaef9e 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -42,6 +42,7 @@ KBUILD_CFLAGS += $(call cc-disable-warning, gnu)
 KBUILD_CFLAGS += -Wno-pointer-sign
 KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
 KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
+KBUILD_CFLAGS += -include $(srctree)/include/linux/hidden.h
 
 KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
 GCOV_PROFILE := n
diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index b17d218ccdf9..4bcc943842ab 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -81,6 +81,7 @@ SECTIONS
 	DISCARDS
 }
 
+ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
 #ifdef CONFIG_X86_64
 ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
 #else
diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 2a156f7fec3b..8b350e5a65bc 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -27,7 +27,7 @@ cflags-$(CONFIG_ARM)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 cflags-$(CONFIG_EFI_GENERIC_STUB) += -I$(srctree)/scripts/dtc/libfdt
 
 KBUILD_CFLAGS			:= $(cflags-y) -Os -DDISABLE_BRANCH_PROFILING \
-				   -include $(srctree)/drivers/firmware/efi/libstub/hidden.h \
+				   -include $(srctree)/include/linux/hidden.h \
 				   -D__NO_FORTIFY \
 				   -ffreestanding \
 				   -fno-stack-protector \
diff --git a/drivers/firmware/efi/libstub/hidden.h b/drivers/firmware/efi/libstub/hidden.h
deleted file mode 100644
index 3493b041f419..000000000000
--- a/drivers/firmware/efi/libstub/hidden.h
+++ /dev/null
@@ -1,6 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * To prevent the compiler from emitting GOT-indirected (and thus absolute)
- * references to any global symbols, override their visibility as 'hidden'
- */
-#pragma GCC visibility push(hidden)
diff --git a/include/linux/hidden.h b/include/linux/hidden.h
new file mode 100644
index 000000000000..49a17b6b5962
--- /dev/null
+++ b/include/linux/hidden.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * When building position independent code with GCC using the -fPIC option,
+ * (or even the -fPIE one on older versions), it will assume that we are
+ * building a dynamic object (either a shared library or an executable) that
+ * may have symbol references that can only be resolved at load time. For a
+ * variety of reasons (ELF symbol preemption, the CoW footprint of the section
+ * that is modified by the loader), this results in all references to symbols
+ * with external linkage to go via entries in the Global Offset Table (GOT),
+ * which carries absolute addresses which need to be fixed up when the
+ * executable image is loaded at an offset which is different from its link
+ * time offset.
+ *
+ * Fortunately, there is a way to inform the compiler that such symbol
+ * references will be satisfied at link time rather than at load time, by
+ * giving them 'hidden' visibility.
+ */
+
+#pragma GCC visibility push(hidden)
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200717201801.3661843-3-nivedita%40alum.mit.edu.
