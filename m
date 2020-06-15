Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBOMOT33QKGQEJKFUDTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9194B1F9A60
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 16:35:39 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id e28sf12235629pgm.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 07:35:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592231738; cv=pass;
        d=google.com; s=arc-20160816;
        b=HATSBq6nz8z1k2ba4PzQWp6kCUh+igV71rx/V6oQiz8QUsjqGbWl5jUzjvEjP4a1fS
         LHXznOkJwwmIiuBPmJ3WP+GQqAjOY5eD6i/RQeh5EjBhTcTwfK8OKS5EQBH6IKcEs/Jn
         7srX9YyjGRGrOW1iIu6hXm8cHCh2Xwb3e9vDBGUdoax2c1kzukFMxhZ0oMJmtPv5u4ze
         gGpipxXeIxk7L3q90GYjmdMPZNnwZyM76fmpz1uStgLg0wUNg2qg4xcSb8SgBb0xa2aZ
         2YLTpGwQ1wv4CvOYCPo+lpRAtULCdZTb585uee9SNeD2AM9cQiydiK+DqEWpSl390Fo/
         XcVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=R6vq0H06Rh4ieovMYlwjrQN4DpjKkEBgWzw8AkDoJtc=;
        b=o81WWLOS6VNyYPn9fZAh8/O0oogWUc1MdQV4VDiaUDsPRmIYgzfai+IJUg1QzC7Aqb
         Gd3B9/nHvmBAsPzv3NoLIiH1n4FZQjGAdoIE9IPZy4xpmtzpYwBHAy8wWba9jta7PElu
         +yh06A6GNkMCv3wfHTqeBbWYINE3rzVjU1U1eu/35lcwALoZJcOJFcVRqRf0gUL0+dhy
         7Gvypx4Wn+cp0Pw7rvVbHTUF9b7k/RwUMbsph9qdSObL7SeiVwLgJODu/A/g+VHlL6/2
         wucOjfZCGa91AQl/Hv1ODntW/eS4TtJ2h1XZOk+2nna5e0XDQ22OYr4d7RMC8QDjOE96
         Q+vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=dt0mlxnY;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R6vq0H06Rh4ieovMYlwjrQN4DpjKkEBgWzw8AkDoJtc=;
        b=WH0Z2mehMlWmEkRov7sXtqlfJ5c5lI1F6Kyd7Bf265zneyx+WHUhiL8CULQTlAWybi
         eGPnnfsmrzu0ysOLZQfK0px8LHQuRsRlHlfFyo9CsP0Y6x77em+SH7cTwfLiRlPEhqM4
         /3gER2bIFt3tLfVwtCYIzr4uSCceyvGW66ESkMfSnz+OdFv9Sil4vbX8oKlfqZr8EL/N
         Oqfjx4jMufdu+3y3Q6mGwF8tKHVl+kXEcXvukEyf6iHOsvJYEG/mf0wrny1E7Rsn5vTm
         LOUAmPFuX/cLL5/hSAj8jPsjqcTyBBp/naX330sEV1Bw7EbNxk2JItHsqcvIhIeQo0Oj
         +Yjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=R6vq0H06Rh4ieovMYlwjrQN4DpjKkEBgWzw8AkDoJtc=;
        b=PpnXyQ2fes4V0gTYRCHjRJ2hxOqzTJKrxirXWO5+9RXoq5VHLeXX9glofHhKoLoPvj
         X6RrH3mMsKQfM8GmYoeHpkue9NfNnWtfr8LJXo6OZLzjVfuvY9yDHxiMT3uo7cGUMYBH
         7a1bfPct3BgTi5n7AOKC4GK+JKQV+V1d55nBF9dR4+2zKZCtt+fe9ZkduSqFuL3Sb6ta
         cD/g8In42YJVmpjRpI4z15CpZiunoaAolw6WM5ywmqy0oCsAnAKq7ffMgVM9bz2aXm+4
         oN/NGdjf9xcjfPtRcC3XLEkvT5Vg6sQsyA18NnJoyZ5o0BEVHwtYqFU3mZUlRWPWLo6q
         snVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309huAq4SajIkxfHGXfd3q6ikrNf7xMFIpAO9swmXu4uPJSFl/G
	YJFUgUVSmKC/6k5q12riyEw=
X-Google-Smtp-Source: ABdhPJwGAKKKeNpHeC0K92zraAge+o6fi37J8KSwK2AuITDUROlhniE4O2ztxFmIVC1Q8Sq6DpSzZw==
X-Received: by 2002:aa7:868b:: with SMTP id d11mr22386511pfo.52.1592231737865;
        Mon, 15 Jun 2020 07:35:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:e312:: with SMTP id g18ls4078454pfh.9.gmail; Mon, 15 Jun
 2020 07:35:37 -0700 (PDT)
X-Received: by 2002:a63:b915:: with SMTP id z21mr12189351pge.145.1592231737450;
        Mon, 15 Jun 2020 07:35:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592231737; cv=none;
        d=google.com; s=arc-20160816;
        b=fshLhoQSI4WHniaavB54vVzMFzpUsfR5lYBzukZX2lhLxvVXGkjBf5eJlbFliaeZqY
         8esJJNlqi5g6de7WCEeB5/T5UMKm66ng9M+vNlFFhh0tXfse7WihUzC8DG0tD59xP1Y0
         ml8NBclNynnFH0ybB8ZxUBp/LccjSZXT9gi/8EBJ2P1tZoL6RM+QnDi80wYi73TvaVIw
         5pZqHuoljXA/TB+ztsn1jWkKlg/8VBCMH+xd72LgPBGsuOV3wQXX+UViAvkYXbjNrrKZ
         x0CgYvnvDGnxdzf0mzq3UVtHhhJPl7aGSOyVmGUKnr1ERbzeEKgdNvSKdiPylFmxlX6i
         wXIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=CNJqcR8O2MGARUu3ztkILAgDD+9fnJBIlgO1t0ryM7s=;
        b=aXuiZmWevMgtef/hCJ90T4gTLhCEG6k+JgQB8WTQ82Xt/8TenuyCd2zBWi0cypH2Gq
         Q/ebo/9CWCQdUQmWa6FZ+D0puc95X+pV0QQN4rL3suUq7dkJZahVgxGyKfxjco3wEAMA
         WIlwuw865QGhO/pO1FK9HqhZot8INEtIaFp7sV7dwMCAzWhSux2VAG4ZPDWBT+j0R6ym
         TA0IRLkRzBXWnImvA8SQbt5T2MH0AgphpPQTh61nLY7Qt0qG4unOHqfZNELPYYZ32CqF
         nrGexb+QeVKlhrHtH95n7Bja4l9SoJ1mAip+cuhIsDjOcKa882WsEQBGBoIvr9S6MbFK
         AwFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=dt0mlxnY;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id v197si995654pfc.0.2020.06.15.07.35.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2020 07:35:34 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqCr-0006Q2-GC; Mon, 15 Jun 2020 14:35:25 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id E119C301A32;
	Mon, 15 Jun 2020 16:35:23 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id C7117203B8172; Mon, 15 Jun 2020 16:35:23 +0200 (CEST)
Date: Mon, 15 Jun 2020 16:35:23 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Marco Elver <elver@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Mark Rutland <mark.rutland@arm.com>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Alexander Potapenko <glider@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	the arch/x86 maintainers <x86@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions
 noinstr-compatible
Message-ID: <20200615143523.GE2554@hirez.programming.kicks-ass.net>
References: <CACT4Y+Zwm47qs8yco0nNoD_hFzHccoGyPznLHkBjAeg9REZ3gA@mail.gmail.com>
 <CANpmjNPNa2f=kAF6c199oYVJ0iSyirQRGxeOBLxa9PmakSXRbA@mail.gmail.com>
 <CACT4Y+Z+FFHFGSgEJGkd+zCBgUOck_odOf9_=5YQLNJQVMGNdw@mail.gmail.com>
 <20200608110108.GB2497@hirez.programming.kicks-ass.net>
 <20200611215538.GE4496@worktop.programming.kicks-ass.net>
 <CACT4Y+aKVKEp1yoBYSH0ebJxeqKj8TPR9MVtHC1Mh=jgX0ZvLw@mail.gmail.com>
 <20200612114900.GA187027@google.com>
 <CACT4Y+bBtCbEk2tg60gn5bgfBjARQFBgtqkQg8VnLLg5JwyL5g@mail.gmail.com>
 <CANpmjNM+Tcn40MsfFKvKxNTtev-TXDsosN+z9ATL8hVJdK1yug@mail.gmail.com>
 <20200615142949.GT2531@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200615142949.GT2531@hirez.programming.kicks-ass.net>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=dt0mlxnY;
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

On Mon, Jun 15, 2020 at 04:29:50PM +0200, Peter Zijlstra wrote:
> Let me go look at your KCSAN thing now...

vmlinux.o: warning: objtool: idtentry_enter_cond_rcu()+0x16: call to is_idle_task() leaves .noinstr.text section

---
diff --git a/include/linux/sched.h b/include/linux/sched.h
index b62e6aaf28f03..a7abc18a7d0ad 100644
--- a/include/linux/sched.h
+++ b/include/linux/sched.h
@@ -1663,7 +1663,7 @@ extern struct task_struct *idle_task(int cpu);
  *
  * Return: 1 if @p is an idle task. 0 otherwise.
  */
-static inline bool is_idle_task(const struct task_struct *p)
+static __always_inline bool is_idle_task(const struct task_struct *p)
 {
 	return !!(p->flags & PF_IDLE);
 }

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200615143523.GE2554%40hirez.programming.kicks-ass.net.
