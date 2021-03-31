Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP52SOBQMGQELVSZOBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BD2350846
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 22:36:16 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id r12sf1560958wro.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 13:36:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617222975; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wr1fEhUlSxZgTmmckZq+zOex3T1alh+GtKOvcf28V3m389Z/m1KIE9a7+eWo2n0jXV
         3D0z5vzviSVC2ValR7uK+X2sTvvRnZll8JWEFU47S8DX7ypEWHT5qL0QN2oAgjcFFnui
         D76+0FsotIfKOCuZT08mO/ejN9wUPvYQsjCqyEPy3Z4k3ew6VusNXnBQVzAjS/ZoOYXS
         sSdbpQ9nUHyQCBOU7EAjWd/0ZPDamzMNVFKSxWbIkcj90TMuC4F6p2VhJaKBHymQbJke
         e/7RcHKZiOVw5PpShS3rYXlIr0z3WjjtDo44ZxmwMJ8Gfk8oN21qHAkW52Z01ecSoN2Z
         eHJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=E71rW2Rjxkt4hy+We0hdtWj8dcmgvwuRRrcYcO9pifo=;
        b=cxYKKRLDD9ShzyGCeX+Sx/KfmTivSTjdjHJ6W1shC4jRSju5+vmi7gTF55TpolKr0P
         tCxUwjz/at/S9dzp7XkhkUxh5xQ5t/t/1M+79MpiYiKOUEeDjZvzyZIs61Jr2aJHEFih
         B07L1qxyYUmDVxJ2cSg6E+nfTBfevcKJulrSYvLicfN06FcbpyVIGUjnOKgz/f8/fILc
         UaGGTUxrD4uIPFID/IZ5LZzDtDq577ZQsTCtQate1FzkiOlPDFQa4/AajXbgVKjGHNJ2
         50nlpmRMW9+FlsON/cANNwe3j0albdqSjdUqFz62PkQ7Zbd/uarWnc4r6t9wslNTJ4Vz
         DzCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qVeZVflw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E71rW2Rjxkt4hy+We0hdtWj8dcmgvwuRRrcYcO9pifo=;
        b=nOVMqZYd1kn1AWg37+UfD2bFeyl8htB1US2mXuYbAhcZKElgxRYFqFLVHck8YPlcTl
         3CMRCN3neQtj2CN28nk7rO4/MHkA9kxCLsOYMpPvyOVYkVV3lmzOxeXJ/HyibzhtZUfV
         0M4LW2j2gGPViqIRbXkP+o7ygz9KO43tk03S7qYS7lVpZglj3tTQ8Qj7YQgSz3X4ivaE
         GAXRUqw0xb7EK7z39NjVRTUarsAFeZ+KAq8V/XkoBRERcWTI4uvnbbHWirXrcIipt0tj
         o71mSJC89FylB9yhrXmk79t+Xd7MwXq3nNMY9rgOE7eiYPn0JqPCGavbCFdOeB2/kMGL
         ilUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E71rW2Rjxkt4hy+We0hdtWj8dcmgvwuRRrcYcO9pifo=;
        b=gdOFd2pPTzV3yt/Z6qkPz+1TWSZpJspthXzkMe6HlBzUD1g4EeTmJfDNrJ28wpNFbt
         6Oaj6TX/0HJoW3BKiZzZKTfdH2pV0hH7pSW+ib4cwEQOcvZvMXcPDppEKKJweULQ5lTd
         rC2X3w2RydoJbaYPdcfkPAXkL4On7hfi95FrbIrnGUCGmrbHRdjr9L+5M6XlV/IWHZo2
         ysGWtjVUAH26uVKS3Y/D/ju23fWUopydrN3TwLljAZifAxfwciht7b8/q4ig6lJh8iKz
         btuggTFLQvGzgEEjnMAO7BjfeJCUzG/4eB5jbwoZKdMRcnhhtFSyRKsgGni74zpvddil
         dQ+Q==
X-Gm-Message-State: AOAM532ib7ylUsXHreA/eOPUzZzlDmtJmW55PUSmBin7DCO/mxEYWUoJ
	LQ3z1uSUgUHfvgVz97DtqGA=
X-Google-Smtp-Source: ABdhPJw6u/tnGSiVsY8OTFvPDd6IHlUQNRvPUXW7AlfhKYayEYyDF6kxIPlpQeBvWXjF92YC0bMaxw==
X-Received: by 2002:a1c:4986:: with SMTP id w128mr4723121wma.37.1617222975790;
        Wed, 31 Mar 2021 13:36:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls794475wrb.1.gmail; Wed, 31
 Mar 2021 13:36:14 -0700 (PDT)
X-Received: by 2002:adf:fd91:: with SMTP id d17mr5746953wrr.0.1617222974856;
        Wed, 31 Mar 2021 13:36:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617222974; cv=none;
        d=google.com; s=arc-20160816;
        b=onFkRYZWWAmuIBIRDc4nV4v2D0+OoUZxxXjdnBSpaz7dfistHLG5TwgLQkh+OaOoxX
         kdgycDRIwJbvBMIrLjYDR9CPMOoAUG0L4rW/G3y7A1DPou5UAgvPdzXereBzoh1YUSSE
         jOANp8I5IKVNIX31i+DlGzsEaK/OdRAEW3VYtvBVCo5ABe5aFWHb9SWPh4XNdTJqq/Yp
         ahx2JgAz10kmhgm9C8UKENK7/GXQeVDgf+tkR6P76xUNJMJ8YLQbSMf3zCiFDJ6I+1bQ
         yb5rdLqroTbsvT+wGkQt3r2BloBYV6HU8q1mBcyTrgmy9SrLfM3O3DOWO8pgXfmS97ZG
         o3aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=o935j8yd3xhl5SyfSRJZ4olAehAZlS3OVKztv8anOnU=;
        b=TKBw2EslyGndm/zSDJBec1OezL+1+a5Lq5leSFi9+Mm5El2c0lxKBDcgxrUVwnf7Ph
         EJyT7Et91SQ+teD0iuz83W8vyAUkywpXMmXfJ+jQNHeGn8QVfxkpDOdWoy03IG7v2S/o
         2uWPhOwkUNcALGpmnDPQIjtf37zxSBWC5Okl3d2pR9vW+GTGw9CyGilKHEI7jhA2FQwV
         qmN9YvuH8lpcVoolps4i4g97MTDis5S3OtA/wzf2qJaCJAlHaQ03SI85CDgi61B7J1wv
         GmSavsPlnVJoImIjqoqkCnRCwQAS92f/9xCv9Assyvne6KOCF2SZKAA926bYQax42Swh
         B0Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qVeZVflw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id k83si311799wma.0.2021.03.31.13.36.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 13:36:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id v15so31016712lfq.5
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 13:36:14 -0700 (PDT)
X-Received: by 2002:a05:6512:94d:: with SMTP id u13mr3011098lft.368.1617222974121;
 Wed, 31 Mar 2021 13:36:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
 <87o8fa3oua.fsf@gnu.org> <403153ed-7953-c42e-40a2-6ad313acd661@oracle.com>
In-Reply-To: <403153ed-7953-c42e-40a2-6ad313acd661@oracle.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 31 Mar 2021 13:36:03 -0700
Message-ID: <CAKwvOd=aCn9WqcZe8KgvvZmW0C0nUVL9+sjE_xh0A-ru-995Hg@mail.gmail.com>
Subject: Re: Plumbers CF MCs
To: Elena Zannoni <elena.zannoni@oracle.com>, Steven Rostedt <rostedt@goodmis.org>
Cc: "Jose E. Marchesi" <jemarch@gnu.org>, linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>, 
	Florian Weimer <fweimer@redhat.com>, Christian Brauner <christian.brauner@canonical.com>, 
	nick.alcock@oracle.com, Segher Boessenkool <segher@kernel.crashing.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qVeZVflw;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132
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

On Wed, Mar 31, 2021 at 12:35 PM Elena Zannoni <elena.zannoni@oracle.com> wrote:
>
> On 3/22/21 2:39 PM, Jose E. Marchesi wrote:
> > Hi Nick.
> >
> >> I saw plumbers opened call for microconferences:
> >> https://www.linuxplumbersconf.org/blog/2021/index.php/2021/03/18/cfp-open-microconferences/
> >>
> >> I was going to put together a submission; do we want to do a combined
> >> toolchain MC, or have distinct ones this year?
> >>
> >> I know in 2020 the GNU cauldron was co-located with Plumbers, as well
> >> as a GNU Tools Track MC and LLVM MC.
> > We are actually discussing in another thread about abusing LPC's
> > hospitality for another GNU Tools Track this year...
> >
> > Regarding the micro-conferences, I would be ok with either combined or
> > separated.  I think both approaches have their advantages.
> >
> > In either case I'm up for organizing the GNU part.
>
> Hi,
> yes, so, it looks like a GNU toolchain track will happen again this year
> at LPC (in lieu of the Cauldron conference).

Cool; I generally find these talks of more interest to me personally
than many of the kernel topics. It's nice to be able to attend (as an
LLVM developer).

> For the toolchain related MC, we should pick a better name than last
> year to avoid people getting confused between the MC and the track.
> Something like "toolchains and kernel intersection" or similar.

Oh, yeah, that's a great idea.

> I am neutral on whether it is with LLVM or separate. I guess it all
> depends on how long we want the MC to be.
> If there are enough topics for a double slot, you should request that
> sooner rather than towards the end, when there might be no extra slots
> left.

Sure, that sounds good.  Maybe we can have a CFP for the proposed MC,
and if we get enough interesting proposals that it doesn't look like
we'll be able to accomodate what we'd like, we can split into two MCs
(if we even need to cross that bridge; maybe we can fit everything
into the 4hrs for an MC).  I was going to propose a timeline for us to
make such decisions by, but I just checked and it seems that the
deadline for MCs is not yet posted:
https://linuxplumbersconf.org/event/11/abstracts/#submit-abstract,
which makes working backwards from there tricky.

Steven, sorry if I missed it, but can the conf organizers pick and
post a date for the deadline for Call-for-MC submissions? This might
help MC organizers plan for putting out their own CFPs, and planning
deadlines.  In our case, it would be figuring out whether one day vs
more (if possible) or splitting the MC in two is necessary by the
deadline.  It might not even be an issue at all this year, but I think
that's the only concern folks have about doing a single
kernel+toolchain MC (vs split like last year).

Or if there's other ideas here, folks should feel empowered to speak
up. Thanks all for the feedback so far.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DaCn9WqcZe8KgvvZmW0C0nUVL9%2BsjE_xh0A-ru-995Hg%40mail.gmail.com.
