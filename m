Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBMXM6H3QKGQETBH7VEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 881EC210A5C
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 13:40:36 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id t7sf5520884pjl.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 04:40:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593603635; cv=pass;
        d=google.com; s=arc-20160816;
        b=JRM+QpOAu6w1fyKgjYw0lo1DJPHxvUgM5ti2ruFr6dZbHF0f6gpaUgf4qHRuSXzd7y
         49Q0cZfIRuL0QCKd24tyLmGk519JNHt4Ya6Min3DoOi/tVOC5kkxw1iur/lAWMPcrdAI
         Bg+yYXuMRRh+Hylo710fEHymBBOmqFoCzegT4MlRAAT4cmpLJZFTaQQAbCL0e27XSvxZ
         C6M+rvsT7H5utF0Uhc+bHzk3cOdyK8FwgoHZPT/4VnKRr2JkzfodjKRVwDNN/041mcFN
         BUdYcAbZlfppUn3raMPr8OkkjYa8wiqI4wZGj8zTBMzzsTGnVBNW2ySvNoDbElcdOM6k
         AU0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+1Jdi57d/TKo6Jj72dx3ZAyHKDyoeTrDTD/8dLsFANw=;
        b=M5yf4MlLMoWyWJMHygORpTWfOj2MqUnbXA0jw2wL1y6ErWNrrje4dvZcvR4lxXb5Ie
         ISP+fsC9uUyXykMeOWQWp4TfByHQFWm3Va9w2oIWdUQOdAtImVZm7fGKb576Yl2rH3KW
         v6+eC1b53Uwpk7x9tUgL7kwIPKEin8Rv3sWE24ZROtRebh3jiBrIUdCNOeyK2Yu1AfD9
         Ak98ELepAp13w6tU1FPoKoRvBUam38au8VBn5k/gBYB9iOAwt9T0phH2mdJcZ43sGq91
         lxk4gKr45AlYTXTuDRuiz+p0/O8/oFhu4wwe5GB0l1Dx0at/R14DXG367kthxkh425T8
         2INg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=RPefHxRr;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+1Jdi57d/TKo6Jj72dx3ZAyHKDyoeTrDTD/8dLsFANw=;
        b=kLdfIgnYcfJQJRCzOlc7iORhqe3AabAs9XCUSoV5uM3C3W1aqaWwkCn6lWedtlh+lZ
         TYWwo4SvjUKznlS5Qh9cMQZDTXxsbFaxQYRsUm80UTKmy6M2ZmPahw2h7Qip43QkapFW
         Ofcn/igggxYhPV6zk0WUwGMY7Xq8oHn9FvzX4LC92uemrGRkzuv8MBba8OGJUkIS1+SL
         Fmxk5/TlPi1arrO+kpq+2TDupAtaCreZ8QaJf05bt6WTkcLle1FlIxlsjsJnahrG0hFK
         nQgc1otXScdiZVZu2Kxrg0A9ZsxCDquMnfPDoYSat5mYBYII/5+s2NYRHgwgZBgmAYJ0
         6Gvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+1Jdi57d/TKo6Jj72dx3ZAyHKDyoeTrDTD/8dLsFANw=;
        b=kSiOVHKQZygGNuzIYI/wJrX4YHtNaTSL9KVbNEWW2UDMzjK2QjYfjiLePWvbi1S7KT
         6jpuCWcJLFHvJwwi6jCro/EeSPB8EgElP1e3vTshfpZqPyaQZqSEdebmtxnErETsIKjc
         qw926eCkAi6lxc5v0DS66DzlvasdvlAcCRNeQP04JomHVzKj/mV2MBm9fmgB2PC3qusE
         +l1zqkGp1q8vg63vaE82uXRLtg3xDF0c3wuRjwzTnjOSsawZ5lD/Oh7lhNLuYqTX7fv4
         H+eV9OXrMU6wm8Os/3Njj0prsDdjHtOO4991+Qek1P7b0lWOQcpYL28pxN2Oz5lomx84
         z73Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CnMwTeg5dcyo9JuQocqOJc08Yc2c981/0Z7WlkC7Mxc1VfMeS
	bpW9SAzqYxKFRGytp+MZL+M=
X-Google-Smtp-Source: ABdhPJx9AFmDN9n/7Sxg1h1kBBpXaxL9xFnrzdnZBLQQFDq9NeiP2UR9AU8HK+3doFZJIFe20jdNMg==
X-Received: by 2002:a62:768d:: with SMTP id r135mr21699275pfc.198.1593603635034;
        Wed, 01 Jul 2020 04:40:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7686:: with SMTP id m6ls878462pll.1.gmail; Wed, 01
 Jul 2020 04:40:34 -0700 (PDT)
X-Received: by 2002:a17:90b:686:: with SMTP id m6mr9223294pjz.229.1593603634693;
        Wed, 01 Jul 2020 04:40:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593603634; cv=none;
        d=google.com; s=arc-20160816;
        b=pDGfGA+EHT4IJdG0P1WMM/jpT+3D1BF8pBDZ2qkennAzx5sY3cWw0KsrvHPEA6lIYd
         Wqq3fSmaXZLGQHIz5MaWquCXlro5bXlLIpSarwmnbF9wLnnkYKUeh3Rr9glcwpEjhTqJ
         T4drxtBw2WnJ3PrsiaDd+BuIf9sY9OzdpGJBKrqpmtUsIPckLKWL04vMHPcbaQ89JdJf
         mz11Lr+S/fOcx5utwt/BwQwCIZPDblZPmMf3aiKS5MaEjHfjgyGR66H/UYn/qgeP2RbW
         e6NMG/f2qsoAvyBWUbXbJughn1juDstCXd3HLWvL9r3u3omv0ZZytM2sr0uHV71VEHHx
         ZjFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HcAuVDWEpmiLqpe0YNpYLGZ4fmq8QzKs/ZIuj2kkH8Y=;
        b=XJvdEqYYb9l4EeqzcTP7jL1TRZNwI3xCkgIcaraaGfKyiYtfAOafMp5BgfjM/AV3Mg
         BB9lIrZpTgHntOQdveIIvw9CO+QlDuNl03Aif2zHFXFyV2ImQcEd+sF+0ThRh4ukGAcO
         WsA0UJnXDjNXwEIZdMLZHd9noMQnFNtNEWvAn2HAbHUR3L+QR0BkNew04laEBtFwI1aO
         ozlDbZiFPwMI2KwGfJkYflzCNXUPcXgff+4TdaFS7xq9VhHW4fxGrsixKYuJKq0wokq1
         jLrpZgwVR+OyrnPM5luQ8CRW6Kezfy1zsaF4SynV+nKCo3vT52kynNLjcOIHtnXIxQ09
         Aa0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=RPefHxRr;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id mz9si400401pjb.3.2020.07.01.04.40.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2020 04:40:34 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jqb6M-0005ut-DO; Wed, 01 Jul 2020 11:40:30 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id ECCE9301AC6;
	Wed,  1 Jul 2020 13:40:27 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id D969D2BB58971; Wed,  1 Jul 2020 13:40:27 +0200 (CEST)
Date: Wed, 1 Jul 2020 13:40:27 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Marco Elver <elver@google.com>
Cc: "Paul E. McKenney" <paulmck@kernel.org>,
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
Message-ID: <20200701114027.GO4800@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624211540.GS4817@hirez.programming.kicks-ass.net>
 <CAKwvOdmxz91c-M8egR9GdR1uOjeZv7-qoTP=pQ55nU8TCpkK6g@mail.gmail.com>
 <20200625080313.GY4817@hirez.programming.kicks-ass.net>
 <20200625082433.GC117543@hirez.programming.kicks-ass.net>
 <20200625085745.GD117543@hirez.programming.kicks-ass.net>
 <20200630191931.GA884155@elver.google.com>
 <20200630201243.GD4817@hirez.programming.kicks-ass.net>
 <20200630203016.GI9247@paulmck-ThinkPad-P72>
 <CANpmjNP+7TtE0WPU=nX5zs3T2+4hPkkm08meUm2VDVY3RgsHDw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANpmjNP+7TtE0WPU=nX5zs3T2+4hPkkm08meUm2VDVY3RgsHDw@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=RPefHxRr;
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

On Wed, Jul 01, 2020 at 11:41:17AM +0200, Marco Elver wrote:
> On Tue, 30 Jun 2020 at 22:30, Paul E. McKenney <paulmck@kernel.org> wrote:
> > On Tue, Jun 30, 2020 at 10:12:43PM +0200, Peter Zijlstra wrote:
> > > On Tue, Jun 30, 2020 at 09:19:31PM +0200, Marco Elver wrote:

> > > > Thoughts?
> > >
> > > How hard would it be to creates something that analyzes a build and
> > > looks for all 'dependent load -> control dependency' transformations
> > > headed by a volatile (and/or from asm) load and issues a warning for
> > > them?
> 
> I was thinking about this, but in the context of the "auto-promote to
> acquire" which you didn't like. Issuing a warning should certainly be
> simpler.
> 
> I think there is no one place where we know these transformations
> happen, but rather, need to analyze the IR before transformations,
> take note of all the dependent loads headed by volatile+asm, and then
> run an analysis after optimizations checking the dependencies are
> still there.

Urgh, that sounds nasty. The thing is, as I've hinted at in my other
reply, I would really like a compiler switch to disable this
optimization entirely -- knowing how relevant the trnaformation is, is
simply a first step towards that.

In order to control the tranformation, you have to actually know where
in the optimization passes it happens.

Also, if (big if in my book) we find the optimization is actually
beneficial, we can invert the warning when using the switch and warn
about lost optimization possibilities and manually re-write the code to
use control deps.

> > > This would give us an indication of how valuable this transformation is
> > > for the kernel. I'm hoping/expecting it's vanishingly rare, but what do
> > > I know.
> >
> > This could be quite useful!
> 
> We might then even be able to say, "if you get this warning, turn on
> CONFIG_ACQUIRE_READ_DEPENDENCIES" (or however the option will be
> named). 

I was going to suggest: if this happens, employ -fno-wreck-dependencies
:-)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200701114027.GO4800%40hirez.programming.kicks-ass.net.
