Return-Path: <clang-built-linux+bncBCQJP74GSUDRBWPLT74QKGQEK5NO22I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id D39E623A358
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Aug 2020 13:32:42 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id 65sf27452282plf.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Aug 2020 04:32:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596454361; cv=pass;
        d=google.com; s=arc-20160816;
        b=r07w14KwUM9Qw1hJZxkmhwSym19/yg0Qwoi7ud5nebuHjEjJGB8fj0NiXV/6955zqB
         t/xOeCBL9ZxuSMMw5UW0G9rBSXBvUIDIFw8mNajxiuQtzeeVfbCSbtr/LC45hUHGoo7N
         twLBf/2QFIL232abFFTn5o7ZOmt8aFfkPa+4osvnmLVOxooFugj2kdcgt0MWj2wpem4l
         KZOuqeT61yA8Y7FSamCqzvy+/W4zpb/KUfGurfoeejsEje/00f3kB6yJ8SYFePxQ1jFe
         M95Cfs/qlofKA4+nwKxbLRXHM5bgOQL/IaYJyPuwJ90yzvhdqcY9CvbzX9UVahxpm2rt
         2DPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=78Tla0Xgf89aWP0ISiVlw9uFD//ifnzuyRdk92AoyrQ=;
        b=JrCOaAbPyt47nAR4dosvVyWWtdCvBYxvt/bW4ruTHgDuQVReX9l3KvEAzua9cV+VbK
         E88aRe1cmRkScV3eCAwmbrV1WootCmwvSfuD2KzY39jgCGHZHEBd1s5DZkZcf04rIwFz
         4nxiz8LYtlHh5z2zS5XjBbgOZ5IjFH8fs7yDvejrou+hyEsV82IecRIun6t6pb9ezLeP
         fCFxFCE8HEP0fsuRVFeBBiKk6nlv57iO5DCNQQBtpedyIQvFlDw3bzCx328ks4DPRzSH
         VFOtVA9PaU6CXPYZoHIcCpEzHNsE2g8qonpYv9Ql0vsIuXnWO97XDv6+c+2ld2W2n8hw
         k3QQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.194 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=78Tla0Xgf89aWP0ISiVlw9uFD//ifnzuyRdk92AoyrQ=;
        b=fnW4azEkAFIK3+ItG1F0d+9+jZHGk3BH4KwzkpuDtjI2pSUpIYbAxXHjGXqedxnjFX
         i5lNnJoMVUziXT9jFRJZNLw581RAz2mRJX+VYptiE/IsazJJmHXVbrkzIyAJmPK/65Nz
         96Yqa5ymfQZTU82NhQiZ2ExKFYzlgwtlJmN27huVzXu3MnN8eoTEUjFIy4DfdAThcFzh
         Unl+5k8F2tSEgQew8QOIDWBVRrRaTnc2ZtHueKcFw3EwTlaFIznMdQPkCufP6WqomDaQ
         V/ELf7tP4oiKJETXGobFBZ9zD5+8Uo7av1GD0lHhvfJC1OiSj8IHWl7JTE/+2rosI05R
         rd4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=78Tla0Xgf89aWP0ISiVlw9uFD//ifnzuyRdk92AoyrQ=;
        b=IDw90LjEFvJgz0EBGqVxqBogIGTCSpUgKxYzN7+AcgnSyYLjDZwNICU0yXpRXB7i7q
         A3j2Y4X9V/1EXyj4PDxZaaLLXv48E2t4p9nXB69jF2qJ56gFA2OvRSi6dA+EKQuzfq9p
         XLwbPVT6HNHWW5w8upH89J3v8l9Bb0LwVjEupx3jUt2pV7uhAKqGNKRfWTleY2J/zD5X
         i3kRJi/TGyiaSSYnie2Ex3hEVrmExyAIhRldZmDVJg18hfbeTDnUb3lk/syPPVlofUxA
         +FWL/l8ku/kOoF0Zjz/2Pz+DAaXfXyQtAbGlAFjPxSuIUi53SrxkobuPxOsgiy5LC/Fi
         qC7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gdKHZY3GuvalFrSfsWidU2ELJ1Fpi3Jn8dOs4EgcENqObwDQG
	cqejrIqFnYY8ecs+fgquZTQ=
X-Google-Smtp-Source: ABdhPJyVcj4glfLhUqyTHUd29fC5drOf5anA1Yb4Zogo7gBbaHey+I7Wd/zgsKss74cUuQ5ZDKqrHQ==
X-Received: by 2002:a63:db4b:: with SMTP id x11mr14770933pgi.416.1596454361077;
        Mon, 03 Aug 2020 04:32:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7616:: with SMTP id k22ls6685994pll.1.gmail; Mon, 03
 Aug 2020 04:32:40 -0700 (PDT)
X-Received: by 2002:a17:902:7c10:: with SMTP id x16mr14746347pll.122.1596454360590;
        Mon, 03 Aug 2020 04:32:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596454360; cv=none;
        d=google.com; s=arc-20160816;
        b=wTcF4/inAYeg1gpWrBEu9FNJjasTJx1SR+wcd4SYb2U0dJ/C7VkxE9LSPwLufS8l+u
         jcm1low9LPbr6onvRG1FNMa8PvJ4XyJzcIi1GY38o4+YXpQ3QazKUtiirygPPSaVtLS2
         dfXjDShoMdK5l1k4xckrGvjQJO94Yin6ecET5p/SJLjny2j/LpkbfSJErcx2iKFdNzCH
         O+At2emne020kuOiK6INLl8KaXbQIz6hJXIZumvaFjvE3W/gJBvMKk9p8xh9rJFaJHQJ
         4GxWYG6smOHOdsVAZhpBWKVZf1REo0HbE1uDfWO13paBU8yVTKA0+UEwRfXiWu6R6xlC
         OLOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=ODp5lgvPXWeexmhqKkzjrjceKYAAQRDTCREmTlObIIg=;
        b=PRlCRTnQilKRv5SeVTKusBAyHjjp6LMb78bqfB3UBifdYSA9n7KF3gvzKxCvvNJNFu
         Aqr5546ecSR82S/y3+Dbd2q8TplnQ5BzwgQcZ4vuYpIiH48cGloFbJqFdzFYmphTE2dG
         v5iVtQAEZzCvDxPxb7SSzrWtfwvYu1si1oBdvCpSUl6fT6EdxqHwYtzulCswNyk+ls1u
         nx/7uEExrNpCbvdG05QMtzaSNxjOaZLizVRhqG6s/K6kk1bmjOnObY1Cib4tOXuivA9K
         xBKKijF1CxchcjE6OX02Npph1cbaarSHTL888Xap2ICI+MUZrkMTq8BZZ7HBWrQFAVBb
         jEDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.194 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com. [209.85.167.194])
        by gmr-mx.google.com with ESMTPS id ml3si1036846pjb.3.2020.08.03.04.32.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Aug 2020 04:32:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.194 as permitted sender) client-ip=209.85.167.194;
Received: by mail-oi1-f194.google.com with SMTP id l84so20395796oig.10
        for <clang-built-linux@googlegroups.com>; Mon, 03 Aug 2020 04:32:40 -0700 (PDT)
X-Received: by 2002:aca:adc4:: with SMTP id w187mr11723507oie.153.1596454359917;
 Mon, 03 Aug 2020 04:32:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200624035920.835571-1-natechancellor@gmail.com>
 <CAMuHMdU_KfQ-RT_nev5LgN=Vj_P97Fn=nwRoC6ZREFLa3Ysj7w@mail.gmail.com>
 <20200720210252.GO30544@gate.crashing.org> <CAMuHMdUmHE-KVQuo=b2rn9EPgmnqSDi4i16NPbL5rXLLSCoyKg@mail.gmail.com>
 <87zh7cyoi7.fsf@mpe.ellerman.id.au>
In-Reply-To: <87zh7cyoi7.fsf@mpe.ellerman.id.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 3 Aug 2020 13:32:28 +0200
Message-ID: <CAMuHMdXEsTuRkt5-dt08DuxHGLpQ=dZiJsNzff6gydgnzoPTLQ@mail.gmail.com>
Subject: Re: [PATCH] powerpc/boot: Use address-of operator on section symbols
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Segher Boessenkool <segher@kernel.crashing.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Geoff Levand <geoff@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Paul Mackerras <paulus@samba.org>, 
	Joel Stanley <joel@jms.id.au>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.194
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Hi Michael,

On Mon, Aug 3, 2020 at 1:09 PM Michael Ellerman <mpe@ellerman.id.au> wrote:
> Geert Uytterhoeven <geert@linux-m68k.org> writes:
> > On Mon, Jul 20, 2020 at 11:03 PM Segher Boessenkool
> > <segher@kernel.crashing.org> wrote:
> >> On Sat, Jul 18, 2020 at 09:50:50AM +0200, Geert Uytterhoeven wrote:
> >> > On Wed, Jun 24, 2020 at 6:02 AM Nathan Chancellor
> >> > <natechancellor@gmail.com> wrote:
> >> > >         /* If we have an image attached to us, it overrides anything
> >> > >          * supplied by the loader. */
> >> > > -       if (_initrd_end > _initrd_start) {
> >> > > +       if (&_initrd_end > &_initrd_start) {
> >> >
> >> > Are you sure that fix is correct?
> >> >
> >> >     extern char _initrd_start[];
> >> >     extern char _initrd_end[];
> >> >     extern char _esm_blob_start[];
> >> >     extern char _esm_blob_end[];
> >> >
> >> > Of course the result of their comparison is a constant, as the addresses
> >> > are constant.  If clangs warns about it, perhaps that warning should be moved
> >> > to W=1?
> >> >
> >> > But adding "&" is not correct, according to C.
> >>
> >> Why not?
> >>
> >> 6.5.3.2/3
> >> The unary & operator yields the address of its operand.  [...]
> >> Otherwise, the result is a pointer to the object or function designated
> >> by its operand.
> >>
> >> This is the same as using the name of an array without anything else,
> >> yes.  It is a bit clearer if it would not be declared as array, perhaps,
> >> but it is correct just fine like this.
> >
> > Thanks, I stand corrected.
> >
> > Regardless, the comparison is still a comparison between two constant
> > addresses, so my fear is that the compiler will start generating
> > warnings for that in the near or distant future, making this change
> > futile.
>
> They're not constant at compile time though. So I don't think the
> compiler could (sensibly) warn about that? (surely!)

They're constant, but the compiler doesn't know their value.
That doesn't change by (not) using the address-of operator.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdXEsTuRkt5-dt08DuxHGLpQ%3DdZiJsNzff6gydgnzoPTLQ%40mail.gmail.com.
