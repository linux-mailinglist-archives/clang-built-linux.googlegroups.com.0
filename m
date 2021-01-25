Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHPKXSAAMGQEJXEMODI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE87302D65
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 22:16:14 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id j12sf15509190ybg.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 13:16:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611609373; cv=pass;
        d=google.com; s=arc-20160816;
        b=h3YmDBYzC/gPWs5g2Ge+ZCJArqhAxvSmm6hSVBI8QNjdrv4/kmQxCYwFjMrbpQhgdi
         ewhiQkVyKsSDvVjWM4gqjfpYHr+ummjl9rXtoGFDgQl86QF2JOF0hvJtmmw8VPFaLDiF
         kuE8xOrRkV04Gy5OADoc0+pqJ5zWkPUBOG9lPi9pA0gCs37mK7kkc7SoLXpLxCcgyMrx
         Xhj53IpRLvND9IwAHzteDfxs84hQ++GesNr7N9QhTBAD4qoKxq4UFkTbuH0cOz8QwjKu
         WAes9N7aZluM9OCWzVCvKxBhASlAFG6QlRSgUZyXJm2o78JRrUtHQ+UQ0wYTlCK/R3Zf
         o6BQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=L3nrTFfD7CZDBSMuh7kuvRH0wpGkGNTbiCLHNf6lZAU=;
        b=poOpUA5ZGEAl9jFI16Fa+I9kK286XYWv2zW8Hb2STPLlFDITtiWg8dkaRqtcjrndyX
         MHv38BAEvs3cjToURIMDhIZT1j9pvRXKKm7F2iCFL4fMDUGjSZjWjvgzFqSBu6WzB4kh
         DYw5708XgWBdVOLGWXG49sF3j3ZWGW1yy+pCMf6vHKHXrRir5scLkObfdmGZKhtjvjlv
         jd50qgySd5Ix89sEGkqGFEmLenLh2/ipOX8ohEqJllHgEejv5+azprkwEtzNOlwST8nr
         xfGx7EzG9H+nEF2pqp/0cNZAMFdWmPGThEw9sNfzsM7+o6E+wrCjV/RKO7DC7OKjH10A
         WKmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F2BeYSYI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L3nrTFfD7CZDBSMuh7kuvRH0wpGkGNTbiCLHNf6lZAU=;
        b=jxI0sYuALTGZRItggTNhkin5y58g5uIxb+faTm4P6d1jNJegN+RNxcLyv4RDjomtl/
         3/F0NqMlj4imDiFidcBEF/JtllZ0TZQYsTFrYC28Ohj+UGesY6JKBMq1sadSjlxoId72
         ZQrR3VyXABoCk6wI02eXgOgYl6NvgUuVOaIcEUsZoLl+PWf7cw/DgwpvNPTpX4ep8aQ2
         I79kyJYQpst7B231loM3QObr7pJMuE03ZFUhCLN9axIiWSv1IVDLGItQdyqzHbnkRUW4
         sfRZtSnRaer8hhFVxIAuebu/s7DirA+3Tom1yKK1wQouDZGj204hySbvi1IOSP5mB/l9
         CZPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L3nrTFfD7CZDBSMuh7kuvRH0wpGkGNTbiCLHNf6lZAU=;
        b=nLHrvNOOZDd1Utnc1w2bq0iDjiD/ncMvgVq6egkDqZd0Y9bzRhccgLxeGf+MFPFC1k
         vdKokJZe+f5tgPcYvJ53F5bzXd1LVIdJ/dx08zrq6X3zq8wbcUG9oXdFP+Iwc65q3iQ3
         sdRQ2goFE40pT+wvh2et/hhkY9OrrxHz0m9oAIo5JnXExULeVAcFlEmVg57tG5rYUKff
         vhn7i+dOWEfT1HBDl51W4iHQwI6rOdE2a/I/uqW98f89vle8JsFjFjOx1BLl7YPV+rl2
         9Zzb5D4StKfx/yo2ehoMlId3ylV7PAw82U642PFOr1LrXUZT99XjCAXCMl2VBk4pG3lp
         YaTw==
X-Gm-Message-State: AOAM532iYUA8gzLCshJt7RBiVLV49/ENgym0imBtCJkFaHUUko82zMQo
	H0xkl1II+RMd/M9XD4qgo+I=
X-Google-Smtp-Source: ABdhPJyXw2aIpOsxRU7EyF5wr8dEBmPTUpu5cu4lvT2KjSAeoIiO8HzGMYpgR8nwBOlFMqHY3OnEaQ==
X-Received: by 2002:a25:3d47:: with SMTP id k68mr3441324yba.415.1611609373217;
        Mon, 25 Jan 2021 13:16:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:828e:: with SMTP id r14ls7642473ybk.7.gmail; Mon, 25 Jan
 2021 13:16:12 -0800 (PST)
X-Received: by 2002:a25:d005:: with SMTP id h5mr3671554ybg.472.1611609372886;
        Mon, 25 Jan 2021 13:16:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611609372; cv=none;
        d=google.com; s=arc-20160816;
        b=Qzf3j2BFJt56zlobKPczt3w0k7ZpH3oHKwKbje1Z0iAsjimG7QUXhg8aGX7htAe7dU
         GaIzf/Moe1qgYLgO2DUh33VVZ6vToCGeYfu+AHf+kZWDDgcCUBoHWAOm45tGPjcDycL7
         MVlBCllf5a3ZdBF8AUMwuaa/Orw3ps2/GbAoyOEhjQnCj3FUSnLfecx2ZJaNlWvbzZsf
         3HNxCcmOcxW6xkcbhIoXr36Be5yNRg0YckNnbi2BZwpgB7/9on9nVvKwvtpJ+3Hw0TQh
         4Aa8zmX2nVNlU+J689RrVsnCIl5qpzuixHBJ2JxNtPSpoWvCY9oSakibqZoZUX8W9Dp6
         RNtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Wm74RJgccV4nt5I3HNRsP32/z8JQEsiUVo0q4ED9Zx0=;
        b=mMk3sg7/P3q71P7OOmNLwqTjSG9WedaWLgjmmU69WHMo5H3lFpZ75aOltttA9S37Q8
         kq0QxTcCoivSrVub6NO4v5/weJiDLCZZkL6sMS28//uoWkHXV3fYJmvecizHec3xigsV
         SfIQWzSoWGHUJWkYcfdDlWYm10KqX99dbd8qX7mMt5DTV7nzGXqYDVnqWxz2WZ4kN1x4
         vy4wz9wnOIWuNQqqqVhjMZeX2smqRT957RT7sLx9/mtsDgNPlSoe0lKn6ezzqwtV99XI
         8z9yxaVXX9ojT3/nZVwGgP1grdFrXv8GUln0JxdIl1UQweCT7dwyDA3hBzvfRqx2OeiM
         ODpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F2BeYSYI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id x18si1100998ybe.0.2021.01.25.13.16.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jan 2021 13:16:12 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Received: by mail-pf1-x42c.google.com with SMTP id f63so9126886pfa.13
        for <clang-built-linux@googlegroups.com>; Mon, 25 Jan 2021 13:16:12 -0800 (PST)
X-Received: by 2002:a63:7e10:: with SMTP id z16mr2423055pgc.263.1611609371873;
 Mon, 25 Jan 2021 13:16:11 -0800 (PST)
MIME-Version: 1.0
References: <20210125085622.2322-1-candlesea@gmail.com>
In-Reply-To: <20210125085622.2322-1-candlesea@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 25 Jan 2021 13:16:01 -0800
Message-ID: <CAKwvOd=b+ku7cd24KTYpNecYAUHxR5aBmrC1q+BL67+1YBHjzA@mail.gmail.com>
Subject: Re: [PATCH] lkdtm: fix memory copy size for WRITE_KERN
To: Candle Sun <candlesea@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>, 
	Greg KH <gregkh@linuxfoundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	candle.sun@unisoc.com, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=F2BeYSYI;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c
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

On Mon, Jan 25, 2021 at 12:56 AM Candle Sun <candlesea@gmail.com> wrote:
>
> From: Candle Sun <candle.sun@unisoc.com>
>
> Though do_overwritten() follows do_nothing() in source code, the final
> memory address order is determined by compiler. We can't always assume
> address of do_overwritten() is bigger than do_nothing(). At least the
> Clang we are using places do_overwritten() before do_nothing() in the
> object. This causes the copy size in lkdtm_WRITE_KERN() is *really*
> big and WRITE_KERN test on ARM32 arch will fail.
>
> Compare the address order before doing the subtraction.
>
> Signed-off-by: Candle Sun <candle.sun@unisoc.com>
> ---
>  drivers/misc/lkdtm/perms.c | 19 +++++++++----------
>  1 file changed, 9 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/misc/lkdtm/perms.c b/drivers/misc/lkdtm/perms.c
> index 2dede2ef658f..fbfbdf89d668 100644
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
> -static void do_overwritten(void)
> +static noinline void do_overwritten(void)
>  {
>         pr_info("do_overwritten wasn't overwritten!\n");
>         return;
> @@ -110,15 +110,14 @@ void lkdtm_WRITE_RO_AFTER_INIT(void)
>
>  void lkdtm_WRITE_KERN(void)
>  {
> -       size_t size;
> -       volatile unsigned char *ptr;
> +       unsigned long value_dow = (unsigned long)do_overwritten;
> +       unsigned long value_do =  (unsigned long)do_nothing;
> +       size_t size = (size_t)(value_dow > value_do ?
> +                       value_dow - value_do : value_do - value_dow);
>
> -       size = (unsigned long)do_overwritten - (unsigned long)do_nothing;

Thanks for the patch! Might it be simpler to do:

size = abs((uintptr_t)do_overwritten - (uintptr_t)do_nothing));

Then I don't think much of this function needs to be changed.

> -       ptr = (unsigned char *)do_overwritten;
> -
> -       pr_info("attempting bad %zu byte write at %px\n", size, ptr);
> -       memcpy((void *)ptr, (unsigned char *)do_nothing, size);
> -       flush_icache_range((unsigned long)ptr, (unsigned long)(ptr + size));
> +       pr_info("attempting bad %zu byte write at %px\n", size, do_overwritten);
> +       memcpy((void *)value_dow, (void *)value_do, size);
> +       flush_icache_range(value_dow, value_dow + (unsigned long)size);
>         pr_err("FAIL: survived bad write\n");
>
>         do_overwritten();
> --
> 2.17.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Db%2Bku7cd24KTYpNecYAUHxR5aBmrC1q%2BBL67%2B1YBHjzA%40mail.gmail.com.
