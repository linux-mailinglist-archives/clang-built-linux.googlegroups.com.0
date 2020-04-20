Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBSVS672AKGQEVUMUSVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6F01B12C6
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 19:18:04 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id s185sf1617802oos.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 10:18:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587403083; cv=pass;
        d=google.com; s=arc-20160816;
        b=KJdCcuzvHX/05DQB6r1O5FUi8mFSSLM03mN69074RVMt0v4rlYuO04i/MF1qJIxriH
         CjHJrHPPnhUCt5s0E8cJ/ujKyyXWgxNuB/M2D2KJDTQNIJaqRi8151AROjGvyiENa4CU
         pGuC5kvQ3weRmNle5zDTxF/9knVGiOayKvdoXySau9h5D2UcCCIqrO0sL+kRmnxwXuya
         fLcbVL/ACr/vQQxbSgJ0/gQhYaNEQETK6lTaEFOB+Zb7bwID+e3CDuMjRsj0Z2qnO3L+
         zi+O1npn5JOx3SEbSBeX/AVxHAH9Ik8MUvATYNwETKpdMwl0Zh7f+nQEbblFEEHJHBbu
         3EgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=0QelfHLxhO1XTyl1b2Tp5QEJo2rPsDXl+xdoUjlTV5I=;
        b=uG3l/Wmf4QhAE2s+6gSiGQyTLU44JNenDTcAnNXwWMnmeQBd0U1kevJTPZkm2I7YzU
         ufAofJGMGXFGSwpGhdWToukSXJGv+inpTwv9HUM69z+fWtjhXPLBoFo5jcPsY1qxIrwM
         HIwoY9Sc95aJ+qjctVOp7SKvtaLYPgpyMmVvIz/NzZm1I+jZpymdK1bTMSPDR4RQEsz1
         HUgNrPdmnK2h6OC4U4mPdjjYV2w2loWpB6aCrgd7KplIcPlv3XHLWegyvj8XaE+pwhIB
         VlnbGGQTGQfzpp2Grjwrq0UqSwXbg9Q9AN+l9p9XEVUOVR8fFPv7gvMpdYK2w8LhvND8
         UJ8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=n8kgySIF;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0QelfHLxhO1XTyl1b2Tp5QEJo2rPsDXl+xdoUjlTV5I=;
        b=JT0+UnUvYz3f0uT5KgM5IcdjL0ohFWVSra+JZ9gdAeyeiw1Ys+iaJDJTxrws4wCF5v
         UL2iLhesPncyquYeBk5FmRJOjbaCy+VtTAzb/J0V9W9AnQC7IFRGrWp9J48ZPJsS4rPk
         s9aSou2slhuLqoaU1OJKX0oPXDri9YMw7IASLV0srwqx+uEqLeww5RBg+Z6VNXWvmzo0
         jVTwASCraMwKIJTvGzvaPdPNk5ItT27dvMTAP4+hEYlnyyQX9P3TSG4L7OZzaoGkaEyJ
         1D/bDfBsi6/wAXAjkIQZEpyzUGAyZWodhotKZnkrsHplSFFAGcwI0KN/+8z/DyIZTcY/
         HCRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0QelfHLxhO1XTyl1b2Tp5QEJo2rPsDXl+xdoUjlTV5I=;
        b=HCXyVrHahh5VUIy4oEiG2LS8pppfKjFPUlXzYSAMcfZShwKTEx/EXRpGh3P65WIWN2
         9eGsWhiq/s5TfyL2MEvDRpFQD/YuTM05ZiDcOAnTMNNrRZFzMdKJk714vHUKbiCrzCGG
         vDcxDvoLZsnJlmUXEEk9BTHKrbnl9wwjlc7BnepMLRLTklBqSkRmgOrS+jEbkzgAHhcT
         Xpf03ePd7UO3QC1QfXgb5WPYujhGRzVHQCWe5q9MgBGALGwFiA+aVlmICn0MA0PqMcBR
         JHNsXhcKW6DN2Xewhamoj5qfbSPHg6k65A6ldY00XxZotF1OXI/9auwws2oXkoEBa1dN
         GAoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaNWjPgQsNdjKLZOzwSehAuUKmbrqw+hT3DHMpVDdaGFOyYDw0A
	MhZug70n0q+kDMb4lZuPtqE=
X-Google-Smtp-Source: APiQypIqYEQNBhbRUl25ZqrAJ8Kr/Fccw/CFnTKQHaePX/sGbspMlWjmaXmda9E3nQKGqEUeUt75ow==
X-Received: by 2002:a05:6808:906:: with SMTP id w6mr334194oih.23.1587403082879;
        Mon, 20 Apr 2020 10:18:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:69d7:: with SMTP id v23ls973340oto.0.gmail; Mon, 20 Apr
 2020 10:18:02 -0700 (PDT)
X-Received: by 2002:a9d:6d95:: with SMTP id x21mr6362123otp.224.1587403082537;
        Mon, 20 Apr 2020 10:18:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587403082; cv=none;
        d=google.com; s=arc-20160816;
        b=W9S1qsif/u9/eR/FXAqdN5LaPYcrENnPFPiilrutIEpQukEFojPi6FshAXVG87QJDi
         tjekUb+WejQMbyK8iMRTx/eJCZQ1K43oElkfq6DPaVUAiCWtmsWsuPOVuJNWWgrYHUus
         5d13rlxNnxQ743lgHEP5ACazIMQukbzoRG6NREd8GjXcmxQgSSRZsfvZfYkcmA4OlQwv
         BLOgLJBuR6Kq1czOm7jhiAzcBeb4yB5UAkC8zj0W1lSyTgzCCjnsEOMm+8lQJ+09iTK+
         fK57xenB77INh4X1LfdEIoJld0CYrT5WaEFKh5xlqCx7DxCRBqWBnYiY4k2x96jSoPJ4
         1WeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=iQ1dViAIzAeRKEiF1khh6ZpHRSzC0Ybgxz1h8kR5Xzs=;
        b=GdNBZTC+PleZhWFb/EisviW79RH21/LMlShQZl1SH7dMh/jj2wcXeOP9RPVezSinj1
         wTC7l9Ou5YUUDfSU4KZQ3UaHqeC4eVSnbsRqDREoeb8G8R9X4Dg27+CQn3qUWVNVnJWW
         b3fz15WlLnw2MdQU59svIWAcuMpom4qYi9kOgC2CQ7Qx4dR8BNS0vpzqzpYM0DSCnY/Q
         Er1hZS5Py+ltmDe4uT84xq6L5BBJPQzKwPkR5B7s4MzYDujBgCeRu+TCQWfI6D79KZqt
         VSSbXEqaqna1v3p+IY7WDqy9UrBPboh9wkoisWvpAsLRUmGHMbim/R0J24RjGazqzdYF
         BeLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=n8kgySIF;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s12si6819oth.1.2020.04.20.10.18.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Apr 2020 10:18:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EEDC02145D;
	Mon, 20 Apr 2020 17:17:57 +0000 (UTC)
Date: Mon, 20 Apr 2020 18:17:55 +0100
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
Subject: Re: [PATCH v11 02/12] scs: add accounting
Message-ID: <20200420171753.GD24386@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-3-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200416161245.148813-3-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=n8kgySIF;       spf=pass
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

On Thu, Apr 16, 2020 at 09:12:35AM -0700, Sami Tolvanen wrote:
> This change adds accounting for the memory allocated for shadow stacks.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/base/node.c    |  6 ++++++
>  fs/proc/meminfo.c      |  4 ++++
>  include/linux/mmzone.h |  3 +++
>  kernel/scs.c           | 20 ++++++++++++++++++++
>  mm/page_alloc.c        |  6 ++++++
>  mm/vmstat.c            |  3 +++
>  6 files changed, 42 insertions(+)
> 
> diff --git a/drivers/base/node.c b/drivers/base/node.c
> index 10d7e818e118..502ab5447c8d 100644
> --- a/drivers/base/node.c
> +++ b/drivers/base/node.c
> @@ -415,6 +415,9 @@ static ssize_t node_read_meminfo(struct device *dev,
>  		       "Node %d AnonPages:      %8lu kB\n"
>  		       "Node %d Shmem:          %8lu kB\n"
>  		       "Node %d KernelStack:    %8lu kB\n"
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +		       "Node %d ShadowCallStack:%8lu kB\n"
> +#endif
>  		       "Node %d PageTables:     %8lu kB\n"
>  		       "Node %d NFS_Unstable:   %8lu kB\n"
>  		       "Node %d Bounce:         %8lu kB\n"
> @@ -438,6 +441,9 @@ static ssize_t node_read_meminfo(struct device *dev,
>  		       nid, K(node_page_state(pgdat, NR_ANON_MAPPED)),
>  		       nid, K(i.sharedram),
>  		       nid, sum_zone_node_page_state(nid, NR_KERNEL_STACK_KB),
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +		       nid, sum_zone_node_page_state(nid, NR_KERNEL_SCS_BYTES) / 1024,
> +#endif

Why not just use KB everywhere instead of repeated division by 1024?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200420171753.GD24386%40willie-the-truck.
