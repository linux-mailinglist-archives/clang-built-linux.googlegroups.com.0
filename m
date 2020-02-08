Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAMQ7LYQKGQENNEOEPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AF51563BF
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 Feb 2020 11:05:54 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id m2sf735328ual.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 Feb 2020 02:05:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581156353; cv=pass;
        d=google.com; s=arc-20160816;
        b=MV/AKf2dNdKqB+vfCda1NVri3lYuzZqELGWLKfEIXuFXNB+4EqLN9oIqqLuYyJGgUu
         lELof0QIzEfuPqubDrxigS0NmCAWWfWLJulZO5jOxEJohTzvP8mwh4Vlixf5xaHlFkYR
         7qtLouxCqunYSVpuUHAVjlMfYvRxkjT4gZya2CMf7fS9WAPF+ikFVnW7N9BPN5LN8f+x
         taAcVO4jP66M986d0Qv9B58Vq72Hfv5KRLGYjnwM3eeXeT3Ll6StDty0VLGLa4/RJw4T
         3IYdAl8ejxuNBxc3nfNOt7pnSGE0+KF9ULxH2CCx/vwHa1IfZE8nNQK1VGvZBTT3fh0f
         ALdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KXeAQ6Jv9I4SYsmHCDDZiQdqipIokgrWJAtt560dHZE=;
        b=j34Al/GvenZM8Ur5Vi8TCyn1B6F4V0RnpRYoBFFMOFiDlDMrITXfztEsjh9EkDAUWp
         21snosxxH50/jheuiHZ9M+NBiItoEHyuY7xbJdp2Md4O/N1UciSHeVhQx5o9hVoP2qZK
         88lThMRGjiRryLS3cv4YTU/QEKTfiaEsNMCUGX2Vf6X7veJ9gTFtpVIcpdSM2fYK9hVM
         NMg1F8TtsylwaAHpZxI2d010UNSHPNItNzBbLeBQ/W6p0yfjjHqVMgjzigdjYdhaP7R1
         CMuKBchNYtB9oecJU/FtJp3cm2EMwwn1awyOxXRxdIiKWWieXZdcFj/B4avJlsW06jyK
         HQrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JosfX2Nh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KXeAQ6Jv9I4SYsmHCDDZiQdqipIokgrWJAtt560dHZE=;
        b=lQisitvi1a/MGHVvVWHGifdMR2cfaHNd4At22wJ1RoQYj5IMj0KDpfFmnOaeJhv0iu
         QUuZRNHMS6iq2ju8waI+fGbOC1hBbeNnEYnI2y9FGFLirwWiuNV/JRr52ojvjjjFksFd
         /jIe861V1VeYAnmCrtY4DX1k+6h4/MjD04FjC37jUjKlc8Ai8jpbzBuhc4aWdOJ/QMvm
         ApOYAVvePEoorIDieWrH43civuUONsBJckz16JE9oQJRzb3yzYvIXC7vHnx0Z4XyRTIG
         yqFTVYL52PIl04gXSUqnRZBWZnwQaXRWPblHV0gF+mDEg3Tb6chbSTYBj2qsAxiJwYX7
         bA+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KXeAQ6Jv9I4SYsmHCDDZiQdqipIokgrWJAtt560dHZE=;
        b=UY2bqlOigeNTLSgkxmAUCLrDITqp4f99D5DzDPO2dy4maWiROu+RLOFW5ye/uWUley
         elBPVOKHPu/Z0fj6cjrtuBVCvUsG+HnDivmBdZPg8S2Cghe7je5oOyC4NB/Ell6rSEzI
         0R8Q3PliLiipAJb7Z/vit7lsQ0HYaMBXud3rqt5bvGRWbUrmgGuhIMFQXSR2K+fX6mXU
         EOC0HVeB44v0RFAv87ZE9DdBVqduwGIH3oRApqKrjYV5trqpYn4kWbHREeXmh576N+YH
         lnxoIBXWozVHlDercmtim4l+NQIE1kISWvUoCdgVZhghVFA5tqukgS0IRahRIvfDy28z
         NccA==
X-Gm-Message-State: APjAAAXOw8SJos2KzTB7BRKgElNXTYIYe1E4hCLXhwJS4ofGc1xfVayR
	p+YXksAKZgdNs47RHW/GAm4=
X-Google-Smtp-Source: APXvYqzOunOT+Ky0mk0DZCCQvS1EAUSpZsRgEDSS3Q1/bqjrlOlthfrJLAPKOQS5ImQNPSgdU4FcuQ==
X-Received: by 2002:a67:2c4f:: with SMTP id s76mr1510880vss.37.1581156353575;
        Sat, 08 Feb 2020 02:05:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:1204:: with SMTP id 4ls102248vks.8.gmail; Sat, 08 Feb
 2020 02:05:53 -0800 (PST)
X-Received: by 2002:a1f:e784:: with SMTP id e126mr1820396vkh.102.1581156353156;
        Sat, 08 Feb 2020 02:05:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581156353; cv=none;
        d=google.com; s=arc-20160816;
        b=jtmab7AknfEquR+fbwLW3V7wlapzga9EUYIBLvQ+R0EtGpFXaDTaZiUbo03u3bCzvY
         SYl1Unm3tgul6+DKrBjsINM0p0SJnt97qyVUFmF+68vW5bzXIIPYLd/UhsFXvfDyJjk7
         r3NqiQU4tIez5yt9W042tGnfRI78EBqsVBirnDhmJkbBR30/rGs8Ou1vJBiSKZmIouKq
         t188T5shxS/x9xRC/1QQ39JTeaFlGm0PwoS3pNeYKf8tB9+/c/Qc+dlDagbvEgwKdOln
         5Dn0oP9Bm4EHys4s2Je98WaNXQOtQ7T6CSho67kn3Z+YuOF22rboKgvdatxnzoa1czgG
         lrbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hHm9ScY1W7HbxvW6Q4kkAHk83yXu8ldB5vCdWx34dho=;
        b=zScn4YaRgNnYE+US9kteXqWY8j+A3qn4nawD/7pm2tfyB1ZCBhK/KWOyI6z8zdq8et
         bsNHyq8clk9RLrv2Bk7oK0t8dIPyQPSbY9/Pti72da0svdk1IqW4eZ+teu2odZne6HxU
         wLQI19jcHLQWJPDczTFc9CLsIErdrB+itoH4MxJGY5zAsU8migXqMd5uTgWxOG714V4Q
         /kbe1IUU9rrzjm6jsfiiZ3RNLuSg31uYuj3sN0SmWViy8FadkwKGJWb59qNLno7uYPhB
         m32ACzb+63/2kYafik2WXL3GKVWctCh3C+gVKxi5Dw6bv9xvmnxERs8ezS6wMzVYknOP
         RFqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JosfX2Nh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id i27si83742uat.1.2020.02.08.02.05.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Feb 2020 02:05:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id 12so2010003pjb.5
        for <clang-built-linux@googlegroups.com>; Sat, 08 Feb 2020 02:05:53 -0800 (PST)
X-Received: by 2002:a17:90a:3745:: with SMTP id u63mr9116235pjb.123.1581156351972;
 Sat, 08 Feb 2020 02:05:51 -0800 (PST)
MIME-Version: 1.0
References: <202002080058.FD1DDB1@keescook>
In-Reply-To: <202002080058.FD1DDB1@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 8 Feb 2020 10:05:40 +0000
Message-ID: <CAKwvOdm=r8BK62QRqhpyek56rMv8fEKmT+=uJ--2pbo49RBg3w@mail.gmail.com>
Subject: Re: [PATCH] ARM: Remove unused .fixup section in boot stub
To: Kees Cook <keescook@chromium.org>
Cc: Nicolas Pitre <nico@fluxnic.net>, Manoj Gupta <manojgupta@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Russell King - ARM Linux <linux@armlinux.org.uk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JosfX2Nh;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Sat, Feb 8, 2020 at 10:04 AM Kees Cook <keescook@chromium.org> wrote:
>
> The boot stub does not emit a .fixup section at all anymore, so remove
> it.
>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Link: https://lore.kernel.org/lkml/CAKwvOdnRhx=SgtcUCyX2ZOGATM8OzG6hSOY9wGQZcwtp+P5WBQ@mail.gmail.com
> Signed-off-by: Kees Cook <keescook@chromium.org>

thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/arm/boot/compressed/vmlinux.lds.S | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/arm/boot/compressed/vmlinux.lds.S b/arch/arm/boot/compressed/vmlinux.lds.S
> index fc7ed03d8b93..b247f399de71 100644
> --- a/arch/arm/boot/compressed/vmlinux.lds.S
> +++ b/arch/arm/boot/compressed/vmlinux.lds.S
> @@ -36,7 +36,6 @@ SECTIONS
>      *(.start)
>      *(.text)
>      *(.text.*)
> -    *(.fixup)
>      *(.gnu.warning)
>      *(.glue_7t)
>      *(.glue_7)
> --
> 2.20.1
>
>
> --
> Kees Cook



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm%3Dr8BK62QRqhpyek56rMv8fEKmT%2B%3DuJ--2pbo49RBg3w%40mail.gmail.com.
