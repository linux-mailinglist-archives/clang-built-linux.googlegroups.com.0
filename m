Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBCMERCEQMGQEGZ2WIWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A353F3E64
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:51:38 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id 66-20020a9d0bc8000000b0051aa462e094sf7285025oth.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:51:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629618697; cv=pass;
        d=google.com; s=arc-20160816;
        b=FsS8wVuf34FKYzTjAXWFIt8ayB4krkTUaNHZcHQ4fxSoXwmHRQ01Alg1EpHC/mKdmw
         0tYBJjiw8QPIopZuUYVV1GRCwduE2bC6d5e9YH2vJ7ALbS5vjJUZF4N5rIfGuq86pLJT
         s2iK/XdusPgmb/LWFkWfgCa7PSQvFKRC4LT1auYVlA5JF+twse/Uk1XcjW0qxaAUqTIS
         0GtOsCOairsEWd/jSEHftV5xvAYt+roLbnfn1nbQa2yAnXcgGABR1ejV408gqJOzL1CQ
         dJFXwr2k1Xp5j8vNmap0XSEvqqywwjrw7Di/nl73p3ypKy7SOxPJIOmqQHP+5cTXnO40
         zL8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Rn1F6qeJJyReifFi6U5DFS1pktLpsT6GhmOUTgiLTro=;
        b=wWqzTog36Www52pB8SH9fkQ+7tYXDa0lBEFWNKtiLg77aKVj88h8ZS3WCVGkOGPWPt
         CJCJE36heoPjcRTLvLr0MhbMwXVNaJD+iPnIMg0ZGeQ9KcCePoFA3U9dfln9wMeTP/V/
         IQaiET4w483/W3rKzG4Kfw2e3n5im9vRTovWFBeOirLqofa8tG2nv31AP33YrjGTkEKt
         wo2omCIXKW7GD0DQ6piY7lV3jNRzi7OqfXMklLcBdO9d2m/PE0sbxA1vuGf7o/smji2K
         HUmM1TtbtXyyoBy3EDP6NmAIwT/OunA8dCZ00w6tB76ukOb3mmBva8amck/qT/SHBVLC
         9pSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=USFeAqU4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rn1F6qeJJyReifFi6U5DFS1pktLpsT6GhmOUTgiLTro=;
        b=G/za3TFt8Anb93TMl9YjugSoySvPMeHJCBswJTCe7oW21SpKFh/gXRCzfW9tyAkN7V
         x9jn9JjeHUa1buUVjLb2wDmGftmJy+tIhYpHiKAHkhoWUsDbcr+Iau0QT/lY1oIhggig
         fqQWo8ary9+/ht1xmNpCPpaXK2MR1lB89pa87SHQhwIp1sd3GCXENYhE2RazA1sYdo2w
         W5C7ElNQIao9NvFQA8lYK41bJGwpSTma2FbPF9HDMPpwU/By/lyyZNQhP/P9jxz3B+8H
         sjWG0Tteh5xJJIzgZ84kLJOl8cPeFWQgzLNGFR/oIu353gqofhJEAVxSZe9sjaQ1DZgJ
         N1Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rn1F6qeJJyReifFi6U5DFS1pktLpsT6GhmOUTgiLTro=;
        b=Wb5pAUBNaL9H8Wp/UCOK9s2eFPdpYZE6jQolpAhFecW/XsaGNCTiJNUoQoVj/WgM9d
         5eF73VGMGlUXOdXNFQvx+0EfuIoppfP38xlaZMPLVK/OyfWGtGBgjBqlQJEri5bU+IoJ
         jfyEznbX9HnEgalGJzc9A1ITGOkxqynEGsUE+hbx4egdeVdrGVmShEQh1qF0a+5fVF12
         uM6ChZMHBcripFtLWl3scsKuvemE9PFI0nXf1V+boNnYD8ciO6mMpd2LZh5Y9ImxUpjm
         EcA46W64kik2FEXHPczAbzvPVyVzMRHeOYWWb5IIZU6zr+dTbIdGs4BW4FYr9ZoVpl5j
         nXJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313KnN/A/gBQ0ruCESyNsxnZmkk3VJy6pFchn0iwPyTYBzur7YX
	pmtyd+jG5f49mu14iiW3yqM=
X-Google-Smtp-Source: ABdhPJzKIba15CWVvLfPN2cLDcwTMxQMK996voCwlQOhVQUQOSEqBMzhc9cYFye4r1j9KrB62vQyLg==
X-Received: by 2002:a4a:6d4a:: with SMTP id w10mr22065860oof.60.1629618697099;
        Sun, 22 Aug 2021 00:51:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c15:: with SMTP id o21ls2829477otk.11.gmail; Sun, 22
 Aug 2021 00:51:36 -0700 (PDT)
X-Received: by 2002:a9d:a12:: with SMTP id 18mr23566552otg.252.1629618696735;
        Sun, 22 Aug 2021 00:51:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629618696; cv=none;
        d=google.com; s=arc-20160816;
        b=koFqq0UBuBndQ4G9FI36dsQbSy+R170GY/YCyLP8ebVYL53/35nE9WGXk/5L8i8VS4
         kHxop7JFqQ6l4QV/WqQEhiQWCiTdvhK/zXTYSuCzqmBeAcMdZtB3XkMwu1o6fdb4Omx3
         HPTvJETzz4r7MNuyDFQZhjnJtpMBbPBTbDPPBdSdlKcBtuNpF56dUdF5arJekGt3UZ9+
         CihjG644rcS4u0FjAXOIOyodXx4xr4MBfT3gbxTSt8DfxLKG52YgLWIb553jgJSG+UP/
         +2IzonfVHP57s7+LS+7Bq0P8/RapMDU/sUJTG4QLZ2H8HqDC/TE9M0/2A7aTTdmwFK7H
         r29g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CuzECHqSba5eY7nnFJUmPxt/bYBuzeDhyAa0OVkC4n4=;
        b=bJM9xU3Kj6kY3vu654LsfawPQRfckEQxswp2XqCj5oGPEokV0HWvyJBrb7scyMlzu7
         QuvbL9ISQKmduhusZUd038goKaMPJaHPJmtnI0sZSvo3QpjO3ZFSwiv+ymaqkygnS/5F
         5qWP0IF67rGEyAjpXuVqCcWJ/w/ve2lTHWysAtFpug53nv5joW+IXzbRR7dV4C4DU8dU
         0meoXGVk2DMSYqHNEtD99xGh+CTL5wU2BsKT4AI65d70E/8Ihe6YHE2imrhjPm600hvo
         cOVepQXAfcZzFeGsnRipJjdjR3jHG2/IB33tnsvh0JU+HWwTr5zAhbfPbSH0lnRwhHYX
         ejVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=USFeAqU4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id p6si355576oto.0.2021.08.22.00.51.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:51:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Received: by mail-pl1-x62e.google.com with SMTP id n12so8388775plf.4
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:51:36 -0700 (PDT)
X-Received: by 2002:a17:902:c402:b0:12d:b2fe:f0f1 with SMTP id k2-20020a170902c40200b0012db2fef0f1mr23624016plk.9.1629618695830;
        Sun, 22 Aug 2021 00:51:35 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c2sm12338876pfp.138.2021.08.22.00.51.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:51:33 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 14/25] lib/string: Move helper functions out of string.c
Date: Sun, 22 Aug 2021 00:51:11 -0700
Message-Id: <20210822075122.864511-15-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=15944; h=from:subject; bh=fdPsodWtszorf3587zUcTPJmGc3GEyAiUFPzZGwGXEk=; b=owEBbAKT/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH3TR8TGm5yRlZPvSOdrEKiiOFp7tL7cjwQnF3e BnpeiAaJAjIEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB9wAKCRCJcvTf3G3AJnX7D/ jIkMWAmbwMF4RwEwkxj2KEpgGHCwmIkz/nkU5g8E5+vb39vpSvl/MAlASCt7qZYshwqzAuBJpUsGOD yasCerv+Qka8zJmGqfWIA8zKQ+bZkXawdCusXFZ/IbyhNmCCzk9D85m9pixePTuMikADPhZmYxUlGz TXmk9tvlzx9U3Np2clRUuDJwjFq1q3N+aRjLVjvzUOt9Ukgd2zS1CyzGNrTkOZ82bUbaBr5WzouSOj TRHmEmC/UEFkhxFOixtKR2HlY+mWlyB0RUiTkC86ClUaPw3cNw5KYvnTOID1Ujd/aOZbKDvoM5NSWG I6Gg3s8SXIXvmSkD31ZydtWBdDR6DRwyLpYt/3ghz4kLZnHTnC4PHE5I3VCbVPgb0i6LzRpaadNLiy r3M8WXJBd0RglXQpHXtnDafar3TuqNrLlTiBsedkwtj7fZLWt1xLu0IrGin88H1uRT9hC6LhZ6ciF2 FSK8PnNGIRtAZnnHuncgnjXnNGyz1FRfwDssItlFGYwQrhf0yFbX5tv+1MYnGCnHQ8OMyaRkxFF/wN RfBfhIrfcFsc1q78qJMoiGJjCrWvOpwmyFbf1eh8SmZJHu5TtgLvHbVsBeYxlcLtWZjskGPCbKxIJN f0aML/mnkeJ7yJjv4uP2JJdn4i+EMT5UcZQu0xAT77yCILeO/n3/6HHAS2
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=USFeAqU4;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62e
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

The core functions of string.c are those that may be implemented by
per-architecture functions, or overloaded by FORTIFY_SOURCE. As a
result, it needs to be built with __NO_FORTIFY. Without this, macros
will collide with function declarations. This was accidentally working
due to -ffreestanding (on some architectures). Make this deterministic
by explicitly setting __NO_FORTIFY and move all the helper functions
into string_helpers.c so that they gain the fortification coverage they
had been missing.

Acked-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/boot/compressed/string.c     |   1 +
 arch/s390/lib/string.c                |   3 +
 arch/x86/boot/compressed/misc.h       |   2 +
 arch/x86/boot/compressed/pgtable_64.c |   2 +
 arch/x86/lib/string_32.c              |   1 +
 lib/string.c                          | 210 +-------------------------
 lib/string_helpers.c                  | 193 +++++++++++++++++++++++
 7 files changed, 208 insertions(+), 204 deletions(-)

diff --git a/arch/arm/boot/compressed/string.c b/arch/arm/boot/compressed/string.c
index 8c0fa276d994..fcc678fce045 100644
--- a/arch/arm/boot/compressed/string.c
+++ b/arch/arm/boot/compressed/string.c
@@ -5,6 +5,7 @@
  * Small subset of simple string routines
  */
 
+#define __NO_FORTIFY
 #include <linux/string.h>
 
 /*
diff --git a/arch/s390/lib/string.c b/arch/s390/lib/string.c
index cfcdf76d6a95..392fb9f4f4db 100644
--- a/arch/s390/lib/string.c
+++ b/arch/s390/lib/string.c
@@ -8,6 +8,9 @@
  */
 
 #define IN_ARCH_STRING_C 1
+#ifndef __NO_FORTIFY
+# define __NO_FORTIFY
+#endif
 
 #include <linux/types.h>
 #include <linux/string.h>
diff --git a/arch/x86/boot/compressed/misc.h b/arch/x86/boot/compressed/misc.h
index 31139256859f..49bde196da9b 100644
--- a/arch/x86/boot/compressed/misc.h
+++ b/arch/x86/boot/compressed/misc.h
@@ -14,6 +14,8 @@
 #undef CONFIG_KASAN
 #undef CONFIG_KASAN_GENERIC
 
+#define __NO_FORTIFY
+
 /* cpu_feature_enabled() cannot be used this early */
 #define USE_EARLY_PGTABLE_L5
 
diff --git a/arch/x86/boot/compressed/pgtable_64.c b/arch/x86/boot/compressed/pgtable_64.c
index 2a78746f5a4c..a1733319a22a 100644
--- a/arch/x86/boot/compressed/pgtable_64.c
+++ b/arch/x86/boot/compressed/pgtable_64.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "misc.h"
 #include <linux/efi.h>
 #include <asm/e820/types.h>
 #include <asm/processor.h>
diff --git a/arch/x86/lib/string_32.c b/arch/x86/lib/string_32.c
index d15fdae9656e..53b3f202267c 100644
--- a/arch/x86/lib/string_32.c
+++ b/arch/x86/lib/string_32.c
@@ -11,6 +11,7 @@
  * strings.
  */
 
+#define __NO_FORTIFY
 #include <linux/string.h>
 #include <linux/export.h>
 
diff --git a/lib/string.c b/lib/string.c
index 77bd0b1d3296..1e6259f263b8 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -6,20 +6,15 @@
  */
 
 /*
- * stupid library routines.. The optimized versions should generally be found
- * as inline code in <asm-xx/string.h>
+ * This file should be used only for "library" routines that may have
+ * alternative implementations on specific architectures (generally
+ * found in <asm-xx/string.h>), or get overloaded by FORTIFY_SOURCE.
+ * (Specifically, this file is built with __NO_FORTIFY.)
  *
- * These are buggy as well..
- *
- * * Fri Jun 25 1999, Ingo Oeser <ioe@informatik.tu-chemnitz.de>
- * -  Added strsep() which will replace strtok() soon (because strsep() is
- *    reentrant and should be faster). Use only strsep() in new code, please.
- *
- * * Sat Feb 09 2002, Jason Thomas <jason@topic.com.au>,
- *                    Matthew Hawkins <matt@mh.dropbear.id.au>
- * -  Kissed strtok() goodbye
+ * Other helper functions should live in string_helpers.c.
  */
 
+#define __NO_FORTIFY
 #include <linux/types.h>
 #include <linux/string.h>
 #include <linux/ctype.h>
@@ -237,40 +232,6 @@ ssize_t strscpy(char *dest, const char *src, size_t count)
 EXPORT_SYMBOL(strscpy);
 #endif
 
-/**
- * strscpy_pad() - Copy a C-string into a sized buffer
- * @dest: Where to copy the string to
- * @src: Where to copy the string from
- * @count: Size of destination buffer
- *
- * Copy the string, or as much of it as fits, into the dest buffer.  The
- * behavior is undefined if the string buffers overlap.  The destination
- * buffer is always %NUL terminated, unless it's zero-sized.
- *
- * If the source string is shorter than the destination buffer, zeros
- * the tail of the destination buffer.
- *
- * For full explanation of why you may want to consider using the
- * 'strscpy' functions please see the function docstring for strscpy().
- *
- * Returns:
- * * The number of characters copied (not including the trailing %NUL)
- * * -E2BIG if count is 0 or @src was truncated.
- */
-ssize_t strscpy_pad(char *dest, const char *src, size_t count)
-{
-	ssize_t written;
-
-	written = strscpy(dest, src, count);
-	if (written < 0 || written == count - 1)
-		return written;
-
-	memset(dest + written + 1, 0, count - written - 1);
-
-	return written;
-}
-EXPORT_SYMBOL(strscpy_pad);
-
 /**
  * stpcpy - copy a string from src to dest returning a pointer to the new end
  *          of dest, including src's %NUL-terminator. May overrun dest.
@@ -513,46 +474,6 @@ char *strnchr(const char *s, size_t count, int c)
 EXPORT_SYMBOL(strnchr);
 #endif
 
-/**
- * skip_spaces - Removes leading whitespace from @str.
- * @str: The string to be stripped.
- *
- * Returns a pointer to the first non-whitespace character in @str.
- */
-char *skip_spaces(const char *str)
-{
-	while (isspace(*str))
-		++str;
-	return (char *)str;
-}
-EXPORT_SYMBOL(skip_spaces);
-
-/**
- * strim - Removes leading and trailing whitespace from @s.
- * @s: The string to be stripped.
- *
- * Note that the first trailing whitespace is replaced with a %NUL-terminator
- * in the given string @s. Returns a pointer to the first non-whitespace
- * character in @s.
- */
-char *strim(char *s)
-{
-	size_t size;
-	char *end;
-
-	size = strlen(s);
-	if (!size)
-		return s;
-
-	end = s + size - 1;
-	while (end >= s && isspace(*end))
-		end--;
-	*(end + 1) = '\0';
-
-	return skip_spaces(s);
-}
-EXPORT_SYMBOL(strim);
-
 #ifndef __HAVE_ARCH_STRLEN
 /**
  * strlen - Find the length of a string
@@ -687,101 +608,6 @@ char *strsep(char **s, const char *ct)
 EXPORT_SYMBOL(strsep);
 #endif
 
-/**
- * sysfs_streq - return true if strings are equal, modulo trailing newline
- * @s1: one string
- * @s2: another string
- *
- * This routine returns true iff two strings are equal, treating both
- * NUL and newline-then-NUL as equivalent string terminations.  It's
- * geared for use with sysfs input strings, which generally terminate
- * with newlines but are compared against values without newlines.
- */
-bool sysfs_streq(const char *s1, const char *s2)
-{
-	while (*s1 && *s1 == *s2) {
-		s1++;
-		s2++;
-	}
-
-	if (*s1 == *s2)
-		return true;
-	if (!*s1 && *s2 == '\n' && !s2[1])
-		return true;
-	if (*s1 == '\n' && !s1[1] && !*s2)
-		return true;
-	return false;
-}
-EXPORT_SYMBOL(sysfs_streq);
-
-/**
- * match_string - matches given string in an array
- * @array:	array of strings
- * @n:		number of strings in the array or -1 for NULL terminated arrays
- * @string:	string to match with
- *
- * This routine will look for a string in an array of strings up to the
- * n-th element in the array or until the first NULL element.
- *
- * Historically the value of -1 for @n, was used to search in arrays that
- * are NULL terminated. However, the function does not make a distinction
- * when finishing the search: either @n elements have been compared OR
- * the first NULL element was found.
- *
- * Return:
- * index of a @string in the @array if matches, or %-EINVAL otherwise.
- */
-int match_string(const char * const *array, size_t n, const char *string)
-{
-	int index;
-	const char *item;
-
-	for (index = 0; index < n; index++) {
-		item = array[index];
-		if (!item)
-			break;
-		if (!strcmp(item, string))
-			return index;
-	}
-
-	return -EINVAL;
-}
-EXPORT_SYMBOL(match_string);
-
-/**
- * __sysfs_match_string - matches given string in an array
- * @array: array of strings
- * @n: number of strings in the array or -1 for NULL terminated arrays
- * @str: string to match with
- *
- * Returns index of @str in the @array or -EINVAL, just like match_string().
- * Uses sysfs_streq instead of strcmp for matching.
- *
- * This routine will look for a string in an array of strings up to the
- * n-th element in the array or until the first NULL element.
- *
- * Historically the value of -1 for @n, was used to search in arrays that
- * are NULL terminated. However, the function does not make a distinction
- * when finishing the search: either @n elements have been compared OR
- * the first NULL element was found.
- */
-int __sysfs_match_string(const char * const *array, size_t n, const char *str)
-{
-	const char *item;
-	int index;
-
-	for (index = 0; index < n; index++) {
-		item = array[index];
-		if (!item)
-			break;
-		if (sysfs_streq(item, str))
-			return index;
-	}
-
-	return -EINVAL;
-}
-EXPORT_SYMBOL(__sysfs_match_string);
-
 #ifndef __HAVE_ARCH_MEMSET
 /**
  * memset - Fill a region of memory with the given value
@@ -1125,27 +951,3 @@ void *memchr_inv(const void *start, int c, size_t bytes)
 	return check_bytes8(start, value, bytes % 8);
 }
 EXPORT_SYMBOL(memchr_inv);
-
-/**
- * strreplace - Replace all occurrences of character in string.
- * @s: The string to operate on.
- * @old: The character being replaced.
- * @new: The character @old is replaced with.
- *
- * Returns pointer to the nul byte at the end of @s.
- */
-char *strreplace(char *s, char old, char new)
-{
-	for (; *s; ++s)
-		if (*s == old)
-			*s = new;
-	return s;
-}
-EXPORT_SYMBOL(strreplace);
-
-void fortify_panic(const char *name)
-{
-	pr_emerg("detected buffer overflow in %s\n", name);
-	BUG();
-}
-EXPORT_SYMBOL(fortify_panic);
diff --git a/lib/string_helpers.c b/lib/string_helpers.c
index 5a35c7e16e96..e9433caab217 100644
--- a/lib/string_helpers.c
+++ b/lib/string_helpers.c
@@ -692,3 +692,196 @@ void kfree_strarray(char **array, size_t n)
 	kfree(array);
 }
 EXPORT_SYMBOL_GPL(kfree_strarray);
+
+/**
+ * strscpy_pad() - Copy a C-string into a sized buffer
+ * @dest: Where to copy the string to
+ * @src: Where to copy the string from
+ * @count: Size of destination buffer
+ *
+ * Copy the string, or as much of it as fits, into the dest buffer.  The
+ * behavior is undefined if the string buffers overlap.  The destination
+ * buffer is always %NUL terminated, unless it's zero-sized.
+ *
+ * If the source string is shorter than the destination buffer, zeros
+ * the tail of the destination buffer.
+ *
+ * For full explanation of why you may want to consider using the
+ * 'strscpy' functions please see the function docstring for strscpy().
+ *
+ * Returns:
+ * * The number of characters copied (not including the trailing %NUL)
+ * * -E2BIG if count is 0 or @src was truncated.
+ */
+ssize_t strscpy_pad(char *dest, const char *src, size_t count)
+{
+	ssize_t written;
+
+	written = strscpy(dest, src, count);
+	if (written < 0 || written == count - 1)
+		return written;
+
+	memset(dest + written + 1, 0, count - written - 1);
+
+	return written;
+}
+EXPORT_SYMBOL(strscpy_pad);
+
+/**
+ * skip_spaces - Removes leading whitespace from @str.
+ * @str: The string to be stripped.
+ *
+ * Returns a pointer to the first non-whitespace character in @str.
+ */
+char *skip_spaces(const char *str)
+{
+	while (isspace(*str))
+		++str;
+	return (char *)str;
+}
+EXPORT_SYMBOL(skip_spaces);
+
+/**
+ * strim - Removes leading and trailing whitespace from @s.
+ * @s: The string to be stripped.
+ *
+ * Note that the first trailing whitespace is replaced with a %NUL-terminator
+ * in the given string @s. Returns a pointer to the first non-whitespace
+ * character in @s.
+ */
+char *strim(char *s)
+{
+	size_t size;
+	char *end;
+
+	size = strlen(s);
+	if (!size)
+		return s;
+
+	end = s + size - 1;
+	while (end >= s && isspace(*end))
+		end--;
+	*(end + 1) = '\0';
+
+	return skip_spaces(s);
+}
+EXPORT_SYMBOL(strim);
+
+/**
+ * sysfs_streq - return true if strings are equal, modulo trailing newline
+ * @s1: one string
+ * @s2: another string
+ *
+ * This routine returns true iff two strings are equal, treating both
+ * NUL and newline-then-NUL as equivalent string terminations.  It's
+ * geared for use with sysfs input strings, which generally terminate
+ * with newlines but are compared against values without newlines.
+ */
+bool sysfs_streq(const char *s1, const char *s2)
+{
+	while (*s1 && *s1 == *s2) {
+		s1++;
+		s2++;
+	}
+
+	if (*s1 == *s2)
+		return true;
+	if (!*s1 && *s2 == '\n' && !s2[1])
+		return true;
+	if (*s1 == '\n' && !s1[1] && !*s2)
+		return true;
+	return false;
+}
+EXPORT_SYMBOL(sysfs_streq);
+
+/**
+ * match_string - matches given string in an array
+ * @array:	array of strings
+ * @n:		number of strings in the array or -1 for NULL terminated arrays
+ * @string:	string to match with
+ *
+ * This routine will look for a string in an array of strings up to the
+ * n-th element in the array or until the first NULL element.
+ *
+ * Historically the value of -1 for @n, was used to search in arrays that
+ * are NULL terminated. However, the function does not make a distinction
+ * when finishing the search: either @n elements have been compared OR
+ * the first NULL element was found.
+ *
+ * Return:
+ * index of a @string in the @array if matches, or %-EINVAL otherwise.
+ */
+int match_string(const char * const *array, size_t n, const char *string)
+{
+	int index;
+	const char *item;
+
+	for (index = 0; index < n; index++) {
+		item = array[index];
+		if (!item)
+			break;
+		if (!strcmp(item, string))
+			return index;
+	}
+
+	return -EINVAL;
+}
+EXPORT_SYMBOL(match_string);
+
+/**
+ * __sysfs_match_string - matches given string in an array
+ * @array: array of strings
+ * @n: number of strings in the array or -1 for NULL terminated arrays
+ * @str: string to match with
+ *
+ * Returns index of @str in the @array or -EINVAL, just like match_string().
+ * Uses sysfs_streq instead of strcmp for matching.
+ *
+ * This routine will look for a string in an array of strings up to the
+ * n-th element in the array or until the first NULL element.
+ *
+ * Historically the value of -1 for @n, was used to search in arrays that
+ * are NULL terminated. However, the function does not make a distinction
+ * when finishing the search: either @n elements have been compared OR
+ * the first NULL element was found.
+ */
+int __sysfs_match_string(const char * const *array, size_t n, const char *str)
+{
+	const char *item;
+	int index;
+
+	for (index = 0; index < n; index++) {
+		item = array[index];
+		if (!item)
+			break;
+		if (sysfs_streq(item, str))
+			return index;
+	}
+
+	return -EINVAL;
+}
+EXPORT_SYMBOL(__sysfs_match_string);
+
+/**
+ * strreplace - Replace all occurrences of character in string.
+ * @s: The string to operate on.
+ * @old: The character being replaced.
+ * @new: The character @old is replaced with.
+ *
+ * Returns pointer to the nul byte at the end of @s.
+ */
+char *strreplace(char *s, char old, char new)
+{
+	for (; *s; ++s)
+		if (*s == old)
+			*s = new;
+	return s;
+}
+EXPORT_SYMBOL(strreplace);
+
+void fortify_panic(const char *name)
+{
+	pr_emerg("detected buffer overflow in %s\n", name);
+	BUG();
+}
+EXPORT_SYMBOL(fortify_panic);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-15-keescook%40chromium.org.
