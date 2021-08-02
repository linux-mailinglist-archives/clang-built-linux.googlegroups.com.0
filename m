Return-Path: <clang-built-linux+bncBCCNZCEGVYEBBAN2UGEAMGQETJVL2DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C953DE12C
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 23:00:50 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id a186-20020a671ac30000b0290289c309d3b2sf3249772vsa.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 14:00:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627938050; cv=pass;
        d=google.com; s=arc-20160816;
        b=YOS7CUFkGh2/PiRwkLOEFmEyWSI3H81U789M1aaE25CUUUsWEQ/pB480KADrjlc7c6
         gbcrS8lzpqaeNAasekgXq7YNMERIjh2EKwkRKwFjf4btlUdEiW3d2EkESmTPyoELUWYF
         PfV4XO6A7y3lRi8g1sNT3801YLKAqv0eOWYZ2iOrG3y4kQOgMX/FDQ7ObjjMBvkC4TUj
         0Lf24/hinL0G9ImVHsBAuBUUp8l6csXYExTaVCXGlxe29b+QPrGXU3/awyF52OjqqUxx
         rS/qeoEcqeINIFeXoTVpuGLFw/fe8FdhVIElL96mbmTbEME1K1usFWroQb1mu52ZhTlk
         LqPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=WeqfKkSAqvKw8MX9vL+PYSlGoW/tGH/u7ilUoasW39g=;
        b=D2YfrZBLkEtRFKGBYomKdmPfFx4JiOAhrGyn98HXDZdDRA54YG6XE/8KyZdA+NDKuR
         eqKr2YByaowiLOLUUpmgwddzeTD5OTOvnDxLPFnq/av8jU/oAog7KiHR+voXhRudRs46
         +NIjwYAwRZX3ezfe9dBJ2gpzWAHmHftSYVgSzCrt7DY6/RoiETfrgNt/g8ngN3WgoddJ
         hRbVRUZqY2tn2lbSJmDre7qeMFg6frJDEbRdzy2kX2LhcVtS6Cim+whysz7rOjtrZDsN
         iXHPCdZyjNVzNva15unuSSEIV0n1XEo3Pq/YxhVBZvxCEA3KkDxjMEkbj8gyflgBSNns
         WO4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XJtClUzY;
       spf=pass (google.com: domain of 3af0iyqgkeeklmofwcldrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--abdulras.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3AF0IYQgKEekLMOfWcLdRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--abdulras.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=WeqfKkSAqvKw8MX9vL+PYSlGoW/tGH/u7ilUoasW39g=;
        b=ftt2YwxElhE7WUt9hiWi4mqeRG6YHyBCBi671hfkTBSfCQZgAtgeQA+HaxxRainEAG
         jAL2DcQEsJQ5uP56JIrHaClKjNGMh96tkgev15K0ze2e1pgMUd4PXJrARmgG8UVcd4Xu
         2njRhELMtlr+DZ4IFDKM33NOWzNYgk2dPSXKc7T/NhI1ZGSSX6ozlifSmjSRYxZjMB6J
         YySNoq2Rit/EzclrYfttk2q0htmoNt4Hw0GyEqaQQMhHHzeb+HCGf34KcbeOPU3OViug
         23iJ7D2FT8mRjQ+SUm8Df1SrCUL+cVoq+N5Tvo6FoEcfipV6ZifbyeYKW0Jv9QVH6an5
         rvIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WeqfKkSAqvKw8MX9vL+PYSlGoW/tGH/u7ilUoasW39g=;
        b=EfH/YTikTnK0hQuVDXcKklAvz/keVPKGtO0+G8tj6OI9rVNDFnUNMPJ/99nhuYvxxK
         EODyGdBjeB5aV1HM6NEXdKuzWaWxdVABhHs9+h2UCuV9YXMDVD09Hw/cYGS6T01Vq507
         J6AvcYnXGw8B3bQLUHY66Hk1KncA2WiGeKQPN2OHcNdjTv9bcW7I3ms6REsOeGs9pNk0
         Nok3AJLFaKB7QTuehIBtUb6232v+U1ApMexvRnMWMahe8FcOvd11Lh+H+ibKFflUfloo
         eXTClTl92eWlhnU01t0khth67EmANDtuiz5ORwRmG2jdAr2HnAW6i1Z5cozRCoBKwARF
         mPhw==
X-Gm-Message-State: AOAM532W82GIRZGORjtuiw9ozyyITQtun8DAyLgZyXKTOitTbygtmlDZ
	yt8DrPZ//jclV1uLWIIOjgY=
X-Google-Smtp-Source: ABdhPJxmJ54Dax3MGTzTFhDA5cU9fokoA1oHnzyVmEKeEzmYg1YsM+cS0eCeAbaZEeQx1E2xR4eGrw==
X-Received: by 2002:a9f:3645:: with SMTP id s5mr12453240uad.101.1627938049883;
        Mon, 02 Aug 2021 14:00:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:c01:: with SMTP id a1ls1169917uak.4.gmail; Mon, 02 Aug
 2021 14:00:49 -0700 (PDT)
X-Received: by 2002:ae9:e005:: with SMTP id m5mr1433628qkk.207.1627938049360;
        Mon, 02 Aug 2021 14:00:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627938049; cv=none;
        d=google.com; s=arc-20160816;
        b=qvUIdo9Hy0EYr75j1as9Qw+iAw7gDraL4DcP+0fCdfCX/GiW8LftaEYoWP5TPA9zY3
         uEMVlGPNTR47/gWhwuldHT8sRTp5i2BEzUN13lCp10T8P8YIuu3fdtbHrv7qm8xeWKD8
         gy0ZOd/12J5HrcrlhsFPctNKCoIJUwWMerNmqQmQpJ3T3D0glzhAiIcLaM8fTsFgDA9T
         rCyH0EtK4XWKC/N/IP7MjvUN6cmIpjmsKfmYamXOA7djWBvVIMneJt6RWBUw3iLlbDnp
         W/mdilE1Af5n8R358DvU0fX/Yi47JNnCGyV0n6hOGNS+NWJ8wXgzkOYIME+FZKNE28iw
         6jCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=OoLM5GDms1jfZ6y4Gk1k9eO6cWXtYL+TWzyRucDvVfA=;
        b=U9gM8B5gO7jE7A3zqxk+M1fTGrXrP2iO7VLeVOa+INDoT3fXVQIay2lA7wN8q7fQC7
         Xw2ZfqOSWgRTScdrqmlve5l7cE2c5JZTGsksaDyrboELjO9zJ+8WMSnK4de+TV/RtaOh
         namPBJx/kLxXUWJSSqWO+NxOhqZ/uf6Q1oG5naZunlklq1IoPqJg9kGvdp5kfn4MYSOs
         XFyWSvQYmEpKwdIQAoz9C717fZsPevo7CNFv9OIaXxUNOhLVLimV4HCE2LijT9TxqX4y
         F/ZLBvS1vxNrJFF9k1ogf47tOrH5slHfa/brJ5V9/NuuX0omYeGsLKO+FnhEYxYI2dd0
         Tu9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XJtClUzY;
       spf=pass (google.com: domain of 3af0iyqgkeeklmofwcldrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--abdulras.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3AF0IYQgKEekLMOfWcLdRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--abdulras.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id u10si560935qtc.1.2021.08.02.14.00.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 14:00:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3af0iyqgkeeklmofwcldrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--abdulras.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id f3-20020a25cf030000b029055a2303fc2dso20429879ybg.11
        for <clang-built-linux@googlegroups.com>; Mon, 02 Aug 2021 14:00:49 -0700 (PDT)
X-Received: from abdulras.c.googlers.com ([fda3:e722:ac3:cc00:24:72f4:c0a8:41e1])
 (user=abdulras job=sendgmr) by 2002:a25:ac18:: with SMTP id
 w24mr25228768ybi.289.1627938048937; Mon, 02 Aug 2021 14:00:48 -0700 (PDT)
Date: Mon,  2 Aug 2021 21:00:17 +0000
Message-Id: <20210802210016.642262-1-abdulras@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
Subject: [PATCH] riscv: explicitly use symbol offsets for VDSO v2
From: "'Saleem Abdulrasool' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Bill Wendling <morbo@google.com>, 
	clang-built-linux@googlegroups.com, Saleem Abdulrasool <abdulras@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: abdulras@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XJtClUzY;       spf=pass
 (google.com: domain of 3af0iyqgkeeklmofwcldrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--abdulras.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3AF0IYQgKEekLMOfWcLdRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--abdulras.bounces.google.com;
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
 arch/riscv/include/asm/vdso.h              | 11 ++--------
 arch/riscv/kernel/vdso/Makefile            | 25 ++++++++++------------
 arch/riscv/kernel/vdso/gen_vdso_offsets.sh |  5 +++++
 arch/riscv/kernel/vdso/so2s.sh             |  6 ------
 5 files changed, 22 insertions(+), 29 deletions(-)
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
index 1453a2f563bc..098795262b92 100644
--- a/arch/riscv/include/asm/vdso.h
+++ b/arch/riscv/include/asm/vdso.h
@@ -9,24 +9,17 @@
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
 ({										\
 	extern const char __vdso_##name[];					\
-	(void __user *)((unsigned long)(base) + __vdso_##name);			\
+	(void __user *)((unsigned long)(base) + __vdso_##name##_offset);	\
 })
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210802210016.642262-1-abdulras%40google.com.
