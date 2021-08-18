Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPWK6KEAMGQENG4NJKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F143EFB94
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:23 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id s11-20020a056a0008cbb029038f396b4773sf706467pfu.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267262; cv=pass;
        d=google.com; s=arc-20160816;
        b=tUJZamqWzfcyGeQwbnBqQ7OXW3aKa7PpCI7xUkYyk1nR4+g2m458Kl14zl1Q68M7c9
         OimM4eKA2DzjEodTYEXQ0Lv1LEZXy6+mJFHw3wNZgNcTJxx1p70qnvONyl8OJ8vbd2v3
         j8yFNW995EJiDeEUm4pH29hPNIjtVFNm4ohaoSxMLQSZARHqHZQN/0MwSBEUeGRDSalD
         PQ5aBXew70ZqMwAv7D3lvyCXkX7Yv28I4wUZ4gOqFQyaAXGlJoBAqdnzUzyhN3zSj+bg
         UqYFast1A1FfTDZaZZxId28xL77VkisFMK/YX8LiGbOdz3RboYyenXDLV1vWQzUSm5s/
         UL7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Ch99kDY2vt5nPuqCk1EqVIRoQMBn3WYkGPT7mXRYt84=;
        b=In6K+5ZsXUigPB9jBMHV3JKRa8gH2RfivftWX3lhCH64zPbxgmDQ87t7zVqApFHoHa
         yRarKoJmTQM95BZLIOkYz6Ae3tHNA3tTzpoGs69yOlz4iG0wPlfdXvnLs0DuiXTX73HY
         9tB8/zKj0n/pc78OglDoAhHZ4eqGTAurqRrbHeEgQwzF9DLEY1bSnF0ZJ8TJ8OMYGocY
         S3EWqVdtsGl/Zxj/swIVYA+JqDAtcUaxro4ifbo7ct3v8dUmpNpnsPyDAnPwqxJUi/aQ
         NmlqPDzHM7N8kafirVYEpCCHksSU9FYu8EAELLaae2B/qNhDppeHizQbSzG1MSl+Oyqx
         Lb5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=n221T5R7;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ch99kDY2vt5nPuqCk1EqVIRoQMBn3WYkGPT7mXRYt84=;
        b=qJifW1xwVnvNmz2lf8Ub3Y9ykTdmXg6KNV7QQWaQhBxz9ouEist1K+R0xxkR8plnkK
         lbWEV2UXr83CxidfTEYiQet4UYA2SdRx0DqNdZYRvYwT1bb646fAU2oqS7VaiOqjlBax
         mxBgUvZ5ofaVedW1RIgtq9gme3qXL93q6R1tdY3qTmTk6i3OcgjkLDx/yccyudhNvUWn
         Ktoa31k+nuvMduPVP2WANByfwtKQsdZmjUvj5Veec2sX2uuewZWkaa+odGEa2CceXCff
         ae9EkBJgNL2RskG3kZDqtPXLx9aNZ+X7VH9g3bUfwGf3MQ1G6qETBYQlyWie9qbdswuV
         lMYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ch99kDY2vt5nPuqCk1EqVIRoQMBn3WYkGPT7mXRYt84=;
        b=X/HwhVG/LQ2Fnt4sdc/8DoS5tNxKHenJlVZ7XUSS5gfjLSE23gPR8SrzJsINe80Dw8
         Qv4HRwTPxSK9U/9LfxWv44I+3H2Jn/ahIvB1bfsOuxfeKJ+MKyxkHU0+ZLQQUI7mzl2o
         jDqVUgIqnFADU6AzSmhUwU+HtRUg3F4dLqUUyLxnX1adthM3FXJEohWdLnyg1BMuRWwf
         4PWiVS2aCKgg19eAouLtQ7N+bjRqB5P4wDIXWtbWR0Nt0GLJOg6UMZIo5HAN/9447Ilc
         fo5hicn6F9Fhbk8sFuwStQm8S/hmcsQ5gkid9QieJN5wb5EZBK0q4e+tDkKcE5VhGJVY
         CBtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nfJEMKdTQIt+ot1otm7wKCgvhqW7k3Xmsg81wj1fZPx/FCOZG
	JZR/u/o1TTUWqOgxtxWYgtM=
X-Google-Smtp-Source: ABdhPJwwKKgiqf9F27cnhvaNfFBfH8hpDBCbVKH2Z/pp/i5wfKeXwmbO/TGOg9VjtaZUKedTmJHJlA==
X-Received: by 2002:a17:90a:4d8d:: with SMTP id m13mr7550436pjh.190.1629267262417;
        Tue, 17 Aug 2021 23:14:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:4094:: with SMTP id z20ls667143plc.7.gmail; Tue, 17
 Aug 2021 23:14:21 -0700 (PDT)
X-Received: by 2002:a17:90a:2d89:: with SMTP id p9mr7722508pjd.138.1629267261866;
        Tue, 17 Aug 2021 23:14:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267261; cv=none;
        d=google.com; s=arc-20160816;
        b=GIffolg+tjyllVtU1NN/6zfj6yfuTCxTvrWspf5ONpDkXigKKZLd2ioW1QWAKF74zh
         wF6yBhd9J209dwl1GT2qTFCofkYPDCQ5qo3/Yoe54fvEpjGIsl8+Xat4XKY0Ql5EuxAn
         IFYaf4kM/MrV9ekBYl1fMaqrN217sb5q3tEqDG8o4zZQQIL/6ANfBQ/rFjB3gb33bq7q
         lfnRsrsorhcYkb/7ooj0f8v8J+leGSrB1SB/upLuSworzj2wpH6QFsgZIrx6ZSnjGZQl
         zCJhePsUhYl0THytM4PE/UiJZWxDNeYSkCcbDEZu//a4dkutjJmkg80dMOG8Xz6gSTCp
         Ax3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=oRqci+X9ZkwMYou6+ITtwqhIODpBNOQ/vpPUZ+ofC1k=;
        b=HQsQo31HWKjv60JrX3q07fluNnRF9whX9HpN/hsYWvXkWb7QWtX179U+Lgq7ukPphZ
         Q76FA02ITc1A0ZefQmnEVXhS7JOOnaXCrMhGfZrad3DJScTBwpQmyEasQDYXsaSWessX
         EyuaofkPmVEfbj58Dk6lfkEK3TnRHfh9IvZyfy+dJSyDjpFpW77sEiJEn0SZfnCNsB+e
         PEWuwfUuwA/TeRYA3WwhB7NNARTCgaNX6hJ2Yzrtb+K7ft/045pZ12AZ0c/zbywTbtfQ
         6kQtWnVzWCBcH7h+wS/x4tCVRnoFvUjyTFpgkkTPT1SVAClIp4+OImi8x/IHJReREKfc
         lrqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=n221T5R7;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id mn23si241352pjb.2.2021.08.17.23.14.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id s11so1160058pgr.11
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:21 -0700 (PDT)
X-Received: by 2002:aa7:961d:0:b029:3bc:dbdd:7a9b with SMTP id q29-20020aa7961d0000b02903bcdbdd7a9bmr7557410pfg.32.1629267261587;
        Tue, 17 Aug 2021 23:14:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 188sm4828888pfy.144.2021.08.17.23.14.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:19 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Andy Shevchenko <andy@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andy Lavr <andy.lavr@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Alexey Dobriyan <adobriyan@gmail.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 26/63] lib/string: Move helper functions out of string.c
Date: Tue, 17 Aug 2021 23:04:56 -0700
Message-Id: <20210818060533.3569517-27-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=16237; h=from:subject; bh=0q1X5VXVoMd2LXcz5VjduCqS/jFP/woLi+lPAmirhQ8=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMjpuodWHYJtMsaT2qAQDZuPTXipyEKyiMUyMu5 6YzgklWJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjIwAKCRCJcvTf3G3AJtw5D/ 4h638rDnycP8vIIWDQopRGadKzHrlOzhSZI1OP7FixgHXvIENYCLPA/8xnnBHmD/RxNfPI/4uUh13c dkWLrKSHzP8bw/AsjvEnUgU+Dn7cyejN33otkFs6c1KKVI4r7MfyFrHTrrK2zDum73DdbLCPb5T7c6 dHahU+J0nx81kwx3I/vKnxnMBJZBsMZ/YQAHgdkX6gr2O8U1HVXUkq5YiaXol7NYwE8QNOZVKjmU9A ynE3kYWhWHK5G++/tIrqqAioCXOI8nkwnaHa1f3uINV9JtK9iIXjhojIPnBg+9f/rYrerSYtZixBQA hbe4synUGlMzX4EBu6U7PAzDBnewiHDsOJLVADVwZOxSShXuhVQzmWDknegEHu3jPOj6S6ArS0bT2j ZkeX01QJxTZoDcciVHBdqYpkfHzmGu4E2dNfKeOmWUUgx2MTIyLIAn2Go2XWcemodkyxK4mmqFJ0fR HVnPi5lHinOf8ocFb1eCddnOoJ3rJpQaXcr9J9+L6+oCHb07Cggi64pIBCAmb79gAkpqz1tkli01bw bqGRt9s2RGHINs2bKxNNfgAsGCGj3nqfNE1Qf+Gyd2Zj6wG6/Y12BH/ZZQl8U2SHuTtLtdilzB/4B1 JG68pS+Uh5H192lipeJ5N3iCg/LUuQPv1+ymJupMJasNi2zryPvempiVMBIA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=n221T5R7;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a
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

Cc: Andy Shevchenko <andy@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andy Lavr <andy.lavr@gmail.com>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Alexey Dobriyan <adobriyan@gmail.com>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>
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
index 4fec38fc6e58..4e111d9dd6d5 100644
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
@@ -254,40 +249,6 @@ ssize_t strscpy(char *dest, const char *src, size_t count)
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
@@ -530,46 +491,6 @@ char *strnchr(const char *s, size_t count, int c)
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
@@ -704,101 +625,6 @@ char *strsep(char **s, const char *ct)
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
@@ -1221,27 +1047,3 @@ void *memchr_inv(const void *start, int c, size_t bytes)
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
index 3806a52ce697..bde13612c25d 100644
--- a/lib/string_helpers.c
+++ b/lib/string_helpers.c
@@ -696,3 +696,196 @@ void kfree_strarray(char **array, size_t n)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-27-keescook%40chromium.org.
