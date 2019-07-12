Return-Path: <clang-built-linux+bncBDYJPJO25UGBBI7TUPUQKGQEYYWBXCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 1327567627
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 23:20:37 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id u21sf6250289pfn.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 14:20:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562966435; cv=pass;
        d=google.com; s=arc-20160816;
        b=t1LK/klxr9XNU+gkIZN/pfrNHC96cKPXq7/whBMxaEPGOyOg6ris9Gk9TE8EQoBqfP
         SdVGT/Faw3tvOBBK3kmpm1uqxo2xvnShKNWLqhKeyRX/scX914FAoFoZY5Mrmk84VrA1
         exg0FOEIu2gmVk9OXeKGKfxCOpnsxLr/+YktBncpSJAszrbFhxyELqga8mZJP8g7d7PH
         6Uim3/oqJCrc9bCy/9Vpya5tXprzfqfUOQ6JcypAWJ35uwKTHQU5sCxUFNaRCZgIX4t8
         RFOrHtZ7HYb978lwCdHNccJGYGAm0CzVsZ7XSwrqzFUDroGcDa8tDeW3n/d/1IJhRB9s
         m5gA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=a9GlzPhAVnR/+gbhopTTjfqyiNZT8hRSbmNett51rLo=;
        b=iXD59+POYtiwSQOMmmyschK/30Q/AB2KVqrAQqINNmzz7tBhNba8SI/v4BGFSGISVw
         smKlUjo1aVnlw17SfyvkxWdBOMIumBSrWctpsO6VqXI8XE7ELvH8infpJD+udtbujyIV
         4M0lPkgYT/yD+BA8DGErGf+mDyM49Or6vuLVb/Oe3ZybvJ4NAZoGcjQxITCH/hP4QVnL
         89vxtDCNrQfCJ0gAqssWUjGGTlh+7VCWTdnImuSNrY2hw7KSRlWm/HPiITV6DGWgAswt
         Qw9TXsvsUwdxxAvH77wLQRxBHz5KukgiQo05M2qu5+zl936u1Kj/Ik9cOmgj76yDKwI0
         Knog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SO1+NrHC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a9GlzPhAVnR/+gbhopTTjfqyiNZT8hRSbmNett51rLo=;
        b=GlMnNeOh2R5jh9GMAtjQqbrHcIu7a2nQFiKlBxjya0AVsA9hj682nPmaV2KqCJffi9
         R7EDProbyQrg4p1UXNUasvg2NukYEkd21js2aAHEcSBcsgX+A4pe+4wqkMruySbrbg8F
         SVTgIw9ei0Ur3pa8Ld48UbEwlTSD8rN1PRAlA1ukT1zihSKqhrtWITawGXLP6W4tIm3V
         ui0snjusbf6ZOCK2llJNCFmBjbjT4RbWL0vTSZmY+X8Y+UVMoBkvxOgH2kNvyYmqPZAe
         +UdKTeA8J89FGMPFnK8va5NGJ1cklJpmBLOaaPe34uDxFam0K1JpdkK3KlkBIq4EqUcJ
         G+zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a9GlzPhAVnR/+gbhopTTjfqyiNZT8hRSbmNett51rLo=;
        b=dMiqnHZeODtAYYqpEst2I4t6qV9cRqfFN0f7BIVC5vLV5QER5n0tWb5DHh0j7TeNIA
         kIIvAkRJlJ1kBXhmDlMQqVfTMxfvQV74JRi6BQ3swWfJ5nVEMntspb46SH3CcdGD6hFe
         /bDG68/yLRunZ01rEu+Pw/6N4ExG3eUehGq5iUzq/DyVT5Xn/ngsUY6KJmghjYN7NQjH
         ihGWGN5LGAEeoQJkkSKUHZP8rJyKni/qgfibBYrkAeHhD4UmB0yLFnmPueg9DGy3FPRF
         aYEYO2nlK8yYBAVwCFz36FaOhuPPRLRZzSavomAmZfSoEg5W1WHu8YzBy8B66nER3/wN
         9KIA==
X-Gm-Message-State: APjAAAXiy1JRKGyx4KzLC4bl5Y/PgfbCWgBADd8v6IkXNpLIHQUmIT4H
	4tt6g2HYW9uAGYm13Yz09Uw=
X-Google-Smtp-Source: APXvYqwURqr15xc5dUBDNWMoRz+1VlGDJUQUS/pfEnoSB0VmdegbXlDxxN/GdNhcA5ldG5jMu/7GHQ==
X-Received: by 2002:a17:90a:214e:: with SMTP id a72mr14971162pje.0.1562966435538;
        Fri, 12 Jul 2019 14:20:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2f02:: with SMTP id v2ls1751203pfv.0.gmail; Fri, 12 Jul
 2019 14:20:35 -0700 (PDT)
X-Received: by 2002:a63:e948:: with SMTP id q8mr12941533pgj.93.1562966435113;
        Fri, 12 Jul 2019 14:20:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562966435; cv=none;
        d=google.com; s=arc-20160816;
        b=zplN7wTx57ZvsBKNa+xKermURF93HozRzpjELuym1OxBX+REY6xnmcebu5CXhFdZM+
         F3NkPyDTSCV+FVkOTJsCowwAAjPPtbyC8n2Pt3QSKxPmK/VEC+0JxDbvQf1TEklQeLx8
         ixdfWyjFFHcRYOxAlo1Iaj7sqDVWjtktXXUc14eKmFT7Ku3tEhrkftWMygm+H5fZ5Yhn
         6X27e34TC7E+B03ruFKSd0o5qZIWXqICNiWsjmuVa2D6VBuaLQJpK75i28v7w3rLvbfk
         MbFgGINaXJk7IjExsbBSidlZCsEzhXT8Qt4kiQgKTFTkmxZj0BzvYQ50Vnx46XP4Wlll
         9R1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=D3nQ6WqoKV1cJLu5kutjgFzb55g8DMnxDsBnzM+IJlk=;
        b=u2Jk1ch22z1My6bk2LWIZfkiO/pmEcp8FzOGOEezpgF3calorJYoBHkAvyNj+7OX9c
         x9kzCIcLNns65vfGlizeWty8FTfYDtsmH0BhpPQg3YbH+fivld7m+POmOyA4NOfkxLig
         VX2y7ysugfRxt+CaPE9t+D9QF37TiW9YzaAy3+C3vQu0bJFbJSloGPPt1mpmaaOmSV2c
         i3ajVqPr0x7S2ABXEJnvl27kG/5RrT8qwthqsc1oL7Ioa2u5+CsDSLj62U/qZV8BhihT
         K4QBW974OLOAGuP+BInOl9qAKe/btxZwf/+I0vl1/PzTKhmn2OyZ5HoSZEA7ZlI6R5p0
         GdEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SO1+NrHC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id y186si301532pfy.1.2019.07.12.14.20.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 14:20:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id r1so4816525pfq.12
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 14:20:35 -0700 (PDT)
X-Received: by 2002:a65:5687:: with SMTP id v7mr13607513pgs.263.1562966434285;
 Fri, 12 Jul 2019 14:20:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190712090740.340186-1-arnd@arndb.de>
In-Reply-To: <20190712090740.340186-1-arnd@arndb.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 12 Jul 2019 14:20:23 -0700
Message-ID: <CAKwvOdk2piniLx8x0QyvYseyhfXEWFt4kYaSnzNH1d_=LBTzLw@mail.gmail.com>
Subject: Re: [PATCH] lib/mpi: fix building with 32-bit x86
To: Arnd Bergmann <arnd@arndb.de>
Cc: Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Joel Stanley <joel@jms.id.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SO1+NrHC;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Fri, Jul 12, 2019 at 2:07 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> The mpi library contains some rather old inline assembly statements
> that produce a lot of warnings for 32-bit x86, such as:
>
> lib/mpi/mpih-div.c:76:16: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions

I feel like I'm having flashbacks here:
https://lore.kernel.org/linuxppc-dev/CAKwvOd=f9OOR=i10q_auQuQCVH657neQtjt51UA176p_PMOHVw@mail.gmail.com/
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
(Thanks for the patch!)

>                                 udiv_qrnnd(qp[i], n1, n1, np[i], d);
>                                 ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
> lib/mpi/longlong.h:423:20: note: expanded from macro 'udiv_qrnnd'
>         : "=a" ((USItype)(q)), \
>                 ~~~~~~~~~~^~
>
> There is no point in doing a type cast for the output of an inline assembler
> statement, so just remove the cast here, as we have done for other architectures
> in the past.
>
> See-also: dea632cadd12 ("lib/mpi: fix build with clang")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  lib/mpi/longlong.h | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/lib/mpi/longlong.h b/lib/mpi/longlong.h
> index 08c60d10747f..3bb6260d8f42 100644
> --- a/lib/mpi/longlong.h
> +++ b/lib/mpi/longlong.h
> @@ -397,8 +397,8 @@ do { \
>  #define add_ssaaaa(sh, sl, ah, al, bh, bl) \
>         __asm__ ("addl %5,%1\n" \
>            "adcl %3,%0" \
> -       : "=r" ((USItype)(sh)), \
> -            "=&r" ((USItype)(sl)) \
> +       : "=r" (sh), \
> +            "=&r" (sl) \
>         : "%0" ((USItype)(ah)), \
>              "g" ((USItype)(bh)), \
>              "%1" ((USItype)(al)), \
> @@ -406,22 +406,22 @@ do { \
>  #define sub_ddmmss(sh, sl, ah, al, bh, bl) \
>         __asm__ ("subl %5,%1\n" \
>            "sbbl %3,%0" \
> -       : "=r" ((USItype)(sh)), \
> -            "=&r" ((USItype)(sl)) \
> +       : "=r" (sh), \
> +            "=&r" (sl) \
>         : "0" ((USItype)(ah)), \
>              "g" ((USItype)(bh)), \
>              "1" ((USItype)(al)), \
>              "g" ((USItype)(bl)))
>  #define umul_ppmm(w1, w0, u, v) \
>         __asm__ ("mull %3" \
> -       : "=a" ((USItype)(w0)), \
> -            "=d" ((USItype)(w1)) \
> +       : "=a" (w0), \
> +            "=d" (w1) \
>         : "%0" ((USItype)(u)), \
>              "rm" ((USItype)(v)))
>  #define udiv_qrnnd(q, r, n1, n0, d) \
>         __asm__ ("divl %4" \
> -       : "=a" ((USItype)(q)), \
> -            "=d" ((USItype)(r)) \
> +       : "=a" (q), \
> +            "=d" (r) \

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk2piniLx8x0QyvYseyhfXEWFt4kYaSnzNH1d_%3DLBTzLw%40mail.gmail.com.
