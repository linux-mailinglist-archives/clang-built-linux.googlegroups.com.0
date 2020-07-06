Return-Path: <clang-built-linux+bncBAABBMPNR34AKGQEIK2VHZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A76C21626D
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Jul 2020 01:41:39 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id t16sf21882599plr.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jul 2020 16:41:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594078897; cv=pass;
        d=google.com; s=arc-20160816;
        b=bxr9/i1TCmnBU3z7cGvLj+L4QMeVv0yEEwwAIerxP1+9Rt6iLKXcM4ogNgUFWOrF0f
         mfkArWtune/nL5Rac6vbu8dRwbzDPps5H8yIF55fGCxuI0R8v7OvD/u0ALqqk02XwP11
         p5h9hI2hpMCXUpopW0QM81gIdjU36FBGId9LQ6Axk7J/7y81BOLdcwgQwsv8sPkGBKBr
         9sS4t2+3O7m/q0oPMyo4PEaUvLOfFg8BJoB6IE9HPgkUOLDRpl+51HwmjGiU0n15cWCQ
         0cYfbiQEPws5mAhT4iiP3HJ+xEDymZlTOyp0rG3H2M7q5vuB/XbELAPzu5qdarhro1Hq
         9svA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=pO+fUWeCc5dxv8HKnxtAiCH91EuHmW0bMrCuIIHsing=;
        b=x+EjnEXmjFZ7L76/xBda6NqOt/EioBiqRISusJfU3Zpir7As62l5NRsK1sU8yfjtvR
         aJyJqwtu00Z0x8YGOmHPMOLUL5Wz6Es4d94+A9XNKboFIjrys85t3P5ha/7bWE5TqQc9
         /Hyh3k5gCJZ8GcMQahAaaJDEAlKFkrnPpo5rtD3iJBidR+AXhDrrO0ZyWmrkANmL4jpL
         rNc197H1B4ito+0fI8OFxVEacYvlwWXa85b3VcgNf2XqowND4b7ATdXoZSBcOnYW8q8d
         2BaooeBgvW6cnfWnsiYOJy7iluvKjrSRMcKsBiWIOZQpC0QYQiQgYnzxKieL6SePTWKz
         duiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kH6JpuxO;
       spf=pass (google.com: domain of srs0=6sad=ar=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=6SaD=AR=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pO+fUWeCc5dxv8HKnxtAiCH91EuHmW0bMrCuIIHsing=;
        b=o4E9rMxlTXUn/flF5OzOXXp79SezAzv14cfSWW4DvcvCC/OS6crf0PQXgh4lhHtF8E
         fF760v6GsXsGtpN1yNGjMkrNjDHdH4HcCM9dSMLIUoKIe/N4lT0uSZLPhvIkOB5UXsKJ
         uA0gOYl+iLA4ZXh5l62eeYPiuLId4tE/wGHQsudJucCe/XrunSL5HQ50AAC115xjPz+x
         BlWaKNGAupujjEeuZHoIShd7qgMFLJTwvk8o2h1zOVxcP2WS8o2GbyjIz86b+P2ajelC
         UHO2A3xLIllbqYnyvhfp3f7WXBFMMJnEhLg5XLftKE2EuEAckvAQevqdmJzJftPoE/as
         OryQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pO+fUWeCc5dxv8HKnxtAiCH91EuHmW0bMrCuIIHsing=;
        b=YwrQcUfFN9qaaCBK7uRUDAQkB1J2JkALaOFCoy8HFYLVNwYQeRQlpxrboxrH05aQHn
         eE5BHzQQ9Fp7xZoyM1qnUhm7Me7a+JNrngq5cEGgVWxGdXFk4iyH8xO77K5NZgVXua7i
         COnEljAFv1EaSyole9icsSfz/Vs2bNFNePTDT6jslv0MvjIDRNDOzJsEpbWN6fWbZOou
         aTYUQrQEgPp/qQw9577i6q0ZJa55rf/IsVvJxTliDVKYTgAUR/KqOm62dlSWVvS8SZw6
         G1en53YcVldb0s1ZTCm52YkQXS7qikELHc8YZ68YMoAsurO2cKgQdg5QF+IjPPdLWNAT
         E4fQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532IRtAXQHyitTf/lps3nEFXGeDQtYs4KCsDeIhvmkh+vWClECPp
	kinBRkT9bcecI3wWFls3Pmw=
X-Google-Smtp-Source: ABdhPJxhsdpOhB4z79gOZsijP3whGr7pU9nSpXaBhSDSsZC/HcJr85YdgpI30USl33MTIet9ppPyGA==
X-Received: by 2002:a17:90b:1106:: with SMTP id gi6mr1584650pjb.2.1594078897732;
        Mon, 06 Jul 2020 16:41:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:1b4d:: with SMTP id q71ls424931pjq.2.gmail; Mon, 06
 Jul 2020 16:41:37 -0700 (PDT)
X-Received: by 2002:a17:902:b705:: with SMTP id d5mr32718483pls.118.1594078897402;
        Mon, 06 Jul 2020 16:41:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594078897; cv=none;
        d=google.com; s=arc-20160816;
        b=CAZyx3Y5Gvz3ahubQ4MTgDA/yfBWXfv9e0QvMnjYWlT/M+bQhRdEDT/7HU3DUjGIDX
         QTxf4JGwcjJYy4B4abxW0+FvAUGbtChkHUMsu2gzgwk9Vf+hCW+ibJ/8m2RtgkAafs88
         GYI+mMZV0sV5PyptxyYfFzQj0Qi5nMMpc0QapGZy3WAM2BVEp2K2BQoLbPw+jSjnqxBe
         SA4DQS500cKcOWPayV0KWArW7NjUvnL4mu1CKbG5J9o5vXEedzDoNbWj+pYQH3do9W77
         Cxb5jTXcfHopWtrNTGCmJf/ibXR4UFgbpxj/zQwY4BdMTbM1+QFS6kVZfVyQCeyjYxf0
         zmzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Dhub6XbyioZ4Zjt+sCpQYvmyOI8hwv58/acHXCh1GqU=;
        b=rUJcNEV+e87K46J2eMWYHyZluPxUD4SQYHs0a9ITdYan18lKU8ypHkwnLKMDdrNn3N
         ON3mmcaoTBcvR1JkdAWhu+Qqjs5RhMRApp4VvZvHsbkX7F1jRKrVJCdMki1p6yOWSpFi
         v0mIHP2AFRMs36IT8lrKnoOR/jLKFWzdEEOOJqODQ7C7sxJn9TwfN88oo2yRiNLFFw18
         Z6ApCJnK3Lnkz08sET/lTHuQByqpcTD7RmvYk/AfG/CLYnu5clah5MsA+ZpRr/2r9hHq
         F16MBR1fRgjF2d8tSB52pF59Yz/M5BP1Vfky/uflG4glirILdgvi4FkXGBX8rwCBCYi6
         gEjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kH6JpuxO;
       spf=pass (google.com: domain of srs0=6sad=ar=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=6SaD=AR=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g5si140610pll.0.2020.07.06.16.41.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jul 2020 16:41:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=6sad=ar=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-111-31.bvtn.or.frontiernet.net [50.39.111.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1A9A620720;
	Mon,  6 Jul 2020 23:41:37 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id F16FE3522637; Mon,  6 Jul 2020 16:41:36 -0700 (PDT)
Date: Mon, 6 Jul 2020 16:41:36 -0700
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
Message-ID: <20200706234136.GS9247@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <20200701150512.GH4817@hirez.programming.kicks-ass.net>
 <20200701160338.GN9247@paulmck-ThinkPad-P72>
 <20200702082040.GB4781@hirez.programming.kicks-ass.net>
 <20200702175948.GV9247@paulmck-ThinkPad-P72>
 <20200703131330.GX4800@hirez.programming.kicks-ass.net>
 <20200703144228.GF9247@paulmck-ThinkPad-P72>
 <20200706162633.GA13288@paulmck-ThinkPad-P72>
 <20200706182926.GH4800@hirez.programming.kicks-ass.net>
 <20200706183933.GE9247@paulmck-ThinkPad-P72>
 <20200706194012.GA5523@worktop.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200706194012.GA5523@worktop.programming.kicks-ass.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=kH6JpuxO;       spf=pass
 (google.com: domain of srs0=6sad=ar=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=6SaD=AR=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
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

On Mon, Jul 06, 2020 at 09:40:12PM +0200, Peter Zijlstra wrote:
> On Mon, Jul 06, 2020 at 11:39:33AM -0700, Paul E. McKenney wrote:
> > On Mon, Jul 06, 2020 at 08:29:26PM +0200, Peter Zijlstra wrote:
> > > On Mon, Jul 06, 2020 at 09:26:33AM -0700, Paul E. McKenney wrote:
> 
> > > If they do not consider their Linux OS running correctly :-)
> > 
> > Many of them really do not care at all.  In fact, some would consider
> > Linux failing to run as an added bonus.
> 
> This I think is why we have compiler people in the thread that care a
> lot more.

Here is hoping! ;-)

> > > > Nevertheless, yes, control dependencies also need attention.
> > > 
> > > Today I added one more \o/
> > 
> > Just make sure you continually check to make sure that compilers
> > don't break it, along with the others you have added.  ;-)
> 
> There's:
> 
> kernel/locking/mcs_spinlock.h:  smp_cond_load_acquire(l, VAL);                          \
> kernel/sched/core.c:                    smp_cond_load_acquire(&p->on_cpu, !VAL);
> kernel/smp.c:   smp_cond_load_acquire(&csd->node.u_flags, !(VAL & CSD_FLAG_LOCK));
> 
> arch/x86/kernel/alternative.c:          atomic_cond_read_acquire(&desc.refs, !VAL);
> kernel/locking/qrwlock.c:               atomic_cond_read_acquire(&lock->cnts, !(VAL & _QW_LOCKED));
> kernel/locking/qrwlock.c:       atomic_cond_read_acquire(&lock->cnts, !(VAL & _QW_LOCKED));
> kernel/locking/qrwlock.c:               atomic_cond_read_acquire(&lock->cnts, VAL == _QW_WAITING);
> kernel/locking/qspinlock.c:             atomic_cond_read_acquire(&lock->val, !(VAL & _Q_LOCKED_MASK));
> kernel/locking/qspinlock.c:     val = atomic_cond_read_acquire(&lock->val, !(VAL & _Q_LOCKED_PENDING_MASK));
> 
> include/linux/refcount.h:               smp_acquire__after_ctrl_dep();
> ipc/mqueue.c:                   smp_acquire__after_ctrl_dep();
> ipc/msg.c:                      smp_acquire__after_ctrl_dep();
> ipc/sem.c:                      smp_acquire__after_ctrl_dep();
> kernel/locking/rwsem.c:                 smp_acquire__after_ctrl_dep();
> kernel/sched/core.c:    smp_acquire__after_ctrl_dep();
> 
> kernel/events/ring_buffer.c:__perf_output_begin()
> 
> And I'm fairly sure I'm forgetting some... One could argue there's too
> many of them to check already.
> 
> Both GCC and CLANG had better think about it.

That would be good!

I won't list the number of address/data dependencies given that there
are well over a thousand of them.

							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200706234136.GS9247%40paulmck-ThinkPad-P72.
