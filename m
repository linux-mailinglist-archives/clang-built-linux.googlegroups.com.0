Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBIPHQGEAMGQEXHGORIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B183D7FB4
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:14 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id e145-20020a2550970000b029056eb288352csf197935ybb.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419553; cv=pass;
        d=google.com; s=arc-20160816;
        b=WMCHihctzFA8DsyMNoEwRhBJu9LIqStPJCr38Wyjg6lroOiquqZwrOiAeza7rE/rD+
         /vZBnlqa9lCw3d/7R06yJUi4IR9r1sj/NeJSLNmkewCIXc9h37kiHgoVYkl2kd/i6Ewn
         tM3zpZ/fI+mhkGdj1u1fFmc0sZXephKx/Ax7YfbcY3cPxE+68fd1Zc4VU9o+4ORdZouG
         W75VlhWb70jHQ+JFMNQujgoqO4ZNwzPNVcR7/WOEXRwsydMRS4H5ubKynzkTf7KiR/I8
         GwdTRwiS9UCZPbhNg0H00roiEaHq7RuyrNSL3Q+FcMW02ZI+MqdWth5dVA6p77496jZu
         nUyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=oUB9oZvbCwzJP151AFSSNM4noK2w/dCd+LDx447t+tw=;
        b=G2+srSm+wUBZsOBDhbu3iVfNQFLv+3RffAC4Q4Kh4Y7UvCJkhWYwmPYw0luNzCVO7H
         vblK08Omv0BpUa2jgIcgf98N1Pg4XjTuRYpVLSJfwBvdy1JUEGtubl2vCmIeKzXWS//U
         HaVivqLtPyqTZid567ZJm0vMjQaiB6fwar63ZPJb7ntxDPfshSnXto+W55hzu42j2bjQ
         6zHAuHV0skFKGq1kBebF5elgdRJDrneCwbU391g9A02pZVz83Kku7qMb4xGSKXLgPgf8
         T0/krARW4p58iKAWo1uJrQHpvclOEq3rwjYYb1BaVFq2n0X2U1JBI3l86cxh537DyL/g
         tByg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RlPhQG4t;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oUB9oZvbCwzJP151AFSSNM4noK2w/dCd+LDx447t+tw=;
        b=XPCl2Wf35XmF/kuj5Hii1ed1L4smk0JMdqanifwSVCL+2vYrZ0nKYWRTBWGDLdArLm
         8r67xr9C2fjohAQ7Tj++0JvELUvcec0XRV4wspaGOmHgoyVH7QakvZibxle1C7iOTVsO
         JFaUTGTifoEpu7p433L0owK0AszlGju+kvJMTQErIoDkiUFlrJ58HMUL1yZBIHgJe75V
         o8Rp2IzGKTsdCylwlonmoRnvPFn+ESumxMq+TQH1dj2E8GojaXlUQ2dvqyFobhVTGjHq
         0dU/4T5NgveMkGnFlJsB+SNQ0hy6ezKtWr9g+o4ygPDDvxHJuuzf+yVbUouBGx0EYnrj
         +XzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oUB9oZvbCwzJP151AFSSNM4noK2w/dCd+LDx447t+tw=;
        b=bUA5LhyhtpiXHDl93JcClcG61wbZwDY9U2rUcCZTt0pEaIu8N8CFy71wfe3F5tl72k
         9/wcfsYoQUe5jAY0x4vjUYJp4ATXJU2jt1AyWhqJMw0ENccoGapfFevBJ4nKzl/Ji5xB
         EKpplqqRBnEbqEHRE9QBmxfHlDDTDJRI/0t7YWV0wVJ7eUCqjxbGe1PbsjV+RUhoWIGi
         0Ct5TYBHLD6FJwQ+8lTsqWeYQZB0q2kN6W+KLI54a33/ts3BPVKwkt/snw1gcj2wJoZL
         PQRkuPDJxv47UmNFYBl0lCmalGkAAG8hy712oF7WXSulitXiiTa1k8WR6gcjz2S4Ya3f
         z2pQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530m691+A2pBkqNVB4nVYeYZLmkO8q23Hd78Qesr7ByDOpgDyVZy
	ABcA40XCq78vo4L9KTdNBmQ=
X-Google-Smtp-Source: ABdhPJz7jCwSqPsNOyF3NOveIsui4uwdTmYFYCXEIElYvsHp9NO2YBF4MrYgX1VD5MjSPy82O2Vy4g==
X-Received: by 2002:a25:be48:: with SMTP id d8mr33359707ybm.521.1627419553339;
        Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:420f:: with SMTP id p15ls106880yba.6.gmail; Tue, 27 Jul
 2021 13:59:12 -0700 (PDT)
X-Received: by 2002:a25:2e49:: with SMTP id b9mr721965ybn.41.1627419552855;
        Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419552; cv=none;
        d=google.com; s=arc-20160816;
        b=Y+Rx451Y9TNq6UaOmFfB1SMYESxB17LxLzIEEJHqPT/MqFl+06UCdGzJF1A3Ksma+2
         fMAa8CpHGHRA1mw5KWj1x8nDkffGtWqwZCGNopk1XEEgBavjwJ0hk1u6CxkA7u3WiU66
         O+VxxF3V0/fbXP/0XRIuU4SSJY3T1OSTkWipBSUqjycqrGzRZgucHz0lG+jISAVtp53D
         2F+1NGEnOVpbp2ZQCXM9S4wkGGlYviVOAN7eWZMeZ1R0BzknUgGWEyAJ8Fj1wRxHhe0+
         RJQX7uJ9hW+BbFP3DOUmBH2ijg6/gBuP8mm6Zrt3Mjg3Rl+Vr9x2tkPgodAOKOnmloMh
         aCsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=c29mjakfJ2fQ2aKIFDDh6/0VPCMzD6jfrBsIcDqvz00=;
        b=RnXaQzynsZTmufGa3h21+aMRAoQptVfZVrz87zfvaLPhaqRusp+Pr0SW4XwjB5nwDG
         jB38EKMTgBwc31HFIsMpNsQ0bdeiUVuNFZUc8aI8lQg3/LFJzutdcWRBJzhJ6yO7Wd6K
         yI15WKtsEV4EPZmLJV9vcQIaav8VFN3WGFZLBPWv5dGE8EgYK01GIBbTj1P1nIPeTtH/
         P5js8Ed0yg5ZHzhZQFiGgurVAQg3CETtLtGedUK2cCJSY65k5KLuHU2pys8MEh606zbq
         qzZ1d+6Rwfp7yBWWS+e9blZpM/593Mxt2Qv4MHuaro+5krdlXiyeKfScoZ13558uBCyb
         QV3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RlPhQG4t;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id z205si243058ybb.0.2021.07.27.13.59.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id o44-20020a17090a0a2fb0290176ca3e5a2fso1052223pjo.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
X-Received: by 2002:a17:902:8606:b029:12c:2625:76cf with SMTP id f6-20020a1709028606b029012c262576cfmr9776543plo.17.1627419552543;
        Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d2sm5224630pgk.57.2021.07.27.13.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 29/64] lib/string: Move helper functions out of string.c
Date: Tue, 27 Jul 2021 13:58:20 -0700
Message-Id: <20210727205855.411487-30-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=14604; h=from:subject; bh=S7ayvaB/WvgQx4Mye8ZmTgp4lMn5gOzwUYIKOkIvxtk=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOGtU59dpyaXNjl7+40exQadXHRV8ojrTSYXlDX 8jxwuf2JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzhgAKCRCJcvTf3G3AJulfEA CDk2ls2fJR5urOPfvp3kBHnCCLyfSNh+jPPHNyx3njttSgb5Bp0TaONW7u9SunWJSpt0Zqy8auK9DG VUiEbT2hpBZvJBdpuNTQG5gk1mRWTr70dKmgNc60pPNvGircEZx9kMkwcEHeS6wGR1r+ubabC/oV8i jmOCgbQbDU5f7pOy6qr4NojU8Y5uVCI1NGL/tRntYbV97PJ9zd7M7lEWGUo4GtqciXyWnoLBtGEGAc 1M/nrNNJ9uBCzDxWmLQKIM9ilUj1nmF7RLtEQtWBUt7cKYrAYamljDFYRgBUKWMN9XcKvUs9GPzoGa NkYrTO7ue4cIUZ5tMUOKdJo/VXnnhn+QDgHUkmp/GJJmbGZDGwVeDCBXb10nuGwlSJL8CwE4T8tgxC vLCDGkzpu3WvJ82rW8NYlvkO6kTjm4Ur47mhyoT8p2mwTB7fbt8l+/xjGv7I96Y4snCJ5Z+HqW2wtk m6e1bffmtgbHM9KBdjccvPUjllFMLaw63f7/AVanB9wg2CebfEQLRWvXFgLImuR/zmCj0xSukFk9eG 9S13IXRFRUv/Rvq5ehsZX17XBhJMqkYSVTeOkPYx73MaNz6lkT72s0zmHkKSTYfysl5jA06XK5wMzD p+/hAezOPeAb0HoqGG9vEIRql0f+pgVzuVd+Yw1HRFjX05rn3Kzzg7DtKaVQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=RlPhQG4t;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029
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

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/s390/lib/string.c   |   3 +
 arch/x86/lib/string_32.c |   1 +
 lib/string.c             | 210 ++-------------------------------------
 lib/string_helpers.c     | 193 +++++++++++++++++++++++++++++++++++
 4 files changed, 203 insertions(+), 204 deletions(-)

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-30-keescook%40chromium.org.
