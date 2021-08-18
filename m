Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSOG6KEAMGQEOSVZASQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FDE63EFAA9
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:06:02 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id k28-20020a63ff1c0000b029023b84262596sf805801pgi.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:06:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266761; cv=pass;
        d=google.com; s=arc-20160816;
        b=iQ3pQzDhUWhMzaOmSdLbUdQ6EYzEsUjpzCMZcpIRXm8XcTY0Q5NcZXI9Uo18wJ2u/J
         7atXCITnON8m9jFXDfYuSz3PeXrpI6KHOy2M7kysdnJrWCKTl7u5KJxZglVTG4iSYkSE
         HGQSwoT2iDMclG12zoqRSE+jgw/h544P6MdOrMmbGKTuBJRVRgknjqQ4tOLNv7LtDcDT
         1gqkFnF+zmWu6I9BmU9dFi9jDF3TulDx32D9VsyhPfBDtXB1wiCwAe2+jASS3ZtN35CC
         bmZd4kw5LnqbqzMH0+qQlxoE1Vo1GBciQ2ZoX/Glfe6IDdCCuwI0cjKpbpnLOfFH1WPz
         TgZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9cpkhGxQJJUvkxIRFxDZ0MLMWZEipgrSXOj+cryGFzA=;
        b=mnCI/hHbUy17UQ1hQ4UZiabZlhGUKKynwfsMfPrkbo7kykA0WaYJuRtYvz25qLi+tt
         C+q1YgP0sa2HqO9BO4aONf4HYnqAtS/cCst2gb2gUH+kBwOHsyTiJOY7T1TLBRYe/fKP
         HPfWcdtTpFS3B9IY3AT7duvWplMEswOuo90uiTghTOBkYkTTXfUA+qLhnyOmgpNBWmfl
         VY8ThVPwShzgKqBxhGfCnDuZPU7aecXi1ZdTkvXVdprrhd/XmbX1h5c13Upw1Kfljyoc
         l4UihjMeJ1x2bw/5/XNF0vgg6M52Wn/2/z0XuIOTUOXlzfgsydZOx+aIPV9acnoA1yg6
         G7IQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Qk0Yz6lf;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9cpkhGxQJJUvkxIRFxDZ0MLMWZEipgrSXOj+cryGFzA=;
        b=BuTABRkue51auRBThw08Ja1lBwd8zODAikMQh0Jg28QgM1EoPCFKdG+KL+PvyIkXID
         p+PPIwPzZ8AFYInUrTvkfbkrlBcCOO5rjAUT8kT/6PePPproPVCLgi5Jzma/7dQC514F
         6dFL24qourK6I/9xnsObJGetB1io9gsHy2rgAoUmmnEVUr3E1bLedG2nzIcyRJ2Wo8dS
         64ZS0j5U3Hj+5OFXXViANMVjinCPLqyTzLUPw1jhW6bypXLxZlm+p8I60ahREo8ETIs7
         BC69g6xvh84IcQrDp8ebpVxciv1kQIep8r+ZS+vsRhl03q78sTCFRbdeOKKIICRIFviQ
         ut2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9cpkhGxQJJUvkxIRFxDZ0MLMWZEipgrSXOj+cryGFzA=;
        b=PfndvdSnCqjODGaIqrSrzTTkZ5BSPT4nkq9/cUhPmL/CqPJDndqLDydJBuzkpfxNt6
         838hVTEKODbd74hdpszC4C2k8sp88na9XqteFU4Xr5JTRWUSbuIY0TncSVnEjttiOhCd
         RYkz6q7kNkKAR1GcuLscSuNkm+IZkBiFZWwCxwJznF8IsFk9ePzRmJtS0oGBXzx57IPv
         1iPNgc9oFyuqnxs4e8W8c1fxlny1tDOV/oHTO9XnixKoMjTlXvxTne+23a7eJgy9lk+Y
         3Xq+hSO6wAUKYz/mxkXRAazZYmm1kIXgQyJJkjJY+TsrRmis7IxMEKYHDKq1EZM0uKc8
         ZACA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532w/4J0MSG8X74/f7C+cAIzsvAMgMH/fW/jo7z/U3g+Skjom++1
	Ak/WvsjdeTv0Fbgqut2DXBY=
X-Google-Smtp-Source: ABdhPJyF+JudzX0yqr9AC7+Ul1QYTSFxgysUgghdZKQN0BWpn75aDj/ER1j+kACujhM9iEFAlB5h0g==
X-Received: by 2002:a63:7883:: with SMTP id t125mr7223046pgc.243.1629266761338;
        Tue, 17 Aug 2021 23:06:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a409:: with SMTP id p9ls307494plq.3.gmail; Tue, 17
 Aug 2021 23:06:00 -0700 (PDT)
X-Received: by 2002:a17:902:ab98:b029:12b:acc0:e18c with SMTP id f24-20020a170902ab98b029012bacc0e18cmr5906769plr.10.1629266760779;
        Tue, 17 Aug 2021 23:06:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266760; cv=none;
        d=google.com; s=arc-20160816;
        b=yhKL4v2WYgl3LzHws+zKH2lpmq59aFiajkkPhOP4EVnzzPV1fcCxrsNDFZPJbhnVFh
         i089v06DsXKUGXb5MN4veLuQ4GP4z9l1Wb2rsZxzFqfDyPZ6kMnNW3dh3C5yPklqaa4W
         T3hOQCtZThr4F1A/bV7E3k2cZekRHJ7P/1EC7K5O0YvDdNntUZ0ts0BL2mmo94qoBwah
         Y3uqCuPCJn6v7kOraaB6R9Z6rbg3JQefo2UW5tkArPtt1UiCBVMlvqWSJaIU3FWlOqlJ
         MpcY140K60yHyy1hIDU7tBVHYAdmKRp4apXXlVzJuztoOAfFJxhtT6ab2i1OjvKxpBaE
         rnPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/IK2hUcT/4MYA89svC69IqQzJMxj9iX8eWhKLXV32Iw=;
        b=ekmRFUJpfRe/W/OBgjSrbj51G8APdCDLNx0O03PaINHtlC4Uk+TWm9GpbkI1KGmF0E
         JscqZ8E4TzWKlbpNUsVS1AGEHAQ853LV8P4gFBDLj0VwpHhoh6ejhDe6lebZ6cNGcGfK
         agmMXwZzIAaDgjKHIQ+FkW0FidSjpVlfxXNQJLHXo3B6WR2tKAfDYSTM4KN6X1RlMhLD
         U4J4lPEcFkUhK1iqyIQ2OOdMURjDeo64t3Gq6IYr4Y8h4xrX/n1t7c5o/4c4fVCrFnRI
         84ZV+kvMHvmk0QwcfVCbA4pCiqxoFsuo1pRlx0DnQmMMJKNFQMOLApCHk1chiAsrG5L5
         X2/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Qk0Yz6lf;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id m9si312314pgl.4.2021.08.17.23.06.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:06:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id m24-20020a17090a7f98b0290178b1a81700so1604494pjl.4
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:06:00 -0700 (PDT)
X-Received: by 2002:a17:902:9046:b029:12c:b5b7:e443 with SMTP id w6-20020a1709029046b029012cb5b7e443mr5821798plz.31.1629266760522;
        Tue, 17 Aug 2021 23:06:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y2sm4445932pfe.146.2021.08.17.23.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:58 -0700 (PDT)
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
Subject: [PATCH v2 31/63] fortify: Allow strlen() and strnlen() to pass compile-time known lengths
Date: Tue, 17 Aug 2021 23:05:01 -0700
Message-Id: <20210818060533.3569517-32-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4037; h=from:subject; bh=A8Geo8n4i5qwpvkI4vHxNJg+9VAd1dz9Zyf2I1wPWkI=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMk1/syAnC8eDuJXMCDQbQtT/FS9k5h9kcLncy9 eJedf0qJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjJAAKCRCJcvTf3G3AJrkGD/ sGA1st6iXQakkMrv5jlDBfJfIKpPRffAM37N71hpqxpr1Fr7DdDm3SkcllpDVPtIqv1i9Cq8eZToIP /UfE6TKceHuZ3LA8KcaYA/hx0EQstrTKbvGo5hJu7X3Ycoxw2wvax9yM+VwquMUfmLBHH9kP6tLV/S ggDpCb8GF8AfsdQOxNJZwtuEQHOY/3Vmylwx85UDPcvrJnGAuwc/dEkRVikDg+jmDVeQw6BaEXhsWz VXTUlkQl/+6v0SasN6VTLBRMwAYtijt48hQvZlvCmLFOaRFPlX5PrsmqzeNzTt2J+7R/0dz5cgjoYm 2YSDE0BDUQ1VbBkMkcUoz0ev1b819hruB/JCr91xtsNo+R4R3LVnQHBJVjoctZ0f0mVe+/NM97Zajx Phb9H24sbFTLbi334Ac+II/djOciKyoZNRy1Gozfa6LM2cQPWUQ5sk0ezJ8yxOetb6Xz3m/ygEhbSZ qTJRhaE4vTVKHV9994E/MKPsHd+xSG+9/hzqiL1h5P9/FhRZenRL0+KQ1oW+Z1W3wQmOBsJfj8Qe93 52bnf9k2WzJVmTp3cwaPCp8Uvuh5Ype/IYtfxoP8YApi2HbanWdnrLIMsD9pCtnzhoSncNnH//7lUf iI0pELVQiyQsjoUfQ6MDPhEkqWTauXrhO0J2TxH8JfEbbkLp6/lRYfH8bPiA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Qk0Yz6lf;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-32-keescook%40chromium.org.
