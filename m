Return-Path: <clang-built-linux+bncBCZ35CE25UGBBU7Q3KCAMGQEAYUAIYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E79D3772E8
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 May 2021 18:12:05 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id h8-20020a9d6a480000b02902edb9406104sf356890otn.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 May 2021 09:12:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620490323; cv=pass;
        d=google.com; s=arc-20160816;
        b=pLTdVo80wjGibKQkG7eBiLvnfCE8f8xRPMioah9xEls8XjSKOdcshzZZ9TLE4F4GIt
         hBgC0f4fIoiiNvwFejnNfHRYNWTE5U58mFuP3YHTO/jPU1C7gmZSXtatkvVcKBU/MIyK
         mU0DnBwrvyL5AbKI3nOEzYYi+uJYM7L7Ppi+ShN+qWEqu4pyGuSLutoonCDZrlTz/TRM
         jJ3PXzgdRZxe7xyl0uObRw0bsEPZoUU4mz6IRwcDs7RfGIaTrXsA0sLw4SiGQ8DqM6Vf
         gEzq7e90tzJuKqH+ufN0Cw7FR4imO5KMq8ZLzBsD3i74bVVfxS121cgwNv0GqLu0aES4
         1n8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=elwRCfbARuCWeMpOj+H888NqACQMH78mlst8BLj7OfY=;
        b=SZEYXa3RZ5/MNFsFg/I2gmZo4wVJAWVnZD9UbQJmUphPz1Duwx/xhzzPx5Cl6Kw7BG
         +mJNH8phclAoxCRlF8lBm354gGjixnfkNhuMgKp6b1bfSl54G4OxoNVV2upU5oF2zwOp
         BDl3jDXmdChqBCb73UdzUau7LhTRVB5QFsp87e1SeP02Q5LJ3Mdo6pVU6KZvvfPkpIY1
         iXFyKUByW8PCWz2oZe438J2sMMtk1jzaBDLcGzWF+OxG4LaTzCD7XtKE5ZszQ7GA0dKU
         w0tPGLH9tKupZe0yKvugjxVblLJ8pWJSlMlDaBzHNfJgN2EVkLquKDd5EMc8lCB7s+M0
         zMMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jic23@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jic23@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=elwRCfbARuCWeMpOj+H888NqACQMH78mlst8BLj7OfY=;
        b=F4D8+YMJbpsbWR1bhDmTOyqm/F7qsRvkLsnuIzEeK8I828vWjnfDiv3n9tSZvnLZtZ
         zhyJm1Nokwu5L150OyvS+3nZwaLCq+yNTrz+QpbRhnspCsSU6tHQHsTX+rgkoSnnNjzQ
         uYXKGVW/d4FDRexl1z604cmfYgrW8b7IcxVimrmGTgjbBrFiywpBUYCDZa6bG4LcXyEe
         chu/pbVbxlwIWbzE9i2jEFtl1Ae+wdEI2zrX1SKSRABWHFOkbUxq44HEeGqrzgh5knry
         eYDR5M9zLdkh22jJGqGmuY6fFAPjYfXkKrAvBdtgq49ITJzkLBcz2CvODNLAI6A8+4tT
         LD5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=elwRCfbARuCWeMpOj+H888NqACQMH78mlst8BLj7OfY=;
        b=qVk7EXy5NA5Rs18eMbuTyX+OMxvfMvSSFpjDFiHTXUWM+WxRsI86e2zBrYEw8OD8CP
         W/WEGGHmvUPcTSkKf0hIs2ELB0HK/QzB4Cg6urGqkrmtpdUb3ikKih3uFkeUzdUEuPpG
         ZuMyE/4Ic6XoBHCQW8nGDtXO0dbB5apdeVmWbxdIiASVzqOIcg4P3bvcVjll8fq9oFuP
         PyXOgjYFYyNbrSfB4MaY/sVECfFSZD2Lxo1HmzStXN1JuwPtkrcga8MzRUH8YCghxApT
         BHp9wn3Qvy/HCwOSMFBXVhNFzYYdbDWOFmKw66QZ3MXOtc7BnI9PSNVJcxZwhlyPrdLC
         4EGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Di5/bm0MlZGAaGbm41AfNQJhRya0Ix9j8WnIAa7IOcJBAMXaB
	h6vzyGfjYJJc7IumKLQtiXk=
X-Google-Smtp-Source: ABdhPJzeUVKYPbEtC8V5IcSJj2+I9/ccUpyrPGZMnJp2ale1jf+SjxYNpbv7/zK6RRA9oxZlICKtuQ==
X-Received: by 2002:a05:6830:d7:: with SMTP id x23mr12756121oto.235.1620490323614;
        Sat, 08 May 2021 09:12:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:f0d:: with SMTP id m13ls2643237oiw.4.gmail; Sat, 08
 May 2021 09:12:03 -0700 (PDT)
X-Received: by 2002:aca:eb84:: with SMTP id j126mr7506199oih.20.1620490323240;
        Sat, 08 May 2021 09:12:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620490323; cv=none;
        d=google.com; s=arc-20160816;
        b=T/WxGQRnO4Oaozyy4FYG39bYUFUDGzeTL4XV3XznLz0h9YDfty/o4HOPY0TDgjFZv1
         0MfScuo8hpY8zefEe+0kdJ7Z1NZ1Y3Y9mlbarQi2oE1COzNjOEqvusv4gliF5xBBR/vn
         ywkcAUF96X2cohY2u+kiKrLusLyBaacvlQhatwkG6WtvaWnv6r3U5BFgX7yn6IKML5sL
         +cbbutYXB4jXAjASn27GEgtUtY7ZuBUfPRsW44kt0zUK+JS6WNRXvIDhVfSy5+RGgccm
         OTZjGwUkhZFwQDWE8v8Gi2B9EXCz6tnZ1ETkteHrIW0aRoSfyY/RThaCTRw25tZbABQP
         W3OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=AoLMHLtnSXqDXmv1l9VmZU/L2ueAs242hMvwmObGhr0=;
        b=APsyDB58oB7roY/ehwBlsRZhFF+V6W1TUppxxoyCTnUcIBBSqT1+hzaUt2ZbzBv86d
         hUlRIDH3s+Wm+p+GsSX7P3GEPe/H5r1OzKYUcs20fGfMO+NeCSvQt5ufK1upDT1rGHoH
         xoN3anIw7RA4tWgPNWGGWFh3B5+scul1rED6OgwlhsomTHnA4/ONnnA2FSZLtWnPkvdP
         Rxuhw1yws0NXacQnl0kjyaDdBHCW35gLp0WCVuo8iRJ6BzBdeNql3aIvJdzVQN2n4ny7
         MgX93sbrHGp1gddgEnXICNlIr5ysUA6DEcZGGd95ODysGcfLfDsTXO7ppy+pAqVWUE2g
         k2Rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jic23@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jic23@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e13si1165950oth.3.2021.05.08.09.12.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 May 2021 09:12:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jic23@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from jic23-huawei (cpc108967-cmbg20-2-0-cust86.5-4.cable.virginm.net [81.101.6.87])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DEFEB61260;
	Sat,  8 May 2021 16:11:59 +0000 (UTC)
Date: Sat, 8 May 2021 17:12:58 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Colin King <colin.king@canonical.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Nathan Chancellor
 <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Jon
 Brenner <jbrenner@taosinc.com>, linux-iio@vger.kernel.org,
 clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] iio: tsl2583: Fix division by a zero lux_val
Message-ID: <20210508171258.2ef71a70@jic23-huawei>
In-Reply-To: <20210507183041.115864-1-colin.king@canonical.com>
References: <20210507183041.115864-1-colin.king@canonical.com>
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

On Fri,  7 May 2021 19:30:41 +0100
Colin King <colin.king@canonical.com> wrote:

> From: Colin Ian King <colin.king@canonical.com>
> 
> The lux_val returned from tsl2583_get_lux can potentially be zero,
> so check for this to avoid a division by zero and an overflowed
> gain_trim_val.
> 
> Fixes clang scan-build warning:
> 
> drivers/iio/light/tsl2583.c:345:40: warning: Either the
> condition 'lux_val<0' is redundant or there is division
> by zero at line 345. [zerodivcond]
> 
> Fixes: ac4f6eee8fe8 ("staging: iio: TAOS tsl258x: Device driver")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
Definitely looks like it could happen so applied to the fixes-togreg branch of
iio.git and marked for stable.

Thanks,

Jonathan
> ---
>  drivers/iio/light/tsl2583.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/iio/light/tsl2583.c b/drivers/iio/light/tsl2583.c
> index 0f787bfc88fc..c9d8f07a6fcd 100644
> --- a/drivers/iio/light/tsl2583.c
> +++ b/drivers/iio/light/tsl2583.c
> @@ -341,6 +341,14 @@ static int tsl2583_als_calibrate(struct iio_dev *indio_dev)
>  		return lux_val;
>  	}
>  
> +	/* Avoid division by zero of lux_value later on */
> +	if (lux_val == 0) {
> +		dev_err(&chip->client->dev,
> +			"%s: lux_val of 0 will produce out of range trim_value\n",
> +			__func__);
> +		return -ENODATA;
> +	}
> +
>  	gain_trim_val = (unsigned int)(((chip->als_settings.als_cal_target)
>  			* chip->als_settings.als_gain_trim) / lux_val);
>  	if ((gain_trim_val < 250) || (gain_trim_val > 4000)) {

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210508171258.2ef71a70%40jic23-huawei.
