Return-Path: <clang-built-linux+bncBDPYNU65Q4NRBWNGQOEAMGQEEK45XUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 4869B3D8635
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 05:47:39 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id 16-20020a17090a1990b029017582e03c3bsf5414299pji.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 20:47:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627444058; cv=pass;
        d=google.com; s=arc-20160816;
        b=dxeFud+WOBF0vUGcQy9q93vaNIn5haY5ZIQXwK5zBGWry2hNfcYjF8N2oJ2vlO8eOG
         Qf02zlU4ZV79+Sn5NxTj37BX1dOJOPR46xAy38chCz7/G/Sh382v3vTh6dvhm6NXr0ka
         rN7OeU4MeHBnuLUkLyAkcUA8FImmjBb1kB3LxPuVBDEbTk1hTKYVg+voKpn9S47uv7/u
         R2oMevFcnYxY4ACxvKeJJFIPLnsBio7hM5jl8G2U3eSHiTpODweOTvt6cnMblWwZpxSG
         xhkq3FknX3dZE12FRzIGFstwFI6ICsjROp6OcRBI3pbTPOd0DJG409oxzwdQgC9+Bk9Q
         azbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dlPaIyROEnk1kpyJNfEV83M7N86UAa6TRGf/VwK8dVY=;
        b=DGrjofSp9YzZpqMxN0DwHAUY+NSogoEmO/6cw9j3DvQ1RvU27FiKWKOnwNQWwr+5lb
         IuDc0uAvEai1qd1UeWwDX9Ag4bMjlLiu16Do0q75aLU4BXaTmT8t4ksk2pMsJEw/4SRX
         QkEBMwgx2pYu/+5dVNwt9Q1jRdiptB81nIrLkmvMHCU8HcodUBmME2tPiVXRDjJCzax9
         WI4FeZe098J1PkkEAlmJonhvQ1D0h1TPD4MTMK8WEk/fwMtQjdCgXiJJtfhgQvXZy3Jw
         wleaH2mkQPtBrj+IRmicp5YLznXeBr40byslGdSNkbGTnt3BjwPx8wokiExGD1deuodF
         LOKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=M1wliU3v;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dlPaIyROEnk1kpyJNfEV83M7N86UAa6TRGf/VwK8dVY=;
        b=Lg06esooCgbLeJVDTatVehnFObgD6yf/zgmMNGPUIv+A4GuJ902xk4c1rbDD34Fk0u
         cWdud83lNjHKS0PEXukt/TmicyBZbJ9DVVmi/iCR98xi/dp8mg394XZ8YLYRbcc0SNy1
         sLXU5LetlAca1e5QuFH1o3LieaQ4c/nB12j7tMlSP07mZwKOGe9LSWWcPmVjIQrA/Jvf
         L7U9If6d3iU+1dnSs/nYrtK5HiB+7WWYS5bjrPaHu6KnPWtx/fYXRCksnNMvhltthkc1
         FCTG+EIblwtwN4nmcLy4d8r51N4BZiPnJRjCkEREde9ZXuB2WmRl6KNah+mRb471c8XR
         dJPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dlPaIyROEnk1kpyJNfEV83M7N86UAa6TRGf/VwK8dVY=;
        b=nsEsVwxKTAFA1zuCqODTkzfDirKTIpZZ4iAMu0UegY8U6RRzOoBYHv2y6JWPDWoSBq
         Rt3SOHyw5Hv0ptJfZ+2d8l0RsqHyyJEd4Y4HHjHyorVRPX9QRdqzs4af+kTeT9kZyYGs
         SG3eut2FfcJge1Tbb1leRXrf+QknbrLUm9y6ojyP0wLKqDms5MBgpohfFyB2N2pswPx6
         5BSQASAJANlFYF3soBIPTWwz9Ue2qCwJFuxNg+Wc42yOJgfFwJMQfRjpiowcAd/D2bV+
         seSs7WI7U9urebB1Pf4phIIcl/r4iAj44fjoSVw6bPrR3LmNLWz9aWe0GyPfxWVo7cmD
         80jA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53064CKegqDHCourbEeXIS7svfHSkkRyGF1/R3G1h+hVo4LYf8dV
	0cDu296yw52la9JVUdP1KaU=
X-Google-Smtp-Source: ABdhPJzNk2Y8bD3GxPSGD8lEbgFwfZdZvcLiSILY5En7pNNwtfBSv434j7gbA6nUyx8BhxInj31E/Q==
X-Received: by 2002:a63:6e83:: with SMTP id j125mr26172119pgc.12.1627444057910;
        Tue, 27 Jul 2021 20:47:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a4c3:: with SMTP id l3ls527170pjw.0.gmail; Tue, 27
 Jul 2021 20:47:37 -0700 (PDT)
X-Received: by 2002:a17:902:76c9:b029:12b:c907:e144 with SMTP id j9-20020a17090276c9b029012bc907e144mr18847293plt.5.1627444057275;
        Tue, 27 Jul 2021 20:47:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627444057; cv=none;
        d=google.com; s=arc-20160816;
        b=hygagF1uAgQA1mcO+WlxLg5a5H2f9VipOcKk5eoMALNGEQ9dycmtfeBmsj3LdE8DxX
         4f8JhkxaMS7YbJhgZbJjB4kbwNk6spJLzLqqFDmtZEQzwjeWyewVQLTBskATW/MNfcXN
         0b9QxTLqLFmbgA0vlJ9fSe5cIkN7PPibdW5SVBZeEMpUdgV+BxQ86alTesiopKJ/UQPc
         WOPFJOYiN/sLjIyjA3zXsDndXaEky4kPn++ouz35NNPeQm9qnRb+3u9u5/9ZGHP3nxpA
         vIOTFF5aPPhAGOvIwgl3Wjf4qcICX+qIkE5U3TsW2JLcTEIQ8XNauHfXfZzdJb65ac9K
         84yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+a8Jl9d210pu5Edov5c0QXIZusKbTH4YpEUeIu5uR9c=;
        b=K7NMKOwAYRWn8g8S0q+gJIDgqGmr96e7R/G85P5Ot/cAEMycvkyVRiaOiz+UwZHzTE
         xv62bh2YgWEJRMcwsBIvGg1lKmgF3HQgFDY8EaKPj85HzW8u7vahc8Fk1y7s1n5DVxie
         8mEFQ3Xjao7pjLhnHvTz3SJNMivAXMomnxDon6FErjAdsA2EIzfllKzyLdA9sZt7lgQG
         lOoXEspJ9v7MakLmfb/z3VCs02eNb0oNHxdYNO26fUBZ1/EA0BPVJQKiySNqamMJrlo3
         GSrvu503phRYX/TG4GiySkGJdIa+tgLG8hKO92TZbub9dpB5lBVFqIR9yf2PUVgeZcMJ
         5qMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=M1wliU3v;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x20si195169pfh.1.2021.07.27.20.47.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 20:47:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 16CCB60F9B;
	Wed, 28 Jul 2021 03:47:36 +0000 (UTC)
Date: Tue, 27 Jul 2021 22:50:06 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org, Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 05/64] skbuff: Switch structure bounds to struct_group()
Message-ID: <20210728035006.GD35706@embeddedor>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-6-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727205855.411487-6-keescook@chromium.org>
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=M1wliU3v;       spf=pass
 (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gustavoars@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Jul 27, 2021 at 01:57:56PM -0700, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memcpy(), memmove(), and memset(), avoid
> intentionally writing across neighboring fields.
> 
> Replace the existing empty member position markers "headers_start" and
> "headers_end" with a struct_group(). This will allow memcpy() and sizeof()
> to more easily reason about sizes, and improve readability.
> 
> "pahole" shows no size nor member offset changes to struct sk_buff.
> "objdump -d" shows no no meaningful object code changes (i.e. only source
> line number induced differences and optimizations.)
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Thanks
--
Gustavo

> ---
>  drivers/net/wireguard/queueing.h |  4 +---
>  include/linux/skbuff.h           |  9 ++++-----
>  net/core/skbuff.c                | 14 +++++---------
>  3 files changed, 10 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/net/wireguard/queueing.h b/drivers/net/wireguard/queueing.h
> index 4ef2944a68bc..52da5e963003 100644
> --- a/drivers/net/wireguard/queueing.h
> +++ b/drivers/net/wireguard/queueing.h
> @@ -79,9 +79,7 @@ static inline void wg_reset_packet(struct sk_buff *skb, bool encapsulating)
>  	u8 sw_hash = skb->sw_hash;
>  	u32 hash = skb->hash;
>  	skb_scrub_packet(skb, true);
> -	memset(&skb->headers_start, 0,
> -	       offsetof(struct sk_buff, headers_end) -
> -		       offsetof(struct sk_buff, headers_start));
> +	memset(&skb->headers, 0, sizeof(skb->headers));
>  	if (encapsulating) {
>  		skb->l4_hash = l4_hash;
>  		skb->sw_hash = sw_hash;
> diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
> index f19190820e63..b4032e9b130e 100644
> --- a/include/linux/skbuff.h
> +++ b/include/linux/skbuff.h
> @@ -800,11 +800,10 @@ struct sk_buff {
>  	__u8			active_extensions;
>  #endif
>  
> -	/* fields enclosed in headers_start/headers_end are copied
> +	/* Fields enclosed in headers group are copied
>  	 * using a single memcpy() in __copy_skb_header()
>  	 */
> -	/* private: */
> -	__u32			headers_start[0];
> +	struct_group(headers,
>  	/* public: */
>  
>  /* if you move pkt_type around you also must adapt those constants */
> @@ -920,8 +919,8 @@ struct sk_buff {
>  	u64			kcov_handle;
>  #endif
>  
> -	/* private: */
> -	__u32			headers_end[0];
> +	); /* end headers group */
> +
>  	/* public: */
>  
>  	/* These elements must be at the end, see alloc_skb() for details.  */
> diff --git a/net/core/skbuff.c b/net/core/skbuff.c
> index fc7942c0dddc..5f29c65507e0 100644
> --- a/net/core/skbuff.c
> +++ b/net/core/skbuff.c
> @@ -987,12 +987,10 @@ void napi_consume_skb(struct sk_buff *skb, int budget)
>  }
>  EXPORT_SYMBOL(napi_consume_skb);
>  
> -/* Make sure a field is enclosed inside headers_start/headers_end section */
> +/* Make sure a field is contained by headers group */
>  #define CHECK_SKB_FIELD(field) \
> -	BUILD_BUG_ON(offsetof(struct sk_buff, field) <		\
> -		     offsetof(struct sk_buff, headers_start));	\
> -	BUILD_BUG_ON(offsetof(struct sk_buff, field) >		\
> -		     offsetof(struct sk_buff, headers_end));	\
> +	BUILD_BUG_ON(offsetof(struct sk_buff, field) !=		\
> +		     offsetof(struct sk_buff, headers.field));	\
>  
>  static void __copy_skb_header(struct sk_buff *new, const struct sk_buff *old)
>  {
> @@ -1004,14 +1002,12 @@ static void __copy_skb_header(struct sk_buff *new, const struct sk_buff *old)
>  	__skb_ext_copy(new, old);
>  	__nf_copy(new, old, false);
>  
> -	/* Note : this field could be in headers_start/headers_end section
> +	/* Note : this field could be in the headers group.
>  	 * It is not yet because we do not want to have a 16 bit hole
>  	 */
>  	new->queue_mapping = old->queue_mapping;
>  
> -	memcpy(&new->headers_start, &old->headers_start,
> -	       offsetof(struct sk_buff, headers_end) -
> -	       offsetof(struct sk_buff, headers_start));
> +	memcpy(&new->headers, &old->headers, sizeof(new->headers));
>  	CHECK_SKB_FIELD(protocol);
>  	CHECK_SKB_FIELD(csum);
>  	CHECK_SKB_FIELD(hash);
> -- 
> 2.30.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210728035006.GD35706%40embeddedor.
