Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4FG6GAAMGQELKTFPZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEE830FDA4
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 21:05:05 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id k90sf3505715qte.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 12:05:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612469104; cv=pass;
        d=google.com; s=arc-20160816;
        b=S5iy+p1z8ku7GYV+Tjc/NYfnnn5CQG/N1hJd5E2q3a6Vd6C3KX2/jCeHe+fcOcg8JR
         8LlwNAzm1i6bOgGrWGOoVTmxbiZhq65hFRP+O7xCYm2DSyP1uOIIh5VCLEfgYnnTl5x+
         SCxf5t8Y36VMK2FFL5mVrr6bBZkwJzIiXOng0xvpRj3MBhpOriG1HrngXQNmMwNyo2cr
         gciA5uAk2z+ItxWdCftiXWthaXOkLHrIsWptCxyvTLPwigaAfvHUSAnLYu+JZpQmtrT4
         1hNaSd7nC8rG1WaGg7rBB2r2K9M4qMtrdeBMD+bdd+M5yJhTfDDyA8W0mGeapfWFoPy5
         I6Hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3OnmOEj+x1Ed6/3FKOfXRgMPsWJdN5K3xpQKHabUGCY=;
        b=oKhDNHg6grInHXLcC6k4f5iTtupD74zn82mvKlIqvjPgXDg5xcD2ZgqG6gW5HkClmA
         tUVyMWZnnatWqwAChQa47q4JBAMU5VeXx5LvjBF7N+NIqLFkHPVWaL0Xu9goQoYy/c1D
         w2m5aSudic7ZEOazitpSigk6gf4CaGv0LwYsQMknzTtLs4RuDkrZhlvqOlg6M02qBrl6
         FLI+mRY7aIafRYtVPNWL+cvmLAjINIQE2QCtDHfSAtes33+IL9HOuEVIsSpnRKH++43Y
         /g/zwPJAPWoPFgFWqeUAbmglqp2dVxv5V29+fpnJqoAMrG+3yfqT5DKTzRJZy5fHpQBD
         LJag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KitKv59S;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3OnmOEj+x1Ed6/3FKOfXRgMPsWJdN5K3xpQKHabUGCY=;
        b=GC39sg1/+hgCmNEqATDc4O5mGE1h3VhKYxWc8w2ep4BQv4pFgPLVJno1KWNNjuJvDb
         kEDMRwrINA5ITzByjanOkZq2OgibJCOoBOdO9w7xkmag32u5YNyqDRAYglaDmIdUbtDG
         sIc9AT5pVT+JKuVR/5tFjJJQuqIYY1BVQ4xuYOUk9jY52kf3Nb7aImnMXLGKegiOi8cl
         SvFD4GtJlHgTET4BY79vlP0Im5Fv4P6w/FLjAmSvsC30jMojTAoIiSFkt2p98Q/Wl7Ym
         La6I3V8YZI/ZIyoYW3J9EpcbsIvg+QEJvc5Zh32gUhcenKTUU9CsQLlprlwzW2JLEr94
         l9Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3OnmOEj+x1Ed6/3FKOfXRgMPsWJdN5K3xpQKHabUGCY=;
        b=Gg7h8xxUxuH68hDAPKup8lDtyUMghS0JhyA6SBoqhbZd8UVuOusqN/zlsO+dcUfDzE
         WpZVZqFhWsp0D6V84htUP5vPyA/t/kr7q5iCbJWYDJmk8B5SOvNWDio+IDtg/M4HqW2S
         TX0qQKxVXTdWxkjzy2j4tU8JW1H3ZP3wk2I6ypbGH7uzFB5ekTL/u68Vi7Lh63ksSySN
         5ArxS4SoWhMayvaBJQ4kZSN9T9MKiyDxTzW9OsTbhB0XBj+taik+Hl+PaVZlgylfbrK8
         e3aFPiz6sYGftzvHVa+JhQQhVd20wrImQQOvPQvKMt+jRjhp2LnF2hfX4sLnQDiK+ssr
         1sKA==
X-Gm-Message-State: AOAM530ilunO0Q2BbnrhxCfqfLiv6iwME17r3IoXkcuit773+3bFabw6
	RpV6BDmv7uczeNuatRIMf/U=
X-Google-Smtp-Source: ABdhPJxjPDdyBSewfqX25FxTwUl0xBdd0nkFaUnCM4jRiUvLR4UkGBekAS/RRenvVGxk0TAMX9xaaQ==
X-Received: by 2002:a37:4c48:: with SMTP id z69mr866010qka.373.1612469104553;
        Thu, 04 Feb 2021 12:05:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4756:: with SMTP id k22ls2604072qtp.1.gmail; Thu, 04 Feb
 2021 12:05:04 -0800 (PST)
X-Received: by 2002:ac8:5151:: with SMTP id h17mr1188656qtn.45.1612469104200;
        Thu, 04 Feb 2021 12:05:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612469104; cv=none;
        d=google.com; s=arc-20160816;
        b=e47z2V/bP8CmdiFYqXPhy/KBwtxioFVMeRKDKuUwbidnKpe6SP/8YwLc1y/e8fw/d6
         RB/mJ0Up/lraXzUPrHqrt4pTd74GOC50pkMAGdpuOsAJAYwzoDmNcnQs5W+FwGnS/Utx
         NfyaVS8+uO7m0tSPCPaSkk0T1EY+QwEToGWl39KKCUgdaoStNzxwmOqC11uHbLkvleis
         DBHA2qalEvzuxy+vCAfZsoZS9ZZdUJfq8ie0xkjqyEMjLKW3csom1cqF9/GINPuOu6i4
         CPqqxCw7P0JGBGtckLJLemduneqHm7tKGLpDdozuPJIzOoK6frVVNCHICr7/IvQL4kaG
         WKRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=O8yTv9yXpLpwpmF6h6vJLjNPBqLU4fLmK2RwFD/j9hc=;
        b=JsWUg8+7A8hoA8m5DQQXnd0yh6r+Kgn+jd2TSll9nJBQ1D38DtGV0NyO8t80v/sXp1
         wjA0oyBI0vxx1NG9254yKL54ju305YkIKUsl3c8K/DEYai50K1SApdaWc80vUr2seLik
         bCdkaepspIz87bga0SqjAzBe73QkXB1E/+fb3KS6p7fZ/yzPm+iragrln/xW34kV1F49
         BvZzHEqAZkF5a0x/a7DeQB/CMF2nunFKz1CRskfxTJJhiQOygdm0dpvKj1Oh/vsbxJD6
         VoFNwUzvfV4z2lbJshvBlLZZDjHSNOzv4WMNHZyXWg+gliL+W7UzORxEKRVfsshqeqEc
         GU8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KitKv59S;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id e14si93290qtx.4.2021.02.04.12.05.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 12:05:04 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id q72so2332478pjq.2
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 12:05:04 -0800 (PST)
X-Received: by 2002:a17:90a:bf10:: with SMTP id c16mr595707pjs.101.1612469103596;
 Thu, 04 Feb 2021 12:05:03 -0800 (PST)
MIME-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-2-ndesaulniers@google.com> <20210204103946.GA14802@wildebeest.org>
 <CAKwvOdm0O8m_+mxy7Z91Lu=Hzf6-DyCdAjMOsCRiMmNis4Pd2A@mail.gmail.com> <20fdd20fe067dba00b349407c4a0128c97c1a707.camel@klomp.org>
In-Reply-To: <20fdd20fe067dba00b349407c4a0128c97c1a707.camel@klomp.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Feb 2021 12:04:51 -0800
Message-ID: <CAKwvOdmT4t==akMN7eHWgD_XdpN--PLpUj8vgujGJ4TpREvteQ@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] Kbuild: make DWARF version a choice
To: Mark Wielaard <mark@klomp.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KitKv59S;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1035
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

On Thu, Feb 4, 2021 at 11:56 AM Mark Wielaard <mark@klomp.org> wrote:
>
> On Thu, 2021-02-04 at 11:18 -0800, Nick Desaulniers wrote:
> > On Thu, Feb 4, 2021 at 2:41 AM Mark Wielaard <mark@klomp.org> wrote:
> > > On Fri, Jan 29, 2021 at 04:44:00PM -0800, Nick Desaulniers wrote:
> > > > Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice which is
> > > > the default. Does so in a way that's forward compatible with existing
> > > > configs, and makes adding future versions more straightforward.
> > > >
> > > > GCC since ~4.8 has defaulted to this DWARF version implicitly.
> > >
> > > And since GCC 11 it defaults to DWARF version 5.
> > >
> > > It would be better to set the default to the DWARF version that the
> > > compiler generates. So if the user doesn't select any version then it
> > > should default to just -g (or -gdwarf).
> >
> > I disagree.
> >
> > https://lore.kernel.org/lkml/CAKwvOdk0zxewEOaFuqK0aSMz3vKNzDOgmez=-Dae4+bodsSg5w@mail.gmail.com/
> > """
> > I agree that this patch takes away the compiler vendor's choice as to
> > what the implicit default choice is for dwarf version for the kernel.
> > (We, the Linux kernel, do so already for implicit default -std=gnuc*
> > as well). ...
> > But I'm
> > going to suggest we follow the Zen of Python: explicit is better than
> > implicit.
> > """
> > We have a number of in tree and out of tree DWARF consumers that
> > aren't ready for DWARF v5.  Kernel developers need a way to disable
> > DWARF v5 until their dependencies are deployed or more widely
> > available.
>
> I agree with Jakub. Now that GCC has defaulted to DWARF5 all the tools
> have adopted to the new default version. And DWARF5 has been out for

"all of the tools" ?

> more than 4 years already. It isn't unreasonable to assume that people
> using GCC11 will also be using the rest of the toolchain that has moved
> on. Which DWARF consumers are you concerned about not being ready for
> GCC defaulting to DWARF5 once GCC11 is released?

Folks who don't have top of tree pahole or binutils are the two that
come to mind.  I don't have specifics on out of tree consumers, but
some Aarch64 extensions which had some changes to DWARF for ARMv8.3
PAC support broke some debuggers.

I don't doubt a lot of work has gone into fixing many downstream
projects and then when building everything from ToT that there are no
issues with DWARF v5.  The issue is getting upgrades into developers
hands, and what to default to until then.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmT4t%3D%3DakMN7eHWgD_XdpN--PLpUj8vgujGJ4TpREvteQ%40mail.gmail.com.
