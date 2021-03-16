Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBKFBYOBAMGQEE7VHRMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 824CE33D7B4
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 16:37:13 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id f2sf15844562pjt.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 08:37:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615909032; cv=pass;
        d=google.com; s=arc-20160816;
        b=zDL+6QaBOr1ZY8vZThZx0jfNhmQaq3wtQ67CqRDPa2oAwj1XStBuVzaYClxLoDgvxE
         XgxhZscnL6kdGbwINttGjL7TgKCWh9vIcRYgwUcB2fi2qCgQsjSiQD209D+LHxtXd6rW
         aMsY5yBRaR7BOQRtdm7mUENAYApAs4A5Zm3RDcCu06wlgsGnpD6l223YqpTJacIlpHeE
         NBll5nQwilNlM92XFW1sygYNStuIFu1qbVz/zOCZm3eNRTzZl1sU29WmDb4g+SB020p+
         5iYdQ7KWK2E8XnI0Z+ygmZ9NT9TYoAP+OoDZE4ZfVWwE9Kz2/Uq88tvlKPzFVXRaueO/
         PVXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=q7uVJ9y9b+OC87QWGHyk0SzStlcp1I6iejk52y/tyfY=;
        b=CrgnDcYFgBfA5y5iDXy0PcE8PJfoXh/U/m4StYWhPPcqNNQkBo1aIRcguqZkR8rILP
         G/0g1O2mx/PkS/EwH+bW6RovYbtJmIuos2s0JiOJ9t53Qr3Nuz9kFNJteO/rgghk33he
         tl9Cm2s1z8y365Vb/j3s5E/q6AAL36JCHG7DUmeMVQfgTTmVQSGA727+dUuVYKGHVaur
         SPLGNPvMAZrdIHu4ZfI6UDQRjsnoEx05h6dC8GFqC98mwi61pPO6ckVVZNA7z4GunFgW
         H0izg68+K6rPqTmTbAijOgR2YEEKEiYeTeOsOng5gmQhbpgp3muBZTGKTtCXXo7nlHah
         x2NA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=U9WvGSGr;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q7uVJ9y9b+OC87QWGHyk0SzStlcp1I6iejk52y/tyfY=;
        b=Qy3sQNsq4Pq871QPELBAzdc4uNMtUZRaiTKzPZek5aMsRTNuv++h2SIvhGaf97yDI8
         8O5p3CjJLWQESNfXvqB5wB09Xo3Wg19QFbCHQ7o5kTwQup+egnO/E/sjhkJlVKimooOI
         iK9on2B5/9VRZbgy38XHUX6No/wQB07LIt7vPTQMEGh94WAsBDYty5WDnxSDQieYZcm3
         f7el4HihIGRr7wIcH0w7j1NOoIewvgP4EpsfM0ns3xGoTrtpAmBnLjuKdInb0+fnCv3D
         IqN8/Ov7W4qrZwMwGhh2PTq1uqFnOZ6+BWKgvSEhxd37uQThLaUE544RdTdPBGFOclG8
         yNqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q7uVJ9y9b+OC87QWGHyk0SzStlcp1I6iejk52y/tyfY=;
        b=qtk22jb2dkYBJV1Mn19nM1f/cWFttfyOZViEsOqNDbfqy76utuC2u+FnHP4gv8dlGH
         QR5gpmlbwCNhFO72OPqxH4me7EUotOwWk16Jk3Rqueb8Yd9aTzZ8YdUOWN7FSDUFrChJ
         Z+WFln5lIqDk+MOMkZeMoB+Caq3JPl+9RHQBJctWfG0Biy27tJY5uwc4Dh2cSrXSMPFu
         kwPAEdU3HU0iwPh+ZE2pc7NWexFV5fmWGMgPpXc/+VyNvSjtrrKbOyjFcj/UnbbzHJY+
         oYjMFyU+jmHB7zFZDABaIdV+3Feu8mgRLTJ/HAHmAiMYf72+THl5FLLkAXzH4Z4pB9va
         0Ncg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CuB0fLzeN/8392fcdJLp1bJ0u/Ua7ZayNFRgnZlT/vywLY0ob
	r+k0SbPgvjTfQkQKSOsicQE=
X-Google-Smtp-Source: ABdhPJzQ5WHztSAs7GOMSZK0mhuTl5JtJk5TcF9Z8sSM8N10GYllXh8yOYpnGSeSbH9BmJd3PKKsUA==
X-Received: by 2002:a62:ce4e:0:b029:1fa:b601:6681 with SMTP id y75-20020a62ce4e0000b02901fab6016681mr68503pfg.2.1615909032194;
        Tue, 16 Mar 2021 08:37:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:930c:: with SMTP id bc12ls6563990plb.10.gmail; Tue,
 16 Mar 2021 08:37:11 -0700 (PDT)
X-Received: by 2002:a17:902:c801:b029:e6:abbe:539d with SMTP id u1-20020a170902c801b02900e6abbe539dmr15267plx.47.1615909031548;
        Tue, 16 Mar 2021 08:37:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615909031; cv=none;
        d=google.com; s=arc-20160816;
        b=Bs+UWGKgyVaJowqluDXsw5pCoBbyH0fztfrOqMdlEJs+lyKvNZY8RodgkmFqDd8e8T
         5XJlizYA38mwI86rs3MnVOyxeEqPem7bq1l8NFnqFavU0k0fMuFPCKDkM964L28Z64x3
         IZ52OjhFbjfkMuEcLUV15qdau9evcDXqY/gLRS5gmGrQeS1rg64vdkb88i8pkAc+7mIB
         H587KZu0iM1KBkCGHyiPRMTyIXrabjRWVLbfjuggJo7P6Qw/EP/gsucgrJBvNTGsF8/Y
         haC7MgQOUv/RKpsV/mCLvQ0/WIWtmy0avX38dAXLwNqr0aMsmCWggHjaM4N+rrWcRWuU
         15fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=jHrK45JAsa4ty6YFTk/lmdroBH+RYTF+p5pe53mqFZk=;
        b=N9myJ3rSO6dVK/kvP+ig+akXK0nBILj+qQtoq6ym3LmAltAeeDn6LIigraN1FYgU+i
         0/Mjiuk2MVVpsL/Opk+gDXSx1lrA9JsUq9/HzSk3V0rWVSlw1Nkl79Pi9ycm7i3Q1Bl+
         DYFbjPYT++jIw3u4SkxmSOedto7iE9QVn4VtMssvMVVww3mWywZKnmR7W6Mh/4I7UGfe
         bIQmZGN7/Olnz2WqFnRYrxU94mzPINEEhLK5zbrzExX/eC+k8zyFxMsVTux63YRT82B/
         SC9aYMcz8Tm3qF7s+/6+UR5ZccNeFAu7XHfiDHX4fmnu1avQlogcZJa7awan2P3KPccZ
         bKjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=U9WvGSGr;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id h7si1091541plr.3.2021.03.16.08.37.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Mar 2021 08:37:11 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 12GFamb2011506
	for <clang-built-linux@googlegroups.com>; Wed, 17 Mar 2021 00:36:49 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 12GFamb2011506
X-Nifty-SrcIP: [209.85.210.172]
Received: by mail-pf1-f172.google.com with SMTP id e26so9063765pfd.9
        for <clang-built-linux@googlegroups.com>; Tue, 16 Mar 2021 08:36:49 -0700 (PDT)
X-Received: by 2002:a63:dd49:: with SMTP id g9mr225426pgj.175.1615909008535;
 Tue, 16 Mar 2021 08:36:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210302210646.3044738-1-nathan@kernel.org> <20210309205915.2340265-1-nathan@kernel.org>
 <CAK7LNAQ6goFdV=HuCdiCsr-PSUGxtafHZAa=p=96ieFyFHL8yg@mail.gmail.com> <CA+icZUVRyEGnLnRBiZjmZqmvCLkR8AZR8tihho83Lrr_F9A2BA@mail.gmail.com>
In-Reply-To: <CA+icZUVRyEGnLnRBiZjmZqmvCLkR8AZR8tihho83Lrr_F9A2BA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 17 Mar 2021 00:36:11 +0900
X-Gmail-Original-Message-ID: <CAK7LNATADzwnJt8vBQADGJjGe8jscRTAwvrLNc8AFgZ9SoWDUQ@mail.gmail.com>
Message-ID: <CAK7LNATADzwnJt8vBQADGJjGe8jscRTAwvrLNc8AFgZ9SoWDUQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] Makefile: Remove '--gcc-toolchain' flag
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=U9WvGSGr;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Tue, Mar 16, 2021 at 1:42 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Mon, Mar 15, 2021 at 5:22 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Wed, Mar 10, 2021 at 5:59 AM Nathan Chancellor <nathan@kernel.org> wrote:
> > >
> > > This flag was originally added to allow clang to find the GNU cross
> > > tools in commit 785f11aa595b ("kbuild: Add better clang cross build
> > > support"). This flag was not enough to find the tools at times so
> > > '--prefix' was added to the list in commit ef8c4ed9db80 ("kbuild: allow
> > > to use GCC toolchain not in Clang search path") and improved upon in
> > > commit ca9b31f6bb9c ("Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang
> > > cross compilation"). Now that '--prefix' specifies a full path and
> > > prefix, '--gcc-toolchain' serves no purpose because the kernel builds
> > > with '-nostdinc' and '-nostdlib'.
> > >
> > > This has been verified with self compiled LLVM 10.0.1 and LLVM 13.0.0 as
> > > well as a distribution version of LLVM 11.1.0 without binutils in the
> > > LLVM toolchain locations.
> > >
> > > Link: https://reviews.llvm.org/D97902
> > > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> > > ---
> > >
> > > v1 -> v2:
> > >
> > > * Improve commit message (add history behind flag and link to Fangrui's
> > >   documentation improvement).
> >
> >
> > Both applied to linux-kbuild. Thanks.
> >
>
> Sorry for being pedantic: This misses my Tested-by#s (see [1]).
>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # LLVM/Clang v13-git
>
> AFAICS v2 changes some comments in the commit only but not code?


For 1/2, yes. The difference is only comments.


For 2/2, the code was changed.
Actually, v1 was wrong.
That is why the tags were dropped.


I will re-add the tags to 1/2
since there is no code diff.


If you re-test 2/2, I will add your tag again.







> - Sedat -
>
> [1] https://marc.info/?l=linux-kernel&m=161480031518629&w=2
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=kbuild&id=d4aa405bc9cd506532f075456645716cdd1739c1
>
> >
> >
> >
> >
> > > I did not carry tags forward so that people could re-review and test.
> > >
> > >  Makefile | 4 ----
> > >  1 file changed, 4 deletions(-)
> > >
> > > diff --git a/Makefile b/Makefile
> > > index 31dcdb3d61fa..182e93d91198 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -568,10 +568,6 @@ ifneq ($(CROSS_COMPILE),)
> > >  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
> > >  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> > >  CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> > > -GCC_TOOLCHAIN  := $(realpath $(GCC_TOOLCHAIN_DIR)/..)
> > > -endif
> > > -ifneq ($(GCC_TOOLCHAIN),)
> > > -CLANG_FLAGS    += --gcc-toolchain=$(GCC_TOOLCHAIN)
> > >  endif
> > >  ifneq ($(LLVM_IAS),1)
> > >  CLANG_FLAGS    += -no-integrated-as
> > >
> > > base-commit: a38fd8748464831584a19438cbb3082b5a2dab15
> > > --
> > > 2.31.0.rc1
> > >
> >
> >
> > --
> > Best Regards
> > Masahiro Yamada



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATADzwnJt8vBQADGJjGe8jscRTAwvrLNc8AFgZ9SoWDUQ%40mail.gmail.com.
