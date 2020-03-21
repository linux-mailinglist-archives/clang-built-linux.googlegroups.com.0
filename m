Return-Path: <clang-built-linux+bncBCMIZB7QWENRB26S3DZQKGQEOD64OMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id DA48218E229
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Mar 2020 15:49:16 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id v11sf6810113pgs.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Mar 2020 07:49:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584802155; cv=pass;
        d=google.com; s=arc-20160816;
        b=CAr3SrZ8CtZykVSeZ70CW9NcwQvgH76eAjMO3uaTf9p3DIkwlrjFpC9/JyPqQcpp6N
         aQzaP3LPuZMrWJYD+pHrnRBhqoSC6s6O0VnMSsE5cE+HZ3HGbgQqggvQ6wOY/3LCiR9r
         BEAggHl2HimKpkfay/HxDtl9c5ZshxZVWhA5/hkUhbFhOp2SZWP5KIW3Lx9WCHrFmSDM
         p2R9/ntJBh9fX2XW3SNLwCQTR9yGUABVCwKb9kB/Sq4GLhJs0vc2toog42zsJ9pR0NXd
         wAqNB9D9cBJvV8fubs1KY3KXdYM48bcGz9NuVjgyGkAG60FVuMvLSbdDHjYUXz/rdZVO
         7Xvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=HE3NAn/6Rhh6OSsuQmLlDifOrHj0kBsZnuOyby9PSxM=;
        b=TuAidWY7t/4TeF5YkRfgmIC59IqliVQ5weVxZJg7IDdN8lFjOahzyLKNhTgfVyb3NV
         c8v0f89HEI68E06WUcaboWJEBIQzDF/HjPZMpBAZQa42kwfbvsiXdyfSNQIbmnsJS59X
         7SmX4ZRIKYAUFdZ5LFVqOPlKMP7FdS5C/O/8/cf05Mpkd2jEU2OwlbhhJxaUtdckrmaw
         kSVnK2z7fshz8specAglMgmCgxJqCfBwnvm6WfUDN6Id4jMryRt+qIy+lT4JKxh8vulY
         8kxTBwHEyZJ1ZYvgZn+99xbm8CmG5Br5QULbIw26NWnkLR3fNhxX7eQwnPM5m1bwcSzY
         V08g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=thlfNNZU;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HE3NAn/6Rhh6OSsuQmLlDifOrHj0kBsZnuOyby9PSxM=;
        b=n627WFSjEiVGDwFR7RtcohRcS7isNIYmw8gbyXRAatr+XOjoQ4bnkHoaVz1TWLhwWb
         BofwgB1HfMxH2aiV1N4FglWFHQuI1HP5B1YHZgMMesMfdK8+VrKLi8qkH5Xl+Dw2yym3
         AZBX7FGuy9baGuN/bIgidYuS0SuvZuFhMC2ust8S4gzZQflO/eMQYS+R14Hfp33iOUh+
         zpDQPqD77E9X7gDvg576pWV4hfRiII89mHSzMfIdaulKuZwj76rMoAx1yH7AjisYXhfn
         f1J1hUjHgokA6QrbUjkHxgV6QopjIcKm25EWXrBlOoMP/8OasVTEsEHuE1dG6Dyh2Gh/
         qm3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HE3NAn/6Rhh6OSsuQmLlDifOrHj0kBsZnuOyby9PSxM=;
        b=qjwFtESxHYixlhYBedZTJlls0Q0AvAmtmdIxPl0YhACUrOXqcBdGQXpdRpTUsvo00l
         j92EbnGyk+hNMxBZqhuHORDPf6FShV3a5WhiIN79bEdP+nTl48Jjsn1cxH7AQemia88D
         8m1X8Rw1YAFwMSVV9hBDhyOpvQNfBpYITtBGMwllE+hO39slHPRc3keEjOiw6z3uwntc
         KTl53VEa6huF1XbWGS45xwlj+oMrUA+tb44RU8rlByMGXPabvrTWgQ5aN0wdTojonr9K
         hIMXO6eHWOs5Qs7u3XRlHWNOKwJiCi8RfC/jisoudG28AL+0hVCQINl0WgovT+ggtFkU
         ZNpA==
X-Gm-Message-State: ANhLgQ2/eErMf0IIZs+hdge2aR3kFGFq3m5e2lQutNW+MAQQ3qIoBgs5
	N+J2OqoDmEVuls6Y9cf/7B8=
X-Google-Smtp-Source: ADFU+vtqyPmiJ+Mhi1DM7dQ7haJhQmxxnrYV/WOO+MmKdZIMZCuUGcr3mfpVFULxfQLA41xdPC4Q2A==
X-Received: by 2002:a17:902:7204:: with SMTP id ba4mr13835734plb.232.1584802155211;
        Sat, 21 Mar 2020 07:49:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bd4b:: with SMTP id b11ls5064707plx.4.gmail; Sat, 21
 Mar 2020 07:49:14 -0700 (PDT)
X-Received: by 2002:a17:902:d210:: with SMTP id t16mr2198069ply.241.1584802154772;
        Sat, 21 Mar 2020 07:49:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584802154; cv=none;
        d=google.com; s=arc-20160816;
        b=hhaavyPVEmOTxYnwyj9hcVz5v9YSYrwVrkXV+iVhpxdCecoBrqVO8t5Dx68NVxSsVL
         I0fwg4/5SZVXI22DV6MggTZbN/ZDhwetBibaM+e/DoksTxm1DLtF2EZxTAXN4820dIQG
         x6VDL/FCVD+BJCH0xX93/T8SIwbVP7bM/+jJlYhfKLIheNwKiUYP/K0vstzMFPgqS5j3
         dtxYer69pQMAilF3qzmz/dSZYhC/aetpUaipy8g9fcxG5wB8DpEyzJK/Di753O7N518P
         617afR6LjeC9jEo+xqYcahfOQkW/FHTA+7qUAt334Fuj8WtofBQydmZpyAF44fE1ZbbC
         9ZVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+S7EnW5KFxIdn+gGamFY9T1OrVtTTIWwluFXmHgm0bw=;
        b=aDW5Tk6CywxBhhdZCDk2/RJaJfmL6JYReqecpgMsKc868kRU2eJ9/Jsjx3iBo/vB24
         /no9Ls07ehX+uStVUZw2YRwDmVvwHNRZeW5Ctv+agkK6BWfh+ZZfuasLde9YuLvHZzYI
         TVwmVrEwQihUnNkQMBhGpD5UevdkvrQorAdPopjWjkgEjR5ZMkojeptQokJPJ//gOHxp
         R71l3X4RnSPh4rDoKVBqIJ59t1+DrCyEvi6pNVQcUBIPMSmoOwO9mW8Chc8Jhks9yR2j
         tw3YQ66RnVmyL666BNwmk6W1A2QBqbhQKkWG9dmQYi42+To+shunEK8hsY8QDg8SzgXC
         mJmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=thlfNNZU;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id k3si469950plt.1.2020.03.21.07.49.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 07:49:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id f28so10291422qkk.13
        for <clang-built-linux@googlegroups.com>; Sat, 21 Mar 2020 07:49:14 -0700 (PDT)
X-Received: by 2002:a37:6115:: with SMTP id v21mr12711122qkb.43.1584802153532;
 Sat, 21 Mar 2020 07:49:13 -0700 (PDT)
MIME-Version: 1.0
References: <CACT4Y+ax3BuO7kNofmTWoTKtZ1O0-6KbnKMrWxPviJom+2wngQ@mail.gmail.com>
 <CAKwvOd=kSrNTdYiXWDLgqPoaZas5FddbM9XQHc=P=se3e7X04Q@mail.gmail.com>
 <CACT4Y+agNoC5zUtHjBniZAjA+JRrYnwUQ8TmJ6-SVFoC50HbJw@mail.gmail.com>
 <CAKwvOd=+Hs3Mpe04aCQtMvMw_i6VKmtzztPe41E_hEX9mfzjBQ@mail.gmail.com> <CACT4Y+bqkgS1oOo4=XH1ik=PUT1ZGF0AFi2ZriPww+5qWWSnwg@mail.gmail.com>
In-Reply-To: <CACT4Y+bqkgS1oOo4=XH1ik=PUT1ZGF0AFi2ZriPww+5qWWSnwg@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 21 Mar 2020 15:49:02 +0100
Message-ID: <CACT4Y+ZnE0pAQmmZZZ-fQpVH65UwtZJ-TVw+iOAkmhNgv3YuOA@mail.gmail.com>
Subject: Re: some clang miscompilation again?
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Alexander Potapenko <glider@google.com>, Tom Roeder <tmroeder@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=thlfNNZU;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::741
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

On Fri, Mar 20, 2020 at 6:00 PM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Thu, Mar 19, 2020 at 8:35 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Thu, Mar 19, 2020 at 12:31 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> > >
> > > On Wed, Mar 18, 2020 at 8:45 PM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > Thanks for the reports.
> > > >
> > > > On Wed, Mar 18, 2020 at 4:26 AM 'Dmitry Vyukov' via Clang Built Linux
> > > > <clang-built-linux@googlegroups.com> wrote:
> > > > >
> > > > > Hi,
> > > > >
> > > > > We started seeing massive crashes on one of syzbot instances. You can
> > > > > see 2 examples below. The rest are piled here:
> > > > > https://syzkaller.appspot.com/bug?id=d5bc3e0c66d200d72216ab343a67c4327e4a3452
> > > > > (search for "ci-upstream-kasan-gce-smack-root").
> > > > >
> > > > > This happens only on the smack instance. It's the only instance that uses clang.
> > > >
> > > > Can you please enable more bots to test with Clang?
> > >
> > > What are additional configurations you are interested in?
> >
> > We're testing:
> > architectures: arm64, arm, x86_64, mips, ppc, (s390 and riscv in build
> > capacity, not yet booting, TODO)
> > trees+branches: -next, mainline, stable (back to 4.4)
> > configs: defconfig, allmodconfig, allyesconfig (defconfigs all the way
> > back to 4.4, allyesconfig only more recently)
> > clang: ToT, latest release
> >
> > The more coverage, the better. >  I understand the limitations around capacity.
>
> We can only offer x86_64 with subset of allyesconfig. We have few
> other branches (net, bpf), but that's it.
>
>
> > > It's not exactly a unit-testing system, using it as unit-testing is
> > > expensive and breaks production. So far we've seen 2 breakages due to
> > > clang and 0 due to gcc. If we switch more instances, we will also need
> >
> > Syzcaller has never found a compiler bug in GCC? That's surprising.
>
> I don't remember any.
>
> > I thought the one clang bug you identified was due to using a
> > pre-release version of clang-9 (was ToT at some point) which had
> > already been previously identified and fixed?
>
> Yes.
>
> > What was the second bug? This report? Are you sure it's a Clang
> > miscompile at this point?  Are you sure it's not undefined behavior in
> > the kernel somewhere?  Feel free to say "told you so" when we get to
> > the bottom of it, but I wouldn't be so certain at this point, lest
> > someone tell you "told you so" otherwise.
>
> Yes, this one.
> It does not matter if it's clang's bug or not. The system will go
> down. Imagine you are testing clang on the Google search and it goes
> down. It won't matter if it was a clang bug or a latent bug in the
> code :)
>
>
> > > some dedicated people ensuring that they work. I think eventually we
> > > will make half of instances use clang/half gcc, but so far clang has
> > > proven to be less stable for the kernel and we don't have these
> > > dedicated people... If somebody volunteers? :)
> >
> > Doesn't syzcaller generally have this problem? People working on
> > reporting bugs, not necessarily fixing them?
> >
> > We're here to fix Clang bugs; if we can find bugs that appear only
> > with Clang and not GCC, then yes please send them to our list.
>
> This information is not readily available at the moment. We have
> hundreds of bugs per month + some special issues like this one. To
> understand what causes each one of them, somebody needs to look at
> them first...
>
> > FWIW, I'm a big fan of go/kernel-disaster and go/fix-linux; I'm
> > drafting up a similar doc along the lines of "maybe we should spend
> > some money and fix this" but more specific to Clang+Linux.  I don't
> > think phrases like "clang has proven to be less stable for the kernel"
> > are accurate when your sources are weak, or will win you a lot of
> > volunteers to fix bugs reported by your tool though.
>
> I mean only our very specific situation of running a large production
> system with almost no resources for maintenance. I did not say that
> clang is more buggy or something. The previous one was already fixed
> by the time we hit it. And this one may well be a latent bug in the
> code. This may well be happening with gcc as well, but maybe somebody
> else fixes it before we even notice it.


FTR, I 've submitted
https://github.com/google/syzkaller/commit/a2d5b1c04d22c7db220cc795dc2b4d48b17437be
which should make (1) this crash pop up as separate bug, (2) syzbot
come up with a reproducer and bisect (hopefully).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BZnE0pAQmmZZZ-fQpVH65UwtZJ-TVw%2BiOAkmhNgv3YuOA%40mail.gmail.com.
