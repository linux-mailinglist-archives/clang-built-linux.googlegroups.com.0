Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBJHIVX2AKGQEO2O4MPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 532E819FD17
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 20:25:41 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id 14sf151235ual.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 11:25:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586197540; cv=pass;
        d=google.com; s=arc-20160816;
        b=xxfoj6V4VKSqj6Nz6jdB77xBHs1AzHCMpAMto4BYQYm8iUCKFcggY5dLRhTh8ih0sh
         /e7UJWd7C5V3nh9dT1ZBNfm5wn+1nY8+Erx7L+JV7cg9mXI2Ou3PeP0fYwH3aZy2Bste
         TVtmQOFFs/lqAgIYWlUqao5xGAh7Y9Bw/nI6w1V79sCEqh80cqIVFBHValKng8n6iPSZ
         e+GGc2x4Q3kpTR4rEtfMy0oCceJbdZl5ohuALc/AWCh16WIQmXyrFaoxwA3OvSKwZ0cz
         w2QWAPTQOkqJXVt9GISWlXg3XSgF7Ihr2ZvKzXbSLXWHFb1AG4HeJhPaiwRQF2z10WJ1
         J+3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nXmQjaD09KhbAdK5kIuiCsA0lN1DU+S4/UQlAPZSxak=;
        b=EisHjKOPmfRKQPHXkWmpnQpcpcb6eZ7COjvtA6drJ2CIKH2jR/SabO1zAP0ZdelFZq
         jzK2dYdcRBYRCAoHlgUmqlCyNZd0GB52sxgZ7bvTmWjewr95Y/k3Bnk6+3dywGkU0itD
         nl/hOEmd79lGfG/73savtmedToQLLk0TtCbXwmFE5sH0kMbMzjGbb+SCAC+Wz5rWWs+J
         WXLVKVhGV5UDQOjCH2fTr+rHNRORvVnmYLrBHZB7SmqXPcLa5zidrrzkchfUweNAtr5d
         HvUJauVnZUG2zPWGXiRlRqddIgGIT+b5eAC47//jgJ13/6b/jUbQ/zSLOSE1JDRkTX9v
         2lyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SDponCt4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nXmQjaD09KhbAdK5kIuiCsA0lN1DU+S4/UQlAPZSxak=;
        b=TBHAG1qGow2U9SCjLhFcAkusy4ewlq849tQeJwwDq1xl8yObSE98dhYOYZEQOLzyoZ
         K/tj8uDw1YWrXeDZuT+Z7C1jPGHtGHFe3uDHGajxFDaPF8QEtP03QsPSzZ2hIBHqudaV
         tXRsIuGlpc50nQgaudE3HIquyjgNWUe5PxxLJpKgwH7+5afz1iauc8G3o54SNGPIzQ2d
         YvH4x702BwmiKbw6R3v0ld6WY/MakOwEEe5RJh6AfuXk+7avRIRYamrjEXiX5h8Ix6ON
         lOukqSAKIyRDcefX451J74dwk1LuibWSbYGdc4RSEWc/BrUWd1gmvsQYiu516LZangn5
         OX9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nXmQjaD09KhbAdK5kIuiCsA0lN1DU+S4/UQlAPZSxak=;
        b=c1oLMkjaNQeWmh4jjShEDaG99vzaH1QYAnnYMYzj/zCNUACN9fkkCa2uJC0/IGLsQi
         aTF7wO3ak3nt9RcvFRTuu7evImoofOD0xckTdWRRejjLxw46dOKayWO4HeDeKqOD7H9i
         49fm9PXRH52JaHkmwTRh9yZZtfpzUegn2nEWMboVbTlIqvkmx3Mv5rt2RB8awQfXAbu2
         P0lRnN7CFyr8drMcSsmCWVXWsEcUnWqKEWnCEUEJTqTlAodd3+atO1NIMZonMYqP+4rY
         eXW8yyOG5uTpC0noFIlhyAYNloxbqRKAF0Q3rJuHh50V/11lyLWRdN/ZIlB3qogYzh81
         GJFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuadZGMUWELCd2bjS5U3D0CwQ5SRF+LKENaYgt+tlWtWzauxr5kD
	mjbiN1nOUZyEUln5Nivu/ik=
X-Google-Smtp-Source: APiQypKE9OxBpuYxPgJUNsm9C6+3iL2hNvYCJI0u7KISCGjRsbo+l7o39ogHH0fBPqqJ9rUvhp0kGw==
X-Received: by 2002:ab0:29da:: with SMTP id i26mr725107uaq.29.1586197540328;
        Mon, 06 Apr 2020 11:25:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6950:: with SMTP id c16ls1192198uas.0.gmail; Mon, 06 Apr
 2020 11:25:39 -0700 (PDT)
X-Received: by 2002:ab0:378:: with SMTP id 111mr781846uat.78.1586197539872;
        Mon, 06 Apr 2020 11:25:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586197539; cv=none;
        d=google.com; s=arc-20160816;
        b=vuCzsvQ8RbqomEYvol5Cj1yh++EacLKqzta+polhC0nbKMiTw4cVVFjqfAJ7Iqt7//
         BjJNmsFt1q3s5yojL7nnTs4rw1cyrH6SbA7OpAF4AVp/3jsh6GETuaKm5kzBwFxSfpG5
         2bUSdOIHTmoGMJUooTYP3G+B+pWh7z0PMAr7pXyOmXrlxHtnOK9mTv0l9//+QzAkYmzE
         ZM6wLU+lEP/QSckSgDflhVACtx35MeagyiHG6QRgGG/xhprAIMs2NFALGWAJIgXSZz62
         lEkcSpDaOMwDvZVpAqlX6amJZ3gZmDwz+Wh9C+wLLIKqLOePL0s7RJ1AcbGuttxzRA1Y
         /tYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9XYlLQFnWWwdu63sAOZZGoKgEJL0Ub8ZWN6C/xE+U6U=;
        b=NCvtjKZOxi8Cp8X7Y6Rw43JBYf0EShbAQXAVHEN9DllZVKl4y2EIPEfcrUdJQ10Su3
         Sox3hs7PCZKi7qUyWKp5f7/e7GLX7RQcIuvY4iTu5YLX1mPaBmoFScb7MEBXJBxpN0Fi
         bW82/liXVb9Uh3+pjGNo9O8Bl+7YtckE2GGyGZIiM8IRWi/oKVS8AntIcN0Cx8gBnPkG
         l8CiT5h57o9vvsykD1HkB91gcBWuULnJpCcSQCuLCRjvFRtWnKOo34N6cWcDpV6wgYr5
         zWoRI4Y4B/apFe/HSRa2B0yoQEW7eduS/AfdNMokJnk9+r6qzizx4g+38g2Ut6xaeGVF
         +HuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SDponCt4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id f17si27850vka.5.2020.04.06.11.25.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 11:25:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id n10so7989348pff.3
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 11:25:39 -0700 (PDT)
X-Received: by 2002:a63:9143:: with SMTP id l64mr388752pge.75.1586197538998;
        Mon, 06 Apr 2020 11:25:38 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 17sm1673185pfa.8.2020.04.06.11.25.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2020 11:25:38 -0700 (PDT)
Date: Mon, 6 Apr 2020 11:25:37 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v10 12/12] efi/libstub: disable SCS
Message-ID: <202004061125.A4C4EB70@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200406164121.154322-1-samitolvanen@google.com>
 <20200406164121.154322-13-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200406164121.154322-13-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=SDponCt4;       spf=pass
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

On Mon, Apr 06, 2020 at 09:41:21AM -0700, Sami Tolvanen wrote:
> Shadow stacks are not available in the EFI stub, filter out SCS flags.
> 
> Suggested-by: James Morse <james.morse@arm.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

> ---
>  drivers/firmware/efi/libstub/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 094eabdecfe6..fa0bb64f93d6 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -32,6 +32,9 @@ KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
>  				   $(call cc-option,-fno-stack-protector) \
>  				   -D__DISABLE_EXPORTS
>  
> +#  remove SCS flags from all objects in this directory

nit: double space

-Kees

> +KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
> +
>  GCOV_PROFILE			:= n
>  KASAN_SANITIZE			:= n
>  UBSAN_SANITIZE			:= n
> -- 
> 2.26.0.292.g33ef6b2f38-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004061125.A4C4EB70%40keescook.
