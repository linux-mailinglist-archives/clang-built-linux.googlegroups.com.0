Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOMQ4L6AKGQELXXG33I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6B129CA9B
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 21:51:06 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id t139sf1012878vkd.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 13:51:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603831866; cv=pass;
        d=google.com; s=arc-20160816;
        b=r3vprv3lpwaj3ylhSk6i5XWoPhIngqqpKoPGyCPz0CUt91iT4Il5XpMN3eN54sL6jS
         oXENydrz8SdTVmZi91lHxIG4NlHNF/lXoTHmsxmIWhCMvfiTiFaclbSrK4kgp6DHp5Bz
         xbJgRuQSB5KmLRmQbu2OlwrXmoImbbmOX5rb3EqPpT8DnCMoeVeFF/G3jypiRSg4TrvV
         mo30Zx7+eWFMbDVdd87+ZfGIkhpKXpNmoXSXxpDCe+Cc8r+LX+/HCrTsCQxMlQBpwJ1Y
         Q5tZCyqpvb8JEmVWcqcYHox/DJ9scTTUU8RyCh87mJATFtMHcMCOW9EPBJylDfTO0tcE
         YdYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QL5lMkwRafqOC5D0qDejAQ3P9olLGTadjIu6gJA4u/g=;
        b=zxw8mwMr4KomnEHU+/qOLvsEPmEsTiT18OZZLWWjHWi5wxFeGn+1XK3kR6mzTy/9To
         EsfqF65JAfzGJKIBdzMnR1V+2Gn5m7d80uMC9bNAqqjkrwPQ+7x7gYZB8cEudpBTjV2O
         Lopz83sX3BiBjepSaES6nzhYXbBmfECCwo7pIjwoVOBipOj8C37a6iDuhtU3um/fgT4o
         4OhnX/SNG4RoyEVDzb8oBwUKt3YuysitKdEY7zVfxi1ZIqfDFpgY1uAbfj9Dhi5l0130
         r6AIReDFqoS2K5mkQ1EtPrCw0BDAHwpMM1BDDHX72inAvMhrN1GSz0n2N1gd0NFxE4+l
         otLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pCCE0K0+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QL5lMkwRafqOC5D0qDejAQ3P9olLGTadjIu6gJA4u/g=;
        b=i5eQDefMGxBwu+DoshUNClYdNN/bmbzLTalYYUuRXPN5dB5iSIsYyxQbePUtw+0WFL
         GoxI/eo++c838uG2aq0qNgIpIh8/fxrtOteXLyGbBzmi1c7EQioNoi30l/MrtFsB2Gfe
         EL99wNJRQsrLAuyYoQJMtpXrrXC7YL1qFS8IYm3Epx6O5veRycFmqetgl9V/lBPBMn9O
         XeuKaI//aoeyVC1ANuPbH1HRk2D69Xj6XHc6E6wC+Grc18raiWaaj5Pu7WDR9NVuvSIm
         7qQBws0l83l1jptCSoj1tmZ+utgEPmYmZZWUZhLSfmz4FndRdAxG9ByNY9zb8JM8hkr+
         lg0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QL5lMkwRafqOC5D0qDejAQ3P9olLGTadjIu6gJA4u/g=;
        b=iq0SXkiu3b+br9dFFWXlElk30Z8aJ3Hpq6I8ChziFMgfssThhbEvk+9XpBf6g16wJd
         IEhT/08+teNPUPco/VpRUV5r7vfwtUaAsmvvWCIgmO6oC0NzxzC+GLJmpQ54QaqQccaQ
         aFCRnadLAHF3MjupHHL19TUBv/rJy9kIqO6xRbN9GQJH+/XXZkBQGxYULsX5B5wI2lx8
         euW3KNYf73hZV9NBOI+YRkWisqchUeZEbLK1//Ls2Hh3ax1P0i0AOGKI1dN8OSuIkySn
         3G/8RLqX11zNlRAJfJ9mRon/w+wUA1BKvI6ddHcUHzo2DQ96qwTlcaBUOhKw3sn/icyx
         JkQg==
X-Gm-Message-State: AOAM532pqnr+xYxuqGCUDl4xlFfZIH1hIe0GAqf5REx+ngPr0u0o6NIO
	Gc3SPaLqxZbzPTcpSmveIeM=
X-Google-Smtp-Source: ABdhPJw1BLkCrniJvXDyn+R5mM4r0AmldF3Yl198ZT0Q453PaqRNfwiSUSp00K8iK+vaoLF6+kTWxw==
X-Received: by 2002:a05:6122:1079:: with SMTP id k25mr3382894vko.22.1603831865980;
        Tue, 27 Oct 2020 13:51:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:449:: with SMTP id e9ls379561vsq.4.gmail; Tue, 27
 Oct 2020 13:51:05 -0700 (PDT)
X-Received: by 2002:a67:ffc1:: with SMTP id w1mr3382524vsq.52.1603831865380;
        Tue, 27 Oct 2020 13:51:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603831865; cv=none;
        d=google.com; s=arc-20160816;
        b=OpZVBwj49eQ9Y8VOHQd42zW1AFuV1n8vTjp4swyHgbIBRVlaoRMRgibRCKhRqamE40
         CPlZrirHUqUzTvPR6DFF2jhgprskOakutXKb8+aQP/JDXJ6nQYYhrywje1WgQuGITREn
         6Pyvez+TVoSspaGVNV9TJGW6tAuGPmWiyWxvIxcpE2YJP9QvSGEvgniaCf1wX7yVlfkI
         g7bNjtpjhZZMHysRXahishuDw/ygXbCADCkeE5+y/eSdTWUpmFNs6XKMoIn3vR8eMlrY
         wrhEHsT2eEwaFpITJtzTuX7vJEUl2ImMmz0XpAl5AvGUWHIYTfQhZqwFL96/mNJAthf+
         /5tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XHNOVc4DdavJvtU3kYnOGO87AVK1l/GKrv9DB/l735I=;
        b=JKsXLEAghREwyYkVnx/KJ/VFh0/l4xcdfgkbUWzQ7arWdpJTG9J9jHRSbJpaGkFAx3
         s03xtUrQPvrwZmMClrChjOrBjxdFtu5R6YKYCkl7pYZBo9zgnpESrXiZzb1/hQQlwxPY
         Igu7mzaVU6yYcnO2zj2sOWaotK4wkj5+IwUphEmSGvofOToMJjwXt2OxT1JeXyWchaUc
         s5kZtWjuJHXKv1aev2bK10TFp+2hdavoALivA7ybJ6eerH54040P2vUXNg8nKP4V+wKd
         ti8YZAyZHrchFc/hOv00dFYURDmZs593Bo4f2LzAg+USN1lNuVxN0cSNaZZS9eKkdeqM
         H0Lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pCCE0K0+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id q192si181624vkb.2.2020.10.27.13.51.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 13:51:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id gi3so1359933pjb.3
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 13:51:05 -0700 (PDT)
X-Received: by 2002:a17:90a:740a:: with SMTP id a10mr3680150pjg.32.1603831864267;
 Tue, 27 Oct 2020 13:51:04 -0700 (PDT)
MIME-Version: 1.0
References: <20201027164255.1573301-1-trix@redhat.com> <CAKwvOd=83v0Sv-NhQ5xgqdNSRm2b=pOJDziX8axZ9t2YyYwz-A@mail.gmail.com>
 <8abd1e5a-511a-e4f6-6f2c-a045d33fa2aa@redhat.com> <a4c58c21f0361f844588f5479f6fee33dc1a1dae.camel@perches.com>
In-Reply-To: <a4c58c21f0361f844588f5479f6fee33dc1a1dae.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Oct 2020 13:50:53 -0700
Message-ID: <CAKwvOd=NiUEv51BCXVUDERwbs9qCX1SbMarrof5H0RoCdxP0NA@mail.gmail.com>
Subject: Re: Subject: [RFC] clang tooling cleanups
To: Joe Perches <joe@perches.com>
Cc: Tom Rix <trix@redhat.com>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org, 
	Julia.Lawall@lip6.fr, Linus Torvalds <torvalds@linux-foundation.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Huckleberry <nhuck15@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pCCE0K0+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Oct 27, 2020 at 12:52 PM Joe Perches <joe@perches.com> wrote:
>
> (Adding Stephen Rothwell)
>
> On Tue, 2020-10-27 at 12:33 -0700, Tom Rix wrote:
> > On 10/27/20 11:42 AM, Nick Desaulniers wrote:
> > > (cutting down the CC list to something more intimate)
>
> []
>
> > I am interested in treewide fixes.
>
> As am I, but here the definition of fixes is undefined though.
> Whitespace / style changes and other bits that don't change generated
> object code aren't considered fixes by many maintainers.
>
> > Cleaning them up (maybe me not doing all the patches) and keeping them clean.
> >
> > The clang -Wextra-semi-stmt -fixit will fix all 10,000 problems
>
> I rather doubt there are 10K extra semicolons in the kernel source tree.
> Is there a proposed diff/patch posted somewhere?

Ah, I think I see where I (and Joe) may be misinterpreting.  Tom, do
you mean to say that `clang -fixit` will attempt to fix EVERY warning
in tree (including but regardless of -Wextra-semi-stmt, where
-Wextra-semi-stmt is a red herring), so the clang-tidy check is
specific to applying fixits just for -Wextra-semi-stmt?  (If so, I
wonder if we could improve clang to accept more fine grain control
over *which* fixits we want applied.  Not at all of them for all of
the different distinct warnings, for example).

>
> > This clang tidy fixer will fix only the 100 problems that are 'switch() {};'
> >
> > When doing a treewide cleanup, batching a bunch of fixes that are the same problem and fix
> > is much easier on everyone to review and more likely to be accepted.
>
> That depends on the definition of batching.
>
> If individual patches are sent to multiple maintainers, the
> acceptance / apply rate seems always < 50% and some are rejected
> outright by various maintainers as "unnecessary churn".
>
> Single treewide patches are generally not applied unless by Linus.
> The trivial tree isn't widely used for this.
>
> Perhaps a 'scripted' git tree could be established that is integrated
> into -next that would allow these automated patches to be better
> vetted and increase the acceptance rate of these automated patches.
>
> > Long term, a c/i system would keep the tree clean by running the switch-semi checker/fixer.
> > And we can all move onto the next problem.
>
> Good idea...
> I hope a scripted patches mechanism will be established.

Yes, if I can automate myself out of job, then I can hang out of the
roof and drink margaritas all day.  That is the plan of record, but
this !##$'ing compiler is constantly broken!!!!1

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DNiUEv51BCXVUDERwbs9qCX1SbMarrof5H0RoCdxP0NA%40mail.gmail.com.
