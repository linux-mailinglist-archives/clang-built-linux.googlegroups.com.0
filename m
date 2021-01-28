Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCEGZSAAMGQEL6KC2MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E4E307DFD
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 19:31:37 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id k66sf2831151oia.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 10:31:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611858696; cv=pass;
        d=google.com; s=arc-20160816;
        b=AV0lTpl8loInj7sYKrlHwDwARuDWlvx8SDaRXhtGvWr+rA+gtv+C9Igw2zKpWoa7Hl
         ++O5sFBnpq61S99iu34symIHty/lY7tGlsJIuRe9LEownoE8rMibsCWUyYMLQY21bqsi
         iuC72rKIVODY3Hg2vjYAKsfLZlcf8xLYLj5XwItpr7xHriXSZT8D6BAosg67pk5b8WZW
         nXQO/iwSw27nxtrTAqiq2vGBaRz6Rht9M4cYRNXJIezCO1hQk0FoLlq4qfkpgbTLiXFL
         3AfaZnYw9ofjsAp7juQwbdTo8jFn+KXEboUk1MZgJdwo8pAg+/UXYKZHf1o7HRUPMTPl
         dW0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZSWF67ajKem+DuCHBtK1m90c99cBD3sen9f78674WJo=;
        b=CgSU8+yT55Awq8ECG1f13zuGP5/onwy+D/9ZnPPBggXl3SKznS4mG7IqBdFeCSe12o
         I8l9rnOsoSI4kppY2dljyhOAfqhGJVpURpQ/UjN9HwJfIu8CKFhEOEbrC/pPUGpAojWx
         SMCNARQnf5r/n69W91sxjM4YCMKr6YQTEnRMfqUnQkFckU/Cn59fUwDYDZ8osrAtND+E
         7vNLLxzX/rSFnE9NDDaMgWEi8517DuSH95qugE5DvipOZlozr206YPD4UF7a+t+WhMh9
         wJiPf+BiHihdQ5TczuHxYVlWKHD0zXdcwnJtKjG0uzP3DpvxbPSgYiZ63Jd9jEeLwUdv
         xb/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="b6Lwkjy/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZSWF67ajKem+DuCHBtK1m90c99cBD3sen9f78674WJo=;
        b=MCsPUBaExwBnS+tzxwy/D1/InX3ohjy4xVKGUz6MbnD8sByZxU2+TJOxFsFciPIeCN
         QsAautYlf13KzSHx/QKk4Sb5vLcfGZAEBcOlranipkkNvbhYOsJR028BEAXFh90si9gF
         olFJzW20gxGjF35kYB25Ox1nIAejVHVSrCw4zAsUo1BBjv8FlsTbuFaa0SveufaZQPPd
         NnWOY+QiXxrZOI4K0Lbh93P6VZH4qgBMkK5VgQ+jJOy1HUBDmCOSeXywX/Cs+jCDpDZ5
         nFA0M0i28MLXzBrWAXnBBPBaOFZid2/E5+26rHtlJ7th0gR3OtSEV/hIYJ2qQfT1HJOC
         Ux3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZSWF67ajKem+DuCHBtK1m90c99cBD3sen9f78674WJo=;
        b=TqQYS8D7qVIylWYEc3xkw/KyRLf0CKPB4C5k9NZI0X4GSF9kyteGmPML1gvTTVKkV8
         NcJlFKgo7T+C7T86D+HAZWnWVTj1EPDJKiT1x1/SJxL/YkuC50YVwpFVARi+3OI8WAFJ
         gj06bId2v2JB/zni+bzAv0btwvaudqfyUy+QwNQFTIfQQSVnZ5kNnxh46z+xbl9AUHX/
         gEoT+KJ5Tsk+nLSuyjaa0aspAwug9BCuLTLlSbJxN9nc+Po+liPhS2iNL52N0+pTzcSu
         kA9sqHMnqCHRiuhPGSwJqh8ftj/rGdrye86ULn9SQ2srLX1C0LVZX0Ry4Eq+o7kbJigi
         Ou2w==
X-Gm-Message-State: AOAM5310cyI3OfS/v+heeuCLXFNjCpbWQEUYtgaO9L8Tn9a0CCpdYaWs
	XmBKM6mUwcpvWc4ax52I248=
X-Google-Smtp-Source: ABdhPJwTXV7InNLgNrMtUPq/Vz9jKoNuzvtBSRWoTyEjpD5K/OER8X6MBzUNpt6SA22ruY2nKHLRaQ==
X-Received: by 2002:a9d:3625:: with SMTP id w34mr506184otb.330.1611858696571;
        Thu, 28 Jan 2021 10:31:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4694:: with SMTP id k20ls1482411oic.0.gmail; Thu, 28 Jan
 2021 10:31:36 -0800 (PST)
X-Received: by 2002:aca:56c8:: with SMTP id k191mr432119oib.12.1611858696219;
        Thu, 28 Jan 2021 10:31:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611858696; cv=none;
        d=google.com; s=arc-20160816;
        b=ROZgCGn+IDHSkcI2Y+Lq4/9ngnBsHGSvLOb/79dqJS3e+vgHhisN5jgPLX4KswcjYs
         d5Ir82OXkD85Y3lpGxyujNMZ1CICAHnvfOfCWKimCWjAKdIxZYq0lWSfGl8HZAP65RN+
         EchdeFn4FOw1yl4t+LMyN8T7uynKX5aU6423W2ipDS8INyhKGJNyVNDWXMHKECy23Axn
         N98Us2b12cByw8ch5awdpKYIVUpu1EqEz8MrUUwQUlBl53CQ/DuPW9PyZVdHdH4JefQp
         PTtoDDxRhZS81IQ0T5LM1FheEegRLFJe8iAqncZrUfOLzhgGrJ8i4oocqbg1iaBrbT1x
         lb0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=suAFFul/sTYclZVZXFYJfemeWOXNN1vPSZ2Xpd9nrA4=;
        b=CeUP2clavMbmt7hpozj5UHMR8OXlnnFN48T8/u5s3jvEV7jHYkPn4eelZhe7Ep4D8T
         bgrZx/tWVRPJ3eAWuNaeTUgjxGkCZmFGeJNeJn9PmFXDaMuHiJI+rgXCD1O2L7iOYNcX
         rRYvb8jOR9IrHVI8VIQ9ilCr/2G1ewkSBXlKAM9/mXizWmIIzTdP6rV7u2S3zzhr8XJu
         8Qdcn62Vh2v5ts8N8RwTe+qFtZ0e4hz8F+iQpPPgl70ELl8ShNnGSYKgOTadXvHHARg9
         OvX/WlTE10D9WsD9uO4FQr+X7MNPGmZ1qrGJimg8sFAkFb3NkXarh3n3GPhVU9yPPalW
         4mlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="b6Lwkjy/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id r8si399852otp.4.2021.01.28.10.31.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jan 2021 10:31:36 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Received: by mail-pf1-x435.google.com with SMTP id w14so4566227pfi.2
        for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 10:31:36 -0800 (PST)
X-Received: by 2002:a65:4201:: with SMTP id c1mr779610pgq.10.1611858695379;
 Thu, 28 Jan 2021 10:31:35 -0800 (PST)
MIME-Version: 1.0
References: <20210128065739.14124-1-candlesea@gmail.com>
In-Reply-To: <20210128065739.14124-1-candlesea@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 28 Jan 2021 10:31:24 -0800
Message-ID: <CAKwvOdmviwYfLs4YOY3C0Hi6nw2JKPCW5kAGM_qPTOcrAUVQ5w@mail.gmail.com>
Subject: Re: [PATCH v3] lkdtm: fix memory copy size for WRITE_KERN
To: Candle Sun <candlesea@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>, 
	Greg KH <gregkh@linuxfoundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	candle.sun@unisoc.com, David Laight <David.Laight@aculab.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="b6Lwkjy/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435
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

On Wed, Jan 27, 2021 at 10:58 PM Candle Sun <candlesea@gmail.com> wrote:
>
> From: Candle Sun <candle.sun@unisoc.com>
>
> Though do_overwritten() follows do_nothing() in source code, the final
> memory address order is determined by the compiler. We can't always
> assume address of do_overwritten() is bigger than do_nothing(). At least
> the Clang we are using places do_overwritten() before do_nothing() in the
> object. This causes the copy size in lkdtm_WRITE_KERN() is *really* big
> and WRITE_KERN test on ARM32 arch will fail.
>
> Get absolute value of the address subtraction for memcpy() size.

LGTM, thanks Candle!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Signed-off-by: Candle Sun <candle.sun@unisoc.com>
> ---
> Changes in v3:
> - Clean some typo.
> - Remove one comment line.
> Changes in v2:
> - Use abs() in place of address comparison.
> ---
>  drivers/misc/lkdtm/perms.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/misc/lkdtm/perms.c b/drivers/misc/lkdtm/perms.c
> index 2dede2ef658f..c9227e08f97f 100644
> --- a/drivers/misc/lkdtm/perms.c
> +++ b/drivers/misc/lkdtm/perms.c
> @@ -31,13 +31,12 @@ static unsigned long ro_after_init __ro_after_init = 0x55AA5500;
>   * This just returns to the caller. It is designed to be copied into
>   * non-executable memory regions.
>   */
> -static void do_nothing(void)
> +static noinline void do_nothing(void)
>  {
>         return;
>  }
>
> -/* Must immediately follow do_nothing for size calculuations to work out. */
> -static void do_overwritten(void)
> +static noinline void do_overwritten(void)
>  {
>         pr_info("do_overwritten wasn't overwritten!\n");
>         return;
> @@ -113,7 +112,7 @@ void lkdtm_WRITE_KERN(void)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmviwYfLs4YOY3C0Hi6nw2JKPCW5kAGM_qPTOcrAUVQ5w%40mail.gmail.com.
