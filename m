Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJGLY2AAMGQEUX6ZVXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E5430623E
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 18:40:55 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id ba10sf1598198plb.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 09:40:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611769254; cv=pass;
        d=google.com; s=arc-20160816;
        b=THrGZSDG+aP3K9x/+vQBsgLCpPXyo4kLBS85e84cyRdvdFyPRLIqGqfhnnHfCotVDv
         X9dnK0AHnYjKwVJMpn4RC5ARAbxIYyTUflBvma6oVWYRlR19wkcFAs9Ypm6GlYP9L5GJ
         G2JQFwEw3DnetSeSD1XYb5RUMEmzhFrFk2yiQ0mg8S4oUSA5QKCTL+sAObnyP7Gfidtz
         xw0dmxfVKk8sVKTUo8T4Aij0z2oPJo/87GH/pQ/Kgqetzt37QDyKIsH5u/EgzoZjWQDz
         tYav0rHYDclwKKjc0cOee5LEa/cHmaio+RL/cI4GBcG5Lgpb+o5+qaJkZfcrPT/E50LX
         l44A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dw2ZiAgZ8ZOdeG8gquhgMvxUgj2H8UTTBCTYkLZ17fk=;
        b=kf/gZ/utkTMA3s2uRHQX4yAf8mav9iNuT2Zi28IovHOXQeo6GO3Xp0ra61Pn2IcFaH
         5PdqNpu7bCpY8VvQLFEoOm10JrnRFw0WzcR98xoHARKtuhUVgT/uCH+Cnpmjr45L7zFl
         hOHhspKQsbvIX64Xq48GqbMIuwlELf4MS5N9ByXQUiWT6n1jmoip2FonpN+OrIBspQNC
         oYXkYFlEjgX5Xc53cXutEIflTDui3WCsEhQKlKDWyhY5nXRsnt7KGUB8XroR+QB1LHta
         u5wzhEcWvLnLkP34t5Dyklgkdoyni4R+NOT+URgB+sm/Usza+Mf2LDfmvsc6QJ0MKNc8
         lJ6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A9rWu8zW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dw2ZiAgZ8ZOdeG8gquhgMvxUgj2H8UTTBCTYkLZ17fk=;
        b=R1yNYLMDiGpE5qENBZKPB2MpvY7zgPXBeCaik+c3+Cj7M5VGkz4/kJeeYIdpGfncCi
         8OTAIl8n2cm3yjRs7uVtYI42JWzljUzVpMMbZionbbz7fq5vFZZuYZ9AHSTYMQihoChE
         ywn39bSAp0b+bgaUTxk25Gv0nY0ahSqw4kMXafHeZNnc+nHI8Kl18NhXORyQ7NlVe19J
         qynSjvBRhAW2TAks3ySPOyv3a9ilBS8MlDn7NABQEbpOEqDEpazzWbClVVjwixSOgk+c
         TnKZToZB529gPEP7kM+5uUnHfyBc+iFXUEPwnEIkqyDFMUE0fvQI7wz5T4/Znc0Wv0gZ
         qF7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dw2ZiAgZ8ZOdeG8gquhgMvxUgj2H8UTTBCTYkLZ17fk=;
        b=f4I+G20e67WGgua5bTDnf9uT99+Ar0Zq/udWBaRdD0ESEOnnbBx3rU0Lhj/6ndJMPh
         nm22wgScH4yEUQslpn/MFYEU8qSi9ROC0PS+zAylM624iLjJ/CLTpJmCzJjyPYVBiACc
         X2xtbSPhk3wPMtglPomuEyg6M4AHvLGrYOYzwZYWtoMBo4lAqlbMeofpDwHOf13vYx1m
         I3xwMeWgbDJ8xofnUjIiQ0YM0rNs4ia79ERxY8FHJOf1cZJBexaXbFZIftpgde/XO2yd
         aHU1NtcOmFm6onmW+CS0BEqHXgo+eoZ4Hbaed7i72Ld1WZOYcxUdVBafuKz03wHjpBf/
         5nuQ==
X-Gm-Message-State: AOAM531/rKoSzpFc81NMXUW+2lfUF1iijNwmPBeEDOZEHZ1vh26ca1ci
	ZJ2c5U2Wo+KDjUx1l2gdnBo=
X-Google-Smtp-Source: ABdhPJxqpeAECnpMorGGaw2wI7KAywiSGeFFepQpXs4vcxp/cOR10NnCCAwfPNys3TAHpIcfxIGuXw==
X-Received: by 2002:a62:8c85:0:b029:1bd:5441:6cb8 with SMTP id m127-20020a628c850000b02901bd54416cb8mr11777937pfd.29.1611769252145;
        Wed, 27 Jan 2021 09:40:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:5290:: with SMTP id w16ls1461243pjh.2.canary-gmail;
 Wed, 27 Jan 2021 09:40:51 -0800 (PST)
X-Received: by 2002:a17:90b:1046:: with SMTP id gq6mr6594274pjb.203.1611769251524;
        Wed, 27 Jan 2021 09:40:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611769251; cv=none;
        d=google.com; s=arc-20160816;
        b=G3LVy8aKk4Sce5AKuj3QhF9QE0XFpgzkSHI609IHakTuU6AQtvzHoBnj1LCjaatvDQ
         97sBN3BlAu7fzL6BOQrulpzY2/OTgVrgwFi/ss9uqqy3GAxgyB4wg+zzVP0Cje86fh/y
         PTO4awWOOq0LwAnWZN50ZuKaIp8G9B4mnBi9TDzEvaw60Ma5coQSS/wchPqHQcTbHbt9
         U/hxvKd5jPe/ky/ArB+fGl4iPKHauab7kADHJjskinCkILydiQZfJcorD24X6CsmYhFy
         gQM9ZtbDNpC+I4Wi3gwbHEnAH7s7oRAmPyc+yjtb5uROt6phmvQppv14T07cFDMtzaFm
         MHwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ea2hEewa2SHaOq7KTISxKb0uWCugTMJMw8rLnU/K26k=;
        b=XGWi1BCDiahqOL6Wyng4CHDN4vlhI9oZ1HlKaLikJj+IY7ddw+ivCrAQLx4/wSw6Ln
         ZPcTHFS/xXUQCjRcqpXf2QBz7R+qID8fL3pNSnvXDqSyMhlfpNIV8UDNcxxxmjRQfxDl
         p7duAmySTVHvyHkQxTeXlmUpzOwozRJjSmThIICHYZ964A+a9R6T1UPGhmsjO17ncrk1
         EpPGSbh1+3gqJPXthPbKzcax3T6LIzqZbBQZspv0dGqy+aL1YorHNFKge3RFEeWeqXuZ
         qcRlhvQTVSvnx+jY5KKrMUWZubERjfkGYBasxc0c5SsEIltsEDWQgJHHWBv2mkIFJwKu
         8lkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A9rWu8zW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id j11si169351pgm.4.2021.01.27.09.40.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 09:40:51 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Received: by mail-pf1-x42e.google.com with SMTP id j12so1639641pfj.12
        for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 09:40:51 -0800 (PST)
X-Received: by 2002:a62:7896:0:b029:1b6:7319:52a7 with SMTP id
 t144-20020a6278960000b02901b6731952a7mr12149664pfc.30.1611769250944; Wed, 27
 Jan 2021 09:40:50 -0800 (PST)
MIME-Version: 1.0
References: <20210127110510.24492-1-candlesea@gmail.com>
In-Reply-To: <20210127110510.24492-1-candlesea@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 27 Jan 2021 09:40:38 -0800
Message-ID: <CAKwvOdm4XaoW+yrtj=7C7ct5dvNuxT81zs1Wp=X0MBFceukd9g@mail.gmail.com>
Subject: Re: [PATCH v2] lkdtm: fix memory copy size for WRITE_KERN
To: Candle Sun <candlesea@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>, 
	Greg KH <gregkh@linuxfoundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	candle.sun@unisoc.com, David Laight <David.Laight@aculab.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=A9rWu8zW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e
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

On Wed, Jan 27, 2021 at 3:05 AM Candle Sun <candlesea@gmail.com> wrote:
>
> From: Candle Sun <candle.sun@unisoc.com>
>
> Though do_overwritten() follows do_nothing() in source code, the final
> memory address order is determined by compiler. We can't always assume

^ "by the compiler."

> address of do_overwritten() is bigger than do_nothing(). At least the
> Clang we are using places do_overwritten() before do_nothing() in the
> object. This causes the copy size in lkdtm_WRITE_KERN() is *really*

Hopefully nothing else gets placed in between the two, otherwise we're
going to overwrite that, too.

> big and WRITE_KERN test on ARM32 arch will fail.
>
> Get absolute value of the address substraction for memcpy() size.

^ typo: subtraction

>
> Signed-off-by: Candle Sun <candle.sun@unisoc.com>
> ---
> Changes in v2:
> - Use abs() in place of address comparison.
> ---
>  drivers/misc/lkdtm/perms.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/misc/lkdtm/perms.c b/drivers/misc/lkdtm/perms.c
> index 2dede2ef658f..fbb7f4554054 100644
> --- a/drivers/misc/lkdtm/perms.c
> +++ b/drivers/misc/lkdtm/perms.c
> @@ -31,13 +31,13 @@ static unsigned long ro_after_init __ro_after_init = 0x55AA5500;
>   * This just returns to the caller. It is designed to be copied into
>   * non-executable memory regions.
>   */
> -static void do_nothing(void)
> +static noinline void do_nothing(void)
>  {
>         return;
>  }
>
>  /* Must immediately follow do_nothing for size calculuations to work out. */

^ This comment is now obsolete and should be removed together with
this patch.  That will also fix the typo in it.

> -static void do_overwritten(void)
> +static noinline void do_overwritten(void)
>  {
>         pr_info("do_overwritten wasn't overwritten!\n");
>         return;
> @@ -113,7 +113,7 @@ void lkdtm_WRITE_KERN(void)
>         size_t size;
>         volatile unsigned char *ptr;
>
> -       size = (unsigned long)do_overwritten - (unsigned long)do_nothing;
> +       size = (size_t)abs((uintptr_t)do_overwritten - (uintptr_t)do_nothing);
>         ptr = (unsigned char *)do_overwritten;
>
>         pr_info("attempting bad %zu byte write at %px\n", size, ptr);
> --
> 2.17.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm4XaoW%2Byrtj%3D7C7ct5dvNuxT81zs1Wp%3DX0MBFceukd9g%40mail.gmail.com.
