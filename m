Return-Path: <clang-built-linux+bncBC2ORX645YPRBPWSSOBQMGQEZVA42CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CD6350911
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:27:28 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id v24sf2500636ion.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 14:27:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617226047; cv=pass;
        d=google.com; s=arc-20160816;
        b=hrmUUSFpUs7c3YLZ1ipV+ddAX/ipXS4ROBEReZm8siqSz6Ap9DVzMwxhhs3hb1tmr4
         +tYrCCIVm5JeiGQQqy3L+p+VwDz9eC/DJRCGJybg/AOeeGKURbjWEp/0nm8dPHrdyx2o
         cQ0fzdJ036SuuXO7kYRW36Of7+t/RFOrI+uhUXURe7qUAS0nodTc4k2GYbXTKbZwAaSv
         QiEqRKmbxGV0aE+tpt2oSSohVG38r9K9qL/6XV6tapxkuyjDy6Kn9r5x33X0Bs6d8OVc
         Oe4m/FagN4bcigKygeLBQYukbswqOjipS+PViNnIPyxUUKTUHeZE9YSkJzU6Mat73hMk
         +RAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=5403REPtlizVaM8MV5McWOopDow2Xp+u2e73j0hS8MA=;
        b=VRR7w5B33V7tGaWWQU4hNV3g26FnuqVBXqMQXay3KRAFmGhPIXyh+eeKDcK+8fjyE0
         I1y4fWKlzte6RzSdldEpMavT34ZAcbqnr+BttGSucogqpHXkdKIc0tO4ngl3PMx6Qsu+
         EpV7QCOiTM1gsGZMCavFVb8Lj6tr24JotwLcLAR07ajvH6w1S44uzX5QpYHfdtqH3w5m
         VfnKuG41aNTFbQA+oMxqDtNgxEMNuwhTNy4kgGstM4pARDHRp5JxoAddtEaJ/kUI+mBK
         S4Ro8PZXMJxulUQMwF8YjSq7t+BeLUlbQR/EDYctJCLVuL9I+j468X2IBLOiEOhKPjFY
         Nvbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="MreWT4S/";
       spf=pass (google.com: domain of 3pelkyawkakwemyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PelkYAwKAKweMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5403REPtlizVaM8MV5McWOopDow2Xp+u2e73j0hS8MA=;
        b=MHb71sMpFmegZH/VxiMAqq8fJ/uSxTE6Ac2syOEg0YdMaNf5bUbaBuAlY63HQozg6c
         iN5Uzr/NGFNXasuKcu7CZooLpuqWnj9eKefBd1ZJyCwDLPq3/C5d4mssZclfEcHic/IY
         6u30f+fFPLdlk2K2DkKh7dlg6lsI19OoRgBb7BjZUpchZcUkIcjNfe7mjXkGCLdVNLWj
         5YNTVuinUBxLG/iSS2mgxaKCi/JxyRHJTpC4meA88zn8XzlE4De8l+ySl+VCDbh+WG7S
         wG33mE/dbm/zWIdZC5AAWbk1DsD4gzdgS+Mzig4ywN8kdqaC2sgGGy2/+8d/u57u2jkU
         X3Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5403REPtlizVaM8MV5McWOopDow2Xp+u2e73j0hS8MA=;
        b=hCwzawq8aq4Cw/9ssD/rbT69rnIOWbM7lG3FMDAbRylX57Diiqc3uycRdalGRlucjE
         Wt+oU546VWpUUKyZXkc9O7HB/OByAA/Lat17VK4b6Xcyhf38g6L/+AB2XGAc4vCVwIic
         5QNlZS3TYeraIt59G0KcuDnHLudLqpO/e5zDlHSJ1X03556bMsssotsng33jw5l19hmY
         SwWq2jc7bEXmyAmwzA4kJJe3QfgBzxsXckFXzfdJ1Apuf4z3189ftdjnEM84GZ/7mH/R
         4Btq7WG2vZngdL8ecaImeS6cycXKLusgTHKmB/6vRuN7DEFGefylmHEFc017ixEi2oss
         rxGA==
X-Gm-Message-State: AOAM531dwRjHwgO7Yq0Fv1BGH4Mhm/LJn9g5YSGLKmzdadSF50WnG7kV
	meTk4C3DNDf4wAE3UnmH8Yo=
X-Google-Smtp-Source: ABdhPJzRFuDT+7Brn9E4g2TThASqcSxJ7S7e2QZZBp+yAsEPa4NWy5cTyCgP0yk+qjWVpTChvY3zJQ==
X-Received: by 2002:a6b:d60e:: with SMTP id w14mr3874818ioa.187.1617226047035;
        Wed, 31 Mar 2021 14:27:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6a02:: with SMTP id x2ls536590iog.4.gmail; Wed, 31 Mar
 2021 14:27:26 -0700 (PDT)
X-Received: by 2002:a6b:8ec2:: with SMTP id q185mr3893700iod.150.1617226046588;
        Wed, 31 Mar 2021 14:27:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617226046; cv=none;
        d=google.com; s=arc-20160816;
        b=buDv+NKJ7PSab2UbjWxnPP7hZSHmBitWG9GqGJWRC3o7aZKYjUVqKECo8gc0QdPXP9
         wl4hM6FcOlO8TIhxh7xDXV04cn+NrMo1J89fmaKgcuNa7lXhQZLrxPx/aEVGiXVuuuG4
         e8GAWW7laceAfydESSxt/G/ELKTB591GJWlV3grbCNFMb2r9frMrK7rPqpcLD4lWYTSM
         Qv2dVR2S5S7fHWQo85PIDqi1+MkyfslrLdav2Mm31UItRJRryPg9hr/MDrTjM11M75vP
         Y30rbRP/hFuEpAAIAznBWf1zxD97o0JRYA3Ym5SxwVmZTVWsGqpdK2JuVQB5Tsnqp3q9
         2FUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:from:subject:references
         :mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=MD7gEDamITC1CAlAt7dxOxGSXpVHYTo3DV9/y5T2kDg=;
        b=CmilYEopFsHWm+ptgp3h/YTrEzXjaJ9x2h9YWpdP6AVuQIpKEp0BXn4U/BqFfCKB/X
         qOPuj7QAmPED8/TkxtwYOvk0DTZSstSeHe4vYCnSBec84DFlLV0L4y5aEDzFpLOH8o2Z
         9ISAS8H4efbNK0JBL7ShcOevNv3cfaR37V0nUR06j8gaZiJJIoDrP7H5g15OFi5OoyNF
         7uZwRQ7/xGCcImCV+nG3PJ8svgXhcjhO4dTNnq8XJYB67D8pKliWU078Pt9rjqMP4Exl
         qbAPKVwB3kJmSMTxLAKkC0+C5SLFfbaxlqnOGxzsFozt/0wIc7LQL5/NmmpzQM0JGU40
         zCiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="MreWT4S/";
       spf=pass (google.com: domain of 3pelkyawkakwemyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PelkYAwKAKweMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id y13si136354ilv.0.2021.03.31.14.27.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 14:27:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pelkyawkakwemyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id w9so3674926ybw.7
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 14:27:26 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:7933:7015:a5d5:3835])
 (user=samitolvanen job=sendgmr) by 2002:a25:accd:: with SMTP id
 x13mr7714590ybd.88.1617226045965; Wed, 31 Mar 2021 14:27:25 -0700 (PDT)
Date: Wed, 31 Mar 2021 14:27:05 -0700
In-Reply-To: <20210331212722.2746212-1-samitolvanen@google.com>
Message-Id: <20210331212722.2746212-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210331212722.2746212-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: [PATCH v4 01/17] add support for Clang CFI
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="MreWT4S/";       spf=pass
 (google.com: domain of 3pelkyawkakwemyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PelkYAwKAKweMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

This change adds support for Clang=E2=80=99s forward-edge Control Flow
Integrity (CFI) checking. With CONFIG_CFI_CLANG, the compiler
injects a runtime check before each indirect function call to ensure
the target is a valid function with the correct static type. This
restricts possible call targets and makes it more difficult for
an attacker to exploit bugs that allow the modification of stored
function pointers. For more details, see:

  https://clang.llvm.org/docs/ControlFlowIntegrity.html

Clang requires CONFIG_LTO_CLANG to be enabled with CFI to gain
visibility to possible call targets. Kernel modules are supported
with Clang=E2=80=99s cross-DSO CFI mode, which allows checking between
independently compiled components.

With CFI enabled, the compiler injects a __cfi_check() function into
the kernel and each module for validating local call targets. For
cross-module calls that cannot be validated locally, the compiler
calls the global __cfi_slowpath_diag() function, which determines
the target module and calls the correct __cfi_check() function. This
patch includes a slowpath implementation that uses __module_address()
to resolve call targets, and with CONFIG_CFI_CLANG_SHADOW enabled, a
shadow map that speeds up module look-ups by ~3x.

Clang implements indirect call checking using jump tables and
offers two methods of generating them. With canonical jump tables,
the compiler renames each address-taken function to <function>.cfi
and points the original symbol to a jump table entry, which passes
__cfi_check() validation. This isn=E2=80=99t compatible with stand-alone
assembly code, which the compiler doesn=E2=80=99t instrument, and would
result in indirect calls to assembly code to fail. Therefore, we
default to using non-canonical jump tables instead, where the compiler
generates a local jump table entry <function>.cfi_jt for each
address-taken function, and replaces all references to the function
with the address of the jump table entry.

Note that because non-canonical jump table addresses are local
to each component, they break cross-module function address
equality. Specifically, the address of a global function will be
different in each module, as it's replaced with the address of a local
jump table entry. If this address is passed to a different module,
it won=E2=80=99t match the address of the same function taken there. This
may break code that relies on comparing addresses passed from other
components.

CFI checking can be disabled in a function with the __nocfi attribute.
Additionally, CFI can be disabled for an entire compilation unit by
filtering out CC_FLAGS_CFI.

By default, CFI failures result in a kernel panic to stop a potential
exploit. CONFIG_CFI_PERMISSIVE enables a permissive mode, where the
kernel prints out a rate-limited warning instead, and allows execution
to continue. This option is helpful for locating type mismatches, but
should only be enabled during development.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 Makefile                          |  17 ++
 arch/Kconfig                      |  45 ++++
 include/asm-generic/bug.h         |  16 ++
 include/asm-generic/vmlinux.lds.h |  20 +-
 include/linux/cfi.h               |  41 ++++
 include/linux/compiler-clang.h    |   2 +
 include/linux/compiler_types.h    |   4 +
 include/linux/init.h              |   2 +-
 include/linux/module.h            |  13 +-
 init/Kconfig                      |   2 +-
 kernel/Makefile                   |   4 +
 kernel/cfi.c                      | 329 ++++++++++++++++++++++++++++++
 kernel/module.c                   |  43 ++++
 scripts/Makefile.modfinal         |   2 +-
 14 files changed, 534 insertions(+), 6 deletions(-)
 create mode 100644 include/linux/cfi.h
 create mode 100644 kernel/cfi.c

diff --git a/Makefile b/Makefile
index 73add16f9898..4a9c1ff420b6 100644
--- a/Makefile
+++ b/Makefile
@@ -920,6 +920,23 @@ KBUILD_AFLAGS	+=3D -fno-lto
 export CC_FLAGS_LTO
 endif
=20
+ifdef CONFIG_CFI_CLANG
+CC_FLAGS_CFI	:=3D -fsanitize=3Dcfi \
+		   -fsanitize-cfi-cross-dso \
+		   -fno-sanitize-cfi-canonical-jump-tables \
+		   -fno-sanitize-trap=3Dcfi \
+		   -fno-sanitize-blacklist
+
+ifdef CONFIG_CFI_PERMISSIVE
+CC_FLAGS_CFI	+=3D -fsanitize-recover=3Dcfi
+endif
+
+# If LTO flags are filtered out, we must also filter out CFI.
+CC_FLAGS_LTO	+=3D $(CC_FLAGS_CFI)
+KBUILD_CFLAGS	+=3D $(CC_FLAGS_CFI)
+export CC_FLAGS_CFI
+endif
+
 ifdef CONFIG_DEBUG_FORCE_FUNCTION_ALIGN_32B
 KBUILD_CFLAGS +=3D -falign-functions=3D32
 endif
diff --git a/arch/Kconfig b/arch/Kconfig
index ecfd3520b676..f6a85ba6cba2 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -692,6 +692,51 @@ config LTO_CLANG_THIN
 	  If unsure, say Y.
 endchoice
=20
+config ARCH_SUPPORTS_CFI_CLANG
+	bool
+	help
+	  An architecture should select this option if it can support Clang's
+	  Control-Flow Integrity (CFI) checking.
+
+config CFI_CLANG
+	bool "Use Clang's Control Flow Integrity (CFI)"
+	depends on LTO_CLANG && ARCH_SUPPORTS_CFI_CLANG
+	# Clang >=3D 12:
+	# - https://bugs.llvm.org/show_bug.cgi?id=3D46258
+	# - https://bugs.llvm.org/show_bug.cgi?id=3D47479
+	depends on CLANG_VERSION >=3D 120000
+	select KALLSYMS
+	help
+	  This option enables Clang=E2=80=99s forward-edge Control Flow Integrity
+	  (CFI) checking, where the compiler injects a runtime check to each
+	  indirect function call to ensure the target is a valid function with
+	  the correct static type. This restricts possible call targets and
+	  makes it more difficult for an attacker to exploit bugs that allow
+	  the modification of stored function pointers. More information can be
+	  found from Clang's documentation:
+
+	    https://clang.llvm.org/docs/ControlFlowIntegrity.html
+
+config CFI_CLANG_SHADOW
+	bool "Use CFI shadow to speed up cross-module checks"
+	default y
+	depends on CFI_CLANG && MODULES
+	help
+	  If you select this option, the kernel builds a fast look-up table of
+	  CFI check functions in loaded modules to reduce performance overhead.
+
+	  If unsure, say Y.
+
+config CFI_PERMISSIVE
+	bool "Use CFI in permissive mode"
+	depends on CFI_CLANG
+	help
+	  When selected, Control Flow Integrity (CFI) violations result in a
+	  warning instead of a kernel panic. This option should only be used
+	  for finding indirect call type mismatches during development.
+
+	  If unsure, say N.
+
 config HAVE_ARCH_WITHIN_STACK_FRAMES
 	bool
 	help
diff --git a/include/asm-generic/bug.h b/include/asm-generic/bug.h
index 76a10e0dca9f..b402494883b6 100644
--- a/include/asm-generic/bug.h
+++ b/include/asm-generic/bug.h
@@ -241,6 +241,22 @@ void __warn(const char *file, int line, void *caller, =
unsigned taint,
 # define WARN_ON_SMP(x)			({0;})
 #endif
=20
+/*
+ * WARN_ON_FUNCTION_MISMATCH() warns if a value doesn't match a
+ * function address, and can be useful for catching issues with
+ * callback functions, for example.
+ *
+ * With CONFIG_CFI_CLANG, the warning is disabled because the
+ * compiler replaces function addresses taken in C code with
+ * local jump table addresses, which breaks cross-module function
+ * address equality.
+ */
+#if defined(CONFIG_CFI_CLANG) && defined(CONFIG_MODULES)
+# define WARN_ON_FUNCTION_MISMATCH(x, fn) ({ 0; })
+#else
+# define WARN_ON_FUNCTION_MISMATCH(x, fn) WARN_ON_ONCE((x) !=3D (fn))
+#endif
+
 #endif /* __ASSEMBLY__ */
=20
 #endif
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinu=
x.lds.h
index 0331d5d49551..40a9c101565e 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -544,6 +544,22 @@
 	. =3D ALIGN((align));						\
 	__end_rodata =3D .;
=20
+
+/*
+ * .text..L.cfi.jumptable.* contain Control-Flow Integrity (CFI)
+ * jump table entries.
+ */
+#ifdef CONFIG_CFI_CLANG
+#define TEXT_CFI_JT							\
+		. =3D ALIGN(PMD_SIZE);					\
+		__cfi_jt_start =3D .;					\
+		*(.text..L.cfi.jumptable .text..L.cfi.jumptable.*)	\
+		. =3D ALIGN(PMD_SIZE);					\
+		__cfi_jt_end =3D .;
+#else
+#define TEXT_CFI_JT
+#endif
+
 /*
  * Non-instrumentable text section
  */
@@ -570,6 +586,7 @@
 		NOINSTR_TEXT						\
 		*(.text..refcount)					\
 		*(.ref.text)						\
+		TEXT_CFI_JT						\
 	MEM_KEEP(init.text*)						\
 	MEM_KEEP(exit.text*)						\
=20
@@ -974,7 +991,8 @@
  * keep any .init_array.* sections.
  * https://bugs.llvm.org/show_bug.cgi?id=3D46478
  */
-#if defined(CONFIG_GCOV_KERNEL) || defined(CONFIG_KASAN_GENERIC) || define=
d(CONFIG_KCSAN)
+#if defined(CONFIG_GCOV_KERNEL) || defined(CONFIG_KASAN_GENERIC) || define=
d(CONFIG_KCSAN) || \
+	defined(CONFIG_CFI_CLANG)
 # ifdef CONFIG_CONSTRUCTORS
 #  define SANITIZER_DISCARDS						\
 	*(.eh_frame)
diff --git a/include/linux/cfi.h b/include/linux/cfi.h
new file mode 100644
index 000000000000..879744aaa6e0
--- /dev/null
+++ b/include/linux/cfi.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Clang Control Flow Integrity (CFI) support.
+ *
+ * Copyright (C) 2021 Google LLC
+ */
+#ifndef _LINUX_CFI_H
+#define _LINUX_CFI_H
+
+#ifdef CONFIG_CFI_CLANG
+typedef void (*cfi_check_fn)(uint64_t id, void *ptr, void *diag);
+
+/* Compiler-generated function in each module, and the kernel */
+extern void __cfi_check(uint64_t id, void *ptr, void *diag);
+
+/*
+ * Force the compiler to generate a CFI jump table entry for a function
+ * and store the jump table address to __cfi_jt_<function>.
+ */
+#define __CFI_ADDRESSABLE(fn, __attr) \
+	const void *__cfi_jt_ ## fn __visible __attr =3D (void *)&fn
+
+#ifdef CONFIG_CFI_CLANG_SHADOW
+
+extern void cfi_module_add(struct module *mod, unsigned long base_addr);
+extern void cfi_module_remove(struct module *mod, unsigned long base_addr)=
;
+
+#else
+
+static inline void cfi_module_add(struct module *mod, unsigned long base_a=
ddr) {}
+static inline void cfi_module_remove(struct module *mod, unsigned long bas=
e_addr) {}
+
+#endif /* CONFIG_CFI_CLANG_SHADOW */
+
+#else /* !CONFIG_CFI_CLANG */
+
+#define __CFI_ADDRESSABLE(fn, __attr)
+
+#endif /* CONFIG_CFI_CLANG */
+
+#endif /* _LINUX_CFI_H */
diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.=
h
index d217c382b02d..6de9d0c9377e 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -61,3 +61,5 @@
 #if __has_feature(shadow_call_stack)
 # define __noscs	__attribute__((__no_sanitize__("shadow-call-stack")))
 #endif
+
+#define __nocfi		__attribute__((__no_sanitize__("cfi")))
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.=
h
index e5dd5a4ae946..796935a37e37 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -242,6 +242,10 @@ struct ftrace_likely_data {
 # define __noscs
 #endif
=20
+#ifndef __nocfi
+# define __nocfi
+#endif
+
 #ifndef asm_volatile_goto
 #define asm_volatile_goto(x...) asm goto(x)
 #endif
diff --git a/include/linux/init.h b/include/linux/init.h
index 31f54de58429..b3ea15348fbd 100644
--- a/include/linux/init.h
+++ b/include/linux/init.h
@@ -47,7 +47,7 @@
=20
 /* These are for everybody (although not all archs will actually
    discard it in modules) */
-#define __init		__section(".init.text") __cold  __latent_entropy __noinitr=
etpoline
+#define __init		__section(".init.text") __cold  __latent_entropy __noinitr=
etpoline __nocfi
 #define __initdata	__section(".init.data")
 #define __initconst	__section(".init.rodata")
 #define __exitdata	__section(".exit.data")
diff --git a/include/linux/module.h b/include/linux/module.h
index da4b6fbe8ebe..8100bb477d86 100644
--- a/include/linux/module.h
+++ b/include/linux/module.h
@@ -26,6 +26,7 @@
 #include <linux/tracepoint-defs.h>
 #include <linux/srcu.h>
 #include <linux/static_call_types.h>
+#include <linux/cfi.h>
=20
 #include <linux/percpu.h>
 #include <asm/module.h>
@@ -128,13 +129,17 @@ extern void cleanup_module(void);
 #define module_init(initfn)					\
 	static inline initcall_t __maybe_unused __inittest(void)		\
 	{ return initfn; }					\
-	int init_module(void) __copy(initfn) __attribute__((alias(#initfn)));
+	int init_module(void) __copy(initfn)			\
+		__attribute__((alias(#initfn)));		\
+	__CFI_ADDRESSABLE(init_module, __initdata);
=20
 /* This is only required if you want to be unloadable. */
 #define module_exit(exitfn)					\
 	static inline exitcall_t __maybe_unused __exittest(void)		\
 	{ return exitfn; }					\
-	void cleanup_module(void) __copy(exitfn) __attribute__((alias(#exitfn)));
+	void cleanup_module(void) __copy(exitfn)		\
+		__attribute__((alias(#exitfn)));		\
+	__CFI_ADDRESSABLE(cleanup_module, __exitdata);
=20
 #endif
=20
@@ -376,6 +381,10 @@ struct module {
 	const s32 *crcs;
 	unsigned int num_syms;
=20
+#ifdef CONFIG_CFI_CLANG
+	cfi_check_fn cfi_check;
+#endif
+
 	/* Kernel parameters. */
 #ifdef CONFIG_SYSFS
 	struct mutex param_lock;
diff --git a/init/Kconfig b/init/Kconfig
index 5f5c776ef192..5babea38e346 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -2296,7 +2296,7 @@ endif # MODULES
=20
 config MODULES_TREE_LOOKUP
 	def_bool y
-	depends on PERF_EVENTS || TRACING
+	depends on PERF_EVENTS || TRACING || CFI_CLANG
=20
 config INIT_ALL_POSSIBLE
 	bool
diff --git a/kernel/Makefile b/kernel/Makefile
index 320f1f3941b7..e8a6715f38dc 100644
--- a/kernel/Makefile
+++ b/kernel/Makefile
@@ -41,6 +41,9 @@ KCSAN_SANITIZE_kcov.o :=3D n
 UBSAN_SANITIZE_kcov.o :=3D n
 CFLAGS_kcov.o :=3D $(call cc-option, -fno-conserve-stack) -fno-stack-prote=
ctor
=20
+# Don't instrument error handlers
+CFLAGS_REMOVE_cfi.o :=3D $(CC_FLAGS_CFI)
+
 obj-y +=3D sched/
 obj-y +=3D locking/
 obj-y +=3D power/
@@ -111,6 +114,7 @@ obj-$(CONFIG_BPF) +=3D bpf/
 obj-$(CONFIG_KCSAN) +=3D kcsan/
 obj-$(CONFIG_SHADOW_CALL_STACK) +=3D scs.o
 obj-$(CONFIG_HAVE_STATIC_CALL_INLINE) +=3D static_call.o
+obj-$(CONFIG_CFI_CLANG) +=3D cfi.o
=20
 obj-$(CONFIG_PERF_EVENTS) +=3D events/
=20
diff --git a/kernel/cfi.c b/kernel/cfi.c
new file mode 100644
index 000000000000..e17a56639766
--- /dev/null
+++ b/kernel/cfi.c
@@ -0,0 +1,329 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Clang Control Flow Integrity (CFI) error and slowpath handling.
+ *
+ * Copyright (C) 2021 Google LLC
+ */
+
+#include <linux/hardirq.h>
+#include <linux/kallsyms.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/printk.h>
+#include <linux/ratelimit.h>
+#include <linux/rcupdate.h>
+#include <linux/vmalloc.h>
+#include <asm/cacheflush.h>
+#include <asm/set_memory.h>
+
+/* Compiler-defined handler names */
+#ifdef CONFIG_CFI_PERMISSIVE
+#define cfi_failure_handler	__ubsan_handle_cfi_check_fail
+#else
+#define cfi_failure_handler	__ubsan_handle_cfi_check_fail_abort
+#endif
+
+static inline void handle_cfi_failure(void *ptr)
+{
+	if (IS_ENABLED(CONFIG_CFI_PERMISSIVE))
+		WARN_RATELIMIT(1, "CFI failure (target: %pS):\n", ptr);
+	else
+		panic("CFI failure (target: %pS)\n", ptr);
+}
+
+#ifdef CONFIG_MODULES
+#ifdef CONFIG_CFI_CLANG_SHADOW
+/*
+ * Index type. A 16-bit index can address at most (2^16)-2 pages (taking
+ * into account SHADOW_INVALID), i.e. ~256M with 4k pages.
+ */
+typedef u16 shadow_t;
+#define SHADOW_INVALID		((shadow_t)~0UL)
+
+struct cfi_shadow {
+	/* Page index for the beginning of the shadow */
+	unsigned long base;
+	/* An array of __cfi_check locations (as indices to the shadow) */
+	shadow_t shadow[1];
+} __packed;
+
+/*
+ * The shadow covers ~128M from the beginning of the module region. If
+ * the region is larger, we fall back to __module_address for the rest.
+ */
+#define __SHADOW_RANGE		(_UL(SZ_128M) >> PAGE_SHIFT)
+
+/* The in-memory size of struct cfi_shadow, always at least one page */
+#define __SHADOW_PAGES		((__SHADOW_RANGE * sizeof(shadow_t)) >> PAGE_SHIFT=
)
+#define SHADOW_PAGES		max(1UL, __SHADOW_PAGES)
+#define SHADOW_SIZE		(SHADOW_PAGES << PAGE_SHIFT)
+
+/* The actual size of the shadow array, minus metadata */
+#define SHADOW_ARR_SIZE		(SHADOW_SIZE - offsetof(struct cfi_shadow, shadow=
))
+#define SHADOW_ARR_SLOTS	(SHADOW_ARR_SIZE / sizeof(shadow_t))
+
+static DEFINE_MUTEX(shadow_update_lock);
+static struct cfi_shadow __rcu *cfi_shadow __read_mostly;
+
+/* Returns the index in the shadow for the given address */
+static inline int ptr_to_shadow(const struct cfi_shadow *s, unsigned long =
ptr)
+{
+	unsigned long index;
+	unsigned long page =3D ptr >> PAGE_SHIFT;
+
+	if (unlikely(page < s->base))
+		return -1; /* Outside of module area */
+
+	index =3D page - s->base;
+
+	if (index >=3D SHADOW_ARR_SLOTS)
+		return -1; /* Cannot be addressed with shadow */
+
+	return (int)index;
+}
+
+/* Returns the page address for an index in the shadow */
+static inline unsigned long shadow_to_ptr(const struct cfi_shadow *s,
+	int index)
+{
+	if (unlikely(index < 0 || index >=3D SHADOW_ARR_SLOTS))
+		return 0;
+
+	return (s->base + index) << PAGE_SHIFT;
+}
+
+/* Returns the __cfi_check function address for the given shadow location =
*/
+static inline unsigned long shadow_to_check_fn(const struct cfi_shadow *s,
+	int index)
+{
+	if (unlikely(index < 0 || index >=3D SHADOW_ARR_SLOTS))
+		return 0;
+
+	if (unlikely(s->shadow[index] =3D=3D SHADOW_INVALID))
+		return 0;
+
+	/* __cfi_check is always page aligned */
+	return (s->base + s->shadow[index]) << PAGE_SHIFT;
+}
+
+static void prepare_next_shadow(const struct cfi_shadow __rcu *prev,
+		struct cfi_shadow *next)
+{
+	int i, index, check;
+
+	/* Mark everything invalid */
+	memset(next->shadow, 0xFF, SHADOW_ARR_SIZE);
+
+	if (!prev)
+		return; /* No previous shadow */
+
+	/* If the base address didn't change, an update is not needed */
+	if (prev->base =3D=3D next->base) {
+		memcpy(next->shadow, prev->shadow, SHADOW_ARR_SIZE);
+		return;
+	}
+
+	/* Convert the previous shadow to the new address range */
+	for (i =3D 0; i < SHADOW_ARR_SLOTS; ++i) {
+		if (prev->shadow[i] =3D=3D SHADOW_INVALID)
+			continue;
+
+		index =3D ptr_to_shadow(next, shadow_to_ptr(prev, i));
+		if (index < 0)
+			continue;
+
+		check =3D ptr_to_shadow(next,
+				shadow_to_check_fn(prev, prev->shadow[i]));
+		if (check < 0)
+			continue;
+
+		next->shadow[index] =3D (shadow_t)check;
+	}
+}
+
+static void add_module_to_shadow(struct cfi_shadow *s, struct module *mod,
+			unsigned long min_addr, unsigned long max_addr)
+{
+	int check_index;
+	unsigned long check =3D (unsigned long)mod->cfi_check;
+	unsigned long ptr;
+
+	if (unlikely(!PAGE_ALIGNED(check))) {
+		pr_warn("cfi: not using shadow for module %s\n", mod->name);
+		return;
+	}
+
+	check_index =3D ptr_to_shadow(s, check);
+	if (check_index < 0)
+		return; /* Module not addressable with shadow */
+
+	/* For each page, store the check function index in the shadow */
+	for (ptr =3D min_addr; ptr <=3D max_addr; ptr +=3D PAGE_SIZE) {
+		int index =3D ptr_to_shadow(s, ptr);
+
+		if (index >=3D 0) {
+			/* Each page must only contain one module */
+			WARN_ON_ONCE(s->shadow[index] !=3D SHADOW_INVALID);
+			s->shadow[index] =3D (shadow_t)check_index;
+		}
+	}
+}
+
+static void remove_module_from_shadow(struct cfi_shadow *s, struct module =
*mod,
+		unsigned long min_addr, unsigned long max_addr)
+{
+	unsigned long ptr;
+
+	for (ptr =3D min_addr; ptr <=3D max_addr; ptr +=3D PAGE_SIZE) {
+		int index =3D ptr_to_shadow(s, ptr);
+
+		if (index >=3D 0)
+			s->shadow[index] =3D SHADOW_INVALID;
+	}
+}
+
+typedef void (*update_shadow_fn)(struct cfi_shadow *, struct module *,
+			unsigned long min_addr, unsigned long max_addr);
+
+static void update_shadow(struct module *mod, unsigned long base_addr,
+		update_shadow_fn fn)
+{
+	struct cfi_shadow *prev;
+	struct cfi_shadow *next;
+	unsigned long min_addr, max_addr;
+
+	next =3D vmalloc(SHADOW_SIZE);
+
+	mutex_lock(&shadow_update_lock);
+	prev =3D rcu_dereference_protected(cfi_shadow,
+					 mutex_is_locked(&shadow_update_lock));
+
+	if (next) {
+		next->base =3D base_addr >> PAGE_SHIFT;
+		prepare_next_shadow(prev, next);
+
+		min_addr =3D (unsigned long)mod->core_layout.base;
+		max_addr =3D min_addr + mod->core_layout.text_size;
+		fn(next, mod, min_addr & PAGE_MASK, max_addr & PAGE_MASK);
+
+		set_memory_ro((unsigned long)next, SHADOW_PAGES);
+	}
+
+	rcu_assign_pointer(cfi_shadow, next);
+	mutex_unlock(&shadow_update_lock);
+	synchronize_rcu();
+
+	if (prev) {
+		set_memory_rw((unsigned long)prev, SHADOW_PAGES);
+		vfree(prev);
+	}
+}
+
+void cfi_module_add(struct module *mod, unsigned long base_addr)
+{
+	update_shadow(mod, base_addr, add_module_to_shadow);
+}
+
+void cfi_module_remove(struct module *mod, unsigned long base_addr)
+{
+	update_shadow(mod, base_addr, remove_module_from_shadow);
+}
+
+static inline cfi_check_fn ptr_to_check_fn(const struct cfi_shadow __rcu *=
s,
+	unsigned long ptr)
+{
+	int index;
+
+	if (unlikely(!s))
+		return NULL; /* No shadow available */
+
+	index =3D ptr_to_shadow(s, ptr);
+	if (index < 0)
+		return NULL; /* Cannot be addressed with shadow */
+
+	return (cfi_check_fn)shadow_to_check_fn(s, index);
+}
+
+static inline cfi_check_fn find_shadow_check_fn(unsigned long ptr)
+{
+	cfi_check_fn fn;
+
+	rcu_read_lock_sched();
+	fn =3D ptr_to_check_fn(rcu_dereference_sched(cfi_shadow), ptr);
+	rcu_read_unlock_sched();
+
+	return fn;
+}
+
+#else /* !CONFIG_CFI_CLANG_SHADOW */
+
+static inline cfi_check_fn find_shadow_check_fn(unsigned long ptr)
+{
+	return NULL;
+}
+
+#endif /* CONFIG_CFI_CLANG_SHADOW */
+
+static inline cfi_check_fn find_module_check_fn(unsigned long ptr)
+{
+	cfi_check_fn fn =3D NULL;
+	struct module *mod;
+
+	rcu_read_lock_sched();
+	mod =3D __module_address(ptr);
+	if (mod)
+		fn =3D mod->cfi_check;
+	rcu_read_unlock_sched();
+
+	return fn;
+}
+
+static inline cfi_check_fn find_check_fn(unsigned long ptr)
+{
+	cfi_check_fn fn =3D NULL;
+
+	if (is_kernel_text(ptr))
+		return __cfi_check;
+
+	/*
+	 * Indirect call checks can happen when RCU is not watching. Both
+	 * the shadow and __module_address use RCU, so we need to wake it
+	 * up if necessary.
+	 */
+	RCU_NONIDLE({
+		if (IS_ENABLED(CONFIG_CFI_CLANG_SHADOW))
+			fn =3D find_shadow_check_fn(ptr);
+
+		if (!fn)
+			fn =3D find_module_check_fn(ptr);
+	});
+
+	return fn;
+}
+
+void __cfi_slowpath_diag(uint64_t id, void *ptr, void *diag)
+{
+	cfi_check_fn fn =3D find_check_fn((unsigned long)ptr);
+
+	if (likely(fn))
+		fn(id, ptr, diag);
+	else /* Don't allow unchecked modules */
+		handle_cfi_failure(ptr);
+}
+EXPORT_SYMBOL(__cfi_slowpath_diag);
+
+#else /* !CONFIG_MODULES */
+
+void __cfi_slowpath_diag(uint64_t id, void *ptr, void *diag)
+{
+	handle_cfi_failure(ptr); /* No modules */
+}
+EXPORT_SYMBOL(__cfi_slowpath_diag);
+
+#endif /* CONFIG_MODULES */
+
+void cfi_failure_handler(void *data, void *ptr, void *vtable)
+{
+	handle_cfi_failure(ptr);
+}
+EXPORT_SYMBOL(cfi_failure_handler);
diff --git a/kernel/module.c b/kernel/module.c
index 30479355ab85..20fb004e7d8d 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -2146,6 +2146,8 @@ void __weak module_arch_freeing_init(struct module *m=
od)
 {
 }
=20
+static void cfi_cleanup(struct module *mod);
+
 /* Free a module, remove from lists, etc. */
 static void free_module(struct module *mod)
 {
@@ -2187,6 +2189,9 @@ static void free_module(struct module *mod)
 	synchronize_rcu();
 	mutex_unlock(&module_mutex);
=20
+	/* Clean up CFI for the module. */
+	cfi_cleanup(mod);
+
 	/* This may be empty, but that's OK */
 	module_arch_freeing_init(mod);
 	module_memfree(mod->init_layout.base);
@@ -3866,6 +3871,8 @@ static int unknown_module_param_cb(char *param, char =
*val, const char *modname,
 	return 0;
 }
=20
+static void cfi_init(struct module *mod);
+
 /*
  * Allocate and load the module: note that size of section 0 is always
  * zero, and we rely on this for optional sections.
@@ -3997,6 +4004,9 @@ static int load_module(struct load_info *info, const =
char __user *uargs,
=20
 	flush_module_icache(mod);
=20
+	/* Setup CFI for the module. */
+	cfi_init(mod);
+
 	/* Now copy in args */
 	mod->args =3D strndup_user(uargs, ~0UL >> 1);
 	if (IS_ERR(mod->args)) {
@@ -4070,6 +4080,7 @@ static int load_module(struct load_info *info, const =
char __user *uargs,
 	synchronize_rcu();
 	kfree(mod->args);
  free_arch_cleanup:
+	cfi_cleanup(mod);
 	module_arch_cleanup(mod);
  free_modinfo:
 	free_modinfo(mod);
@@ -4415,6 +4426,38 @@ int module_kallsyms_on_each_symbol(int (*fn)(void *,=
 const char *,
 #endif /* CONFIG_LIVEPATCH */
 #endif /* CONFIG_KALLSYMS */
=20
+static void cfi_init(struct module *mod)
+{
+#ifdef CONFIG_CFI_CLANG
+	initcall_t *init;
+	exitcall_t *exit;
+
+	rcu_read_lock_sched();
+	mod->cfi_check =3D (cfi_check_fn)
+		find_kallsyms_symbol_value(mod, "__cfi_check");
+	init =3D (initcall_t *)
+		find_kallsyms_symbol_value(mod, "__cfi_jt_init_module");
+	exit =3D (exitcall_t *)
+		find_kallsyms_symbol_value(mod, "__cfi_jt_cleanup_module");
+	rcu_read_unlock_sched();
+
+	/* Fix init/exit functions to point to the CFI jump table */
+	if (init)
+		mod->init =3D *init;
+	if (exit)
+		mod->exit =3D *exit;
+
+	cfi_module_add(mod, module_addr_min);
+#endif
+}
+
+static void cfi_cleanup(struct module *mod)
+{
+#ifdef CONFIG_CFI_CLANG
+	cfi_module_remove(mod, module_addr_min);
+#endif
+}
+
 /* Maximum number of characters written by module_flags() */
 #define MODULE_FLAGS_BUF_SIZE (TAINT_FLAGS_COUNT + 4)
=20
diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
index 735e11e9041b..dd87cea9fba7 100644
--- a/scripts/Makefile.modfinal
+++ b/scripts/Makefile.modfinal
@@ -23,7 +23,7 @@ modname =3D $(notdir $(@:.mod.o=3D))
 part-of-module =3D y
=20
 quiet_cmd_cc_o_c =3D CC [M]  $@
-      cmd_cc_o_c =3D $(CC) $(c_flags) -c -o $@ $<
+      cmd_cc_o_c =3D $(CC) $(filter-out $(CC_FLAGS_CFI), $(c_flags)) -c -o=
 $@ $<
=20
 %.mod.o: %.mod.c FORCE
 	$(call if_changed_dep,cc_o_c)
--=20
2.31.0.291.g576ba9dcdaf-goog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210331212722.2746212-2-samitolvanen%40google.com.
