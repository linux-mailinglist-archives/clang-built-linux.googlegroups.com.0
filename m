Return-Path: <clang-built-linux+bncBCIO53XE7YHBBQVBXH4AKGQECJYAUPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BBE22016A
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 02:41:39 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id c1sf245039ilk.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 17:41:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594773698; cv=pass;
        d=google.com; s=arc-20160816;
        b=tTzt+eB0aACtE/OszvGHFf+lhTHUfnosTbIoSNWiJY91nmqBWKAydjHg48tCYy42K0
         5LhYY7/Qc652mk8rDcoaBXjvt2PvwgkAWBsJHKoIHa0OFWih0sixQOu519rXSWeQ0uOR
         fJrWbUsz5HnYg15GXk3byGYihcNqgXaIRu6djx02uhaMUKIi3j+87CT+L2FfmqSg+56U
         5MnLC+UAdgEHqlCwdYSLHbhe4X8r/xYmu6Jwlw8YUpnV3D3clfCgTjFmi+K9S8w2tGRH
         rtHs/aZR6kRmP1sZTpLq0t//TZay4GGAs5sAsx4D3K/B8L5o1XtWHfEvTgnELxnpkyKf
         PLKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tiglWF2HPRH0FoPPocHyyx9U9tthFxoQHlT84ZUVFcE=;
        b=gasb5rxqIznj3NaMSd9bu3Gq6lZ+FRybNDGOPvH84E39NmReuO1leqNnEUL+6e2nXc
         V0riKe6c/F2KBSyogk6V7ZyIgNIvbkNsUbYJ0AzVSyd4yM2yUTNMEBXjdkqH3IXOLc3w
         ySjdeL1eVrbYLtRTiqxkJinZClMg9K5LMUgT+FUwSkCdYN9To1Nf/mQpsAlSP47RUI8+
         9EQ6wlcQb7BeWtFeuM9CJnsFz20Wocizw4NGHXoA+ipurc0fzprv8f/3boAMNozae+Cw
         KhV518O6x8qbndTHCW2OW5L3nyHA5HFAldpdLCpd8iLnBI7HK+l/BVZhfAOA1GOW7OYd
         S8mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tiglWF2HPRH0FoPPocHyyx9U9tthFxoQHlT84ZUVFcE=;
        b=jYjg2Q5wIsfCKuWgEYO3ygBxq2Nuwd5sHzd/jFMfU9hl0Fv/1RijF5kzmZArqB3lBK
         j3yH2l1Sk/hAduUpOaKMoAh9521lGfaLHW0JwhtTArtk1AmLCfZLEACGexnmgQbPn+q5
         3z119ZLczd8zGBVBC72d8CBa0b1+iyVvbvFffmtAmaZnWlYAMZ2A+LJsnZbC8Gy3pEeK
         uDLuxj3f3KfkoU7s3+9BZuXXv6u/jyspFKzku1hg1z3cQVjDWk1916V2aKfcV/cVS1aK
         Ks6+DP5JrJUXQKWI2NjhaXxhzfFDcMaS/HMoHDach34Oqf3WQLwzjp9WXPRS7zd1Ikf3
         5kbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tiglWF2HPRH0FoPPocHyyx9U9tthFxoQHlT84ZUVFcE=;
        b=OX3qrXzwIrqLPMNGwqa6WozaRbPdQ4AssWY7/p8N+7dt470OvxvXeRo3LQPI4NXshO
         nkjnlFZ7H9NO5GKQTmIgouPDDd3hWl3xKzhkZSu/mvhMqlnAdadH1X21PvsmnCdw9BeL
         6K8QcZDk9h0SyP+TxuAd5riAwGEMyKhz/JlRTRI5bMB0o4rRxnVHt9Zte1Ths6NQVqRZ
         mhw2WfVpgmyQ9RAK7/IsJnad6/6RbBMqR2YWNhQxdexnshsEx3+/cFmjDavweZjW8jbI
         /hr1Jw7/wCik0EHkTs73lRzqHeAahV5AVP+/NW7zCodkpIgHYcRCefPyDFUVCmpnwjSu
         27GQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300KMX5LRuJBQVeR9Rak/GlwuMoZXg5VAs6u5f5S7Kbmk3IKzmA
	FI6Ub6Xw7F+DEaCNQXRprks=
X-Google-Smtp-Source: ABdhPJyfcU0qC+13wlCw7FFv+50v/kGRIf9YEB91Jqp6Ct96/sdEXFgztkZIPnLZEadtYG6lRoVLeQ==
X-Received: by 2002:a05:6e02:13b1:: with SMTP id h17mr6765534ilo.155.1594773698500;
        Tue, 14 Jul 2020 17:41:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:15c6:: with SMTP id 189ls84435iov.8.gmail; Tue, 14 Jul
 2020 17:41:37 -0700 (PDT)
X-Received: by 2002:a5d:94cc:: with SMTP id y12mr7360081ior.133.1594773697796;
        Tue, 14 Jul 2020 17:41:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594773697; cv=none;
        d=google.com; s=arc-20160816;
        b=qAwpKKUk2N7Y2gghQ7yucjtKxCbHmtgn2ngbqBBg4i63j3Q6slXjypyzvjQpD19kFp
         ljoH2qNS3HK59vva1XVmqqrI83BUc0x2wwXQWAxTCd1p8BXhvJb4lH1b51E+yd19BIv2
         xj/MchmvTs0wiemryvwD5jhXBZeeu7XdrlbDDH2W70WDiZxfAFCYCDZEdi/0V8wfvJAG
         heLGdCEgQ7tpeHbK0kXJMJvbuzJtBk8iUcpSN1N7Gpu8nyPhw631DBcFqyag1RoytEv8
         q0tO3ohS2sF7X9f1fm+3o8GBK+bH2wKThcyukAxntE4LG1nvERc3s+8vezAaxPWA+gb8
         xYLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=OKhnBxItrBTpXf+LwQ8W3IeeewHkHEBu9msI4n5LC4M=;
        b=Qzpo6PgkzRb9vJiDa7r3XYLyTQZWMuyIOZt7h3N2J9R1kk1p2wfDfW6bnblHVwaveP
         p7aY6ijwxE/tk1GYLXoKBD7AKd7bAzAr/nBOFKZokt/vQTeoH1r6Fb5Kt4Rbts8MOFTI
         MuFi5aS4QiogxLX6/edtstXubxNz++dYqL0iw+jnsemOgFbUwjElY/mRM7DGO2U6Vz1G
         d/8I7c4nBygjVcbafkiXms9YK9z6iYq/rH9Q+6Ui55Jy2I2UoZssbKpUDcMq/i2iMGsX
         8e1yDsRaMjoreFmAJ4ZER00s4imuHEGh/6092G3hDKyF6+YUss2hUhNGqBZFAhzF8MXM
         yNLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com. [209.85.219.65])
        by gmr-mx.google.com with ESMTPS id f15si21583ilr.0.2020.07.14.17.41.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 17:41:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) client-ip=209.85.219.65;
Received: by mail-qv1-f65.google.com with SMTP id m8so160200qvk.7
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 17:41:37 -0700 (PDT)
X-Received: by 2002:a0c:aa15:: with SMTP id d21mr6857915qvb.155.1594773697224;
        Tue, 14 Jul 2020 17:41:37 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id c9sm524776qko.24.2020.07.14.17.41.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 17:41:36 -0700 (PDT)
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
Subject: [PATCH v5 2/7] x86/boot/compressed: Force hidden visibility for all symbol references
Date: Tue, 14 Jul 2020 20:41:28 -0400
Message-Id: <20200715004133.1430068-3-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200714023836.2310569-1-nivedita@alum.mit.edu>
References: <20200714023836.2310569-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200715004133.1430068-3-nivedita%40alum.mit.edu.
