Return-Path: <clang-built-linux+bncBCGI7NV74QARB56O2T5QKGQE2DIOPNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 339A927F6DC
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 02:48:57 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id a72sf1203771oii.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 17:48:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601513336; cv=pass;
        d=google.com; s=arc-20160816;
        b=kmhJ28XHm6X3htc501nfeRN111+Vfx/wpEHl/7uGgHpQ/4cRd1E9iLm6V8i6NQQ/ae
         uFr68OPLnVUmRkgisqxAqOHDmD1/tXzexcPAXhjg08Zwadm4udBV2WQL0+7E5CgNkwar
         CTWdV8Bt5RMkpRj3A/HD9Oie6Rm60nS3XiTGPlWuH9dvysFyBn7Abk4+DfszMVIqQkes
         ttxwOSuXYkkDxiPkZFN0QOjDxO9CZy/koPUK+Cv4dDovwUched88I/1rfxDT53JKfbFP
         w/NTmq3plBucNGqdoMoThl3MvjbvSM0TcggHeqtYkylbrJse9sTIOjiGhM+1ar6Sh8pL
         QyfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:dkim-signature;
        bh=sP/+5OQEwulgwyWbL6DkrJzljZ82fRRw530JtkGeJPo=;
        b=FfGr01WXaZL54WDXln3b/C05EwJk2IKv5SwKDPxjw/n/BzzZF7k0RVXA/7s3Xe1Yru
         xeFCMH8X5poF/IXA1+Nfl4lgMjoj8zd8CXLNZ0xnZAaYSJsGwptyhl2En9R5wZ3fg4ef
         1+Ss//WVCZJaGW4d2jPg3YASEh+J+uO4UvE7aTbJwi2WK9umnVHioBsGXDDTaH2l1/xH
         T0+WboudOHFz9ttX7eplM0BSoJy7ASSBYUkkH00XI7YzQ58Ubg6ISlGzJjN5SFImtynO
         8lKB6u7hVhYAay/SzxkxdbrSNvHRlFJwe92/XYn3kkMy4pfESwoyHf9gb8OaSs+bjt9j
         KOdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amazon.com header.s=amazon201209 header.b=hiVSB17s;
       spf=pass (google.com: domain of prvs=536a8b74c=sblbir@amazon.com designates 52.95.49.90 as permitted sender) smtp.mailfrom="prvs=536a8b74c=sblbir@amazon.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amazon.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sP/+5OQEwulgwyWbL6DkrJzljZ82fRRw530JtkGeJPo=;
        b=Gszk4uCfJlSyuEarZ3737ZXW2tI4saTDkJYP0u3wSXn5U/7kXbotbdGDZlp7Gvz33f
         /otDULoCPd/vmnyVODGy5GxsUc8t9CLrdajmBX4RRW4sqNwYBW67L6Im9PD77faZKj6W
         Xr2Zresepzxla/R0PYJB7b0kWA7kIlktqHSEevt0fljAUjPbOni5VsOW+UyRj6wrt1vu
         yjZNyduhVJrk0FsFID2T1E11oEPC22MXZe6aOxQVG2HN1/sNJSEAlfOgXBcTFFd8KQWH
         HBFk8McDUDGZB8isas5vaSFsvnPUJe4H8qPen+CI4omLvZRHMcdN8u4e9JiaEMC5TT2Z
         93GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sP/+5OQEwulgwyWbL6DkrJzljZ82fRRw530JtkGeJPo=;
        b=eHyUcOKhqiJVm9ft+xx4I2vUOj6iU42ipnOkArgw9yu5X0Qz7kykUWcDuBMLOUxQvo
         B6Lpx+QlqsfeKvy5M2rVrTqwq5Na4KiMACkJKRt/nSgZgBBROrf4CKjNvBvVACLUAPmf
         Ze+dpp87yPgoWDJoxBiinuuYDGYN2+5fuYbQ5J1PKJh2IBWnbWwxCk5uBU1V+hsJ34zh
         d7B63rwVRgLr+4pl+v/+Nv+6Gc23cO0ZfSJpxZxkE7qJMxRsLYbmT+r2SKYGImBsF6Zz
         Mwe5SzDBVE7yNV5q8ocdd3K2WdrFyBMQIwrHCk2PFYqYOJq1WDp2tKQzDeaE100KeIAk
         6tRQ==
X-Gm-Message-State: AOAM531DaFo8RgYmgZHCIkS9KNL3TvOK2qRG+LlbzY3uwXZfmUpIwNQW
	wxv8Om9NFJu5dCoCDlySHko=
X-Google-Smtp-Source: ABdhPJygDTgYOr9v661Nx5gBFguU9xyjEvB0anZspKX0phJgaVUrZHoDAYVePLCta2qgKNdGND+PNw==
X-Received: by 2002:a9d:360b:: with SMTP id w11mr3430606otb.203.1601513335964;
        Wed, 30 Sep 2020 17:48:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4d2:: with SMTP id s18ls956092otd.0.gmail; Wed, 30
 Sep 2020 17:48:55 -0700 (PDT)
X-Received: by 2002:a9d:7d93:: with SMTP id j19mr3364277otn.49.1601513335573;
        Wed, 30 Sep 2020 17:48:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601513335; cv=none;
        d=google.com; s=arc-20160816;
        b=IeuFcL2gddketEvpeeQMELkN9auEbMwZOe7/I6ubzJ8J0/UQ+syqHDtow1MAqOsNTn
         YPf1wp93Nk0RyB4F950We6LbeSetORggrJF3ZHc4JJoSeZYFYBF1iI95xT+pZdsgL4KB
         XMTmg+wkaGXW5je/S2+t3NBn6wskugKeDjVTybUnV73+cHjsmj5TjkhfTWIkH+FYCNmx
         GbRxxqqmLlj2eFLKEz77T1Z3H4AywyGZzCfEMUamiodF9kK9v2WidKO+3QnKBX6v7B0W
         /x26LXVDN+cam4ZK9p9DTS9fUEYbuRs6y1KH6HPN7txMO5+QMgZF0yQIWvSLBP0sUIIi
         8Hmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=mK+4P3J38WGKTB1UiRU+yIEHfiYFZslujOQHMvGJct4=;
        b=ScMnUIujVFWjMJnit/sUUpWfHJlh0YySQnKWwMhgTdeM48F/5xDiObi2YfbFZtoLHU
         hAK2xIgncllehDBz+wYQbMRoH0rclecSkMGLkuFPiZxS/yHmhWL7kBOkSmrJc5iJL4TE
         nC+dOajmzwM2aXQgRMTX6eVy1XWB6wuQQY6eLPzu7h/S6qZepxwMtOLFZbi4RuN2oP8F
         YrV5S0pAul3c7dYBbLHd88pdsp55mh3laSRGsQUYXddOOgOWhu6+gPT5E4NRU1T6/B4U
         xcYcAdC90bB2iS0Y1KVX09U4JnJdQv40t5OrSBgUWd6XsdWm+EeMFAD+LF8QeF5o3+bK
         RIKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@amazon.com header.s=amazon201209 header.b=hiVSB17s;
       spf=pass (google.com: domain of prvs=536a8b74c=sblbir@amazon.com designates 52.95.49.90 as permitted sender) smtp.mailfrom="prvs=536a8b74c=sblbir@amazon.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amazon.com
Received: from smtp-fw-6002.amazon.com (smtp-fw-6002.amazon.com. [52.95.49.90])
        by gmr-mx.google.com with ESMTPS id k7si217690oif.3.2020.09.30.17.48.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 17:48:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=536a8b74c=sblbir@amazon.com designates 52.95.49.90 as permitted sender) client-ip=52.95.49.90;
X-IronPort-AV: E=Sophos;i="5.77,322,1596499200"; 
   d="scan'208";a="57312749"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO email-inbound-relay-2a-6e2fc477.us-west-2.amazon.com) ([10.43.8.6])
  by smtp-border-fw-out-6002.iad6.amazon.com with ESMTP; 01 Oct 2020 00:48:54 +0000
Received: from EX13MTAUWB001.ant.amazon.com (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
	by email-inbound-relay-2a-6e2fc477.us-west-2.amazon.com (Postfix) with ESMTPS id 21725A0835;
	Thu,  1 Oct 2020 00:48:52 +0000 (UTC)
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.249) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 1 Oct 2020 00:48:51 +0000
Received: from f8ffc2228008.ant.amazon.com (10.43.161.71) by
 EX13d01UWB002.ant.amazon.com (10.43.161.136) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 1 Oct 2020 00:48:47 +0000
Subject: Re: [PATCH -next for tip:x86/pti] x86/tlb: drop unneeded local vars
 in enable_l1d_flush_for_task()
From: "'Singh, Balbir' via Clang Built Linux" <clang-built-linux@googlegroups.com>
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
 <19f57cbe-ba33-17d5-440c-2765e670782f@amazon.com>
Message-ID: <044e9835-f4fe-6670-90df-15fe376ecadd@amazon.com>
Date: Thu, 1 Oct 2020 10:48:44 +1000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.1.1
MIME-Version: 1.0
In-Reply-To: <19f57cbe-ba33-17d5-440c-2765e670782f@amazon.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.43.161.71]
X-ClientProxiedBy: EX13D48UWA001.ant.amazon.com (10.43.163.52) To
 EX13d01UWB002.ant.amazon.com (10.43.161.136)
X-Original-Sender: sblbir@amazon.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amazon.com header.s=amazon201209 header.b=hiVSB17s;       spf=pass
 (google.com: domain of prvs=536a8b74c=sblbir@amazon.com designates
 52.95.49.90 as permitted sender) smtp.mailfrom="prvs=536a8b74c=sblbir@amazon.com";
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

On 1/10/20 9:49 am, Singh, Balbir wrote:
> On 1/10/20 7:38 am, Thomas Gleixner wrote:
>=20
>>
>>
>>
>> On Wed, Sep 30 2020 at 20:35, Peter Zijlstra wrote:
>>> On Wed, Sep 30, 2020 at 08:00:59PM +0200, Thomas Gleixner wrote:
>>>> On Wed, Sep 30 2020 at 19:03, Peter Zijlstra wrote:
>>>>> On Wed, Sep 30, 2020 at 05:40:08PM +0200, Thomas Gleixner wrote:
>>>>> Also, that preempt_disable() in there doesn't actually do anything.
>>>>> Worse, preempt_disable(); for_each_cpu(); is an anti-pattern. It mixe=
s
>>>>> static_cpu_has() and boot_cpu_has() in the same bloody condition and =
has
>>>>> a pointless ret variable.
>>>
>>> Also, I forgot to add, it accesses ->cpus_mask without the proper
>>> locking, so it could be reading intermediate state from whatever cpumas=
k
>>> operation that's in progress.
>>
>> Yes. I saw that after hitting send. :(
>>
>>>> I absolutely agree and I really missed it when looking at it before
>>>> merging. cpus_read_lock()/unlock() is the right thing to do if at all.
>>>>
>>>>> It's shoddy code, that only works if you align the planets right. We
>>>>> really shouldn't provide interfaces that are this bad.
>>>>>
>>>>> It's correct operation is only by accident.
>>>>
>>>> True :(
>>>>
>>>> I understand Balbirs problem and it makes some sense to provide a
>>>> solution. We can:
>>>>
>>>>     1) reject set_affinity() if the task has that flush muck enabled
>>>>        and user space tries to move it to a SMT enabled core
>>>>
>>>>     2) disable the muck if if detects that it is runs on a SMT enabled
>>>>        core suddenly (hotplug says hello)
>>>>
>>>>        This one is nasty because there is no feedback to user space
>>>>        about the wreckage.
>>>
>>> That's and, right, not or. because 1) deals with sched_setffinity()
>>> and 2) deals wit hotplug.
>>
>> It was meant as AND of course.
>>
>>> Now 1) requires an arch hook in sched_setaffinity(), something I'm not
>>> keen on providing, once we provide it, who knows what strange and
>>> wonderful things archs will dream up.
>>
>> I don't think so. We can have that magic in core:
>>
>> #ifdef CONFIG_HAS_PARANOID_L1D_FLUSH
>> static bool paranoid_l1d_valid(struct task_struct *tsk,
>>                                const struct cpumask *msk)
>> {
>>         if (!test_tsk_thread_flag(tsk, TIF_SPEC_L1D_FLUSH))
>>                 return true;
>>         /* Do magic stuff */
>>         return res;
>> }
>> #else
>> static bool paranoid_l1d_valid(struct task_struct *tsk,
>>                                const struct cpumask *msk)
>> {
>>         return true;
>> }
>> #endif
>>
>> It's a pretty well defined problem and having the magic in core code
>> prevents an arch hook which allows abuse of all sorts.
>>
>> And the same applies to enable_l1d_flush_for_task(). The only
>> architecture specific nonsense are the checks whether the CPU bug is
>> there and whether the hardware supports L1D flushing.
>>
>> So we can have:
>>
>> #ifdef CONFIG_HAS_PARANOID_L1D_FLUSH
>> int paranoid_l1d_enable(struct task_struct *tsk)
>> {
>>         /* Do the SMT validation under the proper locks */
>>         if (!res)
>>                 set_task_thread_flag(tsk, TIF_SPEC_L1D_FLUSH);
>>         return res;
>> }
>> #endif
>>
>>> And 2) also happens on hot-un-plug, when the task's affinity gets
>>> forced because it became empty. No user feedback there either, and
>>> information is lost.
>>
>> Of course. It's both that suddenly SMT gets enabled on a core which was
>> isolated and when the last isolated core in the tasks CPU mask goes
>> offline.
>>
>>> I suppose we can do 2) but send a signal. That would cover all cases an=
d
>>> keep it in arch code. But yes, that's pretty terrible too.
>>
>> Bah. I just looked at the condition to flush:
>>
>>         if (sched_smt_active() && !this_cpu_read(cpu_info.smt_active) &&
>>                 (prev_mm & LAST_USER_MM_L1D_FLUSH))
>>                 l1d_flush_hw();
>>
>> That fails to flush when SMT is disabled globally. Balbir?
>>
>> Of course this should be:
>>
>>         if (!this_cpu_read(cpu_info.smt_active) && (prev_mm & LAST_USER_=
MM_L1D_FLUSH))
>>                 l1d_flush_hw();
>>
>> Now we can make this:
>>
>>         if (unlikely(prev_mm & LAST_USER_MM_L1D_FLUSH)) {
>>                 if (!this_cpu_read(cpu_info.smt_active))
>>                         l1d_flush_hw();
>>                 else
>>                         task_work_add(...);
>>
>> And that task work clears the flag and sends a signal. We're not going
>> to send a signal from switch_mm() ....
>>
>> Thanks,
>>
>=20
>=20
> So this is the change I am playing with, I don't like the idea of killing=
 the task, but it's better than silently not flushing, I guess system admin=
istrators will learn with time not to correctly the affinity of tasks flush=
ing
> L1D. For the affinity bits, not being able to change the affinity is bett=
er, but not being able to provide feedback on as to why is a bit weird as w=
ell, but I wonder if there are other cases where we might want to lock the =
affinity of a task for it's lifetime.
>=20
> diff --git a/arch/x86/mm/tlb.c b/arch/x86/mm/tlb.c
> index 6b0f4c88b07c..6b0d0a9cd447 100644
> --- a/arch/x86/mm/tlb.c
> +++ b/arch/x86/mm/tlb.c
> @@ -320,26 +320,15 @@ int enable_l1d_flush_for_task(struct task_struct *t=
sk)
> =20
>  	/*
>  	 * Do not enable L1D_FLUSH_OUT if
> -	 * b. The CPU is not affected by the L1TF bug
> -	 * c. The CPU does not have L1D FLUSH feature support
> -	 * c. The task's affinity is on cores with SMT on.
> +	 * a. The CPU is not affected by the L1TF bug
> +	 * b. The CPU does not have L1D FLUSH feature support
>  	 */
> =20
>  	if (!boot_cpu_has_bug(X86_BUG_L1TF) ||
> -			!static_cpu_has(X86_FEATURE_FLUSH_L1D))
> +		!boot_cpu_has(X86_FEATURE_FLUSH_L1D))
>  		return -EINVAL;
> =20
> -	cpu =3D get_cpu();
> -
> -	for_each_cpu(i, &tsk->cpus_mask) {
> -		if (cpu_data(i).smt_active =3D=3D true) {
> -			put_cpu();
> -			return -EINVAL;
> -		}
> -	}
> -
>  	set_ti_thread_flag(&tsk->thread_info, TIF_SPEC_L1D_FLUSH);
> -	put_cpu();
>  	return ret;
>  }
> =20
> @@ -349,6 +338,12 @@ int disable_l1d_flush_for_task(struct task_struct *t=
sk)
>  	return 0;
>  }
> =20
> +static void l1d_flush_kill(struct callback_head *ch)
> +{
> +	clear_ti_thread_flag(&current->thread_info, TIF_SPEC_L1D_FLUSH);
> +	force_signal(SIGBUS);
> +}
> +
>  void switch_mm(struct mm_struct *prev, struct mm_struct *next,
>  	       struct task_struct *tsk)
>  {
> @@ -443,12 +438,14 @@ static void cond_mitigation(struct task_struct *nex=
t)
>  	}
> =20
>  	/*
> -	 * Flush only if SMT is disabled as per the contract, which is checked
> -	 * when the feature is enabled.
> +	 * Flush only if SMT is disabled, if flushing is enabled
> +	 * and we are on an SMT enabled core, kill the task
>  	 */
> -	if (sched_smt_active() && !this_cpu_read(cpu_info.smt_active) &&
> -		(prev_mm & LAST_USER_MM_L1D_FLUSH))
> -		l1d_flush_hw();
> +	if (unlikely(prev_mm & LAST_USER_MM_L1D_FLUSH)) {
> +		if (!this_cpu_read(cpu_info.smt_active))
> +			l1d_flush_hw();
> +		else
> +			task_work_add(prev, l1d_flush_kill, true);

We have no access the to the previous task and mm->owner depends on MEMCG :=
)
We can do the magic in mm_mangle_tif_spec_bits(), I suppose

Balbir


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/044e9835-f4fe-6670-90df-15fe376ecadd%40amazon.com.
