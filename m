Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBS4GRCEQMGQEJRXIRPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 696543F3E7C
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:57:00 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id f10-20020a6b620a0000b02904e5ab8bdc6csf8091865iog.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:57:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629619019; cv=pass;
        d=google.com; s=arc-20160816;
        b=jIkU1Dm8yzfDbc3f5+k9Q1EWgZnOqje37f9EmAgJWmXI9x9GvhA9u4C1iLKBjQD7xP
         n04tv9TKxC5GzA2cVj9DQFUOci/vtCXoqYgg9pzrYBwtMYawBR7DQeo7jv5J/aaRK/dK
         dEdD/s9tnSY2RaFlZtnM1nWWG5x2DY/tYHtqWkfizdp88cQfPPwYZRoLzRKRMt68gz9R
         4z/Q9Q6ZjznH3uMRwp1rfXFGF0nqh2hTsp0qsMOkjYIL2cgNfHFnKGsW6eODvdvPAk3u
         zuu0jEwZZAjc7LUrkS41LJsJGh/VbXcAujCFQ8GZ9DBURy7mGGIiazT+/HLvCxsBq44J
         itBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jXWyeKPs3zVRgyw4rpAt8aBUnWLnNRi7LWvL9FwBzLI=;
        b=DJOrXlAn2CRqgejoymU2xuYO2DhDsRFrh2D8Z2Mv1eZ6GH5OZaysR9K0saR4fQ0ztc
         jFF1CAphaBhsBjM2uXXsCL5+Mcz787e8NBB8CC8kDiDkkjtWMfZN8HsF29GZVpo72iWv
         1chEp6SyOqUNnQiTQlUJXvIsXYPktznWKXHDDqmlmwzNEy8qJIKaOHwdCuSH99WgmnnE
         2hd8lIzuCXsWsQhOEjSx0+PMPe7KR04/NUkIVvhkoMpdUKjC9zhg38/kR0PE+2M4g5X8
         BTSAO0BwV3UPUFFBe15VslK+bELD6SwjnZjukscIpbwTYuTRA2hSONrydXQ8kdsajGzj
         QDZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QCLdF+eD;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jXWyeKPs3zVRgyw4rpAt8aBUnWLnNRi7LWvL9FwBzLI=;
        b=ImRWGfmNxvpAJz3TJckgIlOy5eGRFJOopi3pg2u+Xe8cktE2QmhFz3k0L1o4NDvLmO
         6r5w9defUUYsfyhHkB/LPs/8++XJtc1Qq0ppZLtniM3CyFIJiIW5e4BG9zoJP9kkCLK8
         00QSaE+QpWd6kCDp2TTtpjy2dc8qgkLmwbFMtgstNIFEMRuSCIXGtNz5/wgK7w0YM34a
         P+bsTSMC3uZ5GIuT7GBmgOl1OwL7DKcrSbnYSYloeXK9KBgItamdsiI1xbejISllhak5
         HPQgli1rghaZCANxRIuiWI2nhgSWtVNV5jQ1c9DfeC5cpVAGHclmtjrj8AhmMVi8wrPX
         jFXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jXWyeKPs3zVRgyw4rpAt8aBUnWLnNRi7LWvL9FwBzLI=;
        b=js6ShvgNx8rmd9Tn8a6LczaT1zVKqXqS8a41+x+FrSP1QiR1Z9wqdgoWLZ9iBm7sWM
         7r2DevTl7XLWTix4MyiQV73Tb2FAqRtxo+CH1vNB/0tyiklrMGGZI2sphjDGadE+Ccxu
         QDl47k7sOscbN9obBFVIrZBXvHWrcNXWjQk6luJoiYLKal6dU/cSsoDNQ8TK+LdDOWR9
         bwOuZ3l8leuZFEpC5/O8k4rsaATBhCw7sgvPD4H06mHI+mENIDz2WB9/Fa3cr+/Qe4yI
         8xEkXrfGaLD+9KQSyHdz0KalGpyGeUngveCachvJfbhjxoaD4lfAdDP45gFSuqQWYZfo
         zxlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Q2V1ChyX5J1u3EHtBGNsyIeQDK9jCZ2zw76YIT5y9LBgzY0+s
	hfNNkJMs/kwBRbVzceG3VSw=
X-Google-Smtp-Source: ABdhPJwj6Z7nIeK1q9RYEqnU9vmCkCAWPtTgsSVeVuJsEQLWro4qyD7uqyXgXCXwbXqcoRatrU37uw==
X-Received: by 2002:a5d:8541:: with SMTP id b1mr22286976ios.105.1629619019431;
        Sun, 22 Aug 2021 00:56:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:410a:: with SMTP id ay10ls1798745jab.3.gmail; Sun,
 22 Aug 2021 00:56:59 -0700 (PDT)
X-Received: by 2002:a05:6638:25c3:: with SMTP id u3mr24960451jat.52.1629619019105;
        Sun, 22 Aug 2021 00:56:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629619019; cv=none;
        d=google.com; s=arc-20160816;
        b=ovN4L/QIg1pSTi4DgrHxzdzJo2kkRIHqY4z1jhZj1qACTsm1ONYxrY9HA8erZVhQ5X
         dM0dWsZXiMdBfB7lVCEaM0+CFHjzj+EL9T2+NTsakWWO2ftt3L9PTVOYQK2zvHUlst6w
         oRiyiBivgpvRRwpB1A6GUX1kGFe+EuToeCtXl+DOIM5zQx/O5w1KT4H1bg5qiy6EmRdz
         Nd4+tgyhIcERu7cSk2+RpA4iWY7NOUjgEMmeezjKc7pm9LrNrlZDbQdQh8Dl/TJ2s8nH
         N7dhcf01TEIJSd5eULztO4PfzJ3igtQZ7vTIIcZYqb0Y0gpnPtl2dizSDebkk4Y+zotH
         +0fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/IK2hUcT/4MYA89svC69IqQzJMxj9iX8eWhKLXV32Iw=;
        b=QGiibi3PPjt7O5vFb0EkhZtBGLnwtOeSnojcfoyWsYymICplqWrFYqBvty3EpFrbAG
         wr4jtZrl3s46Ulb632wLoEvwYFbueDW6WPrhvQ7aSSYx0t7HZhtE4297qZrJvY7ohjbk
         kqRi87eB3W2tExTe/1+rJzRWnXzOkJ33J/gUw47Faz+r4AxFAF2IX356TUXCOQB1Y6sn
         dueHoBkdnWg/rKeZLdCWL+r4UpTuGJoKhuC3BMRAJ2isZx7RvqRCU11kgyQ9bXBf/aXY
         auflD6nm4f3VQftZb+lXwRnEDFY5b9ONJ67A1eR3XCOF/opx0TxZtMIYqAxtPSe9/ujK
         aVpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QCLdF+eD;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id c81si654438iof.3.2021.08.22.00.56.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:56:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id e7so13646642pgk.2
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:56:59 -0700 (PDT)
X-Received: by 2002:a63:5604:: with SMTP id k4mr26801500pgb.363.1629619018842;
        Sun, 22 Aug 2021 00:56:58 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m28sm14880372pgl.9.2021.08.22.00.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:56:57 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 19/25] fortify: Allow strlen() and strnlen() to pass compile-time known lengths
Date: Sun, 22 Aug 2021 00:51:16 -0700
Message-Id: <20210822075122.864511-20-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4037; h=from:subject; bh=A8Geo8n4i5qwpvkI4vHxNJg+9VAd1dz9Zyf2I1wPWkI=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH41/syAnC8eDuJXMCDQbQtT/FS9k5h9kcLncy9 eJedf0qJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB+AAKCRCJcvTf3G3AJrn9D/ 9w5dThNsyCdRB28y4gKpDDLcvUjRa1Q7oKkwUtwYdV4cfAf+oyY6FWe+T3MEuQEGGcOExyAmym8iuM YdmWCH662e/XOVtgNQqcXFcLIOs0PWUTdV1Ps7VotgZMQFC2oVwakzruXHCfkyrKUEtcR5z0CILGRn t8zpD6TGNmD40Ks+KA3xAF4dpBjzIzL5Z/Sbix2dA6CwwEOedcVhEoOZkwefsdAqsCRIDrsxe46uhR yTqT1Py3Ztyo4HBf5/fq0ZvpqMNknPbP2I9+yxFrBfP2wJDCZcS7MR2x7q/USsg4Jm4oUzdL4M869d XaY4fTLBn0Skhh1lYpQRY7tw0HAru9lWcfYHIwQpzINLpSk4Gtcnik3fND1lF7OcQSnu/HmTyRBWes Pw83R50BMTQ8a/vjGbbbKml6GSvKB+UsGwvFTPgRD6xN71rN8D8YCvPxS+12ubmM+cTDFHZ/BX0QuD lMXeN2s9Zzs584Jq/4VOo/4f6vtSgmd2BOwzfyyDo+eYNHIPxS4YFZGaxGjcxgp9Tqz6cnc+5iHa1s 9lIm/i+0pU3Q0IcYwzFXrhkrNCarXCgQ8jI+7+dMIxsDfQQBkh+kv4HVXAM7bqjhArAiqt5J+w+QSP jotniJxsBv+glaPCKkmwkAM/MdceVn/RgSpZqz9gbeHZz+aD8fXSw7K9N+FQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=QCLdF+eD;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e
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

Under CONFIG_FORTIFY_SOURCE, it is possible for the compiler to perform
strlen() and strnlen() at compile-time when the string size is known.
This is required to support compile-time overflow checking in strlcpy().

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/fortify-string.h | 47 ++++++++++++++++++++++++++--------
 1 file changed, 36 insertions(+), 11 deletions(-)

diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
index a3cb1d9aacce..e232a63fd826 100644
--- a/include/linux/fortify-string.h
+++ b/include/linux/fortify-string.h
@@ -10,6 +10,18 @@ void __read_overflow(void) __compiletime_error("detected read beyond size of obj
 void __read_overflow2(void) __compiletime_error("detected read beyond size of object (2nd parameter)");
 void __write_overflow(void) __compiletime_error("detected write beyond size of object (1st parameter)");
 
+#define __compiletime_strlen(p)	({		\
+	size_t ret = (size_t)-1;			\
+	size_t p_size = __builtin_object_size(p, 1);	\
+	if (p_size != (size_t)-1) {			\
+		size_t p_len = p_size - 1;		\
+		if (__builtin_constant_p(p[p_len]) &&	\
+		    p[p_len] == '\0')			\
+			ret = __builtin_strlen(p);	\
+	}						\
+	ret;						\
+})
+
 #if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KASAN_SW_TAGS)
 extern void *__underlying_memchr(const void *p, int c, __kernel_size_t size) __RENAME(memchr);
 extern int __underlying_memcmp(const void *p, const void *q, __kernel_size_t size) __RENAME(memcmp);
@@ -60,21 +72,31 @@ extern __kernel_size_t __real_strnlen(const char *, __kernel_size_t) __RENAME(st
 __FORTIFY_INLINE __kernel_size_t strnlen(const char *p, __kernel_size_t maxlen)
 {
 	size_t p_size = __builtin_object_size(p, 1);
-	__kernel_size_t ret = __real_strnlen(p, maxlen < p_size ? maxlen : p_size);
+	size_t p_len = __compiletime_strlen(p);
+	size_t ret;
+
+	/* We can take compile-time actions when maxlen is const. */
+	if (__builtin_constant_p(maxlen) && p_len != (size_t)-1) {
+		/* If p is const, we can use its compile-time-known len. */
+		if (maxlen >= p_size)
+			return p_len;
+	}
 
+	/* Do no check characters beyond the end of p. */
+	ret = __real_strnlen(p, maxlen < p_size ? maxlen : p_size);
 	if (p_size <= ret && maxlen != ret)
 		fortify_panic(__func__);
 	return ret;
 }
 
+/* defined after fortified strnlen to reuse it. */
 __FORTIFY_INLINE __kernel_size_t strlen(const char *p)
 {
 	__kernel_size_t ret;
 	size_t p_size = __builtin_object_size(p, 1);
 
-	/* Work around gcc excess stack consumption issue */
-	if (p_size == (size_t)-1 ||
-		(__builtin_constant_p(p[p_size - 1]) && p[p_size - 1] == '\0'))
+	/* Give up if we don't know how large p is. */
+	if (p_size == (size_t)-1)
 		return __underlying_strlen(p);
 	ret = strnlen(p, p_size);
 	if (p_size <= ret)
@@ -86,24 +108,27 @@ __FORTIFY_INLINE __kernel_size_t strlen(const char *p)
 extern size_t __real_strlcpy(char *, const char *, size_t) __RENAME(strlcpy);
 __FORTIFY_INLINE size_t strlcpy(char *p, const char *q, size_t size)
 {
-	size_t ret;
 	size_t p_size = __builtin_object_size(p, 1);
 	size_t q_size = __builtin_object_size(q, 1);
+	size_t q_len;	/* Full count of source string length. */
+	size_t len;	/* Count of characters going into destination. */
 
 	if (p_size == (size_t)-1 && q_size == (size_t)-1)
 		return __real_strlcpy(p, q, size);
-	ret = strlen(q);
-	if (size) {
-		size_t len = (ret >= size) ? size - 1 : ret;
-
-		if (__builtin_constant_p(len) && len >= p_size)
+	q_len = strlen(q);
+	len = (q_len >= size) ? size - 1 : q_len;
+	if (__builtin_constant_p(size) && __builtin_constant_p(q_len) && size) {
+		/* Write size is always larger than destintation. */
+		if (len >= p_size)
 			__write_overflow();
+	}
+	if (size) {
 		if (len >= p_size)
 			fortify_panic(__func__);
 		__underlying_memcpy(p, q, len);
 		p[len] = '\0';
 	}
-	return ret;
+	return q_len;
 }
 
 /* defined after fortified strnlen to reuse it */
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-20-keescook%40chromium.org.
