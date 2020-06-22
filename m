Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXNUYT3QKGQE3AEOZYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id DC719204234
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 22:53:50 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id e22sf9188156pgl.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 13:53:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592859229; cv=pass;
        d=google.com; s=arc-20160816;
        b=UdR7AeXX22c3p380AdEzbqEEaaqYkkFj/mVcX09zHCuPs4AEE0WRw+WjvW5NYO7QA6
         KneHw82+552f7Kp1jgUtWZsBGKaFEOddEjotQ1dSXXuKnWRGRqgp7NdXXIFSAcyn24t9
         F6cJewWoztbdveKf3BdL9UjPagb6uWCQc2CQpSBKyCQ84vhmsMnExf3kDgESKWwTxhe+
         itbA1HDlaZptjSCeLekX7Js4BNUWhsG6LxsgG9/7NUa7H3ULjuoD6aa51DGheshiz0/N
         cMF3YHe1EgoZlMUC3t3ToTG1qNkbSZ3GazpnLkRz2ADeQixlz6nZgqsecY1flmgaura3
         wBcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=JYduL2nNWR8L0H1tvI2//NjwbUWhQZ26vswo1IXizGQ=;
        b=XuthrHG/c9ChoBBBtyTZOJS0inntbZYqPk4aAIdtrluXgOnrAy22WlBWD5INdAJz1I
         6yQ7iH8Gnwr5HMuOdNBTDpXMWYNgVa5Bsna/HrVj8C8OS10qQCsgmQRsm0eTSJZ6XmRK
         V1AL3bquWIarvqTUVRnWSyCPLpEoEN7PiM+zVth3fFVra03aawmdJW/L0DCJln5F+rpP
         wYMXbNk1H5wban3ubT38VavFEPqZQXv8Zq4EoZ7G0uXEtUIrTud+QzBmSt3E14f/rMTk
         y9jn+zI7sqSlMPr3HWwpKPupp3wbNevZM8joPYuvXw0YyXpk0H67l4LIHZRYDoYZfX0s
         96SQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Jfz8nxtl;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JYduL2nNWR8L0H1tvI2//NjwbUWhQZ26vswo1IXizGQ=;
        b=WNv5SgjsQPROeLx9+MirPL3ALoEx9QEWdPSYTrMQoZLG+AupdNmWVA14UNaJGPoo8i
         OOtHvPvmIKMPoyyABSOWMj8Xp+xrCAefF85SSm4KtUrSG6EXF4lQu6RjrBTv9TEm8KZZ
         ib1MlUdd8mwo0wHgYFvGw1pKgqcHsJXDMte9FvAfjpF+Oz7L0cjG5qH0ylE4PHcQYISC
         zq8HO2inGKU9GhhMrRrJlp8dUyMaYs6w8HNjthdkmTfuNBWkhIczvdzPxmWX/ycSp1Iz
         U93EIEo+EUfdymAyOYiv1FeTnzy68X6HE5ncNOZR2CIY1sFgkjH/00FK2ZL5R/SfbDve
         n2LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JYduL2nNWR8L0H1tvI2//NjwbUWhQZ26vswo1IXizGQ=;
        b=OU5sRGcR+RVmzwAbq4kfa/LnK8rams+6pCAbCWPoTIj1nCu+kdVLM9KLbwWbiw5nsg
         ER0zlGw8s882QcXjfB5qg4yrDyIH9YPKJM2cG+Kh4hYshYbTJth6HPUMqEXcUgtN1CCY
         ukOyFMjKVdKAZ55YvPMyw6iUOe4OMoMgvcirz+U8c/MDUdJN9KgLmZODR3sS8XmRu6bY
         8huXdNzYH/L+9rUjvk6EungSOyLqpxVYkPpSQRAQsM/zo3lANvWXAfCwjUq/SYkgRTgZ
         AxpF1q9uaci7yCFPoKws2ep6GJuh75xnp00Ou3Ihv0jVnrj8lzmWo8SH84CTgv+hdHsU
         q4ng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533DF3L76aT6kAB/H3SUVwDvksStb6Jllmj3pWft6usn1PMbCCgI
	UoslYl/hW6rz9Y6gpKdz4yo=
X-Google-Smtp-Source: ABdhPJxjevoxfp+maqKJ+WZzgcySMaZj+lNGTm8bDCw1vLRReU5ZgOeBs9SOcABOet2BDF8/gICFyA==
X-Received: by 2002:a17:90b:517:: with SMTP id r23mr21347316pjz.191.1592859229650;
        Mon, 22 Jun 2020 13:53:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7686:: with SMTP id m6ls6764394pll.1.gmail; Mon, 22
 Jun 2020 13:53:49 -0700 (PDT)
X-Received: by 2002:a17:902:ed02:: with SMTP id b2mr21436561pld.326.1592859229257;
        Mon, 22 Jun 2020 13:53:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592859229; cv=none;
        d=google.com; s=arc-20160816;
        b=JyTu9gaulvww/rODZMi5j3OzIVKizYmV1+JQBQRj0vvgYAVuwTPKOQ/dhpZ8J0LPRI
         CTMdnvPBb3vGaEXyPhCC/wJZCZYezZ6RtJTv+Ox7a1C9x+kEIlOk/mA5h2rda6Al+hXg
         keO3HG2jNfO+Z+BHtqXD9axS+8bQXXfS2/UbFRMZ6PC3+2mJuBGq/K6On9BRaIuqjqdL
         eHOwSV0gFDFcuU3FZfLTUFdYJwrNLoSiAchBFX9S8aExNwvgt9bjjg6+s6DvSTrl8mBA
         Pcz1QUMWj0RPTCuu69XaU70c6i2WPcixmAo4gUQe12r132nEV8w2TQ/GEUOA+VbmOqll
         ZnIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pYQ7/UZeNlKUAAzd40PNMMjARn27pZcaavNwLjboXuY=;
        b=eDiteXZW2f30EHhheJy5IEtkwk9Ll5LdOMr5EtUQVU6u6UAVDjhsaBmzpzaqCqWkMD
         YNUuBi9waGtPjHfinqWLKBDYbStgXEHEOzttCrchj6xvths/2eBtzXfBLaVfPVmrEmFi
         qdxTVzeww94nDGCWt/HRcPGqRvf2d+HMgqWbdLHIf0VykrFyHGWvpeP0QNf54myr+ZXc
         zkOcBWaVpwH3eS9RswivMD0i3cXGz1i+eb769YRRDjWNOIQeYWT81YhHfOCoH97eSOcY
         BhtdupABpJilxK0jZ/6yFaUE/dPnFiDNSeM4H4rNodPmeAtIyglvGd4Am5HEkX9/cnBA
         evJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Jfz8nxtl;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id y19si409590pga.4.2020.06.22.13.53.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 13:53:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id u128so8779087pgu.13
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 13:53:49 -0700 (PDT)
X-Received: by 2002:a65:4304:: with SMTP id j4mr14175789pgq.152.1592859228964;
        Mon, 22 Jun 2020 13:53:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i5sm366797pjd.23.2020.06.22.13.53.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 13:53:46 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Cc: Kees Cook <keescook@chromium.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] x86/boot: Warn on orphan section placement
Date: Mon, 22 Jun 2020 13:53:41 -0700
Message-Id: <20200622205341.2987797-4-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200622205341.2987797-1-keescook@chromium.org>
References: <20200622205341.2987797-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Jfz8nxtl;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
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

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly named in the linker
script.

Add the common debugging sections. Discard the unused note, rel, plt,
dyn, and hash sections that are not needed in the compressed vmlinux.
Disable .eh_frame generation in the linker and enable orphan section
warnings.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/boot/compressed/Makefile      |  3 ++-
 arch/x86/boot/compressed/vmlinux.lds.S | 11 +++++++++++
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 7619742f91c9..646720a05f89 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -48,6 +48,7 @@ GCOV_PROFILE := n
 UBSAN_SANITIZE :=n
 
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
+KBUILD_LDFLAGS += $(call ld-option,--no-ld-generated-unwind-info)
 # Compressed kernel should be built as PIE since it may be loaded at any
 # address by the bootloader.
 ifeq ($(CONFIG_X86_32),y)
@@ -59,7 +60,7 @@ else
 KBUILD_LDFLAGS += $(shell $(LD) --help 2>&1 | grep -q "\-z noreloc-overflow" \
 	&& echo "-z noreloc-overflow -pie --no-dynamic-linker")
 endif
-LDFLAGS_vmlinux := -T
+LDFLAGS_vmlinux := --orphan-handling=warn -T
 
 hostprogs	:= mkpiggy
 HOST_EXTRACFLAGS += -I$(srctree)/tools/include
diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index 8f1025d1f681..6fe3ecdfd685 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -75,5 +75,16 @@ SECTIONS
 	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
 	_end = .;
 
+	STABS_DEBUG
+	DWARF_DEBUG
+
 	DISCARDS
+	/DISCARD/ : {
+		*(.note.*)
+		*(.rela.*) *(.rela_*)
+		*(.rel.*) *(.rel_*)
+		*(.plt) *(.plt.*)
+		*(.dyn*)
+		*(.hash) *(.gnu.hash)
+	}
 }
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622205341.2987797-4-keescook%40chromium.org.
