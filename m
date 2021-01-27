Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLGMY2AAMGQEDUQGC6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0B930625A
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 18:43:09 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id v42sf1365373ooi.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 09:43:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611769388; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jrac0e6XYs1kI5kvAveuztB64dPZ2TbFc3oOcGev0KEUq4wEsMU22fYFPpQJCIUN2r
         b9GwtVzE91dODLToTXzOFw3KN+TZln1iTVnhlZHQigqlDNH4EUlKI3iry4cK5Pbtd6q0
         MW+sbUkbJv5I2YTERukC/Q16Y79Nfw7ruWZimT8ZP6nG/NBF9SQsBRWJE6ZyxYWkS0C2
         vGZhk0l1AOOdTeTj1IKoOvUiiqFXMZR64xugwUjckVnbaGO89tmObYf5CVnpkQtNVHmw
         Jb8vuR9ij75NkmYZg2E4xBKpGOK2CbCXVUfL1XNmklNSm3YJM1b9B9v1iw2tt3AwwO49
         GP9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=d5pOT3SS8GFUvw9tK9ZTD0A+EuwU3T/+PvG6eRi3qxE=;
        b=t8mLxLtrgXTCNCdn6IVP8Co6lOswJJ+rJClz4R1iU7s7QQf6TAz9teOMY8b+aBQ7Aq
         efRaHSZsMPeo8ddoVQvrxoXJv7193aKMij0Gsiq4H+LkGAjjS3O1QlYU7g/0ckyyAfdj
         ja+LPKGAQ2MgMEx+3dXT+Jv1s27n93cob2DGiGP+1zvPQVShfC4IqRpk1KA4sQaNQLIk
         wKqnqQZhJM00sTKLmUNboBbLAxqrxIcXFMEObxZGAlLKVdJ/y59TqhHHWc+dD2mdqbyG
         rN8Ed6hH9Io7TFdfcqJCf5uSg69U5B4+Mr4udXqlBVXUoMxOIQOfr4n26IDT4yeCBUZJ
         ireQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LpPZBL7I;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d5pOT3SS8GFUvw9tK9ZTD0A+EuwU3T/+PvG6eRi3qxE=;
        b=joseWmwwBwtevKXpU3tsmLve2BUClZIFGJ/+UKRzcSihnWCLyNL0xEoEonE7ohQkV3
         GN2P25Y77KUPvcmaO7A6QTDVlZy5ka4G6M/9zqO4hk2xhKUG3vdTuWItTlnAs4jPEBJG
         aAXS3gmGCAJKs/18wf0pEPrRDCRCUstojRuWBMHOI5WFEXsKLVCzwhj0c9GoDNmx2xAO
         6CboHh+xHXRk/pM2trszCN54Xn0xuN/KUF8Qg28kmnXVUsex95Ntrd4gBMhVTDgz7PBG
         nX+gsRZinm/hkvGTyDIQAM4OGQbgYTuLsBEJz7UoZkLp4DitqFhuBNjBEUBHfaYuI+Ca
         jjhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d5pOT3SS8GFUvw9tK9ZTD0A+EuwU3T/+PvG6eRi3qxE=;
        b=K2sIIytM9n5NMyt1kYH8kJti0ogVDtbvQHQ1YO/CNkvEFjdd/s3rXQqMemC4CmyNf1
         nIC5MO5VJgpvG7rn5jIqrOOoVG2UhYZN9h9B/MCyfTKKGzO7Yvz5OUo6U8Bp8kEW4Jt+
         QfROVBH4xdgtiKot060iJUJ/AMpcXxoOonndQy7LeFtL1PrOS2/cqpaDcNwhlntqn0A8
         JFJChdSHijcZIPpbFGOXGZydXkch/xf0zONgtjY1QilaT9C9SKPKCRXt+ykxpeqRHCU1
         4R0B6J3jGhJHE6oevYo8I6NhGl/wEDPlx6H+jGno0EvpcoqQsIbAzdVs69bcaiisxFQf
         3+jg==
X-Gm-Message-State: AOAM533R2ZHyro8dIO8naw3s+HRuc1yA4zyM5SyLGvITFU+JGK4nApbd
	CDwmSo048JugZJwva3dtIx4=
X-Google-Smtp-Source: ABdhPJxlgJ3EyklgpvtZgqC+VKYGkP0MKhxvfoUrdUuHe3hNzF7Da2QXYipHwURFJjZulQAEcKXtBw==
X-Received: by 2002:a9d:b89:: with SMTP id 9mr8556068oth.143.1611769388416;
        Wed, 27 Jan 2021 09:43:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d755:: with SMTP id o82ls679825oig.2.gmail; Wed, 27 Jan
 2021 09:43:08 -0800 (PST)
X-Received: by 2002:aca:ac12:: with SMTP id v18mr3998000oie.14.1611769387919;
        Wed, 27 Jan 2021 09:43:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611769387; cv=none;
        d=google.com; s=arc-20160816;
        b=AKwzK3OPv5Kc+qxhBCayrWkyZUkBDV5jXQHQklRZ3bcMm2bSQat4o0UJcqHdxya+Kb
         uOSjiqgexTqSBtZUFWO/ht2Aqs38zoOi513MqOkiMEQnEWZwbs2m1ZabpGyB4PH5ZrZP
         RUhDvM1cOOp71KWCjLjodvlDqDlT7n74ezvOHdC5ey5Z8pa3QbKuX8NHC+ThLkJoYynW
         FExQPEOlqUImlQTZBWMwTbDAouct9MCR18qzD1RwpPi6EfLFwmDwO+zi64E3S0GXhGMk
         He+iLrEOxZMeDl+7rlLApJWp/CZuL4oyJklwO6tOv2ukLEdYB23kU3LJJ9k2ebbUTTuP
         QOKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zlwiY5SxMJVOztEip+vRdaCeKk5Mm+nlE5fqo+Zb0FA=;
        b=Kiibxc+RrcijdgcOt0fNp+CMKaYu9egEsmWEooul0Djq85mbL6Fzhn3YjmM8mhijzL
         tCr4fcExXZACup6Vh2PTiM8RCdq36IWibyh1AZw0+p8qEWimINimiylyzQMRot1q1wV3
         rvKja1pV7OfOVTO5k1WVs6j0lUaIxS0CNymk5o5B+P2qoxNQtRjwflVYKuBM3VWtO9GF
         OUEVTAUROdV54vVDjOjPDVPx5QdnnzwKVByatK15naG1/tR9xRXw10PBW3tSYxr2gJn5
         tTSt35YDgAbb0RJS+wFoADrn3j4P/AP3AzWB5TFJTlPXVASZ8gyuUQuJdHIMKH2eJf3i
         d5PQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LpPZBL7I;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id k4si147608oib.1.2021.01.27.09.43.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 09:43:07 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Received: by mail-pf1-x42d.google.com with SMTP id w14so1667913pfi.2
        for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 09:43:07 -0800 (PST)
X-Received: by 2002:a63:7e10:: with SMTP id z16mr12444711pgc.263.1611769387089;
 Wed, 27 Jan 2021 09:43:07 -0800 (PST)
MIME-Version: 1.0
References: <20210125085622.2322-1-candlesea@gmail.com> <97d1f36a3b534b7fbd3790a0277ccaf5@AcuMS.aculab.com>
 <CAPnx3XPRnpPQyW7UO_TTmQrHwitDw+_i3ESVkaGq+JyiY9Pu0w@mail.gmail.com>
 <CAKwvOdnH8kXt+jAutjqsL_5H5PzswLGEZOieaGru2SDn13pj+w@mail.gmail.com> <9b48470af3b841e4bd8ba15a4ee5e745@AcuMS.aculab.com>
In-Reply-To: <9b48470af3b841e4bd8ba15a4ee5e745@AcuMS.aculab.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 27 Jan 2021 09:42:55 -0800
Message-ID: <CAKwvOd=Zx-uQxjRBPUitq7wp8OS06Vf6P09BXYmCt07sfZ_Prw@mail.gmail.com>
Subject: Re: [PATCH] lkdtm: fix memory copy size for WRITE_KERN
To: David Laight <David.Laight@aculab.com>
Cc: Candle Sun <candlesea@gmail.com>, "keescook@chromium.org" <keescook@chromium.org>, 
	"arnd@arndb.de" <arnd@arndb.de>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, 
	"natechancellor@gmail.com" <natechancellor@gmail.com>, "candle.sun@unisoc.com" <candle.sun@unisoc.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LpPZBL7I;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42d
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

On Tue, Jan 26, 2021 at 2:53 PM David Laight <David.Laight@aculab.com> wrote:
>
> From: Nick Desaulniers
> > Sent: 26 January 2021 18:40
> >
> > On Tue, Jan 26, 2021 at 6:13 AM Candle Sun <candlesea@gmail.com> wrote:
> > >
> > > On Mon, Jan 25, 2021 at 6:37 PM David Laight <David.Laight@aculab.com> wrote:
> > > >
> > > > From: Candle Sun
> > > > > Sent: 25 January 2021 08:56
> > > > >
> > > > > From: Candle Sun <candle.sun@unisoc.com>
> > > > >
> > > > > Though do_overwritten() follows do_nothing() in source code, the final
> > > > > memory address order is determined by compiler. We can't always assume
> > > > > address of do_overwritten() is bigger than do_nothing(). At least the
> > > > > Clang we are using places do_overwritten() before do_nothing() in the
> > > > > object. This causes the copy size in lkdtm_WRITE_KERN() is *really*
> > > > > big and WRITE_KERN test on ARM32 arch will fail.
> > > > >
> > > > > Compare the address order before doing the subtraction.
> > > >
> > > > It isn't clear that helps.
> > > > Compile with -ffunction-sections and/or do LTO an there
> > > > is no reason at all why the functions should be together.
> > > >
> > > > Even without that lkdtm_WRITE_KERN() could easily be between them.
> > > >
> > > > You need to get the size of the 'empty function' from the
> > > > symbol table.
> > > >
> > > >         David
> > >
> > > Thanks David.
> > >
> > > I think using abs() by Nick's advice would be better. But could you
> > > point out which kernel function can get function size?
> >
> > The Elf symbol table should contain this info, IIUC.
> >
> > Given a string literal of a symbol (such as a function identifier),
> > kallsyms_lookup_name() can be used to return its address.
> >
> > From there we'd want to fetch the Elf_Sym for the address which should
> > contain a st_size field which I think corresponds to the size in bytes
> > of the function.  (At least, from playing with `llvm-readelf -s`)
> > Probably would want to validate it's an STT_FUNC symbol type, too.  We
> > basically want something like kexec_purgatory_find_symbol(), but that
> > knows about the entire kernel image, and not the purgatory image used
> > during kexec.  I don't see any such function currently in the
> > kernel...but it's a large codebase to search through.
>
> The alternative is to get the linker script to define a specific
> constant to the size of the function.
> You can then link against it (by using it as the address of a symbol).

Or use __attribute__((__section())) to place the code we need to
measure in a custom section, then in the linker script define symbols
that bound the section then place it in .text.  That pattern is used
throughout the kernel.  But I suspect this is overkill for this
module.

A constant would depend on the arch.

>
> It may be easier to use an asm file for the 'return 0' code.
> I'm guessing there are things in the static branch area
> that could be used.
>
>         David
>
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DZx-uQxjRBPUitq7wp8OS06Vf6P09BXYmCt07sfZ_Prw%40mail.gmail.com.
