Return-Path: <clang-built-linux+bncBCIO53XE7YHBBI7M473QKGQEEAX7KRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D6920CF0D
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 16:09:40 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id d10sf6054323pfn.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 07:09:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593439779; cv=pass;
        d=google.com; s=arc-20160816;
        b=YXURkJBkWv/votgyeS/4Aqa5ABFe6DA6ZREN9J6LXDa+HvPng1mcwMkymO5NeE//d5
         +k/2MEblpjB9f9alO7Ylq479dcj8Ig396MpctXQqDyowYTXlhTdlVpKZbC0JYiJwviwl
         a8oS+HsT7ogM9KjfTsaqcuQYvrJSkwjQ7oAiKL9/ox/Bp1MVvBxGCGCGen1X/55/pcWn
         dajfBns3AzSUqt1cXBpX0xqYX5UA6ZHmo3EAhGyHRPzyzdfPH63Csj5JrhEKhDkJ3KZF
         YfEs0M7Qu+J/VmB0MiQw+5EYbHwCYBErKN2FyrMPSIxWG7XhLUiYkoC65lVaUIxyxwCp
         Oicw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=dw7RznV95dNSAPU9uhOBmLRvcR4asPS8dL5He1oYLxY=;
        b=prIsnvkAaouFtwwbh9+p1qbwbJIMop/sMe7utk/QnMwdnQZUxXxrV5qp9Yp8gRN1aX
         4a82MWzZ5nuQ4YIaPeBSAPS6Dugr5RI/6LgSDKjJY6yX2NR/aMit4GYs89+z19W+LSBR
         sLH+ow+d6NrbQGnpFHWRAKMe3S30EurKNYbrTqUKxxq5H76sGyGZgx0sguTb20h9C9Hn
         SLmE70x1YpqrwlBw/XMAFsISmHNyu5FclWy9zCYJ18Wg3CCDwg3XyjE0boSv9lFh18sr
         /iPy4V+/vKv+hTmylg3W77MhNBOwh4CWT8nxB48KcgfJJYWKXFJiwJx0eLDdBdapxuGX
         lAnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dw7RznV95dNSAPU9uhOBmLRvcR4asPS8dL5He1oYLxY=;
        b=Z9qNCFStmiQaNIKs5F7P1O9WUj+SBuKdEuuDUbdQFFfLv1xdB920+9qFE2AX+Aed3l
         QA7DHi9C3uaXQnplf8S9flo/Ub9f2YoTDWOtei9HK0HOpvsgwNW/dYHfEqHWLSWAjxxV
         fmSOj4CtxPLxdQ3Ag68ukTkXJRiIfkWkJjbdKIl3UtgktJ1Y5G40EcQQEZF0PDCh3XV5
         MB2QednFyjzckXn/hrZL6fs4YyLLbH8mXFPeAc6PTFrQexrXnGNtqKC7TSyGAcrVZxMe
         s/yB1kKxplVF+GoUstHtJdh83JbMboA7SPQceO5Mt+sbtm0Uc8uwdPFqD5VavKdLJ7oo
         EiMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dw7RznV95dNSAPU9uhOBmLRvcR4asPS8dL5He1oYLxY=;
        b=DGePQXiFTmJ0+JIrWnY2iKhwbqOoJ0rLBNh3dDkablNpSZ41h3A4gazDBdFVIN74lJ
         dTnUJdYWgemYC4eqeCYW5ix6H+uWLjE5XRW1RtIzWntgddWtfns7slT39Tza6ZBcKXxz
         IshLJFISE1fw2enLy3j3Yc+JxypmEQ0T70Lulrv/GM4sMLfm7nYd8GaqS7k9iRO0tcWa
         f7YrHjT+jmTHlMT1jCQr3Kv4hVe7Zk7T/VI++VIbmL52EJxhab7e7h2w920ElxclRMyV
         1o6P2a8MCG9ILLY3lQ7qhxHJ7IyvlwbvUL0LyuNKoyBNHj0b+OkPKG/651k3dGXQynex
         kxFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530U/dzeWTsRpe4EIVicRH/J/F/Bq7Brk6m5BwxaZXgTge8TQXBg
	vgCzhyhggexdzbl2qZjdoxk=
X-Google-Smtp-Source: ABdhPJyhzDdpYdJ++Ag1N9MTF2LuSbKLzCpVP0bm3HDIJX+w0eegDRCqXBxL+DRTjSvQAlKoDvYLdA==
X-Received: by 2002:a63:9247:: with SMTP id s7mr10853457pgn.355.1593439779336;
        Mon, 29 Jun 2020 07:09:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:565:: with SMTP id 92ls6328942plf.2.gmail; Mon, 29
 Jun 2020 07:09:38 -0700 (PDT)
X-Received: by 2002:a17:90a:8a8b:: with SMTP id x11mr12162452pjn.127.1593439778711;
        Mon, 29 Jun 2020 07:09:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593439778; cv=none;
        d=google.com; s=arc-20160816;
        b=tb93H6qdUHZ5yXqp3+jPd4MFubTyxGjsTfiO4YvVySLalOdGdcFaqSqoJfV7OyVpgj
         6Y87+HtffLpXfqOxjuZ0fUeETaX24yRiSjuN8IhEXTVf8Ew3gB4DDMdNEQwl7TAsSKS6
         e6pGRCgc9CV8DHxn7zrf0Y40xm4/krV56rppXVxKsuv6p8KZZvW8EiNsxZNa6jTUizJw
         FeMF76oBxHzpGOVUXhjImIrSSvmhhKG6qaXLUTEuJPWrqJVFKQEmSVxHbw4NUqusPwDt
         bUDOOc29fGvAHfmZQsbf0dZwEEymT17RHCdW45KQUBySxXAwM3+tGwW7iQXQzIT0te4t
         otVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=OyRLhmmg196boVRym4uq/3Xo7lzHpOrDcyVkIVFndQ8=;
        b=qbOo+YEDRxKQ9oe/waE0G4OeWVRogTh8YBVJxwfHG/Ihwkj5HahUN/LTv3YfpZjn/s
         KJL0Z9SIwcvv3MK342O1CWooxdRzdLCOAWsMUzwQ6f+R0mnDcuNkKVMAEoPAr52kImOC
         /hujHlzpSN56dObuCRWSSoiq9CRJomUpI/C/LpV9EaKn1/Va3aEdDbRuIDY8ZKh5Z38m
         6bKCN92OKCHB3h2ydUeGA/XwZ/YE0LgtdnwVuad+GFZV1CkNbTBe1lv7proRbo6BUiyg
         3hYt8w7psk/HhfIqbNmtLTpxo04h7knOI6Sp+k1fJCIDqy5hRb9tSjHVYOGeeQjmKuYi
         cPUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com. [209.85.160.196])
        by gmr-mx.google.com with ESMTPS id l137si1442pfd.3.2020.06.29.07.09.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 07:09:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.196 as permitted sender) client-ip=209.85.160.196;
Received: by mail-qt1-f196.google.com with SMTP id x62so12905624qtd.3
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 07:09:38 -0700 (PDT)
X-Received: by 2002:ac8:32da:: with SMTP id a26mr15995141qtb.379.1593439777847;
        Mon, 29 Jun 2020 07:09:37 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id i26sm10741461qkh.14.2020.06.29.07.09.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 07:09:37 -0700 (PDT)
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
Subject: [PATCH v3 7/7] x86/boot: Check that there are no runtime relocations
Date: Mon, 29 Jun 2020 10:09:28 -0400
Message-Id: <20200629140928.858507-8-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200629140928.858507-1-nivedita@alum.mit.edu>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.160.196 as
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
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
---
 arch/x86/boot/compressed/Makefile      | 28 +++-----------------------
 arch/x86/boot/compressed/vmlinux.lds.S |  8 ++++++++
 2 files changed, 11 insertions(+), 25 deletions(-)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 242b291037e8..9b064ea55537 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629140928.858507-8-nivedita%40alum.mit.edu.
