Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBS6253WQKGQE3JG2I7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 81853EBC9C
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 04:58:04 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id b2sf6402711iod.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 20:58:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572580683; cv=pass;
        d=google.com; s=arc-20160816;
        b=F5zIsjur/+M7y/p8qNBahnb2Y3RJUN8RlxdTexLION+sKGNNuvrMZXFE4DPIQ8iT0c
         GTDyBq1ADScvT1HRloLnLWmbNcQVZPEPvNVPBqpkdvtW1qrP48a5udlrhTfTgeb/xBy0
         oFePD37St4UW7nVWAMDvgCFw7uoqd2gCckYL32NABGH9B3XiPEsepuZtrwI/lphSbkz9
         2iAzEaAMSMd8Z1N4Z2MD3T2rCR1W+T5dIp6aV7nZWvN6jI4+oxULrsSUYnk5tnlJ1h3l
         3nrlKiRwRjET0ywgc/L7bo82+JlStF6gIwWHgEODy4Oq9bC5f03xc43h4nlhVxRLwh+G
         sKbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yYeKRMgXm02s0sMfNgNWMJRIgn6T/ytm07kBPFwrmWM=;
        b=rBEKhLKdod1faZvp43dwRvY7XX2cBUXEFBxyhH/l/SwTFFxnKwcFADf7JSSVMyoizt
         dzHXeSAXU+ZbQJgulsttddqS8vsBMACTYz3ti9K9CXn2xVX8O2QgA0c4RulpIUdi5RM5
         xVQYi4be8mOAkjDBLFrtKFFd6EcgdQswyOzDraUQM0Q/dVnApu76S8j2tRZNxU8R98Nk
         Gj9i0RNJkU0xafkDLK4RTlguviyfTRum9aiWR6NuL4Zp4f9j66Uru4VFUj6VXJD3f1FS
         Xz/YM6ST6B4HeipDTrQEZJ9FQkvRvpx8ohPeA6TDpJcACuRf6jUoK3rncCvWUL3ySEZq
         wrbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=g7eFmtja;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yYeKRMgXm02s0sMfNgNWMJRIgn6T/ytm07kBPFwrmWM=;
        b=iBoPTzzeYphkQjJWONt0z+u7KnWr+GgZy7Hbc1uiWLLjlMjjYsLQfhSoVLtaW7VaQk
         TFM1zGEK0BblSMgkU0IMqaW0+a5Lyq9z/RClcj/+dz813F3rz29BUHZ495c/ddK8VBKq
         pD9k0yNE3WGknaoN/ALzTSLoWnhWxYTt3R8TGUWlTkrY3gOimo7weOFEmnxCP3Gq4RSR
         Jwo/shV8Vwfu61ajWtLGUhE94irIG2guBO/QZkEfoivSTJpk4KG9o/+/IAVNDseCYGIU
         QqjNtju8Pf9QXG1Vxj/k1B7oTdJ3WybhOPWnEOg2ltkQ7LzbekfjG7Vye0XEdAYVOAvL
         GflA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yYeKRMgXm02s0sMfNgNWMJRIgn6T/ytm07kBPFwrmWM=;
        b=rQIJ0QO938VXEnlIkPzMvYgZxiCPXda7KOqYLNk1elH3swNOK2FQYCAe+EoeGcFclx
         IF9H3eC8mfb597SHIEvFCbaSvGJIpSeT2i1kF2LNiQ2B1GiBHQOfDMob/prfcbFkrnUe
         jUJKMagZ3AAAGUPjiM7nataS5pBRHccsZiVP0LH5MGyvmcYvvVLbpnWyIHMamVZlgf6h
         uzYqLxIJnOCPDO4Wy/iWy8FgXCjPpeyzBHBnGQa4uzv9ItpBh+9M9YKNlAC4LBej2LJl
         /zSo8n1hy2Z545Ql3HDmlIaFl0MpZmDmqp0lvjfJ1E6gWTmVDYxxS3sjj/Lydchk4p+Y
         TM/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVTEXCW8Grfa5vojfHLot64GbZlsBkmsHTf6nzBBRTzd8/gQh1k
	JmmIOuE0Cvknagfjk/7XQPs=
X-Google-Smtp-Source: APXvYqwaV4uE5t/8tHHaFnpdYlNaakigiibl8yz0JY7Z7ZpUY+4W66UziXRZwX9B1ygpMxG3gObymw==
X-Received: by 2002:a92:d3d2:: with SMTP id c18mr6026007ilh.19.1572580683491;
        Thu, 31 Oct 2019 20:58:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d204:: with SMTP id y4ls1052108ily.11.gmail; Thu, 31 Oct
 2019 20:58:03 -0700 (PDT)
X-Received: by 2002:a92:190b:: with SMTP id 11mr10724132ilz.39.1572580683226;
        Thu, 31 Oct 2019 20:58:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572580683; cv=none;
        d=google.com; s=arc-20160816;
        b=UIabFAlQK3B8HZwazLkXAE9UyqzSuyB17xMYES2+OYChEdRf3gDOpqkieLHiFTcNJY
         9HqitUdoMC7HnA4WFZELa3WxFvWFiF9QpNyXhrBwt4gp4zj6saANt7dodxJ1/ihVlzMg
         UZparbb9kf1J2uK1Gr2IyS4rcqcV4dfoQxfFCBt0MlxqPTEYuFWjD1xG1V4Z1+x1hZuq
         3qZU6P2kLWeYET02w9jn7kIvwGNWOSgT/aBT3M/D4790i9stkVay4MDkbMrOR4TwMyJi
         eYaB4tWoPAN2cvdOSjF9CpqIS2yfXDjeOX8BKtZMfjtMFpm2i+3R6ITqAxQyGFdHk8Wh
         8rXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KTD68U7akKeCQJeQQO/3NWtyqqeAW/3/QV3ZglVyD2U=;
        b=SfJUXJcof7OUy3q9ByJxHRJE/lTR8FH9J6+gGpBFbnfPJhjEpemhdVfGOwK5Regw9I
         8X48Efzc+AxJWjsOc2emWQ2d3d4aPLreFlTbWEqAnt16/0kdwihykAxha99koXOj+j0e
         RfeZHfbl/8YMiYADZoc2QbCgg8p1Q1e2d7Mdx5VBDBPeCrp2Qpuz5TQvL3nhBAvKltku
         QI6l1huAPnNYRrZcv6D/dKL+H+oC3nFy3NmdZzAMMtZ9n7DtrUHadTuFv4OLVQvQHfj6
         J0XWO95w21ZYyYsEDlubqYcACHYlE30ScnylQmtTNzNNyx7H1Chhgng7/+bqoa79ENe6
         NHaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=g7eFmtja;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id t64si386726ill.0.2019.10.31.20.58.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 20:58:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id u9so6096263pfn.4
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 20:58:03 -0700 (PDT)
X-Received: by 2002:a17:90a:d149:: with SMTP id t9mr12088130pjw.108.1572580682690;
        Thu, 31 Oct 2019 20:58:02 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y2sm4973514pfe.126.2019.10.31.20.58.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 20:58:01 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:58:00 -0700
From: Kees Cook <keescook@chromium.org>
To: samitolvanen@google.com
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 11/17] arm64: disable function graph tracing with SCS
Message-ID: <201910312056.E3315F0F@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-12-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-12-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=g7eFmtja;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Oct 31, 2019 at 09:46:31AM -0700, samitolvanen@google.com wrote:
> With CONFIG_FUNCTION_GRAPH_TRACER, function return addresses are
> modified in ftrace_graph_caller and prepare_ftrace_return to redirect
> control flow to ftrace_return_to_handler. This is incompatible with
> SCS.

IIRC, the argument was to disable these on a per-arch basis instead of
doing it as a "depends on !SHADOW_CALL_STACK" in the top-level function
graph tracer Kconfig? (I'm just thinking ahead to doing this again for
other architectures, though, I guess, there is much more work than just
that for, say, x86.)

Regardless:

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees


> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index e7b57a8a5531..42867174920f 100644
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
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910312056.E3315F0F%40keescook.
