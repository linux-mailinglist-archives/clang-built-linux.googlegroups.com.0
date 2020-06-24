Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQXCZL3QKGQER4CQMIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id ED08F2069B9
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 03:49:55 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id n67sf515515oif.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 18:49:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592963395; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tx4VP7aYOxP9jKtN1cu6waYqwfVfMmHmWhIKj4rQLUz3pXaZoBK6028fS3sWszjQmP
         4VlvpPQWuBoSg/pRjV+qvZhoaLgNloVrzczCw7pdXt8Xh3FOF4/oJ5jnl4eXhtiClxhU
         qcc47ub1w0TOCEMuDOjCYrhxHBB2wmdTnsaFks6Y1Ya9jDpIf95+hX3QrxgDSydSuKe/
         Wa8NhklkTHT/SAyy8IzaQQ0BviH+frFE7wfy9DMLvARzKGKjA4WMyAmMOM/IqIIH0WUH
         iuephgMG01ml5wkmGSqQKoMvfejMbsKJDJDWEV+YFtNP6f05en2f0GM8FDVWORMxQbpI
         u73g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=eB++yStzfGObDz8j/NUZC0oJBiLnyeO3VY325t+uM1c=;
        b=s5ibX75Zl8N+UhSh/dAKRwFtZB/LifaJAMRTfDk1e0+JIvjAKxWFVNzUSfwcGObzcV
         7pyWgaO55UE74N5H9DrMJyq8+EzTkS4GjfY9p46AnLfOjTI61T90gOS7WOt9FYfNtAmh
         HWbtV1B1Nh5/w0MY7iU3Rin5L9DyOqkC9J+MzVHuCnzQ5u229wxU7MNicvl2IcPBTOiH
         xw1ilr3sxZmsrFPgQWqvCUt4zYfyqRRY6UiHO4TlIOOZ7zX40M9igC5X3entAGbgr6gh
         dGLzcw856iaTVJPIZyQ9pJbvCwsvM00ViVSMqDAEKSmJbLQTi7qRoOGf5q78iNAydg27
         2BKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Xc9+JYeX;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eB++yStzfGObDz8j/NUZC0oJBiLnyeO3VY325t+uM1c=;
        b=TLOS+Li4Slo4zaD6uGoQQIDg7CDXKepx85e5AX2OAfYhaG86hOPdxxL/Bc6Dl/tKI4
         /Od8B1yy/fJSFBTAPxNvxAqwd+Y08KlOcfcQDQ2sShrzjAqJyYT+im0EFDzufF/1cQ4J
         LSJQv3aqfjjrbBji4jSaBwE+ur35/+GWUSBeNM5Bw4dX8QQKby2w+QvPz3IqpkpuKWQk
         5Pa66xmYvSUo/gGPO//tcYBCZcvAT+EmPEzi4YUWOOQXTKfW+PQvAoLJSuHv/rUsrrBS
         Zsyq/vddydUcaRVU7QzB6OKZRj2N3PicbkC5vn7CKyWiD11wjJvVmsT0nvm6p1L8bvTr
         0U5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eB++yStzfGObDz8j/NUZC0oJBiLnyeO3VY325t+uM1c=;
        b=UgOC0oMmDf+OLo33Dgq2pBv+Uqk2Ua2nJAJ1bOhTSD9WFeNw3HoF0O90IIZblPbcwo
         gcIH6rq7LZWPAJ8/kErQzwTRkEIbU6rWsJ3yc1u6z/9aIZCevJy2yGu47UgnB4KKULt3
         jFAGgQDe5BKaCuWHpOrj4XDbm9EiynF0GEsLM6eyx9yJvj/gEBhKUHXBjeUM0r2PCXU5
         WtVVcqaInI2Mvvn7mGMENKCO5GdHiNrpZscUcn2vqd+imcgkDsfX8Ecz7ECBsDgAECgZ
         bG+e6niU0xGu1Y60zsmkgvKpFJh2s6bMw0qtyOeLQMFWKR/Gtx/Hs+OTDU1sMKsrHEd6
         nn7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325JJOexjgYRGzETWP3A+RSOxudMXBmBH1fZYmw+WdFx/DjRpCd
	/JXj21MPJoqDbb6+J0kxkZU=
X-Google-Smtp-Source: ABdhPJzHPEdj5odc97rA0V4vOzF7KzV28qRf+maDAlLI03Ov9KZqRlg2gEpSqJY9b6obzsvuKZlYtg==
X-Received: by 2002:a9d:5a11:: with SMTP id v17mr20745796oth.60.1592963394959;
        Tue, 23 Jun 2020 18:49:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c38e:: with SMTP id t136ls78220oif.10.gmail; Tue, 23 Jun
 2020 18:49:54 -0700 (PDT)
X-Received: by 2002:aca:ad03:: with SMTP id w3mr18419554oie.42.1592963394629;
        Tue, 23 Jun 2020 18:49:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592963394; cv=none;
        d=google.com; s=arc-20160816;
        b=fQNcWhJmnw9Xzz5XhNapo7MVjoeXyxGw+iIPK4rNnKM414yA5FPKaK/qZOApejYT9u
         MCIBsnrco4I34WN3KNsb5+NkP4nOasprgXtV+e3Np6130gxS2MgfqaB/eQee7u25aRa8
         oTsIrXI2ZDMkeogbqmfebzAlb2xeEM1+sZvVu36lghdC0bBqtITLsFUuzK7kbCaDtAJZ
         kGDrYuRKVGjYP3uph9JixRsTlax/Cxpad3ruuQaB4fdlkdLqZSk0mASg8ZS8kcOIeBFH
         kGqAAT6PO6uECKTP3xn8qr5FND2YpCPjMQ7BTUElGkN15CWCIm+BNeMuXn+7eFw4a1mF
         tgvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=r1CVChw5lv6qJCnYUjb6+Q15TOtyE7dXeIu2ryL/SHg=;
        b=DPut/G9+QJ3B2/agaMXNBJV6/XEMCwAl6uSDtNIpN2MdahkGXeH1aHhLw6QCuODbE4
         QmqAJ/US7Ou+UkbDIq15lWL8id2c3Wqs45VG34XoqzPhDNS1gibrSIKGuiogMaQPe1Xa
         fWhjtF6jFPXa7Fa6RtLppUSp6Jn9NRa6CRRct4GmGLiUzhpQM/hfSaOaKii8x4WKMo58
         lEioPZ3PNUOJ4r60OBSvAPA9VnQbDiB3wzM11VsFWad2lmPFiy1l+7rLHgq/5rc6mqEt
         Lp6fA2z9SN3uHgTwqeXOpp0ffDLwMcoW/heqlgYg9hkJ9DLJdH2hdSn6wnlQsz2ha5Le
         RyJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Xc9+JYeX;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id j145si100679oib.5.2020.06.23.18.49.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 18:49:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id b5so562329pgm.8
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 18:49:54 -0700 (PDT)
X-Received: by 2002:a62:8f8f:: with SMTP id n137mr12048606pfd.270.1592963393918;
        Tue, 23 Jun 2020 18:49:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u200sm2497659pfc.43.2020.06.23.18.49.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 18:49:50 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
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
Subject: [PATCH v3 7/9] arm/boot: Warn on orphan section placement
Date: Tue, 23 Jun 2020 18:49:38 -0700
Message-Id: <20200624014940.1204448-8-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200624014940.1204448-1-keescook@chromium.org>
References: <20200624014940.1204448-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Xc9+JYeX;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
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

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly named in the linker
script.

Use common macros for debug sections, discards, and text stubs. Add
discards for unwanted .note, and .rel sections. Finally, enable orphan
section warning.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/boot/compressed/Makefile      |  2 ++
 arch/arm/boot/compressed/vmlinux.lds.S | 17 +++++++----------
 2 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index 00602a6fba04..b8a97d81662d 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -128,6 +128,8 @@ endif
 LDFLAGS_vmlinux += --no-undefined
 # Delete all temporary local symbols
 LDFLAGS_vmlinux += -X
+# Report orphan sections
+LDFLAGS_vmlinux += --orphan-handling=warn
 # Next argument is a linker script
 LDFLAGS_vmlinux += -T
 
diff --git a/arch/arm/boot/compressed/vmlinux.lds.S b/arch/arm/boot/compressed/vmlinux.lds.S
index 09ac33f52814..c2a8509f876f 100644
--- a/arch/arm/boot/compressed/vmlinux.lds.S
+++ b/arch/arm/boot/compressed/vmlinux.lds.S
@@ -2,6 +2,7 @@
 /*
  *  Copyright (C) 2000 Russell King
  */
+#include <asm/vmlinux.lds.h>
 
 #ifdef CONFIG_CPU_ENDIAN_BE8
 #define ZIMAGE_MAGIC(x) ( (((x) >> 24) & 0x000000ff) | \
@@ -17,8 +18,11 @@ ENTRY(_start)
 SECTIONS
 {
   /DISCARD/ : {
+    ARM_COMMON_DISCARD
     *(.ARM.exidx*)
     *(.ARM.extab*)
+    *(.note.*)
+    *(.rel.*)
     /*
      * Discard any r/w data - this produces a link error if we have any,
      * which is required for PIC decompression.  Local data generates
@@ -36,9 +40,7 @@ SECTIONS
     *(.start)
     *(.text)
     *(.text.*)
-    *(.gnu.warning)
-    *(.glue_7t)
-    *(.glue_7)
+    ARM_STUBS_TEXT
   }
   .table : ALIGN(4) {
     _table_start = .;
@@ -128,12 +130,7 @@ SECTIONS
   PROVIDE(__pecoff_data_size = ALIGN(512) - ADDR(.data));
   PROVIDE(__pecoff_end = ALIGN(512));
 
-  .stab 0		: { *(.stab) }
-  .stabstr 0		: { *(.stabstr) }
-  .stab.excl 0		: { *(.stab.excl) }
-  .stab.exclstr 0	: { *(.stab.exclstr) }
-  .stab.index 0		: { *(.stab.index) }
-  .stab.indexstr 0	: { *(.stab.indexstr) }
-  .comment 0		: { *(.comment) }
+  STABS_DEBUG
+  DWARF_DEBUG
 }
 ASSERT(_edata_real == _edata, "error: zImage file size is incorrect");
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624014940.1204448-8-keescook%40chromium.org.
