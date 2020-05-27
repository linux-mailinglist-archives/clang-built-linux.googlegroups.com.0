Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3NOXD3AKGQEYYKZSDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id D00941E3A97
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 09:31:59 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id q24sf1996318ili.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 00:31:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590564718; cv=pass;
        d=google.com; s=arc-20160816;
        b=EDAXQ5TutkCH79i1D/TdXGWy+yIyB1he7U7P1NaC/7+b7zpS1xAxjIz1zH1fp8EzHr
         QUtWInfUhah9W++Tj/YUWO/c6LIMlzlChKd82CSGwQ+kyf6ADTYMyQdP0FzIUobPl/oq
         NOXzmfLWnK+e1McrB6tWghf60SUMQs7bEbs3v3PeeSUg8GzTMO6mZ6kMi1BsWJzjJdnz
         WxQ44HShb9HL2jWp5/TQzJeVOzcc/SLaY7d4xBgkrh7uXuu5gWCwkGc/ps3rMp8m5cBx
         Mugz+8oGjYMNFbHQLVWMpGX7hA3O6xgYx2ec7SShLJcADu9vY5YB3BlFGtZGIJk9iYed
         DmKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=BzahQ8ymE1yP0co1dZEj5zLErWw1IsoDiyEgHwfMFhc=;
        b=lB79dgGVCrh3kbWJgnAUzPv0HW8WxPa9mY8WISIREkqPn3SdyWURruWgBfZihFyk3M
         xiRvW4WKRcs+vrDvxNP/PuKnGIdf/7GgWuItQo0YAp67+Iw6AHHP1WrInh786Zi4kMcg
         9f9ibo8HhkHKT5fL+dO3k3NyzsJfChkpRcewR5S/3IX4uFlvZm7vKpvu1xun4TxHa0Rf
         NA2QupTES1pbsGqLdq1FjS0ju/c2arIU/JseZoPtbzGlCtcz1AiM2gE3Ej1JNQ0F+ht9
         EGfX+FETkTvatRiugwMBwNl8F2JdiBLOkIVZzFJb0bZhG1ESoj6cJ4FgzqV62oMiUxEP
         cjgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S+SvSCvK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BzahQ8ymE1yP0co1dZEj5zLErWw1IsoDiyEgHwfMFhc=;
        b=PeN8RiEwQkde4kFkX3Iy5/ghXCTUW9qzmL1S+eYmGKI3QzOmExC7r1ivUaZABhBqjW
         gUM7iA1vV9nhKv9SxyTHnsJpWu5lueoeptnCreErg8Cyu5C8arBWn2utXNnUkzcy9evX
         J4a8HtMu7lA1aG6tDn/YRt73TJbeONqC0f7Sz2reK8XUgCmpDljP73IrXkHC7VTTE+mh
         SqcyZmh/1r1bQnqL0GfcvAJCrw+WUo21lJIiW1TOI69gUeQc34/uEBNNjCYWcHIwRjnD
         Yv98gULea+oL7rrbL4iVpbKt/c0TG/RaW+qwsbAXP/LfI5wA/lRc8Y+gVTVRcO+L8CFc
         0/hA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BzahQ8ymE1yP0co1dZEj5zLErWw1IsoDiyEgHwfMFhc=;
        b=ALHXLIH7C2F2O2lPZxCjIQcvJhBQxgNQrRUjgQPEm6L0wZ1vk6UAmqRYtsq1AtG4k9
         mv8NwkLUV4tev327tQcHtLsvtl+kIsNiEc2TNxP+2LneY1oiStvrY/6T7rcsv65fOGIg
         R88LohghxiIBCxWMIKlMSxRLW/0o9y9+cRalW4LdUo9XXCzY4mEyqWJm49k1K8j82gzL
         atn9yGFQLHAkI7E3YXrGJx38U/YTGAtaadYFRpHtf78S+Td+1lqbIMWRoni5HDgtXU71
         KlGjThHKFtoI7a4TFXAwZStRIBTA1aR4Rlsb7J/Vzz+LK91CryYCyqwoOYP+29GmfMn8
         iDxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BzahQ8ymE1yP0co1dZEj5zLErWw1IsoDiyEgHwfMFhc=;
        b=uTDjfMVmsWf3eaC/rahbyI0dnPz+KgaBQt2kybqT8VQzJ4AeYW2e79Q32bm0tQ6qbJ
         e+xysiGi4e/IAyLotJkJtMOAzRr8N1XyHiQnu8OdtJT933JJktZ3M3LKCcFF5adshoqS
         y4Rj4PWhBpWz5GH22ofCOi7/ye5r86iUXl3pnRkZfacb4IU4/m2IEGhyVtIIX+bVuH2S
         Fp0V8pt5/ltmV4ldtPlVZY9nuLCiSOBAzyPjWPWzOSlom+jcjyrCREewCoP/qlMM4o+n
         MWrsVX21kcEQ0MWfub9b82cjr4Wj2NWx5k9HgnhucpGkguySYylcPU7cRtsLicsaMSwa
         Bcxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530W9ujie3IeHRZhdMhEzqqJsE1cAoF+iGkK2ZuhHG8cfbOK0H6s
	f4V9Ta70g5WrCb92wNUfDPw=
X-Google-Smtp-Source: ABdhPJzwsj6TrNY6HIlNXenvS2E5DepZgIOyrsz7EIcg2UH9gDkXPFByaaQMnjTQamwRUeX9AGbvaA==
X-Received: by 2002:a02:4d:: with SMTP id 74mr4417415jaa.141.1590564717612;
        Wed, 27 May 2020 00:31:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:228b:: with SMTP id y11ls640219jas.10.gmail; Wed,
 27 May 2020 00:31:55 -0700 (PDT)
X-Received: by 2002:a05:6638:44e:: with SMTP id r14mr4488249jap.53.1590564715783;
        Wed, 27 May 2020 00:31:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590564715; cv=none;
        d=google.com; s=arc-20160816;
        b=tZtjeTXY/9OUva3xuo8lmdnabo7s49mibGshqal8bm50WEubgu3INs2XsFOAuHiCWP
         FKGLIMLjl1wdlFSBmLFwHwA6Sm3XoRMJiAQzgMn1C2p9UY+icC0UZdEnazVBRvZVrplo
         GOlkPqxenBiafsx/9gedODy4aVBAfadEYrEQKdEPZ7+DUUXv6LhmgH1uC4jjPt85wrgn
         cm75KMjD+0sTFv2Rd7/890uP4bkDrEedIGqPTtCvXq2NkrE/MFXULe+Q9klgFtM5A1PN
         ppQ8gaF/6ryc8hWsLSWZ/UXPUYsNZZ+hxt1T9zloYRGsx2+fOuYbj0CY0TwCmwC+vyzR
         F2Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dDm+9Z+VPJSjQt7jMvgBvDOrkZkCZvbOfUxGN5gTgvk=;
        b=YdMSNsvrpK2dOS4mDerDVTZoVPWZn+1Jx6jyKvMGXR1uKHa5EgtJfo5ICw6JOlUgPH
         pWCxSIwAmIejgjiK79i6gv9oe5cQXd4j5GGVc0B1B8bndb+8sGjPGzxf/ChpNqWV2I4R
         E7f8tCijeUUNR4PMDPySDXepgs2Xh8+8+KtW33AUmwsJt1NLHSx7CBa/T/NkvmmRO1fB
         NG+laPfnSOSdXsLoYhd8dkfs5bw4yNKo7TBEKdhypeTu+1gUbccgzJUM5CjxaNZTixH+
         856XVdgNmJVADngSuwu8c6WGvlCq4E7OLxdFtV1gqwfbhwAx3wCCbJ44SvlGSTIXekkV
         QYLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S+SvSCvK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id n16si152961iog.4.2020.05.27.00.31.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 00:31:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id n18so11463092pfa.2
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 00:31:55 -0700 (PDT)
X-Received: by 2002:a65:498f:: with SMTP id r15mr2697101pgs.345.1590564714992;
        Wed, 27 May 2020 00:31:54 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id u14sm1371787pfc.87.2020.05.27.00.31.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 00:31:53 -0700 (PDT)
Date: Wed, 27 May 2020 00:31:50 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Rob Herring <robh+dt@kernel.org>,
	"David S . Miller" <davem@davemloft.net>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
	Mark Lee <Mark-MC.Lee@mediatek.com>,
	Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Fabien Parent <fparent@baylibre.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Edwin Peer <edwin.peer@broadcom.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Stephane Le Provost <stephane.leprovost@mediatek.com>,
	Pedro Tsai <pedro.tsai@mediatek.com>,
	Andrew Perepech <andrew.perepech@mediatek.com>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5 06/11] net: ethernet: mtk-star-emac: new driver
Message-ID: <20200527073150.GA3384158@ubuntu-s3-xlarge-x86>
References: <20200522120700.838-1-brgl@bgdev.pl>
 <20200522120700.838-7-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200522120700.838-7-brgl@bgdev.pl>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=S+SvSCvK;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, May 22, 2020 at 02:06:55PM +0200, Bartosz Golaszewski wrote:

<snip>

> diff --git a/drivers/net/ethernet/mediatek/mtk_star_emac.c b/drivers/net/ethernet/mediatek/mtk_star_emac.c
> new file mode 100644
> index 000000000000..789c77af501f
> --- /dev/null
> +++ b/drivers/net/ethernet/mediatek/mtk_star_emac.c
> @@ -0,0 +1,1678 @@

<snip>

I've searched netdev and I cannot find any reports from others but this
function introduces a clang warning:

drivers/net/ethernet/mediatek/mtk_star_emac.c:1296:6: warning: variable 'new_dma_addr' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
        if (!new_skb) {
            ^~~~~~~~
drivers/net/ethernet/mediatek/mtk_star_emac.c:1321:23: note: uninitialized use occurs here
        desc_data.dma_addr = new_dma_addr;
                             ^~~~~~~~~~~~
drivers/net/ethernet/mediatek/mtk_star_emac.c:1296:2: note: remove the 'if' if its condition is always false
        if (!new_skb) {
        ^~~~~~~~~~~~~~~
drivers/net/ethernet/mediatek/mtk_star_emac.c:1285:6: warning: variable 'new_dma_addr' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
        if ((desc_data.flags & MTK_STAR_DESC_BIT_RX_CRCE) ||
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/mediatek/mtk_star_emac.c:1321:23: note: uninitialized use occurs here
        desc_data.dma_addr = new_dma_addr;
                             ^~~~~~~~~~~~
drivers/net/ethernet/mediatek/mtk_star_emac.c:1285:2: note: remove the 'if' if its condition is always false
        if ((desc_data.flags & MTK_STAR_DESC_BIT_RX_CRCE) ||
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/mediatek/mtk_star_emac.c:1285:6: warning: variable 'new_dma_addr' is used uninitialized whenever '||' condition is true [-Wsometimes-uninitialized]
        if ((desc_data.flags & MTK_STAR_DESC_BIT_RX_CRCE) ||
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/mediatek/mtk_star_emac.c:1321:23: note: uninitialized use occurs here
        desc_data.dma_addr = new_dma_addr;
                             ^~~~~~~~~~~~
drivers/net/ethernet/mediatek/mtk_star_emac.c:1285:6: note: remove the '||' if its condition is always false
        if ((desc_data.flags & MTK_STAR_DESC_BIT_RX_CRCE) ||
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/mediatek/mtk_star_emac.c:1274:25: note: initialize the variable 'new_dma_addr' to silence this warning
        dma_addr_t new_dma_addr;
                               ^
                                = 0
3 warnings generated.

> +static int mtk_star_receive_packet(struct mtk_star_priv *priv)
> +{
> +	struct mtk_star_ring *ring = &priv->rx_ring;
> +	struct device *dev = mtk_star_get_dev(priv);
> +	struct mtk_star_ring_desc_data desc_data;
> +	struct net_device *ndev = priv->ndev;
> +	struct sk_buff *curr_skb, *new_skb;
> +	dma_addr_t new_dma_addr;

Uninitialized here

> +	int ret;
> +
> +	spin_lock(&priv->lock);
> +	ret = mtk_star_ring_pop_tail(ring, &desc_data);
> +	spin_unlock(&priv->lock);
> +	if (ret)
> +		return -1;
> +
> +	curr_skb = desc_data.skb;
> +
> +	if ((desc_data.flags & MTK_STAR_DESC_BIT_RX_CRCE) ||
> +	    (desc_data.flags & MTK_STAR_DESC_BIT_RX_OSIZE)) {
> +		/* Error packet -> drop and reuse skb. */
> +		new_skb = curr_skb;
> +		goto push_new_skb;

this goto

> +	}
> +
> +	/* Prepare new skb before receiving the current one. Reuse the current
> +	 * skb if we fail at any point.
> +	 */
> +	new_skb = mtk_star_alloc_skb(ndev);
> +	if (!new_skb) {
> +		ndev->stats.rx_dropped++;
> +		new_skb = curr_skb;
> +		goto push_new_skb;

and this goto

> +	}
> +
> +	new_dma_addr = mtk_star_dma_map_rx(priv, new_skb);
> +	if (dma_mapping_error(dev, new_dma_addr)) {
> +		ndev->stats.rx_dropped++;
> +		dev_kfree_skb(new_skb);
> +		new_skb = curr_skb;
> +		netdev_err(ndev, "DMA mapping error of RX descriptor\n");
> +		goto push_new_skb;
> +	}
> +
> +	/* We can't fail anymore at this point: it's safe to unmap the skb. */
> +	mtk_star_dma_unmap_rx(priv, &desc_data);
> +
> +	skb_put(desc_data.skb, desc_data.len);
> +	desc_data.skb->ip_summed = CHECKSUM_NONE;
> +	desc_data.skb->protocol = eth_type_trans(desc_data.skb, ndev);
> +	desc_data.skb->dev = ndev;
> +	netif_receive_skb(desc_data.skb);
> +
> +push_new_skb:
> +	desc_data.dma_addr = new_dma_addr;

assign it uninitialized here.

> +	desc_data.len = skb_tailroom(new_skb);
> +	desc_data.skb = new_skb;
> +
> +	spin_lock(&priv->lock);
> +	mtk_star_ring_push_head_rx(ring, &desc_data);
> +	spin_unlock(&priv->lock);
> +
> +	return 0;
> +}

I don't know if there should be a new label that excludes that
assignment for those particular gotos or if new_dma_addr should
be initialized to something at the top. Please take a look at
addressing this when you get a chance.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527073150.GA3384158%40ubuntu-s3-xlarge-x86.
