Return-Path: <clang-built-linux+bncBCCNZCEGVYEBBKM6VOEAMGQEDXU2CPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 547F83E06C6
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 19:32:27 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id g21-20020ab05fd50000b02902a6182fc181sf492609uaj.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Aug 2021 10:32:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628098346; cv=pass;
        d=google.com; s=arc-20160816;
        b=bRFQzZaOPEevGX+dOELEVKZVpuGpQpspNQEae4fT3FmMxsTLwm/qaplinybAGJIM7C
         1yk4sMFv4wIEuGI3OMov+JUCGWWgUVMlsG4Oby1qVbhxHVl2bcRQTINU5HsBuQPtfWuU
         7fIvcflEKMUotmzG90cYUFtmcCDuouSqkuA50yD/h/e2oZdC4c6XgLbc0ypA2n7WMrUf
         gRuECLJWU/pqf7r12T+SPU6/b12ji7Yex/i1Xk1RvnYJNKm0RGJ3gmC/HXRBy7Z2UaXH
         +My6Qu2/WJn+biMPrrVzKz38RIV2KfN+irf+E7i8yE3AJUtq5KDVjXRmxOVhJNyaUQgp
         QONA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=eRClk5zSicyMlyfB/SX7FEFYsG9O8hCVcG/Cjqmd4UM=;
        b=osvRK3CMMDlD2W7rgXK6j1NvyNX6NcBqm1ZIc63t7732XfGpJuo2AZ9+BtaihsaNd8
         zWKnIQ/pdlYGIRhmhe+OgM7ArdtOEiEE0/gjIiJdPipbAP47ZwgzcFbDxuQBsoObbo5j
         Jq5HbuojS4n7OwD9L5KJvu7PFWMcxBlQoUcR4Y5vDjX/mDYq9rLLt9r7OvH1FWcfp/fZ
         +9G0euSiHxPOckWhi4qJb8+p5dSFuJEdbF800j3ye9YqODYhPq43fqqEXjRMBq9kGpOi
         yb+TX1zLzldEpg4IAlZnez7hmczrdBhHCddxGamsh/jd58gUfpAVD3/lm2zWnKcgrEnF
         Z+Nw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aEvu1Pvv;
       spf=pass (google.com: domain of 3kc8kyqgkeqicdfwntcuiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--abdulras.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Kc8KYQgKEQIcdfwntcuiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--abdulras.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=eRClk5zSicyMlyfB/SX7FEFYsG9O8hCVcG/Cjqmd4UM=;
        b=sWvsBsagmSCEcy8icGLDaNiQA4IWdgcR8ETi4fiYdvlwf7IX/VK7I2mKaw/qjbHJNG
         ALTZxsoBSWj7rfvvc0LzzKlkL1M5pOh+F8v1kgni55x93tglI55mMuJV8OJ+z4kGNwnk
         5uCY7isMqSDTOCFsIh6RVeq8VkqNL1iUiieJDbDm2IUPhvQeMrDAJEuSX5pnBt63Pk0s
         u5DqE4lH6MX21v2fBz5xZYwxyYRRvq0LpXB1JlHakAdIbckE70vqB1BZFtclZJU5AzKx
         uPONjPPmNRauNcDaLgAF1MButbBM6xoXx4CHOX4JgSqzDLRM2JRse8F5I4apj05p6CWF
         3Xug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eRClk5zSicyMlyfB/SX7FEFYsG9O8hCVcG/Cjqmd4UM=;
        b=izedaY611fmeX61vZT08vZ906wUShtBSZaolWLH4LTDUeYJIKVZWQQNOnp5Y1nFEol
         iL54p6LXsSSB4TGpy/o30aRP29cRSUdOyVDaDKhTuJ4Y7hi1rpPlIaXb1pzZAnUlo4Uz
         bdYAYh4ScE6TvH5lO4FA6o+sYCw/vcjeFfhjuxrehXUkVgYrFNGdB83FSg4sTnGhMfED
         ehQepfOjAIaEzloO6euwXtdlUihn1pAQ9ghjXPMglY/NaVRJlN9ZVn9NplgWH+uVF9B1
         sAucTRQq3BOIYo3qp3ZbGa18cNY51ZrUVKmGuOZZ8VzNsFida7yWTdKjKNkNO9LyYupA
         fzRQ==
X-Gm-Message-State: AOAM5321+g9KJ4r9gkBT/wpHSAgjHpZ6g2uAY6P8bIo66j9CjTaxxHym
	nFFvxQS9+5HKZ8TmJhac2nU=
X-Google-Smtp-Source: ABdhPJxlbPzJy0hlIswOHted6XJ3vyp33MwL1P69pyHNIGzioIfd6upK/bplji/US1UM88QqbzsPLg==
X-Received: by 2002:a1f:1d94:: with SMTP id d142mr790194vkd.6.1628098346061;
        Wed, 04 Aug 2021 10:32:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ec03:: with SMTP id d3ls577500vso.1.gmail; Wed, 04 Aug
 2021 10:32:25 -0700 (PDT)
X-Received: by 2002:a05:6102:3661:: with SMTP id bg1mr1124290vsb.50.1628098345520;
        Wed, 04 Aug 2021 10:32:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628098345; cv=none;
        d=google.com; s=arc-20160816;
        b=H3Hogdj5v7qP927dKogvRoQCuyxEmcNsTFVjfbM8V4L949laaV8GMQG8nDx0wS/JJa
         BHx8AT4jCkBEUrl29mpzSLgr3B8RCA88v5YdPnXYihbTUYp1obuY+3Nt2NVYBekmL1TT
         jLqGmyceWR8VWYEq18ArcC6uDP4oXe4s/VfgK3GwIIyCY5R10rYswz7yZ1sstF6onYm3
         lwLyDurHd19jD3FPecV1NTDjSJE0gFSjhdpOI2oNKBy29J4gKfWFsQI93d6HG2lqIwxO
         6O/XREdAPvA+OFUiWt0GmtgHdpdsSJ0b3YOl9VkNidlb5JFTsdBzaTSiHrGHXWpDDmbr
         AuTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=/j6yv6+Ku7KXNVVOYpvwLhxyPAj/+OpFFq2HsmTelKU=;
        b=tSdqIT4Qpfp07DZxNQnZNTpRM9CESTNU+fl9S/8SHOltSV+Gga+Z2xaLJ/CCshUm/r
         rwU76ssIpB4QTUEXzrezDnzOIBpMREeA3gHC/4oDR0P9F99uHNdYbQiKexXSlv/xKuXt
         a1HiOoibfNT8NEv16SKOEqZ6Uka6+F9kwHuSvbUzjp6wp3jJoD+Z9q1PiHfsN7oict4J
         MysjpWJqk7iI2DbjS6QAsDPLBXlP5tsAl5HmWCP7qX4iaNNqQqukDUAeD+bU/YhpoIS6
         FRitVP3saXK8O8vE3gPQnSxBSKxKJSbawFrrw/mCE7Xt4pDj5yqqd4dr3vpddzCFw4cc
         0/6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aEvu1Pvv;
       spf=pass (google.com: domain of 3kc8kyqgkeqicdfwntcuiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--abdulras.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Kc8KYQgKEQIcdfwntcuiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--abdulras.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id y3si186382vkn.3.2021.08.04.10.32.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Aug 2021 10:32:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kc8kyqgkeqicdfwntcuiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--abdulras.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id t101-20020a25aaee0000b0290578c0c455b2so3536951ybi.13
        for <clang-built-linux@googlegroups.com>; Wed, 04 Aug 2021 10:32:25 -0700 (PDT)
X-Received: from abdulras.c.googlers.com ([fda3:e722:ac3:cc00:24:72f4:c0a8:41e1])
 (user=abdulras job=sendgmr) by 2002:a25:c589:: with SMTP id
 v131mr621116ybe.344.1628098345153; Wed, 04 Aug 2021 10:32:25 -0700 (PDT)
Date: Wed,  4 Aug 2021 17:32:14 +0000
Message-Id: <20210804173214.1027994-1-abdulras@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
Subject: [PATCH v3] riscv: explicitly use symbol offsets for VDSO
From: "'Saleem Abdulrasool' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Bill Wendling <morbo@google.com>, 
	clang-built-linux@googlegroups.com, Saleem Abdulrasool <abdulras@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: abdulras@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aEvu1Pvv;       spf=pass
 (google.com: domain of 3kc8kyqgkeqicdfwntcuiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--abdulras.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Kc8KYQgKEQIcdfwntcuiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--abdulras.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Saleem Abdulrasool <abdulras@google.com>
Reply-To: Saleem Abdulrasool <abdulras@google.com>
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

The current implementation of the `__rt_sigaction` reference computed an
absolute offset relative to the mapped base of the VDSO.  While this can
be handled in the medlow model, the medany model cannot handle this as
it is meant to be position independent.  The current implementation
relied on the BFD linker relaxing the PC-relative relocation into an
absolute relocation as it was a near-zero address allowing it to be
referenced relative to `zero`.

We now extract the offsets and create a generated header allowing the
build with LLVM and lld to succeed as we no longer depend on the linker
rewriting address references near zero.  This change was largely
modelled after the ARM64 target which does something similar.

Signed-off-by: Saleem Abdulrasool <abdulras@google.com>
---
 arch/riscv/Makefile                        |  4 ++++
 arch/riscv/include/asm/vdso.h              | 14 ++----------
 arch/riscv/kernel/vdso/Makefile            | 25 ++++++++++------------
 arch/riscv/kernel/vdso/gen_vdso_offsets.sh |  5 +++++
 arch/riscv/kernel/vdso/so2s.sh             |  6 ------
 5 files changed, 22 insertions(+), 32 deletions(-)
 create mode 100755 arch/riscv/kernel/vdso/gen_vdso_offsets.sh
 delete mode 100755 arch/riscv/kernel/vdso/so2s.sh

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index bc74afdbf31e..e026b2d0a5a4 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -108,6 +108,10 @@ PHONY += vdso_install
 vdso_install:
 	$(Q)$(MAKE) $(build)=arch/riscv/kernel/vdso $@
 
+prepare: vdso_prepare
+vdso_prepare: prepare0
+	$(Q)$(MAKE) $(build)=arch/riscv/kernel/vdso include/generated/vdso-offsets.h
+
 ifneq ($(CONFIG_XIP_KERNEL),y)
 ifeq ($(CONFIG_RISCV_M_MODE)$(CONFIG_SOC_CANAAN),yy)
 KBUILD_IMAGE := $(boot)/loader.bin
diff --git a/arch/riscv/include/asm/vdso.h b/arch/riscv/include/asm/vdso.h
index 1453a2f563bc..d8d003c2b5a3 100644
--- a/arch/riscv/include/asm/vdso.h
+++ b/arch/riscv/include/asm/vdso.h
@@ -9,25 +9,15 @@
 #define _ASM_RISCV_VDSO_H
 
 #include <linux/types.h>
+#include <generated/vdso-offsets.h>
 
 #ifndef CONFIG_GENERIC_TIME_VSYSCALL
 struct vdso_data {
 };
 #endif
 
-/*
- * The VDSO symbols are mapped into Linux so we can just use regular symbol
- * addressing to get their offsets in userspace.  The symbols are mapped at an
- * offset of 0, but since the linker must support setting weak undefined
- * symbols to the absolute address 0 it also happens to support other low
- * addresses even when the code model suggests those low addresses would not
- * otherwise be availiable.
- */
 #define VDSO_SYMBOL(base, name)							\
-({										\
-	extern const char __vdso_##name[];					\
-	(void __user *)((unsigned long)(base) + __vdso_##name);			\
-})
+	(void __user *)((unsigned long)(base) + __vdso_##name##_offset)
 
 asmlinkage long sys_riscv_flush_icache(uintptr_t, uintptr_t, uintptr_t);
 
diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
index 24d936c147cd..f8cb9144a284 100644
--- a/arch/riscv/kernel/vdso/Makefile
+++ b/arch/riscv/kernel/vdso/Makefile
@@ -23,10 +23,10 @@ ifneq ($(c-gettimeofday-y),)
 endif
 
 # Build rules
-targets := $(obj-vdso) vdso.so vdso.so.dbg vdso.lds vdso-syms.S
+targets := $(obj-vdso) vdso.so vdso.so.dbg vdso.lds
 obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
 
-obj-y += vdso.o vdso-syms.o
+obj-y += vdso.o
 CPPFLAGS_vdso.lds += -P -C -U$(ARCH)
 
 # Disable -pg to prevent insert call site
@@ -43,20 +43,22 @@ $(obj)/vdso.o: $(obj)/vdso.so
 # link rule for the .so file, .lds has to be first
 $(obj)/vdso.so.dbg: $(obj)/vdso.lds $(obj-vdso) FORCE
 	$(call if_changed,vdsold)
-LDFLAGS_vdso.so.dbg = -shared -s -soname=linux-vdso.so.1 \
+LDFLAGS_vdso.so.dbg = -shared -S -soname=linux-vdso.so.1 \
 	--build-id=sha1 --hash-style=both --eh-frame-hdr
 
-# We also create a special relocatable object that should mirror the symbol
-# table and layout of the linked DSO. With ld --just-symbols we can then
-# refer to these symbols in the kernel code rather than hand-coded addresses.
-$(obj)/vdso-syms.S: $(obj)/vdso.so FORCE
-	$(call if_changed,so2s)
-
 # strip rule for the .so file
 $(obj)/%.so: OBJCOPYFLAGS := -S
 $(obj)/%.so: $(obj)/%.so.dbg FORCE
 	$(call if_changed,objcopy)
 
+# Generate VDSO offsets using helper script
+gen-vdsosym := $(srctree)/$(src)/gen_vdso_offsets.sh
+quiet_cmd_vdsosym = VDSOSYM $@
+	cmd_vdsosym = $(NM) $< | $(gen-vdsosym) | LC_ALL=C sort > $@
+
+include/generated/vdso-offsets.h: $(obj)/vdso.so.dbg FORCE
+	$(call if_changed,vdsosym)
+
 # actual build commands
 # The DSO images are built using a special linker script
 # Make sure only to export the intended __vdso_xxx symbol offsets.
@@ -65,11 +67,6 @@ quiet_cmd_vdsold = VDSOLD  $@
                    $(OBJCOPY) $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
                    rm $@.tmp
 
-# Extracts symbol offsets from the VDSO, converting them into an assembly file
-# that contains the same symbols at the same offsets.
-quiet_cmd_so2s = SO2S    $@
-      cmd_so2s = $(NM) -D $< | $(srctree)/$(src)/so2s.sh > $@
-
 # install commands for the unstripped file
 quiet_cmd_vdso_install = INSTALL $@
       cmd_vdso_install = cp $(obj)/$@.dbg $(MODLIB)/vdso/$@
diff --git a/arch/riscv/kernel/vdso/gen_vdso_offsets.sh b/arch/riscv/kernel/vdso/gen_vdso_offsets.sh
new file mode 100755
index 000000000000..c2e5613f3495
--- /dev/null
+++ b/arch/riscv/kernel/vdso/gen_vdso_offsets.sh
@@ -0,0 +1,5 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+
+LC_ALL=C
+sed -n -e 's/^[0]\+\(0[0-9a-fA-F]*\) . \(__vdso_[a-zA-Z0-9_]*\)$/\#define \2_offset\t0x\1/p'
diff --git a/arch/riscv/kernel/vdso/so2s.sh b/arch/riscv/kernel/vdso/so2s.sh
deleted file mode 100755
index e64cb6d9440e..000000000000
--- a/arch/riscv/kernel/vdso/so2s.sh
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-# SPDX-License-Identifier: GPL-2.0+
-# Copyright 2020 Palmer Dabbelt <palmerdabbelt@google.com>
-
-sed 's!\([0-9a-f]*\) T \([a-z0-9_]*\)\(@@LINUX_4.15\)*!.global \2\n.set \2,0x\1!' \
-| grep '^\.'
-- 
2.32.0.554.ge1b32706d8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210804173214.1027994-1-abdulras%40google.com.
