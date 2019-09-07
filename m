Return-Path: <clang-built-linux+bncBD4LX4523YGBBZHMZPVQKGQEMMJR73A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id B11DEAC39A
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 02:14:29 +0200 (CEST)
Received: by mail-yw1-xc3e.google.com with SMTP id i11sf6178109ywc.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 17:14:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567815268; cv=pass;
        d=google.com; s=arc-20160816;
        b=N1xbfGMliVP89iU5Rbsx/1sYs1iQZDT/sF/oEK3YxDo9r8qWfgITeQCMqByu16+sy+
         lfMPVPXX9GE4MxXwBOgY5XFmhvv1Mzt8OKXBOs7Sdi/Lm7qUbGS6D+GitIKOYHFukLcM
         aY+9/c7ML+JPNrR9+R3VUPYAnGgl5c7rAtdexbxU0BYlzDlDEYm3bxxTRhSTwDVekBsM
         lSZ4i6Dflj17HmZifUR8BXdpVGpI67qbIUdE5TE6lwtnAkHG2Mve9GLAo9KJZez0EYzd
         OGCDXI8BzEIXexR+ui6lUU2JtEwiF5sxRRB4yJw4AHh/SbttDliwn8f+6cdRQwipwZqI
         2fRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=hreQG2KVAAkI7fXhGxUxuDH5S0nVz/PdaM9EZLRqxsg=;
        b=VpfAWjeea0oErnZ8XKQplbKmO3y/+2v1EH5gUxIIOVda4sS4Pnu8iQwbLd6bjbFO5C
         p8stwO1NkhfeuZ9SJED9djsaHBCTlS7qIAoELo5HJVZkE9E6eieVhgrlONYBuMTRAW28
         DFrnBrf/dM4B5MPVEpzAH9aiS7iz9b+nvsY74NmZKJ7dX6VEdm4IJZsR88cdzJ9tWvWB
         z2eN8blvIZ6Ksic1++ZUtB8gon09+lHRtzHrbkbCKrPGA+JN2USjuEtuwQlxaRpiMb2S
         I5dUXSc1zUrtKjt4mzWUQY2PLeLmdGpoCE7uFz+sBXtCq/gfe3fM951EzFdfLeZTotki
         Q1Rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hreQG2KVAAkI7fXhGxUxuDH5S0nVz/PdaM9EZLRqxsg=;
        b=PuzkjdQ+Jihp6CISVQDueMfFB2MOjK00nUoiM2CnDdAkJMxoR9DxEmDb1hAixTbaUn
         7HoO1dFd7L/I34reEgz3x8Jtt1wExCg8Ga1zwC43XMas8IOPlqFDwvkqaypLA+XOpzQM
         dfDDyXZCR8r3M3IG6/HqxHKiC8vOZX25b21kxJP5cQA/t+lojqGPAGkAz/zv2wB8R7CO
         Js6OLpWaBQsVN5FRO0NCy0SLJ2sFmhpNHLW+R48X7YAzA1XYEyEmIaELID+BeGBbhhyp
         /whnMFeuCB9KHpC//lWYZ7QJjPV6gLDpTMrMpQUgofj2E6EFLzbuMCurr+0ua65DXx6S
         g0Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hreQG2KVAAkI7fXhGxUxuDH5S0nVz/PdaM9EZLRqxsg=;
        b=S7PLUpERGVc/WRE/OCYZG4qCDAm1IdeqwDSId+nCQB3jdSJGkbbYa2FXh4+5EI49S9
         WUxTS8bWwqxMojyH+kN5kI2eRNrbPAASGsEyLo1gstPmUDQYb4G/5Y8Jl6JJgsc7vlcx
         sn8LEJrPujvAKLjffTHrpTwvHyddP8Sk99B5hUdX2c0BsPkMPdJOsz462YMlx4jAqNcK
         +v7TljsgV4xj7L4OChmhsfx7A2IUeZTVFftFh/upLwhOJK/MBQB5+Dqj8SeF5BmB9iO2
         hsy5ILIh0Z53fHwK/yA13lywtpUn4xSNwRkX+yHZozNtOL5TgkJhGt1MmP1mPAz9jD4B
         cU/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUqrYMa+xU4i0QW4XaqgoFJSJqoGfXG6Txn7jtdi5WoeKKLtQXO
	50qPYTGOIwuFdwAjv9el3u4=
X-Google-Smtp-Source: APXvYqxWpgPdmYikisIDW9sts274dAzESGKNHSPQ8rC9982mubZtoQclxmO2sC0wGKl5elg8sgDU1g==
X-Received: by 2002:a81:c949:: with SMTP id c9mr7879590ywl.184.1567815268562;
        Fri, 06 Sep 2019 17:14:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:d045:: with SMTP id s66ls1252601ywd.13.gmail; Fri, 06
 Sep 2019 17:14:28 -0700 (PDT)
X-Received: by 2002:a81:608a:: with SMTP id u132mr8768669ywb.474.1567815268235;
        Fri, 06 Sep 2019 17:14:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567815268; cv=none;
        d=google.com; s=arc-20160816;
        b=dEZsgtad34evPjo0J4hcMzxkAlAMXQf3FAjJtJMPmzcRtmlw5n/errXFElJCB2KQN+
         gtpVk5i3znFjb18rLAdbA/Ct6VKei0B06M5ba4oLrSXeVEWH4/SVzqP8igOE9QyvkTdd
         9nKPuZe1EdcSz5Q59oK9517YDq0yzVPN0t/t+7B6Kfg+uiDbVI5x0ABpKIMaFwISNRNW
         no9mFnN+GGFE1xuFk/MsHWMny4olyMz/yAFwZWBoVxflDRN4OFI78GppV13tDmdPIpLK
         oQo70v9zmTMSrrSGOmFmX07WdfFRO7A1Rqup0WWgBOO6Jq9cwFn9qOnA2UGb21nujd+h
         3SPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=wFP94l71eJuA4mAMJn7gj5/oQ5mi6WnpQxFDTL18/PI=;
        b=G8iEh9Sr/ETNKHjlm2NT5CB7Eb4+Lw9ybu0++mmMi0A/emcuL+n9Tc7uZyPoiDIUfH
         m4A+jQ5MEFV/9rYRTSIYiqswurWy5Snkh7v+8/m0ubX4KQ+WZQlDCCuazI6Ec7YyFk1x
         os/BHYwwoRFuAzfPRg544U0qgynjQVgG47d9ZCLIjtW9kIDapcVqExdeTUu7g42ER7Gd
         BTvstwSfgu7MQ6uotJmbWIE6jeiGx/8u4zrkc5d+FVzyp4wDgXjMAGvXX0pA/jzfT3RY
         LeMeX2l8/SOY6V/k4b33KheKhK1V/mH+MMl9BCKG3V7khYqqYu7500HlFRkDwAZUkn9r
         qu5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id a1si183190ywh.3.2019.09.06.17.14.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 06 Sep 2019 17:14:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x870ECjk029556;
	Fri, 6 Sep 2019 19:14:13 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x870EBLS029555;
	Fri, 6 Sep 2019 19:14:11 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 6 Sep 2019 19:14:11 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jakub Jelinek <jakub@redhat.com>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "gcc-patches@gcc.gnu.org" <gcc-patches@gcc.gnu.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2 4/6] compiler-gcc.h: add asm_inline definition
Message-ID: <20190907001411.GG9749@gate.crashing.org>
References: <CANiq72nXXBgwKcs36R+uau2o1YypfSFKAYWV2xmcRZgz8LRQww@mail.gmail.com> <20190906122349.GZ9749@gate.crashing.org> <CANiq72=3Vz-_6ctEzDQgTA44jmfSn_XZTS8wP1GHgm31Xm8ECw@mail.gmail.com> <20190906163028.GC9749@gate.crashing.org> <20190906163918.GJ2120@tucnak> <CAKwvOd=MT_=U250tR+t0jTtj7SxKJjnEZ1FmR3ir_PHjcXFLVw@mail.gmail.com> <20190906220347.GD9749@gate.crashing.org> <CAKwvOdnWBV35SCRHwMwXf+nrFc+D1E7BfRddb20zoyVJSdecCA@mail.gmail.com> <20190906225606.GF9749@gate.crashing.org> <CAKwvOdk-AQVJnD6-=Z0eUQ6KPvDp2eS2zUV=-oL2K2JBCYaOeQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdk-AQVJnD6-=Z0eUQ6KPvDp2eS2zUV=-oL2K2JBCYaOeQ@mail.gmail.com>
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

On Fri, Sep 06, 2019 at 04:42:58PM -0700, Nick Desaulniers via gcc-patches wrote:
> On Fri, Sep 6, 2019 at 3:56 PM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> Oh, I misunderstood.  I see your point.  Define the symbol as a number
> for what level of output flags you support (ie. the __cplusplus
> macro).

That works if history is linear.  I guess with enough effort we can make
that work in most cases (for backports it is a problem, if you want to
support a new feature -- or bugfix! -- you need to support all previous
ones as well...  Distros are going to hate us, too ;-) )

> > > I don't think so.  Can you show me an example codebase that proves me wrong?
> >
> > No, of course not, because we aren't silly enough to implement something
> > like that.
> 
> I still don't think feature detection is worse than version detection
> (until you find your feature broken in a way that forces the use of
> version detection).

*You* bring up version detection.  I don't.  You want some halfway thing,
with some macros that say what version some part of your compiler is.

I say to just detect the feature you want, and if it actually works the
way you want it, etc.

> Just to prove my point about version checks being brittle, it looks
> like Rasmus' version check isn't even right.  GCC supported `asm
> inline` back in the 8.3 release, not 9.1 as in this patch:

Yes, I backported it so that it is available in 7.5, 8.3, and 9.1, so
that more users will have this available sooner.  (7.5 has not been
released yet, but asm inline has been supported in GCC 7 since Jan 2
this year).

> Or was it "broken" until 9.1?  Lord knows, as `asm inline` wasn't in
> any release notes or bug reports I can find:

https://gcc.gnu.org/ml/gcc-patches/2019-02/msg01143.html

It never was accepted, and I dropped the ball.

> Ah, here it is:
> https://github.com/gcc-mirror/gcc/commit/6de46ad5326fc5e6b730a2feb8c62d09c1561f92
> Which looks like the qualifier was added to this page:
> https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html

Sure, it is part of the documentation just fine.  And it works just fine
too, it is a *very* simple feature.  By design.

> I like many of the GNU C extensions, and I want to help support them
> in Clang so that they can be used in more places, but the current
> process (and questions I have when I implement some of them) leaves me
> with the sense that there's probably room for improvement on some of
> these things before they go out the door.
> 
> Segher, next time there's discussion about new C extensions for the
> kernel, can you please include me in the discussions?

You can lurk on gcc-patches@ and/or gcc@?  But I'll try to remember, sure.
Not that I am involved in all such discussions myself, mind.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190907001411.GG9749%40gate.crashing.org.
