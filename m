Return-Path: <clang-built-linux+bncBCR5PSMFZYORBNOKU6EAMGQEMPJTNQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0743DF90A
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 02:54:14 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id i10-20020a5e850a0000b029053ee90daa50sf361558ioj.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 17:54:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628038453; cv=pass;
        d=google.com; s=arc-20160816;
        b=IlTofJyozP4QHx47KHPjSkisOoFtRb+4/OF6GdjbkN06znvGlDPjiH4X+M4GFHnNWY
         YEp9trceBqmXBRPPkkkm/Z76QHcsolHlTO2k+DV2t6FrnZRF4wefCLxMP4KJnQCq6mVw
         +DgGQ03tWSA72ADSomwm3qrDL1sT1s8k+h4ipqFhjOC2q7ZgpNWtPmBOow8Zl9eH9rdj
         TWIKT85Fwu/s8LNQpRhZBUMF0B6q7g+K4swm4opc3xzCKf5IUlvC2lGdsIRQVbT0v2Kf
         jy/puRZtWP8tjos1HRW2dyGCPeVcedIw9YmnbA9X/eCNiypmqIyLlyqt9YhqI3hmt0wf
         tT8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=w1RQgzXTpRQuPzgaz+b3zs6KixZPJBxhgmHqimzysmE=;
        b=hxbBrfOKCYbfwSN/P9zs6fyRSPri8X/f+mhCbROO70a3CI1B85tiVlAvruBcdBhjX4
         ZG7peMPACBtgJHYh3MauNqW5T5ydj46z9jpkoxd9+HncWCwKAHLSLe/CGt/qWhhCBjrS
         DdhUPf7pC9AKudNguRHGsg6Jp49me34NyJBekyCZytnTVGu38dJDWZeMFkG8z4iyc645
         mg4ur627kaLrY60rNXIZai4Pp3SlIVcqIW6MdyKkgwYoGUxjYIunToz8aKLUqEmzPu91
         XyEEidSh7yk+ePwmknNid2Jc/CSCh63TRWNSEfhAekz8/ySIn5voOwb0Hx9BYGSmd0wo
         FbrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=SecjGxb4;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w1RQgzXTpRQuPzgaz+b3zs6KixZPJBxhgmHqimzysmE=;
        b=f/NEh+U287W5Fz3+3+ssdblcWjK05nhbL+jVccV4DAx6rrzghPgPDWtc6cYX+gXuqN
         K2IJ+2F/YYBHn/1zGZ5VxzRXXc8TlPnhDzOuonRxMVibWuyUmWo2QPnHoLLT0/7iBsWJ
         uehMOER5P2aivD+qFJb0MG8g+7FeiV1cNmzScQGh22CodzBXNQPquPRVYn4IQxff16iH
         Yjgl5Do3EvwwgxkC5EYBb+UG1VOi3vJFKm99tthVcjUG6JfOUHMByF39xvTIiSCbY7zV
         xPQKSlSrPtRbYUfCFRot66LLaGLHgkVwX1jtr0uaWg/bOT4zDCXFvOsrj/29J/LGlhtR
         25Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w1RQgzXTpRQuPzgaz+b3zs6KixZPJBxhgmHqimzysmE=;
        b=gV2MMUdn4TzdM2uLqe6FgP9wky9EieDGLR3C8JXeOqxVQQDpYL4DOIce0eeRdOi4VJ
         WU2ENcMuoxxSH0ynkXaQ9W0/wTZOewG95qctYtVfgx94YizMVe4Gf8e0UHHOO6B6A2MW
         xuHIqlc04zTb9YjEJC7Dxfk+m1baQboT1fv8/TQdfWGlLVMGbKSRFtYe18yVhb4dbDtu
         jmwqDDgG9RLegOkC6Fjtr0qFPQWyDfabUefQ/ulBEimVjxV9Qgy5SDVAnr9h/LO+uYA2
         KIhOS1S+rm8bCJLMFzSi9kCQydJgk52vyDeiU9R5clo3ffEwb28G/YGpvfXUUsOzh1q5
         lb6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533khrk9dZHyEFEGwveNnkgbK68BrZFuf9pteb1qQZxe6XK3xtuj
	nC7zilv/nv26dklOYiaC4Bw=
X-Google-Smtp-Source: ABdhPJyXCNXeC0vQAYcDEFJBe+RF/mn3luW55UEH49CErmJt+QZlDMwZsqCkoKXD4gZjlI8nk5PuUg==
X-Received: by 2002:a92:ced2:: with SMTP id z18mr343043ilq.69.1628038453729;
        Tue, 03 Aug 2021 17:54:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1609:: with SMTP id x9ls71258jas.11.gmail; Tue, 03
 Aug 2021 17:54:13 -0700 (PDT)
X-Received: by 2002:a05:6638:2656:: with SMTP id n22mr21385742jat.64.1628038453441;
        Tue, 03 Aug 2021 17:54:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628038453; cv=none;
        d=google.com; s=arc-20160816;
        b=AdhgCuaKG+73OIJT1i0FIa5hpFexYVH18tDEWA9ce9UakceF3xSNyaZ5Fv+Gbr8iSz
         X9D1G8r/8oHBhu+seH9gH6/1/2uE2RUrFnRj/n9lT37dWuvAV9p2e+2/75bLr3Y4tvAt
         hfVMSiQ+bnOvs8WfUGlOwfHkSDjqPJPjrlECSGIO+upUO12ASI/6uHrCc1EwD/JHT6gl
         f03VCFgrbofuclZ8fzwarX5RJP1eoHlOJtZtaCfrumdawvAGg0U6lYlBekwjk8E8mcbu
         nDzMfxayHiKsdoZQ0UkRu/Ge5tJoQNG1ir07uyuZuE8ojMfwoB8PGsaQhRoWdkK38Yi+
         9yhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=ZBaaN+tHPwpLYY+UfYI00dZzEufAibCKvfz+hWbOPT8=;
        b=x4W//TfqwREKV1FJDnnhIiPNnVIZM8rHHpxEf1INo5Z0zquA3ku5/3S0AbG33leZXR
         +Fcx7A7kE5SMlxxD2y1j7PcXw87k5cNyBelGijRuARURD+3vpF6b/h4K3yUsO8avgK4X
         VCL7oqys56r/V1mTJLy9eDvqgNK1b3JyeHtp2+5MPjGY9//Bw5u6nXG+7HRx+V+0mKiB
         Kd580Mo7WY8y1ixI3p0/9yZpZTkxxoKSsMIeJ3fL2mlvNyjAtv6COdXY7c6w1vKVAUkX
         iqRdLxMbg4R7sILwFQY3eCRGO8uPj7fse8BpFIuzoqN55PtwMakZJ/TOP6/8i94GromP
         Y2MA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=SecjGxb4;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id e12si34698ile.4.2021.08.03.17.54.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 17:54:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4GfYCg5V6nz9s5R;
	Wed,  4 Aug 2021 10:54:07 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras
 <paulus@samba.org>, Nick Desaulniers <ndesaulniers@google.com>, "Gautham
 R. Shenoy" <ego@linux.vnet.ibm.com>, linux-pm@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Nathan Chancellor <nathan@kernel.org>
Subject: Re: [PATCH] cpuidle: pseries: Mark pseries_idle_proble() as __init
In-Reply-To: <20210803211547.1093820-1-nathan@kernel.org>
References: <20210803211547.1093820-1-nathan@kernel.org>
Date: Wed, 04 Aug 2021 10:54:04 +1000
Message-ID: <87lf5ini6r.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=SecjGxb4;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nathan Chancellor <nathan@kernel.org> writes:
> After commit 7cbd631d4dec ("cpuidle: pseries: Fixup CEDE0 latency only
> for POWER10 onwards"), pseries_idle_probe() is no longer inlined when
> compiling with clang, which causes a modpost warning:
>
> WARNING: modpost: vmlinux.o(.text+0xc86a54): Section mismatch in
> reference from the function pseries_idle_probe() to the function
> .init.text:fixup_cede0_latency()
> The function pseries_idle_probe() references
> the function __init fixup_cede0_latency().
> This is often because pseries_idle_probe lacks a __init
> annotation or the annotation of fixup_cede0_latency is wrong.
>
> pseries_idle_probe() is a non-init function, which calls
> fixup_cede0_latency(), which is an init function, explaining the
> mismatch. pseries_idle_probe() is only called from
> pseries_processor_idle_init(), which is an init function, so mark
> pseries_idle_probe() as __init so there is no more warning.
>
> Fixes: 054e44ba99ae ("cpuidle: pseries: Add function to parse extended CEDE records")
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  drivers/cpuidle/cpuidle-pseries.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

I don't see this in my builds for some reason, but I guess toolchain or
config differences probably explain it.

Regardless, the patch is correct so I'll pick it up, thanks.

cheers

> diff --git a/drivers/cpuidle/cpuidle-pseries.c b/drivers/cpuidle/cpuidle-pseries.c
> index bba449b77641..7e7ab5597d7a 100644
> --- a/drivers/cpuidle/cpuidle-pseries.c
> +++ b/drivers/cpuidle/cpuidle-pseries.c
> @@ -403,7 +403,7 @@ static void __init fixup_cede0_latency(void)
>   * pseries_idle_probe()
>   * Choose state table for shared versus dedicated partition
>   */
> -static int pseries_idle_probe(void)
> +static int __init pseries_idle_probe(void)
>  {
>  
>  	if (cpuidle_disable != IDLE_NO_OVERRIDE)
>
> base-commit: a6cae77f1bc89368a4e2822afcddc45c3062d499
> -- 
> 2.33.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87lf5ini6r.fsf%40mpe.ellerman.id.au.
