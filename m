Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSPPQGEAMGQEDYNINVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3BC3D8121
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:16:58 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id k16-20020a170902ba90b029012c06f217cdsf17186pls.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:16:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420617; cv=pass;
        d=google.com; s=arc-20160816;
        b=AQu5UrD2yHZVeKHh9kirJfF8/GfkIkvyYaDzScEXZVTxmL3+XJ6wh7dxfIjwsEOsAY
         rzTUriDA5ZuDwJGyXd6JgyFeuDuxrQy223LhR/GIqgnGhbX+XKVp//FazjkHsLEGoav3
         rUPcCT1VSenxwAgN2cmGIpHhCoNHgKCujeHqJ4u9lE3x7PCNzZlWja3xtqj2ZSV6+yJV
         xbsrtoDGdh7qlROlUebCuOvoo4ib2y05qryflPZ+QRTxKzcy3+NYmWnW40Al3CXg9SEF
         n2bPP3m1W/RjeiSPc5aYFzN/Dlzt+FttOI/oJ6UEntT3M50uBqiTRh98cq3dMnjZWvng
         wmbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xVUFhr24ZsAUt9AQoWAw1usnVXKTElNMnAIoalRth9I=;
        b=nReIgh/4XFsScg9sapQRU2OVZY4Ic0UsATRZ61XAC0QIURZjLx2ocBZHsFgIn1eu9b
         sdgBLR0OI1DKaCgvXgsjyp9PYzxsR0Be34uylsQzPHrFQC8ur++4STvrAj+RdUqFKEzx
         BD3wktxrBE7A1hZ2ahZctLa8VeGoTodd8BuBigXRrDqTIkpNyx69Wl6pV2cZ1mwWTHMh
         2mo3sQe0+//rBS6OP/ivc5yU0xWbnCVid1cAxuyVT4iRSSkjhuPbjRI0JCMov5hKHXDd
         jy1BGMHgBAyOhmFcnmW8Fuj38SaSVXCEcRx/0VRj63NfuCsDGRhC+WNCVIwyDTPZL7Zv
         0+xA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Wm+Rznum;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xVUFhr24ZsAUt9AQoWAw1usnVXKTElNMnAIoalRth9I=;
        b=kHDPJ8WER+Y0QlrFxZQpEzHCj4SlzuADUaTSdz97w0KSECMQvBoljqJcWFhV2erxPk
         IdNylIo+8tHzEl/Ve8UrEkIAvnyuWjR3DzPV9r/yWnX/E4ZM/29S7/sJeuixHDFWt07L
         e9u6hQIwUjVEwjRO75W8HzcZnesCabJck1QtJc010BADaXqXlhTddoCB4BwFU6ES1sRA
         c3ugATdyN0UkfWfgDp72jPWRvdCWGlpM6syWpVx7uqZr3yW3ymMbgDK1P+d+mdDm5zQe
         3RXaoEqcl12qB0JDz6L2NF8v0P8l66dKX92ovy4btBB5j6qWEmmCxWFOOyNGjY6fn+FY
         Ny7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xVUFhr24ZsAUt9AQoWAw1usnVXKTElNMnAIoalRth9I=;
        b=Gmy04isFal0FC5PeQNHjCgtYLZqIariT3MGg/U0++nNke0KbunEUPqQo1J7rSIFe5f
         i0OK0ae8uID1F7eDhzBDKYBpVBjbt7FBFmoXgwtbcoEGB1zLDDu+m4JHH4/N9IE82wcw
         lUtianew2w8BRlIFcLdQzlS2P2Hm/ayttJzoSzxPhxpMcmOtc/d9nH8/O+mE7u8gNZ0z
         vDfGufqhw2DYRpa1T9goxQjfJlkwkWIQuILgdt3sXsSVaCDPpMAnOFN9AgdEKKQG4KkJ
         K1qEQE6avFhraZJKqggQwiHrCfKf7jPkvESnfx1VLuZ9nX6rO7AsUAsThyCJjeIipuLT
         nNYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533pNZlkslY114Ke9x6he/VaSg1D3PS1Jvj9lHqz2G5chnuj2tBm
	gZzggDFZYv/NBpbDzz0PGJg=
X-Google-Smtp-Source: ABdhPJwAXX/sxcY4wX3Tl4fMerqsDTGcmVgrRG5bi0A9OI3jMPuXYrs7uXSNHkpDN0w51MxdCHjJXg==
X-Received: by 2002:a17:90a:658c:: with SMTP id k12mr5954892pjj.167.1627420617145;
        Tue, 27 Jul 2021 14:16:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a4c3:: with SMTP id l3ls27407pjw.0.gmail; Tue, 27
 Jul 2021 14:16:56 -0700 (PDT)
X-Received: by 2002:a17:902:b218:b029:11a:bf7b:1a80 with SMTP id t24-20020a170902b218b029011abf7b1a80mr20208472plr.82.1627420616649;
        Tue, 27 Jul 2021 14:16:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420616; cv=none;
        d=google.com; s=arc-20160816;
        b=qpyqBItg1mjziK748fGqsHMgOTzTdbYa6r024BHVZ2qRU4XJbkirJCRUojQSaZcqa/
         pXCXy0G/3dfBMsahRAKifuKu6KQHF50RShhdpmMIzHi4sYEuz3sOI+VBflEQbNxHGWr0
         SF2Oo7jsyOUJlmrc3tV0BlGrMcH2jfzjQgn06aoV+teTXHlB/T5UPfVECPiR/QP5Gj6Y
         rtKJ/ufX2zMH0nDhhQVGuQYzw2c3gV55LV+HfqBgumOMtfCFuQ8KA91LltgWTJV9c0fd
         Xd3bEqmM1ogD46mj3ENPCevlyKbWRky50Pc+JgUTps8Sa19GLWukc+4VySZCxTijT57L
         EPuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/OVgTbTtEQVoBvCYg6jSmmU2Jgo9MSvA0i/isq2f++M=;
        b=rVF5/Adpa/iCSfb+Zc1+k72U2zvryR830m5+670VDCM9mJqtB0OoyV2a/uedFtfAsY
         j18by/W2CdrPduqUtrq7mJBvirBubXZhqG6r2PHO1YDWXAYYOr99voVEzPP4AJ7/rde2
         8Ww6FVPWGTz/9lP2FOduXcyJrtGt9l8Ey619yOXcFrA+MKC3mPkDYBPjQfp+cCd8+1it
         9LNq9Bxh6C8PMcqXwzHKTLZdVaoB2AVHTATAiutYBomYGF03fUvG1xSfV5dadrpbNGDx
         LpvmLhdBeySXoss+anVeYnojow3Nk//LAd0e6Dm1h/9nJ/TykEkdNDGc8uPt+7Q0QzZA
         FoKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Wm+Rznum;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id o20si360469pgv.1.2021.07.27.14.16.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:16:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id j1so1857984pjv.3
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:16:56 -0700 (PDT)
X-Received: by 2002:aa7:88d3:0:b029:32b:75d0:fa92 with SMTP id k19-20020aa788d30000b029032b75d0fa92mr25046135pff.23.1627420616406;
        Tue, 27 Jul 2021 14:16:56 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 16sm4884267pfu.109.2021.07.27.14.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:16:54 -0700 (PDT)
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
Subject: [PATCH 60/64] fortify: Work around Clang inlining bugs
Date: Tue, 27 Jul 2021 13:58:51 -0700
Message-Id: <20210727205855.411487-61-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5531; h=from:subject; bh=ngORCtAEDkc0H50xemEev9lyKw3n/iy6PZa3T6iXU20=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHONyzkRh/fY4SBFQw0UvjjNrDOdvLbPeIhyRa2i rGIomkmJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzjQAKCRCJcvTf3G3AJvcJD/ 9ExL37cKA3LzSQ4zLIwXWTofeLwiWaiJD2+4i6tZEdnlJ8ccIL6btbcA2/oKfwlt1Q/3aES1AfKvIp jX6QjMKLDVKoWDUwiV9cOfOSRNzlAJh+OWfd2UXFfAdjQ1Z+kurhqEfopYDzlXfZM/8Ll43JIXMy41 vRqzlXgxfU15MNxESA/2XVgVEq3AvADRrvMCLGF5sHXCGgcveDW73AuUPS9mFcuZNUwF4gXoC4tYAe iEknP/dsD2B1XUNWe6UXbC/nVA5fKWvikUxIgbeQvEJhFaAhEzz12AGCMWmYr5bBsiq4nE6SDMBRoB NxxYclKyhzZsf8NgLPDl1jnyOm5aK7+ppgvnl8/juecTXhoAeF5t4LcfgM9j6/nf6smMrbxkzvh8Hu kSMfLMSRbarT8DEYRsB4cOqvhtdunaoyyYS/iYbqXjCi/CBVLwAMrtD4Vm2UbWbz6opAzxWpLDHNIC NMoz0rNe69d8YBgNkUvq2oy1LcwrK/wAqTye/+4JUEY8Z7oz3apJZXgKntDIsiLVEafejl1w23aM9S qSKmhPAxUfHYW+msCimLNAvgWiEwVFHUIXg7Xo7PaOutDbMyl60C4HlzrSbkkF0HfkVZ7GF2sc+Kme /Kcbctx//Q2WSaC6OpP3OUv2AZUQXGVOv3FbJkiHhmwXwhzfjA6IB+t2CxqA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Wm+Rznum;       spf=pass
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
 include/linux/fortify-string.h | 33 +++++++++++++++++++++------------
 security/Kconfig               |  2 +-
 2 files changed, 22 insertions(+), 13 deletions(-)

diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
index 718325331021..4afd42079d3b 100644
--- a/include/linux/fortify-string.h
+++ b/include/linux/fortify-string.h
@@ -38,10 +38,11 @@ extern char *__underlying_strncpy(char *p, const char *q, __kernel_size_t size)
 #define __underlying_strncpy	__builtin_strncpy
 #endif
 
-__FORTIFY_INLINE char *strncpy(char *p, const char *q, __kernel_size_t size)
+#define strncpy(p, q, s) __fortify_strncpy(p, q, s, __builtin_object_size(p, 1))
+__FORTIFY_INLINE char *__fortify_strncpy(char *p, const char *q,
+					 __kernel_size_t size,
+					 const size_t p_size)
 {
-	size_t p_size = __builtin_object_size(p, 1);
-
 	if (__builtin_constant_p(size) && p_size < size)
 		__write_overflow();
 	if (p_size < size)
@@ -112,12 +113,15 @@ __FORTIFY_INLINE size_t strlcpy(char *p, const char *q, size_t size)
 
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
@@ -329,7 +333,8 @@ __FORTIFY_INLINE void fortify_memcpy_chk(__kernel_size_t size,
 		memmove)
 
 extern void *__real_memscan(void *, int, __kernel_size_t) __RENAME(memscan);
-__FORTIFY_INLINE void *memscan(void *p, int c, __kernel_size_t size)
+#define memscan(p, c, s) __fortify_memscan(p, c, s)
+__FORTIFY_INLINE void *__fortify_memscan(void *p, int c, __kernel_size_t size)
 {
 	size_t p_size = __builtin_object_size(p, 0);
 
@@ -340,7 +345,8 @@ __FORTIFY_INLINE void *memscan(void *p, int c, __kernel_size_t size)
 	return __real_memscan(p, c, size);
 }
 
-__FORTIFY_INLINE int memcmp(const void *p, const void *q, __kernel_size_t size)
+#define memcmp(p, q, s) __fortify_memcmp(p, q, s)
+__FORTIFY_INLINE int __fortify_memcmp(const void *p, const void *q, __kernel_size_t size)
 {
 	size_t p_size = __builtin_object_size(p, 0);
 	size_t q_size = __builtin_object_size(q, 0);
@@ -356,7 +362,8 @@ __FORTIFY_INLINE int memcmp(const void *p, const void *q, __kernel_size_t size)
 	return __underlying_memcmp(p, q, size);
 }
 
-__FORTIFY_INLINE void *memchr(const void *p, int c, __kernel_size_t size)
+#define memchr(p, c, s) __fortify_memchr(p, c, s)
+__FORTIFY_INLINE void *__fortify_memchr(const void *p, int c, __kernel_size_t size)
 {
 	size_t p_size = __builtin_object_size(p, 0);
 
@@ -368,7 +375,8 @@ __FORTIFY_INLINE void *memchr(const void *p, int c, __kernel_size_t size)
 }
 
 void *__real_memchr_inv(const void *s, int c, size_t n) __RENAME(memchr_inv);
-__FORTIFY_INLINE void *memchr_inv(const void *p, int c, size_t size)
+#define memchr_inv(p, c, s) __fortify_memchr_inv(p, c, s)
+__FORTIFY_INLINE void *__fortify_memchr_inv(const void *p, int c, size_t size)
 {
 	size_t p_size = __builtin_object_size(p, 0);
 
@@ -392,7 +400,8 @@ __FORTIFY_INLINE void *kmemdup(const void *p, size_t size, gfp_t gfp)
 }
 
 /* Defined after fortified strlen to reuse it. */
-__FORTIFY_INLINE char *strcpy(char *p, const char *q)
+#define strcpy(p, q) __fortify_strcpy(p, q)
+__FORTIFY_INLINE char *__fortify_strcpy(char *p, const char *q)
 {
 	size_t p_size = __builtin_object_size(p, 1);
 	size_t q_size = __builtin_object_size(q, 1);
diff --git a/security/Kconfig b/security/Kconfig
index 8f0e675e70a4..509ec61bc54b 100644
--- a/security/Kconfig
+++ b/security/Kconfig
@@ -193,7 +193,7 @@ config FORTIFY_SOURCE
 	depends on ARCH_HAS_FORTIFY_SOURCE
 	# https://bugs.llvm.org/show_bug.cgi?id=50322
 	# https://bugs.llvm.org/show_bug.cgi?id=41459
-	depends on !CONFIG_CC_IS_CLANG
+	depends on !CONFIG_CC_IS_CLANG || CLANG_VERSION >= 130000
 	help
 	  Detect overflows of buffers in common string and memory functions
 	  where the compiler can determine and validate the buffer sizes.
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-61-keescook%40chromium.org.
