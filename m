Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVFZ7SDQMGQEKS7436I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8613D6832
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 22:36:37 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id i18-20020a9d62520000b02904ccb7285c38sf6131193otk.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 13:36:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627331796; cv=pass;
        d=google.com; s=arc-20160816;
        b=BgRuM83ZdwUIS5KbtUmA6nW5jnVO1ps6/6IxJkYqFlWM72NQfvqnOksDwFKXN0n48Z
         mVcizim5jh8Ik3y0VIbBn+VFAXpuYg1fLXfcARdnR6yZtA3DlGOdk1fhuTpPcJJkvoTL
         7hnpNsPtBT0h7g6Pn3uCm9aHvKrVGHERV9NPBhDvIiIrFbVsEW1U2zE1F2yfV3bKR8WQ
         MDNAypOn4gR3RV1foj+HGApGBXpNOCWuqtRdBgYgMHoXPJJjIQOujWAiJYeILwA3EuGe
         aKOeYMR1fXnBs8WMBlXhv1vUFlJ1WBJJfm3er/2/t0b6G9Es1jdWJ7tYG77cvgpP1xkW
         QgQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:to:subject
         :sender:dkim-signature;
        bh=rJUpbccVEJ3ofP9yeDmD6gAQwn7NiX1cBj+UPsN4L+0=;
        b=T3Aowdm+EIhyUyKunIxPPQCor2w6GONqAGVqoCltl9oOvUpkkndxUWpr0AqOYOBI2l
         I5LliAh4FVSkXbfpHyANdV3x7mT3cOdKEHjTy/uPvgBPeyYx6fz/GGM1LzgvdNkcXpzP
         XIo3Iu1UcZ9XCcgvT7sJ9tL0LRhogw1h1GV52nQLqE8iPVqi3akd8jZAIZR3C3d6b/SM
         3GBlRN+o27iI0eSnepODN1W1H4nOv/YxCFV5tzw2fZiCmZHY5Fzc3dt96VID5nZAk7uY
         H1wFJFxj4Lo6t2DbnK+ozjXGypbvjWYLcje6OklNn6SHsm8LMEK72kuDpBws0ji1zTM/
         210Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oFyLm5G3;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rJUpbccVEJ3ofP9yeDmD6gAQwn7NiX1cBj+UPsN4L+0=;
        b=Yh5u080kspNUCY7ieKWlTDrr7m/WWLOGCVgmR1DXfxvY+WWEduzMCo/AlVhdSav700
         nOZnlwVXoLCmf3uiBLCyXRZ7rsm7bc/SayQl8z0T9EZgucBfT91j2IZkbezxgZUQTqAS
         dFpN/QZlXx2ui9Gqd0NciWq9B9KU1Y8A7vT/iskxZlccsmogbCIf4fCvcdbxbttGjFIt
         n0Z/qyau4Gut5w/Grziw+2+7HpYEWpHlNgDWxcUv3ba33tY2GvH4rxS3CudNnILCEkOc
         ZPgD1oBzs2M9W0ZJbD1rilUM1GZZXXwmr1/CN2wkE1SmnNrfecSvf5f50jtE7GF1M+YU
         vevw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rJUpbccVEJ3ofP9yeDmD6gAQwn7NiX1cBj+UPsN4L+0=;
        b=K5KctFibH7Qr7pELvgZ9f3TQEHyOsVGfkMFO6jOwovxo2yiM5vKnjyfNYyLdMoye+a
         7b8UYQtRtf4B18CrFjz6OgL0c3R2z5E/cypPoiZcZT1JxjDth3QLNxvZxcxLX4HnzXM0
         0TU+qOGRy6GsTjuBL1cVWGD6IyxA47wMTSsvAkboTnXK9f0ZeJK2jup4EFt9vWTE93iB
         Zo+T6RYWfV7y+deFu2ugeGNFcUp/fkuYWl383BFPtCP9PHlAOdpcOB3DvLOO/bQy03dK
         CISSk6SmtSiobLDXzE7J7QZacPCh/Dyp3NzdT+v9AuzLCvTFWlbGG+bsfsz6H/q69QKm
         /+IQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531zGQo+rbpd5zsD+pr1u/aneZEkP488geCIdCYfWCBusAdUz6MV
	brHmleJPRzBJ5mtzMV+5pA0=
X-Google-Smtp-Source: ABdhPJxJam4KL07XALlTYHqI4ewk6zL+2opDHveZK2GbsvAUOBtj8HwrTfZXFF3Vtiii2376XyKphg==
X-Received: by 2002:aca:fd84:: with SMTP id b126mr611688oii.38.1627331796686;
        Mon, 26 Jul 2021 13:36:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:49ce:: with SMTP id w197ls6723039oia.8.gmail; Mon, 26
 Jul 2021 13:36:36 -0700 (PDT)
X-Received: by 2002:aca:d54e:: with SMTP id m75mr12101160oig.177.1627331796358;
        Mon, 26 Jul 2021 13:36:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627331796; cv=none;
        d=google.com; s=arc-20160816;
        b=Gbc8BhaIYSf+nqcORYXmNvT5SatUucLkZ+G7/BB0uuwnscQ5NKQpQaQntquzC0CRXD
         6gKN872PNDNPdGGWmnKwiTmCBgUq3wYnSQjAo9nSVjO4wuMb23wZn0SnRrudo/psdVkS
         pWBpQfZKGx1kOg7q2fQVc2HwVNJ3PTqoPwb7YPDMiT4px6a9RQhRtNubfSRF31QkPo5C
         KvExznracPXPUfMBa7gFd0LEptFZDNbgx/uR+rPjGetyTZqMWZPvqDgOqBXEyaf8AZQQ
         kWj+ur/vYa2INU8ipRrC2cMJezrxDkU7/AjvFdcoeUtV09YGmdtcNVgkclfoRw3Rv5Ka
         suBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=uxvqixdhw8BB+0lnFVK93mhRDRYw+STcnDICfYqRmck=;
        b=dYqchdKKzUckr+UuPDg16J0EKW/ch/0uBh15nqWRFtk5jLVoDuVIsTphSV5jiftcaq
         7INoob4CKTztwIZ9wmLvYo8uaRisH++frceAGK8saVa/nfrop9NtwTJ1vjH4j75bdBor
         H3wrLTi54VcBgk4aE8AcvhiBUhvLiTzImYZkudfb/AqjOYXNyLu4lulEqn6We8crZCyZ
         M7vSEg6ZrKII1mxM8Z2J01QXfZqpgJ9y3H85Ws+ogBFUZ1svGTsioUIEd2swf1WUQIit
         nmWZPXflNAs2Ee92qc2+U40aGZXroBUGdzZ1XIi11QrxQEK8mqbXcDD6fiZ+pgdn6+Aq
         9ISg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oFyLm5G3;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g9si58646ots.5.2021.07.26.13.36.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Jul 2021 13:36:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7E68060F23;
	Mon, 26 Jul 2021 20:36:34 +0000 (UTC)
Subject: Re: [PATCH v2 2/3] bnx2x: remove unused variable 'cur_data_offset'
To: Bill Wendling <morbo@google.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-scsi@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Nick Desaulniers <ndesaulniers@google.com>, Ariel Elior
 <aelior@marvell.com>, Sudarsana Kalluru <skalluru@marvell.com>,
 GR-everest-linux-l2@marvell.com, "David S . Miller" <davem@davemloft.net>,
 Nilesh Javali <njavali@marvell.com>, GR-QLogic-Storage-Upstream@marvell.com,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>
References: <20210714091747.2814370-1-morbo@google.com>
 <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-3-morbo@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <d86ec071-00bf-e379-bdc6-c68da44ec5b7@kernel.org>
Date: Mon, 26 Jul 2021 13:36:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210726201924.3202278-3-morbo@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=oFyLm5G3;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 7/26/2021 1:19 PM, 'Bill Wendling' via Clang Built Linux wrote:
> Fix the clang build warning:
> 
>    drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c:1862:13: error: variable 'cur_data_offset' set but not used [-Werror,-Wunused-but-set-variable]
>          dma_addr_t cur_data_offset;
> 
> Signed-off-by: Bill Wendling <morbo@google.com>

It has been unused since the function's introduction in commit 
67c431a5f2f3 ("bnx2x: Support statistics collection for VFs by the PF"), 
perhaps a leftover remnant from a previous version?

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>   drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c | 6 ------
>   1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c
> index 27943b0446c2..f255fd0b16db 100644
> --- a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c
> +++ b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c
> @@ -1858,7 +1858,6 @@ void bnx2x_iov_adjust_stats_req(struct bnx2x *bp)
>   {
>   	int i;
>   	int first_queue_query_index, num_queues_req;
> -	dma_addr_t cur_data_offset;
>   	struct stats_query_entry *cur_query_entry;
>   	u8 stats_count = 0;
>   	bool is_fcoe = false;
> @@ -1879,10 +1878,6 @@ void bnx2x_iov_adjust_stats_req(struct bnx2x *bp)
>   	       BNX2X_NUM_ETH_QUEUES(bp), is_fcoe, first_queue_query_index,
>   	       first_queue_query_index + num_queues_req);
>   
> -	cur_data_offset = bp->fw_stats_data_mapping +
> -		offsetof(struct bnx2x_fw_stats_data, queue_stats) +
> -		num_queues_req * sizeof(struct per_queue_stats);
> -
>   	cur_query_entry = &bp->fw_stats_req->
>   		query[first_queue_query_index + num_queues_req];
>   
> @@ -1933,7 +1928,6 @@ void bnx2x_iov_adjust_stats_req(struct bnx2x *bp)
>   			       cur_query_entry->funcID,
>   			       j, cur_query_entry->index);
>   			cur_query_entry++;
> -			cur_data_offset += sizeof(struct per_queue_stats);
>   			stats_count++;
>   
>   			/* all stats are coalesced to the leading queue */
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d86ec071-00bf-e379-bdc6-c68da44ec5b7%40kernel.org.
