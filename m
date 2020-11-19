Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGNY3P6QKGQEWR4OF2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA902B9C53
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 21:56:59 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id bf9sf4682047plb.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 12:56:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605819417; cv=pass;
        d=google.com; s=arc-20160816;
        b=lNtazscBYZkzexeZLBdgCBBeufLnDvDJwxavbhxTvy/SiADeK4lZA9kbZRKLhmxNw2
         ZQdI34SPb9i/2a54wmXhYO23Zcmhf8t7gVtR2wvX+0jt9QzBfYw3YOZ7DzUNCcCFTYca
         v36cXS9xPuq5YKNGcQ0pkYhkwZxYV0ZXNAK5rF/hyhl8EZIlXkvR/cZ51a+tiHD6AUJm
         WrrQwMAhg0no1vWy4ghHqLT/md2wiKjb9XNU05lnsu6TKnDYJHLjFYieSxYt9aiF3Wlm
         3ltbMumAMChBvjB8ck1+kj8neSthBTcws46boQmBgsXzGbC79Tei79H01FfAKmVBDALu
         neDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=Mm+XZ0pvIVaupl79ei31VU5x8jMjQ8H6LEGn3OL3xko=;
        b=XRg/YWlVl4Ex1ljf3TslNTXOcy0dFVMP+ApRCwz+W+j5MujbNjVXcZS4HHkRWoVa4B
         DJ1ezMIXTgAPLm77nSJn+Kc7Ge9GgjYYye83huhP2fDeYPkKlEzT/zv7TCjdSuMnv6NL
         TM1i5aOKnoJB/AYjc+7Y/DP0CZDtK0gm2jcHnb6LNbTCq+QZ4GMi3VZknaRaG3wcNTF5
         J2X/e7wKoxEmoOspPLWb9il1gnGP3HzCcgd7PH7/G8b4ziM0ebOU4dLB8mDHMJCWkUWd
         YNcfDQQEwSywzrrpY0RW5FIkod85NxBNQLtgV+kmKjkR/ztJiVU6trDSarQjSexw5bHL
         PR+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TuQ+aCJq;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mm+XZ0pvIVaupl79ei31VU5x8jMjQ8H6LEGn3OL3xko=;
        b=Cq9lz6cN6iFoojRG8cjK7feiEkMeiZqAONy198aW2T7813e4aIFHBuxw5iUu8mlSLV
         K3fps+cCgK/in4fFGRE0LjmI9Sj9g7i9P/fAAOxfENXU8ATUUvHqeO8/d7OWU9R3xOcP
         fYhIYcDtshl3RXtY1sj8KMmkqD8g2xh3+a1wumgyU5UIYZJ9orqxYMIUuqJopqsyTWnY
         Upm2j39sjOf4/UTLji8DccOzDPt0DUXWZbNpV/pUfXvgdKs7bWw/QCu8olba0t1XniWS
         DVyYsM47hanDSNk1ty6nNDnxV6V0AuV5310LsuHTEJcNt2Ew7HX9/favy4DTzZlrDt/9
         8CIQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mm+XZ0pvIVaupl79ei31VU5x8jMjQ8H6LEGn3OL3xko=;
        b=iq2qzhN6+wUKFVofv03TEtGSyoy5tbsQcEXG6pEo/3u8bococ04cf4YPRxzWJnfM5x
         LOKmou9CvojuXhyoCsQ6etWjD424PhGIdMyGKh1YPCOfAzRob9tR9tOvfMCFGlSkA1KX
         WSy9/+6z9P7xD/F5Xyh7XeTrJeeTZz2kbXuGVjWDmEYlJvJ1BsNVr9vsvYv9bOoLmX/1
         ZrwcFVlDLCtDWEyuYeK+Hf60ogzakzRgh24aLfG9kH/9Sh0rFKu2fjdhHXyqNnwMNpAW
         N1SXOBK1KGdiZopBuRr4IIDSr9CKhh7ACFR/UtfLNnghnMDwfgLjDCRgdRafxoG2EQCB
         7tpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mm+XZ0pvIVaupl79ei31VU5x8jMjQ8H6LEGn3OL3xko=;
        b=B1XeNO0+yoR/Y9VFQNxD3+a1wZvNkJqPVrqB8cVYUKXRzEOXUYQTBnzDn0rfxOwAUP
         wEqeiCGFYnlI4wwr+tGVcctRcDFLdwS2OsnD3+sPCh4JYxLmaTEiJoeilHGBhYi0CGb+
         7AEP/a06EA6phN5CtqwrFr84eCsh5yPu4YHIGzyUVAIyh80LtmlfXe99Kfr/RPZLOrsD
         q+4StfWj74R6PN/9GA9IJDzEfUYE8j0DjnG5inNXqZBOMjM/LqwbK/8XQpi9vKjXl0fW
         j8kvts8s6EguS59r4h6OrhhcsR3x9YgSYKBUt/e3EOb20fndm/0O++YXFNSxZ3Iuxw7G
         plNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hIoxGyw0Tdzf7rxpI9SViSlwS/Hn50SCNhdG/kyBEEGFyPA+C
	M6xxt7vtcOFJIqDkMx3MK5I=
X-Google-Smtp-Source: ABdhPJx4KPbrtVzxcpo0mRlvYHPtUVeUYK8qn7L1uduBE1wUB1yL/aTqdWZi7lfwrkjhE/51zlOlPg==
X-Received: by 2002:a63:9d8d:: with SMTP id i135mr14547901pgd.213.1605819417792;
        Thu, 19 Nov 2020 12:56:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ad98:: with SMTP id s24ls2048906pjq.0.canary-gmail;
 Thu, 19 Nov 2020 12:56:57 -0800 (PST)
X-Received: by 2002:a17:90a:458e:: with SMTP id v14mr6346484pjg.40.1605819417198;
        Thu, 19 Nov 2020 12:56:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605819417; cv=none;
        d=google.com; s=arc-20160816;
        b=hSjdqnSU3OBCVqM9AAr21/eADRnvg3j2xwZ/vuPMEwYnF1OPfo/vjcutThhy0rMNRn
         2zQLM40uIegF0+98p8mvDi+8wQGAPmQpkwCEk0+eD/mKvqzrFWETvOR6Xs93z6ZL1+T3
         H1QG3MjEh7R7losR7SOo5ByLdEhis8iaq3MYaDCXSv4CnfihAlcU8CKCPMEdXQpS+lGn
         ttOh3BaRbYV9SQcp+TH9hlUD7Ck25vyoxl7WmJ9RAWmq37s9JGB0DKid/NR0RHrMnMwJ
         Rn0Bl0lZhOA9rU2rdcFpRYA03CY13mp14Hzv4mMbOdl2DrQaA//eMttCI9gMQDyTynm6
         ER6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Vq4heGGOiTGN9G1IkRD8WBrcjSjOcI+6TZTWqb+P7Dk=;
        b=TbyrUrTj9kYbpqYhUVJoz2WpG0JGjggjZttOOTvF0KnYBKSXpdW3LRXi7QCKKAHZoh
         PyacGP4hbFKj8d+ga7p5d2UUJ0d3hMwncDlWXB/xK/d/3B9eAR5ELSTuQxFETQwJHDuw
         LhSWIXmo/n8cM0Ia0waPZgaCapEjVOMWCINlMd4/EDH7KE2f5yjTr3ChFoZd1WnwNmqX
         3agQpZb/jfVeKecqWroS2MgSl9JIy7y0T2dFVfyCpYdZjpEuIo1Ahvh8hsMvSQyqTCR2
         L9VlhgfuAMPZYjRS+nDkDkuzfvbb8lO4i22cDQrZfN9yPGnvp9EMt86VtqG0MN6/7YPz
         TqZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TuQ+aCJq;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id d12si100184pgq.2.2020.11.19.12.56.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Nov 2020 12:56:57 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id g19so3631995qvy.2
        for <clang-built-linux@googlegroups.com>; Thu, 19 Nov 2020 12:56:57 -0800 (PST)
X-Received: by 2002:a05:6214:1541:: with SMTP id t1mr12336433qvw.61.1605819416229;
        Thu, 19 Nov 2020 12:56:56 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id 82sm714348qke.76.2020.11.19.12.56.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2020 12:56:55 -0800 (PST)
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
Subject: [PATCH v2 1/2] kbuild: Hoist '--orphan-handling' into Kconfig
Date: Thu, 19 Nov 2020 13:46:56 -0700
Message-Id: <20201119204656.3261686-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201113195553.1487659-1-natechancellor@gmail.com>
References: <20201113195553.1487659-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TuQ+aCJq;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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
Acked-by: Kees Cook <keescook@chromium.org>
Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Change

  ifeq ($(CONFIG_LD_ORPHAN_WARN),y)

  to

  ifdef CONFIG_LD_ORPHAN_WARN

  to improve readability (Michael Ellerman)

* Separate conditions for CONFIG_LD_ORPHAN warn to improve
  readability (Kees Cook)

* Pick up tags from Kees, Michael, and Nick

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
 init/Kconfig                      | 5 +++++
 13 files changed, 30 insertions(+), 14 deletions(-)

diff --git a/Makefile b/Makefile
index e2c3f65c4721..2c7116299f1f 100644
--- a/Makefile
+++ b/Makefile
@@ -984,6 +984,12 @@ ifeq ($(CONFIG_RELR),y)
 LDFLAGS_vmlinux	+= --pack-dyn-relocs=relr
 endif
 
+# We never want expected sections to be placed heuristically by the
+# linker. All sections should be explicitly named in the linker script.
+ifdef CONFIG_LD_ORPHAN_WARN
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
index 47f001ca5499..e1567418a2b1 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -129,7 +129,9 @@ LDFLAGS_vmlinux += --no-undefined
 # Delete all temporary local symbols
 LDFLAGS_vmlinux += -X
 # Report orphan sections
-LDFLAGS_vmlinux += $(call ld-option, --orphan-handling=warn)
+ifdef CONFIG_LD_ORPHAN_WARN
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
index ee249088cbfe..40b8fd375d52 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -61,7 +61,9 @@ KBUILD_LDFLAGS += $(call ld-option,--no-ld-generated-unwind-info)
 # Compressed kernel should be built as PIE since it may be loaded at any
 # address by the bootloader.
 LDFLAGS_vmlinux := -pie $(call ld-option, --no-dynamic-linker)
-LDFLAGS_vmlinux += $(call ld-option, --orphan-handling=warn)
+ifdef CONFIG_LD_ORPHAN_WARN
+LDFLAGS_vmlinux += --orphan-handling=warn
+endif
 LDFLAGS_vmlinux += -T
 
 hostprogs	:= mkpiggy
diff --git a/init/Kconfig b/init/Kconfig
index c9446911cf41..92c58b45abb8 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -1348,6 +1348,11 @@ config LD_DEAD_CODE_DATA_ELIMINATION
 	  present. This option is not well tested yet, so use at your
 	  own risk.
 
+config LD_ORPHAN_WARN
+	def_bool y
+	depends on ARCH_WANT_LD_ORPHAN_WARN
+	depends on $(ld-option,--orphan-handling=warn)
+
 config SYSCTL
 	bool
 

base-commit: 09162bc32c880a791c6c0668ce0745cf7958f576
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201119204656.3261686-1-natechancellor%40gmail.com.
