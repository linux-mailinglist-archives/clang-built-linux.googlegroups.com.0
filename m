Return-Path: <clang-built-linux+bncBCIO53XE7YHBBBEPZD4AKGQE7STV3VQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F31224515
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 22:18:13 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id q70sf1613673pjb.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 13:18:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595017092; cv=pass;
        d=google.com; s=arc-20160816;
        b=b7JyHv+M/e6Mrrs2Kd7H/B7h1MxoJ8eyM/Uifwi6lK69M8VN4pd0cy8P5xa5qAYLtZ
         HsvQv4eRHokSzCm5UQpGHdgJok04Z/ohnN6uQOpOuKBtz6B68dc3sZnj77zq9b87MmQS
         WXT4rWHq+EP4Bi4mYAzb0dLYIesLjQFFYZvwAfQfy6YgAa1ER42em11tPPed6d8LVq9H
         wgRVIbe/dTWaz8/W9IFC2Lk/xkXaaZv9m+UAvbyjVJ4AcZ3YhgU/0ADLcgeR0Ckfzdxf
         AazvPXZx7ROcILZRzegBvPd9Zi2NL9onx/aTfyyFWOI3KKjdnWyvJZkkao7AgGW86lJN
         YTuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Uirmnbn247OLXS4CA6GSHH+pQ/wuV/aSm+4FSd7Cm58=;
        b=ACuCyOjb5pPiIdTgaPAUhSsBp+jxUCVXNsnHtOQwpVI/3rfZzOd+ug9a1dqEjIprks
         Wh/VC1NCr9TsyZ20Za2kQp6X3bw6SbduXr6yx+mRENjVdOcF0DxCoVjIelBciKk+Okd2
         Bm432+PClhVO0Yh55KOV6+tHpMBpShVJLEMJyNQgLStjekxn7hCXsGsrbL63FnnebyX4
         gCLXsjnEnhIBmKlhdZU8kPfP8KbZph1jHfG5RPzDHQE10DKsLH7tPOOX7N26qwaCZBnQ
         r8RpMBXZKrLZstBJWjS96BXs8dJ/uRKAzGny/iy5ADDSdc5nm4aRrOCNhgkTP/TY9enP
         Ot/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uirmnbn247OLXS4CA6GSHH+pQ/wuV/aSm+4FSd7Cm58=;
        b=Jr41IAYG0b7Pq36m/p08lOWm9zQ9NIHHQk9DSIC4voX8ClOdmFQaMhHShdmBx7Jsoa
         iM7j6jc4YLkc8+jBeLuiToc/eQcEHARniw0UCqkihxZVuHQzz0QGgj7TfX5AbpxLeC+i
         E+BPsNacsqxJD3LHfrclaP11RrlguY/QmPglVSfw2gjwiKhWbc01mIXZosRV0HyWSqFL
         9vygc5fWJe8GW37kBQRK3shwEoJPPqvbwuf24bbJfjxB+9p6e8OGwp0/88WenUd2qHr7
         JZBzoOXP2LB5oQGTUui/BC+wnUEGtfPOTf5N0J8cXvslknO5LlwJ9iRRglYFXE02VPtp
         AFzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uirmnbn247OLXS4CA6GSHH+pQ/wuV/aSm+4FSd7Cm58=;
        b=UhVpn+x3N7UaogiNJulrEZP5WsW4er7ksAPiJ54fIblPM86x6Sg6NHigjTg4z3DXRJ
         wed0XfxPn1yvrcsEswm/UEnlGHdwDpqXfQnbuEB47coH+NUlmDtfNDygB9fcIFeNU74C
         AlUQIk6YljKMVEibLBT9jzqfEQ9K+nq1ApDqwM6vgESl/AXt+r1CaLRqPnMwwW6gOIuI
         PEeqRFpduvTXD9b7XNly578cH6kI6JUI0oXKG/DiKg82BHX+mq+uE9HH/9YRm2joBQJF
         +FHpv3R7nNuwg5+B4/328S7rR7fivohmodcIBM33b7Bv9ASSvs6sHxM31YTnuyBWE4b/
         AQ6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gR38t9mBV3CRXXs71HZtwwurdch0U4UpnOyWF53+iskcKhDjI
	kJsVT3LlviwrwMiWMsVEyPE=
X-Google-Smtp-Source: ABdhPJyJ0UFM/HaUHiyLEMe+GVVMbn5su0+x/K5RQhUA1lfvzGjKxWRHjgqMroD9pan0ipOMAThIIg==
X-Received: by 2002:a63:f254:: with SMTP id d20mr3031253pgk.119.1595017092054;
        Fri, 17 Jul 2020 13:18:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:684d:: with SMTP id q13ls233899pgt.2.gmail; Fri, 17 Jul
 2020 13:18:11 -0700 (PDT)
X-Received: by 2002:a63:6744:: with SMTP id b65mr10263986pgc.42.1595017091627;
        Fri, 17 Jul 2020 13:18:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595017091; cv=none;
        d=google.com; s=arc-20160816;
        b=fzcpKk2SeAWG27Lvq0j2hwbHln9XjpVojwXjb7L8z/P4KjMhMJgr2zfiaSX2PsA4uE
         1dRjWymB+ANgIee1WjlUA7H2zf2dFd9n8uxbkXBrenmyNnFxQhjO38NMymKxrOz0V6ro
         b8WcsBZpqtyHsX/fEElOaaHtLHwOyhpEw4K/u6PpC6pppanmjfFDEqEJ3QgQV/h8ZObX
         zPz0beVgWv2JqWXAORrx0b6wiJBb5tmI/C+JTfkfEEdX4K4Y6HKyo1X9zKqTRRbUPi6R
         5+WPKQf/79RXUZdC8nEaeraf7zlbGMPjuCUO5c5CqXzDyftnkOdkQWSPC1SlgnLhcDto
         9tWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=pZ00y5Md26bGIm00dYYEsSGxg7VbHWSUWd9oiTS3+5Y=;
        b=Br3rXqV/Rz01B51x32g8nZ7SCnrAxX9yFlso4iB+n6aKhmozAdp2kUaoDfMB41RWRi
         FB8eFNuQeZG7U/rHd4S4spZQSRpjNF3i2eRInrVIJXnsvj2G3ibcubH4YRl7n2r6uswt
         57qOPxmek4XrVCB16t/FbRrWW980AKJ8lm14JbJPSB0o91bLaPqEvHYInxaFuUeKzDAF
         uq4+nM3yfOqw7t2HdTVWXPpNAd+OMURva86XnJ0ztKUppn/qgfFC0N+R4TWWcCQZ11H7
         jun+7r7+jfPZaXQxHqAZPzvwqfrHAjV+Jr5pr43kcf0rDExFpgwtkRcfUAZ8b2yzf9zQ
         /2WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com. [209.85.222.194])
        by gmr-mx.google.com with ESMTPS id m189si584953pfd.3.2020.07.17.13.18.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2020 13:18:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as permitted sender) client-ip=209.85.222.194;
Received: by mail-qk1-f194.google.com with SMTP id 11so472815qkn.2
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jul 2020 13:18:11 -0700 (PDT)
X-Received: by 2002:a37:88d:: with SMTP id 135mr11037161qki.390.1595017090733;
        Fri, 17 Jul 2020 13:18:10 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id a28sm9509977qko.45.2020.07.17.13.18.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2020 13:18:10 -0700 (PDT)
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
Subject: [PATCH-next v5 7/7] x86/boot: Check that there are no run-time relocations
Date: Fri, 17 Jul 2020 16:18:01 -0400
Message-Id: <20200717201801.3661843-8-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
References: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as
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
index 4a3953a596e0..271cc933c59c 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200717201801.3661843-8-nivedita%40alum.mit.edu.
