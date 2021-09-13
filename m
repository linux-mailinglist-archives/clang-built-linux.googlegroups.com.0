Return-Path: <clang-built-linux+bncBD26TVH6RINBBSOH7KEQMGQEIEI2BBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B048E408276
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 03:05:13 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id k20-20020a05651239d400b003d91160994dsf2683290lfu.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Sep 2021 18:05:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631495113; cv=pass;
        d=google.com; s=arc-20160816;
        b=nosMiGmhk+r3QSFzvUWyi7nkO7qo9jF2cwZQxAtiD2ncoIbdV6X40gQ6x4KXPocped
         KHrj31mwcm1q74VL3SmOECU9+gvM0Uu5CC5gZzEdLQlbN70dqbhGCg/nr1SVMhCjDXob
         Uk8ZBGuv+OtvjRGtzarWHvUrjwJIZKtjm/jHW+sPOn63PbEp0bxR4Wk1M6+REi9tbOl/
         mTWfRdrCqgK64PnM0N9jO5nVZkTskNKmcCISfFBYwKjQfksKsv4d2Z8HQ2IOrVa5ymND
         aob21gGztVNiIcK1daW6xEW0mUsu2oKkKYUrqVOqnvHkEWOmMvgQm6rOrIzPoEGW9A4T
         CiCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=emM7hEh/YNwinoWqbA6Ea4gCIkAf1CQzRg0CbBWrNSo=;
        b=XD0uowl10zk4yRo4fa1xm5BoAUa/6a5SS5yeiA/XPBPd8OHb0WyYZz3Y+SdRY3NKS0
         d0Rv8gCW4dOuldyaoMcUYiTD2LCixD/Om0zdvmawmtW/2TxnWdhRKWMsy8NqrB3RNjAS
         FqdD0lBnPR1gKZBPu04Ettf12JbqO2fm+5hO/71rI1G4aIl7M3CscadEdAHq90aaU18/
         z9yv1WsgF52n+LxtTEZPK2/8r3Q1dvP3eCHoENd+8RO08r9jN0D/fcBwxwJfBclA91uW
         mYqdWzW0AseUDIowxIIGH0bGLGjGZoJBetZVVqiyhsy/iucKzzDv5sddbhefkyc+OJF6
         1bpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=emM7hEh/YNwinoWqbA6Ea4gCIkAf1CQzRg0CbBWrNSo=;
        b=jCMLoGXRmCv8+8nr2lw5oyhPfAxcqWzExcb7UpDnwCVNUOjpgmZpz7AEyWD7Vmtuwp
         w/0ws3Bc7t1RsdqmGxkhCEIVZrgD5ORMXPasxTJpDCeb08VwXTFKdzKLzg/LGQrIKzan
         a180g/Gnapi8HYnDf0LajYCp+r0zR+AYLt8MbBmkmZXveld3M9SRnPtMNVI6vurVKpVB
         0GRPOOsjzpghBaQ62LeFZ6vB93o2Ay8lgShaRvg3dtLIK/Nq1uhEbpqUd0AoSUbZRcTC
         gV/xcS4Yv6+TlPqIAV4lY8YXhowXWYUX/81QtoPZznm3Naoo59dX6o39tSAIiTE06hWx
         0Ulw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=emM7hEh/YNwinoWqbA6Ea4gCIkAf1CQzRg0CbBWrNSo=;
        b=UJ2Qu1Hz+GhwTBjrmo/1uJ36bJtJPMBC+73+TB6IRxGmAiQakSKS4SEzFyniAyMGFv
         ewXacECSq+mj/QsnXJcwk5GihGBE/2XkyGdUoxRkXWVdRWSpLkXdmQQCYtNC9fxQjso5
         9ABvNaUHR9ISU0prJNvot8AFahR1/3mqDs8eNgFJFJMYqG+uPsuB5HxHDEVJLfeFn40T
         Ge8KhjW613YVxzoitvfmcUQH73qMiT84q6wmKwsbgMyOgj/MJTgMjjxe2O+EBSEOo+XY
         VKI70wW31nNXLIYp4H2qcGUXZ/6TtDBleqQ1rHTJkNKa2qJHUXElJEe9W7qZMk+798AZ
         ws9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533APqA+SqyJ7gLi7kFtzwQN3ennlvZQ4exstAnkb9SgcdHDUAnP
	VSTmCGfqjYiI+TJC9RQNRUs=
X-Google-Smtp-Source: ABdhPJyzDq5W8Z9IZfhJAkLS9woxcg2+n2mxQni3RNDws8bZqgZYQ00DK36lELmtN9ROKvbef/Zzkg==
X-Received: by 2002:ac2:5458:: with SMTP id d24mr7149433lfn.385.1631495113241;
        Sun, 12 Sep 2021 18:05:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:10e:: with SMTP id a14ls1132207ljb.4.gmail; Sun, 12
 Sep 2021 18:05:12 -0700 (PDT)
X-Received: by 2002:a2e:a40c:: with SMTP id p12mr8481680ljn.479.1631495112287;
        Sun, 12 Sep 2021 18:05:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631495112; cv=none;
        d=google.com; s=arc-20160816;
        b=pRsVDt1aXuk4NXQAx3GrzRgd9QOSAXOIHTuJJGnUwLsB4Kh5eikqAgaRMM+BoeCW9I
         QnMOKqdVm40Ht93/BVTescDP9AR/YZ6jpHyVei0vKuJaRo/8M/hVLzB+nbZc78fr8kMy
         w3YiXvsBaFhmgM3M/D4eoHZVmqtvCxDf6jIP3amIzqndOTBymYyB5ic8Ej0VrVW1SXmG
         a76MgrQ0j91OXSTGo/BGpoYJKHTpOHeKeUHjsrRNSHpQL2ouTPHrCJXDBYH/9zWUNjmH
         mBFIPoXEOCjkxbz1qAZxtfdMdLp+nD63a9rmVb7qfJWsYzG9VeJZWHDqFb2G/bZwOQ6l
         DaTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=YkpnqhHQcWkNopiYiPH8FtnkS2MGA8QeOW6dsONSd4I=;
        b=aNkyqItmi44sQb2xwCXr2QI+jJ/kHCdv9SYIsM2+PDob/aksrxQQqHu+6i256rqF4F
         kn4AbAgQekqUZho1DbhVC3ZNZdsf3c/6gsNS/QMzPLEWo+y4uLXNdiNnie5DVOtVUQFq
         lkMqKOBiRTYrDcPr/L7FfLYEBBDi0o6kCX5UfWsPrKDmcUOfa/50YRvExprnUvazFC77
         P7ynbhAMvQzqp4UNnmm8Y2G6zHzGJaXr3ocX1/BwRkSccDhEpfk+Shs0ZaQkjesAJYKe
         JxQxxw7xrmObNdwepZphUvvZVlPMNUX/FdNCV+nhmcPPy7b+eHFHDxCI6NGH7PbxOAjT
         ZhqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id p7si818359ljj.5.2021.09.12.18.05.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Sep 2021 18:05:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-IronPort-AV: E=McAfee;i="6200,9189,10105"; a="243849935"
X-IronPort-AV: E=Sophos;i="5.85,288,1624345200"; 
   d="scan'208";a="243849935"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Sep 2021 18:05:09 -0700
X-IronPort-AV: E=Sophos;i="5.85,288,1624345200"; 
   d="scan'208";a="542830214"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Sep 2021 18:05:07 -0700
Subject: Re: [kbuild-all] Re: [peterz-queue:sched/core 8/11]
 include/linux/sched.h:1722:57: warning: unused parameter 'dst'
To: Peter Zijlstra <peterz@infradead.org>
Cc: kernel test robot <lkp@intel.com>, Will Deacon <will@kernel.org>,
 clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, Valentin Schneider <Valentin.Schneider@arm.com>
References: <202108210940.aD3d42zA-lkp@intel.com>
 <YSNkCAyMU0tJoedT@hirez.programming.kicks-ass.net>
 <428f3e9a-a8d3-51ca-5e2e-caa50b8da3eb@intel.com>
 <20210911122419.GY4323@worktop.programming.kicks-ass.net>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <8293b6b6-60a3-a0cf-834e-906b24e578a9@intel.com>
Date: Mon, 13 Sep 2021 09:05:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210911122419.GY4323@worktop.programming.kicks-ass.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 9/11/21 8:24 PM, Peter Zijlstra wrote:
> On Mon, Aug 23, 2021 at 05:16:05PM +0800, Chen, Rong A wrote:
>>
>> On 8/23/2021 5:02 PM, Peter Zijlstra wrote:
>>> On Sat, Aug 21, 2021 at 09:20:50AM +0800, kernel test robot wrote:
>>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/core
>>>> head:   234b8ab6476c5edd5262e2ff563de9498d60044a
>>>> commit: b90ca8badbd11488e5f762346b028666808164e7 [8/11] sched: Introduce task_struct::user_cpus_ptr to track requested affinity
>>>> config: i386-randconfig-a016-20210820 (attached as .config)
>>>> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d9c5613e856cf2addfbf892fc4c1ce9ef9feceaa)
>>>> reproduce (this is a W=1 build):
>>> Dear 0day folks; could you please blacklist me for all W=1 build output?
>>> I'm 100% not interested in random compiler generated garbage.
>> Hi Peterz,
>>
>> Got it, we'll do that for you asap.
> Rong, I seem to still be getting W=1 build warnings spam. Could you
> pleaes have a look?

Hi Peterz,

Sorry about that, do you mean we shouldn't test with W=1 for your repo?

Best Regards,
Rong Chen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8293b6b6-60a3-a0cf-834e-906b24e578a9%40intel.com.
