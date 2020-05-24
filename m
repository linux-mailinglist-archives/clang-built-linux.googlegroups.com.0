Return-Path: <clang-built-linux+bncBCIO53XE7YHBB5WNVP3AKGQES33SIMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id E86971E030B
	for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 23:28:23 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id y198sf8545399oia.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 14:28:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590355703; cv=pass;
        d=google.com; s=arc-20160816;
        b=CKgOy5LjiLHTuGfp5qOp3RERREYGDo8PW7s2/Gaj6j7FY6xH3MiBtGqmsVXeqGBPLp
         bQN/wEigRFnZ7b3kKf96QGwrm6ZrQrlTE3NFJbqYNgZkDQzxrvdseSpuiMhHgQjND4/n
         IoT7TZYnZsv/wgGOhMlpLX9P8Dwhbj+DjLbAm7KopEJk1Tn8W6ATrP0WTLWu/hgofrVn
         OwIYEzzupyr/O8thwxlyBaeCRPQeL3G2yvGgSYQkymzo5CnNwfjT5JLyoVVOvCOfUBQA
         1bgptM60G4v4+37DcwrWXoDEFHqjw1Y+NfItIWX6ivtWEUgKgjhJGnqalW1FBpIuGD57
         Gbsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8yVkuYfDkSk5MGUFgtaIcYXEpXLL1ZzeyrI9OqYh2L8=;
        b=GFn5Pdnugsxfbk7knmJhNXcZ3iaoux8z/ys6To7dNSHGZO9MSX5OZc5qBKRQ7bjNWk
         toUSCJxO1Dt5J36A5v5gZlRuYLRqPEmWL+m1gNftbOo2sRpQjfo12A9s0+MHtyqLqFZ5
         KO1DuKKRrtio8E/Id3fP/gnlCOTKHdf+nPu5ruMG6zGJHXWC2IaSv+bioDr0BJbJANMw
         1X9VeyxoZyZixcsiKGvFylBI/nIkX5N7kehCV3k8criZQNJqUpVfT963Lb4LDng3I91M
         4z8WCpcnUJGrYkhfYSLKJl/ltlgzdhtP7KGOWxFyLvosKHW1LwSNltRTRCqdjTie0zrC
         WYvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.169 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8yVkuYfDkSk5MGUFgtaIcYXEpXLL1ZzeyrI9OqYh2L8=;
        b=PFvzsW3JvoQJYfZ9sI2ZBgsmHbkOT/hLECiHW4gNW9WvU28W401EFhkXGVG7/W/HKj
         vycp0g7RxF/L4jz1rhR6SqGtCD94Bgwzvl2bcv68BmXLRCEzl8uPacJqNE5ricJ6Di2U
         qZK62/tv2BhIo1nGZ7SMGmLSJc2ZujgwmCBOBikTSVxdeVTwvi9hDa/CjAgJVTllHjf0
         OdwVBmwdru8e8/vWFD4+JdOMJGXeWqll8+WbEHnVcpjQYrlIXfvmMBhE6SaRZyMJFMLV
         nzTfUYRoeDFw5iuVWVHBaMbuXE/akDY5CB6x6AlTUPQbhdCZhDoii5xabe7coSY95h3r
         /sbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8yVkuYfDkSk5MGUFgtaIcYXEpXLL1ZzeyrI9OqYh2L8=;
        b=DvWxGUXrLeK8+qfSdLi7hSuZJ+hBUoAN9KeonE3asgKfgHv2uo9VoG+UXGBkTWNxWu
         rtiDYl173noiqlYm4HeS0jvhq/WvdR1Qi8BqYk926zJcyeEAWsaLQh+09UsnWxIAyKmk
         GSgKoIIhoCYhq7cWVPTaUXPg38hFA2jYan9S2QGUv7mUTyziNa0m9QriIooHs0Vyp5kk
         LkNkgjNVY7KEyp8CEb9edmjGQp+cbDfwWztHH4bQw8lZ6Z3v6EaoPbKLkHE8xIguxHdC
         XXQeC91Ipylk2HfaXl7ojLraT/vA+UGr7nI+SkKeNVnjtlVq+YXYGFdC9sF1EXHj0+WW
         pyUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cTzgQyO4ocvByeVgh6LtiThAKc9tAtdHMnBMW7V+KgmtPF/iN
	XslWdVBVuJsF7phsOhQMrD4=
X-Google-Smtp-Source: ABdhPJzWumy+Vy1lqGopBw/iLx7r87uvCy+i9JC3G03wHzTr/crjduh1gNpIBXIMUeUby1/5Pxl6Yw==
X-Received: by 2002:a9d:1eaa:: with SMTP id n39mr19745077otn.238.1590355702890;
        Sun, 24 May 2020 14:28:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:19af:: with SMTP id k44ls1298663otk.4.gmail; Sun, 24 May
 2020 14:28:22 -0700 (PDT)
X-Received: by 2002:a05:6830:4b4:: with SMTP id l20mr18652288otd.98.1590355702565;
        Sun, 24 May 2020 14:28:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590355702; cv=none;
        d=google.com; s=arc-20160816;
        b=rpUs8FLZAYSaiBPPY7Qz3jrAxHhFokiPB0t3Bq2yhuWaWJ0b/mcoQAyxBPV1B8DANj
         QmSaNAc8nfPsGAPfzFwNgjPlDO8XKEFpLHBULZ9xnfLVdZf1KK1dExitkpOY9oL35J3V
         svDnN3BFkoNL6Pg9ud9kYkrupMw9KZOaQGVeMwKhUGQ/a1UlzAVYPLNlpzATo1Wk3vQ8
         187C8696WvCN6xY1KlP2Nl0gXIhKM3kfCnhmUL7ONiqRbXK/59a+Epl75Rp3r6J2gZIm
         vnJ94cLwUxNd+OUMldf12JMCSHYI0lDhpkzuJWhClKgb0mTXVPn3Thm2k6EzC14nxjcH
         gbZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=yYCfEwXXUXaoWVdY+hEFVttLhNSI6Rg199/Wafai9nI=;
        b=wnqAhW7tmhxrei9mQDvR0ltSOLDKxfWk2O3tskicVPgmPHjNOtqevcU4Z2o+cko1vE
         iIoooXU3UCkeQXlf+xir9mGGPwLQ6FBYvhsxsPHfybAFrnmfQh2iej3lZhu/rMpUgxV9
         USi/IjLd0mMnsvvwbrfAZkH9YCJxpBXUlj6+H0oWnjNur6oN2r1Wcf/rQF7OOx69WbTS
         1u4VbRMYGSHwzoIKqrRHzkFBHCMODzxsbwRuq4zVhORWfCBHjIWTXeFIGJeJzc3oEBL6
         dZyVGwTdDH+lCbNAtjRhuYD8WvlH3Co27DBYZ/9N18YWYJ7sXNu7tSPSfxR2wY7DivV5
         K14Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.169 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com. [209.85.160.169])
        by gmr-mx.google.com with ESMTPS id a79si779363oob.0.2020.05.24.14.28.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 May 2020 14:28:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.169 as permitted sender) client-ip=209.85.160.169;
Received: by mail-qt1-f169.google.com with SMTP id z1so485684qtn.2
        for <clang-built-linux@googlegroups.com>; Sun, 24 May 2020 14:28:22 -0700 (PDT)
X-Received: by 2002:ac8:7587:: with SMTP id s7mr26799594qtq.116.1590355701949;
        Sun, 24 May 2020 14:28:21 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id d14sm3665729qkg.25.2020.05.24.14.28.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 May 2020 14:28:21 -0700 (PDT)
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
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] x86/boot: Check that there are no runtime relocations
Date: Sun, 24 May 2020 17:28:16 -0400
Message-Id: <20200524212816.243139-5-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
References: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.160.169 as
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

Add a linker script check that there are no runtime relocations, and
remove the old one that tries to check via looking for specially-named
sections in the object files.

Drop the tests for -fPIE compiler option and -pie linker option, as they
are available in all supported gcc and binutils versions (as well as
clang and lld).

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 arch/x86/boot/compressed/Makefile      | 28 +++-----------------------
 arch/x86/boot/compressed/vmlinux.lds.S | 11 ++++++++++
 2 files changed, 14 insertions(+), 25 deletions(-)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index d3e882e855ee..679a2b383bfe 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -27,7 +27,7 @@ targets := vmlinux vmlinux.bin vmlinux.bin.gz vmlinux.bin.bz2 vmlinux.bin.lzma \
 	vmlinux.bin.xz vmlinux.bin.lzo vmlinux.bin.lz4
 
 KBUILD_CFLAGS := -m$(BITS) -O2
-KBUILD_CFLAGS += -fno-strict-aliasing $(call cc-option, -fPIE, -fPIC)
+KBUILD_CFLAGS += -fno-strict-aliasing -fPIE
 KBUILD_CFLAGS += -DDISABLE_BRANCH_PROFILING
 cflags-$(CONFIG_X86_32) := -march=i386
 cflags-$(CONFIG_X86_64) := -mcmodel=small
@@ -49,7 +49,7 @@ UBSAN_SANITIZE :=n
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
 # Compressed kernel should be built as PIE since it may be loaded at any
 # address by the bootloader.
-KBUILD_LDFLAGS += $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
+KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
 LDFLAGS_vmlinux := -T
 
 hostprogs	:= mkpiggy
@@ -84,30 +84,8 @@ vmlinux-objs-$(CONFIG_ACPI) += $(obj)/acpi.o
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
index d826ab38a8f9..0ac14feacb24 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -11,9 +11,15 @@ OUTPUT_FORMAT(CONFIG_OUTPUT_FORMAT)
 #ifdef CONFIG_X86_64
 OUTPUT_ARCH(i386:x86-64)
 ENTRY(startup_64)
+
+#define REL .rela
+
 #else
 OUTPUT_ARCH(i386)
 ENTRY(startup_32)
+
+#define REL .rel
+
 #endif
 
 SECTIONS
@@ -42,6 +48,9 @@ SECTIONS
 		*(.rodata.*)
 		_erodata = . ;
 	}
+	REL.dyn : {
+		*(REL.*)
+	}
 	.got : {
 		*(.got)
 	}
@@ -83,3 +92,5 @@ ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT en
 #else
 ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
 #endif
+
+ASSERT(SIZEOF(REL.dyn) == 0, "Unexpected runtime relocations detected!")
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200524212816.243139-5-nivedita%40alum.mit.edu.
