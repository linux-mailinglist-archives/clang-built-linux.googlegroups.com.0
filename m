Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7XV3X6AKGQEV7UNRRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F8B29A244
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 02:42:24 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id l23sf58418pjy.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 18:42:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603762942; cv=pass;
        d=google.com; s=arc-20160816;
        b=M1u+e7ZOVol6NTQdqImLyOiq12PUvaSYHapM4FnkwZJEVw4YUzMdDbsKxIestPURBD
         ireooJG8aAsy9FnrcLlHqiJAGCBhdh5tXAo7Rjf9uPYvgJi6Hp5iNZZjKZAnp9ZNBxUp
         quD7y9dNjZPPugqoTy/XC5J2zJM5iyZdpNiny6cSgSc45koNAWxiL1usRHCN7MovmGl0
         7nJVWG3tidbvWYnh6yvrkMOpIZp1GZZzZOw+mnV5S+2RWjxY0UQ+JTVZVc3Dl2aUk0t2
         QUqmVMDuBgKsR/x0X4pAzpw3oJsZlEiqUPmGzvtjrDsOagFiXE5+/H0uf86I2Lt1ZzCE
         gwpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Bd/XE/UKU/YLGzFNUPlPNVwsTQrZd50Ay2YYecrhX6c=;
        b=pj30C+gd4TR9H9M+ZiMIXAulViDzyDN7nUloi/2lwHSUAUGeSCUsBA1IDwAVvhUijK
         7dmkOMMwA7EimiYZkCXzbVRf633Oxbwr/ExC1BxQ/q+faNo1Y0WQN0VIUi1S3vfYqKBW
         isdA3WQP3LAAME3N1HV8E2ZEqEw1/VGRxQC4nArEM8B/oEMsVhK7/uWTEAKQhcAyVpTM
         e38j6Kma32U265cH5m1YjNsPPR9s30ovOFwxEh3ifscyhThpy1B2GUaDRD+KdaFFwh+Y
         EQXUsuEKRiQlljZkwy9PakSZcTkHkVXKfqFZaFFP1e4OJvrK62SzQrFvg+6JSAcWe73r
         6MTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GK+Ez+05;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Bd/XE/UKU/YLGzFNUPlPNVwsTQrZd50Ay2YYecrhX6c=;
        b=o+Vm7Iq2sA/IApvUek+ylQh71jmewG17A7N3bmMuryLBCf7oqP21d98ZnRbAT9dzgy
         GN3M50BmCP2IgcxENYM00U6+NZU2Xw9nX1TyS2ZhX9gnY3Eadf4/VR1197VyHFg8OT5k
         MtSdJWcIRTRp+VfHVB15GypXp2srA6qTY8s833kMANW+1DBr9yIYRNnaK5AADyYhrlL2
         hFcJzmwd0+VPbyTqKmugwRld3PqdH0fpL2pn89YBBZr0Fspo6l7KYSfSxEMFxxDzNlDr
         Zz/Oo06KiTrMvjjkGvnhM+Zv2qZQv49WLM8Ik+xCb8hvtwUh4avHRgR+ViZZP5ASG4ip
         zkRw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Bd/XE/UKU/YLGzFNUPlPNVwsTQrZd50Ay2YYecrhX6c=;
        b=YacCAcOvhbF1xtqiA9A5SwohYStQk9m1PfaX/8QfySy5elPo7YTDelPe3wb7s6r0lf
         cSoDJE3uDgw7sp/bNPud/NkNuIW0TP9Ebth5NwKj6QQynFXZ5SSXjt9sOuKI8midil2s
         GWdUTJ26TuWbQS2qRZISJrF3aUCqynFCt5HX33BIEqI3DTNy/eg4F0k5Tjqw2MjzWd1N
         WVa492I9Z8IzT14ttvkH1RYysb+3IzEKAYcryRlTXM4Zz3mWL2ujguDJvGgYS5Sfa/zY
         aJx3Hw1Y+fRAby2TiJH4lgiNJdl714q01E74jrDv+BW7cH+VhzuY46chRh2fDgmq5N43
         pm+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Bd/XE/UKU/YLGzFNUPlPNVwsTQrZd50Ay2YYecrhX6c=;
        b=BrQTpLV8sbh7RarmhLVdJMav6+R4bkgiSiFRAe1Y2eewDAp2e3d9vica4wbDP95n3V
         qSNiljzTR7FIpOzKfctgvPfHtV8PBxUbX+2XfAw05SxVa3NfDHYxAPWtO9qroH5Rvy+O
         FCO+7xMFQw7msG38RP2YBUszwKigpBoM5u7Xu6KkeCiomMzn56j1yzXnd61b4gUeZQIY
         ITq2DX8xtXxpZDOh/mEkQqvTsoniCcXYoucOCsRHKoq/tUSX5Hi1x5h+m+bEmWwOAYQD
         GVKgckN0NHOIPy+7RbYvmJORg09UD+enxpXERA03htf4XmPU3lDXfWWS/FuYLZ/0V0bl
         M8Ig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325/bfn28zW/n5tldAGRrtZI8qSz0JyozugURHlxIf+QwRQrF0S
	ZiyYb/rZXF58yoIM1BOU4gs=
X-Google-Smtp-Source: ABdhPJxbMZ5K3t3A7ahZlV28V+PWvCv3zBnuYB6iwTCXqp4kLZvPhVBxXTktTJ0ycSnmjLmvRICryA==
X-Received: by 2002:a17:902:b492:b029:d4:d88c:d1a7 with SMTP id y18-20020a170902b492b02900d4d88cd1a7mr12097plr.15.1603762942714;
        Mon, 26 Oct 2020 18:42:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:8046:: with SMTP id e6ls12968pjw.3.canary-gmail;
 Mon, 26 Oct 2020 18:42:22 -0700 (PDT)
X-Received: by 2002:a17:902:b18f:b029:d5:e3d3:9b87 with SMTP id s15-20020a170902b18fb02900d5e3d39b87mr570916plr.78.1603762942204;
        Mon, 26 Oct 2020 18:42:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603762942; cv=none;
        d=google.com; s=arc-20160816;
        b=AoR7nsriHZEsu6H+BGmyr38C5H5YPv4HXTsNuWXdiKIbo/U1IB+Hh3Kr0LWB7y9Q7i
         ynbETZs2CwSjTO8rBuSTJeWiX3vSf4bD5x0rBquvK4cu/RKTE2Kl3RrYgf6duNToNqHA
         ByJNa1rQkkcA7hLr2PuzB8CDs2LlQol8IdPtRvL0zNLpr3ixBemin5aezYId8S7nT7AM
         XXl0LqIBHlUk/gn5Ibb5rcTGxFPIr+dLuiJkjy/6C9fNVhdq0WtpI2sytGlSKKBtPuII
         KFVE3wtzINfN+GsopR3YhhWcvSpdKg0nWM+HqqNk4kZHEjAwq7GJ8ux6362jpibrucP9
         CQ8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Pdv/+pyfJzI+Ew6OQ4XAO7djSaFMXjqvu+g73Scjri0=;
        b=sSPUTnb92BT2aqBG/HbhVnnlq/NENBQitkR5tml9wrQx7CJzlEP1jKxQsIKrxFoLL9
         pnXzsaoAzeTAPkiyHc2MQmysmXxHBZSJfJaIWF5B7J9mo1Ead5cwJOsEYqCnZdHS1xHd
         sfW7MwHqjREs5bTcWJtpS7VtCUzNb1Kxt+Oh6iHPdrYg46Um2PHCxFtZ3AoAjp8e5NTH
         /GX8D32JpMs3nGmwcG3rXBkgHYwYJ2NJkVnUNXXSugQE1Yh5d1D2WRtgZ8znnQLIPexJ
         kroDppM9YP1ZEUdeBbYeqLixFG0EnqB/oU+MnEY+iphruuzvRKkIVLwNGkSCUgGcPJ3A
         B1kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GK+Ez+05;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id v8si766803pgj.1.2020.10.26.18.42.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 18:42:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id f5so5317053qvx.6
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 18:42:22 -0700 (PDT)
X-Received: by 2002:ad4:456c:: with SMTP id o12mr156268qvu.48.1603762941400;
        Mon, 26 Oct 2020 18:42:21 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45d1:2600::3])
        by smtp.gmail.com with ESMTPSA id o5sm229qtt.3.2020.10.26.18.42.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 18:42:20 -0700 (PDT)
Date: Mon, 26 Oct 2020 18:42:19 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2] Makefile.extrawarn: move -Wcast-align to W=3
Message-ID: <20201027014219.GA4058050@ubuntu-m3-large-x86>
References: <20201026220331.3896226-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201026220331.3896226-1-arnd@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GK+Ez+05;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Oct 26, 2020 at 11:03:13PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> This warning behaves differently depending on the architecture
> and compiler. Using x86 gcc, we get no output at all because
> gcc knows the architecture can handle unaligned accesses.
> 
> Using x86 clang, or gcc on an architecture that needs to
> manually deal with unaligned accesses, the build log is
> completely flooded with these warnings, as they are commonly
> invoked by inline functions of networking headers, e.g.
> 
> include/linux/skbuff.h:1426:26: warning: cast increases required alignment of target type [-Wcast-align]
> 
> The compiler is correct to point this out, as we are dealing
> with undefined behavior that does cause problems in practice,
> but there is also no good way to rewrite the code in commonly
> included headers to a safer method.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Always sad to see a warning move further down the list but noisy headers
are rough to deal with. This seems okay.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  scripts/Makefile.extrawarn | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> index 95e4cdb94fe9..6baee1200615 100644
> --- a/scripts/Makefile.extrawarn
> +++ b/scripts/Makefile.extrawarn
> @@ -60,7 +60,6 @@ endif
>  #
>  ifneq ($(findstring 2, $(KBUILD_EXTRA_WARN)),)
>  
> -KBUILD_CFLAGS += -Wcast-align
>  KBUILD_CFLAGS += -Wdisabled-optimization
>  KBUILD_CFLAGS += -Wnested-externs
>  KBUILD_CFLAGS += -Wshadow
> @@ -80,6 +79,7 @@ endif
>  ifneq ($(findstring 3, $(KBUILD_EXTRA_WARN)),)
>  
>  KBUILD_CFLAGS += -Wbad-function-cast
> +KBUILD_CFLAGS += -Wcast-align
>  KBUILD_CFLAGS += -Wcast-qual
>  KBUILD_CFLAGS += -Wconversion
>  KBUILD_CFLAGS += -Wpacked
> -- 
> 2.27.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027014219.GA4058050%40ubuntu-m3-large-x86.
