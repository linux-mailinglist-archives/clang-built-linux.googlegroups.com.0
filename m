Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBT6G6KEAMGQEGHMB7HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4AB3EFAB9
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:06:08 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id g5-20020a05660203c5b02905867ea91fc6sf627736iov.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:06:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266768; cv=pass;
        d=google.com; s=arc-20160816;
        b=iiGjnd/muyQbtz6+3QCXFk45xJV3dte023+H1vAkJtWJx9gGDJ9ai7tjFSI8L3LTYC
         JGHZ8B3fFpu4KNdL7C1u6vnXbVS2o2jpCYE1/7QamBl8hbSKaMtwNqtZjFAuE1SJUOL/
         v0cJdSfI2m99hpcUK6lx6yz7pss1Yb78eP7IuN9+LKCKZV//bYbO2Hm+avfvOn6g4tPH
         O5Zxn9ANIFATurn21yGozQc0xuZ9D1lObzMRLzSwS+e1tvCVEhxNGlyuEgZMkgyv6Gsf
         zFyu/9eEShLygq3XJCxFfw847siO9SJz1h6cEOOICTI6HBY0mDy8ITLdsFpse1vypT2Y
         z/Zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=dnyON36dkkhvdOCgWBkwOs64j5gjBPC3/BFSXlhTc28=;
        b=0P7bWbhlcjUj+aJuWX5+fmL5AttM2LJBHWo0w+P7Jv2HD1QjfDN6r81Np3+n6kDfyM
         gNhHAb/KRJtnd/CnIqQcIXC18JJo0zjGvqOGHxsqrO58iInGf+0BBBdmjhyyWvexi2xn
         JunMRjMdXshsiqRVUPLQ7StHWVSckENxNDjM1XkXprnDs7wJw9Dor+xtY01UKLD15o/g
         xATlXXuBwf9issEQ2wUYpkKgGHLHXmKfOkGnhrGt5AxvjOhPGSveyubJK/VdxIyoVjSa
         7yMVu5LVZ4vExUswA5bo2+4Kk46i5j/WUQ3NKYxjD+UD6i2raR84mJnUIe9dyHTizYQc
         E5rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="WQqdtls/";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dnyON36dkkhvdOCgWBkwOs64j5gjBPC3/BFSXlhTc28=;
        b=DajfQzvnr8IFwggBY1hEfs+2bWzgkxcBQC4NVK57oGpfq007P9zHCtw+YRhFbHWnCS
         nqDvvO6oAIC/MZLzRrzWYUtCvyY0dztlzzeIrfzIzAsDcAxAZCbG4UZ4mFEBFOva9gD6
         9p5XOR8+PTC6Cvc2K4zQcP99g12eWuJzAfZ3LZZxy7kxrh2FpuOuTW0PQEEn8ITvmquq
         CguHeDNGTXuFBY/ZehM26aGVFlB07vSnF8sys8djJiCMtLt3wkjS0JPaG1HlRLm4XjHe
         4BoR2U/DwXRB+NaSSsLoUgZB09Hh+5I0QFKN2BDqKEaHsZ4Tr2PNtWpzeW0j7a/2sZAL
         lTmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dnyON36dkkhvdOCgWBkwOs64j5gjBPC3/BFSXlhTc28=;
        b=bafq39td60cYwBKDDCodxFGv9pasGSbT6aQjY6wCx4agZE6kSgU6QgdXg6UXLdlewd
         OUmXW/fxeGspqG+RaRdgZlRp6jrw9dTwZiK6V95d4szQkXKrOc9dDtSLU3X0+c3FYeoP
         p8UjKv7eOsfVRacq+ffGbbqYPN0jIeiDRPb9kqaRqyWSig1+/k1QWEDJ3iJqLKRKBCuG
         i+4lhnMxoBYXTmD8HrNPAl238hsd/Si5/mcx3yudoh/MOO0z6NLWbcfJB/r8G9fNn2q6
         TCwwCiGmwyLoYCdFY/pckTLs9ejRUoF7cmwdN8RiFoAKrEsL8IAQzTLHcO+1fGMQGTIp
         PiKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tUybuZAW3rp/fk1JUGIZ0cuxTC/tAUkApj7OtqTx7wlgVERUm
	61Jqt/9FNVF1uIgM8zg0XLk=
X-Google-Smtp-Source: ABdhPJxfcy6gKGP43elgHeLmT2nJAv/3ueDhOLJolVw1GGd17NOiiJQNIH2Oc/csvSCf/Iu4lHePzg==
X-Received: by 2002:a92:c90a:: with SMTP id t10mr5295635ilp.188.1629266767884;
        Tue, 17 Aug 2021 23:06:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:2c43:: with SMTP id s64ls196017ios.10.gmail; Tue, 17 Aug
 2021 23:06:07 -0700 (PDT)
X-Received: by 2002:a6b:6319:: with SMTP id p25mr5995410iog.100.1629266767586;
        Tue, 17 Aug 2021 23:06:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266767; cv=none;
        d=google.com; s=arc-20160816;
        b=x2mYYw4HWUFxE6U6X+yByEx5sEq1BsRs/zpNyBSKdlVROg4FNPuHQBnWgVcSSrFBEa
         JhMFYcn8k/ZLsaGYb8VO8W0jq3Jik/DMEMKOD7mw1XQougtS4l0wdT7YQVLE8ESDjkfS
         tfYkTmPfZ1/zfhypq0AV3m2CSFQRVIiMSL6b42HySGrZ7JINjYYYdYChptin95K1W1h+
         JkwzAulZzvSoGw9rsomorVlNflLqYGl/whQt+cJ9ihxu0kOLj7yGJGaKwzrssu8n4xZ4
         a2b9/aOwDhq0CLuSR2nj4aKqeTDRqny1u0iMWVZBYf/UMvpexlfwdZJmiJtzPzwC45kb
         NPcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0bRXcGnjUc7NVLeCTdRJyE4ge8RgoyPp9mDS2KzOq8s=;
        b=MAiBYzDngIjRfKVprLzGQCXU+5AgAEaHOl7qzSje2Am0kMsWRoPXAzC61XAoivSQJ0
         gR+/YRbEKQpUNdIkpK7DOORYwBZ4rCsBtL0/0ZXwC3Xb6GMJjZkvLPfROv0bCF8wI1gd
         98XCx27Mi/kPAva2BV/KdITGEj/i1FI2dNN/KG5Kqv2lTpsTG1NyUQDKlCWob5ubmlbk
         tyHdEnfQJIB+G96yfBfKFxGeNh5CLuIH1ZAt9JrKNcpmLvMxTvEFFuNjFHD5LWBpSzXt
         uPwQMYXW+ddMwyxYy7OU7focS16uthLi+ebbRDxFB4xMQrg/0OM92NLVrDpvwBx70fRT
         bvwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="WQqdtls/";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id o21si118782iov.2.2021.08.17.23.06.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:06:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id i21so1066861pfd.8
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:06:07 -0700 (PDT)
X-Received: by 2002:aa7:8206:0:b029:3c6:2846:3f9f with SMTP id k6-20020aa782060000b02903c628463f9fmr7834685pfi.30.1629266766977;
        Tue, 17 Aug 2021 23:06:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l18sm4571594pff.24.2021.08.17.23.06.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:06:04 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 63/63] fortify: Work around Clang inlining bugs
Date: Tue, 17 Aug 2021 23:05:33 -0700
Message-Id: <20210818060533.3569517-64-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=7591; h=from:subject; bh=Hec0xxMOh0cK4yBYBOcb5aqhxRAjnc34rm5FBOgOGD0=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMs6ml8yWGswBEn8BNaWTcv46iAfG0OJbmF8YMg oAEj0wmJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjLAAKCRCJcvTf3G3AJmy1EA Cxa4AsWTCF8/uDP8AV7JotgjiK7+Wd6hTmjaB2izxSIO3ujFU7lf++q7Flx4Rk0Khk2tYC5yFzkf1q KsVqRI+lR033mk6KdPSJ9FrfNzNJz8wPKrUcmvO1yC5Ew7NsSbVcFG9rAJTpUGSp6PB33hEZa7ao6X g00L0SWHv3JrcPqQxfPVH40XS0edTmHg2xsJ5mtz/NsFH7sjkVvbomQwzPWIWneWOUFnBoNs+gvf6t vSf2XOihAR71V0F5AszPaupkbs6G5njj1px9/ENBv3HIa208Q3y8DpqsvqamaITfm+fmWG8CrO/7OT jWWUwcLUoiPAzcKaa+OKE5ii0xStgjRPNhoJKsOJU0dDqt0/5/X37hzygJ+A+cggmAIfMoTzmE9a8f appSBcljh4nYutCtxDKnbc2yqCBtKYTAlZ+vqGGAe35wFrXKhNNsQK7c8ciBk7F+G4tdWcsfmTfE+h Z4gxHVqy2JU4v0EWPwh/KVUbbHw6edMeAslLgW8TyhklAWJSFhjGecLkyTpx66usdMKTWdYMmrbu8O PytqhJuULFGtFs5i5jkysrms3SGobkhoweDZHzjT82RPdfsZchVOG0LZfHsmuh54DBoXEf/9bw4Zgm QQ4sjZ4Ski2g83oskEkT+N7EABOdA+mCeKE78rnk61IM+xXh4/vRHiEA0ipw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="WQqdtls/";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430
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

To enable FORTIFY_SOURCE support for Clang, the kernel must work around
a pair of bugs, related to Clang's inlining.

Change all the fortified APIs into macros with different inline names to
bypass Clang's broken inline-of-a-builtin detection:
https://bugs.llvm.org/show_bug.cgi?id=50322

Lift all misbehaving __builtin_object_size() calls into the macros to
bypass Clang's broken __builtin_object_size() arguments-of-an-inline
visibility:
https://github.com/ClangBuiltLinux/linux/issues/1401

Thankfully, due to how the inlining already behaves in GCC, this change
has no effect on GCC builds, but allows Clang to finally gain full
FORTIFY coverage.

However, because of a third bug which had no work-arounds, FORTIFY_SOURCE
will only work with Clang version 13 and later. Update the Kconfig to
reflect the new requirements.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/fortify-string.h | 55 +++++++++++++++++++++-------------
 security/Kconfig               |  2 +-
 2 files changed, 36 insertions(+), 21 deletions(-)

diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
index 7de4673dfe2c..e62d3633a329 100644
--- a/include/linux/fortify-string.h
+++ b/include/linux/fortify-string.h
@@ -48,10 +48,10 @@ extern char *__underlying_strncpy(char *p, const char *q, __kernel_size_t size)
 #define __underlying_strncpy	__builtin_strncpy
 #endif
 
-__FORTIFY_INLINE char *strncpy(char *p, const char *q, __kernel_size_t size)
+#define strncpy(p, q, s) __fortify_strncpy(p, q, s, __builtin_object_size(p, 1))
+__FORTIFY_INLINE char *__fortify_strncpy(char *p, const char *q,
+					 __kernel_size_t size, size_t p_size)
 {
-	size_t p_size = __builtin_object_size(p, 1);
-
 	if (__builtin_constant_p(size) && p_size < size)
 		__write_overflow();
 	if (p_size < size)
@@ -71,9 +71,10 @@ __FORTIFY_INLINE char *strcat(char *p, const char *q)
 }
 
 extern __kernel_size_t __real_strnlen(const char *, __kernel_size_t) __RENAME(strnlen);
-__FORTIFY_INLINE __kernel_size_t strnlen(const char *p, __kernel_size_t maxlen)
+#define strnlen(p, s) __fortify_strnlen(p, s, __builtin_object_size(p, 1))
+__FORTIFY_INLINE __kernel_size_t __fortify_strnlen(const char *p, size_t maxlen,
+						   size_t p_size)
 {
-	size_t p_size = __builtin_object_size(p, 1);
 	size_t p_len = __compiletime_strlen(p);
 	size_t ret;
 
@@ -108,10 +109,14 @@ __FORTIFY_INLINE __kernel_size_t strlen(const char *p)
 
 /* defined after fortified strlen to reuse it */
 extern size_t __real_strlcpy(char *, const char *, size_t) __RENAME(strlcpy);
-__FORTIFY_INLINE size_t strlcpy(char *p, const char *q, size_t size)
+#define strlcpy(p, q, s) __fortify_strlcpy(p, q, s,			\
+					   __builtin_object_size(p, 1),	\
+					   __builtin_object_size(q, 1))
+__FORTIFY_INLINE size_t __fortify_strlcpy(char *p, const char *q,
+					  size_t size,
+					  const size_t p_size,
+					  const size_t q_size)
 {
-	size_t p_size = __builtin_object_size(p, 1);
-	size_t q_size = __builtin_object_size(q, 1);
 	size_t q_len;	/* Full count of source string length. */
 	size_t len;	/* Count of characters going into destination. */
 
@@ -135,12 +140,15 @@ __FORTIFY_INLINE size_t strlcpy(char *p, const char *q, size_t size)
 
 /* defined after fortified strnlen to reuse it */
 extern ssize_t __real_strscpy(char *, const char *, size_t) __RENAME(strscpy);
-__FORTIFY_INLINE ssize_t strscpy(char *p, const char *q, size_t size)
+#define strscpy(p, q, s) __fortify_strscpy(p, q, s,			\
+					   __builtin_object_size(p, 1),	\
+					   __builtin_object_size(q, 1))
+__FORTIFY_INLINE ssize_t __fortify_strscpy(char *p, const char *q,
+					   size_t size,
+					   const size_t p_size,
+					   const size_t q_size)
 {
 	size_t len;
-	/* Use string size rather than possible enclosing struct size. */
-	size_t p_size = __builtin_object_size(p, 1);
-	size_t q_size = __builtin_object_size(q, 1);
 
 	/* If we cannot get size of p and q default to call strscpy. */
 	if (p_size == (size_t) -1 && q_size == (size_t) -1)
@@ -181,11 +189,13 @@ __FORTIFY_INLINE ssize_t strscpy(char *p, const char *q, size_t size)
 }
 
 /* defined after fortified strlen and strnlen to reuse them */
-__FORTIFY_INLINE char *strncat(char *p, const char *q, __kernel_size_t count)
+#define strncat(p, q, count)	__fortify_strncat(p, q, count, \
+						  __builtin_object_size(p, 1), \
+						  __builtin_object_size(q, 1))
+__FORTIFY_INLINE char *__fortify_strncat(char *p, const char *q, size_t count,
+					 size_t p_size, size_t q_size)
 {
 	size_t p_len, copy_len;
-	size_t p_size = __builtin_object_size(p, 1);
-	size_t q_size = __builtin_object_size(q, 1);
 
 	if (p_size == (size_t)-1 && q_size == (size_t)-1)
 		return __underlying_strncat(p, q, count);
@@ -352,7 +362,8 @@ __FORTIFY_INLINE void fortify_memcpy_chk(__kernel_size_t size,
 		memmove)
 
 extern void *__real_memscan(void *, int, __kernel_size_t) __RENAME(memscan);
-__FORTIFY_INLINE void *memscan(void *p, int c, __kernel_size_t size)
+#define memscan(p, c, s) __fortify_memscan(p, c, s)
+__FORTIFY_INLINE void *__fortify_memscan(void *p, int c, __kernel_size_t size)
 {
 	size_t p_size = __builtin_object_size(p, 0);
 
@@ -363,7 +374,8 @@ __FORTIFY_INLINE void *memscan(void *p, int c, __kernel_size_t size)
 	return __real_memscan(p, c, size);
 }
 
-__FORTIFY_INLINE int memcmp(const void *p, const void *q, __kernel_size_t size)
+#define memcmp(p, q, s) __fortify_memcmp(p, q, s)
+__FORTIFY_INLINE int __fortify_memcmp(const void *p, const void *q, __kernel_size_t size)
 {
 	size_t p_size = __builtin_object_size(p, 0);
 	size_t q_size = __builtin_object_size(q, 0);
@@ -379,7 +391,8 @@ __FORTIFY_INLINE int memcmp(const void *p, const void *q, __kernel_size_t size)
 	return __underlying_memcmp(p, q, size);
 }
 
-__FORTIFY_INLINE void *memchr(const void *p, int c, __kernel_size_t size)
+#define memchr(p, c, s) __fortify_memchr(p, c, s)
+__FORTIFY_INLINE void *__fortify_memchr(const void *p, int c, __kernel_size_t size)
 {
 	size_t p_size = __builtin_object_size(p, 0);
 
@@ -391,7 +404,8 @@ __FORTIFY_INLINE void *memchr(const void *p, int c, __kernel_size_t size)
 }
 
 void *__real_memchr_inv(const void *s, int c, size_t n) __RENAME(memchr_inv);
-__FORTIFY_INLINE void *memchr_inv(const void *p, int c, size_t size)
+#define memchr_inv(p, c, s) __fortify_memchr_inv(p, c, s)
+__FORTIFY_INLINE void *__fortify_memchr_inv(const void *p, int c, size_t size)
 {
 	size_t p_size = __builtin_object_size(p, 0);
 
@@ -415,7 +429,8 @@ __FORTIFY_INLINE void *kmemdup(const void *p, size_t size, gfp_t gfp)
 }
 
 /* Defined after fortified strlen to reuse it. */
-__FORTIFY_INLINE char *strcpy(char *p, const char *q)
+#define strcpy(p, q) __fortify_strcpy(p, q)
+__FORTIFY_INLINE char *__fortify_strcpy(char *p, const char *q)
 {
 	size_t p_size = __builtin_object_size(p, 1);
 	size_t q_size = __builtin_object_size(q, 1);
diff --git a/security/Kconfig b/security/Kconfig
index fe6c0395fa02..530a15566b1d 100644
--- a/security/Kconfig
+++ b/security/Kconfig
@@ -193,7 +193,7 @@ config FORTIFY_SOURCE
 	depends on ARCH_HAS_FORTIFY_SOURCE
 	# https://bugs.llvm.org/show_bug.cgi?id=50322
 	# https://bugs.llvm.org/show_bug.cgi?id=41459
-	depends on !CC_IS_CLANG
+	depends on !CC_IS_CLANG || CLANG_VERSION >= 130000
 	help
 	  Detect overflows of buffers in common string and memory functions
 	  where the compiler can determine and validate the buffer sizes.
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-64-keescook%40chromium.org.
