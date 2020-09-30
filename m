Return-Path: <clang-built-linux+bncBCGI7NV74QARBFFT2T5QKGQEIGSO4LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B36527F649
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 01:49:42 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id e9sf2946381ils.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 16:49:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601509781; cv=pass;
        d=google.com; s=arc-20160816;
        b=txcPCqWVZTwOrahOPY+8PT9DkW8KQ4U4lateNDjwP+lDyoJaTaRnK8Or5CL9vaOLMU
         ojI2UPfGuhh7+oWtXPe8zc0y4NlRyTbYJ1hVfVPeyw2n+g93tvX25Nh71pUZuqzSmtO6
         y02HS8YIcebTh8Ye3alxg3VudQfEhYWR2MEXmb8OR0Djp35XlbpWP7Y3PWYyXP6+vuGI
         9XZZ/agYeBJTAb7EK4kG54bcS/ipvkoZgCxeKnezTPulS26TkbBydrOfmv0/altpC91S
         wykzfLTPKqhFIVj81nSiNBps24leF8+1GN3aZXf62QlV/w6SzOu4zZ0/kLYhXIv63Fc6
         hVRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature;
        bh=TZ81bSxCQc6T9hPCNLRNJYCgV9K6i8tgLfitqyPDi8I=;
        b=FMfRv8Pdi0M1ydK/jldLfvxe3RHBL+H7qVOhZmWwFTLGw9p3SK7EgFTLwz0GpW1Pjt
         yUPPnksLyS4d6h5vb7SMb29789Z2njR14jupiWyVTsMCpZbBw7Fc93hduEoLMey86K+X
         EorPCdQglcUVd1BKLos/12G/ry+se6tKaVMeJk8Upt2b7UxG2NLvuYbSCg+3+vWQPQGi
         q8a3U/VGwGljRSK8x7lQc9gi1hWQHZM+HGzYYWTiq5xshjRUPWYXFXY1Oc163SyXMcm7
         9wu7u8g7+47Tox7DIQOHZMImAvpGUlED+YyC/uObab/q/4GQMBZNLpb1CvmNJP2gntus
         M4rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amazon.com header.s=amazon201209 header.b=R5Kvqf3A;
       spf=pass (google.com: domain of prvs=53595e4c7=sblbir@amazon.com designates 52.95.49.90 as permitted sender) smtp.mailfrom="prvs=53595e4c7=sblbir@amazon.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amazon.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TZ81bSxCQc6T9hPCNLRNJYCgV9K6i8tgLfitqyPDi8I=;
        b=EYNOQRoC+XUJLWpu73Km+6QOLkxcAiBLYTMv/69tX4iW7n9p3lJmrK88jdopmKUvYm
         TJ0BjqA+F9F7J2CFCPw0wWWHIUEZ9WBkJc1XL3tfdBXTzTn0CxbwtMObzTcnlfRkK0KB
         tcGF7TDjXXpMp4djEQnayhHHXCiVWZKW/oeL5ysB7NZlbgo1sp/zSAUliZPbJoggpF7x
         Mp2D3NZmeYp2iNXx623DR+89XUavxlRVyY5dLPjP/ZvT284GG8WZWx5nIj1wgzNwksfE
         YWMLR9KpJG4SQGD6oN7aUHv6ht3nC0+F4gBrDpw0clK1+PZUtT0EdDMkQ4+0d/Q+axbi
         k/zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TZ81bSxCQc6T9hPCNLRNJYCgV9K6i8tgLfitqyPDi8I=;
        b=oWjbRCljzkqF2QYPKis7+BVa8b77yqpVkOR8tzfUR/17sIWzawYGRY6V24L6gNyfC2
         PV+kr3X77ENJVk1ipKjX2Wr1UeARteolfgz/7Cau9Hl7okCPyY6LyGMN2FGgfhT3X7SL
         G++b0t0GTZ1fOSmauF3dvU7EJt7lALnD85qtvUm+wxmnBmaP615iP1HaJJbALzcGXrmY
         JLrwHycyV1TwzacPd11JKQTxDo1/J8dTBTlC/b/2VoICFUov9CGxYrvdPpurm0eQHYkl
         6hdm7Xv2KVUUv7PNUCaTBvaqcf8+41x0Ax4DrV+fxxt75qVTe9o2/kc1Tob3L9j65WxO
         hdwQ==
X-Gm-Message-State: AOAM531tWgpRuSEt0AxBcPYmc0Cm4ikfSM0c/KwgbWcWz46R7BOdC4Pe
	TuEXNRONHa0cmdFD+Z0FddM=
X-Google-Smtp-Source: ABdhPJy++oOfaEN+VReX44qHj4fmWd1gqI7cm4fXKdmgjZVNDTFOiskCseycocdAH12XtHdBe2lSLg==
X-Received: by 2002:a5e:d60c:: with SMTP id w12mr3460310iom.204.1601509780783;
        Wed, 30 Sep 2020 16:49:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c805:: with SMTP id v5ls1077720iln.1.gmail; Wed, 30 Sep
 2020 16:49:40 -0700 (PDT)
X-Received: by 2002:a92:5882:: with SMTP id z2mr284660ilf.137.1601509780447;
        Wed, 30 Sep 2020 16:49:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601509780; cv=none;
        d=google.com; s=arc-20160816;
        b=rf9DimGIEXuck1oDyvDhu8Ab32f3OEfMUdf5ta+SJ9Mw2M8iK0pMtKBxX+5t1ucudo
         VdXdPiXFKrjmXGfJ7nVIRd5ZPX/umE1zMsiQI855X0HVxGvWY5xhl4H3xAaBN5W+PRfi
         RhvLjmBBJ8v5RgUkCq1Z/ejAnRrgpoXpOy0nbk/VLK4yOPP77N9y/mQ+QrLCEwPSKPZk
         KLhI44KwObut4ElFYvmldnFiTISN9YryQ3M4MmRBVIPFq7pBKt3iAFVpZXgYrP6qKQCn
         rwdymRl7m5ZslXRUQSTr82OXL9TjpPd5OYORQoFdDb4UPooKO+/vjTfM8AsHp7FTXqgb
         Di1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=AJFpIp3jITAY2+9sf/YO0MqfUMeF7dTVt+ABEg4hfxs=;
        b=FVlaeZzaTbJf8bS5MhMS4dLtP0AheQC4MoMgazjAn+nxbXSof7p9uTnFzEX5/kwTEa
         U06VzgKmxkC7WjPsrvS7oYMBahJ71Pdz+UGFn/o22/NOwTJV9CSdCrm1BLSQeHlLZoZa
         dqvIQJ7PqBxqgTi10SdHHPWnH9IDOqryE662/hRwhqGIc5gzyB/gnrhHu0i28iIdhKnn
         i2T/4qjEPM6rDyrAWOhB+sWUdW4wk7drg+xzGt9BPQNiBcGNCf3AKXT4H5DDDbmCQxGd
         2RKX3D4aSkQmFjBQHvOQpme7ldmm0f8ySc1a//SEKmOBh8+1/l20ZfEOiOvUZn7U1zJX
         nJNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@amazon.com header.s=amazon201209 header.b=R5Kvqf3A;
       spf=pass (google.com: domain of prvs=53595e4c7=sblbir@amazon.com designates 52.95.49.90 as permitted sender) smtp.mailfrom="prvs=53595e4c7=sblbir@amazon.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amazon.com
Received: from smtp-fw-6002.amazon.com (smtp-fw-6002.amazon.com. [52.95.49.90])
        by gmr-mx.google.com with ESMTPS id m2si215143ill.5.2020.09.30.16.49.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 16:49:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=53595e4c7=sblbir@amazon.com designates 52.95.49.90 as permitted sender) client-ip=52.95.49.90;
X-IronPort-AV: E=Sophos;i="5.77,322,1596499200"; 
   d="scan'208";a="57304423"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO email-inbound-relay-2a-90c42d1d.us-west-2.amazon.com) ([10.43.8.6])
  by smtp-border-fw-out-6002.iad6.amazon.com with ESMTP; 30 Sep 2020 23:49:38 +0000
Received: from EX13MTAUWB001.ant.amazon.com (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
	by email-inbound-relay-2a-90c42d1d.us-west-2.amazon.com (Postfix) with ESMTPS id 9B3BEA1CF3;
	Wed, 30 Sep 2020 23:49:36 +0000 (UTC)
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.249) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 30 Sep 2020 23:49:36 +0000
Received: from f8ffc2228008.ant.amazon.com (10.43.162.35) by
 EX13d01UWB002.ant.amazon.com (10.43.161.136) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 30 Sep 2020 23:49:33 +0000
Subject: Re: [PATCH -next for tip:x86/pti] x86/tlb: drop unneeded local vars
 in enable_l1d_flush_for_task()
To: Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra
	<peterz@infradead.org>
CC: Lukas Bulwahn <lukas.bulwahn@gmail.com>, Dave Hansen
	<dave.hansen@linux.intel.com>, Andy Lutomirski <luto@kernel.org>, Ingo Molnar
	<mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "x86@kernel.org"
	<x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Nathan Chancellor
	<natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
	"linux-safety@lists.elisa.tech" <linux-safety@lists.elisa.tech>
References: <20200928124457.27289-1-lukas.bulwahn@gmail.com>
 <20200929071211.GJ2628@hirez.programming.kicks-ass.net>
 <20200929083709.GC2651@hirez.programming.kicks-ass.net>
 <87eemji887.fsf@nanos.tec.linutronix.de>
 <20200930170316.GB2628@hirez.programming.kicks-ass.net>
 <87blhni1pg.fsf@nanos.tec.linutronix.de>
 <20200930183552.GG2628@hirez.programming.kicks-ass.net>
 <87k0wbgd2s.fsf@nanos.tec.linutronix.de>
From: "'Singh, Balbir' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <19f57cbe-ba33-17d5-440c-2765e670782f@amazon.com>
Date: Thu, 1 Oct 2020 09:49:30 +1000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.1.1
MIME-Version: 1.0
In-Reply-To: <87k0wbgd2s.fsf@nanos.tec.linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.43.162.35]
X-ClientProxiedBy: EX13D37UWA004.ant.amazon.com (10.43.160.23) To
 EX13d01UWB002.ant.amazon.com (10.43.161.136)
X-Original-Sender: sblbir@amazon.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amazon.com header.s=amazon201209 header.b=R5Kvqf3A;       spf=pass
 (google.com: domain of prvs=53595e4c7=sblbir@amazon.com designates
 52.95.49.90 as permitted sender) smtp.mailfrom="prvs=53595e4c7=sblbir@amazon.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amazon.com
X-Original-From: "Singh, Balbir" <sblbir@amazon.com>
Reply-To: "Singh, Balbir" <sblbir@amazon.com>
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

On 1/10/20 7:38 am, Thomas Gleixner wrote:

>=20
>=20
>=20
> On Wed, Sep 30 2020 at 20:35, Peter Zijlstra wrote:
>> On Wed, Sep 30, 2020 at 08:00:59PM +0200, Thomas Gleixner wrote:
>>> On Wed, Sep 30 2020 at 19:03, Peter Zijlstra wrote:
>>>> On Wed, Sep 30, 2020 at 05:40:08PM +0200, Thomas Gleixner wrote:
>>>> Also, that preempt_disable() in there doesn't actually do anything.
>>>> Worse, preempt_disable(); for_each_cpu(); is an anti-pattern. It mixes
>>>> static_cpu_has() and boot_cpu_has() in the same bloody condition and h=
as
>>>> a pointless ret variable.
>>
>> Also, I forgot to add, it accesses ->cpus_mask without the proper
>> locking, so it could be reading intermediate state from whatever cpumask
>> operation that's in progress.
>=20
> Yes. I saw that after hitting send. :(
>=20
>>> I absolutely agree and I really missed it when looking at it before
>>> merging. cpus_read_lock()/unlock() is the right thing to do if at all.
>>>
>>>> It's shoddy code, that only works if you align the planets right. We
>>>> really shouldn't provide interfaces that are this bad.
>>>>
>>>> It's correct operation is only by accident.
>>>
>>> True :(
>>>
>>> I understand Balbirs problem and it makes some sense to provide a
>>> solution. We can:
>>>
>>>     1) reject set_affinity() if the task has that flush muck enabled
>>>        and user space tries to move it to a SMT enabled core
>>>
>>>     2) disable the muck if if detects that it is runs on a SMT enabled
>>>        core suddenly (hotplug says hello)
>>>
>>>        This one is nasty because there is no feedback to user space
>>>        about the wreckage.
>>
>> That's and, right, not or. because 1) deals with sched_setffinity()
>> and 2) deals wit hotplug.
>=20
> It was meant as AND of course.
>=20
>> Now 1) requires an arch hook in sched_setaffinity(), something I'm not
>> keen on providing, once we provide it, who knows what strange and
>> wonderful things archs will dream up.
>=20
> I don't think so. We can have that magic in core:
>=20
> #ifdef CONFIG_HAS_PARANOID_L1D_FLUSH
> static bool paranoid_l1d_valid(struct task_struct *tsk,
>                                const struct cpumask *msk)
> {
>         if (!test_tsk_thread_flag(tsk, TIF_SPEC_L1D_FLUSH))
>                 return true;
>         /* Do magic stuff */
>         return res;
> }
> #else
> static bool paranoid_l1d_valid(struct task_struct *tsk,
>                                const struct cpumask *msk)
> {
>         return true;
> }
> #endif
>=20
> It's a pretty well defined problem and having the magic in core code
> prevents an arch hook which allows abuse of all sorts.
>=20
> And the same applies to enable_l1d_flush_for_task(). The only
> architecture specific nonsense are the checks whether the CPU bug is
> there and whether the hardware supports L1D flushing.
>=20
> So we can have:
>=20
> #ifdef CONFIG_HAS_PARANOID_L1D_FLUSH
> int paranoid_l1d_enable(struct task_struct *tsk)
> {
>         /* Do the SMT validation under the proper locks */
>         if (!res)
>                 set_task_thread_flag(tsk, TIF_SPEC_L1D_FLUSH);
>         return res;
> }
> #endif
>=20
>> And 2) also happens on hot-un-plug, when the task's affinity gets
>> forced because it became empty. No user feedback there either, and
>> information is lost.
>=20
> Of course. It's both that suddenly SMT gets enabled on a core which was
> isolated and when the last isolated core in the tasks CPU mask goes
> offline.
>=20
>> I suppose we can do 2) but send a signal. That would cover all cases and
>> keep it in arch code. But yes, that's pretty terrible too.
>=20
> Bah. I just looked at the condition to flush:
>=20
>         if (sched_smt_active() && !this_cpu_read(cpu_info.smt_active) &&
>                 (prev_mm & LAST_USER_MM_L1D_FLUSH))
>                 l1d_flush_hw();
>=20
> That fails to flush when SMT is disabled globally. Balbir?
>=20
> Of course this should be:
>=20
>         if (!this_cpu_read(cpu_info.smt_active) && (prev_mm & LAST_USER_M=
M_L1D_FLUSH))
>                 l1d_flush_hw();
>=20
> Now we can make this:
>=20
>         if (unlikely(prev_mm & LAST_USER_MM_L1D_FLUSH)) {
>                 if (!this_cpu_read(cpu_info.smt_active))
>                         l1d_flush_hw();
>                 else
>                         task_work_add(...);
>=20
> And that task work clears the flag and sends a signal. We're not going
> to send a signal from switch_mm() ....
>=20
> Thanks,
>=20


So this is the change I am playing with, I don't like the idea of killing t=
he task, but it's better than silently not flushing, I guess system adminis=
trators will learn with time not to correctly the affinity of tasks flushin=
g
L1D. For the affinity bits, not being able to change the affinity is better=
, but not being able to provide feedback on as to why is a bit weird as wel=
l, but I wonder if there are other cases where we might want to lock the af=
finity of a task for it's lifetime.

diff --git a/arch/x86/mm/tlb.c b/arch/x86/mm/tlb.c
index 6b0f4c88b07c..6b0d0a9cd447 100644
--- a/arch/x86/mm/tlb.c
+++ b/arch/x86/mm/tlb.c
@@ -320,26 +320,15 @@ int enable_l1d_flush_for_task(struct task_struct *tsk=
)
=20
 	/*
 	 * Do not enable L1D_FLUSH_OUT if
-	 * b. The CPU is not affected by the L1TF bug
-	 * c. The CPU does not have L1D FLUSH feature support
-	 * c. The task's affinity is on cores with SMT on.
+	 * a. The CPU is not affected by the L1TF bug
+	 * b. The CPU does not have L1D FLUSH feature support
 	 */
=20
 	if (!boot_cpu_has_bug(X86_BUG_L1TF) ||
-			!static_cpu_has(X86_FEATURE_FLUSH_L1D))
+		!boot_cpu_has(X86_FEATURE_FLUSH_L1D))
 		return -EINVAL;
=20
-	cpu =3D get_cpu();
-
-	for_each_cpu(i, &tsk->cpus_mask) {
-		if (cpu_data(i).smt_active =3D=3D true) {
-			put_cpu();
-			return -EINVAL;
-		}
-	}
-
 	set_ti_thread_flag(&tsk->thread_info, TIF_SPEC_L1D_FLUSH);
-	put_cpu();
 	return ret;
 }
=20
@@ -349,6 +338,12 @@ int disable_l1d_flush_for_task(struct task_struct *tsk=
)
 	return 0;
 }
=20
+static void l1d_flush_kill(struct callback_head *ch)
+{
+	clear_ti_thread_flag(&current->thread_info, TIF_SPEC_L1D_FLUSH);
+	force_signal(SIGBUS);
+}
+
 void switch_mm(struct mm_struct *prev, struct mm_struct *next,
 	       struct task_struct *tsk)
 {
@@ -443,12 +438,14 @@ static void cond_mitigation(struct task_struct *next)
 	}
=20
 	/*
-	 * Flush only if SMT is disabled as per the contract, which is checked
-	 * when the feature is enabled.
+	 * Flush only if SMT is disabled, if flushing is enabled
+	 * and we are on an SMT enabled core, kill the task
 	 */
-	if (sched_smt_active() && !this_cpu_read(cpu_info.smt_active) &&
-		(prev_mm & LAST_USER_MM_L1D_FLUSH))
-		l1d_flush_hw();
+	if (unlikely(prev_mm & LAST_USER_MM_L1D_FLUSH)) {
+		if (!this_cpu_read(cpu_info.smt_active))
+			l1d_flush_hw();
+		else
+			task_work_add(prev, l1d_flush_kill, true);
=20
 	this_cpu_write(cpu_tlbstate.last_user_mm_spec, next_mm);
 }

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/19f57cbe-ba33-17d5-440c-2765e670782f%40amazon.com.
