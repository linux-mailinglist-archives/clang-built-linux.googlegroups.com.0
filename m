Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBI7HQGEAMGQECRJUXLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C883D7FB9
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:16 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id n192-20020a25dac90000b029054c59edf217sf192923ybf.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419555; cv=pass;
        d=google.com; s=arc-20160816;
        b=RiTgFfsJtKoydsc9H2N50ljW38othbHc800eZcXWHA4rXBibXoJpu1T+mZjB7iJiuU
         sXkv5l3mfS71Aoi+tKFyHeSlAZl8RSMESOcEhun20EUXKStWS3puzJOhfGL2szmdalAo
         vgIRRI8x5MAvj1ih7q02cFfdkab9wUQW5t7y9k69E9DGbRruW9sgwjz1YL1NIKqORmkU
         jzZJE50eiM6v+0G0sKrc5tCzBKm6QmlJhp8nz4afJKFWVFcF2VL87CeiKR/GOlN9hnmm
         uvZ+1rGg9X2/IcaJ6pz0e3pVE+ih961x3x94KDwjYMKVVOH5j/rnQEp3NC3K4HkDhAwS
         KVeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=DuezjbR1r+moXox2UpAcYGpyOlTEDfNDJMsAeBdCE1M=;
        b=XZfjkbmgE0Yvamu1GNDDi62/h+C84d5JUwWsTROuJlxdqZL+HVtUbUc8XahMPCg2Jx
         cbI4u5njcgyfOkHOKBMQAK/fjnNTshC3kMkCeiCNNpF/lEKOfnwTEA6DLtp7c+MD4960
         /iSRJVHnoHY3KAKFf+SdGgmnt6sWfVohgnS46n0vpu6pO9+vVMK9OqwSUd2a3nddeQQc
         PClcQZE3PXAld42MoV/G7J5+caP+7qEL4C5YgdjYoxJLmcN82TQo5A5Ri8RxaP8+wL9Y
         OckyocfE37DbzAuTC+xyzzb26Lu6zCPdeKdP/A0m3NgYyRK3o42hsYu5T2jnF/fP+Jn+
         9Vwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dnENAk9D;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DuezjbR1r+moXox2UpAcYGpyOlTEDfNDJMsAeBdCE1M=;
        b=EJrGnXfb6qYjsd/kd1AzFz3qC5APSx5Ic6TkJOcFtAMNL6UElHlmg0HLE3nFugPLwb
         iTAKYupNyimxEsYBZwShb0cdFijZgOrAT0GsRDOw4iHeH80NS6/UXNfOMVp6ZaToEyR7
         SDmt+S6mEYOiJ5o26l1uX04uSGL71bL7KLlPLCH+/eIYfp9qk1VBVd0BDHveuw84BfaI
         50n3is7Trt0n0GHXxs7xalAYZPZn58/f//n161aZn5aFvsrASVvGoHECqlpdd17ZmEzb
         SfQC68aqIaK51hIJb/JI4TKXNKePAMcvsxH2t4LnouqXN8WEwFxxxyL558NP2Ojne4iQ
         yuzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DuezjbR1r+moXox2UpAcYGpyOlTEDfNDJMsAeBdCE1M=;
        b=lihIwfeaByxSUvvTEB2+jyyjxMsMWcJSYae6aJxKGsjgTwwrm0cIZWZ5pVHl88d3RU
         TU7sRdkLzX2nM7znZWaBHXj+7Vy5tVEpyZBi1S+Fp5X7SeUUCOq7vY0MKMpoRUE40npY
         8uQsT9WOeW/WEMeIXwqVrjm9n7HbPKS2enoWM1n3hF8hjp4SbW/Wo+cFozDxo/arVfwx
         c/41ZQubgqwDVEcpgOIgqD20VpflxvAeMl8jbcVdsYCSKdrRJL0aPLopEW1R5L4udjxV
         e8lSu2rhqJZrXN/A8SOezA5IDOiNokQUadJHr6vnx53y7JCkceMHBJQAzNT4x8s2xrKq
         XGOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CTZNg2izqNUKHxCpNq3x0GlpAr2vSTWywjf3wyrx1ta34cLZ3
	U4nOv5GfzjWVgWuiS2S5+h0=
X-Google-Smtp-Source: ABdhPJyciUP1xT1/M5kLRXK4ZfGQr94TrjjzGZMEFHau8EwqIyJOH9rXE5xqATvYy9ABmZvfZpuwaQ==
X-Received: by 2002:a25:4187:: with SMTP id o129mr6847226yba.455.1627419555649;
        Tue, 27 Jul 2021 13:59:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6e04:: with SMTP id j4ls104536ybc.7.gmail; Tue, 27 Jul
 2021 13:59:15 -0700 (PDT)
X-Received: by 2002:a25:4f08:: with SMTP id d8mr33381945ybb.10.1627419555195;
        Tue, 27 Jul 2021 13:59:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419555; cv=none;
        d=google.com; s=arc-20160816;
        b=X5F9td8ZT+rBdOYwIyM32OtDu5E7mILMmTKNnnq84WWzKjdinHSchxoFSrYKQBSW/A
         CNG0wOZONd+OKEgveKA8oVQZOKXla2LzbsJT6mSd/rPACyPOFWtlf/lK2gEd+d8hem8p
         M6KVkCHLNHm23h6W7RNIFAdg/R5bQUj5Xojuxmd53h+Aa7CD+ie+BCQw++oytg6NMOL2
         PE9bfbUzCUVrbHSmjiMStrWmTeAqUp2agb31PyYxVlu5jYwlPq3H7dBcixuqcGEc/0AQ
         x0+E7r/QjTVNhZUOsewbr6LJwAYBK4I7qXatzZkFXAye7uT5kFMX9gUwYx9tG+MmCylX
         xyIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jkEBu3cyC8P91iNzwefz43r+qwwsnaf9Um6lJSfLX/U=;
        b=g+z439vz3XCM8C7BQm1wCJ9SmvRscfHWbAwEG+b3nJRVQxkSjcJ+skeLMPHQNQunMx
         nCpOqyk0sSWPM3Se8q4s37ZbBLSxb0x/UgeRkbgE+pmD47fRQDjtFTPIW5dyXI0XN1Qn
         IKrk+bV1oEA2lt8vukR4ZzktHp2HODtYZaWSR+SEMb7ZJTybtuvAkiY4QdvFxv3TkngE
         ywjMCrtywEjz4+xjbtTLKIPkwiFsRjMa4ga3ThyBQrsoTXkzF5FXIkTdoUeuKmit89NV
         ybZmYDWsnPjDNc7tr/4eWBN0zQfoJts9d2fOu3qSurxvFvJkpU6PNvuXqDzeC7+1jctY
         1aVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dnENAk9D;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id z205si243058ybb.0.2021.07.27.13.59.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id o44-20020a17090a0a2fb0290176ca3e5a2fso1052223pjo.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:15 -0700 (PDT)
X-Received: by 2002:a63:1658:: with SMTP id 24mr25466811pgw.307.1627419554930;
        Tue, 27 Jul 2021 13:59:14 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g27sm4893301pgl.19.2021.07.27.13.59.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:14 -0700 (PDT)
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
Subject: [PATCH 64/64] fortify: Add run-time WARN for cross-field memcpy()
Date: Tue, 27 Jul 2021 13:58:55 -0700
Message-Id: <20210727205855.411487-65-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1942; h=from:subject; bh=RTdC1l2OZqdjmeHWbAdwbLJoQzG6khjndsQEFnTv5CQ=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOOoYe9sIhYxHQvPTRJ442xiTpScfryHfKvIe1i sHyzRDqJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzjgAKCRCJcvTf3G3AJgaOEA ChcfQRhtSTlAFifX9KeThgQ0Uq0d8HgqX9d7L7di9/gmd2+q9a2jOeVLC8gckPM5zLCPjGAPeADcAJ d66hhTLJ1w+E4pD+VvWPPeopnlvv/UVfWd8PB4LJbpoWEceJ6eDTiiC/iLcY/ccmaowSsyM+RD0OP5 pMnkTErmHRoT4p4KW6sBF/D5BjOB39tfSy91Re1raHesEqaFybA9fcJflSdn9W1aI0bHciireUFofB T7rpT4s4qFia+UxE36sxzshuQHwig6S/H7514YsynGyxfM2Qklu8gbfDJ6LAQkHClc0bfyTIiXESyg ywDP93+de3A/S6fGfgl93xa940kRjzrhL1qnzlP0zaVOVbpcgLzsYJ545IJ+TmM8HpJfojPa8GKSuj R4VLih6/XrTEQA2B5d0z/qwYFEm2tk1ALTz5bfkiQLeNBQmj07WzORr0H4yRF3LHyo1EMp06zJeCss ob/ijvKIueEYm1x2q9NTIgloeNO+GTCHYSFzMjtXiJQtqMTwWCPDd7OHie3E3Zdy5kLslb0XwSb4bI 13oeoYOHrWStAAAcuZNIxS1XS1W9LtGkezYc7wGb1YsgX/cpuksW4RJ70bOOYlCUI7ORAmfo/O5xvj 2M/YGfM4cY13yTZbLkY8Kekpx9XUxEtviQZlLWMI0ntWBHVrpbS8XpEjS9xA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=dnENAk9D;       spf=pass
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

This enables the run-time checking of dynamic memcpy() and memmove()
lengths, issuing a WARN when a write would exceed the size of the
target field.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/fortify-string.h | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
index 4afd42079d3b..0d0acd959ba0 100644
--- a/include/linux/fortify-string.h
+++ b/include/linux/fortify-string.h
@@ -260,7 +260,7 @@ __FORTIFY_INLINE void fortify_memset_chk(__kernel_size_t size,
  * V = vulnerable to run-time overflow
  *
  */
-__FORTIFY_INLINE void fortify_memcpy_chk(__kernel_size_t size,
+__FORTIFY_INLINE bool fortify_memcpy_chk(__kernel_size_t size,
 					 const size_t p_size,
 					 const size_t q_size,
 					 const size_t p_size_field,
@@ -309,13 +309,25 @@ __FORTIFY_INLINE void fortify_memcpy_chk(__kernel_size_t size,
 	if ((p_size != (size_t)(-1) && p_size < size) ||
 	    (q_size != (size_t)(-1) && q_size < size))
 		fortify_panic(func);
+
+	/*
+	 * Warn when writing beyond destination field size. Since
+	 * flexible-arrays are considered 0 bytes, we must ignore 0 sizes
+	 * at runtime for now.
+	 */
+	if (p_size_field && p_size != p_size_field && p_size_field < size)
+		return true;
+
+	return false;
 }
 
 #define __fortify_memcpy_chk(p, q, size, p_size, q_size,		\
 			     p_size_field, q_size_field, op) ({		\
 	size_t __fortify_size = (size_t)(size);				\
-	fortify_memcpy_chk(__fortify_size, p_size, q_size,		\
-			   p_size_field, q_size_field, #op);		\
+	WARN_ONCE(fortify_memcpy_chk(__fortify_size, p_size, q_size,	\
+				     p_size_field, q_size_field, #op),	\
+		  #op ": detected field-spanning write (size %zu) of single field (size %zu)\n", \
+		  __fortify_size, p_size_field);			\
 	__underlying_##op(p, q, __fortify_size);			\
 })
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-65-keescook%40chromium.org.
