Return-Path: <clang-built-linux+bncBCMIZB7QWENRBA7K4LZQKGQEFX7KMNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA2318F547
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 14:09:25 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id d11sf7021559pll.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 06:09:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584968964; cv=pass;
        d=google.com; s=arc-20160816;
        b=xQXqTJCTASgW/DgOMXtWX8dtXxcI2y4fNrL85WnBdJEhzDz8tA0ZbbXTDBNWmu2/yo
         myLyAum6J979zQwgRi2OwtOC97SpaDRjoCrRT/m1Yc83zBEt9fPflGzM3yWpts832Lbb
         PKcGID0JivL/NJvy+y7z2JVwTVhO9Pu30d9+QNlaMq9MSAc+nMaYvjGgMag0sQz+VPP5
         0nPe7G0jxmeqiLmDzfgKXniXf5+ObTmH/x6SBJ5+xwmF3pw11wcUo4Bqw4bYxjMFWdnd
         cCNG0ZWDEywt+qn26f41X9C96qznFefb6xhFL3EO+cPiNTReEQakrCMPD3/foiJVpRT6
         dqJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1cqOnTFM5LJkRK5R6BnFwcoIhxoCKxUAtPFvJy/wIbI=;
        b=w9x20ApEFCMPtzI8JpDBRm9VozbexDDQNAIhwQTRQXQ3uhVxMaSwHSP7hBjXGvoGhs
         E9z5lBZ/TnFcw2S36C5dj0c7ti5edmFxKtRvxUBcXMjGlGR+c9WtgaZXKwDOllk++Mqo
         DeWjBlAZ4yt86B8tkIHLvHTFCS64wtPXdhfgZvriM8Cy4vsT2hZHadRQ1UedJnAeej5Z
         Ql+34Y9apZTHuW3+LX+MiqBg1Y/TCbLnAshq52wyMwo2qYuOgffUCTn0xU0U3Fr+L+Q4
         FERj5y1GTQgTpQRJW6Jn7h9wtUjHIpm7nntP20U1E5z0SNkUXDZvzsbdTHlGudszDmvp
         jG+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="s5d/g3Wc";
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=1cqOnTFM5LJkRK5R6BnFwcoIhxoCKxUAtPFvJy/wIbI=;
        b=LaOwaLAk+1rtgY58hxFWsTilF3VGxVJdHP1BTHFR4T7pOOcR2aXP/vwbdaihyuUFQL
         H1GEEupqdCF3CZbsba9oKt3/xJ5O2MuVRNItanzLhobQjuSUIgoyWDxANCmPMYkvZR1A
         99fwsRPdnTsIlJ8S0ybkAzObspC6yElbBJ/6g8N1nIgVzpdxV7qe1Y5F5jZIa27K8OCR
         7USMCdm7dVQxAU2kBE4wjHb48ToTysKmTPL/9UkAxYN9qcG78BL3L4/m/z+NSS7I/a00
         o80tVwVYgK7ZgcjZdnORilyKjigPQJByNDDeMaNEAobcJMKFuFWSW9frkG4D3EVhWy9c
         1XlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1cqOnTFM5LJkRK5R6BnFwcoIhxoCKxUAtPFvJy/wIbI=;
        b=f8Yh5Z0qoAVCWTdR0Z7vLxZFEm/tg7DUfqizgEWH2SUgJD+kOTEDz8Q01hwamBRge0
         jg5AU12B1nmxSnf2D7seERBctymdyawOiJQm0MAbAL22UFENlkaehM/9FKhmpDickHRk
         JPBjr3BtY79Nc0TSVYxWyVFyN0NubFz+eSUHSlr/08m+6tQvpRsnBRGcrk9fv5S5njSq
         kaQxv5LYum23wVJdwAjZFEEvvX2vxgNd6l7yJ+zVlMTxCheRDDikb4yyScbEnSleGMvp
         iR+Bwwhrf7sAzWhfd7x43FEeAngd6DFYN9L+Amsv8ARalA+ykUPAEjLeVp8ksllL6PQe
         nmOw==
X-Gm-Message-State: ANhLgQ09a24/Wee6lZZt6lBKIU95XHh3HSK+NXhCFy2tyeQ6BfZoqINK
	uuRk0QPuIVcQGU6j3QgObG8=
X-Google-Smtp-Source: ADFU+vv1RZA82+oeL/Sd56hHnNmtel9LffH7hLInJXaWfUKyqtarXLPtj0MdcomdPV+o71Vq8qbIUQ==
X-Received: by 2002:a17:90a:20ad:: with SMTP id f42mr24644685pjg.135.1584968963819;
        Mon, 23 Mar 2020 06:09:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:cf0b:: with SMTP id j11ls1477923pgg.10.gmail; Mon, 23
 Mar 2020 06:09:23 -0700 (PDT)
X-Received: by 2002:a63:e452:: with SMTP id i18mr9271105pgk.310.1584968963275;
        Mon, 23 Mar 2020 06:09:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584968963; cv=none;
        d=google.com; s=arc-20160816;
        b=gQ7NhSMahi8XdHEoXWgEVbvXpcyEM3fbb3ftST5XosFCD4mQN7LY/NudUtNUbVwcbe
         BhDEJluekRz0iUtu9dHiy0hMIGpFuuROSda4wEtGxHt/vv1IuSJnCngt5e4JyqqgcQrP
         KByhbpLJ4nMCma8gA/C7r1TN5efcs8Ow6Jlx2zMulh8JoaCPWSO7jsE907P2qquAGK32
         jHSJAIMr8/K612wdrn7HbJYhjDlxAx1AtFa51SKBxruTCwru5Jpjn1HbnWKx+uLz3B6E
         V/WkIo9VHxvpULNODWJP6tJ60V16Mbe6Zo9U5UON36mkSa1puYSns4khT3DULFsWz+OM
         01rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zX+eNd4iQf7TzBvGqqHUALKhXrOFwmRi4vTW9nfx6TY=;
        b=UanRWg6v3z9aWpw8CwzvHmF5koTGIRgvkiDKGP1JKGgfRXH4o8SRVzthDDzPJWJyUN
         Hs4Xy7oa6IGtRQqrzCIURNT8JY0SRHokK9YVjsxpRc3M3LV9sy/chAPY8invbS8PsClE
         KnL58BbnG9DQ5tvOjZ+6XsiL/ifLsWsSrxL3vsVt59Lm2VG/Jixwoe/jbbUqzWfMKH0+
         n1OibCiJICd5hCTjbk6UB2pOmU2SNQT49MJ/fyDv6qiRV8HLRFm+juQOSef5vA6Rppjw
         wLyTimV4naoPBoVUKxE2AlSqmopxQoLgNurylgsqLqsZ+uXW+JOFpA8V2sL88gAfQkKJ
         N43Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="s5d/g3Wc";
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com. [2607:f8b0:4864:20::f43])
        by gmr-mx.google.com with ESMTPS id c10si1133553pjo.2.2020.03.23.06.09.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 06:09:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f43 as permitted sender) client-ip=2607:f8b0:4864:20::f43;
Received: by mail-qv1-xf43.google.com with SMTP id n1so7090171qvz.4
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 06:09:23 -0700 (PDT)
X-Received: by 2002:ad4:5051:: with SMTP id m17mr9136076qvq.122.1584968961179;
 Mon, 23 Mar 2020 06:09:21 -0700 (PDT)
MIME-Version: 1.0
References: <CACT4Y+ax3BuO7kNofmTWoTKtZ1O0-6KbnKMrWxPviJom+2wngQ@mail.gmail.com>
 <CAKwvOd=kSrNTdYiXWDLgqPoaZas5FddbM9XQHc=P=se3e7X04Q@mail.gmail.com>
 <CACT4Y+agNoC5zUtHjBniZAjA+JRrYnwUQ8TmJ6-SVFoC50HbJw@mail.gmail.com>
 <CAKwvOd=+Hs3Mpe04aCQtMvMw_i6VKmtzztPe41E_hEX9mfzjBQ@mail.gmail.com>
 <CACT4Y+bqkgS1oOo4=XH1ik=PUT1ZGF0AFi2ZriPww+5qWWSnwg@mail.gmail.com>
 <CACT4Y+ZnE0pAQmmZZZ-fQpVH65UwtZJ-TVw+iOAkmhNgv3YuOA@mail.gmail.com>
 <CACT4Y+aS9nZp75xbVicUXxo-Wo4R9xop_2oTodS8hcYD2zhJoQ@mail.gmail.com> <CAG_fn=WovKuLO3bo+k94xFMrS+BAqGHfVfR=kt-wa7AWA0-qhQ@mail.gmail.com>
In-Reply-To: <CAG_fn=WovKuLO3bo+k94xFMrS+BAqGHfVfR=kt-wa7AWA0-qhQ@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 14:09:08 +0100
Message-ID: <CACT4Y+YvMYnwocDx4YpiuekarmWa_B+dzjbYTjaB2p6LbnT1jw@mail.gmail.com>
Subject: Re: some clang miscompilation again?
To: Alexander Potapenko <glider@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Tom Roeder <tmroeder@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="s5d/g3Wc";       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f43
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Mon, Mar 23, 2020 at 2:02 PM Alexander Potapenko <glider@google.com> wro=
te:
>
> Do you have any understanding of how long has this been happening?

Presumably in the Mar 6 syzbot build, potential commit range is mentioned h=
ere:
https://groups.google.com/d/msg/clang-built-linux/Cm3VojRK69I/yvgZNsS6AwAJ
https://groups.google.com/d/msg/clang-built-linux/Pk0g-hIWal8/Sqh8h1J_BAAJ

> On Sun, Mar 22, 2020 at 8:00 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> >
> > On Sat, Mar 21, 2020 at 3:49 PM Dmitry Vyukov <dvyukov@google.com> wrot=
e:
> > >
> > > On Fri, Mar 20, 2020 at 6:00 PM Dmitry Vyukov <dvyukov@google.com> wr=
ote:
> > > >
> > > > On Thu, Mar 19, 2020 at 8:35 PM Nick Desaulniers
> > > > <ndesaulniers@google.com> wrote:
> > > > >
> > > > > On Thu, Mar 19, 2020 at 12:31 AM Dmitry Vyukov <dvyukov@google.co=
m> wrote:
> > > > > >
> > > > > > On Wed, Mar 18, 2020 at 8:45 PM Nick Desaulniers
> > > > > > <ndesaulniers@google.com> wrote:
> > > > > > >
> > > > > > > Thanks for the reports.
> > > > > > >
> > > > > > > On Wed, Mar 18, 2020 at 4:26 AM 'Dmitry Vyukov' via Clang Bui=
lt Linux
> > > > > > > <clang-built-linux@googlegroups.com> wrote:
> > > > > > > >
> > > > > > > > Hi,
> > > > > > > >
> > > > > > > > We started seeing massive crashes on one of syzbot instance=
s. You can
> > > > > > > > see 2 examples below. The rest are piled here:
> > > > > > > > https://syzkaller.appspot.com/bug?id=3Dd5bc3e0c66d200d72216=
ab343a67c4327e4a3452
> > > > > > > > (search for "ci-upstream-kasan-gce-smack-root").
> > > > > > > >
> > > > > > > > This happens only on the smack instance. It's the only inst=
ance that uses clang.
> > > > > > >
> > > > > > > Can you please enable more bots to test with Clang?
> > > > > >
> > > > > > What are additional configurations you are interested in?
> > > > >
> > > > > We're testing:
> > > > > architectures: arm64, arm, x86_64, mips, ppc, (s390 and riscv in =
build
> > > > > capacity, not yet booting, TODO)
> > > > > trees+branches: -next, mainline, stable (back to 4.4)
> > > > > configs: defconfig, allmodconfig, allyesconfig (defconfigs all th=
e way
> > > > > back to 4.4, allyesconfig only more recently)
> > > > > clang: ToT, latest release
> > > > >
> > > > > The more coverage, the better. >  I understand the limitations ar=
ound capacity.
> > > >
> > > > We can only offer x86_64 with subset of allyesconfig. We have few
> > > > other branches (net, bpf), but that's it.
> > > >
> > > >
> > > > > > It's not exactly a unit-testing system, using it as unit-testin=
g is
> > > > > > expensive and breaks production. So far we've seen 2 breakages =
due to
> > > > > > clang and 0 due to gcc. If we switch more instances, we will al=
so need
> > > > >
> > > > > Syzcaller has never found a compiler bug in GCC? That's surprisin=
g.
> > > >
> > > > I don't remember any.
> > > >
> > > > > I thought the one clang bug you identified was due to using a
> > > > > pre-release version of clang-9 (was ToT at some point) which had
> > > > > already been previously identified and fixed?
> > > >
> > > > Yes.
> > > >
> > > > > What was the second bug? This report? Are you sure it's a Clang
> > > > > miscompile at this point?  Are you sure it's not undefined behavi=
or in
> > > > > the kernel somewhere?  Feel free to say "told you so" when we get=
 to
> > > > > the bottom of it, but I wouldn't be so certain at this point, les=
t
> > > > > someone tell you "told you so" otherwise.
> > > >
> > > > Yes, this one.
> > > > It does not matter if it's clang's bug or not. The system will go
> > > > down. Imagine you are testing clang on the Google search and it goe=
s
> > > > down. It won't matter if it was a clang bug or a latent bug in the
> > > > code :)
> > > >
> > > >
> > > > > > some dedicated people ensuring that they work. I think eventual=
ly we
> > > > > > will make half of instances use clang/half gcc, but so far clan=
g has
> > > > > > proven to be less stable for the kernel and we don't have these
> > > > > > dedicated people... If somebody volunteers? :)
> > > > >
> > > > > Doesn't syzcaller generally have this problem? People working on
> > > > > reporting bugs, not necessarily fixing them?
> > > > >
> > > > > We're here to fix Clang bugs; if we can find bugs that appear onl=
y
> > > > > with Clang and not GCC, then yes please send them to our list.
> > > >
> > > > This information is not readily available at the moment. We have
> > > > hundreds of bugs per month + some special issues like this one. To
> > > > understand what causes each one of them, somebody needs to look at
> > > > them first...
> > > >
> > > > > FWIW, I'm a big fan of go/kernel-disaster and go/fix-linux; I'm
> > > > > drafting up a similar doc along the lines of "maybe we should spe=
nd
> > > > > some money and fix this" but more specific to Clang+Linux.  I don=
't
> > > > > think phrases like "clang has proven to be less stable for the ke=
rnel"
> > > > > are accurate when your sources are weak, or will win you a lot of
> > > > > volunteers to fix bugs reported by your tool though.
> > > >
> > > > I mean only our very specific situation of running a large producti=
on
> > > > system with almost no resources for maintenance. I did not say that
> > > > clang is more buggy or something. The previous one was already fixe=
d
> > > > by the time we hit it. And this one may well be a latent bug in the
> > > > code. This may well be happening with gcc as well, but maybe somebo=
dy
> > > > else fixes it before we even notice it.
> > >
> > >
> > > FTR, I 've submitted
> > > https://github.com/google/syzkaller/commit/a2d5b1c04d22c7db220cc795dc=
2b4d48b17437be
> > > which should make (1) this crash pop up as separate bug, (2) syzbot
> > > come up with a reproducer and bisect (hopefully).
> >
> > The bug report:
> > https://syzkaller.appspot.com/bug?extid=3D3f29ca2efb056a761e38
> > https://groups.google.com/forum/#!topic/syzkaller-bugs/3Nlk8swewyg
>
>
>
> --
> Alexander Potapenko
> Software Engineer
>
> Google Germany GmbH
> Erika-Mann-Stra=C3=9Fe, 33
> 80636 M=C3=BCnchen
>
> Gesch=C3=A4ftsf=C3=BChrer: Paul Manicle, Halimah DeLaine Prado
> Registergericht und -nummer: Hamburg, HRB 86891
> Sitz der Gesellschaft: Hamburg

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CACT4Y%2BYvMYnwocDx4YpiuekarmWa_B%2BdzjbYTjaB2p6LbnT1jw%4=
0mail.gmail.com.
