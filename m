Return-Path: <clang-built-linux+bncBDIZTUWNWICRBYOGY2DAMGQE4LSYW6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id A71243AFF8D
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 10:46:26 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id b9-20020a4a87890000b0290248cb841124sf12915973ooi.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 01:46:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624351585; cv=pass;
        d=google.com; s=arc-20160816;
        b=l/2Q89WbwdSEJ81dVvu/4rDyDC9Br84StTBZXGeY33TN32NQbpKud+FCAcQWPOTB/I
         3tN9LkdHsI42ScNmOgckLB0d+R5vphy8u254b7ww+qgWrlXEfTrLOyn63FbloQInE6Zy
         uTWGAmqWtpBb5XBPIuqQWpb/Y1cO7ajD8/ho/GkUBde/UX/3RhniW2ZRsJV74L2JLakI
         TybBQLBj+KMpHpcAHa9UO6n6ovefVcjbgyksIBTfUQwhBbqAmfsSntrOyIdht2t3GHtx
         CrvEvfWbnYQ00BiOgXMkO0IQK//cHoXjWVwNzQ1kVs/YIhbEOxi25YYrzhfU3C8YOMC8
         VsKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=4e9OeR+McPslfMFtZefjTgKO86ly0JmxhfeGj9gWKE8=;
        b=eRAoh4yJnWpbMwqyynkf2uKjgyKPGfVY9ycobM0lxOIUwGsa+eU/e9FqeTRXMYXL5x
         moVF7l6FshjxYdYcPTdI9ZUEVKWCPhxVUVkcynpwE2A4PYE8CNc7duRd9WwvBDcfzfs0
         RgZnkGLh7BGRkROQc21hCEnhSHqZElrJG8RXN+BEhvyfHC86QiWkW5mc72U8L7sY2g1r
         gbHk2XvCZyouVUtaJSMCAnwtf4u6bxAyVuHiXIrxBXaFI1XVwP6uEQNaoBlYXOk/2sgt
         wD5Kosbtr3fXdtsJBisiEr+xEmXKbiivdd+tGzts8Uf0qmbAtn8nnf7KE4tMALMyFvzq
         OUXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=dow6+rpm;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4e9OeR+McPslfMFtZefjTgKO86ly0JmxhfeGj9gWKE8=;
        b=A7A2kH5GMDd0nU9+uh21Np6I/RpN4IIop5BKkFtfeoeMljvF3dDwU3KiG63+wpW8P8
         lUN1V65XCIF5a7lTHWcGiTjM6uHBOARnh0EtU8CRCgCG5ASgcsd8KulYO0O6bnmB5HmW
         vXVntfBipRn6HK6QVMvGJ2pNiOO8B6nfSQloH4wEVmYvPOAU1c/0zu2+5YRLKo+XMGEb
         rQBRlZBQqxcvClcmh22Pbvn4qscbOlR1md/hQGE9fPkVZYZ/ZtQF+gQtSV7yWN+DKIBC
         AQEVBKiyfmT/eAgEOOtDVBpnS5BTMEm1OYKOMMCjYJRT8gMYGPw+3YQkRb6PUJGcf7ID
         /YUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4e9OeR+McPslfMFtZefjTgKO86ly0JmxhfeGj9gWKE8=;
        b=dOR4r7xU4c0eCgjgLvv79N9hLXMxeLJYHyS0yGznlwUT2PynMtk4D9Pg6tqw29bIBP
         wm6LwJIRAtrOLvB9l9hDmUrHTSoz0I+GTUK8cCJN6ZcZXe5CpxYQ8VR/AVeAyGmvUrgW
         cLyliREYnCoq0qNJooAkDCfk/AYoCL/PufHNw55nZyS6D0WbSW92rCbgcZJ1PSSbmQQB
         WpML5BRblL4YEXXRjNHDn4hbwpMezQGI6xgaEmw0cZRsgLexK/wcTZ2ZXGFQQ6CN8sSh
         Jb7Xi/0ikDGnoLRUmcaHnghlsMou1pK3UznH5xWRIeiUNsYrkzwNlijZo9UXLnTktRTa
         RPkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zob1NDMuRQDy9rzFEVx4QJO0nyW+Kf8YdzW53LtOaRL3VdWEa
	1a9pu534kedLjLJ5G40OR5M=
X-Google-Smtp-Source: ABdhPJznL8u+zFU0DYatIYwa/p7WIaoVm5zDixhfxIraIRB1XZF2/bhnU2IeyYzVgi2Mw9WwLWNqzA==
X-Received: by 2002:a9d:2dc2:: with SMTP id g60mr2167143otb.54.1624351585472;
        Tue, 22 Jun 2021 01:46:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a84:: with SMTP id l4ls7802951otq.1.gmail; Tue, 22 Jun
 2021 01:46:25 -0700 (PDT)
X-Received: by 2002:a9d:12a9:: with SMTP id g38mr2328358otg.114.1624351585127;
        Tue, 22 Jun 2021 01:46:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624351585; cv=none;
        d=google.com; s=arc-20160816;
        b=qxiopYTPctojH1y4JsJCdz7kItPA8uRPu/ArImIpG4/Lp+4ZBgVJlxSSnUbxSHb4vq
         NmeMtNrB5aACix9wv4UAE7AoWEw3f/+/5AV54GmiQTF6bbu1Efu8j3owsb8vG3SaSbCj
         netk19uA8FSn442omEu/DQ8c+qa1jGdcKHfW/JeIjInVBROlUvqKPpUC5tGgbBCj87i4
         86ECc67IrzMeCP6N6gnU0HPsdq3atrrQlxLu7/C+I6tn8U5/0ikt5AjAsNhjp+60kXdM
         JYyPkv9gIWLfETdSUdAq3g9zis+4d/u3KMJOyQEWJ3pTZa4Z9xMsPTM4lShZNCXGE9Xd
         RtlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=A3r2KM1U5npDvFVZxZTNcLxjpBA75n/lIxXbDb5XcGM=;
        b=n7mWHG66RWVyn5nZoZC1Aqe/s3BHCbtexDlh49hVFe9zKDFDepFnnbdVz9YCxa68Qc
         OgGI3Dr6vhIyB01o748uaJpa/yegIClDoHZTsOJI+mossjU01s6R3iKKaYS+fm5XNPGU
         xvUsSmimvermxKDR7YkZZZM8iySerq3CIDpvpkR5ZGtGgFBWayXhqzfQMppVqL8XuZuK
         8soTyVI+vEmO3RhDCcKzgM3Iy5hwbdUZTFY0r8P+31vcrrU870eDsZkqTfAO+5gSfncc
         wBaOIFTLQ1qwK4RVaKhjNDKRfjQbOTAHGsZKLB42bWrBgfWbvjx8mlt2F0xG9UW3o/0W
         aTSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=dow6+rpm;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id u128si178537oif.2.2021.06.22.01.46.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Jun 2021 01:46:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15M8gDjK013957;
	Tue, 22 Jun 2021 08:46:22 GMT
Received: from oracle.com (aserp3020.oracle.com [141.146.126.70])
	by mx0b-00069f02.pphosted.com with ESMTP id 39acyqbc2r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 22 Jun 2021 08:46:22 +0000
Received: from aserp3020.oracle.com (aserp3020.oracle.com [127.0.0.1])
	by pps.podrdrct (8.16.0.36/8.16.0.36) with SMTP id 15M8kMAu181288;
	Tue, 22 Jun 2021 08:46:22 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by aserp3020.oracle.com with ESMTP id 3998d729nw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 22 Jun 2021 08:46:22 +0000
Received: from aserp3020.oracle.com (aserp3020.oracle.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 15M8kLWw181263;
	Tue, 22 Jun 2021 08:46:21 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by aserp3020.oracle.com with ESMTP id 3998d729nk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 22 Jun 2021 08:46:21 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 15M8kK1I009864;
	Tue, 22 Jun 2021 08:46:20 GMT
Received: from kadam (/102.222.70.252)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 22 Jun 2021 01:46:19 -0700
Date: Tue, 22 Jun 2021 11:46:11 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Coiby Xu <coiby.xu@gmail.com>
Cc: linux-staging@lists.linux.dev, netdev@vger.kernel.org,
        Benjamin Poirier <benjamin.poirier@gmail.com>,
        Shung-Hsi Yu <shung-hsi.yu@suse.com>,
        Manish Chopra <manishc@marvell.com>,
        "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER" <GR-Linux-NIC-Dev@marvell.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        open list <linux-kernel@vger.kernel.org>,
        "open list:CLANG/LLVM BUILD SUPPORT" <clang-built-linux@googlegroups.com>
Subject: Re: [RFC 17/19] staging: qlge: fix weird line wrapping
Message-ID: <20210622084611.GM1861@kadam>
References: <20210621134902.83587-1-coiby.xu@gmail.com>
 <20210621134902.83587-18-coiby.xu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210621134902.83587-18-coiby.xu@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-GUID: rWfi0exMPgDUX5UtGmlftWnwzClz0ePZ
X-Proofpoint-ORIG-GUID: rWfi0exMPgDUX5UtGmlftWnwzClz0ePZ
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=dow6+rpm;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On Mon, Jun 21, 2021 at 09:49:00PM +0800, Coiby Xu wrote:
> @@ -524,8 +523,8 @@ static int qlge_set_routing_reg(struct qlge_adapter *qdev, u32 index, u32 mask,
>  		{
>  			value = RT_IDX_DST_DFLT_Q | /* dest */
>  				RT_IDX_TYPE_NICQ | /* type */
> -				(RT_IDX_IP_CSUM_ERR_SLOT <<
> -				RT_IDX_IDX_SHIFT); /* index */
> +			(RT_IDX_IP_CSUM_ERR_SLOT
> +			 << RT_IDX_IDX_SHIFT); /* index */

The original is not great but the new indenting is definitely worse.
It might look nicer with the comments moved in the front?  Why does
RT_IDX_IDX_SHIFT have two IDX strings?

			/* value = dest | type | index; */
			value = RT_IDX_DST_DFLT_Q |
				RT_IDX_TYPE_NICQ  |
				(RT_IDX_IP_CSUM_ERR_SLOT << RT_IDX_IDX_SHIFT);


>  			break;
>  		}
>  	case RT_IDX_TU_CSUM_ERR: /* Pass up TCP/UDP CSUM error frames. */
> @@ -554,7 +553,8 @@ static int qlge_set_routing_reg(struct qlge_adapter *qdev, u32 index, u32 mask,
>  		{
>  			value = RT_IDX_DST_DFLT_Q |	/* dest */
>  			    RT_IDX_TYPE_NICQ |	/* type */
> -			    (RT_IDX_MCAST_MATCH_SLOT << RT_IDX_IDX_SHIFT);/* index */
> +			(RT_IDX_MCAST_MATCH_SLOT
> +			 << RT_IDX_IDX_SHIFT); /* index */

Original is better.

>  			break;
>  		}
>  	case RT_IDX_RSS_MATCH:	/* Pass up matched RSS frames. */
> @@ -648,15 +648,15 @@ static int qlge_read_flash_word(struct qlge_adapter *qdev, int offset, __le32 *d
>  {
>  	int status = 0;
>  	/* wait for reg to come ready */
> -	status = qlge_wait_reg_rdy(qdev,
> -				   FLASH_ADDR, FLASH_ADDR_RDY, FLASH_ADDR_ERR);
> +	status = qlge_wait_reg_rdy(qdev, FLASH_ADDR, FLASH_ADDR_RDY,
> +				   FLASH_ADDR_ERR);
>  	if (status)
>  		goto exit;
>  	/* set up for reg read */
>  	qlge_write32(qdev, FLASH_ADDR, FLASH_ADDR_R | offset);
>  	/* wait for reg to come ready */
> -	status = qlge_wait_reg_rdy(qdev,
> -				   FLASH_ADDR, FLASH_ADDR_RDY, FLASH_ADDR_ERR);
> +	status = qlge_wait_reg_rdy(qdev, FLASH_ADDR, FLASH_ADDR_RDY,
> +				   FLASH_ADDR_ERR);
>  	if (status)
>  		goto exit;
>  	/* This data is stored on flash as an array of
> @@ -792,8 +792,8 @@ static int qlge_write_xgmac_reg(struct qlge_adapter *qdev, u32 reg, u32 data)
>  {
>  	int status;
>  	/* wait for reg to come ready */
> -	status = qlge_wait_reg_rdy(qdev,
> -				   XGMAC_ADDR, XGMAC_ADDR_RDY, XGMAC_ADDR_XME);
> +	status = qlge_wait_reg_rdy(qdev, XGMAC_ADDR, XGMAC_ADDR_RDY,
> +				   XGMAC_ADDR_XME);
>  	if (status)
>  		return status;
>  	/* write the data to the data reg */
> @@ -811,15 +811,15 @@ int qlge_read_xgmac_reg(struct qlge_adapter *qdev, u32 reg, u32 *data)
>  {
>  	int status = 0;
>  	/* wait for reg to come ready */
> -	status = qlge_wait_reg_rdy(qdev,
> -				   XGMAC_ADDR, XGMAC_ADDR_RDY, XGMAC_ADDR_XME);
> +	status = qlge_wait_reg_rdy(qdev, XGMAC_ADDR, XGMAC_ADDR_RDY,
> +				   XGMAC_ADDR_XME);

Need a blank line after the declaration block.

>  	if (status)
>  		goto exit;
>  	/* set up for reg read */
>  	qlge_write32(qdev, XGMAC_ADDR, reg | XGMAC_ADDR_R);
>  	/* wait for reg to come ready */
> -	status = qlge_wait_reg_rdy(qdev,
> -				   XGMAC_ADDR, XGMAC_ADDR_RDY, XGMAC_ADDR_XME);
> +	status = qlge_wait_reg_rdy(qdev, XGMAC_ADDR, XGMAC_ADDR_RDY,
> +				   XGMAC_ADDR_XME);
>  	if (status)
>  		goto exit;
>  	/* get the data */

regards,
dan carpenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210622084611.GM1861%40kadam.
