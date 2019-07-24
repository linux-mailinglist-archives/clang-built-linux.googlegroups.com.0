Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBFV4LUQKGQEA6NOWTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D46E73614
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 19:51:01 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id q196sf36327172ybg.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 10:51:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563990660; cv=pass;
        d=google.com; s=arc-20160816;
        b=RsErIuFwAzbeEfT1RxFVinipISjdAhtZcXqMWseutPyIQAZsdNu0O8XumBc7RoWMAB
         kDXZKoPRxWlXF57rw4KKehnpyQHuiYRhhmr1yNetRwvRkfYryE1niSUdDbpTeITHWxBb
         a7gtw/71NYhz8RF8NuBDf6tlC435KPCXAMa+qLxqaVEYk/dacCD/JihsZOliZhQVgXRM
         31AVjBnAjAHrW3naukc76QSea394C12tTVAjIZJoZUCyFTFazrYGpDu4ggi570SNH1Th
         PNNWDpEYne6RvMcYCNhvChOp99j3NUote3RvYP/bH0GqqS1P1SeAdZwdc/+KG3anjJ33
         jdXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4jHEEAp4Mci/7Tn53qP1Sk3WUhI3hZtiCE16uNovqMI=;
        b=APUilQ1SEyim6jE7Z8t1oxz+QB0lGrk9+MbnbLvW9YbkaeV75ScePXutpHAKNjOEt8
         Q5FiQW7CHDrcDsLmAFeqdVU4o/aUVQYZRPsXkQZeRJumMKH+XDEbhKg5Se/G+FjP0Vz0
         Jhue96/eH/Qt6maHlbCB9NHNy5Adn/Yt3XrghtHE53oAIQ/TeJn2J6w7fDa5RbXTYsIj
         0Kzme48rW1HjkckI1Pk/PsIseSrOS+pdv/UMyKcrom3Dc/+MmPiKhUvIHKvOmbZ0jVZp
         5uDg0WkOLF3uCl1hvQXZijOdxcKAsw0BL724FZEeZVrV3cuPqDnnC9CWjpRjt/NorODa
         MccQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="J/BXWFON";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4jHEEAp4Mci/7Tn53qP1Sk3WUhI3hZtiCE16uNovqMI=;
        b=ZWi3G5BLOjRrb08JS5BcVbfZHtmluboQi1zHyx9dj/YRW/mYymQgfV+ki+NUeMYZCo
         y5RiqvehoxXWBCwSmAiUwHjv085YlAIiHJUCvEB0lbyPxuwM6HN1mAn78plZSRbgiiyB
         g2n7iTMat72G+2L1uvj3xog87kxGJal2ZZMYY4FJqkLGA/2cDgBEVGWCLpcDA7Ux3cAs
         o/M/xntW2lAqMH2tR2fthu/cJWzCoOlrTOt29THckbP0QibYuXwpQLWdD3PNbHZKnbWI
         hlXWGyLotyVX5R5jBQ7Roxyq2PbYphg9LodMZS+SiOgiXoEB6END5iPuEaQf3F0jBVDO
         UlAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4jHEEAp4Mci/7Tn53qP1Sk3WUhI3hZtiCE16uNovqMI=;
        b=oX//wm2+/EbhbupMoT/ONE+Ykmxw46+SRyOMRKqWgb1ntHtLtZvCUAumRUX2D9OA+D
         fTPMXkZLV+yLjTZBUk1GpY8ST1T8gchDG1FfN2PG928/Egd1KWU7WYR1urgoT6s4r137
         GbwxTSG3C6VI9+26UemUtGhREiEt0MHcFdtQY3kMBxkt12NHFx/rhobAD7kfMp5IGolh
         O0/xEl2Mlh9KgPZyqdcR3Y/vQLxAuwB0+Bt5KopaO+ftmnPMYrC8SX0Fv6XNdF2JIwdU
         d5gbx/jtWbFWShImHcowua5CHF6+ik6cpwwCzLFjkT6TA2tax+0MkOA48fzzucW7liOP
         j7Ag==
X-Gm-Message-State: APjAAAXnul4RTFqP1ncFnW0+cVyNM/iLaGmeZdDh0FCr8zUoIJj9saeC
	5xPebpvhEdX6qLks4HRe+xA=
X-Google-Smtp-Source: APXvYqyB4EHcUC59A0aEu75ZiWFSiebgFN7IeS2wgGUlX3s9bmyX2+/jO4nvHdwebLKQYhV9jM+Dig==
X-Received: by 2002:a25:e093:: with SMTP id x141mr52959895ybg.195.1563990660169;
        Wed, 24 Jul 2019 10:51:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d796:: with SMTP id o144ls2325405ybg.1.gmail; Wed, 24
 Jul 2019 10:50:59 -0700 (PDT)
X-Received: by 2002:a25:549:: with SMTP id 70mr49398788ybf.266.1563990659843;
        Wed, 24 Jul 2019 10:50:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563990659; cv=none;
        d=google.com; s=arc-20160816;
        b=TF3PgXkuiPr0op6qus65moyW8lMsXKr1j37SgT6X1CoyLeHfXbYP7TrWfzaz2jmrCt
         nlKmlw1qV23HX8WWx4L6PErOuTCf3TzC0C/i74VHzexddPl22N5raTH2GrGQDWMW47Ol
         nApuuL74yYY3iXACoq/1Cdv3qN7N1QMxROiDYC5DJaShoDFyu/07hF0R3SlTlL15CgMn
         xz+49G/US+TOPHypGbnxPSEUY6ugfwdLIFjuZWjmgQGf+10AlJ6CukRfSsI4In5woAcQ
         9/505Qt5KDqHoyNIMOKdA9ibCCpBGOdk3nf3deBZBRyIf50tFjDMQi6OEeVAaOE6yEzw
         iLbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AVOzXvFAR3GInSRzhn/gYJoAFMVFF2jt2dpFliD4RA4=;
        b=kgDiLrr3ZhUNqD+cm3krwH27/+lSaj/V40PRdbKjbugOAfEOX7IkkXdt+NuAJfQhHK
         Iaf2drlAzdBnC3Hm72WsKT7wJJ9LxGaLabaieE4fn67NZlUDW7TaIeTAg6RlxqkWNpqA
         ScaIYWvJJ+8Zg0D8VuzGMGrp6bruGmTBNswmDJlmCiURUBJR+w8IBu6UM8S6N0k+Qp5A
         xWwPzbKBSZM46ai0m98X1TANBq8ORLXy0dmDcZINGvd+8BhGd/ST28dVTUKvaKblS6f0
         KBNMx8vt5vnSwW8oZD+S2qVwN54r9Qao8gv3qTUjIK0LgABP+KHizaZl9jCQAlebVWLm
         328g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="J/BXWFON";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id r1si2728980ywg.4.2019.07.24.10.50.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 10:50:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id c73so21305625pfb.13
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jul 2019 10:50:59 -0700 (PDT)
X-Received: by 2002:a65:5687:: with SMTP id v7mr84048366pgs.263.1563990658523;
 Wed, 24 Jul 2019 10:50:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdneB0hGteC_KGaMMG3LnO02-0XAVaA81A9+F6vFg+=xeA@mail.gmail.com>
 <CAEVzpNmUM+4xL-mGkuS8d7c5KzhR_fjJp3gTLEMjm6xmhC1cRw@mail.gmail.com>
In-Reply-To: <CAEVzpNmUM+4xL-mGkuS8d7c5KzhR_fjJp3gTLEMjm6xmhC1cRw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Jul 2019 10:50:47 -0700
Message-ID: <CAKwvOd=eNP47kkL-C8dj=yUHAMHu1dyNP+J6OCM4kZR7d-ChYQ@mail.gmail.com>
Subject: Re: upstream discussion about gold
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="J/BXWFON";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434
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

Thanks Nathan.

Sami, see the below threads.  Looks like upstream is disabling gold
builds, as a heads up.  Seems kind of x86 centric...

On Wed, Jul 24, 2019 at 10:34 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> You weren't. I probably should have brought you in but wasn't thinking about it.
>
> There were two discussions that happened, here is the top of each one.
>
> https://lore.kernel.org/lkml/20190713145909.30749-1-mike@fireburn.co.uk/
>
> https://lore.kernel.org/lkml/alpine.DEB.2.21.1907161434260.1767@nanos.tec.linutronix.de/
>
> On Wed, Jul 24, 2019 at 10:31 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > GKH mentioned something about gold being broken upstream, do you know
> > of any such discussion (was I cc'ed)?
> >
> > --
> > Thanks,
> > ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DeNP47kkL-C8dj%3DyUHAMHu1dyNP%2BJ6OCM4kZR7d-ChYQ%40mail.gmail.com.
