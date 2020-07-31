Return-Path: <clang-built-linux+bncBCIO53XE7YHBBRH5SH4QKGQEE6XSOGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A607234C41
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 22:27:50 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id a18sf16687214oib.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 13:27:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596227268; cv=pass;
        d=google.com; s=arc-20160816;
        b=ClB7bYBLsBzGVebxWg2cveQwuuA5uZR0GX2k3JiF+Gc8P1Kt7SmBUZFpVgGP0x/+Y/
         QhbHb/xeEOf3o+u6zQ0xFfjy/fCTjC+6wL1YP09cce6y1qth2+TJoGT7bdYagkhU1rcJ
         hnTE8UegMgVletvIJ3s2lO4tghd7EwOcGrlyIw7IHxwppsKitsBTC2yiPsEQ+ilYr5qG
         EU5xUpFPJGOaAECy+wKcORrlNNx85S43vcoeGGROmjzSOtXDe6Qmy6dShoafL7dAz7WZ
         I2yIZPht93vucx2QkaOt9K8uI4FLbb1tKHyFtSPP/O7LSCePrEC6lU4Ya/xB7CyNsfES
         mlfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=diO2USpeFMOAS+SBEF7GeToZJH6zBNg2KWTHwtXxp5c=;
        b=zat1zCE6Wrl9+LweLUhby/dfVnT10xUAcptE7IlOIgoD8vsTZTJnAubHSa6suBHxca
         v5b08maFBHbTs50gTo4M1Ehj17D4s/Ox37m21M4Z3JzZg8HLF75c+pyj5wtG6MMCeOS5
         VxuHrkvCXfjFeiV0t2cI7VmBOOR8awYvA4EGyHFd4kxcyRCYO3JxL1UV5rqfFSQGHN/c
         LzmkZmxQuqCNE6F1+uGT6Bagfw4zfDSG7SzZKYi7K6ON8JNN0BbuOwp76LZwP3Sep61d
         gL67/Vsp+BDdhM68cqSASnCIj5sE24A+m6WKDzK25+a1JzQr8yjKVSW6Dm7yJvOkYtmf
         4aOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=diO2USpeFMOAS+SBEF7GeToZJH6zBNg2KWTHwtXxp5c=;
        b=Fs2Oeyd0UMs2IlSPIMRuvyJUolmYaaEVxs1AqNIZgGyj8GVbVxNv24OgudJhZa+4lJ
         awU+pRkLR8C7rxqT7oV1dw/Lgd8FxNCbtmhztwYSY3Crc47rSlwm8lLpgdQs2loW2mcO
         7kE9bKWImiKcXlwdYguoZ5SdNw5Qt2CTgvrJNDZdlmkxlsp5jwnTPbz/sd9jCUgLjhzm
         2jQs+/GVU1WC4Vdg5ny93YjiPKdWdhctm+CpQao/LSud2rQ7xsXTCz2A/VlG/1GKVWba
         g4zER6rFfKBr0q2JTcCpvMQtFoIM9tmrXhe8pvys2W7If8LHZhde2Thtk9ykX5Hqzspf
         Fkwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=diO2USpeFMOAS+SBEF7GeToZJH6zBNg2KWTHwtXxp5c=;
        b=WfzJIVHxY/tGI9w/hfOh0nmzPniz2BGGnDkw9qUel11ofZuqEZ5sBA8c3pdZ+SfpJg
         D0nY6N/qli8MeLFghR3FZa1Zh0yCb6yBLBWFsYodpRXNu3whLyY/VR+SvoN99AWBSXel
         so3B2cbYDwFuhyzzzI7I62fN3chmcjKmdlwwpbtlb/2ybyrLCMUshZMzZWqs1miN5UCh
         wZEUxRAzcQPc0VABm2PnP/BFrEcVCs3g8nwaQjpFmZaApyCinoVsLwO2k9du+enB7b2c
         lb1PjGm1GdHNMLW3UF+mL0Og79OQSKE5rnkf/NjE0iDsM1bmpWoCVYVxzmxlYI0A+qil
         o7Bw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wUqgrHIPUtZULcAQ0OT+JtCp2ueGJoe/3pMoYRjlzTYMDDaaI
	ucQYs0gcqnWo+2m1yHqgbtE=
X-Google-Smtp-Source: ABdhPJwagoJhXEfw15iK1lO204cBPD53rp0HPdhkKNZQg/6SYHNvHHWXlQWs1NChw0A1yyXUzxKabQ==
X-Received: by 2002:a9d:7f8e:: with SMTP id t14mr4634175otp.63.1596227268487;
        Fri, 31 Jul 2020 13:27:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:fc57:: with SMTP id a84ls2036224oii.2.gmail; Fri, 31 Jul
 2020 13:27:48 -0700 (PDT)
X-Received: by 2002:aca:e087:: with SMTP id x129mr4331610oig.178.1596227268148;
        Fri, 31 Jul 2020 13:27:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596227268; cv=none;
        d=google.com; s=arc-20160816;
        b=i9V3BsBXDdzoU9i3yvU41etiUcHhk7BpDQAhlvSdEsKdqviS4LxIDPpv+zqI/bLf1O
         mS5byTNevtF0G0GndjYe86El05Uvouy182Ujzb9gcFs2fImf1VXp04MC6kT9zqNHuUef
         UUXuIMCrthh7MQvxsPF0nNxpyXviyd/BhztMB5pEzIL3JgZzUva7ScgCw+c4qsFRaApc
         L3OTANii9EzJRcHM9+I9Q4lkk2bPgeYlG1NboNDs/7FqBuhYayGmYUOnp+fWRhdaNNcx
         1WLqpCEZDtyrXekvzbKMWMjPY9fbwwoDrzXL59vBibVo1JXEzkrcWEYDogsducNX6en0
         OmQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=WLhVT0ITwH7tFwfOSlayyU8RvgbEQ2A3/YoQO3UAx5k=;
        b=SXa0mKO/klZmH9SglE5/LkuYqP14xCQW56abGoLpj+tCTXwvdjsxoJ+VE5bgWhhvm6
         1DjT1pWQEf34hvRLONWyktgf71OagmuBt9Xre38M2i2uY3GXlrfXDRor/Vc7GoU4+k9b
         z3yG4zCd0K1TO1iqKMoUuO9Gm1MrVQxyYvfIK0VzVctP72oYUq6wHgdMsHOMQjsmHGs/
         5eqiXC7Sx9S64W0Qm1UnPy1x89KecVtT71/33lT5LFS2p3B1hII1DbmeEQa1DFCojc5f
         zhR+V0al6syVdOwAbCagLDDwgXAs5QStc1t0l78OO7jOakV0r+xkYc8blORIrYPFZlD8
         ratg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com. [209.85.222.196])
        by gmr-mx.google.com with ESMTPS id n26si774855otk.5.2020.07.31.13.27.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 13:27:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as permitted sender) client-ip=209.85.222.196;
Received: by mail-qk1-f196.google.com with SMTP id x69so30041139qkb.1
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 13:27:48 -0700 (PDT)
X-Received: by 2002:a37:a503:: with SMTP id o3mr5604811qke.162.1596227267361;
        Fri, 31 Jul 2020 13:27:47 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id t35sm10607976qth.79.2020.07.31.13.27.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 13:27:47 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 7/7] x86/boot: Check that there are no run-time relocations
Date: Fri, 31 Jul 2020 16:27:38 -0400
Message-Id: <20200731202738.2577854-8-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200731202738.2577854-1-nivedita@alum.mit.edu>
References: <CA+icZUV2=hj=+9DtbH47wtdE=GM5AZjS1xTgH7PKE+NxsRa2jw@mail.gmail.com>
 <20200731202738.2577854-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

Add a linker script check that there are no run-time relocations, and
remove the old one that tries to check via looking for specially-named
sections in the object files.

Drop the tests for -fPIE compiler option and -pie linker option, as they
are available in all supported gcc and binutils versions (as well as
clang and lld).

Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
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
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731202738.2577854-8-nivedita%40alum.mit.edu.
