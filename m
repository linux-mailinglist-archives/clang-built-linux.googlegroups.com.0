Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOONSL4QKGQEYRGC2WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3831F234E59
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:18:19 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id n32sf21460324pgb.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:18:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596237498; cv=pass;
        d=google.com; s=arc-20160816;
        b=uyXlmZpM9YcOxBhWqqlKarTep785+23RUiXXaK7rHUrgPl3PEBmIvAPL64JqX2noys
         eVPbpmBCAqC3tBBXJWbQ0ExC2IOl13geJ0BxzAozFEWjsCOGK2xjJRPU1s8Mj36jmuW5
         g/W2WS3ufGzcR3lgNrNjQSXt64wQRO6tgpyaHWAjpX5K8CU8TW30ekHQi92wYxO4wkqs
         R2JaXTjp4br9lPRmo1392cB07N9pOE00UKh2C4GSITDc5nNH8dpKjpPepRGzLFWdacc8
         ztP/riMzFqg6fAH7W3uyCGXuXjdobweTc/+cqmlGqBUXHGqyexQDR8URqYz748U1XGLz
         cq6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=TG1wE7VAftQGlAmM1YmWdv1go3AkSaDkb0s8KYe+bZk=;
        b=dDftUfGTYTVKROcqJETRH6NOfDf+dE62Uaezs9GLjJ39Tv6hZysov7agT3TlVWuv7w
         xuFfYMqvqObLPPCqZvPScObT7B7fVajtCH3hLgp5iKElqfas+bOkzGM3Ayi5s9k2xOla
         faxNpUdMoj/n8iH2ya4qCL8nuLef62kR8e73glO99k7yZw//JNaQb0u664Tq7sQK8XcW
         SjGr7aSXBLVMDJPnxHZjIUXQcy4RB86Ns87CXlSdrmSo4VATinrfrmWAiMaOhuwgZyKA
         K48M/hFPMOM8I/KSJIKNpH1pkb2muv71xtJEPvsPly640GQI/S+rwCR84iOhlC2ZPOiP
         yHaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CBwwwhRe;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TG1wE7VAftQGlAmM1YmWdv1go3AkSaDkb0s8KYe+bZk=;
        b=AyR5PnLG9zUrqWAWhHJOeJe3ZPfVkvhvRlW5+sW69e7OrgaEAC9cAk/o+kuAOtcSBH
         n6KWSMwY52zJ2V/TeeHSWG0ubpb+QMKtmXzPKeHKNDho2czdQZWV9RGnn0tNG3VJriD4
         A0PSip+oqrHkJ/l5RLUo4x8aLBlKwwyPje8gqRNi7Cic1phv5P6aYpXbiim1oWh//IJT
         pvvYCXHm4IIJ9tghi+W847PVnisvHgSxIM5YWqtgMVe1+GUcJGYz3v0adqXb0V95NGCa
         RX+VVBc2krVJ39+xungaRE4lFxGU4NiOwWXakWkJ1TYc7sE3S/eyMDYz3aivPwGFArg8
         nXKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TG1wE7VAftQGlAmM1YmWdv1go3AkSaDkb0s8KYe+bZk=;
        b=VIYMubcOAPblgBELDxcRb1a2tZjg2buBtu2esyG03uDSkCW2Gvn2oHuarwZQXxsNnU
         lVQW0x9nIuefAKqRTxw5u6IFYXe5CtWu5+gx84UwYORQehWmCS1+Z2EFHQLj3CCdBiji
         UoGnJ8TtWNbnL9rswmJbC94pI/L6bFB7kOgw8AWCO2BvqPyZJbS+oDgdhWxuVrZ7S93i
         26w3E9Y0QqwJbd8GK9Fgq6eyDqKii8nOxxEE2bTB9NCYK2gK6AW+n7gsV7KVM3roSNTV
         vIDGi1N75rUf6vYCrkZf3FUALrfTErM2Xlwqb5QdRLD7/gQ7urGk4up/KIiQ9ZTvQZhk
         V7Ug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53140I8f3uk3hGGTy/uQ+KZL81e4lsaMIPhoJExSOox+zwo9548N
	wn36H/IlGoPYVWyiuwCiKpw=
X-Google-Smtp-Source: ABdhPJwathpKpe/KJAq3TicvC4/X+X5SS7oUT8NWZN3jhwiR/BIyBpgMjtIyH2kM8W0uq7k+y+eGBw==
X-Received: by 2002:a17:90b:d8e:: with SMTP id bg14mr5916255pjb.41.1596237497891;
        Fri, 31 Jul 2020 16:18:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:142:: with SMTP id 60ls2121330plb.9.gmail; Fri, 31
 Jul 2020 16:18:17 -0700 (PDT)
X-Received: by 2002:a17:902:7604:: with SMTP id k4mr5695635pll.30.1596237497578;
        Fri, 31 Jul 2020 16:18:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596237497; cv=none;
        d=google.com; s=arc-20160816;
        b=W5zkxjp7bMkKFg9TCzB0TXiUridco8KMQneG2yyXNqFoJKdgI8jfsvatH5jqXgqKib
         r2z6MMCYAvUtvi4J7My0F2h3C6Qk2M6TVjMPP1V5hZkR2oUa/n+DF3T03Kv73vhx5+bL
         bLmUJtGYaF7tHyG5NuBOGCGr1xhx+zEsdNPMza7qYkadkAevBiC+iuMu0foJprJXhG/a
         dgeH3/9s2y32+KCVa3cVMEHwYb4PXpAZX7bc04mDxpTcc5xLYmB0/ksk2JRC3a7Y48/U
         hq+Mr22tcRSy+vJPGiAdqpcWlGb67GoPXkXGx9/pcvWBMxLXled++NAxdzJHoj8HLMRG
         QDQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ASfOQ/kuJ12Krf5ZSehq5O7QSVOARTcDMayUR4wNtMg=;
        b=Y4tHHeIzut/T1/t7LO0JxC+8/vLoF830GOUX1CU4nwiWKKB0yEMz61lZ1I9gfLAnm4
         7FqRkywdykfNd7hIPYykePKxt8MxZkZeb3AZfHEuC4zTNC5DfJCu0MrgjlSdeko2xXBM
         Zq5a8o/k1xqPSYdNrUMbpFPnhHPaNMYZWXBmuXrPZO3KQ9cMXQUyAYxORRjz1ZWndG6V
         pGDt2unJ7qWriIYf/DPyjHBM37gD7soOq5VwS9fgquszAshWtAxvImiztj9W6wHLpjCz
         lqkwUPPG2DTCEunoN/d6e7K5jfz0tL5LMvpIRgtoJeCCEtZO+bY9uq8Rz0eJX71RC4rZ
         YR1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CBwwwhRe;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id jx18si412249pjb.1.2020.07.31.16.18.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:18:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id t10so12775743plz.10
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:18:17 -0700 (PDT)
X-Received: by 2002:a17:90b:196:: with SMTP id t22mr6432467pjs.13.1596237497321;
        Fri, 31 Jul 2020 16:18:17 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l16sm10621043pff.167.2020.07.31.16.18.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:18:14 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
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
Subject: [PATCH v5 26/36] arm/boot: Handle all sections explicitly
Date: Fri, 31 Jul 2020 16:08:10 -0700
Message-Id: <20200731230820.1742553-27-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=CBwwwhRe;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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

In preparation for warning on orphan sections, use common macros for
debug sections, discards, and text stubs. Add discards for unwanted .note,
and .rel sections.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/boot/compressed/vmlinux.lds.S | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/compressed/vmlinux.lds.S b/arch/arm/boot/compressed/vmlinux.lds.S
index 09ac33f52814..b914be3a207b 100644
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
+    COMMON_DISCARDS
     *(.ARM.exidx*)
     *(.ARM.extab*)
+    *(.note.*)
+    *(.rel.*)
     /*
      * Discard any r/w data - this produces a link error if we have any,
      * which is required for PIC decompression.  Local data generates
@@ -36,9 +40,7 @@ SECTIONS
     *(.start)
     *(.text)
     *(.text.*)
-    *(.gnu.warning)
-    *(.glue_7t)
-    *(.glue_7)
+    ARM_STUBS_TEXT
   }
   .table : ALIGN(4) {
     _table_start = .;
@@ -128,12 +130,10 @@ SECTIONS
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
+  ARM_DETAILS
+
+  ARM_ASSERTS
 }
 ASSERT(_edata_real == _edata, "error: zImage file size is incorrect");
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-27-keescook%40chromium.org.
