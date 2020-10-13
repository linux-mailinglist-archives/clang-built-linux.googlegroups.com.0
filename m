Return-Path: <clang-built-linux+bncBC2ORX645YPRBCHLSP6AKGQEONFUP7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6223828C5C3
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:09 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id s135sf11585741ios.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549128; cv=pass;
        d=google.com; s=arc-20160816;
        b=gsEbQkAnR+3gzbQ0wnCh/k633A35ApzY173O8MYvB1018obd69FmH6yZjV4r4G9JcR
         Bf6rNNMtef3QUGf02ATsZ+9bpnBgVB13tPHXQssOVBt7xawUatM87sqnvbdAb7yfYcU0
         NOtFQBiHFCMU66TxnFgz5ZpBgRywtSFuAOeRdI+CiIQuf4XUi7TXNBT0dgeguhJAZrsk
         iWFZ45I+ruiBeNsbWdN0I4URH65oczgck9M1lU5sRz4a7QEL47ALD5zvsok2KhE4GBF0
         WPF6FJ/yBdBOH0rh1tFZ0qLck893iXZlB+4ONtyiGmLiVevJFgz+ozE2tKAXGUmMOvv3
         eOCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=FtnpAZwgybC3yrS1ERASXY+b0hYxTX/0gkyjhUzobwk=;
        b=Eh7sjcyMb+j8zmwI9JWjgdlzQhHRfSqCsiNUwFMY9h4Oi9FB7fAl4twebbIMEN7WPF
         ih7SrQb40zfSzy4xli/lt27FACTYR/UHtv+rmILZL7Sm1RNXYA9TKF7iUyo7kcDQn8Rp
         SyRR7z8J+/vPrOmQAerCzCNCdZn9JiWSnMLrTvGIBtnMXrtJQXvbMTcmvtZZJNEDhftk
         85Asw4GTtDU9QNscebLWjtXFmuw1OHWUC/HKnl+4xbKPPnlOkypTzLrjCv/IjyPl21F3
         kz65Pos9McIdcpzLtORccs7gGC6d1W3+xZN6JtxI7Mz70XGX4Zk0qa2PSNtz9BrLsDCa
         ETLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Z96hT5gh;
       spf=pass (google.com: domain of 3h_wexwwkaig4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3h_WEXwwKAIg4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FtnpAZwgybC3yrS1ERASXY+b0hYxTX/0gkyjhUzobwk=;
        b=dZ89/0OpgO/nnuE7UORZ95VU2Ri+By9jj8XX4s+lTJdn8ERZN0YbuFf2Xn6S8Ye9QU
         awLp00bW++bXvQgN3kZzfnQIR23YOLnN61C0LQNzYHJnvWDdxbQ7Lh3h539V55RVDGm7
         JgaXBvNGsDk1o8f0swUNzdnnnyo6Pe5fNo6BBmJkzsR97QIO2lHUN3i5vm0PrGMkVAs3
         lKVs2GLuzc8P0Z9tI/33aXcQu9ahiILVu7qKxJ1apPWW9iG3elsIrbFfnwRhvDxywDBT
         4WOn0xf2T2PoIEefwkTNU2CxUBRBRv3yYQ9XgyJADmVraYfwu3zKChXwsDnLwudKXSzx
         bn6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FtnpAZwgybC3yrS1ERASXY+b0hYxTX/0gkyjhUzobwk=;
        b=KuwRXoo1BloSKdGTGnhUA6lhWDu9GTrrHJDBPdFHCIJVS4V5cS+HHI0MXG2HXn00+b
         fwlR8y/S7IkMtIXbnfu1duoG8kuMS67xsxiGi/QpIVJczNm56SACuWUqU8QnlURIg5sw
         FyM45aUgsSghqMgYg+t1AxX2rJBkiw8ek9D3kh35g/qwHou+S51NbJFTGfDX2hoFZhOL
         mFySzYKwt/MJtJXf33bnwx+xECpsVBCoBsyHdOTefzN8s/8CVcoj3CnzG8dqMMiHH04e
         ri7laEkgxv6oFgmKoMsO6lm/+k/bqdAUjoL+gE3+/dOFtJHUXE3PQIYPnT7P0d2q3MpF
         B1VA==
X-Gm-Message-State: AOAM532N6MPNeotfHGycd4Meg2WW8Q+TM5O+o5blSOX8jRz9H8FZla4F
	vzVZKgnLFllEzfUBVNTFlsE=
X-Google-Smtp-Source: ABdhPJxufpM6zvhOqjScV3rhSIfT2APd748/fUG4aAsHfE3DrKSd1ER5jozx2wai+X49SSnQgNDbcQ==
X-Received: by 2002:a02:ccb9:: with SMTP id t25mr22590579jap.21.1602549128286;
        Mon, 12 Oct 2020 17:32:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:2aa:: with SMTP id d10ls2176146jaq.5.gmail; Mon, 12
 Oct 2020 17:32:07 -0700 (PDT)
X-Received: by 2002:a05:6638:446:: with SMTP id r6mr16477403jap.60.1602549127871;
        Mon, 12 Oct 2020 17:32:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549127; cv=none;
        d=google.com; s=arc-20160816;
        b=nB+C6AfivYMWn7LA6Y+PfvrLgt/EVBDG3iMbJkwuEnilVy6bmHlr1KlknLV0JaYxCf
         pADKCnwJijZi5EDukniKh8EIb+GDsbIyKIKoIQcTuEucl4UpU052hF3XffWGDUoXv8VC
         caD+85LchN9ZWe0gCN4asCSHarEiDbcfP8j6pWx6hLopd2UJ2zGBR+k8oHBnyIZqx6XM
         fpebslBSTefvmkjo4L0bU1/7iJTiukgtnSyZV0324o1kmAagxY365QOBKoQQ6ei/KNa6
         Y//0UHHeAi/8iSgNprnCzMZiCCNzn3iiz8sN3BaoJdaR6qo4GRADMbVYo+1qfL3TqZhW
         OwFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=cloCclz36A1w92k6Zbeecg4QRyayzvUWthNVuds2M9U=;
        b=Dg+AcZEY4S8ey5dbwN4gmGmGxG+WDCmbtYla/AzOf8Kdr4Ak1L8z6M4iSD12Z6bTVe
         1ZMSLwlVtKOebmSMUs0Ztr+5bsgbcmsrzG3J8Sx0RBwXmX+sVR/oSCNbCbaaVQPu5WZa
         pVSoOHzPo1LATuXw6vQ/H4M6ROjg6XKY5RBi3U586W+kOKxeebdWPVD4HLNqiEKkn76I
         DkqW9X0AwkZLZ9IB6lswVin/NqNmCFLEpESDr8/2Pa3WoBGi1LEc+ygGLQnJJ0zLocfd
         8AJ68VOPUeig80Bg1sIPsS/zUjbBGo16mgOX+kUaEpF0LP5P7fZpBriW3BunswnjFt/K
         aVaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Z96hT5gh;
       spf=pass (google.com: domain of 3h_wexwwkaig4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3h_WEXwwKAIg4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id b12si231324ile.3.2020.10.12.17.32.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3h_wexwwkaig4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id m62so15540258ybb.6
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:07 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:5403:: with SMTP id
 i3mr40522422ybb.43.1602549127241; Mon, 12 Oct 2020 17:32:07 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:39 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 01/25] kbuild: preprocess module linker script
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Z96hT5gh;       spf=pass
 (google.com: domain of 3h_wexwwkaig4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3h_WEXwwKAIg4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
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

From: Masahiro Yamada <masahiroy@kernel.org>

There was a request to preprocess the module linker script like we
do for the vmlinux one. (https://lkml.org/lkml/2020/8/21/512)

The difference between vmlinux.lds and module.lds is that the latter
is needed for external module builds, thus must be cleaned up by
'make mrproper' instead of 'make clean'. Also, it must be created
by 'make modules_prepare'.

You cannot put it in arch/$(SRCARCH)/kernel/, which is cleaned up by
'make clean'. I moved arch/$(SRCARCH)/kernel/module.lds to
arch/$(SRCARCH)/include/asm/module.lds.h, which is included from
scripts/module.lds.S.

scripts/module.lds is fine because 'make clean' keeps all the
build artifacts under scripts/.

You can add arch-specific sections in <asm/module.lds.h>.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Tested-by: Jessica Yu <jeyu@kernel.org>
Acked-by: Will Deacon <will@kernel.org>
Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>
Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Jessica Yu <jeyu@kernel.org>
---
 Makefile                                               | 10 ++++++----
 arch/arm/Makefile                                      |  4 ----
 .../{kernel/module.lds => include/asm/module.lds.h}    |  2 ++
 arch/arm64/Makefile                                    |  4 ----
 .../{kernel/module.lds => include/asm/module.lds.h}    |  2 ++
 arch/ia64/Makefile                                     |  1 -
 arch/ia64/{module.lds => include/asm/module.lds.h}     |  0
 arch/m68k/Makefile                                     |  1 -
 .../{kernel/module.lds => include/asm/module.lds.h}    |  0
 arch/powerpc/Makefile                                  |  1 -
 .../{kernel/module.lds => include/asm/module.lds.h}    |  0
 arch/riscv/Makefile                                    |  3 ---
 .../{kernel/module.lds => include/asm/module.lds.h}    |  3 ++-
 arch/um/include/asm/Kbuild                             |  1 +
 include/asm-generic/Kbuild                             |  1 +
 include/asm-generic/module.lds.h                       | 10 ++++++++++
 scripts/.gitignore                                     |  1 +
 scripts/Makefile                                       |  3 +++
 scripts/Makefile.modfinal                              |  5 ++---
 scripts/{module-common.lds => module.lds.S}            |  3 +++
 scripts/package/builddeb                               |  2 +-
 21 files changed, 34 insertions(+), 23 deletions(-)
 rename arch/arm/{kernel/module.lds => include/asm/module.lds.h} (72%)
 rename arch/arm64/{kernel/module.lds => include/asm/module.lds.h} (76%)
 rename arch/ia64/{module.lds => include/asm/module.lds.h} (100%)
 rename arch/m68k/{kernel/module.lds => include/asm/module.lds.h} (100%)
 rename arch/powerpc/{kernel/module.lds => include/asm/module.lds.h} (100%)
 rename arch/riscv/{kernel/module.lds => include/asm/module.lds.h} (84%)
 create mode 100644 include/asm-generic/module.lds.h
 rename scripts/{module-common.lds => module.lds.S} (93%)

diff --git a/Makefile b/Makefile
index 51540b291738..0dcf302fe2da 100644
--- a/Makefile
+++ b/Makefile
@@ -505,7 +505,6 @@ KBUILD_CFLAGS_KERNEL :=
 KBUILD_AFLAGS_MODULE  := -DMODULE
 KBUILD_CFLAGS_MODULE  := -DMODULE
 KBUILD_LDFLAGS_MODULE :=
-export KBUILD_LDS_MODULE := $(srctree)/scripts/module-common.lds
 KBUILD_LDFLAGS :=
 CLANG_FLAGS :=
 
@@ -1384,7 +1383,7 @@ endif
 # using awk while concatenating to the final file.
 
 PHONY += modules
-modules: $(if $(KBUILD_BUILTIN),vmlinux) modules_check
+modules: $(if $(KBUILD_BUILTIN),vmlinux) modules_check modules_prepare
 	$(Q)$(MAKE) -f $(srctree)/scripts/Makefile.modpost
 
 PHONY += modules_check
@@ -1401,6 +1400,7 @@ targets += modules.order
 # Target to prepare building external modules
 PHONY += modules_prepare
 modules_prepare: prepare
+	$(Q)$(MAKE) $(build)=scripts scripts/module.lds
 
 # Target to install modules
 PHONY += modules_install
@@ -1722,7 +1722,9 @@ help:
 	@echo  '  clean           - remove generated files in module directory only'
 	@echo  ''
 
-PHONY += prepare
+# no-op for external module builds
+PHONY += prepare modules_prepare
+
 endif # KBUILD_EXTMOD
 
 # Single targets
@@ -1755,7 +1757,7 @@ MODORDER := .modules.tmp
 endif
 
 PHONY += single_modpost
-single_modpost: $(single-no-ko)
+single_modpost: $(single-no-ko) modules_prepare
 	$(Q){ $(foreach m, $(single-ko), echo $(extmod-prefix)$m;) } > $(MODORDER)
 	$(Q)$(MAKE) -f $(srctree)/scripts/Makefile.modpost
 
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index e589da3c8949..9c4d19ae7d61 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -20,10 +20,6 @@ endif
 # linker. All sections should be explicitly named in the linker script.
 LDFLAGS_vmlinux += $(call ld-option, --orphan-handling=warn)
 
-ifeq ($(CONFIG_ARM_MODULE_PLTS),y)
-KBUILD_LDS_MODULE	+= $(srctree)/arch/arm/kernel/module.lds
-endif
-
 GZFLAGS		:=-9
 #KBUILD_CFLAGS	+=-pipe
 
diff --git a/arch/arm/kernel/module.lds b/arch/arm/include/asm/module.lds.h
similarity index 72%
rename from arch/arm/kernel/module.lds
rename to arch/arm/include/asm/module.lds.h
index 79cb6af565e5..0e7cb4e314b4 100644
--- a/arch/arm/kernel/module.lds
+++ b/arch/arm/include/asm/module.lds.h
@@ -1,5 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0 */
+#ifdef CONFIG_ARM_MODULE_PLTS
 SECTIONS {
 	.plt : { BYTE(0) }
 	.init.plt : { BYTE(0) }
 }
+#endif
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index aff994473eb2..32d7e07b0acf 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -127,10 +127,6 @@ endif
 
 CHECKFLAGS	+= -D__aarch64__
 
-ifeq ($(CONFIG_ARM64_MODULE_PLTS),y)
-KBUILD_LDS_MODULE	+= $(srctree)/arch/arm64/kernel/module.lds
-endif
-
 ifeq ($(CONFIG_DYNAMIC_FTRACE_WITH_REGS),y)
   KBUILD_CPPFLAGS += -DCC_USING_PATCHABLE_FUNCTION_ENTRY
   CC_FLAGS_FTRACE := -fpatchable-function-entry=2
diff --git a/arch/arm64/kernel/module.lds b/arch/arm64/include/asm/module.lds.h
similarity index 76%
rename from arch/arm64/kernel/module.lds
rename to arch/arm64/include/asm/module.lds.h
index 22e36a21c113..691f15af788e 100644
--- a/arch/arm64/kernel/module.lds
+++ b/arch/arm64/include/asm/module.lds.h
@@ -1,5 +1,7 @@
+#ifdef CONFIG_ARM64_MODULE_PLTS
 SECTIONS {
 	.plt (NOLOAD) : { BYTE(0) }
 	.init.plt (NOLOAD) : { BYTE(0) }
 	.text.ftrace_trampoline (NOLOAD) : { BYTE(0) }
 }
+#endif
diff --git a/arch/ia64/Makefile b/arch/ia64/Makefile
index 2876a7df1b0a..703b1c4f6d12 100644
--- a/arch/ia64/Makefile
+++ b/arch/ia64/Makefile
@@ -20,7 +20,6 @@ CHECKFLAGS	+= -D__ia64=1 -D__ia64__=1 -D_LP64 -D__LP64__
 
 OBJCOPYFLAGS	:= --strip-all
 LDFLAGS_vmlinux	:= -static
-KBUILD_LDS_MODULE += $(srctree)/arch/ia64/module.lds
 KBUILD_AFLAGS_KERNEL := -mconstant-gp
 EXTRA		:=
 
diff --git a/arch/ia64/module.lds b/arch/ia64/include/asm/module.lds.h
similarity index 100%
rename from arch/ia64/module.lds
rename to arch/ia64/include/asm/module.lds.h
diff --git a/arch/m68k/Makefile b/arch/m68k/Makefile
index 4438ffb4bbe1..ea14f2046fb4 100644
--- a/arch/m68k/Makefile
+++ b/arch/m68k/Makefile
@@ -75,7 +75,6 @@ KBUILD_CPPFLAGS += -D__uClinux__
 endif
 
 KBUILD_LDFLAGS := -m m68kelf
-KBUILD_LDS_MODULE += $(srctree)/arch/m68k/kernel/module.lds
 
 ifdef CONFIG_SUN3
 LDFLAGS_vmlinux = -N
diff --git a/arch/m68k/kernel/module.lds b/arch/m68k/include/asm/module.lds.h
similarity index 100%
rename from arch/m68k/kernel/module.lds
rename to arch/m68k/include/asm/module.lds.h
diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
index 3e8da9cf2eb9..8935658fcd06 100644
--- a/arch/powerpc/Makefile
+++ b/arch/powerpc/Makefile
@@ -65,7 +65,6 @@ UTS_MACHINE := $(subst $(space),,$(machine-y))
 ifdef CONFIG_PPC32
 KBUILD_LDFLAGS_MODULE += arch/powerpc/lib/crtsavres.o
 else
-KBUILD_LDS_MODULE += $(srctree)/arch/powerpc/kernel/module.lds
 ifeq ($(call ld-ifversion, -ge, 225000000, y),y)
 # Have the linker provide sfpr if possible.
 # There is a corresponding test in arch/powerpc/lib/Makefile
diff --git a/arch/powerpc/kernel/module.lds b/arch/powerpc/include/asm/module.lds.h
similarity index 100%
rename from arch/powerpc/kernel/module.lds
rename to arch/powerpc/include/asm/module.lds.h
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index fb6e37db836d..8edaa8bd86d6 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -53,9 +53,6 @@ endif
 ifeq ($(CONFIG_CMODEL_MEDANY),y)
 	KBUILD_CFLAGS += -mcmodel=medany
 endif
-ifeq ($(CONFIG_MODULE_SECTIONS),y)
-	KBUILD_LDS_MODULE += $(srctree)/arch/riscv/kernel/module.lds
-endif
 ifeq ($(CONFIG_PERF_EVENTS),y)
         KBUILD_CFLAGS += -fno-omit-frame-pointer
 endif
diff --git a/arch/riscv/kernel/module.lds b/arch/riscv/include/asm/module.lds.h
similarity index 84%
rename from arch/riscv/kernel/module.lds
rename to arch/riscv/include/asm/module.lds.h
index 295ecfb341a2..4254ff2ff049 100644
--- a/arch/riscv/kernel/module.lds
+++ b/arch/riscv/include/asm/module.lds.h
@@ -1,8 +1,9 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /* Copyright (C) 2017 Andes Technology Corporation */
-
+#ifdef CONFIG_MODULE_SECTIONS
 SECTIONS {
 	.plt (NOLOAD) : { BYTE(0) }
 	.got (NOLOAD) : { BYTE(0) }
 	.got.plt (NOLOAD) : { BYTE(0) }
 }
+#endif
diff --git a/arch/um/include/asm/Kbuild b/arch/um/include/asm/Kbuild
index 8d435f8a6dec..1c63b260ecc4 100644
--- a/arch/um/include/asm/Kbuild
+++ b/arch/um/include/asm/Kbuild
@@ -16,6 +16,7 @@ generic-y += kdebug.h
 generic-y += mcs_spinlock.h
 generic-y += mm-arch-hooks.h
 generic-y += mmiowb.h
+generic-y += module.lds.h
 generic-y += param.h
 generic-y += pci.h
 generic-y += percpu.h
diff --git a/include/asm-generic/Kbuild b/include/asm-generic/Kbuild
index 74b0612601dd..7cd4e627e00e 100644
--- a/include/asm-generic/Kbuild
+++ b/include/asm-generic/Kbuild
@@ -40,6 +40,7 @@ mandatory-y += mmiowb.h
 mandatory-y += mmu.h
 mandatory-y += mmu_context.h
 mandatory-y += module.h
+mandatory-y += module.lds.h
 mandatory-y += msi.h
 mandatory-y += pci.h
 mandatory-y += percpu.h
diff --git a/include/asm-generic/module.lds.h b/include/asm-generic/module.lds.h
new file mode 100644
index 000000000000..f210d5c1b78b
--- /dev/null
+++ b/include/asm-generic/module.lds.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __ASM_GENERIC_MODULE_LDS_H
+#define __ASM_GENERIC_MODULE_LDS_H
+
+/*
+ * <asm/module.lds.h> can specify arch-specific sections for linking modules.
+ * Empty for the asm-generic header.
+ */
+
+#endif /* __ASM_GENERIC_MODULE_LDS_H */
diff --git a/scripts/.gitignore b/scripts/.gitignore
index 0d1c8e217cd7..a6c11316c969 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -8,3 +8,4 @@ asn1_compiler
 extract-cert
 sign-file
 insert-sys-cert
+/module.lds
diff --git a/scripts/Makefile b/scripts/Makefile
index bc018e4b733e..b5418ec587fb 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -29,6 +29,9 @@ endif
 # The following programs are only built on demand
 hostprogs += unifdef
 
+# The module linker script is preprocessed on demand
+targets += module.lds
+
 subdir-$(CONFIG_GCC_PLUGINS) += gcc-plugins
 subdir-$(CONFIG_MODVERSIONS) += genksyms
 subdir-$(CONFIG_SECURITY_SELINUX) += selinux
diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
index 411c1e600e7d..ae01baf96f4e 100644
--- a/scripts/Makefile.modfinal
+++ b/scripts/Makefile.modfinal
@@ -33,11 +33,10 @@ quiet_cmd_ld_ko_o = LD [M]  $@
       cmd_ld_ko_o =                                                     \
 	$(LD) -r $(KBUILD_LDFLAGS)					\
 		$(KBUILD_LDFLAGS_MODULE) $(LDFLAGS_MODULE)		\
-		$(addprefix -T , $(KBUILD_LDS_MODULE))			\
-		-o $@ $(filter %.o, $^);				\
+		-T scripts/module.lds -o $@ $(filter %.o, $^);		\
 	$(if $(ARCH_POSTLINK), $(MAKE) -f $(ARCH_POSTLINK) $@, true)
 
-$(modules): %.ko: %.o %.mod.o $(KBUILD_LDS_MODULE) FORCE
+$(modules): %.ko: %.o %.mod.o scripts/module.lds FORCE
 	+$(call if_changed,ld_ko_o)
 
 targets += $(modules) $(modules:.ko=.mod.o)
diff --git a/scripts/module-common.lds b/scripts/module.lds.S
similarity index 93%
rename from scripts/module-common.lds
rename to scripts/module.lds.S
index d61b9e8678e8..69b9b71a6a47 100644
--- a/scripts/module-common.lds
+++ b/scripts/module.lds.S
@@ -24,3 +24,6 @@ SECTIONS {
 
 	__jump_table		0 : ALIGN(8) { KEEP(*(__jump_table)) }
 }
+
+/* bring in arch-specific sections */
+#include <asm/module.lds.h>
diff --git a/scripts/package/builddeb b/scripts/package/builddeb
index 6df3c9f8b2da..44f212e37935 100755
--- a/scripts/package/builddeb
+++ b/scripts/package/builddeb
@@ -55,7 +55,7 @@ deploy_kernel_headers () {
 		cd $srctree
 		find . arch/$SRCARCH -maxdepth 1 -name Makefile\*
 		find include scripts -type f -o -type l
-		find arch/$SRCARCH -name module.lds -o -name Kbuild.platforms -o -name Platform
+		find arch/$SRCARCH -name Kbuild.platforms -o -name Platform
 		find $(find arch/$SRCARCH -name include -o -name scripts -type d) -type f
 	) > debian/hdrsrcfiles
 
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-2-samitolvanen%40google.com.
