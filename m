Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBIGIQD5AKGQEVXSOXHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A94824E0DB
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:44:33 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id d24sf791635vsr.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:44:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039072; cv=pass;
        d=google.com; s=arc-20160816;
        b=vWn+EXi3QTIHMZwCkNxHdvSu/1xeIaGUsCPRWJTShY/R7/8hKrL6FpgXNnhl9Wkgme
         7c9AomXshueNf7kLBCHyCO0wD1xOP8LJ/d24LwZ9CcDuBRT3art+KaIzgRc+3FCh5mmX
         9CeYXWsRiplyHdhyLPOJLx+6iOVKO+5UtvFjBSPerDQs254vR6nI2n2lzM16Py2vNvGQ
         EB5nsWAr5A3l7Qa4dBLv1YvUpbdZU2+rwSbV5I6oQ6VWnZScFzKT5zMd5XNHIjqfKZeG
         d4dIHPbTw0JBIqUbcSzwiFUE0oygipPBfVzJbVtF6WWWMkHsnHx92sEhw2OucraSxPdI
         I8KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tlHPwXqChuom/IjicuDwg+xRbbvQQpOgnCuryZ4dD8E=;
        b=rZcXJq9K5yli4iEW31KKUMzJyu0gvdnGzx9wfkgXPdahH7Fc+R4FPaNhhH/ad6AH5I
         hyI/WG619sURgRgTpKyH0Y93fUDtMaf0LwMWoQlBnC1yuqR0jWtMTFdfOKSIUI+y7sQR
         l1oRHB21adVxWCn4pwgalKqfPblrn/hLsFQxIntqVfRb1BRbyg7JBGAmAVB9fvEhpAWX
         G7b2o8Tie8W8k4CMMeTJtaFyGfzf37VdNk+fLe84zgfiMUzy3HiLvOymkCnBmgFG3TrS
         hXn/b3MIQbPg/FlKN0xdHbOpvJ2INDIChr3NidvZD9JJqd7d8sbVVlqygDPEg9oDL4Hb
         B0BQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SBMpGd4s;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tlHPwXqChuom/IjicuDwg+xRbbvQQpOgnCuryZ4dD8E=;
        b=dGcIWLBJKVvbqaNjcDR6UqEjQqPsrBENbdQjlZiUSGoFX5LphouFz9MYNUSEliCmCy
         4bAxtAS3zmtzJKe9dX1p40U0mXOyf5jInz1bZLm3i1RLxNIxuTbb4Yw1K2siUAn8VS0M
         qny/dzmltS2OrHRuO7Sm+6XusngdUKqUlr1F9Gvmra6jzakkFK4i07YVDLR/83C6oXgS
         zA/yhFzHNi/j00YhuLl5cyE/uFszoKHdgNmw/uZz18A9jCeCw1BpHKHF+BxJyMNdpHyp
         Ym2wTrHUOIe+g1RL/szySUUQNPQYebypTp7qwF1d0qmRkYxsof0i9Smt0FXYqDcbFMV8
         arXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tlHPwXqChuom/IjicuDwg+xRbbvQQpOgnCuryZ4dD8E=;
        b=U/B1fsavxvYLn/PyjFs9PZWV0CAQ0VQNJ/mtJyfWHiufEH68HX5URxv/dsR5GrSl9+
         hbJr8mVE7RDg4IL970vqBRLrJG+4p0BFE2AfPuOQ77qhZfnkodSEJYZvAE5G+Bn1xBdi
         4YeeDl2+oLvGxa64e3bX7/8E6Na2RSAACvuIhvtAvKBXEQXgevbVtKANXMMVSk0XVxSg
         QWpil+xtK7hWzOIqf72a/jxAbWnWNmyQfo+PQJfS5Rf/s7G5x59HlqFilz3HO2DQA128
         spXdx+zLDjEOrLOCiggPyX7P5yjaYYFIM+6XJIt5pWE6VVFXw/tfJUWS7uiHUUTKPXBM
         6UTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wvg1XLUTZtlGxtmAzjuItUeZEzmKI6vOMRsCvU2luL8pbI5M+
	XmsFvDclfCrij+h5dELVRiM=
X-Google-Smtp-Source: ABdhPJyRVSybpIHfMSZMfjPWXMdPNJ55CEOr1XuS/PFzFMvDuwLvs8CbNhM7xCC38LUgwVaX0ebytQ==
X-Received: by 2002:a67:ecc6:: with SMTP id i6mr2807874vsp.25.1598039072646;
        Fri, 21 Aug 2020 12:44:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:dd9a:: with SMTP id i26ls399525vsk.6.gmail; Fri, 21 Aug
 2020 12:44:32 -0700 (PDT)
X-Received: by 2002:a05:6102:822:: with SMTP id k2mr3015885vsb.129.1598039072327;
        Fri, 21 Aug 2020 12:44:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039072; cv=none;
        d=google.com; s=arc-20160816;
        b=S8aV9Yd2HDlNBEykMTNKBiAW0zVf8biA8FIIySahWw6oDr/MUXw57DAVohUPLZmERz
         xdiX71t+m94sJdHDF3uef7Ceo1UkmYORLv7JYR357nXtq1ZxRINaCSSn74US/0IxCrjC
         yP+fXbPXpHw5WZIckeqQfPIPImKz/u0tijGbktjTUt1FaDPnyE1pU/1z4PvP43+ML81h
         hzFMloDin3y66RHVdp40At4ZJj/YNXnhyADPrEUSK53t3pr2KjgHpneRhri/ZTT3kxv2
         zz/KBvc44WbixK4n18U/04v0u5gP++tqv70mfFatfVq5VLj/FUQyzcDbG5dDn5bKwbvo
         wxQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ASfOQ/kuJ12Krf5ZSehq5O7QSVOARTcDMayUR4wNtMg=;
        b=j+vuNrlKRRlU4kAYTWeWjdKQdkIYbeMDxJWtuTNbkwaDpM1yrxRLW9oMeYy1A46nOv
         NAycsXs9KKITix17XvBgGtZYF8n3RhYgzMNRKggqp0F7QGu2hKpxcUTZIXr6nyj1+LCM
         acStJ7spx9+8OHr5GbiimsB+NlbDsRbONZYKwpQFKbfBK+FV0csXl88QzisVuNg6Myoq
         8bn+aFRn5P1E8sOfJE19FvJDw24MjbKFqYLPbCLVFMXNiRSNUY0GfDQBlX0JrBsN6Pj7
         6RklLd4WWbJoFDrp28BSsPdg7t6fHXcyyoGsnPRHdA8dlvDR1+jhG+SikhgR/HNG1M+7
         /U1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SBMpGd4s;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id p8si155738vsf.1.2020.08.21.12.44.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:44:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id 189so1456553pgg.13
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:44:32 -0700 (PDT)
X-Received: by 2002:aa7:83cf:: with SMTP id j15mr3532874pfn.251.1598039071474;
        Fri, 21 Aug 2020 12:44:31 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q7sm3300258pfu.133.2020.08.21.12.44.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:44:30 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
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
Subject: [PATCH v6 20/29] arm/boot: Handle all sections explicitly
Date: Fri, 21 Aug 2020 12:43:01 -0700
Message-Id: <20200821194310.3089815-21-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=SBMpGd4s;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-21-keescook%40chromium.org.
