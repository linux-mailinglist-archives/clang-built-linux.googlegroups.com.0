Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBKH4RX4AKGQETZITUQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB28215F82
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jul 2020 21:40:25 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id h7sf3756082ljc.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jul 2020 12:40:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594064424; cv=pass;
        d=google.com; s=arc-20160816;
        b=L2TCesD6O0xsVIFx10FgjrXXvyGzZWtAgF9GiZq5Y/wkHrYbjwaZbF6TW21q3HFe7/
         RuRSpccdbYd4OyBb2drxMK/SACMM0ZLGuvGXx2ynLIwUzhdnwpqyas3Y/tgpNdDz3Ha3
         HA03d41FtDlCuhF5QGBpNA0FB/Ixdw3iA2CpVvtCAUVbAhhUsBguDefcc1q6m/8r/S8G
         EBQ6L5VFF4b4O/DA5o5jR4co7LX7ks03Lr7TArhSzvIJ2yFJK/k7hKA7llC/PFRWCwoi
         92/5loSFnDm1MUcgBNPMb8ubRDf4uJhonM7vE3g3eDWo8fKoDVEg4/bTs4BuHFMXuWD2
         TM5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=KdxPqAnCSz4nhnRibR1f6O+JP6zx/x0dBVWeI0G7w38=;
        b=GIYZLmyvwdb3dvJuGxRyVXpAByyBeweHKMqrokRz0LcaLyIfbNybMmqtrlIKFsCdr7
         FUrWyd9akYkLYvcYSQnfK6M87kEIjYp1h49885gW5rAn/+wbrFmL6p/dVaDQxKBNng2C
         aJof31hepS8hvqLEvSzrNPu1ra+Nzxpm4EayvcwE9Rr5Zaf2OSq3qS8zGiLqLoMNRKIG
         Qqj0Qg7WDJSVlj4lAHTN7mEc0SQlvpoKF46jvYHKjxocxT4oDTdz7q7kaSIlr0rb9i01
         DeBABRJK1+NTlmoIASS9J5gTBvbQgfjNz8aIm9xzpfjnMq9oLUrzq8XfjxW94GwteWOm
         /qHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=BeTQRyoG;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KdxPqAnCSz4nhnRibR1f6O+JP6zx/x0dBVWeI0G7w38=;
        b=i+iR8YHlgMXzh6sJInPSM/Hn2g/bEh956z6lmer8pZqLL2zM9DfZLepKBVkRvWfQP1
         4ILlLmwjoPFVsXPrNw+bbtXLm9SAWvVIQP77I4dZR3kf+eL99aPM7m9jBRUcFjx1et5D
         5o2V6HICrJhUW7KA2Ysy0UvtMbjCFgU4HpL+F+N8x2NA1j58nXxceOq6Tu3c896o7FLP
         lck9FVHwvHzaUvMFCsAdpdZyYxeRtOy3NInd7tapXxDHEpscy2prHlXyREQGSY6w8UEg
         4/KLru70Ybl+PsNYtGaok5ye/10DnXRX3k76UPNeziTYyCiw4Ex8qbbyxTbo0ZfvOYUq
         ZOqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KdxPqAnCSz4nhnRibR1f6O+JP6zx/x0dBVWeI0G7w38=;
        b=hI/a/X1iMwFUnbJd37NiDX0E24+utX/UwJdBq2ikEQoRBqifeClpmhXcExdO1A7tLt
         V4/hjsQ0XnfDOcAlCCYnHpD7cs/tb+22HS57YCFMPUgfdWePUVLcZTKRKCvjsFw+yLoO
         WgV9oyoWXB53JSkFAyqUOU+aaGjrNLblvEbvTjYE4wkbxR5pj1KAlWDihhO6BfNYSTb9
         QJY2tmgIw4B85nvsxzPfv0lJE4WzavK6ma3S6BnaIz8GKeKIogX5RhKc1Ys8a96ys7SO
         WWS2k6AjazUzkjqDj7koBf1XOVRTIAAvTScgeJc85IWpenGm19k/I1s+SU/9ohQeYZbF
         nlxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53197CCWSi0ILinshQG8MMGNL+Wo1jhndAgV3zal2ByqIoy1GfIs
	DJGWGxBOe6j1MZ3aGndUUfk=
X-Google-Smtp-Source: ABdhPJyIIdmMNnONRDyUruPU2E89Eo0+0W75PRqrIibrx2nTNIf3DSRkdunkuWnkkXl8N61kMMqMDw==
X-Received: by 2002:a2e:8046:: with SMTP id p6mr14080291ljg.100.1594064424486;
        Mon, 06 Jul 2020 12:40:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c188:: with SMTP id r130ls2087942lff.2.gmail; Mon, 06
 Jul 2020 12:40:23 -0700 (PDT)
X-Received: by 2002:a19:8c09:: with SMTP id o9mr31422472lfd.160.1594064423864;
        Mon, 06 Jul 2020 12:40:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594064423; cv=none;
        d=google.com; s=arc-20160816;
        b=DNQF7+79+lcmIzHTQfhkAp6TV96siOcKlSvzBFvYYLaJtQRNKSKHNggsr0WI/RFnBQ
         O6/rhjyNoZ+874alLUma1443Plblk6hoJM4XmF9fmmhYmTqoL/13xO5+SpMC4BYa7+cZ
         6BV0awiZggxTV/DhY05+mqdv0JvN/HVELdwQ3MtjHGoKmRH+0j+lD0h5qvBMK7XcgV/H
         YHKeci8xt4/uw71wnxs7Wgejv4Uw1sUJBWeKZmT0jCHLiwk7+dzNQYR/CamwgTN5HN20
         5CM47chNyn3houhLUrZg9v/BaEhbVyNAw/B3ICTXcC06F03w4yEUOZYUOw+Eg4OWjM6j
         /lsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Fga2epNTXBelXbYkbTxROQdchUloEASZKoCcJ/iKrWw=;
        b=0fwrQa566GjR7HANoJkNswv90CjaW+00XaA6YcpPWNKH5G2aBwpaD3bH4udtMlTBNq
         pZTiDCSQyW/XlcvOUE2ZLVvFKm+zzQpk+KWrzujh50aPaGpYDNbUeLjR1t2hZAHc0syF
         h+YljAnZDyxcdxx6OSk1Vl4KKz29osxxHHItnr5c62FCDYF0Pa2ROsdPPiaOnWvfsqBK
         f/xGXBR9VL1vraqXW2KyE0Ufo7a6LzEzAJsP9d+KAg2HwarlTGUVKjK5tkWlyvjBRKqx
         xvcZVLi4UcDdwdJ9VGuXtb57e/5Of9yQ3kAGQM5j9HBg3zaP8hZwGxkRiuyljNqJIeFh
         owAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=BeTQRyoG;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id k9si1574312ljj.5.2020.07.06.12.40.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2020 12:40:23 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jsWyN-0001u4-QE; Mon, 06 Jul 2020 19:40:16 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id D9A28980DD2; Mon,  6 Jul 2020 21:40:12 +0200 (CEST)
Date: Mon, 6 Jul 2020 21:40:12 +0200
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
Message-ID: <20200706194012.GA5523@worktop.programming.kicks-ass.net>
References: <20200701140654.GL9247@paulmck-ThinkPad-P72>
 <20200701150512.GH4817@hirez.programming.kicks-ass.net>
 <20200701160338.GN9247@paulmck-ThinkPad-P72>
 <20200702082040.GB4781@hirez.programming.kicks-ass.net>
 <20200702175948.GV9247@paulmck-ThinkPad-P72>
 <20200703131330.GX4800@hirez.programming.kicks-ass.net>
 <20200703144228.GF9247@paulmck-ThinkPad-P72>
 <20200706162633.GA13288@paulmck-ThinkPad-P72>
 <20200706182926.GH4800@hirez.programming.kicks-ass.net>
 <20200706183933.GE9247@paulmck-ThinkPad-P72>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200706183933.GE9247@paulmck-ThinkPad-P72>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=BeTQRyoG;
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

On Mon, Jul 06, 2020 at 11:39:33AM -0700, Paul E. McKenney wrote:
> On Mon, Jul 06, 2020 at 08:29:26PM +0200, Peter Zijlstra wrote:
> > On Mon, Jul 06, 2020 at 09:26:33AM -0700, Paul E. McKenney wrote:

> > If they do not consider their Linux OS running correctly :-)
> 
> Many of them really do not care at all.  In fact, some would consider
> Linux failing to run as an added bonus.

This I think is why we have compiler people in the thread that care a
lot more.

> > > Nevertheless, yes, control dependencies also need attention.
> > 
> > Today I added one more \o/
> 
> Just make sure you continually check to make sure that compilers
> don't break it, along with the others you have added.  ;-)

There's:

kernel/locking/mcs_spinlock.h:  smp_cond_load_acquire(l, VAL);                          \
kernel/sched/core.c:                    smp_cond_load_acquire(&p->on_cpu, !VAL);
kernel/smp.c:   smp_cond_load_acquire(&csd->node.u_flags, !(VAL & CSD_FLAG_LOCK));

arch/x86/kernel/alternative.c:          atomic_cond_read_acquire(&desc.refs, !VAL);
kernel/locking/qrwlock.c:               atomic_cond_read_acquire(&lock->cnts, !(VAL & _QW_LOCKED));
kernel/locking/qrwlock.c:       atomic_cond_read_acquire(&lock->cnts, !(VAL & _QW_LOCKED));
kernel/locking/qrwlock.c:               atomic_cond_read_acquire(&lock->cnts, VAL == _QW_WAITING);
kernel/locking/qspinlock.c:             atomic_cond_read_acquire(&lock->val, !(VAL & _Q_LOCKED_MASK));
kernel/locking/qspinlock.c:     val = atomic_cond_read_acquire(&lock->val, !(VAL & _Q_LOCKED_PENDING_MASK));

include/linux/refcount.h:               smp_acquire__after_ctrl_dep();
ipc/mqueue.c:                   smp_acquire__after_ctrl_dep();
ipc/msg.c:                      smp_acquire__after_ctrl_dep();
ipc/sem.c:                      smp_acquire__after_ctrl_dep();
kernel/locking/rwsem.c:                 smp_acquire__after_ctrl_dep();
kernel/sched/core.c:    smp_acquire__after_ctrl_dep();

kernel/events/ring_buffer.c:__perf_output_begin()

And I'm fairly sure I'm forgetting some... One could argue there's too
many of them to check already.

Both GCC and CLANG had better think about it.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200706194012.GA5523%40worktop.programming.kicks-ass.net.
