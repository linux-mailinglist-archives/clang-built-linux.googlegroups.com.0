Return-Path: <clang-built-linux+bncBCIO53XE7YHBBTE3WH3AKGQEKDN2Y2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6981E17FE
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 00:59:25 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id g13sf16040821ild.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 15:59:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590447564; cv=pass;
        d=google.com; s=arc-20160816;
        b=p8GS/2SNL5Oy3n7CcdZfiCXWd2FCe8cK6KtPg4DrSa0SdGkKP+s6EPAFUrll5GWBW6
         5ASjP1xfGZmyshVl2GOCLMtd98yrznUQMIKwpUxI5nPANyr1nPEU2DaocXSiTWqglyUk
         m1GjFr0pwW2Cn9Nlkm5BExaBBUGOYoWV9BaoA2F3Hr+Qh9ngeSiN4EpOeeAKOr3pJlDe
         FLx6hfOlKLQUR84/JZWW+gYK4HBYqp6bGNzgwgnWcd1PFfoNkvMBmFIJSS1VzSmosrTh
         MHs0G19Tvf6Jct3aZZkolxzdbVhrBb1VQGNvNIrptETvvpl/ykiTaI+TMj/esJYOGUyo
         O8ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=B2R7PxPFZR1Qyoc9pztOIy00ERTz27zGyznlKe/k1tk=;
        b=StfGWvprd8kanqsHQPvk5ArNvHF5b43cSD6hizww+4UdRsE4+fgQ07HR44bmxvTuR3
         ByBUXSaLEsCnoOeuoYCZv9XFsbj/9CTe8avnQYTmvbJnytec4Bz8JZMqBBoP+Ohp8Noo
         KWWeRI+PIQ+L+8iY5caJf/4PGx06E7SYL/W4T7t3WDoH3Cjm5CutRMdxRP1lpiqJKINh
         LVbfUxIRdZ75YnYmh89Bt4abiuqPTTqz2Fn+6TrCDolcpeFjDFUe9Pw+J3F5bkwLk5LU
         CHF8RmfRQgt2cJYzkScnM2mmsaYPrXbvpvbShHxY1hb8QqP5k1cq1+vpxJCX12BVTzcT
         +Qig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.47 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B2R7PxPFZR1Qyoc9pztOIy00ERTz27zGyznlKe/k1tk=;
        b=Jftl3lYsyxEInz80VBew63IR3q9AMmtVl7zjubhSfSFJ0y9k3yadFmyO+s/gFAR1CC
         GYbDlpLsJ1fT22idK32CNrso5XUlFLAVqXThWLe2j5/9wXA0EJZV6CJPqR8ZlYAWHU4n
         sR/gRBRpDByGKlGCMqgK3dwYV7CxY0nEHUmE4T9M8+gM1DPWtOZuVYPNY6WZrHwy4so0
         ggczJUW8fvo2UuPiUbu6bRICR+dQKdZkTLn3qkF8DkpJAw4ER7WnadVS2bpgZka2vaQ7
         ant9oipNu08Pd1Xq2BOAGrz88tn2yNmhMHV9VNssmypvMriAM/bHoHiw8PlNLqAIkpsn
         L9cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B2R7PxPFZR1Qyoc9pztOIy00ERTz27zGyznlKe/k1tk=;
        b=e3HgMr0RmTYjfHRKEjBpiV1QIPNfq1UQVbKavh3k70Y/xlikpugkOwnF8JAeoX44Iv
         7sQPxwENOGKBE7SC/nX2GOxExx7A8+KjKFo+aK/xPk/SMMDKxK3tuMXOdQH84AT6qkUM
         yXSbuGaePFrDkC2W3LdenLKM/YHN/pt8gUdJezj+Qeg34qEG+nQAXYAiKztTzoxLSxc0
         T2unQvK7lLr9A3WWZ/8DiQaMw3SkOOCXerpP2vGHJhHFuVdr/LskWLmEGom8GZC02h+I
         lSL1ayfGt4b/tREBg7WqoHHKdtLGZ3irdJs4EbZnLtJC8b0Y/Z6oRyHCtT4e5oqycdvG
         DdMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+0eOIjun51zSAiDwwRx7wns0JZN5xky8YQHElYF/p9ZqQunhd
	Hsqk7sRACO2l7z/eFLEGo2A=
X-Google-Smtp-Source: ABdhPJzsZCK9pfV88BbaAuBy397T+UHBinOZYTg2p8GU1o2exFUHOOFVkP9DuzcdM/pW6ZDblb+LEA==
X-Received: by 2002:a92:d449:: with SMTP id r9mr1443387ilm.166.1590447564443;
        Mon, 25 May 2020 15:59:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5b8c:: with SMTP id c12ls2278404ilg.5.gmail; Mon, 25 May
 2020 15:59:24 -0700 (PDT)
X-Received: by 2002:a05:6e02:68c:: with SMTP id o12mr27389010ils.170.1590447564088;
        Mon, 25 May 2020 15:59:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590447564; cv=none;
        d=google.com; s=arc-20160816;
        b=PokkwbNhP19sUiFd1N8OYscsiHvH+sZDgCHVmuE0iPuFfXCn9eVdl7/XSEU/1lJsYT
         bNTVE98UccmbN+hxJBUd2LoHn3KDqhAz+TF8HBRg3S1xwKBKA452Jo+R6Ki3yqp4puP4
         TH1M3Kbv6C+NytmHI2aEF+T+zuRYE/nemmJzDHLOUJzjagxIHMixa2XsvjjNnZ7M5tKe
         5iz5OhsHANEvdRg7GuutcwEO/XkCCqE9fYso4meSkEX11aTe3dk+FW34OJtH1+CHAwT1
         avr93Zm7t+mPP450/0QQC1SrmBVphFYtoaKAYjBSXNTCav3cHHJLKp2RjUJp99K1CD8g
         mvuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=wAMjAyQp9bQBfv0jsI9bNQ7DjPHoHnMHzy3coGwiqYc=;
        b=nV9hauC+G5VJtlvBOVwufUsKTXaoeImZMlt/K8e0wp1vksrxmZrN8u3HPHMZFVSIfb
         ku0LdctdDy1l77Uy7AYhMjdTkxq8pEyYuGGS5e4XmJYrzGb0j8vphzJi/wvkjR49iMkE
         yxerIgBEW/kV+FHLVPZuRO7lddjld47jLClvEEyTo4HElo/MT7lijZ0Kaxoesz+AzQA9
         g9dT75A0N0286YHBXnl5MOYR/V5S+S57iFCm0qQGKo9ZtzkytAZysuve+HBWP3+9EXxB
         GYAorfPbTEQ5R+H/GdGOyArLfOQkNcIc3CCCky2yj8pRhGltND7iuu1N9CQZflTLyg0b
         Cd7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.47 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com. [209.85.219.47])
        by gmr-mx.google.com with ESMTPS id d3si1262962ilg.0.2020.05.25.15.59.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2020 15:59:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.47 as permitted sender) client-ip=209.85.219.47;
Received: by mail-qv1-f47.google.com with SMTP id v15so8653322qvr.8
        for <clang-built-linux@googlegroups.com>; Mon, 25 May 2020 15:59:24 -0700 (PDT)
X-Received: by 2002:a0c:f286:: with SMTP id k6mr17583207qvl.72.1590447563545;
        Mon, 25 May 2020 15:59:23 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id d140sm15024585qkc.22.2020.05.25.15.59.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 May 2020 15:59:23 -0700 (PDT)
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
Subject: [PATCH v2 4/4] x86/boot: Check that there are no runtime relocations
Date: Mon, 25 May 2020 18:59:18 -0400
Message-Id: <20200525225918.1624470-5-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200524212816.243139-1-nivedita@alum.mit.edu>
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.219.47 as
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
 arch/x86/boot/compressed/vmlinux.lds.S |  8 ++++++++
 2 files changed, 11 insertions(+), 25 deletions(-)

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
index d826ab38a8f9..f9902c6ffe29 100644
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
@@ -83,3 +89,5 @@ ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT en
 #else
 ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
 #endif
+
+ASSERT(SIZEOF(.rel.dyn) == 0 && SIZEOF(.rela.dyn) == 0, "Unexpected runtime relocations detected!")
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200525225918.1624470-5-nivedita%40alum.mit.edu.
