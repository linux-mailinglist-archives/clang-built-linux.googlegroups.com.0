Return-Path: <clang-built-linux+bncBAABB7U7373AKGQECWES7HA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id C895E1ED45F
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Jun 2020 18:29:51 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id y16sf2559631pfp.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 09:29:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591201790; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ej/7E+sHtF27djFb36qE50u3NTI2JMnvzD4nIvis0KlVeVFSpO4O/QV7tsSpADgwFQ
         G2kmHYKE6WInSO5G5Y8IfQ4whxSnF/HlCzBKD9wh8ZFuOSGJGkgNrHcjXcQNK1Nbhv96
         z1ja85mxKB890bcquJSkiOZRJsPYmuDKE+rM5nMxXDSrq9I35hv2QrG23qBv6wD/VIeO
         D2gGbrVNzV9wdtOdEzJNKPdJeOekN1FBYBiKqoJf3FNbNLjquv4t6qJ3Ur4WU1APaLB5
         V0nXlzXgtu6KDUJsLIe5SYLcmqcny0yoZogrdSvbAME1V2t4lYu/0KjfJVXQ0rGYjnat
         RwTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=0//9pzM5jl1HXPAsk4M7Km99BjUz4euugurDuJCON/g=;
        b=OHLxJxgI4L2P1GYZ18ye1r8twpZ6PPIzA3L970Xl6l0O33SjQVRPism3Zdj7pAOlsW
         GljEaDD+kUgSEB4+88IEcmHezDsaBLWUNQ4hFx7z3Yp6IM8DAfGZ+0yvJrlqgJn4wcYX
         D9KoxQMyxMhrFZ6AyKGZpccwp7KGsWbnMmWQ856hK0iXeKhE4afwUFsCcV2jeGvW2/fQ
         wAk/+h7qzeFUy/G6YjRhKgEc/N1Lhef59ty/0O5lWPhbGGNj06ISPJSSu4xxgVd+dlkh
         kuRjYipdYcqmaLQnKchbwsVycQPH2ryqx4gpXl1gN0u+ALmxj9JgqNO2OEg9z9LCYaSd
         dv+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="TSOOj/h7";
       spf=pass (google.com: domain of srs0=w7he=7q=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=w7he=7Q=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0//9pzM5jl1HXPAsk4M7Km99BjUz4euugurDuJCON/g=;
        b=hRE/AXrLINabrK0Lhz0x+qSTVCssUfodd2gZvdAUFYoFjwtUMMq7+tbUR28KqylFHk
         Vnb/E2X5JGd0ZTfpH944U7wiHjOkzs8ZMGy7K3PpK3pYr3V3aR0VZkdIjIpjOc8QZcvg
         wBQyD7UmzjGD9Ov3apjxAcWm3jUZTR1phZWocSN5oWZc1tUheI4/5ZDDZo7WBtP79iGI
         5zQ58IfsR6KyqOzHqoB3bXxfoZGuqe7IfcxD+BCKEXq0danuEV5Rog0w9+4maQzkkHYN
         8cEuEN/0Jo6s43/GWbE7EXhvpVhtJc5D42pJLpDqvvKXPs9UHiL9pa9dG19arM4+PwFb
         IhLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0//9pzM5jl1HXPAsk4M7Km99BjUz4euugurDuJCON/g=;
        b=FmJKiJFW28xQuV9csDwLEF+sVhsrcnaoctSZdSkh0GCoaaLZvch7hrdsCdHSltar/y
         xmVZf5kqNqBh1uwIz/Cx8QKd6UydoBLn2L+Z5TKdzdbsNN37S3Fa85apS1XhcbcDUBWL
         +4nb5E0+i7dkZnXUJhlYYARmhJjwEqcpv63+PJ+TsJKQI9Y9ezVhrw9A+J/ABihD4wY5
         ajoCqxPzfcb2SrEKa7nigt2u02VLRC7yo7Qbq01k/8jMGjFjt4Jwf+Oo3NK6IuLdRMGF
         gTet6UlHRuh4NrcKrXgXpNLaIcshQpmi1JGJ0HDRQV7LPf0jkowyinxlUovsrv4VK1Kp
         13cA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321Pvo7qjRjItODN3bTkTwVHJILvGY0cRADXPpoNWNl6in+kkfD
	5MGDxw1fu+wROg4Hi7PPHxs=
X-Google-Smtp-Source: ABdhPJz7b9/S99Hodk9WdIOaubL83cSw3QugQ3jW2xYoi1E9ZUh9ntSXV8CoiglwWwAz0CGRCR7jwQ==
X-Received: by 2002:a17:90a:36aa:: with SMTP id t39mr551971pjb.185.1591201790453;
        Wed, 03 Jun 2020 09:29:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8ccf:: with SMTP id m198ls897567pfd.10.gmail; Wed, 03
 Jun 2020 09:29:50 -0700 (PDT)
X-Received: by 2002:aa7:8ecd:: with SMTP id b13mr15631522pfr.297.1591201790121;
        Wed, 03 Jun 2020 09:29:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591201790; cv=none;
        d=google.com; s=arc-20160816;
        b=x+IkiUIIIlTnl+73TJlriEaxLUj9cdu/AQKXgPKOhLO4GG6KyAcu+NjbeZXyWm8VK3
         fW8eA+JnnczF4UQgjExPDGloDZ6X9kjSZGoFLAEle3GgTxdQJJC5q3tmNbeoDeaXsj3S
         0hcD/W2fH4fUrz7y+6r83w2031lgZugr7RqC4CuB4d/67rJqeDKuCd8qSpMqvzmNPLF5
         Fgv+i25QiBSYs1QK0uMYJlpQinG9E8Brt/AfrR2bkAqt6kThlEUpBGk8ZWLGo7FpiiXl
         /m7WKVXqqG2QHuwrcI3b/L8J+yCws12osl82GaXtzGh8OVQTkoF6i9LgVDnGv+eFg6BS
         e5Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=pGtn01Ejxv4U5A8NN+buYh4/UyvofPXF8HV+4s2Dc8A=;
        b=QfGBDHCHYhdoOx18xoxeYnY11YThFrNyU0Tiw3qbPapT27hH8Y+lCqGeSrNdMDqBew
         +4QYrvl5BkXNP0Q+Na+ywdYKqnYHqLPaEXZZB/EXhtMyfiEKNkDbrTYLwjWpHqjcFMaL
         Vafc60cDfTER8krNIM6Xa5igQ270oVsw4/hKp07/qi9m/YoBQZPQ5gyOVJdw2mUmaWpf
         kQHMpZwS257YJTuf+rTj8HoXSby8mrvBL3MKCTqVhNmHW/E9y8YhPlxL5p9mIuOSes9e
         4/WsIYWbCv2+5+mx3UNso8nlyGZ804n1Jt8WZ57KPcXusKrObTMrPBqnVT4EgIVPqBtl
         XLPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="TSOOj/h7";
       spf=pass (google.com: domain of srs0=w7he=7q=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=w7he=7Q=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id gv9si270641pjb.3.2020.06.03.09.29.50
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Jun 2020 09:29:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=w7he=7q=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net [50.39.105.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C70CF20659;
	Wed,  3 Jun 2020 16:29:49 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id AD32D35209C5; Wed,  3 Jun 2020 09:29:49 -0700 (PDT)
Date: Wed, 3 Jun 2020 09:29:49 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Marco Elver <elver@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Will Deacon <will@kernel.org>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Alexander Potapenko <glider@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] rcu: Fixup noinstr warnings
Message-ID: <20200603162949.GP29598@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <20200602184409.22142-1-elver@google.com>
 <CAKwvOd=5_pgx2+yQt=V_6h7YKiCnVp_L4nsRhz=EzawU1Kf1zg@mail.gmail.com>
 <20200602191936.GE2604@hirez.programming.kicks-ass.net>
 <CANpmjNP3kAZt3kXuABVqJLAJAW0u9-=kzr-QKDLmO6V_S7qXvQ@mail.gmail.com>
 <20200602193853.GF2604@hirez.programming.kicks-ass.net>
 <20200603084818.GB2627@hirez.programming.kicks-ass.net>
 <20200603095932.GM29598@paulmck-ThinkPad-P72>
 <20200603105206.GG2604@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200603105206.GG2604@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="TSOOj/h7";       spf=pass
 (google.com: domain of srs0=w7he=7q=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=w7he=7Q=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
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

On Wed, Jun 03, 2020 at 12:52:06PM +0200, Peter Zijlstra wrote:
> On Wed, Jun 03, 2020 at 02:59:32AM -0700, Paul E. McKenney wrote:
> > On Wed, Jun 03, 2020 at 10:48:18AM +0200, Peter Zijlstra wrote:
> > > On Tue, Jun 02, 2020 at 09:38:53PM +0200, Peter Zijlstra wrote:
> > > 
> > > > That said; noinstr's __no_sanitize combined with atomic_t might be
> > > > 'interesting', because the regular atomic things have explicit
> > > > annotations in them. That should give validation warnings for the right
> > > > .config, I'll have to go try -- so far I've made sure to never enable
> > > > the *SAN stuff.
> > > 
> > > ---
> > > Subject: rcu: Fixup noinstr warnings
> > > 
> > > A KCSAN build revealed we have explicit annoations through atomic_t
> > > usage, switch to arch_atomic_*() for the respective functions.
> > > 
> > > vmlinux.o: warning: objtool: rcu_nmi_exit()+0x4d: call to __kcsan_check_access() leaves .noinstr.text section
> > > vmlinux.o: warning: objtool: rcu_dynticks_eqs_enter()+0x25: call to __kcsan_check_access() leaves .noinstr.text section
> > > vmlinux.o: warning: objtool: rcu_nmi_enter()+0x4f: call to __kcsan_check_access() leaves .noinstr.text section
> > > vmlinux.o: warning: objtool: rcu_dynticks_eqs_exit()+0x2a: call to __kcsan_check_access() leaves .noinstr.text section
> > > vmlinux.o: warning: objtool: __rcu_is_watching()+0x25: call to __kcsan_check_access() leaves .noinstr.text section
> > > 
> > > Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> > 
> > This one does not apply cleanly onto the -rcu tree's "dev" branch, so
> > I am guessing that it is intended to be carried in -tip with yours and
> > Thomas's patch series.
> 
> Right, I've not played patch tetris yet so see how it should all fit
> together. I also didn't know you feel about loosing the instrumentation
> in these functions.

It would be very good for KCSAN to be able to detect misuse of ->dynticks!

> One option would be do add explicit: instrument_atomic_write() calls
> before instrument_end() / after instrument_begin() in
> the respective callers that have that.

One good thing: The atomic_andnot() goes away in -rcu patches slated
for v5.9.  However, the others remain.

So if today's -next is any guide, this instrument_atomic_write()
would be added (for one example) in the functions that invoke
rcu_dynticks_eqs_enter(), since it is noinstr.  Rather annoying, and
will require careful commenting.  But there are only two such calls and
they are both in the same file and it is very low-level code, so this
should be doable.

I should also add some commentary to the RCU requirements document
say why all of this is happening.

> Anyway, I'll shortly be posting a pile of patches resulting from various
> KCSAN and KASAN builds. The good news is that GCC-KASAN seems to behave
> quite well with Marco's patches, the bad news is that GCC-KASAN is
> retarded wrt inline and needs a bunch of kicks.
> 
> That is, it out-of-lines:
> 
> static inline bool foo(..)
> {
> 	return false;
> }
> 
> just because..

Compilers!!!  :-/

							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200603162949.GP29598%40paulmck-ThinkPad-P72.
