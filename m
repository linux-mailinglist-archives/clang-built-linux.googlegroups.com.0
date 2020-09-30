Return-Path: <clang-built-linux+bncBCGI7NV74QARBU4V2T5QKGQE4TYQSPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD1B27F55D
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 00:46:45 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id k9sf1802824pgq.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 15:46:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601506004; cv=pass;
        d=google.com; s=arc-20160816;
        b=M0d7SBnagruigF7LV5eGR2TbazbAyteLA5jYn8oSYnXf7qZLjq+YFhpcnkgXC99oW5
         KXqlLOwDC9iY3c1GvibyJWrauT1s+o9UvPg+ZMV5jQ58r3YJen484Dmk/XDl7Pjge2Dk
         dUy/gYiAM01ooz7nYkPLe89rx+yjmHVOJ90WB5eO+GFM1QYSENOSAiNtzI49ZTfXUJb0
         pSpXjKo45acbD6QnGOkqJ1oI2c01ozb+qt7lo6dLPXW4wwqB2mWIzV+BrCfzkhqM673m
         3GC+m7aNB+P0qLXG7pM9sb8x1qRGKG37xUCXZPxVDahLBCowrRyER+PvDdfrMp9sEwVZ
         75wQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=wplGfQfmGjIitS9Y9rL0FBb5XYcON4IVzS5QXqJNrAM=;
        b=YD4JbwpUx+9Ru9hHGvLl7uIyfgYREFzSOSOKKYGvBh1A+e2cKD1rJOpXyvseCeyIZE
         B+CmhhucrqZSMS3Gf2ERGzdcGZw28sF78fQc2S3XEux5aV8ZrcWPUoKORJzwBEmne2bL
         +Wlcz2XFw0Y/AZnOuZ9B7zCaXcl8I/VSGSbgZMtVbG0L16D6Q2ozrP60RA0eEDlREuVB
         TOvK25do86e50t5asPVVGK73R4+XCI++snCNHmQ27jxFnrJuauljJxWkjjUtp/Nh7WMJ
         5xOAJkASxEj8Nffmj2kk+f88r3rYa/HjssurvXGCQCMccONl7DqqMFimsGSolFrbbwtD
         Q/dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amazon.com header.s=amazon201209 header.b=VZOpjgIN;
       spf=pass (google.com: domain of prvs=53595e4c7=sblbir@amazon.com designates 52.95.48.154 as permitted sender) smtp.mailfrom="prvs=53595e4c7=sblbir@amazon.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amazon.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=wplGfQfmGjIitS9Y9rL0FBb5XYcON4IVzS5QXqJNrAM=;
        b=hXDjKdp1vFvrJZYfVs+Yyyo9mDHzV+3NGZvwq1hZq6JY8e8aRg5ju5PVL01S+w+ZCu
         kwsDEO2MB2o4LTeCuJeOlYEw94A/ldHFeuDAokUztiwrMqvY8h/F2sa6//NTO7o+mXgX
         mgO7RUBzQxMelsxKJzbq2UUMfidIG2nuVT1xRpZnEkVaMyh92cvaJkzQHJODTfeXIFjy
         3pimiZ8myb0m+zLHGWrQik3K8F7nxv9qVLXRlQl5X/+RL5Lb4FjgencHtHIiiZ10Q9Pe
         taQlNab8EOlUVvmQxe9aq5k3o2Pd+dd01RMsbIdxyQUToVKEPRwWtLOpSmKPeZGSqCaI
         IX4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wplGfQfmGjIitS9Y9rL0FBb5XYcON4IVzS5QXqJNrAM=;
        b=aWz5KE6vxFb15hKQD8nWAVNQNn9A+4pNSobS/K/Fw4l355h+oR1gI6zEWXvUL6yHDJ
         n+uR/1F1lKjeaBCc5Dw6oJkwGRNI9UYTvqUAvBdRmZDDZNPFCDizgwiO15SuVb+8B2Ag
         6ldFaUsYbC43t3VIWtx8LxvnYAhu2kA11l4pBBPKxrZDUtCRC35kmkMubxIVKb2rJW7w
         GmTl7xzzDIh7YmsSV7ZQTjaqUisKHu4QwYcd6tUiUsLfwP1seimWCAzzj9X3HK5iCH/G
         PNmahIiFFj9np8ozwlZNSQWZrYjZR9k7HS9Y+vvLy7PBjS4hQ99nWshrCZZ9JHtREGcu
         gCpQ==
X-Gm-Message-State: AOAM532CRPs++/F8ccR+5IClzqueO+Oljx/F4c7sKXtBBfSI67oO+PFm
	To5dP9oi1CFqPpK5FxT9lUc=
X-Google-Smtp-Source: ABdhPJzriQUfrr1KG0lagY+BJ6Vy0YzaFbsPoTsM6+Q08EDO7VDddN9yDsEwxE9Meq0mSJu+TinqeA==
X-Received: by 2002:a17:902:768a:b029:d2:ac2f:8945 with SMTP id m10-20020a170902768ab02900d2ac2f8945mr4217492pll.61.1601506003761;
        Wed, 30 Sep 2020 15:46:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:515f:: with SMTP id r31ls1091315pgl.7.gmail; Wed, 30 Sep
 2020 15:46:43 -0700 (PDT)
X-Received: by 2002:aa7:934e:0:b029:13f:d056:593 with SMTP id 14-20020aa7934e0000b029013fd0560593mr4552187pfn.15.1601506003037;
        Wed, 30 Sep 2020 15:46:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601506003; cv=none;
        d=google.com; s=arc-20160816;
        b=UmQTuXNbN0aIY3d95SzWclAtcSddJyfcWx8zTi131QZeL60KbNSbiTK1QYs1Ev9Rox
         ZSzbbqonvgRmMFGKZdHNUyO8DxG65snC6FDQnb8pLkX79CQJ29EIKw5EUdZEO8vhL60R
         sJp06wdqd+bc6kqRcL138PhmS7exvqNJwDkHYgASZkdF5hKM/GJ1jnoqQBdPPi2KSQJe
         OhgPgDgvR4fDUyn4kW23oC2PvC1hVCgMWd8JpZR/MLVSIhzPM9hbSSFejNCnJgFG9O7w
         r8NY1aNyrhc1LDSfcWZlG1gPlFAsG0jMyGVefGFiNJHdmnJ74wwZJGOXTktdH9OGG2V1
         6Q0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=F/SbDhmGbWiPKTxysvIcGmIlg1dJ3vja/M6Ue4Qkg+E=;
        b=uA5ETT0lL7W+Rs0n93x5xYXeXyWoYGebEdlUtfQJE8GsKTUSmkggXa6m44MGtitBCy
         MBbttMsC/IYsqsqFb466+OkWfyl2MdlQnVnDuQWlCCDqD3kHC3FhdCmOs7c/eoUp0xQ5
         T6XzuHEyqRhgUvzxY/V8uSYIi/0DOJacDoFCQujYr8jFSnrRacQhMA/sr2Ea/BHq0p0I
         u3PX/F0rgM5FF2/d4AYr76ylklmjiBWaSLAmsinth/kacE+S26KC/6UnZWQyQpCe19wC
         MAP2WHmq5pquUJkEewDPHHKIJXWBEKWwTa5YESMQ7btfLlH/PI1DMz2eA+wZHr3VFMwc
         HqBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@amazon.com header.s=amazon201209 header.b=VZOpjgIN;
       spf=pass (google.com: domain of prvs=53595e4c7=sblbir@amazon.com designates 52.95.48.154 as permitted sender) smtp.mailfrom="prvs=53595e4c7=sblbir@amazon.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amazon.com
Received: from smtp-fw-6001.amazon.com (smtp-fw-6001.amazon.com. [52.95.48.154])
        by gmr-mx.google.com with ESMTPS id j16si189590pgj.1.2020.09.30.15.46.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 15:46:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=53595e4c7=sblbir@amazon.com designates 52.95.48.154 as permitted sender) client-ip=52.95.48.154;
X-IronPort-AV: E=Sophos;i="5.77,322,1596499200"; 
   d="scan'208";a="58732394"
Subject: Re: [PATCH -next for tip:x86/pti] x86/tlb: drop unneeded local vars in
 enable_l1d_flush_for_task()
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO email-inbound-relay-1a-e34f1ddc.us-east-1.amazon.com) ([10.43.8.6])
  by smtp-border-fw-out-6001.iad6.amazon.com with ESMTP; 30 Sep 2020 22:46:42 +0000
Received: from EX13MTAUWB001.ant.amazon.com (iad12-ws-svc-p26-lb9-vlan3.iad.amazon.com [10.40.163.38])
	by email-inbound-relay-1a-e34f1ddc.us-east-1.amazon.com (Postfix) with ESMTPS id 7D3A0A1BD0;
	Wed, 30 Sep 2020 22:46:36 +0000 (UTC)
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.249) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 30 Sep 2020 22:46:35 +0000
Received: from f8ffc2228008.ant.amazon.com (10.43.161.146) by
 EX13d01UWB002.ant.amazon.com (10.43.161.136) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 30 Sep 2020 22:46:32 +0000
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
From: "'Singh, Balbir' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <7785b27b-1a88-c7f0-ae47-f4f75876cb83@amazon.com>
Date: Thu, 1 Oct 2020 08:46:29 +1000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.1.1
MIME-Version: 1.0
In-Reply-To: <87blhni1pg.fsf@nanos.tec.linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
X-Originating-IP: [10.43.161.146]
X-ClientProxiedBy: EX13D46UWB002.ant.amazon.com (10.43.161.70) To
 EX13d01UWB002.ant.amazon.com (10.43.161.136)
X-Original-Sender: sblbir@amazon.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amazon.com header.s=amazon201209 header.b=VZOpjgIN;       spf=pass
 (google.com: domain of prvs=53595e4c7=sblbir@amazon.com designates
 52.95.48.154 as permitted sender) smtp.mailfrom="prvs=53595e4c7=sblbir@amazon.com";
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

On 1/10/20 4:00 am, Thomas Gleixner wrote:
> CAUTION: This email originated from outside of the organization. Do not click links or open attachments unless you can confirm the sender and know the content is safe.
> 
> 
> 
> On Wed, Sep 30 2020 at 19:03, Peter Zijlstra wrote:
>> On Wed, Sep 30, 2020 at 05:40:08PM +0200, Thomas Gleixner wrote:
>> Also, that preempt_disable() in there doesn't actually do anything.
>> Worse, preempt_disable(); for_each_cpu(); is an anti-pattern. It mixes
>> static_cpu_has() and boot_cpu_has() in the same bloody condition and has
>> a pointless ret variable.
> 

I was being a bit crazy in mixing the two, considering that there might
be CPUs that do not support L1D flush (others might in the same system,
which is insane)

> I absolutely agree and I really missed it when looking at it before
> merging. cpus_read_lock()/unlock() is the right thing to do if at all.
> 

It seems like the right thing to do, get_cpu() used to be the old method.
The idea is to use cpu_data(i) in a hotplug safe manner.

>> It's shoddy code, that only works if you align the planets right. We
>> really shouldn't provide interfaces that are this bad.
>>
>> It's correct operation is only by accident.



> 
> True :(
> 
> I understand Balbirs problem and it makes some sense to provide a
> solution. We can:
> 
>     1) reject set_affinity() if the task has that flush muck enabled
>        and user space tries to move it to a SMT enabled core

I thought of this and it would be difficult to debug for users, taskset -c
would not work on applications that flush, etc, etc.

> 
>     2) disable the muck if if detects that it is runs on a SMT enabled
>        core suddenly (hotplug says hello)
> 
>        This one is nasty because there is no feedback to user space
>        about the wreckage.

Yes, agreed.

> 

Trying to look at the concerns, I wonder if this can still be saved

-       if (!boot_cpu_has_bug(X86_BUG_L1TF) ||
-                       !static_cpu_has(X86_FEATURE_FLUSH_L1D))
+       if (!static_cpu_has(X86_BUG_L1TF) ||
+               !static_cpu_has(X86_FEATURE_FLUSH_L1D))
                return -EINVAL;

-       cpu = get_cpu();

+       cpus_read_lock();
        for_each_cpu(i, &tsk->cpus_mask) {
                if (cpu_data(i).smt_active == true) {
-                       put_cpu();
+                       cpus_read_unlock();
                        return -EINVAL;
                }
        }
+       cpus_read_unlock();

        set_ti_thread_flag(&tsk->thread_info, TIF_SPEC_L1D_FLUSH);
-       put_cpu();
        return ret;
 }

I don't like the idea of iterating CPUs in the cpumask to check if they
all have SMT disabled, but that is a requirement for flush

Balbir

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7785b27b-1a88-c7f0-ae47-f4f75876cb83%40amazon.com.
