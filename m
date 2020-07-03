Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBAO67T3QKGQEUAAIGAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D5E213AAA
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 15:13:38 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id y12sf21823053lfh.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Jul 2020 06:13:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593782017; cv=pass;
        d=google.com; s=arc-20160816;
        b=l0wjsAoH6ToRQF3O6LEVaUdIGC8qICLoz0ndll1e3sZRjcwg87l1B2IhvEFTkgwa8J
         u3IM1KRBZcrNgUTGWCBpFYTyhg9FB9EBvZsOvnCM/CUIEGr6tvRoRzQSjdHkm9H5iUN3
         0eRXkpDrQ34x4rgSw1cWSSBSoMvDg/GN1HDgFUa2SXodVDSksyZPqPmxgUdMAgm0Rc8S
         4tz/MwuSU2Xsg4jsvuV3fv94UZw+ZynYFkZZ3LvM8iVxMGKuVduRwgopEd8i1PSSDSBY
         qaK/LHvs6YuUJI8srIav2tgTYKG5JfbIwwKbMFlr+Loo/6XSusIJAjrpbHOkeUlk0qqv
         ibyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FSsGEiUJ7Hz2oHo4od5byv0HAAna3oE7ZXu0U/3Vvck=;
        b=sViGDL9nID4iywrIvK+vhlvhSTWOjQs/pFih1eYSWHY63IW9fgDk6xfo/6hGEZIqVR
         Oo0hfDKyuU/xSObqaazAaY1smZ66MeJKC/GxBaqSn8uFyGtNEBbkWwwZl2wninQ95f34
         eqdNhMgwMzqn2NE5c9VO/gjEQvq+nYK2wxJQrAocmXsaq0UreV9nOuEqGZnV6SAZnDhx
         3/ZrpZrZr2GnnW1vKTsX6WufBxF7fxKc4YbCh9dBCe7yJxItXo2pTcLS4TYO+cxlSW17
         w2Rxt6QuRjTCW13QEVxabzE3qyO4RJ7rSbL+HiMsMFBHBjAoA2jK0C1hSp8cLE/9LjvB
         3LnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ItGZjDRI;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FSsGEiUJ7Hz2oHo4od5byv0HAAna3oE7ZXu0U/3Vvck=;
        b=r55fHTXwRGs9wYUTIZZs38El/DDYQixU4gihb0exBfPoCla63lVDhXQoBHAY5Yz2ZW
         k4TPGLvC4Dlhos9IwzxmJSDPdnLA4MdEyXCuga0Y91uz84iuyHCU5Q5bbY8f1EPqHlqW
         USpSzM27sY8iY4UOxgMdclfzB3LekPHu15g5GoPjewFfdgrPVLQ9P5+/PtuSFI+TK0iB
         OEvTbtfqcVzOM7p/IUEmcBESLOYQhEQYw085n8785FPoGJsJpbotrCb35/WycOfNUThz
         YKkPi9kAYgJVZU5F2U12XdvEXIoMtMYdYZ7FB4EhXClclBGKTrDo2bmYjkYdGEKfG/5C
         tiAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FSsGEiUJ7Hz2oHo4od5byv0HAAna3oE7ZXu0U/3Vvck=;
        b=Z/c/krLE3R5wL/pcgyye2uTnaQrqEInMoI3wEKYPUGHsEQDO5ywG80fcKdmOsT+nKJ
         JBFivBj1cT/BiKaXHUqmDXV5NpwhO4PUy1QP90VESOYU1mia78iFA9ekTIqgxfNJAs0R
         MvXLcuh+HnMu3KlN6dcWvRoO72w/KDW0Pdu0GT+yhZMSQ0Fvn+uOUVzBo1Yw9RIWts4L
         xzH0gzTYFKnqz/xh/u54JqJiDgvEGROUxoRc4PBTIlggqOxJfdPxcce30GaO4kGfNA96
         m8wS7umTiXpbkVXHKbQeFCCh8RmS9RKcRM/3BCFXtwXCwQp6lHwz9fXgVfEaK6xpksFk
         odUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gA50tShCn7mt1SMMUX3HGMe3hWbxfA9IIEKZhEDAYQaij6oKh
	aVAfIz5Nf+u+6EuaIY7R/uc=
X-Google-Smtp-Source: ABdhPJxACEWn3tzedD4sNP18a1HFlo3poaO90twQiBaVQlQAJ2XX4bpPfj+/kExzdDMjSUsugGEFZw==
X-Received: by 2002:a05:6512:20f:: with SMTP id a15mr21721720lfo.118.1593782017243;
        Fri, 03 Jul 2020 06:13:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4ec1:: with SMTP id p1ls6711lfr.1.gmail; Fri, 03 Jul
 2020 06:13:36 -0700 (PDT)
X-Received: by 2002:a19:50b:: with SMTP id 11mr7468319lff.154.1593782016457;
        Fri, 03 Jul 2020 06:13:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593782016; cv=none;
        d=google.com; s=arc-20160816;
        b=NPuI9eZITh6X76ubo5LJt4RW/ar1HtmMbrecyFVVVTxNCXVgZi8xJPHRcwi34ppQTE
         nVmt8+F3klIZbcGwixGJhj0FuOk7lEKvl9WJmIbkK8lGQI54Qz51T8Wl37v0HfVNS9Ed
         veFogoLXdTqpwuxavGytDnFdGZO+ZTy5FhKmCoM3bwf0RA+eTGshhTcadtKLh7kJTQwk
         J4tUIM4Pk3A9F/yUBuFClhUa0X1zEB3GCEfY47GyFoW63LvPb3ZT4wQgPyPPKexTAxtf
         qPrHp/NYKxbBDzZT/KxnSYKkVWS+5xXgg8yzIOCNBY5lCrgI5u5o0DrVP1JqTw1U8Sgp
         Z5vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=uqsQimSA3ZVIJmzJ+g3hxvE+rQFiKwkEojhvCeRdahw=;
        b=iYUWTkZB1s5dNjVhfqg6JKFKuuB4CtIibBx6n19/UcZvKYaLfDIMeSdv7Bi15UVbGi
         WqU/jcJkfbuIs5y4pMo4QgMqmvEg7ZPWYPi68pNW7tMKwPY9drWt6FggxP4tZz/GazIj
         DDWGtwEYgsm4zDy4LNiI/W2EL9kBYSJ8b6qK+QbT0ciXQGlUyBEqhT5LhX/bPe6oGw8q
         /V9b3whhA4HbW5/jO/iaEgaPPtMLBoqXgngLfzuL21N98Vg5fK9OohjHxYF02xhJ5BIq
         tPJf/wne9Pqm7mMSPYQjJkIZKTwwuVoti3hRRvNvUz/10daZRN3/JVawOblWQqgQXjx+
         /7WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ItGZjDRI;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id p10si766549ljj.7.2020.07.03.06.13.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 06:13:36 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jrLVT-0003j1-Sa; Fri, 03 Jul 2020 13:13:32 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 71D12301124;
	Fri,  3 Jul 2020 15:13:30 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 30A0521476E91; Fri,  3 Jul 2020 15:13:30 +0200 (CEST)
Date: Fri, 3 Jul 2020 15:13:30 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: "Paul E. McKenney" <paulmck@kernel.org>
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
Message-ID: <20200703131330.GX4800@hirez.programming.kicks-ass.net>
References: <20200630191931.GA884155@elver.google.com>
 <20200630201243.GD4817@hirez.programming.kicks-ass.net>
 <20200630203016.GI9247@paulmck-ThinkPad-P72>
 <CANpmjNP+7TtE0WPU=nX5zs3T2+4hPkkm08meUm2VDVY3RgsHDw@mail.gmail.com>
 <20200701114027.GO4800@hirez.programming.kicks-ass.net>
 <20200701140654.GL9247@paulmck-ThinkPad-P72>
 <20200701150512.GH4817@hirez.programming.kicks-ass.net>
 <20200701160338.GN9247@paulmck-ThinkPad-P72>
 <20200702082040.GB4781@hirez.programming.kicks-ass.net>
 <20200702175948.GV9247@paulmck-ThinkPad-P72>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200702175948.GV9247@paulmck-ThinkPad-P72>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=ItGZjDRI;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Thu, Jul 02, 2020 at 10:59:48AM -0700, Paul E. McKenney wrote:
> On Thu, Jul 02, 2020 at 10:20:40AM +0200, Peter Zijlstra wrote:
> > On Wed, Jul 01, 2020 at 09:03:38AM -0700, Paul E. McKenney wrote:
> > 
> > > But it looks like we are going to have to tell the compiler.
> > 
> > What does the current proposal look like? I can certainly annotate the
> > seqcount latch users, but who knows what other code is out there....
> 
> For pointers, yes, within the Linux kernel it is hopeless, thus the
> thought of a -fall-dependent-ptr or some such that makes the compiler
> pretend that each and every pointer is marked with the _Dependent_ptr
> qualifier.
> 
> New non-Linux-kernel code might want to use his qualifier explicitly,
> perhaps something like the following:
> 
> 	_Dependent_ptr struct foo *p;  // Or maybe after the "*"?

After, as you've written it, it's a pointer to a '_Dependent struct
foo'.

> 
> 	rcu_read_lock();
> 	p = rcu_dereference(gp);
> 	// And so on...
> 
> If a function is to take a dependent pointer as a function argument,
> then the corresponding parameter need the _Dependent_ptr marking.
> Ditto for return values.
> 
> The proposal did not cover integers due to concerns about the number of
> optimization passes that would need to be reviewed to make that work.
> Nevertheless, using a marked integer would be safer than using an unmarked
> one, and if the review can be carried out, why not?  Maybe something
> like this:
> 
> 	_Dependent_ptr int idx;
> 
> 	rcu_read_lock();
> 	idx = READ_ONCE(gidx);
> 	d = rcuarray[idx];
> 	rcu_read_unlock();
> 	do_something_with(d);
> 
> So use of this qualifier is quite reasonable.

The above usage might warrant a rename of the qualifier though, since
clearly there isn't anything ptr around.

> The prototype for GCC is here: https://github.com/AKG001/gcc/

Thanks! Those test cases are somewhat over qualified though:

       static volatile _Atomic (TYPE) * _Dependent_ptr a;     		\

Also, if C goes and specifies load dependencies, in any form, is then
not the corrolary that they need to specify control dependencies? How
else can they exclude the transformation.

And of course, once we're there, can we get explicit support for control
dependencies too? :-) :-)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200703131330.GX4800%40hirez.programming.kicks-ass.net.
