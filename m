Return-Path: <clang-built-linux+bncBAABBBXJ3X3AKGQEKYF7HIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAC01ECD0A
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Jun 2020 11:59:35 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id y3sf915001ual.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 02:59:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591178374; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ey0KzomH577KwA884pMWLyI1crZcR1uCCADhcQH2hyb12AM1E5BFDEMriXopopNjvP
         6aaOCkKnlL836OdRqk3g/ihpIFQiQ97YtAjRE90jgReryctJnEQoD3bBS97x881/NTVw
         PflZDtVt3pcNIjA6JR7EjeD8ViCNIxq2H+HZJQn+dhMN7hQ1VBHh+HJFcv/rhBVKqAXJ
         Lko1cAzINxTf5Bf5jZh3p56L4KOUP54Nrepaz1/CvdobwCjIvp3a3pk6/+631XsLGJ2p
         VbPaeeZ5xMgMdmNeiE1t3xARlg+pGlQTmql68Qq6jNmqWxAxzZJtk3Ij2bUVJKL5k44k
         5qWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=O9mJRuB0PUI8dha4fq1m3TeKe6Cz4U4P1QyV8FGxAQg=;
        b=q6IUhGXThPPR2Ag8AVjWVlGdRsPVByIQmqtT5447yT6yAAV/Lmtg0APuJ8WVRnKaKe
         4dIncff4SBaR7bKbMhGUBqX+mjrWsweCFnJaO7ltjZ+upCBCk2dEZD5Vokzza1+f8cXZ
         sD4MK8ZBL2+O+h4fW/owKPcBWnyP6cwKUdTdkfnHJg1QgkhOENlQ/qROX/+LD4+ygDUr
         MkBthK2FaU7qaxAjqWuUNJYZDMvjYWOnX+VDceqcunUbKDSyH4EYiy4YadsKKixssT4c
         gFh5oaLFHCSIIu1Y8NowNZpiZ1tDMLTFJ0oidFX2B8QYO5UWVZnK6bsp1sFqjbpvZyWW
         Jt1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CQ3ENkUi;
       spf=pass (google.com: domain of srs0=w7he=7q=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=w7he=7Q=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O9mJRuB0PUI8dha4fq1m3TeKe6Cz4U4P1QyV8FGxAQg=;
        b=VBXaZGG9bnYBvi8OxwMaT16+6LDXFqoySisCZvvcIE5pNWIQ5BCckvRowB8zfrJcEi
         zZ9PdRvhSq+Grpup11UXRuQSAiDwNbnWQCSWAYAlbrUNxcbEfsSd6Z+HZf1pDEjVBlG3
         q19EPPDzEjpIkf1Xs1Mm9FBK6O78E+HpnnuM699w+kMwZ3E41dxsTjRYgqfMH+coMxM+
         4W5WKF1Qepka4gDxTFbALbXQUqTidvYDz47l/CLeSf7e3qEidcJlVYAlsOoDYvaP8jPl
         pv2RMk+e/OEdeYy07+6NqauqeaxTBnYb2W7r5zo7CPaAyF3a9CrcXlH6ArOILw2937sO
         KSuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O9mJRuB0PUI8dha4fq1m3TeKe6Cz4U4P1QyV8FGxAQg=;
        b=J3Epo3jjBOvHdanNESjFSpdjIHorydpc9uK1XQcH9jNnhWcXdVaA/azxRmSjmDJj1Q
         DieIZM+BEqeMvUbNqUFcHwddV4vVHLAQiE5tu0lQ9+xv/EllXXiN7jE1zC4mWaytEaRM
         Ls20UdBTLnkRMbG2d9rkcyhACXI73RRQgSbbXZVyMqnB8yxgGKR9PZVES5SzMMN+e8FP
         q/7D9x5Gda6tDMVFCVPxT1r4/djdyyTwHVtYfw0rw53KemB3Wd+RLzRYi1Fxtic6f7oR
         qlKJAU6Ij+T/vcjGTN6h+dvOYyNMZ5j56avzDVQv3TIHlY8q4IBrAcPbFCsCAXmSu9GZ
         cN8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531DbpqLh4EkMpKoWA2W4GsFVU0N8XJN9tic1ZshfybMWwnQ7Fio
	or0ltkUFIH670CCwrqv9jU4=
X-Google-Smtp-Source: ABdhPJy/F/5MvgimCMW4jS57zk+Aa9oauNVoUyTQYaLGzW/t2zmhXBjvY3hmmv3bnnhF2pUYDxC6TQ==
X-Received: by 2002:a67:af10:: with SMTP id v16mr21062951vsl.235.1591178374171;
        Wed, 03 Jun 2020 02:59:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fc16:: with SMTP id o22ls232056vsq.3.gmail; Wed, 03 Jun
 2020 02:59:33 -0700 (PDT)
X-Received: by 2002:a67:1c04:: with SMTP id c4mr22305159vsc.133.1591178373894;
        Wed, 03 Jun 2020 02:59:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591178373; cv=none;
        d=google.com; s=arc-20160816;
        b=ne6LGhWyunt5NEdVwko0DG3QnYMrMjtqQk4OnVixOcGMwAmGkrcEt4O03cR+trMSmF
         Zh25zMULKVHYsQS0ZLOVPUD3E4FVOk/LQpc5R3t2zKrjEiK8+a5SOSlWXzML/YF9+0UL
         Pkk5NSylvGIiocAmneIVR5rMC7v+d+d2sR1ZZIw1piHOuD+Ch+4YjEofiYCWMfqIP043
         4izevcyoAO0G3e2jEs1Ypy5tv7wtafGA9B2otSpGEbcgyHA41VkrSlZ6FpcJkVRe3sgf
         nxIa0sxxhhABwhAI9N+IX45GcH7l+tn7K3Mza/AYDFNAlGz9t8FnIVtz3PzIdChvfYWi
         zAWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=N6k03mZOf1ftiB88hi2ahL30XDBOo8daa7T39zy0Rso=;
        b=g26DbGiM0Kg+YUnqwwcFdlPpdKPwO4zCd4uEIoWLSMePYilDiRwnH5Z0JPFWhO59hB
         WChGl8F+N5lpvsNUIJGMzt+bfg2NIMqAQJEF2XI7n8aAlyL6li5IAdsZDE+6PjKWKNVy
         57AlaiHWiC11helVr1N8hTJFqj+f/fpONDPwByCk58zH6lUO5pZ8t5g2Az65YB1eMftR
         08dtSspcFC76xUqBrq+Fgy7YoIbOzDvIxTiunNAqTuYV298XSojk2lze8bQOM3dr/xGl
         YViYxr6NIwVy8ylsxibglWdJbIHat87LWJ9k09nl3v1uxwdnWxzrrN5n9uTnKxbRJvj3
         mdMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CQ3ENkUi;
       spf=pass (google.com: domain of srs0=w7he=7q=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=w7he=7Q=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t24si94810uaq.0.2020.06.03.02.59.33
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Jun 2020 02:59:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=w7he=7q=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net [50.39.105.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B958720734;
	Wed,  3 Jun 2020 09:59:32 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 9D36D352281E; Wed,  3 Jun 2020 02:59:32 -0700 (PDT)
Date: Wed, 3 Jun 2020 02:59:32 -0700
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
Message-ID: <20200603095932.GM29598@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <20200602184409.22142-1-elver@google.com>
 <CAKwvOd=5_pgx2+yQt=V_6h7YKiCnVp_L4nsRhz=EzawU1Kf1zg@mail.gmail.com>
 <20200602191936.GE2604@hirez.programming.kicks-ass.net>
 <CANpmjNP3kAZt3kXuABVqJLAJAW0u9-=kzr-QKDLmO6V_S7qXvQ@mail.gmail.com>
 <20200602193853.GF2604@hirez.programming.kicks-ass.net>
 <20200603084818.GB2627@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200603084818.GB2627@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=CQ3ENkUi;       spf=pass
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

On Wed, Jun 03, 2020 at 10:48:18AM +0200, Peter Zijlstra wrote:
> On Tue, Jun 02, 2020 at 09:38:53PM +0200, Peter Zijlstra wrote:
> 
> > That said; noinstr's __no_sanitize combined with atomic_t might be
> > 'interesting', because the regular atomic things have explicit
> > annotations in them. That should give validation warnings for the right
> > .config, I'll have to go try -- so far I've made sure to never enable
> > the *SAN stuff.
> 
> ---
> Subject: rcu: Fixup noinstr warnings
> 
> A KCSAN build revealed we have explicit annoations through atomic_t
> usage, switch to arch_atomic_*() for the respective functions.
> 
> vmlinux.o: warning: objtool: rcu_nmi_exit()+0x4d: call to __kcsan_check_access() leaves .noinstr.text section
> vmlinux.o: warning: objtool: rcu_dynticks_eqs_enter()+0x25: call to __kcsan_check_access() leaves .noinstr.text section
> vmlinux.o: warning: objtool: rcu_nmi_enter()+0x4f: call to __kcsan_check_access() leaves .noinstr.text section
> vmlinux.o: warning: objtool: rcu_dynticks_eqs_exit()+0x2a: call to __kcsan_check_access() leaves .noinstr.text section
> vmlinux.o: warning: objtool: __rcu_is_watching()+0x25: call to __kcsan_check_access() leaves .noinstr.text section
> 
> Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>

This one does not apply cleanly onto the -rcu tree's "dev" branch, so
I am guessing that it is intended to be carried in -tip with yours and
Thomas's patch series.

If you do instead want this in -rcu, please let me know.

							Thanx, Paul

> ---
>  kernel/rcu/tree.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/kernel/rcu/tree.c b/kernel/rcu/tree.c
> index c716eadc7617..162656b80db9 100644
> --- a/kernel/rcu/tree.c
> +++ b/kernel/rcu/tree.c
> @@ -250,7 +250,7 @@ static noinstr void rcu_dynticks_eqs_enter(void)
>  	 * next idle sojourn.
>  	 */
>  	rcu_dynticks_task_trace_enter();  // Before ->dynticks update!
> -	seq = atomic_add_return(RCU_DYNTICK_CTRL_CTR, &rdp->dynticks);
> +	seq = arch_atomic_add_return(RCU_DYNTICK_CTRL_CTR, &rdp->dynticks);
>  	// RCU is no longer watching.  Better be in extended quiescent state!
>  	WARN_ON_ONCE(IS_ENABLED(CONFIG_RCU_EQS_DEBUG) &&
>  		     (seq & RCU_DYNTICK_CTRL_CTR));
> @@ -274,13 +274,13 @@ static noinstr void rcu_dynticks_eqs_exit(void)
>  	 * and we also must force ordering with the next RCU read-side
>  	 * critical section.
>  	 */
> -	seq = atomic_add_return(RCU_DYNTICK_CTRL_CTR, &rdp->dynticks);
> +	seq = arch_atomic_add_return(RCU_DYNTICK_CTRL_CTR, &rdp->dynticks);
>  	// RCU is now watching.  Better not be in an extended quiescent state!
>  	rcu_dynticks_task_trace_exit();  // After ->dynticks update!
>  	WARN_ON_ONCE(IS_ENABLED(CONFIG_RCU_EQS_DEBUG) &&
>  		     !(seq & RCU_DYNTICK_CTRL_CTR));
>  	if (seq & RCU_DYNTICK_CTRL_MASK) {
> -		atomic_andnot(RCU_DYNTICK_CTRL_MASK, &rdp->dynticks);
> +		arch_atomic_andnot(RCU_DYNTICK_CTRL_MASK, &rdp->dynticks);
>  		smp_mb__after_atomic(); /* _exit after clearing mask. */
>  	}
>  }
> @@ -313,7 +313,7 @@ static __always_inline bool rcu_dynticks_curr_cpu_in_eqs(void)
>  {
>  	struct rcu_data *rdp = this_cpu_ptr(&rcu_data);
>  
> -	return !(atomic_read(&rdp->dynticks) & RCU_DYNTICK_CTRL_CTR);
> +	return !(arch_atomic_read(&rdp->dynticks) & RCU_DYNTICK_CTRL_CTR);
>  }
>  
>  /*
> @@ -692,6 +692,7 @@ noinstr void rcu_nmi_exit(void)
>  {
>  	struct rcu_data *rdp = this_cpu_ptr(&rcu_data);
>  
> +	instrumentation_begin();
>  	/*
>  	 * Check for ->dynticks_nmi_nesting underflow and bad ->dynticks.
>  	 * (We are exiting an NMI handler, so RCU better be paying attention
> @@ -705,7 +706,6 @@ noinstr void rcu_nmi_exit(void)
>  	 * leave it in non-RCU-idle state.
>  	 */
>  	if (rdp->dynticks_nmi_nesting != 1) {
> -		instrumentation_begin();
>  		trace_rcu_dyntick(TPS("--="), rdp->dynticks_nmi_nesting, rdp->dynticks_nmi_nesting - 2,
>  				  atomic_read(&rdp->dynticks));
>  		WRITE_ONCE(rdp->dynticks_nmi_nesting, /* No store tearing. */
> @@ -714,7 +714,6 @@ noinstr void rcu_nmi_exit(void)
>  		return;
>  	}
>  
> -	instrumentation_begin();
>  	/* This NMI interrupted an RCU-idle CPU, restore RCU-idleness. */
>  	trace_rcu_dyntick(TPS("Startirq"), rdp->dynticks_nmi_nesting, 0, atomic_read(&rdp->dynticks));
>  	WRITE_ONCE(rdp->dynticks_nmi_nesting, 0); /* Avoid store tearing. */

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200603095932.GM29598%40paulmck-ThinkPad-P72.
