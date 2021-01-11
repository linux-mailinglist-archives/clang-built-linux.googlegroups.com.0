Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTFD6P7QKGQEPXPW66Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 153542F22CA
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 23:31:41 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id y187sf208259qke.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 14:31:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610404300; cv=pass;
        d=google.com; s=arc-20160816;
        b=FJWz9n7UZHRKaKM80LzEAxyX+9/2BLvp8BS5dwtwT98SDa0dfEg2l/t2HXXyo7AmNs
         5WVpWl8iGODHyV0YQWgh+kR1ppoDOorm1LVDhceVyd4CHsebGao2zbgASayaAwYM6E06
         F1hX08AWez7+Gg4HBOGOEmvLF94TMdnBCyhFFsWwMlmAJA8Dwm9AM/mqxJNJ/MQAhqhA
         lSrmtq/k7xwoIu++ZwrjtGpiEq1EKst9tR1eDATU9p3h/QKC6Gaypff4C6ieVYtLGKfF
         8D6y1ZOR7m8TUsUNcd5UDmvrtz+oqVAAXjK+W/QJAHop+QQQqI1Stjufd1AIV+yDXwhw
         hVqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Vb+NGC23PKybBns/EgPFl5WwvliDgQOgW9exlOMbjjc=;
        b=Ga0eFijqd/MWP87qGYi8JuF4Sfk2VKek9ZWJNyRu9bhOPX3cvBdF9jLNQwnc0kvedr
         jffR6XLUjSHdAiPsZlJcNYWMPguzy1qGOqCs2ebGIktoE36ZRd6kwwt3tJK4ged+Kku4
         dMbHnBV9eIGeL8Q6+48VmWCbf3XcrGuIWkgkfYJV6hv+xuMqR5THJUzxJQJJ+T8wS2hZ
         566KGyFPKN2gZNb44W0fIN4PN5odK9bsF2ykAAvKs1qp71UC/U/2D1ADujcNP4YVL7pc
         K3BYBKAK55FA/+dNFrvuFvT1qORtMZQpu28qdEwyq5FCF3ZdL7hefYqxeNKpibv/u846
         XglA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="AwG8oJ/+";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Vb+NGC23PKybBns/EgPFl5WwvliDgQOgW9exlOMbjjc=;
        b=PhzvKdVd+3mYWEwChcnBG7Q6Q32ljcWTkS+EZ0zL2IY2TTdV7nl5lHvlQhY1YMCqGa
         jyD+W6gK2HLnNdE0BlNt1jN0NmNzLk15enhQszJGTNoQEjqhcWiocQmIujRlJEbuFg6R
         le4lj8iaK2z+Itp3yWDDU4yvh3bIez6Cw7Ff9NthqpeSu3Nr2J/L4z0tYVBLglNlilJf
         RvmZ5jb7pkw5cpJsOBrwzdlQ/OgENO9A0jQ6pmycDnbpDZPQfKNw6/fWG8HmMQcyPvqT
         S8JBp7CWr3DtBKlX5P7vGriwZva0FabLL0l4oPyJJ/YtPhtLiAE9Xdenhotibjg8VKOv
         e1Pg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Vb+NGC23PKybBns/EgPFl5WwvliDgQOgW9exlOMbjjc=;
        b=ZTNdBmJ7IAbZtP8CDLCWoTnPsA80v1WMPoVY/T0OGVRiowh/OgxOd8SzJF750fjZ0N
         1enxAY3TMfqJSEhIr/tPYCYXBEdFsYY1hVaKD3HG8l0q2VaukZxNQ2SvY+5eZ3HVW33z
         tsgfRCzEWaqqPl3JKckcsCngnvxxNVIAC8whftScNmC7y5tezagPSzojLRrLN9YMQya9
         6HIVV/FZPHKgjuMwu86XPM5nUhqTgkTibFz61iQHc8oAo56gbHH/q8LrnRRWCQ7zDL/P
         MG6PTIIsH8JtpuYKc16aG/5Aeo4i2Ub4mpkAVGT/K8XzAJ3YyBlajBuhqcuc+W9Cu/Jk
         tadQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Vb+NGC23PKybBns/EgPFl5WwvliDgQOgW9exlOMbjjc=;
        b=ireWo7MNcpct6aFHhKrdqjgoS4pJYYZCVDJyHCKBubzyS+KW9rxumFAe4xELjGUwb5
         XqGEdIMzGRLQrr4augKmjNxNz8mN+AP0ws6yFkrjl7SSyyg7uChZudO3DULfvfzed8k4
         AtwVnSoYtCDBV7ffo3MPaQnKzo3xMhAALjft0RRej0TCcc4PB+LBy6WSJ5PSTifSkMPG
         WygJmgeS42uLPsedt5t6+nm66Yl2HyenQA3Hm56pHA+eK3ktVN4bcR81gSnvSfzLirKI
         nqIgcSBEsLAMi6vtMdIe1YZYX/5SDQDtqkwTV1NhdOMibczEgAnTRpOZI0D9QDNf2Xdf
         mDzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GSzsL/MzvSn0eOsdMZcLq7/d9yKiLgO2sr2EhdieGm+X1FSXA
	9H/KgZTd/3ZyhBWXzAkHcds=
X-Google-Smtp-Source: ABdhPJwVHhnMmxTEohw0NYo/PW49HG+tHzyXzOknk+acc1iD4YVLMjmuHbKY5z4MIFzNJ2osjQCpaQ==
X-Received: by 2002:aed:31c5:: with SMTP id 63mr1855731qth.84.1610404300162;
        Mon, 11 Jan 2021 14:31:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:498e:: with SMTP id t14ls237203qvx.0.gmail; Mon, 11 Jan
 2021 14:31:39 -0800 (PST)
X-Received: by 2002:a05:6214:a14:: with SMTP id dw20mr1705789qvb.43.1610404299839;
        Mon, 11 Jan 2021 14:31:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610404299; cv=none;
        d=google.com; s=arc-20160816;
        b=DJV6TUdQ002dtrwaJDHqTiOxXFrbPpquHUpOgjsv0WC/AqEKDdUEonKg8bFSnXUcZy
         FhYAHxTlcIg8jsQ+ucRETc7T0RCLlh3hMXkD48NvwJ+ulIm7lp/KTJg0snBUxrqXUtyf
         2NE4+YqvrS8X8AXaeuZWGskcCIwAv3dWbfpgxCHL5R+FxbRVPfG3VMMZJMl2zxM0H68Q
         Cm5vkrJIYgSf3XdueHc2LittE0YxMs6PvJ13of0BcbQPXZQ13eCL9y5YPkaCGOH+CsiF
         NIxqf40Up3wfzCcixQrqEa37GZezWGonL8UEVFIuGgxICvGFIEvDX0jEdIRx5KkLuSGY
         zkYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wJiGeL12qVsCRUCe1lSR40nZvYZ5aasMv5chEjqP8tY=;
        b=dYBZD79nXqFPSBRt5IQbEP1APhBM0W3pALgBLYVG2lKn98XGFpl8cFml7aPkA7ZjgX
         RXnjhg03eHiSphyVjDW6EZ8oXkWsD9eUTGGLr067c7UE9RhisPJV33hcGWzcVVZIVW96
         gDbAMJDj2dRewrSlvVxIiRvQLtMhWD2lWOk3uKgoEGp5GD38v83VOBlP/75k0l08Ik3x
         vGuJi3dkjis/vyzERZZS63mj6lt62QqVrZFAkpYMjH7hWkLz/cXwbw4Dv8yjlPj6PYTT
         jIdoKzBe2SXf3z9OA+Q9au2K1rfa/EjIX40cY84X89smLMKqx7FjKkTIGp77iNKSMLDo
         zzCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="AwG8oJ/+";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com. [2607:f8b0:4864:20::d29])
        by gmr-mx.google.com with ESMTPS id b7si117264qkk.5.2021.01.11.14.31.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 14:31:39 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) client-ip=2607:f8b0:4864:20::d29;
Received: by mail-io1-xd29.google.com with SMTP id y19so243587iov.2
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 14:31:39 -0800 (PST)
X-Received: by 2002:a02:c4d5:: with SMTP id h21mr1591867jaj.23.1610404299527;
        Mon, 11 Jan 2021 14:31:39 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id w9sm732807ilq.43.2021.01.11.14.31.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 14:31:38 -0800 (PST)
Date: Mon, 11 Jan 2021 15:31:36 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: trix@redhat.com
Cc: johan@kernel.org, gregkh@linuxfoundation.org, ndesaulniers@google.com,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] USB: serial: mos7720: improve handling of a kmalloc
 failure in read_mos_reg()
Message-ID: <20210111223136.GA3631335@ubuntu-m3-large-x86>
References: <20210111220904.1035957-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210111220904.1035957-1-trix@redhat.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="AwG8oJ/+";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

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
> @@ -227,7 +228,6 @@ static int read_mos_reg(struct usb_serial *serial, unsigned int serial_portnum,
>  			"mos7720: usb_control_msg() failed: %d\n", status);
>  		if (status >= 0)
>  			status = -EIO;
> -		*data = 0;
>  	}
>  
>  	kfree(buf);
> -- 
> 2.27.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210111223136.GA3631335%40ubuntu-m3-large-x86.
