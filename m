Return-Path: <clang-built-linux+bncBD26TVH6RINBBTE6XL4AKGQEIENOGWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id E74CB220437
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 07:08:29 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id o34sf1875996pgm.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 22:08:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594789708; cv=pass;
        d=google.com; s=arc-20160816;
        b=d2nHohT2FNawgFMOxSoOwqRjtvHGBrW5ED43pVXMHvAFHXTwXA3Z5yXzKlZY6edMZ4
         yTICUrulb8BX8uMVC4/lOZpOb6MKDiblrq1pnQ4Ay2coOCJyfEbUnoWqFnyIoTicl4ZW
         OxkeFb9eYnegVSjJ7R/RN9pWSs4uo7D04NOdEbt1PZ+WK13fdW2Li0Ut8TxnMfR9hFqv
         Zvchrz5WOKaD4FQvXa92djPZAro4QWvoXfoiZBAtLcO55gsiV5L/5cLwnyzdNFtRCsoa
         QWDHIKNST8grN9BfW4JUJQk8hh/PQAlwjg4mk7vu+DUmfMzuVVxdh7LHR12C3Pyl8yCE
         9HNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=83hUOLLVNKD5XdjKdAPjabhmIQw1ReGN9Fv7FNGGGuc=;
        b=Cje6P2ffPpMzaZ1cx5c6V0MYPI5FIm5YXp/jn2g9vU98yZCtQDdiK3gihIqkJi+3GF
         17HLY6YqUUHty9Z6f50gAH4JKh+chq3fHBVWX/4dh+UPHAyLfXDbjDKefGw/wpBcNzdZ
         y2kp7Cz+z88rG0LkL7WIU10dtwptSD7QwKfU7Rbc4nMQdGGz5ydDcwOQ9t7exh0kfxZy
         LSenCCPfFt4XdP6UQslowkKfe+ljDTkwps/VLfO5imVeGSXlYSOP6YDQ6tTuGulwG/YW
         CrDTWgN9zyGV6gIK6xFxJ9hfGBZq8nYZ2ZkEdyWrYhdRTCAp2x6XSfLC1lQGwsFW2rOV
         ND0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=83hUOLLVNKD5XdjKdAPjabhmIQw1ReGN9Fv7FNGGGuc=;
        b=StFtI2SENOJZPGGUQnGXF5ih4A0g4GcmU1+G/JvhqFqCjXbLuJ1nGlbH1hlAZyJ+p9
         y+vqOHmbahb+h3cBtSx2RPmplKusKbU4AAPLL0W9qYRT56hLvONKLHL7GuOWIkv12FJV
         1PT6jm57WJQ5Lb1p3V7KnfZB8dFursCKhCcKT4YuVItpmRFX3i14eWeZ7aN7kZ7goEbD
         bnXjgTz12o0ykGzVhCbsQneb3Vd/xihYu/w3oX8V5sgxlxzT3Pfv3/Mvoc46oSyedx9b
         JGy40oVNjhtuMBNQx8iWlUhIwpUGAjHMy4EmmkiYMu9TFudCmCGYJuB+2c9B4IvR/YmG
         jOow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=83hUOLLVNKD5XdjKdAPjabhmIQw1ReGN9Fv7FNGGGuc=;
        b=Nv/Hxz8BhCJH+YcHt21uuBfqMyXsb313siQO4AJYCR29VgLW+Ei+0uFzKgpOBSQcFT
         NjTlBe0btN8qvmxEdotNNjgCZNsvnHDCjl8cgojB5Jta7ECgHaR8BAK+E6nuF1QNoZb4
         6Lccnxg0UzfvLUqdrHyBqzYVROB3Ja1YqmwKgwtTj4nJ5DCVzPYV+vbLNhrOS7l/kKUJ
         DIf+yTzCRGW5KzOOoC2yIp/XsZIXaK0FZa4b60dnsjk+wjmH0jbnHtl/cwAerxdnD+28
         nJzjdE2zWVNkFX8nFoZl7IORGj9lVCusnV9V2HxYvLaLnuq8kN5lIdEmAq25fp1p0FN1
         WYIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mIE6vrTPcAfRYqB4YKXpVa6Kb/Yu81+3pVq1iynuiESnK498M
	SR0s463spTX81o3BjsmaJtU=
X-Google-Smtp-Source: ABdhPJxCBy5RSKufyBS51VyuQAF1pSi1rvlOObGXHKCSeC0CTUBkYL6IGpAkrK59SC5S1JfPRrKcKw==
X-Received: by 2002:a63:4f1f:: with SMTP id d31mr6438987pgb.241.1594789708485;
        Tue, 14 Jul 2020 22:08:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:864e:: with SMTP id a14ls326908pfo.7.gmail; Tue, 14 Jul
 2020 22:08:28 -0700 (PDT)
X-Received: by 2002:a63:5b55:: with SMTP id l21mr6661262pgm.348.1594789708093;
        Tue, 14 Jul 2020 22:08:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594789708; cv=none;
        d=google.com; s=arc-20160816;
        b=BnLeJVIyYfXHcdISs/CqsFrrf9fPHm2QA3fx8jcK4j9nNhfa2tDXkBSKqpqdfkpfu2
         lxdgSiNBmN7v/0d9pCIkbP+95CiOyQebZD8VeZPcdcp0OQVx+jE3bDW02OAZFpVwmqP/
         N+grDoQc90fbZzAiXtraQFPjrt0ssGYqtO1pKyoD0afvDWV7e/3Pa6NqxW5xwlfE4Cl6
         fYmsmqjoofoVeY6lJM0DreTOyOObmarhhIBr+uUN32YX86SZKh2jgL5gVBzbIObBuSAa
         1BBGV44cc1eUoyL70wpTKoTofrsw68mVMcrLAfNZd6vkKjVw5QtPuTD2FbkZHJoC5ye1
         rOtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=7RmBkolg1AHVlXiarZaX4M7LVy1+PBA1RuPld8eE2jY=;
        b=QIas2Um/YZ7r4RjtKXsblDT8D3XFd9g0l67DeDnvi0Ldt1uiswsH8GiT5C/6o3foRq
         pjNsaSH4JAiiBxcZuNYBC4Eo52P0qKXQXT4VOo0p8QMEVUal5w+K/Qh2FRHbBiv4nqM6
         pDXsiXwHk8IFgdpeJYmpsaMgn4Ybw4bN++2jrveH/KkksPzozWxekY326NpzwYa2e0cS
         RRI9t2qMRZD4ZzUgSl1YRHzxPGm599UOnF54tgAOIILfQOLfcLEebRqon5w/g1I7Pqnc
         1Q3B0/WgqMRyeU1SPPyVvXWd2pvvUn/VHkcsXteh87YMi1xFlALf1FrnZpTUJOilMG7w
         KinQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id g22si21426plq.1.2020.07.14.22.08.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jul 2020 22:08:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: j0AjNM9rohhokeVMJUjWFUP2qah1cSMBzwmMyKBG6In7WY+KkSDRUCVJ6y1niY4aVFz3h1QJfx
 ivwomp5xDeIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="136540146"
X-IronPort-AV: E=Sophos;i="5.75,354,1589266800"; 
   d="scan'208";a="136540146"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2020 22:08:27 -0700
IronPort-SDR: LZhQ+qMpJtEo0lPkDl+RGTPwPU60E4CRWbeLXyFKxDr0BUeMbitUl6vWvCORcNzgt6q6ok3O7o
 WyVKfXF0lGMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,354,1589266800"; 
   d="scan'208";a="429998184"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.3]) ([10.239.13.3])
  by orsmga004.jf.intel.com with ESMTP; 14 Jul 2020 22:08:18 -0700
Subject: Re: [kbuild-all] Re: [PATCH 1/2] sched/core: Rename and move
 schedutil_cpu_util to core.c
To: Viresh Kumar <viresh.kumar@linaro.org>, kernel test robot <lkp@intel.com>
Cc: Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Vincent Guittot <vincent.guittot@linaro.org>, Zhang Rui
 <rui.zhang@intel.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Juri Lelli <juri.lelli@redhat.com>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Steven Rostedt <rostedt@goodmis.org>, Ben Segall <bsegall@google.com>,
 Mel Gorman <mgorman@suse.de>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com
References: <83d42cb2e589235750d68c9beada882ec93aeedd.1594707424.git.viresh.kumar@linaro.org>
 <202007142126.cce7w0AU%lkp@intel.com>
 <20200715035030.sktx5oecvihhs5ct@vireshk-i7>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <e4fb05d3-5105-48f5-8d10-ab5bd3b3d5a7@intel.com>
Date: Wed, 15 Jul 2020 13:07:51 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200715035030.sktx5oecvihhs5ct@vireshk-i7>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as
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



On 7/15/20 11:50 AM, Viresh Kumar wrote:
> On 14-07-20, 21:05, kernel test robot wrote:
>> Hi Viresh,
>>
>> I love your patch! Yet something to improve:
>>
>> [auto build test ERROR on tip/sched/core]
>> [cannot apply to tip/auto-latest pm/linux-next linus/master v5.8-rc5 next-20200713]
>> [If your patch is applied to the wrong git tree, kindly drop us a note.
> Yeah, I based it on tip/master.
Hi Viresh,

Thanks for the feedback, we'll take a look.

>
>> And when submitting patch, we suggest to use  as documented in
> I think you are missing something between "use" and "as" here ? --base
> ?
>

yes, we have fixed it but it may take a while to effect.

Best Regards,
Rong Chen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e4fb05d3-5105-48f5-8d10-ab5bd3b3d5a7%40intel.com.
