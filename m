Return-Path: <clang-built-linux+bncBDV37XP3XYDRB55MZPWQKGQETWFIOVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E84E4920
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 13:03:20 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id 62sf255927ljj.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 04:03:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572001400; cv=pass;
        d=google.com; s=arc-20160816;
        b=gMK9wFptN722ww2XYqEijdR4f+X2l9l5GhrxfFbmMtM3V8e5LartVrUkZaNflW6gqc
         CHHRAw3soxmpfvLSiu5BiCZWhZ54bySe2QpYOfNEGK7XWgBOeYwVwwrU9TBz9HgdX0FY
         xOdyRCv4A3gaG4Fz+mcjtmgkIm7QIoZGS+iYYcG+E6uB6mgsqVCnEZLbCRusZQNRr7Pj
         Y3jEGxHpEtjm1lPI8RQEOywy1WtIveBnHziuk/I/kDnkHlNyI5fSXP1XpyEHpWTFIklh
         rhZbTtKdzd0IX5TaZiFRc7sD7lAbzTT4sCLpJMpJF3EHfgBb1rst527bxOaQhRLTd9IL
         LrtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=JDZ5XGHenUcy5q/AeNRP6pd4l66ssw0kOmbPRbBimyg=;
        b=FGo4lF5Ru7m0bwA36gbr/FTlgj1K9zat+hlgeGZeaft8+nEasslYqQz68svm+mR8X6
         D5634Fckm2DZXqSA39PqUCLyLpb21QlRBI/odoUHHel/E4NGAtFoCCx+aqHhY+WEwxnF
         kvbSaktLmmsJmDhA2PyOiftRcwRLBDg6Z5v25mBLX5LAkt29QyyQYwn5NoJjt0xQqI2J
         6iAr5r6mGTTAFXi+RBoViO9MpSfQUoJiMjhZW+mGKSQkECRhXnb2KqzFuP4v86aUii1S
         XSMBjAuUPggen/nSamF0smnbddYoNqDltMKnaaIz8lnf5zMmwW3ocDAtffZiuZ5bE21D
         fMRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JDZ5XGHenUcy5q/AeNRP6pd4l66ssw0kOmbPRbBimyg=;
        b=eS/OMiu9ZOF+2jIdJzGB6wAlvVea48YjEpMjaS2l96egnfmmerSJYWx4bzmsRb4BjP
         7wNphRpqXhCT63xz1fjkAOtZ/tHroOmtzDidrPbMmaf8LuOaj8PcVrPdWBupLWFMshv6
         OZDD3TwOhx/+5DEdMqy6eoOjcvLlOehqgwuN0liKg3jEY5CLRfSyXnlZmLiuzkVarNQn
         c0U6xCFXyXFVkLxH1+1Xh69CCeReJ78L1NnkajyGFIEepeRJuqyjE1ahfNU52wB0NfFz
         uZpT/ncs6J3+fwhIUi22Jq44XRF49z/McCYrsO7dj67uIMj/9sl29Y8a6mMCXtesGAyw
         tHdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JDZ5XGHenUcy5q/AeNRP6pd4l66ssw0kOmbPRbBimyg=;
        b=d9jyB1XYfKTjs57Rz+gnd9iHbQ/e6FTATILnGbiEYYJX01szMZ7FPXmX/ifC3FEI7/
         1ttvsrtQ5vkzgVUV2RWrEHqUkvPWji4cQr75i7awiVkf1s1ve4ivUZRs9wrXi7Z9BvOZ
         WWt/zOXV544jtClbUIEMd1dpTtEE2kjK+83q96lcJfDlhc2HnK5n3ELRcq3sHCAjyVEI
         RtfHk4bYJItggHOwb52BchP4B5dAHWyoOWWCM1oSyWmkgZnE+KhrQbtLIgyRSnDSJuLX
         Vp6eWfLINPkHGy5VgcsFtiv7srizLvYyQJoi3r04Qj84rP4x5l9sc88ZLMLj7xcvVFbr
         y5gQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW4fbrZfXmYBozxaW5/wwpoRYuQigra/WnKar4Kjeu6ahuasq7q
	z7bB+qkptdJF6t4QuCXaqiY=
X-Google-Smtp-Source: APXvYqxO+9cgZTL9w9IMpwWUJ58/lKU08oCsFbDwFdtKoi8XdwWYL7I9GhbndenCsEhLmCaYVzcRzQ==
X-Received: by 2002:a05:6512:40e:: with SMTP id u14mr2313905lfk.73.1572001399944;
        Fri, 25 Oct 2019 04:03:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8806:: with SMTP id x6ls1183807ljh.11.gmail; Fri, 25 Oct
 2019 04:03:19 -0700 (PDT)
X-Received: by 2002:a2e:b17b:: with SMTP id a27mr2015031ljm.7.1572001399303;
        Fri, 25 Oct 2019 04:03:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572001399; cv=none;
        d=google.com; s=arc-20160816;
        b=g56myj2YjlJVpKfSk/eO5ygc1eVcTV5Y2giHYVbXIvzr96hWXF0MuCfdzn2q4lC4NZ
         D3G3Uyq2EQCxdI/OZAw+ezDc8+omYXhkbs2hRgFfVtyaX661JR2p8wrNAYAWG9N/3dH1
         07dwoNRtCv8RFz6FQhhE+nVgzpQeoe1Xd3RJ0ISTtH+rY/QV5HfnStuae309V9r5yc9q
         S7zo4DdQqdeWPrHE+vJ96pxeHi1lVRBP89L41DevjBHLWILfEU1N/fNgTQGoteBv2drD
         SdNteR2WXBNsAGB3vWHzzIQsMiSe/H+SL6YHfXHavTTV1kv2K6NDP9jHyt9gUohxiVAv
         iPXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=sXvBK/DxujYa5hNQB9NdA4NdQf1Nf+jfc7q90aVQWtE=;
        b=D2JcVWQKIT0kledFmyAiMLAs7Noz9OLDZ0biss1woxsMGk7rdXjjl0ee4a1AKXfDQS
         OWAgLOPR5QlJQ2v2hQh+ShRSYDf/M87TxrQ/UvuKbmMUakr2+BTVnPw2WDkeh9A2cgBR
         Y5i2Q03LgdoKmtRETx1lYhsA+1+5n346DAE6QqcGhBPSVOIvUATBi3zOOkxWkKnV5mua
         BGMkIR/954jWmFFIs80vhShypjSsSXMC2ZPiiYA74exqJ3aTB4NRnDQcj79xcfAdaarY
         1z4gw9u401baS2RL5neha5X5cZfIs4KeVSOzH6EXsplcYVoxL+rFsHPsizF6wsq69Wvm
         b3AA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id c2si32046lff.4.2019.10.25.04.03.19
        for <clang-built-linux@googlegroups.com>;
        Fri, 25 Oct 2019 04:03:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA68E1FB;
	Fri, 25 Oct 2019 04:03:17 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CB6B83F6C4;
	Fri, 25 Oct 2019 04:03:15 -0700 (PDT)
Date: Fri, 25 Oct 2019 12:03:13 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: samitolvanen@google.com
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 09/17] arm64: disable function graph tracing with SCS
Message-ID: <20191025110313.GE40270@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-10-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191024225132.13410-10-samitolvanen@google.com>
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

On Thu, Oct 24, 2019 at 03:51:24PM -0700, samitolvanen@google.com wrote:
> With CONFIG_FUNCTION_GRAPH_TRACER, function return addresses are
> modified in ftrace_graph_caller and prepare_ftrace_return to redirect
> control flow to ftrace_return_to_handler. This is incompatible with
> SCS.

I'm guessing it's difficult to always figure out the SCS slot for an
instrumented callsite unless we pass this explicitly from the ftrace
entry code, so we'd probably have to change some common infrastructure
for that.

We have a similar issue with pointer authentication, and we're solving
that with -fpatchable-function-entry, which allows us to hook the
callsite before it does anything with the return address. IIUC we could
use the same mechanism here (and avoid introducing a third).

Are there plans to implement -fpatchable-function-entry on the clang
side?

Thanks,
Mark.

> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
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
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191025110313.GE40270%40lakrids.cambridge.arm.com.
