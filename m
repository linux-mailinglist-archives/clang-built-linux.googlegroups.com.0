Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBYF24HZAKGQEWNKEZ2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id E3148172D10
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 01:22:57 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id a206sf741700pfa.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 16:22:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582849376; cv=pass;
        d=google.com; s=arc-20160816;
        b=O8eubctkOnAx15+/GE8/mKc3qjrG+v7Hqg/a5PLP0wSO9i4ilHn1cl5sWhIhgBU2Hw
         OUj1S4JSp3qtC8IIy4mZc4898jqLX2mASvX15QU5JxRRNoaO7viPs/hiQxAri+Yo4xd2
         XZ20ikTteTSArA4459DY3I2xZnNbDvSpf3rxOuv1bE1iaOS1fdgizFRdPtw9WM5BOiI2
         S+DHxijD3JaSFg9Wg3V8Mvhs56F37LppaX9gMNRxp6awqkwEYX4hA2BDxut0RrOcBmu4
         Z7lEbH3pW8yiV9XzLHtrj2jGUrwZhzJ8PpqF/UeQqMbz5kM5D+KiCENe8mKXEVlQGXF9
         78SQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=VGlg18KyVo8qKb62ZKN2wAxT9lT3V7+F5e61nWYuW7I=;
        b=0CFFxzIkw66+ak47JzKoGjW6pNKYuVseqgYn3B7L+InbQx0AkUyII1dkp2Ov/peFAV
         zLSiktNskiBOmHJ5LNYxjIBxl+lKcHr8wHIlWgPLeZgNS1pBLL7eNbBWSjSvamod/g1H
         KvKynqwvzl1hOJ4W3vQfV7+VB+xtVqj/KDOB89HbmR5d/EOIz35wg3OLDfxVh3ACzA95
         8xIp+iwIYbIb8+3PENoIuCLOJlNPUBXdsuHe+GjP8Aon/d8FC5bypbWuhAv9Bc/hD4FS
         ctVsQjFrI5fEb2sopScaJ9y5K9JbYbJxMxw4bHC+txxATW26S5+qljPBLq3+6FIuUXq3
         lr+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NdpfQ9E7;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VGlg18KyVo8qKb62ZKN2wAxT9lT3V7+F5e61nWYuW7I=;
        b=HVTe8DhewEkshxlBY1yEa0C3Q6rBaDxd/upWHe0tZaqeKA6MR7Zq2NHxfRa3nCosMI
         x3Ak3cm+ngfHPwSxK1MFx3XYevOEJ5TzJwhnJlmhcdgLECHEMUtUcd9x7a9C5YzdOQh1
         cCv5UnEdmTssgKGDKsYiQmAVnvi6rX/grSBiIcXvLM7kEIeDV6TLTJsOeqtfhwLoR881
         JzQ6/kj/FQH4sKqy8+3hv76LjrZnzBJJGEByKksK9rrYf+VA8kAiSrLF7ZA/wMKWTp8E
         U61eQBmhTlbwtomA/t/vbi8gwQrUQZusdtJIoYv+jUHc4jeQqsspKPjozWrdWjcWxLhk
         NdjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VGlg18KyVo8qKb62ZKN2wAxT9lT3V7+F5e61nWYuW7I=;
        b=UzF1QoWcMBJWaLY0PBd6BrcYfiv1WcbKSkrU0N63a21pHZR47XqoX4WcahLcvZuQPd
         MYjw+dPYnsB44GQ61vL+UIijI5DlDMa5f5ZAmp/T0p3d9F/ki+SXiX8lLYLpOtZgn1Lg
         HRlLdjDbbXfw72arPn1xnpATXumxj+/Xblxi4d4MPHPDObs15YDiiMlUReX3AiX4FA72
         Js4RGXcGHXHq5fl6y/dpHyhqLdwNUExAWiCIupQkxEeTjpZNhMdGVxmFkoON7nOICQlc
         zeLACTLT3E00BGL7Eeg+gR87phYUdz3VldtK/mAPyH5wDKPu+GNI5ezb/4L0S7kg05ry
         McEg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXZk1JeAM3tx/ciVe88stqdrxphIkwGuahsGEtym3FG+C4U/Byf
	rHPYloyOXckMVhR4cwgQcSE=
X-Google-Smtp-Source: APXvYqz3kD56qlnK1AAgq1NEFoyK54u5nuL4vEyDMCdw+KNzfo5HkJmCvqWFxvYIJ+phg2TTitfUKw==
X-Received: by 2002:a65:62c8:: with SMTP id m8mr1879048pgv.69.1582849376578;
        Thu, 27 Feb 2020 16:22:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ad06:: with SMTP id r6ls290780pjq.3.canary-gmail;
 Thu, 27 Feb 2020 16:22:56 -0800 (PST)
X-Received: by 2002:a17:90a:1697:: with SMTP id o23mr1716865pja.62.1582849376186;
        Thu, 27 Feb 2020 16:22:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582849376; cv=none;
        d=google.com; s=arc-20160816;
        b=wom41V3On7QmvZ6foh5sQWzxNtwSpVZdDpc2OUgyzDJ1wjTqo+p7QplPbHdo1DlykO
         DJk0ct7LyZm6YROlHr0+VeuhKCMLDUbedA33Wh1/mSBch+ocF6gMPRJmEnHx6fuqCkEy
         Y7oHasDhAOEQ0dGkYB6Cji6Ip0/zZR+/iozgWaTrVvnruWN4NwlSg0MRUhyhO4iQOilc
         mkacjTh2K0ZJoWCDkDXOAxMsCtqJY/c2K2UjpXDEfil3I8HRsSQjxMqrQQzldk5nYTGU
         Bt0dmkoNekQpfgRozObRLPS/3El8I+pBRcsQz7g78SN8W4gW1TwdAzEXt4aH/PxbRtIr
         /OFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5pMXhDd5WkHmc2Nd9+Jjb38fhh7Zetn6tk9gX3pPvjM=;
        b=zzcyf7jYn+WeeDOwBzzF8xwqCU1mX5kfXQEYFrZCWYN63KNt9CwptaJjNTyrEkKsDj
         k9WMKGf4jW9lwoBT3OF1P/CZvbmxQ4MZaIoyWNd94InsXYYWfjtyDnohKx2etjxEM1Ha
         iP4lRiJU1ctBEIdSHLr3rs1PQq2/GuuZWHhyR+NjW6tl6gnT8T/K4pPz55olUDaKAff2
         OSavEN/u26+/FWxV9rT3urvfK1i5I7FDWIDww1I7IRRAr350IwCHxYjWNNoH5doulOpW
         CFDWNWHbNoVh0Yxt1We4+03QACEOXQ5WZfSxwAxwvQDo87USpymDoES5g+wsM14OH8+K
         q9/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NdpfQ9E7;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id h2si399850pju.2.2020.02.27.16.22.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 16:22:56 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id q39so511508pjc.0
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 16:22:56 -0800 (PST)
X-Received: by 2002:a17:902:694b:: with SMTP id k11mr1375405plt.334.1582849375873;
        Thu, 27 Feb 2020 16:22:55 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 3sm8455845pfi.13.2020.02.27.16.22.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2020 16:22:52 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Cc: Kees Cook <keescook@chromium.org>,
	"H.J. Lu" <hjl.tools@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	x86@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH 9/9] arm/boot: Warn on orphan section placement
Date: Thu, 27 Feb 2020 16:22:44 -0800
Message-Id: <20200228002244.15240-10-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228002244.15240-1-keescook@chromium.org>
References: <20200228002244.15240-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=NdpfQ9E7;       spf=pass
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

Use common macros for debug sections, discards, and text stubs. Add
discards for unwanted .note, and .rel sections. Finally, enable orphan
section warning.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/boot/compressed/Makefile      |  2 ++
 arch/arm/boot/compressed/vmlinux.lds.S | 17 +++++++----------
 2 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index da599c3a1193..7faa2b5e7e16 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -136,6 +136,8 @@ endif
 LDFLAGS_vmlinux += --no-undefined
 # Delete all temporary local symbols
 LDFLAGS_vmlinux += -X
+# Report orphan sections
+LDFLAGS_vmlinux += --orphan-handling=warn
 # Next argument is a linker script
 LDFLAGS_vmlinux += -T
 
diff --git a/arch/arm/boot/compressed/vmlinux.lds.S b/arch/arm/boot/compressed/vmlinux.lds.S
index fc7ed03d8b93..a6a51b5d2328 100644
--- a/arch/arm/boot/compressed/vmlinux.lds.S
+++ b/arch/arm/boot/compressed/vmlinux.lds.S
@@ -2,6 +2,7 @@
 /*
  *  Copyright (C) 2000 Russell King
  */
+#include <asm/vmlinux.lds.h>
 
 #ifdef CONFIG_CPU_ENDIAN_BE8
 #define ZIMAGE_MAGIC(x) ( (((x) >> 24) & 0x000000ff) | \
@@ -17,8 +18,11 @@ ENTRY(_start)
 SECTIONS
 {
   /DISCARD/ : {
+    ARM_COMMON_DISCARD
     *(.ARM.exidx*)
     *(.ARM.extab*)
+    *(.note.*)
+    *(.rel.*)
     /*
      * Discard any r/w data - this produces a link error if we have any,
      * which is required for PIC decompression.  Local data generates
@@ -37,9 +41,7 @@ SECTIONS
     *(.text)
     *(.text.*)
     *(.fixup)
-    *(.gnu.warning)
-    *(.glue_7t)
-    *(.glue_7)
+    ARM_STUBS_TEXT
   }
   .table : ALIGN(4) {
     _table_start = .;
@@ -124,12 +126,7 @@ SECTIONS
   PROVIDE(__pecoff_data_size = ALIGN(512) - ADDR(.data));
   PROVIDE(__pecoff_end = ALIGN(512));
 
-  .stab 0		: { *(.stab) }
-  .stabstr 0		: { *(.stabstr) }
-  .stab.excl 0		: { *(.stab.excl) }
-  .stab.exclstr 0	: { *(.stab.exclstr) }
-  .stab.index 0		: { *(.stab.index) }
-  .stab.indexstr 0	: { *(.stab.indexstr) }
-  .comment 0		: { *(.comment) }
+  STABS_DEBUG
+  DWARF_DEBUG
 }
 ASSERT(_edata_real == _edata, "error: zImage file size is incorrect");
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200228002244.15240-10-keescook%40chromium.org.
