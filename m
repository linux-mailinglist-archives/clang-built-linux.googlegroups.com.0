Return-Path: <clang-built-linux+bncBDC2RCVE24NRBLEDVCFQMGQEYTUTTLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 6384142FE34
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Oct 2021 00:33:18 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id 17-20020aca1111000000b0027368cbf687sf5930592oir.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Oct 2021 15:33:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634337197; cv=pass;
        d=google.com; s=arc-20160816;
        b=YGopiRJnj1Mv4BHmCbj13dQbjuc5MIBmIL9PLGWijTsqQA9PZRviEfz+6bqIWfcqyU
         4IXkqKGOKfle5tVh9dZpP1MHt9w39w2qgbkloR/1Z1kN2LDZFLgcUaXQr6ZvUqhL2ATR
         WcKtkxivwCPAlXwEgu9hhwzprrjNfG0UXhrXdHyyR1Bb4SRQI7RUPJidsaSSBwkvNspS
         ODuCpmAKRz5eF/LkbS/yJGy3X6saYwyrkrOREgHiBvZxzZKTGk+bWLrH5t7OisgLbLIQ
         HwJ7nwoRZiR7gdVXDUb6BEW8lCoM15MHvtQ2hYACPcqFxHHUCph0JOVt/nlp8X7Ay85p
         9H/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=7FTD0cyr3VC/JE9PA9ErS9X6d7CMRApUSzKwe89IKFs=;
        b=EZJwDvYzFAK8Bz/KiAcgv/6Sf5aqx6+y/wE6DwvWIIM7FvoJdn8NR8q9Nba+ndkRzb
         joBbK4W7JqCMKMnxYab3WMG+NGZbcGjFUaf822O3RpAAApKg777O0oVHRxJdTIOHeJig
         TgOUsjVn0YiVkEbP1uKo0NbzNBfHAwmTrZInFlQmV7o20aS9anzsCX9zWBBDTtNPaQtG
         5gN/ocKSu7hWF6yct8YyCDuFbH1gjVYaRxvhuLJJFq2pe9RmnfTKCOksI8Lwhfs82M12
         qYDgiQld9OQuqLjzIYhbFV3WdPfvOMf9H6wBvwSg9Mdn6Al9OnaYS5OQYvRe5KFh3CJm
         2vNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.44 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7FTD0cyr3VC/JE9PA9ErS9X6d7CMRApUSzKwe89IKFs=;
        b=gPoRUIxw29lnvgMwECHFJ/kM/3J+iet/cQSz/alxYWLmKELmYXTD8LyBbVkIKu5jD5
         yS1Wb0Io013KFnrhUhoTZNBudxgeLticKz9xh+Yikd0RMJGKx96kmP6vB1c4j22pQm6Z
         eowN+nEEQ0U6fg6+/qMNhTZDqeARllLgmwohSrnsSkblllFIS/vP+rXH7yZxW3WEEqkg
         W0nVOhEbKUOSewE6J1bMRloNpUnSsdxqUuSB8J6iRudLSm36UiSN9XTDUfDfncp9DQTr
         Hk9l7kj7Yd3L1A4d5kZhix+03gM9GZzwfevDwaTlOZUDrpaC4c1qteWZoe05hC97qH/5
         43eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7FTD0cyr3VC/JE9PA9ErS9X6d7CMRApUSzKwe89IKFs=;
        b=P9COtEbiEFKGkLtJUgOVZeCdYwJ1fGouRGDP4qB1SWLq5s81EvnjU8kwoMViNkL0UI
         Mx11lfQ0PaQSBMT+TrK7uaym7Bm9yzMndyBttEAzaqT/I1mafPGEV7Unl0GRunifSIF5
         3SfZcTuHp92RuLv5BXueP5/r6bFalaaNMP0rzlk9CvzrJDf8WAj46pXR2p/+O0oGQpbl
         jr/OcqUFnRnkcva/Ouii3b5CJKrG1db/c7u2zN1YJ6vMujuj5c2uY3uSECepzL0wTefT
         UNKo7zqZbLSTUxmLOZyUiMo10xSZZq4RKRDQXzZPDuD59MwQZf0RLA9tTdSN3eP1TNlT
         kMgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Tp3Z9WVROF2M7ykD1aWu8Hfq/bY1POnJgcEZI33CiXViCaVrY
	jtNAxVhAQkz0A2kC3e5Q7xQ=
X-Google-Smtp-Source: ABdhPJwlPcVJVuDyAMAouKiihKAACyUkMA3nUfRpYPbVWzCiDzJ8FgAWw02+tDr4iYBFQn0FU0jFTg==
X-Received: by 2002:a05:6830:1e11:: with SMTP id s17mr10628844otr.100.1634337196957;
        Fri, 15 Oct 2021 15:33:16 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:39c1:: with SMTP id g184ls2773603oia.8.gmail; Fri, 15
 Oct 2021 15:33:16 -0700 (PDT)
X-Received: by 2002:aca:d741:: with SMTP id o62mr18554207oig.62.1634337196528;
        Fri, 15 Oct 2021 15:33:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634337196; cv=none;
        d=google.com; s=arc-20160816;
        b=OBq6EGhJSrKhdXEQpOfNbkP6H+XaQVGvOtl1dSp6Z3KgkFgwnUPkM9PKE2O27i06VA
         Bbj57NQd304UT3JuXfJIeNB6DyD3A5rZPbzFx/K2EMrR7o4VFF/bHhoaOvWHSBxkWcYi
         IgffFyrUrjoktGAwCT1d7BvosYL/bRbxC/p7mnOe20A2FVKdGE3WIO26LKCOiuMt3XXY
         OuU4EZhxgzs08dlgGPHfOrKLTJC2u6h971eTuK0lA5hD0SQIjRQko5ysVyjrFbuvnvv/
         kcB5k5DXK9yk0HrQN1ZxjIw9WZ9wxtExSdXAzDHlKxU5uWS7955BUo0Pt7pvA+eGZvXr
         OmZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=NNCbdQ8Xy/PV3uVfPPjoiko169LoGsH7bJuCoeQ94tg=;
        b=ZXKiRkfyMk2wbhfuAG2E6waaAjVEWpV6EGli2aBSozQO0O4OaULkUZg4jdl7KwXxxA
         bdJM722bWLsYfcT7j7LGdWNezGbNN7xOmUL8WIH2rDsDrb83rk4geBmnuiNm68bTWYsA
         rH4K4RvxBGLyn0939YNHZrL5VajuiLw1C3Mn8nLIBufnGniWAxooEkFNn8zYlBKH/UXs
         xJBeZAPoABKYW/c5BskiUcAv/QlFQXhMyOyDFTZM2Ou9DDrKLbPXzmDVse8qgByrTULW
         rhUp+LFXKMh2T07QcebTFAtjlR9PiaglSqxooWtF/fqKpGhd1uoF5ptpOhohDnKpIpWc
         drdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.44 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-44.freemail.mail.aliyun.com (out30-44.freemail.mail.aliyun.com. [115.124.30.44])
        by gmr-mx.google.com with ESMTPS id u4si515557otj.2.2021.10.15.15.33.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 15:33:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.44 as permitted sender) client-ip=115.124.30.44;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R141e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04394;MF=ashimida@linux.alibaba.com;NM=1;PH=DS;RN=29;SR=0;TI=SMTPD_---0UsFOD7m_1634337182;
Received: from localhost(mailfrom:ashimida@linux.alibaba.com fp:SMTPD_---0UsFOD7m_1634337182)
          by smtp.aliyun-inc.com(127.0.0.1);
          Sat, 16 Oct 2021 06:33:10 +0800
From: Dan Li <ashimida@linux.alibaba.com>
To: masahiroy@kernel.org,
	michal.lkml@markovi.net,
	catalin.marinas@arm.com,
	will@kernel.org,
	keescook@chromium.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	tglx@linutronix.de,
	akpm@linux-foundation.org,
	samitolvanen@google.com,
	frederic@kernel.org,
	rppt@kernel.org,
	mark.rutland@arm.com,
	yifeifz2@illinois.edu,
	rostedt@goodmis.org,
	viresh.kumar@linaro.org,
	andreyknvl@gmail.com,
	colin.king@canonical.com,
	ojeda@kernel.org,
	luc.vanoostenryck@gmail.com,
	elver@google.com,
	nivedita@alum.mit.edu,
	ardb@kernel.org
Cc: linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-hardening@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Dan Li <ashimida@linux.alibaba.com>
Subject: [PATCH] [PATCH V5]ARM64: SCS: Add gcc plugin to support Shadow Call Stack
Date: Sat, 16 Oct 2021 06:33:00 +0800
Message-Id: <1634337180-92127-1-git-send-email-ashimida@linux.alibaba.com>
X-Mailer: git-send-email 2.7.4
X-Original-Sender: ashimida@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.44 as
 permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

This patch supports gcc-based SCS protection on ARM64 by adding a plugin.

For each function that x30 will be pushed onto the stack during execution,
this plugin, similar to gcc's pac implementation, will normally:
1) insert "str x30, [x18], #8" at the beginning of function's prologue
2) insert "ldr x30, [x18, #-8]!" immediately before function's
epilogue return/sibling calls

If pac is enabled, scs push/pop will be inserted between paciasp/autiasp.

At present, this patch has been successfully compiled in the following
gcc versions based on defconfig with kernel 5.14 and startup normally
with commands:

make ARCH=arm64 defconfig
./scripts/config -e CONFIG_GCC_PLUGINS -e CONFIG_SHADOW_CALL_STACK \
-e CONFIG_GCC_PLUGIN_SHADOW_CALL_STACK
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-

Tested gcc version:
* 6.3.1
* 7.3.1
* 7.5.0
* 8.2.1
* 9.2.0
* 10.3.1

A similar feature request has also been sent to gcc.
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=102768

Signed-off-by: Dan Li <ashimida@linux.alibaba.com>
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

---
V5:
- add gcc feature request's URL in commit message

V4:
- change CC_HAVE_SHADOW_CALL_STACK def_bool

V3:
- fix incorrect description of the compilation option

V2:
- fix incorrect config dependency
- tested against DYNAMIC_FTRACE_WITH_REGS
- add support for sibling call
- add support for ARM64_PTR_AUTH_KERNEL/ARM64_BTI_KERNEL

FYI:
- The kernel compiled by Linaro GCC 7.3-2018.05 runs for more than 10
days, ltp> 24 hours without crash.
- This function can be used to test whether the shadow stack is effective:
//noinline void __noscs scs_test(void)
noinline void scs_test(void)
{
    register unsigned long *sp asm("sp");
    unsigned long * lr = sp + 1;

    asm volatile("":::"x30");
    *lr = 0;
}

when compiled with:
CONFIG_DYNAMIC_FTRACE_WITH_REGS=y
CONFIG_ARM64_PTR_AUTH_KERNEL=y
CONFIG_ARM64_BTI_KERNEL=y

ffff800010013b60 <scs_test>:
ffff800010013b60:       d503245f        bti     c
ffff800010013b64:       d503201f        nop
ffff800010013b68:       d503201f        nop
ffff800010013b6c:       d503233f        paciasp
ffff800010013b70:       f800865e        str     x30, [x18], #8
ffff800010013b74:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
ffff800010013b78:       910003fd        mov     x29, sp
ffff800010013b7c:       910003e0        mov     x0, sp
ffff800010013b80:       f900041f        str     xzr, [x0, #8]
ffff800010013b84:       a8c17bfd        ldp     x29, x30, [sp], #16
ffff800010013b88:       f85f8e5e        ldr     x30, [x18, #-8]!
ffff800010013b8c:       d50323bf        autiasp
ffff800010013b90:       d65f03c0        ret

If SCS protection is enabled, this function will return normally.
If the function has __noscs attribute (scs disabled), it will crash due to 0
address access.

 Makefile                               |  20 ++-
 arch/Kconfig                           |  13 +-
 arch/arm64/Kconfig                     |   4 +-
 include/linux/compiler-gcc.h           |   4 +
 scripts/Makefile.gcc-plugins           |   7 +
 scripts/gcc-plugins/Kconfig            |   9 +
 scripts/gcc-plugins/arm64_scs_plugin.c | 299 +++++++++++++++++++++++++++++++++
 scripts/gcc-plugins/gcc-common.h       |   4 +
 8 files changed, 346 insertions(+), 14 deletions(-)
 create mode 100644 scripts/gcc-plugins/arm64_scs_plugin.c

diff --git a/Makefile b/Makefile
index 61741e9..8039e61 100644
--- a/Makefile
+++ b/Makefile
@@ -923,12 +923,6 @@ KBUILD_CFLAGS_KERNEL += -ffunction-sections -fdata-sections
 LDFLAGS_vmlinux += --gc-sections
 endif
 
-ifdef CONFIG_SHADOW_CALL_STACK
-CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
-KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
-export CC_FLAGS_SCS
-endif
-
 ifdef CONFIG_LTO_CLANG
 ifdef CONFIG_LTO_CLANG_THIN
 CC_FLAGS_LTO	:= -flto=thin -fsplit-lto-unit
@@ -1034,6 +1028,20 @@ include-$(CONFIG_GCC_PLUGINS)	+= scripts/Makefile.gcc-plugins
 
 include $(addprefix $(srctree)/, $(include-y))
 
+ifdef CONFIG_SHADOW_CALL_STACK
+
+ifdef CONFIG_CC_IS_CLANG
+CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
+endif
+
+ifdef CONFIG_CC_IS_GCC
+CC_FLAGS_SCS	:= $(ENABLE_SHADOW_CALL_STACK_PLUGIN)
+endif
+
+KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
+export CC_FLAGS_SCS
+endif
+
 # scripts/Makefile.gcc-plugins is intentionally included last.
 # Do not add $(call cc-option,...) below this line. When you build the kernel
 # from the clean source tree, the GCC plugins do not exist at this point.
diff --git a/arch/Kconfig b/arch/Kconfig
index 98db634..1065cd0 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -593,14 +593,15 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
 	  switching.
 
 config SHADOW_CALL_STACK
-	bool "Clang Shadow Call Stack"
-	depends on CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK
+	bool "Shadow Call Stack"
+	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
 	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
 	help
-	  This option enables Clang's Shadow Call Stack, which uses a
-	  shadow stack to protect function return addresses from being
-	  overwritten by an attacker. More information can be found in
-	  Clang's documentation:
+	  This option enables Shadow Call Stack(supported as a compiler
+	  option in the case of clang, supported as a plugin in the case
+	  of gcc), which uses a shadow stack to protect function return
+	  addresses from being overwritten by an attacker.
+	  More information can be found in Clang's documentation:
 
 	    https://clang.llvm.org/docs/ShadowCallStack.html
 
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 62c3c1d..8aaa16e 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -81,7 +81,7 @@ config ARM64
 	select ARCH_SUPPORTS_DEBUG_PAGEALLOC
 	select ARCH_SUPPORTS_HUGETLBFS
 	select ARCH_SUPPORTS_MEMORY_FAILURE
-	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
+	select ARCH_SUPPORTS_SHADOW_CALL_STACK if (CC_HAVE_SHADOW_CALL_STACK || GCC_PLUGIN_SHADOW_CALL_STACK)
 	select ARCH_SUPPORTS_LTO_CLANG if CPU_LITTLE_ENDIAN
 	select ARCH_SUPPORTS_LTO_CLANG_THIN
 	select ARCH_SUPPORTS_CFI_CLANG
@@ -1062,7 +1062,7 @@ config ARCH_HAS_FILTER_PGPROT
 
 # Supported by clang >= 7.0
 config CC_HAVE_SHADOW_CALL_STACK
-	def_bool $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)
+	def_bool CC_IS_CLANG || $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)
 
 config PARAVIRT
 	bool "Enable paravirtualization code"
diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index cb9217f..426c8e5 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -50,6 +50,10 @@
 #define __latent_entropy __attribute__((latent_entropy))
 #endif
 
+#if defined(SHADOW_CALL_STACK_PLUGIN) && !defined(__CHECKER__)
+#define __noscs __attribute__((no_shadow_call_stack))
+#endif
+
 /*
  * calling noreturn functions, __builtin_unreachable() and __builtin_trap()
  * confuse the stack allocation in gcc, leading to overly large stack
diff --git a/scripts/Makefile.gcc-plugins b/scripts/Makefile.gcc-plugins
index 952e468..b45bd8c 100644
--- a/scripts/Makefile.gcc-plugins
+++ b/scripts/Makefile.gcc-plugins
@@ -46,6 +46,13 @@ ifdef CONFIG_GCC_PLUGIN_ARM_SSP_PER_TASK
 endif
 export DISABLE_ARM_SSP_PER_TASK_PLUGIN
 
+gcc-plugin-$(CONFIG_GCC_PLUGIN_SHADOW_CALL_STACK) += arm64_scs_plugin.so
+gcc-plugin-cflags-$(CONFIG_GCC_PLUGIN_SHADOW_CALL_STACK)	\
+		+= -DSHADOW_CALL_STACK_PLUGIN
+ifdef CONFIG_GCC_PLUGIN_SHADOW_CALL_STACK
+    ENABLE_SHADOW_CALL_STACK_PLUGIN += -fplugin-arg-arm64_scs_plugin-enable
+endif
+
 # All the plugin CFLAGS are collected here in case a build target needs to
 # filter them out of the KBUILD_CFLAGS.
 GCC_PLUGINS_CFLAGS := $(strip $(addprefix -fplugin=$(objtree)/scripts/gcc-plugins/, $(gcc-plugin-y)) $(gcc-plugin-cflags-y))
diff --git a/scripts/gcc-plugins/Kconfig b/scripts/gcc-plugins/Kconfig
index ab9eb4c..92f7f76 100644
--- a/scripts/gcc-plugins/Kconfig
+++ b/scripts/gcc-plugins/Kconfig
@@ -19,6 +19,15 @@ menuconfig GCC_PLUGINS
 
 if GCC_PLUGINS
 
+config GCC_PLUGIN_SHADOW_CALL_STACK
+	bool "Plugin for ARM64 Shadow Call Stack"
+	depends on (!CC_HAVE_SHADOW_CALL_STACK) && ARM64
+	help
+	  This plugin is used to support kernel CONFIG_SHADOW_CALL_STACK
+	  compiled by gcc. Its principle is basically the same as that of
+	  CLANG.
+	  For more information, please refer to "config SHADOW_CALL_STACK"
+
 config GCC_PLUGIN_CYC_COMPLEXITY
 	bool "Compute the cyclomatic complexity of a function" if EXPERT
 	depends on !COMPILE_TEST	# too noisy
diff --git a/scripts/gcc-plugins/arm64_scs_plugin.c b/scripts/gcc-plugins/arm64_scs_plugin.c
new file mode 100644
index 0000000..bb72baa
--- /dev/null
+++ b/scripts/gcc-plugins/arm64_scs_plugin.c
@@ -0,0 +1,299 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "gcc-common.h"
+
+#define v_info(fmt, ...)							\
+	do {									\
+		if (verbose)							\
+			fprintf(stderr, "[SCS]:" fmt,  ## __VA_ARGS__);	\
+	} while (0)
+
+#define NOSCS_ATTR_STR  "no_shadow_call_stack"
+#define SCS_ASM_PUSH_STR "str x30, [x18], #8\n\t"
+#define SCS_ASM_POP_STR  "ldr x30, [x18, #-8]!\n\t"
+
+__visible int plugin_is_GPL_compatible;
+
+static struct plugin_info arm64_scs_plugin_info = {
+	.version	= "20210926vanilla",
+	.help		= "enable\tactivate plugin\n"
+			  "verbose\tprint all debug infos\n",
+};
+
+static bool verbose;
+
+#if BUILDING_GCC_VERSION >= 10001
+enum insn_code paciasp_num = CODE_FOR_paciasp;
+enum insn_code autiasp_num = CODE_FOR_autiasp;
+#elif BUILDING_GCC_VERSION >= 7003
+enum insn_code paciasp_num = CODE_FOR_pacisp;
+enum insn_code autiasp_num = CODE_FOR_autisp;
+#else
+enum insn_code paciasp_num = CODE_FOR_nothing;
+enum insn_code autiasp_num = CODE_FOR_nothing;
+#define TARGET_ARMV8_3 0
+#endif
+
+static rtx_insn * (*old_gen_prologue)(void);
+static rtx_insn * (*old_gen_epilogue)(void);
+static rtx_insn * (*old_gen_sibcall_epilogue)(void);
+
+static rtx gen_scs_push(location_t loc)
+{
+	rtx insn = gen_rtx_ASM_INPUT_loc(VOIDmode, ggc_strdup(SCS_ASM_PUSH_STR), loc);
+
+	MEM_VOLATILE_P(insn) = 1;
+	return insn;
+}
+
+static rtx gen_scs_pop(location_t loc)
+{
+	rtx insn = gen_rtx_ASM_INPUT_loc(VOIDmode, ggc_strdup(SCS_ASM_POP_STR), loc);
+
+	MEM_VOLATILE_P(insn) = 1;
+	return insn;
+}
+
+static bool scs_func_ignored(void)
+{
+	bool is_ignored;
+
+#if BUILDING_GCC_VERSION >= 8002
+	is_ignored = !cfun->machine->frame.emit_frame_chain;
+#else
+	is_ignored = !frame_pointer_needed;
+#endif
+
+	/*
+	 * Functions that do not push LR into stack are not protected.
+	 * Functions that call __builin_eh_return is not protected(consistent with gcc's PAC).
+	 */
+	if (is_ignored || crtl->calls_eh_return) {
+		v_info("No protection code inserted into func:%s in file:%s\n",
+			get_name(current_function_decl), main_input_filename);
+		return 1;
+	}
+
+	/* Functions with attribute NOSCS_ATTR_STR need to be unprotected */
+	if (lookup_attribute(NOSCS_ATTR_STR, DECL_ATTRIBUTES(current_function_decl))) {
+		v_info("No protection code inserted into %s func:%s in file:%s\n", NOSCS_ATTR_STR,
+				get_name(current_function_decl), main_input_filename);
+		return 1;
+	}
+
+	return 0;
+}
+
+static rtx_insn *search_insn(enum insn_code code, rtx_insn *seq)
+{
+	rtx_insn *insn;
+
+	for (insn = get_insns(); insn; insn = NEXT_INSN(insn)) {
+		if (code == recog(PATTERN(insn), insn, 0))
+			return insn;
+	}
+
+	return NULL;
+}
+
+static bool scs_return_address_signing_enabled(void)
+{
+#if BUILDING_GCC_VERSION >= 7003
+	return aarch64_return_address_signing_enabled();
+#else
+	return false;
+#endif
+}
+
+static rtx_insn *scs_gen_prologue(void)
+{
+	rtx_insn *seq = NULL, *mark;
+	rtx tmp;
+	bool ret_sign_enabled;
+
+	if (old_gen_prologue)
+		seq = old_gen_prologue();
+
+	if ((!seq) || scs_func_ignored())
+		return seq;
+
+	ret_sign_enabled = scs_return_address_signing_enabled();
+	tmp = gen_scs_push(RESERVED_LOCATION_COUNT);
+
+	start_sequence();
+	emit_insn(seq);
+
+	if (ret_sign_enabled) {
+		/* For functions with pac enabled, insert scs push after the 'paciasp' insn */
+		mark = search_insn(paciasp_num, get_insns());
+		if (!mark)
+			error(G_("Non-standard insn seqs found:\n"
+				"__noscs attr should be added on func:%s,file:%s\n"),
+				get_name(current_function_decl), main_input_filename);
+
+		emit_insn_after(tmp, mark);
+	} else {
+		/* For functions that do not enable pac, insert scs push at the start of insns */
+		mark = get_insns();
+		emit_insn_before(tmp, mark);
+	}
+
+	seq = get_insns();
+	end_sequence();
+	return seq;
+}
+
+static rtx_insn *scs_gen_epilogue(void)
+{
+	rtx_insn *seq = NULL, *mark;
+	rtx tmp;
+	bool ret_sign_enabled;
+
+	if (old_gen_epilogue)
+		seq = old_gen_epilogue();
+
+	if ((!seq) || scs_func_ignored())
+		return seq;
+
+	ret_sign_enabled = scs_return_address_signing_enabled();
+	tmp = gen_scs_pop(RESERVED_LOCATION_COUNT);
+
+	start_sequence();
+	emit_insn(seq);
+
+	if (ret_sign_enabled && (!TARGET_ARMV8_3)) {
+		/* For functions with pac enabled, if 'autiasp' is used in epilogue
+		 * (!TARGET_ARMV8_3), scs pop should inserted before this insn.
+		 */
+		mark = search_insn(autiasp_num, get_insns());
+	} else {
+		/* For functions do not enabled pac or used 'retaa' as pac check,
+		 * scs pop inserted before the last 'return" insn
+		 */
+		mark = get_last_insn();
+	}
+
+	if (!mark)
+		error(G_("Non-standard insn seqs found:\n"
+			"__noscs attr should be added on func:%s,file:%s\n"),
+			get_name(current_function_decl), main_input_filename);
+
+	emit_insn_before(tmp, mark);
+
+	seq = get_insns();
+	end_sequence();
+	return seq;
+}
+
+static rtx_insn *scs_gen_sibcall_epilogue(void)
+{
+	rtx_insn *seq = NULL, *mark;
+	rtx tmp;
+	bool ret_sign_enabled;
+
+	if (old_gen_sibcall_epilogue)
+		seq = old_gen_sibcall_epilogue();
+
+	if ((!seq) || scs_func_ignored())
+		return seq;
+
+	ret_sign_enabled = scs_return_address_signing_enabled();
+	tmp = gen_scs_pop(RESERVED_LOCATION_COUNT);
+
+	start_sequence();
+	emit_insn(seq);
+
+	if (ret_sign_enabled) {
+		/* If pac is enabled, sibling_call will always use 'autiasp' as pac check */
+		mark = search_insn(autiasp_num, get_insns());
+		if (!mark)
+			error(G_("Non-standard insn seqs found:\n"
+				"__noscs attr should be added on func:%s,file:%s\n"),
+				get_name(current_function_decl), main_input_filename);
+		emit_insn_before(tmp, mark);
+	} else {
+		/* If pac is disabled, insert scs pop at the end of insns */
+		mark = get_last_insn();
+		emit_insn_after(tmp, mark);
+	}
+
+	seq = get_insns();
+	end_sequence();
+
+	return seq;
+}
+
+static void callback_before_start_unit(void *gcc_data __unused, void *user_data __unused)
+{
+	old_gen_prologue = targetm.gen_prologue;
+	old_gen_epilogue = targetm.gen_epilogue;
+	old_gen_sibcall_epilogue = targetm.gen_sibcall_epilogue;
+
+	targetm.gen_prologue = scs_gen_prologue;
+	targetm.gen_epilogue = scs_gen_epilogue;
+	targetm.gen_sibcall_epilogue = scs_gen_sibcall_epilogue;
+}
+
+static tree handle_noscs_attribute(tree *node, tree name, tree args __unused, int flags,
+		bool *no_add_attrs)
+{
+	/* NOSCS_ATTR_STR can only be used for function declarations */
+	switch (TREE_CODE(*node)) {
+	case FUNCTION_DECL:
+		break;
+	default:
+		error(G_("%qE attribute can be applies to function decl only (%qE)"), name, *node);
+		gcc_unreachable();
+	}
+
+	*no_add_attrs = false;
+	return NULL_TREE;
+}
+
+static struct attribute_spec noscs_attr = {};
+
+static void scs_register_attributes(void *event_data __unused, void *data __unused)
+{
+	noscs_attr.name	= NOSCS_ATTR_STR;
+	noscs_attr.decl_required = true;
+	noscs_attr.handler = handle_noscs_attribute;
+	register_attribute(&noscs_attr);
+}
+
+__visible int plugin_init(struct plugin_name_args *plugin_info, struct plugin_gcc_version *version)
+{
+	int i;
+	bool enable = false;
+	const char * const plugin_name = plugin_info->base_name;
+	const int argc = plugin_info->argc;
+	const struct plugin_argument * const argv = plugin_info->argv;
+
+	if (!plugin_default_version_check(version, &gcc_version)) {
+		error(G_("Incompatible gcc/plugin versions"));
+		return 1;
+	}
+
+	for (i = 0; i < argc; ++i) {
+		if (!strcmp(argv[i].key, "enable")) {
+			enable = true;
+			continue;
+		}
+		if (!strcmp(argv[i].key, "verbose")) {
+			verbose = true;
+			continue;
+		}
+		error(G_("unknown option '-fplugin-arg-%s-%s'"), plugin_name, argv[i].key);
+	}
+
+	if (!enable) {
+		v_info("Plugin disabled for file:%s\n", main_input_filename);
+		return 0;
+	}
+
+	register_callback(plugin_name, PLUGIN_INFO, NULL, &arm64_scs_plugin_info);
+
+	register_callback(plugin_name, PLUGIN_ATTRIBUTES, scs_register_attributes, NULL);
+
+	register_callback(plugin_name, PLUGIN_START_UNIT, callback_before_start_unit, NULL);
+
+	return 0;
+}
diff --git a/scripts/gcc-plugins/gcc-common.h b/scripts/gcc-plugins/gcc-common.h
index 0c08761..7251b00 100644
--- a/scripts/gcc-plugins/gcc-common.h
+++ b/scripts/gcc-plugins/gcc-common.h
@@ -27,6 +27,7 @@
 #include "except.h"
 #include "function.h"
 #include "toplev.h"
+#include "insn-codes.h"
 #if BUILDING_GCC_VERSION >= 5000
 #include "expr.h"
 #endif
@@ -535,6 +536,9 @@ static inline void ipa_remove_stmt_references(symtab_node *referring_node, gimpl
 }
 #endif
 
+/* RTL related */
+extern int recog(rtx, rtx_insn *, int *);
+
 #if BUILDING_GCC_VERSION < 6000
 #define get_inner_reference(exp, pbitsize, pbitpos, poffset, pmode, punsignedp, preversep, pvolatilep, keep_aligning)	\
 	get_inner_reference(exp, pbitsize, pbitpos, poffset, pmode, punsignedp, pvolatilep, keep_aligning)
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1634337180-92127-1-git-send-email-ashimida%40linux.alibaba.com.
