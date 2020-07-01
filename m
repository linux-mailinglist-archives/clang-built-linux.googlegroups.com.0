Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBL6M6L3QKGQETJR32WI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 076F3210E56
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 17:05:21 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id v16sf16753358pfm.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 08:05:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593615919; cv=pass;
        d=google.com; s=arc-20160816;
        b=jZf1XslqRkaXIlcMvfBhVqcre7WyA5DIIrNOOeSxMIfpmvur57idP9Q2eWpewXz3ov
         noHneM9MdcWO+Ca+SKWNlffPUq0g/YyX0Go4/XEiX2LYbrod5MstIKuhur0K3bfb4U3k
         IfpmpBbWFPW4otQLDmrnXaco3pFdUsZ6KsUT937gOIT7dBNo1ihCYPUXvywCZtKiyJEL
         u6sKy90v6Nxq3Le9FuX9YmvnzoldA8feHy8CiydWl5n1RgeRc6ZiTJ6Y1foT4Iaq190w
         P89SFyO65eHjgomZq+spJHrc4fqHuJea7HYWylCDRQwYSpvy7lcmcLBWBemQPkP65L78
         LcCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ebt/w54yOxDKZdh6Urac74Ip9e5rxda9/9kbD6+dmBw=;
        b=uxrbsdjoy+ZEWZVRfVuxf/cGOV/T1FVn8gPHoMcK1VlAE/Dp/dtdZThvVYSrql/SZG
         IOTBy4hz1Zk0xhQpzyyZQZXtLteJgxTPsC2Mjyl8uOP9bEq62yROQ+7UaBdi4h4gsT/o
         XhPME9ej6uFQroZ6z5YN0evPN8zJzdyi7uFr2mrhxLbDMp50MPY1YjxuOPj3xC9sstJA
         ZqsroWRHexTIWmRj/zhjXTCfekqfK+rgRtFr/cbq8z98cdqbRzPe4eCucAlzUTbP/kaS
         LdOx/r3VauLib0N9XzaYeGiLK2O6RMmB7Xy0cChJxPICCHoZaA51YwHE/RRDR6beXm5c
         n91Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=i74sl3ZO;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ebt/w54yOxDKZdh6Urac74Ip9e5rxda9/9kbD6+dmBw=;
        b=WIu7uULavcXhH4r3LC7cPTR91TS6h1gfRN0qlPR2AxzO+ZCICDblFXFOVTKhKU9u3y
         Gx1Hdgmg2RD93pa8oCHEHOT5jJ9ahWn2Fvad1BLnVqzqzvcWA85wuVCpn8iM85RalOt4
         Oo56jI6jbwfbMCYxiKYxnTP9qOpKKp1zhIySxwGCGRMvmUJAq3ITsVm2tCjdJPqiXUWC
         m+28rzpZyk3Rk0hcXva43eP6Du68m8FIUR6lgbcdXa+bZuP8qLhgVUKFETNv0ULHZ/66
         vFWgyG+G5ihDWvQUQzFhbjx6lwV4nSrF/ZBepP6cilhToE1UE5B/5ieNsG4JkR0YBuo1
         2cmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ebt/w54yOxDKZdh6Urac74Ip9e5rxda9/9kbD6+dmBw=;
        b=srGGFr2wzoZDO/MnPKnfUvSeNmG3GfNvPsIYQ55DyKN+rxeM0Fl6t2lCooGu/de5lD
         nOqy6ooq+A7S2/laZ5F6CfHJJre1d3PphO7oetcaKvuER0E3nKXhZYzyjptGLVOPboo2
         8iAUTqk6fbjIuOF0/MpJ659WSK0UoP0ZBFfhRSQlebAQY4hMc4EGVQmQYUg7DrnrKGV5
         GGX1peiP5TkliF8zrWygy5Fr5xjO277osAdIhJmvM0fuNHK0PKPiXm1TZlf/QM/RD0A3
         dXLzlHwaxuK5/mZMlG+dNAirZ9/XqjFiAYTgAL73PfFdUHaE/twWQEgjrX+Bk5IrRq16
         Ncsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533sjUafcStikGmmcwcbSezeHEi0oNEtPJ0UQxcb5K0M8Y17dHrV
	qSzujTxJMU3HDI41kLfTUvY=
X-Google-Smtp-Source: ABdhPJzfwCpZqcQ0OU5zCBZZGVIQKsdgszUrew+RqsdiexnUcsGWXZChMc5M3PkF//4oI70NpLe1Ww==
X-Received: by 2002:a17:90a:7149:: with SMTP id g9mr16677205pjs.130.1593615919277;
        Wed, 01 Jul 2020 08:05:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6b02:: with SMTP id o2ls1050071plk.7.gmail; Wed, 01
 Jul 2020 08:05:18 -0700 (PDT)
X-Received: by 2002:a17:90a:fd12:: with SMTP id cv18mr21477282pjb.66.1593615918904;
        Wed, 01 Jul 2020 08:05:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593615918; cv=none;
        d=google.com; s=arc-20160816;
        b=gxd2O6BwQJxsJG0E2Dmf5PpluZtXe/Tucf8znEZjz0Bu0l9ua8wYse9XngiKoAN6tt
         xFW2exkywUEz5D11gUSWoYspdEh7x2M9InTVfJJie2QkIPiAPybAon4j71WWEtxCq3/4
         HyMgAgye++EY2Ek6mWv0e8NMt3m1NQK4WAKKMykf3tiAjgG6HCRCoe3zVxmzWovAErkg
         lqU8r+u9hy9b+rgFbXqTKoIF+uDNgSdorNwDicdieIpwK5zhqZSIIJmqPncKzHxcMrcq
         mWfh4NFwJKJ3nnAvtaTTcT9AWU8Xk1ovIT34/4FEGnXDBuzmRB1jMaEcBa0QAf0rx+Ma
         m0YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yjUbAZQQ9f4rcShW5GkixqYv9x2nD42GGzyjdsiFm50=;
        b=ZKMUUl2xoAbTwnvtK5JGCOJlpFuJ1G9QwVYrZQIXaEtc+EJLwqi0V0sqytQ2a+L//h
         w0bbNSpfF8uR9NF5mRYy6ZrVDPlJSZ4fRpwnTyXuA5ZOHJQNXG7hr3Rx3ZdEM12sozVi
         O3gTNkdUEu2c+ULChMnScVYgYIGHpKUnRHLo8BsXcr033G9gk/30zGeblxYigV3MdZi9
         4gngsajXZuaV2Yvcdqqj32D0EgC0oXlvhQIen+d0D57GUbY9/pZsYw/ngSH24JIDtF/7
         JcJwOAwkTVp+biv2NnGSZCrwM104mFv/7FoIbey9bbv82o4UUX/r1awBNLtidhezQGxA
         Zluw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=i74sl3ZO;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id 89si236001pla.5.2020.07.01.08.05.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2020 08:05:18 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jqeIU-0005dy-9r; Wed, 01 Jul 2020 15:05:14 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 229A930015A;
	Wed,  1 Jul 2020 17:05:12 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 1242023D44E56; Wed,  1 Jul 2020 17:05:12 +0200 (CEST)
Date: Wed, 1 Jul 2020 17:05:12 +0200
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
Message-ID: <20200701150512.GH4817@hirez.programming.kicks-ass.net>
References: <CAKwvOdmxz91c-M8egR9GdR1uOjeZv7-qoTP=pQ55nU8TCpkK6g@mail.gmail.com>
 <20200625080313.GY4817@hirez.programming.kicks-ass.net>
 <20200625082433.GC117543@hirez.programming.kicks-ass.net>
 <20200625085745.GD117543@hirez.programming.kicks-ass.net>
 <20200630191931.GA884155@elver.google.com>
 <20200630201243.GD4817@hirez.programming.kicks-ass.net>
 <20200630203016.GI9247@paulmck-ThinkPad-P72>
 <CANpmjNP+7TtE0WPU=nX5zs3T2+4hPkkm08meUm2VDVY3RgsHDw@mail.gmail.com>
 <20200701114027.GO4800@hirez.programming.kicks-ass.net>
 <20200701140654.GL9247@paulmck-ThinkPad-P72>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200701140654.GL9247@paulmck-ThinkPad-P72>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=i74sl3ZO;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Jul 01, 2020 at 07:06:54AM -0700, Paul E. McKenney wrote:

> The current state in the C++ committee is that marking variables
> carrying dependencies is the way forward.  This is of course not what
> the Linux kernel community does, but it should not be hard to have a
> -fall-variables-dependent or some such that causes all variables to be
> treated as if they were marked.  Though I was hoping for only pointers.
> Are they -sure- that they -absolutely- need to carry dependencies
> through integers???

What's 'need'? :-)

I'm thinking __ktime_get_fast_ns() is better off with a dependent load
than it is with an extra smp_rmb().

Yes we can stick an smp_rmb() in there, but I don't like it. Like I
wrote earlier, if I wanted a control dependency, I'd have written one.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200701150512.GH4817%40hirez.programming.kicks-ass.net.
