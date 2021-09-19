Return-Path: <clang-built-linux+bncBDC2RCVE24NRBTGOTWFAMGQEW7UAPRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id EA07E410C5B
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Sep 2021 18:37:33 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id v18-20020a67c892000000b002c41205291bsf7684628vsk.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Sep 2021 09:37:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632069452; cv=pass;
        d=google.com; s=arc-20160816;
        b=oXzfF2SNM85lzwsT+bHdNU+DQakxZwjd4WxQQjl/drpHVJnke3+XEuMtnAjVAasMVG
         8YBQKbGYQeNKu8xWS1l5/mPTOx1LQaVfIE/3rf+IZgiBqrHjlkCJgql/ha/WzzA4vj4y
         o0KyxiD+gH4iLzZNGydnlhrQr7s/TOE+TydWRfAxxl2Ljb6bbk4SJq+3o0zRhkWJW+Io
         4paRCQAHlKSbvzRu7o6StzUQcBxw3YbGXygs7SGmQ0tydoO9n8o+cN9dnjsqJYStRsoK
         gAKzYNWL5LxHcterPnNj0NZvXYDwJYoZsXgik+UCDTAZ5HH/bTOllIMB5lExBB+fq34r
         eIIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=EQUoSPD0qO+vQ0qUsdnhGJnTXB19P+P8V484zvxM+V8=;
        b=Qg7mhwi24/BQsxC9cDfXemNACJAah1g7Ktbl65kFtSIHmd9EWef8PnLlqCUv4F2asL
         ZHpzb3M4Tj5AkAPImmgU8MeaQN2LjwX8xYB/f6WdZYei0Hdr004PEmc+d2W7oieAb0Nb
         4jLBtz0pGSnrEfiYZCu4w79fNBBvhQHvR7ocx/tVyur1EflqqxLjwzVjMo4ezR+QARCv
         Y1mpVIyls8sYeIT2DibYwBpBeHcIw0urLIlL4NfGc8oeyqofAbxS+zeaZZi+YX660aGC
         pbeGWXAkYKak49IJVxoFNYTIk4/d2Q1k6iGYLe1fsWp/31m4eBvFlZsN0qBZQDxdK+g7
         yzbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.56 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EQUoSPD0qO+vQ0qUsdnhGJnTXB19P+P8V484zvxM+V8=;
        b=sCqF5jRiuQ1n97mJ1L5ouaxB1Vb51VSgnIKjFHa0MG7ZDZKV26rsY0qpJOgUDtw27P
         Jfvahn+2v6MNlHG9r3H6qo5cMQnDRRaR0/eoCFIKUpq2gsBEVZXikP5+oga4j9wxob4k
         Iw2N9pcdTa2yiSZ1JR5Om+khZSI+17J6ZXicMYdvyej+jBKApTKdCFr+9Nyzv+0L/1ye
         oDUAdXC1svdqKOt8r/jSTFrsVfFl4s7iWJdW2zNN1hIfS72/3VkexigUSiVoLrNC5oT+
         9kVpqzZL8k/idQGF57Uwul0Nk6H/JWenCqnFoLlDyhe1pnqodlxRD7GRp6H5BrrEQ1Ln
         xA4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EQUoSPD0qO+vQ0qUsdnhGJnTXB19P+P8V484zvxM+V8=;
        b=S4Ha09YNGrsDdYQVidkMJSr+nPhBfSwUEfkQQCDpfEq/hr0nq+bw13zj6ovP1YyxC0
         j95Z6M9WPZwzZ60LOtfwU/GoveUTcuurNHmzU/GvkxbdwRsZ1QJjJOCwyz6dZY5MMefU
         L/yH76+MPC07keFSWkxTKTv/em4mvxqnpOw/BqudZgArDg055hA7QUP5FoT+ywrcPnpk
         2a5e/Su+uxGO9OdOaEmQppRNmFXB+5UbgRKkFlsAYT3ccfvTaSfzPDNWnIJgibkOH01q
         5Ygc6j2KebsBf8fTDN1t5fY8DUMZSXW20smAjDgwPREYP/Gy2OfXJEF0NdZPECqvbBZl
         bkpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531u+BLFg4p361bMO/shhzW+iqZJoBqea90L1r1DW+YIhsxtjFvi
	q4sQpBqttvn4vkaM6PCU+Bg=
X-Google-Smtp-Source: ABdhPJzYtqps5mopDinZPnMp5lyGiYmdJslGcZaJanKLCtiBjDpelMn0G5h+I+duMKI8zqjkeH3X9g==
X-Received: by 2002:a1f:5581:: with SMTP id j123mr13492855vkb.5.1632069452662;
        Sun, 19 Sep 2021 09:37:32 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cd43:: with SMTP id n3ls1038213vkm.0.gmail; Sun, 19 Sep
 2021 09:37:32 -0700 (PDT)
X-Received: by 2002:a1f:ad46:: with SMTP id w67mr13016900vke.16.1632069452141;
        Sun, 19 Sep 2021 09:37:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632069452; cv=none;
        d=google.com; s=arc-20160816;
        b=lZV/A416lDz2klKLNfNnId5PYpAXqPg2bUck5dTX0hVbfSSU+vjJp0rIZtDW0H3x6U
         s1wBjKxMfBXWNgRD5nY1++zLKE7SmYiGUbxOuoUA7YI6dkT5Bz7BGRJ8o2bmKZ9nwUTz
         idToytJ6S/43slpkQZSYbDhlx/nx4Xr6TokEDyQlVAch9asM++s6Q4rjPlkR3YyXcC6B
         zyvbbWWtuA9lYV8HgXzdkFS2U44iM28Xnr/K/dgoXGyHkbdCwVfLX8jd6LrGPbf1D0nJ
         qezoIxPr+8AHqOOKIAjUL1Rd49v1zyicS+VeEq/KaYNOkC6ljC6DJjUkNKsVtfWHTLGk
         T8xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=Dqvvc4feS3+bAyVtsQAdDnFX2APveLk1TP9/qnDnlxA=;
        b=R6qEA8+8y10xWfB+kp0r8o94ApyRdJYe8ESPYhfdvzJPQ1S25Qpq7hUJxI+KmCyxLt
         1x5QDkytl/hlHTuf1cL8VONDN2UhlPI3YfcBIe31nOcakX8i/ZrzyW1zFnPds+BUeYpZ
         Xlh64ELw5a8LKCjNscq61XD6ntRGhAcf5SQKFMJnyDZTkfw4rYQ+8Xx2VqfmUd7yYin5
         qffwP6hgG/yYLbpGoHUGsiFpO4tm39EApbwDBL03djXyCnhsyt4wONkvCPMt/Drg0+tF
         fwQXovYgvSbP+V2xrRaMt+M3A/p3tAC0NMdj78qQg6XCzfa4j4ORK49SUJHHlm9eAj83
         jEQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.56 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-56.freemail.mail.aliyun.com (out30-56.freemail.mail.aliyun.com. [115.124.30.56])
        by gmr-mx.google.com with ESMTPS id h4si1244620vkf.1.2021.09.19.09.37.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Sep 2021 09:37:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.56 as permitted sender) client-ip=115.124.30.56;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R301e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04407;MF=ashimida@linux.alibaba.com;NM=1;PH=DS;RN=27;SR=0;TI=SMTPD_---0Uot2tLe_1632069438;
Received: from localhost(mailfrom:ashimida@linux.alibaba.com fp:SMTPD_---0Uot2tLe_1632069438)
          by smtp.aliyun-inc.com(127.0.0.1);
          Mon, 20 Sep 2021 00:37:25 +0800
From: Dan Li <ashimida@linux.alibaba.com>
To: masahiroy@kernel.org,
	michal.lkml@markovi.net,
	keescook@chromium.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	akpm@linux-foundation.org,
	tglx@linutronix.de,
	peterz@infradead.org,
	samitolvanen@google.com,
	frederic@kernel.org,
	rppt@kernel.org,
	yifeifz2@illinois.edu,
	viresh.kumar@linaro.org,
	colin.king@canonical.com,
	andreyknvl@gmail.com,
	mark.rutland@arm.com,
	ojeda@kernel.org,
	will@kernel.org,
	ardb@kernel.org,
	luc.vanoostenryck@gmail.com,
	elver@google.com,
	nivedita@alum.mit.edu
Cc: linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Dan Li <ashimida@linux.alibaba.com>
Subject: [PATCH] [RFC/RFT]SCS:Add gcc plugin to support Shadow Call Stack
Date: Mon, 20 Sep 2021 00:37:16 +0800
Message-Id: <1632069436-25075-1-git-send-email-ashimida@linux.alibaba.com>
X-Mailer: git-send-email 2.7.4
X-Original-Sender: ashimida@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.56 as
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

The Clang-based shadow call stack protection has been integrated into the
mainline, but kernel compiled by gcc cannot enable this feature for now.

This Patch supports gcc-based SCS protection by adding a plugin.

For each function that x30 will be pushed onto the stack during execution,
this plugin:
1) insert "str x30, [x18], #8" at the entry of the function to save x30
   to current SCS
2) insert "ldr x30, [x18, #-8]!"  before the exit of this function to
   restore x30

At present, this patch has been successfully compiled(based on defconfig)
in the following gcc versions(if plugin is supported) and startup normally:
* 6.3.1
* 7.3.1
* 7.5.0
* 8.2.1
* 9.2.0
* 10.3.1

with commands:
make ARCH=arm64 defconfig
./scripts/config -e CONFIG_GCC_PLUGINS -e CONFIG_GCC_PLUGIN_SHADOW_CALL_STACK
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-

---
FYI:
1) The function can be used to test whether the shadow stack is effective:
//noinline void __noscs scs_test(void)
noinline void scs_test(void)
{
    register unsigned long *sp asm("sp");
    unsigned long * lr = sp + 1;

    asm volatile("":::"x30");
    *lr = 0;
}

ffff800010012670 <scs_test>:
ffff800010012670:       f800865e        str     x30, [x18], #8
ffff800010012674:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
ffff800010012678:       910003fd        mov     x29, sp
ffff80001001267c:       f90007ff        str     xzr, [sp, #8]
ffff800010012680:       a8c17bfd        ldp     x29, x30, [sp], #16
ffff800010012684:       f85f8e5e        ldr     x30, [x18, #-8]!
ffff800010012688:       d65f03c0        ret

If SCS protection is enabled, this function will return normally.
If the function has __noscs attribute (scs disabled), it will crash due to 0
address access.

2) Other tests are in progress ...

Signed-off-by: Dan Li <ashimida@linux.alibaba.com>
---
 Makefile                               |   2 +-
 arch/Kconfig                           |   2 +-
 include/linux/compiler-gcc.h           |   4 +
 scripts/Makefile.gcc-plugins           |   4 +
 scripts/gcc-plugins/Kconfig            |   8 ++
 scripts/gcc-plugins/arm64_scs_plugin.c | 256 +++++++++++++++++++++++++++++++++
 6 files changed, 274 insertions(+), 2 deletions(-)
 create mode 100644 scripts/gcc-plugins/arm64_scs_plugin.c

diff --git a/Makefile b/Makefile
index 61741e9..0f0121a 100644
--- a/Makefile
+++ b/Makefile
@@ -924,7 +924,7 @@ LDFLAGS_vmlinux += --gc-sections
 endif
 
 ifdef CONFIG_SHADOW_CALL_STACK
-CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
+CC_FLAGS_SCS	:= $(if $(CONFIG_CC_IS_CLANG),-fsanitize=shadow-call-stack,)
 KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
 export CC_FLAGS_SCS
 endif
diff --git a/arch/Kconfig b/arch/Kconfig
index 98db634..81ff127 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -594,7 +594,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
 
 config SHADOW_CALL_STACK
 	bool "Clang Shadow Call Stack"
-	depends on CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK
+	depends on (CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK) || GCC_PLUGIN_SHADOW_CALL_STACK
 	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
 	help
 	  This option enables Clang's Shadow Call Stack, which uses a
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
index 952e468..eeaf2c6 100644
--- a/scripts/Makefile.gcc-plugins
+++ b/scripts/Makefile.gcc-plugins
@@ -46,6 +46,10 @@ ifdef CONFIG_GCC_PLUGIN_ARM_SSP_PER_TASK
 endif
 export DISABLE_ARM_SSP_PER_TASK_PLUGIN
 
+gcc-plugin-$(CONFIG_GCC_PLUGIN_SHADOW_CALL_STACK) += arm64_scs_plugin.so
+gcc-plugin-cflags-$(CONFIG_GCC_PLUGIN_SHADOW_CALL_STACK)	\
+		+= -DSHADOW_CALL_STACK_PLUGIN
+
 # All the plugin CFLAGS are collected here in case a build target needs to
 # filter them out of the KBUILD_CFLAGS.
 GCC_PLUGINS_CFLAGS := $(strip $(addprefix -fplugin=$(objtree)/scripts/gcc-plugins/, $(gcc-plugin-y)) $(gcc-plugin-cflags-y))
diff --git a/scripts/gcc-plugins/Kconfig b/scripts/gcc-plugins/Kconfig
index ab9eb4c..2534195e 100644
--- a/scripts/gcc-plugins/Kconfig
+++ b/scripts/gcc-plugins/Kconfig
@@ -19,6 +19,14 @@ menuconfig GCC_PLUGINS
 
 if GCC_PLUGINS
 
+config GCC_PLUGIN_SHADOW_CALL_STACK
+	bool "GCC Shadow Call Stack plugin"
+	select SHADOW_CALL_STACK
+	help
+	  This plugin is used to support the kernel CONFIG_SHADOW_CALL_STACK
+	  compiled by gcc. Its principle is basically the same as that of CLANG.
+	  For more information, please refer to "config SHADOW_CALL_STACK"
+
 config GCC_PLUGIN_CYC_COMPLEXITY
 	bool "Compute the cyclomatic complexity of a function" if EXPERT
 	depends on !COMPILE_TEST	# too noisy
diff --git a/scripts/gcc-plugins/arm64_scs_plugin.c b/scripts/gcc-plugins/arm64_scs_plugin.c
new file mode 100644
index 0000000..c5a66140
--- /dev/null
+++ b/scripts/gcc-plugins/arm64_scs_plugin.c
@@ -0,0 +1,256 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "gcc-common.h"
+
+#define v_info(fmt, ...)							\
+	do {									\
+		if (verbose)							\
+			fprintf(stderr, "[SCS]: " fmt,  ## __VA_ARGS__);	\
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
+	.help		= "disable\tdo not activate plugin\n"
+			  "verbose\tprint all debug infos\n",
+};
+
+static bool verbose;
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
+static bool arm64_scs_gate(void)
+{
+	bool is_ignored;
+
+#if BUILDING_GCC_VERSION >= 8002
+	is_ignored = !cfun->machine->frame.emit_frame_chain;
+#else
+	is_ignored = !frame_pointer_needed;
+#endif
+
+	/* No need to insert protection code into functions that do not push LR into stack */
+	if (is_ignored) {
+		v_info("No protection code inserted into func:%s in file:%s\n",
+			get_name(current_function_decl), main_input_filename);
+		return 0;
+	}
+
+	gcc_assert(cfun->machine->frame.wb_candidate2 == R30_REGNUM);
+
+	/* Don't insert protection code into functions with NOSCS_ATTR_STR attribute */
+	if (lookup_attribute(NOSCS_ATTR_STR, DECL_ATTRIBUTES(current_function_decl))) {
+		v_info("No protection code inserted into %s func:%s in file:%s\n", NOSCS_ATTR_STR,
+				get_name(current_function_decl), main_input_filename);
+		return 0;
+	}
+	return 1;
+}
+
+enum scs_state {
+	/* The first valid instruction has not been found in the current instruction sequence */
+	SCS_SEARCHING_FIRST_INSN,
+	/* Currently searching for the return rtx instruction in this function */
+	SCS_SEARCHING_FUNC_RETURN,
+	/* Found an EPILOGUE_BEGIN before the function return instruction */
+	SCS_FOUND_ONE_EPILOGUE_NOTE,
+};
+
+static unsigned int arm64_scs_execute(void)
+{
+	rtx_insn *insn;
+	enum scs_state state = SCS_SEARCHING_FIRST_INSN;
+
+	for (insn = get_insns(); insn; insn = NEXT_INSN(insn)) {
+		rtx mark = NULL;
+
+		switch (GET_CODE(insn)) {
+		case NOTE:
+		case BARRIER:
+		case CODE_LABEL:
+		case INSN:
+		case DEBUG_INSN:
+		case JUMP_INSN:
+		case JUMP_TABLE_DATA:
+			break;
+		case CALL_INSN:
+			if (SIBLING_CALL_P(insn)) {
+				error(G_("Sibling call found in func:%s, file:%s\n"),
+						get_name(current_function_decl),
+						main_input_filename);
+				gcc_unreachable();
+			}
+			break;
+		default:
+			error(G_("Invalid rtx_insn seqs found with type:%s in func:%s, file:%s\n"),
+					GET_RTX_NAME(GET_CODE(insn)),
+					get_name(current_function_decl), main_input_filename);
+			gcc_unreachable();
+			break;
+		}
+
+		if (state == SCS_SEARCHING_FIRST_INSN) {
+			/* A function that needs to be instrumented should not found epilogue
+			 * before its first insn
+			 */
+			gcc_assert(!(NOTE_P(insn) && (NOTE_KIND(insn) == NOTE_INSN_EPILOGUE_BEG)));
+
+			if (NOTE_P(insn) || INSN_DELETED_P(insn))
+				continue;
+
+			state = SCS_SEARCHING_FUNC_RETURN;
+
+			/* Insert scs pop before the first instruction found */
+			mark = gen_scs_push(RESERVED_LOCATION_COUNT);
+			emit_insn_before(mark, insn);
+		}
+
+		/* Find the corresponding epilogue before 'RETURN' instruction (if any) */
+		if (state == SCS_SEARCHING_FUNC_RETURN) {
+			if (NOTE_P(insn) && (NOTE_KIND(insn) == NOTE_INSN_EPILOGUE_BEG)) {
+				state = SCS_FOUND_ONE_EPILOGUE_NOTE;
+				continue;
+			}
+		}
+
+		if (!JUMP_P(insn))
+			continue;
+
+		/* A function return insn was found */
+		if (ANY_RETURN_P(PATTERN(insn))) {
+			/* There should be an epilogue before 'RETURN' inst */
+			if (GET_CODE(PATTERN(insn)) == RETURN) {
+				gcc_assert(state == SCS_FOUND_ONE_EPILOGUE_NOTE);
+				state = SCS_SEARCHING_FUNC_RETURN;
+			}
+
+			/* There is no epilogue before 'SIMPLE_RETURN' insn */
+			if (GET_CODE(PATTERN(insn)) == SIMPLE_RETURN)
+				gcc_assert(state == SCS_SEARCHING_FUNC_RETURN);
+
+			/* Insert scs pop instruction(s) before return insn */
+			mark = gen_scs_pop(RESERVED_LOCATION_COUNT);
+			emit_insn_before(mark, insn);
+		}
+	}
+	return 0;
+}
+
+static tree handle_noscs_attribute(tree *node, tree name, tree args __unused, int flags,
+		bool *no_add_attrs)
+{
+	*no_add_attrs = true;
+
+	gcc_assert(DECL_P(*node));
+	switch (TREE_CODE(*node)) {
+	default:
+		error(G_("%qE attribute can be applies to function decl only (%qE)"), name, *node);
+		gcc_unreachable();
+
+	case FUNCTION_DECL:	/* the attribute is only used for function declarations */
+		break;
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
+static void (*old_override_options_after_change)(void);
+
+static void scs_override_options_after_change(void)
+{
+	if (old_override_options_after_change)
+		old_override_options_after_change();
+
+	flag_optimize_sibling_calls = 0;
+}
+
+static void callback_before_start_unit(void *gcc_data __unused, void *user_data __unused)
+{
+	/* Turn off sibling call to avoid inserting duplicate scs pop codes */
+	old_override_options_after_change = targetm.override_options_after_change;
+	targetm.override_options_after_change = scs_override_options_after_change;
+
+	flag_optimize_sibling_calls = 0;
+}
+
+#define PASS_NAME arm64_scs
+#define TODO_FLAGS_FINISH (TODO_dump_func | TODO_verify_rtl_sharing)
+#include "gcc-generate-rtl-pass.h"
+
+__visible int plugin_init(struct plugin_name_args *plugin_info, struct plugin_gcc_version *version)
+{
+	int i;
+	const char * const plugin_name = plugin_info->base_name;
+	const int argc = plugin_info->argc;
+	const struct plugin_argument * const argv = plugin_info->argv;
+	bool enable = true;
+
+	PASS_INFO(arm64_scs, "shorten", 1, PASS_POS_INSERT_BEFORE);
+
+	if (!plugin_default_version_check(version, &gcc_version)) {
+		error(G_("Incompatible gcc/plugin versions"));
+		return 1;
+	}
+
+	if (strncmp(lang_hooks.name, "GNU C", 5) && !strncmp(lang_hooks.name, "GNU C+", 6)) {
+		inform(UNKNOWN_LOCATION, G_("%s supports C only, not %s"), plugin_name,
+				lang_hooks.name);
+		enable = false;
+	}
+
+	for (i = 0; i < argc; ++i) {
+		if (!strcmp(argv[i].key, "disable")) {
+			enable = false;
+			continue;
+		}
+		if (!strcmp(argv[i].key, "verbose")) {
+			verbose = true;
+			continue;
+		}
+		error(G_("unknown option '-fplugin-arg-%s-%s'"), plugin_name, argv[i].key);
+	}
+
+	register_callback(plugin_name, PLUGIN_INFO, NULL, &arm64_scs_plugin_info);
+
+	register_callback(plugin_name, PLUGIN_ATTRIBUTES, scs_register_attributes, NULL);
+
+	if (!enable) {
+		v_info("Plugin disabled for file:%s\n", main_input_filename);
+		return 0;
+	}
+
+	register_callback(plugin_name, PLUGIN_START_UNIT, callback_before_start_unit, NULL);
+
+	register_callback(plugin_name, PLUGIN_PASS_MANAGER_SETUP, NULL, &arm64_scs_pass_info);
+
+	return 0;
+}
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1632069436-25075-1-git-send-email-ashimida%40linux.alibaba.com.
