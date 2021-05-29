Return-Path: <clang-built-linux+bncBCT4VV5O2QKBBXPFY6CQMGQER5HQ4NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 93616394B02
	for <lists+clang-built-linux@lfdr.de>; Sat, 29 May 2021 09:53:02 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id l1-20020a5441010000b02901ecd2ee1861sf2963013oic.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 29 May 2021 00:53:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622274781; cv=pass;
        d=google.com; s=arc-20160816;
        b=pak4NuBU4hladKWqQhoktA5FycBvjkB8+AIuxMBg0me5VWUHIJGPzaYsVLfS0IUTTh
         inijqNle4Zn2CrwHaXoJqjVmQC3ApaSdZHm6pxkYVsuG8CVpV5C9vap9X7DI4JjALtkq
         GqlC6OToSFl3Xf5d2YSvBo1qgOdFwtuo7+Sdi3aJIOLEbMEYDcuxYpII7xZ5h5JRC0aj
         jWVRwSBWFNq3KJW4QAkbWuG9CjzM4kPDkbP6RDXUzo9bp0ANkDtdP8/KPypsXAX8egrc
         rrxdSgNxzqXgD7UmLf/x389yCoAV253zwDtNX43EITyxPzVojIL9tZLBHHXN/OY9+4ys
         ih3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=AavL4A/1oEgKbgYbH5z1Xemxo9CTkC+tFGEmwSAYyAE=;
        b=shLCQ7Jez4WA27fRWAT5T6rVNQsRlwziNng0fMGKeWO4xgUAaQ0RM1wZUUf6IOz5NH
         mYxbmnEEXHNo9ZKA+MZ8Ehl24eEl4aAreTWCkHLMTIy+na6AsAKgM/CNUdbTKYEK051O
         7+rTmjzDrtmiaeTW7oSNzlq9nZFmKJaZpn8LJClkQToKBWrEFxph8or3LpQY66qV1h14
         MnISv11/LXIFLpSQUV+pEBCVqv54enlYpDEmY9ApgCmr9glWVT2afzOcGFoJrviN+CZr
         GPrwYMPk7KnPLYFskoMB8eKyMElk88eK9huQJVeUNvSO9SgqRU7YMVfztBAANGU/eN1d
         y43A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kKyfrbsC;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AavL4A/1oEgKbgYbH5z1Xemxo9CTkC+tFGEmwSAYyAE=;
        b=hcxTsshrM5zLsTREVn42CWDTcDQBFK82wMsh/i7wm+yhCTQCP6zSGawvuy/gkDKxuq
         /iR6D8pa/bTeuiTXJkA8EPA0UrAiQGQnwwTqtys5kudD5hwaWLo9Cjd9v9nUCsKnmLKq
         EJ7s0rh0EVavx4U1xTpag44lciKZ1ykkKrJUqflvDHh/qpod09MwwonkG0AZTpbMcu5K
         zW7GLsC+fVaurFeK7XJiP6AAb2WRexmPjy/dtV5CMXU3Il1f2tM35wJg3M7xbJxmducX
         5WnEvxBrTZPZxr7hCm3ahVOPUL9QXJg8gwHFSHq5kRmR+gHO7HEX8Ot032PiAR5BKb7Q
         KzGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AavL4A/1oEgKbgYbH5z1Xemxo9CTkC+tFGEmwSAYyAE=;
        b=Xvvf0uNoWpcMVUEsgqqJjI3QBNeTdhdJU09GNWLLyTXKpk0/pECDxBL4dJ532LbiMY
         xksrCKNqyIPwRT16Gi1xAV4pOuVgvxuL052aHtFUh5hVs1nCbmhQed5TkKshVOdKauM5
         EuxyXXt6CVlsLosFzWknpefFdgYZ95fZ6pd0O2jPlm6E1I6ebO1EEBWRhd0AMQ850L+I
         r4pbITclK8z/1KMs87ARjhH8+v4P3nztYpdtvwSgu6ajINLSk2e95lCXC6FClb72OdRT
         Q0HHCHnaqrIqaXqxwRW5SpJJcmCsnplqaDzIpLRVIy8dJqqFy8r9nfdobtKOBABm/HV9
         FnXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AavL4A/1oEgKbgYbH5z1Xemxo9CTkC+tFGEmwSAYyAE=;
        b=fnqcXLSLgk6jaLhg3hijNq4clEaFdq4pbygerKfbt84pFAQGf6wINjoNA09E5DXZqJ
         Y3ZkuIMhAFEOmwQ3dgxtXtlhsPs/tMoxG5Mhm+Q7eETXhEqu8gGoQlzuaPCLV4NEadv2
         7gVB3R8Q28bpzjxhaf4ARPxokemDCP6zzlJfu+isBE0yLAEmMgFbCuIItOz0HyWx5x3n
         +ER/WJS7faTNFl/llFSOJEH/TwNO5CrUaxtJFWuZLdcaA+vKsEMgaxvPRNipk5L0GDmu
         EGBsFGsLMoSy+yOivHqsTXdK4seJqqWEeuQHRJ5IMW2so4K/qBra0ElO5J5XxXcgGEGl
         /kBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LDEHI0XaX+M9jFaZQXVXgHKc4xdRa5T+iw/X+LdEYLAqq1b5R
	2eGXpN/tGe9WR2KgbJSD/t0=
X-Google-Smtp-Source: ABdhPJx6hrFnDqnR1AgbsRxjmerkd5j9YUWTFNIOnxvl6+ZJorZDnTwXNaxAiZGzAEcvpIjucHMazA==
X-Received: by 2002:a05:6808:2081:: with SMTP id s1mr8732357oiw.15.1622274781652;
        Sat, 29 May 2021 00:53:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f24:: with SMTP id e4ls300004oth.4.gmail; Sat, 29
 May 2021 00:53:01 -0700 (PDT)
X-Received: by 2002:a9d:3ee:: with SMTP id f101mr9991158otf.343.1622274781320;
        Sat, 29 May 2021 00:53:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622274781; cv=none;
        d=google.com; s=arc-20160816;
        b=yIaI48hqtO0e1euRU69TT0+mAtCTa+oxTFR011pvINByrJkt8dR+zeCZU7uZsJLCNa
         utO01hKEm+I43yJfT8I25yRxdOcBl9AytwkWaQ2+coWhX8oemhYSQ91UX/e9nUJm069C
         wj5oiMv3n3sWAEJsCaUEPSgqqIeaF4YYYeAyu8uluH3NIAmPSwewR+v1ZVMkyZjg94UO
         cSPZ1wsNcJ8WMqaj+USEEhVSx88lSYug1Or/3eGuC63okXWVw4N8KTt+gTC3znbU6yu5
         XTI1Xr6GGw5ElO+agM4aBp6rI0KO9jFlcbZTy4iBbJjGLwDRfZafBezbN2rwLVfFOsKK
         GEVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=9VngEDZWf8zqYQ8lObuf/Fz5NYel1p8aArrZZ5hl1co=;
        b=syAyph1mzgWF6Vx3AQiMJQW6ZxrDmkC1jBzTsC//tI0WYnJSElhlkh26BwlfoNvSZ8
         7ddnBxQzQG5TnMesD0wvyX/kkyaDK+vLJb3bD8jNgOulZMB0FcnwE1bwEB6+WZpusxAM
         FMXO6QH5ky5Wm0FHb9QuQIrysu/JouBpIyG0iL78O6/qhcIsZA7lDqKWSE77rXNV2rOM
         OsPtjPWSVEt4h63lCz5KPX2HhZzwhBKoKygvrgQ2G3IIYQUX01ATs9ISh7oTN1kbaaOw
         qH3aG20WHNh+6U7oMk6oixRZ/j0JK6+Oh3M+fGu8UXSIfRwqQksTtz7/0Of4WEgxLGat
         fxsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kKyfrbsC;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id t15si385008oiw.4.2021.05.29.00.53.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 May 2021 00:53:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id g24so3816922pji.4
        for <clang-built-linux@googlegroups.com>; Sat, 29 May 2021 00:53:01 -0700 (PDT)
X-Received: by 2002:a17:902:8c82:b029:fc:e4ed:4958 with SMTP id
 t2-20020a1709028c82b02900fce4ed4958mr11595619plo.0.1622274780671; Sat, 29 May
 2021 00:53:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210514135927.2926482-1-arnd@kernel.org> <7afc367b-8103-9d48-1bfe-d505d86553b9@kernel.org>
 <20210516103628.2cf899a0@jic23-huawei> <644a711e4d2639a23bfc50dffa180ad184a4acb1.camel@perches.com>
 <CAHp75Vc72vMbj311P3xnxh6ExxzD1=enoETj6wY8dHn+xBJ4+w@mail.gmail.com>
 <fc3afc8e74ee9eda0b4eaff9a4d9ad32f1c461c4.camel@perches.com>
 <CAHp75VeQdFoJrPhXU2fYdrhLUwvM4NEoPn=Z4WBPkhOa4xK+ig@mail.gmail.com> <cfdbe504c7ed3964bef22c551f0c78c048ce3d2d.camel@perches.com>
In-Reply-To: <cfdbe504c7ed3964bef22c551f0c78c048ce3d2d.camel@perches.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 29 May 2021 10:52:44 +0300
Message-ID: <CAHp75Vf2ZO-5XEQtzdN2ABLLC3KLDmQxGps2uD1z06Rs7L2z=w@mail.gmail.com>
Subject: Re: [PATCH] iio: si1133: fix format string warnings
To: Joe Perches <joe@perches.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Arnd Bergmann <arnd@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	=?UTF-8?Q?Maxime_Roussin=2DB=C3=A9langer?= <maxime.roussinbelanger@gmail.com>, 
	Jean-Francois Dagenais <jeff.dagenais@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Lars-Peter Clausen <lars@metafoo.de>, Alexandru Ardelean <alexandru.ardelean@analog.com>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kKyfrbsC;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
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

On Sat, May 29, 2021 at 12:35 AM Joe Perches <joe@perches.com> wrote:
> On Sat, 2021-05-29 at 00:16 +0300, Andy Shevchenko wrote:
> > On Saturday, May 29, 2021, Joe Perches <joe@perches.com> wrote:

...

> > > > > Likely these should be 0x%02x
> > > >
> > > > What=E2=80=99s the difference (except printing 0)?
> > >
> > > (assuming the argument is unsigned char/u8)
> > >
> > > %#02x will always emit more than the specified length (3 or 4 chars)
> > > values < 16 are 0x<hexdigit>, values >=3D 16 are 0x<hexdigit><hexdigi=
t>
> >
> > 0 will be 0, btw.
>
> Hey Andy.  Right.
>
> > > 0x%02x will always emit 4 chars
> >
> > *Minimum* or at least 4 characters. There is an upper limit of sizeof(i=
nt)
> > * 2 + 2.
>
> I did write assuming the argument is unsigned char/u8.
> For the general unsigned int arg case, you are of course correct.

Signed char also.  Basically for all signed types and unsigned int cases.

--=20
With Best Regards,
Andy Shevchenko

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAHp75Vf2ZO-5XEQtzdN2ABLLC3KLDmQxGps2uD1z06Rs7L2z%3Dw%40m=
ail.gmail.com.
