Return-Path: <clang-built-linux+bncBDAMN6NI5EERBTPV2P5QKGQEYVUPT6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5BC27F447
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 23:38:22 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id r19sf1314293edq.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 14:38:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601501901; cv=pass;
        d=google.com; s=arc-20160816;
        b=YL0TJRqDT0ZLvb7tNblhlHaaExYJwnR4xqOGszkka1eLJ8oWt0QkqWoO6GWXxtxAMe
         vnCGHn+PBIjPT8iLULoL3JvcbaKKBVyhaeEVI7etxj9c3I38CnXsCDMiVmi24MBbnC/m
         wUrCyur1PwnBtqgqsNX5B5PF7KC97nq+rmR+X676cp9oD5X0jjrjNMalNR5oVxOPvvD8
         QaV/JHHFwy3bnWwuY8z3J7L5lr3wSsL9H8GUrMJgBRh8pNs+sRAcxmaFQpoe81kRCUc2
         CV5Q4ypPKlcwu30diFmfA/psaHZbluHCxEkz9fcdwjV3GRj3HGlBwggHnbF11lKyZa7B
         Wnmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=CWwn0QH0yd1P80eoh1Wg0Tzu+lG1+A65GX0pXw0cWcQ=;
        b=vNYqujvv+fs0UaYxl7wypoP6U+phB+p7nkgwhJx7CbWebIO2EkmcgpD0fdO09WjWDH
         wYd6/QjSsSRPQBZnMhX/9NpBTBwdNBK3o3Ts6jqrQQ8cUJ/8zYWwRaQS/NpBJ7PbA6v3
         QP+mMCCd/s6omut1sVfmWr0bI+2y4rCrfBUxnfRCqv9L1xHHzg2Is2GaR/ea0xhpiH4u
         r5ArUgJGl5sy5z3qSRGh49YmNJ4rkEaOMHW61nZ1X13yu6CPH1ZrSckIOGV5iyxBJxW7
         dmbxBfxHGX54UqPS3lVMcRtizmMLHTJZzNUjTB2Lln82TkyGxMlWSrNDQdnjykA8nDpA
         8xCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=bkS2E0y0;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CWwn0QH0yd1P80eoh1Wg0Tzu+lG1+A65GX0pXw0cWcQ=;
        b=jAHZ6xZnpwfxjFQ3bHUVLLZRKNSM0jJ4ww2UWwfGVXnyOAicKz3cCmFVsxDsYTlTl+
         m6A57WZxzXGE0xxfz4vBH4HISib6D2UwI/9WC4j9gyAdo68tzwA8mtBZ//T+Dqz3Jj4e
         xwGVTw41lI8XG8O6B0YIF+WNLHS0iO0m+u9r3RAWmamtcY+hP9bwlXgoEiwmjlshB+vw
         R8JYEFHI+mtN8T8TTkvdJW76Hynh4ZsqYt7+Ou+4cZBBiQ5em/J3ciyJP6Z7qgR43owV
         skExPt8089gc3jVR1TTUp1HEUxzQfhk/q+uFz1QHZTtanLVCzmgXtT1r3QTrVOrjnwZZ
         PamQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CWwn0QH0yd1P80eoh1Wg0Tzu+lG1+A65GX0pXw0cWcQ=;
        b=QsBmPbhgTaT7qQLVbRKMg7tAgK4bsb6/XbbqnGu4FJ/YfGsrhVGz8dWoHAm5qQ7v2Y
         PHafB2NJgXv7urdZSe0pqt7jWqx3mZ+ldkA/qDMfjqPEsUsRWnclqzW69V40X23YiOHz
         5+kMC8TuPAtYk/mGiA3LEH6OTMpFZTGP9xhlof9okLiueOGCpb6mEDWEjUeoKsUxjwa8
         otYBucRKaF4QLYtI4iQ5kS9gsKyJ79XAP9KJXM3/cEoTbsqShCuBx6jJZ0G63JksDJhU
         X5U4+uth2N1uaU+Jb8Rkf5MHTefEkPXPuFbs40FVvmYmcE/TDjMg7/yXtboxZNHT6HP0
         j5SQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533vv2M0FCnqwBuHqFF/Q79/uIzf6tJeMs/VOGlMuryxvqG0ShmJ
	i71lS8qVfYwr+KRUorioTLo=
X-Google-Smtp-Source: ABdhPJxuzVNtbV/MqodVvYrgRknfOVqpN8+hxSdaJaLFTH34LM5Hi93UPvZpGWfvc4YsksjX7jL5ww==
X-Received: by 2002:a17:906:1485:: with SMTP id x5mr5008081ejc.163.1601501901822;
        Wed, 30 Sep 2020 14:38:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:bf49:: with SMTP id g9ls3527017edk.1.gmail; Wed, 30 Sep
 2020 14:38:21 -0700 (PDT)
X-Received: by 2002:aa7:d6ce:: with SMTP id x14mr5037837edr.359.1601501900914;
        Wed, 30 Sep 2020 14:38:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601501900; cv=none;
        d=google.com; s=arc-20160816;
        b=zRJ+LsW35SpadGj+e593EDLVvDtgHHUCtaQd3672e8vU5rRp/RlMo0OnhOsenQBPMq
         ENPyKmNu/fFvULCWVk5qolbkVHyvJI8cbVwnqtnBPopfbAYYs4kcfmhnz9E6ngcV0/1v
         N6QruKoyZ7wfnIrddhiLvI6UFMbDPq2TqJYNEG1khUPwY01k0AeMWLEnhYnkB40G90Il
         2zcg5uRdI5DgXpWe3pFcuGraSG6AnvNaZlru/1AcwG2uQV0tiMGzPOfrWbCtSNztYt/q
         oFiT2ugu4pmfvqMv/uQABPLCxwP718DMmBphpAWHUUKWpV3LctzDqdbDz7PW9/nxJz60
         UHOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=6E7rSUIBVCJugx0T9Vuji43R9ZFkmGP5/w3wntstorY=;
        b=q81LVJ5m5bxUVh7lTGtzpEhA7zPk7RI13TDU7blrkPYti7WC8EBHfodIyV1v60Tzmy
         jcRB3+LAbSJUg/VWliIUJ7Kl1+f7sOZijql9n+8pG7ud73E6r32jhOM/OAlpJ1Q18smK
         jcw1gpVo+rZe0/fCuWBV/axLYpvPbKovQDy4jCVsmVQ6hY4/vf0yxKCErHdcWNS73TS0
         FBXw7wD5tjAvex5+dGG7drF30wmS+TQ4WgWZ/frzNbnQVShkC3SPJ6t4yZUxIG9n7DMe
         Jch1RyaDehUL+YX7SOeywDBSZai4SNTw1YVdvbLzoHDdjZcSBSDNhJq0O3iAaQlYGSav
         sJ6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=bkS2E0y0;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id w16si63756edq.4.2020.09.30.14.38.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 14:38:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>, Balbir Singh <sblbir@amazon.com>, Dave Hansen <dave.hansen@linux.intel.com>, Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech
Subject: Re: [PATCH -next for tip:x86/pti] x86/tlb: drop unneeded local vars in enable_l1d_flush_for_task()
In-Reply-To: <20200930183552.GG2628@hirez.programming.kicks-ass.net>
References: <20200928124457.27289-1-lukas.bulwahn@gmail.com> <20200929071211.GJ2628@hirez.programming.kicks-ass.net> <20200929083709.GC2651@hirez.programming.kicks-ass.net> <87eemji887.fsf@nanos.tec.linutronix.de> <20200930170316.GB2628@hirez.programming.kicks-ass.net> <87blhni1pg.fsf@nanos.tec.linutronix.de> <20200930183552.GG2628@hirez.programming.kicks-ass.net>
Date: Wed, 30 Sep 2020 23:38:19 +0200
Message-ID: <87k0wbgd2s.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=bkS2E0y0;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted
 sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

On Wed, Sep 30 2020 at 20:35, Peter Zijlstra wrote:
> On Wed, Sep 30, 2020 at 08:00:59PM +0200, Thomas Gleixner wrote:
>> On Wed, Sep 30 2020 at 19:03, Peter Zijlstra wrote:
>> > On Wed, Sep 30, 2020 at 05:40:08PM +0200, Thomas Gleixner wrote:
>> > Also, that preempt_disable() in there doesn't actually do anything.
>> > Worse, preempt_disable(); for_each_cpu(); is an anti-pattern. It mixes
>> > static_cpu_has() and boot_cpu_has() in the same bloody condition and has
>> > a pointless ret variable.
>
> Also, I forgot to add, it accesses ->cpus_mask without the proper
> locking, so it could be reading intermediate state from whatever cpumask
> operation that's in progress.

Yes. I saw that after hitting send. :(

>> I absolutely agree and I really missed it when looking at it before
>> merging. cpus_read_lock()/unlock() is the right thing to do if at all.
>> 
>> > It's shoddy code, that only works if you align the planets right. We
>> > really shouldn't provide interfaces that are this bad.
>> >
>> > It's correct operation is only by accident.
>> 
>> True :(
>> 
>> I understand Balbirs problem and it makes some sense to provide a
>> solution. We can:
>> 
>>     1) reject set_affinity() if the task has that flush muck enabled
>>        and user space tries to move it to a SMT enabled core
>> 
>>     2) disable the muck if if detects that it is runs on a SMT enabled
>>        core suddenly (hotplug says hello)
>> 
>>        This one is nasty because there is no feedback to user space
>>        about the wreckage.
>
> That's and, right, not or. because 1) deals with sched_setffinity()
> and 2) deals wit hotplug.

It was meant as AND of course.

> Now 1) requires an arch hook in sched_setaffinity(), something I'm not
> keen on providing, once we provide it, who knows what strange and
> wonderful things archs will dream up.

I don't think so. We can have that magic in core:

#ifdef CONFIG_HAS_PARANOID_L1D_FLUSH
static bool paranoid_l1d_valid(struct task_struct *tsk,
                               const struct cpumask *msk)
{
	if (!test_tsk_thread_flag(tsk, TIF_SPEC_L1D_FLUSH))
        	return true;
        /* Do magic stuff */
        return res;
}
#else
static bool paranoid_l1d_valid(struct task_struct *tsk,
                               const struct cpumask *msk)
{
	return true;
}
#endif

It's a pretty well defined problem and having the magic in core code
prevents an arch hook which allows abuse of all sorts.

And the same applies to enable_l1d_flush_for_task(). The only
architecture specific nonsense are the checks whether the CPU bug is
there and whether the hardware supports L1D flushing.

So we can have:

#ifdef CONFIG_HAS_PARANOID_L1D_FLUSH
int paranoid_l1d_enable(struct task_struct *tsk)
{
        /* Do the SMT validation under the proper locks */
        if (!res)
        	set_task_thread_flag(tsk, TIF_SPEC_L1D_FLUSH);
        return res;
}
#endif

> And 2) also happens on hot-un-plug, when the task's affinity gets
> forced because it became empty. No user feedback there either, and
> information is lost.

Of course. It's both that suddenly SMT gets enabled on a core which was
isolated and when the last isolated core in the tasks CPU mask goes
offline.

> I suppose we can do 2) but send a signal. That would cover all cases and
> keep it in arch code. But yes, that's pretty terrible too.

Bah. I just looked at the condition to flush:

        if (sched_smt_active() && !this_cpu_read(cpu_info.smt_active) &&
                (prev_mm & LAST_USER_MM_L1D_FLUSH))
                l1d_flush_hw();

That fails to flush when SMT is disabled globally. Balbir?

Of course this should be:

        if (!this_cpu_read(cpu_info.smt_active) && (prev_mm & LAST_USER_MM_L1D_FLUSH))
                l1d_flush_hw();

Now we can make this:

        if (unlikely(prev_mm & LAST_USER_MM_L1D_FLUSH)) {
        	if (!this_cpu_read(cpu_info.smt_active))
                	l1d_flush_hw();
                else
                	task_work_add(...);

And that task work clears the flag and sends a signal. We're not going
to send a signal from switch_mm() ....

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87k0wbgd2s.fsf%40nanos.tec.linutronix.de.
