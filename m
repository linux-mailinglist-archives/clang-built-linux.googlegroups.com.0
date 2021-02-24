Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBIHY22AQMGQEMVDPCQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id D55E73235CE
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 03:38:25 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id l15sf389708otp.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 18:38:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614134304; cv=pass;
        d=google.com; s=arc-20160816;
        b=tfoeEXn/ob4n4gzKgM0Qw91r4bD/sWZbhtEsok5KyLZvTLFcDPbrS5N6l+Myo0VBRt
         d8GLUyVIDb9k1ZHqL7DEN0wnkTlqUQvepHIRdow4jyzA1QASpYLhFunA63BN5zkOLY83
         ZjtLFUcZGOmf1vGmFbO/ZPdVr3JXFOUFVwTSjgYCKpRafWSPcvMlkUugGdTm9FNW0BRR
         4RdiJZVtJQ2K+zuq8jS0rDmYOh6zBv0p5VmakGwoXobjKgI9ovRr4cH9g0IloIrznhXk
         G4PTNL3Kls7+Bzc+aF4Wn/p82az1p2BnXliX8a6uX+YrOq9uH4eHh7zQClTG+dnQKaK9
         uDAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=wknoZiijMqNo2VV9d+jQpxAVasdce+lRWRJQ6dJfWls=;
        b=JF00NU8M/44/nXjFgFHU4p8sRQDjtcAK03/JII4U6Xbv8RCLaPgC/jCJEfyN3jKojK
         jikEkkJGAKEr+s88yGkhzfCkJoFOWjWB0PeUOZSAGGCMUI2g9nErBjvhI7tw/TFsQBKb
         EZgxsYOhEE0DSHJ1W/QRGcvgjEuK4IRgGvFskfW/rVKdh8ZyJZe2PjbKtEw4AZv8w+bp
         mtc8mxL1KeNBQZBiGatqXOwOY0eMrcJwIDjJH0IgQYhAo0G8YiJiNRro0RFpVIk/FKyk
         D1I1lbdozRf0/apdmDud65tq6cfzDpk/eEre+EGk8fFkDhctLO9+577Lw8a/j1ACrxs+
         yk0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=uDKfRRyr;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wknoZiijMqNo2VV9d+jQpxAVasdce+lRWRJQ6dJfWls=;
        b=T88YcEHV3YKTICVsFVsGAQWys5Ww4xG5i9R0XxZoD+vSzAW3fdRs9t08UFcq+lRHcg
         nuj/HfalXP7GnluuHhU7JiYxbdEO0814dfRjYLKnQegmPUiONPO7aRkw2xqY5nckZhi+
         MnReHaxc+qzNhiz+8Ojy9dAvvssHmDfjyeKKSIuAQd5+hAp2RBQyESMXNoG1/S7l0idv
         AVjD36XE375w52CuMzXpoqhKxw2QmNISGoeQBVZudk2YGjlviwmSqhSgs2v9fmOGkXxB
         pkbbpN1Fom3zrM2FC0im2ccmsNbNukBm9uf6ooTSrpMTeGmqyEJCEySYGOC9GL8LoSwI
         qYXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wknoZiijMqNo2VV9d+jQpxAVasdce+lRWRJQ6dJfWls=;
        b=kAwMBxxz/cvm6Cy/ZClz6kM/qya/Vt3B0vD9KNTqZNRLThTDm6AVrmN7DVGkH3q8AI
         w1fgTubvZ53DR71Xx+GOuEK2cdGjCWS8+IC62e9BXQInvDt+3e9Tl/3mUnWg77Yq6dk3
         MDAQ+aWZaQglKpcaYmBF/j8Ue8jEe8BWw2fuqhBioIhnjhLB0uhwl4MGjzUQbKS3EUZP
         KV+mllb5uSXDqQ9QhyxlMr90YqkVgMgTva35r38RMSxAF3ytHwxFfXOR4XhgXPeL0ttp
         6oMLU68rPtGrxPjfrvFVVTqdg2oyRJE8tFxGhAURTWjO0k6sjSczq74/T3dnCt28A6ZR
         MMnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532YkPG+cTQhYPIIggeEDm6/f4x3Q0ldM5z3qY/W3WImtqunzh0w
	Za8/FCDYEAB46k+qfsP0LpY=
X-Google-Smtp-Source: ABdhPJwJ2cE67QuIHaegcVIYBq6TQNdAl6Yx/nAglz3WjXjU0GhyCzOYKfp9xeHstHvl4nGfw0ToZg==
X-Received: by 2002:a05:6830:23bb:: with SMTP id m27mr5976156ots.354.1614134304718;
        Tue, 23 Feb 2021 18:38:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:53c4:: with SMTP id i4ls214148oth.1.gmail; Tue, 23 Feb
 2021 18:38:24 -0800 (PST)
X-Received: by 2002:a05:6830:14d0:: with SMTP id t16mr9134629otq.220.1614134304346;
        Tue, 23 Feb 2021 18:38:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614134304; cv=none;
        d=google.com; s=arc-20160816;
        b=AKuKNYvCCzGhWT/wdoTkacYoETNkKOPMiQezZ55yzOIzPcPsny4g/2Ab8AqLjALm0N
         mFnpil9GSY8ImkXArE0bs/tX1bjjmvwSjOR5lec0RCNjjLFV9HBDoRqwshM6HQwarcEg
         y0WLJUR/wiZyOhW3MDHP2vjaGzdZciT4mV/37c9wa9aJzLjxJwTBeBLy39bVUEIyETFn
         YZYzI0AVkgx8BPGhNjliNpR3QpEyFPx8x6q2rb2T443aScy9DHcgKZGyDkKy/7+iW8F3
         M1iHymJJRqVxvZYK0oDuNt6nMZvH6GGjiv85CJef2KAvALMgWYzlUAYChQWcPVRGwAdm
         RObw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=pX9K/vCBClh8oGzPBvXQnUV2yh+cgPFd9eXRxBcBQqc=;
        b=E/88WJr4Gltzx8pSwBPTcad3P8FCxdk0WamZW6MgxghEX+CUWi2XldAWUp7vBvzE+L
         uK6HUWBGI45Kh8uyGjBH4CJRFOLvX7hUEmdHu2O9h1dFSf2qpLTYD+JhPGDI5t7WzXa1
         D9eaiKHhQ5bKsuKVlqWs1+QnAqPfvFnKHYQV1oTwtl/Mser297UMOISpZP7kQIvew4o9
         kFHLnWHkpntul+8bDDj1NmPY9aJy6yKgPVMY+Wjj46s5ZY1xJycRPbLra0LLpL2HlkC+
         BDRsaGDBf3YNuKNn7BiqKuVcWL7kPrJPMTbwcPSE44a/hAGVY372N1+4ifFAdrJidYWO
         CAXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=uDKfRRyr;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id x35si54473otr.1.2021.02.23.18.38.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2021 18:38:24 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 11O2buaU012377
	for <clang-built-linux@googlegroups.com>; Wed, 24 Feb 2021 11:37:56 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 11O2buaU012377
X-Nifty-SrcIP: [209.85.210.171]
Received: by mail-pf1-f171.google.com with SMTP id m6so350089pfk.1
        for <clang-built-linux@googlegroups.com>; Tue, 23 Feb 2021 18:37:56 -0800 (PST)
X-Received: by 2002:a62:b416:0:b029:1e4:fb5a:55bb with SMTP id
 h22-20020a62b4160000b02901e4fb5a55bbmr28579569pfn.80.1614134275563; Tue, 23
 Feb 2021 18:37:55 -0800 (PST)
MIME-Version: 1.0
References: <20210205220125.2931504-1-ndesaulniers@google.com>
 <CAK7LNARKHvjTcnic=ZKntH3NY5meehQbJuBr34y9_tn8b-Ym0w@mail.gmail.com> <CAKwvOd=qh0=tU9fr60DxcJepUfg6+BkqScwifW4s8A2A=ofKpw@mail.gmail.com>
In-Reply-To: <CAKwvOd=qh0=tU9fr60DxcJepUfg6+BkqScwifW4s8A2A=ofKpw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 24 Feb 2021 11:37:18 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ_4=xaZ71nE5T8V2vEV_7zrEWMrv6n2aRog-sqxjiTLw@mail.gmail.com>
Message-ID: <CAK7LNAQ_4=xaZ71nE5T8V2vEV_7zrEWMrv6n2aRog-sqxjiTLw@mail.gmail.com>
Subject: Re: [PATCH] Makefile: reuse CC_VERSION_TEXT
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=uDKfRRyr;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Feb 24, 2021 at 5:10 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Fri, Feb 5, 2021 at 5:49 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Sat, Feb 6, 2021 at 7:01 AM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > > I noticed we're invoking $(CC) via $(shell) more than once to check the
> > > version.  Let's reuse the first string captured in $CC_VERSION_TEXT.
> > >
> > > Fixes: 315bab4e972d ("kbuild: fix endless syncconfig in case arch Makefile sets CROSS_COMPILE")
> >
> >
> > I did not touch this hunk because I have a plan
> > for different refactoring, but I have never got
> > around to do it.
> >
> > Anyway, you beat me, and I will pick this up.
> > But, the Fixes tag is questionable because
> > this is code refactoring.
>
> Hi Masahiro,
> A friendly reminder to please pick this up; I don't see it yet in
> linux-next. I'm ok with you dropping the fixes tag when applied.


Sorry, I had completely forgotten to do this.
Thanks for the reminder.

I inserted this before Nathan's "remove # characters" patch.




> (Otherwise, I was about to use `grep -m1` instead of `| head -n1 | grep` here.)
>
> >
> >
> >
> >
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > ---
> > >  Makefile | 14 +++++++-------
> > >  1 file changed, 7 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/Makefile b/Makefile
> > > index a85535eb6a7d..70034d7c1051 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -557,7 +557,13 @@ ifdef building_out_of_srctree
> > >         { echo "# this is build directory, ignore it"; echo "*"; } > .gitignore
> > >  endif
> > >
> > > -ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
> > > +# The expansion should be delayed until arch/$(SRCARCH)/Makefile is included.
> > > +# Some architectures define CROSS_COMPILE in arch/$(SRCARCH)/Makefile.
> > > +# CC_VERSION_TEXT is referenced from Kconfig (so it needs export),
> > > +# and from include/config/auto.conf.cmd to detect the compiler upgrade.
> > > +CC_VERSION_TEXT = $(shell $(CC) --version 2>/dev/null | head -n 1)
> > > +
> > > +ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
> > >  ifneq ($(CROSS_COMPILE),)
> > >  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
> > >  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> > > @@ -576,12 +582,6 @@ KBUILD_AFLAGS      += $(CLANG_FLAGS)
> > >  export CLANG_FLAGS
> > >  endif
> > >
> > > -# The expansion should be delayed until arch/$(SRCARCH)/Makefile is included.
> > > -# Some architectures define CROSS_COMPILE in arch/$(SRCARCH)/Makefile.
> > > -# CC_VERSION_TEXT is referenced from Kconfig (so it needs export),
> > > -# and from include/config/auto.conf.cmd to detect the compiler upgrade.
> > > -CC_VERSION_TEXT = $(shell $(CC) --version 2>/dev/null | head -n 1)
> > > -
> > >  ifdef config-build
> > >  # ===========================================================================
> > >  # *config targets only - make sure prerequisites are updated, and descend
> > > --
>
>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dqh0%3DtU9fr60DxcJepUfg6%2BBkqScwifW4s8A2A%3DofKpw%40mail.gmail.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQ_4%3DxaZ71nE5T8V2vEV_7zrEWMrv6n2aRog-sqxjiTLw%40mail.gmail.com.
