Return-Path: <clang-built-linux+bncBDZKHAFW3AGBBH4XTGCQMGQEQMZQUSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id D308A38AC8E
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 13:44:31 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id c13-20020a5d6ccd0000b029010ec741b84bsf8522327wrc.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 04:44:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621511071; cv=pass;
        d=google.com; s=arc-20160816;
        b=GxeZNjI7U0llL5x6KBIIU2cX6dATF5nFSk1/m54qOZmuFA052vCtTvPKPKy/H7j3is
         ID0Jnad9kCnnBlf5MfRhW7HzRobfVzihGzpgaT5GuVp6eXABSPlCJtE06JcLmto1AmW1
         XxJC8yP9kQxslo1WJRv1YjKSRdd7PcKsAI0LBjeOYc+hrniEVMhk0iTwFbLRfvcszToZ
         OudtYa2/dUbDjXIUxpTRnpz7PyiHN5eNKiMqaTjbdGemdvdeYc0olKPQHQ//J6mt+oja
         aDAnrM5IRvxVslVRNNFOTcjHnkJ55nCqLnDINz6wihA4YLOKaDEeRy46XL7usvHq0npq
         Dlbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=xlarnTG8Z+L5ECC5oZKxeEogdcwD4Vu021vd3b92/+k=;
        b=vkRKF45vxxx1pPGy19XU13i/DR27gB2fOKIfLbi3WcYHRDufgCFzvaF6r66Yr6vAf/
         NO35Ef4ALdwttjrZ+vIpNDwucvkhN99IxqdUjLxHXTWspAgXro7H1pTuhcZuWvIoAmLV
         eA99hg91aCzyVWIBZK7XJSGRZ01PHDpZEn64WGPaVK1OBmNzZRqIvsjAyEajDa4tAo2i
         181oKf7zjBZO609YLkFBdRD+gFbiD+S2A4medaOPixnLDU1f39yt7h4Li1pC3oqAh/NV
         fdgBoPudOyPfuOCs7otaHxRbLQlx0VpUsBXLg86LJoMhrKOK6nlESfYg7NW0sGZinxqn
         JupA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b="utRS91/S";
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=xlarnTG8Z+L5ECC5oZKxeEogdcwD4Vu021vd3b92/+k=;
        b=TrYVEHk0EFVutsUAC4fdsgpt4lfQTbYSoF2EqvVlNATOoDCQq2NjEAqna2/fzMyrB+
         bMCN47YMoKuli5L5da0ngnHIz/xJz0yTzTd9kyCGQNUHDwlXL4782d/vW3Mu6ajb9LjL
         +hTm7KKEj673Fq0CSHWKvoK0kgRfpZy7b49u/jjo8YNAmbVENK7EIgZfXlSKixEUuQto
         ixzmvPjRHj3GwOhv/MzRkDprBTymGb4vD+Ki9eZAp6mzt/iKjVwxm4O//6NkaI6S+8N8
         kTtrsa1gFDTBZ2HJ/VaL6nNKpKmQnFRniXUk29ae4j6GrlsM0mqj06ZX8zqwW7OoOk1A
         6Nbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xlarnTG8Z+L5ECC5oZKxeEogdcwD4Vu021vd3b92/+k=;
        b=MCN6ZaXRUaXN9n/uzAKO3ezbCOiNurWK553Ne06WbyhOuaIWHP5qLQmcZyd65VV5Ml
         zj/5S3i6h48lNE/Jg+PKP7tVnt7tZuSACuTAqJkL3b0tG4pgKYm7ExXe+dtRn/Pok1d/
         ENlAJowegWZX8Jl1VLurkzBIn00dcVH+iSdKJShy05B6oElj0mXY5vtR9JO67k8tW+JB
         JdOD40v0rCY4EN/mJrxwXafe+FK32I8UcNawZZIJwX1jTx0ZfISQ0ymAx4w8PGJIo3fL
         bXeUzxRgxEQGk55VjI7Gi50S1YbDtwCZ16eJ4bTG7RwKOwH0Hsy5eMUMOr6N7mhZLRwI
         QNCw==
X-Gm-Message-State: AOAM532cMMrwspHIa8VTy+w8XQN61Hpurs1c4LUnhSMnnY7R4TKMkIXg
	mgJhqTsmvIIwhLrghf/skjk=
X-Google-Smtp-Source: ABdhPJzCKWqEGXPernstZ8VE+rxqptSy1cHm8y/qnAh3cI9BBzd3c1tcybCeED4qQTMJ2ODWovsKcA==
X-Received: by 2002:a5d:5249:: with SMTP id k9mr3872400wrc.301.1621511071585;
        Thu, 20 May 2021 04:44:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:4f42:: with SMTP id m2ls1142528wmq.0.gmail; Thu, 20
 May 2021 04:44:30 -0700 (PDT)
X-Received: by 2002:a1c:bb0a:: with SMTP id l10mr3244056wmf.96.1621511070645;
        Thu, 20 May 2021 04:44:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621511070; cv=none;
        d=google.com; s=arc-20160816;
        b=wxlKMAsa7COto5+geFUCw8r6aHAcPBW+katoVrmN4AYEe8nkdTZtmO3Vxn+2KCStP1
         Rpy5FXGdtcfu7wXv8Yu+0OibZKySg3GftRK4MmanhNAmXhEkFMzvQ9vrYkn+9IRJpkoa
         S1HRdWO9IgmBYkzk2JPEXpoG+E/o1L50YsDgzwOqBVjaVE3LuH1nMzhoyttqL+JbBCMT
         tmid0IbQuCPJy61mhKXStoHcv7ZY21kDftV1xWt4jVV9hSeigi19xvq9YltLxCD+uo0L
         s+V9PTryPENYrbCHU3BhCvzLrpxsJ7rbl14YZaK1LYeSq9WbFIxR0iUcxBROxtKETe1c
         V1LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=28mF/7bespDFnYavsMGSNSGY5smp1fCtQdpn6i6oUOs=;
        b=TKwIJdJA9Y16QSk4BuqOchhQftfsMsprUkS9uBswBm9dCP4SOvid0oB9thWZ4DOe6N
         SP82YC3mP72tX9mkWJOuiTswh+8VLNxMXuPyxma/Hj9TJkwZq+aYns5l5g7/Lyhd1I9e
         8p4OqS+a/4RSMJQBh0J+UsF0ta1eQSnN9IneXcu15FLmX1MaRisvLg93P/NXJdIFmw3G
         uWt2OC6BEBJn/0XehhbJLCy2YQxDR5mJYDqHMWoak1hc+tuQLzorsKTje0c3IX/ji7Pd
         TnYeaYPUIe0SSQqLtI1iXjVL2AwcuB9CVunJPaH6vn7BU9gEVL/q9eeO5QOxYBpuDfGY
         xPrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b="utRS91/S";
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id s185si106243wmf.4.2021.05.20.04.44.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 May 2021 04:44:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 36253ABCD;
	Thu, 20 May 2021 11:44:30 +0000 (UTC)
Date: Thu, 20 May 2021 13:44:29 +0200
From: "'Petr Mladek' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Martin Liu <liumartin@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Tejun Heo <tj@kernel.org>, minchan@google.com, www@google.com,
	davidchao@google.com, jenhaochen@google.com,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kthread: Fix kthread_mod_delayed_work vs
 kthread_cancel_delayed_work_sync race
Message-ID: <YKZLnTNOlUQ85F2s@alley>
References: <20210513065458.941403-1-liumartin@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210513065458.941403-1-liumartin@google.com>
X-Original-Sender: pmladek@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b="utRS91/S";       spf=pass
 (google.com: domain of pmladek@suse.com designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=pmladek@suse.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
X-Original-From: Petr Mladek <pmladek@suse.com>
Reply-To: Petr Mladek <pmladek@suse.com>
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

On Thu 2021-05-13 14:54:57, Martin Liu wrote:
> We encountered a system hang issue while doing the tests. The callstack
> is as following
> 
> 	schedule+0x80/0x100
> 	schedule_timeout+0x48/0x138
> 	wait_for_common+0xa4/0x134
> 	wait_for_completion+0x1c/0x2c
> 	kthread_flush_work+0x114/0x1cc
> 	kthread_cancel_work_sync.llvm.16514401384283632983+0xe8/0x144
> 	kthread_cancel_delayed_work_sync+0x18/0x2c
> 	xxxx_pm_notify+0xb0/0xd8
> 	blocking_notifier_call_chain_robust+0x80/0x194
> 	pm_notifier_call_chain_robust+0x28/0x4c
> 	suspend_prepare+0x40/0x260
> 	enter_state+0x80/0x3f4
> 	pm_suspend+0x60/0xdc
> 	state_store+0x108/0x144
> 	kobj_attr_store+0x38/0x88
> 	sysfs_kf_write+0x64/0xc0
> 	kernfs_fop_write_iter+0x108/0x1d0
> 	vfs_write+0x2f4/0x368
> 	ksys_write+0x7c/0xec
> 
> When we started investigating, we found race between
> kthread_mod_delayed_work vs kthread_cancel_delayed_work_sync. The race's
> result could be simply reproduced as a kthread_mod_delayed_work with
> a following kthread_flush_work call.

One more thing.

This scenario might mean that the kthread_worker API is used a wrong way.

kthread_cancel_delayed_work_sync() is typically called when the work
should never run any longer. But the parallel
kthread_mod_delayed_work() might queue it right after
kthread_cancel_delayed_work_sync() succeded. As a result that work
might get procced even when it was cancelled.

The API caller should prevent this race. It should have its own logic
around kthread_worker_queue*() and kthread_worker_mod_delayed_work()
calls that will prevent calling these when the work should
stay cancelled. For example, see

	if (clamping && w_data->clamping && cpu_online(w_data->cpu))
		kthread_queue_delayed_work(w_data->worker,
					   &w_data->idle_injection_work,
					   sleeptime);

in clamp_idle_injection_func().

Best Regards,
Petr

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YKZLnTNOlUQ85F2s%40alley.
