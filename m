Return-Path: <clang-built-linux+bncBDAMN6NI5EERBDUH5CBQMGQECTOO4FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 898FE362A68
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 23:37:18 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id c15-20020a056402100fb029038518e5afc5sf97999edu.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 14:37:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618609038; cv=pass;
        d=google.com; s=arc-20160816;
        b=uckxEDW/JlGJkqJ04iHILOnjriBDy8DezNrTz4qu0GrGW7FUvHt0wJn9XdkEOtxtHr
         yE6rpmvy7p16nhN2uSCs5S4ajgCknHLME8F1ncOoqBfJyVlUcmuzYc310QGXggs7DCDt
         oo5oQGfg2fYuaS1Q+YvAm4E13Q/5Kz03YQ/AfE8Glg6r9k0n1szjJC3/vgCkwOXzDX6Q
         qEz57q0sBOGB+mCZqzWeUaU3+UGdYJKoA1/g/f2ny2fV+te2KF/bBBxJW/HH1HcCM2bM
         jssgaa265zo3De96gThBYaA0PC9Bv/EujqLXyyvrMsbtkXoS2u4o8ZNSUpL8MMMHG5ov
         tWqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=VSGAWKgrK8mDpDPi2ip2z1BmxSd+szOiotE3qnPPA68=;
        b=Y0U9QBQwvthnahF02MgUwPrHEs95Ihh+UxQ5S7/0cbqlqW+ajH8PW34CsiHBlf/SGi
         s8IbgzY/iBpxpUkDf9I3oTHhoSBj652EA8NHe6wz1eScqmYvAukr8zvIUibpwnZr4wRn
         Mkz9yFcPEkHYXQKEiU42YnAdSYD+VQolPto2rbw6esYPizwjXiOjx+X6OToD30ez0jc8
         MXEkP7RRnaDaaOdLTBeTozNa3VcW12JQDf1zRc+XGqwOKJr5OiN1LiOL96vQS82lhnHu
         1WAH1SvKbXCfhIKkcAjHxxAKFYxHnEH5bzX+afgKCYBtddMqnpeHww9uEXJ99kxLG4HD
         aMXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=qPprLSkW;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VSGAWKgrK8mDpDPi2ip2z1BmxSd+szOiotE3qnPPA68=;
        b=fQV1bloXpwNaYwqeSINXhvAaAoK152qb6jK1AuyE+Z7l7lOEmjXpZ8ZxxVFQ+GF0oY
         de8U6tsBWbyE/rZZBGmhsYEUfCL0r5QwAXD1mB/6E2l/7eVLGOHUdMil2jMqxwC7maEN
         puGhc2YfiPiqtcpVhl1WA/BeGTYTVFuJQuMEbhiJR5HgQBu0w7MODWB33+18zht6GwMJ
         a36bZhTMTTfVdgp6GurY6ly2f6FYG/uivN2JQ0GlymfLnQyRRTMWO/6ca90U87amn3Nx
         FVScnzlZDG/UZ8n/BmTtxrT7IgtTZjKe9ePkmJL96uvms6A1YWtFgFgvfexuFiV+cke1
         l7mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VSGAWKgrK8mDpDPi2ip2z1BmxSd+szOiotE3qnPPA68=;
        b=IF33rTqY6fomASHoHxyOLcZSR1sG4dcGnF3hc7XHzdZ5ObItEqwlw93YC3VfNBhEtZ
         L8X79QGT8GtRJWtwthS2dsVsMRfZP/Zm3FAfkW+F36aAwQV0fqbxTT/V/3TH27cC6ZMh
         fanmBCAb92Uj1ZrCNscC5WDKSPh5U+ciC2NgCU2nK/ztl6jzC89RmtrzpvYq84U8dbUq
         3hM7Fet8opO22F3OlU394k2bhtoIz2J2/zWWR+p6uCylT5XxSwh2BuQ30fAYp6G84bNO
         bW2vrGudndWRPNuDPv70mQgv3hOkC8KQ8sCwgQa7IlXGm3wo5ufiJZhSglnYcck8azgT
         u6gA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+XbVyCyR2W6/86FHfghOMPVkcQdxcfZLYJqQXrvdmNUrsTsfo
	dTtZXlXvH84aoYFdXwcPbBE=
X-Google-Smtp-Source: ABdhPJzCJPB3riL3swza6BQ62i/bnsLXXDBAVs6tvxskXh11NW8kKGZVThAidCxYbVeVtuVBG0nJPg==
X-Received: by 2002:a05:6402:c8:: with SMTP id i8mr12588415edu.57.1618609038276;
        Fri, 16 Apr 2021 14:37:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:db59:: with SMTP id n25ls1339085edt.1.gmail; Fri, 16 Apr
 2021 14:37:17 -0700 (PDT)
X-Received: by 2002:a05:6402:46:: with SMTP id f6mr12454205edu.252.1618609037435;
        Fri, 16 Apr 2021 14:37:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618609037; cv=none;
        d=google.com; s=arc-20160816;
        b=z39+sHYkAyjxT1rfjvmrdh6LSU2GBHep12Xt/zBXNsl01klnXa5v+m7TUr0qls+M+z
         eHdDFJiS8LOhIFVH02CpKpAyic4eveZtujz1IDzOWqHRB5CRJGhzsZSUC9zcXKnaqTc2
         USV9UIMRnVUiUFA8RqGKaAioJoJlilg2vzt9SAV3IVO8gt2y8LFdb8PwaGg5YQrQ65Te
         MzegsHG5+3yt/W/mZJSzeHhlPAglCZepqtnWmIbC3Fl3h4d6GAQQBzzN9nE0ukzx/EfI
         UTiKJZ89MczLE0NRQ6eXM4O3Em7lrtx9L8f8rf/OVR572aHLc7gVfJvgTzzvhP+vrXK/
         pp3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=Nv03/zLxr2oHatYYOW2cTappG/aWUT1vHWklwSM1ZYI=;
        b=JUBLu/LOJUfwikMy0YeCDn6dubCb2kwNEuFJobYexuPlT5yUlANM/xY5jUSDzNqFsH
         2QGk2NhR9aPge/y6iS3X+BfpGTdwb0wm7ISMBxFhle7pLLxj5VTqIzxt1wtwKnN27vJE
         UyDFm9DUw3gx+8uwJHWLxB2luW2M5yLXSDP+QCpOhLTDUqlnSx35hQ9LIPvH6Yvp9RRy
         6XwXaCAKyFGD1O4O5heSPF3jIGDLSSJN1gq17pNBrGATAGQotDaW63auqmyo28P5OBXR
         eyDJAzdm7SbA5ukBADvu+MuZz3m0azQxzPqx6cA3OcUBYuRL1Jqp5S4kWuRbrQJdCmWn
         h1YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=qPprLSkW;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id h7si92629ede.0.2021.04.16.14.37.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 14:37:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Sami Tolvanen <samitolvanen@google.com>, x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH 04/15] static_call: Use global functions for the self-test
In-Reply-To: <20210416203844.3803177-5-samitolvanen@google.com>
References: <20210416203844.3803177-1-samitolvanen@google.com> <20210416203844.3803177-5-samitolvanen@google.com>
Date: Fri, 16 Apr 2021 23:37:16 +0200
Message-ID: <87v98lud0z.ffs@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=qPprLSkW;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 193.142.43.55 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

On Fri, Apr 16 2021 at 13:38, Sami Tolvanen wrote:

> With CONFIG_CFI_CLANG, the compiler renames static functions. This
> breaks static_call users using static functions, because the current
> implementation assumes functions have stable names by hardcoding them
> in inline assembly. Make the self-test functions global to prevent the
> compiler from renaming them.

Sorry, no.

> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  kernel/static_call.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/kernel/static_call.c b/kernel/static_call.c
> index 723fcc9d20db..d09f500c2d2a 100644
> --- a/kernel/static_call.c
> +++ b/kernel/static_call.c
> @@ -503,12 +503,12 @@ long __static_call_return0(void)
>  
>  #ifdef CONFIG_STATIC_CALL_SELFTEST
>  
> -static int func_a(int x)
> +int func_a(int x)
>  {
>  	return x+1;
>  }
>  
> -static int func_b(int x)
> +int func_b(int x)
>  {
>  	return x+2;
>  }

Did you even compile that?

Global functions without a prototype are generating warnings, but we can
ignore them just because of sekurity, right?

Aside of that polluting the global namespace with func_a/b just to work
around a tool shortcoming is beyond hillarious.

Fix the tool not the perfectly correct code.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87v98lud0z.ffs%40nanos.tec.linutronix.de.
