Return-Path: <clang-built-linux+bncBDG6BBUEQIJBB5OI6X7QKGQECVAZ5HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D002F2A68
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 09:57:26 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id s14sf1151364pjk.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 00:57:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610441845; cv=pass;
        d=google.com; s=arc-20160816;
        b=SgyurDUaKWXSLH2zGO4OdwZs0afO/4CxA7dBWwjF2QvRsIZHEmmPIbjyDM9HlMG04u
         ioxXpBPDuI7c3YaZgHu8Iq2Bxc8VvvYe9Q4gFnNbuOhR5y9C0iGGbQjkdvGku8Rfqx7t
         ePQNLswOGb3gAmgVe8VezrwGh8k476wj8DOOovhPTo7cXKF0hIYgpOkUY0rT+32vyqaF
         i4T24fYq5MbmWFB2V04DR7mkaQV4Y38cK5eGlU1y61k9M74gTrif+gMfEn959/Y7/YrZ
         Gm90Be+4mwHNoqVRyVDESzJASCYuT/6iDT2FmL+YghT6lBRjoFe/bLBTBm3/mfjeHTBB
         9Usw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BqL9dJFBh5dBFeUyB3CR3OxzWGx5/3/tZM+FrofHGEA=;
        b=dCqmhi0Xz0U8cVwgf2lQzTZg0M3eDg4sc49ZnMgWadA9uf0FKPnMS2d34djUVLnOMD
         2KXx3NMbNo8WEnMHB47TuaWmES9THhwZUOVq8jd54mgRVJhd7rpt4hpZwzRBQ/GatAyJ
         HXEK3MtVuLJ3h++u+WhixPLz7/gGKnH+tIOdEhOS9NS/X2vrHdgxyO2okwFycbwZKmW6
         2jgQB9UwS+Or6LbCEY1OlngDc1xIWHGk4KExRoCfJsSLCl+eyuR3vs9tOlzfCsLZPBDw
         tTQDLj8LLsHltkYPdgkfrSplzYdm8hKwh9YecAYRjxjaHdx6ppk8Dx0Cy6mN+NFfycsY
         Eq5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gLVL1JFZ;
       spf=pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=johan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BqL9dJFBh5dBFeUyB3CR3OxzWGx5/3/tZM+FrofHGEA=;
        b=SMGjnLjvYlbh9JiqtbpOA4mNKsl0OLJxVLdmpwk3evqRARZ1k6kDZHJeQIAh2UUsNZ
         cyrerRmbkMMqKiVqlUE3gEBKvdRBHdUU9BKI82lJaBcr7Q1kejeU/X+nDn5sd898LZJL
         Id+CHdqWRPu9f7zVxrnBWuXcOwGeTR/EAHPfDf8zAq0aOiZp89ufXKhwyJDD27d/hghT
         pksKEi5Mz2ekPGC60+F6P7ehBBiGWGy0yt/JfdPcABMIRt5lZLu5bScJMYDFp8+uW7n5
         QYzyjjy+h5nI81Oz4IHq0jQNixvh97u55FR1U+nbf1So/Yw3Grv3etgIC9CdJ6cLEupg
         gd2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BqL9dJFBh5dBFeUyB3CR3OxzWGx5/3/tZM+FrofHGEA=;
        b=XJj0t7KW2XlyefZ5e1KmUaGKsgtK9ZRtEtITvLRKirctw/hyHbnXQwdG7zC3A9P5B3
         jt9cqTuoyPZO4ZTb6+mOZ9G4JeiU93QGQcfvWMjUljshyeBzXwOyLVS7L8iiNCR/kANo
         cQxexC6S2DIXF/3ZRRkosv8Z9VCShPgo1vfWDBVKoP/7Wbs6RQO90wtHi7juBFFE687T
         Orwi0SPuYXM5YZHf6Jxq50tIS/i0yJ8JHLaKh8pZDRbkroP/2QPoUfDEDWyVk6EIUzr1
         Tfc1IQGFUBIzjG0qGiui/YHFjh7o/XNu+XdtPzgGGKy5C1RUQdFrwNT78D3uXJBwEUYO
         bzLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530RFFTXwMkwS+ccZFKqSrATlmGC9SYfb6fPAkcudMDx/Mx7uKsv
	/pc39fdS9Q887GXnpWG5cRw=
X-Google-Smtp-Source: ABdhPJzqyXv+W1LB8llJtw550yrAJTIiyVQ7WR9QyliSuheZ7ctJD5Y20yEyh5UzMO0OkJJbOd9C9w==
X-Received: by 2002:a17:902:b183:b029:dc:4103:3682 with SMTP id s3-20020a170902b183b02900dc41033682mr4180674plr.76.1610441845719;
        Tue, 12 Jan 2021 00:57:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4881:: with SMTP id b1ls1213419pjh.1.gmail; Tue, 12
 Jan 2021 00:57:25 -0800 (PST)
X-Received: by 2002:a17:90a:bb83:: with SMTP id v3mr3532396pjr.28.1610441845135;
        Tue, 12 Jan 2021 00:57:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610441845; cv=none;
        d=google.com; s=arc-20160816;
        b=dNU2x7gFuOSMCXmwoAtEzPbDVPiI6Vm/cGUaBwSHBUVcc/xJ3uZXBn7lPPCbmHEVWc
         EFe4TWrnVPCLLHHNxULaKD7flMvTBia4/OtKxrOOJsyBBrwmL2ZdDBnHXbrjuJJY6+2B
         WHPiJqBWSuLgwVXbrWzB5M8uEMHQUxGJYZY/HTT75QNHaaXWtwsgdhRnrA8PvGN2p/Y7
         lku3A98KokZiCpOen77IzdfW/aKcJ/NE/3Z49w8O12DcL+PANTqgqBy1o7qUGX4mwPHw
         8NJbbpmMH1fg8aMrgP5Ya3Ruzyqy+D+0NQqSkxVJ2sLAKV8LsK2zCLAnd2xf/uk+GhOd
         iQnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wIe4LQGmVv1xBrEQPIeBqZw1dCDRM9titGU15zvK8+A=;
        b=yhldu/dHrRnmbW/Pkf/mRVk0kJp/M+aW85PUBbG+qDdT92l3RoLl+URsosrPJVyiJA
         J6wVKRuUlPCGSLnC2YP/mZonRK9E0ohok+LTSPtKzgBeSrkXv51sjv8nhT8kvBkuXz2O
         niZl42sCHX9VRFEicbDtqhZYlG3IXv3YL2VJ7Llr1RJaEBaox9VMwn0rm54rLjG67iNE
         qpjTiHl4kVtJfXD62bECRIaKHarQTLeiekCTDi0ovJIK1bGiakn6VOhY0djIxCGSkLe5
         +vnpW1/Opg0jB/VI984T3Kt0ygSA+EJPwqX9dnw1qHS5lvqGGA2PewRh4Yp7Els+0Php
         bBpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gLVL1JFZ;
       spf=pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=johan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d2si144070pfr.4.2021.01.12.00.57.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Jan 2021 00:57:25 -0800 (PST)
Received-SPF: pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 70AC62220F;
	Tue, 12 Jan 2021 08:57:24 +0000 (UTC)
Received: from johan by xi.lan with local (Exim 4.93.0.4)
	(envelope-from <johan@kernel.org>)
	id 1kzFUZ-0002xG-3t; Tue, 12 Jan 2021 09:57:31 +0100
Date: Tue, 12 Jan 2021 09:57:31 +0100
From: Johan Hovold <johan@kernel.org>
To: trix@redhat.com
Cc: johan@kernel.org, gregkh@linuxfoundation.org, natechancellor@gmail.com,
	ndesaulniers@google.com, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] USB: serial: mos7720: improve handling of a kmalloc
 failure in read_mos_reg()
Message-ID: <X/1ke4/PaRQRGJTg@hovoldconsulting.com>
References: <20210111220904.1035957-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210111220904.1035957-1-trix@redhat.com>
X-Original-Sender: johan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=gLVL1JFZ;       spf=pass
 (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=johan@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Mon, Jan 11, 2021 at 02:09:04PM -0800, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analysis reports this problem
> 
> mos7720.c:352:2: warning: Undefined or garbage value returned to caller
>         return d;
>         ^~~~~~~~
> 
> In the parport_mos7715_read_data()'s call to read_mos_reg(), 'd' is
> only set after the alloc block.
> 
> 	buf = kmalloc(1, GFP_KERNEL);
> 	if (!buf)
> 		return -ENOMEM;
> 
> Although the problem is reported in parport_most7715_read_data(),
> none of the callee's of read_mos_reg() check the return status.
> 
> So move the clearing of data to before the malloc.
> 
> Fixes: 0d130367abf5 ("USB: serial: mos7720: fix control-message error handling")
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  drivers/usb/serial/mos7720.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/serial/mos7720.c b/drivers/usb/serial/mos7720.c
> index 41ee2984a0df..23e8162c768b 100644
> --- a/drivers/usb/serial/mos7720.c
> +++ b/drivers/usb/serial/mos7720.c
> @@ -214,6 +214,7 @@ static int read_mos_reg(struct usb_serial *serial, unsigned int serial_portnum,
>  	u8 *buf;
>  	int status;
>  
> +	*data = 0;
>  	buf = kmalloc(1, GFP_KERNEL);
>  	if (!buf)
>  		return -ENOMEM;

I added a clearing of the buffer to this error path instead to avoid the
redundant assignment for every call due to something which will
basically never happen.

> @@ -227,7 +228,6 @@ static int read_mos_reg(struct usb_serial *serial, unsigned int serial_portnum,
>  			"mos7720: usb_control_msg() failed: %d\n", status);
>  		if (status >= 0)
>  			status = -EIO;
> -		*data = 0;
>  	}
>  
>  	kfree(buf);

Johan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X/1ke4/PaRQRGJTg%40hovoldconsulting.com.
