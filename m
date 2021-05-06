Return-Path: <clang-built-linux+bncBCN73WFGVYJRBQMIZWCAMGQELUWRMDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCE4374CCD
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 03:20:02 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id l18-20020a170902e2d2b02900eefb0acd12sf1101591plc.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 18:20:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620264001; cv=pass;
        d=google.com; s=arc-20160816;
        b=wEWcMrcE+zKaqTbaeRhYQIZ+XufNq35tn+z1rdQ2hnnFZoJ9YLwOJsIuL3smh3vkHF
         KHWBFxWvaEy9dy4CrjJRstynx48pc7D8kCeRhWQXDK/oHf+tL5z8zSC+E9BWClHdEQC9
         dvgr+C43AJc2fNmOL4IewoPYurhT22twDNrzTqO2D/l9weKKlewbhXcG0gae6foFGxqh
         W0AJxuMYFaTs1GWVBivjq8b8hAjlxpRQ61cjKmz9MCry0E0hIMNqfzBIvHsHEhrKtU/s
         x0TAcNXsB6g+BnGc0TKBPqcwfxPME07dv6fbqAZKFlUQ0ICHnphhwX/w5MH2oalwTnWX
         l6Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=oj31h36EPOJOINRb0X6a6YvcW71Pzb6gZdTtMG9DLAA=;
        b=Wnb8uTws1Q9+r3kThdNVvMMFi2a1nJfUnIzH3xr1W4X4QXjw9Bjaj8UvMIhlJjQxlr
         r/H9QjN5FIfTRZwnzkRwPUEdty4PVR29OHa0EbBQSWcqMSYZrEEeONyeNwoWWeSt0g3/
         oRCSYedRLR9RrjGF+63EOb5OABRjw8PL8t7bSgQSkLd+vIq7X8GPKMwaYsU8smdP4i6R
         ufkAa4SKx80rsz52z6fcIF1QTmrFQtTLZGb/d09S/X4jyaiI2nsEUviL6/PbtLtKZTuq
         ucRj0Tz6ilfxmRMqkNvjAzbxJs9pFSpDjT1ZrasmlSeK4WpTzNkuDKkkOj4GrT3uF0Hy
         ciBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ying.huang@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=ying.huang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oj31h36EPOJOINRb0X6a6YvcW71Pzb6gZdTtMG9DLAA=;
        b=DoypM69pcUfiNPeyjSiOV90fzb810dOfn+byZCYei1Q/bIBK+d6Obi+YpGqaRZ+DWp
         sAZFH3bxz1kn7wrmLwdz+POtq2WUyX9gWlLKV/Bpj7681p3fIEOWL9oNUCUpNANgt3eu
         6JA1TXLYJG6rGl56Ph30KT54d94lxNapzon4luaUSi/hVY5zSnLhOHZa09ImSuAPZtLH
         TRPElRzR3dUWpGyvqijM/RHnaFzRXNIMEb+iyCTfxvHSR0urOh8Xv2MdQ+V2qpUCIOif
         ciPiqBn0lrA/RYittP6z4ALFoOlcf62ITuwhBoXBBP93rIRqIzZjUdfzpSUvwIdCrAsM
         AARA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:references:date:in-reply-to:message-id:user-agent
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oj31h36EPOJOINRb0X6a6YvcW71Pzb6gZdTtMG9DLAA=;
        b=iLMtectRsCHq8hns3yHl8kKoQ4r8hpJCRWP4kBakHO8mG6IjtQ7qten2mpRQFWWCkT
         wncgJL/9eAcnEil5+N7gmgmJ2Koc529UyOquf/x2wVsfgmrU4quHqNm4xGbd6jPGI8s4
         GSY73whnGfs66OYNP0KFXkJujfEs+ZWGq39NnUPfpMyyH6Pg+oHZtQjQRZ9YwqIgg1+P
         rE1kUJ4KyP8/LxFjl3UglZKPSlT+NE4/qiYH4XbtGjfgti5DsnbVHVjUwgLQx+UIMdp6
         rjgcqrG74afa4jsy2tCE8yIYFtv2IZ4Z8sqFo9i0FRhNwcL96+Bh7lcpcvFfmrzP3oS3
         2PeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kKqDKpIC1efQWbSQp7RACNdKTWfchkNTviOS4mnYzUH6tB9cW
	W5hO2RqH3CfCh+CM015h28Y=
X-Google-Smtp-Source: ABdhPJzD+95kkg/ZSjAEVLx7SDFCABtNVWeWQPxFquuLRDQnyaTb5jXE8Slzv/ghgz2wixuignP42A==
X-Received: by 2002:a63:9e02:: with SMTP id s2mr1748848pgd.134.1620264001714;
        Wed, 05 May 2021 18:20:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:89:: with SMTP id o9ls526542pld.8.gmail; Wed, 05 May
 2021 18:20:01 -0700 (PDT)
X-Received: by 2002:a17:90a:ad09:: with SMTP id r9mr14862830pjq.2.1620264001048;
        Wed, 05 May 2021 18:20:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620264001; cv=none;
        d=google.com; s=arc-20160816;
        b=W8viO/JABe5/vWOe51bmBtC6Ft6jkfCn94YycRhJ54DHakGSdsSUNrgUDLBiHcnFbg
         R7qEUgbNlruIkFmr6o0fTuc6iPtl7xB0kHXdarEp9Am4Gf3BygylYPqK3iJ4FWBv/i7+
         /FCDc5iBW6pc2v8rDE+2RRixQ1jPRCfNh42KPTac62OpX5Y+zcmXZNLOX6ug11u/niQc
         rhGSUl5YpQMRqSgEHM4aHRUooLc2cJXPQsmAmJQ+KwNgJVwNBPEBtROzP1a20cjli64K
         qjoBAdVh60fu5si9uoe5ZVKy71M2VxsSvYYHOoSK8G5qu1rIchIyceLjB/YeajNXxore
         EMzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:ironport-sdr:ironport-sdr;
        bh=gQBFHXXufH8inMcMQbZzwYJ4JoOKUZbbpFyzNLES24A=;
        b=S88HvMo8U7jy5wlZ0eRva/JsnbcSOAGfHAyEm0TQtkHW2i/ElKsvs4YqFgGhDJORnw
         j7ft2pzqsF+pkijyUjY0StPMY37/fadlv//xjz4sCJLXJJ8fxHOQNmKV8kZSCX22M1lN
         5hWaCDta81ODxXRCjo2I7zv7IbIenEOnOXBeZ0syo+sntjA4LH9w4C+UMhSNO7THEEgU
         J+fxJ39nQZgODuwJnu6QDUcspoov50v9yaR7PtfTYC7igXmU+8QIAWg2DBh5CZ6zouaH
         P7RHWLvu4cBv+86Z4NvzhFcRU2CiL0aywNM6OoiRhMy9QHLzU+6NZaXIwnl35oFCpPSI
         MJrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ying.huang@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=ying.huang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id 131si40306pfa.2.2021.05.05.18.20.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 18:20:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ying.huang@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: ZFz071VDgoCkLVov3EMIgQdIvnIWTwfT8Kmtlu9QO7QFoL66IB5XdjI/Gg94AicysKm806hTL8
 kyt925wcCzHw==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="197981485"
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; 
   d="scan'208";a="197981485"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2021 18:20:00 -0700
IronPort-SDR: l4kFtJD3/ikRP0/cineXO5j1mZl2xsfXzeJs4D/vCyix2IgZxFrH2mZSWYn89ZSJx0uB2Ck57g
 e9u96KeNP8CQ==
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; 
   d="scan'208";a="434095098"
Received: from yhuang6-desk1.sh.intel.com (HELO yhuang6-desk1.ccr.corp.intel.com) ([10.239.13.1])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2021 18:19:55 -0700
From: "Huang, Ying" <ying.huang@intel.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: linux-kernel@vger.kernel.org,  Arnd Bergmann <arnd@arndb.de>,  Jens
 Axboe <axboe@kernel.dk>,  Jian Cai <jiancai@google.com>,  Guenter Roeck
 <linux@roeck-us.net>,  Peter Zijlstra <peterz@infradead.org>,  Borislav
 Petkov <bp@suse.de>,  Eric Dumazet <eric.dumazet@gmail.com>,  Juergen
 Gross <jgross@suse.com>,  Michael Ellerman <mpe@ellerman.id.au>,  Thomas
 Gleixner <tglx@linutronix.de>,  Nathan Chancellor <nathan@kernel.org>,
  Nick Desaulniers <ndesaulniers@google.com>,  Ingo Molnar
 <mingo@kernel.org>,  Frederic Weisbecker <frederic@kernel.org>,  He Ying
 <heying24@huawei.com>,  Andrew Morton <akpm@linux-foundation.org>,  "Paul
 E. McKenney" <paulmck@kernel.org>,  clang-built-linux@googlegroups.com
Subject: Re: [PATCH] [v2] smp: fix smp_call_function_single_async prototype
References: <20210505211300.3174456-1-arnd@kernel.org>
Date: Thu, 06 May 2021 09:19:53 +0800
In-Reply-To: <20210505211300.3174456-1-arnd@kernel.org> (Arnd Bergmann's
	message of "Wed, 5 May 2021 23:12:42 +0200")
Message-ID: <87czu4slom.fsf@yhuang6-desk1.ccr.corp.intel.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ying.huang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ying.huang@intel.com designates 192.55.52.115 as
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

> From: Arnd Bergmann <arnd@arndb.de>
>
> As of commit 966a967116e6 ("smp: Avoid using two cache lines for struct
> call_single_data"), the smp code prefers 32-byte aligned call_single_data
> objects for performance reasons, but the block layer includes an instance
> of this structure in the main 'struct request' that is more senstive
> to size than to performance here, see 4ccafe032005 ("block: unalign
> call_single_data in struct request").
>
> The result is a violation of the calling conventions that clang correctly
> points out:
>
> block/blk-mq.c:630:39: warning: passing 8-byte aligned argument to 32-byte aligned parameter 2 of 'smp_call_function_single_async' may result in an unaligned pointer access [-Walign-mismatch]
>                 smp_call_function_single_async(cpu, &rq->csd);

Can this be silenced by

		smp_call_function_single_async(cpu, (call_single_data_t *)&rq->csd);

Best Regards,
Huang, Ying

[snip]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87czu4slom.fsf%40yhuang6-desk1.ccr.corp.intel.com.
