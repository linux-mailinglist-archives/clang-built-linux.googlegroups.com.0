Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQXCZL3QKGQER4CQMIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 536812069B8
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 03:49:55 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id w14sf418759qtv.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 18:49:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592963394; cv=pass;
        d=google.com; s=arc-20160816;
        b=ry4EY6XdvtnhW9AxGZA6kb0EIbJeJ8TmVYhXbA3fx8hbhzg24PKLhXN0OILOYGm2a8
         VmiA+hlOQLdhs/gHdCnhnNadWQ/arEnbZwWlzWZeHU/+0H1siXi6NEljhlofwe2iyYSr
         9VI98ZP1DZLAtEJyd6f1y9XrITfijOVYXSH9jkaG90thrTDHP1E9007+gVpPPDWYLMD+
         Oz17aVTVg/pzUIk4hmfmVqmk6ygkIfwcNc9YU/VS0UitJHowmRRJcrQSqsI0UW7aAIAb
         lhHe9bkkNcj6LtFTCfzXQAsWemEY6QldFNTFnj7l0VwtRV2nf+GbFL3BMrjJMYKRMsQt
         Mhiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=P1f2dXvEJbsgCIsyB021WtezWfg/Hneu2W+Ni2zqOCE=;
        b=x+7RYqsTT/KqHifPpUdFDgKpcLiPSikQFC/MiineIoStcNvftmdpCOW+0P4VoLv2O3
         /34MSkMfBegkjPMENPuuOSS2ZHLgKlXZsDHfp3DLAhFAjjG0+RjaSz0nhENbZIRXmqyV
         5TeO59dJbJIqLUjaUtzEuo1IcDizi8ZDYoTMjk/dQuioJ7c6fy/+LRS7AqV38GQHR6Dg
         YlvKHDUEAMZfflNaCN0Le5z8W/oYdjIDTwkirKhSxiUWljmI+EmdGO2DKOQkBiSHujjx
         QWu4f9o4q1qEJPWTbhv5kS7WlArq263Xk4UbKou+zKWMS0runBPx3rSVcLgajKFPCR8d
         1ENQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SfpOc2hU;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P1f2dXvEJbsgCIsyB021WtezWfg/Hneu2W+Ni2zqOCE=;
        b=AKATzVIu8oi0Xc7SNh0KBSzYWE/nzIVLl6VHJGd37D6L1RrtRzHb00s8kxmn7aWgQt
         VHVDNwZhibp+M9Ag6t56+x810iBCzddWKM0h19W9oSMX83KDeLOJ4QSsUJVRbde4CRLi
         xj8RR2FaPiWpWTwvKWcNa0QBemNKmeAGqjDcykHIerawdmw3PSSgWPKzfb2uJqRhoOhN
         zmvR+L9W3JmjUco2WG4aXG5NloV3xiPJCE/5gDKRhooDqRwfU2nlxqv1UAlDDXDCKWjJ
         9POc2re+rQ/wRVYI2OtNqsk/jhzyLOq91VNlVGFAZ1MtLGuSG/ZFTOnZrTdHDkAuNkaP
         mHfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P1f2dXvEJbsgCIsyB021WtezWfg/Hneu2W+Ni2zqOCE=;
        b=I/LdO0UPSsg9ko510AHSjlRFWetVArNEXLwgJt2kljZK0thicIn78s2xoT2XcG/z+S
         vRhv/RFZ6KKvT9TeYejLl7S5bBLDUTH8F3teHPq+jh2z8gU2pfAb84q2zcJJa7xenHfJ
         uTAb7box7tguvfwG3O8RXMOurdCzq8K10KEZuTp5EZ2JDEVhFn5UF82NkXPa4c2t7rkV
         Ta/moONVCCRDt4rINyPOC1oN8cwDITBOan5MQ49tE11lOTqkCMpD3X6RYvdh5V51xjqu
         b7xRnzkFPKF3wy62wz9QyBkI/F4AhAJcP4dm/DrwnYJbTEmu33TXKcVZGBBFK+ef8Boh
         FeQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QwZU6GvogSq2tD3NLOkk68KxE2DaNtApOJzwx8W7o2g1bs0M+
	LY6DV+t2dV3xQxmNLGnBxgc=
X-Google-Smtp-Source: ABdhPJyOrqFa3Gmy/yPP0lZDMe6woMEUTrfW2mLq2gfYxcq1U4pcWrFTa0AJ72uA0CS5D9WIHpRs9w==
X-Received: by 2002:a05:620a:148d:: with SMTP id w13mr23698515qkj.248.1592963394435;
        Tue, 23 Jun 2020 18:49:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4e41:: with SMTP id c62ls325525qkb.8.gmail; Tue, 23 Jun
 2020 18:49:54 -0700 (PDT)
X-Received: by 2002:a05:620a:4e5:: with SMTP id b5mr22712679qkh.341.1592963394144;
        Tue, 23 Jun 2020 18:49:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592963394; cv=none;
        d=google.com; s=arc-20160816;
        b=sEtkZGwhgVX3SmeYCeOi0iX9Sw//nv1hNrmS/5fT6GZKWy1PlX6sq5LWyj3Phn6nGz
         0zAfsT5RwU9acyjFX7r7LHbj7kgkB+o+IlTnaBI2mTUGfSC19mzAtTfOcWAMOp9Qgspm
         qtBPUmhE3Lk0YCqNUmUzgYqTLMZOCnBTQBDS+gMlQ+jlc2CwTePeH7RfgT3gFUqnSpuO
         UQRw8cpvUlboFm/JPDfxNZqXIvazEwO07yILpfO3I3/X/1gdp7zTTX/jDvUEC6ono8HR
         xmyre68P7hlXLbOfBxzQM5tj5y0GzA9v22rwN66YSIeRAeVwSHNPIAia9L5vse0ZpNX1
         rw0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pYQ7/UZeNlKUAAzd40PNMMjARn27pZcaavNwLjboXuY=;
        b=cBsYI/xVdRE5VVuNoczelnzAh7XEb6HKrEJcN9e22WBbFwf7w0gAvhq2hE2Z6OgdZu
         YZp8UXlnEmjUq3fp3O9r3/bBEMGKwoR97Zw+V+y6LuzPBwgvV/kx0yjxvCZ9A1kdKJpC
         Tp4RU29gtknCEb6h9wVDar9zsrrz9vUK7jYVuBddsDlJsFIPZWOcbukEhMB1iGqqLx/B
         MQqdIrwqd92TIMQSi6I5pXW68TuPP0QZy6QskTysQdwDl/z3OysEaaERKE1Ct8mzsnZc
         vM0nmqKXJzGh5qI0vQLMsqOUpkwhVeM8XuAI6qXxKJ5t7fp1+cz3eZitBDBwrr5kKquJ
         VFDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SfpOc2hU;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id b26si744507qtq.3.2020.06.23.18.49.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 18:49:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id m2so380013pjv.2
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 18:49:54 -0700 (PDT)
X-Received: by 2002:a17:902:bd46:: with SMTP id b6mr4986763plx.287.1592963393344;
        Tue, 23 Jun 2020 18:49:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n1sm2941055pjo.47.2020.06.23.18.49.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 18:49:50 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 5/9] x86/boot: Warn on orphan section placement
Date: Tue, 23 Jun 2020 18:49:36 -0700
Message-Id: <20200624014940.1204448-6-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200624014940.1204448-1-keescook@chromium.org>
References: <20200624014940.1204448-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=SfpOc2hU;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624014940.1204448-6-keescook%40chromium.org.
