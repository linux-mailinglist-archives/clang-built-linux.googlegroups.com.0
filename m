Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKXXQ76QKGQETF7V7EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id A37242A5B43
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 01:54:03 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id x125sf19843100yba.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 16:54:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604451242; cv=pass;
        d=google.com; s=arc-20160816;
        b=koSX3aaQQEUBoB8NXBJx5OZaqLCzvtX0LVl7Ya9HpeEURspkLJz0fvp0pkPHivZGCA
         gUWhEPkBae8h4N5kZ8wV0Eve+Dsc0bk94klCOT5W1kqIRwmaK/eLqOMzmSHVAFg9920i
         qpTUPA+dVlSpYT5cNhiB3B4eMgyANK6TE1bQi1WRv0TE0bgkYRO2FX8mlUzwr/ILSD06
         LLUAbk+ewfhIt8EpXtTmW10RRlz9DYOuPioS8h5k2b+ruuG+oGLKbluEea0ZqxakNRrH
         izU6jzNrhY0XCGvJlEaOhd2WDWkpe17qEKSx25NqjBftbNpA8qlULVAAF1h3T1mZ6qj/
         lKWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=ozrsLRvyyd4C7EZpdhigs429G2vSWBST9PY9p61ZBck=;
        b=r6r81WMbKjL0nDSrbfNU1PSGTgvotD6LCZjYSL6dczAPwcu16cQRZtoiMl1l5S+Ds9
         k7fQW06+SEAE5u1vmEUEsbMuOKbTuiMJRDKb7eB0hwmeGUYhYtCjQsb5sfNr9PYBmzhh
         zw4wmk7Ftgp7vC2TRA/QTnk+78bq4GS1Smsm0eNfqiNtjLeN+Lug4e9x+BjxH96fvWKf
         JGDrkyTFw/Fmx44MsT1akm7+8arbiWsTAe/PbkDzkFmTtJF88NwBVJMyQ5khFFTxyn03
         OOJL7Xd7Bx0ocvYWdWZdyv59Of+jfsN+yux5UvOtRinCG+nB5HYISOTngz9bIPjjZKGc
         Z/rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FYNNpzBX;
       spf=pass (google.com: domain of 3qfuhxwwkacwvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3qfuhXwwKACwVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ozrsLRvyyd4C7EZpdhigs429G2vSWBST9PY9p61ZBck=;
        b=oQSaiRZWwTlpWaimsoNbLFi2g42XnBAJmngDp5IbsYaUrqrUMDAGQm0+bUWvWl1EzJ
         j8rahrltMczoR5A8BwnEbCrKZKexsDR2TqstW5/2eTJDIw9qHVJ8SMmw1dDRGbPOL5T3
         QddJGdkcRzNOtxFGX3WKVJAv7CmUv0tSlsHkePnl8wNtoo7Ogjb5enAcApa8QgrSaz6Q
         FK1EaJtlNon9/APq4lot47spuUBHtpHEW8QuIlCDvQqcszGVNtDGqAXGwrOmS5ILIWJC
         iIVBXMRCvKSNPhBO37ZAjNYIHgxFzYDbYIwpR1Yul5xnn7z5a8F/OqqKIWMS5EUYrC+p
         Woow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ozrsLRvyyd4C7EZpdhigs429G2vSWBST9PY9p61ZBck=;
        b=cdhXfdxQxCBdhq/UbXnz/SsNfljYA3N22B9kpXFJzsX/n83oEiwOCmxjOlQahP9clQ
         pucYOgmKaVk4NrQx6RtXZcJDMYtjqYjDxBPgF8s2QzKh5PFimC4reTRgm720AF9bX4Kq
         acTtNQpakqvDUkq9+tJb1c64LYvttvXYPb7/Acx7rRMmo1AAiurgVnReWD0+4VbJXKEJ
         OVak3rarpIky+wLkk9S7J4KNHlon7S7sGeXmT/tP2v4O6M2ObfuMVJVZegAGxHuwHpTE
         D0fyMOSsFNfkUdQ2Q4o+C0UhfoqAepvLEuYz4UXkJ19pxlrL2duJiRug4JzVZ4jfDogN
         wHyQ==
X-Gm-Message-State: AOAM531MUo+q9m+fb/hgxET+wpmnsNU9XciuOnCQOHWqa6EpD51JytpW
	8Fb6w5JFqSefI42RaWZ8/h4=
X-Google-Smtp-Source: ABdhPJyuP/MY/AVdj4nUJ40qw+yURjRgw0RKzF4ScauYpuicaUtXLfYCffd6EBlV2w4PXhJqsIW7qQ==
X-Received: by 2002:a25:487:: with SMTP id 129mr32938736ybe.452.1604451242740;
        Tue, 03 Nov 2020 16:54:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4e08:: with SMTP id c8ls117198ybb.3.gmail; Tue, 03 Nov
 2020 16:54:02 -0800 (PST)
X-Received: by 2002:a25:2a04:: with SMTP id q4mr33186185ybq.186.1604451242332;
        Tue, 03 Nov 2020 16:54:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604451242; cv=none;
        d=google.com; s=arc-20160816;
        b=Co1QrxtBPzBAC0WxDUzIpso0A0HUlP5PunMlSED7uE5ekF+QDrkge9cYXZcaH70xFV
         1XSpSTDNV+Av8sIEwgsaLal8/Cso5VMe2RI250eWEzCFJzCGdBWrlc4r+FMjcXgrQZS4
         fQ+DMY/aXxCkcYfPPLJw3DiHNuNyNdY2QQHJNSRbR37LEoynR8OyvVduSaVDnnDuxWak
         +fPGMW1r15vyn3F4Af60Brbo5NQGb96T6VbK3ghPJ2TsoLOzdcOexG5TtaRJSHAshfzJ
         5hL+SWkaIaq4YpuvSlclLAd383BjWDW4QBMlAeK+Z4fp/Bem7t1vkflrc0XhRl9igY6A
         o7Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=qAidyqNqiCb5KbKHSVTfkxVbZF8KiimMPZ6+hMhgskc=;
        b=qwz3yP8DtCLy2uYdmtlfWun4LYV9Izn3GryZGkzrvl1dlWBwTMvwnSAOZ6cfs5e0VG
         XNG89WtQK6fU6co6ztLipW4s8uoh43+F5dXGE6hHs+OTl9NylA2qcez2Oqj3EULniYpt
         zRItw3rqvpPyblmJD1/yXH6FZ3OTqeKkD+Pb9Hk2zhmriwH5ZZS2DoyEvh1wQXPN1WwF
         RTb8AMP+Ebn1LiVaN/wRh+gPq4nxq29Ee7kjwFWySw0bYTexMlwptr8J9V2I8cTBMsUF
         pgxZigC6mz1L9umKQ1rnD8TinjXTYETrhIVD6u/Vnb+C71o6f0y8QB5CmSbi46nPusXc
         y1yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FYNNpzBX;
       spf=pass (google.com: domain of 3qfuhxwwkacwvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3qfuhXwwKACwVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id g36si53975ybj.5.2020.11.03.16.54.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 16:54:02 -0800 (PST)
Received-SPF: pass (google.com: domain of 3qfuhxwwkacwvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id f5so7789387pfa.18
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 16:54:02 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a62:7bcc:0:b029:18b:5859:d5e1 with
 SMTP id w195-20020a627bcc0000b029018b5859d5e1mr503977pfc.40.1604451241501;
 Tue, 03 Nov 2020 16:54:01 -0800 (PST)
Date: Tue,  3 Nov 2020 16:53:43 -0800
In-Reply-To: <20201104005343.4192504-1-ndesaulniers@google.com>
Message-Id: <20201104005343.4192504-5-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
Subject: [PATCH v2 4/4] Kbuild: implement support for DWARF v5
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Jakub Jelinek <jakub@redhat.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Dmitry Golovin <dima@golovin.in>, Alistair Delva <adelva@google.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FYNNpzBX;       spf=pass
 (google.com: domain of 3qfuhxwwkacwvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3qfuhXwwKACwVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

DWARF v5 is the latest standard of the DWARF debug info format.

Feature detection of DWARF5 is onerous, especially given that we've
removed $(AS), so we must query $(CC) for DWARF5 assembler directive
support.  GNU `as` only recently gained support for specifying
-gdwarf-5.

The DWARF version of a binary can be validated with:
$ llvm-dwarfdump vmlinux | head -n 5 | grep version
or
$ readelf --debug-dump=info vmlinux 2>/dev/null | grep Version

DWARF5 wins significantly in terms of size when mixed with compression
(CONFIG_DEBUG_INFO_COMPRESSED).

363M    vmlinux.clang12.dwarf5.compressed
434M    vmlinux.clang12.dwarf4.compressed
439M    vmlinux.clang12.dwarf2.compressed
457M    vmlinux.clang12.dwarf5
536M    vmlinux.clang12.dwarf4
548M    vmlinux.clang12.dwarf2

Link: http://www.dwarfstd.org/doc/DWARF5.pdf
Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Suggested-by: Jakub Jelinek <jakub@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile                          | 1 +
 include/asm-generic/vmlinux.lds.h | 6 +++++-
 lib/Kconfig.debug                 | 8 ++++++++
 scripts/test_dwarf5_support.sh    | 9 +++++++++
 4 files changed, 23 insertions(+), 1 deletion(-)
 create mode 100755 scripts/test_dwarf5_support.sh

diff --git a/Makefile b/Makefile
index e23786a4c1c7..9056bac0ff85 100644
--- a/Makefile
+++ b/Makefile
@@ -828,6 +828,7 @@ endif
 
 dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
 dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
+dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
 DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
 ifneq ($(dwarf-version-y)$(LLVM_IAS),21)
 # Binutils 2.35+ required for -gdwarf-4+ support.
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index b2b3d81b1535..76ce62c77029 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -829,7 +829,11 @@
 		.debug_types	0 : { *(.debug_types) }			\
 		/* DWARF 5 */						\
 		.debug_macro	0 : { *(.debug_macro) }			\
-		.debug_addr	0 : { *(.debug_addr) }
+		.debug_addr	0 : { *(.debug_addr) }			\
+		.debug_line_str	0 : { *(.debug_line_str) }		\
+		.debug_loclists	0 : { *(.debug_loclists) }		\
+		.debug_rnglists	0 : { *(.debug_rnglists) }		\
+		.debug_str_offsets	0 : { *(.debug_str_offsets) }
 
 /* Stabs debugging sections. */
 #define STABS_DEBUG							\
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 03c494eefabd..c5b54ba51060 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -274,6 +274,14 @@ config DEBUG_INFO_DWARF4
 	  It makes the debug information larger, but it significantly
 	  improves the success of resolving variables in gdb on optimized code.
 
+config DEBUG_INFO_DWARF5
+	bool "Generate DWARF5 debuginfo"
+	depends on $(cc-option,-gdwarf-5)
+	depends on $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
+	help
+	  Genereate dwarf5 debug info. Requires binutils 2.35+, gcc 5.1+, and
+	  gdb 8.0+.
+
 endchoice # "DWARF version"
 
 config DEBUG_INFO_BTF
diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
new file mode 100755
index 000000000000..156ad5ec4274
--- /dev/null
+++ b/scripts/test_dwarf5_support.sh
@@ -0,0 +1,9 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+
+# Test that assembler accepts -gdwarf-5 and .file 0 directives, which were bugs
+# in binutils < 2.35.
+# https://sourceware.org/bugzilla/show_bug.cgi?id=25612
+# https://sourceware.org/bugzilla/show_bug.cgi?id=25614
+set -e
+echo '.file 0 "filename"' | $* -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
-- 
2.29.1.341.ge80a0c044ae-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201104005343.4192504-5-ndesaulniers%40google.com.
