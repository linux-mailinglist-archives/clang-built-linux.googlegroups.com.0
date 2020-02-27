Return-Path: <clang-built-linux+bncBDQJLKMJREOBBZXX4DZAKGQE4CX2QJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D45172AA0
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 23:00:07 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id a11sf363364oii.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 14:00:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582840806; cv=pass;
        d=google.com; s=arc-20160816;
        b=HLR1VC5LK364m1fw4XYZhLq96ViAV0RijhIqJwb0Uz/RDQVECInpDl5bcYSH/WCmDS
         KcqGCA2qL9ADnf5QGEE0whENU4AkDatt8zG3lFqZhwfyZbtZZRbbkmsZoK72ADsGwSYz
         /2XJyAEvZP3BCqh30d1aHsgjUdN5Ft0RnZ1TBoz4RlipThGnkxx9WBd23KEQrgvg/hcG
         STT1NajnmRxkHIxbp97H/loB+m82q3HAFdoKjVE39BblWgpPlUACF6OSBL7IbyuG9Mlf
         bH5KFM2bKbQXFLWzYHCcnJU7V8ZbhUAI3bZLl9yOPo1VlQK0gFhvOdxpZH7UdgfhHg2s
         PBTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=EonXz07LqBOmuo9DjrrTvoLdlKx+6DYjqdHJoTbfYOE=;
        b=J1i+adcHwo0mT4zMDXVvRZ/9i6SVRTHyrDd+fm5/2IFWYcsOw134G9Ufl/VBDuuiiD
         L0OSgEADpkNeIiSt2oAbtHV458EtQO4phkqEjjjXHuUO9xz/C6iSqff4Yjh/s+mFpZqD
         awzOoy9u4ipCCsht9YdN/7hkQLOsMuZqbmO5jOu2LAIF9JkKhVclVyyoWgrlgHIyZRUA
         LvhETNgoGH0h89Pzr1Xd2UqJ3Cg/jxOaNNDB2+AyVco4v3OgFFPHb3l/1CgG+KaTithv
         BM4kyNpFTcLdUt0csGr4snV8txUaJ6gAczYOcKMdotSxoVbLQ1kkzZ1H4MmG1VoF9/hX
         YVdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=BiK6GIgK;
       spf=pass (google.com: domain of thara.gopinath@linaro.org designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=thara.gopinath@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EonXz07LqBOmuo9DjrrTvoLdlKx+6DYjqdHJoTbfYOE=;
        b=IOF8KGXQBwRUTsQ/aNtA2pxr5nGJ5Mz2Y1GxiWLlDCyftEWzR0r2ZGbZpSHUtmKVMx
         CLHS83LsxHQU/to6EjKPy3vsAD/Li9xNK9mHEB1m59pOhWdIti2tXD/dZUV6JOjwI6q6
         V8iNzfe5ZilnDLvSBRhBWzeNfB573/llAYFmxcTE4IcqFx0xmHO8kD9Ld/pkGqW0OpBS
         KBtWhYASIzvGYtZqXeH3XeHvFaE+24DoTp6DutaGp+4F+9Agmsv3fSPMzKazUKd71u11
         a/RxiT7v9+oONNR7VwPTQCwAgC5dqOkz/kkTMiCh9VFN5nmDiZgs5EQ22FSynTg21VC7
         TE4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EonXz07LqBOmuo9DjrrTvoLdlKx+6DYjqdHJoTbfYOE=;
        b=QhjIXaw1yOSTOfG+KSaXRffQrfiE+LWX0d1XaxAROPvkVFYtRXZb4/NLEN5Jp5MNXE
         oKXY2NCPYsPOhNG98CV0Ked6ODDc9aTfg8Qh3W1rWC6qGdRcSpkywPs95GpiREgWt4iG
         3N3Sb4WjnXDA4uQyWiwUqhyArqoyF4lDnvdDVixwLlVrlX4U5qWWMSwPc+W42SUUb8YN
         K17vyEvKbdk/GI/vbuGFInfmHDr7oTqumzX4NHs2S1rIVljZtwEKYtK7bqsrlMI36dOR
         XfquJCJe/+SuztB9ghQNUGiyE/48jd4gcv/Mm3O1InnZ8lerxrBnfa0SmqCE7taWkWUV
         Vgjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVSnbMfq6r+d7m9u3J8tYS/ODIDQdjUASj/Gw3/4w6ZUx7l/nU7
	hRdAQIYfgazThdxQJXVdqmU=
X-Google-Smtp-Source: APXvYqyLh6KKswERm1/r6ZJ14vY75czU8+VkdLSDPqByL7A2AogS4fK+5HEtg7ZoELiV4igexPo/Rw==
X-Received: by 2002:a9d:7607:: with SMTP id k7mr786683otl.205.1582840806265;
        Thu, 27 Feb 2020 14:00:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:534e:: with SMTP id h75ls397688oib.9.gmail; Thu, 27 Feb
 2020 14:00:05 -0800 (PST)
X-Received: by 2002:aca:53c6:: with SMTP id h189mr875213oib.11.1582840805882;
        Thu, 27 Feb 2020 14:00:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582840805; cv=none;
        d=google.com; s=arc-20160816;
        b=PNPOn5i8NbcKQD72xpZZ4gF6UE5rVdGcpysbjuCk1FENQrDc1frGwuWpoMmhfUnJ7p
         yvylSguYuI1yCeZYz2SyoXPBGB5FKAC5oAtZTsw5HrwSZ7ndfSmHHsc9rXXukHqzrtNa
         PFJh70WzG3vOc62ykFlzKsJUr1f8nckG+7pZwBPJSOhJrvf/oDVBT0VoJemiSkBYGdwA
         Z5qhg4ad0yqjQs8wNQA3ZfQhir8njOUaCFiox8xJClwPdPHdZwvplL0AlvagLtbNdIFe
         g4TlDd+MFv7ipbOVsXDJEPVUarlrEM3JV9L3LjRPCCimwV6B8Xj4a221hZPlS/9Lb+57
         Wc/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Jas7pIyL3Xo4hC+BkxfM/bQ2DmOmdUTF0mV+R7R14mE=;
        b=AOWw3ld7G5aN8aWaAO+8dcWMkMV7TB3DFyjof7tKqNgqKHb4Kx+g2zJObjhNCr6DjW
         OPIgTxe71xMpRq4c9G7fqhtc4VrwwR57vVg1grKKFdjmUIsu+cQPWpxLi0EOhR1OHyV9
         hrbkVVEC/4LYtLifEKf70qu1Slufqj+8HBV4VOzh8me8dIea8bnEhYj/prhFOtKcQLK9
         pxaG6zpMzFeLi24hJH79P1RcZrc68+pOZ9bB+/gC+NzY4MzbfkeUuaUg+6hMUvKsiHtm
         WgmjFvzhyIlcVKypftboyAJ9qIdN90Wy/X3bzmy1XenYu6k1Yu0TfQe/QqoDctwJdfv3
         /Iig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=BiK6GIgK;
       spf=pass (google.com: domain of thara.gopinath@linaro.org designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=thara.gopinath@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id j15si83229oii.3.2020.02.27.14.00.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 14:00:05 -0800 (PST)
Received-SPF: pass (google.com: domain of thara.gopinath@linaro.org designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id z12so1023173qkg.12
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 14:00:05 -0800 (PST)
X-Received: by 2002:a37:9ad2:: with SMTP id c201mr1671377qke.112.1582840804801;
        Thu, 27 Feb 2020 14:00:04 -0800 (PST)
Received: from [192.168.1.92] (pool-71-255-246-27.washdc.fios.verizon.net. [71.255.246.27])
        by smtp.gmail.com with ESMTPSA id t30sm3875035qtd.67.2020.02.27.14.00.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 14:00:03 -0800 (PST)
Subject: Re: [peterz-queue:sched/wip-deadline 3/19]
 kernel//sched/pelt.c:393:43: error: too many arguments to function call,
 expected 2, have 3
To: Peter Zijlstra <peterz@infradead.org>
Cc: Vincent Guittot <vincent.guittot@linaro.org>,
 kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com
References: <202002261428.LgRaxM1P%lkp@intel.com>
 <6374b5e6-8059-2107-1e0d-e3d47a08c4a5@linaro.org>
 <20200227081439.GE18400@hirez.programming.kicks-ass.net>
From: Thara Gopinath <thara.gopinath@linaro.org>
Message-ID: <47a6e4d8-1f78-f46c-1039-3554f27c391f@linaro.org>
Date: Thu, 27 Feb 2020 17:00:02 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200227081439.GE18400@hirez.programming.kicks-ass.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: thara.gopinath@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=BiK6GIgK;       spf=pass
 (google.com: domain of thara.gopinath@linaro.org designates
 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=thara.gopinath@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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



On 2/27/20 3:14 AM, Peter Zijlstra wrote:
> On Wed, Feb 26, 2020 at 11:35:24PM -0500, Thara Gopinath wrote:
>>
>>
>> On 2/26/20 1:59 AM, kbuild test robot wrote:
>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/wip-deadline
>>> head:   0467e3b09008e97dabd2373eaaa471fce23d32b4
>>> commit: 15ebf004a9f97a00bd84abab23bacfad39029623 [3/19] sched/pelt: Add support to track thermal pressure
>>> config: arm64-allyesconfig (attached as .config)
>>> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 396b7253944e927878dff2f6321efabb3aaa0f45)
>>> reproduce:
>>>           # FIXME the reproduce steps for clang is not ready yet
>>>
>>> If you fix the issue, kindly add following tag
>>> Reported-by: kbuild test robot <lkp@intel.com>
>>>
>>> All errors (new ones prefixed by >>):
>>>
>>>>> kernel//sched/pelt.c:393:43: error: too many arguments to function call, expected 2, have 3
>>>                      ___update_load_avg(&rq->avg_thermal, 1, 1);
>>>                      ~~~~~~~~~~~~~~~~~~                      ^
>>>      kernel//sched/pelt.c:241:1: note: '___update_load_avg' declared here
>>>      ___update_load_avg(struct sched_avg *sa, unsigned long load)
>>>      ^
>>>      1 error generated.
>>
>> Hi Peter,
>>
>> This is caused due to patch[1] from Vincent which has changed removed
>> runnable load avg parameter from __update_load_avg.  The fix is quite
>> trivial and is as follows.
>>
>> @@ -390,7 +390,7 @@ int update_thermal_load_avg(u64 now, struct rq *rq, u64
>> capacity)
>>                                 capacity,
>>                                 capacity,
>>                                 capacity)) {
>> -               ___update_load_avg(&rq->avg_thermal, 1, 1);
>> +               ___update_load_avg(&rq->avg_thermal, 1);
>>                  trace_pelt_thermal_tp(rq);
>>                  return 1;
>>          }
>>
>>
>>
>> How do you want me to proceed here?
>> Do you want me to resend the entire series after re-basing to tip/sched/core
>> or do you just want to fix this in your branch?
> 
> I had already fixed this up and re-pushed. My bad for not doing a local
> compile test before pushing it out :-)

Thanks!

> 
> See here:
> 
>    https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/log/?h=sched/core
> 

-- 
Warm Regards
Thara

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/47a6e4d8-1f78-f46c-1039-3554f27c391f%40linaro.org.
