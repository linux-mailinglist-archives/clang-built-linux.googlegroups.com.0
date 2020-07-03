Return-Path: <clang-built-linux+bncBAABBVUH7X3QKGQEXUORE5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FFB213BF7
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 16:42:31 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id i203sf4045290yba.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Jul 2020 07:42:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593787350; cv=pass;
        d=google.com; s=arc-20160816;
        b=HXoO7mIzUdBrtzSmmOfyc0N0LZRasueX+ASnV7q2Vifflgoe1Nd7zLmt5+xQ7ysiap
         ZCrro22M58iA2yCcya+ARnGBfDxT/U94lhNcf+LSV1vLiHdIwu0VqTrHOixEr9sTEmpR
         l7+VGLnF7wg/5xJCOA7ajv8Ji0JEGb5AedjjWvtgWNHnPe+wIiJQSOMNP1AaaGECQk0f
         tymhfGRq0yMi9ktnebYPu4nd9m81LkdNW/xhHpGSByOym79Bd6lxGBuzR7eW9Rl79g11
         OTHVEbctSRYFLTB3pyCUlxRZI8p/qsALD/owD47wEAqYOmv6B1f8MbHmeScg/rSWyTw3
         vB3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=DuIQ+lEEP0sp36pDB4ShPpgAhRMDpUJSzUsB6A5e8Vs=;
        b=W7hBvTNWounWUIVXvUE3zllI5FSyTNzr7xKHDsUbYoJYYR+ghFbO3PrwG2rhQnAZQM
         vGFV6LcdBtaWYLRkv4F+1O+wuZmh4FVkkTBzEzlXOlDeIJ6HCK4VXhUWLlSM8HtNnHpt
         V3WInz0tuLw0h/XBILPyYvUvKHCqvqMTfEwMdKLDYVeJjMP8dzQdEYAAAkupoG+iPif3
         q3qN0EZmwMdblz4VsfIcm3yhEllbWN1ATBg+yDLRRx0BbSB4C3F5dGmoJKOzLuGlOzTj
         GvpBjX/jDmL49N7CgcacaHl6p/sMr7c5sW+uLC0rhR5A3sFPrJsdf1i64BlFJEUq03xu
         QdZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=H8guQjP2;
       spf=pass (google.com: domain of srs0=s+ul=ao=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=s+uL=AO=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DuIQ+lEEP0sp36pDB4ShPpgAhRMDpUJSzUsB6A5e8Vs=;
        b=oeucDjJWl4ENFLbT5l/VBVDOpEtNVQYvfiHyoK7NZCJ8RbWPpRWFghLrppolB477t6
         4Qw9hlsDL4ZMvSLtdMmwldsO6l+76kRyPkrBNU1tXRpB/LF0pG98fhDHjQL7axk3wlnS
         WgjbxNRgXvtFau1NMrExM/ehrAB9k8S5jb0gmWr4GTLqtEwn1/cscJ0wyiOvpMYjHXNs
         HUXozZFk+3q5yxBU6csh3k1uZONUdNZa/j8Xysug36ZzQZxguD6EmEhsvLnBNfotw4Z0
         E2YSRMDIr86sQwk53psipFuT6UmOXOXHzUsem5DqRzNXM5OeGXN9lSZalks5bCwDdIvL
         Vi0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DuIQ+lEEP0sp36pDB4ShPpgAhRMDpUJSzUsB6A5e8Vs=;
        b=eXgLdPDBTFshmBFNfuG5lWh6vDpXuqSR37ovELxq6B3P/gCQwYHd+Qvb3/zL4J08kd
         qp87UDXXOfO26P8N+EuQEyM329RZGu7y8mtUdC+yN3ZgSYJxR9k3wg/bn+vrrfMA9qCf
         BHb5AUjmEe8HJP/Cehy5t0Lj7sbLAr1sQWGKqkefS8lUEXr6osVo6GbYF2AC7V1QNzva
         qgWOr5a5EDZBw+LkqlRzPlTBda+8KSSuIwEE4gwrGu3oipb7/gi17YVmJfGXgVG4irVJ
         cTId4if48azUM/SzatSHBCdEM01foSKeTBja7U3LlrRHKbRYOrHzmg45vBFQwl0OVavb
         0Oeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VkkOC4/3ptk/f1HabBvowwgiQkra3TL254fCeH7L3qMKXjZ2I
	jnJ1h1+KMPrk7lkIgUCb7v4=
X-Google-Smtp-Source: ABdhPJzvRupXw2Cg3nrQS4jihTitTP3NFVurMP/2kP8INXufR5i0UNlMYGisTEyhoSsBok0A/CKKlw==
X-Received: by 2002:a25:880e:: with SMTP id c14mr62794598ybl.376.1593787350305;
        Fri, 03 Jul 2020 07:42:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d603:: with SMTP id n3ls3618100ybg.3.gmail; Fri, 03 Jul
 2020 07:42:30 -0700 (PDT)
X-Received: by 2002:a25:50cc:: with SMTP id e195mr61325477ybb.452.1593787349987;
        Fri, 03 Jul 2020 07:42:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593787349; cv=none;
        d=google.com; s=arc-20160816;
        b=dR4l/0qixXAF9HKvmUTnqQNJFXQg9I5aysyu7J82aNrUF380c1IT3D9khJ/cNJmCTA
         VP2fg8qhfE6D5SQqRjbvbKa5hwCrvb8v8Bs+RNzE5BPQot5iTdMKLYtR0n2LxQzuUWmM
         MrlARAKabWMAC6BVDXdGN+bUj+yaxQBo4GAqZY+qlnpXkIR9j7iF5E22g+vHrwFkddQM
         1xaKfigVzvBAjbYYqqLB4ZggWB5GsmXOcC9G0vxybiVj7SQwJF2KoIrYmFYUen6+7uBn
         76QbAv4JgrLkadMLlspiCqjF5yNiUGz6WESzZZWULYy6OZNCfDZfqdck9gt18taRVL2z
         eX4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=5j3Wg7txRv+IGv1tPXLVvTUWcwblZavS++pG/N14B7A=;
        b=alL4KHHXgpCsgd5wKux28TLhaxF37QaPeL85+BCvpxIA+3lIYhdDw4yFvjQu8BtTfk
         5R8yvrVckpqTsWWU/fr3XQpwIHdLnP0zKIhQZs2W5+I3GWPCRRGsS6uG9ZxnSX86aIQh
         rD9faDEjM8hNIZPFssk1uh1vMBPzoa0YIwjAU3cQXTG3V4NbqLGMr2QFQwcqiyFVRIV5
         ZdeC+MvbT9Lq31iQ2P+4RffTRz/S8j24ZI32zEUBqyTcoYMBQ2rqGCZpkYbSgJPlHFN2
         BWUqZ6rYVwQcQlF/HhC0K+Vt0HDrxzU1h1ib1/9HaUi8coaupbmfx9OIPYFrvjbV/mzy
         k6pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=H8guQjP2;
       spf=pass (google.com: domain of srs0=s+ul=ao=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=s+uL=AO=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n82si569229ybc.3.2020.07.03.07.42.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Jul 2020 07:42:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=s+ul=ao=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net [50.39.105.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E97632070B;
	Fri,  3 Jul 2020 14:42:28 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id D081235206C0; Fri,  3 Jul 2020 07:42:28 -0700 (PDT)
Date: Fri, 3 Jul 2020 07:42:28 -0700
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
Message-ID: <20200703144228.GF9247@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <20200630201243.GD4817@hirez.programming.kicks-ass.net>
 <20200630203016.GI9247@paulmck-ThinkPad-P72>
 <CANpmjNP+7TtE0WPU=nX5zs3T2+4hPkkm08meUm2VDVY3RgsHDw@mail.gmail.com>
 <20200701114027.GO4800@hirez.programming.kicks-ass.net>
 <20200701140654.GL9247@paulmck-ThinkPad-P72>
 <20200701150512.GH4817@hirez.programming.kicks-ass.net>
 <20200701160338.GN9247@paulmck-ThinkPad-P72>
 <20200702082040.GB4781@hirez.programming.kicks-ass.net>
 <20200702175948.GV9247@paulmck-ThinkPad-P72>
 <20200703131330.GX4800@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200703131330.GX4800@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=H8guQjP2;       spf=pass
 (google.com: domain of srs0=s+ul=ao=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=s+uL=AO=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
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

On Fri, Jul 03, 2020 at 03:13:30PM +0200, Peter Zijlstra wrote:
> On Thu, Jul 02, 2020 at 10:59:48AM -0700, Paul E. McKenney wrote:
> > On Thu, Jul 02, 2020 at 10:20:40AM +0200, Peter Zijlstra wrote:
> > > On Wed, Jul 01, 2020 at 09:03:38AM -0700, Paul E. McKenney wrote:
> > > 
> > > > But it looks like we are going to have to tell the compiler.
> > > 
> > > What does the current proposal look like? I can certainly annotate the
> > > seqcount latch users, but who knows what other code is out there....
> > 
> > For pointers, yes, within the Linux kernel it is hopeless, thus the
> > thought of a -fall-dependent-ptr or some such that makes the compiler
> > pretend that each and every pointer is marked with the _Dependent_ptr
> > qualifier.
> > 
> > New non-Linux-kernel code might want to use his qualifier explicitly,
> > perhaps something like the following:
> > 
> > 	_Dependent_ptr struct foo *p;  // Or maybe after the "*"?
> 
> After, as you've written it, it's a pointer to a '_Dependent struct
> foo'.

Yeah, I have to look that up every time.  :-/

Thank you for checking!

> > 	rcu_read_lock();
> > 	p = rcu_dereference(gp);
> > 	// And so on...
> > 
> > If a function is to take a dependent pointer as a function argument,
> > then the corresponding parameter need the _Dependent_ptr marking.
> > Ditto for return values.
> > 
> > The proposal did not cover integers due to concerns about the number of
> > optimization passes that would need to be reviewed to make that work.
> > Nevertheless, using a marked integer would be safer than using an unmarked
> > one, and if the review can be carried out, why not?  Maybe something
> > like this:
> > 
> > 	_Dependent_ptr int idx;
> > 
> > 	rcu_read_lock();
> > 	idx = READ_ONCE(gidx);
> > 	d = rcuarray[idx];
> > 	rcu_read_unlock();
> > 	do_something_with(d);
> > 
> > So use of this qualifier is quite reasonable.
> 
> The above usage might warrant a rename of the qualifier though, since
> clearly there isn't anything ptr around.

Given the large number of additional optimizations that need to be
suppressed in the non-pointer case, any discouragement based on the "_ptr"
at the end of the name is all to the good.

And if that line of reasoning is unconvincing, please look at the program
at the end of this email, which compiles without errors with -Wall and
gives the expected output.  ;-)

> > The prototype for GCC is here: https://github.com/AKG001/gcc/
> 
> Thanks! Those test cases are somewhat over qualified though:
> 
>        static volatile _Atomic (TYPE) * _Dependent_ptr a;     		\

Especially given that in C, _Atomic operations are implicitly volatile.
But this is likely a holdover from Akshat's implementation strategy,
which was to pattern _Dependent_ptr after the volatile keyword.

> Also, if C goes and specifies load dependencies, in any form, is then
> not the corrolary that they need to specify control dependencies? How
> else can they exclude the transformation.

By requiring that any temporaries generated from variables that are
marked _Dependent_ptr also be marked _Dependent_ptr.  This is of course
one divergence of _Dependent_ptr from the volatile keyword.

> And of course, once we're there, can we get explicit support for control
> dependencies too? :-) :-)

Keep talking like this and I am going to make sure that you attend a
standards committee meeting.  If need be, by arranging for you to be
physically dragged there.  ;-)

More seriously, for control dependencies, the variable that would need
to be marked would be the program counter, which might require some
additional syntax.

							Thanx, Paul

------------------------------------------------------------------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int foo(int *p, int i)
{
	return i[p];
}

int arr[] = { 0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, };

int main(int argc, char *argv[])
{
	int i = atoi(argv[1]);

	printf("%d[arr] = %d\n", i, foo(arr, i));
	return 0;
}

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200703144228.GF9247%40paulmck-ThinkPad-P72.
