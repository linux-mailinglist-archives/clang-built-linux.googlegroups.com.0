Return-Path: <clang-built-linux+bncBC4MX6WW7QIBBAGEZ72QKGQEIBSGPGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id A77401C869B
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 12:25:04 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id e18sf852607ljn.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 03:25:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588847104; cv=pass;
        d=google.com; s=arc-20160816;
        b=hQulBhxm4anr14NujmKOhLVoSOwsYK19Kil9GElbD+s41m/0pvqpDs23X/yrErLEbS
         U/XZ43xlHT+hNQB9AGo3dEUQ3kBFYoyxLTBm6+M/zWQiWfMYdtrAkTkKYymmcqh4YvdV
         4igcWAd/XGSo2i7VcBp4lCYhovvRk0uLr+ptUyiavJNnk/IidFYSJCigEmqf1SklTPRg
         Ib4bkirNOqoozJWZWihKT89VaMMrVwy2KPXjEOX6O2Sw+7CX8HzOGhYLwldKHzPZay9+
         N0rCREK7BGWTfLeMOf8FWmbU4xA6FSCUSBRH1YIhakDRreLWDDORNZq068GU6fjiaPZb
         5/7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=bNHgqEgqmlkcPD/Z3FSd2SZp58TkGmH2c1/YFXaVmFg=;
        b=crzqLkTrbuZxQNOcM+HWqRKE5n7JeMwRxOPdjP05iL6zBH9VVGKJLrif5RFdC9HuBw
         bpRT4KKwCXqyQcYyPGM6hnHKEQ0mBQe5Yfzodx4ZwLa4Qq9yLGGw3YmxS0zxqmQ27yId
         NQxiMSHmeRsFXzkDCAMrbR0d1dU8AmYHOrpi2Nt+ZQhspr3zQ2bHbrO2yjWMccsOfYXt
         pYVBGaphTOJDG6TFy49BdoLdr1KtrVYIg+Q/lTww6nDL/gMnfJ8e138Vlz6yUJjVS4cE
         thLnGkLeYFjj7i352qBvXYyXWx+veLn2Q/TjkosyL9HzmQl5uykOIm5sn/ySQay+Z+yk
         5xDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.178.230 as permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bNHgqEgqmlkcPD/Z3FSd2SZp58TkGmH2c1/YFXaVmFg=;
        b=CoIt7+uCrxW11yl2FA+pvXVJDQKab2deIBvUtq6KfR/nu+QoHc9GIjhVCMtYvREvlE
         VU3+/BKzxF429BZuLiQIQsRK1g1HUUYvLpI90DkZvLVQK7FA7OBRkMk4lgHtzi3Oosf+
         CCLfGOs1yICdYZUcDtNk9UEKuYfJD89P3ovgOg7u37pvWijR0F6yqajUaxbbqu+9x+2c
         t+RZIlyMLhw3PlARbs1V616sa9VvLHiNhm9LYtsZ/kZH0qJh1Axe1UTGkoStxnjfz9r0
         QqlfvOh/JGHIW/PCgAqH5O8Cl1UjxVJMOXiJYFYw02vC9g5TuTFDWHg3n9C9JBWM3JE/
         KVfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bNHgqEgqmlkcPD/Z3FSd2SZp58TkGmH2c1/YFXaVmFg=;
        b=EL4IrwQowUNkbjvChiu83xS8XGp9sk3o60EHOYArHPzv/GJqcwdVx5dT/Y4dYy40oU
         GgkkDaWSX26dM4x2AaTMdo3ZuL1AocjuWcWhmjALNv4H5Kcm6YXsWjSUda/zBvAeRIh/
         Pb/gIbz++xPq1VoRXn9K0pkTyZ+0yHi7bKWAl7vdHQf5jt8zKkf/rKUdm5gMVm4xRtAu
         eoluWOTO6IEgLfDRkDajJj6k7v0J3W54fkavaoq68JO1zjyb4ji9Q3DyaMNjcceWNS/q
         24KuyX4xVhfShhO22G/8/PMJ8OxjjdCSskMAl+6beDdB4imenuwkqUHcSeRFe9zGaV0w
         AaWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubFFGoH5xT6gDgAMMLJO7TrGgSkziVHnlfq7XGIFiFiq3PUM33G
	Kd5j1l4hoY+gwDPFe78fdF8=
X-Google-Smtp-Source: APiQypJ5D2ziRcfQqGjNbkAYP9DY6PFXjiMfs7KVFKWox6HDfPstPi7Z3rpyaN39rl4D0TGpWkRF+w==
X-Received: by 2002:a19:7004:: with SMTP id h4mr7876234lfc.148.1588847104211;
        Thu, 07 May 2020 03:25:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:288:: with SMTP id b8ls1468842ljo.8.gmail; Thu, 07
 May 2020 03:25:03 -0700 (PDT)
X-Received: by 2002:a2e:994a:: with SMTP id r10mr7848891ljj.105.1588847103490;
        Thu, 07 May 2020 03:25:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588847103; cv=none;
        d=google.com; s=arc-20160816;
        b=07f4fCHAgaX3twYAMRjB8wWpjBfGq9GJDN3MBPDSP56Abr76T89gkAvKMFpof5857E
         pxvbw/mbsQW8r5CqD9tickoYEDZpybsFZGM36yxNCfTVUWn9nedHtOAGGW1aqDKV2850
         zTYLDr/ym6EBfMl1dvoKdJX/L2HHy8f7Ib3+fUZxobeQGPWO1J3LbII7XKDIEQSctdLc
         QLnZKUG3XGRo/3GuNaDGvCF3rkfWxjhRT1Z5gs9M+IYBAq+/8nEDKXTLTkNXOnlQXeOz
         KMzy3LI1ACp0qU+Y/BKyMR1zGbI9Snad7yWDDtWVRoBqz9/kbdrfdxmkaE7K7EYou0zo
         aaTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=WqRRkWsQJO1KCN7TJZpQ2ZDR99mLOX6JSjGNk+Js6co=;
        b=svaTcVWa+6fBYl/8oTIcUhfvg5OC/zOp9JPrVdOqsC9kR63jzQAIw2ECtYKtujSFI2
         Dem2hpPlQ7i+a1/MmGcTz5Jre8q+OkJvupA+icKSREG6YnIC/on5YazCpQRDSWM/JqII
         KCguS3MAJeTR+L9Au66sRpJ1VqiakyWFlZXXr5t3jXOy2DUDOtDTGtFb77XmQzgtLBcH
         O96D8bMZjVsVpWodyQ1OSzLVNMLdTf7Ad5PyGfN1LfW4t8GDntdmfU0eZut8+4FTrdAt
         JmHb1Iv2KrovPfSFd+bCZr2e1ombcjWiCjkygimPM7ggHaru6zJ7HODjQDdmgU+3qTuq
         7Y/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.178.230 as permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net. [217.70.178.230])
        by gmr-mx.google.com with ESMTPS id b11si309998lji.0.2020.05.07.03.25.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 May 2020 03:25:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.178.230 as permitted sender) client-ip=217.70.178.230;
Received: from xps13 (unknown [91.224.148.103])
	(Authenticated sender: miquel.raynal@bootlin.com)
	by relay10.mail.gandi.net (Postfix) with ESMTPSA id 831E6240014;
	Thu,  7 May 2020 10:21:11 +0000 (UTC)
Date: Thu, 7 May 2020 12:21:10 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Richard Weinberger <richard@nod.at>,
 Vignesh Raghavendra <vigneshr@ti.com>, Vincenzo Aliberti
 <vincenzo.aliberti@gmail.com>, Brian Norris <computersforpeace@gmail.com>,
 Richard Fontana <rfontana@redhat.com>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mtd: lpddr: fix excessive stack usage with clang
Message-ID: <20200507122110.50ccce48@xps13>
In-Reply-To: <20200506023828.GA415100@ubuntu-s3-xlarge-x86>
References: <20200505140136.263461-1-arnd@arndb.de>
	<20200506023828.GA415100@ubuntu-s3-xlarge-x86>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miquel.raynal@bootlin.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of miquel.raynal@bootlin.com designates 217.70.178.230 as
 permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com
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


Nathan Chancellor <natechancellor@gmail.com> wrote on Tue, 5 May 2020
19:38:28 -0700:

> On Tue, May 05, 2020 at 04:01:16PM +0200, Arnd Bergmann wrote:
> > Building lpddr2_nvm with clang can result in a giant stack usage
> > in one function:
> > 
> > drivers/mtd/lpddr/lpddr2_nvm.c:399:12: error: stack frame size of 1144 bytes in function 'lpddr2_nvm_probe' [-Werror,-Wframe-larger-than=]
> > 
> > The problem is that clang decides to build a copy of the mtd_info
> > structure on the stack and then do a memcpy() into the actual version. It
> > shouldn't really do it that way, but it's not strictly a bug either.
> > 
> > As a workaround, use a static const version of the structure to assign
> > most of the members upfront and then only set the few members that
> > require runtime knowledge at probe time.
> > 
> > Fixes: 96ba9dd65788 ("mtd: lpddr: add driver for LPDDR2-NVM PCM memories")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>  
> 
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Acked-by: Miquel Raynal <miquel.raynal@bootlin.com>

> 
> > ---
> >  drivers/mtd/lpddr/lpddr2_nvm.c | 35 ++++++++++++++++++----------------
> >  1 file changed, 19 insertions(+), 16 deletions(-)
> > 
> > diff --git a/drivers/mtd/lpddr/lpddr2_nvm.c b/drivers/mtd/lpddr/lpddr2_nvm.c
> > index 0f1547f09d08..72f5c7b30079 100644
> > --- a/drivers/mtd/lpddr/lpddr2_nvm.c
> > +++ b/drivers/mtd/lpddr/lpddr2_nvm.c
> > @@ -393,6 +393,17 @@ static int lpddr2_nvm_lock(struct mtd_info *mtd, loff_t start_add,
> >  	return lpddr2_nvm_do_block_op(mtd, start_add, len, LPDDR2_NVM_LOCK);
> >  }
> >  
> > +static const struct mtd_info lpddr2_nvm_mtd_info = {
> > +	.type		= MTD_RAM,
> > +	.writesize	= 1,
> > +	.flags		= (MTD_CAP_NVRAM | MTD_POWERUP_LOCK),
> > +	._read		= lpddr2_nvm_read,
> > +	._write		= lpddr2_nvm_write,
> > +	._erase		= lpddr2_nvm_erase,
> > +	._unlock	= lpddr2_nvm_unlock,
> > +	._lock		= lpddr2_nvm_lock,
> > +};
> > +
> >  /*
> >   * lpddr2_nvm driver probe method
> >   */
> > @@ -433,6 +444,7 @@ static int lpddr2_nvm_probe(struct platform_device *pdev)
> >  		.pfow_base	= OW_BASE_ADDRESS,
> >  		.fldrv_priv	= pcm_data,
> >  	};
> > +
> >  	if (IS_ERR(map->virt))
> >  		return PTR_ERR(map->virt);
> >  
> > @@ -444,22 +456,13 @@ static int lpddr2_nvm_probe(struct platform_device *pdev)
> >  		return PTR_ERR(pcm_data->ctl_regs);
> >  
> >  	/* Populate mtd_info data structure */
> > -	*mtd = (struct mtd_info) {
> > -		.dev		= { .parent = &pdev->dev },
> > -		.name		= pdev->dev.init_name,
> > -		.type		= MTD_RAM,
> > -		.priv		= map,
> > -		.size		= resource_size(add_range),
> > -		.erasesize	= ERASE_BLOCKSIZE * pcm_data->bus_width,
> > -		.writesize	= 1,
> > -		.writebufsize	= WRITE_BUFFSIZE * pcm_data->bus_width,
> > -		.flags		= (MTD_CAP_NVRAM | MTD_POWERUP_LOCK),
> > -		._read		= lpddr2_nvm_read,
> > -		._write		= lpddr2_nvm_write,
> > -		._erase		= lpddr2_nvm_erase,
> > -		._unlock	= lpddr2_nvm_unlock,
> > -		._lock		= lpddr2_nvm_lock,
> > -	};
> > +	*mtd = lpddr2_nvm_mtd_info;
> > +	mtd->dev.parent		= &pdev->dev;
> > +	mtd->name		= pdev->dev.init_name;
> > +	mtd->priv		= map;
> > +	mtd->size		= resource_size(add_range);
> > +	mtd->erasesize		= ERASE_BLOCKSIZE * pcm_data->bus_width;
> > +	mtd->writebufsize	= WRITE_BUFFSIZE * pcm_data->bus_width;
> >  
> >  	/* Verify the presence of the device looking for PFOW string */
> >  	if (!lpddr2_nvm_pfow_present(map)) {
> > -- 
> > 2.26.0
> >   

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200507122110.50ccce48%40xps13.
