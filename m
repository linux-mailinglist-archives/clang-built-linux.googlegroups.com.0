Return-Path: <clang-built-linux+bncBCIO53XE7YHBBRVBXH4AKGQEGMFF4UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id BC72F22016F
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 02:41:43 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id c2sf201996vkh.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 17:41:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594773702; cv=pass;
        d=google.com; s=arc-20160816;
        b=yhTVOTRoynfNQWjFQIOyaR47anCdNj5xHUHelYrj0QE7jdq/aLzxJLe9vurtYwDQUA
         dmXTAKJnCHVzesAB0MNuc9Nv9t4Qr2U0V3lLW/Eykrc+gI0Fo+LEyOkzt+ie88J/v/hY
         Q+zhootdK85D6dyVuA5GwJmT7LP4gYAepZiDo6N5A14kjUWHvIL+xpFxi/iVrfWRkDLT
         xWTdp6Jh1552TsvKH4gfk/zhBOmJlMm6mriDcTboHlH8snIXR7t+rLdbWCVw7F5QbwVV
         rwwdyDkZ2ETjPGXNzazj5JsOmJ9X9GOFNdJad1TXLlQkIxKfYTLoACw9oi+Q/3Y4p+bM
         VbNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4jCbvUgZlR3qUWWWGu0LV2NxuKPD03DN8cTgURmArPI=;
        b=yCQT4txLEAkuF9XltRyxwkf/dq9kSOQ4I1kn5eRwQWVKd1xppqrwUjLi9WnBdrJ7kv
         WsxbxXBzlp5RT0e/h5E9h0qwc5PZV9d/DGLQxLMy6MltMFGM8vyFy+KRL2NLGoKRKOor
         w2+fOmR9gBzwxfU4D9uV05wWNorzrYEdNAhBLBI0++70b+sxbS3AZtXlcLDDnYn9/v0t
         aQha2Nff9yqPT5FZzhIHexOUqo1KDAFBpZmK8aTgNRr1hAD3w+qMXshqlWyUcd3bqXox
         GBIfMIVU/Z4zHCLmAbm1P7uLvGpQ7rUPAR0iqhqrafhCQFt+sSfPh2M9wm8iEJ8n6y8e
         ad2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4jCbvUgZlR3qUWWWGu0LV2NxuKPD03DN8cTgURmArPI=;
        b=KQH+exlWaaFBJpcCFPK3wp9RPjngwshgE/rpWTll7yZ9zci9CYWyj8ayj1dkEEuHtk
         4aT5fuKK2ig0BP8qmll9inRNvVXCGvr/85zpPFLZWXxxEw5vYajTZ/bCW45h3MLQ+uJm
         flMTyKQcifHa5CsJYHiBSTQwAHDGkKmeuMqnDIQOF56yH5yq5MZNeoYemaDF/+5D9xke
         kaAIsAH8YvtLgo3YMWSiIPV6wgRxCQeomStRwO+dCXcQYFZsNGWtLDIM8rqCH6zqaIDo
         KLrmx5TAMUqRjBSx388pkCityGAd37ccPgtM5cIzAT5tsAahuKTswuVGcF6U244vOjr5
         4mqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4jCbvUgZlR3qUWWWGu0LV2NxuKPD03DN8cTgURmArPI=;
        b=feq+6p7pTKcYZVRw09n04VNKSAdM98xEEf1d24m6JwE5swyg9YtReM5eKkZcemAfBh
         wzmq/8nhEMtTWQV+dQuOsAOqS0qHxReZdYtzJWfXpn68cpN1SSfwuUdf9DSXrk4L2Q/7
         Y512Beqyy2uO//6WEqxJ0LTdQakpMS0njdI0bVxox3abBHDRIx8SuyVTuLjsSeE0xlvt
         zPVU8+dPyoyeeXBku8lbNCoxUJ4Uyl2MIpJiuvi5NVnbCz82d0ipt5nHcYE3sqreXa1M
         ID5Ebx+9HBRk5mMto+qd45Z6JeYdvowH5Wj0DxsqmaiE0UjkCsQtKZC903PsGQl4Dh8f
         XZJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZQ1v62w5hjMqtq9xRJ2qta66z9THfjqH1+AF8B1wKeHVsW9W5
	5Gl+L5iHKpWsRYOFSZuXMMk=
X-Google-Smtp-Source: ABdhPJxguw4gVQBAKvzua+j2s+LxJqAmSP9u6Iz1ibRPaakIOsOnFRftpSkGr7aKTIT1CYjVM54xnw==
X-Received: by 2002:a67:6bc1:: with SMTP id g184mr5320094vsc.189.1594773702787;
        Tue, 14 Jul 2020 17:41:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2787:: with SMTP id t7ls26132uap.11.gmail; Tue, 14 Jul
 2020 17:41:42 -0700 (PDT)
X-Received: by 2002:ab0:6049:: with SMTP id o9mr5451990ual.19.1594773702403;
        Tue, 14 Jul 2020 17:41:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594773702; cv=none;
        d=google.com; s=arc-20160816;
        b=SzVLSTVZTmFUWO7Ep/G4G3Q61GlK0ZbwVU6gXcbL9vw4dRJDIKaIle0pL5g4n7ZrSN
         H9CQBPsdopeJvBdtXrFh59kuEyNG2VK+5B6pHy/HPjxeK/yDep0k+HDPQHrBguN6wPhn
         9FTOLIv91CnElSTr9AQM7HcTQ4FlKfFi+xPVq6UPV2ckARCZqa92gcO2P2k5/e8Gr3P6
         nqe7ZnAusAdgjP64+loS5pJHCGRX+txjVR8vpw54ZHIw6nM/t1DMYAtU7os0nXTRG1Dv
         kBoGi8OL0rn6mE9tOu+ZEhhe45M2Sa6indhgPGk7K1RU82YClZ4WInoYZoN/36h3H7B4
         LpjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=b3dAHOozOs1omUhldPU8mrRrQvLJloQ7s4y2Okp5/t0=;
        b=y1Lnj2lOSGujcNO1AYUHF1HUEto3UFkzngGxSGyQ7T9yUaPXT03CPRlfLJBadfsulR
         3S5IvpfwbgI1X2zCPV3AmiJnqFW6KitTv4/YuSL+slTrA1B4Y6gjPKHtu8siHzQy7YKv
         yxr5Oo86fQs2M+DgrjyvlAIs7lZbpTtpR/DETEjs+AFDxESbqRbGw7jzffgRLqBn8dWN
         8z7L1UZ1za7d+a1mVUApdebb9+XaP4qqQDY07NqtLdZoQbwNU2YYykCUcWJ9nRIARjWX
         YYIZLEQ6eyGN8RpbQV2+llarNpZP4mQd1tvmv0OYwdwzGtCZqubV5+Esm9uYnLkbV8QW
         4RfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com. [209.85.222.195])
        by gmr-mx.google.com with ESMTPS id o66si42732vkc.0.2020.07.14.17.41.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 17:41:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.195 as permitted sender) client-ip=209.85.222.195;
Received: by mail-qk1-f195.google.com with SMTP id r22so251838qke.13
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 17:41:42 -0700 (PDT)
X-Received: by 2002:a37:3d4:: with SMTP id 203mr6870758qkd.420.1594773702036;
        Tue, 14 Jul 2020 17:41:42 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id c9sm524776qko.24.2020.07.14.17.41.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 17:41:41 -0700 (PDT)
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
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 7/7] x86/boot: Check that there are no run-time relocations
Date: Tue, 14 Jul 2020 20:41:33 -0400
Message-Id: <20200715004133.1430068-8-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200714023836.2310569-1-nivedita@alum.mit.edu>
References: <20200714023836.2310569-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.222.195 as
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

Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 arch/x86/boot/compressed/Makefile      | 28 +++-----------------------
 arch/x86/boot/compressed/vmlinux.lds.S |  8 ++++++++
 2 files changed, 11 insertions(+), 25 deletions(-)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index ae2c0dc98a6a..a9e082b8c720 100644
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
 vmlinux-objs-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
 vmlinux-objs-$(CONFIG_EFI_MIXED) += $(obj)/efi_thunk_$(BITS).o
 
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
 $(obj)/vmlinux: $(vmlinux-objs-y) FORCE
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200715004133.1430068-8-nivedita%40alum.mit.edu.
