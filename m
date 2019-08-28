Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6P2TLVQKGQE5ZIWXXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 595F1A08D3
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 19:44:26 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id l14sf745846qke.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 10:44:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567014265; cv=pass;
        d=google.com; s=arc-20160816;
        b=cAGWokYE0ivKXJBeEounx1Bry1SSPU0oiio1XGEiM3zZM7rUA1cUzSF+c59m8tWPJ6
         ij5Utx04WyY99s8dRW5Wep6UAxY1Pir60XB8J6krOOTlpzW+UbBL0F6JkHT/DEcsdVyV
         ns6Qd9vJsiP2dPg+uoZLia2aA1mIZhkX+mVf/S+tgLzNGsyIEVc+ICS1/yDcn4S2pdaV
         hIjFIsTetwAXP1HNnD9B0R6VWm5n7LkwutLT9nJMUGZWe6pjMXDDNuRGDM38RoZ4JJ5v
         CEWhR8uyKQ3owm+KIp6W95fN68DHNxHx37ANM77hjtpmsbgQrYZz0LO55jdRxyKeI9nX
         GPDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=mHeUW/Tyn4F65pALYrBpPXLR8LzocjXKNNpBRk8r5Ak=;
        b=SdDI6pUgREjwCdMQbaQlhIXv9Zc295k33+zhJ2pMXsxpTKH8gQTeKoQ5m+SH4WZ2HA
         lLyQo/WoO5U+3CZ0EHMrMCVi/TZONzqkFIJrDUpyKC8VyXzerVPip5roCfhkhrvcDcgZ
         JtOM/uMI4FAPNY1MYDXW7o3HDdHBCRdgRf9F4bm7Zlg7IG7Tv6E1VC98uHUfLT4psghp
         33ljK2aN25KX5fFBg/dVRqaDN1WOI7SrVsYsxSzEoDy6GECx4Htn5Kdrko7gPo5UXGdO
         hUFygBRkxHyS4ku8O0G+4NFNSeF7V8yxWRAcF5n9I5yS3OOQrb2A8gp0iPViGpxOOe5n
         NlgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o51zeIqc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mHeUW/Tyn4F65pALYrBpPXLR8LzocjXKNNpBRk8r5Ak=;
        b=Yak6L2pWIzcKpQikRw5weMSX77CSM5Ky7j4cn5kAQynKBRHKPEzV7fdzdjHRcEUYJD
         G7W05nwmNVi56H4w2Kk5a5RzUN0nY1bMFoLniLNusj/9KxEXzBkctF5G24A0YoaQ2VPG
         FgFXcRXFxlcipUxJIlc/aQKRc67SIiqJvhfzVqtOla1zPPf4D/7MihDHD8FChm4IFJDf
         tBa/YRxpLNmiWbOtOhmIS36ucWo4QgGUndq3P5plmrzmzV2++4oA9dQFgeRQkky2mOAg
         9i19SnyiUiKLBNnxQtfogsOAjp4gY+TLLiQsoMC1t7LahceGpjadvYJw0BuQm5lAuR4p
         JOLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mHeUW/Tyn4F65pALYrBpPXLR8LzocjXKNNpBRk8r5Ak=;
        b=qDAchCoQYD0g+MTfS0zoygjDr/futUFGPq0wIt90zRPI33WNTUGstSwqJ8xRUw6UOI
         OK/n1VFzlblf3EmFjOTHzhe1jF9lWUa6l2jnFDbWzb1/Bbyrj0Snm/JUqqx8jAIszhR8
         gihQWk/jyBAJyz6TB+IPID31EtEECpzSGTkUT7y94mUKt0eMFFGvV0bZxeDr1tmlx8J9
         odly/4GSPlcJkvoTAdSM+q0v/YWpWgCfdmcMIBXxec8b3vUHTCJVb24WLZ3MlIWFo7gU
         kjJaTIE579NzwhWpJ8S/YLOjauWGDoXDK9qeNXwQ57WO9elAhSx7sCTo9fAEFm3YGLx2
         AELA==
X-Gm-Message-State: APjAAAUYFOEEl3HdsdbwdkXykWGVgtjF4W9+nPnrh3l3UcZCFRPS682A
	J8MM0YxaVO/nadAtQjEqsMU=
X-Google-Smtp-Source: APXvYqw47NJlPdBH4gEubH4B0jAKciyZNjoKQ0KsKqATKbk5gO8PH2zalCxT0x6+qb6yuI33vpgneA==
X-Received: by 2002:aed:33c5:: with SMTP id v63mr5684671qtd.360.1567014265408;
        Wed, 28 Aug 2019 10:44:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:d4cf:: with SMTP id y15ls490795qvh.0.gmail; Wed, 28 Aug
 2019 10:44:25 -0700 (PDT)
X-Received: by 2002:a0c:dd83:: with SMTP id v3mr3674241qvk.105.1567014265131;
        Wed, 28 Aug 2019 10:44:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567014265; cv=none;
        d=google.com; s=arc-20160816;
        b=o9HCEcSkalkptMOUOAsntAYZKA5JwzwjrUrS3SqM2ZyoR5mNNh0c7L6sV4CmcCLV8q
         dzsRiVmMziEdSbxCX1MLwUC18yaLHDqibHoLzwU9ULFlC9nqbqJ7yI2NY8gzbj576yDq
         btzjiuuOWRDSqbnhSYRmeyZS8zTsRlyeGNlSB4pRrJ7PSoHGChY0qBQAQxwlhp9zzcSA
         tKICKG9Io8pMkp8Nnd5iehql0Wet/eFTfyYbgW2/fjf6fBeK6IKEQAlth4+6dNmT4cCk
         0gGNR4nxe2SA/AojSO+m/6zheaarFtEno6LDdR2xB971F+roKXJTVpnPBCN7/3ICsNHx
         /8HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=94qXpyDS0THtDB4WwXpF5NYofHpbK853mMaCrKH08oM=;
        b=gPnGu9SXN7Ym2Sw+Ley6s5KhDWl0h1cJJdpXbzVcUfxCperRfUTJ5+XqZYkYCCzPSP
         UNK5pSjKWObkpAhiNrr5Lo98Qd03lznCsAOhfC5Wg8ftvoDi6oUpEi1ELvYjYO9n3blT
         pPHibDwAsTIEVini/abTxseWNkwo7g/FestjDmqXGUCEC64UH7kW8eLT9FQVpMIwSfcB
         +bQxugrIfo8W6Co2jfN/12iDuPnK8PxMbgaQJorPJ0sbjFRCLwW4ULEXfNTSUnzvQ8LC
         wWCrT5sMecey6GzGjucswjdN/vW8+BMC9fscNzLIOOsbE9eh8hQl2X+lqeRncK0URbl3
         70Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o51zeIqc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id f30si165387qta.1.2019.08.28.10.44.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 10:44:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id i30so248293pfk.9
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 10:44:25 -0700 (PDT)
X-Received: by 2002:a17:90a:ac02:: with SMTP id o2mr5499971pjq.134.1567014263717;
 Wed, 28 Aug 2019 10:44:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190815225844.145726-1-nhuck@google.com> <20190827004155.11366-1-natechancellor@gmail.com>
 <CAK7LNATHj5KrnFa0fvHjuC-=5mV8VBT14vrpPMfuNKWw7wabag@mail.gmail.com>
 <CANiq72ndWZWD-KBT1s-mUxQNa1jaD7oDaCB2+NPiT1chf14Z_g@mail.gmail.com> <CAKwvOdkuDPfOusJRneeTzg7tZ4VKxaRCNg2SgmjVas58cDwe8w@mail.gmail.com>
In-Reply-To: <CAKwvOdkuDPfOusJRneeTzg7tZ4VKxaRCNg2SgmjVas58cDwe8w@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Aug 2019 10:44:12 -0700
Message-ID: <CAKwvOdnOo3RXm3cx5YDtPyM=9Ry7kss-i4HzjxQkK4pjE-n9Lw@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Do not enable -Wimplicit-fallthrough for clang
 for now
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Huckleberry <nhuck@google.com>, 
	Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=o51zeIqc;       spf=pass
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

On Wed, Aug 28, 2019 at 10:39 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Aug 28, 2019 at 9:45 AM Miguel Ojeda
> <miguel.ojeda.sandonis@gmail.com> wrote:
> >
> > On Wed, Aug 28, 2019 at 6:21 PM Masahiro Yamada
> > <yamada.masahiro@socionext.com> wrote:
> > >
> > > Applied to linux-kbuild. Thanks.
> > >
> > > (If other clang folks give tags, I will add them later.)
> >
> > Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
>
> I verified that GCC didn't get support for -Wimplicit-fallthrough
> until GCC ~7.1 release, so the cc-option guard is still required.
> Acked-by: Nick Desaulniers <ndesaulniers@google.com>
> Thanks for the patch Nathan.

Also, there's an inconsistency between Makefile vs
scripts/Makefile.extrawarn that's been bugging me: it seems we enable
GCC only flags in Makefile, then disable certain Clang flags in
scripts/Makefile.extrawarn.  Not necessary to fix here and now, but I
hope one day to have one file that has all of the compiler specific
flags in one place (maybe its own file), so I only have to look in one
place.  I know, I know, "patches welcome." ;)

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnOo3RXm3cx5YDtPyM%3D9Ry7kss-i4HzjxQkK4pjE-n9Lw%40mail.gmail.com.
