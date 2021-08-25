Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXHTTGEQMGQEEF4OC6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF293F7B44
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 19:11:57 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id 20-20020aca2814000000b002690d9b60aasf272796oix.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 10:11:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629911516; cv=pass;
        d=google.com; s=arc-20160816;
        b=f9DlnTlOhudv0/A1upgBybLXvy6zHlkHn+sVzYuF5ysW0ZivwxHQzoLjHLKqnFINx4
         tpw/JK9mD4FQEoHuk5o6jgcltnPSsRxhephiT8gRAyGT6cNFW/ilQ04PIpK2ZvvCcxmE
         K6K52x4nGwyWVGp/XIlkWSGAEDkE/wvOUe3EwEabCdod2L2kNHIrPT3HcWFiSuDSy0C2
         og6o8ljPdDXXuXhVFs/nDVga2+XmFArwZOOHNfWOem1P1aSKydJkvHa35iTt+vTHPYft
         0yE5XSaW2Vo5GRdEM0YSxIGwbC6Hm0yS4cI8cAvgJ7cWE+9xy5L78S8o+uRIX/sT+W/E
         at4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=7alE+YJw/XzX9KA+vMMWDYuJiH1R9o2+UgnpPsWrLYY=;
        b=q4L2K/HbtjL8J6Tcf19+cKkCuJ+rRuK3+UOXklcOpLV6zKV4+fShp8zVf8rTtgQkBA
         iTJoM0QC2H9sqMZCPDD1qEx7B1zUvZQp7+QPTN0Ww4ZiqPpcdOHDHSYik20yaGyTs9XF
         AkwsiaydDBHJzWaHFes2T6q3snoEnE1tdN3OT9FZjWEfJQo9uZOsbuanDksDirMOZ71G
         ok7XAGjd1iEGZUnXPN/rlYpATm7CWO2aCI512NG12ng7s+hzyVgs3ZbjAuPoxL/WZOV7
         l0hR8cFjcube2uNFzi+dUSJsNgN7soKgLzkvElrXjvh6Dz/0hshCWG/jXbUnv5B8VCJc
         6aIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PhvdOsPd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::c35 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7alE+YJw/XzX9KA+vMMWDYuJiH1R9o2+UgnpPsWrLYY=;
        b=tOHtC1TuBs3q2cGgAw9aJbEAB6sqdlbk+4fSdDgkDXomQ1TnUpl2UdJhb/rwsnZtYw
         ipzZO8nZz9TNF++9qzfvtVp5vFiDPy7h51FHKCPtj3+I6WTlCENx0g0ZGsR4NgEI6oPF
         DJ9R8ZMRzxgO6OxlzFVRyxgB9/3SqoLSSzzOia2ZnRtmH/krssjfVcRInJ2du6HlFWes
         +45rb0OVXZ9kVHEZPwoF2kTMsy3z2U5AbXYMJh6pSE2TQ1hRmiVWnw+kjaCjNJKL3TwI
         in36d1wG/1f7coWX60YmpQWiOgCFpUIpULYRBJe9V7TqO1bQPX6Y+mHe9niPTZTa6Qo3
         dfmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7alE+YJw/XzX9KA+vMMWDYuJiH1R9o2+UgnpPsWrLYY=;
        b=kljXozwDtn27u+bvcUUUXH2suQ3zR2PzdDTZ8Py9ndaaIzvG02tmf9ni0gi8sDHBKw
         QLQa54PCfmI/ST0yOKOaA8K7TztSXUZmsrCldnwIMlVSknzgZvq+M5+Kyj5j/gCKnANK
         V4cLo/QDmjOrz1udG5DgZd6WGymiMjXkf4C+5PvtwPNdMhdW7tqKBJ+mIMPi7jUjK/4q
         ais7vhrAx+T9Q1FxI3vGyx+045fOkknjxxq2Gbz4GkRSq6R1U2IDIUFKgX1bwKWOSFM2
         LGLJ5HI+sf6yE4/rSxwfix5MR2kXAutytUwMQGpw6CS5hG6fBzGE1g/wVqFeQFQC4Gfo
         OAew==
X-Gm-Message-State: AOAM533alKwhRo7PNA9AuQjZc75yl1oZU567Tiqi0Geib/1WxPFYJZmO
	PcOol64PFMgoVh0UH2oeNaQ=
X-Google-Smtp-Source: ABdhPJx5L5QlyQ+OMx33IRricszysJUJlgCSzv5lfG3op4AgdB/rjvXuveeZe645cgzpqEZ6LagJCw==
X-Received: by 2002:a4a:8d97:: with SMTP id i23mr34680562ook.4.1629911516624;
        Wed, 25 Aug 2021 10:11:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:14d1:: with SMTP id f17ls707395oiw.4.gmail; Wed, 25
 Aug 2021 10:11:56 -0700 (PDT)
X-Received: by 2002:a05:6808:118:: with SMTP id b24mr7933775oie.0.1629911516265;
        Wed, 25 Aug 2021 10:11:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629911516; cv=none;
        d=google.com; s=arc-20160816;
        b=eSxO57dkO3zz4Ytp9TyGPCSzlsUL9xpB4n29XC2KTXfCHtTMrym4V9qDqC6HI2QrWk
         7gy+E+6bg/0fQfX2K4Xg6/mleeXrEIDRMsq79hLpPWC8PuFhtAiUdoYfXXluf1Uq9oUL
         cxbeASByM5zKz+A3JfoTeaI1INeU+Er7xAuUh7giov7bjyFuk1mnJGMrB1R8xpHlMKII
         Fwmg1QqCnx6sVgD6VIXONAYMQrWN30uSWA/cCqhHNzYXbfvoVEHWimu2mnjNgMT6kSvQ
         Eavq/q4MPas0s0FdzxO1WmArYarS2RvlEubkfZq5RyrrayPPqeEDI+4prhZSnsF0iHVF
         +N9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MqpdMi6hO9sy30ttbNbhBiDZr61Z2YSjCeBA2+p4Zyg=;
        b=X3yeGTb8HplbcxAi4UNWMqfNKhAGjmdHp8e4icx//oaYnKkDYW5hSc2ogG2LaWpcep
         3vm7Ub2Sj0AX7+UqMGFOvUIXLXjHWExRhF5IpQl7T8VrPBZJP2zubMcdVWWqwZjvSd2j
         chZmqveFg4MrXpQkaClN9mCKuudJisFt/kheiNVJ5QCL9lhHAizQ7F6kEq70UVQ//Vv1
         kSOEA4WnV1h0EQw4Ov73LJAZbuoRdFsf02rVq8c3K+tx3ya5gy+2WctrIAWU7FeQIYds
         +Fsb6ehzk60zXUz2q3hkyQtm6SwiIZtF6EMIoEKrpHFlcj7T0K7GIJ6A7dKBK27G7nPM
         buaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PhvdOsPd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::c35 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com. [2607:f8b0:4864:20::c35])
        by gmr-mx.google.com with ESMTPS id w16si41184oti.5.2021.08.25.10.11.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 10:11:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::c35 as permitted sender) client-ip=2607:f8b0:4864:20::c35;
Received: by mail-oo1-xc35.google.com with SMTP id o17-20020a4a64110000b0290263e1ba7ff9so34105ooc.2
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 10:11:56 -0700 (PDT)
X-Received: by 2002:a4a:d40a:: with SMTP id n10mr35067991oos.32.1629911515747;
 Wed, 25 Aug 2021 10:11:55 -0700 (PDT)
MIME-Version: 1.0
References: <c59d5d850bf9aab208704182c83086609289cb9c.1629789580.git.paskripkin@gmail.com>
 <202108251911.Vwmzl4rI-lkp@intel.com> <9743e1ee-75f4-6231-427b-8c7f659fb252@gmail.com>
 <20210825125159.GU1931@kadam> <bd50c00e-1814-dc32-36cf-73cf58123201@gmail.com>
 <20210825133432.GW1931@kadam> <c982eea8-3b16-656b-dcb3-1b6e0d3e995d@gmail.com>
In-Reply-To: <c982eea8-3b16-656b-dcb3-1b6e0d3e995d@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 10:11:45 -0700
Message-ID: <CAKwvOdn61==-pLs6oDUjeCD7DQvWjRx+b+04JMpN8w9kY9P-uQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/6] staging: r8188eu: add error handling of rtw_read8
To: Pavel Skripkin <paskripkin@gmail.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>, kernel test robot <lkp@intel.com>, Larry.Finger@lwfinger.net, 
	phil@philpotter.co.uk, gregkh@linuxfoundation.org, straube.linux@gmail.com, 
	fmdefrancesco@gmail.com, clang-built-linux@googlegroups.com, 
	kbuild-all@lists.01.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PhvdOsPd;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::c35
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

On Wed, Aug 25, 2021 at 6:44 AM Pavel Skripkin <paskripkin@gmail.com> wrote:
>
> On 8/25/21 4:34 PM, Dan Carpenter wrote:
> > On Wed, Aug 25, 2021 at 04:02:26PM +0300, Pavel Skripkin wrote:
> >> > This is not related to your patch.  Ignore it.
> >> >
> >> >
> >> > > > vim +2022 drivers/staging/r8188eu/hal/usb_halinit.c
> >> > > >
> >> > >
> >> > > >    2020                case HW_VAR_BCN_VALID:
> >> > > >    2021                        /* BCN_VALID, BIT(16) of REG_TDECTRL = BIT(0) of REG_TDECTRL+2, write 1 to clear, Clear by sw */
> >> > > > > 2022                         u8 tmp;
> >> > >
> >> > > Hm, I don't know anything about ARM compilers, so should I wrap this code
> >> > > block with {}?
> >> >
> >> > Yep.
> >> >
> >> > >
> >> > > My local gcc 11.1.1 (x86_64) does not produce any warnings/errors
> >> > >
> >> >
> >> > You should figure out whats up with that because it shouldn't compile
> >> > with the gcc options that the kernel uses.
> >> >
> >>
> >> AFAIK, at least 2 guys except me in this CC list compiled my series without
> >> errors/warnings. Maybe, staging tree is missing some Makefile updates?
> >>
> >>
> >> I'll resend series this evening anyway, but this is strange....
> >
> > Hm...  In my version of GCC the error is:
> >
> > drivers/staging/r8188eu/hal/usb_halinit.c:1870:3: error: a label can only be part of a statement and a declaration is not a statement
> >
> > That's a different error from what I was expecting.  It's caused by
> > having a declaration directly after a case statement.  The warning that
> > I was expecting was from -Wdeclaration-after-statement and it looks
> > like this:
> >
> > warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
> >
> > You really should try investigate why this compiles for you because
> > something is going wrong.  It should not build without a warning.
> >
>
> Looks like it's bug in gcc 11.1.1. I've rebuilt this module with gcc 10
> (gcc-10 (SUSE Linux) 10.3.1 20210707 [revision
> 048117e16c77f82598fca9af585500572d46ad73]) and build fails with error
> described above
>
>
> My default gcc is
>
> gcc (SUSE Linux) 11.1.1 20210721 [revision
> 076930b9690ac3564638636f6b13bbb6bc608aea]
>
>
> Any idea? :)

The original report said the build was with clang-14, which is near
top of tree and unreleased. It's possible that that build had a bug
that hopefully was reverted.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn61%3D%3D-pLs6oDUjeCD7DQvWjRx%2Bb%2B04JMpN8w9kY9P-uQ%40mail.gmail.com.
