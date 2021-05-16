Return-Path: <clang-built-linux+bncBCZ35CE25UGBBV6OQOCQMGQEJTC6VUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EBC381DAC
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 May 2021 11:35:20 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id h1-20020a056e021d81b02901bb694b89fasf3172651ila.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 16 May 2021 02:35:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621157720; cv=pass;
        d=google.com; s=arc-20160816;
        b=KCYZVLPPQqi5iM1eL/L4lY2uAfFb1tH30Lx7pizs1XD03igjrfxe5eICjGaOk0AZRU
         vEZPC/PT6ysu7xWAxvH9oxM52LmjsjKi3NPztcrap8bI/hQf+GY9TldWlzXUiODrAqI6
         LfHOSFnSUmdJixgtaKet/rtbr/nAifu9fcuqXMNB6mMLvZqFgPYBL6EPArhuxH+trFSb
         7BTErKNflY60RRTnweV8IKJs8qaSl6uGTRPh7drd6kGhNgk8W/Ak6UZoMMwu34Y2UOL2
         HDXt0hUz8ap0Xw5urUBCJGV8wOz04G7FGzdh5SN2PzcjK5Figc0jcbysK2RmFuvS4Qio
         o4/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=dQ4+XnkmgnyXOFgdyPaNewY1uaafyDHc+eTPmdlJCZE=;
        b=EiAaTiKwPdFh8TirLmzF9bkBpEDyJafMnRsHXc+V6QlqS+91apVBUl3fJHEDmbrkB8
         MvT+wav/4cI+uk5k4CoKN8d8hPoBgV9Qi2nRoL4nNzKhbTYSpQU3YzdJWPvVxATwIF7C
         vEHYj0P5y72sZ1O6V+RKspY6Tk9CrHOHkefErh2aCOlXT7qjxSpZXbnxjSoXFuhgZfGH
         Yk4uY1qgvEz6BDSfioImXkDauVOL61ZieUgOlgt4+DLWtXHnKGcXjID58aQgecIlN31f
         PStHnpFxva0dRrf7oGfTNlcyU6Ck+NSUzHaSFV4fAMaMP8JLgh3iXDdp4TgC9JQOtvoM
         oSdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jic23@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jic23@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dQ4+XnkmgnyXOFgdyPaNewY1uaafyDHc+eTPmdlJCZE=;
        b=MU8D6hnAEERAETJY2LH62OuswBp9WWAkJduEiryWaVUSYrkeNGRkOhj5pCYLO03w4Z
         4xq+Ax9IOfu2lpw//Ldcj0Kz7nfIRPRUSAZY3hVGE5BlfgaIdAV+jqr317kx6F5DCcwb
         uPS305YNPSr9RVY2+gnIoh1dTDz96W7yQqx2K6sHNf1/rMO2OlzNNVvE6b/K3RuqIt/o
         0hkO6RJX3sc2rCyQUnnhz3QAGo6jDSx744mFBUykX+Qae2Icc1Do/2LFSfoRz+j0TtrH
         oMq1Apcooi6dcZTTKNM4mdiiURZkFYHRDsyo5YcnB634Y0FGJitsFFtnn0KMYle/rK+j
         SshQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dQ4+XnkmgnyXOFgdyPaNewY1uaafyDHc+eTPmdlJCZE=;
        b=Q+fykpyqQFB3GJxLV3MGFU2Q7clbbeIBQ0hI4GmjkJBJchSlwX7j22Wv9vdY3+Dtk4
         tydOcF+vIyiIHWwJU3lAJ2Q6dGzgQh6tftR98S8yD/3ZM22FpWUvz0YbDseOckVX/2eL
         xSAu4mYBn3HgOTmdBEifVJYCVrmpRCHmx4KyNln/4urzIPFM8TXTSRC9kMOUFP3lxpXr
         SiyTG2LRFAtMqGFcdmKieDGyGhVWWZKIm6Vl5g1CTrB4ErPEYLe+2BFN83aviU4HZGQc
         Zp/Qea060r9QCgqZIVDetZKciRaUjMaDONbHYoB7mQvyv9edNtwzxy/6vXqe4Zsqf6H4
         rLUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533br9Svoy9Bj389IENbAZOIv3XnKojQYZdX4WWX1sErC2nhZpVm
	71PKx7rC+aFPzJ3WZS1QxBg=
X-Google-Smtp-Source: ABdhPJyDY2eA8bTCdOM6wMC+uEHA5F+kC+ryeWWyBF3HFAHf1Jo9+ivC6ENzVzHRcUYZzHQAWukDBQ==
X-Received: by 2002:a05:6602:2186:: with SMTP id b6mr145843iob.31.1621157719834;
        Sun, 16 May 2021 02:35:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:1407:: with SMTP id 7ls2060813iou.3.gmail; Sun, 16 May
 2021 02:35:19 -0700 (PDT)
X-Received: by 2002:a5d:9d47:: with SMTP id k7mr784793iok.79.1621157719486;
        Sun, 16 May 2021 02:35:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621157719; cv=none;
        d=google.com; s=arc-20160816;
        b=PdDOvbpUXUEUO32iCegvbA9/tytXiE17VbDDCisnLfGC1CBHptI9ebdyqf50NgMmek
         Cul0xLlDApoQsIqDoNCPfsyw8v4LtHrBAyvV1TKIAe3LVEwZbzgmRv1d3AgVCEuJPl2X
         H9qiLG5P94+K3Otg2KhZlluM81KU99ZBv/zHX5Yn77uubmBqUq7n4Dfal1dFX5T0R8ok
         ExxJiyvi0X8V1GB3CsNEdhm3BfxLp4TEF9lRj8xTcBihScSTirIYsJifM9D1oP2TrnLU
         EOt5ULDN3Q3mC4uz3DLe9lD41VARhhMQASU2X9z++exZoMikxUx0EmdqKEJyTeZuCDFI
         TFrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=P4+w+TWVZpKJQLBBln1TgkGlFGMqFwPrZJn6lrVvoDk=;
        b=W9D1ucnqcb1M1z/+qtgxyWKc1A9yKgP5vlSnt8DPJa25LYEwfst4rT5mWq+g2MtN4u
         mayEB1tBj+EzIh7mf58wz26b4OKwQUBsjznbtsfPOMff/8NpkrnWMqkMBJZoa/wKpZW1
         TYqWOpu2bUVn+gluFRORB7JtkLaaWn0FggezYvMCoAHpcMeJhbe/WCIxCyeHDAwllQdl
         nhs7PWzpWCvZkGgpcALB8SUPSlHuczUYVy/pO4M/2oU2C81pXbanKkK1DNjAQJMxqecT
         Oss/IpUIpNM3lRdVX5hMDrD/s7NGOicwt4ac2Vu0SV1Kg2PYa5f836tP70hjfdv4gJN4
         i3IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jic23@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jic23@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f13si897664iog.3.2021.05.16.02.35.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 May 2021 02:35:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jic23@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from jic23-huawei (cpc108967-cmbg20-2-0-cust86.5-4.cable.virginm.net [81.101.6.87])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 162C761028;
	Sun, 16 May 2021 09:35:15 +0000 (UTC)
Date: Sun, 16 May 2021 10:36:28 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Arnd Bergmann <arnd@kernel.org>, Nick Desaulniers
 <ndesaulniers@google.com>, Maxime =?UTF-8?B?Um91c3Npbi1Cw6lsYW5nZXI=?=
 <maxime.roussinbelanger@gmail.com>, Jean-Francois Dagenais
 <jeff.dagenais@gmail.com>, Arnd Bergmann <arnd@arndb.de>, Lars-Peter
 Clausen <lars@metafoo.de>, Alexandru Ardelean
 <alexandru.ardelean@analog.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] iio: si1133: fix format string warnings
Message-ID: <20210516103628.2cf899a0@jic23-huawei>
In-Reply-To: <7afc367b-8103-9d48-1bfe-d505d86553b9@kernel.org>
References: <20210514135927.2926482-1-arnd@kernel.org>
	<7afc367b-8103-9d48-1bfe-d505d86553b9@kernel.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jic23@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jic23@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=jic23@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, 14 May 2021 10:45:02 -0700
Nathan Chancellor <nathan@kernel.org> wrote:

> On 5/14/2021 6:59 AM, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> > 
> > clang complains about multiple instances of printing an integer
> > using the %hhx format string:
> > 
> > drivers/iio/light/si1133.c:982:4: error: format specifies type 'unsigned char' but the argument has type 'unsigned int' [-Werror,-Wformat]
> >                   part_id, rev_id, mfr_id);
> >                   ^~~~~~~
> > 
> > Print them as a normal integer instead, leaving the "#02"
> > length modifier.
> > 
> > Fixes: e01e7eaf37d8 ("iio: light: introduce si1133")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>  
> 
> Indeed, use of %hx and %hhx have been discouraged since commit 
> cbacb5ab0aa0 ("docs: printk-formats: Stop encouraging use of unnecessary 
> %h[xudi] and %hh[xudi]").
> 
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>

Applied to the togreg branch of iio.git and pushed out as testing
for the autobuilders to poke at it.

Thanks,

Jonathan
> 
> > ---
> >   drivers/iio/light/si1133.c | 4 ++--
> >   1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/iio/light/si1133.c b/drivers/iio/light/si1133.c
> > index c280b4195003..fd302480262b 100644
> > --- a/drivers/iio/light/si1133.c
> > +++ b/drivers/iio/light/si1133.c
> > @@ -978,11 +978,11 @@ static int si1133_validate_ids(struct iio_dev *iio_dev)
> >   		return err;
> >   
> >   	dev_info(&iio_dev->dev,
> > -		 "Device ID part %#02hhx rev %#02hhx mfr %#02hhx\n",
> > +		 "Device ID part %#02x rev %#02x mfr %#02x\n",
> >   		 part_id, rev_id, mfr_id);
> >   	if (part_id != SI1133_PART_ID) {
> >   		dev_err(&iio_dev->dev,
> > -			"Part ID mismatch got %#02hhx, expected %#02x\n",
> > +			"Part ID mismatch got %#02x, expected %#02x\n",
> >   			part_id, SI1133_PART_ID);
> >   		return -ENODEV;
> >   	}
> >   
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210516103628.2cf899a0%40jic23-huawei.
