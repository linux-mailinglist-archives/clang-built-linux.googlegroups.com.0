Return-Path: <clang-built-linux+bncBCGI7NV74QARB4U32T5QKGQE3BOGSQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id AD59127F597
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 01:00:03 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id 45sf1137056uaf.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 16:00:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601506802; cv=pass;
        d=google.com; s=arc-20160816;
        b=zYaoZHjG0deKVG0svH86ckoJZnOXOloz3J3pey0m0X7h4tZzceGk/4cQGSNUgBKnRD
         KixawJhmtScoT2haDayaDBhKywznUO6aeROthwBil93CmaHiBYct/4NcrtVKZbTDxYoA
         yQCDFZObK65CRU4QYbbMoimzzEWEUbNSFxEo+2eWYkPzIAaahQwZH0P/RwMdHm+H31Ut
         e2tA1qDz1v9PTvVDFB7vajP9HSS2R2gR47H/JFgGq8mFBrYmNa2npiDDyV8Y0FzI8E44
         FK4fZUmoy3dKsiYbcqj6Br4ZQ8T6eMjjAEe+YwNcPb/TH/cjj5W0J4Q4GzqIrxvj+LPa
         Dj2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=RBgfoAK1I4CHVhU2WJO4K3KamCPPzH0QToVh/q+dpf8=;
        b=ui4LgJxo5vvwJSv2pSoeymTlAtBiDHO2bczUILJNWwJWgBD3jgRFADX/6FZ8TiF+0P
         RV8m+UQJBiw/Q24N2QkzhKHgiw0oFuCxA2Z5P/ajmG+sifAIRto/6zTb/igW3fpGN0fe
         IBUwzCF/2ZK8jNxymwLXgthmpqWjBTQa/HfW/vOQhwWywHeCtxZFuAJ1nhVmnOMeGb72
         G/ubMaCS25QaQMJK6JvZdrEMshFr72cPnogk+E3fXjW1XnayGEGrASSlqmFgNpyn7Sv2
         wuKbmopUGgPdKMRUVXnRe9//E5pv8WEGLRnCXIVf6vNeiDHGTBsicx0+JrulpFkNtkrc
         NxWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amazon.com header.s=amazon201209 header.b=JO9t2mv7;
       spf=pass (google.com: domain of prvs=53595e4c7=sblbir@amazon.com designates 72.21.198.25 as permitted sender) smtp.mailfrom="prvs=53595e4c7=sblbir@amazon.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amazon.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=RBgfoAK1I4CHVhU2WJO4K3KamCPPzH0QToVh/q+dpf8=;
        b=p1sP43FseZKGTBQfJz7YxGv7rR52xG0gaGHM9wgg9jyV3lwiMhDlvQ5fG4xz8kurKx
         66Rz9Jc+ITHcnT4rx8hBT+Fkb8itAMVZ0tjVGD2aUWHr7UXAW3eU6D1cV+24+yOR3ZFa
         DoQNYN6wXu3KIv//+tvMDK8b8wyGVWE5Oirpov0UGjBYCpaC7dqdmD19zO83x621bhJ3
         aJioH5ABkqKcA8UEfbAIQm6jqWp1j9QROotzE4UdEgXMjdFzQ9xb5bRSSw5xMm7aq9eU
         fptB9iBa0/rxHPSTUQiCThxl6DZrNOTFcRHNX/z+L+8XoF2467qNvtwjt/WhA3hRdIlk
         0tEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RBgfoAK1I4CHVhU2WJO4K3KamCPPzH0QToVh/q+dpf8=;
        b=T4hOtSjUdsnI5NMDbcPmqi5X76bkvG7GnBPA+fwpdOisPPxi1bnSy5EAM7xVSN2dla
         M7LKGp6EeEn8C443VDMvIv9u5W8mlQqxAYFAJ1edzji6HoH1tqHRXKEhgPU28BHuX/61
         9fhDwJPpfUyg98t9bdC8751hgHDKyIMwEcYPWJTz2oy0uTdSUOnAAOmpGA5jYjUk74hZ
         fmL2xnYY38WBaqTqWkDDgMiSrgz4nwv3/gjuKi6gNskW/HtFnxlULfh01fY5z94f/KX0
         nFjAi+iFkPqHUQc+QTaRXILCc4rNLyz+0HOigsQb2f6ruG5kKPbrLMEKcLmLJYH1U0AC
         ORhQ==
X-Gm-Message-State: AOAM531pptH38cyBYmYBzWY/14z64YM1b6wBpCnCBT3cpqnr2QiY/w3O
	+DH4VSbo0sWAl0GnNTTqjog=
X-Google-Smtp-Source: ABdhPJyECmhR/cbu/AOivxziGmadNxkMdPWRAhf8FNXnmmOpP6mlOR9/zg6ogDacETXILo/fEqsu5Q==
X-Received: by 2002:a67:544:: with SMTP id 65mr3156882vsf.34.1601506802371;
        Wed, 30 Sep 2020 16:00:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:874b:: with SMTP id j72ls428962vsd.9.gmail; Wed, 30 Sep
 2020 16:00:01 -0700 (PDT)
X-Received: by 2002:a67:be08:: with SMTP id x8mr3405059vsq.43.1601506801845;
        Wed, 30 Sep 2020 16:00:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601506801; cv=none;
        d=google.com; s=arc-20160816;
        b=Mp/mYm4l13X3rGqRYtHRecsyGKNwfe4q3Qlt7fQ3du3rj8KO6lTuj4hSl0WIXypwBO
         xAk5OgF//tewroI4aHKTcDDaxvsIbjn+f/hrHZPbiJW5ddtjmTA6VxFQrVVS1MoNfC6f
         207yA1dvBNZ8Ks1akAUQ9OGApJA1hHfR90F0xt5ipIWg+Of8/dg6sJpYabvwf6R07YSi
         dhS9bPC+4qA0+d3ld9nGu34v2FLJYLU9OWHtrPmo2ShuV/gsHILolIFcim5pfAGF1qDS
         Q5gTujpr4sgN0rCTblbmNWhT+gCmWkN0z+x5naQSTG1f0Txr8A54Dk4ZDAZzs/2jPOlo
         eocQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=ERi0Pf4HQMHPa9rJT2IBPZJNeA9YKjn1VuAaepvxx8k=;
        b=CZ6io4kSO2ZOuX5mMCA4RT4j+FvpKqcZ6dFyiiXmhEwXy/oSZyjFIdR6kzQJK5vgmX
         aFIo84sfWJeExpH6olOmIdZio0sQ27rg+FraFfjLkShrWieuPA4o9zXza2Sa5t/fjhPM
         BAv59bGK42Dk8YvvI6AEQVYzEAbKDoAzC+EvKaCx4Fh1HVWbhkrO4UmlhjlL9cYA2XfH
         9g+yDShXu3k4+BBMy9umYzpeg1kEuonBt8MHc3wOxZhyWgVVspNY7BnHZ7GdGchezz3R
         B7V45xQAIcklAV9DcKgfWKtCuRFwN9NjAEMiThnGPfDzPobLxmMhgyyD0a+CB732Tlnu
         OcKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@amazon.com header.s=amazon201209 header.b=JO9t2mv7;
       spf=pass (google.com: domain of prvs=53595e4c7=sblbir@amazon.com designates 72.21.198.25 as permitted sender) smtp.mailfrom="prvs=53595e4c7=sblbir@amazon.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amazon.com
Received: from smtp-fw-4101.amazon.com (smtp-fw-4101.amazon.com. [72.21.198.25])
        by gmr-mx.google.com with ESMTPS id p129si202811vkg.3.2020.09.30.16.00.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 16:00:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=53595e4c7=sblbir@amazon.com designates 72.21.198.25 as permitted sender) client-ip=72.21.198.25;
X-IronPort-AV: E=Sophos;i="5.77,322,1596499200"; 
   d="scan'208";a="57321998"
Subject: Re: [PATCH -next for tip:x86/pti] x86/tlb: drop unneeded local vars in
 enable_l1d_flush_for_task()
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO email-inbound-relay-1d-16425a8d.us-east-1.amazon.com) ([10.43.8.6])
  by smtp-border-fw-out-4101.iad4.amazon.com with ESMTP; 30 Sep 2020 23:00:01 +0000
Received: from EX13MTAUWB001.ant.amazon.com (iad12-ws-svc-p26-lb9-vlan2.iad.amazon.com [10.40.163.34])
	by email-inbound-relay-1d-16425a8d.us-east-1.amazon.com (Postfix) with ESMTPS id 06073100F6F;
	Wed, 30 Sep 2020 22:59:55 +0000 (UTC)
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.207) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 30 Sep 2020 22:59:54 +0000
Received: from f8ffc2228008.ant.amazon.com (10.43.161.237) by
 EX13d01UWB002.ant.amazon.com (10.43.161.136) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 30 Sep 2020 22:59:51 +0000
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
Message-ID: <9b700b03-6bbd-b969-abb8-a004c813446d@amazon.com>
Date: Thu, 1 Oct 2020 08:59:48 +1000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.1.1
MIME-Version: 1.0
In-Reply-To: <87k0wbgd2s.fsf@nanos.tec.linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
X-Originating-IP: [10.43.161.237]
X-ClientProxiedBy: EX13D36UWB002.ant.amazon.com (10.43.161.149) To
 EX13d01UWB002.ant.amazon.com (10.43.161.136)
X-Original-Sender: sblbir@amazon.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amazon.com header.s=amazon201209 header.b=JO9t2mv7;       spf=pass
 (google.com: domain of prvs=53595e4c7=sblbir@amazon.com designates
 72.21.198.25 as permitted sender) smtp.mailfrom="prvs=53595e4c7=sblbir@amazon.com";
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
> CAUTION: This email originated from outside of the organization. Do not click links or open attachments unless you can confirm the sender and know the content is safe.
> 
> 
> 
> On Wed, Sep 30 2020 at 20:35, Peter Zijlstra wrote:
>> On Wed, Sep 30, 2020 at 08:00:59PM +0200, Thomas Gleixner wrote:
>>> On Wed, Sep 30 2020 at 19:03, Peter Zijlstra wrote:
>>>> On Wed, Sep 30, 2020 at 05:40:08PM +0200, Thomas Gleixner wrote:
>>>> Also, that preempt_disable() in there doesn't actually do anything.
>>>> Worse, preempt_disable(); for_each_cpu(); is an anti-pattern. It mixes
>>>> static_cpu_has() and boot_cpu_has() in the same bloody condition and has
>>>> a pointless ret variable.
>>
>> Also, I forgot to add, it accesses ->cpus_mask without the proper
>> locking, so it could be reading intermediate state from whatever cpumask
>> operation that's in progress.
> 
> Yes. I saw that after hitting send. :(
> 
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
> 
> It was meant as AND of course.
> 
>> Now 1) requires an arch hook in sched_setaffinity(), something I'm not
>> keen on providing, once we provide it, who knows what strange and
>> wonderful things archs will dream up.
> 
> I don't think so. We can have that magic in core:
> 
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
> 
> It's a pretty well defined problem and having the magic in core code
> prevents an arch hook which allows abuse of all sorts.
> 
> And the same applies to enable_l1d_flush_for_task(). The only
> architecture specific nonsense are the checks whether the CPU bug is
> there and whether the hardware supports L1D flushing.
> 
> So we can have:
> 
> #ifdef CONFIG_HAS_PARANOID_L1D_FLUSH
> int paranoid_l1d_enable(struct task_struct *tsk)
> {
>         /* Do the SMT validation under the proper locks */
>         if (!res)
>                 set_task_thread_flag(tsk, TIF_SPEC_L1D_FLUSH);
>         return res;
> }
> #endif
> 
>> And 2) also happens on hot-un-plug, when the task's affinity gets
>> forced because it became empty. No user feedback there either, and
>> information is lost.
> 
> Of course. It's both that suddenly SMT gets enabled on a core which was
> isolated and when the last isolated core in the tasks CPU mask goes
> offline.
> 
>> I suppose we can do 2) but send a signal. That would cover all cases and
>> keep it in arch code. But yes, that's pretty terrible too.
> 
> Bah. I just looked at the condition to flush:
> 
>         if (sched_smt_active() && !this_cpu_read(cpu_info.smt_active) &&
>                 (prev_mm & LAST_USER_MM_L1D_FLUSH))
>                 l1d_flush_hw();
> 
> That fails to flush when SMT is disabled globally. Balbir?

It should have been 

!sched_smt_active() || (cond)

and not

sched_smt_active && (cond)

I'll fix that up, but your simplification below works as well.




> 
> Of course this should be:
> 
>         if (!this_cpu_read(cpu_info.smt_active) && (prev_mm & LAST_USER_MM_L1D_FLUSH))
>                 l1d_flush_hw();
> 
> Now we can make this:
> 
>         if (unlikely(prev_mm & LAST_USER_MM_L1D_FLUSH)) {
>                 if (!this_cpu_read(cpu_info.smt_active))
>                         l1d_flush_hw();
>                 else
>                         task_work_add(...);
> 
> And that task work clears the flag and sends a signal. We're not going
> to send a signal from switch_mm() ....
> 

Yes, I see MCE handling uses a similar pattern, so SIGBUS for a task that migrates/moves
to a SMT disabled core?

Thanks,
Balbir

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9b700b03-6bbd-b969-abb8-a004c813446d%40amazon.com.
