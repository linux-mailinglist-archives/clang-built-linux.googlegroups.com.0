Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBQHEZP5QKGQEZKZ5AFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AF427BFAA
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 10:37:21 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id v5sf1469134wrr.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 01:37:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601368641; cv=pass;
        d=google.com; s=arc-20160816;
        b=j8k8D9pIvCiwcxGp32OpeNMHQMf5up+CXjLI/clZ2Xn5lX4BIb3inVzqb9MInQ2IRx
         YiJuzRtY/P9/6JOikN+TT11jduAM/it1csRZvD8EHV0RWW5wVRQBZULffUAhzfsJZT0Q
         rxR8WxQ7dyCsEFyOBx44FQkpytrWktWPBqXQbNy2Iz5lLGl+jlqPqMN2jUBUApIontAM
         NRSwaFKXURHZ0RbgO+iwT16a1+lKgxVVBqWpuDOA1LALxSdSSsKjla9AxWvEfnT49I7V
         ofTpuhctXvfx7cur4aEG5qVY8qXJYNIP1DG6Iy5NhIT8nyeZCyGFX7RrD4t679Qkf6rx
         ZU6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2+5QsCTUpQb1OxZhiU/TRv+selRvM5XSpQtqIlB8LTc=;
        b=FgONDUhm6FEOMW/9WFuLFGupgh+d9gF27Mqld6bckV6SRBoyegMqMAioxiziiKBmA/
         nxuR5zWE8+mydiTOeCCjOuvt67oVfBswnpHyke3Jhhg85Rns7wBO7692R1TWB7sBJRqr
         w58MEoj5Glf9qyR+TOYFwoT0aKWWaDKVLtWMeNIIiczrJv2O2OBYH9JHe1kPCK3tsw5b
         sYhZMxpELIXhO0EvVYEppfrxE6+tBEQ3ztbAIG2e8D6EZwaacLMWt+ZRqzfW5BgTf4MQ
         JhXjv3upKO6knNgLZ9Z+vbCpxRD2OfOik4iU9C0f1rhxndbCQ6cPMj5eza1Egvl00GYD
         mMgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=wWOWiQjk;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2+5QsCTUpQb1OxZhiU/TRv+selRvM5XSpQtqIlB8LTc=;
        b=MPf738Y5YEpQu4ZnkbzQtog8fk99+nPLNq586yLUEI0qWVsCVcXyDF5lUpLMLjRKgG
         SIG+7z+G/cXRiUSSAqmAmwYdeAlnA1YkjQxtdU1Xd78ngIZcGqT4q226iF9CLMXQphuX
         wdVtfvujixY0cwxZMF1SpQBqvLtIVRm3HPi3bPAF3qHbcvzB+123Ji3IpgImWvkS2H/k
         G6kD1ZBFrXYuScwsJXXqmSaDLqbhvKPQ/mudryEV02/ZYyYg5udVa7y69riqlI83G3tE
         eGFRjM0X2n3iRiKudqwvZ0CCyj3Pk39fJIgRUt/rr5sra9crcbbQsnwUdX86uZt2aDSd
         XnSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2+5QsCTUpQb1OxZhiU/TRv+selRvM5XSpQtqIlB8LTc=;
        b=B8BoSzZkBGAkoN17CkqYYmmwxqaaDlt8N8p71I2nYorJZFPtKbTAtOV2QR1+Wz4BFL
         Gl0Tf8HzsRu3I72cZYsiMG07gAneMfUlU/qYB9dNlYB4JZvQX/pbiVtqX+Aj+fG9wCW1
         fmVfAr3ZwwlC77svBrW8U9z9HXikek12LZeqGu7e91Oje7yOrKHRRSPRpWKZ1Zonyj5y
         zTySftD6e1xcsBf7luNM9cYOkVPjHU+Qn4Vd+S5ZvVWkoc3IxdgL9QXMPSB6hfPsTBZV
         eyiIASPTM4tNveja7XvDBFNzhtVlvpzV0la+qTxwwT+O+RY6u9SK6TUqISGYIX6rkvsl
         yeMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324ta09M8+9zDQBFX3egni1Z4wPwlFHdFRyt7FyUwAKJoI0Dt1W
	scux1nMlsQR01cB1fPObKlc=
X-Google-Smtp-Source: ABdhPJzAIhpcLm6dTHV/ya78JJFZAtWqhXFEhg4E3OZ6ZaNAFlxx8m/vZCQKCGbjjGwHmjv6aDXsnQ==
X-Received: by 2002:adf:91a4:: with SMTP id 33mr3143938wri.170.1601368640791;
        Tue, 29 Sep 2020 01:37:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e3c3:: with SMTP id k3ls346880wrm.1.gmail; Tue, 29 Sep
 2020 01:37:19 -0700 (PDT)
X-Received: by 2002:adf:9e41:: with SMTP id v1mr3217337wre.60.1601368639821;
        Tue, 29 Sep 2020 01:37:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601368639; cv=none;
        d=google.com; s=arc-20160816;
        b=zytJphjRBB7OFkHyLjPDgfJ6l9SwZOCGD1uVveIteneZ7wBIvv/F1SR3fHvxfxWYzY
         agoiNS7tmGdqk4aTyFhcaf/ZtG4XxBJ6b+UpClD3AaA5WNuj5ZsyIs4NC5BCMcTXcCvH
         eREBlcLULPugO6PGedV6MxljGLDnmXeEFDkeSuz+0hViF+dp2Ao/8EiD9ivS75CTJOa5
         j56KvuHAYptaO5E8dtkD2O9dFFmHcgWC6RghZLX3SCUquV8Jpw/LH04xHjLyo7CCj6zV
         34aryka7lbAFCzX25VRf5x1SBb70QSsoccKJjvHeZ7b/KixZJ7fqZydF9ARsaZ5YuTQn
         ApZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=v5vnDoRc4ZKtko7VMYgaivypIuJCC2NRDarrflWRAvg=;
        b=SaBaIwfqMDCRZnOYY6sBrYYuHhZVt7A8AgbiPUO2U8ppILZxP6W2xHAIPSHPQou2y3
         OQuQFmDUYEHVVYe8sZKwlRjPid5igP2G5wym71BjcolESWjqeXh0L2WbZ6qfoZ80Ndmb
         ZDo2qqPG1NK8IzR69kwlw5HF4kTPmBb+EJE8XVYLLoj6+4gXM59AmqsfEAnrr8/4x0Wf
         Aqz0kwvTZvMay4XrpyfBx/bKbC8cgPUf7vEHgAC3RZqhwgRmYiu19bqAAHdt/yCYs1SB
         G043mcvIPcZqbcO/vvZaiRcC/4at8q/fxuJwNkEa1ZiYHUsEafnYYmA6wE9aZcbXVhWZ
         eecA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=wWOWiQjk;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id z62si96564wmb.0.2020.09.29.01.37.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 01:37:19 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNB8J-00031e-Pr; Tue, 29 Sep 2020 08:37:12 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 60639303F45;
	Tue, 29 Sep 2020 10:37:09 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 42614211CC1CA; Tue, 29 Sep 2020 10:37:09 +0200 (CEST)
Date: Tue, 29 Sep 2020 10:37:09 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Balbir Singh <sblbir@amazon.com>, Thomas Gleixner <tglx@linutronix.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech
Subject: Re: [PATCH -next for tip:x86/pti] x86/tlb: drop unneeded local vars
 in enable_l1d_flush_for_task()
Message-ID: <20200929083709.GC2651@hirez.programming.kicks-ass.net>
References: <20200928124457.27289-1-lukas.bulwahn@gmail.com>
 <20200929071211.GJ2628@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200929071211.GJ2628@hirez.programming.kicks-ass.net>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=wWOWiQjk;
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

On Tue, Sep 29, 2020 at 09:12:11AM +0200, Peter Zijlstra wrote:
> On Mon, Sep 28, 2020 at 02:44:57PM +0200, Lukas Bulwahn wrote:
> > diff --git a/arch/x86/mm/tlb.c b/arch/x86/mm/tlb.c
> > index 6b0f4c88b07c..90515c04d90a 100644
> > --- a/arch/x86/mm/tlb.c
> > +++ b/arch/x86/mm/tlb.c
> > @@ -316,7 +316,7 @@ EXPORT_SYMBOL_GPL(leave_mm);
> >  
> >  int enable_l1d_flush_for_task(struct task_struct *tsk)
> >  {
> > -	int cpu, ret = 0, i;
> > +	int i;
> >  
> >  	/*
> >  	 * Do not enable L1D_FLUSH_OUT if
> > @@ -329,7 +329,7 @@ int enable_l1d_flush_for_task(struct task_struct *tsk)
> >  			!static_cpu_has(X86_FEATURE_FLUSH_L1D))
> >  		return -EINVAL;
> >  
> > -	cpu = get_cpu();
> > +	get_cpu();
> >  
> >  	for_each_cpu(i, &tsk->cpus_mask) {
> >  		if (cpu_data(i).smt_active == true) {
> > @@ -340,7 +340,7 @@ int enable_l1d_flush_for_task(struct task_struct *tsk)
> >  
> >  	set_ti_thread_flag(&tsk->thread_info, TIF_SPEC_L1D_FLUSH);
> >  	put_cpu();
> > -	return ret;
> > +	return 0;
> >  }
> 
> If you don't use the return value of get_cpu(), then change it over to
> preempt_{dis,en}able(), but this got me looking at the function, wtf is
> that garbage supposed to do in the first place
> 
> What do we need to disable preemption for?
> 
> Please explain the desired semantics against sched_setaffinity().

Here, I fixed it..

---
 arch/x86/mm/tlb.c | 24 +++---------------------
 1 file changed, 3 insertions(+), 21 deletions(-)

diff --git a/arch/x86/mm/tlb.c b/arch/x86/mm/tlb.c
index 6b0f4c88b07c..f02a2f1909da 100644
--- a/arch/x86/mm/tlb.c
+++ b/arch/x86/mm/tlb.c
@@ -316,31 +316,13 @@ EXPORT_SYMBOL_GPL(leave_mm);
 
 int enable_l1d_flush_for_task(struct task_struct *tsk)
 {
-	int cpu, ret = 0, i;
-
-	/*
-	 * Do not enable L1D_FLUSH_OUT if
-	 * b. The CPU is not affected by the L1TF bug
-	 * c. The CPU does not have L1D FLUSH feature support
-	 * c. The task's affinity is on cores with SMT on.
-	 */
-
 	if (!boot_cpu_has_bug(X86_BUG_L1TF) ||
-			!static_cpu_has(X86_FEATURE_FLUSH_L1D))
+	    !boot_cpu_has(X86_FEATURE_FLUSH_L1D) ||
+	    sched_smt_active());
 		return -EINVAL;
 
-	cpu = get_cpu();
-
-	for_each_cpu(i, &tsk->cpus_mask) {
-		if (cpu_data(i).smt_active == true) {
-			put_cpu();
-			return -EINVAL;
-		}
-	}
-
 	set_ti_thread_flag(&tsk->thread_info, TIF_SPEC_L1D_FLUSH);
-	put_cpu();
-	return ret;
+	return 0;
 }
 
 int disable_l1d_flush_for_task(struct task_struct *tsk)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929083709.GC2651%40hirez.programming.kicks-ass.net.
