Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWUPTT3AKGQEEGDFG6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id B47C01DDA9C
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 00:59:39 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id d19sf8739577qvk.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 15:59:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590101978; cv=pass;
        d=google.com; s=arc-20160816;
        b=aH7OXdTyD1hdCpGCxMEI9N8YuzKOIVmzyjlohehi0UjQfNAdKpTPQi3a33Sdo9Ph7S
         48LDIH9bX1LaNtm3C8KAQduVt7v1PTDH5fZ7J1UFAOLQvLeL0gs+hR1Fn3VJe+aUX2JI
         Q8gAdAZtpV3MEJto/C1hCPKy9ajqxB6YNGWypelTRCqIDTMkVyzXsuAfElasbyOqhAtY
         J998WaVB2FxPKzuyKLpcPEpKtieUQm4XCtpKjAoWGM7clHO/id+Rgv7djozIWuIaGvFS
         nBen78BSKO74co6KyrWcmNQ9pEfjyeqNfXLPzSrE6Z+89RauZ3UQ5iODWT2Otpjd031c
         giOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=WjzckonD0iLN8v8Nv/dyHPVzzlKgHoRzpSmkkZ0RTHY=;
        b=cgGeouRv8RyqsXtVD+GOWJI4YO9SNDm0w3RD1iXx6Zlzj8DjZONQsoskcgnFNupY6p
         wpdeIAWAO4qO5eRXNh61pf+A3nTdQ8kYOuObB+pl/LRQPrM+chwiavh9s0CuB115RvEW
         RJE6I0ecqCBCCUwXB+C7Sh7Zyk/HPFpl4JNcRxbuGYup9bBZcMYOiLkjx71gBMfhbaaz
         VnA+5MNHPuZOESTRkDxSDdt+3vgUi+RpmyNCZI3fJTRV+fLj4Y1VlingKiv+2VvAFfg4
         3SP9ZwqLFyyhygzCL7hxuzaATDWFOTmzJb+gX8N+ZBc3FwnOLOoLNSVJvXpIMghmP95F
         wK1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rW+GFyQS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WjzckonD0iLN8v8Nv/dyHPVzzlKgHoRzpSmkkZ0RTHY=;
        b=ORRvkweI7yZstqDnl0RLs9Bbq0Y5SD7FGjNC0zrULbu2TbibEJhlTY+92Z4RNC3XsV
         vo8ymKtZs9pCE7sY0Z/Q0T4nBSiT1/WEh4+cuHUwVUzFUYW7sP1Fz08yCW02yyLhStlj
         cZeGK9Fny7cXDzeC1NRmT+oNYzRBTVTl7S4ELTsrIvF2jsHpiWNWJQBkDjSPQ3azrsJd
         dYMegh7AFtqVmEf6C0wqsqmwpbthybwBTn1LeqlGKfa/BBj6qsOpwAVxKSDMidp3w+D6
         GX+S6R4s9mnXS/QK0PdX0CNrXVjRVyckT2dd5GjUY9AX7r4aKoXtAeCQWtt+IjlbtDvX
         jp9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WjzckonD0iLN8v8Nv/dyHPVzzlKgHoRzpSmkkZ0RTHY=;
        b=kUcH24opgH3fXzPl0KWDTNs7+CiFHReUnUKJwEZAIQTZyaq5Wl7GAgG1xG6ws82sAv
         2CS+d4ys4G4JYg9MUBuDJC+dlofpDEaoKFQ0caiQnv29bY3UgD+xPV0rdIxMG4aH7RTr
         XGmLxhERm8o1egaRSICjXAmoztJN6GMClkt1Kwgd4qnFQd8lLvHAkP6W35Y8C4/SyEo6
         tM9iSDhihaNjazZ9igifqfOXCya848AMim/nj7GZ24AedVnjKVj/aou//NG8acGCkGX6
         biiowBAzCdZymfEP6J90icoj2wWXkWyaZQAnBuWd281tMu6eBIeKlb1dzi2GCWY2EKh3
         xAvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WjzckonD0iLN8v8Nv/dyHPVzzlKgHoRzpSmkkZ0RTHY=;
        b=TFhBGVDD0IDc93GiL0lf4b31MtNhKoy64TCwXTuFfUMuFxtkgFPVKjFLmqNWe4jN64
         qV9QmSRarhHdmVyHDlnAhySHH5SWiLk1W4Yq1FYBkr20GPIZORYTm7H7m2eS7aCZz5Pp
         gUg5iNH0Sv4uz6ZlOF06MQ5BOeHb0G7xKfOvQZsOl24CrQtywBnSlj/xMYF61GNg69H+
         EAU1EDd0aGgB0cg78NulehwKYz/nGCw8DmK5CQYNby785+h8CYsVqxpxopd29On8lnje
         +LkgFUmNPK0/2YoyaUGQIK1Oy4D40+ZHBAHXBBdbME3NfWAf3H66yiMVIqu3ymK2kFaX
         irpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Qqpt1EaTX9M6qi7OAshHEX0A9fE4/m3QoRdM2sOapDY18Rmuo
	ieYErD/3r2wZ9OTVaL4BWpU=
X-Google-Smtp-Source: ABdhPJx+1+Xka4kuunsc0urXzHEeFkZ9MxER7dotJbMU+FNaIHbgcSRqKShDUXCTNvOJX7EqlyHLCA==
X-Received: by 2002:a05:6214:ca:: with SMTP id f10mr1049427qvs.185.1590101978776;
        Thu, 21 May 2020 15:59:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2051:: with SMTP id d17ls1809606qka.11.gmail; Thu,
 21 May 2020 15:59:38 -0700 (PDT)
X-Received: by 2002:a37:4243:: with SMTP id p64mr12509641qka.438.1590101978412;
        Thu, 21 May 2020 15:59:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590101978; cv=none;
        d=google.com; s=arc-20160816;
        b=hADt6va0Xxru9DHyO1KsYCMvC21MTaP33XPYF9FoIpEX9N1nfbS0tHr/BrE284+QVE
         hRZclEReXmRcXDVKRKI0p+4KzcC+o9kWE9y1PQvdUoaJStvabJrHvtYtclryy9jusB44
         9h1fAbEOKOvsU4OhdIq4ZiH99SRy9rXRi5WgUFTJdarQ/zHM0RXGiEx+F4qYa+u7VRUQ
         yFV7deGC3vVAwNsejaf2l3ToJxeCe8EcqR+o1bMgIBU3Ks5EI31+Ak6aC7mxct8tOIeQ
         UpXEcUrKOq6njQgQfsuL4zDzk2QEuMGczLbCxF+FdzUgF8fRpEz4ETWz7QQ8tyBZi3Pb
         jAsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YrQHVbAXqdzSr3CR4avaCtFvuJDkrcGK/g6dWnZCDtY=;
        b=hY3JTVrK7afO9J6ZnQX/yZM2H2qTwneHvaa/pFnTrKbuGlCIi12CuCSYRh99W37PMx
         5fq5r7CMUv0FWJ47QRXV1BasZyKrcpppFROjfR3ieJ4tGjzkzU439PWiHbRNisstSLa1
         9YfQ4d5YGz8qIsLXCae0o2g/dvl5KUmq19OVGoNxSyttF/mAnBpyaqelGy6DwZHFDAXt
         alYchoS3It7JN4NAQZUkyf6QIupvTBvO6K1+gP2WHNt1dTpfynU9FCd0AtbHpdINXlqM
         H4IH8DX58SgDSkxJB9vQLMFVejO0VNx1O6FF400N2k/Ol+xDsrHp7oamDp8qPti3Zs4M
         Sk/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rW+GFyQS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id j94si237360qtb.4.2020.05.21.15.59.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 15:59:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id x10so3609224plr.4
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 15:59:38 -0700 (PDT)
X-Received: by 2002:a17:90a:ea90:: with SMTP id h16mr829557pjz.169.1590101977385;
        Thu, 21 May 2020 15:59:37 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id p30sm4576951pgn.58.2020.05.21.15.59.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2020 15:59:36 -0700 (PDT)
Date: Thu, 21 May 2020 15:59:34 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Fwd: [CRON] Broken: ClangBuiltLinux/continuous-integration#1432
 (master - 0aceafc)
Message-ID: <20200521225934.GA1592876@ubuntu-s3-xlarge-x86>
References: <ClangBuiltLinux/continuous-integration+164415390+broken@travis-ci.com>
 <5eb43a0c8d43d_13fb5db924ca0104770@travis-pro-tasks-6cc9887df6-4zmjd.mail>
 <CAKwvOdmendjEgurRBAyi4R0rDZRdwfHjddS_pfOQ6761XiiFMA@mail.gmail.com>
 <87d07fcdee.fsf@mpe.ellerman.id.au>
 <CAKwvOdn0Spc15v3WUE_rdrb5UvaTXmOvjEJOsD7ahktQOwQk+A@mail.gmail.com>
 <20200520010148.GA3327346@ubuntu-s3-xlarge-x86>
 <87r1vdh28z.fsf@mpe.ellerman.id.au>
 <CAKwvOdn_rNgPERgUfBgGywbyRBdSoEbQCaBO1o7fgqkMcCYXqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdn_rNgPERgUfBgGywbyRBdSoEbQCaBO1o7fgqkMcCYXqQ@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rW+GFyQS;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, May 21, 2020 at 03:23:11PM -0700, Nick Desaulniers wrote:
> On Thu, May 21, 2020 at 6:00 AM Michael Ellerman <mpe@ellerman.id.au> wrote:
> >
> > Nathan Chancellor <natechancellor@gmail.com> writes:
> > > On Tue, May 19, 2020 at 05:56:32PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> > >> Looks like our CI is still red from this:
> > >>
> > >> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/builds/166854584
> > >>
> > >> Filing a bug to follow up on:
> > >> https://github.com/ClangBuiltLinux/linux/issues/1031
> > >>
> > >> On Thu, May 7, 2020 at 8:29 PM Michael Ellerman <mpe@ellerman.id.au> wrote:
> > >> >
> > >> > Nick Desaulniers <ndesaulniers@google.com> writes:
> > >> > > Looks like ppc64le powernv_defconfig is suddenly failing the locking
> > >> > > torture tests, then locks up?
> > >> > > https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/329211572#L3111-L3167
> > >> > > Any recent changes related here in -next?  I believe this is the first
> > >> > > failure, so I'll report back if we see this again.
> > >> >
> > >> > Thanks for the report.
> > >> >
> > >> > There's nothing newly in next-20200507 that seems related.
> > ...
> > >
> > > This is probably still a manifestation of
> > > https://github.com/ClangBuiltLinux/continuous-integration/issues/262
> > > because rekicking the tests usually fixes it.
> 
> I thought we had upgraded our version of QEMU in response to this already?
> https://github.com/ClangBuiltLinux/dockerimage/pull/44
> https://github.com/ClangBuiltLinux/dockerimage/pull/46

That was more of a bandaid than an actual fix. It happens a lot less
often with QEMU 4.2.0 but I could still reproduce that hang very
sparingly with the POWER9 machines on it. My machines are way more
powerful than the ones on Travis, which I am sure factors into that.
the hang with the POWER9 machines very sparingly with QEMU 4.2.0 but

The real solution is to upgrade to QEMU 5.0.0, which we could probably
do via a PPA (or through our Docker image), or wait for QEMU 4.2.1,
which should hopefully have that fix since it was CC'd for QEMU stable.

> >
> > Oh yep.
> >
> > I was looking at the RCU warning, which I still don't understand, but
> > the lockup is presumably the same problem you hit with interrupts being
> > lost.
> >
> > > We should probably just disable the torture tests like we do for x86_64
> > > for CI because we do not have access to QEMU 5.0.0 where this should be
> > > fixed. I believe it is slated for 4.2.1 as well but we still have to
> > > wait for that to be updated and packaged in Ubuntu.
> >
> > You just need to start building Qemu HEAD as part of your CI ;)
> 
> LOL
> https://github.com/ClangBuiltLinux/dockerimage/pull/46#pullrequestreview-395639442
> Yeah I think the hard part for all these dependendencies is the risk
> of living on the edge of "top of tree" for all of them, and trying to
> control for some by using stable releases.  May not always be
> possible.

Unfortunately, we are at the mercy of a bunch of different parties. If
only we had a ClangBuiltLinux build server that we maintained...

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521225934.GA1592876%40ubuntu-s3-xlarge-x86.
