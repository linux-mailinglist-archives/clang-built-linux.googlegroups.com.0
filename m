Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBF555X5QKGQEIYHASNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 25385283DDE
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 19:57:45 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id 24sf6193959pgm.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 10:57:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601920664; cv=pass;
        d=google.com; s=arc-20160816;
        b=MAVYTybus9TnJ3fAVyE8tNDYt9rkqXW4tkc35KA1WIulpPusjTmER+IVZunx2+5nDt
         7wh90WbAOxIeSHOMoZ9Ne8aKH4BW5XzsVmoAaCi/VkAeqJBGfPyWHorVX/mQbxHqGq7w
         dMBsnuh3yY14rdXopuWzHH+IKITYBRHUTg859tRC+0XwJF7ky4qp1TIPi9nmH2HryA4o
         Wt9jeM4TtvhmpnOY1+OR+0MOQgYbmbs27qBXYtQ4TqENdDElfBKzNbmkDZ0K/mJPC9lJ
         /BRzMikY6Mq3DIhmXqPelVpDrLFktzmvAlshgI3ArwI3a/rwjHyj1tMrzndl6CYYOTtE
         L8vA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=tDhL9Q2sFJ0QVf4In6NauuE0QqcWkMTdQ6mHSTVKDkE=;
        b=EWIfG/rY+IEcjF1A8YGEWxg3UzC2VcdKrEDXspQxUV0PaWVXyFihUJP/Sb36HAP6zh
         oRN+eh5xSHq8J3d/H/kGuO7utDAhb+GY19HMue1igUoptD6G8cqoxcZrXQwukJ0VeauQ
         tWcRKA49BLc8T0HyG4jSDQainbHENe/c7s5j+Z+Xu15PAsT4fsFowTMctU+AdFJlV5Tt
         opFd+Ob2VnsIcb/dgEH8vszHUROA/GlfEGXe4Bn/J3X4aw1DEHtCWOnhuyT1k4tJug2v
         QrfFRLKY5TP0bYCsDmXhiWhsrTmlhoxO4ucSHJBio/2mI1BfOSWyGl8t1g3RofZcoGDK
         ItGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tqPhbNqP;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tDhL9Q2sFJ0QVf4In6NauuE0QqcWkMTdQ6mHSTVKDkE=;
        b=eL0Sazc0l5FB9z9Qzv59o2I7tr1OnCWfAE/AYqmDiVL7xp9I/ZasRtFAzOI1gdxS5j
         Pd1bVld7sRKVk7hWmIk7tsaGcKV1YPmVI2yKB2+HghGDo/KbuCvkt73tLZ+dTG+JqOAz
         sqq121WKYUllR+J4r+IYe+EgIBnqOazsKz4M2Ex/OEOYx0eO0mx/X+84b9yuww7wEYZ6
         groOeWEttu97XbY/TqwiE/fKTMkk6EM28wRwyMZExuWyotSSpk6MTSkk4F6fmPryZL77
         AH03vKDRdabPA8D5jEuqbk7UknQCklSiKFyuA28BGAZub+re+GUS9XY11YtLFDnH95Xq
         JxLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tDhL9Q2sFJ0QVf4In6NauuE0QqcWkMTdQ6mHSTVKDkE=;
        b=E/RjCqVWz7hXbwDK+EcS2/fEJoeD2KsXVmnKiJs4oEyejU2TdyK51IpfURsQhlqkxg
         roZt38XrR5bQqqwV8Knq6tdYH/MLLwo2c+TrZoQuuceOyVAOOCBiP+OHbZlMJorvmKys
         YSf8PGOzmSdYSjwu9cBCSrjdF1p323kzqhH5tMjhltBO28+HR78QTWEEqDHF9tlpjVQs
         1kkTbwzQh4WHJkiuY1MrBbhCTxyivRWx/3dq4ILTle0/fHwwN0UTwsQZScNmMVBKx+lj
         9TLQHhsN1+qZTZCA1i4FLrrlpvu0s7D496SYuwM5ABHDRg3xw8zlYPxk4cZSMWJvF2bH
         woOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tDhL9Q2sFJ0QVf4In6NauuE0QqcWkMTdQ6mHSTVKDkE=;
        b=JCYNl+FbF2wEKFC7nPWgNVcgw5by2h/IS6hinY2Qxk4HO7UDRc4RujUb2JTq/ORCcR
         9X8OpM6UMcY5vehlcSYlKAys7VOC4GrK1T2dSjI7TgVrqxhqT03V/vXvUT934rooVbH5
         S9BOwRaczhCuC6OrPFp8NemEUbL6Z/s3DuMnrhJbIWCgqjuguayfkoe34aIHnaEABhYM
         TsRON5QvAjzAXcdDKnzJEgPb2m1W9Tg9nf0a8zDdyA6Pe57iZ5pD2kNawbXeoshz+SFW
         /2JW6SRUo09UD8BLNZheWBYD6lvOFX2bCco9/AkhPzYQMzrUF5mj/PrTiiU3tjYirR8H
         Srqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VaTabhsnFgJbnCj0x1BfNlTGdBPAJGLB2Y7QRkMYSkSYEj4pz
	wdOTOa1ktxpIW8KeQ45nSaI=
X-Google-Smtp-Source: ABdhPJzzM2Ey5tIFNca7GqyN5xkggwW+w9rpNCjNFDSXNQzYT7n5/0JrXeKibyOKZwDhFiQR/BX/Wg==
X-Received: by 2002:a17:90a:1704:: with SMTP id z4mr571088pjd.7.1601920663825;
        Mon, 05 Oct 2020 10:57:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:368a:: with SMTP id d132ls3863468pga.6.gmail; Mon, 05
 Oct 2020 10:57:43 -0700 (PDT)
X-Received: by 2002:a62:884d:0:b029:152:1a5f:1123 with SMTP id l74-20020a62884d0000b02901521a5f1123mr960753pfd.28.1601920663165;
        Mon, 05 Oct 2020 10:57:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601920663; cv=none;
        d=google.com; s=arc-20160816;
        b=e5jDTJ3HuCmp+F3rGKKbxfr65fjPCQBrYrorZR4s7U6wbXOA/pDxXzkBNpRwevxp51
         +WcwE6VYA94DbHDf1lRWM72HB1S8Orccp3ebdq0LqdwDqDixu1VJYzNUzp73tYlBZASs
         JxIzV9VK4UsHgQhnUfZHn7A2jxL/Dt5ACZpoBg9jHA4KFXIlsOsF4OunAWYJxi9Tnq4c
         uP5d+oOHM+h6m2FVp13AoWkCx7POX6Aq+rDlDg+bBLbLlsu6DIHYP1HsXtxM92XBRhKo
         /b0u1zMsGbiMwXN9k35MCu1XcazaS0W2blsM2jyvzlK8+iXUeiHBp35deZiscol/oRuF
         OaXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nNid7HYJ8WI2NlxwB4VddDH9u7bC1gHnaATJfb5dWa4=;
        b=pvZhyugvIwSr78/GIGHaDCZoUcmiEaJGu1TuZD8BOCOnjXVB/mOh5+SrcJ1W+uHl2g
         KlkQAAkD2NjydUs6Vrwi7vqcEoaTwQ4VvWkRCj3sG4nYjJRDFlx09gA+efSzJvAtFgLw
         hxXypxCcabyzTeZXWMrO8eGoumK8AwKAkj692IZbx6qj6DFc6ImGsUIfo5hDdNuemFkC
         kgfGM4LioMrkkB0RTTFgHJtucM3rcUTOo2T5yqw9GwzJznrbjD30pRJd1btqUYzSkKRU
         eNS+XuiRQ7m8sxHAKQD7XmpKN/AE//g3RlbioffiOHqSgVqjvUSbcKilaAbtFA6B8OK0
         P+uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tqPhbNqP;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id n8si97631pfd.4.2020.10.05.10.57.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 10:57:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id t18so1199980ilo.12
        for <clang-built-linux@googlegroups.com>; Mon, 05 Oct 2020 10:57:43 -0700 (PDT)
X-Received: by 2002:a92:c986:: with SMTP id y6mr475624iln.10.1601920662654;
 Mon, 05 Oct 2020 10:57:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmFm9-FPrqt42NsusWRbDzNx6NF1GeSJhz_9kaAGV8eOA@mail.gmail.com>
 <20200930173719.GE2628@hirez.programming.kicks-ass.net> <CAKwvOdk+Rp0QGJmX07XxD8L7WVgco98LHFTu-R_2R22+UMVerQ@mail.gmail.com>
 <20200930.152652.1530458864962753844.davem@davemloft.net> <CA+icZUXjYTJO4cC1EAhbdqnd19HjAwyFM+iSTW37xJM5dFHQuA@mail.gmail.com>
 <20201002172238.GT28786@gate.crashing.org> <4cf8e2ba-3120-7f25-a9a2-1707d3f88276@infradead.org>
 <CAKwvOdktSmMF3PraK25ZKxAyhxrWRXzL74=vf5wf5m+5rBOsVA@mail.gmail.com>
In-Reply-To: <CAKwvOdktSmMF3PraK25ZKxAyhxrWRXzL74=vf5wf5m+5rBOsVA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 5 Oct 2020 19:57:31 +0200
Message-ID: <CA+icZUXZeKi5fpF1hx_-q9aT6h7RTzMLBvZWsOMdqqDV5WzeXQ@mail.gmail.com>
Subject: Re: linux tooling mailing list
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "David S. Miller" <davem@davemloft.net>, Segher Boessenkool <segher@kernel.crashing.org>, 
	Nick Clifton <nickc@redhat.com>, Fangrui Song <maskray@google.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	postmaster@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>, 
	Behan Webster <behanw@converseincode.com>, Randy Dunlap <rdunlap@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tqPhbNqP;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Oct 5, 2020 at 7:50 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Fri, Oct 2, 2020 at 10:37 AM Randy Dunlap <rdunlap@infradead.org> wrote:
> >
> > On 10/2/20 10:22 AM, Segher Boessenkool wrote:
> > > On Fri, Oct 02, 2020 at 02:01:13PM +0200, Sedat Dilek wrote:
> > >> On Thu, Oct 1, 2020 at 12:26 AM David Miller <davem@davemloft.net> wrote:
> > >>> From: Nick Desaulniers <ndesaulniers@google.com>
> > >>> Date: Wed, 30 Sep 2020 12:29:38 -0700
> > >>>> linux-toolchains@vger.kernel.org
> > >>>
> > >>> Created.
> > >>
> > >> I am subscribed, too.
> > >>
> > >> Will there be a(n)...?
> > >>
> > >> * archive (for example marc.info)
> > >
> > > A lore archive would be good?
> >
> > That has already been requested.
>
> Hi David,
> Thank you for setting up the mailing list.  I appreciate it.  Now that
> the lore archive has been set up
> (https://lore.kernel.org/linux-toolchains/), would you mind linking to
> it from http://vger.kernel.org/vger-lists.html under archives of
> linux-toolchains?
>

Updating MAINTAINERS file came to my mind... Dunno where ro place the
new ML info?

- Sedat -

> >
> > >
> > >> * patchwork url
> > >
> > > We do not have any repositories associated with this list, and there
> > > won't be many patches anyway, so patchwork will only be useful as a kind
> > > of mail archive.  I can ask to set one up though, if people want that?
>
> Personally, I haven't been using patchwork.  I know some maintainers
> use it to keep track of reviews of lots of patches, but other than
> that is there a major use case for patchwork I'm missing?
>
> > >
> > >
> > > Segher
> > >
> >
> >
> > --
> > ~Randy
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXZeKi5fpF1hx_-q9aT6h7RTzMLBvZWsOMdqqDV5WzeXQ%40mail.gmail.com.
