Return-Path: <clang-built-linux+bncBD4LX4523YGBB2WRXT6QKGQEYCTGN4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4222B2A16
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 01:46:35 +0100 (CET)
Received: by mail-vs1-xe38.google.com with SMTP id j206sf3131440vsd.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 16:46:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605314794; cv=pass;
        d=google.com; s=arc-20160816;
        b=NXvh6zW8peNhk7RuzQf6OfB3cB73rNfMcTNVIXQLh3swMWG1nBU7iN/MWj7flazFj/
         3EqfkCls/yqONmUT2LNcm3TruHkKuePqJVB5xwUsCEF9ZKLOLvVuLYM1Yj61fwHg4Jiu
         kDDmqqkoZ28dR8jlRMiIev/l5/LMbi5hHu3EnxoR1T1JxRRtFlONVezxDeMdZ3F0a6h0
         6LAlJhyw21AGlE7bjOE/grEZ2dfp/0ZyhfoBicL7nHbrE/nh+w7SDsZYNrXnOZoElBOQ
         qEd8oYEB8XpYTaO76wyuB3PVNaBuhgmN3W6WExVkfMtMqfLDNezMpnEW47p2KFuaWkLx
         II6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=dJg8tTM3KVOW/DijhdSJWdi4o8W8yi612HERrZM98M4=;
        b=Q/otFwnpTf95g4WeqaHWj1vFOLFef/GPIPoE4MOwY5GMO7oXo/LPAIXzhaj3BM+c12
         SgM9W8Ws3xL/vW/ei4DFQHIbed17Kev7myNtnonYFPSpV93rQiMZK3I+Z77Pps/EgZkF
         MdgNKu3K0MS834QArfbJ1ocwSGdOCbTiAkIhmvxQsYLAhyZDhLpLgHVOYRLqPVVnVYMm
         lHWCq1BtR9/I9K9m2kIrK0WZVo/Fuenr96tyzQ2DsvQwauhycsPKe0I6trewevL/5h/G
         he87bxv2Pf54Ff6ucTr6Fy35X2PUFq5rqFrW1XFmnZimfinsxenjyfW4SuOWemSBeY2v
         db+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dJg8tTM3KVOW/DijhdSJWdi4o8W8yi612HERrZM98M4=;
        b=cG8iqnI1Cpx79D/RdIoObB8gwAvtDMbnoBs01yYaV5qvb23aIXcwJLJz9HnEsZNtud
         KVNeFMfh1KhhRXIsKfiK111N0uVoaJPxjHXN1Gncp8IPJrNUs2f/Wb8khV2I+W8atRyk
         4xqGzKJBCz185bmdXOZBgNNFO7EuQBzYhys4iptjnwCbj5k83ZxrFINDNBYVUHj+/79y
         ewN1kDAofP8m3xfBBmTIt2fPnTQ+51s7nLe0J1JUtxK0g+wpwy5WhEVKHPb4P7PZIqKl
         Y5Obx8EyCWUcR/Jfbzt3wb74EBUdr5fF33IzMDwKxE0tvy+ZB7h2Ad/sqALRkADacesY
         r4Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dJg8tTM3KVOW/DijhdSJWdi4o8W8yi612HERrZM98M4=;
        b=b0p1G+Xfags1PINDUpGrkFa+rS4N0xzEy6w+ainOfSSUjb9KAlsA9S/cQ0JX84huep
         7DfXxQPvvRl3m0iB/LP9m2PTQAA/bKeUn2bvmMtVaBiRDLgNKmW5LL4+JIejxH/617H3
         zmDaxihx/HXnknZ0rHut7wVfnbyoSTAYOXpKQkoGevt8VagUpEwaZF7d3qxDv4kAULl5
         q+Tt97wVYQZp8GihzvD710kEB+g6SKEGtc96hZC5H2SQH8mQVHOGinthz1eM7TD29t6f
         h/2yTfFRVqL2wou5wh9G7G7q1RHhB9WPZOgCL/6soch+Cfb3WL82E4A/uMFNt2anwwDa
         INMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533oXOlfnBGTkKJBmMLBFPue81hhNWeiG7OJQlHe/GRF/NJciFtp
	xLvMM1Pn+S6eOMC8kRf3icM=
X-Google-Smtp-Source: ABdhPJzi2F/h3APpEIJ7xdMDRHYvl28CA6A6MUkWrYdUhXQ+7i1zMr3iJGxgevEzVm2p+s6+g+gCTA==
X-Received: by 2002:ab0:4988:: with SMTP id e8mr2367087uad.44.1605314794517;
        Fri, 13 Nov 2020 16:46:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d098:: with SMTP id s24ls1125826vsi.5.gmail; Fri, 13 Nov
 2020 16:46:34 -0800 (PST)
X-Received: by 2002:a05:6102:10c6:: with SMTP id t6mr3353782vsr.45.1605314794021;
        Fri, 13 Nov 2020 16:46:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605314794; cv=none;
        d=google.com; s=arc-20160816;
        b=AzA1+ttd0kgyQq7WzxJNGDB854pf5mGw+DB3LVEuOPZ7M5t5LFaO9Hcga9xfmQ1Ul8
         Flq9QV+MTw6+m/r4M5ipyE6w5HY7uPk/lJo1J0vcuP3nrFoG4/Jw195fNc9ywixFJviB
         LJBLY7qMUBX83eDePT+xyiyPjtS8wybdwRbtXS+r6o3Ir53CATGiWarAVnGM58OSmV7u
         YpBUMnlItjMRIaRkm53qCcuWMEcfUY9OT8CvIeb/AqN06zSEAxeSyvirrYVsJDq3i9FO
         n0/Sb3rR26ckH8SXzKkNSN1K35scQjiqFuyiZKxYNy/Uxr7dGv1y2UGuBG0QRspKjhzT
         +n5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=dNwqvzeYd7LLKHNZ16D326hLRkBi6HOut0ZQ4stlAQw=;
        b=gHQBDYutRR8uzmwpYsvDWdosXlachseQipCFoqWPKO+Oi3VqyV3cjwyGUX8iJkaADU
         iYiqVVljwB5TFiEjJFms9aEvygVH7srOH+DrSt5Si+zfQy1Y0c6LTiUYtMZegnJmbmZ2
         qWN3F4fAOCZLMEN0geG7FX+KkyzWZcgu/g9+ICSYDHiOcz4qFbtwVo4B2xGF2xiDAEmS
         LTN15gdVDATvXw8goaH87l4bykJGNh1fbz3zNcIb2bOsyzp/UQpNJeXaDaMGrM2jEEbm
         3XFYCYSFcUpaKnswDR++6jPXZjUyUsWfOQgEDzw04hTzjRGVBRxtts9zq8YB+Np+45e1
         d8xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id m17si767652vsk.0.2020.11.13.16.46.33
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Nov 2020 16:46:33 -0800 (PST)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 0AE0hL3I007474;
	Fri, 13 Nov 2020 18:43:21 -0600
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 0AE0hIMX007471;
	Fri, 13 Nov 2020 18:43:18 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 13 Nov 2020 18:43:18 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Alexandre Chartre <alexandre.chartre@oracle.com>, kbuild-all@lists.01.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-toolchains@vger.kernel.org, kernel test robot <lkp@intel.com>,
        Arvind Sankar <nivedita@alum.mit.edu>,
        Ard Biesheuvel <ardb@kernel.org>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>
Subject: Re: [RFC][PATCH 21/24] x86/entry: Disable stack-protector for IST entry C handlers
Message-ID: <20201114004318.GY2672@gate.crashing.org>
References: <20201109144425.270789-22-alexandre.chartre@oracle.com> <202011131552.4kvOb9Id-lkp@intel.com> <CAKwvOdnvhyNs1arkVO1=pw9GB9NePKUfQYAY+Q0Ur9Qe9HJ37w@mail.gmail.com> <20201113234701.GV2672@gate.crashing.org> <CAKwvOdk8ewY1nOA2ji6yoZcOOYDX7OKqmbZYuMAnCFV=9t0VNA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdk8ewY1nOA2ji6yoZcOOYDX7OKqmbZYuMAnCFV=9t0VNA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Fri, Nov 13, 2020 at 04:11:41PM -0800, Nick Desaulniers wrote:
> On Fri, Nov 13, 2020 at 3:49 PM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> > On Fri, Nov 13, 2020 at 10:59:26AM -0800, Nick Desaulniers wrote:
> > > The `optimize` attribute is both non-portable across toolchains (hence
> > > this warning)
> >
> > Like *all* GCC extensions.
> >
> > > and a little quirky in GCC.
> >
> > How so?  Don't spread FUD please, say what *is* wrong, then people can
> > decide for themselves whether they want it or not.
> 
> Spread FUD? Ard literally sent TO YOU:
> https://lore.kernel.org/lkml/CAMj1kXHxX+u5-cN0v3SLdqZTSiKsWsFOvc2SC5=-ScaUZOu8Ng@mail.gmail.com/,
> and it was referenced again in
> https://lore.kernel.org/lkml/20201028081123.GT2628@hirez.programming.kicks-ass.net/.
> 
> Was it FUD when Ard sent it to you?

He didn't say "this option is a little quirky".  He simply quoted our
wiki entry for it, which says "use this only for debugging" (just like
the user documentation btw).  The FAQ also goes on to explain the
attribute is very hard to use, it is not obvious at all what flags you
can and cannot set, it's a user interface disaster.  It explains what is
bad with it, it doesn't just say "ooh I don't understand it, do not use
it".  (It does say "no one really understands it, do not use it", there
is that ;-) )


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201114004318.GY2672%40gate.crashing.org.
