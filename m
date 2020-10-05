Return-Path: <clang-built-linux+bncBDYJPJO25UGBB55Z5X5QKGQEPFXPY7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AED283DBE
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 19:50:48 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id 135sf7067566pfu.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 10:50:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601920247; cv=pass;
        d=google.com; s=arc-20160816;
        b=ODyvfFsG4N331//EpT5ur3EfzYMeYtiI/FVVEZfuCr+bNH/+8rLz/AQCoQwJiSA803
         gb1r5vZEabEAK0akaUV4+D5aQJ2/6avXaeP2Av9ekzUCrHDXb0RA/4tkEi8a6RR3dzoD
         wyrHRLV6PRxh2hCqWu94ZyALwpAp7XlUXzmR3m+nTzKdXi/8+rBclUKG9mtYJ06WU3+P
         gpOMo2Yxnbki/9u2XChpz6MhAM7WQllFbOBQbCkccYvtKY+9Ws1L2xt9L/5/7Uy5cy4W
         U75PMgKPdmySWr68RJOM7/cvqqi2SMvKz8uCC1u50Qze11BZLwNenbTYJEL/L3Oxut51
         lYSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=p38/wSJmuG9/jwY8uDA22E+bCFWnanjXcTunvKxkJtM=;
        b=tCEuO9B3ptkGKD6G7ZtYRLFiVwih97P0ud6Szf+v2xrgQVIheiY4v0eBIqUJzWeXxa
         GAFjQ8jb4303l/eWfBRHhzwd/63GJiwknfRIeQ7x09U2grG+saoTRMVGan80J/7l3vcw
         k5WJK+S6qzkLeEvvlfhp2GHAK9ZZjKALcvov7TZrcr4AX7pYLiTIkeU+arPZHhd2Mm54
         V6w3lzFPqHa+FFXCcSP3cw2CtewNgllxTUoHG6IM4H+FRoGC39lQdeCx3zS+x8LFi12q
         6RKYCgEggfGOdc6uwyq8aPkMc7qSdaN6DFVsatdMiP5LNK2Y3vU2qUOgiAKM9n8ale62
         t0GQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G2CjPJdL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p38/wSJmuG9/jwY8uDA22E+bCFWnanjXcTunvKxkJtM=;
        b=BmaXJHcNKMMr5G90hF/Q5NAFL150Gs9YNS0p1qNMU+IOChd5wiHsLJV+dUJDwP7ddz
         MDLhnchIQcbn13ykjvqxFXM7+3UpLjmoHooNv7A4CeLav3qj1qf/7/ZGTIdN/XaCYaJ/
         E9E+siPz2NQWHURveWm+WY/6ikj7xgGXT0irgb4xGHiaykYY9WthAVImMTWkH4omsWl7
         tZ/OwRdBCD/Ri9bwQmiGg/RRe4NV6nC6OLUb/umYYq8+mTpPQxNHNd1sisJKBKUIo2YK
         6UBkLAVKjabokXEkMvUuJ+RO0GmmaabV+iNnSSemc84croIE8YkAAjiB9FBsPjLA0B+A
         b2BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p38/wSJmuG9/jwY8uDA22E+bCFWnanjXcTunvKxkJtM=;
        b=pwQTJNiAAO/33thYzgSxUyUdW5ofWmWBSlRjTc3hn+yDlH2RrEcdGTbZS8mLbjlIi2
         3Jd5w9Q0YhPZYhKK4CA71NWRdUoc3+wH1FDxwfWu7mIokPxb/OADylXEoQkVToQWFFCl
         c5JrlMUpoezRo8w/J6ijTsCrkg6E2/6DTAEfksC1mIg/ztVjmYuBxaozVG4j2U7ExF/y
         LMOO8jyjm70vm8lbHctMtyIxPhYSMIEQaQMQfXYEC6Q4DabNE8THjrygzmTN3aA3Jva5
         2AukYznfVsqGzpIborrTVbpBwEnXlxFqE+qjNba34xjWekPGfhH0z7WqB/v0bEtNivnQ
         8TYQ==
X-Gm-Message-State: AOAM532sOuYhJdqgP7/ng5lRIcB2/6weKB9LLCLGTnCSqLh9Ci03r57U
	KPYEI4TUJnRuCKzcXGx52fA=
X-Google-Smtp-Source: ABdhPJx/lU0f0xuK+qmFaKK1mEY0JZcCu4iFVFtGEYgfvy/fCdhLjKjKHiX/9kmYX6Z7SMjcEMvVRA==
X-Received: by 2002:a63:f60f:: with SMTP id m15mr599353pgh.298.1601920247323;
        Mon, 05 Oct 2020 10:50:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6485:: with SMTP id y127ls4695167pfb.9.gmail; Mon, 05
 Oct 2020 10:50:46 -0700 (PDT)
X-Received: by 2002:a05:6a00:23cc:b029:142:2501:34e5 with SMTP id g12-20020a056a0023ccb0290142250134e5mr933525pfc.62.1601920246722;
        Mon, 05 Oct 2020 10:50:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601920246; cv=none;
        d=google.com; s=arc-20160816;
        b=UfgF7LD2kWyJ/GeUpn2nzIo2AsLqxTanHNhvDNsaxbnZZHRa1xfdcazKe9SNEY/0tv
         zy5W7rpjhfrMwBXCBOy3mUS+anGc1h5Gjsqcl40LBG2xrHricut2K+cE8k7CEwgOjSzK
         luFVEZ/XomiTrAifD0oR4hRG/gT6F7p0Rt6yXFGEGyIPjPON7C4LKO6Z/iFBjDxiNMDf
         IJTdSUTkY03GqB8mDS3oS33kDfK7JZZfDnX/Q9hVyI0PGwcPqhOn2Rj9Vt9HlS919YlD
         0cQbLphNP3Z+qgI4LSK1Y2h8Rsx5ipSMz4PKcsaxDmUHhLkGCY9T0Vt37GLNKcaVIqqO
         m1Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iCU2zKb0zX7VUtyH/YPsO2btdqIgnBStO9wEsmNZcvc=;
        b=auDW1DFHnoZ/vBmNed++Hi0kkWU5+IoB7p7PXKa9qjWII1e7qB9fo0Rrk7xFgx7oWH
         t0WfMURjjVIhjd+0+UtdW3ieyP6KAkcenhKARA2zbhVpegXh2wsR65M/uOzfGOu2SQhm
         i3PRDak8T0ZgSVG8XT+5/x82V24+9M6OXU7jEHPQ6I6cQ3J/PuAOUpA392b7hZq1wldm
         bI0NjYBU0UZTBzNwa1pF4LE9pA34Qrg4E0uvmtmXtymao/ZAkVh+JUGLZia3/twc7V4A
         y9e6y3c8lR4RFrUfdHX1JF+xnX+EzCq7WzXcDzlGH7mIc+2qzomt93Hee2dQ5S5Km2Zw
         gW1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G2CjPJdL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id k126si95010pgk.0.2020.10.05.10.50.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 10:50:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id e10so6864908pfj.1
        for <clang-built-linux@googlegroups.com>; Mon, 05 Oct 2020 10:50:46 -0700 (PDT)
X-Received: by 2002:a62:1613:0:b029:152:743c:355c with SMTP id
 19-20020a6216130000b0290152743c355cmr894536pfw.15.1601920246217; Mon, 05 Oct
 2020 10:50:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmFm9-FPrqt42NsusWRbDzNx6NF1GeSJhz_9kaAGV8eOA@mail.gmail.com>
 <20200930173719.GE2628@hirez.programming.kicks-ass.net> <CAKwvOdk+Rp0QGJmX07XxD8L7WVgco98LHFTu-R_2R22+UMVerQ@mail.gmail.com>
 <20200930.152652.1530458864962753844.davem@davemloft.net> <CA+icZUXjYTJO4cC1EAhbdqnd19HjAwyFM+iSTW37xJM5dFHQuA@mail.gmail.com>
 <20201002172238.GT28786@gate.crashing.org> <4cf8e2ba-3120-7f25-a9a2-1707d3f88276@infradead.org>
In-Reply-To: <4cf8e2ba-3120-7f25-a9a2-1707d3f88276@infradead.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 5 Oct 2020 10:50:35 -0700
Message-ID: <CAKwvOdktSmMF3PraK25ZKxAyhxrWRXzL74=vf5wf5m+5rBOsVA@mail.gmail.com>
Subject: Re: linux tooling mailing list
To: "David S. Miller" <davem@davemloft.net>
Cc: Segher Boessenkool <segher@kernel.crashing.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Nick Clifton <nickc@redhat.com>, Fangrui Song <maskray@google.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	postmaster@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>, 
	Behan Webster <behanw@converseincode.com>, Randy Dunlap <rdunlap@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=G2CjPJdL;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Fri, Oct 2, 2020 at 10:37 AM Randy Dunlap <rdunlap@infradead.org> wrote:
>
> On 10/2/20 10:22 AM, Segher Boessenkool wrote:
> > On Fri, Oct 02, 2020 at 02:01:13PM +0200, Sedat Dilek wrote:
> >> On Thu, Oct 1, 2020 at 12:26 AM David Miller <davem@davemloft.net> wrote:
> >>> From: Nick Desaulniers <ndesaulniers@google.com>
> >>> Date: Wed, 30 Sep 2020 12:29:38 -0700
> >>>> linux-toolchains@vger.kernel.org
> >>>
> >>> Created.
> >>
> >> I am subscribed, too.
> >>
> >> Will there be a(n)...?
> >>
> >> * archive (for example marc.info)
> >
> > A lore archive would be good?
>
> That has already been requested.

Hi David,
Thank you for setting up the mailing list.  I appreciate it.  Now that
the lore archive has been set up
(https://lore.kernel.org/linux-toolchains/), would you mind linking to
it from http://vger.kernel.org/vger-lists.html under archives of
linux-toolchains?

>
> >
> >> * patchwork url
> >
> > We do not have any repositories associated with this list, and there
> > won't be many patches anyway, so patchwork will only be useful as a kind
> > of mail archive.  I can ask to set one up though, if people want that?

Personally, I haven't been using patchwork.  I know some maintainers
use it to keep track of reviews of lots of patches, but other than
that is there a major use case for patchwork I'm missing?

> >
> >
> > Segher
> >
>
>
> --
> ~Randy
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdktSmMF3PraK25ZKxAyhxrWRXzL74%3Dvf5wf5m%2B5rBOsVA%40mail.gmail.com.
