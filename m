Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLNH5H5AKGQEUBKW3EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8D72649AA
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 18:26:22 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id b73sf4744402iof.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 09:26:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599755181; cv=pass;
        d=google.com; s=arc-20160816;
        b=CjrzP8OrQEh1KLtAHryW5gO2W+fcBJKeS25Q+GhEvZXqc7lpvxo99d9nUxpYjCwSmb
         hLFm2nUHTxXHaDtm71jkap5ZxOhBUIY4UNA9UM7NTszfI1gZKzwjTyaD11Dj/GppEdpn
         kyxqauO3XYh24BakfVVvU5tAQpIIBldz3fOmO+rTV1sxAhzcDSX+bUU9dKoY/k6TJOaq
         B23BrgH2lay/TB3HlURILVm+me46jZWu5yaC2w27JLEtihAwgLaXiva9eXoNA4RrEo1V
         xlPI+ZWFFGDw/rOA2QUJfkbweGjbuLKuMzTQiD8kgY5JapmGSvrOVq97VqJ+O7fsWgnh
         /99g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=JbtMEsv6px4TQ2OLIjAxOdLqpUPS/fUZUxQX6KkHuuY=;
        b=PHIGC+yHMTJ+SYGKHDa4E2jkYMsjUWgVxInaUGccD+lY5xtqgCjNCfZi64uB4A1Pzy
         9A/kWrRQe933xT/0PeE6ePiX/s99gXnSbTtwoQZ81hnBM89CS12FUjRMemRDpQXoauG2
         A2vm8lW4MK+bjT3XhcCEtRwcywuFfyt89CQpNt1RsYo5Bv0UZRLwDs3iNpFJynGjOFPN
         N5e87V6gjbC7jLVzvh0zlGS6J+b5Jktmj0SDv+dUYUbGrntyEyjHi+ygLkmdjOgXbgFM
         8VterC9rfZyFdOl+EARvEMYFc7fOlXZEH8tYqQ/JHv+QZml39woJHq/DBkU+1UZF46HT
         YMFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DQagOZDO;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JbtMEsv6px4TQ2OLIjAxOdLqpUPS/fUZUxQX6KkHuuY=;
        b=leEN43g1o+ynCXAAsOdYKooWqCQKTEUS05/TAjGDE6lgdqD0lR8oIJgdsIIGzPOnwy
         XgoDqjY3gS8MtGNzCkCQK9SnWMkpeJtQkHA4FvJrIUdY55A+hGNC+OG73KZHyDALBBvc
         YWwOmJI/vi5/QEvLo/nKzhTkc6tnFfMdLIg5DAwsxew9tz19eBho0GyHFUjAyG+k2cd1
         huTi6CAXWwkf1zDJhaHyP1LATJfC9Fb9u9errQj9J4c958uR9dVX2cqA0ucY6Y6wi1eH
         Dhw6OXo73UTYAxEQ72st1BqdDp/6N89djAef5aWYwelNIA2daOV3lZEmilsXmUJx+SrX
         6RpQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JbtMEsv6px4TQ2OLIjAxOdLqpUPS/fUZUxQX6KkHuuY=;
        b=Y3bqbRPSTjKhy1SulKBQ10lDMf2lUhgrHNNkcxG/CPiMZx71t9uG8XAlRsq8WFzF2c
         yAK4r0mTt4udFN1Nt5ghgx5E3zGDJ3Ry/pZrdxrTAxDFFDweZ72qtBDO3vQq22bboiuM
         +TGtRTuIoU7dRNlGyQracOG4FkUMRBV3KD522L5OJBQysVy9HiOVBpbJ0GQnbSpH/Ne9
         xF0jVKTpW4UdmoqDePduzlr/vfBsEjnS2zVIVwLJqm2BGXj6IdZzyTaVyXRwlIMDyLQ9
         sqrQ9Hr1SUS/cfQ7ScA7SQhIgt2KAFL42a96yohFzjt3w9NFBaub9NUQDSQV/QhIOpbr
         SF7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JbtMEsv6px4TQ2OLIjAxOdLqpUPS/fUZUxQX6KkHuuY=;
        b=AkKcK7ENh3WVntEfJavDsQZm2/epIg/Akja4hSD0vGGEgyHPitGJ1oYkZp5KJl1Hwi
         0Jxktf2d8ZUKUEP0AxDZizOm8DIceeyFeRxveKEm6R3sEC0pqXHZAVBnpdP/90CX9wbI
         kp2uBvBH+qV1KyI/da1q1JwL7hRPTlNgf0aqCuh6GVVSa//lxl3DDhd4pqJTUXMfN2xW
         xEYusmZrNrjSvlu4atENg5lQ/rtETUif9bWWRtmnTY84vfmTXQ1CPcahocnGDluqe5pT
         1BWEY0HT6klXwptTGaWoJjHncOw31F/EBNT4I9OPKSFemkBEYaFMQWKvYRcAdLgfN3CB
         sIEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gLPcrk+u/kyfF6DFhDULViQ14t4mabL7HgSEy1VosBdSzPSjS
	PW0muuqXyvm83AOlFoNXjtM=
X-Google-Smtp-Source: ABdhPJz0zUJ+r4dfjegwKgU9Ia8V/SS1M02/Z24t3fctTgsJUMAwEqPLmgDt3uBQIraXgKhfsfRQVw==
X-Received: by 2002:a92:2d2:: with SMTP id 201mr2372701ilc.190.1599755181320;
        Thu, 10 Sep 2020 09:26:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:c648:: with SMTP id s8ls1208914ioo.5.gmail; Thu, 10 Sep
 2020 09:26:21 -0700 (PDT)
X-Received: by 2002:a5e:930d:: with SMTP id k13mr8201104iom.40.1599755180924;
        Thu, 10 Sep 2020 09:26:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599755180; cv=none;
        d=google.com; s=arc-20160816;
        b=PR3rgmCn0JDkL+wCw62NcVFpFmEuT8oXvsC4dCPicZW/wViC5hkBuOVZr4Q+OwPxZI
         2vkd8V0T1HB4k6CeyoGJQV2UDF/mB5+TBRCUVhhYZrMsFWS9dnvi80db79KUANzR/CRg
         vSudcRgGXFP7mKAoBU310MOqkVoILsv90/J4P2GCv6bR2FupvoXJ28wqop85ILn32OdK
         ekmY1eNZwkrWFRZQ3K9a+wHixjxs2u/uaHdicjXGizOajvgam+mfRV8DvxAYgziabJJD
         6UZzO0jhvPWXKlKIi7e/0Frw0Upv/17CB10bftRbWcv0F9xLNTXqYaxEv/LLVzdiqlj8
         YaIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=u6ipngvB4JWmCirHiN613ekfbG1vVvJJvC/3Qroc/h4=;
        b=F5Hy+J/He3JLAlQzq8Ynw7GJEcuTOzr8SXRhbBsnk4VXbdJ85F3cVRhdyZ0wTXVE7R
         bNYvNypOGHt/HcnODD+s9VgS4wlEHRrAzXTS9KIRZkettZy65V5sBkSWjjtvN/nghnCx
         6tOdadgb85gvC68jgK5/xRsNDzrf0O/QeuZL8XklQ03YdgYEH/1FQ4ovt/tDEH8BMJ9f
         VOo22cNUSiMIF4WNp4bqpmPYTCdLGjP/EJRUZhIRAveNM3ZgowmHJYZ+f7nDlwonZL6w
         tt9c2BAoUQ1XcBi5y7J7vMz4WvRhWq7/OtyBQH17CbK6bg8AEI8CB8Ss0HvnPEJ1Wvea
         ZG+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DQagOZDO;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id k88si561697ilg.0.2020.09.10.09.26.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 09:26:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id n133so6616370qkn.11
        for <clang-built-linux@googlegroups.com>; Thu, 10 Sep 2020 09:26:20 -0700 (PDT)
X-Received: by 2002:a37:a7cb:: with SMTP id q194mr8685507qke.183.1599755180181;
        Thu, 10 Sep 2020 09:26:20 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id 15sm6630858qka.96.2020.09.10.09.26.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 09:26:19 -0700 (PDT)
Date: Thu, 10 Sep 2020 09:26:17 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Stephen Boyd <swboyd@chromium.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Will Deacon <will@kernel.org>, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] kbuild: remove cc-option test of -fno-strict-overflow
Message-ID: <20200910162617.GA3119896@ubuntu-n2-xlarge-x86>
References: <20200910135120.3527468-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200910135120.3527468-1-masahiroy@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DQagOZDO;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Sep 10, 2020 at 10:51:17PM +0900, Masahiro Yamada wrote:
> The minimal compiler versions, GCC 4.9 and Clang 10 support this flag.
> 
> Here is the godbolt:
> https://godbolt.org/z/odq8h9
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Appeared in clang 3.0.0 in commit 6e50103acda2b918545f30141edeb991d766f2a4.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> 
>  Makefile                          | 2 +-
>  arch/arm64/kernel/vdso32/Makefile | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 4b5a305e30d2..059b36f2ea53 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -922,7 +922,7 @@ KBUILD_CFLAGS += $(call cc-disable-warning, restrict)
>  KBUILD_CFLAGS += $(call cc-disable-warning, maybe-uninitialized)
>  
>  # disable invalid "can't wrap" optimizations for signed / pointers
> -KBUILD_CFLAGS	+= $(call cc-option,-fno-strict-overflow)
> +KBUILD_CFLAGS	+= -fno-strict-overflow
>  
>  # clang sets -fmerge-all-constants by default as optimization, but this
>  # is non-conforming behavior for C and in fact breaks the kernel, so we
> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> index d6adb4677c25..dfffd55175a3 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -90,7 +90,7 @@ VDSO_CFLAGS  += -O2
>  # Some useful compiler-dependent flags from top-level Makefile
>  VDSO_CFLAGS += $(call cc32-option,-Wdeclaration-after-statement,)
>  VDSO_CFLAGS += $(call cc32-option,-Wno-pointer-sign)
> -VDSO_CFLAGS += $(call cc32-option,-fno-strict-overflow)
> +VDSO_CFLAGS += -fno-strict-overflow
>  VDSO_CFLAGS += $(call cc32-option,-Werror=strict-prototypes)
>  VDSO_CFLAGS += $(call cc32-option,-Werror=date-time)
>  VDSO_CFLAGS += $(call cc32-option,-Werror=incompatible-pointer-types)
> -- 
> 2.25.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200910162617.GA3119896%40ubuntu-n2-xlarge-x86.
