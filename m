Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBLUL3H3QKGQEYIQNPRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACE620B8E2
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 21:00:00 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id k10sf6558765ioh.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 12:00:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593197999; cv=pass;
        d=google.com; s=arc-20160816;
        b=lNIkI8L6Q1hOF0ozmrwKRbCtCiwtcU2bxpyjC3ku3A5DI5iXPKzXEeHIVrSJQ0TARo
         7XEXvu/10YbhK+jlHlW1GvCM3cYNEDwQWI/c0vJcIIxe6Y4AANwP+RCXgVXRBvDm5QvV
         1jouLazvJq06W0y43H0Kdz+NXQ3GgDuDZYOBfsG1NzUKHzTz1Vc4rGriDhcOrw764rqX
         BHR7ACXVAyOpdLAYLmDmzYb90qQGMiP3eoXRk8pD/mFPJLu5joM5evje/qWwFIFjl6wP
         cf78k4qIq+NrJpF3BkQHL65iZMxEw+kEvMklWAVWwkeFyMqysmQYhD4B7AVU/fNQKmab
         w5fA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=tQ7HGGkangn19uKT75ZFZrb7wc7XoL1yWEnOSiyfs7U=;
        b=nPfZ5FNuo3YseatDOsDiLcYU8E4//8ys3nBuPDS/2iRxiqmK1Am3LOMctCcc4ujBIX
         zMMIAINPFZPTf0lbvg77OyNuvHE36jwUyF+pPB6WtJWzNT6JKxkf7R7IrFdbDgxzPE9J
         43NwZx29ckb3Ha3vdT5cDm2XLeoOvwguVBbxM23GILGcBLh87nXuOchRSksyhRHyrZuV
         zKcFFPlixGpoHXHrpJ4WNGBjhBpXIkCOCZs30qVesVdPoWvZ9Xp3w5lt70uF7VlPO4j9
         VJPp0xzz0ZuRIJSjDURGj9ADE7bgSmTDXNuzhSqO7QJVIZtx+g5L4s+nhFmtTlKNuMWe
         EKBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=wU5VqhBs;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tQ7HGGkangn19uKT75ZFZrb7wc7XoL1yWEnOSiyfs7U=;
        b=BXgLY1KIFiNUdj7W0IzHitLsUlSayq7XXcLsXbBwL2sfhkv8cvapCJvGMyCcN3mHSN
         gw1HCubwRUT+Hv8oxQOoGXQkEpjhGd9A0X78DE7yOpuRKGfWdcp9Q34LQQXwiO6fdEd1
         9liun+G127uq8EVlFXY5wRUlKYm/4Qc1NTnNnfccKD+G3IBaaHtQh4BHdRDxCSbUJPzn
         sAYZgmraGgMV6qPjkmM+GywDXAYRRWQ9tjECAZHa54h+kLXf39q45QZJc42GK95KIX52
         SHsCS/3pCvCMctOZI2Ld3Ci2/w/vcWksnjdWmaLfPkfMSD5HwPSkpKyXnAHxjFeq8xqx
         kyog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tQ7HGGkangn19uKT75ZFZrb7wc7XoL1yWEnOSiyfs7U=;
        b=UEJjtMtsC9yfcSqvtpfJS3pjstebzx8/G0HDs4MrWr1mvg7c+/YQFywSHw0ZQawpa4
         3hQczl8cN9UwEZ5jAGyq+1OCtxb4SneWrufpgqFa0JVkFxoi6raYtcOyRkbwwY9kS1mr
         KRJy6GRACAaECdNOAxnYjDWe3QCgM8qo/YS67uVy2Dbdr/AOdKatCxIg4bbcIj4UyfF5
         o05SbYOVWBFPSQ9QuujUIJ3KLwC90jsqBbbD1Ye/bjURwHE9jK3y7Bk9v3etk2PruOav
         WD9ioFyTprFfaTuwdnaXuNtm+InxotpE+4ebc4k1kjDNTep6zLrg0abrQQufYmev6LkW
         bpAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mF1mOo3wxk1iQnMgWECWBINZHaxhX5rpWDFHF5R2PtaJY9q5Z
	7DqcJcq5CRx0P+ZMQ6i51f0=
X-Google-Smtp-Source: ABdhPJxOPGWmIbrZm0cIY10pzC2LnqRELWfsmZGz+3pj6zWU00oZR6JFK0w0bk8RyNKk+IShLzE7uA==
X-Received: by 2002:a92:bb98:: with SMTP id x24mr4411963ilk.270.1593197998954;
        Fri, 26 Jun 2020 11:59:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ab10:: with SMTP id v16ls2762205ilh.10.gmail; Fri, 26
 Jun 2020 11:59:58 -0700 (PDT)
X-Received: by 2002:a92:7792:: with SMTP id s140mr4356781ilc.66.1593197998607;
        Fri, 26 Jun 2020 11:59:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593197998; cv=none;
        d=google.com; s=arc-20160816;
        b=r4LWEGUPTY1q5h+8DJGtAzd4ckOG16s+RbUUtTLMkkLdU1scypUwc54gapNe/TotKd
         2LTLWZvVYjT2xrfI+yALIrngU+h8PAZ2fxhRDmtTRhGJhtRer0Nmhc1jCbM7PInXS4o8
         RI88HDOjmHsLUuINIOdhX+WjkZmP8V8ltjqrYRQpiIIHh2lPZ9DIbCZprybjarzrQUXY
         k4sDX90TYxx2wCLfBswN7UmQ0EYo6TdRsV6QX/wdrYqTWFAB/uppCXjLv5HZSH6QKOCo
         WmGqUAzQP/JosrKgbWNxD6GQzA4Q0d3d9tZKqF+u1X6PfFctvVmmxO104UC/imCopd19
         INpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=kZsDPtuZEDwWxqCdBU/Q8QnubxH6Mk9CGEjMZSE/MW8=;
        b=Gmi8/sCu2YsLorOnBYkez3f9X25ZBVmIqcgwWZ100knw6FseyBWQ8HR0HujkvSspR1
         1gRlKgkd4Ytg0rJDbLvtNxZmnNaM3DxOu6k+qczEYn4lSIa91x9uo1aRrBHqj4I8xNfg
         i/ZkYq8FLZ90YB1tBNzv8yJZM022RhqBe7N00hrFocUuqPMDfkBlD3bP4akh3Y8mPngB
         0BSIWPWl71LAbw9ELh/MtCOEckh7L0ccsoebqwzKup0jRsRGdnlED8ZjFEvqR/OdEza0
         6iCpdEahG5Z1r9MR8uQ2XEjDnFYEg8+8q5TMyeyvSlwxhwQqa0G4XGw2mC0Y1m8YW35h
         6DjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=wU5VqhBs;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id i20si124075iow.2.2020.06.26.11.59.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jun 2020 11:59:58 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from oscar.flets-west.jp (softbank126090202047.bbtec.net [126.90.202.47]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 05QIxVda016565;
	Sat, 27 Jun 2020 03:59:31 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 05QIxVda016565
X-Nifty-SrcIP: [126.90.202.47]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, x86@kernel.org,
        linux-efi@vger.kernel.org, Kees Cook <keescook@chromium.org>,
        linux-kernel@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH 1/2] kbuild: remove cc-option test of -fno-stack-protector
Date: Sat, 27 Jun 2020 03:59:12 +0900
Message-Id: <20200626185913.92890-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=wU5VqhBs;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Some Makefiles already pass -fno-stack-protector unconditionally.
For example, arch/arm64/kernel/vdso/Makefile, arch/x86/xen/Makefile.
No problem report so far about hard-coding this option. So, we can
assume all supported compilers know -fno-stack-protector.

GCC 4.8 and Clang support this option (https://godbolt.org/z/_HDGzN)

Get rid of cc-option from -fno-stack-protector.

Remove CONFIG_CC_HAS_STACKPROTECTOR_NONE, which should always be 'y'.

Note:
arch/mips/vdso/Makefile adds -fno-stack-protector twice, first
unconditionally, and second conditionally. I removed the second one.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Documentation/kbuild/kconfig-language.rst | 4 ++--
 Makefile                                  | 2 +-
 arch/Kconfig                              | 3 ---
 arch/arm/boot/compressed/Makefile         | 3 +--
 arch/mips/vdso/Makefile                   | 3 +--
 arch/powerpc/kernel/Makefile              | 2 +-
 arch/powerpc/platforms/powermac/Makefile  | 2 +-
 arch/sparc/vdso/Makefile                  | 4 ++--
 arch/um/Makefile                          | 3 +--
 arch/x86/Makefile                         | 2 +-
 arch/x86/boot/compressed/Makefile         | 2 +-
 arch/x86/entry/vdso/Makefile              | 4 ++--
 arch/x86/kernel/cpu/Makefile              | 3 +--
 arch/x86/lib/Makefile                     | 2 +-
 arch/x86/mm/Makefile                      | 7 +++----
 arch/x86/power/Makefile                   | 3 +--
 arch/x86/purgatory/Makefile               | 2 +-
 arch/x86/um/vdso/Makefile                 | 2 +-
 arch/x86/xen/Makefile                     | 5 ++---
 drivers/firmware/efi/libstub/Makefile     | 2 +-
 drivers/xen/Makefile                      | 3 +--
 kernel/kcsan/Makefile                     | 3 +--
 lib/Makefile                              | 4 ++--
 mm/kasan/Makefile                         | 2 +-
 24 files changed, 30 insertions(+), 42 deletions(-)

diff --git a/Documentation/kbuild/kconfig-language.rst b/Documentation/kbuild/kconfig-language.rst
index a1601ec3317b..2538e7cb08e6 100644
--- a/Documentation/kbuild/kconfig-language.rst
+++ b/Documentation/kbuild/kconfig-language.rst
@@ -540,8 +540,8 @@ followed by a test macro::
 If you need to expose a compiler capability to makefiles and/or C source files,
 `CC_HAS_` is the recommended prefix for the config option::
 
-  config CC_HAS_STACKPROTECTOR_NONE
-	def_bool $(cc-option,-fno-stack-protector)
+  config CC_HAS_ASM_GOTO
+	def_bool $(success,$(srctree)/scripts/gcc-goto.sh $(CC))
 
 Build as module only
 ~~~~~~~~~~~~~~~~~~~~
diff --git a/Makefile b/Makefile
index 5496a32dffa6..73948798ce3f 100644
--- a/Makefile
+++ b/Makefile
@@ -762,7 +762,7 @@ ifneq ($(CONFIG_FRAME_WARN),0)
 KBUILD_CFLAGS += -Wframe-larger-than=$(CONFIG_FRAME_WARN)
 endif
 
-stackp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
+stackp-flags-y                                    := -fno-stack-protector
 stackp-flags-$(CONFIG_STACKPROTECTOR)             := -fstack-protector
 stackp-flags-$(CONFIG_STACKPROTECTOR_STRONG)      := -fstack-protector-strong
 
diff --git a/arch/Kconfig b/arch/Kconfig
index 8cc35dc556c7..1ea61290900a 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -478,9 +478,6 @@ config HAVE_STACKPROTECTOR
 	  An arch should select this symbol if:
 	  - it has implemented a stack canary (e.g. __stack_chk_guard)
 
-config CC_HAS_STACKPROTECTOR_NONE
-	def_bool $(cc-option,-fno-stack-protector)
-
 config STACKPROTECTOR
 	bool "Stack Protector buffer overflow detection"
 	depends on HAVE_STACKPROTECTOR
diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index 00602a6fba04..cb7a56c6723c 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -84,9 +84,8 @@ endif
 
 # -fstack-protector-strong triggers protection checks in this code,
 # but it is being used too early to link to meaningful stack_chk logic.
-nossp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
 $(foreach o, $(libfdt_objs) atags_to_fdt.o, \
-	$(eval CFLAGS_$(o) := -I $(srctree)/scripts/dtc/libfdt $(nossp-flags-y)))
+	$(eval CFLAGS_$(o) := -I $(srctree)/scripts/dtc/libfdt -fno-stack-protector))
 
 # These were previously generated C files. When you are building the kernel
 # with O=, make sure to remove the stale files in the output tree. Otherwise,
diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
index 2e64c7600eea..57fe83235281 100644
--- a/arch/mips/vdso/Makefile
+++ b/arch/mips/vdso/Makefile
@@ -35,8 +35,7 @@ cflags-vdso := $(ccflags-vdso) \
 	-O3 -g -fPIC -fno-strict-aliasing -fno-common -fno-builtin -G 0 \
 	-mrelax-pic-calls $(call cc-option, -mexplicit-relocs) \
 	-fno-stack-protector -fno-jump-tables -DDISABLE_BRANCH_PROFILING \
-	$(call cc-option, -fno-asynchronous-unwind-tables) \
-	$(call cc-option, -fno-stack-protector)
+	$(call cc-option, -fno-asynchronous-unwind-tables)
 aflags-vdso := $(ccflags-vdso) \
 	-D__ASSEMBLY__ -Wa,-gdwarf-2
 
diff --git a/arch/powerpc/kernel/Makefile b/arch/powerpc/kernel/Makefile
index 244542ae2a91..3a83f2b876a5 100644
--- a/arch/powerpc/kernel/Makefile
+++ b/arch/powerpc/kernel/Makefile
@@ -16,7 +16,7 @@ CFLAGS_prom_init.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
 CFLAGS_btext.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
 CFLAGS_prom.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
 
-CFLAGS_prom_init.o += $(call cc-option, -fno-stack-protector)
+CFLAGS_prom_init.o += -fno-stack-protector
 CFLAGS_prom_init.o += -DDISABLE_BRANCH_PROFILING
 CFLAGS_prom_init.o += -ffreestanding
 
diff --git a/arch/powerpc/platforms/powermac/Makefile b/arch/powerpc/platforms/powermac/Makefile
index f4247ade71ca..cf85f0662d0d 100644
--- a/arch/powerpc/platforms/powermac/Makefile
+++ b/arch/powerpc/platforms/powermac/Makefile
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 CFLAGS_bootx_init.o  		+= -fPIC
-CFLAGS_bootx_init.o  		+= $(call cc-option, -fno-stack-protector)
+CFLAGS_bootx_init.o		+= -fno-stack-protector
 
 KASAN_SANITIZE_bootx_init.o := n
 
diff --git a/arch/sparc/vdso/Makefile b/arch/sparc/vdso/Makefile
index 708cb6304c2d..f44355e46f31 100644
--- a/arch/sparc/vdso/Makefile
+++ b/arch/sparc/vdso/Makefile
@@ -54,7 +54,7 @@ $(obj)/vdso-image-%.c: $(obj)/vdso%.so.dbg $(obj)/vdso%.so $(obj)/vdso2c FORCE
 # optimize sibling calls.
 #
 CFL := $(PROFILING) -mcmodel=medlow -fPIC -O2 -fasynchronous-unwind-tables -m64 \
-       $(filter -g%,$(KBUILD_CFLAGS)) $(call cc-option, -fno-stack-protector) \
+       $(filter -g%,$(KBUILD_CFLAGS)) -fno-stack-protector \
        -fno-omit-frame-pointer -foptimize-sibling-calls \
        -DDISABLE_BRANCH_PROFILING -DBUILD_VDSO
 
@@ -93,7 +93,7 @@ KBUILD_CFLAGS_32 := $(filter-out -fno-pic,$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 := $(filter-out $(GCC_PLUGINS_CFLAGS),$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 := $(filter-out $(SPARC_REG_CFLAGS),$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 += -m32 -msoft-float -fpic
-KBUILD_CFLAGS_32 += $(call cc-option, -fno-stack-protector)
+KBUILD_CFLAGS_32 += -fno-stack-protector
 KBUILD_CFLAGS_32 += $(call cc-option, -foptimize-sibling-calls)
 KBUILD_CFLAGS_32 += -fno-omit-frame-pointer
 KBUILD_CFLAGS_32 += -DDISABLE_BRANCH_PROFILING
diff --git a/arch/um/Makefile b/arch/um/Makefile
index 3f27aa3ec0a6..1cea46ff9bb7 100644
--- a/arch/um/Makefile
+++ b/arch/um/Makefile
@@ -121,8 +121,7 @@ LINK-$(CONFIG_LD_SCRIPT_STATIC) += -static
 LINK-$(CONFIG_LD_SCRIPT_DYN) += -Wl,-rpath,/lib $(call cc-option, -no-pie)
 
 CFLAGS_NO_HARDENING := $(call cc-option, -fno-PIC,) $(call cc-option, -fno-pic,) \
-	$(call cc-option, -fno-stack-protector,) \
-	$(call cc-option, -fno-stack-protector-all,)
+	-fno-stack-protector $(call cc-option, -fno-stack-protector-all)
 
 # Options used by linker script
 export LDS_START      := $(START)
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 00e378de8bc0..89c3cdfba753 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -37,7 +37,7 @@ REALMODE_CFLAGS	:= $(M16_CFLAGS) -g -Os -DDISABLE_BRANCH_PROFILING \
 		   -mno-mmx -mno-sse
 
 REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -ffreestanding)
-REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -fno-stack-protector)
+REALMODE_CFLAGS += -fno-stack-protector
 REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -Wno-address-of-packed-member)
 REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), $(cc_stack_align4))
 export REALMODE_CFLAGS
diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 7619742f91c9..c88a31569a5e 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -36,7 +36,7 @@ cflags-$(CONFIG_X86_64) := -mcmodel=small
 KBUILD_CFLAGS += $(cflags-y)
 KBUILD_CFLAGS += -mno-mmx -mno-sse
 KBUILD_CFLAGS += $(call cc-option,-ffreestanding)
-KBUILD_CFLAGS += $(call cc-option,-fno-stack-protector)
+KBUILD_CFLAGS += -fno-stack-protector
 KBUILD_CFLAGS += $(call cc-disable-warning, address-of-packed-member)
 KBUILD_CFLAGS += $(call cc-disable-warning, gnu)
 KBUILD_CFLAGS += -Wno-pointer-sign
diff --git a/arch/x86/entry/vdso/Makefile b/arch/x86/entry/vdso/Makefile
index 04e65f0698f6..215376d975a2 100644
--- a/arch/x86/entry/vdso/Makefile
+++ b/arch/x86/entry/vdso/Makefile
@@ -82,7 +82,7 @@ $(obj)/vdso-image-%.c: $(obj)/vdso%.so.dbg $(obj)/vdso%.so $(obj)/vdso2c FORCE
 # optimize sibling calls.
 #
 CFL := $(PROFILING) -mcmodel=small -fPIC -O2 -fasynchronous-unwind-tables -m64 \
-       $(filter -g%,$(KBUILD_CFLAGS)) $(call cc-option, -fno-stack-protector) \
+       $(filter -g%,$(KBUILD_CFLAGS)) -fno-stack-protector \
        -fno-omit-frame-pointer -foptimize-sibling-calls \
        -DDISABLE_BRANCH_PROFILING -DBUILD_VDSO
 
@@ -151,7 +151,7 @@ KBUILD_CFLAGS_32 := $(filter-out -mfentry,$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 := $(filter-out $(GCC_PLUGINS_CFLAGS),$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 := $(filter-out $(RETPOLINE_CFLAGS),$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 += -m32 -msoft-float -mregparm=0 -fpic
-KBUILD_CFLAGS_32 += $(call cc-option, -fno-stack-protector)
+KBUILD_CFLAGS_32 += -fno-stack-protector
 KBUILD_CFLAGS_32 += $(call cc-option, -foptimize-sibling-calls)
 KBUILD_CFLAGS_32 += -fno-omit-frame-pointer
 KBUILD_CFLAGS_32 += -DDISABLE_BRANCH_PROFILING
diff --git a/arch/x86/kernel/cpu/Makefile b/arch/x86/kernel/cpu/Makefile
index dba6a83bc349..93792b457b81 100644
--- a/arch/x86/kernel/cpu/Makefile
+++ b/arch/x86/kernel/cpu/Makefile
@@ -17,8 +17,7 @@ KCOV_INSTRUMENT_perf_event.o := n
 KCSAN_SANITIZE_common.o := n
 
 # Make sure load_percpu_segment has no stackprotector
-nostackp := $(call cc-option, -fno-stack-protector)
-CFLAGS_common.o		:= $(nostackp)
+CFLAGS_common.o		:= -fno-stack-protector
 
 obj-y			:= cacheinfo.o scattered.o topology.o
 obj-y			+= common.o
diff --git a/arch/x86/lib/Makefile b/arch/x86/lib/Makefile
index 6110bce7237b..d46fff11f06f 100644
--- a/arch/x86/lib/Makefile
+++ b/arch/x86/lib/Makefile
@@ -24,7 +24,7 @@ ifdef CONFIG_FUNCTION_TRACER
 CFLAGS_REMOVE_cmdline.o = -pg
 endif
 
-CFLAGS_cmdline.o := $(call cc-option, -fno-stack-protector)
+CFLAGS_cmdline.o := -fno-stack-protector
 endif
 
 inat_tables_script = $(srctree)/arch/x86/tools/gen-insn-attr-x86.awk
diff --git a/arch/x86/mm/Makefile b/arch/x86/mm/Makefile
index f7fd0e868c9c..5864219221ca 100644
--- a/arch/x86/mm/Makefile
+++ b/arch/x86/mm/Makefile
@@ -22,10 +22,9 @@ obj-y				:=  init.o init_$(BITS).o fault.o ioremap.o extable.o mmap.o \
 obj-y				+= pat/
 
 # Make sure __phys_addr has no stackprotector
-nostackp := $(call cc-option, -fno-stack-protector)
-CFLAGS_physaddr.o		:= $(nostackp)
-CFLAGS_setup_nx.o		:= $(nostackp)
-CFLAGS_mem_encrypt_identity.o	:= $(nostackp)
+CFLAGS_physaddr.o		:= -fno-stack-protector
+CFLAGS_setup_nx.o		:= -fno-stack-protector
+CFLAGS_mem_encrypt_identity.o	:= -fno-stack-protector
 
 CFLAGS_fault.o := -I $(srctree)/$(src)/../include/asm/trace
 
diff --git a/arch/x86/power/Makefile b/arch/x86/power/Makefile
index 37923d715741..6907b523e856 100644
--- a/arch/x86/power/Makefile
+++ b/arch/x86/power/Makefile
@@ -3,8 +3,7 @@ OBJECT_FILES_NON_STANDARD_hibernate_asm_$(BITS).o := y
 
 # __restore_processor_state() restores %gs after S3 resume and so should not
 # itself be stack-protected
-nostackp := $(call cc-option, -fno-stack-protector)
-CFLAGS_cpu.o	:= $(nostackp)
+CFLAGS_cpu.o	:= -fno-stack-protector
 
 obj-$(CONFIG_PM_SLEEP)		+= cpu.o
 obj-$(CONFIG_HIBERNATION)	+= hibernate_$(BITS).o hibernate_asm_$(BITS).o hibernate.o
diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
index 088bd764e0b7..183ac60e5990 100644
--- a/arch/x86/purgatory/Makefile
+++ b/arch/x86/purgatory/Makefile
@@ -34,7 +34,7 @@ KCOV_INSTRUMENT := n
 PURGATORY_CFLAGS_REMOVE := -mcmodel=kernel
 PURGATORY_CFLAGS := -mcmodel=large -ffreestanding -fno-zero-initialized-in-bss
 PURGATORY_CFLAGS += $(DISABLE_STACKLEAK_PLUGIN) -DDISABLE_BRANCH_PROFILING
-PURGATORY_CFLAGS += $(call cc-option,-fno-stack-protector)
+PURGATORY_CFLAGS += -fno-stack-protector
 
 # Default KBUILD_CFLAGS can have -pg option set when FTRACE is enabled. That
 # in turn leaves some undefined symbols like __fentry__ in purgatory and not
diff --git a/arch/x86/um/vdso/Makefile b/arch/x86/um/vdso/Makefile
index 0caddd6acb22..5943387e3f35 100644
--- a/arch/x86/um/vdso/Makefile
+++ b/arch/x86/um/vdso/Makefile
@@ -42,7 +42,7 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
 # optimize sibling calls.
 #
 CFL := $(PROFILING) -mcmodel=small -fPIC -O2 -fasynchronous-unwind-tables -m64 \
-       $(filter -g%,$(KBUILD_CFLAGS)) $(call cc-option, -fno-stack-protector) \
+       $(filter -g%,$(KBUILD_CFLAGS)) -fno-stack-protector \
        -fno-omit-frame-pointer -foptimize-sibling-calls
 
 $(vobjs): KBUILD_CFLAGS += $(CFL)
diff --git a/arch/x86/xen/Makefile b/arch/x86/xen/Makefile
index 084de77a109e..5f1db522d06b 100644
--- a/arch/x86/xen/Makefile
+++ b/arch/x86/xen/Makefile
@@ -9,9 +9,8 @@ CFLAGS_REMOVE_irq.o = -pg
 endif
 
 # Make sure early boot has no stackprotector
-nostackp := $(call cc-option, -fno-stack-protector)
-CFLAGS_enlighten_pv.o		:= $(nostackp)
-CFLAGS_mmu_pv.o			:= $(nostackp)
+CFLAGS_enlighten_pv.o		:= -fno-stack-protector
+CFLAGS_mmu_pv.o			:= -fno-stack-protector
 
 obj-y				+= enlighten.o
 obj-y				+= mmu.o
diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 75daaf20374e..f8418763cd79 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -29,7 +29,7 @@ KBUILD_CFLAGS			:= $(cflags-y) -Os -DDISABLE_BRANCH_PROFILING \
 				   -include $(srctree)/drivers/firmware/efi/libstub/hidden.h \
 				   -D__NO_FORTIFY \
 				   $(call cc-option,-ffreestanding) \
-				   $(call cc-option,-fno-stack-protector) \
+				   -fno-stack-protector \
 				   $(call cc-option,-fno-addrsig) \
 				   -D__DISABLE_EXPORTS
 
diff --git a/drivers/xen/Makefile b/drivers/xen/Makefile
index 0d322f3d90cd..c25c9a699b48 100644
--- a/drivers/xen/Makefile
+++ b/drivers/xen/Makefile
@@ -5,8 +5,7 @@ obj-y	+= mem-reservation.o
 obj-y	+= events/
 obj-y	+= xenbus/
 
-nostackp := $(call cc-option, -fno-stack-protector)
-CFLAGS_features.o			:= $(nostackp)
+CFLAGS_features.o			:= -fno-stack-protector
 
 dom0-$(CONFIG_ARM64) += arm-device.o
 dom0-$(CONFIG_PCI) += pci.o
diff --git a/kernel/kcsan/Makefile b/kernel/kcsan/Makefile
index d4999b38d1be..d111f32bd5fd 100644
--- a/kernel/kcsan/Makefile
+++ b/kernel/kcsan/Makefile
@@ -7,8 +7,7 @@ CFLAGS_REMOVE_core.o = $(CC_FLAGS_FTRACE)
 CFLAGS_REMOVE_debugfs.o = $(CC_FLAGS_FTRACE)
 CFLAGS_REMOVE_report.o = $(CC_FLAGS_FTRACE)
 
-CFLAGS_core.o := $(call cc-option,-fno-conserve-stack,) \
-	$(call cc-option,-fno-stack-protector,)
+CFLAGS_core.o := $(call cc-option,-fno-conserve-stack,) -fno-stack-protector
 
 obj-y := core.o debugfs.o report.o
 obj-$(CONFIG_KCSAN_SELFTEST) += test.o
diff --git a/lib/Makefile b/lib/Makefile
index b1c42c10073b..0cda70649f1c 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -22,7 +22,7 @@ KCOV_INSTRUMENT_fault-inject.o := n
 ifdef CONFIG_AMD_MEM_ENCRYPT
 KASAN_SANITIZE_string.o := n
 
-CFLAGS_string.o := $(call cc-option, -fno-stack-protector)
+CFLAGS_string.o := -fno-stack-protector
 endif
 
 # Used by KCSAN while enabled, avoid recursion.
@@ -300,7 +300,7 @@ endif
 UBSAN_SANITIZE_ubsan.o := n
 KASAN_SANITIZE_ubsan.o := n
 KCSAN_SANITIZE_ubsan.o := n
-CFLAGS_ubsan.o := $(call cc-option, -fno-stack-protector) $(DISABLE_STACKLEAK_PLUGIN)
+CFLAGS_ubsan.o := -fno-stack-protector $(DISABLE_STACKLEAK_PLUGIN)
 
 obj-$(CONFIG_SBITMAP) += sbitmap.o
 
diff --git a/mm/kasan/Makefile b/mm/kasan/Makefile
index d532c2587731..370d970e5ab5 100644
--- a/mm/kasan/Makefile
+++ b/mm/kasan/Makefile
@@ -16,7 +16,7 @@ CFLAGS_REMOVE_tags_report.o = $(CC_FLAGS_FTRACE)
 # Function splitter causes unnecessary splits in __asan_load1/__asan_store1
 # see: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=63533
 CC_FLAGS_KASAN_RUNTIME := $(call cc-option, -fno-conserve-stack)
-CC_FLAGS_KASAN_RUNTIME += $(call cc-option, -fno-stack-protector)
+CC_FLAGS_KASAN_RUNTIME += -fno-stack-protector
 # Disable branch tracing to avoid recursion.
 CC_FLAGS_KASAN_RUNTIME += -DDISABLE_BRANCH_PROFILING
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200626185913.92890-1-masahiroy%40kernel.org.
