Return-Path: <clang-built-linux+bncBAABBVUF7OCAMGQER4CTYGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 41308380FD3
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 20:35:04 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id 31-20020a1709020022b02900eeddd708c8sf14004968pla.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 11:35:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621017303; cv=pass;
        d=google.com; s=arc-20160816;
        b=cLXSzPU6ap2FvzZZNjhEOguvXFka41JA81guu//mrEL227vfrRr10ymBP8UZ4uY66X
         xvHovH6sJBYgqXglsGmJynHBkI2COLqr902LsE4lgaKTpUIhHnY3DyHd82SFfFoqP2os
         DIo9CLnN+NehYujzm7+5O88GWsRr0gvMHU7pAdqkKr8Wmr6nk+h3WaA9YfAhyBRHfKqy
         70inymZPFy2ADapljjc1LTcImftoAf/6KqBcAAZuXePR4a2J1oovxHxdpdJNW9nm3DVI
         yaMdWlDM7jiAozFN3xo+pSTb7otyUER5HbRnPsBpP+AgONp4Tv827Sn6nR2oRzhG6cJv
         24YA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=uHLxrsUjPR/lOYYcKTUnQDNRrSI/CD81Oru9AiEE8j4=;
        b=AMjA0CXgRB97Sk/wT0WoaRP2P1duciAkVg1aOnXmXhSYYss72hEwGHkveUAKWHYjdN
         tyD1XVBg41KkpEut3BZGvXDTDE8oW77hGA7OjPKg+uoVv3d8/ZNNDoR1IdfD7ryUkyGU
         ogVAzlBp7qWX3aEPxD33ePQJhpAYs5MbSXR7lxV27PDtTXVJaJVFfNyjEXtsgmMWak6G
         KI5dLVmWBu/tOHZIiEIPQwhQ+b0l11jyXqC3+0dh3fuBPpVSbWJSlUH++rnd+VGV+/1E
         gqRP0u/045AOMc6SmFFtjMDj/PXbXPTDHjww12cLVRb50MNpGYxlt8WmLiTNFekRSkNR
         1Sjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UByPVfl+;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uHLxrsUjPR/lOYYcKTUnQDNRrSI/CD81Oru9AiEE8j4=;
        b=bO5sGU4CXsg8ALqd+2gfVKLFe/JgeTBYWlD5LCg465tSLJF8CSVadvlfVNwDdpV16n
         scrN9olX0T3wCNEbXZ0nRyq8PQd72rxpeLRWyTf6jC1NyZa1Nu+ZX9Q3YgTlSP2r+SMW
         P05hJ67UAGm/nXeS42tfv/20BuQm/hcbG3cMx8PuGlB5rXubLsNLNjXTVtdbHMiw0FCG
         ACU6GE/xorw8o2npptIeLGs3qFuSPRoGf083OgpPWnv/UEKI2G5ct5y+M9awEqlftpu9
         bjoLHmrTrQzECeBnDGXKVIwS36dou5XS76XMS5xaq1hQFMJvgZm4fJqy2G23JJFCs6wG
         Imsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uHLxrsUjPR/lOYYcKTUnQDNRrSI/CD81Oru9AiEE8j4=;
        b=LKTWiXPvjH/V304eZJ4Qqzt3xPtsun9DCqbvEavbEfWImxpavJlJm/e4zXFU+HqjBa
         gbZ+UlJKrU/YXo4dL77NogpfRSruP8Mo5hZdcitEZYRR6YjlVnUv0x5OFc4rdn6iXdXZ
         s+XdWohO6CxHrGokRlSBQDcB0Z0KZK7xWNrE0ZjGF5nfHdx9/nz+pzACQDI/6Kyy6g2p
         hZmZZdz6uIj+kZhfPpSPoySRMlsnb8da4UZ26nTT7Qv41SElGVcd/zyieIZXwz+PyuRE
         QsC7HFtnCkaVoO3VbPOXF4XcXVMh2ar84XC6gVb79ymGJqoa4yEOWsUBOD5+1PrtKku8
         PyBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532cez9qYC4UOHHQE+WWoKkcrmEUYCNkF10EkMFfAPSkAr1zTT/u
	Oca/GMa1GEddrGNowS7FLVg=
X-Google-Smtp-Source: ABdhPJyvIO3DiAqLfoy2fS4DiRmBG7y1J4+PAd8iMnfI52rRHIE/FY3ZLDkTICAfqlx6D6/CvnfGbg==
X-Received: by 2002:a17:902:e5cb:b029:ed:7f74:f3a1 with SMTP id u11-20020a170902e5cbb02900ed7f74f3a1mr46551897plf.45.1621017302935;
        Fri, 14 May 2021 11:35:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7e1c:: with SMTP id z28ls4497730pgc.3.gmail; Fri, 14 May
 2021 11:35:02 -0700 (PDT)
X-Received: by 2002:aa7:8010:0:b029:254:f083:66fa with SMTP id j16-20020aa780100000b0290254f08366famr47106611pfi.17.1621017302305;
        Fri, 14 May 2021 11:35:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621017302; cv=none;
        d=google.com; s=arc-20160816;
        b=jeXp9qFcV/Kw4XbggW2Af+R4ZLXIMCYnH+7vPo9m+gQI7QLSJ0nL9Dy1ke9LuaVrR/
         fkCrtF9xQtSLM6XfRKbwl/V/QE1CXAF5wKiKE4aMG7CXehPjshz70KUyvI+hTeIGnvid
         mXdadjFziVLHMNIq974mqLa2xQHDwkwglHcLQV/k8nL+mU0qfCrIIdy84dVwA9ZGDFYB
         xpEnSOsybbBB5yl/iUYS3Ei6y/OwCJwVVxdFNR5yM2WK2KUVsaQCuH2xAA+wy1q2W0jc
         pOGCHYy2xhgyjV5HHrZPgnqXjdq5ZjHLibIbMNlL5Plhu9O/EvKuKVuScz0xFrrO5a02
         NRMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CLiedsrNfquAlBwlKckTWd73i70Ta1hiHom33mb/D4w=;
        b=H3fD9B0Qq/K3DUIhAqzEw+m/lzKb9dnUyJDywWBHyDoCcXZ7RP0tvm7N+DETY5PrYx
         CH5rCzyPr63T6wrYPeoLcnq6GCiLtfpb5058RZNZdxKTqWDysT2oGLYFOkAHdooRqDHv
         5aBrv7LhNeONajlYRJzU6irzSclzEDD1IFqg8r+4fIiwml4GDX+TLgCWSkJVro4awhuJ
         eNSVBXoZ6vA67gESPYXAMOaamGlb6X7630A317EmCbr+1DrkuyMGQgeOmqFked6zYOAd
         70wJ3DSOqkQzHaXFx8ZtDgOVsOX1o/M9U//OrUwgBB/VHef1XW7BxdF/ECRY6Qnj6kNT
         fwUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UByPVfl+;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b17si702411pgs.1.2021.05.14.11.35.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 11:35:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0A14361457
	for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 18:35:02 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id z17so170139wrq.7
        for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 11:35:01 -0700 (PDT)
X-Received: by 2002:a5d:6dc4:: with SMTP id d4mr61902203wrz.105.1621017300619;
 Fri, 14 May 2021 11:35:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210514140429.3334181-1-arnd@kernel.org> <20210514101610.4392adbc@gandalf.local.home>
In-Reply-To: <20210514101610.4392adbc@gandalf.local.home>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 14 May 2021 20:33:58 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1bZ6DBFRy+HCax-=jj2rTa+hCkK8VOSRvX56CLAz23Ew@mail.gmail.com>
Message-ID: <CAK8P3a1bZ6DBFRy+HCax-=jj2rTa+hCkK8VOSRvX56CLAz23Ew@mail.gmail.com>
Subject: Re: [PATCH] tracing: events_hist: avoid using excessive stack space
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Ingo Molnar <mingo@redhat.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, "Steven Rostedt (VMware)" <rostedt@godmis.org>, 
	Tom Zanussi <zanussi@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Qiujun Huang <hqjagain@gmail.com>, Tom Rix <trix@redhat.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=UByPVfl+;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, May 14, 2021 at 4:16 PM Steven Rostedt <rostedt@goodmis.org> wrote:
> On Fri, 14 May 2021 16:04:25 +0200 Arnd Bergmann <arnd@kernel.org> wrote:
>
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > In some configurations, clang produces a warning about an overly large
> > amount of stack space used in hist_trigger_print_key():
> >
> > kernel/trace/trace_events_hist.c:4594:13: error: stack frame size of 1248 bytes in function 'hist_trigger_print_key' [-Werror,-Wframe-larger-than=]
> > static void hist_trigger_print_key(struct seq_file *m,
> >
> > Moving the 'str' variable into a more local scope in the two places
> > where it gets used actually reduces the the used stack space here
> > and gets it below the warning limit, because the compiler can now
> > assume that it is safe to use the same stack slot that it has for
> > the stack of any inline function.
>
> Thanks Arnd for the nice explanation of the rationale for this change.
>
> But I still find it too subtle to my liking that we need to move the
> declaration like this (and duplicate it twice) for internal behavior of the
> compiler (where it can't figure out itself by the use cases if it can
> optimize the stack).

It's not really internal behavior of the compiler that causes the smaller
scope to help here, I'm sure gcc has to do the same thing regarding
the placement of this variable on the stack. Clang does have some related
cases that it doesn't do as well as gcc, but I don't think this is one of them.

The difference between the compilers or configurations is the way that
inlining decisions are made, so if a compiler inlines another function into this
one that also uses a lot of stack space, that will trigger the warning, while
a compiler that does not inline that would not warn but also not use any
less stack space in the code path that uses the nested function.

> > diff --git a/kernel/trace/trace_events_hist.c b/kernel/trace/trace_events_hist.c
> > index c1abd63f1d6c..e3fe84f017a8 100644
> > --- a/kernel/trace/trace_events_hist.c
> > +++ b/kernel/trace/trace_events_hist.c
> > @@ -4597,7 +4597,6 @@ static void hist_trigger_print_key(struct seq_file *m,
> >                                  struct tracing_map_elt *elt)
> >  {
> >       struct hist_field *key_field;
> > -     char str[KSYM_SYMBOL_LEN];
>
> Instead, I think we should just make str static, as this should only be
> called under the event_mutex. To be sure, we can also add:
>
>         /* To protect the static str variable */
>         lockdep_assert_held(&event_mutex);

Ok, I changed my local version to this, will send v2 once it passes
some more randconfig builds.

         Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1bZ6DBFRy%2BHCax-%3Djj2rTa%2BhCkK8VOSRvX56CLAz23Ew%40mail.gmail.com.
