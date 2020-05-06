Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJWGZD2QKGQENRDRX4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A591C65EA
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 04:38:31 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id s26sf341161ioj.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 19:38:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588732711; cv=pass;
        d=google.com; s=arc-20160816;
        b=GyxxKuCK+/Qd4nIg7GFRWvdmk0zTJNIAmJJ+X2H60oT563nKK3egwbRcSI+Psffg7D
         CW9sbFY/uLN+gOChYo7XKNc1HPsAhEIGOblVVeuyN8VV5k/UJ+P6cDuhslbQlepEfU6q
         PkXBChdo0E86MLlE7eZgC8cg56RJvGdjCbN2m0TiCMfD9bczKEICpaFyWPq8kLbgz7E4
         iJluOPZxzuSW+KHrR3qRohaZDPehhh1T+pr0SbajCNcYCk6W84tMZ0vMEwACdRt6F7aG
         l8oXCmojlCx8JeLoYc4J/KBvja+SgIulUpAGoLh/CATgpF9Gsi84E9LvS3cf5x0NHggC
         va4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=6+FVJtX/+itbuu9P5MSBAtvA8SIW/2QRGpW4RYdf56g=;
        b=FOLk05hWnMtekmUFDmSftVal+eJ5YHg1pKQhjnfX3nlzvlm5wVwfDVpA4RVM+B8PKL
         smkvAP2B0Y/0ytbAPbaRtRs1xe2CsXThFDh3upH7DU9c2nU9fxR6d69DmX++Attq5Bvb
         WjVVZQWZj4/CVtzeW8WHBSFnahCwl6WIlitSgC7n2psBtj/yv4u6DPpzHWSC6wj5wg/A
         0y3ZOvdMG8QuBd7ai60Sn60ZhNVMMzvUeukiDotUPr8sIifG5gni1M8seS8/4sD4Og84
         iWoOKFAaF+nw4XJLef9dy6zZ8fHb61WtsYbEaxd8iJswegzPxzPvG9wmVJTj0Ar2XIjF
         Mfmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=seY8O0PO;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6+FVJtX/+itbuu9P5MSBAtvA8SIW/2QRGpW4RYdf56g=;
        b=m2H1dTaJ99j2khtnfUSzR5ezOQCwvcnJjA9mg90zgk0ZwSymqaiAsO9Vr9gzy3czS+
         Dlqtx2Vl4hr9+13CU6mO8WpBV59zMGv4lN9VuqO1yK4RlMSWFg1lLBN7+q9O98zjYkeI
         4+nkJytTpl3bxcCxtSplGsrF1hTkS0tjB1G2LFMpAvVQkpqiIhDadLnKbV4OKkcG1nRR
         IUnD0EDWg3BiDXVrVgHP9OUHZj6dhind7gadfhIthwo1BimeCxZOzAo7jLgU0c0eQL+g
         qMBQy8wACTd6vsxtQNSM4Gi2vDHPAZYBdy9uaCKuA10xp5hU3D/t6NF+0It/BbHNjOFR
         //9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6+FVJtX/+itbuu9P5MSBAtvA8SIW/2QRGpW4RYdf56g=;
        b=Sh/kd9ilHK01nEYfm3vgB5wKLluOCqf8Mc67D0UARNmX4ksfo1OVScdJr3BJIaJz0p
         Mxlswhk1QkJn2yuL980UP7e5XqqBDcZt/RA5KXKH7VfdpHimhn1+t2qYSaxAUjygqBb9
         xinU6UeqKgnMRDT+Z9b0MY5Q6/2j3ug00iIk0a9MmPqMP4ZjtJY8nxbNMdHrlXVR/HUN
         UkCnwLvPQrsk5TerzX2QumqzNPTiTtHjF1q3w5KCZWRyS9JeP04haC5ILp1MlymXIp4c
         41YN+kShRUIuQGNUrwGHIcg2OwYYsXVOIXm69LV7CO/mrYzfBosxg8IbD7mItoTfZk0z
         JGyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6+FVJtX/+itbuu9P5MSBAtvA8SIW/2QRGpW4RYdf56g=;
        b=sE3Hf/Lje/7jFZi0lFm7EfTEfdY46Tc+7PNR5VT4G4mDvk4vH/axTQoHC5/UqGRLeN
         4A/r6cTy0lODx/28OcrDV5bDc/uUBPTEZDfyhwUj3iNFd0RrgxHAdoxUjgfUVBCBtOH7
         j+EOwWebCqX2yarYPqrEcL227zUXFjyseJgqiKD987TUJG7xubhWwmMnuC/M5fnLxceK
         reW9QEFas2R9efNtN7u5o6H32zWrc1lc85pDgwqG6bD/8Eht/QskAjBATaQdIxDUgsZj
         rkQ31o6NiDUrqApuZCACXtraBX8L/jwQjxouaw/gSxMRyUfnAjGsLjM5KgHMQeUkEs/R
         JsZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubnpLBrriKsGkVyCILMKbi7p4629WUZf/W+Xooe1CsigeYx2V3H
	IUufMSExKApKAIkhAssON/g=
X-Google-Smtp-Source: APiQypKNB3TzYqaBvdcrrWtQMC59OY5fcjpK3N0P9/fdhNdVtRB9M14SUixlzxfv14LJVBROe7lrew==
X-Received: by 2002:a92:49c7:: with SMTP id k68mr6640166ilg.252.1588732710802;
        Tue, 05 May 2020 19:38:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5fd5:: with SMTP id i82ls432331ill.0.gmail; Tue, 05 May
 2020 19:38:30 -0700 (PDT)
X-Received: by 2002:a05:6e02:f53:: with SMTP id y19mr6915260ilj.180.1588732710473;
        Tue, 05 May 2020 19:38:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588732710; cv=none;
        d=google.com; s=arc-20160816;
        b=qN+2MJuUN8ErR3pBq0pvHj4zkwT+LJb96497KcBnYgWIkABoKgDM6wUjZlpnO8HCqf
         mh+vz6YWRa48cjGp4I/xw/DEwnatM5rjEGa1dJjn6YbnDnDFi5GJTGCw/ILnddWBW9fC
         s94qf/fae5+XN6/7QaDqLx8O2caV9HBAuApYspAIGjN+JQLZ1ywtVzUNBUqfDjid+13A
         I50lCXgxg8Vg0xAMZJ63BxFZEkH9m9FGfyhI1KVCddkGPIcNCmNeKqcAT8nY20YZhSKk
         EknZCpHHa3LX84ArHo/5qp6hAGxpX2gcpzxLKsRZU/NBVcodbdd58z5SvleOhKoXx1kH
         bovA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=j7wFQAej6fSwbScLFcHGQ/mYv2AH2O4tGHNnw9sXpTw=;
        b=ikeZ+3v/jCiK4gcyJwo8Ce8B+W+6DdGck0BNAE0OlXzVNcla9t2DD0PgegtVvael3d
         UPZ2k5mf/VcqcH+IZqcxj2b/FQKLu+pDYBxiLVzPjc+Rd8Skpl8iE2JxyyYFscQS038e
         omR652Oea0yK7o4gltjAjGfzSs8QfqKGy5UZVaziMBckPUUCoSphCB7IB/slz/NI/OSH
         yDiScwmm5HBCoxH7cl7q0RU1kr4AZERJvhicQ+FwvwpxbL8ljOmdX57ND81Cpp03eYPp
         45Qp+MY6hEnNMM9uK+LJ1Ha2UBkaTme6Jm15noS7J6v0AHIX8P06r4AUiYzXuGJxomww
         fm2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=seY8O0PO;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id v22si93081ioj.2.2020.05.05.19.38.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 19:38:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id o7so432954oif.2
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 19:38:30 -0700 (PDT)
X-Received: by 2002:a05:6808:a93:: with SMTP id q19mr1284179oij.6.1588732710003;
        Tue, 05 May 2020 19:38:30 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id i10sm263302oos.28.2020.05.05.19.38.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 19:38:29 -0700 (PDT)
Date: Tue, 5 May 2020 19:38:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Vincenzo Aliberti <vincenzo.aliberti@gmail.com>,
	Brian Norris <computersforpeace@gmail.com>,
	Richard Fontana <rfontana@redhat.com>,
	linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mtd: lpddr: fix excessive stack usage with clang
Message-ID: <20200506023828.GA415100@ubuntu-s3-xlarge-x86>
References: <20200505140136.263461-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200505140136.263461-1-arnd@arndb.de>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=seY8O0PO;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, May 05, 2020 at 04:01:16PM +0200, Arnd Bergmann wrote:
> Building lpddr2_nvm with clang can result in a giant stack usage
> in one function:
> 
> drivers/mtd/lpddr/lpddr2_nvm.c:399:12: error: stack frame size of 1144 bytes in function 'lpddr2_nvm_probe' [-Werror,-Wframe-larger-than=]
> 
> The problem is that clang decides to build a copy of the mtd_info
> structure on the stack and then do a memcpy() into the actual version. It
> shouldn't really do it that way, but it's not strictly a bug either.
> 
> As a workaround, use a static const version of the structure to assign
> most of the members upfront and then only set the few members that
> require runtime knowledge at probe time.
> 
> Fixes: 96ba9dd65788 ("mtd: lpddr: add driver for LPDDR2-NVM PCM memories")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/mtd/lpddr/lpddr2_nvm.c | 35 ++++++++++++++++++----------------
>  1 file changed, 19 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/mtd/lpddr/lpddr2_nvm.c b/drivers/mtd/lpddr/lpddr2_nvm.c
> index 0f1547f09d08..72f5c7b30079 100644
> --- a/drivers/mtd/lpddr/lpddr2_nvm.c
> +++ b/drivers/mtd/lpddr/lpddr2_nvm.c
> @@ -393,6 +393,17 @@ static int lpddr2_nvm_lock(struct mtd_info *mtd, loff_t start_add,
>  	return lpddr2_nvm_do_block_op(mtd, start_add, len, LPDDR2_NVM_LOCK);
>  }
>  
> +static const struct mtd_info lpddr2_nvm_mtd_info = {
> +	.type		= MTD_RAM,
> +	.writesize	= 1,
> +	.flags		= (MTD_CAP_NVRAM | MTD_POWERUP_LOCK),
> +	._read		= lpddr2_nvm_read,
> +	._write		= lpddr2_nvm_write,
> +	._erase		= lpddr2_nvm_erase,
> +	._unlock	= lpddr2_nvm_unlock,
> +	._lock		= lpddr2_nvm_lock,
> +};
> +
>  /*
>   * lpddr2_nvm driver probe method
>   */
> @@ -433,6 +444,7 @@ static int lpddr2_nvm_probe(struct platform_device *pdev)
>  		.pfow_base	= OW_BASE_ADDRESS,
>  		.fldrv_priv	= pcm_data,
>  	};
> +
>  	if (IS_ERR(map->virt))
>  		return PTR_ERR(map->virt);
>  
> @@ -444,22 +456,13 @@ static int lpddr2_nvm_probe(struct platform_device *pdev)
>  		return PTR_ERR(pcm_data->ctl_regs);
>  
>  	/* Populate mtd_info data structure */
> -	*mtd = (struct mtd_info) {
> -		.dev		= { .parent = &pdev->dev },
> -		.name		= pdev->dev.init_name,
> -		.type		= MTD_RAM,
> -		.priv		= map,
> -		.size		= resource_size(add_range),
> -		.erasesize	= ERASE_BLOCKSIZE * pcm_data->bus_width,
> -		.writesize	= 1,
> -		.writebufsize	= WRITE_BUFFSIZE * pcm_data->bus_width,
> -		.flags		= (MTD_CAP_NVRAM | MTD_POWERUP_LOCK),
> -		._read		= lpddr2_nvm_read,
> -		._write		= lpddr2_nvm_write,
> -		._erase		= lpddr2_nvm_erase,
> -		._unlock	= lpddr2_nvm_unlock,
> -		._lock		= lpddr2_nvm_lock,
> -	};
> +	*mtd = lpddr2_nvm_mtd_info;
> +	mtd->dev.parent		= &pdev->dev;
> +	mtd->name		= pdev->dev.init_name;
> +	mtd->priv		= map;
> +	mtd->size		= resource_size(add_range);
> +	mtd->erasesize		= ERASE_BLOCKSIZE * pcm_data->bus_width;
> +	mtd->writebufsize	= WRITE_BUFFSIZE * pcm_data->bus_width;
>  
>  	/* Verify the presence of the device looking for PFOW string */
>  	if (!lpddr2_nvm_pfow_present(map)) {
> -- 
> 2.26.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506023828.GA415100%40ubuntu-s3-xlarge-x86.
