Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBROG6KEAMGQE6JLVXCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0477B3EFA98
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:05:59 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id b9-20020a170902d50900b0012db04e2bf0sf436303plg.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:05:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266757; cv=pass;
        d=google.com; s=arc-20160816;
        b=MogYNlaDrERRCW5ok5oq3qoYYuOHnxPkvVJ2NLsAaz2dQJHRDYD5m3mEY5XwNcE9hk
         ZEDaYhsfTfx0sxUomWQsGSkBNgnTQrd6EurEnqsRb5Kuex1BTYy5nU1YdV77OrKAwYEQ
         V+rGHdgzQWU4an+RmABK/I7IixLfIzv6OCT93qtw3bb6IzynM9bLNUEWynZ2gzO/EnnD
         42zK/avwUYkL+HPConKo9+pv8QJRqE0kbHCHS1JUlUp/XSF1Eep+8iR9WABqRIX27yRB
         9G7/j53GFDMPo/mv5IPqvPMT2zxKPIV38I04rrhF3mOZvh+jTzrNw+M8G3FOaRnVtBAc
         db/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pydM+iNVjttGSIa6j4OHALccxNxIB0RkXaftHRq6+JY=;
        b=XUg1LbnpWRKObCNLN9GGwDBs+zpEUAMrJ3m7ZmRdEQw/AI/EKsCwX+/LufSZe4Gq8T
         yhrFjvGSgUMvRmHe/XuVmG9jh6+D8NZ40wZPk01XakJOLsrTFj3M75RX00+By37RjWKP
         9hd60Z5aPCJUdYkg0vSEr61IvncB/Q7VuHPOkW7EEVSL/8N7FShy/cKUjuu5S8ICsGQh
         5ch8x/KcF+VVrEVMUeCWgx0Xr847afTaQZkDPY/GwtCyQU56rDtjahfVBoFI4pNuwZaE
         kCVmn92cG5rjlQNWmy5D5i6HNMemoCYUkRWQKmZY/SgVngF2q79b+5KAQhbVwyJRNsqK
         vOTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fqfWH5xz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pydM+iNVjttGSIa6j4OHALccxNxIB0RkXaftHRq6+JY=;
        b=HeOsSjYS5yvNhs/ZHwChIDVvzrPpOZQ+bcJlvrif9wg8Pd6jx2/QcPr+pp5F6t3K2w
         jXG2zbWKXDJIlsD8XPDEPgMoC17V78h/iIdvQmlqWDc+LUeEewjSF1UEAyg33VHyWAHs
         X32Z32XHT8nO+8uzZQaAFUQP6scpbYJKpRKOWZObrj/e6sB+yxeuqVmXhhW664jm0+wK
         pf/8Aoi4AZSTX5Uy+wDqlp2tGlgP4E5BBgF0nMssSux5CHOeSgQPJlFTKU+nvkXueZxY
         KJOsww96ysDidU+QwylB2y7Aws0QbUKsCeANIpl9pe2WA8on9JZxSsJ2+NVMV2cbdHm8
         6Jxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pydM+iNVjttGSIa6j4OHALccxNxIB0RkXaftHRq6+JY=;
        b=skPYrLUAiueZxpTU7uoHTBYcJMM2VWa0FOxSLdjCw4teDLLV/KWO4Pu1OuHnh8t8zh
         lIj2y0/dGUjIOzngQy4Ud0RWQFZMsMdfwDIIaT1fX/ChHzu7Mk/cF/5QdIgNzMyrTUr9
         9rqMrAe7B/KsjAotkuL4zpKHzGE2Mg9/mvFRAP1ZS5ktkhWJkXhlKyqtrCJnJS53EqGk
         ZhRqqBAkNs5dl64Idr2ya9NYn+4UNSHZv/kbSwMBXu3E8CBa85iBKJFzpg0RKOJT74vf
         RoF0sXFVIULQ7R/pxGyGmnAulFmvlBltM57K86NxpTAHmhROul6qtgYQE4MPw28nGPZa
         PdJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321iGOdhnImT/Ok6BN3fQGdlGb0BNJGEFpb3QJy9A8vgDZVebyf
	KCm9tUslVGRaTf+gqNulkF8=
X-Google-Smtp-Source: ABdhPJxl3TvVSrzVjyMkNgs4uFeiLmTFnl6jtnhaNO66tG7fzvfIm6KSefRPXCT0GG4S9+Of42a5Ng==
X-Received: by 2002:aa7:91d7:0:b029:3c9:7e08:cc97 with SMTP id z23-20020aa791d70000b02903c97e08cc97mr7458633pfa.35.1629266757698;
        Tue, 17 Aug 2021 23:05:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:494e:: with SMTP id q14ls654155pgs.10.gmail; Tue, 17 Aug
 2021 23:05:57 -0700 (PDT)
X-Received: by 2002:a63:aa43:: with SMTP id x3mr7349134pgo.208.1629266756888;
        Tue, 17 Aug 2021 23:05:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266756; cv=none;
        d=google.com; s=arc-20160816;
        b=T0tSmbTGJj0/zV+/aZyHE2UzH5CNq4zbIQm5fmxdyxFX2/vV9NrcuEQFIFrTbWkTBs
         1VGtwOyGtJDRGGhMG8WAnuM62ZjCHPfLcyZgeBnSyFhT3EYFsHBTl46AqjudnnoXI55G
         bTo/RxONau5/tNwwTw28BPWt1CeGgYEg1hM+fOvBXtRcRlKezADAkdsbhWpmtk7lOGUV
         DR4qPRtdZ11o0DcUNtY3hkgn25dIyDhNQHGV+EVySg14wt1vKftp2OsvlfdaHtWrsP+F
         zd2JAapLQna30pIc1/OMOcAqyulMuiX/ECXFW67yJ98YTEmQpBAhQlTugNTfvEAbNXrW
         pEag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Df3M08ozQZ/wuG86+AN6C9MACPf6Ua4LnPIl1VqdGkQ=;
        b=frveuBLiji9CW69/LmxwUifN7LqJn2DsfMteFY6Fpl/gww4VPxV4i+a7ScEt50X7Vl
         PYguglGzDF0LX6FSD7MEIPw2BBVIo9o/mjpZq5JHtyZCV4RaB/SraO2jQJh5VRDpsnzB
         MVt+qLH8rTo0+jgqGz6a5UZ2kibnwNXL2jmaVDnO+Wxa9Y0ERsZCi9w5AFYUEBbYXWYo
         uEbgPSe2f5VUkx2/e/tinZcIdEgrUVFkgemchhZW2yfowgcarOr8jVuuDzUuP8sIIX0h
         bEi+qzC8/e1S/rJHs9qoP/Q6B73zTQNkQKNe3Wr5MwrThkQbC1klzmOsuOGbKs5N4Obe
         7A4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fqfWH5xz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id u5si344530pji.0.2021.08.17.23.05.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:05:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Received: by mail-pf1-x431.google.com with SMTP id a21so1069649pfh.5
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:05:56 -0700 (PDT)
X-Received: by 2002:aa7:8116:0:b029:346:8678:ce26 with SMTP id b22-20020aa781160000b02903468678ce26mr7642769pfi.15.1629266756663;
        Tue, 17 Aug 2021 23:05:56 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id fh2sm3751402pjb.12.2021.08.17.23.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:53 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Jason A. Donenfeld" <Jason@zx2c4.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Jonathan Lemon <jonathan.lemon@gmail.com>,
	Alexander Lobakin <alobakin@pm.me>,
	Jakub Sitnicki <jakub@cloudflare.com>,
	Marco Elver <elver@google.com>,
	Willem de Bruijn <willemb@google.com>,
	wireguard@lists.zx2c4.com,
	netdev@vger.kernel.org,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 07/63] skbuff: Switch structure bounds to struct_group()
Date: Tue, 17 Aug 2021 23:04:37 -0700
Message-Id: <20210818060533.3569517-8-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4396; h=from:subject; bh=vIFaehJlmgaacelmPKMYZbSRddYmlAVC4AJuX8jcTLo=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMfC5Mwg8GEVNb5CXtGiGtsK4FwOhKAw15TLI67 rTMBsEGJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjHwAKCRCJcvTf3G3AJlkpD/ 9IW7rDFPZH4dI/1/P/uo+5nWHunuZP3664cpMwhwx+rHENSDLF5R/LmHEenMiL1vnoQ8J1iVu3EVgo 1xzQfV/jxCj8E9GdkDHFUogUHVaPjRb9CTVM6DHcTZ2/xkvhVi8nwdgd1lDfJe9XrMTuBkF8eEj6BO YWNUoNQdRGh2+IXaTCDDWCvkG5ZTfO0sXT/bDh9DMGodRIG/luglNHHLvts3knlgR8QM0WIzhsColC AHHcXV2gUexGt/UBGejzG1NRGAXDmkHZAIsMu7BsFDpweoRW6XGmOMOpo9rtP10ar9yPYp2+GFlioL 9tghS58ciKMcV1+v+6jX6Do4ybmYeDfU2rB6/Gpct6yVAs3pYpuFpRIew7WZItwzf2nCMt0ZEYduDJ Drj4jLrZUyIs6ixwydVuLC8Owg9cb/J4qXw4vk0tJ9evOSP/mJOQqUcFcIUdExIArnAVtXlgdzArhu 7hXpCD3qNAEHF+aWjVKGh8gTmrdYqhSN97k0I7jKrRx2kLtSrpcBS4ZQwjSaSERANnuDAk2of2H6Zb bUqvY5heKLllEOQg8ihTwR1efnbUnFXFFV5cpEUmN1YuS3na93hd4TS0rCXMIPIDmYPqG4ut0gh4rf LCZqI3HgwkGyN6BoC0cGob6w/hrvkXWGKt0s1vU5y2KdKmA62+teOpZ0qiVg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=fqfWH5xz;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::431
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Replace the existing empty member position markers "headers_start" and
"headers_end" with a struct_group(). This will allow memcpy() and sizeof()
to more easily reason about sizes, and improve readability.

"pahole" shows no size nor member offset changes to struct sk_buff.
"objdump -d" shows no object code changes (outside of WARNs affected by
source line number changes).

Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Jonathan Lemon <jonathan.lemon@gmail.com>
Cc: Alexander Lobakin <alobakin@pm.me>
Cc: Jakub Sitnicki <jakub@cloudflare.com>
Cc: Marco Elver <elver@google.com>
Cc: Willem de Bruijn <willemb@google.com>
Cc: wireguard@lists.zx2c4.com
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Link: https://lore.kernel.org/lkml/20210728035006.GD35706@embeddedor
---
 drivers/net/wireguard/queueing.h |  4 +---
 include/linux/skbuff.h           |  9 ++++-----
 net/core/skbuff.c                | 14 +++++---------
 3 files changed, 10 insertions(+), 17 deletions(-)

diff --git a/drivers/net/wireguard/queueing.h b/drivers/net/wireguard/queueing.h
index 4ef2944a68bc..52da5e963003 100644
--- a/drivers/net/wireguard/queueing.h
+++ b/drivers/net/wireguard/queueing.h
@@ -79,9 +79,7 @@ static inline void wg_reset_packet(struct sk_buff *skb, bool encapsulating)
 	u8 sw_hash = skb->sw_hash;
 	u32 hash = skb->hash;
 	skb_scrub_packet(skb, true);
-	memset(&skb->headers_start, 0,
-	       offsetof(struct sk_buff, headers_end) -
-		       offsetof(struct sk_buff, headers_start));
+	memset(&skb->headers, 0, sizeof(skb->headers));
 	if (encapsulating) {
 		skb->l4_hash = l4_hash;
 		skb->sw_hash = sw_hash;
diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
index 6bdb0db3e825..fee9041aa402 100644
--- a/include/linux/skbuff.h
+++ b/include/linux/skbuff.h
@@ -801,11 +801,10 @@ struct sk_buff {
 	__u8			active_extensions;
 #endif
 
-	/* fields enclosed in headers_start/headers_end are copied
+	/* Fields enclosed in headers group are copied
 	 * using a single memcpy() in __copy_skb_header()
 	 */
-	/* private: */
-	__u32			headers_start[0];
+	struct_group(headers,
 	/* public: */
 
 /* if you move pkt_type around you also must adapt those constants */
@@ -922,8 +921,8 @@ struct sk_buff {
 	u64			kcov_handle;
 #endif
 
-	/* private: */
-	__u32			headers_end[0];
+	); /* end headers group */
+
 	/* public: */
 
 	/* These elements must be at the end, see alloc_skb() for details.  */
diff --git a/net/core/skbuff.c b/net/core/skbuff.c
index f9311762cc47..fd5ce57ccce6 100644
--- a/net/core/skbuff.c
+++ b/net/core/skbuff.c
@@ -991,12 +991,10 @@ void napi_consume_skb(struct sk_buff *skb, int budget)
 }
 EXPORT_SYMBOL(napi_consume_skb);
 
-/* Make sure a field is enclosed inside headers_start/headers_end section */
+/* Make sure a field is contained by headers group */
 #define CHECK_SKB_FIELD(field) \
-	BUILD_BUG_ON(offsetof(struct sk_buff, field) <		\
-		     offsetof(struct sk_buff, headers_start));	\
-	BUILD_BUG_ON(offsetof(struct sk_buff, field) >		\
-		     offsetof(struct sk_buff, headers_end));	\
+	BUILD_BUG_ON(offsetof(struct sk_buff, field) !=		\
+		     offsetof(struct sk_buff, headers.field));	\
 
 static void __copy_skb_header(struct sk_buff *new, const struct sk_buff *old)
 {
@@ -1008,14 +1006,12 @@ static void __copy_skb_header(struct sk_buff *new, const struct sk_buff *old)
 	__skb_ext_copy(new, old);
 	__nf_copy(new, old, false);
 
-	/* Note : this field could be in headers_start/headers_end section
+	/* Note : this field could be in the headers group.
 	 * It is not yet because we do not want to have a 16 bit hole
 	 */
 	new->queue_mapping = old->queue_mapping;
 
-	memcpy(&new->headers_start, &old->headers_start,
-	       offsetof(struct sk_buff, headers_end) -
-	       offsetof(struct sk_buff, headers_start));
+	memcpy(&new->headers, &old->headers, sizeof(new->headers));
 	CHECK_SKB_FIELD(protocol);
 	CHECK_SKB_FIELD(csum);
 	CHECK_SKB_FIELD(hash);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-8-keescook%40chromium.org.
