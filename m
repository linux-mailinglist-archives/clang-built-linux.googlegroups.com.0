Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTMGRCEQMGQE46YUGMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8593F3E82
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:57:07 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id b24-20020ab02398000000b002abb9087041sf3707302uan.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:57:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629619021; cv=pass;
        d=google.com; s=arc-20160816;
        b=t0/VMxZxKJKWKhpyFXDoj7wc/D1PFh0mhDqw9GEC4DGsWtvyljYl9VnyLdt64paNya
         Vhf6R8ASuOPgARILaVJOwuLnDnUay5bOSv7ncORa7QAkZaXcay4GvDenls72E7cdczUC
         QPmi+WQCGp2UY1xI+Uy/MBp0W5TKJlQIW8AfEgeC9MFBSlTQDfGWzYu/6FpUQoM757aM
         lLko2QkWFw4BjY6CssVCPu+gngwhwa91qMe+13Xspw4dwnRmZMAudpXBjH9qVtgHAFHs
         aNStrWLTpkue0wToP6ncVe0uFNGLX7Kc9F6sjExq91ap5zDs0lzb2BBH3rz/BiB4wbw4
         R/lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=SLBuusiFebdhSNSIdeXdTxVQfMtkUP80ywTt4u26OjY=;
        b=R5uuqlIKqiCH4UCipfdQdya/9HFxcDFwjB4lTdMSvExkIDSmhSuqxFRdCrjSgAo9HX
         J+/3nFp9q0kGr+F2N92MSUziM+vfqyv4FIcXg7DpLbWcljni0jG3Eo0IUjsGfNSXKFCg
         EkCVu8+iDIKxpJFPjwtXntR9RJQJs9cnCOY5+5SVjifh3oZHItusK1ZIb08q3Ogs6j9p
         DZPxXkaevyJvR3MIUl4yEaiEIcvpnpMtIbuPXyZHAazlU/e50QlFajsdyD2Lyq24rrv3
         G49M7UbWwvKhPf1D7cf5T8Y04lQvI5CHYYuh7/agLFL85HKEzY4vvHXeky6bYQmOWcpE
         O6Uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="IBY/Ab1j";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SLBuusiFebdhSNSIdeXdTxVQfMtkUP80ywTt4u26OjY=;
        b=NGoCX/zza5AUBCST/8lHlMk/ddRfkqAtnSsNayTx2e+hkMWT5YXWNEr6vVXIgsWIeg
         8HhtLWbXeAErG+8eRRmcayV/sXlL02x0RQYGZuJOlMUyfy8Ul00NSN884vRxpWPcq4Lo
         7CFO47uJl9fHD8tDvB0fIuHjkDjeTkenbjQWlfMzBxfIHhjY6bMzyj0xtdXTcE0DJzQl
         AjBg6qb9hnVcgGzmpdma6h3CwY2xFGubQy9JJEyfkrqSGu2J6lBf2K0LW1BLQwJnpncD
         d2hhZRw/HmVGSx5GL7eeSi4WxTatjBVOHgCqElIuE/lntrSFRYNt+AK3VJoQ7WOmjyiB
         1aXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SLBuusiFebdhSNSIdeXdTxVQfMtkUP80ywTt4u26OjY=;
        b=B+9/7vRMrX4R5I0h+bjptc0xaCwF/Bh1GpvzkDXbgM2Vog+idTmP+nDKIB3t+uAqcQ
         lKnjINcHGiTS2MdXRHnTc3SXHbbrJ2Fd4WR88mjT5TNmYJCywsMVkkQT+4P71lGuVeRu
         XeStPbpFx/1BdxDKKo5OPclwx/9BSRAyER8WEKtnzgvA1QNWAPlhJaOZFiRJewCGfJ7P
         hvM81Lcb1Y9JKNhJPX3mHeEmykdCuVZAYV7eoAKdjER6XijxwiciyAFFrB2oENbDHddu
         n3gBikNhrtp0g3KxSNMq/nXS0+3FbliM0pxK6at4xayfcM+1zdBdpLPehBEHUrOILatE
         xYbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gldmXB8ABeSMl1XrwvVuc53Kx/DXjiwkrhN4OBccb87eJXN7f
	Wk6vE5k9OtWmrg7Sg/BGIvI=
X-Google-Smtp-Source: ABdhPJz2Uzot61WXsBOl1Y/+MwVMTZN7A5iFdsKfAj1IHLKoO2PfKzxE2CA1vgLl821XW5NdyZ2Euw==
X-Received: by 2002:a67:e95a:: with SMTP id p26mr20845917vso.56.1629619021345;
        Sun, 22 Aug 2021 00:57:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2ebc:: with SMTP id y28ls35297uay.11.gmail; Sun, 22 Aug
 2021 00:57:00 -0700 (PDT)
X-Received: by 2002:ab0:7681:: with SMTP id v1mr19917282uaq.62.1629619020804;
        Sun, 22 Aug 2021 00:57:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629619020; cv=none;
        d=google.com; s=arc-20160816;
        b=k9LiYQfhv3WlkCeWpWv3yg4mwr7LrscbP26zO6z2zt1X4W21Per0R7zTe2zGHyQvad
         netbcSuYtZq2Zjz9IGAZceD9tJaNY2TqHZeSWbFVLNsbyqXeMvk0VzxxDH7m0UxRawhp
         5oO7qMg/ezk8bGUjloHxxuHQmOQlgpVThxQUgJ7dWY+0gZ0b2I8XiKVGmxP2cYtUNWFO
         CR1l9t8gdXZwX1xGPUkEZIcON2fKDgxFq6SByPA51lx1wQRpWocNvXD+kqbXo+E41dhY
         M0XJHi6vrDhw7GCp61PkGcOZQvYT+fJx89FEVEkxDTO5YibV8oZKkPzxcoGpu7ePHsrm
         bbYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hSMMgZw7/2olmGwk+x9hLUDcbTdJzqluz+oi39a5oaM=;
        b=hVfHCfeq+/S6RQsZKtqxiTlYW2PEGamU2HbEdyJb3d3VpZqHtP6fwWhTTJvK6CGQ+h
         83BsP9lETDZY6lHLTotBJ4jPofCLXgHOPhR6SfEIeci5kdRpa3K2SDnPnr4mAKb6cjSA
         N1QrKN7NASIJgg3Q0hBOjb61CHRM+A3uCMgGoIhZEAoj/rcsFkDvFh46OsbohPfw+5G9
         Pkdhd+ROZugP0iNo01bNn88+S+41uOG5lzin3obT1flNqe525cZEtfEhDVnvHRh+P4kb
         JxjacZvh9FJ3+y5b2iDEc7qDsACFvi4jzI+pY6JFcxj7plPFzv9qlCQegNm8LKc/W9Vt
         bfqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="IBY/Ab1j";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id i6si726140vko.5.2021.08.22.00.57.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:57:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Received: by mail-pg1-x534.google.com with SMTP id o2so13648746pgr.9
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:57:00 -0700 (PDT)
X-Received: by 2002:a05:6a00:213c:b0:3e1:c3af:134 with SMTP id n28-20020a056a00213c00b003e1c3af0134mr28070949pfj.5.1629619020040;
        Sun, 22 Aug 2021 00:57:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s2sm12005635pfw.193.2021.08.22.00.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:56:57 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 18/25] fortify: Prepare to improve strnlen() and strlen() warnings
Date: Sun, 22 Aug 2021 00:51:15 -0700
Message-Id: <20210822075122.864511-19-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1906; h=from:subject; bh=wvK3U1xEzLn7HBnl3TVbXk2P5Mye7QhLMp4JdS3JmN8=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH4jtivRrqM/8t8pX2BgfBDvrRaH9kWYRdFJy03 ZmaWqcKJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB+AAKCRCJcvTf3G3AJl6KD/ 9ZeXY58Pb6asLkXbDN3ArZieQhAzcaOUkAzqG+27e2UGmpU0fknMzrGcr5+bkH2vEtiT4wNbDYkQq4 pZ6OZKutd6P6bu3+l+mKEmtVzf6KkiOK6TyJu8byh1zcL79cPXCfg8pQlRxXiNw9RFS166rGMNLxYZ nIEGonm/floTW9BuU4HFNu/TrNFbG3SJgO0nucUsT4WiBiLchgd5aWvp5Gwrv4sn923STbNDhw75NS 43aU65qAxXTi7xVG/NA05RHFoPMpNcl8avEQOoC0yj4euWk9XBOOG8cUT1FrJMNzbSWDjOAx3/bM4v 0clrSucVbpwU/vo+jp9jqrVBhOTsTMe+8wfTYd++e+iKkMkWcWnv//tV/sjsZDhzvXa6H0+INFk1XL lpxEWUOQpYeNp2yhvPBG2mkdvFZiDBLLhr+L3bawbfVA3Bz5X2Qo7e4vQrSlPv0cegUmMFAVIUJWL/ /LioZcopshY+OJkRivbWBSt0y2S43LUmbf+LS8vD8ednSpZl/Dd8ZuWHxgO3SJc/2ByaujeQIdUPI/ BhgTHT8Enu0y2D/+PDRvmDd3WdSYPYc9dmbrkn7GDGz4NFQ/2ZFnWHLUARALIAj8mKIoM4tyL/IlMb Wssv9xgg1JIxTzM7sy2rjvrfS8sqTwDadM85qSaEWTOpykmLWQrNYVa+tR7Q==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="IBY/Ab1j";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::534
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

In order to have strlen() use fortified strnlen() internally, swap their
positions in the source. Doing this as part of later changes makes
review difficult, so reoroder it here; no code changes.

Cc: Francis Laniel <laniel_francis@privacyrequired.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/fortify-string.h | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
index 68bc5978d916..a3cb1d9aacce 100644
--- a/include/linux/fortify-string.h
+++ b/include/linux/fortify-string.h
@@ -56,6 +56,17 @@ __FORTIFY_INLINE char *strcat(char *p, const char *q)
 	return p;
 }
 
+extern __kernel_size_t __real_strnlen(const char *, __kernel_size_t) __RENAME(strnlen);
+__FORTIFY_INLINE __kernel_size_t strnlen(const char *p, __kernel_size_t maxlen)
+{
+	size_t p_size = __builtin_object_size(p, 1);
+	__kernel_size_t ret = __real_strnlen(p, maxlen < p_size ? maxlen : p_size);
+
+	if (p_size <= ret && maxlen != ret)
+		fortify_panic(__func__);
+	return ret;
+}
+
 __FORTIFY_INLINE __kernel_size_t strlen(const char *p)
 {
 	__kernel_size_t ret;
@@ -71,17 +82,6 @@ __FORTIFY_INLINE __kernel_size_t strlen(const char *p)
 	return ret;
 }
 
-extern __kernel_size_t __real_strnlen(const char *, __kernel_size_t) __RENAME(strnlen);
-__FORTIFY_INLINE __kernel_size_t strnlen(const char *p, __kernel_size_t maxlen)
-{
-	size_t p_size = __builtin_object_size(p, 1);
-	__kernel_size_t ret = __real_strnlen(p, maxlen < p_size ? maxlen : p_size);
-
-	if (p_size <= ret && maxlen != ret)
-		fortify_panic(__func__);
-	return ret;
-}
-
 /* defined after fortified strlen to reuse it */
 extern size_t __real_strlcpy(char *, const char *, size_t) __RENAME(strlcpy);
 __FORTIFY_INLINE size_t strlcpy(char *p, const char *q, size_t size)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-19-keescook%40chromium.org.
