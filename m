Return-Path: <clang-built-linux+bncBCMIZB7QWENRBMXN2PZQKGQEV2N4XXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1289718D52A
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 18:00:36 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id z2sf5253457ybj.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 10:00:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584723635; cv=pass;
        d=google.com; s=arc-20160816;
        b=c8r8p2ZCG1q4W4xDKU0V7vsw887/gqYPWfqLawu7BNlSGukEV+LY+EZNsWWA6cIn72
         wwrgp+J3Q7x4tQrAblH1Cub1kkH7t3hIReTrF5K66U2mfGK8JKCr9KCDHoAccLZwyeOM
         fIvKouoB9xnXXENHd3o+2kEzI8GI6jy+tNbnmRmWJoc/wHsjmDmKkMh2b3wjgeGNPw5u
         syY4SQfS/uNJL4OwT4qc53aNw4+J8j5lswWHq5Jl2xB0RKiE283mXIr0Fq9J+iDoVRNx
         ep0wKeKo5IIOgarQOl1CSkyvmpohg2HbkMTDmH1Rpy7Imcf1FV66x2tSgWwy2XlqmpQs
         U9sQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wulhkN+xtbpUmvTHmg0M3qAt4ptKSj3J/Zb2Z8KN9Z4=;
        b=s5bDULy4f4dYioeY8tXqcNTxtqiBgb35q+geOtOmWK0fp5WKABlinrVce/2J9hOpxc
         eXzsUo25Yew5/rJkOUZp1OGO5BYowOz702onioK1YLowGq26B4aXWstsd/beqLRnu19x
         Kq0j6DLaQ2S4mX4DSqZ33RnecR4IYBVKnZ6WJlPRvmw+81VDzTproUxhT5Sz0py7EveW
         XjDQfasu8HjieVPAjJH7wVDhBbN6QeS0rux8bIcSWYx1L8vHpjYF+sdg9C9/t7w8uwTN
         07nq0SmGDfTiw8XeSYSCZQpbVfYra7eBNHnrO7034DstClj5bhpFMjM/sdqdJuAFP7mM
         4UrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lLOWyvJO;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wulhkN+xtbpUmvTHmg0M3qAt4ptKSj3J/Zb2Z8KN9Z4=;
        b=S99cudNP3tH9kAzmVR2TSUZO4c3JW5R3EAwIFv7tvGobEq2tHiBAAG2yJvzFqE7846
         WUD3e8RpTyiArVqL+pSYwOb2hhyTGDtZj7v93+UOLDxuwOhok4gFrvddDdRfrOh9Z/XP
         OyRunlAwdr/Kz6Z0Dcvf57Xxop1w8Ncag7xyqX/4tiO7pCvTC0dOcA55454B0eCMoOro
         T1ra/9e+oL4WsNmhiEtgQzOHiM/rgAYXsx5YaLepuGQ/5aZJBZ9n8UJV/YA8cNIsYrhx
         2xXtCGQItusWgTode+LvR10PDtOFTYEqYFX1sGQYgcaPPacHULomJR7iiWRLeM3tUDTD
         8Iqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wulhkN+xtbpUmvTHmg0M3qAt4ptKSj3J/Zb2Z8KN9Z4=;
        b=FCqsoxP4hvwlgBgKoOzdt9JOq5MTDx/NOBtlgP9RTIxRPquJ1Stq23JFcKVwp+QUiN
         hSd3/tRGC+XJyrrI3M619ZYU6cRO1VBHYzpFZ9eLHfkLLumUMrMsu7/IBOYk+XaAjFbE
         lL5RslHyvDDyaZmzEJndJ01fqz7QEFRtau1ntcYTQb4ZQUrroRRsn1Unr2s85h06Bva7
         4U9ElGM+KjTB402mTqMwMvfX7QUbt+XD4oqf9a7xvnHVG+Q41NYvMJ52OOq75QNKr2cL
         n1TEI2JkB8WDVA53KY+P1ArbDl5oaDsTxXBvMSf8AyPlsHWk1E1y2oo79W0taHkEjHr8
         kxPw==
X-Gm-Message-State: ANhLgQ0/qorGMrGV+mnbZk+IXP7/Wvc4ivYlc20+YYQvT/Ntaa+AFOep
	ur9Da/L+btUr1uO5Ha3jBdY=
X-Google-Smtp-Source: ADFU+vvpSLG9vhn1mv5QGt4Lokn/ZcslAizB8+Ef4ZCur73qJ4C1f8fNvkJgmj8/n1MAnn2YhPh5pw==
X-Received: by 2002:a25:b904:: with SMTP id x4mr14570972ybj.184.1584723635065;
        Fri, 20 Mar 2020 10:00:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c102:: with SMTP id r2ls2409573ybf.5.gmail; Fri, 20 Mar
 2020 10:00:34 -0700 (PDT)
X-Received: by 2002:a25:3a01:: with SMTP id h1mr15493553yba.293.1584723634684;
        Fri, 20 Mar 2020 10:00:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584723634; cv=none;
        d=google.com; s=arc-20160816;
        b=Qfp+UCSWbYooEQu6lPFgW8AIaebQDcP7ReT12gso1bwYl+gS3cLoMovf/qLuD33+WD
         gjaVzSzro9HdKNd3uJ4NIEey5rQHrBQN7eIJFRduf5J0ts727t7SO/gyYC8L4p85/Z0p
         Z6QqVdgaHJngLQBIjpUVdlTqHO9DFmucn6XDNXutnjDmMHfMzOHqIHGcM3ojsKGB8ijF
         mhcEGEd5BMMl+aNzhtnpEwgLi0sukYeLs5We2fWmJUbEykPioenGuW+69voPyP2Do7uT
         lh0auNPlexfxZ0qhV3dgKWV5BlEd4eQkfU5tbGeEo0gt7n44xlJO41s8ty6XT5ha4ugF
         rtng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fGveEogkSWcXLQQHiFS/lIsOULRF5rUdtip9LuuSj1Q=;
        b=W8t9U3AI9Jf/K2m3LXbaT6vCFVjdCbroFOhVxNacC78CjMyx5As/mcTgT4L8ZyDVAW
         Iora5PhcLKC10XKWESC1Gd2ljd/gy7yt9cNsjCrK3eOYktZEiYYd8kxbt8fF3WF3ttUL
         eTWDXPiwt+uawKljoMT+ThAuS7ta7zu0sWJKfO3vdNQVzmpO/QTQnwURNd5z5dexIVNQ
         6Cf6l8LqNNs+Oh/mqiMfVCo+5kNWaLRPjmegjpeJ47tApacrL48mqHQ/MJZm9WtBK+Fb
         3VHpO4FCiMtVT9OO4kwrqe/M3V5LKiR4UMF1P+vCFcazN4fX2fpe69y65ny+d++1s5f0
         +irA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lLOWyvJO;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id l141si235816ybl.3.2020.03.20.10.00.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 10:00:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id l13so5483664qtv.10
        for <clang-built-linux@googlegroups.com>; Fri, 20 Mar 2020 10:00:34 -0700 (PDT)
X-Received: by 2002:aed:38c8:: with SMTP id k66mr9383580qte.50.1584723632553;
 Fri, 20 Mar 2020 10:00:32 -0700 (PDT)
MIME-Version: 1.0
References: <CACT4Y+ax3BuO7kNofmTWoTKtZ1O0-6KbnKMrWxPviJom+2wngQ@mail.gmail.com>
 <CAKwvOd=kSrNTdYiXWDLgqPoaZas5FddbM9XQHc=P=se3e7X04Q@mail.gmail.com>
 <CACT4Y+agNoC5zUtHjBniZAjA+JRrYnwUQ8TmJ6-SVFoC50HbJw@mail.gmail.com> <CAKwvOd=+Hs3Mpe04aCQtMvMw_i6VKmtzztPe41E_hEX9mfzjBQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=+Hs3Mpe04aCQtMvMw_i6VKmtzztPe41E_hEX9mfzjBQ@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Mar 2020 18:00:21 +0100
Message-ID: <CACT4Y+bqkgS1oOo4=XH1ik=PUT1ZGF0AFi2ZriPww+5qWWSnwg@mail.gmail.com>
Subject: Re: some clang miscompilation again?
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Alexander Potapenko <glider@google.com>, Tom Roeder <tmroeder@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lLOWyvJO;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842
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

On Thu, Mar 19, 2020 at 8:35 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Mar 19, 2020 at 12:31 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> >
> > On Wed, Mar 18, 2020 at 8:45 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > Thanks for the reports.
> > >
> > > On Wed, Mar 18, 2020 at 4:26 AM 'Dmitry Vyukov' via Clang Built Linux
> > > <clang-built-linux@googlegroups.com> wrote:
> > > >
> > > > Hi,
> > > >
> > > > We started seeing massive crashes on one of syzbot instances. You can
> > > > see 2 examples below. The rest are piled here:
> > > > https://syzkaller.appspot.com/bug?id=d5bc3e0c66d200d72216ab343a67c4327e4a3452
> > > > (search for "ci-upstream-kasan-gce-smack-root").
> > > >
> > > > This happens only on the smack instance. It's the only instance that uses clang.
> > >
> > > Can you please enable more bots to test with Clang?
> >
> > What are additional configurations you are interested in?
>
> We're testing:
> architectures: arm64, arm, x86_64, mips, ppc, (s390 and riscv in build
> capacity, not yet booting, TODO)
> trees+branches: -next, mainline, stable (back to 4.4)
> configs: defconfig, allmodconfig, allyesconfig (defconfigs all the way
> back to 4.4, allyesconfig only more recently)
> clang: ToT, latest release
>
> The more coverage, the better. >  I understand the limitations around capacity.

We can only offer x86_64 with subset of allyesconfig. We have few
other branches (net, bpf), but that's it.


> > It's not exactly a unit-testing system, using it as unit-testing is
> > expensive and breaks production. So far we've seen 2 breakages due to
> > clang and 0 due to gcc. If we switch more instances, we will also need
>
> Syzcaller has never found a compiler bug in GCC? That's surprising.

I don't remember any.

> I thought the one clang bug you identified was due to using a
> pre-release version of clang-9 (was ToT at some point) which had
> already been previously identified and fixed?

Yes.

> What was the second bug? This report? Are you sure it's a Clang
> miscompile at this point?  Are you sure it's not undefined behavior in
> the kernel somewhere?  Feel free to say "told you so" when we get to
> the bottom of it, but I wouldn't be so certain at this point, lest
> someone tell you "told you so" otherwise.

Yes, this one.
It does not matter if it's clang's bug or not. The system will go
down. Imagine you are testing clang on the Google search and it goes
down. It won't matter if it was a clang bug or a latent bug in the
code :)


> > some dedicated people ensuring that they work. I think eventually we
> > will make half of instances use clang/half gcc, but so far clang has
> > proven to be less stable for the kernel and we don't have these
> > dedicated people... If somebody volunteers? :)
>
> Doesn't syzcaller generally have this problem? People working on
> reporting bugs, not necessarily fixing them?
>
> We're here to fix Clang bugs; if we can find bugs that appear only
> with Clang and not GCC, then yes please send them to our list.

This information is not readily available at the moment. We have
hundreds of bugs per month + some special issues like this one. To
understand what causes each one of them, somebody needs to look at
them first...

> FWIW, I'm a big fan of go/kernel-disaster and go/fix-linux; I'm
> drafting up a similar doc along the lines of "maybe we should spend
> some money and fix this" but more specific to Clang+Linux.  I don't
> think phrases like "clang has proven to be less stable for the kernel"
> are accurate when your sources are weak, or will win you a lot of
> volunteers to fix bugs reported by your tool though.

I mean only our very specific situation of running a large production
system with almost no resources for maintenance. I did not say that
clang is more buggy or something. The previous one was already fixed
by the time we hit it. And this one may well be a latent bug in the
code. This may well be happening with gcc as well, but maybe somebody
else fixes it before we even notice it.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BbqkgS1oOo4%3DXH1ik%3DPUT1ZGF0AFi2ZriPww%2B5qWWSnwg%40mail.gmail.com.
