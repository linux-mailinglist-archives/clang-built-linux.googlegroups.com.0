Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBYUFQL2QKGQE4IB7E2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E88A1B4C16
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 19:46:12 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id m7sf1923449ooa.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 10:46:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587577570; cv=pass;
        d=google.com; s=arc-20160816;
        b=F6kN0fgLOUIaZ1OofKMFwf1Bglug7/knbj5eN8Y5AmZWtDf6UG3DjmrtRQhAso2NcS
         iAnCSHllM9dP3dvOIf+0FXWERzeOgEri9dQeEhT/q/DWQgx82fqxXwVIlFNx8gLPwGb1
         PFfApAwbjeDskF3x6iaQXJh+LGrPLiB9aYoZq4ErqTjK0LAtvn+JhBTQd57wv8rMluBx
         XtEOsDVZQPgtgcrq7nuYJJOMfCmNJEdqVZU0Zql73sCjTc8vV4dhYNo0F2WDF8x7totm
         PmEULjZvsrJf0KVSOBOBDbr4qNEcQndMpMKYr7/i1kmtkw9mSEm7SAGsrqOIYPcTnPmF
         Ep9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=w01dRx+g0rAVDxUZced8E1rlc+fuv+1zbX0eYJaV7MA=;
        b=0BVbqErynmpetzbFJw1o8TcT30ehbEuTNh1Rm8D6Gg8HFL50SKZOi23kCe2hIuDRBp
         F/lR6Si8un+/ro3eKVWgTKi1U8m+VFEvAdizyMsJwGdjpf9kJz6PpJYgUw8+FjH+ev0z
         kKhCiuSHoxpWTha28nmVmkSgwy8yM3JeI7zyGjt/LcdQsMnBWUobBC+Q6fxq+PSuZMcu
         EJZAiRo66gV+O6hgs68OAObiBSB5qoafRfdRkyYgeoIg7xWyfr1MCdFnWXCdzbOBn12K
         xAaeYplLAYRLQ2TtVDtcXx224+2cgMzRSPUVmBHiGAlARH+e6/2acmP/vuFzRkYWDXyM
         rFOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xeCqLIAI;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w01dRx+g0rAVDxUZced8E1rlc+fuv+1zbX0eYJaV7MA=;
        b=p96pUkuyz2ltaI7V3vsYaAO826mRVGGi0imPDVgJPKWMTyK+26pungqBBnPqf1h3UG
         dRdbbbncnPN7lYB7jVRcD9hFcqPNn4TExfGcjwe3MoGqiwpPvc1I3EwJL6C41SFO/AtJ
         aaNk8p63HmrBYlpnGKl1m3nJkRE9y7RkRkxKRwDyX41PqRbGreujaxrS9tbkmrODpnQS
         0E0TDk+hVJFsURjbzbJl/CSXDzPDQ2zdUn3Vo/tFGe4bq5hXPJMdHpxnZPNfQl/8UiiI
         cStTegsJlFsqzHguOb8kVrxYerVBjWI8hXg0hxvco1JmvAs+sFxiz5vxYEtmp0IeEIqD
         g/Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=w01dRx+g0rAVDxUZced8E1rlc+fuv+1zbX0eYJaV7MA=;
        b=rgDsNCsg89dTOw3ClL36IjnF5AwxnGW5D7oIJiB8MYvMnjPgOzdqzKZtl323p87GiJ
         ImJgYrPNpT8ufS7+00jm9OCAcqwxozaJv+8b0JiTqrdxmkxhHh5yfzmAZpSPDmgGOHRp
         sdLVHK0W5qAjILuTkPloRtzDdH856O8xKVnm4ZQl39OJ0glI0FeE954v5mPPHasfHLwy
         62oL/ewqqJsJchzpshpZC9Q6+Gt2NsBbnWrnaXz674QUHThg5iIrxO2ESa0oxvUcD/t3
         FpW7lLutsbL14R6woSyTpMcl/irAc+okj0KqXh9zixJpJSY+phl218W8GQVfCkqQ0/qv
         H+iw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubuDMv+bj4fYzqIfDIpnUOu86urjEjveNhv7esIO1dwb927WSXj
	hlvGkTjkFP5/3hiSjiUCKSI=
X-Google-Smtp-Source: APiQypKTSo8CBKEJBTGT11sEPmBtvTTCSzzy79EYGNkiWtXelI5yCENvshZST0U6IIDXMduSFfYeKg==
X-Received: by 2002:a9d:5c18:: with SMTP id o24mr172390otk.362.1587577570745;
        Wed, 22 Apr 2020 10:46:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c648:: with SMTP id w69ls263997oif.7.gmail; Wed, 22 Apr
 2020 10:46:10 -0700 (PDT)
X-Received: by 2002:aca:ba86:: with SMTP id k128mr91165oif.60.1587577570376;
        Wed, 22 Apr 2020 10:46:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587577570; cv=none;
        d=google.com; s=arc-20160816;
        b=Dc41wzm9IMuzFeNnrLq4LYxh4KzlXw0lLfikgcOWPgWlJYEowQXQbnEb1NGHLVt2/b
         p+P/WQa0+j4UqB/orCkO8+DfXylQnRnNY604tj9AzjdJRqt3Cu3Z1y6ff5M/SsyzUjMa
         p1VT/Z+O/bjUWHl23bQrR1O7fypcaAmeSCeySKdl48/ReU7mOvRY0vRKs4j+9jNX1mNQ
         vFe3u4bDZRF7vNYdk+pfil9Z4nnl82/chqxlhI2q0f/QjftO1PE8SWOZlvQ/2JnJYevG
         joSrbTexa1fZ+gB9PDItamuQfIJtryse0CqtDwDxw66xS4wudrl/K4oy0JkR2JuHkTws
         xdTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=syCDaaxXbcOIp/TBr6Bxm8Jc/e+FlpqtJgdoj6tiTYE=;
        b=t7aiMU11pIqnjaAHjrwI7LgOaNG00wLOhDeX1QtuPeckXKSTTb5w7q2qnqoM192EMM
         uosh2FcJa92LOivbarzqCgSgixAcrbFIQMrjQygFsWLbGpfpHtSM4Aqlb/UIPmzRwY+u
         kaLKdDM6u0y9jAvBQ1hbwnCSyB0W80GAtRl6JZNzmZ3Osb3vHi8C6ZLNN6ITl6cpi+YS
         Mc1zVSD/n565iiNMqyqHOCqeqiUwSJEeYtjpeWGNVLQ+NmWlLig6yrzotLiCXUHIKX6e
         vUhnqQo94XWMfKKFbmmBaFhPSYCEHL0RSHT5/r5XfrO/h/+5VbZFv+Z3XmkZ2eJWe+C9
         1P0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xeCqLIAI;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f7si11573oti.0.2020.04.22.10.46.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Apr 2020 10:46:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C61B420882;
	Wed, 22 Apr 2020 17:46:05 +0000 (UTC)
Date: Wed, 22 Apr 2020 18:46:02 +0100
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
Subject: Re: [PATCH v12 03/12] scs: add support for stack usage debugging
Message-ID: <20200422174602.GB3121@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200421021453.198187-1-samitolvanen@google.com>
 <20200421021453.198187-4-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200421021453.198187-4-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xeCqLIAI;       spf=pass
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

On Mon, Apr 20, 2020 at 07:14:44PM -0700, Sami Tolvanen wrote:
> Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks. When enabled,
> also prints out the highest shadow stack usage per process.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  kernel/scs.c | 38 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
> 
> diff --git a/kernel/scs.c b/kernel/scs.c
> index 7eea2d97bd2d..147917e31adf 100644
> --- a/kernel/scs.c
> +++ b/kernel/scs.c
> @@ -68,6 +68,43 @@ int scs_prepare(struct task_struct *tsk, int node)
>  	return 0;
>  }
>  
> +#ifdef CONFIG_DEBUG_STACK_USAGE
> +static unsigned long __scs_used(struct task_struct *tsk)
> +{
> +	unsigned long *p = __scs_base(tsk);
> +	unsigned long *end = __scs_magic(p);
> +	unsigned long s = (unsigned long)p;
> +
> +	while (p < end && READ_ONCE_NOCHECK(*p))
> +		p++;
> +
> +	return (unsigned long)p - s;
> +}
> +
> +static void scs_check_usage(struct task_struct *tsk)
> +{
> +	static unsigned long highest;
> +	unsigned long used = __scs_used(tsk);
> +	unsigned long prev;
> +	unsigned long curr = highest;
> +
> +	while (used > curr) {
> +		prev = cmpxchg(&highest, curr, used);

I think this can be cmpxchg_relaxed(), since we don't care about ordering
here afaict.

With that:

Acked-by: Will Deacon <will@kernel.org>

Cheers,

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200422174602.GB3121%40willie-the-truck.
