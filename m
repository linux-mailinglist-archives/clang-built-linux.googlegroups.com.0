Return-Path: <clang-built-linux+bncBCCMH5WKTMGRBU7G4LZQKGQEFL7MDOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 529FD18F52A
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 14:02:12 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id l8sf11514915edq.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 06:02:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584968532; cv=pass;
        d=google.com; s=arc-20160816;
        b=PbQDbsEncOtjbNJKT8o60M2W5aW/8vvTNG96jU/+VSdHPcDWU8u2+OUriv6U9eFYlD
         qXEaF5nE9KEf0qGiNBPIFBy8oBL/SzqysGmLX56YdQ/roHEXE+l/AK3aPZM+gtAgmGg+
         zojF7XOS0rTpjpzblBNpvbp0QAVs3hcMX3jn6QRmxxTqUR0CT/XSqWEa9qRY2WVCwARd
         m3voMlV7HxVpEPHsQ+lJbbAWeXWNa6Ivk56ElgNCB63GuskXbnLj2p8k0y1RwX3xj4sS
         PbkPVx2WcPlx0jfHjsZWp6shhp72FO2/TQl6hk5DDKkqB1djk2J6krC+mL8NLpeq1rvR
         hpvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5JjaDuXxKXHXGRdjik+ZHN14xfs08faRv4caVI2oleI=;
        b=VLB8MZdp9/lms6xwUHxNev1s6Lf2FTSNZ4jrRdwwFZmpGN45AHYZQc2Jlb7k4QOcmn
         ZNSOvbcqwI3TfF2MYIFYtzYENdlheDhm9Zajct9+Du2YLOYzpwJ3ywNXfg7ffL0h4ZlK
         NIX8EobVQ6ZoXUTk2B57ObzKB4A/qDEYMcvWX8uxvyH6a+7IRoTmRnREV0gJN8SRsJep
         LaTf58St3aREDwqay93lnBEPG5lEzzGVOMr2NHOgzlBRr7XBPS8atatx3kmg0j17ymsw
         AxcjcfF1iARO7X/Aumwc4O3k7qqdT6pwUA9UpMTpKdbYQJzAdEZT7tnUB5FqgJ7Xhnsp
         tjjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iM4y5uTz;
       spf=pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5JjaDuXxKXHXGRdjik+ZHN14xfs08faRv4caVI2oleI=;
        b=e2HzOaBY3ABObIUBcI5EWoH1fY/tdyWovFSPM95FB0lG4gRVkD7gGyx2dG+FnW8DqK
         4lQoWu6JwGGD8kjqryfznCf9YFQ5o9HAhK4DWgGq3CYtZ/F7RgAj+8LBPYCiU+U9jNaD
         H717oUVbcSpuQ3iGMP/KGC8zCWUbpJ5X4cJxm/YAJikI+SNU86PXBC/8s8ynu8nnfZZ0
         omrtyD6LKp/Jks2PpnKu0Qp/hK/pKDUc7IPoqHNlffmz07WCAdGgFvnEHiwYkoUYRpJx
         9HQ9AVwdAhZEUgHAZ4ECdSbVr0aaMofKJhi8HH4B4E/FC6UtoLOodfYuNaJWsBddvdBK
         0NVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5JjaDuXxKXHXGRdjik+ZHN14xfs08faRv4caVI2oleI=;
        b=pEXoxHyAjcFieSvTCyDaVYScIn9ZzHCclkrakkot4yyG4Qq6hm4NZXZoVenHuQUN7M
         FmH+miv/XNY1yUou5SsiP4ubreIcnOYF+9xcInmDrYQBAop2mHnsYmz8A81UmXajBBGs
         +YPVpLgy9t762dIRY7La//ZdaQ9aGCjmKPZLH1p3yAWh3NsACnz+uyC+a0+be0WB3tgD
         F4rSCI3SjGbq8JNt1rliOzCTFGe3vm6b1RkiQBcevYcSpwdZDPnpvLtV7PHA17Tprh6N
         q+GtgeOj65m4IN16kFOZMsoD5+XyiZ0zv0uhkyX0GcPbxTayS32eCcGwsez3p5c48+s2
         CpJQ==
X-Gm-Message-State: ANhLgQ3AQ6jnUYMvLq7a+4Vr+L9KVJQwH2PTYxEOW7tlzoORWr73P6DT
	+oCdiuu1PiY4ECIxLCKU1R8=
X-Google-Smtp-Source: ADFU+vv2d3SgjphK8fzg4EUFxDydcas6lssQbDm7WvHYgx43vIGVCPI/i/PCZRlXXbby5UL4zNotCg==
X-Received: by 2002:a50:e0c9:: with SMTP id j9mr20961409edl.127.1584968531958;
        Mon, 23 Mar 2020 06:02:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:a985:: with SMTP id jr5ls6934350ejb.10.gmail; Mon,
 23 Mar 2020 06:02:11 -0700 (PDT)
X-Received: by 2002:a17:906:82d8:: with SMTP id a24mr20305496ejy.87.1584968531177;
        Mon, 23 Mar 2020 06:02:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584968531; cv=none;
        d=google.com; s=arc-20160816;
        b=K3Q8PpBpSZbkS0eQ4X1s0IBR44NsUh8vQUt4dymhDQBckHOAjZProEU+eMSVcLy5vk
         wtZMddR5AS0SxXa41ELZVQVhDX/RRtSrcm1a/8ZZKFjqN1457cYKE277uvl7JFh2dyYg
         NuaHPh/N6JmTYVrYqDhQWqNtEievE+35YNlVYM77YuREfOb82BDHQWi57R2VDBettZMJ
         lT8oEq1tkfrw9QqjrlO5WsInJ9cCi21ClwegfAGDGXHN/L270y5bfqC51oQouGv6aMwR
         6VczziiCnvCBhxW6VG4hQFzt3/m3VhCdXUCi0wbMTbbYR1dguFXbx3ZkX2yYLmO9Ne3+
         0VGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PeMpQcI0xEGZWLgs0mq/jq9c6lQTLyZx6AwBQnoChf0=;
        b=PS1fm71TZnoHqQ88+JYecXfx/5DZy4n8KVirTGmOgU2LxvdMJTCAD2dYTg60we33MV
         GdSxWi0gQF8P+UU0S3GtQKIZZcD70x8rCyBUl7mHtPS3829RTYRBwz0DMwi44UworTbI
         1h/LX8wcTL1XGDr61qTgTTxoNc9sBTcQTRM2+30ZXmftdS6Kl6H+D8rS1Cjq43bDx8sB
         sO9vSn6PKUNZvFrEo9i6lPEyL9ShvdwZy8G3BDdNegl4N7BjS8vUFYa6FsIRvB1SI+jE
         svhqBp6heJhCBwsESjFe/c0dCdkcid4Hr4kl2F+fSZJr8Lm0KmpleBNfvYrJbEnTPolH
         Usag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iM4y5uTz;
       spf=pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id x7si815350ejw.0.2020.03.23.06.02.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 06:02:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id l20so14717031wmi.3
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 06:02:11 -0700 (PDT)
X-Received: by 2002:a1c:9846:: with SMTP id a67mr26442960wme.37.1584968530426;
 Mon, 23 Mar 2020 06:02:10 -0700 (PDT)
MIME-Version: 1.0
References: <CACT4Y+ax3BuO7kNofmTWoTKtZ1O0-6KbnKMrWxPviJom+2wngQ@mail.gmail.com>
 <CAKwvOd=kSrNTdYiXWDLgqPoaZas5FddbM9XQHc=P=se3e7X04Q@mail.gmail.com>
 <CACT4Y+agNoC5zUtHjBniZAjA+JRrYnwUQ8TmJ6-SVFoC50HbJw@mail.gmail.com>
 <CAKwvOd=+Hs3Mpe04aCQtMvMw_i6VKmtzztPe41E_hEX9mfzjBQ@mail.gmail.com>
 <CACT4Y+bqkgS1oOo4=XH1ik=PUT1ZGF0AFi2ZriPww+5qWWSnwg@mail.gmail.com>
 <CACT4Y+ZnE0pAQmmZZZ-fQpVH65UwtZJ-TVw+iOAkmhNgv3YuOA@mail.gmail.com> <CACT4Y+aS9nZp75xbVicUXxo-Wo4R9xop_2oTodS8hcYD2zhJoQ@mail.gmail.com>
In-Reply-To: <CACT4Y+aS9nZp75xbVicUXxo-Wo4R9xop_2oTodS8hcYD2zhJoQ@mail.gmail.com>
From: "'Alexander Potapenko' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 14:01:55 +0100
Message-ID: <CAG_fn=WovKuLO3bo+k94xFMrS+BAqGHfVfR=kt-wa7AWA0-qhQ@mail.gmail.com>
Subject: Re: some clang miscompilation again?
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Tom Roeder <tmroeder@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: glider@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iM4y5uTz;       spf=pass
 (google.com: domain of glider@google.com designates 2a00:1450:4864:20::341 as
 permitted sender) smtp.mailfrom=glider@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Alexander Potapenko <glider@google.com>
Reply-To: Alexander Potapenko <glider@google.com>
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

Do you have any understanding of how long has this been happening?

On Sun, Mar 22, 2020 at 8:00 AM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Sat, Mar 21, 2020 at 3:49 PM Dmitry Vyukov <dvyukov@google.com> wrote:
> >
> > On Fri, Mar 20, 2020 at 6:00 PM Dmitry Vyukov <dvyukov@google.com> wrot=
e:
> > >
> > > On Thu, Mar 19, 2020 at 8:35 PM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > On Thu, Mar 19, 2020 at 12:31 AM Dmitry Vyukov <dvyukov@google.com>=
 wrote:
> > > > >
> > > > > On Wed, Mar 18, 2020 at 8:45 PM Nick Desaulniers
> > > > > <ndesaulniers@google.com> wrote:
> > > > > >
> > > > > > Thanks for the reports.
> > > > > >
> > > > > > On Wed, Mar 18, 2020 at 4:26 AM 'Dmitry Vyukov' via Clang Built=
 Linux
> > > > > > <clang-built-linux@googlegroups.com> wrote:
> > > > > > >
> > > > > > > Hi,
> > > > > > >
> > > > > > > We started seeing massive crashes on one of syzbot instances.=
 You can
> > > > > > > see 2 examples below. The rest are piled here:
> > > > > > > https://syzkaller.appspot.com/bug?id=3Dd5bc3e0c66d200d72216ab=
343a67c4327e4a3452
> > > > > > > (search for "ci-upstream-kasan-gce-smack-root").
> > > > > > >
> > > > > > > This happens only on the smack instance. It's the only instan=
ce that uses clang.
> > > > > >
> > > > > > Can you please enable more bots to test with Clang?
> > > > >
> > > > > What are additional configurations you are interested in?
> > > >
> > > > We're testing:
> > > > architectures: arm64, arm, x86_64, mips, ppc, (s390 and riscv in bu=
ild
> > > > capacity, not yet booting, TODO)
> > > > trees+branches: -next, mainline, stable (back to 4.4)
> > > > configs: defconfig, allmodconfig, allyesconfig (defconfigs all the =
way
> > > > back to 4.4, allyesconfig only more recently)
> > > > clang: ToT, latest release
> > > >
> > > > The more coverage, the better. >  I understand the limitations arou=
nd capacity.
> > >
> > > We can only offer x86_64 with subset of allyesconfig. We have few
> > > other branches (net, bpf), but that's it.
> > >
> > >
> > > > > It's not exactly a unit-testing system, using it as unit-testing =
is
> > > > > expensive and breaks production. So far we've seen 2 breakages du=
e to
> > > > > clang and 0 due to gcc. If we switch more instances, we will also=
 need
> > > >
> > > > Syzcaller has never found a compiler bug in GCC? That's surprising.
> > >
> > > I don't remember any.
> > >
> > > > I thought the one clang bug you identified was due to using a
> > > > pre-release version of clang-9 (was ToT at some point) which had
> > > > already been previously identified and fixed?
> > >
> > > Yes.
> > >
> > > > What was the second bug? This report? Are you sure it's a Clang
> > > > miscompile at this point?  Are you sure it's not undefined behavior=
 in
> > > > the kernel somewhere?  Feel free to say "told you so" when we get t=
o
> > > > the bottom of it, but I wouldn't be so certain at this point, lest
> > > > someone tell you "told you so" otherwise.
> > >
> > > Yes, this one.
> > > It does not matter if it's clang's bug or not. The system will go
> > > down. Imagine you are testing clang on the Google search and it goes
> > > down. It won't matter if it was a clang bug or a latent bug in the
> > > code :)
> > >
> > >
> > > > > some dedicated people ensuring that they work. I think eventually=
 we
> > > > > will make half of instances use clang/half gcc, but so far clang =
has
> > > > > proven to be less stable for the kernel and we don't have these
> > > > > dedicated people... If somebody volunteers? :)
> > > >
> > > > Doesn't syzcaller generally have this problem? People working on
> > > > reporting bugs, not necessarily fixing them?
> > > >
> > > > We're here to fix Clang bugs; if we can find bugs that appear only
> > > > with Clang and not GCC, then yes please send them to our list.
> > >
> > > This information is not readily available at the moment. We have
> > > hundreds of bugs per month + some special issues like this one. To
> > > understand what causes each one of them, somebody needs to look at
> > > them first...
> > >
> > > > FWIW, I'm a big fan of go/kernel-disaster and go/fix-linux; I'm
> > > > drafting up a similar doc along the lines of "maybe we should spend
> > > > some money and fix this" but more specific to Clang+Linux.  I don't
> > > > think phrases like "clang has proven to be less stable for the kern=
el"
> > > > are accurate when your sources are weak, or will win you a lot of
> > > > volunteers to fix bugs reported by your tool though.
> > >
> > > I mean only our very specific situation of running a large production
> > > system with almost no resources for maintenance. I did not say that
> > > clang is more buggy or something. The previous one was already fixed
> > > by the time we hit it. And this one may well be a latent bug in the
> > > code. This may well be happening with gcc as well, but maybe somebody
> > > else fixes it before we even notice it.
> >
> >
> > FTR, I 've submitted
> > https://github.com/google/syzkaller/commit/a2d5b1c04d22c7db220cc795dc2b=
4d48b17437be
> > which should make (1) this crash pop up as separate bug, (2) syzbot
> > come up with a reproducer and bisect (hopefully).
>
> The bug report:
> https://syzkaller.appspot.com/bug?extid=3D3f29ca2efb056a761e38
> https://groups.google.com/forum/#!topic/syzkaller-bugs/3Nlk8swewyg



--=20
Alexander Potapenko
Software Engineer

Google Germany GmbH
Erika-Mann-Stra=C3=9Fe, 33
80636 M=C3=BCnchen

Gesch=C3=A4ftsf=C3=BChrer: Paul Manicle, Halimah DeLaine Prado
Registergericht und -nummer: Hamburg, HRB 86891
Sitz der Gesellschaft: Hamburg

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAG_fn%3DWovKuLO3bo%2Bk94xFMrS%2BBAqGHfVfR%3Dkt-wa7AWA0-q=
hQ%40mail.gmail.com.
