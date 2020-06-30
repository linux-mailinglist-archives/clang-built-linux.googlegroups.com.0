Return-Path: <clang-built-linux+bncBAABBQGI533QKGQE5TI47WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C25620FDE9
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 22:44:50 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id b37sf4916008uae.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 13:44:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593549889; cv=pass;
        d=google.com; s=arc-20160816;
        b=QIz+3HQCEusVJDFaBKXdIX5AthQw/Bgz/7xb1nF+G0jwiTFmD6B/9YdXJKaevPknc7
         ZR2D7t/BOr0ROCktaM/SBaj4rISSlwhSEABAOhUQTs1zjRbM2wSclCqSM0N0i8yNw9QN
         TSbUtlzpAAdPm1E33k0sUy0IAjqUk0k28cYV93/uoKytfqKntxtiUKGYdawusUaWO/1Z
         yvvilsOxuJVkmsE281I5VlFuvP7NipbI0vpP9WHQHq06ojdTXkNzoUQf1p83RD5SZbU6
         PwIfepD0LWRv8Sq1OyLtBz/IUOQgO+xJ4jHma8FKmjGpZ/MmqGCUD+Iled1fnusK3G+l
         stuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=jaQMLKfd9PTdZdDURGdRCwvVxVxHSG1fFERGUUo8FPc=;
        b=08f/68qjbhpKK946aqDWH1YnIm/Lqy6YxvrCzRd3U1uVXgRVKKXbJRQxrw2EYBBAIv
         HXTf2Emo7VCzrvd23O7FtzZMiW0ddv//AtjrQdRBzGmY6GzVw0aIyR3tvSrEqJxLaP6y
         E/SZ2tFGg5aTn9jhl/3wUoiP0CP1f1s4d+NGJT/SbSSkIBEA1VOaL2dKtX9+FR+8HxK3
         3uvBId0jbfHIiFiHLAlZIQNZunbTGAtvh/oHQnpT7GIneblIXjHWJ6KSi0pdz1UXBCdJ
         ZqHNJ1Rm7b2D8o5XmvX7vG9F90BW2PlERCYLktJSkoaRjHDJLgBv2SYNZFIfJ06k1Zhp
         +xdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DZWNcctV;
       spf=pass (google.com: domain of srs0=gtay=al=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=gtay=AL=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jaQMLKfd9PTdZdDURGdRCwvVxVxHSG1fFERGUUo8FPc=;
        b=pRsyBe54y/GDpZyt0+KRk2f95HsRCTkw/XBLn3hzrNjaHtslzeAXxZY8iCFHJV7sqU
         uH+PDDsi1ZD6wHVcms3KRxart1cvhuDiBunzLb86TvvpnTE3vUcI9ofDh8YeYLvRgdIv
         gg4cH4tPe53jszTI5DzQNnxlxwAjJkhB+x+0/duEcKqXDGdrx2g47O4yAa6lciQX61Ds
         zG3dmEk1s5qTeEVTJYNAeZ6hB7/FizyTbpGjC6/enBeR3Ym773KUoasfE18wXLhDDxpg
         wQpJiKGzuyCkM4aKKc+zHtoG+GXPeNk+62EWssq0IkB8E7039GGgIq5Xo84QTZK5stUY
         Ofyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jaQMLKfd9PTdZdDURGdRCwvVxVxHSG1fFERGUUo8FPc=;
        b=ddwik9ZMbXjk6MZqiCa71ez5d539rtw/Iw+3wxUEimHXU173QLZHRKIIXPpfAro8R2
         EYexIWjSeZw46acZM/vKQxpn0XFWNtfGLtuxM6nq9hQxdxwSijpNOJjJgi85/KHZ6Hzy
         p6+BhBLa2zFsc9WNZO/22mSwMwhp0USoao62uGrDepFHpygWyj280os1GQWEgtTmODtn
         xbyQCWVTCT9Zeuvp0pq1DrS8YdopcPVEH7jntnBg9NcCAz8ejnkR4uLbh6MFXZ01PduJ
         0XaouVUSLk7JG81No68KxxlxpFMV94bF96GWKmD2g5XrjAOjW4r0X7qQYT4jO2LkXDmx
         Bakg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532iEpjiwP1fta4gh9GdEGcfE3jA7lGOazPvZsikA72+jQXCmF1a
	s3+QvZ9BF/WHfi17pCG5aWg=
X-Google-Smtp-Source: ABdhPJw7nW+1i52cKq2dMV+Cg+wdNm0/zB4Xt5UaM0CxWxAz0k3OqAltER2oVdjNu0s7p/J40D8SoA==
X-Received: by 2002:a9f:35e4:: with SMTP id u33mr16478097uad.115.1593549888788;
        Tue, 30 Jun 2020 13:44:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a04a:: with SMTP id j71ls11692vke.3.gmail; Tue, 30 Jun
 2020 13:44:48 -0700 (PDT)
X-Received: by 2002:a62:ee17:: with SMTP id e23mr20438414pfi.291.1593549016602;
        Tue, 30 Jun 2020 13:30:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593549016; cv=none;
        d=google.com; s=arc-20160816;
        b=ZdUttWtGrvoQNtyI89gvnHTkOve9wQoUHpeZ7hF85u47OnAk+p22q8K2ajJz7HhkM5
         f8vDsL97bbc5ujIrFj/P3EQum+GDDBgyFIQuMY650taKVnfpIIHHeIHMYZ5ZjUzUl14Z
         Q70jk/f8/hDkt+Tww3S4yZmndfG/0uCB5MFoXP8A6+SRfS0gV8zbk3lrhInZlSYVraVo
         fMoXNEUnqbwpsI/qPSbr9Mor/M0L0o2YuMACgFK08izuO31EhL42OvM65j6b03+hGQpP
         1Ea7Xeie4ZMM2NdjA1OCzezpgN7bl2p1auwJweuXbPQhHLTlBvmWBRDQbG9lQPwNEsSG
         Lc/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=GwbPJhwjEmwQaRlDqxUD6cazWBukR6PojL/uHNUr1tM=;
        b=exbi5+qeoYVDPJN780Pb9EU8chufw4Egx+d/1UZrqdX6dUeUaefQ/PmfIxWjBYDS9G
         X+wyujns7JUgsjFbK2eidL8GybgarxWJdprOzuwxNF45nUVHLYhOG27Lc14MDVfqqjvw
         Pj1QnQrMS0he84nlEREA+YumGZ6V3uS3Csh9PlnxswHwTtEngKyCKvocvXgN8mupR7Vk
         Ni9/Aloc2+jDK/ZzykHXKLNOQ4OPdrck67CrctijRRQ3weBPAsFFZ3kjMhD+b3S2Pc0U
         aKIzAv1ZrChYuYotBipQScqYuBtTQ7760g6TybwjoAxLIN4bAAgHUi1YVcT2rwVc/Hxy
         s/yA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DZWNcctV;
       spf=pass (google.com: domain of srs0=gtay=al=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=gtay=AL=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id mz9si291097pjb.3.2020.06.30.13.30.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 13:30:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=gtay=al=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net [50.39.105.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 45D9D20768;
	Tue, 30 Jun 2020 20:30:16 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 31AE13522640; Tue, 30 Jun 2020 13:30:16 -0700 (PDT)
Date: Tue, 30 Jun 2020 13:30:16 -0700
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
Message-ID: <20200630203016.GI9247@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624211540.GS4817@hirez.programming.kicks-ass.net>
 <CAKwvOdmxz91c-M8egR9GdR1uOjeZv7-qoTP=pQ55nU8TCpkK6g@mail.gmail.com>
 <20200625080313.GY4817@hirez.programming.kicks-ass.net>
 <20200625082433.GC117543@hirez.programming.kicks-ass.net>
 <20200625085745.GD117543@hirez.programming.kicks-ass.net>
 <20200630191931.GA884155@elver.google.com>
 <20200630201243.GD4817@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200630201243.GD4817@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=DZWNcctV;       spf=pass
 (google.com: domain of srs0=gtay=al=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=gtay=AL=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
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

On Tue, Jun 30, 2020 at 10:12:43PM +0200, Peter Zijlstra wrote:
> On Tue, Jun 30, 2020 at 09:19:31PM +0200, Marco Elver wrote:
> > I was asked for input on this, and after a few days digging through some
> > history, thought I'd comment. Hope you don't mind.
> 
> Not at all, being the one that asked :-)
> 
> > First of all, I agree with the concerns, but not because of LTO.
> > 
> > To set the stage better, and summarize the fundamental problem again:
> > we're in the unfortunate situation that no compiler today has a way to
> > _efficiently_ deal with C11's memory_order_consume
> > [https://lwn.net/Articles/588300/]. If we did, we could just use that
> > and be done with it. But, sadly, that doesn't seem possible right now --
> > compilers just say consume==acquire.
> 
> I'm not convinced C11 memory_order_consume would actually work for us,
> even if it would work. That is, given:
> 
>   https://lore.kernel.org/lkml/20150520005510.GA23559@linux.vnet.ibm.com/
> 
> only pointers can have consume, but like I pointed out, we have code
> that relies on dependent loads from integers.

I agree that C11 memory_order_consume is not normally what we want,
given that it is universally promoted to memory_order_acquire.

However, dependent loads from integers are, if anything, more difficult
to defend from the compiler than are control dependencies.  This applies
doubly to integers that are used to index two-element arrays, in which
case you are just asking the compiler to destroy your dependent loads
by converting them into control dependencies.

> > Will suggests doing the same in the
> > kernel: https://lkml.kernel.org/r/20200630173734.14057-19-will@kernel.org
> 
> PowerPC would need a similar thing, it too will not preserve causality
> for control dependecies.
> 
> > What we're most worried about right now is the existence of compiler
> > transformations that could break data dependencies by e.g. turning them
> > into control dependencies.
> 
> Correct.
> 
> > If this is a real worry, I don't think LTO is the magical feature that
> > will uncover those optimizations. If these compiler transformations are
> > real, they also exist in a normal build! 
> 
> Agreed, _however_ with the caveat that LTO could make them more common.
> 
> After all, with whole program analysis, the compiler might be able to
> more easily determine that our pointer @ptr is only ever assigned the
> values of &A, &B or &C, while without that visibility it would not be
> able to determine this.
> 
> Once it knows @ptr has a limited number of determined values, the
> conversion into control dependencies becomes much more likely.

Which would of course break dependent loads.

> > And if we are worried about them, we need to stop relying on dependent
> > load ordering across the board; or switch to -O0 for everything.
> > Clearly, we don't want either.
> 
> Agreed.
> 
> > Why do we think LTO is special?
> 
> As argued above, whole-program analysis would make it more likely. But I
> agree the fundamental problem exists independent from LTO.
> 
> > But as far as we can tell, there is no evidence of the dreaded "data
> > dependency to control dependency" conversion with LTO that isn't there
> > in non-LTO builds, if it's even there at all. Has the data to control
> > dependency conversion been encountered in the wild? If not, is the
> > resulting reaction an overreaction? If so, we need to be careful blaming
> > LTO for something that it isn't even guilty of.
> 
> It is mostly paranoia; in a large part driven by the fact that even if
> such a conversion were to be done, it could go a very long time without
> actually causing problems, and longer still for such problems to be
> traced back to such an 'optimization'.
> 
> That is, the collective hurt from debugging too many ordering issues.
> 
> > So, we are probably better off untangling LTO from the story:
> > 
> > 1. LTO or no LTO does not matter. The LTO series should not get tangled
> >    up with memory model issues.
> > 
> > 2. The memory model question and problems need to be answered and
> >    addressed separately.
> > 
> > Thoughts?
> 
> How hard would it be to creates something that analyzes a build and
> looks for all 'dependent load -> control dependency' transformations
> headed by a volatile (and/or from asm) load and issues a warning for
> them?
> 
> This would give us an indication of how valuable this transformation is
> for the kernel. I'm hoping/expecting it's vanishingly rare, but what do
> I know.
> 

This could be quite useful!

							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200630203016.GI9247%40paulmck-ThinkPad-P72.
