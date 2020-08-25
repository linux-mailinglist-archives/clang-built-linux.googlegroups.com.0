Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBQMMSX5AKGQEG44H3PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id AF478251DDB
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 19:11:30 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id n10sf3412300vsj.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 10:11:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598375489; cv=pass;
        d=google.com; s=arc-20160816;
        b=IMX+NAB6m/BX2sMMJ9lc3Gkv1Oxq4Q/LgBl8QZVa0QU9Q9TvyWS/OtJw1Iwa22w/x1
         a+REKDbiLj+jjdF7BJAhnyzAHFOmo/KcfvFgGH1wX0XxweeZcEbVFb8GzeQx7wcCGcMZ
         a4LIM583tFzG0EM02XfzCTpRGPzjNyUMk2LkiY+Py3uWxKnApBDowMZbnEIrzKMruSr/
         VSLdR1Uyyl5qSk5it2wUL74rDL5QgLeAgTdCUyoNlI2JtsXXECMRHHLnVc/7d1bfZRAy
         YU48lqx/ZStY72J3ukSbfy7co27tgpb51HDdx9UNqnMOPtPCuhyLyFmFW3ZhHw96jW0G
         pgJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=ZUl9w+mJK0+g1sGlBl06PHZxv4pC8fRsp8vCYgIlzIk=;
        b=hHVb4MtZgtPCwJiNliTSBbazyTwM1hkvZdnowFcQdRzAYYh8CIFlbtVW2QEkqypZzY
         ALEcUCyB1M0oolIuAE7yE5DRthEKx86VfDpngSxQ5VHUCQNzc0ULiktJfxyBxJQScW4l
         nq/zi5z3EHX+9aoaWMi4dddo+Ky2pt7nm0tE4K/t7nisG+MqSqdfrGHlZfjJW+34MOc2
         BcyJtkxkXhZ9OxQFE69MqNYsruk4Rgt9uSqqznwFgL3iCLy3TVe3CPJnt98tuo32tvxa
         9h+MUmKVN6g7sSQUIvYbiQioUifQ7WKa6IhStLbILJWocus6OySmjwau8U1rMVL2hM0M
         QHAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PA7ETvB8;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZUl9w+mJK0+g1sGlBl06PHZxv4pC8fRsp8vCYgIlzIk=;
        b=MGgr2NjrXLbvxyZyH02pN41EfCBdBtO37F385Zzv35ymsOAzgK+UsUrJBw0FKxRQ/p
         a42NatW+0+1kxSyvBHigLOC7qTJ3H8ZczgV9LfD1hAOVC1AyU9FHeUq9p3fzy2fDLfqT
         YwJr5cA9LonQ38H3WZU4JpRUOfm64XeaAp80tCchu9IGulckAUAEv5gRS9qpIUipAR8c
         KOxxmrGLT0zKBqrrSpCAYO5Us51TjMtXyxcBzrBuzXwyWfoHksW2dNksMtH0w6aXi2Qx
         nJlM8ytCxvBAo+8AgMukQnsPnh+GPQcR/BjWoCZm4kjHlPqOAz/RXDcFoE2rMhvqZnbP
         Bw8w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZUl9w+mJK0+g1sGlBl06PHZxv4pC8fRsp8vCYgIlzIk=;
        b=R7gkHSTrHGBFok8Sgo2dM4x9BMuq2my2S3YA7oGP71T2vdmx4ap7eb7EHC1r+LX2PK
         nZ6s6Cdvp82P1rOx/UPqfi6Dg3elOJL/luEZ4xpHYBP7RxAUC6j0cJuYEvjM0MRrw06H
         fqbbG8xBUI7L0MRWOuOg7JHo9H4bVY70rtKFRIV6TqTxCjSjVFlPMSJjrktkOmdPkEmf
         r1AvZ5Q/VjFDWvhHZvBjJPY1dvMRor9tmwFxvebi+bQ5uaLKdCgtQqDCxjQez+qVsr0i
         qEJWE1zkp5GDJ/xJuNop2CPY6kDNPbXAK+DFNJW/rN1hyHBzcndDwfOLnjtkDWr0w9TE
         T3tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZUl9w+mJK0+g1sGlBl06PHZxv4pC8fRsp8vCYgIlzIk=;
        b=UjqWMTUF8+JxV4L0BquzrIFZsw5Y7W3CUg6DZSzAim8tAdBHiqQzGKrNID6QpKm9Qo
         +vyHroNdaFXgzVMoU8aJoni4VNYmXwIQlIcIfniqhh9EXunZ7gcPimFzc7y2D3z99TzA
         h/YlwHkx51+K7USQo0kUrnLCeK6hg+KE00YNpG/r0sOO1trklU/sMelXGktTMibitPED
         ZBv0iwZF5lrBzsi0PT6eEneJHw9UeI8ud9pByJEhlpj5bhSFT3SDyJ1tk5uFC976uUUH
         bt7qpIAFg6AFDO3mkMpSBX9AdiTbp52RVuCNO68iyn3MfYFvFmnNjIdEos3vdgHMkYVP
         9A9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Xh59LZeidH7iUaAweCREZoKASj6S1BIIRQ8s9q72b0EAi04Hs
	ckJ4d0drS2TQ/EbI9gz3JEo=
X-Google-Smtp-Source: ABdhPJxyDTz6jhRp2Y2/gfvg1WBWN7qMryC3fIJuLDPCUMOY/37cdW3PgPp0uwd3J2sIiuUg2qt6Lw==
X-Received: by 2002:a67:fbd1:: with SMTP id o17mr5927073vsr.19.1598375489709;
        Tue, 25 Aug 2020 10:11:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:3807:: with SMTP id f7ls703660vka.7.gmail; Tue, 25 Aug
 2020 10:11:29 -0700 (PDT)
X-Received: by 2002:a1f:1a0e:: with SMTP id a14mr6827546vka.87.1598375489204;
        Tue, 25 Aug 2020 10:11:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598375489; cv=none;
        d=google.com; s=arc-20160816;
        b=xhaWfnp14/9ZxRdWnUuSYiiOa01vTSWBoZ3O+PiS/zC/SLkjlDHMxrwhigD+ElLAam
         999Cd53hgRmudoUd1POJVPqadSyyBZxc/wToiUnTne69MMqNvIk9wQqz2kuXGvq9WoKz
         dypH7ajE7Kzsq6my0Epg2jkTdRsTuZndIvI/ourGq5KSe9r2XmLQpRcuTfm3EKJxC+Tn
         Hx5nAsW1RK5mXPRriKo97yEcY3sl4FIbVTvFOwDGzEDTJuzFlc9+CU7BXGbS4sI8g35H
         iA+KC1dn2bvP1eJqb/3LfZc7a4yB0GYDFmNrTJpwbgDtxRCAePybh+wjc6eDGtkTJBVG
         Ryww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:dkim-signature;
        bh=Yj0lkjVAvA78Kw2auCn0cDB1lRzvSE9N63v/cFCqdNc=;
        b=qUXxeQLIfKYn0jT0NyYmEp4jazid9XGCExU9L8bVwFLkGfLkcPyZgOkm/SW8bm1qEz
         jt5/uW9cYgH+3+nQPdi0+IqMxZJY4EbNiETum2mzagTLY5qhJUZuAoLWoDy9ZIKD85Lp
         966gsba5WSVLZtCDuQM8YGODQMs7Heib6iW3mKpO3SF3Wkmqw4plcdQZ5bt9NE9ZjS47
         NejAaNjlkVZ0Gil1a+Y19NcrxW1LDkn4qbZKE8pvcCx8+eQmZ0IIuE3xa97U4c+BJkL6
         iRFsXb2Z9VKtB0M2sMeDPpuZrDV+fvxAQOz/I+zbSx1qvPgw1LrPYMzkzrtdzXYDbGA4
         Mdwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PA7ETvB8;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id j18si746563vki.3.2020.08.25.10.11.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 10:11:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id z195so9236035oia.6
        for <clang-built-linux@googlegroups.com>; Tue, 25 Aug 2020 10:11:29 -0700 (PDT)
X-Received: by 2002:a05:6808:311:: with SMTP id i17mr1684829oie.72.1598375488689;
 Tue, 25 Aug 2020 10:11:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdkHzbPjw71n+RVXuM6Wt6PNO6fiy+14QTzthF7MCkewwg@mail.gmail.com>
 <CA+icZUWvEzUhCjkMYAK22pkjshKmfE4a2y_W0sPPuqRtzXOtNw@mail.gmail.com> <CAFP8O3LQSS4BufLEPQKOk62T0d8HoZq0kQAU8+K4d4gpY4CPag@mail.gmail.com>
In-Reply-To: <CAFP8O3LQSS4BufLEPQKOk62T0d8HoZq0kQAU8+K4d4gpY4CPag@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 25 Aug 2020 19:11:17 +0200
Message-ID: <CA+icZUU44tbsmGfTc-2OO42V42Z02dRSs7AZCJBnXL65vJDz-Q@mail.gmail.com>
Subject: Re: linux tooling mailing list
To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, postmaster@vger.kernel.org, 
	Peter Zijlstra <peterz@infradead.org>, Nick Clifton <nickc@redhat.com>, 
	Segher Boessenkool <segher@kernel.crashing.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PA7ETvB8;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242
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

On Tue, Aug 25, 2020 at 7:04 PM F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@googl=
e.com> wrote:
>
> On Tue, Aug 25, 2020 at 8:12 AM Sedat Dilek <sedat.dilek@gmail.com> wrote=
:
> >
> > On Tue, Aug 25, 2020 at 4:53 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > > Hello Post Master,
> > > During the Binutils BoF at Linux Plumbers Conf 2020, Peter had the
> > > great idea to establish a toolchain agnostic mailing list for the
> >
> > You say *a toolchain agnostic mailing*.
>
> This is a great idea:)
>
> > > discussion of tooling related issues and requirements from kernel
> > > developers so that we can list it from the MAINTAINERS file.
> > >
> > > Would it be possible to setup:
> > > linux-tooling@vger.kernel.org
> > >
> >
> > So why don't you use it in the name of the mailing-list?
> >
> > s/linux-tooling/linux-toolchains (better plural toolchains)
> >
> > Thoughts?
> >
> > - Sedat -
>
> FWIW FreeBSD names it "freebsd-toolchain".
> NetBSD names it "tech-toolchain".
>
> I'd slightly prefer the singular form.
>

OK with singular form.

I was thinking of GNU and LLVM toolchain*s* - that's why the plural.

Please, see also links below.

- Sedat -

[1] https://lists.freebsd.org/mailman/listinfo/freebsd-toolchain
[2] https://www.netbsd.org/mailinglists/#tech-toolchain

> > > (I'm open to bikeshedding about the list name, but "tools" should
> > > probably be avoided:
> > > https://www.urbandictionary.com/define.php?term=3DTool)
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
> > >
> > > --
> > > You received this message because you are subscribed to the Google Gr=
oups "Clang Built Linux" group.
> > > To unsubscribe from this group and stop receiving emails from it, sen=
d an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/=
msgid/clang-built-linux/CAKwvOdkHzbPjw71n%2BRVXuM6Wt6PNO6fiy%2B14QTzthF7MCk=
ewwg%40mail.gmail.com.
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/ms=
gid/clang-built-linux/CA%2BicZUWvEzUhCjkMYAK22pkjshKmfE4a2y_W0sPPuqRtzXOtNw=
%40mail.gmail.com.
>
>
>
> --
> =E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUU44tbsmGfTc-2OO42V42Z02dRSs7AZCJBnXL65vJDz-Q%40m=
ail.gmail.com.
