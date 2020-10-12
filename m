Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBYVISD6AKGQEW4NISMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id AA49028B04A
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 10:31:31 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id s14sf3896364vsi.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 01:31:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602491490; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dab6N9ncW6aUS+ZZUp7Nu82cERcd++5qx7oJjFGkl6riR5OPbvipExIRl69lneUp/P
         tqXQcIYRl3696JYLU/X+ALYws2P24NK7KGZfaIShKHSZ6Z/f50wMXOpNjKn2M7XYdK5p
         Ja1ae6dySowNLf/8Gwmo3peLnStTZ5cFf7K48/+XyKV82nIl6hEYfXiOtd2S+PF4sAk9
         ZVmdGOr+lDmU7gqI4wKnxZ7rrkRAQY4cBwLkxJD0Vj2R5nXfDVIR3CCNzkCQgTktHcSS
         FUB0nhoO2Wm1KVucoReLaS9EWJLO7pL4F6pw70OMNeE0VdZvxcRobVlL5KJeMosLBOV/
         bRoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=9u868PBmDIrkgWp9r8gNjSWzgR5sXbb0dqPYBKEQvgA=;
        b=RFHxemLYGQZbN47VrTQBRAKKw5R0CJM9+QdVi0lnLukqIDjn75746yggYZXD1FrqVv
         hcevJpaWWkYZQj+RpDDJsGr0Fg2lk9v4cE39+J922pwerOlvdFTLoar8JzamzyofcKeh
         vVq/YdqeL8bMCFdO+HsUDOyWtbnwEC3bxOS/x3TmhajjY/Y7qI2spwdjndx/VY6AZPf2
         AnQNYAA7ZOZVNlRLbBiTNybKNaGz1lUWh0oYl8kZw92ZFFNxEzO3Ee+EIWWYWlHBhFos
         VgUHdhQVKeLELcj+nVcpthcJ4sHdNG68uM6wGlH1B5F0GhVV2YkyVb22nV/PXKI/eQS+
         mOlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FAGXtskD;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9u868PBmDIrkgWp9r8gNjSWzgR5sXbb0dqPYBKEQvgA=;
        b=HfZja7aJO+FaGlhkOoE4Moks67hfs4IttwJyafVCqH4XN+NGnm8PaJ1VhBcLavT0iF
         0H0Jac3jNCmIdx3JgWAnDehUQwo99hAO9ej1UFT2zsVPiGbKsgxlFm+ZsSHIU4/FDpxS
         q6bvfJzoH5W+VSHq7XsviJiClFQoISUTqqqYA8TfA4p/ip7xyh6dgBjOnOESKWpCLV1k
         bxMX2WvPzl9VL7C/24UVkmeSCxktIlova83KJi7N58XfQEOSMipQb8Xq/cfKM2et8GEn
         OdTBymsCzjbbW6rCdjyrJGgTYCBF/bs6mrBpIt3yes9usRIo12inDPPETXzw2am32mPW
         fZIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9u868PBmDIrkgWp9r8gNjSWzgR5sXbb0dqPYBKEQvgA=;
        b=IlZD1Vr3p5+I59mDOkDs7dJ3tKjbT6bikU38IM9cfjn8DRimF9pIU3DwheXy3llYcs
         IEjW5RuhBNp3rCv4mD8uoUIrfOOY/2785TYti3NNv+7xqDfndHqkBvZ1UeubuzIeevS7
         /edIruFD8Lb/tzbac6V8t7ELnW+tl+temgYFXUhs5TtR9TNVKQ3AG2OPSx25/O2A1nmI
         OT+6yBlX4WLVsJ1p31wA5BjpI3CixQXzzWEbQX7iNXnieE0czqbrxdKuaf7O6+Mq2bub
         aPAsdThpuHB8Icc0dZAfolKnzUHj25HuECGjkpfNgtAI2wRvtbm676X74/7CQPF1abWC
         h1Pw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533jPQYCfpHJZNzmIhmdKTtIoc3cEOE9visIrRJD5ImOflP+8M9p
	NVuM4Ln4zZ07+rm4of8072g=
X-Google-Smtp-Source: ABdhPJxSvslNpSyTSQEaJjJ1R7heY6Anfwvkwp0ye3wWd5Ee566S3FjFioY9NFKDSaI+SZJKG3i+Fw==
X-Received: by 2002:ab0:39d1:: with SMTP id g17mr13448563uaw.34.1602491490325;
        Mon, 12 Oct 2020 01:31:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:874b:: with SMTP id j72ls1782823vsd.9.gmail; Mon, 12 Oct
 2020 01:31:29 -0700 (PDT)
X-Received: by 2002:a67:fac4:: with SMTP id g4mr13461353vsq.9.1602491489832;
        Mon, 12 Oct 2020 01:31:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602491489; cv=none;
        d=google.com; s=arc-20160816;
        b=a7bPoTJ53ueeMNwsHf8br/iEM3k46Bli8A+dklzvz4SSdCq/iOO7/hbFwUaq56P2e3
         CLYajzl2CdDc3n8qHZ9WENq+zaYAKpbN3ElA26jU1n/u6zPMCXZs0EiuSC2wNDp9LH+9
         xFR4EPrQXproxBndnaAcSl93VQk45lJ77OEzh8B1C8BHhJ7Y2yWN9Tjk7h4zWQ4Yl1ut
         9/7no2jQxo1mRLJokUICo1wy6rSzsHtHImey7gRvgTU0t0XhvkbugYuTxvh4+pDU2Pke
         O/6Q4FTMVnLSQp7g8MfmcmunR6LO9cQEhDVryNrxOjSWsZnYujTff6Xrruc6xNZGN8J+
         Y3Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+wYAjxyHz6ETFWyAJBcVkg/5xe7eVnERRRwZDLAPyX4=;
        b=Hcj/PpKdIKKGOmUSu5PyG2E/kxjepMZHy5/g4qKHG6a9I1z0AvCBk65rqTsPrKx3dn
         jZLc3Z21vVYwDWrrs9xVihLGj2+WTm/q8uMxsgqA6OW3JHy3amWbrePxnJ/llMZf4xkI
         6/y1qNzKf8Vb4U+Tp4vqnLI2y4yIgZu57U0IwAaOIvvGE6MOdmK7QSQ3irkMVF24sw3n
         CBu05wvRPG5qcHBpzITfp9Tb1uK4OBAseKlf6gxMsxvN4v8qwxxzrma6vPGolBhiR9ZE
         yOqSMIbbyIIPNskYroVYbbxO76W36gwv0SEwyAu94QX4FqwWClllYvtFHsQdChCJZkYI
         4KPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FAGXtskD;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s3si55838uap.0.2020.10.12.01.31.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2020 01:31:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (unknown [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E228120714;
	Mon, 12 Oct 2020 08:31:24 +0000 (UTC)
Date: Mon, 12 Oct 2020 09:31:16 +0100
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v5 25/29] arm64: allow LTO_CLANG and THINLTO to be
 selected
Message-ID: <20201012083116.GA785@willie-the-truck>
References: <20201009161338.657380-1-samitolvanen@google.com>
 <20201009161338.657380-26-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201009161338.657380-26-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=FAGXtskD;       spf=pass
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

On Fri, Oct 09, 2020 at 09:13:34AM -0700, Sami Tolvanen wrote:
> Allow CONFIG_LTO_CLANG and CONFIG_THINLTO to be enabled.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index ad522b021f35..7016d193864f 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -72,6 +72,8 @@ config ARM64
>  	select ARCH_USE_SYM_ANNOTATIONS
>  	select ARCH_SUPPORTS_MEMORY_FAILURE
>  	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
> +	select ARCH_SUPPORTS_LTO_CLANG
> +	select ARCH_SUPPORTS_THINLTO

Please don't enable this for arm64 until we have the dependency stuff sorted
out. I posted patches [1] for this before, but I think they should be part
of this series as they don't make sense on their own.

Will

[1] https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=rwonce/read-barrier-depends

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201012083116.GA785%40willie-the-truck.
