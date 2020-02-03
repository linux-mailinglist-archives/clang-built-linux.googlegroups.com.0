Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBNEC4DYQKGQEQS5CDHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B508150502
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Feb 2020 12:17:09 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id b18sf3528175uap.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Feb 2020 03:17:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580728628; cv=pass;
        d=google.com; s=arc-20160816;
        b=GPUeTpwYqXtJmwGHqvwnUvvzQUGK7Go9Tm9z6omndO7UFKg4TFanRqwcsWhJKSJLLY
         bISsSBALKhnRB4+qEgCJr0Oh1imVU1OakVwCfVOJ92/DPt51xP782tnonQ2UOsIjOJjE
         8MswULF7y4dgLYQR/iqXBsktBiFQjGGAaL2u8LcKgj6lT2gjAxNM4ppXGxgtZO2og0Mp
         bPt71AnVbv41JFWbX3vd8CD9bJ8AIUoheae58iP4dW8dx2t5jfn4u0xivXqV4cGVq5ZO
         mLHh/LBVqWBGB9IgUPHwmWGei8BCqeUzBb8HxMAxGsxhIWAvNlZMJEJMDYEke9bG2hIf
         bAbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=VuSgc1QKvR3f3/Kh88iAdl2CbhSo/622Nhi9LDj5VRE=;
        b=oY5ld2gBzHhklObuTl4FVh0Fjq807pT8cbGoKnkyDI+yYe18fRL+P528gKFTuq588v
         bSZLCqrOF9nwtoJlFmJpRGGNxTv8EocAYeCx0wJyl9aleFIgpykfxHzvp0RFWRCTGpVT
         d4Z1rKMjrIcIlSjSEsxVEqSY0BLXpl7Ru2OJZZAWRGGEN6u0EmX3cnAmvoF+4+abkLCi
         +ZWsH5wYM+zarZk2l9L0aejKvp549Kv7S7C3nvjAVdle+7cL9G5noW9Uz2D7r+ywIdVH
         sPwCWhpVFZMHaU2yViOpmxed09HzN6q/ZU4EGw2/dfAFzDrpyIFrurpXUm1EgZSxtDGP
         rVow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iCEeBT7t;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VuSgc1QKvR3f3/Kh88iAdl2CbhSo/622Nhi9LDj5VRE=;
        b=sM2VmKcQDwbaBrSEg7GWDvnd/jaA0WN/knfHF9rOZJR2wjwh3N1384KQosP9OP3Oyq
         1HAG2E41PaxwvXtj7S0BGHUCXLq13QiBgcduEJvKfc2zUcAXsKf2ovwYKtniNUo4xfNK
         dPCjmq0tYX5gkyVckCXOPyt5QOUgiOpsR3y9egRkLbkALssl39HqLm6upS+cB9JjKe9f
         zZm6RVPGaKRwQiOB6YFF9L0Ga0ZX6vqJlNrS4wylxW75LAxEjB8NsVz9AYmQROAlZwBQ
         cv3hvtdrYBKDZGKdRJuePhqHagYIxjdJaSPliRB5P633jYBZdWhFC1TcnzbSCFQwQ2mq
         6rwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VuSgc1QKvR3f3/Kh88iAdl2CbhSo/622Nhi9LDj5VRE=;
        b=RBJ0xzyI+mLLFHiilHg8Z28Pe+kYJoPRKRfZdK8PC8v3WxL3jgSzvM8XK6PMOBttbj
         SBP1lNuLqsSqP9nMq8fJZ3NTT4V8QIE58zYYTUAAZxH6RMFJHFoj6shGzRsGYOcYN2PE
         Hr9lY6GdOJMvO08gGd4onGbTv9lCpNnBz9JHCeYjBO0QVGL3UxtkLPU0c75svEuYeoPx
         0PqoJse1TtsnQkQNxPRvrHA7a6vsNgypRWQm015fi2AvX/dYfEWdL7s+5mAzA5Sc2IX1
         2zafnYxmvq0SiYkgR7Uqlt3WAVF2jisWrsYTWnGw+7KjiwUKhFplZx/2b/RsvmwUTQOK
         h5hw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWpnwB/sy/dPY1CTNtYs5BtVAxXRaJ1hZRoNUTWQ5LQHsMNmuoh
	3w85yaSszgXvCtyBk9wrhBU=
X-Google-Smtp-Source: APXvYqz6Bw79vILH+EzKeGvxDWRlIaejARQ6Tf07A/3viw2xbmlNNlew3JCPEuDKpHTVbEp8pFzUVA==
X-Received: by 2002:ab0:6001:: with SMTP id j1mr13578868ual.56.1580728628196;
        Mon, 03 Feb 2020 03:17:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:42c1:: with SMTP id p184ls1666230vsa.10.gmail; Mon, 03
 Feb 2020 03:17:07 -0800 (PST)
X-Received: by 2002:a67:fa1a:: with SMTP id i26mr14464025vsq.169.1580728627863;
        Mon, 03 Feb 2020 03:17:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580728627; cv=none;
        d=google.com; s=arc-20160816;
        b=zPR4ksgQl1aFgAls8HYc+SjStozjCPDVs9pMngypZ6AFYj2HZbIJelrQdYgpfLgss7
         rjIXMsTmU9UOfGd1AEjfFnnjO4iFUjW0ngi/8xZ97plAKpuA+jlabyuBG5JE6gY0Kfsq
         pLyZ6CPSAjm1xPPcF0byS+I3VnlR1q7l/a1Qobt5/ucoh53peY82DzHa1kQqFV/KBAOa
         5VHHiCRHXk3LOzrijcMfgBjs0o8PLeo72W9PdTmTgeTSxgSPrENgM52ExvzAk04GX0Gs
         fU/qsleVqtvqgxdXMZYrOXI7lKghSRpILuYvE8BAeDFBXUyhgU27+1Bkd1M9IZN20cot
         d9sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=IMVb0dznAVEtldamyp0mV7EeDZw8CEDo9fm5Y4Nf4ZU=;
        b=LbEBvzLefRcnPzQwU3J7MS69VHNh5DQtXI2CRprpfJ0Pe8AXJBxPGsGsQjaUZFQGMB
         aOqH7KxAqW4/JXYfx7FrY9+enq0Pa7Y3277Ke6t02Pf9wPxskwTwx1EmsHAjvfyfnvfn
         7A2FQ00CbOGxU1Y/vgG26dV386UPUcNacr+bCR3rRSshiiApT19oani7SRpbyab052YR
         rK9qvwf2r/MEO1xs9srjr5qL4HN2tAuW2x5GAc4b+yPwQyOJrBgO18eTtttw/U8yJMBW
         GsLaqgz6F3MuGxFVOhgdVX4aR6ZzzH/PEmv57aw6oA+hKfDWrLYs1STptCxKLzpXdNCR
         /BHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iCEeBT7t;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k26si676761uao.0.2020.02.03.03.17.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Feb 2020 03:17:07 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3952B20721;
	Mon,  3 Feb 2020 11:17:05 +0000 (UTC)
Date: Mon, 3 Feb 2020 11:17:01 +0000
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Cc: peterz@infradead.org, longman@redhat.com, mingo@redhat.com,
	catalin.marinas@arm.com, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH -next v2] arm64/spinlock: fix a -Wunused-function warning
Message-ID: <20200203111701.GA4124@willie-the-truck>
References: <20200123202051.8106-1-cai@lca.pw>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200123202051.8106-1-cai@lca.pw>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iCEeBT7t;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, Jan 23, 2020 at 03:20:51PM -0500, Qian Cai wrote:
> The commit f5bfdc8e3947 ("locking/osq: Use optimized spinning loop for
> arm64") introduced a warning from Clang because vcpu_is_preempted() is
> compiled away,
> 
> kernel/locking/osq_lock.c:25:19: warning: unused function 'node_cpu'
> [-Wunused-function]
> static inline int node_cpu(struct optimistic_spin_node *node)
>                   ^
> 1 warning generated.
> 
> Fix it by converting vcpu_is_preempted() to a static inline function.
> 
> Fixes: f5bfdc8e3947 ("locking/osq: Use optimized spinning loop for arm64")
> Signed-off-by: Qian Cai <cai@lca.pw>
> ---
> 
> v2: convert vcpu_is_preempted() to a static inline function.
> 
>  arch/arm64/include/asm/spinlock.h | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/spinlock.h b/arch/arm64/include/asm/spinlock.h
> index 102404dc1e13..9083d6992603 100644
> --- a/arch/arm64/include/asm/spinlock.h
> +++ b/arch/arm64/include/asm/spinlock.h
> @@ -18,6 +18,10 @@
>   * See:
>   * https://lore.kernel.org/lkml/20200110100612.GC2827@hirez.programming.kicks-ass.net
>   */
> -#define vcpu_is_preempted(cpu)	false
> +#define vcpu_is_preempted vcpu_is_preempted
> +static inline bool vcpu_is_preempted(int cpu)
> +{
> +	return false;
> +}

Cheers, I'll queue this at -rc1.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200203111701.GA4124%40willie-the-truck.
