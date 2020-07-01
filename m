Return-Path: <clang-built-linux+bncBAABB75Q6L3QKGQEIK37L6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E53E210D15
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 16:06:56 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id 204sf17139876qki.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 07:06:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593612415; cv=pass;
        d=google.com; s=arc-20160816;
        b=H39urctBATJZP7p7jHh5eW003repnzhFf5HI/8utpFf8cptFZ6ftkdM5cP4agnC1Zq
         AwQPUtn+gHENt3cc0ZWSgby3WpwqaYt7auIktTqp68rrTOg1MgsxX25nf+foVf9ILfZm
         TXiGBzfviE4ohcLRPcixnqb8AnJ8cCFKCDRGdLNVZnpo2jCsQS+n67w9GyIqzRCyH+g9
         JP+7k6Z2gCplMxvcF2aGUk6Gof5+DX4DMZmsTCFvC0+hJnvrka7kvJSdnwK6IrSmoqGQ
         vfaMtvNAq5VPPR7dh8mzL4rgl2FgKJJtw/n8qM/TWsNznQse963AeU3supx6CgNDUsEm
         3JyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=vEfpKcFvuwgGWniry1sfyQxgs78B2EIU5Xz8nWxpAX0=;
        b=neyEhkPtyrsxN/lAG4TFTJACm81ADkKuUvnDwRNOzyaFUId/KWIG0x6AC8wmzBkE9D
         fEExcSrsiSSvFp/Mb5mXMAN2+i6aMBg5QuOUtEm1I0EH/l/rVrYp52YkRZuv34Pvi/2K
         /HVLAT40BM1/VEb+Lo9JUUB7gRiEx4ZCxonrELT5rQzb8OxL2fymyf7ZKd9Guu30TbS4
         jOjjl79esAgmCDPa/r4Wnp8v7lOPdmHEUcFSWrzvLns8+PHH8+hHbkQixD+8iOj5SVeL
         8jICHc3rm4vXy42vuUoOJeqh8E2JpVurmwTLW0gWc7AHUVHR59bvPpHdmK4Fth/f3d6m
         G5sA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UxyMcT9U;
       spf=pass (google.com: domain of srs0=ftm2=am=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Ftm2=AM=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vEfpKcFvuwgGWniry1sfyQxgs78B2EIU5Xz8nWxpAX0=;
        b=fh2DRPgLDy2y99jeRVEbC7lnntH7Pk1XSrELHi4/lNspLedgdPF0zPMAhfHjpq3/m9
         zS6Ep684+f2a1PPD+qS21Its0/wO2ZA1OhNQLcI+Y2uZqzzmVSP5ifhLYH+C1aTHso3W
         Gp4wHLF7Kwtv+9qxMeXKOvt+3jKMUmhb8bCDCdr7oyyTzNenlJaFcOBqEBbiY9GMetQC
         lXSN04nGQIWcCAOz0Bz323MdHfWb9ZHXtoOk3AkROCgD02FjJK8LNfq+wD76m+CXwapE
         OWD+kt/Q1v03FaZ+6wtoNrLuN0xGkyI1poqUbSo+VJjRSyOZ4chqDuAoV9jIHqAxFnlX
         ntRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vEfpKcFvuwgGWniry1sfyQxgs78B2EIU5Xz8nWxpAX0=;
        b=NIA005gngNOEu4bO3B2tsKuY1ndx53K70M6xME6Usqd0TJV9Jp9YY9ijWTrzO/3PjM
         yePZ6BI7Emw/pnAEmL2JMSxUpjUEV1A9Klz3mdzbJfOth80jh65GCb6oeatKPmjTBS/b
         /VyZMUuvz/s92OMYslP5CQy93eZbjGCxbceTl/gzRx1lcbHYZyrh+BBQ83lrekmv0sAp
         njkqVIZhEwE6M0z02bsYYKnqdMkRNf0JDKDdUjqkV9SnfEI9ulqe5GcAhJC/7i+WaQeQ
         fPUfFinaoIMmiL0973jSg6dxZGANl4B5DvG6vDcpYx6bKdc0673Ukn4Towo0Pe89He5P
         IPlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Nqd1Hobze2FmDnuVu4DSlX7cjRva52xDKDF5rQqR0LSoVuslq
	51tx/pQSkYpAFsXfmuL3jSU=
X-Google-Smtp-Source: ABdhPJxbULlhT8a6b9/TJm7FIoO/FAmrw0k4zr1BE+T3+T/3DD/4Jk22DzdbiemLio7fAkbmBagNfw==
X-Received: by 2002:ac8:6d33:: with SMTP id r19mr27249876qtu.167.1593612415552;
        Wed, 01 Jul 2020 07:06:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6809:: with SMTP id d9ls1043157qkc.3.gmail; Wed, 01 Jul
 2020 07:06:55 -0700 (PDT)
X-Received: by 2002:a37:a253:: with SMTP id l80mr25495305qke.197.1593612415236;
        Wed, 01 Jul 2020 07:06:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593612415; cv=none;
        d=google.com; s=arc-20160816;
        b=zuKqoY9ySgLiHExQpRS/7wUtZxEMqfJdnT1lcWlwUCHR/Ze/+ViDR/bEU/HgTfQgh9
         +12+I+EyoibwodqmZ9ToZSTYJqfplKpAPPVkn44ph13rqLnLIzD6kaMVUAs0icANoK4R
         PB8Ce6qZ4+C4RlevvOqyhDH2/JCZjM0Ti1OSBna6I69mPIwk9e2rO5K7JidAEObObLg/
         RDGcQTN0WtQekXpkLbJJqQgTEpT6a5jUHz3oZl/3T9Cn7a+txmEb+Eglt/d6pmyEhslt
         MLB9IqVThDB19n12Jbo7tZJPx99XwFJGPdn6T61sg9s9ZqaUgy9y06d7wmpWMbbCiklg
         8SCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=4x69qL1ReO15qt4obENpe9Ng4wK8gJ1u+pyFvdK76v0=;
        b=ZhA76tYEFVOvq28FDSapww56fxRvNBOvUctAJBPyVXroQ1Uom6EQgs8yJnP0WBQrF+
         BAZzpKPki68pZcZmkekwRK3jEv50rpdApkpnG1Mj5bBsZ3LjHraZZK0fl2mdRanKm1m6
         nj8/y8ab3/RFiUcR4mOes9q4wcm6Crg8eZgDcHY3rSAcnu8810612YS2ly3OmeHWFs8z
         VSQh9uwc1sNuR+gzL+l9CKqtwjbRhdzzGdySm7s3nHsHBN7zxNm0SsbTMePYNJ//H92M
         jALeLY0lMguSkiWCCEGecR3UKfSvMFILOppiWgsLm+8dGxLIaK93t9+LM7+KaER0ZAYo
         47HA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UxyMcT9U;
       spf=pass (google.com: domain of srs0=ftm2=am=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Ftm2=AM=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w64si40618qkb.7.2020.07.01.07.06.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Jul 2020 07:06:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=ftm2=am=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net [50.39.105.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3F0972068F;
	Wed,  1 Jul 2020 14:06:54 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 20A75352263F; Wed,  1 Jul 2020 07:06:54 -0700 (PDT)
Date: Wed, 1 Jul 2020 07:06:54 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Marco Elver <elver@google.com>,
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
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200701140654.GL9247@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <20200624211540.GS4817@hirez.programming.kicks-ass.net>
 <CAKwvOdmxz91c-M8egR9GdR1uOjeZv7-qoTP=pQ55nU8TCpkK6g@mail.gmail.com>
 <20200625080313.GY4817@hirez.programming.kicks-ass.net>
 <20200625082433.GC117543@hirez.programming.kicks-ass.net>
 <20200625085745.GD117543@hirez.programming.kicks-ass.net>
 <20200630191931.GA884155@elver.google.com>
 <20200630201243.GD4817@hirez.programming.kicks-ass.net>
 <20200630203016.GI9247@paulmck-ThinkPad-P72>
 <CANpmjNP+7TtE0WPU=nX5zs3T2+4hPkkm08meUm2VDVY3RgsHDw@mail.gmail.com>
 <20200701114027.GO4800@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200701114027.GO4800@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=UxyMcT9U;       spf=pass
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

On Wed, Jul 01, 2020 at 01:40:27PM +0200, Peter Zijlstra wrote:
> On Wed, Jul 01, 2020 at 11:41:17AM +0200, Marco Elver wrote:
> > On Tue, 30 Jun 2020 at 22:30, Paul E. McKenney <paulmck@kernel.org> wrote:
> > > On Tue, Jun 30, 2020 at 10:12:43PM +0200, Peter Zijlstra wrote:
> > > > On Tue, Jun 30, 2020 at 09:19:31PM +0200, Marco Elver wrote:
> 
> > > > > Thoughts?
> > > >
> > > > How hard would it be to creates something that analyzes a build and
> > > > looks for all 'dependent load -> control dependency' transformations
> > > > headed by a volatile (and/or from asm) load and issues a warning for
> > > > them?
> > 
> > I was thinking about this, but in the context of the "auto-promote to
> > acquire" which you didn't like. Issuing a warning should certainly be
> > simpler.
> > 
> > I think there is no one place where we know these transformations
> > happen, but rather, need to analyze the IR before transformations,
> > take note of all the dependent loads headed by volatile+asm, and then
> > run an analysis after optimizations checking the dependencies are
> > still there.
> 
> Urgh, that sounds nasty. The thing is, as I've hinted at in my other
> reply, I would really like a compiler switch to disable this
> optimization entirely -- knowing how relevant the trnaformation is, is
> simply a first step towards that.
> 
> In order to control the tranformation, you have to actually know where
> in the optimization passes it happens.
> 
> Also, if (big if in my book) we find the optimization is actually
> beneficial, we can invert the warning when using the switch and warn
> about lost optimization possibilities and manually re-write the code to
> use control deps.

There are lots of optimization passes and any of them might decide to
destroy dependencies.  :-(

> > > > This would give us an indication of how valuable this transformation is
> > > > for the kernel. I'm hoping/expecting it's vanishingly rare, but what do
> > > > I know.
> > >
> > > This could be quite useful!
> > 
> > We might then even be able to say, "if you get this warning, turn on
> > CONFIG_ACQUIRE_READ_DEPENDENCIES" (or however the option will be
> > named). 
> 
> I was going to suggest: if this happens, employ -fno-wreck-dependencies
> :-)

The current state in the C++ committee is that marking variables
carrying dependencies is the way forward.  This is of course not what
the Linux kernel community does, but it should not be hard to have a
-fall-variables-dependent or some such that causes all variables to be
treated as if they were marked.  Though I was hoping for only pointers.
Are they -sure- that they -absolutely- need to carry dependencies
through integers???

Anyway, the next step is to provide this functionality in one of the
major compilers.  Akshat Garg started this in GCC as a GSoC project
by duplicating "volatile" functionality with a _Dependent_ptr keyword.
Next steps would include removing "volatile" functionality not required
for dependencies.  Here is a random posting, which if I remember correctly
raised some doubts as to whether "volatile" was really carried through
everywhere that it needs to for things like LTO:

https://gcc.gnu.org/legacy-ml/gcc/2019-07/msg00139.html

What happened to this effort?  Akshat graduated and got an unrelated
job, you know, the usual.  ;-)

							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200701140654.GL9247%40paulmck-ThinkPad-P72.
