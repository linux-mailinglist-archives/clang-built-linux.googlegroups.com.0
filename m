Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB45W4T3AKGQEM5SU2UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2AC1EE82D
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 18:04:04 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id w65sf4284638ilk.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 09:04:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591286643; cv=pass;
        d=google.com; s=arc-20160816;
        b=v8Mi/M68dMRLWWgRmCTn0fBXxkZbeIJq4pngtmpxEG0NTPBPf8UgLrrDH3MI5UvDff
         iQQnDoxH6QD2Fe0qll8B38Y7efso6wN5s0uMGA8e6h3z3okcr4AlP1iJkT+LVJHWYXx5
         aAW2TjngzU/O8tkHfwWr4KsAU5/mBoqHK4KJaUxb35A5itcVb2DkE9iu6l5WjCImZr63
         yk5NgP/uEUqaJpmJTk+T1HpZpZEQ85QhJ/w0WDP4cSuFhR09tDlr56WoSx+zERZk2pH7
         85NwyRlLL1QBIR9BnkKw5rdoLxgXkaejU4grDNJqgMx9FPmdSRetS8bqklP+lqKT5aPL
         x4dA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fl8z9Ua5j+yBsHusnfjTsKPw5X+GnPUZ4/36hSnIukM=;
        b=P2KpVLpZgPsMIBwLF7J/723ONqJtk0e0dGdn39S9Ysx8U6Tqo31FpPbDZs9B/hEXzC
         iAQwN/KZKmg2SK629gx7VJulSDu/SBNLYMdyOflxT1fdXGHbcacN4jDTEO9G0gonwJhW
         10pNJiFwUuP/jicTR7+YZHaYrtLyANQF0fI6tggDBefPVNk1+YbOU6cSCo7hwy6dPoZj
         WHhaxLYzQnLoga0VhdxmAqdH5M/CRr3OxaK2+glanHQn1vCfSH/VD7l6zug3DlQwkMeh
         5pvPXU52bBRux42UFLErB94Q2Zzo5nXYQzS5NdYiIa7vhhIqHL2uWv2B/55aZ1yNHADw
         CpFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=pBLxwY3F;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fl8z9Ua5j+yBsHusnfjTsKPw5X+GnPUZ4/36hSnIukM=;
        b=BmJilW3oEVfx/S7B/Eez1zqFeJlq2qTIXM6tqAVfPlSZFnyzeg15/rWBDoP+3cUHlJ
         rdGlBzXoBBfloo5ePTic5lKWuB7l8rOG2xFe41ncHu8bozqC0IORk+TNl0yuT1ufJI/9
         VJw3DQiNR7iI+jHotFSi2IGzPhwGZMDGc6NcJ17AuG1afa/8/B6myHkSHbFRFKgcdcaN
         EaiYhuGWVy1GCXU12Oe7gcehcgmt7fzYGAuz8Mra18ZEHNraAAczncY7JgrmgYEwvq4a
         JVvltycL4zivViF4yqK2fgZBPrWgVv9h5q0ywriQHGd/ALtIjDk1FkHzfVF1gsQqqhUC
         lfjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fl8z9Ua5j+yBsHusnfjTsKPw5X+GnPUZ4/36hSnIukM=;
        b=nwz4ftmzO80Tt1knYxPw/HMm8J7sFkcueUVQDv7EHuC2z4Yz1FtGzMXug3rgFfkEnc
         fu97kR6jbb/yQgAeMeavmywB5ZaRD6PjIRzmrlObx6FKZ8EnVKO8/Ua2XVDfutQRMjJ3
         EFfstdhLPRwSLCkVVCSkjtkUvTtev+yMo1TVdWZ6FKcDY03//H6lCXD4EZ9SXf1jR9a8
         qeNNXr4H1n+YnH/MtqHjW1XRAvywM4SWVy0JX4KYGdx2vmB4Oes/IrXSqybvnlBPVg5x
         fQyyVCGR9z8N8PUqk8V9Fv7eZtsKryeD0uWBUsE8+olscNaYzYrfjdr6VJ7jkulvwjk8
         zcVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336RyhFvyqFXJcnIbgoXKAKJM5NrP+iD7XVTqe1oSdFzzH/TCuU
	m4IHPQblVAO4mfg937Ovpy0=
X-Google-Smtp-Source: ABdhPJyZ3C49OjmWBJJayVRL8RjjA9/qiXsGkfFQaa9EHX1KJsYGUSfEPNRAy5W3mWdFZ6kzGc484A==
X-Received: by 2002:a5d:9242:: with SMTP id e2mr4526890iol.85.1591286643175;
        Thu, 04 Jun 2020 09:04:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2106:: with SMTP id x6ls1025595iox.8.gmail; Thu, 04
 Jun 2020 09:04:02 -0700 (PDT)
X-Received: by 2002:a6b:91d4:: with SMTP id t203mr4538968iod.149.1591286642785;
        Thu, 04 Jun 2020 09:04:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591286642; cv=none;
        d=google.com; s=arc-20160816;
        b=RO2CTB8/JKibTX6d5Do8rb43H+v17uTZ1kRUR4vcs1QUWCVBeeg3/mhanxeAjneVfM
         CfT7cnvMF2Hhl71SFFWqvMfTQD+Wr6MTAVDpKgSYg/cZMwJhP2HEDtedmxwHBQFvuMB/
         rExsxFSVY0aO2t3LuN05GhXUTsvov7rGYGCYUp4zhVxgMQsiCUjr7emaTShAbACXZmu7
         Nto0jkvd07yeKANWSgkgst8ZuBtsSP4oLmYDzaW8cZCIhnoRI0m9cxNfvOvcgi4cSlw6
         O1RhPt3+cTHrCtYmCAw9ule98SJvqgXrnqXE3r1UQ6+C1ENPB4dNOrQ0kW01TSVoCFlD
         MQ+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tL9q+t8Vqftp23TReUP0WPRi7rrcPb/Bl/OGGiR0B+c=;
        b=cyOhD2abDz18h6MJ93K+ZDMwqgd7JCyUl5Z6klTaL+log9owYjqcFAcwWqKDsB2ARS
         e7qm1kzViDC9DDNQuCX5pVziMbsZLiIW8n3eFp+taKIdOSkUHgGZYlRx43lv9EDBwI/1
         G6z/Q3KhVb6qdm6+98sVO1ZsVHG7pty6WESW95kJdbbg4fHa+AbuFWd2dv7dmPuHLsa9
         wW35k1YqVYsk8/eRPrsCFDF9vVpd4BFme4Dj+uEDJNTqn/ZttOqn7x3HetNvsHANzkFX
         HBCHB7SP7PyJzx0nCfTtVAAnp6j/5C1n5LxeAksXr+xBylgBta2jSLScoQZIP8WVjI/l
         4xpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=pBLxwY3F;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id 2si1897iox.0.2020.06.04.09.04.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2020 09:04:02 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgsLW-0004Zj-Fw; Thu, 04 Jun 2020 16:03:58 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 239A430008D;
	Thu,  4 Jun 2020 18:03:57 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 0DB1D20D6E7D6; Thu,  4 Jun 2020 18:03:57 +0200 (CEST)
Date: Thu, 4 Jun 2020 18:03:57 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Andrey Konovalov <andreyknvl@google.com>
Cc: Marco Elver <elver@google.com>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Paul E . McKenney" <paulmck@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Alexander Potapenko <glider@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH -tip] kcov: Make runtime functions noinstr-compatible
Message-ID: <20200604160357.GF3976@hirez.programming.kicks-ass.net>
References: <20200604095057.259452-1-elver@google.com>
 <20200604110918.GA2750@hirez.programming.kicks-ass.net>
 <CAAeHK+wRDk7LnpKShdUmXo54ij9T0sN9eG4BZXqbVovvbz5LTQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAAeHK+wRDk7LnpKShdUmXo54ij9T0sN9eG4BZXqbVovvbz5LTQ@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=pBLxwY3F;
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

On Thu, Jun 04, 2020 at 04:02:54PM +0200, Andrey Konovalov wrote:
> On Thu, Jun 4, 2020 at 1:09 PM Peter Zijlstra <peterz@infradead.org> wrote:

> > That whole kcov_remote stuff confuses me.
> >
> > KCOV_ENABLE() has kcov_fault_in_area(), which supposedly takes the
> > vmalloc faults for the current task, but who does it for the remote?
> 
> Hm, no one. This might be an issue, thanks for noticing!
> 
> > Now, luckily Joerg went and ripped out the vmalloc faults, let me check
> > where those patches are... w00t, they're upstream in this merge window.
> 
> Could you point me to those patches?
> 
> Even though it might work fine now, we might get issues if we backport
> remote kcov to older kernels.

Thinking more about this; you can't actually pre-fault for kernel
threads, as kernel threads will run with the mm of whatever regular
thread ran before them, and who knows if they have that vmalloc region
faulted in.

So Joerg's patches are pretty much the only way to guarantee remotes
will not his the vmalloc fault.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200604160357.GF3976%40hirez.programming.kicks-ass.net.
