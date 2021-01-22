Return-Path: <clang-built-linux+bncBCH3DPMZSAEBBSUIVGAAMGQETD66WAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C132FFAF0
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 04:19:40 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id 9sf4202285ybj.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 19:19:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611285579; cv=pass;
        d=google.com; s=arc-20160816;
        b=mN5ApghRwrDc4xtw5HzereLz0xLQoovY/cmeRYZHADtd+fijcV11qN4ql/oh6H+R6O
         yx1gRj+vS5rRjW3xffbMQh2Ujidb7nwjbfOoDbLVzwt74s13OPwuhDvSoug3ajpASyM3
         /+QKZSCdaqe4dDADi9n63fA2RUUoRV7HY83OT8+p2A0OdAzvHAXZDqHBHVskqe9XOe56
         mzAj9Uutrs4yhZUZFwSilWvo6ihk0gEbQe5fPjNMSoAovI6yn/xKvibd8X1kM5a68qRK
         hzEt53yR3dIqTfdYb7CqMf5dgvtbv0Y5hIWM4A+PxEq4SYF+asujCwX4Hrxqc7KCRIAn
         TlwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=Va8gETRXh1zHhU9D9W4U9gm1I8IiPzDodfCv37/ALN0=;
        b=lFZ9OSsFBP2jtlVgvRX3iMLGvL6iv7+MLm4Mj8YP8bPxw5h0JMtFzsmYTJFZPua/ge
         hhRi6WkL9HwGfkzprnwe5jgsfX68NJVs9NAvs0Ga/UT33l97GUpyMdhEwGEQ+fPkP5L4
         bG3BceZdTAevsn6Wt7SO1Jjgze8U5b2WFdwlowzPj/XzZhO0WAtYlTFnS789MJWcyfnr
         s0iyAfLTX0TvAAr5MCwxYU33WbOq1cd28QpKU4sZOe7XbqOgSif44g5mSeGzFl7rngHt
         g2p006mosQYmduvnNWiedI8zd8YJ4K6xrrUcXjhWciplhGmmk6vNS/LvlsdvEfbdqkAB
         Sdug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of like.xu@linux.intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=like.xu@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Va8gETRXh1zHhU9D9W4U9gm1I8IiPzDodfCv37/ALN0=;
        b=dLIoiIR2TaQjNE9e3p+TiVQuslCcZf1+2glibbbfYSYvDuHsXvV5xCWKLv5+u7sGgu
         eLXVAxkH/hhrAB8n9YTQ1xwJrOizuxAR5xYljcoDF4dfzkeW95dngwt8Xgv5Di8J6ND7
         5cas8FDI4sasLM3TkiIHklyhekslLTEHGeWKGk2Jk+BzFKg6cQAMMHy3pqOOZ2BeCgcW
         A+MYjGIuXYMy9Il9ZbjFQUZrEr3OKfliYZyN3NCHbTaZp2kOgBVQsdMj29rXVqVe3UFJ
         MpPDPhdxomACwHU8Rf8/S9BgejpTMlvWTDmGgA31Gdl9C0p3t5P1gHFR3343pUxqLMDu
         wjmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Va8gETRXh1zHhU9D9W4U9gm1I8IiPzDodfCv37/ALN0=;
        b=DI4eMPJqu0v++0A0YqZqdXqZpuaDzDz0T5n5WXvUjB/XBUmfzKmPVsGHgaai23vZFM
         E5hr5KaMu4wyYc0THVDZxVJ7Gft2PbqQ0dzIggiN1iLum9HfZtB/qzU80J1+Qae9NDbh
         cld2ec7+efn9gV0HR0ElS9SlFldAnXeuojhuFck4pNCjtN4NTOIPizxpSiiWqtpeQT2/
         H8Pmlk1KnNkD1iYhUfjkpCLZOpz2Y0XJ5pK8f2MEnndQvnvR/Id6PvyeHAsxcW3TtrK7
         TD7K26hQd9pYHqSbJ2KhWYHCZg9Qo3iFhS3K2n73SdxA0WdHRfI7YHHOULdBern5sYoK
         h3Pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530H+bkInb8yBUOajznjKOWGRQpoKRjodEGkfY8xkhhNWa0xXjeD
	llnX6iZguNzUkUxJaQhBUww=
X-Google-Smtp-Source: ABdhPJwreBMgo9J/wio942JbvXQe1Fm0M8dq+ReHMzQZURVM2tuJ9hYwY9/qWzDK6xYuriC9UeFJrQ==
X-Received: by 2002:a25:4981:: with SMTP id w123mr3487142yba.123.1611285578930;
        Thu, 21 Jan 2021 19:19:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3006:: with SMTP id w6ls2306954ybw.4.gmail; Thu, 21 Jan
 2021 19:19:38 -0800 (PST)
X-Received: by 2002:a25:3897:: with SMTP id f145mr3374936yba.2.1611285578553;
        Thu, 21 Jan 2021 19:19:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611285578; cv=none;
        d=google.com; s=arc-20160816;
        b=Hku1ItyzmZVuUtWXbS/1f71H81G8n59FYdtRfM/fAvaGhRdpKEZMJmZecEdUma/HRH
         DsJGq33I7nLjhD9lvrk0+tzEAnnepTOzF5B/Wv1NsoYhY0i9nBdkEjpRqIam+RkWMc30
         7oVovdjSvs+8efiCxTQ+YJhWaZKzlNoku4h2Nlndc3XItRZMoolmY+ynRoIDAcA/3+YV
         pC+axQm9dgqxaQipD1ZMhdXwXjRDR+ldDExfMqh1T4MQYrO/GjQDR3lmdSmTMUG9a4TM
         R+6U4YU1jnI06wM4/J4U/e5jr7F6c4zUPS/jNIevQ3iIeuIHZGpnLvU+PdI9yWgFpXAD
         txQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr;
        bh=FEFuPn8NWXCTMbhtMczKhWmIRkO4DLmL2YYsRl5ixRs=;
        b=yVx+54Y/+jOwkynX2A8GOfXGcr69PetR6cW6jJ1kvdVC2N2Rx6Sfd88NwISG57JilZ
         xD/niZ3GUpKy4Ve/2QsgWRCSrADWpwUYLv9gncfDBw++QeaYqnf+2LvqdBlTvxAuhUaj
         1TmwDfzAINiKT+YK+Vi0/zZ4rOYfLJn+zug9Zh2TLGq3CBCZDCbsh/0deHK8H7o/psDx
         7KqaCmeUv0ih7+C1uyQ4WFcOMiTLO6cWUhyO8A68dbTwH1PKD077Z6uJmXaZ1sPT+OW1
         FnFSw4gqiF6J0dP611O2kCJ+SLKnekUEZUBEjrhUE0WUS+FL11o1rBcNxIeP+CIz/RyS
         kEUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of like.xu@linux.intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=like.xu@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id x13si899689ybk.3.2021.01.21.19.19.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 19:19:38 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of like.xu@linux.intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: 0WQqfbe7W+FAbdm8K4DnesNlIYNRLc9218CN7nnl49BxUlfBeZ//h1+BS1XzE9+eqU1OAG+2FH
 xoSr49TVnWkg==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="198129877"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; 
   d="scan'208";a="198129877"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2021 19:19:37 -0800
IronPort-SDR: jH04a57aMKeVtAXTtbLk4D3Ap7/MQk1yH9/4muPQ+K5nD71B/P4zOgI761fnpB3k+0lgvcfVtG
 6geKtOvm55zQ==
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; 
   d="scan'208";a="427636494"
Received: from likexu-mobl1.ccr.corp.intel.com (HELO [10.238.4.93]) ([10.238.4.93])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2021 19:19:33 -0800
Subject: Re: [PATCH] x86/perf: Use static_call for x86_pmu.guest_get_msrs
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Borislav Petkov <bp@alien8.de>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Jason Baron <jbaron@akamai.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kernel test robot <lkp@intel.com>
References: <20210118072151.44481-1-like.xu@linux.intel.com>
 <202101182008.jQybUDa0-lkp@intel.com>
 <a82754e7-9a2d-7ab4-466d-fc0d51a3b7f2@linux.intel.com>
 <YAWOhxi6Vxiq8JLR@hirez.programming.kicks-ass.net>
From: Like Xu <like.xu@linux.intel.com>
Organization: Intel OTC
Message-ID: <7f31ae2f-25a1-a7fb-1598-a8f21f3bc447@linux.intel.com>
Date: Fri, 22 Jan 2021 11:19:31 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <YAWOhxi6Vxiq8JLR@hirez.programming.kicks-ass.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: like.xu@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of like.xu@linux.intel.com
 designates 192.55.52.88 as permitted sender) smtp.mailfrom=like.xu@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On 2021/1/18 21:35, Peter Zijlstra wrote:
> On Mon, Jan 18, 2021 at 09:05:06PM +0800, Like Xu wrote:
>> I guess this fix will silence the compiler error,
>> and v2 will be sent after the local 0day test passes.
> 
> I think there's also a problem where you don't assign a function at all.

Thank you!

> 
> I think you want something like
> 
> 	if (!x86_pmu.guest_get_msr)
> 		x86_pmu.guest_get_msr = guest_get_msr_nop;
> 
> right before x86_pmu_static_call_update();
> 
> And then have it be something like:
> 
> static void *guest_et_msr_nop(int *nr)

The [-Werror=incompatible-pointer-types] will yell at "void *".

Please review the v2 version.

https://lore.kernel.org/lkml/20210122030324.2754492-1-like.xu@linux.intel.com/T/#u

> {
> 	*nr = 0;
> 	return NULL;
> }
> 
> and then you can reduce the entire thing to:
> 
> struct perf_guest_switch_msr *perf_guest_get_msrs(int *nr)
> {
> 	return static_call(x86_pmu_guest_get_msrs)(nr);
> }
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7f31ae2f-25a1-a7fb-1598-a8f21f3bc447%40linux.intel.com.
