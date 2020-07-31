Return-Path: <clang-built-linux+bncBCIO53XE7YHBBPX5SH4QKGQERSGB3HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB0A234C3C
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 22:27:44 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id y8sf14072923ilq.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 13:27:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596227263; cv=pass;
        d=google.com; s=arc-20160816;
        b=ou9/HrIrSnWC/7mCVsSnTNEAl41BClExtdFodqbBMdROK7YY81Hc+5KwpFQaBIM3FT
         WbEtZYtzomtpUevBdfHfjXepF0t/+OEdoxoWrAlRKQa72GcWS1yQ/BgkvX53Mkxb3j2l
         X0jXpyC84pnqr2UoLfFiTnZf6mBS9qPKZLioH46Gx2tAYLS923LO3IeNbedoksmcWpAH
         21S0a/N6VtV8JzFJCrGosfRwEimYW9cfee88D9WBJvoGXv0cy5ea9eDcxAfK+AVnDY5s
         WVT/sU75pL/+rUyYy8RqkEVJRa3Kmp3HhDzqXvPO0x8LQauVIhXMDFMPStBANS6TUsAy
         Geug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=lGSotGCwoi+bNR33R5Kx2KH8uWwNWRF/YAzor9yB83I=;
        b=YtYbnc87T+wvZuYoyvOIVz+3AUgnFalT7JoV2dvZ/WM3oT+IXB4vtxxNZv8i2T2Oq5
         6ul0NFd+36uJxNyeWjj43EbtJLL2OLVXI0R+kZ86NFNup02pVDzqb8rADM4WuyvB0q5L
         oe5xNGcv34dOiWJ1J4JeDSEcedPae1+RoZXbcIwlITotZqIlw7Io28uAohgEc5pvI8Wk
         hGv2n7xsYckBmlGNqzhZ0TmvlmhggYDcvAFAYTZSrCitrG4Tg0rIyxwagj+G4YRU5HkF
         lBKl3MNBb+b+jaL82RoSjiG3/O1ItC7ZSp8UvzSuEasKhva9HNc9fXn6PWykQq4pyTE5
         4AXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lGSotGCwoi+bNR33R5Kx2KH8uWwNWRF/YAzor9yB83I=;
        b=J4J9OVXXjFPEhZJJ1p5d61wdvOUhMBk77cjdTVYco3jS7IvukVXAAVcTATdRCY3VQc
         OuiNAU8VWFKC8Y/kXdUpDe32U5JTOh2DYdS0LXFFUOhYe1z0J9dS8TprXSEXkm+aR3QH
         vkrVx3H2cDCTUHLyjM+CrjidtkBJHd4dZLS4z261OqWVhtPY2zy2EQQ9JpF4xkBDcF6c
         er+jze3pExpe8Hpbeh1l2t5CmwbPaVn28FPvzX7jOlKfh/aYWCFIqnj+wzWPGcdtMmmQ
         U1CO8X7DBm7n4YXwDHq9rI6fontWX4tAw3gJ+0MAV82b+BGH//hIYuhIHXIDzrkc8y90
         PmFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lGSotGCwoi+bNR33R5Kx2KH8uWwNWRF/YAzor9yB83I=;
        b=iWeuWRHoGT0udSh4IeyzarBZIq3kzeyRm3vVSs+QkKUAfiwuSkbooPJIxzcTtwCGoh
         dwULlMspSAgaxYsYZp4+z7i5HYSrnu7uuFFgPWlVgnSnsIAGawo2nX3PsYzm7Pni3VJa
         U2uB38Kjyy7OQyrwW5Ow9DRlAKyNVFe2TrDdZI+wioSZr8YBk4VN2eJn1ZcuFyUgTY4c
         3B0wsRs0DsAz4RJ8Y8Lh3kQFzOYU7E18MaML1HFU9xsQA7j0LIitf47rTujUy5VhAw0B
         0V6Pee3ixmQkk1DvKZUVM5U3q97gy5pUezBv7IQDBVJjUSDsWjzwWp/ifVid8CEF5ssW
         F1HA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325Evbl2yfqvGoc2GK75CPqoBBBwmeJPw9q8cklJ/l6XtbNj0xQ
	s3+ITuQ/ZrAFwppFtxISPhc=
X-Google-Smtp-Source: ABdhPJxMpEomhHoR97iNTB1bKIMbWVgpTZ7Lw9ssUGlx3BQzP2vDIzjWPl636GjQZ2IsYG8ykJEAVw==
X-Received: by 2002:a05:6638:2391:: with SMTP id q17mr6942689jat.31.1596227263051;
        Fri, 31 Jul 2020 13:27:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9a89:: with SMTP id c9ls2777767ill.7.gmail; Fri, 31 Jul
 2020 13:27:42 -0700 (PDT)
X-Received: by 2002:a05:6e02:c1:: with SMTP id r1mr5254890ilq.34.1596227262692;
        Fri, 31 Jul 2020 13:27:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596227262; cv=none;
        d=google.com; s=arc-20160816;
        b=VNSCPJzWQ5+DXrbI25alaMYNbpCw9+2rfkcUYUJg0Z6IHcbWrlk2NghJ4va41pNQsx
         wV1LhNTexwO9eh6Nim0ZFtKSCUajQn0T3kOYmJlp2Dbf84shzYNVwSreGptr4kHWRiaF
         6E+FlLVdW6dE2vZTeHuSOWkuYtgBW4JsoA3FWF5tx2MQfs+UyGRityBK+9ZWo2Bss8Gl
         ulMnd7BpmwYv7Qw4WRH5vQ6DAIJU8HGJAiB8G4uNNf/xuSwXWMj0tkSfFaqNZHNycgk2
         czjXt+4Goq1TNoRjKcLDVEybvmVcQ8C8LtQYXhix9GvuS+m9BM1xhj4PGbWUE3ooWNPP
         f/Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=pj+axvzmD5SGaSD2w5nJiNJMAmRINNcqYBv2Vhrp140=;
        b=ARfCS6r9Z+8GTnoq6oa9cl0OcrDf8SdY8waQ7IiHrYXfDqJrNLA6m6y7Btw1/3Iji0
         0q4C2YDJHo+sX17IMHIQeeP8DJqT9ntRcS6eJL3a/Khgie2OTU42CvWAJUhqhJ1evwNy
         wXcTw+5ISCekGogZXMY0214VQEL4rVjDb8vDcmg9Oa6emsHIYCx8ZJ3jr7ZTDOs6xQ4U
         IK6yuOVwvb8e8By8612keHeQ6c72snnd4RYNAaY+m1jk9FYsUDPC7Dh0tHteD2LJX3tN
         vdpbS86+oYd6Vk6C3km5vfMVjPb0/k9nsAsY9Dc3fAmYwuTdyFnMzJwi4JCu1uPPSVw3
         MTPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com. [209.85.219.65])
        by gmr-mx.google.com with ESMTPS id k8si570024ios.2.2020.07.31.13.27.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 13:27:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) client-ip=209.85.219.65;
Received: by mail-qv1-f65.google.com with SMTP id j10so8034097qvo.13
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 13:27:42 -0700 (PDT)
X-Received: by 2002:a0c:a224:: with SMTP id f33mr2619521qva.93.1596227262128;
        Fri, 31 Jul 2020 13:27:42 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id t35sm10607976qth.79.2020.07.31.13.27.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 13:27:41 -0700 (PDT)
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
Subject: [PATCH v6 2/7] x86/boot/compressed: Force hidden visibility for all symbol references
Date: Fri, 31 Jul 2020 16:27:33 -0400
Message-Id: <20200731202738.2577854-3-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200731202738.2577854-1-nivedita@alum.mit.edu>
References: <CA+icZUV2=hj=+9DtbH47wtdE=GM5AZjS1xTgH7PKE+NxsRa2jw@mail.gmail.com>
 <20200731202738.2577854-1-nivedita@alum.mit.edu>
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

Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
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
index 5a828fde7a42..489fea16bcfb 100644
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
index 75daaf20374e..b4f8c80cc591 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -26,7 +26,7 @@ cflags-$(CONFIG_ARM)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731202738.2577854-3-nivedita%40alum.mit.edu.
