Return-Path: <clang-built-linux+bncBCIO53XE7YHBBN5VWT4AKGQEYUPLUYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5683C21E5C8
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 04:38:48 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id c5sf11597920qtv.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 19:38:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594694327; cv=pass;
        d=google.com; s=arc-20160816;
        b=unh4EWkQwIlWeHfHeZq6nxMYbm1Rh19CWT0scDBD0gvdAdj/qvXkz5m8nYUh3ZDJY+
         5E+h3sGf1ftEx6CZYc01gQnwnmApPFF5NKdMn6+aQafvXyJsaNvmtKf4XkRK5S9ocQqb
         kbNY/Rxsp7b40Zw93SLvStzNH8XBXqjhXs78pplB6+3qC0ydVnrK7hEHsFD3tViJ5t5i
         FIc+eLidDlOULtmr+Qk9GF2uCEn0R5s+1Ec1PQPd9J9295883oCoW/A7I57N7Jqo3qJ0
         V3C+rbOdVLmLpxxbM7uPcHE4QbBmP4MfDgRRpD8GmLOenFJ6PXyFLPbpFRzI2eNOH4jp
         zc6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=uW6oBKGA7fdVF3x+HR2rm/BSU67Mo667GU9rHNRIcoI=;
        b=LCdLhtfuzWslJ/dkVbu6OTYkCjHWVfNgDWO5Lr/ibLWwPSz0wDAk1p9RjTct80brrR
         /RMKJRX+zjj4EgkGLoSvVPS38UCe/Xuw3pZcP5qKoVuaknsm0zPnQXznjypSBJs6kDIb
         R+TOTkVK0O4dPlUzWTG+lwC7mkgRrWnvWANZxzcCkeUEhVySnpIm3Pu0i8NyCp9XW0T9
         ng+CrMoSvk3munu0HLBkj9D0BWA9Jjr2G1hMXGDK5dG311/aPXBGdEPfBHb0IWdCKQvB
         kBZUgQjMZ2conbUf8jEhNWTDHmlEA72JDDzFwIqmf3qAC1SVfORAiCjQp0eiQ0ErGpWL
         m1vA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uW6oBKGA7fdVF3x+HR2rm/BSU67Mo667GU9rHNRIcoI=;
        b=gDe2/N1AbxNa6cIA5ch4UVxEVyv0/+7X8G6/6zxibj7L1fDz+civOWaDJktpfgkElo
         FhR8wriAesgJ4F5RESGGD+cS4nPfacbNXgNqddFjH7K59rLcBdHDzINKwA4zKQtdkYb2
         3oIXDx7n4GGUaXHodFuZa6e2/ScWstWRnyzwyWbg1v0COz2AFXGtqk+5RMuW/R7njlJ9
         eiGlceuRclO0mAxsdBArR62PbFuJHOl92Lu07nL908QJqKQoCLzpTWAdjQKXtDxCuDxb
         4U8Aaq8brjYxk9E2CJq9t37iLDsRP9nafbLH2Kr0x7tQ3WqIOU+vJrKJnMTTj1KAud8p
         zSlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uW6oBKGA7fdVF3x+HR2rm/BSU67Mo667GU9rHNRIcoI=;
        b=oTMHz4gjg2uuZavLZAr4kg57QwYQWU+/cLc+GA6vvSkOD6vwku9Dy6RbVucpY786fp
         Bo+oXpcf0aHqhCDopzUrbR3FTEw9sD0kGLiB+9D8VFBEC2/Mag0VzNU2T8cHJS7rcWhw
         bfwI5mj7IEKzrUCSX9SndCAWrvt+3et6AMgp/7tObM5UulCCHFa4UHJUsZE+0C5qXsEC
         6STQAyvZ9RBcfiJT9TESDRPoDdYZaCiy2KTcOcI8brdi4bZGh/oJWkJRP2ylnhhkM+Hs
         +fH5aHK5r1/2N9wqDSyndkSSbHf2rtCGmJl7GM8rcBC/wTlSVG6OVQ6BsQiir3k+IP71
         N5qw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335E0rjPL5H17jAL78mHf/8Y/6ZGfNVVPd6+snC01HYleT0yeU/
	OCdlCKjNrLxz0FeDr2f0N8M=
X-Google-Smtp-Source: ABdhPJwQeQYISfMIHZBi1gb8ts1oL7C1Bw4hNmU53aDFT3UPqBFN55LITbp5oBjC5FezTA8qIS1brA==
X-Received: by 2002:a05:620a:79a:: with SMTP id 26mr2597287qka.169.1594694327111;
        Mon, 13 Jul 2020 19:38:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:248:: with SMTP id q8ls9135436qkn.5.gmail; Mon, 13
 Jul 2020 19:38:46 -0700 (PDT)
X-Received: by 2002:a05:620a:2f4:: with SMTP id a20mr2564349qko.227.1594694326741;
        Mon, 13 Jul 2020 19:38:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594694326; cv=none;
        d=google.com; s=arc-20160816;
        b=gJuX9yOoBY0PERIzI6tPjjBFwEGvAjY6uzbI22bDIB8apKIA+RDUDGTbYD7ZYjWtmJ
         ujQegdL60WFQ/AFMDMEGD04W46iyvumKS1M2OukkQGa98FRknptW7nF1wZuZCYAyuN2A
         5hrXX6uf8taZ0jyzIy/PP/iVwB178qIbUhnsVdAuxZYdD0+cRx2eQDrHj7yHuNN/hpMm
         GkUrCoR2csrNfrrpGJHSYNNbuwRIBq4JYqte3SHVOH4Ikt7HeR8csg7Vken6pJYleUE2
         NGG+MxSw5XiCX9/9ciTqXdfhJd/X2cP4Y0TsjnzDnN0t+SIVXYfHbud5qK0S8/LWJVqL
         NrZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=FIActeAe5YKjciIRa6g1CJPgBFTITfx8e3sVsm6Q5Tw=;
        b=LGRoE7xEwPW5SVG8sufVwi/h3FoAn8UpnWfsHkVrHWXPSJhfKxDa21dmPO/MNnvWG0
         7TIxKSKTVvGaWANbX9IfRdsDMA7072ALhsCAX25jQpQYONE3xhL3mz+AK8wt7iPaCZjw
         i1RYsNIHDlA9OEhcyW73qTMWr4qPdM03aZDm86rrJbM6/Z9KhWD1NthpAjdRsVt5kTXO
         zQeDyvlZ35LTujFvHaJOWfUx0aII5Ywl1ygckKbQCL1tb5Nlk31yT3wOgQmgmwDj6l1i
         zmx7Bs0NYKcwPo550gqKqZKwCCSQf+C0zx673khe2zMNL5nx/yIaUOE7Yvq/2eqYBl5d
         oaIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com. [209.85.160.193])
        by gmr-mx.google.com with ESMTPS id j9si1001014qkg.6.2020.07.13.19.38.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 19:38:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) client-ip=209.85.160.193;
Received: by mail-qt1-f193.google.com with SMTP id k18so11730164qtm.10
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 19:38:46 -0700 (PDT)
X-Received: by 2002:aed:2f26:: with SMTP id l35mr2513732qtd.79.1594694326442;
        Mon, 13 Jul 2020 19:38:46 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id a22sm21046291qka.64.2020.07.13.19.38.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2020 19:38:45 -0700 (PDT)
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
Subject: [PATCH v4 7/7] x86/boot: Check that there are no runtime relocations
Date: Mon, 13 Jul 2020 22:38:36 -0400
Message-Id: <20200714023836.2310569-8-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200629140928.858507-1-nivedita@alum.mit.edu>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as
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

Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 arch/x86/boot/compressed/Makefile      | 28 +++-----------------------
 arch/x86/boot/compressed/vmlinux.lds.S |  8 ++++++++
 2 files changed, 11 insertions(+), 25 deletions(-)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 7cd9a2870f7c..cd286bb90423 100644
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
-KBUILD_LDFLAGS += $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
+KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
 LDFLAGS_vmlinux := -T
 
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
index a4a4a59a2628..a78510046eec 100644
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
+ASSERT(SIZEOF(.rel.dyn) == 0 && SIZEOF(.rela.dyn) == 0, "Unexpected runtime relocations detected!")
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714023836.2310569-8-nivedita%40alum.mit.edu.
