Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWOJXP6QKGQEV2I35LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5388E2B24FB
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 20:56:10 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id l2sf7350974ilj.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 11:56:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605297369; cv=pass;
        d=google.com; s=arc-20160816;
        b=tWIddoJHMFvk3ExLjXkRd46a3ijA8wtPXv6cFXZXtuP1N2Fz8WLA7Vnre8Bj1S54Q1
         oKB3WgSbWp/HnuwtClDyTn22YI9iWxVfQeuNPIOaUYGQ7AbQzO1GHcloESl6+xegwRB8
         Lt8bCF95CUi/BLSyRTOWpGeVuDA6BP+/+jfQ4GLg/zy94uaDjn4t61wNADbpK+2nRqRO
         vC+8Rx6lZBRZvEWv5m7oIgVqXbQig3QzxOi0H4kZNaFy+ptTD8rTVCgcAzJhHWdJ1PgN
         7DRQ9p/0WH0ivEzL1dfUwVTVDP36/68LsgmyQorTAp6VUzIQ2nd5FUWHt26QTh+H8ktn
         Wqiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=TBEH33b04ABBtRq5y/ud4qNZR6i3FPYtNpd2tJ79/dw=;
        b=uD5YWGCfvIH8RxKmtvhtI4riAV00nzHpclxJ4ot7msibYr/UQrb9zNeif2rwSS5uDJ
         JZojeX+9Pinx0V4W4A6ychaIwteveIrEnaNua6ju46R1edaSaIJnT3/7zY7D+PSSJ9gT
         cTqriFoABXJS1k+7bomIsKkmiqjmC05ES2PWRjTPgYoRj8CAKSiEzpJbpexgDaKwJtUU
         kGJ4NnvNnYOk1lfcgaslwdRRvyquQxgxoQO3IGIeZ2WdBu19z9PAS3dVEZy9Q0teCLRO
         3+bKyGymKg9OJmmGZqSevZNXhaaFPtnfQxtVEsB/INRrcQQpKlsEgr2A/F8rwvx6lTnf
         k0LA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sqg84bll;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TBEH33b04ABBtRq5y/ud4qNZR6i3FPYtNpd2tJ79/dw=;
        b=mzl6z8QPKu2xjAglVm1yMbFd14OUL64Zs8bmo1P4M2GyX/UEF/JkZYzMXWAcMDosUS
         vm9i2GQ5vHMPanFqu89d7j8zS7xKXRY1FGCHqPRlWTaSg96Z/HipOecm8F66tbHdPIcX
         rskUmhfMlRJhU4Q3d8b6hSpJwtVTdDk/qBrRZn3KEPYK4hCWHpty7PZ8RLmux30+KPVo
         3GwAxM84oenciZKl3ub/OAoE6CWpcitphOwBTTUjwqLVzZKD1ksRO7JsgGPIN0qssKSJ
         kU3CyBcnjXix5F5H4BiPPzG7a619Fg3ls2RQaOkfTXn0U5ohLdttMIh8SAC8GvXPOpfe
         Jsgg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TBEH33b04ABBtRq5y/ud4qNZR6i3FPYtNpd2tJ79/dw=;
        b=SmwVSVZ0tBVU2HyOQNM806hfOK1yizlvwC/z+cSC8S4SYzs2yIx5zYy7JV+++3e7ek
         BaPy2PoHGzuOWb5QiNvByLbt40CTf+PuYFnxvxZJeBegVNnmt0+JmejWkTJMOn1/RbOC
         eXIZCD3MhofGuR9wxvtu6s9Dh2cCf7/CMc+hfDpyW4TdNtKfuTi2FSU99PDPtLjOSqPt
         Q97FK/asVxW6HqOvQZ26LeJYwpy9fZqvBUJFy89VP8lB8Gv0rTvqfnfH8/zx5mFHZuTy
         K/EOy3m9CiOwgtuAcisk/SaAVBh9GVQBFveErcyOCrLOix/5KDGU1nvLHfPWJZd7O5XD
         MM1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TBEH33b04ABBtRq5y/ud4qNZR6i3FPYtNpd2tJ79/dw=;
        b=ofv0VQi3CmTTI0cYSO/IX/3wlLjHm5qU0YJ7Yd3kNn5kTgh8AIgRn8GqGXHiUAyjbY
         /PcRJwut4S8UkITfUs8mtImEShMQOdTAq9oqwy+y2v25RMv+EoUKlW2IX2xZxNQbwb3d
         qIp/Chgt71JtnOMvVQSrE/is5J5tP8r7VEg+6VhklcEMpGel/Ey25gSgehWq/BUAHESy
         ggxcXuWJHyEBLR8T8mDvbGQi4H4Lvs9kr4i+GkI9Ea9zI4ay/5K9BWb0epu70op7nzXR
         Ch5MCXivQNIdHtbDoQRJFmsC4TReHmELcNc8N921c0rIwQVabVs9bRhUMj0hpL1wNBXb
         3ROA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532cIW4iJIqWeKvdkKCHLaKQqTFJEg0Krt3MNK03GLzeCNSiGOsU
	YyI1LyIvHVUgsvmVvqMh9Zc=
X-Google-Smtp-Source: ABdhPJxNCHbWHpSyKCmYmS+9EFgY3veQlnkK/ZLrcXHY8zA55kCZFQPZQJLvPhb4wI0ajkpdRiHqRQ==
X-Received: by 2002:a02:6014:: with SMTP id i20mr3364605jac.59.1605297369187;
        Fri, 13 Nov 2020 11:56:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:740c:: with SMTP id p12ls1784596ilc.2.gmail; Fri, 13 Nov
 2020 11:56:08 -0800 (PST)
X-Received: by 2002:a92:9903:: with SMTP id p3mr1289790ili.138.1605297368766;
        Fri, 13 Nov 2020 11:56:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605297368; cv=none;
        d=google.com; s=arc-20160816;
        b=JO0xTksy4BKsU5zjkjyv0BADThODQtn25aw97YhltjnmyWo6U6FwLQ4m6MajmXwyZ8
         1msgyq0+gZNXSNChh9mAJb6O2htEknstqFk04xNcdDHmxSbuQNWys3kXfphKUwQEK8IQ
         tny7i/M90uCmz10KNa/gfc7nGwtzBEswzoSJzTDTKjuQvzik/MJ0xfUX8QtWTpOHSaDt
         Vy4NjBBY1mH2XDlx/UrvI2sxm93cBY8Jd0EWbTuQSdFJRZGgYpm+cZEeoDANngx4Pld9
         QdTOlkZS6bBOuFc30FZw9F3HJYgDgjqGA06k08s5GZUH69dKQzpWDQSb5gLKhaD7KQdD
         DkNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=vF5OSQocxvLRikipGjDLzxvJK5EXf89rqyYddj8Iyvg=;
        b=LjDEYf7cpWik2FxpabuYdNCdG6/3zfkUppWCgWW3jdb/yvMl7sra76/CvaUNYwMgBM
         0rq7bq5btAjNHvY5W4BdkIZiLw7eNn5laIsCZqIsaxEhbLGhohLaIGLxSkSDBKltxi4R
         RWRDYX2Z/x72OtcUCn6cKWRtEfh6XkRnJQVf2PadRM298BLlIBBoFlEzmtTLaCwl/Gdp
         q4a/sfzv+v50HBmNT48+Ccrjw7J9v3iNR+VUre8pFVqQamQxlG3e+gUXskODZ52iStLq
         cf6qtVvFRgxVEP+la2EHH7CQfXXIWzC2vn//gwgmvXXdmn5qgsVF29FhqxvWIne9ZTSr
         x9qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sqg84bll;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id y16si424104ilk.4.2020.11.13.11.56.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 11:56:08 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id r7so9983402qkf.3
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 11:56:08 -0800 (PST)
X-Received: by 2002:a05:620a:7e4:: with SMTP id k4mr3339504qkk.13.1605297366402;
        Fri, 13 Nov 2020 11:56:06 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id z26sm6977757qki.40.2020.11.13.11.56.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 11:56:05 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Kees Cook <keescook@chromium.org>
Cc: Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 1/2] kbuild: Hoist '--orphan-handling' into Kconfig
Date: Fri, 13 Nov 2020 12:55:52 -0700
Message-Id: <20201113195553.1487659-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=sqg84bll;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Currently, '--orphan-handling=warn' is spread out across four different
architectures in their respective Makefiles, which makes it a little
unruly to deal with in case it needs to be disabled for a specific
linker version (in this case, ld.lld 10.0.1).

To make it easier to control this, hoist this warning into Kconfig and
the main Makefile so that disabling it is simpler, as the warning will
only be enabled in a couple places (main Makefile and a couple of
compressed boot folders that blow away LDFLAGS_vmlinx) and making it
conditional is easier due to Kconfig syntax. One small additional
benefit of this is saving a call to ld-option on incremental builds
because we will have already evaluated it for CONFIG_LD_ORPHAN_WARN.

To keep the list of supported architectures the same, introduce
CONFIG_ARCH_WANT_LD_ORPHAN_WARN, which an architecture can select to
gain this automatically after all of the sections are specified and size
asserted. A special thanks to Kees Cook for the help text on this
config.

Link: https://github.com/ClangBuiltLinux/linux/issues/1187
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 Makefile                          | 6 ++++++
 arch/Kconfig                      | 9 +++++++++
 arch/arm/Kconfig                  | 1 +
 arch/arm/Makefile                 | 4 ----
 arch/arm/boot/compressed/Makefile | 4 +++-
 arch/arm64/Kconfig                | 1 +
 arch/arm64/Makefile               | 4 ----
 arch/powerpc/Kconfig              | 1 +
 arch/powerpc/Makefile             | 1 -
 arch/x86/Kconfig                  | 1 +
 arch/x86/Makefile                 | 3 ---
 arch/x86/boot/compressed/Makefile | 4 +++-
 init/Kconfig                      | 3 +++
 13 files changed, 28 insertions(+), 14 deletions(-)

diff --git a/Makefile b/Makefile
index 008aba5f1a20..c443afd61886 100644
--- a/Makefile
+++ b/Makefile
@@ -984,6 +984,12 @@ ifeq ($(CONFIG_RELR),y)
 LDFLAGS_vmlinux	+= --pack-dyn-relocs=relr
 endif
 
+# We never want expected sections to be placed heuristically by the
+# linker. All sections should be explicitly named in the linker script.
+ifeq ($(CONFIG_LD_ORPHAN_WARN),y)
+LDFLAGS_vmlinux += --orphan-handling=warn
+endif
+
 # Align the bit size of userspace programs with the kernel
 KBUILD_USERCFLAGS  += $(filter -m32 -m64 --target=%, $(KBUILD_CFLAGS))
 KBUILD_USERLDFLAGS += $(filter -m32 -m64 --target=%, $(KBUILD_CFLAGS))
diff --git a/arch/Kconfig b/arch/Kconfig
index 56b6ccc0e32d..ba4e966484ab 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -1028,6 +1028,15 @@ config HAVE_STATIC_CALL_INLINE
 	bool
 	depends on HAVE_STATIC_CALL
 
+config ARCH_WANT_LD_ORPHAN_WARN
+	bool
+	help
+	  An arch should select this symbol once all linker sections are explicitly
+	  included, size-asserted, or discarded in the linker scripts. This is
+	  important because we never want expected sections to be placed heuristically
+	  by the linker, since the locations of such sections can change between linker
+	  versions.
+
 source "kernel/gcov/Kconfig"
 
 source "scripts/gcc-plugins/Kconfig"
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index fe2f17eb2b50..002e0cf025f5 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -35,6 +35,7 @@ config ARM
 	select ARCH_USE_CMPXCHG_LOCKREF
 	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
 	select ARCH_WANT_IPC_PARSE_VERSION
+	select ARCH_WANT_LD_ORPHAN_WARN
 	select BINFMT_FLAT_ARGVP_ENVP_ON_STACK
 	select BUILDTIME_TABLE_SORT if MMU
 	select CLONE_BACKWARDS
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 4d76eab2b22d..e15f76ca2887 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -16,10 +16,6 @@ LDFLAGS_vmlinux	+= --be8
 KBUILD_LDFLAGS_MODULE	+= --be8
 endif
 
-# We never want expected sections to be placed heuristically by the
-# linker. All sections should be explicitly named in the linker script.
-LDFLAGS_vmlinux += $(call ld-option, --orphan-handling=warn)
-
 GZFLAGS		:=-9
 #KBUILD_CFLAGS	+=-pipe
 
diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index 47f001ca5499..c6f9f3b61c5f 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -129,7 +129,9 @@ LDFLAGS_vmlinux += --no-undefined
 # Delete all temporary local symbols
 LDFLAGS_vmlinux += -X
 # Report orphan sections
-LDFLAGS_vmlinux += $(call ld-option, --orphan-handling=warn)
+ifeq ($(CONFIG_LD_ORPHAN_WARN),y)
+LDFLAGS_vmlinux += --orphan-handling=warn
+endif
 # Next argument is a linker script
 LDFLAGS_vmlinux += -T
 
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 1515f6f153a0..a6b5b7ef40ae 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -81,6 +81,7 @@ config ARM64
 	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT
 	select ARCH_WANT_FRAME_POINTERS
 	select ARCH_WANT_HUGE_PMD_SHARE if ARM64_4K_PAGES || (ARM64_16K_PAGES && !ARM64_VA_BITS_36)
+	select ARCH_WANT_LD_ORPHAN_WARN
 	select ARCH_HAS_UBSAN_SANITIZE_ALL
 	select ARM_AMBA
 	select ARM_ARCH_TIMER
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 5789c2d18d43..6a87d592bd00 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -28,10 +28,6 @@ LDFLAGS_vmlinux	+= --fix-cortex-a53-843419
   endif
 endif
 
-# We never want expected sections to be placed heuristically by the
-# linker. All sections should be explicitly named in the linker script.
-LDFLAGS_vmlinux += $(call ld-option, --orphan-handling=warn)
-
 ifeq ($(CONFIG_ARM64_USE_LSE_ATOMICS), y)
   ifneq ($(CONFIG_ARM64_LSE_ATOMICS), y)
 $(warning LSE atomics not supported by binutils)
diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index e9f13fe08492..5181872f9452 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -152,6 +152,7 @@ config PPC
 	select ARCH_USE_QUEUED_SPINLOCKS	if PPC_QUEUED_SPINLOCKS
 	select ARCH_WANT_IPC_PARSE_VERSION
 	select ARCH_WANT_IRQS_OFF_ACTIVATE_MM
+	select ARCH_WANT_LD_ORPHAN_WARN
 	select ARCH_WEAK_RELEASE_ACQUIRE
 	select BINFMT_ELF
 	select BUILDTIME_TABLE_SORT
diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
index a4d56f0a41d9..d9eb0da845e1 100644
--- a/arch/powerpc/Makefile
+++ b/arch/powerpc/Makefile
@@ -123,7 +123,6 @@ endif
 LDFLAGS_vmlinux-y := -Bstatic
 LDFLAGS_vmlinux-$(CONFIG_RELOCATABLE) := -pie
 LDFLAGS_vmlinux	:= $(LDFLAGS_vmlinux-y)
-LDFLAGS_vmlinux += $(call ld-option,--orphan-handling=warn)
 
 ifdef CONFIG_PPC64
 ifeq ($(call cc-option-yn,-mcmodel=medium),y)
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index f6946b81f74a..fbf26e0f7a6a 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -100,6 +100,7 @@ config X86
 	select ARCH_WANT_DEFAULT_BPF_JIT	if X86_64
 	select ARCH_WANTS_DYNAMIC_TASK_STRUCT
 	select ARCH_WANT_HUGE_PMD_SHARE
+	select ARCH_WANT_LD_ORPHAN_WARN
 	select ARCH_WANTS_THP_SWAP		if X86_64
 	select BUILDTIME_TABLE_SORT
 	select CLKEVT_I8253
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 154259f18b8b..1bf21746f4ce 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -209,9 +209,6 @@ ifdef CONFIG_X86_64
 LDFLAGS_vmlinux += -z max-page-size=0x200000
 endif
 
-# We never want expected sections to be placed heuristically by the
-# linker. All sections should be explicitly named in the linker script.
-LDFLAGS_vmlinux += $(call ld-option, --orphan-handling=warn)
 
 archscripts: scripts_basic
 	$(Q)$(MAKE) $(build)=arch/x86/tools relocs
diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index ee249088cbfe..fa1c9f83436c 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -61,7 +61,9 @@ KBUILD_LDFLAGS += $(call ld-option,--no-ld-generated-unwind-info)
 # Compressed kernel should be built as PIE since it may be loaded at any
 # address by the bootloader.
 LDFLAGS_vmlinux := -pie $(call ld-option, --no-dynamic-linker)
-LDFLAGS_vmlinux += $(call ld-option, --orphan-handling=warn)
+ifeq ($(CONFIG_LD_ORPHAN_WARN),y)
+LDFLAGS_vmlinux += --orphan-handling=warn
+endif
 LDFLAGS_vmlinux += -T
 
 hostprogs	:= mkpiggy
diff --git a/init/Kconfig b/init/Kconfig
index c9446911cf41..a270716562de 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -1348,6 +1348,9 @@ config LD_DEAD_CODE_DATA_ELIMINATION
 	  present. This option is not well tested yet, so use at your
 	  own risk.
 
+config LD_ORPHAN_WARN
+	def_bool ARCH_WANT_LD_ORPHAN_WARN && $(ld-option,--orphan-handling=warn)
+
 config SYSCTL
 	bool
 

base-commit: f8394f232b1eab649ce2df5c5f15b0e528c92091
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113195553.1487659-1-natechancellor%40gmail.com.
