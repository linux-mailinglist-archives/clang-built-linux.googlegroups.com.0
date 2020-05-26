Return-Path: <clang-built-linux+bncBAABBUWSW33AKGQEX5RZIBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8841E33D2
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 01:42:12 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id 70sf16918833ple.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 16:42:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590536530; cv=pass;
        d=google.com; s=arc-20160816;
        b=z1u5nawjK4ZnqganAxLhMkL/AeGMf+kniCV63UO8BrNCUwBS8EVixmBUMfp0k6/i0q
         /oCdoPnJz0HBkOGCuyZUwdzlNgHbCOqoAiiJyVQVpZ0mXTwoxJjgkx5HM/zb/zM1M/Gq
         RANPh0Su3cpgv9fqfCJMW0RelSh7nf+dSbwTh4Vv8c+SfhqeN6ywQuEJKyZwfEHKVfTs
         jig442kHNdYLYAl83Mu1hC0cFrn6lfW6yZWPXloHUGdNMFK+8byLEa1tA1mv4t7MTPMO
         AGJy5hBR3ikDpEXdpiFneiun/tcAOAIkD4XgSevZqUVOkjQ5yd1GbM2llv4EaOZiQKHj
         9G0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:date:to:cc
         :from:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=8A6/lzWcBeJYoJe4rTYynKfMExdQn2IaE8mky25+EDU=;
        b=kVKdEbpgmuZ8tCGnfFDK6SG0Zp+5IjWEN4yYDAhewFE4i2DDfKhKlUe7/PiN+e2DfN
         z3HgwSNIIlRovaza85pUu6+QVNXRUjXIG4bLGQDIZ5CBFnuZ1h6tadkfjLKbz8bk9dTO
         j+2ri0jZbQIp/qZ73rPDQCT1RK+xo2USwdSE05edblOAK3VQZgVvSj+9D+7jtk3PKgLz
         npkO6eL+CI2dR44ZTPYfntcX9iSnjbqdaHbLIH1NUTrF6R8kEkrP/lK77rGnwlSHHvBX
         gkIeTD2O28robvemJI1bRZ3v65JERXbVwzgtl9qOhZAZT0VgrHVnPgqYyGTPcmKEihqg
         Ta/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AZgLsxRa;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:from:cc:to:date
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8A6/lzWcBeJYoJe4rTYynKfMExdQn2IaE8mky25+EDU=;
        b=mYwUOkgfO8qCHIfGPel+/NBmC1MKqaw24LbGElWXnnxXGKnpxAQUwEpgQSN69psqTh
         ZtDS7jTNGb73rscBo/RCdhFq2wJCRjAI/psTZIhIi+G8NkmOvNG2ilct6Xj9Ots5XRtw
         K/27mxY38/Yn7Bqx5D0wGn4ADaqDnN5uyfjN65y6+mTU4HAUOrFJHLLCUdR9cyph5Dnz
         GyTwz8ct8YvJ3EOFnrwz0OrLZ4BzlWGSxptORSnp7yOdTGSGYRkn0w+7jVigcgh8fGhx
         llcoD8Xitl8Hx2aEjP9Z6uzoOMZ/rizgdfQxZpWbrNu64LjA2ag1Mj1UvwR7tCPG3SLp
         hnOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8A6/lzWcBeJYoJe4rTYynKfMExdQn2IaE8mky25+EDU=;
        b=AeyVa1N+vnkTpayTfeR10FMyfxniyD/uKZLjL8a+ipmyvb2jskPEJxOp3VSAjcglZZ
         svEK0BbYl37AJ7lfB7uMJeaORvNAnMiO4dYksZ6YXgWRiYLEcDG+UKTP1LS58VKzG2pZ
         2BkAXVuAfJPDvDUdNx/GPO0RKy6l8wl6JBBEYMbd90QUEmfGE07AZ5R2j6j1T0W8bmmf
         kBwRws4xto+HqVsYpL6MB6emFqrW8vM8EJgsJcXx9MKrrE0XYLU+1Hn3z8tKpBkagjeb
         nsgGR+CfXyQ0p7BcxEaj04B5TVzo7OxuSXEbvI1y8h1b+WaUylAZfSBR5N9sakxcOe1E
         B8Vw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+dw0bLZJZm8w/3nTQLnxYAK5rHp52t5cNp7pumjhORYXffq4T
	s2OzF7y7hJXYMPO2yYKjyOU=
X-Google-Smtp-Source: ABdhPJxff+UXAIkDry9lXS6R2ZEOPNLSWvGgRkccmdiVoN8qYam4hVBIgImQe7MxtaI3cxPowbAxBQ==
X-Received: by 2002:a17:90a:c7c9:: with SMTP id gf9mr1766422pjb.19.1590536530580;
        Tue, 26 May 2020 16:42:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c086:: with SMTP id o6ls429631pjs.0.canary-gmail;
 Tue, 26 May 2020 16:42:10 -0700 (PDT)
X-Received: by 2002:a17:902:fe84:: with SMTP id x4mr3372876plm.1.1590536530233;
        Tue, 26 May 2020 16:42:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590536530; cv=none;
        d=google.com; s=arc-20160816;
        b=JweGcm8iosPZLhLhnZQkm3bKDJFN+m79Y75RaIcsr+8QCHPBZ37tpB8MaMncQp0SS+
         xoriYV4qMqbdFrXhcbmyO+2KTeuY8/WaXBincQF7sD1hqgqs9VuR4n0f4299FWWUBYWO
         IubdPeMaoh2+jaaXmuicnvPBsHZNVNexoe1F6ilYZX1YF2va0TaYGjE+dKLiR97OWWFv
         tqc6GHqN7w7uR0MybhMH01F6i2W38lAqVtDtIP0fRdl1X0ACM7l5RFgzLncgFD8EYp8G
         iuMXlLc3qSRgF2LavVSiwgkXzNLOf5H++fG4vrZW5zzdznIa9C1mUNQchOJ1gj/GwnrV
         Z7Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=LJMcn70juXgArK/fedrp8QcoTsemJUI5fRpNxfLnzPI=;
        b=hZYYL8sQ7Azt3R5JarRtO/SsMzd++Pttb6LOXy9fJe4dJoK4ebJoirEJHxVgy89vin
         bWF/kkekK3poZng/nHiX2aHds8GqiZbAP39G8nF4oQpSluzWtRj5fZFZcAmQ/BZRe0D9
         /pBGq3ZMQZgM98WxaDF/eHMU2N+iDBVTZMa5n8835/QImLmuSHZVuMOCHDSqKrs7TolP
         vCplSwQJRCeT+DgBZBi+LPESZv49lgaAQ25YzdByuqsVsjU+z+qk8CU97Jth6QN9EyeU
         T6K2gRLd8ZRTOc9gJdJBeIQ6mDLNHja6G0MSX1iIvaE2eSbhsJMzf6lKq6Wq7H9NtSi6
         mYQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AZgLsxRa;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v143si145295pfc.3.2020.05.26.16.42.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 May 2020 16:42:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [104.132.0.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DCAAA207D8;
	Tue, 26 May 2020 23:42:09 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20200516080806.1459784-2-natechancellor@gmail.com>
References: <20200516080806.1459784-1-natechancellor@gmail.com> <20200516080806.1459784-2-natechancellor@gmail.com>
Subject: Re: [PATCH 2/2] clk: bcm2835: Remove casting to bcm2835_clk_register
From: Stephen Boyd <sboyd@kernel.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-clk@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>, Nathan Chancellor <natechancellor@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, Nathan Chancellor <natechancellor@gmail.com>
Date: Tue, 26 May 2020 16:42:09 -0700
Message-ID: <159053652927.88029.9853028696716182136@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-Original-Sender: sboyd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=AZgLsxRa;       spf=pass
 (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=sboyd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Quoting Nathan Chancellor (2020-05-16 01:08:07)
> There are four different callback functions that are used for the
> clk_register callback that all have different second parameter types.
> 
> bcm2835_register_pll -> struct bcm2835_pll_data
> bcm2835_register_pll_divider -> struct bcm2835_pll_divider_data
> bcm2835_register_clock -> struct bcm2835_clock_data
> bcm2835_register_date -> struct bcm2835_gate_data
> 
> These callbacks are cast to bcm2835_clk_register so that there is no
> error about incompatible pointer types. Unfortunately, this is a control
> flow integrity violation, which verifies that the callback function's
> types match the prototypes exactly before jumping.
> 
> [    0.857913] CFI failure (target: 0xffffff9334a81820):
> [    0.857977] WARNING: CPU: 3 PID: 35 at kernel/cfi.c:29 __cfi_check_fail+0x50/0x58
> [    0.857985] Modules linked in:
> [    0.858007] CPU: 3 PID: 35 Comm: kworker/3:1 Not tainted 4.19.123-v8-01301-gdbb48f16956e4-dirty #1
> [    0.858015] Hardware name: Raspberry Pi 3 Model B Rev 1.2 (DT)
> [    0.858031] Workqueue: events 0xffffff9334a925c8
> [    0.858046] pstate: 60000005 (nZCv daif -PAN -UAO)
> [    0.858058] pc : __cfi_check_fail+0x50/0x58
> [    0.858070] lr : __cfi_check_fail+0x50/0x58
> [    0.858078] sp : ffffff800814ba90
> [    0.858086] x29: ffffff800814ba90 x28: 000fffffffdfff3d
> [    0.858101] x27: 00000000002000c2 x26: ffffff93355fdb18
> [    0.858116] x25: 0000000000000000 x24: ffffff9334a81820
> [    0.858131] x23: ffffff93357f3580 x22: ffffff9334af1000
> [    0.858146] x21: a79b57e88f8ebc81 x20: ffffff93357f3580
> [    0.858161] x19: ffffff9334a81820 x18: fffffff679769070
> [    0.858175] x17: 0000000000000000 x16: 0000000000000000
> [    0.858190] x15: 0000000000000004 x14: 000000000000003c
> [    0.858205] x13: 0000000000003044 x12: 0000000000000000
> [    0.858220] x11: b57e91cd641bae00 x10: b57e91cd641bae00
> [    0.858235] x9 : b57e91cd641bae00 x8 : b57e91cd641bae00
> [    0.858250] x7 : 0000000000000000 x6 : ffffff933591d4e5
> [    0.858264] x5 : 0000000000000000 x4 : 0000000000000000
> [    0.858279] x3 : ffffff800814b718 x2 : ffffff9334a84818
> [    0.858293] x1 : ffffff9334bba66c x0 : 0000000000000029
> [    0.858308] Call trace:
> [    0.858321]  __cfi_check_fail+0x50/0x58
> [    0.858337]  __cfi_check+0x3ab3c/0x4467c
> [    0.858351]  bcm2835_clk_probe+0x210/0x2dc
> [    0.858369]  platform_drv_probe+0xb0/0xfc
> [    0.858380]  really_probe+0x4a0/0x5a8
> [    0.858391]  driver_probe_device+0x68/0x104
> [    0.858403]  __device_attach_driver+0x100/0x148
> [    0.858418]  bus_for_each_drv+0xb0/0x12c
> [    0.858431]  __device_attach.llvm.17225159516306086099+0xc0/0x168
> [    0.858443]  bus_probe_device+0x44/0xfc
> [    0.858455]  deferred_probe_work_func+0xa0/0xe0
> [    0.858472]  process_one_work+0x210/0x538
> [    0.858485]  worker_thread+0x2e8/0x478
> [    0.858500]  kthread+0x154/0x164
> [    0.858515]  ret_from_fork+0x10/0x18
> 
> To fix this, change the second parameter of all functions void * and use
> a local variable with the correct type so that everything works
> properly. With this, the only use of bcm2835_clk_register is in struct
> bcm2835_clk_desc so we can just remove it and use the type directly.
> 
> Fixes: 56eb3a2ed972 ("clk: bcm2835: remove use of BCM2835_CLOCK_COUNT in driver")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1028
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---

Applied to clk-next

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159053652927.88029.9853028696716182136%40swboyd.mtv.corp.google.com.
