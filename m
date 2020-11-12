Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTFOW36QKGQEQ32QLLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 082B32B0EDD
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 21:13:02 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id v3sf1953977vkn.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 12:13:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605211981; cv=pass;
        d=google.com; s=arc-20160816;
        b=aJgrxgS96OHM88pT8Kcq7brUjW5JERmNCoMoKYnT8zm41lc6NvXgE+9+nDXvrlc5EP
         Kv9ZZCSXNPEnH4NKSAfRaTgaiyHF1gtQtyjJOpMLGyKa7D5E1teBqLwCvZXru7WJDHi2
         F7fw3gW5TGpUxXbX1XH0YMyzBYxFNoRZTLSnRYpYVXOS5DsA5J/B43W31q79yIAwCaBh
         oCqjGknhzkh+uqreuyM+pPy5G7g7PDwzTvC/bbQRLaTYY1iecWHrFZj/MqoI5Sdorw4I
         5ITh5TFTtLjOtQeIOGCMR92BuloCRG1Skiep6PcZyZGC3NyaZL8dadXWrYgx2VuZ+0ke
         ieEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=SR8JfaZqr1MA5usMX3QgLuoIqYzF7WH90qUqvm/bwr0=;
        b=pH8l5soGwy18F4lLnU9f40GpLbpIMiyqlao4b3tJYyJGLzTmZzkwoXBmDX/60OhZjZ
         Vl0+a4Xh9OLMQdsYWpkm9rebj9BCugGxV1s07NGdjngtHpdEbYNcgwXNxBqvXfeFttX4
         aIe2xzvurb4EwPE99rUcSOAltdJkDDWfCoEGFby6sOq+g2/s/+U10ONG31mVsYgXGQ3b
         3QMb4pADPHlbvGRjmTpLSR19C2jSORYdqJ7/Ufq98k6m+AVbc4oTGwoD6QQIz8IfKdzW
         4rNf2Fs37rBroz42lSPpWDYpJCKSQUT/jdZMxUETBt63Mc9UqKKh48jK3WBjqHi+aTne
         mG3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T0m21Nbn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SR8JfaZqr1MA5usMX3QgLuoIqYzF7WH90qUqvm/bwr0=;
        b=F06oiuAqJDXlYtMgTO3S3CKg6CnA1ATa6KEX+sElaQhPi3Il4TjnE01UtstYDzob4I
         /S6Ay4HsVxpU0Fjp7qXe5O4hy/BMRvB/pP9sCNzlbrO6aDg2brBuKtjaxbmmAt0t2L41
         hy9eHN4zIWSnel1Xzsh295rL+Rj0xPOlE57wWgF8m+dXZxxLveouRQ+xB7SH8TxSvQj9
         jHg5rK6qIKyBw2FMw+Q2Es22AT6rwlakVuk15vd/WZ8Uv4GU1734jOkLIUI8Fj+YU9ef
         hYKO1DcR6dVwMVZ6l5LfY6u0DLPetdb+M/Is1niutDrHJafemKZj5Of7SVJUNVodv619
         7iBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SR8JfaZqr1MA5usMX3QgLuoIqYzF7WH90qUqvm/bwr0=;
        b=gP3hVzs7DQ/13HkFVdB010XokoxcZI1C4hZw6nZwD7R2CjP+QsYZCT0ku2oAG5fYbc
         0lxtWgDABCN6u9z5NGYvhQU5b0uifWDWkyWHJGnOkEYqyx13B3pjWOus4S7zFgj0BHQD
         /BXTQssXETfTqgYwzoY77dA6Mn+92XfmIKwA11V1W5g0gseIKctmrpkFNQGRuZLCQyDw
         UpZkIuKWoY5J4iOZTc/h4XTJYdq6U9jAaYwU4TmarAuRHxBZDIgq54EWdkHjmgqpZX/b
         34MPfJg2H/e03bHdImrEQb05pH7PpP/lj6jvv5Iz4CCZ4TWu79Rnqrn9uPLewKxB3+dN
         6mpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SR8JfaZqr1MA5usMX3QgLuoIqYzF7WH90qUqvm/bwr0=;
        b=ddOp8OfgazR6VMyJ3+xetvun0ttpNR2zknl5wJZ+tFVMiOZqhCdVmJAvyq64LcLQOx
         k7P0hYEoGaiJDjY+yV2ZiVLHBu0jgIQyEU6vVsQPx3b3F0MGTSaVVT/TerlPIArEu6G6
         2PQSUQpy+CfYFW4UsM36rjf5Yzr7JA596V1I7l8Xt51kbD5q8EnexxFtKxjKRUL17SRT
         J8w53WZIzGU/0PkFBuADje1eRTDaGLaBjbjceMB0N4nNsgGflNVODpnTreIar1evydnA
         td1rsaBsSz5LiRM/ZHu+Oey+VNsI7stngBhKyUR8H4LM8UNHjccYsIuWgfznpVHfs9rE
         ORFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530PiycCQ2hGzfXMHwbjdc3Y7vZ5675HrhrgfdQxNwDWnWTyqvWc
	p0IWkANca7VCnTKPYmyA+7c=
X-Google-Smtp-Source: ABdhPJx+MWBFUml7fGrebgerV5IAgJDIfc3k+EPFc4lbQWOpZafn1kWEn8mcZ6PwkmmvbyfDcVza5g==
X-Received: by 2002:a1f:9a14:: with SMTP id c20mr974659vke.25.1605211980900;
        Thu, 12 Nov 2020 12:13:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fd11:: with SMTP id f17ls613253vsr.6.gmail; Thu, 12 Nov
 2020 12:13:00 -0800 (PST)
X-Received: by 2002:a67:774c:: with SMTP id s73mr1156553vsc.1.1605211980461;
        Thu, 12 Nov 2020 12:13:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605211980; cv=none;
        d=google.com; s=arc-20160816;
        b=0HrI4GCvfJ1TTyEA3L7RDZEbUokId2QDwdQXSdE3RKp6e5yH3diZpVZV7bnU2BQjRr
         ycwvsmv0sAhFxvIH9wugHfaI3cfANGJ5RKmrmHzBfFuNaMGs41JArKFqwStUmg2C8n99
         K6SaPBZqUQLZ9/Q1uG/1kQm2JYj3e95BiEN+bdeQ0wu+TTbXtuyswAGYjiL8rLB+I+vD
         3YL75vkUskd9KKzkMGZnT/60Eeha719PeCKu+It7PoOTo0XVh/18ivFUqOpejA2WmGxB
         FwOtQBKfjT/7T5faCGORCcmhFJR0aBCyz3RA3EoIbAFj/ttcODBAhgbV9yGSO0qi7NWA
         phig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jSLiwf45DctnZlDAuzdiBpZq++0HKZoLZ6SkMPPn0Lc=;
        b=rFTVjDBktjFWFMK4VAZonKjwa49JXxNhTXp7HKKEtJEOMfIFuuRSWBVTinc97PF3w2
         E5ABXXSvnQeSJt6cqQxOHutTnOniolnm7J54XOI9iR+hfUxVIPe88webWd5basVtUson
         WMvmdZZLkgjLP/U+0A92YKvetuaz60x126WYw2toN9WG6Ufu4VLKewercPplN8qoSyf2
         3Gzkl1xq3D9efgHW0yhR/QX1Bbb7PqcQtbrezY8PsHH6tTLBSwttmCHnFfh35SoxKkoi
         qlAMydRGOwJ1PbzduzlpKSPFBJp0WOfDoJ5/WxbgUxZ2XzfZEjqxqJCNIeBFLUIYjF8p
         zCHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T0m21Nbn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id y17si426124vko.2.2020.11.12.12.13.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 12:13:00 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id g17so5044157qts.5
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 12:13:00 -0800 (PST)
X-Received: by 2002:ac8:6898:: with SMTP id m24mr901388qtq.157.1605211980076;
        Thu, 12 Nov 2020 12:13:00 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id z26sm5147041qki.40.2020.11.12.12.12.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 12:12:58 -0800 (PST)
Date: Thu, 12 Nov 2020 13:12:57 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	Tom Rix <trix@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] USB: storage: avoid use of uninitialized values in error
 path
Message-ID: <20201112201257.GA1665022@ubuntu-m3-large-x86>
References: <20201112191255.13372-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201112191255.13372-1-lukas.bulwahn@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=T0m21Nbn;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Nov 12, 2020 at 08:12:55PM +0100, Lukas Bulwahn wrote:
> When usb_stor_bulk_transfer_sglist() returns with USB_STOR_XFER_ERROR, it
> returns without writing to its parameter *act_len.
> 
> Further, the two callers of usb_stor_bulk_transfer_sglist():
> 
>     usb_stor_bulk_srb() and
>     usb_stor_bulk_transfer_sg(),
> 
> use the passed variable partial without checking the return value. Hence,
> the uninitialized value of partial is then used in the further execution
> of those two functions.
> 
> Clang-analyzer detects this potential control and data flow and warns:
> 
>   drivers/usb/storage/transport.c:469:40:
>     warning: The right operand of '-' is a garbage value
>     [clang-analyzer-core.UndefinedBinaryOperatorResult]
>           scsi_set_resid(srb, scsi_bufflen(srb) - partial);
>                                                 ^
> 
>   drivers/usb/storage/transport.c:495:15:
>     warning: Assigned value is garbage or undefined
>     [clang-analyzer-core.uninitialized.Assign]
>                   length_left -= partial;
>                               ^
> 
> When a transfer error occurs, the *act_len value is probably ignored by the
> higher layers. But it won't hurt to set it to a valid number, just in case.
> 
> For the two early-return paths in usb_stor_bulk_transfer_sglist(), the
> amount of data transferred is 0.  So if act_len is not NULL, set *act_len
> to 0 in those paths. That makes clang-analyzer happy.
> 
> Proposal was discussed in this mail thread:
> 
> Link: https://lore.kernel.org/linux-usb/alpine.DEB.2.21.2011112146110.13119@felia/
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Assuming that setting it to zero is okay (sounds like it is based on the
other thread), this is a reasonable fix.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> applies cleanly on current master and next-20201112
> 
> I did some basic compile testing...
> 
> Alan, Greg, please pick this minor non-urgent clean-up patch.
> 
>  drivers/usb/storage/transport.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
> index 238a8088e17f..5eb895b19c55 100644
> --- a/drivers/usb/storage/transport.c
> +++ b/drivers/usb/storage/transport.c
> @@ -416,7 +416,7 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
>  
>  	/* don't submit s-g requests during abort processing */
>  	if (test_bit(US_FLIDX_ABORTING, &us->dflags))
> -		return USB_STOR_XFER_ERROR;
> +		goto usb_stor_xfer_error;
>  
>  	/* initialize the scatter-gather request block */
>  	usb_stor_dbg(us, "xfer %u bytes, %d entries\n", length, num_sg);
> @@ -424,7 +424,7 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
>  			sg, num_sg, length, GFP_NOIO);
>  	if (result) {
>  		usb_stor_dbg(us, "usb_sg_init returned %d\n", result);
> -		return USB_STOR_XFER_ERROR;
> +		goto usb_stor_xfer_error;
>  	}
>  
>  	/*
> @@ -452,6 +452,11 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
>  		*act_len = us->current_sg.bytes;
>  	return interpret_urb_result(us, pipe, length, result,
>  			us->current_sg.bytes);
> +
> +usb_stor_xfer_error:
> +	if (act_len)
> +		*act_len = 0;
> +	return USB_STOR_XFER_ERROR;
>  }
>  
>  /*
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112201257.GA1665022%40ubuntu-m3-large-x86.
