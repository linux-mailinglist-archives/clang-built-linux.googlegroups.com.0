Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBMMJ26AQMGQEHAV5R4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C233235F5
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 04:14:58 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id b20sf634863pjh.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 19:14:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614136497; cv=pass;
        d=google.com; s=arc-20160816;
        b=pJJDL0O24xl5JqDmEy7C5K/oMkzzFIiFexaw82xOk5J+T7s7ttpOmD3qtxs+HCRuiw
         263xpjDKf2yidjfm+zlNH2WktbBAJ2XkmHqIuaOcGu3NUfo1jyWxgPwd0arPdPI69ZEu
         EQ3hZ/i2minKxEvGc9qQ8x4IGB/8zdsSoR2MpT3Ea8+ypOrWcykvfLex/v5KzoBWktto
         b7tVJS/qAESDQwAwq556qOINWmll6u4FAqbmjdfkT4tq/c1q41Re9M17LQpXTr+hsdyY
         1K7jQUcYqor50/Zefwmvjbij1jVwdlt6vWn8zg58w78H4EbI+46Y0N+6XJCkFSGE6FF0
         Uipg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=p9v2uIv7kh3UX8vnTCjBYDeveT5+1DwMhqGw4pMFYLE=;
        b=eBNE7f1GTFoxK5vlFrPjF+Tmrvjzafql3MIOEhmwHz/4u8vEwTQ7v4RV1tY6Q0Ejg3
         HU7I/IkadnKvMWDeCWFgcRv1jhQPpuETtEQCXPhXTjP9EJFWG0mNGSWFn19VeVigXSbf
         OthB+s+xnA//g03eybLmKhDFlBhLcGymAc3tu/W29T7hb7Hms8C1Hk2G0eJhgba2bDWl
         7EbgwZmtfWF/rXYN13VvKz3bXDaU6shwyEC7sXCH1DrfaF3SWNXZ6bflHmWDRFT+WBxu
         zUXbPG2piFHYRY3sHaXT6ntxPIQ52G2WsOfrOOH/Z4cST55uziFnUgmqhnGvQ9TJsoFG
         8HKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=EhPtFp6x;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p9v2uIv7kh3UX8vnTCjBYDeveT5+1DwMhqGw4pMFYLE=;
        b=XLDqslthZ0oL4zJQ1Ifu/0Yt4UOtSFMXYkOMWB9P4bD14G2waI3LBoOPWHrL0iH4ca
         BRawcrGmlXiF7Wd/KhV3BSbM7aQPB5DzYVfSKitfAR16Sh1ydnQ3IB4/fqjnCNM63BK1
         j0aZCEyj+S9fp9oAgywgvsfI23J0s8pwmwGWxUGfc+H71TpKSWrIzh7+vSEAx+Xj1b2z
         J2aE7qnOwrmw1ZyY4iclP3Xn3+aKAzfMdLSDgRJpovpo0V6EDMEP6yaVDqa0YF1YFyJs
         BROosvrsm7C3xiVSNepMlpF3HPNWXRGZDzjjaMe6k4aPRFrCg7UKEwhZvE2ce0aEfC4T
         i1dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p9v2uIv7kh3UX8vnTCjBYDeveT5+1DwMhqGw4pMFYLE=;
        b=cD0yL+IEX7WpcFAoqQgINfeJ4ZttoThgbWzkkF0F71mX/TXg2SCXUdQEJpuCzLZX79
         Z0BJ8HFeRrijQC9WRWM1nY6RInfjzZGNnokXYX9kEXCnm0Zi9HhTStJd+knJhRvlieUu
         vlfJ0+B20tNLLQmLwSzdhNup9I6uHb0cpwcRgvFqYh8C4NxeSlQN9mDYz5YmDTfNFrUv
         q8MwxDYjPtGWfRn3OEswObnlD1J2iWQ3+3ibubkNsLPCjzWhunDuXJrXC8+l2wWaJ3lr
         phA+6I5OzhHBomPTe/TYAb4/wpoR4a9siJvmUGqN36sKvcAyXiekmbnpzE+5A9k5nqh+
         7K3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533W+aSneh+HG6rlPsHz+x4+NuJMU7Ed+VvhRnan5CJhTCD5n/4w
	lrrEKjeeO6lFUo9jlTbGEfc=
X-Google-Smtp-Source: ABdhPJyvurjoRuAvQ3nBO23G/Olkv4Fc+bktPjcw5bQW+bYJQYH1wLJZ4fmngc4O0YNWBu3R47ryHw==
X-Received: by 2002:a17:902:e8c4:b029:e2:b7d3:4fd7 with SMTP id v4-20020a170902e8c4b02900e2b7d34fd7mr29467920plg.73.1614136497418;
        Tue, 23 Feb 2021 19:14:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5918:: with SMTP id n24ls247450pgb.7.gmail; Tue, 23 Feb
 2021 19:14:56 -0800 (PST)
X-Received: by 2002:a62:e502:0:b029:1e4:d7c3:5c59 with SMTP id n2-20020a62e5020000b02901e4d7c35c59mr29701186pff.51.1614136496887;
        Tue, 23 Feb 2021 19:14:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614136496; cv=none;
        d=google.com; s=arc-20160816;
        b=Q4PbIZM1ZUyo2ooy4+hIx88WvTEArZFtQv3CJqPXxWyZhm5VDfGy8B5FNJuPqNjHn+
         JyWxUkY6pp64XSUbnDMGx1PWQO3wj3EGTHxsPytwgHlbBXCclyE1UUfkA10Je/K2psIJ
         2nYhXNPr5HE7ZuMDxxo7pSU2BzGP43PHr7tznTrRVapYTo+cuOVvjjfQHWqiXVzD7xC3
         Ioly1inmjLyzU9LiCCGwm/UOjIKE8ow4S09ORR4od9700J1POvUfc2cgK9O17sS1JB0D
         OXrax96qw7pioUHvolemyKG+MtIvoB2thAecE9erVSsmkJqKGSO9eWnGxwcjCDMdSi1a
         t+gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=BxAdqFYTvCTCTcnQXNwMMcHQIOzVEEBf5uOSZ6wOE+I=;
        b=0er796XfZxKuHPGyD5pe2qcoZO0OdVraggqwykKlr9wdSZjfiGulWtdVDC9YON5yV8
         vZ/nGoye4gr8GKjS1LkDuB8t9pbo7FyEgr4W/NirR2MAaZ6N1iBVKNwYiw52hmhBCrRF
         Ai1ULKjAvqQBYESpkw1Gy+0XjVfOXUt7zqpgizQ3HdR41WeX6QlmciV5e+NzLZyG23g7
         LElfgv9BDYh+AbKZdH6eGwkxpH6X9NP7ccALlhioUu6bFkVrFFBpzq5hDT/qliEdJ4GM
         XizzcR82eb4TT/flMDowysj02441dNc7Mbah68N9Kc8JChztQgJO+i6VvSrRiR7X/rWD
         AU6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=EhPtFp6x;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id h22si26283pgb.1.2021.02.23.19.14.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2021 19:14:56 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 11O3EfCE012840
	for <clang-built-linux@googlegroups.com>; Wed, 24 Feb 2021 12:14:42 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 11O3EfCE012840
X-Nifty-SrcIP: [209.85.210.170]
Received: by mail-pf1-f170.google.com with SMTP id w18so387436pfu.9
        for <clang-built-linux@googlegroups.com>; Tue, 23 Feb 2021 19:14:42 -0800 (PST)
X-Received: by 2002:a62:1412:0:b029:1ec:bc11:31fd with SMTP id
 18-20020a6214120000b02901ecbc1131fdmr28966427pfu.76.1614136481220; Tue, 23
 Feb 2021 19:14:41 -0800 (PST)
MIME-Version: 1.0
References: <20210205220125.2931504-1-ndesaulniers@google.com>
 <CAK7LNARKHvjTcnic=ZKntH3NY5meehQbJuBr34y9_tn8b-Ym0w@mail.gmail.com> <CA+icZUVkFOZq=5K=dKsQAFJPTmEE2gr_hVmYM=Q+rn70bSOh2w@mail.gmail.com>
In-Reply-To: <CA+icZUVkFOZq=5K=dKsQAFJPTmEE2gr_hVmYM=Q+rn70bSOh2w@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 24 Feb 2021 12:14:04 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQGUnzLSOHAwF6ebH7oOuNETAyf3nrdNgNNq7JsDgiFkA@mail.gmail.com>
Message-ID: <CAK7LNAQGUnzLSOHAwF6ebH7oOuNETAyf3nrdNgNNq7JsDgiFkA@mail.gmail.com>
Subject: Re: [PATCH] Makefile: reuse CC_VERSION_TEXT
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=EhPtFp6x;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Sat, Feb 6, 2021 at 12:46 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Sat, Feb 6, 2021 at 2:49 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
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
> >
>
> When I see this... and hear refactoring... As a suggestion/improvement...
>
> Can we have LD_VERSION_TEXT analogue to CC_VERSION_TEXT?
> Both are shown when doing a `cat /proc/version` (and IIRC in file
> include/generated/compile.h).

Sorry, I had forgotten to answer this question.

Probably, we should do so.

Feeding it to Kconfig allows us to re-evaluate
config settings when tools are upgraded.

One question is where we should draw a line.
If we record the version text of CC, LD,
we should do that for more tools?

For LD, I will be probably OK because
some features rely on LD_VERSION or $(ld-option ).


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQGUnzLSOHAwF6ebH7oOuNETAyf3nrdNgNNq7JsDgiFkA%40mail.gmail.com.
