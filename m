Return-Path: <clang-built-linux+bncBCN73WFGVYJRB66KZ2CAMGQEPNCW2LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C9B37509A
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 10:14:52 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id w2-20020a5ed6020000b02903ee20b1d066sf2991595iom.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 01:14:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620288891; cv=pass;
        d=google.com; s=arc-20160816;
        b=yLLaTM57iJJYpk+5R56ktginhu5uaIyAhks9Bmv+MIaXNGdEZA0bwB6Cxz7m4EkBcY
         p4NY2UBiMkQ12loQVoDfthYieT5X0JQBJKQCkiqIs6THRxzYTG+xViKthqnOH06z2ptl
         z8zlCRtTrcUDvC7Qm9gnYcvpDX1lfahnkyP3aX7jh05oWYgt7o+Tpk2UzpeGauWBtp+e
         U914f+rMdi/2+s+gJXYtgWtZCAeZPLpiTLXB6rGlrRUtc1KULF7/3YX5E3iR12vEjTtg
         yIGhQZk8oTOLENMmKSQB+Hjpt64t4ZFF40ZL91pjb+N1C3XuEjZHfu2RXtWcfmVA6x+i
         LXnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=jsYJGVeMc/HQM0aWWoh9cYx+132Yo/GMuiM7oH5GNnc=;
        b=h+o0yt/WI2Zkxklc6gQjD6YaWkr+Tc17lggT3Lbf+JbkiLXj/Dbeh/CuosLV+PC8X4
         gbwGch/Kwi1G6E8OCp5vkpW7ZuViaOPvP9chIh1jQFEtI0Qjz6H1kSYUG82Kf3bg7o9y
         0Le4FrO+ERV8Dd+D/3ZJdbGOzTyx50mQdYBT1wNq1LxJ/o6bYdYpI0lhmoebex1g+RyZ
         jVZvdjTO07kxELh7k5oVOj4L6NDX1aEhfszWHajf9IaIhNIpz7N1Dfb10p3yeD7F8uHG
         Ush9owgq374I09ZUHoATbQpWu/gn6e0DKMAy90RUXQbE6CByJlbXKK1Hq46a+a0juk6R
         ndmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ying.huang@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=ying.huang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jsYJGVeMc/HQM0aWWoh9cYx+132Yo/GMuiM7oH5GNnc=;
        b=LiIBPzh2mimXzRLqffBvRET/BgHgIpuVWOGbefaj1mCMtqBObVs8tU7NX3TTPx9+v/
         iyg52Xer7taDtAp1050XC61lljwySd0wfKNsejM8EDllSAYAlYeX+5mqFkRIgan9Zpnx
         PziZgrLGRHE4vxLHvLoW6WgwQl97FI0LCWUl8kdZCta+3mmgRENL1PRWaz2bEewLh5YO
         aC844AdMtpOqROCaU6CFP9TyzrWXhh1Zs6fqtfgNK8a7/rxa3/uVpbUm8kmSQCAa4dpa
         z6jBoc4dbFR4kor7uKhwqWqj3+i+GKPfGG8RcbgK7Dr0chccQc9OHWbQX7ywh4kI8+29
         3xtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:references:date:in-reply-to:message-id:user-agent
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jsYJGVeMc/HQM0aWWoh9cYx+132Yo/GMuiM7oH5GNnc=;
        b=W6l8tJQfagSsH1DZoLU3CtKvDZ4wx76/d4z7qbrB8jRTgAvxg+6SRRGCnSmx18p0gv
         UlBmHFntiEXVz/RZTy3Imm1DMkHE1oLvD8kRX5zgJxk0y0jb+7NeXRsV5t6heVwiMmIC
         zA8JA0UNBZv2YeoTnBi75JGT8QboEEdxdaVWqPOAIhUvGLl9U4ZavKgDBz48uNBc1CTo
         m/mbjaML3E8H7w+GsxOxeX9u7v//htrLqQsspidu3rHPSiTS6G247NbBqy4bPnpiYvDB
         fkS9l0yEAjXY0rNkVTKKfaQIRZPgrwyzfpjUKIwWzWWbu1v19n883SCbMo9CUURoTzYX
         9kLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532z1CIwPydJDkDk2Sw3NpE9hvQBs9/vBPR9iw5FG/MYyBwcRq6j
	PyIMG4M9hAg1pLTyqZObkHw=
X-Google-Smtp-Source: ABdhPJxTInjwvbKk32jmRbemgWugmOU+qaRxUnkrRosMqKyHgqgsXRiotZYsgJva/4HGGseOD+Qg8w==
X-Received: by 2002:a05:6602:1611:: with SMTP id x17mr2192578iow.65.1620288891798;
        Thu, 06 May 2021 01:14:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:37aa:: with SMTP id w42ls249944jal.6.gmail; Thu, 06
 May 2021 01:14:51 -0700 (PDT)
X-Received: by 2002:a05:6638:3395:: with SMTP id h21mr2755789jav.44.1620288891353;
        Thu, 06 May 2021 01:14:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620288891; cv=none;
        d=google.com; s=arc-20160816;
        b=AIA1uLcIaRbGgY+aaLILrVvKPQsnjBbbByEH3POxyqB0xomd7o204XZWEDdr2WFx9+
         CsmWt5GME2NswK4chV7dtv5d0veH5/DgSm2XpqpUv76LG1UXPABXIv1aU3NvalbY85Mh
         UwUEdzNPs4Qu9wNwa1HIPu0Rq2SCo/zRjAC3D2qR+K9NmYNEVOCD6U5oxIAJgY/nUrn3
         ablr9+Oo7/GIhUfy3k7q1jQZEUzhTVlE8wSOZLhefQ89ESx4dLicOShtX6zAvK0XNXbm
         zFDriylrwohWGnNe99Jt668FNPgCoLH79fg+odag/ewzf9EiSOheR9GL1m98WvYu/q1U
         7WnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:ironport-sdr:ironport-sdr;
        bh=EqWCSFiwcZH9vIW+xvngKVZtwgekYxmBK+OOeh+KWtM=;
        b=VW57hrfvD+cqlRN8YrVcnV0uMxrL23O0hSyObbRGCObOi6irAPxlBDEX/B2TkGpW0s
         rLhapRishbCosByBa4vYsKMU1v3dF9VCPSOk6aSJyNdhK6uU5oSj0hmO7MwTtvEZbJKX
         QoWmAE/WOv8AHJIT3q1upH+YfQY039TSKQeKtZVNVT1SROHFCE7gu3DTxolPvM28VKZb
         ARf+X+m2kReU86nYDKnVepdasVXUh1HFvEaVhO0hPUfTIQdYDik1n6ww/oAsGEtQqY/T
         3DML1ssi2kzfKqG7W0Yk+mo9wvAnJP2HEEhm5cw/6iqKNTTazf71d1Ys7Vyc7cqN1mw8
         mlMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ying.huang@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=ying.huang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id s14si144828ilu.3.2021.05.06.01.14.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 May 2021 01:14:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ying.huang@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: vvFE25zAwgNZBTJ71jAvw06f4KZNlS9DN44/XFbsVqOGD+q1F02fJBwhD8txBbY+GKbAOcMhDW
 wBqej0GkjgWA==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="219287951"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; 
   d="scan'208";a="219287951"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 May 2021 01:14:49 -0700
IronPort-SDR: YOYbol4mHR0ZzBH+w1CpU011GEPo5Etw8G5ZJ0PqJFjirPYPzkpjWHnEflKyL5d5EBLkCsJuwZ
 wUA757WTQlxA==
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; 
   d="scan'208";a="434235869"
Received: from yhuang6-desk1.sh.intel.com (HELO yhuang6-desk1.ccr.corp.intel.com) ([10.239.13.1])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 May 2021 01:14:45 -0700
From: "Huang, Ying" <ying.huang@intel.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,  Jens Axboe
 <axboe@kernel.dk>,  Jian Cai <jiancai@google.com>,  Guenter Roeck
 <linux@roeck-us.net>,  Peter Zijlstra <peterz@infradead.org>,  Borislav
 Petkov <bp@suse.de>,  Eric Dumazet <eric.dumazet@gmail.com>,  Juergen
 Gross <jgross@suse.com>,  Michael Ellerman <mpe@ellerman.id.au>,  Thomas
 Gleixner <tglx@linutronix.de>,  Nathan Chancellor <nathan@kernel.org>,
  Nick Desaulniers <ndesaulniers@google.com>,  Ingo Molnar
 <mingo@kernel.org>,  Frederic Weisbecker <frederic@kernel.org>,  He Ying
 <heying24@huawei.com>,  Andrew Morton <akpm@linux-foundation.org>,  "Paul
 E. McKenney" <paulmck@kernel.org>,  clang-built-linux
 <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] [v2] smp: fix smp_call_function_single_async prototype
References: <20210505211300.3174456-1-arnd@kernel.org>
	<87czu4slom.fsf@yhuang6-desk1.ccr.corp.intel.com>
	<CAK8P3a1SBDXqHE5FgG_WfzrcbeT6V6kg5T+xTGU8Cp_vLLdMqA@mail.gmail.com>
Date: Thu, 06 May 2021 16:14:43 +0800
In-Reply-To: <CAK8P3a1SBDXqHE5FgG_WfzrcbeT6V6kg5T+xTGU8Cp_vLLdMqA@mail.gmail.com>
	(Arnd Bergmann's message of "Thu, 6 May 2021 09:54:55 +0200")
Message-ID: <877dkcs2h8.fsf@yhuang6-desk1.ccr.corp.intel.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ying.huang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ying.huang@intel.com designates 192.55.52.88 as
 permitted sender) smtp.mailfrom=ying.huang@intel.com;       dmarc=pass
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

Arnd Bergmann <arnd@kernel.org> writes:

> On Thu, May 6, 2021 at 3:20 AM Huang, Ying <ying.huang@intel.com> wrote:
>>
>> Arnd Bergmann <arnd@kernel.org> writes:
>>
>> > From: Arnd Bergmann <arnd@arndb.de>
>> >
>> > As of commit 966a967116e6 ("smp: Avoid using two cache lines for struct
>> > call_single_data"), the smp code prefers 32-byte aligned call_single_data
>> > objects for performance reasons, but the block layer includes an instance
>> > of this structure in the main 'struct request' that is more senstive
>> > to size than to performance here, see 4ccafe032005 ("block: unalign
>> > call_single_data in struct request").
>> >
>> > The result is a violation of the calling conventions that clang correctly
>> > points out:
>> >
>> > block/blk-mq.c:630:39: warning: passing 8-byte aligned argument to 32-byte aligned parameter 2 of 'smp_call_function_single_async' may result in an unaligned pointer access [-Walign-mismatch]
>> >                 smp_call_function_single_async(cpu, &rq->csd);
>>
>> Can this be silenced by
>>
>>                 smp_call_function_single_async(cpu, (call_single_data_t *)&rq->csd);
>
> Probably, but casting from smaller alignment to larger alignment is undefined
> behavior

We cannot avoid type cast in Linux kernel, such as container_of(), is
there some difference here?

> and I'd rather not go there in case this triggers some runtime
> misbehavior or ubsan check in the future. Making the function accept a
> pointer with the smaller alignment avoids getting into undefined behavior
> and doesn't require a cast.

In its raw form as above, this looks bad.  If we encapsulate it, it may
look better, for example,

static inline int __smp_call_function_single_async(int cpu, struct __call_single_data *csd)
{
        smp_call_function_single_async(cpu, (call_single_data_t *)csd);
}

Then, we can do

        __smp_call_function_single_async(cpu, &rq->csd);

Best Regards,
Huang, Ying

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/877dkcs2h8.fsf%40yhuang6-desk1.ccr.corp.intel.com.
