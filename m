Return-Path: <clang-built-linux+bncBCRK3BGN6ANRBZHH2GDAMGQEQDTYKVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6221A3B2E64
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 14:00:37 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id o14-20020a05620a0d4eb02903a5eee61155sf6487406qkl.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 05:00:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624536036; cv=pass;
        d=google.com; s=arc-20160816;
        b=yfzs7NIFw61Qnr2XoLXr8hdgfurxw/3GHeq6hfSyovzDG+xZycOoyHHItyVFoD2g1v
         xUybrY06lxUUmokbUsBat2hRcDLhQMvrxsMCaihXQatU0QYp9FXxx/SRL3HnmBJvsP+8
         V2jxPpdSmUMIOdMtJiHGDKpqtz9Sz8pJC2SwWR+o5PL16uOhY25s9zsJBAxrFS6341ke
         0iBFhq/Iivh7TQnIdHVlHrGRPvZkbRyzXW/lHBI18OJmWzSXGdbXXI+Gh/lly+aHFFDB
         7pgHmRCxHIiF2W2a/rLd38EHISOJJyooIO1V2UgetIU95QxU5Ywh1RzA7Zu0BS3rlKVI
         NXwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=m6IUJCYR3X/RAWYNlYzpuMxxoBP5pbTQ2V8R8I8Uab4=;
        b=XgRJXsy5hrmP+VQevUrEXIN9q0M7zo8GBUTeBZGLki3vVpThIME+I9bye9jVNrwyRd
         k/FajDciGWg1vi7qteEyE/oFGQmUP+rZZ6Ws1jJWYqrULwRuDnNfSpchUt0VBUm9DKaq
         gYa/3RjNIUJXDjOtk7/oqXnmsrX0w7P56VZ0M2zUjEMrNKU7XLzwtpl1KAj0H4mWTwD7
         YAckmAEXJK1g6wZiDsToTx0/qv5c6roR5bxOrxs0yugoCivDl2ghpxnYqPq2BQUJvP6k
         hbQCcSDNoF02lqBk9Wre0n5FgnNM7fXn4/DBQxoV7fKXOjpNDEFN5pIVaxzHPAANU4lH
         cgcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h2+QfjQy;
       spf=pass (google.com: domain of coiby.xu@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=coiby.xu@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m6IUJCYR3X/RAWYNlYzpuMxxoBP5pbTQ2V8R8I8Uab4=;
        b=fVT1R8Zyq8tuPxZWC5gyOWOUL88aIb/n1uExnv0eGUmYR4GEjhgoRLRDKWGyjK9qXH
         8t2PrItHNpXYNzRM3G514hS4moo+9cMscyalT9OgIIHkb7TY8wAwyCPOJHQZflzODMpm
         pBJ6PF/SpxeRCP7Z/vNvGCLUBKknwCIJQWWkXFKrvvUFYMqEfHTUY5lAOhxzBtP7zPTt
         4p5NPKZ4xQEzerUpnMQjSxG/Se2ffQ+M6W+vQDAJU6DFZ47c7pPV/pgih3V1Lmlecag6
         0/X34+esbiXnfSpfA6QwQF3rpWGUJFV9IEVIKlthv3k2sEJ5Ei4S1k3S4W3qOTkiJ61r
         Pwdw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m6IUJCYR3X/RAWYNlYzpuMxxoBP5pbTQ2V8R8I8Uab4=;
        b=IFwwiTn/1Nz8Kh9fSO3w/FB1GI+CXeqHhsBpbdTVexcLhnt3l0w8aSpwl/NvffGxeo
         TZElJ73lDjEcCmQlAco/LCXak0uVNN0x90jrlXVMY8XagfzfyBK6k9QypGFqlrqsbYO2
         trkUDuhgFgKsBzALzv4RoPa15jPcmTAqXX/DcYso/P3PtNk07JuOoV05n6xRXbLnlZ4g
         +MGWnItrGy82brsov8claxEBkVKOUYRLa2LYNtnSfspPLLNS5JQvJ5ABHuXjNz4zBdtw
         M4Nj2Wm4h+j4AP8E4lCP0NsDfgaZp0oXHKyM39skjOUbFxG9Qv92M8VuOjdI5xbvfgtR
         TEkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=m6IUJCYR3X/RAWYNlYzpuMxxoBP5pbTQ2V8R8I8Uab4=;
        b=mdl8qijtYQS3ygi6NPi4WlB2kHIHO7gAf9ESJPOOFRzJFBvcihZZx/NRj/qQASxhCt
         D88C2V2Kf/Bp/44sDeA0ZQVt3EII6+JhWXhLFdO+2V0JkFg3V5ECyYc2UullYAzouNOp
         b6qXodb+wB1IsiRce6JWq4jlJT0BVOadKY59lHnBSgmlofv3zDfk+KQ390J/VcSzMvVC
         LtrimYMW8weVL/0JFcyteMGW7qPAnvvmKrjyod2iG2sV67+b/gYYepObJM1EDwbOb6N+
         CBT4oeHSzDyHk5rNhlJVwvNTlMAjB6AIMGoD9CHoIt+yzh7r28s5zeSKIHiSfBjWKmYq
         ea+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319WJMuEQ/Iuy/Yie7HWWF1dplCKietT8xfqBffhcKRlwwb3MmD
	o8+/1e/7QD5C7Lyv/M6DZeA=
X-Google-Smtp-Source: ABdhPJw7P5E6+JAOpWFKxbaFgBR+TAh1qssypaTr15w8kB3G/8OkED7Q5NzELgKTRuoNo6WgQ00rBQ==
X-Received: by 2002:a25:8885:: with SMTP id d5mr4235724ybl.75.1624536036366;
        Thu, 24 Jun 2021 05:00:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b1a6:: with SMTP id h38ls2750093ybj.5.gmail; Thu, 24 Jun
 2021 05:00:35 -0700 (PDT)
X-Received: by 2002:a25:24c9:: with SMTP id k192mr4128236ybk.54.1624536035908;
        Thu, 24 Jun 2021 05:00:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624536035; cv=none;
        d=google.com; s=arc-20160816;
        b=BvbI9kxZ1kdtwax59xMNgwPf7RaGnvZgap+6MIgA2oZ+308p31qszb/oAnboe6fUz7
         yGRSu380RAWypeteF8caFvVKU2iGlQ6DRMAb6LwbSVFllF54IARuhKPs74tb1hM9+L8n
         URALUNSWqwYCX6BygWVcxXqSoqcW79SqomwILDotDx0/ZMZfw/zXtS/WQMglFYSgIF2W
         AAO/9jW/eoYyRioVaU/UW7d+nUSHF0pjVHVAcbKo67LTsg58X2HhgXfs677SRJ19QS86
         FML0i7D3+wBto22aoQiz8QsyfEP02+yiCj+iyMvyKizNPi/wM1KX3ORL45Z/JP4cgTLp
         IUBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:dkim-signature;
        bh=AIOGsHWLRny/cPcLESp662rsTaSLQc4NuErEHrE2mZs=;
        b=R8ImDbSSKgSgCCs4QLT3pxQ9PbO1LmIjxcej357EVb6w06v7+O69m8RQibDOjVu9WJ
         885+iuvNPlkH9RuMYYwuX7fwScVF7xjOrjGdapM7+xsgGop5273UrhCV/3C+nrFxp0yo
         GK8t3v85FpaS/MF64XTxV8Ofbl3/+7llMBhMDg3sR7VkIotalqLx7C4AllROj69gB0U+
         XtwdGGPSFNsaencCKDH/4OeIkZyRLJ3CW05NVbrM9NGEmk1KBNbhFqDl0+CeA+yqt3+2
         rPByhk22EsrpqDrziKUeGUyFzoPl4KN1D0Yi9FxWB41T/MEsQS6ZyoQ/8rDX/hWy+kkO
         RoWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h2+QfjQy;
       spf=pass (google.com: domain of coiby.xu@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=coiby.xu@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id r9si396638ybb.1.2021.06.24.05.00.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jun 2021 05:00:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of coiby.xu@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id t32so4975268pfg.2
        for <clang-built-linux@googlegroups.com>; Thu, 24 Jun 2021 05:00:35 -0700 (PDT)
X-Received: by 2002:a63:582:: with SMTP id 124mr4489536pgf.132.1624536035097;
        Thu, 24 Jun 2021 05:00:35 -0700 (PDT)
Received: from localhost ([209.132.188.80])
        by smtp.gmail.com with ESMTPSA id o9sm2965844pfh.217.2021.06.24.05.00.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jun 2021 05:00:34 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
Date: Thu, 24 Jun 2021 19:55:36 +0800
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Message-ID: <20210624115536.5y4oqzrbms63rjcy@Rk>
References: <20210621134902.83587-1-coiby.xu@gmail.com>
 <20210621134902.83587-18-coiby.xu@gmail.com>
 <20210622084611.GM1861@kadam>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210622084611.GM1861@kadam>
X-Original-Sender: Coiby.Xu@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=h2+QfjQy;       spf=pass
 (google.com: domain of coiby.xu@gmail.com designates 2607:f8b0:4864:20::434
 as permitted sender) smtp.mailfrom=coiby.xu@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jun 22, 2021 at 11:46:11AM +0300, Dan Carpenter wrote:
>On Mon, Jun 21, 2021 at 09:49:00PM +0800, Coiby Xu wrote:
>> @@ -524,8 +523,8 @@ static int qlge_set_routing_reg(struct qlge_adapter *qdev, u32 index, u32 mask,
>>  		{
>>  			value = RT_IDX_DST_DFLT_Q | /* dest */
>>  				RT_IDX_TYPE_NICQ | /* type */
>> -				(RT_IDX_IP_CSUM_ERR_SLOT <<
>> -				RT_IDX_IDX_SHIFT); /* index */
>> +			(RT_IDX_IP_CSUM_ERR_SLOT
>> +			 << RT_IDX_IDX_SHIFT); /* index */
>
>The original is not great but the new indenting is definitely worse.
>It might look nicer with the comments moved in the front?  Why does
>RT_IDX_IDX_SHIFT have two IDX strings?

I'm not sure about it. Two IDX strings seems to be a typo.
>
>			/* value = dest | type | index; */
>			value = RT_IDX_DST_DFLT_Q |
>				RT_IDX_TYPE_NICQ  |
>				(RT_IDX_IP_CSUM_ERR_SLOT << RT_IDX_IDX_SHIFT);
>

This looks better! Thanks!

>
>>  			break;
>>  		}
>>  	case RT_IDX_TU_CSUM_ERR: /* Pass up TCP/UDP CSUM error frames. */
>> @@ -554,7 +553,8 @@ static int qlge_set_routing_reg(struct qlge_adapter *qdev, u32 index, u32 mask,
>>  		{
>>  			value = RT_IDX_DST_DFLT_Q |	/* dest */
>>  			    RT_IDX_TYPE_NICQ |	/* type */
>> -			    (RT_IDX_MCAST_MATCH_SLOT << RT_IDX_IDX_SHIFT);/* index */
>> +			(RT_IDX_MCAST_MATCH_SLOT
>> +			 << RT_IDX_IDX_SHIFT); /* index */
>
>Original is better.

I'll also move the comments in the front.
>
>>  			break;
>>  		}
>>  	case RT_IDX_RSS_MATCH:	/* Pass up matched RSS frames. */
>> @@ -648,15 +648,15 @@ static int qlge_read_flash_word(struct qlge_adapter *qdev, int offset, __le32 *d
>>  {
>>  	int status = 0;
>>  	/* wait for reg to come ready */
>> -	status = qlge_wait_reg_rdy(qdev,
>> -				   FLASH_ADDR, FLASH_ADDR_RDY, FLASH_ADDR_ERR);
>> +	status = qlge_wait_reg_rdy(qdev, FLASH_ADDR, FLASH_ADDR_RDY,
>> +				   FLASH_ADDR_ERR);
>>  	if (status)
>>  		goto exit;
>>  	/* set up for reg read */
>>  	qlge_write32(qdev, FLASH_ADDR, FLASH_ADDR_R | offset);
>>  	/* wait for reg to come ready */
>> -	status = qlge_wait_reg_rdy(qdev,
>> -				   FLASH_ADDR, FLASH_ADDR_RDY, FLASH_ADDR_ERR);
>> +	status = qlge_wait_reg_rdy(qdev, FLASH_ADDR, FLASH_ADDR_RDY,
>> +				   FLASH_ADDR_ERR);
>>  	if (status)
>>  		goto exit;
>>  	/* This data is stored on flash as an array of
>> @@ -792,8 +792,8 @@ static int qlge_write_xgmac_reg(struct qlge_adapter *qdev, u32 reg, u32 data)
>>  {
>>  	int status;
>>  	/* wait for reg to come ready */
>> -	status = qlge_wait_reg_rdy(qdev,
>> -				   XGMAC_ADDR, XGMAC_ADDR_RDY, XGMAC_ADDR_XME);
>> +	status = qlge_wait_reg_rdy(qdev, XGMAC_ADDR, XGMAC_ADDR_RDY,
>> +				   XGMAC_ADDR_XME);
>>  	if (status)
>>  		return status;
>>  	/* write the data to the data reg */
>> @@ -811,15 +811,15 @@ int qlge_read_xgmac_reg(struct qlge_adapter *qdev, u32 reg, u32 *data)
>>  {
>>  	int status = 0;
>>  	/* wait for reg to come ready */
>> -	status = qlge_wait_reg_rdy(qdev,
>> -				   XGMAC_ADDR, XGMAC_ADDR_RDY, XGMAC_ADDR_XME);
>> +	status = qlge_wait_reg_rdy(qdev, XGMAC_ADDR, XGMAC_ADDR_RDY,
>> +				   XGMAC_ADDR_XME);
>
>Need a blank line after the declaration block.

Sure, I will fix it in next version.

>
>>  	if (status)
>>  		goto exit;
>>  	/* set up for reg read */
>>  	qlge_write32(qdev, XGMAC_ADDR, reg | XGMAC_ADDR_R);
>>  	/* wait for reg to come ready */
>> -	status = qlge_wait_reg_rdy(qdev,
>> -				   XGMAC_ADDR, XGMAC_ADDR_RDY, XGMAC_ADDR_XME);
>> +	status = qlge_wait_reg_rdy(qdev, XGMAC_ADDR, XGMAC_ADDR_RDY,
>> +				   XGMAC_ADDR_XME);
>>  	if (status)
>>  		goto exit;
>>  	/* get the data */
>
>regards,
>dan carpenter

-- 
Best regards,
Coiby

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210624115536.5y4oqzrbms63rjcy%40Rk.
