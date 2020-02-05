Return-Path: <clang-built-linux+bncBCSPV64IYUKBBSFL5XYQKGQEIQUXT2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-f61.google.com (mail-ed1-f61.google.com [209.85.208.61])
	by mail.lfdr.de (Postfix) with ESMTPS id EA99D153C23
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Feb 2020 00:54:48 +0100 (CET)
Received: by mail-ed1-f61.google.com with SMTP id n12sf2690086edq.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Feb 2020 15:54:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580946888; cv=pass;
        d=google.com; s=arc-20160816;
        b=bMYWXHJwmCqrlYK3xoZxeflyKkN64Ns8GacYhzHMF4GOT0WZEHpTkc2GdhH+574wny
         7azTXHwgzZd/jG0M5NtusuB6O0ZjQxaQ9q+3ukuVnvDCklb73SzBgjr0Gm6AOsZYIAHR
         L9WBedhYxtB5u43PgBtSWm8xS3i2aWURePuDKvtSYI4Upli9S5wqCBnKVPpo508oSmNg
         uAEOjz5H8I3HeylSoRXvrh5HNaKEbO1f/NyJI3SIgjeuIkp1NLmsffdpIuXNnMi//Vnr
         dZTVptbYQjk8iLCOH9PMosahTvWesyn3tptbHmwxZi4xjCUAq1g80wb5geBq+F0UUbN6
         ZZWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=c68a0/IwDihw75Jn7uBmw3e+BiRzV4WhvRYK7tdQSpE=;
        b=YgTdv3JLZwo7OK+grWdZO5CcfqmasSaKLOcmWaPamHmj/HA4EPaoOWybQLSYeUEwaZ
         VssW48P3KHyOmUs45eoDGVpPgqe1iALlWoGcbZqiP93MSoJEFGGJsU4Qvkna5MDq8mAa
         /vk9EIvpaOHbx4RE8YQ4LsDuA3iRdTZUBdpAOUhXD7hHRfmG3y7mPOzJbskN8oxTIXtb
         j/gvnTLqYpRpwO9HNFn7xqwr/1hJsKEXmetx5z2XozPHdUe7KokwJoiYmSTxnA+4qF2H
         nNsx59jomjyQ6del8MJWDXgYV3TZRaEIDfVG+EjX4wobfujCB+eD5Kv/Ky5hxLRwLcL1
         e7SA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=IHSaNrlX;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=c68a0/IwDihw75Jn7uBmw3e+BiRzV4WhvRYK7tdQSpE=;
        b=as7Cn7YoqXMhe/1x/FzOlPtImtEEx4JU7la2GdgMQAvxfg+NK76F7cdPAzdk/aqHMP
         IZV+LZYMHdnPtydqr7IWoAWXsIoY2Ppz6sPH16uJ6wWQLvziu5OSacNwPffeLUWbXDS4
         nFK+D1K4bkXv95FOxZwDf5IaQvu/TKdCcPQOEZc0EY0cFTmQhGzLgNjaX3pzO6tnmpiO
         9Ehcj6rjgng+6B4aJuH7xvww8+g5e5xJLZVl/YlnX+4pIHh4Vkw69HCIIe6HgjwjY/K+
         SxSQAIGPmpisFZMmHsAxPpz3/50lWZFqEiHxwRs5uVUwyTxsVbB6HB8Ox7hb0MCrvX+H
         HCQg==
X-Gm-Message-State: APjAAAU+o0QFepnqHWdAaXu9iARF/ZrkqCZjskZb2zcywp8nuSHjvJES
	cmojEw58f3fQhuUPxeG7rLo=
X-Google-Smtp-Source: APXvYqxGtfWmKeyzs/0mwD32TiWiSqhkrCjvzNibWU9SAlmmsxVPMxDsZXh5xEkjS2hhvzwkWFWvWg==
X-Received: by 2002:a17:906:3746:: with SMTP id e6mr472730ejc.165.1580946888621;
        Wed, 05 Feb 2020 15:54:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:bfe7:: with SMTP id vr7ls1629500ejb.1.gmail; Wed, 05
 Feb 2020 15:54:48 -0800 (PST)
X-Received: by 2002:a17:906:70f:: with SMTP id y15mr521744ejb.44.1580946888090;
        Wed, 05 Feb 2020 15:54:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580946888; cv=none;
        d=google.com; s=arc-20160816;
        b=eGDrsXEeVkMQuwxyihppDDM5zYhAJVJ7RPIFGAzPTA6YoTmNSOakzxj6cMZRxybo77
         fXtCeOdgq1cjAzQOQkXUNKVHSTm5mtlM/m9tFeT3C8DgaU4xUcMk6UyHhOXFiCvkvK5b
         Poz6jx5FU6Yil9EK7MlcdZ1H1e53H7yJY5tc+qns69/ObojeEN8eI0mO02mK5nJpNei3
         Te3XazWrUCqHlg1u1IWMPwfVvfkAvsYLiToYpwSv+oMsiw4+KzCVjI19lfWkGYduYlDZ
         bdo/VMtVhJPlK6VJGsDjJKQ+qbqVxxCHOcdQM0fBf4Kq+z53GWyL8vlwZXIwErgeM9K/
         v4ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=5aXRAu4MuUd1u+UkGWrwGKaLApXhm4yXkzsV9CVJjT0=;
        b=zK7Q7k81sEHVIYfVvsOF2ajA7slQ5x3mHz3rYSRbKJFVtrgi5JJsnxm8Yifc/uUKSn
         wtVrSGGc6946ejx3W0qq06/H+fitUFfst+8McsceNY/zJv6WURqnIUoBEnRQZvPHhkUi
         01RqR4HNxP7aP1y5xl3LYDKP0dOJDLoK1A4EbYFLgFgLM74qLlEkSFGHerCWxvTWUewv
         YY0GImEoSrP0UqC1dozZYYJIPEWLfKc/mVLpcRbpCVZZUKRzNotBS/6mvTkpox+Nwp2q
         357x4lWabew9zgRAcW1ZPoFa/QsoT6PaFdEOSQTw2/Ru+yGVbHISOOCJO1hJPQ52r1MH
         dIvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=IHSaNrlX;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by gmr-mx.google.com with ESMTPS id b4si63564edf.5.2020.02.05.15.54.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Feb 2020 15:54:48 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) client-ip=2001:4d48:ad52:3201:214:fdff:fe10:1be6;
Received: from shell.armlinux.org.uk ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:43988)
	by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.90_1)
	(envelope-from <linux@armlinux.org.uk>)
	id 1izUVE-0003jc-VF; Wed, 05 Feb 2020 23:54:43 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1izUVE-0002If-5d; Wed, 05 Feb 2020 23:54:40 +0000
Date: Wed, 5 Feb 2020 23:54:40 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Stefan Agner <stefan@agner.ch>
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: kexec: drop invalid assembly argument
Message-ID: <20200205235440.GW25745@shell.armlinux.org.uk>
References: <ab67c7c5a1f96af6d22240e57fc27ba766d4193d.1580943526.git.stefan@agner.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <ab67c7c5a1f96af6d22240e57fc27ba766d4193d.1580943526.git.stefan@agner.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=IHSaNrlX;
       spf=pass (google.com: best guess record for domain of
 linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates
 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender)
 smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
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

On Wed, Feb 05, 2020 at 11:59:26PM +0100, Stefan Agner wrote:
> The tst menomic has only a single #<const> argument in Thumb mode. There
> is an ARM variant which allows to write #<const> as #<byte>, #<rot>
> which probably is where the current syntax comes from.
> 
> It seems that binutils does not care about the additional parameter.
> Clang however complains in Thumb2 mode:
> arch/arm/kernel/relocate_kernel.S:28:12: error: too many operands for
> instruction
>  tst r3,#1,0
>            ^
> 
> Drop the unnecessary parameter. This fixes building this file in Thumb2
> mode with the Clang integrated assembler.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/770
> Signed-off-by: Stefan Agner <stefan@agner.ch>

Please drop it in the patch system, thanks.

> ---
>  arch/arm/kernel/relocate_kernel.S | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/kernel/relocate_kernel.S b/arch/arm/kernel/relocate_kernel.S
> index 7eaa2ae7aff5..72a08786e16e 100644
> --- a/arch/arm/kernel/relocate_kernel.S
> +++ b/arch/arm/kernel/relocate_kernel.S
> @@ -25,26 +25,26 @@ ENTRY(relocate_new_kernel)
>  	ldr	r3, [r0],#4
>  
>  	/* Is it a destination page. Put destination address to r4 */
> -	tst	r3,#1,0
> +	tst	r3,#1
>  	beq	1f
>  	bic	r4,r3,#1
>  	b	0b
>  1:
>  	/* Is it an indirection page */
> -	tst	r3,#2,0
> +	tst	r3,#2
>  	beq	1f
>  	bic	r0,r3,#2
>  	b	0b
>  1:
>  
>  	/* are we done ? */
> -	tst	r3,#4,0
> +	tst	r3,#4
>  	beq	1f
>  	b	2f
>  
>  1:
>  	/* is it source ? */
> -	tst	r3,#8,0
> +	tst	r3,#8
>  	beq	0b
>  	bic r3,r3,#8
>  	mov r6,#1024
> -- 
> 2.25.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200205235440.GW25745%40shell.armlinux.org.uk.
