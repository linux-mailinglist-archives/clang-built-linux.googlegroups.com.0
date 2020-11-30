Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBD55SP7AKGQEX22EJ6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 355692C8397
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 12:59:12 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id a13sf15485761ybj.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 03:59:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606737551; cv=pass;
        d=google.com; s=arc-20160816;
        b=qFszqFuonR/dgmKXc2ZpefbwbA0o+bEW58HcdWfTm6jNrtVOy7IizEftYyP5nrppnt
         zbr7QIM3PN8ism0l2v17ZdUZuQfKjU5Clweybrzk55/FIydytl83qvFNbykcmLQ660FF
         ks8r73/mKR45KEVMJEdeZzi3s6hzxJ9HVmKusiLYVRpL4aFLfZEhFFsW+MLE9rnlMPnk
         v9BqKTdZqf8O8XK7WPPQHwmXj/nvhmOPaQrybW57vLpaI/0/wCi+J6iONn9PfDfyJekz
         26LlxLcgO2j+c/cP/VhUredJaFioDZSN6pZzVpmTHnmm8+b9w05LVhooSnfS8s5++dqV
         /OUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=O/awcHlr6dt21SQEkl+TRXOj61SuIcDy6Wqq5YsYyqM=;
        b=upBDkyPB4VGw9DdgOprmo93/flK0Cd52R8hrmmzmXDBJ8KN7WPqG4kRjQ8xzOIBIsn
         8CQUSSPLsTp0q+eWp6aM+k0DSX7bvXgOC9HSYWZtqVFd5KZk1OdrABW+fUMjid89iVQb
         +l5+1cmbM1JZm2tvysHlj1n3QviZSr2IaW9lgKNJj8Ut8AyRl1ShDeLoy2AvVsbSNpYP
         jQq5FytJs3/k4M1+v7d8/x7gh02Ic0aHnaJ/Pmdmc7olRMP+wyQh6lsZ81nmPSVqw4cU
         UlSkXLkkVsbbDSfdn1ihxRx+k/bIsieRX+MV3Y7e2c66iTR1ES94WwHZ1KzR9cYXDSPa
         030A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="XbGPLq/G";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O/awcHlr6dt21SQEkl+TRXOj61SuIcDy6Wqq5YsYyqM=;
        b=hqgmUlNx06kxH3RusMVpSDy8XWLM9eAplRuFeu/LL2uKbFlKeWFhHUMAeLGWd3fH4U
         1s8+LOiUAfiZbaguyTQBIWA2o3b5gYcCu2x0ftl7Oyw3vfPoHppIJTNYVdJl/H2FYx7O
         F4JICJQcBcOnTlq/5PUAYGTZIy8WLo+zLsxWsKl8im4tmRlVf7DzgBSOh9q4jUkOlPCH
         sn72seZr0zvfDs55A0ewtHT7AojlfBjBWPQzxXPGAqBLMrTHtwH6ffU4a0MvVK6dZH6O
         lStcTucdZ8SVIuZaArvm/TQpV5lhytKO3TuWOlz73kKocZ9P5KfYKBlV/MYem3NtuQPc
         LqpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O/awcHlr6dt21SQEkl+TRXOj61SuIcDy6Wqq5YsYyqM=;
        b=NCtlexNOyJHSd1y6m552v5cmobWt5zag8SaK3M16yxwECukjxusr+72M0JsLQEXGQ+
         k+kWV51zCR91afVkh6G3lDARpk+JD7is33FKXZEtfUEz8Wcn9lF//aIy/tc2s+6KJoX2
         MkIPC2eUKaSQD5oMl8pflP0+P67q7xrEAarX4nYtfGcxtRka7pdI2g1gwWb/ZSSAcL1b
         Dc6YeqlxNcfdCP0mBQHD1p3RZzg7mmo4+GIHdUKHjERuIotB4ysD0yEg6Bn8NfvDEkAk
         5Vl/wKqKIGf/Vrh4bRxj4Al2DiFT53oRSdVWpFps1vrOFMh2frdMbz98j3Q+vfhiz5Tj
         gE6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/o+q+0zvzyDSPPxVOo2Dat9FmnAuE5wHe4Ykhe2Y4UJ3q/sKm
	vPzejwC+o0ovjvACquncDuA=
X-Google-Smtp-Source: ABdhPJxBn4F8DWYIj172bOnXZ+B50PdImgt0zGQBJ6Kz+0IWR0MPv7WyL0fcPdH18811G98r98XADA==
X-Received: by 2002:a25:d2c5:: with SMTP id j188mr27187064ybg.485.1606737551271;
        Mon, 30 Nov 2020 03:59:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:344b:: with SMTP id b72ls5572512yba.1.gmail; Mon, 30 Nov
 2020 03:59:10 -0800 (PST)
X-Received: by 2002:a25:dc8d:: with SMTP id y135mr16609960ybe.175.1606737550934;
        Mon, 30 Nov 2020 03:59:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606737550; cv=none;
        d=google.com; s=arc-20160816;
        b=ZhlXHYt8EOvPzOIGs1F52ct3CIDg6CWFORPFY03zmZqosq/+RogUcgtK9H6HjZQViu
         b9JUgLWCLuQ/3kzonQKsjiANCcZaoc/zMptst9G7NlaiYkdYbWresUjc/en0v79+Ccn+
         8Qpggq7On1cS6/WUbhyTh0HGd0vZ/XFQbUnA2DZpOVwPASdxoAvYZvm2p9YX3iRNQ62X
         5ohDSbwP8EqWXm6Ee7MZQ6na+TRIzW0oAO9/HAr3E7hbuCJfvmZg2d1vhz1bSnXdqZfd
         VKmGhExICPMu7GMsNSbgd3+xxu/+HPekQRdAv3SclZTfDKSUHLzRAfgkZgNjt29wWqkM
         mGTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hxtkXbr0g+dT0LfMHfb5ox8uWdYh+0Bde9KSCO4jyFc=;
        b=TMLWcZy6mgGnGK45P0kqgq1Gxt6b6GO7EqB9kQ4N7s65yfOpJdgDe0QetpOB9ODkQp
         AuUJ3Ethnxnck3HYlykt36uO5ym6WXCiclP09tyWOZURjoVtDpAaHRP/T7LbNao+ZicZ
         1q/9lhyT2TDevzGI11rsmJsCrUFvm8fPqMS4XgbW++ZDCOb+iFSLNnL1Q+k7plJLg+bs
         fRvsEUcMm19/kClt+A0Lp/6kQkdN7mAxhvNX9QcAGkndUsSiQ/hcEfgBXfjeQn8FJso8
         6yrazoOwrDyzgdSGaOvqs+DottOm8Xp0t4RE2tc6BbFCn2MzDQXLT0fognRoGs3mJNcC
         zmrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="XbGPLq/G";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 199si832064ybd.5.2020.11.30.03.59.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 03:59:10 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D62772073C;
	Mon, 30 Nov 2020 11:59:06 +0000 (UTC)
Date: Mon, 30 Nov 2020 11:59:03 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v7 16/17] arm64: disable recordmcount with
 DYNAMIC_FTRACE_WITH_REGS
Message-ID: <20201130115902.GD24563@willie-the-truck>
References: <20201118220731.925424-1-samitolvanen@google.com>
 <20201118220731.925424-17-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201118220731.925424-17-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="XbGPLq/G";       spf=pass
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

On Wed, Nov 18, 2020 at 02:07:30PM -0800, Sami Tolvanen wrote:
> DYNAMIC_FTRACE_WITH_REGS uses -fpatchable-function-entry, which makes
> running recordmcount unnecessary as there are no mcount calls in object
> files, and __mcount_loc doesn't need to be generated.
> 
> While there's normally no harm in running recordmcount even when it's
> not strictly needed, this won't work with LTO as we have LLVM bitcode
> instead of ELF objects.
> 
> This change selects FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY, which
> disables recordmcount when patchable function entries are used instead.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 1515f6f153a0..c7f07978f5b6 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -158,6 +158,8 @@ config ARM64
>  	select HAVE_DYNAMIC_FTRACE
>  	select HAVE_DYNAMIC_FTRACE_WITH_REGS \
>  		if $(cc-option,-fpatchable-function-entry=2)
> +	select FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY \
> +		if DYNAMIC_FTRACE_WITH_REGS

I don't really understand why this is in the arch header file, rather
than have the core code check for "fpatchable-function-entry=2" and expose
a CC_HAS_PATCHABLE_FUNCTION_ENTRY, but in the interest of making some
progress on this series:

Acked-by: Will Deacon <will@kernel.org>

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201130115902.GD24563%40willie-the-truck.
