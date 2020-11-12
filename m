Return-Path: <clang-built-linux+bncBD6LRVPZ6YGRBS4YW36QKGQEDSOVUMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A982B0DF1
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 20:26:04 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id q22sf2982497ood.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 11:26:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605209163; cv=pass;
        d=google.com; s=arc-20160816;
        b=YJwsGWKyiLPaYy978jwP+6GZbQYT8tPrcUZ+PML4WS/qmUkYjulQH78BNGNTaBTpYX
         KnEwBzSElsGNrO0Alv4wbtJGkVof4B+huK7vBy91u6m5i7NfiSPCqz4TaHpeVTkLPT4F
         VsNNmir4UbZOPQVweaQ9mok7mMa0aTnaU2fA8UmjivD9sho+qBB43elHn6fsUxdzXD9v
         OYA41mB5dw4vhUB38AV8WZOYjrUQXgrXXPWUjsXbc0HGwDI7dR4OSNfD2zHN9kAv4PgW
         j6H6EakRlTAJz7+QvkOb6hYbIb6gLCp4GwlgOIfO0qu0izTAG5Ep6bphSyTRH/h55XAF
         dt2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=HJMs96XJ/RRUJBVzCvCGquxuQXIfk26v0PetQYHfBhw=;
        b=jGyNaAl7bgYeIyMw6qfwdfFzYKqdUo0YGNJMNMF3Mri1Qmlk9JmsUkZtgrKAGGraK1
         mEBUskAec7RGiTtVkhlrt6CFEK9Lc6M1bQk3DYHP6n8T5WKAUpQuQgN2UE5UMPk4XoIi
         8doMy7vuZEQldd09ePKJ29UH188XNw69n66t7rcfNVjmL6l4iGpwpbD3mnofIm7eWshK
         xpyBUfhnCDpJOWR68KyBMI8yQlScvXeQRbIe7ncmjEXHomgDhOzyAlSHbDyZ//cSDb1S
         I7sLE8zkBQLUPUYn/GfyDTLavzfb9eLArm8tB7NmdlmrauuKNnOgqx/HlGOBs1a3eKil
         +tJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of stern+5faeb4f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5faeb4f6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HJMs96XJ/RRUJBVzCvCGquxuQXIfk26v0PetQYHfBhw=;
        b=mh1x7FGJEL7LjHwNKCEszKav6EasugfSa3X70+z3RmSk5rQKtPX7f41o8IajcjWeJq
         7zShN7+t2YBNxr6G6gWUNw4ro75G23JywHvM88AU0xZTurUTMzla9Emf47nesUvOCgkI
         vdVWK7gBlTdSo4sQpv4wHD37ozCLPtBdySUv0E3r8qB67mgzHMpEEgQpfaJP7ilKWQYp
         Lb2mrIOUwcfMcYfQtrEfEZpvjZTWHY72etG+F4Vsp6CnUz2yRlHZE60h/Lk0F1KoTb4q
         IXlnmnv8A5DPO6OX1eQLTacgwihsLZ9bsZPc0+DL/bEyfeYFiINpVyEJnOZQOln/dOeg
         KQ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HJMs96XJ/RRUJBVzCvCGquxuQXIfk26v0PetQYHfBhw=;
        b=CkndB0TUN6t9kS/a6ozXToeQefKxdtJ/3UIdJeGLBRndhMQFvV9GzGR9fd8mrmSWzD
         kf0BWN+UXUa3YioTHyhs1Wq7fAUtmRk0hEY7hsHhn1N9XI1ssqo6/lFcT8b/icbTrY2z
         QstT9qoaUcfeJCn0MEFyh8LviSa2ZhggR/ERsqQ9xbP/+pOPJGhDJT4YyBmniVNR4Uii
         01l8BIRBh0U4+vpljnnA+DSUY6pR6J/nwGRj5pVYf0JD4JgqBp7Ah1xtYst/w4LsEacE
         Pzfj0ZZZDoqfmXKvJUSmT9nrhT7+lb2o3jN7DOyKYfkLToIrzd9oPBwkO7xWjgUsCvZB
         30kg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326MuJKbFIGUSYgZXsreEV8y+h1oEBSQYKvNXIFxOJ/xDxWm19A
	96RzSFKTx1AioDrmkNvM18I=
X-Google-Smtp-Source: ABdhPJxGOdVeyDpnYhRPnHbqsmoWOKOsmbT8bjsS/tZtL/nAcDVicT2Btjeqei7Dd6N7WbcvK3RpXA==
X-Received: by 2002:a9d:eeb:: with SMTP id 98mr547861otj.179.1605209163126;
        Thu, 12 Nov 2020 11:26:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5f11:: with SMTP id f17ls985580oti.6.gmail; Thu, 12 Nov
 2020 11:26:02 -0800 (PST)
X-Received: by 2002:a05:6830:23b6:: with SMTP id m22mr568545ots.292.1605209162697;
        Thu, 12 Nov 2020 11:26:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605209162; cv=none;
        d=google.com; s=arc-20160816;
        b=iOQTpvJiXi53WclR6MHhk6Tcyg0j5wU7DPHB1D8hqmALh0UpGL090YN1+cNgzUv149
         0NEYmxXKdjAM+0R3V7P317FiBR00Vb4hCGv66Jg7CU/nmsZc8GYq3SNS61eDv8kw/2sv
         7oWYeLUdk/J6ZVzzr1vf6/gSToYCppykbda2Q5jX+5iK4fVArZxl9Sk+WOV3ThGc2dvV
         HLtFuxfJXIwEzqNDaY9T2ZJ8v75/rVYtecKRZgI9m6COeJXZO4+XFwtW7C79oC5EvtQR
         Md2fg67yFm5qPdr9QQrXGAroL0tqJN8UDoLp9cdLmt8ffM+nHxDIvdnyRxsU1xOaQb07
         mM1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Rdy1HIIhGEUurHnR87FqyXG6Mnurn4ZmLQ52Bb4Vilo=;
        b=hKAlav0k3k+mFaHzMXg+gn00YSpmMpxHJxpf9o+2+wZ9VRpZslUbCKxKqbi1C5wyz/
         oPjSW3PCfzEhyqOiSrFaTLErooQSXyiIHO2lXKkF8oEtjZQEQ00OMGuaY6xoAQIT6z4l
         jwjn+Fq9ln2PtUctuF5kSY30U6wqKkOWz4bgcsFsq16hf9KogpYJaaFkn/fkQC/kEZ0V
         m1oA+lwYpwy/gD+7YD0rhHEjZQGbUX/k89g9H9fjGmJap6NqtFxVhPrXq2Dqv4h2u11W
         QVEs3+fPAHl6HqngsASyt/PIP6OTO78hWgpOEGdyTkcF0v4PrzJix2dPm6ZWUQrbzmAx
         fM/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of stern+5faeb4f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5faeb4f6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by gmr-mx.google.com with SMTP id h8si482954oih.2.2020.11.12.11.26.02
        for <clang-built-linux@googlegroups.com>;
        Thu, 12 Nov 2020 11:26:02 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+5faeb4f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 288115 invoked by uid 1000); 12 Nov 2020 14:26:01 -0500
Date: Thu, 12 Nov 2020 14:26:01 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  Tom Rix <trix@redhat.com>, Nathan Chancellor <natechancellor@gmail.com>,
  Nick Desaulniers <ndesaulniers@google.com>,
  clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
  linux-safety@lists.elisa.tech, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] USB: storage: avoid use of uninitialized values in error
 path
Message-ID: <20201112192601.GC287229@rowland.harvard.edu>
References: <20201112191255.13372-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201112191255.13372-1-lukas.bulwahn@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of stern+5faeb4f6@netrider.rowland.org designates
 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5faeb4f6@netrider.rowland.org
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

Acked-by: Alan Stern <stern@rowland.harvard.edu>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112192601.GC287229%40rowland.harvard.edu.
