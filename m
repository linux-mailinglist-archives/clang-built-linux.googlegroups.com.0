Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBCVL4CJQMGQE3K3QYFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8855951EF23
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 May 2022 21:10:04 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id m11-20020a170902f64b00b0015820f8038fsf7080260plg.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 May 2022 12:10:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652037003; cv=pass;
        d=google.com; s=arc-20160816;
        b=fZaANPe9hknK5O979mgzuktGaTUyWkiwxnTp7sueHFaA5tuI+FSuoDq+fNReidArRo
         J1M88tUG2IVqbSzsJhtwZYu9r751nWYsCqGTosEoeYqClThXM8xYYKHj0ApOFNYNqLRV
         xkcvGj3bjcKcMxN9kAg93Z7cynSqnCmCTWmFQ6U2yM8DJDRBMURR1z4IulZtjCXRIi7B
         Hg+8RCjTTlYAj4WXNMtHcHuCGCLRpPnAyX9W4IBRk0j0vKY5vJM+vD7MQd4wvhY4cE2g
         bGc4UPwP5fFy4bD+nnCI8i0Nb2S4i97geqlDasi7qxiTK/HFuQschZ6A+Nk4GL8sP8eA
         tREg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=Q2adpKTJZcxdJ9aqZ5/EM/9HRY1oWAujvSzlGLMOwBE=;
        b=ERsbJd2IM+KjwjBgW1HWqowKUhCWjmrhuH9Q3quFxVBkF8D9rE59AQZEc4FqwGKCDT
         e3kziIrebmqrZmttGTFiIOb3MRLCWoQIN857whox97MzFYZ4HmW8sxwL1/j8SG9s7ATR
         LZl61ieynCVS69Nf2kvtD/VTMukV5g1MUmreGKVehOpHzkIu+/I5jqwi+CPvAZD6z6gl
         g6oVdAo4H0FKvlaYOlUEkX2Ctb5mAa+z5rAo6DS2reb+rmstRuBHwy/mCHp0IMnKbnaL
         UXEeWB4icjVs2WbVZ68s/FuPi2erBaBw6uks6SrlS8do0nRRtgPstnahfcFuN1ZCGVT4
         CZHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vrzvm5AM;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q2adpKTJZcxdJ9aqZ5/EM/9HRY1oWAujvSzlGLMOwBE=;
        b=eeqEMk7IGfkFJiHnN+dKm4KUW6Jk/O2R7tjWTuM6IvkwncXDdOgOF/NDDyu3kCuOAZ
         4T6XOXn/jLIqodctclT5mmt/28Jil3aOYIfKprS7R+qufqBlQ2nx5PW3WVkS2sa8lzyE
         zH2l5zhB2cBx6hCtm6LfoBUSjeVsvTyn4sTv9vwB/B+ELz8yj2C6VOSH6pzXJm2zdY5B
         VxzBSEpktbBzxR/BjPo5sl+pt4VM7XK+Lo+k03w2RyQjzgMIV9sEdj029MNz8RsmEWQ4
         DEetmNpwJwZS4iixqB1e+BoMMXuBgaq8jQ1fcLosXgvnfd0WJM0Y68WLltKtdMvptUd4
         Q6SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q2adpKTJZcxdJ9aqZ5/EM/9HRY1oWAujvSzlGLMOwBE=;
        b=bin0cxVLuGj8myE/1k5jZ8t5vcXblT+kt4Wg9Wx5XexLUnxzgLB/ncKXSUTT4H7wow
         qawHlWLCii+ELsABAZ7+nEUCGwk37RSKO9vro7kus4ZexYg5v4UHTm9NF6YXLiHnmLXJ
         fBlRv6hTaE3iYF/BIpimt9viTHOTND7riAoAwb1i30sqpEXjj+tQabFkwjiOkruAYqoK
         w3BP8gsw2d3Z4j9xmciVD2WbWwhis7TK9cW970AwzIxw6ge/CbKuQCmas7ZoezigxoT5
         UY1MJOZdsjXQuWqNkfkbBt+p4eDbocwhES5v9J9LGoaVTVy7IJ4fi3JYLi1TXlDaaN1g
         gGcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cFDSYi0WbMfKpj0GFVJmPj993OHy0uMXFy1QaOlbI2XUnJymy
	Z4LTXrZMmcGWa6U6WOxYdMQ=
X-Google-Smtp-Source: ABdhPJypDPpL3viOymSRsvuO4RpCMpxLvbTuqEoabPAOy11kM0ETWsjNLIW4HY9aKujX7QNiL9BE7Q==
X-Received: by 2002:a63:2a4a:0:b0:3c1:5f7e:beb3 with SMTP id q71-20020a632a4a000000b003c15f7ebeb3mr10326351pgq.441.1652037003091;
        Sun, 08 May 2022 12:10:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:b90:b0:510:7b21:1280 with SMTP id
 g16-20020a056a000b9000b005107b211280ls3405570pfj.7.gmail; Sun, 08 May 2022
 12:10:02 -0700 (PDT)
X-Received: by 2002:a63:8f45:0:b0:398:d78:142f with SMTP id r5-20020a638f45000000b003980d78142fmr10526772pgn.162.1652037002389;
        Sun, 08 May 2022 12:10:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652037002; cv=none;
        d=google.com; s=arc-20160816;
        b=0iHuTNXXHOCG2WvoUkwaCrmo0pQwXCyCALJKvO+DA0rTH7353gR8ueV97hoW4VaA3H
         jXrqg+tMjqq2Lo2QvDJBc4SGf+BhDsj+oiS2YvUxJ4WRRQWcXUCqFj9Axho25jTnShzk
         g2Lc4b6jvf+OZsMcFGnvuqR3JFM5No3IErQq/V7KqIt0FYsLM7rgYOqq6LDdC7VFdu2k
         mpgj2oSbIqwBCPZKax9pNUZLfbPUgFgTYp366L93XE8nNDaKUJrXrxLizdIiva00Iroj
         UUeKoR0eIsW5Gvt1qmLM6Mvn6/vY+EWdZjsoQaRMFC6iH/GB0HPZiPM4RZQLdjSze9SM
         C4Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=NbZ7pwRZzhstYNOGa0D84mgW7HWxQb4YiLGDnzdynzk=;
        b=vJf1HA4+MUfYI3zWrxfdA+BoE+hK1UTbo/Cdrg2lnQbzEZybSaaoNHUJ9WKSu0hXGx
         TE7DkB9P8qZbMzKLWpTDy21bMNm9SmsKC4A9yuvJEBA7sEKEl2EZjMOmfa5jimu6file
         S+M3hMc6i/AtQAsMyz5spEsdFyhdpUfjHbNmTN56NDtUPu4VhXsC7nqF5nutvXKSO/0X
         bgQbfqHE5lA8aE5x1Wuj8372bkHKab+ymDm60Nb1taNAqqcQq4slMDvUZwjzeC48mxvK
         BHZQrZEc3O87//d6gx7qzxkADMLAJGFGCH/YcUjXeNc/mP+uvC5TJJIHFAcU4oB+B9SC
         FAMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vrzvm5AM;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id i6-20020a17090acf8600b001c75ad3207fsi651400pju.3.2022.05.08.12.10.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 May 2022 12:10:02 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 248J8qST030019;
	Mon, 9 May 2022 04:08:59 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 248J8qST030019
X-Nifty-SrcIP: [133.32.177.133]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nicolas Schier <nicolas@fjasle.eu>,
        Peter Zijlstra <peterz@infradead.org>, linux-modules@vger.kernel.org,
        linux-s390@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
        clang-built-linux@googlegroups.com, Ard Biesheuvel <ardb@kernel.org>,
        Sami Tolvanen <samitolvanen@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v4 06/14] kbuild: link symbol CRCs at final link, removing CONFIG_MODULE_REL_CRCS
Date: Mon,  9 May 2022 04:06:23 +0900
Message-Id: <20220508190631.2386038-7-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220508190631.2386038-1-masahiroy@kernel.org>
References: <20220508190631.2386038-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=vrzvm5AM;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

include/{linux,asm-generic}/export.h defines a weak symbol, __crc_*
as a placeholder.

Genksyms writes the version CRCs into the linker script, which will be
used for filling the __crc_* symbols. The linker script format depends
on CONFIG_MODULE_REL_CRCS. If it is enabled, __crc_* holds the offset
to the reference of CRC.

It is time to get rid of this complexity.

Now that modpost parses text files (.*.cmd) to collect all the CRCs,
it can generate C code that will be linked to the vmlinux or modules.

Generate a new C file, .vmlinux.export.c, which contains the CRCs of
symbols exported by vmlinux. It is compiled and linked to vmlinux in
scripts/link-vmlinux.sh.

Put the CRCs of symbols exported by modules into the existing *.mod.c
files. No additional build step is needed for modules. As before,
*.mod.c are compiled and linked to *.ko in scripts/Makefile.modfinal.

No linker magic is used here. The new C implementation works in the
same way, whether CONFIG_RELOCATABLE is enabled or not.
CONFIG_MODULE_REL_CRCS is no longer needed.

Previously, Kbuild invoked additional $(LD) to update the CRCs in
objects, but this step is unneeded too.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---

Changes in v4:
  - Rename .vmlinux-symver.c to .vmlinux.export.c
    because I notice this approach is useful for further cleanups,
    not only for modversioning but also for overall EXPORT_SYMBOL.

Changes in v3:
  - New patch

 arch/powerpc/Kconfig            |  1 -
 arch/s390/Kconfig               |  1 -
 arch/um/Kconfig                 |  1 -
 include/asm-generic/export.h    | 22 ++++++++--------------
 include/linux/export-internal.h | 16 ++++++++++++++++
 include/linux/export.h          | 30 ++++++++----------------------
 init/Kconfig                    |  4 ----
 kernel/module.c                 | 10 +---------
 scripts/Makefile.build          | 27 ++++-----------------------
 scripts/genksyms/genksyms.c     | 17 ++++-------------
 scripts/link-vmlinux.sh         | 18 +++++++++++++-----
 scripts/mod/modpost.c           | 28 ++++++++++++++++++++++++----
 12 files changed, 78 insertions(+), 97 deletions(-)
 create mode 100644 include/linux/export-internal.h

diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index 174edabb74fa..a4e8dd889e29 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -566,7 +566,6 @@ config RELOCATABLE
 	bool "Build a relocatable kernel"
 	depends on PPC64 || (FLATMEM && (44x || FSL_BOOKE))
 	select NONSTATIC_KERNEL
-	select MODULE_REL_CRCS if MODVERSIONS
 	help
 	  This builds a kernel image that is capable of running at the
 	  location the kernel is loaded at. For ppc32, there is no any
diff --git a/arch/s390/Kconfig b/arch/s390/Kconfig
index 77b5a03de13a..aa5848004c76 100644
--- a/arch/s390/Kconfig
+++ b/arch/s390/Kconfig
@@ -567,7 +567,6 @@ endchoice
 
 config RELOCATABLE
 	bool "Build a relocatable kernel"
-	select MODULE_REL_CRCS if MODVERSIONS
 	default y
 	help
 	  This builds a kernel image that retains relocation information
diff --git a/arch/um/Kconfig b/arch/um/Kconfig
index 4d398b80aea8..e8983d098e73 100644
--- a/arch/um/Kconfig
+++ b/arch/um/Kconfig
@@ -106,7 +106,6 @@ config LD_SCRIPT_DYN
 	bool
 	default y
 	depends on !LD_SCRIPT_STATIC
-	select MODULE_REL_CRCS if MODVERSIONS
 
 config LD_SCRIPT_DYN_RPATH
 	bool "set rpath in the binary" if EXPERT
diff --git a/include/asm-generic/export.h b/include/asm-generic/export.h
index 07a36a874dca..51ce72ce80fa 100644
--- a/include/asm-generic/export.h
+++ b/include/asm-generic/export.h
@@ -2,6 +2,14 @@
 #ifndef __ASM_GENERIC_EXPORT_H
 #define __ASM_GENERIC_EXPORT_H
 
+/*
+ * This comment block is used by fixdep. Please do not remove.
+ *
+ * When CONFIG_MODVERSIONS is changed from n to y, all source files having
+ * EXPORT_SYMBOL variants must be re-compiled because genksyms is run as a
+ * side effect of the .o build rule.
+ */
+
 #ifndef KSYM_FUNC
 #define KSYM_FUNC(x) x
 #endif
@@ -12,9 +20,6 @@
 #else
 #define KSYM_ALIGN 4
 #endif
-#ifndef KCRC_ALIGN
-#define KCRC_ALIGN 4
-#endif
 
 .macro __put, val, name
 #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
@@ -43,17 +48,6 @@ __ksymtab_\name:
 __kstrtab_\name:
 	.asciz "\name"
 	.previous
-#ifdef CONFIG_MODVERSIONS
-	.section ___kcrctab\sec+\name,"a"
-	.balign KCRC_ALIGN
-#if defined(CONFIG_MODULE_REL_CRCS)
-	.long __crc_\name - .
-#else
-	.long __crc_\name
-#endif
-	.weak __crc_\name
-	.previous
-#endif
 #endif
 .endm
 
diff --git a/include/linux/export-internal.h b/include/linux/export-internal.h
new file mode 100644
index 000000000000..77175d561058
--- /dev/null
+++ b/include/linux/export-internal.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Please do not include this explicitly.
+ * This is used by C files generated by modpost.
+ */
+
+#ifndef __LINUX_EXPORT_INTERNAL_H__
+#define __LINUX_EXPORT_INTERNAL_H__
+
+#include <linux/compiler.h>
+#include <linux/types.h>
+
+#define SYMBOL_CRC(sym, crc, sec)   \
+	u32 __section("___kcrctab" sec "+" #sym) __crc_##sym = crc
+
+#endif /* __LINUX_EXPORT_INTERNAL_H__ */
diff --git a/include/linux/export.h b/include/linux/export.h
index 27d848712b90..6c8e24e723bd 100644
--- a/include/linux/export.h
+++ b/include/linux/export.h
@@ -11,6 +11,14 @@
  * hackers place grumpy comments in header files.
  */
 
+/*
+ * This comment block is used by fixdep. Please do not remove.
+ *
+ * When CONFIG_MODVERSIONS is changed from n to y, all source files having
+ * EXPORT_SYMBOL variants must be re-compiled because genksyms is run as a
+ * side effect of the .o build rule.
+ */
+
 #ifndef __ASSEMBLY__
 #ifdef MODULE
 extern struct module __this_module;
@@ -19,26 +27,6 @@ extern struct module __this_module;
 #define THIS_MODULE ((struct module *)0)
 #endif
 
-#ifdef CONFIG_MODVERSIONS
-/* Mark the CRC weak since genksyms apparently decides not to
- * generate a checksums for some symbols */
-#if defined(CONFIG_MODULE_REL_CRCS)
-#define __CRC_SYMBOL(sym, sec)						\
-	asm("	.section \"___kcrctab" sec "+" #sym "\", \"a\"	\n"	\
-	    "	.weak	__crc_" #sym "				\n"	\
-	    "	.long	__crc_" #sym " - .			\n"	\
-	    "	.previous					\n")
-#else
-#define __CRC_SYMBOL(sym, sec)						\
-	asm("	.section \"___kcrctab" sec "+" #sym "\", \"a\"	\n"	\
-	    "	.weak	__crc_" #sym "				\n"	\
-	    "	.long	__crc_" #sym "				\n"	\
-	    "	.previous					\n")
-#endif
-#else
-#define __CRC_SYMBOL(sym, sec)
-#endif
-
 #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
 #include <linux/compiler.h>
 /*
@@ -85,7 +73,6 @@ struct kernel_symbol {
 /*
  * For every exported symbol, do the following:
  *
- * - If applicable, place a CRC entry in the __kcrctab section.
  * - Put the name of the symbol and namespace (empty string "" for none) in
  *   __ksymtab_strings.
  * - Place a struct kernel_symbol entry in the __ksymtab section.
@@ -98,7 +85,6 @@ struct kernel_symbol {
 	extern typeof(sym) sym;							\
 	extern const char __kstrtab_##sym[];					\
 	extern const char __kstrtabns_##sym[];					\
-	__CRC_SYMBOL(sym, sec);							\
 	asm("	.section \"__ksymtab_strings\",\"aMS\",%progbits,1	\n"	\
 	    "__kstrtab_" #sym ":					\n"	\
 	    "	.asciz 	\"" #sym "\"					\n"	\
diff --git a/init/Kconfig b/init/Kconfig
index ddcbefe535e9..f5b14318dfcb 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -2136,10 +2136,6 @@ config ASM_MODVERSIONS
 	  assembly. This can be enabled only when the target architecture
 	  supports it.
 
-config MODULE_REL_CRCS
-	bool
-	depends on MODVERSIONS
-
 config MODULE_SRCVERSION_ALL
 	bool "Source checksum for all modules"
 	help
diff --git a/kernel/module.c b/kernel/module.c
index 6cea788fd965..c9e2342da28e 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -1231,11 +1231,6 @@ static int try_to_force_load(struct module *mod, const char *reason)
 
 #ifdef CONFIG_MODVERSIONS
 
-static u32 resolve_rel_crc(const s32 *crc)
-{
-	return *(u32 *)((void *)crc + *crc);
-}
-
 static int check_version(const struct load_info *info,
 			 const char *symname,
 			 struct module *mod,
@@ -1264,10 +1259,7 @@ static int check_version(const struct load_info *info,
 		if (strcmp(versions[i].name, symname) != 0)
 			continue;
 
-		if (IS_ENABLED(CONFIG_MODULE_REL_CRCS))
-			crcval = resolve_rel_crc(crc);
-		else
-			crcval = *crc;
+		crcval = *crc;
 		if (versions[i].crc == crcval)
 			return 1;
 		pr_debug("Found checksum %X vs module %lX\n",
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index a1023868775f..ddd9080fc028 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -128,7 +128,6 @@ $(obj)/%.i: $(src)/%.c FORCE
 
 genksyms = scripts/genksyms/genksyms		\
 	$(if $(1), -T $(2))			\
-	$(if $(CONFIG_MODULE_REL_CRCS), -R)	\
 	$(if $(KBUILD_PRESERVE), -p)		\
 	-r $(or $(wildcard $(2:.symtypes=.symref)), /dev/null)
 
@@ -162,19 +161,11 @@ ifdef CONFIG_MODVERSIONS
 # o if <file>.o doesn't contain a __ksymtab version, i.e. does
 #   not export symbols, it's done.
 # o otherwise, we calculate symbol versions using the good old
-#   genksyms on the preprocessed source and postprocess them in a way
-#   that they are usable as a linker script
-# o generate .tmp_<file>.o from <file>.o using the linker to
-#   replace the unresolved symbols __crc_exported_symbol with
-#   the actual value of the checksum generated by genksyms
-# o remove .tmp_<file>.o to <file>.o
+#   genksyms on the preprocessed source and dump them into the .cmd file.
+# o modpost will extract versions from that file and create *.c files that will
+#   be compiled and linked to the kernel and/or modules.
 
-# Generate .o.symversions files for each .o with exported symbols, and link these
-# to the kernel and/or modules at the end.
-
-genksyms_format_rel_crc := [^_]*__crc_\([^ ]*\) = \.; LONG(\([^)]*\)).*
-genksyms_format_normal := __crc_\(.*\) = \(.*\);
-genksyms_format := $(if $(CONFIG_MODULE_REL_CRCS),$(genksyms_format_rel_crc),$(genksyms_format_normal))
+genksyms_format := __crc_\(.*\) = \(.*\);
 
 gen_symversions =								\
 	if $(NM) $@ 2>/dev/null | grep -q __ksymtab; then			\
@@ -188,12 +179,6 @@ gen_symversions =								\
 
 cmd_gen_symversions_c =	$(call gen_symversions,c)
 
-cmd_modversions =								\
-	if [ -r $@.symversions ]; then						\
-		$(LD) $(KBUILD_LDFLAGS) -r -o $(@D)/.tmp_$(@F) $@ 		\
-			-T $@.symversions;					\
-		mv -f $(@D)/.tmp_$(@F) $@;					\
-	fi
 endif
 
 ifdef CONFIG_FTRACE_MCOUNT_USE_RECORDMCOUNT
@@ -273,7 +258,6 @@ define rule_cc_o_c
 	$(call cmd,checkdoc)
 	$(call cmd,gen_objtooldep)
 	$(call cmd,gen_symversions_c)
-	$(if $(CONFIG_LTO_CLANG),,$(call cmd,modversions))
 	$(call cmd,record_mcount)
 endef
 
@@ -282,7 +266,6 @@ define rule_as_o_S
 	$(call cmd,gen_ksymdeps)
 	$(call cmd,gen_objtooldep)
 	$(call cmd,gen_symversions_S)
-	$(call cmd,modversions)
 endef
 
 # Built-in and composite module parts
@@ -296,8 +279,6 @@ ifneq ($(CONFIG_LTO_CLANG)$(CONFIG_X86_KERNEL_IBT),)
 quiet_cmd_cc_prelink_modules = LD [M]  $@
       cmd_cc_prelink_modules =						\
 	$(LD) $(ld_flags) -r -o $@					\
-               $(shell [ -s $(@:.prelink.o=.o.symversions) ] &&		\
-                       echo -T $(@:.prelink.o=.o.symversions))		\
 		--whole-archive $(filter-out FORCE,$^)			\
 		$(cmd_objtool)
 
diff --git a/scripts/genksyms/genksyms.c b/scripts/genksyms/genksyms.c
index 4827c5abe5b7..6e6933ae7911 100644
--- a/scripts/genksyms/genksyms.c
+++ b/scripts/genksyms/genksyms.c
@@ -33,7 +33,7 @@ char *cur_filename;
 int in_source_file;
 
 static int flag_debug, flag_dump_defs, flag_reference, flag_dump_types,
-	   flag_preserve, flag_warnings, flag_rel_crcs;
+	   flag_preserve, flag_warnings;
 
 static int errors;
 static int nsyms;
@@ -681,10 +681,7 @@ void export_symbol(const char *name)
 			fputs(">\n", debugfile);
 
 		/* Used as a linker script. */
-		printf(!flag_rel_crcs ? "__crc_%s = 0x%08lx;\n" :
-		       "SECTIONS { .rodata : ALIGN(4) { "
-		       "__crc_%s = .; LONG(0x%08lx); } }\n",
-		       name, crc);
+		printf("__crc_%s = 0x%08lx;\n", name, crc);
 	}
 }
 
@@ -733,7 +730,6 @@ static void genksyms_usage(void)
 	      "  -q, --quiet           Disable warnings (default)\n"
 	      "  -h, --help            Print this message\n"
 	      "  -V, --version         Print the release version\n"
-	      "  -R, --relative-crc    Emit section relative symbol CRCs\n"
 #else				/* __GNU_LIBRARY__ */
 	      "  -s                    Select symbol prefix\n"
 	      "  -d                    Increment the debug level (repeatable)\n"
@@ -745,7 +741,6 @@ static void genksyms_usage(void)
 	      "  -q                    Disable warnings (default)\n"
 	      "  -h                    Print this message\n"
 	      "  -V                    Print the release version\n"
-	      "  -R                    Emit section relative symbol CRCs\n"
 #endif				/* __GNU_LIBRARY__ */
 	      , stderr);
 }
@@ -766,14 +761,13 @@ int main(int argc, char **argv)
 		{"preserve", 0, 0, 'p'},
 		{"version", 0, 0, 'V'},
 		{"help", 0, 0, 'h'},
-		{"relative-crc", 0, 0, 'R'},
 		{0, 0, 0, 0}
 	};
 
-	while ((o = getopt_long(argc, argv, "s:dwqVDr:T:phR",
+	while ((o = getopt_long(argc, argv, "s:dwqVDr:T:ph",
 				&long_opts[0], NULL)) != EOF)
 #else				/* __GNU_LIBRARY__ */
-	while ((o = getopt(argc, argv, "s:dwqVDr:T:phR")) != EOF)
+	while ((o = getopt(argc, argv, "s:dwqVDr:T:ph")) != EOF)
 #endif				/* __GNU_LIBRARY__ */
 		switch (o) {
 		case 'd':
@@ -813,9 +807,6 @@ int main(int argc, char **argv)
 		case 'h':
 			genksyms_usage();
 			return 0;
-		case 'R':
-			flag_rel_crcs = 1;
-			break;
 		default:
 			genksyms_usage();
 			return 1;
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index eceb3ee7ec06..6aee2401f3ad 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -88,11 +88,6 @@ modpost_link()
 		gen_initcalls
 		lds="-T .tmp_initcalls.lds"
 
-		if is_enabled CONFIG_MODVERSIONS; then
-			gen_symversions
-			lds="${lds} -T .tmp_symversions.lds"
-		fi
-
 		# This might take a while, so indicate that we're doing
 		# an LTO link
 		info LTO ${1}
@@ -183,6 +178,10 @@ vmlinux_link()
 		libs="${KBUILD_VMLINUX_LIBS}"
 	fi
 
+	if is_enabled CONFIG_MODULES; then
+		objs="${objs} .vmlinux.export.o"
+	fi
+
 	if [ "${SRCARCH}" = "um" ]; then
 		wl=-Wl,
 		ld="${CC}"
@@ -312,6 +311,7 @@ cleanup()
 	rm -f vmlinux.o
 	rm -f .vmlinux.d
 	rm -f .vmlinux.objs
+	rm -f .vmlinux.export.c
 }
 
 # Use "make V=1" to debug this script
@@ -373,6 +373,14 @@ if is_enabled CONFIG_DEBUG_INFO_BTF; then
 	fi
 fi
 
+if is_enabled CONFIG_MODULES; then
+	info CC .vmlinux.export.c
+	${CC} ${NOSTDINC_FLAGS} ${LINUXINCLUDE} \
+	      ${KBUILD_CPPFLAGS} ${KBUILD_CFLAGS} \
+	      ${KBUILD_CFLAGS_KERNEL} ${CFLAGS_KERNEL} \
+	      -c -o .vmlinux.export.o .vmlinux.export.c
+fi
+
 kallsymso=""
 kallsymso_prev=""
 kallsyms_vmlinux=""
diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index 54f957952723..b46653d46e3d 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -1040,6 +1040,7 @@ static void add_header(struct buffer *b, struct module *mod)
 	buf_printf(b, "#define INCLUDE_VERMAGIC\n");
 	buf_printf(b, "#include <linux/build-salt.h>\n");
 	buf_printf(b, "#include <linux/elfnote-lto.h>\n");
+	buf_printf(b, "#include <linux/export-internal.h>\n");
 	buf_printf(b, "#include <linux/vermagic.h>\n");
 	buf_printf(b, "#include <linux/compiler.h>\n");
 	buf_printf(b, "\n");
@@ -1074,20 +1075,26 @@ static void add_header(struct buffer *b, struct module *mod)
 		buf_printf(b, "\nMODULE_INFO(staging, \"Y\");\n");
 }
 
-static void check_symversions(struct module *mod)
+static void add_exported_symbols(struct buffer *buf, struct module *mod)
 {
 	struct symbol *sym;
 
 	if (!modversions)
 		return;
 
+	/* record CRCs for exported symbols */
+	buf_printf(buf, "\n");
 	list_for_each_entry(sym, &mod->exported_symbols, list) {
 		if (!sym->crc_valid) {
 			warn("EXPORT symbol \"%s\" [%s%s] version generation failed, symbol will not be versioned.\n"
 			     "Is \"%s\" prototyped in <asm/asm-prototypes.h>?\n",
 			     sym->name, mod->name, mod->is_vmlinux ? "" : ".ko",
 			     sym->name);
+			continue;
 		}
+
+		buf_printf(buf, "SYMBOL_CRC(%s, 0x%08x, \"%s\");\n",
+			   sym->name, sym->crc, sym->is_gpl_only ? "_gpl" : "");
 	}
 }
 
@@ -1224,6 +1231,18 @@ static void write_if_changed(struct buffer *b, const char *fname)
 	write_buf(b, fname);
 }
 
+static void write_vmlinux_export_c_file(struct module *mod)
+{
+	struct buffer buf = { };
+
+	buf_printf(&buf,
+		   "#include <linux/export-internal.h>\n");
+
+	add_exported_symbols(&buf, mod);
+	write_if_changed(&buf, ".vmlinux.export.c");
+	free(buf.p);
+}
+
 /* do sanity checks, and generate *.mod.c file */
 static void write_mod_c_file(struct module *mod)
 {
@@ -1235,6 +1254,7 @@ static void write_mod_c_file(struct module *mod)
 	check_exports(mod);
 
 	add_header(&buf, mod);
+	add_exported_symbols(&buf, mod);
 	add_versions(&buf, mod);
 	add_depends(&buf, mod);
 	add_moddevtable(&buf, mod);
@@ -1432,9 +1452,9 @@ int main(int argc, char **argv)
 		if (mod->from_dump)
 			continue;
 
-		check_symversions(mod);
-
-		if (!mod->is_vmlinux)
+		if (mod->is_vmlinux)
+			write_vmlinux_export_c_file(mod);
+		else
 			write_mod_c_file(mod);
 	}
 
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220508190631.2386038-7-masahiroy%40kernel.org.
