Return-Path: <clang-built-linux+bncBAABBBM4R75QKGQEVWCPS5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2576E26E6FC
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 22:58:47 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id j12sf1636254ooi.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 13:58:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600376326; cv=pass;
        d=google.com; s=arc-20160816;
        b=KW/MAdhlV61Dj3sc7pjD/XhB4Rbdc3f5EE4qI25iSOpXgdXYv/hBHrRXIKI7FAGM4q
         3DtOC/86xlJSWFo8Id5SWc2+FpNzchXE5rW8dJS8Yb/2rR9Cd0tg4JhZtLV2+hymDvia
         ux2C/NmbynAUSm6rzf7ZKZtZwNgfQnkCgPT4hajN3MICTkwGpzZgiT81luRaNYAgO6Ns
         EZueAYEnoz1GoZGvb2x63YH92pE8BzIIT5rLrHhFNpt4LQnLRXHd4u/Un7S1CEXo8VK4
         UckINOXutDM/YgY3254C2TpvsSHfoSgCPjwXxVZUnmzK3uNSHVyqNKoPRcpeQ7OvAnkr
         4L6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=PzaiYeWQqfyMVVJmeM3Wuj9n+g+cmqgkU015RnW4np4=;
        b=Rk3X3mqJwrgLj0leeM7FZmTUXtDOINcI3IVujkLpeVsGvO8472AxCPLtk2wAnhzRzc
         TSFMoKzDBuispe/YQFTgqyv264QGnuoX71OH9bZ7MUnv+V32ZEZujfdS+u/Ml/9BNbts
         6wFGW3UenniUUrv1fQM+tIOagHtrtB11GcvyzExk+BRy9yquG9gCposqtI7ioLng4wyi
         8Nb+5KeQ3kqJPxVeO067L7Qi1BRbRHZmaXqbKReGHrf3biPUp27LQD8VKvt3khr9syf0
         oVSMk3WJgjHgfrSHrMmRJM/AiFIxxrXnuDvJLOHSRpZR/PDD+6+Wr5j6I46ySYtoUKhX
         yjMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iTpZ5NG9;
       spf=pass (google.com: domain of srs0=jyvs=c2=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=JyVS=C2=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PzaiYeWQqfyMVVJmeM3Wuj9n+g+cmqgkU015RnW4np4=;
        b=QopRGzX9BEXSdpUoD77f2sLo7z3f/GnOHovSIQyOcg02nEr0KM9dwBbRgZ7baB2O4K
         npbc824KS9nJjTAimaBM8kBNZzMtQmp8rOJFx2cHlbLrYmchwflwu7j+IxmF+xxqLlH7
         lkhN/ADhiyBeYXKK5i31hV6aE4X0Dj1HeKQbhy3WzpFiN4ptoYWVY3SPTjFQP9VH84N5
         JKG38PKzJMhC+dhDJbJmB1SdQXM7YPKMaVAhhZlzELWc58xeDYQdm761Yy9mQ+7VAOZx
         6f+QleiWn6HxiEA2PEw4zk+1JMTFlGqEk3YmCO+WOxnBJKkY7ZLa9DapCilvAedfIQyx
         RTIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PzaiYeWQqfyMVVJmeM3Wuj9n+g+cmqgkU015RnW4np4=;
        b=qdJipvoUGCYj7d9fWBSiJh/py67jqXackStAO+qnxKVXcwzlX/2CnaMeIhQnAVRLmL
         U5LsghIfYYcPQeNuu/hvt+2oCohCVj8T8KAd9/wznk6G/lUkxYYVA64EvOZyPuJRi/0v
         a7kPWOtSly8cqnIHVI7DFbcYbszB+Dl5Pil63+wE0TtYBnkSVxDGwnxO9HZABhgKIdM2
         kBxF7asg6DYTMgA0RIk+/ryTCbibUjjm5ZjOez9gNgiPnEFazKHtWUMVMv6lr3f5LcFp
         nI+J4hXTpLcAZAC+6EjMiPUmM2qM3u9oKmKrYKuSWk63ZODc/oFh0oVj4afxjSzMnKwk
         lptw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Wb7NcKqATZwumOMOSQWcQEE/mqs6Tlj+YWKnRJDoH+JzOobmp
	et4mINXi0hAqrJdWbANfqNE=
X-Google-Smtp-Source: ABdhPJxknfn+MOTMLfk+LdwyY8VFm/lKQsN3WpfOPKWLVLCd9FRci0bFcr49XrV5Y9HdqEL+JDMYyw==
X-Received: by 2002:aca:f5cc:: with SMTP id t195mr7736161oih.10.1600376326033;
        Thu, 17 Sep 2020 13:58:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3a07:: with SMTP id h7ls788466oia.1.gmail; Thu, 17 Sep
 2020 13:58:45 -0700 (PDT)
X-Received: by 2002:a05:6808:245:: with SMTP id m5mr7695763oie.155.1600376325708;
        Thu, 17 Sep 2020 13:58:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600376325; cv=none;
        d=google.com; s=arc-20160816;
        b=I4t5g6HjG2zfMQ4s8wimQ7nUKScRVQrF+nA3Ys5uuiEen5VccmVeibdMQjJTKr4Yc5
         smqUcDKrrEjyeoMSIZfARvlQgF5j8AcJ3eB79B+JghBO+wXB5tJkfGnsWETH8nJfQqKE
         jbFw0ewGleeXlKMm9f8IIP4ftaCR8Cjv1he0i1l9WhZmzxQB7+/6ikHgmG/+ByuiRR2R
         h7ys2N0kmeF//H+73xfu/Hv6RMlKSbbl3vmYar/S7Ry/jbbkaBWNIpH0oQbEgA8Tzo5D
         RtM3qok+r6rc3uXuwv/cOmXqTT9TmRicZFXy9UTksO3cVSx4FkobptStqw+e3HSzoMzl
         /2uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Vo07frDDNjGsFlsrHUVAkfDBTxyxpJEnTvVetMWt3CI=;
        b=xi5ZQuC2UmMFG25m4gbbK1CDO/TTjnV1PyR2JFhYFhPCuiZm+tn3WumlPHG8J1KJwh
         OYYNi2KYXZJnYpxZY63khitaHmTnaPe95bUcYkH5SJEEVzrS5ahke+Qd0Fl01H3cx5wx
         +5fX4yDUvTLODkna3WcBB5syH06f5KZgey1vn3TlTeOL9s+EWTp2n65lqSjFRRXrHnW+
         v4MU7ArNx0uMeqV+Wwzx9uVMIhlbSVibBtDLczREzPXUOMt289np37SKNirbAsImigao
         WVT6tCrDbyerPBRNvvCSg/gwXgYNInQEU3yYmlb4wSqbC4CntKk7+0oWtarc4xbYYEug
         irbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iTpZ5NG9;
       spf=pass (google.com: domain of srs0=jyvs=c2=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=JyVS=C2=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d1si73195oom.0.2020.09.17.13.58.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 13:58:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=jyvs=c2=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (unknown [50.45.173.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D34D62087D;
	Thu, 17 Sep 2020 20:58:44 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 97FA13522887; Thu, 17 Sep 2020 13:58:44 -0700 (PDT)
Date: Thu, 17 Sep 2020 13:58:44 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
	Josh Triplett <josh@joshtriplett.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	jiangshanlai@gmail.com,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	rcu@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: GPF from __srcu_read_lock() via drm_minor_acquire()
Message-ID: <20200917205844.GA1978@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <CAKwvOdm4AQhobdkKT08bjPGb15N58QN79XWxEaQt-P5Dk4+avQ@mail.gmail.com>
 <20200916213730.GE29330@paulmck-ThinkPad-P72>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200916213730.GE29330@paulmck-ThinkPad-P72>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iTpZ5NG9;       spf=pass
 (google.com: domain of srs0=jyvs=c2=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=JyVS=C2=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
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

On Wed, Sep 16, 2020 at 02:37:30PM -0700, Paul E. McKenney wrote:
> On Wed, Sep 16, 2020 at 01:48:22PM -0700, Nick Desaulniers wrote:
> > Hey Paul and RCU folks,
> > I noticed we have a bug report from 2 users that seem to have similar
> > stack traces in SRCU code;
> > https://github.com/ClangBuiltLinux/linux/issues/1081
> > 
> > Is there a way we should go about starting to debug this?
> 
> Hello, Nick,
> 
> Huh.  It looks like the per-CPU memory referenced by the srcu_struct
> structure's ->sda field is unmapped.  That would certainly leave
> the next __srcu_read_lock() dazed and confused!
> 
> The trapping instruction is the increment instruction that I would
> expect to be there.  The source code is as follows:
> 
> 	idx = READ_ONCE(ssp->srcu_idx) & 0x1;
> 	this_cpu_inc(ssp->sda->srcu_lock_count[idx]);
> 	smp_mb();
> 
> Looking at the assembly:
> 
> 	  1e:	55                   	push   %ebp
> 	  1f:	89 e5                	mov    %esp,%ebp
> 
> The above is function preamble.
> 
> 	  21:	8b 48 68             	mov    0x68(%eax),%ecx
> 
> The above instruction does READ_ONCE(ssp->srcu_idx).
> 
> 	  24:	8b 40 7c             	mov    0x7c(%eax),%eax
> 
> The above instruction fetches ssp->sda into %eax.  I therefore find it
> quite surprising that the dump contains "EAX: 00000000".  Or is this
> register value inaccurate?
> 
> 	  27:	83 e1 01             	and    $0x1,%ecx
> 
> The above instruction does the "& 0x1".  Therefore, at this point,
> %eax contains the address of the per-CPU srcu_data structure, but
> without the per-CPU offset having been applied.  Also, %ecx contains
> the array index, either 0 or 1.  Here we have zero, which is perfectly
> legitimate.
> 
> 	  2a:*	64 ff 04 88          	incl   %fs:(%eax,%ecx,4)
> 
> The above instruction does the this_cpu_inc().  Here %fs is presumably
> this CPU's offset from the base address of the per-CPU ->sda pointer.
> 
> 	  2e:	f0 83 44 24 fc 00    	lock addl $0x0,-0x4(%esp)
> 
> The above instruction is the smp_mb().
> 
> So here are a few questions that I would ask:

Oh, and this one:

0.	Did someone call srcu_read_lock() before init_srcu_struct()
	had been called on this srcu_struct structure?

							Thanx, Paul

> 1.	Did the init_srcu_struct() for this srcu_struct report an error?
> 	(Though with current mainline, that memory-allocation failure
> 	would more likely have page-faulted in init_srcu_struct().)
> 
> 2.	Has the srcu_struct in question already been passed to
> 	cleanup_srcu_struct()?
> 
> 3.	Has the value of %fs been clobbered?  Though that seems
> 	unlikely given that it also happens on aarch64.  Plus, the
> 	smoking gun seems to me to be the zero value of %eax.
> 
> 4.	If the above three questions fail to provide enlightenment,
> 	I suggest recording the ->sda value and adding debug checks
> 	to anything that can unmap memory...  And recording the value
> 	of ->sda somewhere to check to see if it is being changed (it
> 	should remain constant from init_srcu_struct()'s return through
> 	the corresponding call to cleanup_srcu_struct()).
> 
> Please let me know how it goes!
> 
> 							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200917205844.GA1978%40paulmck-ThinkPad-P72.
