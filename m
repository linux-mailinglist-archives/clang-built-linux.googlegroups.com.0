Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB56ISL4QKGQE2WUWIWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 069E9234DEC
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:41 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id x186sf20335438pfd.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236919; cv=pass;
        d=google.com; s=arc-20160816;
        b=d2X2u0qVaMSfio1cc0lgFc/0uIlDDPrHgf7MH6ijxj/yNaEhRWFtTSR3ENBxDfRlvZ
         JmTNdpqmqDnkpSTv7hsMKQEpIkRR9qilb8nzYfC8KrLFlmsfhTzwF5U4/e31+9AhdAgo
         /LajFzjT/KcWFvbGrk475MO46k5bjUzfolYezZ+6+4XA2sqYmlpI7SVzTe3Eyppf4eo7
         NjZlukTkc4Vlrl1UVrSo/u1d8GwcAEOLMwCKqx15bKINP8TlkZCV+2oCBAeF+Sh6naA+
         002qtw/nb3RQElZYoIhmPj1E+zkB8TycgLRu7FFXE2fMVCjAtqCB1kIG3jSK0KZQlCoS
         AO8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=TCbd2cTnWoBwy24mgtebdtkK7yL2b6nbHljOcQNAZgE=;
        b=YNzWqUFMg+RbE/bGif9Zi8chYGweM/jTl2/QxU4tLKXH2jgODawh2kkzSVimX2Tkc6
         BK5awCHl0VahHURF1/7h1ffTPJiL3JbhtwaaZkKHrIXjmcYJNCYkoWrFRaAPnL8gq2JV
         VYXkO3MGo/MszGqsAGsw06CzjEO6TG8QboRmN7O8nhuhNpcdGcnb94HjfcpAddT1pPAk
         ICdFSnRHzvgE70l+LaJRRvTxlrPkQAaW+1hk7WbzooyyGMeYKWcsICYwmakjVXPQH5Up
         8Vrhsrvv3sTQsrF4GgV6rGI2YGMRb7fnTflkEUQKiPmR0b2Efr70/W94Y7eSXwHIvj/4
         htNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MLXUvi1E;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TCbd2cTnWoBwy24mgtebdtkK7yL2b6nbHljOcQNAZgE=;
        b=Ygt8KmipbRKsqEco9uczcYlq3vaIlkdv78wrEbHvj/JcyAwEoSoTb9kg5UzuEYSykE
         U+yr1XCZR/XFZjWFkoomm1uI2dR4yO58SMu9dvY593jviVtxKDHzMGBsqAEmzv0+viQ3
         eyKVuZCUcCl4oB08k+4nclPlBeutJHEUNeaeVZTUx+Y7K95K127w/qUGhKTaQzrgQNYU
         8U974SxbjlzuPwFdgUEW7CJXVAYLbiqwxupDLzKRE6Me+uO34fW5FdEtgPAcWiMplr5P
         dm24+xKkXgyp/ysOR97iS7fz0P33YHhGAswy8Q4ic9wWQYRQ6X5X4Ebp3BwDsW/ltIZf
         yhIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TCbd2cTnWoBwy24mgtebdtkK7yL2b6nbHljOcQNAZgE=;
        b=bd6xZfWhk7TgELqgIbcBANM9keBvoVnL5MBxqHQKDzHYFbmpmuPTtS/yIROSPoNQBl
         x18egw1Ewo3v6YCnCdzbIQpAcCX5YBp0F0f3TwWroQoz0rrlL5DHcH9I5ZPJNrpRZNnB
         DnC7nJdLNq7EfuFcPlCX/B0G5ni+HtBu0SyfpdMwIgoH0xQPgN2kNkJtNKqAfyVWyR/h
         kRoE4RPczkV3pVxaGoYRbJZ9vhPN6s08b/RFDl3Z3azAmQoji2VqfNIcmdU6p1d1j2px
         g5CiZaQFlrc7gDB587/bWLDgTzsdpMwyso6laQXzrSG2VDynE7pGGD2/dM5X0UhxZIBo
         VkLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ct0v92zaD9GL9rdJ8sfnXXfxnpp0YfnpBjEZ7wh6uedId71C9
	xzRAOMnoZTrfN0Hb22o4Xgo=
X-Google-Smtp-Source: ABdhPJxw7GlszZ+6dzrxfnYkrut9pHK2Z6qV59uw+tg3mxliXXqDuvOFxz2ilYwmvtNdWy6IDmOlKw==
X-Received: by 2002:a17:90b:3750:: with SMTP id ne16mr6128922pjb.6.1596236919502;
        Fri, 31 Jul 2020 16:08:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9344:: with SMTP id g4ls4276225plp.10.gmail; Fri, 31
 Jul 2020 16:08:39 -0700 (PDT)
X-Received: by 2002:a17:902:b682:: with SMTP id c2mr5326654pls.273.1596236919095;
        Fri, 31 Jul 2020 16:08:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236919; cv=none;
        d=google.com; s=arc-20160816;
        b=sclVSvltgyw31TNOxQFI4h1mNWpwgbjnaH7OPglgaFPNXc0Jz46wFHAXn33SNcrTnS
         Aq32Ejo0vq3yNsLCcn0R2QHsNdYpggW/uLxBS1/9c9SXrURVSt+zAVOductSCKpS08Y3
         Cs94pr2q/SWqhcdCNsoTKFqZ8INmfQQRUeI9ejiedrsXYHU8eHGh5Y0daT/NclPTQUn+
         y1dMnksV6Bm2sIb9L0uEvIXfw9xin9D5MH8NguHIx+eO885bgbzs03xYf/elAb72j1k5
         oPJkWHeRVLu/q8S3C/E03qSrr4kaNgZwmN1S8zeerUiYg/xNKXENz1I8VessFYoyn3ZD
         8img==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wOq+Y00LQi/3deraAM6kBuaQbRKnLYOHk6N+NuQVWdA=;
        b=fn5VULcVHw5h9X5mBJWHl60tK8jppoYTFbTbXjtbaWcmETDZ63XYhg0g9NzOGFroxC
         tj9aqWeqj+bJBA1lxz72NmWx/8uqI89H0yD8izniXWjmKCf5qgXGF/p5MxDrtztZso4l
         dhLOeNiOqlx2d8oT4Bb0/EkwzrAFBjIflikOWzEV+muuoHCyYUsM1UBGTkcKA0aTeIpe
         mcEWhkNqEZ0JCO+gi7bnzMYCdvaQbTnldf1lRieM1EZLA7pZLGmgd9+I5Aq/WglgYv83
         +z1Xih+HGjKNVBMVLzVwjTEcm6Y/lg3T0+tbi2dkiG8AbUKB51l07azTTlLBEqPlkfzk
         6Egg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MLXUvi1E;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id a6si544203pgw.3.2020.07.31.16.08.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id s26so15178409pfm.4
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:39 -0700 (PDT)
X-Received: by 2002:a65:620f:: with SMTP id d15mr5623976pgv.270.1596236918800;
        Fri, 31 Jul 2020 16:08:38 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m190sm9732049pfm.89.2020.07.31.16.08.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:35 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Fangrui Song <maskray@google.com>,
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
Subject: [PATCH v5 07/36] x86/boot: Check that there are no run-time relocations
Date: Fri, 31 Jul 2020 16:07:51 -0700
Message-Id: <20200731230820.1742553-8-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=MLXUvi1E;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430
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

From: Arvind Sankar <nivedita@alum.mit.edu>

Add a linker script check that there are no run-time relocations, and
remove the old one that tries to check via looking for specially-named
sections in the object files.

Drop the tests for -fPIE compiler option and -pie linker option, as they
are available in all supported gcc and binutils versions (as well as
clang and lld).

Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/boot/compressed/Makefile      | 28 +++-----------------------
 arch/x86/boot/compressed/vmlinux.lds.S |  8 ++++++++
 2 files changed, 11 insertions(+), 25 deletions(-)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 7db0102a573d..96d53e300ab6 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -29,7 +29,7 @@ targets := vmlinux vmlinux.bin vmlinux.bin.gz vmlinux.bin.bz2 vmlinux.bin.lzma \
 	vmlinux.bin.xz vmlinux.bin.lzo vmlinux.bin.lz4
 
 KBUILD_CFLAGS := -m$(BITS) -O2
-KBUILD_CFLAGS += -fno-strict-aliasing $(call cc-option, -fPIE, -fPIC)
+KBUILD_CFLAGS += -fno-strict-aliasing -fPIE
 KBUILD_CFLAGS += -DDISABLE_BRANCH_PROFILING
 cflags-$(CONFIG_X86_32) := -march=i386
 cflags-$(CONFIG_X86_64) := -mcmodel=small
@@ -51,7 +51,7 @@ UBSAN_SANITIZE :=n
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
 # Compressed kernel should be built as PIE since it may be loaded at any
 # address by the bootloader.
-LDFLAGS_vmlinux := $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
+LDFLAGS_vmlinux := -pie $(call ld-option, --no-dynamic-linker)
 LDFLAGS_vmlinux += -T
 
 hostprogs	:= mkpiggy
@@ -86,30 +86,8 @@ vmlinux-objs-$(CONFIG_ACPI) += $(obj)/acpi.o
 vmlinux-objs-$(CONFIG_EFI_MIXED) += $(obj)/efi_thunk_$(BITS).o
 efi-obj-$(CONFIG_EFI_STUB) = $(objtree)/drivers/firmware/efi/libstub/lib.a
 
-# The compressed kernel is built with -fPIC/-fPIE so that a boot loader
-# can place it anywhere in memory and it will still run. However, since
-# it is executed as-is without any ELF relocation processing performed
-# (and has already had all relocation sections stripped from the binary),
-# none of the code can use data relocations (e.g. static assignments of
-# pointer values), since they will be meaningless at runtime. This check
-# will refuse to link the vmlinux if any of these relocations are found.
-quiet_cmd_check_data_rel = DATAREL $@
-define cmd_check_data_rel
-	for obj in $(filter %.o,$^); do \
-		$(READELF) -S $$obj | grep -qF .rel.local && { \
-			echo "error: $$obj has data relocations!" >&2; \
-			exit 1; \
-		} || true; \
-	done
-endef
-
-# We need to run two commands under "if_changed", so merge them into a
-# single invocation.
-quiet_cmd_check-and-link-vmlinux = LD      $@
-      cmd_check-and-link-vmlinux = $(cmd_check_data_rel); $(cmd_ld)
-
 $(obj)/vmlinux: $(vmlinux-objs-y) $(efi-obj-y) FORCE
-	$(call if_changed,check-and-link-vmlinux)
+	$(call if_changed,ld)
 
 OBJCOPYFLAGS_vmlinux.bin :=  -R .comment -S
 $(obj)/vmlinux.bin: vmlinux FORCE
diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index a4a4a59a2628..29df99b6cc64 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -42,6 +42,12 @@ SECTIONS
 		*(.rodata.*)
 		_erodata = . ;
 	}
+	.rel.dyn : {
+		*(.rel.*)
+	}
+	.rela.dyn : {
+		*(.rela.*)
+	}
 	.got : {
 		*(.got)
 	}
@@ -85,3 +91,5 @@ ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT en
 #else
 ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
 #endif
+
+ASSERT(SIZEOF(.rel.dyn) == 0 && SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations detected!")
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-8-keescook%40chromium.org.
