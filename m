Return-Path: <clang-built-linux+bncBDA2TOHIQEARBAPGR35AKGQEJGJCMNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5967224FDCB
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 14:30:59 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id m10sf5306365ioa.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 05:30:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598272258; cv=pass;
        d=google.com; s=arc-20160816;
        b=e4ahksMqqlB6O8GoZcSg784AnY9S+gD/jgX9CPo1SGqRqYLt64IGA5+EE2fCH95mH5
         9meKW7oPut209HRKumzdj66D0U9JMv8oRfH3nHMqufF0Cd+4XqDVwAsH6Xw+Z8i7me2k
         xXBzfasPUBsmGRVXeiGufRBoMOrv+0jsHgTFf2Z2ZveXkQ9VF3HLqXt9qCJnnVI8yKoZ
         ysGYaPBDA8l/XB09fz9eeXJ/ETgxOoLk1Q6psiQ+hE8xiwtjIoSfBVDR6dyzetxOotAH
         QO5WX/eu7HxLkAYLYGdL5UjpXumBiF8NyAsbP9Q+Cp80QQZsWuOYI4mjdwiJQbwmpq1c
         GJpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=qJjXs96rKwMtI7zbvUKCyLaRR5fnSB4QUGCEDKoD0rI=;
        b=qbSYaexBXVrVqynp2udj+7npfmFBn2vrsRbb5P0y1eVdNRI8rCYLOCLVkYsdNSjsHx
         4/6LJilAjiFB2q50E4yrkXcABVrz36a8YsrQp54kQ3FJM2t15xOZ9cwZ0Xiv1q71rCSV
         /caFo3dt7GfiGdIh/HZC102ykV6eCzuQMoFsd7QhvI+LEjmnAJ2KElsdWILBDbA6TdrQ
         d7wF7pozeLrnSC7xx/KbH9IzyoAv4MOymo8kpE7AZYFtAi90aj4GM77UYrXnMNjuXD0h
         EM29OjMMHYFgVWAO7TEY95Z4Gn5pQ8JRlyEqnpyOxp8IfdDjxkM/3TouQHkE6d0ETDta
         UhBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=cwLZuqZd;
       spf=pass (google.com: domain of t-kristo@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=t-kristo@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qJjXs96rKwMtI7zbvUKCyLaRR5fnSB4QUGCEDKoD0rI=;
        b=MHSdYj6XcvOYHfjKgdUIm+OAOJWNX1E1GamKr6+lGTCAUp9iKEu1ITNtvACibNSgy+
         AZ9gN93lfEZ/KjPlH18mZfJs0LVjRrBxYY3owLzMiQX5su7GeesKuZHjb/rss1glEyDs
         aCQIU2mbjlfw9HzkjToDsT6ZfzZzHOLMqoruxDDBffKRUf+6lCPmLd0hHPcqVKNaoQB7
         L5UY3pUoymf6sflktUizSuZL4TnKQ6GJmS/WblJ58+hdirJvpSCVtvHzr9kF6D4qX93i
         WPEueWPyvd99zE/3ENZGjVZaImX3FG9fXuKMEzAh6Dhye6rCNjqUlEhH11AwyhISA4mx
         iJjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qJjXs96rKwMtI7zbvUKCyLaRR5fnSB4QUGCEDKoD0rI=;
        b=hJ7L2qsPJlTaK49e6QdCZvZP2K1Hw40ZaCZ6pYVbBdPpEBT4IV/kEo9PrL5EbaEG8C
         +1wpf9JEpkOMmBo9QGq4nZbOhHIlLXFUFCrr9ZCYWbdre/QJhMbyTzUaMnJbQfzynZY3
         R9666a6WMMJdwlJB9L04NzN0+0qizRHq0glCjSrizZ58R0Bpsq8bzsMHckvf4SKHJfFL
         Kkq6hTwBX/vfciby+SOoZaogCwEnTKlcSBGYyim0FhY1P5sA8zsvcGNgBZoRbw+fkH/p
         q9tVRtPs4VNdM7YMei/9mw27qz5BM6KaiSHJxZ0nwoTtNTzCM2WJSo4z7daSAn7WQs4K
         Ag7Q==
X-Gm-Message-State: AOAM532Y/CxRDXdgOaBwrlC0TR+5PRRtL9rCwEsL5uiigEFaBgZF4U8t
	UDzPQWXkQieXzeh5Z7zdCMg=
X-Google-Smtp-Source: ABdhPJzxE5hNN2XV5v5/YnO86khjE3hMnSaRpELhYOoJPH9OjA7dWLWS33OrkFMTBGHXw85xV+5ufw==
X-Received: by 2002:a5e:d701:: with SMTP id v1mr4608844iom.206.1598272258173;
        Mon, 24 Aug 2020 05:30:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:bd41:: with SMTP id n62ls1423031iof.10.gmail; Mon, 24
 Aug 2020 05:30:57 -0700 (PDT)
X-Received: by 2002:a6b:7118:: with SMTP id q24mr4657759iog.29.1598272256999;
        Mon, 24 Aug 2020 05:30:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598272256; cv=none;
        d=google.com; s=arc-20160816;
        b=Zge/ikbnSkN3ACrugbI4LNDD6alQYijDS58F0sVKHDjPxo121SkCY9iz9eaIhu/LOf
         blGVO6pc3u2m7/aBP1RXlLIEpc0uI/sSApBNHCABlRiuaQZ7icF8zYrZnQpU8Q5rwJgK
         lqyNjmauGU5OpHOvvY3GKr1HZyDGxcg0SFOTcZhc7zbtLwKOTB4JqkZgizp+d5/1STJO
         +Rhx0fiL4z4wBFdFvXO8tIu6Q4qoKTrddxhu6qfL9U86gD0WziJmofG+7Mfh5fjdcbIC
         EN35Mhf5J9h1oPAtPcPJZFQL6srlLMDTLgWfl2eBNh1jKGuESv5TCOM9D9X7p/HOoV/Z
         yQww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=G3jOmFrbP+uzsfmTSwT9TZt+0Q5hxGsSRu0ozTBuKDk=;
        b=r/6KwZLzKgSHLifGiWPZdTHihShJhCc9nSzVh4zFEvh8lc5LpCgpYGOG3B6kPexRgi
         qLUWoZZqVE8Jg+NxA5PxudVFSxdyl1VdOpX9KlErd6QAiVHrosEdM6c8Az8/8DSfpaBH
         Ql3nq/U6vymAkZuwYV/iXcXZs6rEIUhWL/HYTXPKDroUIEBV90p6WWf2IYz5RdVtd//J
         aQP1Zikh9rPd0xGwOhttCrfCfPr64d4+/aeZcuazYug/kw20see7gRrqU/eBXJCIU5kx
         RXbEtNsEppsOxvJt+OE2e7apuIdLQK7F9beY03LMSlfUnECjjhKhMp/aGboL2g7/tUTk
         I4QQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=cwLZuqZd;
       spf=pass (google.com: domain of t-kristo@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=t-kristo@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id o74si505248ili.4.2020.08.24.05.30.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Aug 2020 05:30:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of t-kristo@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 07OCUn1t118442;
	Mon, 24 Aug 2020 07:30:49 -0500
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 07OCUn5r018916
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 24 Aug 2020 07:30:49 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 24
 Aug 2020 07:30:48 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 24 Aug 2020 07:30:48 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 07OCUkiC032893;
	Mon, 24 Aug 2020 07:30:47 -0500
Subject: Re: [PATCHv6 2/7] crypto: sa2ul: Add crypto driver
To: Nathan Chancellor <natechancellor@gmail.com>
CC: <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
        <linux-crypto@vger.kernel.org>, <j-keerthy@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <clang-built-linux@googlegroups.com>
References: <20200713083427.30117-1-t-kristo@ti.com>
 <20200713083427.30117-3-t-kristo@ti.com>
 <20200821221729.GA204847@ubuntu-n2-xlarge-x86>
From: "'Tero Kristo' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <4edf3f40-c0fe-b964-dd38-b38c0539ab34@ti.com>
Date: Mon, 24 Aug 2020 15:30:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200821221729.GA204847@ubuntu-n2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: t-kristo@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=cwLZuqZd;       spf=pass
 (google.com: domain of t-kristo@ti.com designates 198.47.19.142 as permitted
 sender) smtp.mailfrom=t-kristo@ti.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=ti.com
X-Original-From: Tero Kristo <t-kristo@ti.com>
Reply-To: Tero Kristo <t-kristo@ti.com>
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

On 22/08/2020 01:17, Nathan Chancellor wrote:
> On Mon, Jul 13, 2020 at 11:34:22AM +0300, Tero Kristo wrote:
>> From: Keerthy <j-keerthy@ti.com>
>>
>> Adds a basic crypto driver and currently supports AES/3DES
>> in cbc mode for both encryption and decryption.
>>
>> Signed-off-by: Keerthy <j-keerthy@ti.com>
>> [t-kristo@ti.com: major re-work to fix various bugs in the driver and to
>>   cleanup the code]
>> Signed-off-by: Tero Kristo <t-kristo@ti.com>
>> ---
>>   drivers/crypto/Kconfig  |   14 +
>>   drivers/crypto/Makefile |    1 +
>>   drivers/crypto/sa2ul.c  | 1388 +++++++++++++++++++++++++++++++++++++++
>>   drivers/crypto/sa2ul.h  |  380 +++++++++++
>>   4 files changed, 1783 insertions(+)
>>   create mode 100644 drivers/crypto/sa2ul.c
>>   create mode 100644 drivers/crypto/sa2ul.h
> 
> <snip>
> 
>> diff --git a/drivers/crypto/sa2ul.c b/drivers/crypto/sa2ul.c
>> new file mode 100644
>> index 000000000000..860c7435fefa
>> --- /dev/null
>> +++ b/drivers/crypto/sa2ul.c
>> @@ -0,0 +1,1388 @@
> 
> <snip>
> 
>> +static int sa_run(struct sa_req *req)
>> +{
>> +	struct sa_rx_data *rxd;
>> +	gfp_t gfp_flags;
>> +	u32 cmdl[SA_MAX_CMDL_WORDS];
>> +	struct sa_crypto_data *pdata = dev_get_drvdata(sa_k3_dev);
>> +	struct device *ddev;
>> +	struct dma_chan *dma_rx;
>> +	int sg_nents, src_nents, dst_nents;
>> +	int mapped_src_nents, mapped_dst_nents;
>> +	struct scatterlist *src, *dst;
>> +	size_t pl, ml, split_size;
>> +	struct sa_ctx_info *sa_ctx = req->enc ? &req->ctx->enc : &req->ctx->dec;
>> +	int ret;
>> +	struct dma_async_tx_descriptor *tx_out;
>> +	u32 *mdptr;
>> +	bool diff_dst;
>> +	enum dma_data_direction dir_src;
>> +
>> +	gfp_flags = req->base->flags & CRYPTO_TFM_REQ_MAY_SLEEP ?
>> +		GFP_KERNEL : GFP_ATOMIC;
>> +
>> +	rxd = kzalloc(sizeof(*rxd), gfp_flags);
>> +	if (!rxd)
>> +		return -ENOMEM;
>> +
>> +	if (req->src != req->dst) {
>> +		diff_dst = true;
>> +		dir_src = DMA_TO_DEVICE;
>> +	} else {
>> +		diff_dst = false;
>> +		dir_src = DMA_BIDIRECTIONAL;
>> +	}
>> +
>> +	/*
>> +	 * SA2UL has an interesting feature where the receive DMA channel
>> +	 * is selected based on the data passed to the engine. Within the
>> +	 * transition range, there is also a space where it is impossible
>> +	 * to determine where the data will end up, and this should be
>> +	 * avoided. This will be handled by the SW fallback mechanism by
>> +	 * the individual algorithm implementations.
>> +	 */
>> +	if (req->size >= 256)
>> +		dma_rx = pdata->dma_rx2;
>> +	else
>> +		dma_rx = pdata->dma_rx1;
>> +
>> +	ddev = dma_rx->device->dev;
>> +
>> +	memcpy(cmdl, sa_ctx->cmdl, sa_ctx->cmdl_size);
>> +
>> +	sa_update_cmdl(req, cmdl, &sa_ctx->cmdl_upd_info);
>> +
>> +	if (req->type != CRYPTO_ALG_TYPE_AHASH) {
>> +		if (req->enc)
>> +			req->type |=
>> +				(SA_REQ_SUBTYPE_ENC << SA_REQ_SUBTYPE_SHIFT);
>> +		else
>> +			req->type |=
>> +				(SA_REQ_SUBTYPE_DEC << SA_REQ_SUBTYPE_SHIFT);
>> +	}
>> +
>> +	cmdl[sa_ctx->cmdl_size / sizeof(u32)] = req->type;
>> +
>> +	/*
>> +	 * Map the packets, first we check if the data fits into a single
>> +	 * sg entry and use that if possible. If it does not fit, we check
>> +	 * if we need to do sg_split to align the scatterlist data on the
>> +	 * actual data size being processed by the crypto engine.
>> +	 */
>> +	src = req->src;
>> +	sg_nents = sg_nents_for_len(src, req->size);
>> +
>> +	split_size = req->size;
>> +
>> +	if (sg_nents == 1 && split_size <= req->src->length) {
>> +		src = &rxd->rx_sg;
>> +		sg_init_table(src, 1);
>> +		sg_set_page(src, sg_page(req->src), split_size,
>> +			    req->src->offset);
>> +		src_nents = 1;
>> +		dma_map_sg(ddev, src, sg_nents, dir_src);
>> +	} else {
>> +		mapped_src_nents = dma_map_sg(ddev, req->src, sg_nents,
>> +					      dir_src);
>> +		ret = sg_split(req->src, mapped_src_nents, 0, 1, &split_size,
>> +			       &src, &src_nents, gfp_flags);
>> +		if (ret) {
>> +			src_nents = sg_nents;
>> +			src = req->src;
>> +		} else {
>> +			rxd->split_src_sg = src;
>> +		}
>> +	}
>> +
>> +	if (!diff_dst) {
>> +		dst_nents = src_nents;
>> +		dst = src;
>> +	} else {
>> +		dst_nents = sg_nents_for_len(req->dst, req->size);
>> +
>> +		if (dst_nents == 1 && split_size <= req->dst->length) {
>> +			dst = &rxd->tx_sg;
>> +			sg_init_table(dst, 1);
>> +			sg_set_page(dst, sg_page(req->dst), split_size,
>> +				    req->dst->offset);
>> +			dst_nents = 1;
>> +			dma_map_sg(ddev, dst, dst_nents, DMA_FROM_DEVICE);
>> +		} else {
>> +			mapped_dst_nents = dma_map_sg(ddev, req->dst, dst_nents,
>> +						      DMA_FROM_DEVICE);
>> +			ret = sg_split(req->dst, mapped_dst_nents, 0, 1,
>> +				       &split_size, &dst, &dst_nents,
>> +				       gfp_flags);
>> +			if (ret) {
>> +				dst_nents = dst_nents;
> 
> This causes a clang warning:
> 
> drivers/crypto/sa2ul.c:1152:15: warning: explicitly assigning value of
> variable of type 'int' to itself [-Wself-assign]
>                                  dst_nents = dst_nents;
>                                  ~~~~~~~~~ ^ ~~~~~~~~~
> 1 warning generated.
> 
> Was the right side supposed to be something else? Otherwise, this line
> can be removed, right?

This is definitely a bug in the code, thanks for catching. I'll check 
what this was actually supposed to be and fix... Too many iterations of 
the code behind.

-Tero

> 
>> +				dst = req->dst;
>> +			} else {
>> +				rxd->split_dst_sg = dst;
>> +			}
>> +		}
>> +	}
>> +
>> +	if (unlikely(src_nents != sg_nents)) {
>> +		dev_warn_ratelimited(sa_k3_dev, "failed to map tx pkt\n");
>> +		ret = -EIO;
>> +		goto err_cleanup;
>> +	}
>> +
>> +	rxd->tx_in = dmaengine_prep_slave_sg(dma_rx, dst, dst_nents,
>> +					     DMA_DEV_TO_MEM,
>> +					     DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
>> +	if (!rxd->tx_in) {
>> +		dev_err(pdata->dev, "IN prep_slave_sg() failed\n");
>> +		ret = -EINVAL;
>> +		goto err_cleanup;
>> +	}
>> +
>> +	rxd->req = (void *)req->base;
>> +	rxd->enc = req->enc;
>> +	rxd->ddev = ddev;
>> +	rxd->src = src;
>> +	rxd->dst = dst;
>> +	rxd->iv_idx = req->ctx->iv_idx;
>> +	rxd->enc_iv_size = sa_ctx->cmdl_upd_info.enc_iv.size;
>> +	rxd->tx_in->callback = req->callback;
>> +	rxd->tx_in->callback_param = rxd;
>> +
>> +	tx_out = dmaengine_prep_slave_sg(pdata->dma_tx, src,
>> +					 src_nents, DMA_MEM_TO_DEV,
>> +					 DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
>> +
>> +	if (!tx_out) {
>> +		dev_err(pdata->dev, "OUT prep_slave_sg() failed\n");
>> +		ret = -EINVAL;
>> +		goto err_cleanup;
>> +	}
>> +
>> +	/*
>> +	 * Prepare metadata for DMA engine. This essentially describes the
>> +	 * crypto algorithm to be used, data sizes, different keys etc.
>> +	 */
>> +	mdptr = (u32 *)dmaengine_desc_get_metadata_ptr(tx_out, &pl, &ml);
>> +
>> +	sa_prepare_tx_desc(mdptr, (sa_ctx->cmdl_size + (SA_PSDATA_CTX_WORDS *
>> +				   sizeof(u32))), cmdl, sizeof(sa_ctx->epib),
>> +			   sa_ctx->epib);
>> +
>> +	ml = sa_ctx->cmdl_size + (SA_PSDATA_CTX_WORDS * sizeof(u32));
>> +	dmaengine_desc_set_metadata_len(tx_out, req->mdata_size);
>> +
>> +	dmaengine_submit(tx_out);
>> +	dmaengine_submit(rxd->tx_in);
>> +
>> +	dma_async_issue_pending(dma_rx);
>> +	dma_async_issue_pending(pdata->dma_tx);
>> +
>> +	return -EINPROGRESS;
>> +
>> +err_cleanup:
>> +	dma_unmap_sg(ddev, req->src, sg_nents, DMA_TO_DEVICE);
>> +	kfree(rxd->split_src_sg);
>> +
>> +	if (req->src != req->dst) {
>> +		dst_nents = sg_nents_for_len(req->dst, req->size);
>> +		dma_unmap_sg(ddev, req->dst, dst_nents, DMA_FROM_DEVICE);
>> +		kfree(rxd->split_dst_sg);
>> +	}
>> +
>> +	kfree(rxd);
>> +
>> +	return ret;
>> +}
> 
> Cheers,
> Nathan
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4edf3f40-c0fe-b964-dd38-b38c0539ab34%40ti.com.
