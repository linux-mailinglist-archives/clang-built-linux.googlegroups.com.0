Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBTH7XCEQMGQEOVH3KQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB863FCA0B
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:42:22 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id h135-20020a379e8d000000b003f64b0f4865sf2399507qke.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:42:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630420941; cv=pass;
        d=google.com; s=arc-20160816;
        b=UUfkQQX1cKxFrs8hvUOyheMlE6W23elqVBhqnigeWTLpJNmULh6I6BtsoOkfWj4Tbu
         4rjkHHBXvXruGoq2O6aG3DUaQswcN0R3JwqyJ4iAwpNNGRBpJhStDfZZ2ZfQy93FKjUU
         LUEN1I8E6X4lAxvlCm8kb/RLXb9HLTWdCYLrqBw+94Tm3X4kKH6G49Y7NAEiu0DsGBcR
         3U9hHaMVl9M5wAkN8JtXSblwlfBJaHKteisP9s0YyiFg2xtyMmnB/LfPlFStquXV4hW3
         5e4SdmotPwThoUnz+0moAtGEoXXUvTg3SsoBUF4fjivX8f8qCHpIdPArZtyzZqPZnJtT
         pdjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4a2k9kKAFQtRlj2ENcCjgIVZKpOWuQIBuC8U4O8r+No=;
        b=DTHnuw64pbKukYZmsz2xGqJO/a/cWOCct8IZKlHEUQ8z+gHINgRSDo/NyGDPIl+Oln
         /dnZdHsDXekrNUNP52yfbfRv6sveOY8QVJS6ZQ6NKdqIXtYoDl4pnJTvnFg8vImNTtiA
         36jAoV53ZBGO15phGKZWerVfDyn2UdnnNpYCVV24fTCR94w+JydhYi+xwXDyZMs1zssR
         2EyDUXKW6zqGSxPQwkD9P/F1bSQVqsT4hQjaqf76x17wVobZ5DDN1531a30j4nxpx4PI
         HsokTFjxBV8v9Kd7im2+oqLyUdImIpMxBoe+k1j+2whlJSEICw69P1JFtmHORIHno0ns
         ey6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4a2k9kKAFQtRlj2ENcCjgIVZKpOWuQIBuC8U4O8r+No=;
        b=TDrNhF+e9C5cAWEG+ZaWvdTvFLL1gZ3OJcbydj/74p5Jxwj6+MW0H4r0aGeHHyfUvi
         BYpzNz987VcUWUM36MpAOTg72nB+YCOFuniPkWJZT9hP/AfWLtT5MKsIxJOY0PgJmG+H
         fBZXo/SPC6Eh0kd1L7+24/Rx87cq5q9mHLvNMsXhBse6ZINwfzGxZ7QQWanKby4V4v9j
         YHjPDzExj43wqOjJSZha0RuI4Fzdtu/hvvOpQNZrf39BWbzL+dnn3Gdq59Booh3vJ0kV
         P4aQlnpJLSykfheCCIqOlzV9oKYJ3pFgdfUKgAhcIIBKCx2+aGpB8STWZ8MPk83GrvOu
         Avzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4a2k9kKAFQtRlj2ENcCjgIVZKpOWuQIBuC8U4O8r+No=;
        b=f8FqVt/eGsoBUQvO7iCoruoa7a1r/9GniFCN9Z2REp04113bxJo3PvylQoZeuWUE2E
         hwEvjvsaIAW6I47ozxJqkoo9Wdq7du7QGV65jkPa0ZOrP1y0XaQRiVKFFwT7wen/oKyQ
         YJqLA47izKVtytiAosP5rcqQzDPQmTkO9hx2BsUsQcQ0u3J3/VeuWZcx2RxZXi2VLplP
         HF0oh9iReOhK0OgbCqzqQBBri+uZ21WHiCuGKkaKhXGhiwb2OPtBYberx/tBmpn6DCu/
         p1hPaLu6wOCF50fJHa7wQPene/osY9kK9f/LTruR7iw/EZsQazzitj/6Oxp9w/W7QJuV
         qLWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GL7FjPXALgMjiX6dNurOsMAt1NAcFzdQDBtMQ7HNq/gEiuONf
	m6vRW3tumBoOUBTdb1Fg24k=
X-Google-Smtp-Source: ABdhPJxCJfdS5ePrfsw0SWuTyfsOWZqCshcdC8JrsIyQVxJVIPPbKw4ZHKPcCGOTJF34Ye8Q+Bc6MQ==
X-Received: by 2002:a0c:e04a:: with SMTP id y10mr1761398qvk.14.1630420941006;
        Tue, 31 Aug 2021 07:42:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a4c7:: with SMTP id n190ls12822382qke.4.gmail; Tue, 31
 Aug 2021 07:42:20 -0700 (PDT)
X-Received: by 2002:a37:624f:: with SMTP id w76mr3495360qkb.284.1630420940555;
        Tue, 31 Aug 2021 07:42:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630420940; cv=none;
        d=google.com; s=arc-20160816;
        b=eg+TSldi+kYOGqcokfJckCRWdEtVGVybvMAl60VN/ht7Jjm+8guH/+TNVn4bWCyfqD
         vd7Hjo/nYZrhXrpbszWBtZLPNKX+7B8Cvelqv2bajx6LXrCwpMI82EguTspfgRUOw0zm
         9UYw81mcMeUb8KapCcDwSefp6aeuKlvy0Ok9Z+8iAY91K0dV92bjjYq5ZV+X705krcDw
         D6YKoWki+RJR/q8tQL4cQujs0QX6mCG1Gev+Tnv+OYhGtPp/RaiRll54Dhe7hvNlozim
         uiT4roIlqyS0xjs60rp7KXqMWWzciDEYHM5tX6Ih9t+Zeq9Z0fiKJSd4QIlpZDv8VO/P
         B3zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=05EI4ob/jqjVQWrD/Suh/DBYA6ub5KqJrQKgwvDcv0A=;
        b=oCxb/ZieewZGjE5TGjBBRe69VJabCURTmRwQ9HSzvCUwQ4MEGjxzNQ3wxg7HKBahxT
         Sjpf/ASOnajOQcGPAr+oONQOaTmjbZNSYHa7MbGXmEHYYJ7JWXrWB9PwZ58U43kctDsX
         dp2IerVidz9YB3q8B6dWOsfwE0DKp2f0ue6gXfBEHeWfoeEH6Vc/IraY9dWfBCgcfTqF
         U0PZ3fQmO6pvqH155fVa50pnSdorR35IwicOusUZuhtdoLFl6fJoq+JtUOb+kFyf8tA5
         9FjvZxhnFsurkd7fH8z/gjgDmjFGZEzMYdZU8fVCzKlhI/q102fYvVf4h8aFWcxpHIOZ
         WoPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id 6si1278907qkh.3.2021.08.31.07.42.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:42:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="279497145"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="279497145"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 07:42:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="427495065"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by orsmga006.jf.intel.com with ESMTP; 31 Aug 2021 07:42:05 -0700
Received: from alobakin-mobl.ger.corp.intel.com (psmrokox-mobl.ger.corp.intel.com [10.213.6.58])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 17VEfmfX002209;
	Tue, 31 Aug 2021 15:42:02 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: linux-hardening@vger.kernel.org
Cc: "Kristen C Accardi" <kristen.c.accardi@intel.com>,
        Kristen Carlson Accardi <kristen@linux.intel.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>, Jessica Yu <jeyu@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Marios Pomonis <pomonis@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Tony Luck <tony.luck@intel.com>, Ard Biesheuvel <ardb@kernel.org>,
        Jesse Brandeburg <jesse.brandeburg@intel.com>,
        Lukasz Czapnik <lukasz.czapnik@intel.com>,
        "Marta A Plantykow" <marta.a.plantykow@intel.com>,
        Michal Kubiak <michal.kubiak@intel.com>,
        Michal Swiatkowski <michal.swiatkowski@intel.com>,
        Alexander Lobakin <alexandr.lobakin@intel.com>,
        linux-kbuild@vger.kernel.org, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: [PATCH v6 kspp-next 07/22] x86: Makefile: Add build and config option for CONFIG_FG_KASLR
Date: Tue, 31 Aug 2021 16:40:59 +0200
Message-Id: <20210831144114.154-8-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210831144114.154-1-alexandr.lobakin@intel.com>
References: <20210831144114.154-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
X-Original-Sender: alexandr.lobakin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.31
 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

From: Kristen Carlson Accardi <kristen@linux.intel.com>

Allow user to select CONFIG_FG_KASLR if dependencies are met. Change
the make file to build with -ffunction-sections if CONFIG_FG_KASLR.

While the only architecture that supports CONFIG_FG_KASLR does not
currently enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION, make sure these
2 features play nicely together for the future by ensuring that if
CONFIG_LD_DEAD_CODE_DATA_ELIMINATION is selected when used with
CONFIG_FG_KASLR the function sections will not be consolidated back
into .text. Thanks to Kees Cook for the dead code elimination changes.

Signed-off-by: Kristen Carlson Accardi <kristen@linux.intel.com>
Reviewed-by: Tony Luck <tony.luck@intel.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Tested-by: Tony Luck <tony.luck@intel.com>
[ alobakin:
 - improve cflags management in the top Makefile
 - move ARCH_HAS_FG_KASLR to the top arch/Kconfig
 - add symtab_shndx to the list of known sections ]
Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 Makefile                          | 13 ++++++++++++-
 arch/Kconfig                      |  3 +++
 include/asm-generic/vmlinux.lds.h | 20 ++++++++++++++++++--
 init/Kconfig                      | 12 ++++++++++++
 4 files changed, 45 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index 61741e9d9c6e..283876e170f7 100644
--- a/Makefile
+++ b/Makefile
@@ -918,8 +918,19 @@ ifdef CONFIG_DEBUG_SECTION_MISMATCH
 KBUILD_CFLAGS += $(call cc-option, -fno-inline-functions-called-once)
 endif
 
+# ClangLTO implies -ffunction-sections -fdata-sections, no need
+# to specify them manually and trigger a pointless full rebuild
+ifndef CONFIG_LTO_CLANG
+ifneq ($(CONFIG_LD_DEAD_CODE_DATA_ELIMINATION)$(CONFIG_FG_KASLR),)
+KBUILD_CFLAGS_KERNEL += -ffunction-sections
+endif
+
+ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
+KBUILD_CFLAGS_KERNEL += -fdata-sections
+endif
+endif # CONFIG_LTO_CLANG
+
 ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
-KBUILD_CFLAGS_KERNEL += -ffunction-sections -fdata-sections
 LDFLAGS_vmlinux += --gc-sections
 endif
 
diff --git a/arch/Kconfig b/arch/Kconfig
index 129df498a8e1..e7a9a43eee90 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -1282,6 +1282,9 @@ config ARCH_SPLIT_ARG64
 config ARCH_HAS_ELFCORE_COMPAT
 	bool
 
+config ARCH_HAS_FG_KASLR
+	bool
+
 source "kernel/gcov/Kconfig"
 
 source "scripts/gcc-plugins/Kconfig"
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 62669b36a772..5d6da19b02bc 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -97,14 +97,12 @@
  * sections to be brought in with rodata.
  */
 #if defined(CONFIG_LD_DEAD_CODE_DATA_ELIMINATION) || defined(CONFIG_LTO_CLANG)
-#define TEXT_MAIN .text .text.[0-9a-zA-Z_]*
 #define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..L* .data..compoundliteral* .data.$__unnamed_* .data.$L*
 #define SDATA_MAIN .sdata .sdata.[0-9a-zA-Z_]*
 #define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]* .rodata..L*
 #define BSS_MAIN .bss .bss.[0-9a-zA-Z_]* .bss..compoundliteral*
 #define SBSS_MAIN .sbss .sbss.[0-9a-zA-Z_]*
 #else
-#define TEXT_MAIN .text
 #define DATA_MAIN .data
 #define SDATA_MAIN .sdata
 #define RODATA_MAIN .rodata
@@ -112,6 +110,23 @@
 #define SBSS_MAIN .sbss
 #endif
 
+/*
+ * LTO_CLANG, LD_DEAD_CODE_DATA_ELIMINATION and FG_KASLR options enable
+ * -ffunction-sections, which produces separately named .text sections. In
+ * the case of CONFIG_FG_KASLR, they need to stay distict so they can be
+ * separately randomized. Without CONFIG_FG_KASLR, the separate .text
+ * sections can be collected back into a common section, which makes the
+ * resulting image slightly smaller
+ */
+#if (defined(CONFIG_LD_DEAD_CODE_DATA_ELIMINATION) || \
+     defined(CONFIG_LTO_CLANG)) && !defined(CONFIG_FG_KASLR)
+#define TEXT_MAIN		.text .text.[0-9a-zA-Z_]*
+#elif defined(CONFIG_FG_KASLR)
+#define TEXT_MAIN		.text.__unused__
+#else
+#define TEXT_MAIN		.text
+#endif
+
 /*
  * GCC 4.5 and later have a 32 bytes section alignment for structures.
  * Except GCC 4.9, that feels the need to align on 64 bytes.
@@ -842,6 +857,7 @@
 #define ELF_DETAILS							\
 		.comment 0 : { *(.comment) }				\
 		.symtab 0 : { *(.symtab) }				\
+		.symtab_shndx 0 : { *(.symtab_shndx) }			\
 		.strtab 0 : { *(.strtab) }				\
 		.shstrtab 0 : { *(.shstrtab) }
 
diff --git a/init/Kconfig b/init/Kconfig
index 55f9f7738ebb..cd1440b6a566 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -2021,6 +2021,18 @@ config PROFILING
 config TRACEPOINTS
 	bool
 
+config FG_KASLR
+	bool "Function Granular Kernel Address Space Layout Randomization"
+	depends on ARCH_HAS_FG_KASLR
+	help
+	  This option improves the randomness of the kernel text
+	  over basic Kernel Address Space Layout Randomization (KASLR)
+	  by reordering the kernel text at boot time. This feature
+	  uses information generated at compile time to re-layout the
+	  kernel text section at boot time at function level granularity.
+
+	  If unsure, say N.
+
 endmenu		# General setup
 
 source "arch/Kconfig"
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831144114.154-8-alexandr.lobakin%40intel.com.
