Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB6FB7CAAMGQEI5DZ6UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 761B4311A69
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Feb 2021 04:46:01 +0100 (CET)
Received: by mail-vs1-xe3b.google.com with SMTP id b4sf1530164vsb.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 19:46:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612583160; cv=pass;
        d=google.com; s=arc-20160816;
        b=xB8dO2Q+3dDB1RCvi+V4eSGqE9XyajvlPgWrqu7wVOhPxcLzuTKQux4c8mQzw35AhC
         eBrWCNYYqb0SrJfEq8Idi1JRo35uWpNU9jz0QlOrL1n34OxRsydUbJmOdKp3zKRihESF
         vOXNG4BGc1J4d8uG54yCYno2MbLk/WnC6WLNhfRYYVdbXfhMhp85e+Vh1QwULKZrScG4
         RJy7Pt/RfDs2uyVCIvDJWAXPI7fbZtb5C1IC1zXlc15FSJTMOB9hX0s9KwZlu0EWyFlN
         rY+0hkKXulvlJXL8NIcFMvy9RIZjOJ63qoqxtGICMeVMqUUJwnRYLHt3Tg5b7h//H4kV
         7DEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=33L/Sx+sszhp/wCRffLSnk+4j22eoFpZwCT2VBUP4Qc=;
        b=kFiT/1Q8qv9ffv0JX5R7yUOxwIO8Ug9JTXZK2XxTV7FymBPVr6r6TtTCCY8Tc6/1lS
         9zIXnUWljtA8Wgu5McKa5dDG4BpPiKk2QvWgXDIyxdzKDFvz2R2M4lIQpDYoRuZjFHQP
         Nw+0geCk/csv5xVGyhBq3/K7y7HemK/EGcwMIHJWacwNJt8CRQyLsqGRaowl6D2esxeX
         8vCgilkQvSHNStywMVlGGTVYLKfA3ybKLh3veS/oPYv6cISlZLTmsf2WonU6RNlgxLyD
         YVveRo+WasOb6CCwf01jJhkP4P+9vo6BEIQWNXDFfz1BStEuyhLZx5DFlc/kyFwDmObb
         jFFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FSKKfuQN;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=33L/Sx+sszhp/wCRffLSnk+4j22eoFpZwCT2VBUP4Qc=;
        b=OgDjVAZNzwWTF/LAJFlKk4Nwk5hU2YixreLszTtWRAL4+1d8OSdFhAUB4soL+IBFl5
         rbgHkalczqL0XAjCyewBbyfJTH65sIK6frF/kUV6hleX6YmoYUQF7BgYYaBu9mdsPv78
         E0RW+6ijwym/xyY7IAnlyZZ4B9pKC5GGnUZL5keeV78+op5t0P15EIsPiGpQIVarG9m4
         BwWeRXFJVhTfyfh0L9HTclA60cyzRyhPWmdc7/Jba1MC/ZxxsjT7Mm5U6qdhXjDWcTFd
         z9fdBP82gcGVLFM5QGaDsK6lZed+fp9yq+ZZomizDKQtHAQqDXK7ogvhIIp109ZvMaHN
         NJRQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=33L/Sx+sszhp/wCRffLSnk+4j22eoFpZwCT2VBUP4Qc=;
        b=UCempK/sdxElJrGnCwmBk6pEP0Ntu8b3CiCMNl/amyxTiQweCcPL7HusxUr8U0lR22
         ZG2NbxLwftFcupbTnwHO23owJ/iqXs0U+v9Dfs6KXbSIz0r/KAG+1bfKeT2D1Y5/YTlo
         Z4N8/qePfwQIPMzovlHq3UaT0XZWgTgDYAswxFwsr+ytLmiOTu6Q6TrWW5Fr+S0ik8vC
         WLaFppYSBPu+B1Fiei4sAugpKNa7HcZchrucmbdO+fs/hMO2o/qnuKdi8d6L2bjMNyPI
         7reJffTZkbPIuCOhiLwobdc1LV5gw+VR0dLhqKb37+ZlIN4pgJezLQQQt2jccYDOkXdt
         YP0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=33L/Sx+sszhp/wCRffLSnk+4j22eoFpZwCT2VBUP4Qc=;
        b=BNGsB+NHgGqvZbvNX+4dHOYROUJIfOYlv4NvDlFR/YIb1UIBsFf3ptdJn3ysrsKP8h
         zml3T6spqPJ+8fFrvBXlcApbrRaOPzerEqUEfyMASV35YGQctWqNmyTaNzqz/7ydkr98
         sFfgB3IkgQjRv+MoWRIa1I9EOyh7AqS+l21raYiccSh96wTgDxTQx9UybxNYXlmEvQ9e
         q0EIpdoDQtlqK/YT+AU0N/GYDKIhACiJUB2dfXiz7xAtFiMhT2kQ90smzZim3rdZuwVc
         Xqf4Kfp5SwRT+yuGiJ7RJCvpBxxXW2kriKxIA9v73Bbr3WMyHHAJ+w9uY+csxKQwcVsQ
         r8mQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uVlM+7yPWv2FlHfiSR6AA8e73IWzDLhlTAidr1oxM/uEDBKhw
	vqhD2qG1zhbhzhvC1b4b1bc=
X-Google-Smtp-Source: ABdhPJwZDWydzWdpONvipJC7kEzgDc+0meyDCtGIcuWNOZX3qAqU7PSp4ByGFGNwjd0cG8S3GueSbQ==
X-Received: by 2002:a67:80c8:: with SMTP id b191mr5472514vsd.58.1612583160395;
        Fri, 05 Feb 2021 19:46:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8886:: with SMTP id k128ls1448562vsd.4.gmail; Fri, 05
 Feb 2021 19:45:59 -0800 (PST)
X-Received: by 2002:a67:dc97:: with SMTP id g23mr5207791vsk.13.1612583159872;
        Fri, 05 Feb 2021 19:45:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612583159; cv=none;
        d=google.com; s=arc-20160816;
        b=Isho1V/IzfV5AV52bMYFDtb+31YJKs6VW7NgCuI4Mgo+7rXiVpMJ3tt0O/Ypo/AAbY
         HLNLyoTgKacWh+CoHicp3vzQhYlHSC2fAx1mqsKPJooEOd57EMWuA/DQD6Q+Uf7PGevK
         d8qXWH2hyCgO1Bi5Hy4syBIzhZk0lYCykZ+UeY8MqRpNgBu8Sm+UIsTijo/LZieOFuI6
         4VPDYP4op7++LiRlfwvoEn1JN4BKRnCwF6EeJDGZyUEjG+uUbl3ch7/v1MjyjBTAziCF
         csJecQHRWu0vJScM99vToFuGVIw8Ecbw5aOphcIazVMRMLHTeg2okreiqXoB8kTwMJQY
         SXIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AW3d2EZmFwj/kF7+VA9cGyGtPmF7ePTt8chozcmo2aM=;
        b=PfE0GGy7mH2WK0Lxqkpal0YAAftz9CUFq39ZHIaAe8ufW5mFHNG/lgIm0tGadtDoi3
         ng1Z9jArq24xM+Qt6w31ERBgG9bp7MvtFUIBqPn5VEW4FW0/Mlnq5aA3rkm8Xx1ugSy0
         Bn4k46I85/7Iky0matt4L/TWkIiXU5LNvLg31Rj+ppB8vLDDeKmxRUPY6rDxRCussI1N
         yUOsvRZOw+E1EHZZQLb1ngd0eoCNP0K1ahMcADoE91rzOFTgT3Nfz1F87ocwtgU6lmvm
         ygGmmsdKpn/Y9WCUxWIqJvpTsNBFuHyJ7rHZSgjVCHH164i9VglEv2GbJL0E7OOHmz0P
         802A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FSKKfuQN;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com. [2607:f8b0:4864:20::d2a])
        by gmr-mx.google.com with ESMTPS id e11si641764vkp.4.2021.02.05.19.45.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 19:45:59 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) client-ip=2607:f8b0:4864:20::d2a;
Received: by mail-io1-xd2a.google.com with SMTP id u8so9258972ior.13
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 19:45:59 -0800 (PST)
X-Received: by 2002:a02:1649:: with SMTP id a70mr7800030jaa.97.1612583159323;
 Fri, 05 Feb 2021 19:45:59 -0800 (PST)
MIME-Version: 1.0
References: <20210205220125.2931504-1-ndesaulniers@google.com> <CAK7LNARKHvjTcnic=ZKntH3NY5meehQbJuBr34y9_tn8b-Ym0w@mail.gmail.com>
In-Reply-To: <CAK7LNARKHvjTcnic=ZKntH3NY5meehQbJuBr34y9_tn8b-Ym0w@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 6 Feb 2021 04:45:47 +0100
Message-ID: <CA+icZUVkFOZq=5K=dKsQAFJPTmEE2gr_hVmYM=Q+rn70bSOh2w@mail.gmail.com>
Subject: Re: [PATCH] Makefile: reuse CC_VERSION_TEXT
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Nathan Chancellor <nathan@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FSKKfuQN;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Feb 6, 2021 at 2:49 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Sat, Feb 6, 2021 at 7:01 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > I noticed we're invoking $(CC) via $(shell) more than once to check the
> > version.  Let's reuse the first string captured in $CC_VERSION_TEXT.
> >
> > Fixes: 315bab4e972d ("kbuild: fix endless syncconfig in case arch Makefile sets CROSS_COMPILE")
>
>
> I did not touch this hunk because I have a plan
> for different refactoring, but I have never got
> around to do it.
>
> Anyway, you beat me, and I will pick this up.
> But, the Fixes tag is questionable because
> this is code refactoring.
>

When I see this... and hear refactoring... As a suggestion/improvement...

Can we have LD_VERSION_TEXT analogue to CC_VERSION_TEXT?
Both are shown when doing a `cat /proc/version` (and IIRC in file
include/generated/compile.h).

Thanks.

- Sedat -

>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  Makefile | 14 +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> >
> > diff --git a/Makefile b/Makefile
> > index a85535eb6a7d..70034d7c1051 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -557,7 +557,13 @@ ifdef building_out_of_srctree
> >         { echo "# this is build directory, ignore it"; echo "*"; } > .gitignore
> >  endif
> >
> > -ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
> > +# The expansion should be delayed until arch/$(SRCARCH)/Makefile is included.
> > +# Some architectures define CROSS_COMPILE in arch/$(SRCARCH)/Makefile.
> > +# CC_VERSION_TEXT is referenced from Kconfig (so it needs export),
> > +# and from include/config/auto.conf.cmd to detect the compiler upgrade.
> > +CC_VERSION_TEXT = $(shell $(CC) --version 2>/dev/null | head -n 1)
> > +
> > +ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
> >  ifneq ($(CROSS_COMPILE),)
> >  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
> >  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> > @@ -576,12 +582,6 @@ KBUILD_AFLAGS      += $(CLANG_FLAGS)
> >  export CLANG_FLAGS
> >  endif
> >
> > -# The expansion should be delayed until arch/$(SRCARCH)/Makefile is included.
> > -# Some architectures define CROSS_COMPILE in arch/$(SRCARCH)/Makefile.
> > -# CC_VERSION_TEXT is referenced from Kconfig (so it needs export),
> > -# and from include/config/auto.conf.cmd to detect the compiler upgrade.
> > -CC_VERSION_TEXT = $(shell $(CC) --version 2>/dev/null | head -n 1)
> > -
> >  ifdef config-build
> >  # ===========================================================================
> >  # *config targets only - make sure prerequisites are updated, and descend
> > --
> > 2.30.0.478.g8a0d178c01-goog
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205220125.2931504-1-ndesaulniers%40google.com.
>
>
>
> --
> Best Regards
> Masahiro Yamada
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARKHvjTcnic%3DZKntH3NY5meehQbJuBr34y9_tn8b-Ym0w%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVkFOZq%3D5K%3DdKsQAFJPTmEE2gr_hVmYM%3DQ%2Brn70bSOh2w%40mail.gmail.com.
