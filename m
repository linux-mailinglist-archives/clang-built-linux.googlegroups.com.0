Return-Path: <clang-built-linux+bncBAABBAXJ6L3QKGQEGOW7RLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A8F21102E
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 18:06:27 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id em19sf10643531qvb.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 09:06:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593619586; cv=pass;
        d=google.com; s=arc-20160816;
        b=QeCUPR9Lh0qOmn3hkIgSnVOVUvN6qUP2mVxy9guz9CqEJ5S6Y7u0lnhIn2iqZm0VwI
         53GNa5ENWvHayJpkxfaI8/SgUUmPAs2uvSkKlEFRqIMFsFzr6DU8l4ZKA9lEwzzFIlvk
         eAJSVxN9jN4/ppRwjdOxzYeUsdM+fiLtw2SAb7SKgQdRs8f/YaQgVOSwRdTuT03kPtqo
         xMemuwwnW2cW4XAMmv4UV0CAAtAOBBOfpV4wXYPXu2vEwzANVTFwhDt6B9qwN5YHcC6F
         dgtuPxnVvToMAlfjTtsvg0j+Xf+pQpmJdnXcIY2YRGcL4hcjwWBsnuq/wyC605UrwBc7
         HE5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=5ChwvFkB+aI/kfZLbYPn4uYlMUqF8KAwZvTrp9fUVzM=;
        b=o7nrLUqUdA9k/i/eFKTJa5aqYwXeAkMdK4xjZz/aqaZbDnkkXAA4jZkoAMvC8GZzSl
         70F78sSfufIc0OklNjFvk1xsN/zeKbx4/SajooCMscKmSdelD/67C16KxhAcePgzOP4d
         IB3+FpkJib7K8NbKjV+lv5ymfSSHTSTGzji8Z56RP8b/HF8/xpkQtayrfuEBLBZR2EU9
         I8NcXKBelojdWXdOn9l+QnmA5HnsNwhaMekjx1iHES1rM/KRyUPGocrgciFhvh8ciMBZ
         hs7lBkBoIQCPvX/bywgw5t8eSBxu1aiFwQ3Mq95wwUubf12ls/qZ83/KBvJMFxzfw8jP
         PJbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=z87UF224;
       spf=pass (google.com: domain of srs0=ftm2=am=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Ftm2=AM=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5ChwvFkB+aI/kfZLbYPn4uYlMUqF8KAwZvTrp9fUVzM=;
        b=q3eCWnO/Rh9W9FkN3xvQcgi5Veqpm3j7Vgb4s7zDo541A45y6A8CIN+Yn07VNYpavL
         UupyUNjz0v7n6Xc2f1W4VNI3elxPwIW0JNafhgiDgGAgNA5duQtuFhSV5Xtk5zkZJ7qM
         Pz62Yc3Jr1oRCTPwi0B+S2YSJpsW9cxysU1IQuG+8JqLgq+WdOcEA1QjvCUHZlVV0lGS
         BjbJDmGPt7FOXD1ULwXKj5NaDp6oh89Zasks1v4LMw/c1wggKx2HAyfPJ32WCDo0FLM+
         4GDBnXDl5rG9hY/YOkVzKYaPlcfqIZhnfM4oqpEgyxDhDYhJTaN10DjT1pMer1flWa60
         UQ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5ChwvFkB+aI/kfZLbYPn4uYlMUqF8KAwZvTrp9fUVzM=;
        b=pVVB6+ya3CymTaIf3GtIgs+wRgVXoJGaCJw96CexGaWCw+TGerESV+tZXIK/oNwQX0
         I0XX6pzo7dISdzUsdsfh5SXPjbbMUbHtn++/UK2330WoRZJ/UOhGnlsPNPWMY0UGA7aT
         rUeckI6j7q5tDhhSvjnJOUKo0dGEGZSa08BhsaZkpbwvysxEiux8lN2lujUmUio+xwwe
         KUb94Qe85tLXn/7ZkFBvOZo+qYh50tPs8GzezbsZP7DoHRn8eNNP7mrIfufMEkNHbog0
         stTdgqGku/vxFBLPj+IorsceUc6mEjLc2nfRAUqzOUUsi75GMGBCLCe4mz83YFUJbRze
         Yxuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bon9o7sAgxq5WJ0Y8I6534cfp604YX6Gb5CI3TUn5PrWBcV+Q
	rfKcZdR7WkpwU1Ci7XX3Lto=
X-Google-Smtp-Source: ABdhPJzJDEaDEHCtERNm6697H6cvV34EXX5taIla1zAOa8H9k9yuS0JI0r4OeY5PSt/m37BQklA8hQ==
X-Received: by 2002:ac8:3f5a:: with SMTP id w26mr16498866qtk.260.1593619586452;
        Wed, 01 Jul 2020 09:06:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:36a2:: with SMTP id a31ls399727qtc.5.gmail; Wed, 01 Jul
 2020 09:06:26 -0700 (PDT)
X-Received: by 2002:ac8:322b:: with SMTP id x40mr6719835qta.55.1593619585987;
        Wed, 01 Jul 2020 09:06:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593619585; cv=none;
        d=google.com; s=arc-20160816;
        b=Mbj5oytCsBlVDtQC0+4WCpP2/j/mUncN4pC0Jnre8BIFNElTA6B1WBI7iqMW5Ma2xK
         4Tpk1AQCC2Hv8uGzUNpmnVkZ0OKfDZR3jBYWZN9kfpMax5jysX5pMuZ6z3BCGCv3wIHe
         GaQ6bNOXL3oNrqgHTlg2oQ38XwBrvJtYKbWznNAy/unS59qUN73n3LirICjngpO747kM
         iVkJSI8O5njAZGm21XGjQoPzq0LDOvERYRjZXOp3S6aDlled7vkswo+ZBxOQF+otqqbF
         eg9GTROSPl6z47fO7HSz3x6LsX7HknGc1MwEOWDuR6DZwFqYwzZPJ8uf4IqdDmzM4HCN
         7xtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=GRLPgqBhGj5DqcEgxI7ttfcKyQQiYJGS2vLq47JEZvU=;
        b=OcanqyjE2N5GHrhwd+HzgWEDjAta1x6VZTpzzr6SWC5TrtuF1tfsjdDw7lYfG3Ab4p
         J68rFfEqZFgl2603cL4qk5kZBCf98t0ppQjxuvGY6RhAGzcnb6WJyMRyHj/1GlxqAqCd
         5ZobKFE3SFGMhY0H+bUK053rptBz7kIAKTFAPsGepftFgH3ElErs6Lhni/cQcg6loDtV
         2BX2BoUZAY5IJ6BwmcWjo33MYfQNMk1AQAVaL6sxienBWJiQ3GN2ISgMYUjOz6Pe3kCC
         MF1CBw7cZJKtTtJOLCsNCP9baFasj2hwJHhI5P9xNv1+lY/KnOKJzVO5kfqe1qTB/APX
         FDZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=z87UF224;
       spf=pass (google.com: domain of srs0=ftm2=am=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Ftm2=AM=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q22si313874qtp.0.2020.07.01.09.06.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Jul 2020 09:06:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=ftm2=am=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net [50.39.105.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E3CCF20760;
	Wed,  1 Jul 2020 16:06:24 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id D2D5F3523108; Wed,  1 Jul 2020 09:06:24 -0700 (PDT)
Date: Wed, 1 Jul 2020 09:06:24 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: David Laight <David.Laight@ACULAB.COM>
Cc: 'Peter Zijlstra' <peterz@infradead.org>, Marco Elver <elver@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200701160624.GO9247@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <20200624211540.GS4817@hirez.programming.kicks-ass.net>
 <CAKwvOdmxz91c-M8egR9GdR1uOjeZv7-qoTP=pQ55nU8TCpkK6g@mail.gmail.com>
 <20200625080313.GY4817@hirez.programming.kicks-ass.net>
 <20200625082433.GC117543@hirez.programming.kicks-ass.net>
 <20200625085745.GD117543@hirez.programming.kicks-ass.net>
 <20200630191931.GA884155@elver.google.com>
 <20200630201243.GD4817@hirez.programming.kicks-ass.net>
 <20200630203016.GI9247@paulmck-ThinkPad-P72>
 <20200701091054.GW4781@hirez.programming.kicks-ass.net>
 <4427b0f825324da4b1640e32265b04bd@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <4427b0f825324da4b1640e32265b04bd@AcuMS.aculab.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=z87UF224;       spf=pass
 (google.com: domain of srs0=ftm2=am=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Ftm2=AM=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Jul 01, 2020 at 02:20:13PM +0000, David Laight wrote:
> From: Peter Zijlstra
> > Sent: 01 July 2020 10:11
> > On Tue, Jun 30, 2020 at 01:30:16PM -0700, Paul E. McKenney wrote:
> > > On Tue, Jun 30, 2020 at 10:12:43PM +0200, Peter Zijlstra wrote:
> > 
> > > > I'm not convinced C11 memory_order_consume would actually work for us,
> > > > even if it would work. That is, given:
> > > >
> > > >   https://lore.kernel.org/lkml/20150520005510.GA23559@linux.vnet.ibm.com/
> > > >
> > > > only pointers can have consume, but like I pointed out, we have code
> > > > that relies on dependent loads from integers.
> > >
> > > I agree that C11 memory_order_consume is not normally what we want,
> > > given that it is universally promoted to memory_order_acquire.
> > >
> > > However, dependent loads from integers are, if anything, more difficult
> > > to defend from the compiler than are control dependencies.  This applies
> > > doubly to integers that are used to index two-element arrays, in which
> > > case you are just asking the compiler to destroy your dependent loads
> > > by converting them into control dependencies.
> > 
> > Yes, I'm aware. However, as you might know, I'm firmly in the 'C is a
> > glorified assembler' camp (as I expect most actual OS people are, out of
> > necessity if nothing else) and if I wanted a control dependency I
> > would've bloody well written one.
> 
> I write in C because doing register tracking is hard :-)
> I've got an hdlc implementation in C that is carefully adjusted
> so that the worst case path is bounded.
> I probably know every one of the 1000 instructions in it.
> 
> Would an asm statement that uses the same 'register' for input and
> output but doesn't actually do anything help?
> It won't generate any code, but the compiler ought to assume that
> it might change the value - so can't do optimisations that track
> the value across the call.

It might replace the volatile load, but there are optimizations that
apply to the downstream code as well.

Or are you suggesting periodically pushing the dependent variable
through this asm?  That might work, but it would be easier and
more maintainable to just mark the variable.

> > I think an optimizing compiler is awesome, but only in so far as that
> > optimization is actually helpful -- and yes, I just stepped into a giant
> > twilight zone there. That is, any optimization that has _any_
> > controversy should be controllable (like -fno-strict-overflow
> > -fno-strict-aliasing) and I'd very much like the same here.
> 
> I'm fed up of gcc generating the code that uses SIMD instructions
> for the 'tail' loop at the end of a function that is already doing
> SIMD operations for the main part of the loop.
> And compilers that convert a byte copy loop to 'rep movsb'.
> If I'm copying 3 or 4 bytes I don't want a 40 clock overhead.

Agreed, compilers can often be all too "helpful".  :-(

							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200701160624.GO9247%40paulmck-ThinkPad-P72.
