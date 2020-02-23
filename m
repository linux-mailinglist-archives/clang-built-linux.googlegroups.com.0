Return-Path: <clang-built-linux+bncBCIO53XE7YHBB35IZPZAKGQEUDDKG3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 308861699D4
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 Feb 2020 20:37:21 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id v26sf5153985pfn.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 Feb 2020 11:37:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582486640; cv=pass;
        d=google.com; s=arc-20160816;
        b=nI2pNyd2V4ggNJYrzNQAw0sedaurfaOSMMHCG7LgPSHtmVZjCasOTrAYBN1wP87Icd
         peVpKIAqJcDFxF/CnY1/SW354ed73EPtNfXQcf1I7DsDM3XbPPwkDw7/yr5BgBPawqEG
         kIDYSOPE6xWsdXctmMD0yPi0LUz65JMy+Lqoe/8G89FqaUkXDbzDQwHkk7tJVM97ZXfI
         EknAyjWUCv8UDVxT2InTpQvzT4D1B+mCE3GRbQm2vNAthMcJGMcDRHzspT3usSpMA7I+
         zKrAtdTqYf9MdieYQe2qfa1ztEbHgrlFqSDYZTaL6rws3nS7aSoJRFbNrixnDiwnCf0t
         72qA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=M7epcQBtpcCp/thW7tOqVM6UTEDo094Zx5hRN0V2MzQ=;
        b=sjKST2S6MMpkOnZk3B9L7kxXrnSA8mhYntmwh2oWuE67NeoRHPnA1pw2F6iiEhNx2W
         rCvMh+UyrGbJbraoBG1oaqtG8irdJm59fFky1c8ATiYs1gtwAfktpWUBSxllFZF3gH7a
         zzH3eo7dmj80Q8RsVhGf6K4wGbNE+D4P+3AJ+hB/f1tL4RI5L2nnYpICHY2v2GcLlTH2
         Vjb6pxzQLHC9hXNRu3sfJHoeXcKXLwG7cicQ6GVoRbIy+9cFIykkMQZYv5eZzrSJ2G39
         69+2vhSXEQwPiGyVNdwVXony+yqqh0asEBOSkLzGzuMwyX0UeAhmrRtkzNY0X8w9ux+R
         jvug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M7epcQBtpcCp/thW7tOqVM6UTEDo094Zx5hRN0V2MzQ=;
        b=ktvgydPJU+YD4bInkkdYueZuzpf+/GCQoDNAH0yqUclfx8W7X8Lm3mMfCG/16HQp3u
         X5aKgJpa3Kn9R6FJtH0g2NOsdUx+9RKDHgQzpux/1Hoh2kfWIhWzStv6QtJeciaL1krL
         gOSF3TPNTNQmSk3dEIAn+UkS3GRp0O2qB/opPCyntp7702dzDtrfcqUPFDCiU6OmAfnc
         ITNMqmT4TuPNG+EeW1UAuoW64CpCzF37cZLG70n3sTlUmVIq7hhxs4kN/VLN9+msliRm
         HE3LKEX6ikKOpC4WCX3ywl4Z9DqVf2MGEi7jljxTuiDc9trm0qViH6OhgiJydGWzd79n
         E0+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M7epcQBtpcCp/thW7tOqVM6UTEDo094Zx5hRN0V2MzQ=;
        b=qJLqUNFplxK3RozIXJvzSBNbJJ3A0F/4vWp8HNs7yFtqEIXgnD6BrZ839xJ3ICSSL4
         B52sRPfOgTPuORb2Kk8pEs2MHk2/DirSESE8gz06FDE44dDjfLI9WXgVAnG6jee2ukm+
         ZSLueUtXAC8W4UJuxg7+ZHnePjCXTdN/jcRjFLb5xwPWKsHJ8Bb1WAo64Q7oNdsDQwSH
         pzx9vXKyxWBtBvDVyihwO3wkygcyxNnP/43mKm69abWf8yMcL6+QF7hpIxIKafuVJFzf
         kKLKI7EVOV3nz1w2xOBcC3a/oM1XfV4XrAFa9P0Uw39aPJZ4ESYpmiEyxsbAv+B8yoLg
         zbhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU2nxezGTBCMZaw0V14OnFHV8RPIbAp3KDjm9O0SkHYt4ncfiEQ
	rFEszs6vJU5/6pN3d5WVlTY=
X-Google-Smtp-Source: APXvYqxKgFscLWzr6dWYxVqkpnU/JUy1vGpAfy+JMDXY/QSoURm+vb+8ck8PNNSMLr+7h79c/Qi6ig==
X-Received: by 2002:a63:2cc9:: with SMTP id s192mr48094446pgs.441.1582486639824;
        Sun, 23 Feb 2020 11:37:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8744:: with SMTP id i65ls2471453pfe.11.gmail; Sun, 23
 Feb 2020 11:37:19 -0800 (PST)
X-Received: by 2002:a63:3048:: with SMTP id w69mr20619206pgw.184.1582486639322;
        Sun, 23 Feb 2020 11:37:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582486639; cv=none;
        d=google.com; s=arc-20160816;
        b=WoIUaJ2tFJLqTUV/NULQIZyUVJ2oaKlrLzLX8esHQWPyFkkk/US1U7/47Wo8jgOJbo
         oDyk8NFMTApDCvq/igN3SxRhhgHZ38ccgVuH/lndXum2E0MMg/PEM+R4i7UROhJ5DiCZ
         xNpcpU6AamOA5Dw2SwmGXui6Kd7PCBW+C+xYpA8pJ+GaTQy2e8vZcDY0bNmb6GWn6mdJ
         Q1ePXT4461coYrLY8Cw17nmmIZBoYT1mRcdO833BEwJy7eFaCuhDWHL6otqA7dwMUB6B
         Jayctn45BnMVSrB0vqSLmIZCY0FJE3aIP5ObZwRFMd87i//tVmAuTPE1a/4KsELbThVD
         z+Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=8qgdvNENjdppslkpYoe+OSQTy4MavzCmuXPJ3KTJBw0=;
        b=S17yYU5l0vUETgvBey+AXWGdztkJy7sEjeQitldMqVSVXoTUIJyIPsFytGjZI6n7h5
         bA5BAC3ki3xtEYPr/wZg+jnPP0YxcpCNfbFfpxlWQxUfYlbVqJCm26MHrWI4U3df4Y81
         yQrF0o1zg/XKInn6FQVuJ5Tzn1Ei2x8Sd0nWE2LfWWQrqCCKPZ3RpYcbIqGiD0avDejL
         BzEhF5miUkiBgqfvm0oKbik5d/Vnwt3h/sKliB8xfAYAmgE2Ofkg5Jz6fQLRnHjs8EYj
         AtInji5m4nskYbWiAz728i4wea1E9MNCBFfvvS8ireLfeOdFdENTl4AmlcjOCALgD/ew
         +DEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com. [209.85.222.196])
        by gmr-mx.google.com with ESMTPS id n20si538949pgl.1.2020.02.23.11.37.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 11:37:19 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as permitted sender) client-ip=209.85.222.196;
Received: by mail-qk1-f196.google.com with SMTP id o28so6905943qkj.9
        for <clang-built-linux@googlegroups.com>; Sun, 23 Feb 2020 11:37:19 -0800 (PST)
X-Received: by 2002:a05:620a:2185:: with SMTP id g5mr2098240qka.4.1582486638325;
        Sun, 23 Feb 2020 11:37:18 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id 204sm4780976qkg.74.2020.02.23.11.37.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2020 11:37:18 -0800 (PST)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Michael Matz <matz@suse.de>,
	Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>
Subject: [PATCH 1/2] arch/x86: Use -fno-asynchronous-unwind-tables to suppress .eh_frame sections
Date: Sun, 23 Feb 2020 14:37:14 -0500
Message-Id: <20200223193715.83729-2-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200222235709.GA3786197@rani.riverdale.lan>
References: <20200222235709.GA3786197@rani.riverdale.lan>
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

While discussing a patch to discard .eh_frame from the compressed
vmlinux using the linker script, Fangrui Song pointed out [1] that these
sections shouldn't exist in the first place because arch/x86/Makefile
uses -fno-asynchronous-unwind-tables.

It turns out this is because the Makefiles used to build the compressed
kernel redefine KBUILD_CFLAGS, dropping this flag.

Add the flag to the Makefile for the compressed kernel, as well as the
EFI stub Makefile to fix this.

Also add the flag to boot/Makefile and realmode/rm/Makefile so that the
kernel's boot code (boot/setup.elf) and realmode trampoline
(realmode/rm/realmode.elf) won't be compiled with .eh_frame sections,
since their linker scripts also just discard it.

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Suggested-By: Fangrui Song <maskray@google.com>
[1] https://lore.kernel.org/lkml/20200222185806.ywnqhfqmy67akfsa@google.com/
---
 arch/x86/boot/Makefile                | 1 +
 arch/x86/boot/compressed/Makefile     | 1 +
 arch/x86/realmode/rm/Makefile         | 1 +
 drivers/firmware/efi/libstub/Makefile | 3 ++-
 4 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/x86/boot/Makefile b/arch/x86/boot/Makefile
index 012b82fc8617..24f011e0adf1 100644
--- a/arch/x86/boot/Makefile
+++ b/arch/x86/boot/Makefile
@@ -68,6 +68,7 @@ clean-files += cpustr.h
 KBUILD_CFLAGS	:= $(REALMODE_CFLAGS) -D_SETUP
 KBUILD_AFLAGS	:= $(KBUILD_CFLAGS) -D__ASSEMBLY__
 KBUILD_CFLAGS	+= $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
+KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
 GCOV_PROFILE := n
 UBSAN_SANITIZE := n
 
diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 26050ae0b27e..c33111341325 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -39,6 +39,7 @@ KBUILD_CFLAGS += $(call cc-disable-warning, address-of-packed-member)
 KBUILD_CFLAGS += $(call cc-disable-warning, gnu)
 KBUILD_CFLAGS += -Wno-pointer-sign
 KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
+KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
 
 KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
 GCOV_PROFILE := n
diff --git a/arch/x86/realmode/rm/Makefile b/arch/x86/realmode/rm/Makefile
index 99b6332ba540..b11ec5d8f8ac 100644
--- a/arch/x86/realmode/rm/Makefile
+++ b/arch/x86/realmode/rm/Makefile
@@ -71,5 +71,6 @@ $(obj)/realmode.relocs: $(obj)/realmode.elf FORCE
 KBUILD_CFLAGS	:= $(REALMODE_CFLAGS) -D_SETUP -D_WAKEUP \
 		   -I$(srctree)/arch/x86/boot
 KBUILD_AFLAGS	:= $(KBUILD_CFLAGS) -D__ASSEMBLY__
+KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
 GCOV_PROFILE := n
 UBSAN_SANITIZE := n
diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 98a81576213d..a1140c4ee478 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -12,7 +12,8 @@ cflags-$(CONFIG_X86)		+= -m$(BITS) -D__KERNEL__ -O2 \
 				   -mno-mmx -mno-sse -fshort-wchar \
 				   -Wno-pointer-sign \
 				   $(call cc-disable-warning, address-of-packed-member) \
-				   $(call cc-disable-warning, gnu)
+				   $(call cc-disable-warning, gnu) \
+				   -fno-asynchronous-unwind-tables
 
 # arm64 uses the full KBUILD_CFLAGS so it's necessary to explicitly
 # disable the stackleak plugin
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200223193715.83729-2-nivedita%40alum.mit.edu.
