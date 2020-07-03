Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBSXD7T3QKGQENBIX43I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 275FF213AE9
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 15:25:32 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id a25sf11083997pfl.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Jul 2020 06:25:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593782731; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wg18CHl3Uuix9PyiS2wekB3MXzY7oBOLjIUYJTzzrwTyL4SJr646ws4PEUf7XtlDra
         rLHFzQ7whT/cy5ODiWWLW1Ek018ohCci14ln8G79AoY7ynW6Dr1THPQmKQM2GaB4WfCy
         neov6jzXzfCjJnRPkupUA+T1pwCtRtP+ZqWCoenr8W86y/aVJj/FVHx2y+JhdoKVq5EA
         Grn0gC+85qVGoQw7EKMXLdpDSFIJ5IcBSg70n82GyNOgPDpZD9i0qVcRRmijtd7fCQ/Q
         KzOXaj9f5KAxpp65wFIQslJo2e8Hu0eASbaJruy5GOZsKVZq3CFnCsIlRSTGXqHkuE0a
         AFSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=J6DRmYB+AjOJkRP7ZrCIlsDZeAOOEV86RwpdPe9dsOo=;
        b=UO6P+1qrHCWVd78cEtDi8QrWiMPAJ1Yxu6/Hou+CY0nsq5bOQN8BOIL+RAzBTPkx9Q
         HEMSQT+E6gdFw2mrEAj8fOPgCbCDN0r+kbJ0B12VX0GELpIw/O/lAfSLtN4UjpqhPP/z
         0RkdvNGIaeJXkMV2+PhAx8gLS2ladWYUxNe3wnNYf/sxOnbsumVsn7eHDe6G04xPHF/p
         03dabSjfVDYc10lx5ay1qtU8RguTq1YWSB21tQnh4dolZxqCbqnL4C09VWJgg5dI2anY
         J7bbyNb68LnSMnXFuGVaLxcufkFc0kG/ACSfqu2fHWCI9YeM78iiDY+d0HRNjg5S0Kcv
         HobA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=zDmqGVF3;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J6DRmYB+AjOJkRP7ZrCIlsDZeAOOEV86RwpdPe9dsOo=;
        b=tXT73IBwLWsSen9iuWFmsEKPd0/Z0v+dWQRz5PWLSFHy2OKYgDhUJiosfECUYfIUfs
         HoSEHP0VVLcdYYt4kht5ItPjEcxyCEW4bhR0QBFRWXxa5Tl2rgXdpO70WvAW1Uu9VLzc
         p8HnacCAyMwHxbcjb8bc/A1y62nFa11wWuS1nsNbsw4TKSsJzw9dAye1n0yLi0HRl9EL
         B9Shpr7rv8rtiQw2lDRL5udCQXcvWAfvNjBkjWU0ztnqMsjyMD/ogFVSMSOhaE4Dp5pE
         AaBfUCnUjYvTCe94bTe9awB4mz0kOl1kWaxuaTM82VDIKRhry6gnuVS95UxxBbYBBoTf
         HD3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J6DRmYB+AjOJkRP7ZrCIlsDZeAOOEV86RwpdPe9dsOo=;
        b=GODqhqJAVQq62aXLS7Y+ddgw/0Ry27TOixx1h1VWLlRpjgTngmG3z9e8Q81VoImU0K
         KfQH0/pIWbM9d1PiDB0FJH0X99MEJL8mcphKhHw0eeKgiicq+kt3ApvjWhYsPbEWUd+m
         BgPgY7/LSSjFpsr5CUlk3UwEPSxPE00vDg0+6nQHupwiC+t6fyA6dl5UFCOkuBzb2Ki3
         gNFAiNHnvaa09Isdm1hzI630zJKRaPi/Ly5gjWdSisZh7AR59eEIfamMX4RrMuQpUN2J
         8gewJenvD5dKg/R6vPEJEPNzGFeEqQ53O/J8iyRBNHi9y3iM9fkwtzObDN8FSl3ps6Ig
         OFEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314Tv7G7la2OVr/Qng1FaPJPqrnFuxSYELEHGyvrfzi1xJ002lW
	kroawP/QhDQABzN8S0xXwcg=
X-Google-Smtp-Source: ABdhPJxh1Nki1t4MmHLZzsriUnGB+NrRgf0yGwdyL24dAfczRqv9+Z7m05JG3AZOJm52f6fupLiMyg==
X-Received: by 2002:a62:158d:: with SMTP id 135mr23951359pfv.254.1593782730756;
        Fri, 03 Jul 2020 06:25:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:582:: with SMTP id 124ls3106236pgf.6.gmail; Fri, 03 Jul
 2020 06:25:30 -0700 (PDT)
X-Received: by 2002:a63:b18:: with SMTP id 24mr30294086pgl.406.1593782730293;
        Fri, 03 Jul 2020 06:25:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593782730; cv=none;
        d=google.com; s=arc-20160816;
        b=BkxsSA2EOKFvV+PlKtlJyWFe5N7+XjdEfI65nHjYp4DeS+64fGO4HiDxp+SpE3WIPb
         fa3wsy1YvzabUNYsVrCFHyZZH6jOHt7ysrviz+wYxwBoKS7FNAi0IK9Exct/6WVsXI0v
         WqasOqBqN9FE+ZCGcW1JDZAXeI/Fj5h7hOB7abw9thMg+eVHWB3Poc2MxuL9GDtbRoDm
         jSinT2/a7uuc86w21Sgk4ZcxPbbKeLXGp5I3N4T2Nzh8PjxMPrBsxF0hCK9V+euYdCSG
         c1ozlaRcXQKqyGC/hT/jOZ4jluKkhJPHeVOacd0IPEPNLa5VvhVaLiRGyYviORljynWa
         AgTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mTUdInrl0UZ5/CAUTtR8K6FDHzAHWr9fq3pJX4MJ7Gs=;
        b=vLTsSJLF0cROo+t5cqUUfw7CGfQa/GwkrLxEPjh2x7guf/MALVSakYJ+vIXQrKyx1Y
         iICHwjzltGySHkRxO57NN2s08z3pd2O7yVfTCtAlL0Qhc0tfzD6Gn6dnITBNosFJ0/Ak
         9vmeZzn6HdOqNAc5vVJx4Mm1Wp3nWVcpQLnHEuG6/pCaS7+56zzQQcDRj10ExPzhY81z
         Gne/HSxXVDVnHU245SS4AaE8TfmrCJksBrfa9vNpqeWucLbb5+stAFg5r5JVEs5SavZc
         4rQLhRV+fPN5uK0bq7fuEfPJgNYBAxTRC5/oo/g1VN8KK0EYa/Kp0ZPLs9qQ9yhHcto0
         SWAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=zDmqGVF3;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id ob1si154612pjb.1.2020.07.03.06.25.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 06:25:29 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jrLgy-0002iy-Rt; Fri, 03 Jul 2020 13:25:25 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 718DD301124;
	Fri,  3 Jul 2020 15:25:23 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 5F59B20A9E7A6; Fri,  3 Jul 2020 15:25:23 +0200 (CEST)
Date: Fri, 3 Jul 2020 15:25:23 +0200
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
Message-ID: <20200703132523.GM117543@hirez.programming.kicks-ass.net>
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
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=zDmqGVF3;
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

On Fri, Jul 03, 2020 at 03:13:30PM +0200, Peter Zijlstra wrote:
> > The prototype for GCC is here: https://github.com/AKG001/gcc/
> 
> Thanks! Those test cases are somewhat over qualified though:
> 
>        static volatile _Atomic (TYPE) * _Dependent_ptr a;     		\

One question though; since its a qualifier, and we've recently spend a
whole lot of effort to strip qualifiers in say READ_ONCE(), how does,
and how do we want, this qualifier to behave.

C++ has very convenient means of manipulating qualifiers, so it's not
much of a problem there, but for C it is, as we've found, really quite
cumbersome. Even with _Generic() we can't manipulate individual
qualifiers afaict.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200703132523.GM117543%40hirez.programming.kicks-ass.net.
