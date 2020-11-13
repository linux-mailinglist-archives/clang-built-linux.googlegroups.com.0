Return-Path: <clang-built-linux+bncBD63HSEZTUIBBB7VXD6QKGQENFII6EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE322B16B7
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 08:49:28 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id t7sf1638118oog.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 23:49:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605253767; cv=pass;
        d=google.com; s=arc-20160816;
        b=BykDEBxRS2Tb77UsNirgubwnIxylOLF3p/xt7zu0HbId5g6TEvvQI2OaaoInLcrdkU
         FyDB4mWtd7OzqElRvkAM5wec/VK7jP5uBtKIv0epJMO6gkvlY+cSCbUOV4GODJxD89cX
         by4pff3eHnmHfpfkjcAsnfKzIDF2pUlgu9hVXjOPqHWWVHlo705duTW6+KNSHjnJwU7e
         znjMgDeVdmwKTcHotltzLkOW/yfJLdEOANSLoznGIwH43umVoEfICPbfTr83nMyma+xY
         bS6neJAJhDBPNVrFF6J134t/xnPSGkyefyBMj2GO0kBc4PgMUz2efhisr4vHG7GQ5fgc
         tzRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=sFOju07/UWxEY9hE0WiTOx44zYsN/FE1+a3EKIhKry0=;
        b=ciZaASOY6DNfmUUmrNlTKGWKOWwM36Xdli0IxxliqRu/9PYp/NubU6O+3YZmSB4adI
         3OPcKWsmQsokye8eoap+kZnzMF4C9U5hWCP5mExejLjwm2Z9V+VYo6RKZusXfwWKFFrf
         KE29wPGgYy920IMnyt3Ux3rDaeGXiYwCDjNWb0f0F712TeyuixtoFN3ztDm/GNj8tfNS
         A/5eY1q0Ur6kv7ggajq4uR16jJSh+YreSMucXWyWSAyoyqnFVWjWZZAAkqKcidR5hg0r
         ECUFYuIhmPJzahNjOVdYRDTknEqmajUEYw/dAhuISYKzq1CVpQG/A4lFzxypAEvunNKg
         FM+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CjvOtupr;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sFOju07/UWxEY9hE0WiTOx44zYsN/FE1+a3EKIhKry0=;
        b=Nv+uZZlQqHKcXFp/6sGj1gzZH5jfWVAMgG2ZRC+QYpgeKj8zqYVX7XVyQFxxugWGTp
         Q3Vj3symWx7IWiW77PXoj+uChRw7YcnGrOY/2nMHV9yMFV26i8mtcLmerMpiCh8fi5sd
         Oo9ZVRIKFoQMriwkQK663tIXr0vdt3RjgVC+u4ZNv0KuziI4O3FFCHqCaPWzY0omg0aR
         umsI/G1CfO1sfBgWj1CtWvLp5vj7AhiIzuXsLUWz91v47fWEf6f6Y2K0CqPexsJ37eL0
         a27duFX/Wcn4S09GMNniRxyXv1I5idIoln3qQSQc0KLMfPShFXiw0sL1mI9SYpnckXmo
         E/Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sFOju07/UWxEY9hE0WiTOx44zYsN/FE1+a3EKIhKry0=;
        b=tV/XgeZC+OVHP55FHSqcgX5rrA13OEn+CwXxxe49rIXRO69vrsPdEVWwDI3wPLzwLj
         0ngCqRbHs/O7WSbzM1x3ZmJdHguMN44I4t5WXkbPo4pqNXZAmuMV01ghrnXXbTAiav08
         3UhrTQ+c73icZLiiVo8mUxnRT8xXPURv+ScyktN056ov9jx8t1gKrju8PWkh1xmzOEF/
         xvTPimnj9rbXT+tQC0xZRkoAkXmL8RuA/2ad18ESfX7mlc/B5iFaBPjEnzF6tTGQr0Tq
         yg/76eszaG7jtzkLUSIoLnjuev4aUXA1Pw6/kms4kooQtjK52lnEMkh3vAFAHQmyxcMs
         HauA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531U0KQY5nVptx3sET01TWNy77pRzZQ0Hvt7L32VuC5YkhGlN66B
	xR3lOQ1kRuNGXPtzUfBuxdQ=
X-Google-Smtp-Source: ABdhPJzL1a7ks7Yj0vzJC/Vow6jZP9nlArqJDVCyKbsVvdYUdGWq+NHC7yLJjKxsxfmt8hra2yYg/w==
X-Received: by 2002:a05:6808:7cd:: with SMTP id f13mr646999oij.38.1605253767620;
        Thu, 12 Nov 2020 23:49:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:198c:: with SMTP id k12ls1382120otk.3.gmail; Thu, 12 Nov
 2020 23:49:27 -0800 (PST)
X-Received: by 2002:a05:6830:23b6:: with SMTP id m22mr692301ots.292.1605253767276;
        Thu, 12 Nov 2020 23:49:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605253767; cv=none;
        d=google.com; s=arc-20160816;
        b=XQrSUCbi9755DuhBpPTKAfhXjlu8s+JIduRYhCHz54vm1FsJPzz3PYyVcNWRhvrvns
         O4DB9/uk4hLAVfTSezG3XBZbqvJUMPyk/uGBPD4O0V1rP0cthxcGjylkNI2c8WhjCxOm
         hWCxDc9vyvzXDmj7i7fFerU56GAnX2KJgCBAdfSj0sTeKyhENEn69ggQ4cr/8AtQPAcd
         CGA89hcz0AX6nAlFmcPlf2QulzkYmz3FRku/obmR6V/SVKWWddgu9P/sjRRUSTTOM/zE
         uducEv+daJLuaugHmcmBozv4GCurgODcjHZKV4Xneqf2dIJiMk7hE2oAbBEYYtfYG+vT
         qNZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cziHMHVW6awdeUUGEJqHUO9gG2QH8VqUYgUUuhp1IQA=;
        b=zQ05YqqJ/AUCOFfXv+5PTTjMYVt6LyPQpmRlFrx4VOGm7LmkGnrUl16z+ivhth4Q7K
         TDSzf/3Zla+mdbrR30xrkapCTcPUGsaI16ggCNE5TQg/5149PTgl7N7hxQID+sC0sI6f
         e3E/pO3GcIH0bYWy5ccVqM02+HTjhjeMMO54mbu5IMSJH9dz9Jly7Uh2sIAjqsiBAVFs
         KAgV9xL2xZ71CbtMbNNjuN6JoxBqL325RFcyIgue6EwMffEOy/PiSFOC68J3cFHrenAJ
         2VNWu1QUetuk9a9mivpaU6fSPdhmyF3fVVH1Jqyi8xQt9lZzxdZzntR4u/r1ImzM7FCa
         25pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CjvOtupr;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h8si586663oih.2.2020.11.12.23.49.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Nov 2020 23:49:27 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 16A8422244
	for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 07:49:26 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id k3so8158039otp.12
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 23:49:26 -0800 (PST)
X-Received: by 2002:a05:6830:115a:: with SMTP id x26mr701341otq.77.1605253765263;
 Thu, 12 Nov 2020 23:49:25 -0800 (PST)
MIME-Version: 1.0
References: <20201112212457.2042105-1-adrian.ratiu@collabora.com> <20201112212457.2042105-2-adrian.ratiu@collabora.com>
In-Reply-To: <20201112212457.2042105-2-adrian.ratiu@collabora.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 13 Nov 2020 08:49:12 +0100
X-Gmail-Original-Message-ID: <CAMj1kXFbLRTvGuRt5J3-oEuJrrHFV9+SBGFFDNsAftGUbwoTPw@mail.gmail.com>
Message-ID: <CAMj1kXFbLRTvGuRt5J3-oEuJrrHFV9+SBGFFDNsAftGUbwoTPw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>, 
	Arvind Sankar <nivedita@alum.mit.edu>, kernel@collabora.com, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=CjvOtupr;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, 12 Nov 2020 at 22:23, Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> From: Nathan Chancellor <natechancellor@gmail.com>
>
> Drop warning because kernel now requires GCC >= v4.9 after
> commit 6ec4476ac825 ("Raise gcc version requirement to 4.9").
>
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>

Again, this does not do what it says on the tin.

If you want to disable the pragma for Clang, call that out in the
commit log, and don't hide it under a GCC version change.

Without the pragma, the generated code is the same as the generic
code, so it makes no sense to build xor-neon.ko at all, right?

> ---
>  arch/arm/lib/xor-neon.c | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
>
> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> index b99dd8e1c93f..e1e76186ec23 100644
> --- a/arch/arm/lib/xor-neon.c
> +++ b/arch/arm/lib/xor-neon.c
> @@ -19,15 +19,8 @@ MODULE_LICENSE("GPL");
>   * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
>   * NEON instructions.
>   */
> -#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
> +#ifdef CONFIG_CC_IS_GCC
>  #pragma GCC optimize "tree-vectorize"
> -#else
> -/*
> - * While older versions of GCC do not generate incorrect code, they fail to
> - * recognize the parallel nature of these functions, and emit plain ARM code,
> - * which is known to be slower than the optimized ARM code in asm-arm/xor.h.
> - */
> -#warning This code requires at least version 4.6 of GCC
>  #endif
>
>  #pragma GCC diagnostic ignored "-Wunused-variable"
> --
> 2.29.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFbLRTvGuRt5J3-oEuJrrHFV9%2BSBGFFDNsAftGUbwoTPw%40mail.gmail.com.
