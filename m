Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7EPQH5AKGQE5MYFG5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F36924E316
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 00:17:34 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id f17sf1878803plj.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 15:17:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598048253; cv=pass;
        d=google.com; s=arc-20160816;
        b=d6j6LcUfejZyoHpZm98vMp3kUfQnXwsz0sey1PewaSWhPrAxJC7HVVAF5EWQjKiDFW
         IsmpasID2J1WLBQK4EiMNacQXdw7Dl3ytmCnoO5GPZms92htZhNSJkg8BS0itqtDcXox
         WAEJixM6glHe8k1ujtBkBoOSzM+CycGbYXLpRb3K9DEUCvzJDE6oKbYjGFAQIwzQRkh2
         ThU5ho9zxQj09Z6IylpYjvjzFO649+qu6wmhmd4gW9U6pvnAAXhx17daArZZy5DxuUgd
         PRNAv4aZXQdZQ+DisXcEP5A9ErzH1noa/I8OWgw52kGzNft96hB8YIzDO8aH0mWExcTc
         kyfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=+nAZDJu/Kj6ANdSkJKPD/17Fv2NdFHcoqcr9oewanhw=;
        b=rSe33Qdd8ob3XuFnlp3/yNxOwSAR7GnIGi5+wUCnEukOgrCbblJm9kTp/JI8l2KiRs
         6j72nOQ3sbQ4y63O3yZJn0von84lVjuTSXcVV+GBnAYA3MQo7XW/7nIAhDIYESB34jhA
         5kIlg3+dGnwlBhCcngKDhzf7m+Zmsiy55ogP9NKNNtYuNM371ZGYNflI3t1fZgmb73sh
         oNYl3DY4/+C5qRSF0SktivNEtO5Gc6rTLJHKSxHD62QiqWXn22nqUrKZ0iCuYphsaGf1
         4k3Nil2Q8rvHUOtcz/DP8WlgNGw3kNbft5wSJ0fJRnhIIOW8R5EGd1G5Pw45PyYZ7fzB
         XTFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sPOAK9D7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+nAZDJu/Kj6ANdSkJKPD/17Fv2NdFHcoqcr9oewanhw=;
        b=g/04rhi/rAmrYBRIfKJYRhdLfQdnG8KQTN5XUmjuSE3sr2pNAtCT1gU9+Ak0/Oxark
         NSTkrZsfqy78RaTG7wKkQ0ggfuvM3Z2b9u+ik+oQo9YJew4sgbz/vHumQSOpZr5WKvmh
         Zjlx+/Gtnn19u/7qcyOu14WY/V7KW3tlg+c3T1SWHiy8pjuVZXapAMI14LqIYOA2L2LG
         puEvX2vfR93d2SyjEeRuPFi9vyT6azQnzvaQlC7fHqkfVrjNMXt+CynIi9bpPZZiHBEI
         q0FtZQ+98HDdJT1IPjeYkkIn6UrDfYoDV5P6GTVefOD+dvmVXSkyfPbd+TrwF9DNd93k
         JyUw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+nAZDJu/Kj6ANdSkJKPD/17Fv2NdFHcoqcr9oewanhw=;
        b=iX2PG6Ppvq08n1HiZbBNjLBKPPrcMilFa7ogp+p/oBqNT6PWGDpum6zJiJW0JrmnfH
         UzypdjkCkdTWqGp0FTUCnvpMR0hWat/3vwa+v3em9wwTzlxcIdf5rDaX1LAoyDjAKM6W
         PDlqULJDVNJj2L85zkHGg3bS6rMiNTl/rsdiReA/4McA6BYkIlfMgukqTXIPn7jY+caW
         o92EdRI469rti5v67oQd2nkSKkbaUNYKjs5y/nx+/X8Cfoa+pj7U848m7xmuBkfLD8zq
         oy5wumorCDVqX3YiWIN2ErcpKX1UFtIxvlzXaFBE/SZc2z/h4Y3td/pW8iYNsqt+OLhf
         WwJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+nAZDJu/Kj6ANdSkJKPD/17Fv2NdFHcoqcr9oewanhw=;
        b=a/VPkNRLFfZYSWE3O5Ee1sJCp+4eB7ozJPjL/H5QUdAX8fxM9DU10C7zsdAyNzr7Nc
         ZZqdvshBg+BqxpXxOqYpHUXnC1KQRRzso7DbV7waRhGAHRnFN0AG6I9zZEc81cJXInQV
         1lTdSqM/ziyjfxeAvpWzlw7K3cyhkIM+47EiUgkMYphWBUcH1dzfqKY+JAS4gdKRZPOw
         uyCxROaFlUMYqLb7tnmeLuLMQ8R4PGmW4GXpzrsFq8gHFQFXi85iDRb7Oi9kAH7SdLYI
         JPVT9n9DPiz1/tU6tK5DHIRTDJe+Bk+mfIuNYqHysooC3T2me03tx2F8HPILPjuPVwOt
         Aq+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53293tMw/1hGs8clsZVRkAgB/QKNpkE6G7KLL76LeB3gen8b0JU2
	+h7NjQZzocIL+CFT/80IjsU=
X-Google-Smtp-Source: ABdhPJzNOhG+UxqNNkDbXx3n8lH2MkFcKqJPerWMGhJQ0ZhmV8YIqKs3MT2szrIk3xcTnuGw7SuJrg==
X-Received: by 2002:a17:90a:f286:: with SMTP id fs6mr4053870pjb.221.1598048252917;
        Fri, 21 Aug 2020 15:17:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bf04:: with SMTP id c4ls1347785pjs.3.gmail; Fri, 21
 Aug 2020 15:17:32 -0700 (PDT)
X-Received: by 2002:a17:90a:eb17:: with SMTP id j23mr3950480pjz.151.1598048252481;
        Fri, 21 Aug 2020 15:17:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598048252; cv=none;
        d=google.com; s=arc-20160816;
        b=zEQqJBuuM5oLT7DDHwgQBvirf6UxJqZ1Fkbibj003XEfO7dRljyrtvTarOEbQaBgOZ
         mAIXNx1ZWK0z7difz0BQMlEMXBDcgBkAHaB5JgBxXekezeFflNrZmHUaRpiUkBmgFXKC
         ex7xbYvAYjCHLaYl5DP6pQ2en+NRExIwpkzbRbb17MXEDIO8ABavFjlLPt8LsEnupVBv
         g5oTIxh5OPpYQzePMrnPQ1G0ytcT6TnHhafkYYPRUoahekdpgjfWK1LCChORQzRjyqXA
         PqEEzAP72d0E2Zq2oRR5O9WS0ndaxwIeW+aWCGdh4Ki93Tx7Eb+7XXrc4UnJWv8UfTT0
         oB4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9+t59dyr/Lx/4Z4pn5Xg6NWW34RApV3/LbQYL5Og5B4=;
        b=kMkEsDivMjNJLrEfqUH4Bixwt3rQYdOy2gA8mg1YoNa8Une60AemXTZTLptlpc6Az+
         VDq+XYYuLOKB2TcIRmNLqG1j3FmCLyklXLq1/yceLkfNnFA4FIS1Zru2QBbi5H+EIJbf
         jtm40SMBR8jT67LZYvCTiHxt3N91InzWKCwlk72VDq9CHB2nNBiwrWTBTOstwDWJ9hh4
         5jbkhWDgUlTP//0Evw50F1LwbWDbNwnRf3waA7Ic/H615zugGyHidG/B944bUby33QGs
         juIS8I7nJlFqUNE4rAlr5LYpFsld2/JsBMXzK3Bi+kF2FYwMaOG1vlSjdOlm485bSw+p
         QkcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sPOAK9D7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id s2si192212pgh.4.2020.08.21.15.17.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 15:17:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id u3so2732328qkd.9
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 15:17:32 -0700 (PDT)
X-Received: by 2002:a05:620a:2298:: with SMTP id o24mr4642396qkh.73.1598048251512;
        Fri, 21 Aug 2020 15:17:31 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id g23sm1858979qke.59.2020.08.21.15.17.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 15:17:30 -0700 (PDT)
Date: Fri, 21 Aug 2020 15:17:29 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Tero Kristo <t-kristo@ti.com>
Cc: herbert@gondor.apana.org.au, davem@davemloft.net,
	linux-crypto@vger.kernel.org, j-keerthy@ti.com,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCHv6 2/7] crypto: sa2ul: Add crypto driver
Message-ID: <20200821221729.GA204847@ubuntu-n2-xlarge-x86>
References: <20200713083427.30117-1-t-kristo@ti.com>
 <20200713083427.30117-3-t-kristo@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200713083427.30117-3-t-kristo@ti.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=sPOAK9D7;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Jul 13, 2020 at 11:34:22AM +0300, Tero Kristo wrote:
> From: Keerthy <j-keerthy@ti.com>
> 
> Adds a basic crypto driver and currently supports AES/3DES
> in cbc mode for both encryption and decryption.
> 
> Signed-off-by: Keerthy <j-keerthy@ti.com>
> [t-kristo@ti.com: major re-work to fix various bugs in the driver and to
>  cleanup the code]
> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> ---
>  drivers/crypto/Kconfig  |   14 +
>  drivers/crypto/Makefile |    1 +
>  drivers/crypto/sa2ul.c  | 1388 +++++++++++++++++++++++++++++++++++++++
>  drivers/crypto/sa2ul.h  |  380 +++++++++++
>  4 files changed, 1783 insertions(+)
>  create mode 100644 drivers/crypto/sa2ul.c
>  create mode 100644 drivers/crypto/sa2ul.h

<snip>

> diff --git a/drivers/crypto/sa2ul.c b/drivers/crypto/sa2ul.c
> new file mode 100644
> index 000000000000..860c7435fefa
> --- /dev/null
> +++ b/drivers/crypto/sa2ul.c
> @@ -0,0 +1,1388 @@

<snip>

> +static int sa_run(struct sa_req *req)
> +{
> +	struct sa_rx_data *rxd;
> +	gfp_t gfp_flags;
> +	u32 cmdl[SA_MAX_CMDL_WORDS];
> +	struct sa_crypto_data *pdata = dev_get_drvdata(sa_k3_dev);
> +	struct device *ddev;
> +	struct dma_chan *dma_rx;
> +	int sg_nents, src_nents, dst_nents;
> +	int mapped_src_nents, mapped_dst_nents;
> +	struct scatterlist *src, *dst;
> +	size_t pl, ml, split_size;
> +	struct sa_ctx_info *sa_ctx = req->enc ? &req->ctx->enc : &req->ctx->dec;
> +	int ret;
> +	struct dma_async_tx_descriptor *tx_out;
> +	u32 *mdptr;
> +	bool diff_dst;
> +	enum dma_data_direction dir_src;
> +
> +	gfp_flags = req->base->flags & CRYPTO_TFM_REQ_MAY_SLEEP ?
> +		GFP_KERNEL : GFP_ATOMIC;
> +
> +	rxd = kzalloc(sizeof(*rxd), gfp_flags);
> +	if (!rxd)
> +		return -ENOMEM;
> +
> +	if (req->src != req->dst) {
> +		diff_dst = true;
> +		dir_src = DMA_TO_DEVICE;
> +	} else {
> +		diff_dst = false;
> +		dir_src = DMA_BIDIRECTIONAL;
> +	}
> +
> +	/*
> +	 * SA2UL has an interesting feature where the receive DMA channel
> +	 * is selected based on the data passed to the engine. Within the
> +	 * transition range, there is also a space where it is impossible
> +	 * to determine where the data will end up, and this should be
> +	 * avoided. This will be handled by the SW fallback mechanism by
> +	 * the individual algorithm implementations.
> +	 */
> +	if (req->size >= 256)
> +		dma_rx = pdata->dma_rx2;
> +	else
> +		dma_rx = pdata->dma_rx1;
> +
> +	ddev = dma_rx->device->dev;
> +
> +	memcpy(cmdl, sa_ctx->cmdl, sa_ctx->cmdl_size);
> +
> +	sa_update_cmdl(req, cmdl, &sa_ctx->cmdl_upd_info);
> +
> +	if (req->type != CRYPTO_ALG_TYPE_AHASH) {
> +		if (req->enc)
> +			req->type |=
> +				(SA_REQ_SUBTYPE_ENC << SA_REQ_SUBTYPE_SHIFT);
> +		else
> +			req->type |=
> +				(SA_REQ_SUBTYPE_DEC << SA_REQ_SUBTYPE_SHIFT);
> +	}
> +
> +	cmdl[sa_ctx->cmdl_size / sizeof(u32)] = req->type;
> +
> +	/*
> +	 * Map the packets, first we check if the data fits into a single
> +	 * sg entry and use that if possible. If it does not fit, we check
> +	 * if we need to do sg_split to align the scatterlist data on the
> +	 * actual data size being processed by the crypto engine.
> +	 */
> +	src = req->src;
> +	sg_nents = sg_nents_for_len(src, req->size);
> +
> +	split_size = req->size;
> +
> +	if (sg_nents == 1 && split_size <= req->src->length) {
> +		src = &rxd->rx_sg;
> +		sg_init_table(src, 1);
> +		sg_set_page(src, sg_page(req->src), split_size,
> +			    req->src->offset);
> +		src_nents = 1;
> +		dma_map_sg(ddev, src, sg_nents, dir_src);
> +	} else {
> +		mapped_src_nents = dma_map_sg(ddev, req->src, sg_nents,
> +					      dir_src);
> +		ret = sg_split(req->src, mapped_src_nents, 0, 1, &split_size,
> +			       &src, &src_nents, gfp_flags);
> +		if (ret) {
> +			src_nents = sg_nents;
> +			src = req->src;
> +		} else {
> +			rxd->split_src_sg = src;
> +		}
> +	}
> +
> +	if (!diff_dst) {
> +		dst_nents = src_nents;
> +		dst = src;
> +	} else {
> +		dst_nents = sg_nents_for_len(req->dst, req->size);
> +
> +		if (dst_nents == 1 && split_size <= req->dst->length) {
> +			dst = &rxd->tx_sg;
> +			sg_init_table(dst, 1);
> +			sg_set_page(dst, sg_page(req->dst), split_size,
> +				    req->dst->offset);
> +			dst_nents = 1;
> +			dma_map_sg(ddev, dst, dst_nents, DMA_FROM_DEVICE);
> +		} else {
> +			mapped_dst_nents = dma_map_sg(ddev, req->dst, dst_nents,
> +						      DMA_FROM_DEVICE);
> +			ret = sg_split(req->dst, mapped_dst_nents, 0, 1,
> +				       &split_size, &dst, &dst_nents,
> +				       gfp_flags);
> +			if (ret) {
> +				dst_nents = dst_nents;

This causes a clang warning:

drivers/crypto/sa2ul.c:1152:15: warning: explicitly assigning value of
variable of type 'int' to itself [-Wself-assign]
                                dst_nents = dst_nents;
                                ~~~~~~~~~ ^ ~~~~~~~~~
1 warning generated.

Was the right side supposed to be something else? Otherwise, this line
can be removed, right?

> +				dst = req->dst;
> +			} else {
> +				rxd->split_dst_sg = dst;
> +			}
> +		}
> +	}
> +
> +	if (unlikely(src_nents != sg_nents)) {
> +		dev_warn_ratelimited(sa_k3_dev, "failed to map tx pkt\n");
> +		ret = -EIO;
> +		goto err_cleanup;
> +	}
> +
> +	rxd->tx_in = dmaengine_prep_slave_sg(dma_rx, dst, dst_nents,
> +					     DMA_DEV_TO_MEM,
> +					     DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
> +	if (!rxd->tx_in) {
> +		dev_err(pdata->dev, "IN prep_slave_sg() failed\n");
> +		ret = -EINVAL;
> +		goto err_cleanup;
> +	}
> +
> +	rxd->req = (void *)req->base;
> +	rxd->enc = req->enc;
> +	rxd->ddev = ddev;
> +	rxd->src = src;
> +	rxd->dst = dst;
> +	rxd->iv_idx = req->ctx->iv_idx;
> +	rxd->enc_iv_size = sa_ctx->cmdl_upd_info.enc_iv.size;
> +	rxd->tx_in->callback = req->callback;
> +	rxd->tx_in->callback_param = rxd;
> +
> +	tx_out = dmaengine_prep_slave_sg(pdata->dma_tx, src,
> +					 src_nents, DMA_MEM_TO_DEV,
> +					 DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
> +
> +	if (!tx_out) {
> +		dev_err(pdata->dev, "OUT prep_slave_sg() failed\n");
> +		ret = -EINVAL;
> +		goto err_cleanup;
> +	}
> +
> +	/*
> +	 * Prepare metadata for DMA engine. This essentially describes the
> +	 * crypto algorithm to be used, data sizes, different keys etc.
> +	 */
> +	mdptr = (u32 *)dmaengine_desc_get_metadata_ptr(tx_out, &pl, &ml);
> +
> +	sa_prepare_tx_desc(mdptr, (sa_ctx->cmdl_size + (SA_PSDATA_CTX_WORDS *
> +				   sizeof(u32))), cmdl, sizeof(sa_ctx->epib),
> +			   sa_ctx->epib);
> +
> +	ml = sa_ctx->cmdl_size + (SA_PSDATA_CTX_WORDS * sizeof(u32));
> +	dmaengine_desc_set_metadata_len(tx_out, req->mdata_size);
> +
> +	dmaengine_submit(tx_out);
> +	dmaengine_submit(rxd->tx_in);
> +
> +	dma_async_issue_pending(dma_rx);
> +	dma_async_issue_pending(pdata->dma_tx);
> +
> +	return -EINPROGRESS;
> +
> +err_cleanup:
> +	dma_unmap_sg(ddev, req->src, sg_nents, DMA_TO_DEVICE);
> +	kfree(rxd->split_src_sg);
> +
> +	if (req->src != req->dst) {
> +		dst_nents = sg_nents_for_len(req->dst, req->size);
> +		dma_unmap_sg(ddev, req->dst, dst_nents, DMA_FROM_DEVICE);
> +		kfree(rxd->split_dst_sg);
> +	}
> +
> +	kfree(rxd);
> +
> +	return ret;
> +}

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821221729.GA204847%40ubuntu-n2-xlarge-x86.
