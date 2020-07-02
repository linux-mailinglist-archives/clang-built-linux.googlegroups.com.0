Return-Path: <clang-built-linux+bncBAABBFOB7D3QKGQEBFEGKLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3F8212BBF
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 19:59:50 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id v15sf21224513pgi.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 10:59:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593712789; cv=pass;
        d=google.com; s=arc-20160816;
        b=yegNjFaAsv3sYzvR9c8ngxGu44SQKhKeus9zIMtKO7oHIADVsDhQ4/HywFkTe+Ylcc
         x08D8DRpVyh25ndZ50Dmp7M8yr8FGTlXwqu3h+EHQplVEcOG1czJOAMuBa6NGXqPN5TS
         u24XWxydExSOYT4aOLMjgrRDONI+wfq+V9hPxLYsI+YRaqmRLx+actY9xBDy+ydrOECu
         YvTahbH002XoRJuFXTMfM5Hkjj0tIMqksLCIF+0pxo6X/aNRuQceRNj85jEzGZ90YiDX
         YKRPUyEQbu8B4AgorpkKW/yi/Dz/yfg8qBmhJBB4l1cc4Qsw8SfCo2yoxTAHPowNWSmE
         YXLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=x7YEILNV5MI1UMQp3XE9Ix7AEdFQa5xpotDciKu3Oyg=;
        b=JqhlifXvIsIfxAVSKc7nHyDfTkxRQDCOuU39A6U7A8ldyP4WjR9dsFAKsl016JCpeX
         GtTZJYD4ooZKTQnNWUaUoJ8REw0Cvks4xs3o6HwN5l69mpG+1pQhBvQKbxT+NTTIksAL
         9TLeueofaJpGMuRhfeIHv1eKzFwPAKz8NMuU6UTbojxzk4vRcglADU+p9PnOsfLfNKh2
         RfqYTjDiqrCt7jQQNcF/pHcUcoHQSEbI5SuqUbw5jx/vOGkGQlVF/WgprwYvGLaiAF/U
         TLMJQd14F6IPjR4NRmZod84GedTDwp928QzSsGSOPnwfD+PYs9UhwvceFVyJzvMeueog
         NuWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YSECcQsG;
       spf=pass (google.com: domain of srs0=jmjs=an=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=JmJS=AN=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x7YEILNV5MI1UMQp3XE9Ix7AEdFQa5xpotDciKu3Oyg=;
        b=G+iRe7fpvZIrs5xFItieq6hO6tpP5ABWwWP8oxWlFQW/OhsE5Q/Zzs4gMOe2sm2tPo
         d2EYlXHcsPvha0edDQcky9EQTFvQ6WeI9m/UP7pe6/r9g+y4OdqcNQM4kOiVKRBgFddq
         JeCJ4qvIEeolXg5QkL2nXyLX3SxnE5kyDQv5FnHjHTnB+l1+o9RxHszK9LJMXYzSAaxD
         knggEXeRm6rDDKZxvjq7HjOnkZIiHiGPZCM/sMeM/HUxEoyLBeXkpAhsfhPsi77civ13
         d9h0j6MYE51lhdP/YO51vijAXdgUsIxjC0tS69TdoIuS2cgMLScwi3zbgXVDTaDmJeMz
         eqtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x7YEILNV5MI1UMQp3XE9Ix7AEdFQa5xpotDciKu3Oyg=;
        b=MAS4oCL4apgwXM9J9krnWsh6HnVbnJuCNGKJhaOPAHNVGG5/oq39cuUfEQaRt3yRC3
         Pi+VEvPJnwbC4M44nNZf7yT6hptB3l0axteBs2Vh2LCzRjAxWN6aLgsUeTFhAYwPJrvj
         Qw+wCy+cqf0jfF8AjH+iaqi9vYw9DNcjslO9YhLQkW1XYBwmQ16FZDFwRAoRMTRMO7wi
         HdsgF2ioqhKwz2WfzR464w6i2ODzX8vbJc/gX/Ilkam+LgDrzGjDBHE8hDMNVdXbdQgK
         DLKXsVwDbPF5QwRfFhc8tX5NXMTXBP9EOFaBnOLJW0+VRoIjYfbsg0r0y+IAodTjw1BV
         leiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530i5pY5iZktYhRBMNZkHrz7K+MWOj+Mb9LF2srE51vq1M3zGiI/
	7lw7bTkfSpp9Lx726QFQmhU=
X-Google-Smtp-Source: ABdhPJwgJqSf9J7xrSQ0hkPZoaBWohQvpz+5iibw0iGRhKAeg78ZAna4zxyL57U16U0GACxXfq4AIA==
X-Received: by 2002:a63:7f17:: with SMTP id a23mr25262434pgd.3.1593712789127;
        Thu, 02 Jul 2020 10:59:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8c01:: with SMTP id m1ls1888509pfd.2.gmail; Thu, 02 Jul
 2020 10:59:48 -0700 (PDT)
X-Received: by 2002:a63:8c18:: with SMTP id m24mr26429787pgd.289.1593712788746;
        Thu, 02 Jul 2020 10:59:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593712788; cv=none;
        d=google.com; s=arc-20160816;
        b=xB9fMJYPbQwyLQeNknLQauXphW+vw1Fa+VuVoxu0LOkLZclr0B+XHo4OQljyWXR/jv
         p5s4YgcpyNadqtZ3Xe/iqjxIbcnZeVRYgjQxoue5zFy0o5GVhhs80a4uGF6Ta/ymLkxW
         38EVc5xmmRKQtc3ol6OlaRc5LmftQgFEnBKm/KIz96BXXtyLiHjLZ7eglp8J/8frZl7G
         jlrPmlDU8GNk2Af+mmDk8TDSfPYDiXOOjAQ0pAF4ItGTdygUxyRMmmbaoTNg2LWeEU/d
         4rY5aw9bJDYkJk2yanL1b6DkJhbfEaAwld+b/9uvGh3/kaSrrOrARTnDrekedOUZxHLU
         gBow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=LIrAkIuvn2bZaDAYjO4om/CRSI6yCnBbSDBFLUUYERM=;
        b=pKaCNPZAXCl9Vp7AaurNCy8v5qzlzz4k5KUuJp684rr9DM94D3mbUI73DjWnzoicRx
         /iybPga42P4V842PzpnUJ7LyYr31X7nHOwIjdE7LigZmmLHyqlW2BSHzN6VD7XuCjoQl
         35tGUhqn1cH8tTm9CXUV/DTIfkNuldSnz04X1ZqFREDvsoVCxXERCRRjplz88Mis6bUG
         r6g5/4LbJhYcn9pxo6y64RLDn2KgxYnpZPvniZX4M5be9jzx0P9uI2syK05zraD5PSle
         NMA5q9avIr5g9uJJb07ED22VqVO+RTNjH01jQ+oSji5yOBCXz7dtzNOvEUZNO88+4vID
         M0gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YSECcQsG;
       spf=pass (google.com: domain of srs0=jmjs=an=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=JmJS=AN=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j23si712603pfr.0.2020.07.02.10.59.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 10:59:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=jmjs=an=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net [50.39.105.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 69C4F20737;
	Thu,  2 Jul 2020 17:59:48 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 52653352334B; Thu,  2 Jul 2020 10:59:48 -0700 (PDT)
Date: Thu, 2 Jul 2020 10:59:48 -0700
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
Message-ID: <20200702175948.GV9247@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <20200625085745.GD117543@hirez.programming.kicks-ass.net>
 <20200630191931.GA884155@elver.google.com>
 <20200630201243.GD4817@hirez.programming.kicks-ass.net>
 <20200630203016.GI9247@paulmck-ThinkPad-P72>
 <CANpmjNP+7TtE0WPU=nX5zs3T2+4hPkkm08meUm2VDVY3RgsHDw@mail.gmail.com>
 <20200701114027.GO4800@hirez.programming.kicks-ass.net>
 <20200701140654.GL9247@paulmck-ThinkPad-P72>
 <20200701150512.GH4817@hirez.programming.kicks-ass.net>
 <20200701160338.GN9247@paulmck-ThinkPad-P72>
 <20200702082040.GB4781@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200702082040.GB4781@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=YSECcQsG;       spf=pass
 (google.com: domain of srs0=jmjs=an=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=JmJS=AN=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
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

On Thu, Jul 02, 2020 at 10:20:40AM +0200, Peter Zijlstra wrote:
> On Wed, Jul 01, 2020 at 09:03:38AM -0700, Paul E. McKenney wrote:
> 
> > But it looks like we are going to have to tell the compiler.
> 
> What does the current proposal look like? I can certainly annotate the
> seqcount latch users, but who knows what other code is out there....

For pointers, yes, within the Linux kernel it is hopeless, thus the
thought of a -fall-dependent-ptr or some such that makes the compiler
pretend that each and every pointer is marked with the _Dependent_ptr
qualifier.

New non-Linux-kernel code might want to use his qualifier explicitly,
perhaps something like the following:

	_Dependent_ptr struct foo *p;  // Or maybe after the "*"?

	rcu_read_lock();
	p = rcu_dereference(gp);
	// And so on...

If a function is to take a dependent pointer as a function argument,
then the corresponding parameter need the _Dependent_ptr marking.
Ditto for return values.

The proposal did not cover integers due to concerns about the number of
optimization passes that would need to be reviewed to make that work.
Nevertheless, using a marked integer would be safer than using an unmarked
one, and if the review can be carried out, why not?  Maybe something
like this:

	_Dependent_ptr int idx;

	rcu_read_lock();
	idx = READ_ONCE(gidx);
	d = rcuarray[idx];
	rcu_read_unlock();
	do_something_with(d);

So use of this qualifier is quite reasonable.

The prototype for GCC is here: https://github.com/AKG001/gcc/

							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200702175948.GV9247%40paulmck-ThinkPad-P72.
