Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBPNS672AKGQE65HXVQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2161B12C0
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 19:17:51 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id v71sf318808pjb.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 10:17:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587403069; cv=pass;
        d=google.com; s=arc-20160816;
        b=ihvFp9IjLyi5vKw8a+ijsQ28XHnEud+ZUKeqL4QQQC+q9iEWCG5qJ9V24WnoDX+nPy
         unmaGw7XOWjnyqPFHH8Kq/p5T+wlrgZO19ouZmFLTtKc34ogdOpKauTV7lkE0GI9mESH
         /IBMipSTuO8d5jR6eMr4rYkln9EvSfK+EIxT06IaAYQgXGHYOKxi+bm7EUq6f6IDx9V3
         nn5LwpiCuOpqW4H4kOPkDm8hQjMlIlOOYu8EZPWstem5UgdMjWvjQvuynxMxj73SC5Wn
         x6OhHCAgG3LdgJ89z32e6K6w3bMsb87ICdzaXwWtyR5jQQp4VHWL5oXQNYIH0n8bt60O
         7ACA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=kJ04m84wCvh7I9jTHNUAQY6F31dj4m67Yuf6koxKHfg=;
        b=huL7Spc4vhmzuJHg+HfNqhvDzlhsGNwVGQJaskM7+sGS8UWN8qGZ9/2dVTRCVrFuw5
         DBgcwEMxcwGoAk9aExHTf0Z8jV85q+c8Epp2s4rOCP+z3SzubgvTwsTb4aicLonRgrem
         04s8CP2zC8HNvAwUoveco/kcJhFmDV70DMPKvhve6A4HqoPq4YW7C4dJ8m+3JoGLgpgX
         ziWXzYgpBfCLjvTKbEcc3AnnV50NCDdtUNYz0862WQrpM6Upjo+h8qEPb2wv3slgYwoJ
         rl2UhMcrBiB/mco8xxxtZd99EJo87eU7lCcMAfp2xToyUr1vsWFUtAT2F0X+oOs/5Dui
         +HDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="ph/dGiaW";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kJ04m84wCvh7I9jTHNUAQY6F31dj4m67Yuf6koxKHfg=;
        b=hWB4u2Elp5T5RtiYTLhwOTTlFUkVS8A8Lwe4VP6MkRiAZB8qdXbAOoOgh9RYAG1s7k
         aMDoseLJrNg0T74stn/kZCS4UHCwMkoku/uNekfnTkAZDRNFptICU6Jt5eEqtAOmiJow
         YgZGYMnpi66JoTDMzk3vAa3WLA76JKn6eqeoEfS4vgS6G3W/wMwvKDVLar0eisfq5iZw
         fvJawG0aPFJCWmgaAN2hRyAV7bwSF4dg6KfGTktdofV4uSYx2i3l3IfTU8ifez90b9nK
         m7JenFJzW+h+WiBcUJIuiHcZ091pp8kefnuKH6kHfOTQ+Q+SX4jjLx7lLxW0lUQ+SjJR
         MW/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kJ04m84wCvh7I9jTHNUAQY6F31dj4m67Yuf6koxKHfg=;
        b=noS6txM9K7ApybHYWmI3nBxl2IPx4DSKdOyj9cEvzhRM+CjMFOGToXQpkJrRfjZ4C2
         vII2Ah6zSUhfX6rVJK2LiNdJWZT/t5ycW28fOJLhr3Kh8eAMX6KOMcrPwm33UFf9phTo
         77A3RnCT3rSGrUbM5dqU2iaBP70EEkYuKwJfDf7KN4jCDBRUxG77kKdU64uBz483+8HP
         jL2zdZmnt+1gAq3AEVC79xljza8oYMpc2/3egdGGR5bIpDeVSfxs+nfq1QjzVokooaWq
         Wz+XTeEWwGRfOIKgdGMKSotdi/9mb7Adzea6cx1P5HxGp/uHQWte6ty2XqwMQVirQlnR
         uDdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pubmt9B4k/BVCjmj6+rFRdTY44CdpamMIBPieDwl/5MVZlJPQ70A
	ZPsoAzEDEFHm9/T1pBFfFgY=
X-Google-Smtp-Source: APiQypKb2SkJRAamvco1bSt8UPaUVHtH4cPEfKBGIai0sHFEwqrhLfmg6WNvIXNqlJY4MC9sy2FpkQ==
X-Received: by 2002:a17:90a:2149:: with SMTP id a67mr467608pje.43.1587403069613;
        Mon, 20 Apr 2020 10:17:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ed0f:: with SMTP id d15ls3371795pgi.11.gmail; Mon, 20
 Apr 2020 10:17:49 -0700 (PDT)
X-Received: by 2002:aa7:914f:: with SMTP id 15mr2780362pfi.176.1587403069248;
        Mon, 20 Apr 2020 10:17:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587403069; cv=none;
        d=google.com; s=arc-20160816;
        b=L+9jrhexNb2D+DnDw5r0I326RSqH/KIl/F9RNFF61hG6JinHHQzuyuEJuWdm3XWW2s
         cpm7AyvIs4G+/ZJuUbbkB9Pnd5l3wUrtpeLSlrb0OnmjPySzWS9D8FxjlzNbol8iM7zV
         S2XNKPrEBfAgem+71Ie4N3IrE8eOrC8RqaB/7FFSDTjI5DvVtcIZjbcj5Xnhd6NIViSp
         fiIhpXtAg4hwZ/6zZsUdDrhUQw7xHAlrmrHodm7JOj5ZEejRYVu5zg11oUHldmneYjHz
         STEuKofTCEDFC+L8ukCJxW2CeXXx6Dqlqnp2QymkI8LgpPV5RDmoHym35jG6XqwoIE0Q
         WSEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cuyCqB1QL/DqXE3y4YRbg9GmdosW91O4udEkM2zOpV8=;
        b=RUWyUgWZ7JhlO3hYwxy6o0uEdF/scSWg/FFJ7TMCzgpwPFuAU6EUjI5WKMOaGEmsnz
         ZWFMXDv89kWET8ZXn40PnQL3QdQ5HC2t/dxj6YIZVKhgqYAlgaCuh05q/04u1wFcqBpf
         /wbhRGosB8IctVGEfNvw/y/9Now0Q5TKy/iszwOP9xXGDGR6VXqQlnG1Ec03RPeqO0NX
         JbNGhA5XhwpTWe453rIIYFyLHOhbw59eC34IbTVqI7NqFCYMbin4GbyrErRwrPcKt0hH
         /zx5rDDO7se7wwf2yEfmvB6INKTKo8q1JuJff7NBTjvKHHJqOAHya2zZ9uFMub79GnYI
         n5dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="ph/dGiaW";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z1si123plo.3.2020.04.20.10.17.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Apr 2020 10:17:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 54EF720B1F;
	Mon, 20 Apr 2020 17:17:45 +0000 (UTC)
Date: Mon, 20 Apr 2020 18:17:42 +0100
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v11 03/12] scs: add support for stack usage debugging
Message-ID: <20200420171741.GC24386@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-4-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200416161245.148813-4-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="ph/dGiaW";       spf=pass
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

On Thu, Apr 16, 2020 at 09:12:36AM -0700, Sami Tolvanen wrote:
> Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks. When enabled,
> also prints out the highest shadow stack usage per process.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  kernel/scs.c | 39 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/kernel/scs.c b/kernel/scs.c
> index 5245e992c692..ad74d13f2c0f 100644
> --- a/kernel/scs.c
> +++ b/kernel/scs.c
> @@ -184,6 +184,44 @@ int scs_prepare(struct task_struct *tsk, int node)
>  	return 0;
>  }
>  
> +#ifdef CONFIG_DEBUG_STACK_USAGE
> +static inline unsigned long scs_used(struct task_struct *tsk)
> +{
> +	unsigned long *p = __scs_base(tsk);
> +	unsigned long *end = scs_magic(p);
> +	unsigned long s = (unsigned long)p;
> +
> +	while (p < end && READ_ONCE_NOCHECK(*p))
> +		p++;

I think the expectation is that the caller has already checked that the
stack is not corrupted, so I'd probably throw a couple of underscores
in front of the function name, along with a comment.

Also, is tsk ever != current?

> +
> +	return (unsigned long)p - s;
> +}
> +
> +static void scs_check_usage(struct task_struct *tsk)
> +{
> +	static DEFINE_SPINLOCK(lock);
> +	static unsigned long highest;
> +	unsigned long used = scs_used(tsk);
> +
> +	if (used <= highest)
> +		return;
> +
> +	spin_lock(&lock);
> +
> +	if (used > highest) {
> +		pr_info("%s (%d): highest shadow stack usage: %lu bytes\n",
> +			tsk->comm, task_pid_nr(tsk), used);
> +		highest = used;
> +	}
> +
> +	spin_unlock(&lock);

Do you really need this lock? I'd have thought you could cmpxchg()
highest instead.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200420171741.GC24386%40willie-the-truck.
