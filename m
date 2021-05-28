Return-Path: <clang-built-linux+bncBDY3NC743AGBBMNYYWCQMGQE7T2KXRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id F0503394826
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 23:10:10 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id 30-20020a630a1e0000b029021a63d9d4cdsf2650784pgk.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 14:10:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622236209; cv=pass;
        d=google.com; s=arc-20160816;
        b=BeXnN06wLsQ6c6ySFi7Fog0CCg3XaYXQK1GNTZ3M8GA+ep00THs7FSzxwlEJKzB+M6
         ouDFRH7rtXdep5wi7paiHnNWoYe4LPhjXsB7mh82iEX87MGsrOwujNiA30HfS1reske5
         Nesnl0cCXRGAAPlJ7m2RnKeVXkKGZUJFvdKPg+sWfShavDFCXRd3jIph7exzogXZfr2x
         A0vNgo7gnVPdSwOR2h9YpqHYyL4F+uFYiHKRLbRHCVzvdfNdMEE+vmdHt5OJiwmLN4uR
         m61i4nTVxAEZVZeJTcIt4hbXRIiPtIfa3sCFE14NjbQrf+ziif2b8sWnNBYeO44z4qx9
         hzGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=GxKRPfFUtB0Whrvbix4Oetc+xU61Npot50IsGfbEMtE=;
        b=lat2Cv3uPhT1sq1YDi3/Yc35f9LxawtLXMXLnqSgonwRdw8acKX5HNqtOceG3RlpCR
         eZttA7eFC9ty9GmvRYh3gDGZA8fbpkx1oyKfNTGBWp4f5p9HhtTX/nkh1ArGI/O2MsQi
         2+VXllNYY5HmLF61/AbOCl6v1Zmr2sZl+sM6TFoWlXjP5UDV/EHp1BzmNfrC+4MYJxm9
         6C6VnIEJ4uoLayKiQLX5RFNTT5ONfM+dKbdICEuRc2OwHDx0MrAOdANUySUBsbQtYK70
         sin59ouII4ir9mdwiq+9JhOCENUTks21sGN3pOaHclroBwOi1uq8mkhvYR9lB/cCCA9K
         18cQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.150 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GxKRPfFUtB0Whrvbix4Oetc+xU61Npot50IsGfbEMtE=;
        b=QL8eH7e2HHSE1NthRjxSuTJXyd2X6jiOvi3MButAE+5cg083e9/3ZUPVpoxRfMOb82
         vwmWk+rgyfq5L8fEBqnuyhRX3AxaVkwUP4r3PJMOlhj+ouLQLzdmWf9FkpGfhezz1QA+
         pRCCJlQEpAA9pWPZcvPQPqNB0ayVsrIQEQnIQVJZXuZkPJxxvIUz1Qrmix75sJHdP2Cm
         sOOK5/Uyph94kS2tcuD/w1b9JeSInM+iercyBiJ/deGMWWuN66UU2sS/kRZlXbX9agkn
         V2vlMQfQ/HSmRI03ZzUCkp/F3PFH0Kwhxs2yADBOFWWtdIvLUlt2+LwggH/A5+EggbmH
         IbRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GxKRPfFUtB0Whrvbix4Oetc+xU61Npot50IsGfbEMtE=;
        b=chhERCIYOzF/n8syDGSS6ReV0ibaYKxjVXhwE/wxwLBzSnOc57sG8MBRCLhYEuvBzb
         tNQRXIey7VKD0eWVpPJhuqDIH52aUSds2Ehc5+NDAB4t8hVDZC99Za4e9xyUEFQX2sC4
         HDMvEByuNij1xb1Dl/yC1r9MXVcvE58xH8uOU2vlDc2UfZLdUmiXhvHm+PO5QISxyer6
         GxU34EbpbUoqyuODEot6hbsXbI2J5pTuInXgcAJNKIirRGUbS6GVBT2fiVecynjPRtDC
         uF/+5YYCgnoPz6wvoeIqiwqtv6WlvvhTxhl9GlwL/894cMLEkhAgvpFFYG7F+LN9YQ0l
         FQ+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331PEUgTtBgW7aZzprIuFzrXKDJCF91PFII3V01SvOxrUNoRO1v
	C2iKdHWKWYej8GJNT+r34UY=
X-Google-Smtp-Source: ABdhPJz1Yu83J0Oew81FeIAKYhpiRQWzPy6kz3td3CSVbnBQanY1r/4cpwl4H6ZXEpZ7Ozi5Ffj31w==
X-Received: by 2002:a17:90a:e388:: with SMTP id b8mr6565932pjz.128.1622236209647;
        Fri, 28 May 2021 14:10:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5013:: with SMTP id e19ls3744428pgb.2.gmail; Fri, 28 May
 2021 14:10:09 -0700 (PDT)
X-Received: by 2002:a63:6c08:: with SMTP id h8mr10835150pgc.226.1622236209107;
        Fri, 28 May 2021 14:10:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622236209; cv=none;
        d=google.com; s=arc-20160816;
        b=h8zx9EfPi9YEgBbXLReFLH8QA1/ruxqNDx1wgk0h8O3zCmVKnooWnyyD8hqqrpXJ2k
         9UWe7AS6ppKBSZARJudngJPmu9e+OZEiA+dCKlZ3+txq9nWPNxZ86OF3WXZ4PxKeNrgz
         Yw8h0qqAMLvlRaB2vZg14CJrnHM+8u+PunDxAVc2eqYx55ZpFbKzz1diwlzZlnt9am7d
         1vLs26WTJcgJFaiwJfFL5/zsCZ4DoQcHfi2R2635Y0p+mMc17ofSIDbP8OZcnRsAFrwH
         Vq3OU073aVfoRD5Tu5ZZfSzEMRRe7phmOjyJLpNGjzYEPUocnRTBeNG3hb2ZD+BfYLFo
         S/Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=OvJNJ7Sx8yHc2xCji7KEYVjRv5OoIu+RxTe4lv2pNvg=;
        b=wSWJQivJXxex2FSR0bWGDP2J33FMqhk8/ypfVap1giSmlwzXYPdUyG2b7A0g0UMy4S
         BqPyuR7kScLe/d2lQ/936Wl72BW2wq/5ILgQTzwT71yLQ0H3mArypUhMTBdW3d0sVjtH
         oLO8I/Uf+VLZHaDrXgTWlJyhQVWHpMYVFfWq7rxYlPDURy3avIEVI3o8/R6URAWlZDX9
         No/8mNsd3wpKXvvOnW5JEhnjxes3sUjPkAZbY75x3Kvkr8Q7aMEILKhaH5FzsSI/NvbX
         cjKUkaVbDTFqL4cW0PHclcGG/DlF5IeZbq8jkxWAXqma/xblOa7S976vx4I/zcCpjGQs
         Fcsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.150 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0150.hostedemail.com. [216.40.44.150])
        by gmr-mx.google.com with ESMTPS id gt12si715040pjb.3.2021.05.28.14.10.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 May 2021 14:10:08 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.150 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.150;
Received: from omf01.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id BA90A181D337B;
	Fri, 28 May 2021 21:10:07 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf01.hostedemail.com (Postfix) with ESMTPA id 74EA217275;
	Fri, 28 May 2021 21:10:05 +0000 (UTC)
Message-ID: <fc3afc8e74ee9eda0b4eaff9a4d9ad32f1c461c4.camel@perches.com>
Subject: Re: [PATCH] iio: si1133: fix format string warnings
From: Joe Perches <joe@perches.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Nathan Chancellor
 <nathan@kernel.org>,  Arnd Bergmann <arnd@kernel.org>, Nick Desaulniers
 <ndesaulniers@google.com>, Maxime =?ISO-8859-1?Q?Roussin-B=E9langer?=
 <maxime.roussinbelanger@gmail.com>, Jean-Francois Dagenais
 <jeff.dagenais@gmail.com>, Arnd Bergmann <arnd@arndb.de>, Lars-Peter
 Clausen <lars@metafoo.de>, Alexandru Ardelean
 <alexandru.ardelean@analog.com>,  "linux-iio@vger.kernel.org"
 <linux-iio@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
 <clang-built-linux@googlegroups.com>
Date: Fri, 28 May 2021 14:10:04 -0700
In-Reply-To: <CAHp75Vc72vMbj311P3xnxh6ExxzD1=enoETj6wY8dHn+xBJ4+w@mail.gmail.com>
References: <20210514135927.2926482-1-arnd@kernel.org>
	 <7afc367b-8103-9d48-1bfe-d505d86553b9@kernel.org>
	 <20210516103628.2cf899a0@jic23-huawei>
	 <644a711e4d2639a23bfc50dffa180ad184a4acb1.camel@perches.com>
	 <CAHp75Vc72vMbj311P3xnxh6ExxzD1=enoETj6wY8dHn+xBJ4+w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.40
X-Stat-Signature: 5acgrz7aqqahef7j4xfkx1oihty81c8i
X-Rspamd-Server: rspamout04
X-Rspamd-Queue-Id: 74EA217275
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX19u0+cg/CvkDoccaPXMZBb1xXuLYIiXf/A=
X-HE-Tag: 1622236205-755196
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.150 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Fri, 2021-05-28 at 23:59 +0300, Andy Shevchenko wrote:
> On Thursday, May 27, 2021, Joe Perches <joe@perches.com> wrote:
> > On Sun, 2021-05-16 at 10:36 +0100, Jonathan Cameron wrote:
> > > On Fri, 14 May 2021 10:45:02 -0700
> > > Nathan Chancellor <nathan@kernel.org> wrote:
> > > > On 5/14/2021 6:59 AM, Arnd Bergmann wrote:
> > > > > From: Arnd Bergmann <arnd@arndb.de>
> > > > >=20
> > > > > clang complains about multiple instances of printing an integer
> > > > > using the %hhx format string:
> > > > >=20
> > > > > drivers/iio/light/si1133.c:982:4: error: format specifies type
> > 'unsigned char' but the argument has type 'unsigned int' [-Werror,-Wfor=
mat]
> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0part_id, rev_id, mfr_id);
> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0^~~~~~~
> > > > >=20
> > > > > Print them as a normal integer instead, leaving the "#02"
> > > > > length modifier.
> > []
> > > > > diff --git a/drivers/iio/light/si1133.c b/drivers/iio/light/si113=
3.c
> > []
> > > > > @@ -978,11 +978,11 @@ static int si1133_validate_ids(struct iio_d=
ev
> > *iio_dev)
> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
> > > > >=20
> > > > >=20
> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_i=
nfo(&iio_dev->dev,
> > > > > -          "Device ID part %#02hhx rev %#02hhx mfr %#02hhx\n",
> > > > > +          "Device ID part %#02x rev %#02x mfr %#02x\n",
> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0part_id, rev_id, mfr_id)=
;
> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (p=
art_id !=3D SI1133_PART_ID) {
> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_err(&iio_dev->dev,
> > > > > -                 "Part ID mismatch got %#02hhx, expected %#02x\n=
",
> > > > > +                 "Part ID mismatch got %#02x, expected %#02x\n",
> >=20
> > which is almost certainly wrong.
> > the length specification includes the # which is already 2 bytes.
> >=20
> > Likely these should be 0x%02x
>=20
> What=E2=80=99s the difference (except printing 0)?

(assuming the argument is unsigned char/u8)

%#02x will always emit more than the specified length (3 or 4 chars)
values < 16 are 0x<hexdigit>, values >=3D 16 are 0x<hexdigit><hexdigit>

0x%02x will always emit 4 chars

It's very likely the writer didn't know the difference and assumed
that the # did not count in the specified width.


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/fc3afc8e74ee9eda0b4eaff9a4d9ad32f1c461c4.camel%40perches.=
com.
