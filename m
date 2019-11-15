Return-Path: <clang-built-linux+bncBDV37XP3XYDRBJPHXLXAKGQEIZCXH5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id CC83EFDFDF
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 15:18:13 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id s26sf6164102edi.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 06:18:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573827493; cv=pass;
        d=google.com; s=arc-20160816;
        b=OUPel2Y7lyu0GY+JqGlVibOQ8GvOJFvpERfYo44J2LZjjoSfUF46Y3Wz4iiMzU7JnW
         2ScdtENjuQ59YlCebN+wmy2GecB4ZfhAzsHwvwUKd8YbIDnK70Fs0fbHvQA8CtQKjYn4
         kbePyf+9+C2vfk19QBxtVyKmq4Exl8UA0uDSEr571DLH+QIgaDuqo4SI2WKjzpgW16p3
         gPIDHBntsCZx3uIfdtpa3iCO2diuUeicc66IGdXcMPsfXbXAznwtabVUHGpLPVJPG2Fl
         nhwy+fbFVDEgUixIDX2VCzj7XGT7Beh8qbuYDxMnUkawBDIpY6zy1tqv2LYbAkakSwx/
         nRIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=lJ1DufcHEZmD6HCQuw05H+ZryUgwASIeNni8NRoYWh0=;
        b=IlpvXl1UItoACB/ZccfZTo7UiKhT+KbiSa1+vOyQ8W1YSZtTIXdMZEk1Hwtx3VbRd3
         76OqQh+NNO/ATwU19eKNb9KGuGNisgx5nVtZtdiCA4zvCZi64RhVBPltxt7rfpP1PZJD
         8cn5PS8JHs2P22z4oOGsmBtyOFXNjbb0Rnvz4vP9OWBkbfvyIYqx3CfJvtpt55+6n8sx
         61jEHx9Xqar28q9z2MYSLff/ku6ZoHUvrJAiAHLcvX+Yq3qoylHxbs1XbqQjE9PCLFEL
         2MtTSaNmysERbFPU0dBfLbmTdta1puTL3tl0BZo+XnORl9riZSAsBp5bnSuCQg6vpIDj
         QA+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lJ1DufcHEZmD6HCQuw05H+ZryUgwASIeNni8NRoYWh0=;
        b=Qg203WGoDDBk4117FjOjjk+nAgAC/JOYFHoehhxKmQPKv0vIfUTi2vQiw5a8Hm1Rum
         QYdj+/VdFySPFjDa3vc0k2yBaXzg0VrY9I+tX62wAAp3tYSBFyLRJsfT9k5+zQcdwSZi
         2sazua3hX1hC5KMdeJaQSkXCNowegf5+5NUNs8jdQ4+16nE16t5n5+741AacLgz+rQZo
         4PD15CSHaaIyjnbYp5O44PcheDo/1WVTWHvbMewBtfCv8e6aGyrvKfv2jf+7KQaGAdlK
         HyplIPE1/CWYrM+4n/BFmYKq/q+jcOzmJwb1amg4gihgsN6PjQy0VIjO1Rlltqvebk+t
         Id4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lJ1DufcHEZmD6HCQuw05H+ZryUgwASIeNni8NRoYWh0=;
        b=Z+s1PVY8YcrvJm8buEhiNNF8Dz/qG1UHbZYT3wmE8s+gHMVgX2n0gRpKqKRC7uHH2F
         vkWmE4Qu2Rlz4XhfOPBLtSgiEAg1KdKzisRUknHBniIr/GmblA4elWv8HkYag4Lf/vwp
         yxn6gvT2ACy2ENoe8bg3uzkI+qZHCPryShoQgSxyeSnXtJ4Jlyts9MZoY6nCB9t8URVx
         AK0Icwvw9Fskj1PBRZw4waZc53Ben+jQFy+gJ+soq1bzv7HOIyHnyLD2zxzHEDQWOhEi
         j8a7r/dm4wXwnzVa1xh14uOcAJjaQGCC+yMTkjPhgqRo9IqTaadn0DEHJ8IFMET9ZcQi
         8y+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXl4WRsLAwn+sHyAdHbwGpjRaaJdm8Y8UuvEMzPyFfjVUoMdum0
	T8gK7TQ8vlSxlCLlBBw33SA=
X-Google-Smtp-Source: APXvYqzhhA9GXcMS8bNfsCg5rwTHsTR5scriKi04o/xjXFRNL6hrrxNTSyzngXGhzYm8kgWCkemjoA==
X-Received: by 2002:a17:906:f108:: with SMTP id gv8mr1295085ejb.180.1573827493519;
        Fri, 15 Nov 2019 06:18:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:b245:: with SMTP id ce5ls188065ejb.13.gmail; Fri, 15
 Nov 2019 06:18:12 -0800 (PST)
X-Received: by 2002:a17:906:b7c6:: with SMTP id fy6mr1293909ejb.90.1573827492846;
        Fri, 15 Nov 2019 06:18:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573827492; cv=none;
        d=google.com; s=arc-20160816;
        b=VzQxQECUi0cd114lOyH/qPtncD2hn/QtAP6v/H88HtkTvXpliJrEWUW95nN9LfvfqW
         3WPZt1CwsSpB4Nmpnz51I9fSRRi1ZH3xP9xdptwadbdz5W7qGcaayErCAPw4JfViO4Wx
         VLc82tv7t5PwCxL4xhvzPI5qXaTX6Demu7tx393FvM/i9DFRAnTtKWdWIzFdUdwSaPr8
         uutDcVJSgpyGSAdjFiK5mdFeiTkfw3XiZir0HvUo4om3oUH/hP/XzhsqPooSWGA2jMoU
         q527tqBlNmPie1rxoR5KemzJwaGXR44cN43yRc3LwHjcJ+veg152P8iHIoAb1K+3TnQH
         g2yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Mru6ed0Ud+osgeKbGHn02fYY8df0uyq9joVPVD5Z2hQ=;
        b=HApyi0UO0EhNTzVXP8H+McGp8KpiNkv4CZq28GrC9kglMN1sw3fzIMSaE/spTkZkHe
         JvasmA07fKAWHG44rfCEXhQ1uY8VL4FJ56q6sTK6rEbwRXOt5gTHcnk+/dtEeqMd1Nki
         EsM/XqgrIR47N6wQ/z9oi/g+OowjVk5Q7Qollp/w+JYyUzKKvqiOltIdJ4oCIYO/6kSB
         nrxc/xJAYvIApidfFpG9xrTDZZGv0lCi4ELz26V6xb5HqpVlQHnuSjkgMxd8UC09ttVo
         TOkZXb8nsLQikwMN9xricU74+jJcY2o88/cIBXP+D9pwwG+2AF+wdFAN9p7ACOzOz5E3
         Q3YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id v57si887670edc.3.2019.11.15.06.18.12
        for <clang-built-linux@googlegroups.com>;
        Fri, 15 Nov 2019 06:18:12 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A2B231B;
	Fri, 15 Nov 2019 06:18:12 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E562B3F534;
	Fri, 15 Nov 2019 06:18:09 -0800 (PST)
Date: Fri, 15 Nov 2019 14:18:07 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 08/14] arm64: disable function graph tracing with SCS
Message-ID: <20191115141807.GE41572@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
 <20191105235608.107702-9-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191105235608.107702-9-samitolvanen@google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Tue, Nov 05, 2019 at 03:56:02PM -0800, Sami Tolvanen wrote:
> The graph tracer hooks returns by modifying frame records on the
> (regular) stack, but with SCS the return address is taken from the
> shadow stack, and the value in the frame record has no effect. As we
> don't currently have a mechanism to determine the corresponding slot
> on the shadow stack (and to pass this through the ftrace
> infrastructure), for now let's disable the graph tracer when SCS is
> enabled.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 3f047afb982c..8cda176dad9a 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -148,7 +148,7 @@ config ARM64
>  	select HAVE_FTRACE_MCOUNT_RECORD
>  	select HAVE_FUNCTION_TRACER
>  	select HAVE_FUNCTION_ERROR_INJECTION
> -	select HAVE_FUNCTION_GRAPH_TRACER
> +	select HAVE_FUNCTION_GRAPH_TRACER if !SHADOW_CALL_STACK
>  	select HAVE_GCC_PLUGINS
>  	select HAVE_HW_BREAKPOINT if PERF_EVENTS
>  	select HAVE_IRQ_TIME_ACCOUNTING
> -- 
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191115141807.GE41572%40lakrids.cambridge.arm.com.
