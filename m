Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBRNE5KAQMGQEBDYIYQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E84326EA2
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 19:41:11 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id g7sf522389pll.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 10:41:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614451269; cv=pass;
        d=google.com; s=arc-20160816;
        b=U8SzEkF+pO3imQpUVkNPBXMRdltHNBHrTbVFzD4Yr7pBA4z4xDkDg+byuzKhThVpR1
         +NvI1A3gAOlbB39Ipj2ScsHSn/nSXTSAnMq6vvRpJ7FMKm5wyd23RWmDOJWOiC/qLBDE
         9DMjP4/4bzhHMDx73n3XSRrTqdJipY90+gqrkJrIcqIfWrNfuZCA587Eh6kiV3PWEEDl
         OF1WdzRuUmjRtDPdK1Q4lqKzvcGQmENB3kOee7ysRHXbYGAbN4qj5DBlQVABAVeNYSYL
         VyCHPWP7It65hsP/SNbK/uP/X6j1P+LHiVJAYFO9aNOuKZGjoLDWirscXxoVMIoiGRiY
         7GXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=Na2qm7inZGKHyAlmgORJqTBY4KfCaEc/SBTHPi5pV0s=;
        b=03DfBdTIX39syAf+oFW8Onc22Gr9VM1cSY1yvsZOcZYz00HAWkMRyDJpfk2VsjkCc7
         WSyh7wqcbx4aNN3WZdO7zUgWheCYpWsyLoqgy1A21BgRkQBkCX3llmbTtc2l+8m+TOqy
         3qjmg2+KRSzDvlBkcVpiyNVibuyYE5GQ07rOsk6HJRw1rBFFAUp+o3L9L65jQX1y+6wC
         /R+5HwXGHORu5i80yUxAWQe7+1TLa0Zx3zhNB/9ME5XLy2UWyzjtbmQse5RxYezSl9A+
         6sIj8kMwMkXOgtoyYa+PVGiY4Wb5DUWTlQ2fQzUSMiFpvQ+vGNBeJBRdgRSo33Kw74JD
         XrUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=fPLY87kz;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Na2qm7inZGKHyAlmgORJqTBY4KfCaEc/SBTHPi5pV0s=;
        b=iJzx2oyyu4j5iHBja2BNQ7LtQZCPkp2FT8CGwzJzJJAzpeMeI9X28WzXIzeBrArA+L
         7rqHmYGuLTj3qMXTmyo8xU1rSXxQKFL0xI0nCRdnwpVCFJ1bHmtFpduq0uAYJMRMJnCc
         FVvBDWr0HD7hBUmwQjE+NwHpKNAld5O8kCVljv3qHBerhWFKdEXTTWshqkXZIug7/QGA
         PqcoyBYQ47w3S/wrfRbxTlUwWXS3p7oML7JZC7FLbTZmFjscCSGWBPfVqSGdyhznh34m
         0x/mifLRU8yNQYeIf3DwwI5KNnHQhE5/BOiGMeidjgyi4hJN9mLhWerzY0Wmz+rgx6j3
         VFcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Na2qm7inZGKHyAlmgORJqTBY4KfCaEc/SBTHPi5pV0s=;
        b=XEK2qQEOkZ9zLNsLwNXCtjU65BDBkMhqWmCa2DQ7m9J3clVkYQFM9PiDw7UzQMe2U2
         li6nAmgv9p5RV8l3OqBwuLuJxYCL54WW2Vu1Ntu0gf9AtqVG1hDR2RyA+ZYTDCiZEvWW
         zq4Uepb8+OXsJeBwnqz5p5vEfcADzVj82uwuBgBqxXsGDaTtguSqx/PD7tTn4ZH4ObFL
         LxUyzhAeDKzuQhYi4r8ntBtG6Iq6hOJPDAzWw8qnh16PWVO0FOFGp+fLyEBSUa3E3Bxs
         AxiMpfZH5zp7pn4pkxAXZQIrlMiJsIBogLYq57P+8rkLOG6XP5hpm18X4COf+n1dg4c3
         ytMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532aprzreuKJ347zPUt0Y+Qv7+jr6SNaOPncXs8WehO1fm7yniwu
	jYLDJio9rT16jfiM8MECTVU=
X-Google-Smtp-Source: ABdhPJzv0UYCbTE19E1/ojrYv18rCBMeaHNacltXCHgLXxwBKFmFtoBnehAEgURmGErYQ+l6P8WPfw==
X-Received: by 2002:a63:cf15:: with SMTP id j21mr7756165pgg.160.1614451269452;
        Sat, 27 Feb 2021 10:41:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:953:: with SMTP id dw19ls2772934pjb.1.canary-gmail;
 Sat, 27 Feb 2021 10:41:09 -0800 (PST)
X-Received: by 2002:a17:90b:438a:: with SMTP id in10mr6104886pjb.165.1614451268959;
        Sat, 27 Feb 2021 10:41:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614451268; cv=none;
        d=google.com; s=arc-20160816;
        b=fjOq0MqjsPLV6wo8nC4BaqXnIDW9pwhrSJFR2dLTuxYPkqt6WGoJmApcRnruj5Z74n
         eiC7LQ/nKiWSk4x5Zp59eXNN3U7RyUpYM+gzyk6Ovd9C+cvo10nmk4Keiyden73Qnu2Q
         3jlcELYc3DMdtDTQSC3ef00bAmRNu5WgxaBUUbplXEq7lua4WZLThilEXfiC8VYwm/kM
         tHuc4+sYH8VHG6E5cNiyIpJ+6hfIMzG2xMVGCayNL+ATi8A6HmQ+tzZWY8w1PI4AOHIR
         UpbMK/HryWgcB7xJxBPzZOe34lydvEv5Uk2yg5k8aGbNG8iwH9rn9xnSGv54QJDAB0Ij
         fcGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=gOpMVlOqLVAfnJLlOCHiAYyNe6gX6r5/1K3/T+OYopw=;
        b=wGNqznoNEa5ZAEkFSStb2sYomz8jluVhts2saupE6D8Zg4Kf8P6QXiGo9j//nt1V+l
         178We4M8m02Lf+usJ4uDkXeDrsFdmUd+gHZlySYaJnFmADeodTaibephOm8cIBm9Ec9t
         f3fMcpmoVic5d0cD1dB+5tZ6kKG+2J245uNBjWpR5ogDWzzUVODKeY2BRaYnTcgjuHJw
         bQiDkktZ5eqUsIg3UAXt/TCAhE5rsHMetxYPjKBoAqllxqLQ5ALFjjcdAaPgPlgZqKVO
         aMCPvpfZ/hplsexksoNIqxc0o2kPd/PzufmW/OZP2QiBhf/oFrwCe0pYByadYCYtQDyw
         5MzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=fPLY87kz;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id lt14si1102876pjb.2.2021.02.27.10.41.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2021 10:41:08 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from grover.flets-west.jp (softbank126026090165.bbtec.net [126.26.90.165]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 11RIdc9t010275;
	Sun, 28 Feb 2021 03:39:39 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 11RIdc9t010275
X-Nifty-SrcIP: [126.26.90.165]
From: Masahiro Yamada <masahiroy@kernel.org>
To: x86@kernel.org, Thomas Gleixner <tglx@linutronix.de>,
        Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Fangrui Song <maskray@google.com>,
        clang-built-linux@googlegroups.com, "H . J . Lu" <hjl.tools@gmail.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Andy Lutomirski <luto@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Brian Gerst <brgerst@gmail.com>,
        "Chang S. Bae" <chang.seok.bae@intel.com>, Chao Yu <chao@kernel.org>,
        "Darrick J. Wong" <djwong@kernel.org>,
        Dmitry Safonov <0x7f454c46@gmail.com>,
        Dominik Brodowski <linux@dominikbrodowski.net>,
        Gabriel Krisman Bertazi <krisman@collabora.com>,
        Ingo Molnar <mingo@redhat.com>, Jaroslav Kysela <perex@perex.cz>,
        Jason Gunthorpe <jgg@ziepe.ca>, Jethro Beekman <jethro@fortanix.com>,
        Kees Cook <keescook@chromium.org>, Miklos Szeredi <miklos@szeredi.hu>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sasha Levin <sashal@kernel.org>,
        Sean Christopherson <seanjc@google.com>, Takashi Iwai <tiwai@suse.com>,
        alsa-devel@alsa-project.org, linux-fsdevel@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org
Subject: [PATCH RFC] x86: remove toolchain check for X32 ABI capability
Date: Sun, 28 Feb 2021 03:39:10 +0900
Message-Id: <20210227183910.221873-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=fPLY87kz;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

This commit reverts 0bf6276392e9 ("x32: Warn and disable rather than
error if binutils too old").

The help text in arch/x86/Kconfig says enabling the X32 ABI support
needs binutils 2.22 or later. This is met because the minimal binutils
version is 2.23 according to Documentation/process/changes.rst.

I would not say I am not familiar with toolchain configuration, but
I checked the configure.tgt code in binutils. The elf32_x86_64
emulation mode seems to be included when it is configured for the
x86_64-*-linux-* target.

I also tried lld and llvm-objcopy, and succeeded in building x32 VDSO.

I removed the compile-time check in arch/x86/Makefile, in the hope of
elf32_x86_64 being always supported.

With this, CONFIG_X86_X32 and CONFIG_X86_X32_ABI will be equivalent.
Rename the former to the latter.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/x86/Kconfig                       |  8 ++------
 arch/x86/Makefile                      | 16 ----------------
 arch/x86/include/asm/syscall_wrapper.h |  6 +++---
 arch/x86/include/asm/vdso.h            |  2 +-
 arch/x86/kernel/process_64.c           |  2 +-
 fs/fuse/file.c                         |  2 +-
 fs/xfs/xfs_ioctl32.c                   |  2 +-
 sound/core/control_compat.c            | 16 ++++++++--------
 sound/core/pcm_compat.c                | 20 ++++++++++----------
 9 files changed, 27 insertions(+), 47 deletions(-)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 2792879d398e..7272cba2744c 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -2865,7 +2865,7 @@ config IA32_AOUT
 	help
 	  Support old a.out binaries in the 32bit emulation.
 
-config X86_X32
+config X86_X32_ABI
 	bool "x32 ABI for 64-bit mode"
 	depends on X86_64
 	help
@@ -2874,10 +2874,6 @@ config X86_X32
 	  full 64-bit register file and wide data path while leaving
 	  pointers at 32 bits for smaller memory footprint.
 
-	  You will need a recent binutils (2.22 or later) with
-	  elf32_x86_64 support enabled to compile a kernel with this
-	  option set.
-
 config COMPAT_32
 	def_bool y
 	depends on IA32_EMULATION || X86_32
@@ -2886,7 +2882,7 @@ config COMPAT_32
 
 config COMPAT
 	def_bool y
-	depends on IA32_EMULATION || X86_X32
+	depends on IA32_EMULATION || X86_X32_ABI
 
 if COMPAT
 config COMPAT_FOR_U64_ALIGNMENT
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 2d6d5a28c3bf..e163549f5be7 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -125,22 +125,6 @@ else
         KBUILD_CFLAGS += -mcmodel=kernel
 endif
 
-ifdef CONFIG_X86_X32
-	x32_ld_ok := $(call try-run,\
-			/bin/echo -e '1: .quad 1b' | \
-			$(CC) $(KBUILD_AFLAGS) -c -x assembler -o "$$TMP" - && \
-			$(OBJCOPY) -O elf32-x86-64 "$$TMP" "$$TMPO" && \
-			$(LD) -m elf32_x86_64 "$$TMPO" -o "$$TMP",y,n)
-        ifeq ($(x32_ld_ok),y)
-                CONFIG_X86_X32_ABI := y
-                KBUILD_AFLAGS += -DCONFIG_X86_X32_ABI
-                KBUILD_CFLAGS += -DCONFIG_X86_X32_ABI
-        else
-                $(warning CONFIG_X86_X32 enabled but no binutils support)
-        endif
-endif
-export CONFIG_X86_X32_ABI
-
 #
 # If the function graph tracer is used with mcount instead of fentry,
 # '-maccumulate-outgoing-args' is needed to prevent a GCC bug
diff --git a/arch/x86/include/asm/syscall_wrapper.h b/arch/x86/include/asm/syscall_wrapper.h
index a84333adeef2..69bf87c41a0b 100644
--- a/arch/x86/include/asm/syscall_wrapper.h
+++ b/arch/x86/include/asm/syscall_wrapper.h
@@ -158,7 +158,7 @@ extern long __ia32_sys_ni_syscall(const struct pt_regs *regs);
 #endif /* CONFIG_IA32_EMULATION */
 
 
-#ifdef CONFIG_X86_X32
+#ifdef CONFIG_X86_X32_ABI
 /*
  * For the x32 ABI, we need to create a stub for compat_sys_*() which is aware
  * of the x86-64-style parameter ordering of x32 syscalls. The syscalls common
@@ -176,12 +176,12 @@ extern long __ia32_sys_ni_syscall(const struct pt_regs *regs);
 
 #define __X32_COMPAT_SYS_NI(name)					\
 	__SYS_NI(x32, compat_sys_##name)
-#else /* CONFIG_X86_X32 */
+#else /* CONFIG_X86_X32_ABI */
 #define __X32_COMPAT_SYS_STUB0(name)
 #define __X32_COMPAT_SYS_STUBx(x, name, ...)
 #define __X32_COMPAT_COND_SYSCALL(name)
 #define __X32_COMPAT_SYS_NI(name)
-#endif /* CONFIG_X86_X32 */
+#endif /* CONFIG_X86_X32_ABI */
 
 
 #ifdef CONFIG_COMPAT
diff --git a/arch/x86/include/asm/vdso.h b/arch/x86/include/asm/vdso.h
index 98aa103eb4ab..2963a2f5dbc4 100644
--- a/arch/x86/include/asm/vdso.h
+++ b/arch/x86/include/asm/vdso.h
@@ -37,7 +37,7 @@ struct vdso_image {
 extern const struct vdso_image vdso_image_64;
 #endif
 
-#ifdef CONFIG_X86_X32
+#ifdef CONFIG_X86_X32_ABI
 extern const struct vdso_image vdso_image_x32;
 #endif
 
diff --git a/arch/x86/kernel/process_64.c b/arch/x86/kernel/process_64.c
index d08307df69ad..a93b6f4296fc 100644
--- a/arch/x86/kernel/process_64.c
+++ b/arch/x86/kernel/process_64.c
@@ -656,7 +656,7 @@ void set_personality_64bit(void)
 
 static void __set_personality_x32(void)
 {
-#ifdef CONFIG_X86_X32
+#ifdef CONFIG_X86_X32_ABI
 	if (current->mm)
 		current->mm->context.flags = 0;
 
diff --git a/fs/fuse/file.c b/fs/fuse/file.c
index 8cccecb55fb8..c53c620d1a7a 100644
--- a/fs/fuse/file.c
+++ b/fs/fuse/file.c
@@ -2797,7 +2797,7 @@ long fuse_do_ioctl(struct file *file, unsigned int cmd, unsigned long arg,
 #else
 	if (flags & FUSE_IOCTL_COMPAT) {
 		inarg.flags |= FUSE_IOCTL_32BIT;
-#ifdef CONFIG_X86_X32
+#ifdef CONFIG_X86_X32_ABI
 		if (in_x32_syscall())
 			inarg.flags |= FUSE_IOCTL_COMPAT_X32;
 #endif
diff --git a/fs/xfs/xfs_ioctl32.c b/fs/xfs/xfs_ioctl32.c
index 33c09ec8e6c0..e8038bc966e7 100644
--- a/fs/xfs/xfs_ioctl32.c
+++ b/fs/xfs/xfs_ioctl32.c
@@ -233,7 +233,7 @@ xfs_compat_ioc_fsbulkstat(
 	inumbers_fmt_pf		inumbers_func = xfs_fsinumbers_fmt_compat;
 	bulkstat_one_fmt_pf	bs_one_func = xfs_fsbulkstat_one_fmt_compat;
 
-#ifdef CONFIG_X86_X32
+#ifdef CONFIG_X86_X32_ABI
 	if (in_x32_syscall()) {
 		/*
 		 * ... but on x32 the input xfs_fsop_bulkreq has pointers
diff --git a/sound/core/control_compat.c b/sound/core/control_compat.c
index 1d708aab9c98..5d1b94bda2cd 100644
--- a/sound/core/control_compat.c
+++ b/sound/core/control_compat.c
@@ -153,7 +153,7 @@ struct snd_ctl_elem_value32 {
         unsigned char reserved[128];
 };
 
-#ifdef CONFIG_X86_X32
+#ifdef CONFIG_X86_X32_ABI
 /* x32 has a different alignment for 64bit values from ia32 */
 struct snd_ctl_elem_value_x32 {
 	struct snd_ctl_elem_id id;
@@ -165,7 +165,7 @@ struct snd_ctl_elem_value_x32 {
 	} value;
 	unsigned char reserved[128];
 };
-#endif /* CONFIG_X86_X32 */
+#endif /* CONFIG_X86_X32_ABI */
 
 /* get the value type and count of the control */
 static int get_ctl_type(struct snd_card *card, struct snd_ctl_elem_id *id,
@@ -350,7 +350,7 @@ static int snd_ctl_elem_write_user_compat(struct snd_ctl_file *file,
 	return ctl_elem_write_user(file, data32, &data32->value);
 }
 
-#ifdef CONFIG_X86_X32
+#ifdef CONFIG_X86_X32_ABI
 static int snd_ctl_elem_read_user_x32(struct snd_card *card,
 				      struct snd_ctl_elem_value_x32 __user *data32)
 {
@@ -362,7 +362,7 @@ static int snd_ctl_elem_write_user_x32(struct snd_ctl_file *file,
 {
 	return ctl_elem_write_user(file, data32, &data32->value);
 }
-#endif /* CONFIG_X86_X32 */
+#endif /* CONFIG_X86_X32_ABI */
 
 /* add or replace a user control */
 static int snd_ctl_elem_add_compat(struct snd_ctl_file *file,
@@ -421,10 +421,10 @@ enum {
 	SNDRV_CTL_IOCTL_ELEM_WRITE32 = _IOWR('U', 0x13, struct snd_ctl_elem_value32),
 	SNDRV_CTL_IOCTL_ELEM_ADD32 = _IOWR('U', 0x17, struct snd_ctl_elem_info32),
 	SNDRV_CTL_IOCTL_ELEM_REPLACE32 = _IOWR('U', 0x18, struct snd_ctl_elem_info32),
-#ifdef CONFIG_X86_X32
+#ifdef CONFIG_X86_X32_ABI
 	SNDRV_CTL_IOCTL_ELEM_READ_X32 = _IOWR('U', 0x12, struct snd_ctl_elem_value_x32),
 	SNDRV_CTL_IOCTL_ELEM_WRITE_X32 = _IOWR('U', 0x13, struct snd_ctl_elem_value_x32),
-#endif /* CONFIG_X86_X32 */
+#endif /* CONFIG_X86_X32_ABI */
 };
 
 static inline long snd_ctl_ioctl_compat(struct file *file, unsigned int cmd, unsigned long arg)
@@ -463,12 +463,12 @@ static inline long snd_ctl_ioctl_compat(struct file *file, unsigned int cmd, uns
 		return snd_ctl_elem_add_compat(ctl, argp, 0);
 	case SNDRV_CTL_IOCTL_ELEM_REPLACE32:
 		return snd_ctl_elem_add_compat(ctl, argp, 1);
-#ifdef CONFIG_X86_X32
+#ifdef CONFIG_X86_X32_ABI
 	case SNDRV_CTL_IOCTL_ELEM_READ_X32:
 		return snd_ctl_elem_read_user_x32(ctl->card, argp);
 	case SNDRV_CTL_IOCTL_ELEM_WRITE_X32:
 		return snd_ctl_elem_write_user_x32(ctl, argp);
-#endif /* CONFIG_X86_X32 */
+#endif /* CONFIG_X86_X32_ABI */
 	}
 
 	down_read(&snd_ioctl_rwsem);
diff --git a/sound/core/pcm_compat.c b/sound/core/pcm_compat.c
index 590a46a9e78d..937f5117a81f 100644
--- a/sound/core/pcm_compat.c
+++ b/sound/core/pcm_compat.c
@@ -147,13 +147,13 @@ static int snd_pcm_ioctl_channel_info_compat(struct snd_pcm_substream *substream
 	return err;
 }
 
-#ifdef CONFIG_X86_X32
+#ifdef CONFIG_X86_X32_ABI
 /* X32 ABI has the same struct as x86-64 for snd_pcm_channel_info */
 static int snd_pcm_channel_info_user(struct snd_pcm_substream *substream,
 				     struct snd_pcm_channel_info __user *src);
 #define snd_pcm_ioctl_channel_info_x32(s, p)	\
 	snd_pcm_channel_info_user(s, p)
-#endif /* CONFIG_X86_X32 */
+#endif /* CONFIG_X86_X32_ABI */
 
 struct compat_snd_pcm_status64 {
 	snd_pcm_state_t state;
@@ -373,7 +373,7 @@ static int snd_pcm_ioctl_xfern_compat(struct snd_pcm_substream *substream,
 	return err;
 }
 
-#ifdef CONFIG_X86_X32
+#ifdef CONFIG_X86_X32_ABI
 /* X32 ABI has 64bit timespec and 64bit alignment */
 struct snd_pcm_mmap_status_x32 {
 	snd_pcm_state_t state;
@@ -464,7 +464,7 @@ static int snd_pcm_ioctl_sync_ptr_x32(struct snd_pcm_substream *substream,
 
 	return 0;
 }
-#endif /* CONFIG_X86_X32 */
+#endif /* CONFIG_X86_X32_ABI */
 
 /*
  */
@@ -484,10 +484,10 @@ enum {
 	SNDRV_PCM_IOCTL_READN_FRAMES32 = _IOR('A', 0x53, struct snd_xfern32),
 	SNDRV_PCM_IOCTL_STATUS_COMPAT64 = _IOR('A', 0x20, struct compat_snd_pcm_status64),
 	SNDRV_PCM_IOCTL_STATUS_EXT_COMPAT64 = _IOWR('A', 0x24, struct compat_snd_pcm_status64),
-#ifdef CONFIG_X86_X32
+#ifdef CONFIG_X86_X32_ABI
 	SNDRV_PCM_IOCTL_CHANNEL_INFO_X32 = _IOR('A', 0x32, struct snd_pcm_channel_info),
 	SNDRV_PCM_IOCTL_SYNC_PTR_X32 = _IOWR('A', 0x23, struct snd_pcm_sync_ptr_x32),
-#endif /* CONFIG_X86_X32 */
+#endif /* CONFIG_X86_X32_ABI */
 };
 
 static long snd_pcm_ioctl_compat(struct file *file, unsigned int cmd, unsigned long arg)
@@ -531,10 +531,10 @@ static long snd_pcm_ioctl_compat(struct file *file, unsigned int cmd, unsigned l
 	case __SNDRV_PCM_IOCTL_SYNC_PTR32:
 		return snd_pcm_common_ioctl(file, substream, cmd, argp);
 	case __SNDRV_PCM_IOCTL_SYNC_PTR64:
-#ifdef CONFIG_X86_X32
+#ifdef CONFIG_X86_X32_ABI
 		if (in_x32_syscall())
 			return snd_pcm_ioctl_sync_ptr_x32(substream, argp);
-#endif /* CONFIG_X86_X32 */
+#endif /* CONFIG_X86_X32_ABI */
 		return snd_pcm_common_ioctl(file, substream, cmd, argp);
 	case SNDRV_PCM_IOCTL_HW_REFINE32:
 		return snd_pcm_ioctl_hw_params_compat(substream, 1, argp);
@@ -566,10 +566,10 @@ static long snd_pcm_ioctl_compat(struct file *file, unsigned int cmd, unsigned l
 		return snd_pcm_status_user_compat64(substream, argp, false);
 	case SNDRV_PCM_IOCTL_STATUS_EXT_COMPAT64:
 		return snd_pcm_status_user_compat64(substream, argp, true);
-#ifdef CONFIG_X86_X32
+#ifdef CONFIG_X86_X32_ABI
 	case SNDRV_PCM_IOCTL_CHANNEL_INFO_X32:
 		return snd_pcm_ioctl_channel_info_x32(substream, argp);
-#endif /* CONFIG_X86_X32 */
+#endif /* CONFIG_X86_X32_ABI */
 	}
 
 	return -ENOIOCTLCMD;
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210227183910.221873-1-masahiroy%40kernel.org.
