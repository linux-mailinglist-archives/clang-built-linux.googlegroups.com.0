Return-Path: <clang-built-linux+bncBCMIZB7QWENRBJ423TZQKGQEGZ6RXSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1709318E744
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 08:01:00 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id z62sf7345876otb.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 00:01:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584860455; cv=pass;
        d=google.com; s=arc-20160816;
        b=wUCqA4pAlOED8eYaZXBaSFJoH4tR21ycUbkHdqBeUjp5PvV1jWlV6TdEhGGF27a8BV
         HgjPXgX20mEPfX84fXum5SZoOna2jNSOlrbSFi9toDaZPlFi3E/t6CV4Kq0JME29BdJ1
         J3NNSa966dlJV5mg3Ds/XLkzjA1pE4F1GJCBzr4DQKkhzp+ead5u71CZhy0/e6eO6rXC
         lAmO8RvTf8gt2DdOjMjWD0uotVALTMGsE/DD3yrWgT5HT9B9l6NukL13WmXdOPpbL97y
         gojz3f3dNxI9rybLym6r91YclaACMibMCWMo/c/8p01H9iMuj6OO9ASQXi+VVmrIDYW8
         vUoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Ekb69zPobML/oQDMouLcnW5jN2p0BV7hefEqfL/A/Tc=;
        b=WLNj7KdmKEvqEMQM6jNEDT4AOIDJSMMxaiJGdF8yjARXIdo3xQIVfNYtlJiyPLDXjT
         iIjUKhyUntj3lXmrDwtLJlUAX0UILiSRz2mnfS0wQCr8x4V+r9XK/QtCdLiNAC0lBdi/
         VJ3gqWYuVPCGNAC08Acw/GYNgh46nXC9Kd3W/nnnEdAsNPchC5mpZC/FbqnLyJjMwKSI
         l7mbZ41Okqp9eDPUY+nwdP1Xb91cO0t/CINVPPiA8SN5v9dukZENuO7jC41j3zDwbjIV
         pV1ORw0LfDzpOwSdMchsYfYbKxP577f0VuqMUyql00538Eor4y3TiA/w8So52S+Q0dDT
         BuzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="OXLH6uk/";
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ekb69zPobML/oQDMouLcnW5jN2p0BV7hefEqfL/A/Tc=;
        b=FoUAORutqY/iGe7r/OQE6OoEsfnvEubTBUf6XKPG30zdWqblH5DzmRaJuxRNWYbkRK
         2uE1wqhVhcKZlLolu/aFiFHwj0KLt5yV7SJaujRpqw/w55WO68ixui53QBT5wPJ5wQ2Z
         lZ29M0pqWAu4IoaQd3vJkYYreohHyyN5YHuOClbgUBmGT9MM17wTEk7fmJte8og8zYnf
         K+JQZM/PhRbz0kEp+8BjSEw0uc03QHXitVqLZfZI68epUu/1EIo7uR6ygdSPXSh8eiuR
         zUAvrppSZSJAF80oKRwxv5aQmMYnDieZxaFQW3c8TwF/LlnKLGUciOcu07IYNrPSFb/P
         o0zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ekb69zPobML/oQDMouLcnW5jN2p0BV7hefEqfL/A/Tc=;
        b=eSe6XQAZMZhIKL18V1EdCdugZRRIRHrT2frUjgYCmLZJlXjP3gqzF+67xNxDtuDaoO
         fCrh1LbHDt3309qj5FH6sYgDPhL/6y3Vi+e8v8ySUz7tL9sgSjEWij8pHs7Za61y0t+C
         mArjpKxQAsRuLlNIxb8HULqrqiKk7Sp8zcr4KrmzPlKSbaiwx45K12vLs2Mdh+Z4byE0
         33/9fxanRbLREpRWzkOBLT8hkDjw/evXbM0nhiyLMKKyXRzDSPX6Htw1tTkf0pYrrkH0
         RD/tlKN1/LOk7eJDXGSXu4kgjIifxj/ZSytRgt5N91r4diudzp7roMSX+qn5ec+wvHZl
         XMDw==
X-Gm-Message-State: ANhLgQ00V/0SlReKDLqnW7qu8dfI9zNNVhMiLQLPc/BJLatbXPLZOVWq
	XwI2FkWdIXSswvjQJ+Azdfw=
X-Google-Smtp-Source: ADFU+vulUgTit7bvQIk+gLqtyez3hbRdL3G4fNmAGzANV80EQNkf899IowQepeb8wrdu7BVj9OHvaw==
X-Received: by 2002:aca:4243:: with SMTP id p64mr12976538oia.21.1584860455509;
        Sun, 22 Mar 2020 00:00:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:51c6:: with SMTP id d6ls4556330oth.4.gmail; Sun, 22 Mar
 2020 00:00:55 -0700 (PDT)
X-Received: by 2002:a9d:4e3:: with SMTP id 90mr13784412otm.261.1584860455147;
        Sun, 22 Mar 2020 00:00:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584860455; cv=none;
        d=google.com; s=arc-20160816;
        b=f/7tAZE2GWkHgAST9ppfdzsth+fNxX99x2e7foz8PWs2Ul1GYJ0X+yrLYzZMEWSRdN
         vhRp4bDvONil2HFi/IHxILq3YnQD7tIbtcwVnPHDY91aT4grjCRUMhwI1oQ/9usW3PEV
         OQzN5gl1x3p3SlirfwWg8Caddp7fMOyu9N37wN7cngLdMLicPdLqxMHadqFU6XEBMtMR
         nBF0x2MTFy1XdhaK6bLiWjXPFeNw+G8zHeZHW7a/hkgb6v0Eqo9ohNK6PyROczMXlTqC
         bgHP+CmtgUB8gC2YkqWZ+EHKrQM2dtnw4BbRJTMvz6ncBNOPmveOIrwlIXMs0seMvqJj
         NxBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tXxFxa+p5Wew4uSuJJEx/VJkgD1Xidoo5kXnP8Apskw=;
        b=HUM7UmQZ1wiSUcHraLsLpKyvCHGCDV1dxJI+SWtKYBAD0/Xpk2O1GVcwA9Bs4GvgJH
         O3sgywoko/XQWcQcyMb6TvV0wGPcUDlYXBdsKFwF1Nl2VXuQmlENOvrAKCdqnCCajCq1
         Koflqp0QRTMEbcNHv2TGBfuspzCEk9BVNN/1EzEUwQoz2tfqTsr5Y6v7X++cWoqh7KNF
         Aqz22U4hU1IcgzgUUux1DWvMn66k7rn/9e/sCvpFkr5po0KS5HymEaXcWaaAhYTMrLdg
         guNW7/LifTAzr8RrCsUk6eZ5AmpIAyJ1sYDD8zGUpU5q9dUxs0EL6KR6XVm6JqLCOo7i
         5s2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="OXLH6uk/";
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id x23si501143oif.2.2020.03.22.00.00.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 00:00:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id c145so11834011qke.12
        for <clang-built-linux@googlegroups.com>; Sun, 22 Mar 2020 00:00:55 -0700 (PDT)
X-Received: by 2002:a37:6115:: with SMTP id v21mr15097884qkb.43.1584860454203;
 Sun, 22 Mar 2020 00:00:54 -0700 (PDT)
MIME-Version: 1.0
References: <CACT4Y+ax3BuO7kNofmTWoTKtZ1O0-6KbnKMrWxPviJom+2wngQ@mail.gmail.com>
 <CAKwvOd=kSrNTdYiXWDLgqPoaZas5FddbM9XQHc=P=se3e7X04Q@mail.gmail.com>
 <CACT4Y+agNoC5zUtHjBniZAjA+JRrYnwUQ8TmJ6-SVFoC50HbJw@mail.gmail.com>
 <CAKwvOd=+Hs3Mpe04aCQtMvMw_i6VKmtzztPe41E_hEX9mfzjBQ@mail.gmail.com>
 <CACT4Y+bqkgS1oOo4=XH1ik=PUT1ZGF0AFi2ZriPww+5qWWSnwg@mail.gmail.com> <CACT4Y+ZnE0pAQmmZZZ-fQpVH65UwtZJ-TVw+iOAkmhNgv3YuOA@mail.gmail.com>
In-Reply-To: <CACT4Y+ZnE0pAQmmZZZ-fQpVH65UwtZJ-TVw+iOAkmhNgv3YuOA@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 22 Mar 2020 08:00:42 +0100
Message-ID: <CACT4Y+aS9nZp75xbVicUXxo-Wo4R9xop_2oTodS8hcYD2zhJoQ@mail.gmail.com>
Subject: Re: some clang miscompilation again?
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Alexander Potapenko <glider@google.com>, Tom Roeder <tmroeder@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="OXLH6uk/";       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743
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

On Sat, Mar 21, 2020 at 3:49 PM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Fri, Mar 20, 2020 at 6:00 PM Dmitry Vyukov <dvyukov@google.com> wrote:
> >
> > On Thu, Mar 19, 2020 at 8:35 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Thu, Mar 19, 2020 at 12:31 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> > > >
> > > > On Wed, Mar 18, 2020 at 8:45 PM Nick Desaulniers
> > > > <ndesaulniers@google.com> wrote:
> > > > >
> > > > > Thanks for the reports.
> > > > >
> > > > > On Wed, Mar 18, 2020 at 4:26 AM 'Dmitry Vyukov' via Clang Built Linux
> > > > > <clang-built-linux@googlegroups.com> wrote:
> > > > > >
> > > > > > Hi,
> > > > > >
> > > > > > We started seeing massive crashes on one of syzbot instances. You can
> > > > > > see 2 examples below. The rest are piled here:
> > > > > > https://syzkaller.appspot.com/bug?id=d5bc3e0c66d200d72216ab343a67c4327e4a3452
> > > > > > (search for "ci-upstream-kasan-gce-smack-root").
> > > > > >
> > > > > > This happens only on the smack instance. It's the only instance that uses clang.
> > > > >
> > > > > Can you please enable more bots to test with Clang?
> > > >
> > > > What are additional configurations you are interested in?
> > >
> > > We're testing:
> > > architectures: arm64, arm, x86_64, mips, ppc, (s390 and riscv in build
> > > capacity, not yet booting, TODO)
> > > trees+branches: -next, mainline, stable (back to 4.4)
> > > configs: defconfig, allmodconfig, allyesconfig (defconfigs all the way
> > > back to 4.4, allyesconfig only more recently)
> > > clang: ToT, latest release
> > >
> > > The more coverage, the better. >  I understand the limitations around capacity.
> >
> > We can only offer x86_64 with subset of allyesconfig. We have few
> > other branches (net, bpf), but that's it.
> >
> >
> > > > It's not exactly a unit-testing system, using it as unit-testing is
> > > > expensive and breaks production. So far we've seen 2 breakages due to
> > > > clang and 0 due to gcc. If we switch more instances, we will also need
> > >
> > > Syzcaller has never found a compiler bug in GCC? That's surprising.
> >
> > I don't remember any.
> >
> > > I thought the one clang bug you identified was due to using a
> > > pre-release version of clang-9 (was ToT at some point) which had
> > > already been previously identified and fixed?
> >
> > Yes.
> >
> > > What was the second bug? This report? Are you sure it's a Clang
> > > miscompile at this point?  Are you sure it's not undefined behavior in
> > > the kernel somewhere?  Feel free to say "told you so" when we get to
> > > the bottom of it, but I wouldn't be so certain at this point, lest
> > > someone tell you "told you so" otherwise.
> >
> > Yes, this one.
> > It does not matter if it's clang's bug or not. The system will go
> > down. Imagine you are testing clang on the Google search and it goes
> > down. It won't matter if it was a clang bug or a latent bug in the
> > code :)
> >
> >
> > > > some dedicated people ensuring that they work. I think eventually we
> > > > will make half of instances use clang/half gcc, but so far clang has
> > > > proven to be less stable for the kernel and we don't have these
> > > > dedicated people... If somebody volunteers? :)
> > >
> > > Doesn't syzcaller generally have this problem? People working on
> > > reporting bugs, not necessarily fixing them?
> > >
> > > We're here to fix Clang bugs; if we can find bugs that appear only
> > > with Clang and not GCC, then yes please send them to our list.
> >
> > This information is not readily available at the moment. We have
> > hundreds of bugs per month + some special issues like this one. To
> > understand what causes each one of them, somebody needs to look at
> > them first...
> >
> > > FWIW, I'm a big fan of go/kernel-disaster and go/fix-linux; I'm
> > > drafting up a similar doc along the lines of "maybe we should spend
> > > some money and fix this" but more specific to Clang+Linux.  I don't
> > > think phrases like "clang has proven to be less stable for the kernel"
> > > are accurate when your sources are weak, or will win you a lot of
> > > volunteers to fix bugs reported by your tool though.
> >
> > I mean only our very specific situation of running a large production
> > system with almost no resources for maintenance. I did not say that
> > clang is more buggy or something. The previous one was already fixed
> > by the time we hit it. And this one may well be a latent bug in the
> > code. This may well be happening with gcc as well, but maybe somebody
> > else fixes it before we even notice it.
>
>
> FTR, I 've submitted
> https://github.com/google/syzkaller/commit/a2d5b1c04d22c7db220cc795dc2b4d48b17437be
> which should make (1) this crash pop up as separate bug, (2) syzbot
> come up with a reproducer and bisect (hopefully).

The bug report:
https://syzkaller.appspot.com/bug?extid=3f29ca2efb056a761e38
https://groups.google.com/forum/#!topic/syzkaller-bugs/3Nlk8swewyg

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BaS9nZp75xbVicUXxo-Wo4R9xop_2oTodS8hcYD2zhJoQ%40mail.gmail.com.
