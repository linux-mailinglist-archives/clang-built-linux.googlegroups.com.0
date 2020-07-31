Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB4OISL4QKGQEQ53X57Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E8A234DE1
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:34 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id 37sf7100448pgx.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236913; cv=pass;
        d=google.com; s=arc-20160816;
        b=X/602lasJe1TzZd/RTtv2/uBA3oJk2vCBCITZ26Rly0iLQAA6wns21hcuzY044aqlP
         RSDj5dPGxmi35jLTti0IHUWEDYofLLU+8yhiFyyhLyiI6dKSKsoCAXmI7UKzJQ3oNuCi
         riinYmOAvLngv17oKQ42HjTMpljUqa5se3bXPx7+AshjbLLSkFW2cFWyi3AmFHTpOt2n
         dedsbZUhx8N5wdjRWD7wJqTujxIx2lmKmYDfP/k7Coeq0vGgQmHq7mzoMGqQYaaCzpo7
         UznMn9fDChJScFdQpPwtGM/NhAUrOIYjC1ZKeKGTjcxZRf+PdAfMwfGsriyFCwBOq2Lt
         uECA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=b0o3aWZpkP5e/zg5T1TSxY1Q7joNi9VPkT88LcqHVsI=;
        b=mfYP9pSDXcGuwxgUK8z0P1gZNXvqUz3OFc++nz/nGa1rVeQKM3RYBVDFBgi9X4PGNU
         2FTVf/TA2T9JJ1c6CnEzd6D6uvq2JUrpiVb0+Sf1jc8krrZ5nj+qCSX319uMnByM3gxC
         iEBfkghgLah0JlFDgA/rKKDjYJPobGya+HVr9ihOAUahBBM7o/QyAc1XW9O5CoQ0Jn7s
         9WYpsm/VJjH6YGlhNS6Jh5J5Dsu8o9fb6iHNnaVNY296ewzVCgFd9KbWLxi9LriUrXu5
         55qi/LCO2kPxiDovdPgxgoU56j3aPj7xvhsPcxPCDjXBduwTvI1Nqq/OxiU3ZKgPvHt9
         X1oQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=I2t5q3EB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b0o3aWZpkP5e/zg5T1TSxY1Q7joNi9VPkT88LcqHVsI=;
        b=rNU5U9X7MnfkqQXNq1Xv3ds2/xE7lYYQdBuhFzr0Zo5r2beMfxDqm9ExNtbL4em4/8
         X1YYjCrX8yVuKf3FXhty4LxOBPgx9mZZmpfjqDDbOxWZOZYTXhGL122QTFTHdm+pZZSX
         zLKTHgLaoQDpi7bT19YCimZLJigdaku1J1ONjIL5S0g5gx4IY3ZyGaitFSaeKqDUhop6
         GoY5vUNUvUNmr6xLs5FxAY22Nx/Xmns877zU5+C09RqhvpKvtKWGsfQq+FjkF35Y7F64
         vSIchNYwJHGf/4fSLUNjh5yYEdYioLNqbDgbOMYCvTqLCMpMzcUBRq/pTh86NTGkM1lk
         n51Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b0o3aWZpkP5e/zg5T1TSxY1Q7joNi9VPkT88LcqHVsI=;
        b=KEQaygBJo+40bXipcaF4W+HW7KnN7qzzViuOQRsIZqp7lDJ/+IjUQc+tW1ylJhXTuR
         fNHmEJKx70on/x11lJP2WS7uZue4B7An74FFQmC1bm6llpRXN5II5PBDJHLqbJsohirg
         Mj25ZPZqMCXHQLnZi6UROh1BFcg7/Q5jdHHeTjiMSEZUgGi9laW1r5dVxiJEwiTQpf/9
         Hhm1j6FONTi2qvwE2VZJKVxt7ZEOamKN4SuNlnJlJ4XySluC7e3sGxog3lQql7D5ZKnz
         3sigIa9ruVcgdw8Meg951aKH04MtXGq7upQAmmYUVnrr+Wfit9oMzjVOtIumwEE4wNBs
         1cXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530evNkPHEsyZxT5vyXK0dvAu1n58TiPCx9ogcyIoywMp1SQ3ICs
	rH8f0icOw6bYEp7hu/cVfSQ=
X-Google-Smtp-Source: ABdhPJyc0BbB0W4vrjcbxf8Ydh06tXWouklVPyLOecgQrtAwlLJfvj95IcWyl0h8N2rtrBcraylIdw==
X-Received: by 2002:a17:90b:c87:: with SMTP id o7mr6062666pjz.184.1596236913100;
        Fri, 31 Jul 2020 16:08:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3785:: with SMTP id mz5ls4270760pjb.1.gmail; Fri, 31
 Jul 2020 16:08:32 -0700 (PDT)
X-Received: by 2002:a17:90a:2170:: with SMTP id a103mr6414070pje.198.1596236912665;
        Fri, 31 Jul 2020 16:08:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236912; cv=none;
        d=google.com; s=arc-20160816;
        b=l4Hp/z49k6m62brSMuduuwSDGUw/PJt+LTb09dL70Zq3oFpsLtwscH1Scg8S+TkLnC
         MJDchQNNf8j67wjielD3YeXSVgDVmyXOmqAaTl6VuXfy/JusPQOQ3qf1ICL0Q9fiN98a
         8guOj+A5EYU9CLZAe8oLtmoPRMCn1T1GwokcLNcW9k6Io4vwMLmCwF72FzrywcJUoh1I
         umqn1jyR+SeQBeg118XvATBQLaTKigqnD1D9SiVMH90ubCTo8cYtQIVjtbANWwwhosQw
         8lDXnB5r197bb3vxrzTWp5p8qbC2J2el57Dgq9rIBYy2ZIZT6KP9Q5UfMpxXmF0pvain
         J1og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Oj0JTp0iqi1GihJzW9z0GKQvDoXirBrdmVyY4Bh4CEw=;
        b=fQqd9l7zxxwt7yRWOqTwVV8dsruWGWgnyslhETz/+kdC/WsF991NVH0OTgAxXQfrtW
         IDyG3ZtEqjxgzTpQbhgGvpzGGNGmp4lE7ryFxwej2iHOhkqaH7QxDBoJLB0L32diKuo+
         D+V6K5MvRY0mMPkthyjrqP7D8KBKewYqbdpnPzA2OchNZFgfCmkwHpVaaOD3dTx1Fpbt
         YlssKfIn/HcFMUpvESEFFQSfEZDd0UjMj6NpdwxgI8aIwZ1WJnISKoRIOIWTDlftdhnb
         9a40ybhXCM6MusZYe8z7v6EyWJMYrtekbHXiKICOL2m4Rv/y2s57kzFkhZYYSueeCxn7
         qpsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=I2t5q3EB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id g18si649023pfi.1.2020.07.31.16.08.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id d1so18093544plr.8
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:32 -0700 (PDT)
X-Received: by 2002:a17:902:b489:: with SMTP id y9mr5166444plr.99.1596236912355;
        Fri, 31 Jul 2020 16:08:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b185sm11019488pfa.148.2020.07.31.16.08.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:30 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 02/36] x86/boot/compressed: Force hidden visibility for all symbol references
Date: Fri, 31 Jul 2020 16:07:46 -0700
Message-Id: <20200731230820.1742553-3-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=I2t5q3EB;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

From: Ard Biesheuvel <ardb@kernel.org>

Eliminate all GOT entries in the decompressor binary, by forcing hidden
visibility for all symbol references, which informs the compiler that
such references will be resolved at link time without the need for
allocating GOT entries.

To ensure that no GOT entries will creep back in, add an assertion to
the decompressor linker script that will fire if the .got section has
a non-zero size.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Arvind Sankar <nivedita@alum.mit.edu>
Link: https://lore.kernel.org/r/20200523120021.34996-3-ardb@kernel.org
[Arvind: move hidden.h to include/linux instead of making a copy]
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/boot/compressed/Makefile      |  1 +
 arch/x86/boot/compressed/vmlinux.lds.S |  1 +
 drivers/firmware/efi/libstub/Makefile  |  2 +-
 drivers/firmware/efi/libstub/hidden.h  |  6 ------
 include/linux/hidden.h                 | 19 +++++++++++++++++++
 5 files changed, 22 insertions(+), 7 deletions(-)
 delete mode 100644 drivers/firmware/efi/libstub/hidden.h
 create mode 100644 include/linux/hidden.h

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 5a828fde7a42..489fea16bcfb 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -42,6 +42,7 @@ KBUILD_CFLAGS += $(call cc-disable-warning, gnu)
 KBUILD_CFLAGS += -Wno-pointer-sign
 KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
 KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
+KBUILD_CFLAGS += -include $(srctree)/include/linux/hidden.h
 
 KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
 GCOV_PROFILE := n
diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index b17d218ccdf9..4bcc943842ab 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -81,6 +81,7 @@ SECTIONS
 	DISCARDS
 }
 
+ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
 #ifdef CONFIG_X86_64
 ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
 #else
diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 75daaf20374e..b4f8c80cc591 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -26,7 +26,7 @@ cflags-$(CONFIG_ARM)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 cflags-$(CONFIG_EFI_GENERIC_STUB) += -I$(srctree)/scripts/dtc/libfdt
 
 KBUILD_CFLAGS			:= $(cflags-y) -Os -DDISABLE_BRANCH_PROFILING \
-				   -include $(srctree)/drivers/firmware/efi/libstub/hidden.h \
+				   -include $(srctree)/include/linux/hidden.h \
 				   -D__NO_FORTIFY \
 				   $(call cc-option,-ffreestanding) \
 				   $(call cc-option,-fno-stack-protector) \
diff --git a/drivers/firmware/efi/libstub/hidden.h b/drivers/firmware/efi/libstub/hidden.h
deleted file mode 100644
index 3493b041f419..000000000000
--- a/drivers/firmware/efi/libstub/hidden.h
+++ /dev/null
@@ -1,6 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * To prevent the compiler from emitting GOT-indirected (and thus absolute)
- * references to any global symbols, override their visibility as 'hidden'
- */
-#pragma GCC visibility push(hidden)
diff --git a/include/linux/hidden.h b/include/linux/hidden.h
new file mode 100644
index 000000000000..49a17b6b5962
--- /dev/null
+++ b/include/linux/hidden.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * When building position independent code with GCC using the -fPIC option,
+ * (or even the -fPIE one on older versions), it will assume that we are
+ * building a dynamic object (either a shared library or an executable) that
+ * may have symbol references that can only be resolved at load time. For a
+ * variety of reasons (ELF symbol preemption, the CoW footprint of the section
+ * that is modified by the loader), this results in all references to symbols
+ * with external linkage to go via entries in the Global Offset Table (GOT),
+ * which carries absolute addresses which need to be fixed up when the
+ * executable image is loaded at an offset which is different from its link
+ * time offset.
+ *
+ * Fortunately, there is a way to inform the compiler that such symbol
+ * references will be satisfied at link time rather than at load time, by
+ * giving them 'hidden' visibility.
+ */
+
+#pragma GCC visibility push(hidden)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-3-keescook%40chromium.org.
