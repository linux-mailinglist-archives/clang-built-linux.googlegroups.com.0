Return-Path: <clang-built-linux+bncBCIO53XE7YHBBMNVWT4AKGQEVDXXZEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A4E21E5C3
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 04:38:42 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id 204sf12195056qki.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 19:38:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594694322; cv=pass;
        d=google.com; s=arc-20160816;
        b=dBRAnRACrStoPb1gXgOjmkRsyXtHv9OZac5Z19hNRiMs4rfA9PkSGq1eCwsD7Vh6L+
         KY2hot9sH6ejpeDQmnq9lbMBg4vdHcxQTEp7c7COkpTbklEnNH2NajnLosDtagO8W54s
         /jZkmPB8CdQ/6y3U7vp132gKkaeTaBpJmtGeEPCOzik53T662008beVbmFOw9B8/Dexm
         x5sAPwLCRUb/vhNM/YuU8TlDzI2ClaAYAiCsxnPBMnn69qLNBI8xb64VzQVug8xwF4ft
         ADY1iIJEjvrB6PPlQmh2nArCLiBmM5gD0ccVvbUrsZ9Ro8MDFx3ETGzYpCYHCfld/CLb
         0mTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QMUHKhivdzFFxhAl/IcGQ81Y29z+q4KPIEdw5WoHYRI=;
        b=TQm++T38M5GRTglh8g5dbb1WmZZem/ucwO/S2bUlaZDq2PI32MVnerTlzP5ywrW8Fp
         kfJPiKQqagCnzjaOa2IqpXombmNQU16Is7/ryeX2IXNKyxLDq/9DJkjVosA/kRL5bXos
         CJOnsDzUZyqsRWv3CsVjSmBvQ6pV2ZA2uAZ0xvf8TBmieCszIONukBttczPYSQlzrsgg
         +hisXYOPGiMgEyo0OdRfwFUuTrfqLkxiajQYSOOy7+4vNlkOY5ESGcWrDP+qrLGLWFqs
         +BfsA4JmVyXtqtPDbxw0u8k1DesT7xFiN06GLLtkqvJDU94E1HEih9uJQUV6fIYaWpwn
         QXdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QMUHKhivdzFFxhAl/IcGQ81Y29z+q4KPIEdw5WoHYRI=;
        b=TKiJch46yB6PrdNIVgGQgLYvrDy+Ct45xDx/W57kU3f6Rmnxkll2mptRAaNJqjAduc
         MIu1h3FBQXgf0VnkolD1Howuh3hsRIiu3C+yqAPCXH0JZMNjpjF1kXZI/0hBbzptdcoo
         vPQcF0XyMTaillS+UEOEwPy72HpJFHfM2yuCKpnbM0KgxxKBUBXk1oNTOwHJpzZDmgXE
         rRC9o6UyHyukyI/GPUh08FsvYWP5ehhD2M39Zg0ajnRhgHsN1p4iNrVp5gZUhp3IFXmQ
         gDNuFyRG5lAGgOWT7ODOKsh/ZqVq0ZSNA653u8U5lpASm5kQo+yJxhkYfzqPoC4aVhxJ
         qj3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QMUHKhivdzFFxhAl/IcGQ81Y29z+q4KPIEdw5WoHYRI=;
        b=ZtujFhZroyQciPmHf50PldS9cj6lASq42ze5POBgaCmUGJy8lztn1ZjgvJI3YY4rv4
         hBNAtWVX3Jp6EJAuCRCDqCdnGYGPvbKf98aJJYvH6Iu39eWR8hWJiw+nn/agUhns3uqW
         hoWAEfuDs/+KqQJ/pu792DZ/ExzimYkkA/dovPUfMuef/9hsg390Ct9V1GtrukY68cIZ
         5cRbmQluC34+jThs9uuvdcZ2lTJx0tpBLK5aoOly1uHDYKuK/B+QEnsKfIQQJK57Jbam
         /VClPITL6c7o8TxdzlVdnYV9or+q/kTHRK9K16y+HMrhKmbZ9RkmSiKqdjp47TbObE3a
         BxDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532mvDMxt4/rjbZnfWSE02uRMuG3HwIUwDsGMOJjUTp26of08N61
	i3GrDkygMyEtswWGuedKQ8E=
X-Google-Smtp-Source: ABdhPJx/LExjn6g+ulps0Z2NS89IReoMtEA53UnTwr0ju8+sKu8Ue8EFC/QhdWi9BUuIDu7IqbMmWA==
X-Received: by 2002:ac8:748a:: with SMTP id v10mr2498029qtq.19.1594694321681;
        Mon, 13 Jul 2020 19:38:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:38f:: with SMTP id 137ls9170161qkd.2.gmail; Mon, 13 Jul
 2020 19:38:41 -0700 (PDT)
X-Received: by 2002:a37:9046:: with SMTP id s67mr2574438qkd.275.1594694321309;
        Mon, 13 Jul 2020 19:38:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594694321; cv=none;
        d=google.com; s=arc-20160816;
        b=doPs3XfdH+yI1NuYoucWjsMHStZPcJm8+ILjP9wT9Tje5uWacTSsXCL00SUtVwtNnM
         UyTh7Lem1JnJUBQyHuCxx9/vo0Izk7BvJFl2WL4lWfBeSaVRxiSxti8NNVE/kqQbRb2N
         jPhHfs5TVylOM0j8FSSIFQVidPZscMDnFpjGscx8EhBAK5vzx+SQm+KdMNz8ChvtT2KT
         RHOrp09Au7Di44So5yzbV3FOBv7/AsF/OS7+GcQPJsMqwAMD835kpctzDpLqE49q6ew3
         7eUW2XZOuIm5NiwwCm/PL54WNLxdi09LK4eEqlSyup5Gl9iNN7ouzMmuAXJfV8NfLDg7
         UNew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=OKhnBxItrBTpXf+LwQ8W3IeeewHkHEBu9msI4n5LC4M=;
        b=o5TKNbhROFawVz+nFdPii5ES18qM+5GqMgr92P3gXDCfbNruB0N7Pzp1QF2DDRc6Jm
         YaN7v+6mLxESBYP10d2vZV0WeNukVQ5fdVoGozp4X3GUd06GTdc9s4Hh7A14ysoDkAjF
         s+SE6yUEUIDVH5XLW7sQHNM4OyOtNFSdQS4SkgBsRykLsXXLaLvrth0gOkZwlaFK5AD8
         kh5aualnpC7C4M354GP9rBEeEJYDxBDcW/J49GcZfob+5jn8YEjXQ/N7QRjzJEovLOZ6
         ONgY890H9OIWNhdZ0dG01dBE/unaS1+PWn/kd0DbhXoi1cCqTsSx8b8jk34+W4+3oapO
         hl/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com. [209.85.222.193])
        by gmr-mx.google.com with ESMTPS id b26si944516qtq.3.2020.07.13.19.38.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 19:38:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.193 as permitted sender) client-ip=209.85.222.193;
Received: by mail-qk1-f193.google.com with SMTP id e13so14338072qkg.5
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 19:38:41 -0700 (PDT)
X-Received: by 2002:a37:8b01:: with SMTP id n1mr2609967qkd.370.1594694320996;
        Mon, 13 Jul 2020 19:38:40 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id a22sm21046291qka.64.2020.07.13.19.38.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2020 19:38:40 -0700 (PDT)
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
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/7] x86/boot/compressed: Force hidden visibility for all symbol references
Date: Mon, 13 Jul 2020 22:38:31 -0400
Message-Id: <20200714023836.2310569-3-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200629140928.858507-1-nivedita@alum.mit.edu>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.222.193 as
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
index 7619742f91c9..c829d874dcac 100644
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
index 4cce372edaf4..609157a40493 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -27,7 +27,7 @@ cflags-$(CONFIG_ARM)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 cflags-$(CONFIG_EFI_GENERIC_STUB) += -I$(srctree)/scripts/dtc/libfdt
 
 KBUILD_CFLAGS			:= $(cflags-y) -Os -DDISABLE_BRANCH_PROFILING \
-				   -include $(srctree)/drivers/firmware/efi/libstub/hidden.h \
+				   -include $(srctree)/include/linux/hidden.h \
 				   -D__NO_FORTIFY \
 				   $(call cc-option,-ffreestanding) \
 				   $(call cc-option,-fno-stack-protector) \
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714023836.2310569-3-nivedita%40alum.mit.edu.
