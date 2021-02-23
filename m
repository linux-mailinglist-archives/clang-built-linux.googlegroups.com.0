Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJOC2WAQMGQE657L26A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id D19F93231DF
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 21:10:13 +0100 (CET)
Received: by mail-wm1-x340.google.com with SMTP id b62sf1630627wmc.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 12:10:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614111013; cv=pass;
        d=google.com; s=arc-20160816;
        b=AgY8UjbcEgJwy0gT7r200zApnu7CFqm6OPCNg/vXoe0zsdQxsF5B6B754LXujoMddK
         26GrrgOM7MJCUjlJIp3/8EetBh5LQeEOP2E4oU8RW02j4BBl1PqagZjO2glK9k6mCc1g
         G31Kq1bwt6Y9oqOfB1uCCSfbZO4cr7blKyR9zkDg4d9ancVRRRrl8zJ904xxqRQ8hBFo
         aOkz15BQWih8MFZA3LP6PcA/PkhUQOQwV+F40pVLIat+qa0mOcPD8ziZMlhyalvFx0o6
         DX85cVTfCs/s+DYC1pcJ8yvOCd7ufZWkXSbNGFOU1AzA2WxateyQK3Mnn9cmulFKC+1u
         IlrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=C6vesWeF7OPXdbQfrljLo8ZRhmwmkweGMs+Jh/8x5XQ=;
        b=l8Pc1a7GWM4DcPtAid8s6P4Y1KpHzi0TIBrirRzWO7kHRkRClYpk+trgy86Kot9vP8
         rcF1EnmeRqEOd1cx2y6NRqzG/S9iAX1zvjDsKH6fLR4xAKDCJ+OyPGDvveSsB6k0IbPA
         c0oSSKwB3OGug5vQz0DZmyXpMrCjVpwZOLx+VB8dXem7VVAb8Ow63rc3t/oFtv3W5/Cx
         DH//EisVGsRCl3HvzFIX+vsTcGeOq4EGgfOqBcUzTLrYkg4ZBGBDPgsyvo1YTnsyRzy3
         TYEgx/dseOp3x1Z2M+jS+qrmpbfZYVPrQCs6R5AacqFcfUneeMMnSonqcQfbHWZ+2lEf
         26hQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Nl7cOyBt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C6vesWeF7OPXdbQfrljLo8ZRhmwmkweGMs+Jh/8x5XQ=;
        b=UdUIN6S3JI7EODuwUTZDkvOV4+RcOOLyEwHcX4/qA3rWNcOZUG62NrL9RLsYXoqtVw
         Sffq/S9YsiDRReEty3J7TxzQG8fapaTqNaJuMHPjacbfrXa1jTvM6pP7TshDXGsjDA/W
         AcFiak6ipuyoOzaAAqjbOo9/dp2Run4Yg33Tt+nUbizmCTjtw7YMoo6idmEZuJ0lVoAQ
         xYaVyX2/oBPXNyLUl+71HyfLV15p6VKHUJk79+dCznM95TuYTaImVDFiao+ZxS4XH/2h
         NIZu1xPrlU/Um0OkrVa4zPluNhumcx5ySQnl+ZOT0m6c7dQWhIGkdB3cdTYDhexZp7H8
         CB1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C6vesWeF7OPXdbQfrljLo8ZRhmwmkweGMs+Jh/8x5XQ=;
        b=ZX0nTn1mIdBvn/XuJp2dBnDwIPIlnhewPD6M1FfpHuNrbponbdxaRvxuBsD0FVKDoa
         7KhwokzYBG9ElL9wiRYx/IFzJvhDcf9hnpMByyBAYQajc1kx7eLBb47Yvbs8isszgJG4
         LOsp3RztxHAYMoqsuKL6tzfxhEoo0m7brvMVKJ0oskJcyagrJA22vUlJbu7l+tb3KJ4o
         We9JAUErCmNKxm36hB7gN79DryY3T6Vm6LEkwX0sLDqpXgbNBolQEJQOeT5mlQh8gm8Y
         ly5AwqB/dNRg1mjP4uxaUh5uhkkGw6R4Rj57pPC3DkA/7ep9BrAf76Zr/NJhbcdLBtdr
         bp0A==
X-Gm-Message-State: AOAM531wotqPhBIFrKgIMEIbwuG+Ioxl0RF+eYNbBCPZkE6otfLnRglH
	lVtrTivmBRJSaEl53Jbaq6E=
X-Google-Smtp-Source: ABdhPJyp0K4J+B8sxzUYI8LnmfVT3mdby2PC5aWxrVdKMSaOE/CnaJaGD2QggvOE2gUz66WnbM9qtQ==
X-Received: by 2002:adf:8084:: with SMTP id 4mr27966151wrl.49.1614111013640;
        Tue, 23 Feb 2021 12:10:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f207:: with SMTP id p7ls1052655wro.0.gmail; Tue, 23 Feb
 2021 12:10:12 -0800 (PST)
X-Received: by 2002:a5d:524b:: with SMTP id k11mr7169972wrc.122.1614111012839;
        Tue, 23 Feb 2021 12:10:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614111012; cv=none;
        d=google.com; s=arc-20160816;
        b=BcKZiOh/PE0PglSBjk/G1WIGq3rACqz/lHjyvDpPhBimxbvgpprG6MLZfRZRIWXH7A
         4Ao1V8J0OMMFltF8eSj0ZE0tZzIaVYOPYJYUSxb+0I0Q8zVkEZApi4bLvZKhY3InTuh/
         JekrU+Dbo335Z52duxjNpZVU0/i/lkEAiKvNyNBoXFhboDkaFg6QBfC4bxo3lPPQxiUG
         +19nHSwDGPeiJ8Iimz0E8kNnXWCN7oFJdiv8rF6kYn+T2VekZlyfYSinOXjHA8zmbalJ
         EAodKgwl9aQyVUxy1zrg10L6V/y+Uy2+aqHXoxQAzgVWAQyJ4i5ttpu/Dk/hIH8EGy7L
         MwZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ma6j2gSEFy1ka8BjM/M5fkCejmRsupkHNwcWTVj2T4E=;
        b=MZcUlq9t0DgcegjK6rbOuNr1x8XKlroZv2sTzZxBFuKCzBQ0GizBMCScVZ49s39wzP
         oELeGzy08cQb6m7gmoPsemrIy4ASo3Ej1HoioSRQqxbvnBxlCcDhb2+JtzS9b82sxT1x
         brMsTYm9De2QgF3hnjpPU6RFD2IEMR0f8C+kjxaFWpdfxmY8HEznK1PwasZ4LTFyCfRU
         0ziH8DOdVrY+YgLZsutch02QQYo3VghZP0jgdxZfX2B74Vu9SJcMjyzWUZ4frO5U8jy5
         +9quoIEusvhep4uJsvqQrelMsmKdNRNmszRvL3Y/imuaNDPfM8Kgh2Es7jlcTArBx268
         Rz2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Nl7cOyBt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com. [2a00:1450:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id g17si146587wmq.1.2021.02.23.12.10.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Feb 2021 12:10:12 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) client-ip=2a00:1450:4864:20::22c;
Received: by mail-lj1-x22c.google.com with SMTP id c8so64566487ljd.12
        for <clang-built-linux@googlegroups.com>; Tue, 23 Feb 2021 12:10:12 -0800 (PST)
X-Received: by 2002:a2e:2a83:: with SMTP id q125mr17502638ljq.244.1614111012374;
 Tue, 23 Feb 2021 12:10:12 -0800 (PST)
MIME-Version: 1.0
References: <20210205220125.2931504-1-ndesaulniers@google.com> <CAK7LNARKHvjTcnic=ZKntH3NY5meehQbJuBr34y9_tn8b-Ym0w@mail.gmail.com>
In-Reply-To: <CAK7LNARKHvjTcnic=ZKntH3NY5meehQbJuBr34y9_tn8b-Ym0w@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 23 Feb 2021 12:10:01 -0800
Message-ID: <CAKwvOd=qh0=tU9fr60DxcJepUfg6+BkqScwifW4s8A2A=ofKpw@mail.gmail.com>
Subject: Re: [PATCH] Makefile: reuse CC_VERSION_TEXT
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>, Nathan Chancellor <nathan@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Nl7cOyBt;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c
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

On Fri, Feb 5, 2021 at 5:49 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
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

Hi Masahiro,
A friendly reminder to please pick this up; I don't see it yet in
linux-next. I'm ok with you dropping the fixes tag when applied.

(Otherwise, I was about to use `grep -m1` instead of `| head -n1 | grep` here.)

>
>
>
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


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dqh0%3DtU9fr60DxcJepUfg6%2BBkqScwifW4s8A2A%3DofKpw%40mail.gmail.com.
