Return-Path: <clang-built-linux+bncBDR5N7WPRQGRB45F63ZAKGQESNR2UGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8B01767E5
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Mar 2020 00:12:52 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id b17sf762652oib.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Mar 2020 15:12:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583190772; cv=pass;
        d=google.com; s=arc-20160816;
        b=MalVQbOtWGwk6gmYQ1PsR3Y6lnKNlaLSf1kSGHKeCppdwgxX8EzHV6yyeefLNdF5PI
         QWh1Sv0kboee2VR7hXl8o0tyw8aBGqTtrmYigL7MKwDuWzWaPURivhNz6WRKyoNKKYxX
         vG9m1LxXp+rE40Yclchf11UncbqPQRNR3W6kOhQWibk8d8iDYlzdwC8Y8HfKjTvZqBlL
         9pS7Z8LyXLzV1zatSIg4FzlVyUQXeU2MGUpatiJ2OdTqhPs+LMtAF180IM9LLnccx3Vq
         msRY+lD9JF324yqaDRnXNQ3FGqxRN9dr5HEFeQMGq+/+1j+8iypvGzUvKyzjyb4R6Buj
         XEnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=GR4pTtBvuLMoXmPySrJeB2F0J1nm2z6wzOAQes8Zof0=;
        b=ITppNoLh6KSXBTxWOIfDsf5dzlrs89myNxGQ2TllU86SJ44iiv+9rfVxwAsJcPx8RY
         7CHWDZ8Lb9VF2kXaI0vPjkAA44xpqS6zOJoyC+wK+ErbQlmYc9IYKpZuK26GpKVbkhqt
         K1ugV6bJNbdbt2r5sv8oUFko1pxRh2w4lap8PMHTrKiZ3ERpsn2TByBF4AavmuTbOdJl
         hWvei0T/EKn3/FespzPsoehcDlBVYm4WhddgLDsf3rr8U0AChO0a2hEy9yvu5eQ0zKmy
         ps2NBWjWdesEMpXXuhQvzkX7oSW2MTbuq9E15IMZmRvrNV8pHLdMSQyRPi+nVXAFJRnf
         U16Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=KrHXnZUY;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GR4pTtBvuLMoXmPySrJeB2F0J1nm2z6wzOAQes8Zof0=;
        b=lS09GzC340Ltq5tjuPwLic9ouVLq0NS9Gg0zl7z0o2UWOQ93AQifg3BAd+hmtFxudH
         gNjbS5dJFgFWRcmfPXP6ZGpJJvPGHzZa+ZoieYoKBCcComgc641bUqw4Xflow91qZWzl
         tefJjyZSXARIIlafVgfUCfanOr6zsz9guohyq3rIDB9QaNQummQmmFqlRnZqSm+RltOv
         lFjYG7bdp1SAEQbGDXKNPrmy8d+/6ZmlbFvFfK0edX39A6xclz55Uk9pZlyd4jFOxzfg
         SWdN6+jebgp2jTXfU6ICouyeS48Wes9reMXaZ97LLAmdM0Scbr13rX5xE6A0Urg+jY7i
         6myA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GR4pTtBvuLMoXmPySrJeB2F0J1nm2z6wzOAQes8Zof0=;
        b=mXAyxD5DWByfGOD+0/8JA5vLyn9Axo0E682go598OEt2s2Fg6KyeWEbMKyxGb6xMSg
         e6yGhKY0i8Dd1gOR+PwJiP0sn7dTltVlQMPYYRyYttSSayL/xswLoyPNEqYdKzsQCn/u
         0Gs+yMGlPQKIB2c2q10G9wcHQTxVuxxot2ShOMsP/TBBd8FeDqJs9mkD+/E0BGJJ/K3+
         p1LTrOmIxjYOadcLMnZSuZERwL0qmSNJ+Q7HARV63troGVVGGNOhnxyaIGjraBWw3hSv
         xE9bUcCl9DnjlPgK0GaF0cjDhAEE821vf9ytdX4fJIOhQEdJTO4O2TU9mE77FAIhXTZ1
         p03A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ21Vf0YM4c/HuQd964B8DUdbrtALZkLSTAEjhAZNphYHwNo5QRx
	YEJyPrEVoLawX7V9EyQTB3s=
X-Google-Smtp-Source: ADFU+vvs0g+fPI9MwHEG0VH1Q8JWahXfJJqwZ3QO2Zb+cW7ec0KEsrrWHbeUJkQgjuXyvMWVX5dCqg==
X-Received: by 2002:aca:530c:: with SMTP id h12mr608655oib.86.1583190771866;
        Mon, 02 Mar 2020 15:12:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2097:: with SMTP id y23ls413175otq.0.gmail; Mon, 02
 Mar 2020 15:12:51 -0800 (PST)
X-Received: by 2002:a05:6830:1216:: with SMTP id r22mr1210085otp.323.1583190771400;
        Mon, 02 Mar 2020 15:12:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583190771; cv=none;
        d=google.com; s=arc-20160816;
        b=lBJDpNpQZiaI3FmX6uSOneJbk4sTJWK4oGtQpXgpfY7DjI5aEB0xazPgCi+ee2vPcZ
         JyWmVP/i9CWah1v5bisfuHEbCHvwu34z1/saZO6wIJiidUx7yjdiyTMM+lt5YEIUwOAU
         m6850NRFXY3r+aYRO8queoMWXY/CtrZoucgB/ECSpVOLtWlEkpuEALq19QUtHH+462Fl
         uwyNS+bOS/GtL6SNN7PXDMjPmRjwE8/lPI6FAAeHSB8jdjQNu/DCCfB0Utk3iNk5X2wr
         /D4e2Jrk2V+AQ6PJtt4QjPuLOyCkf1wy/ZabvIZCsuRZy+KTovEHbWr2aZP06SBwHdGz
         i8KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=PGCq0Yxy6j7pG4Hgd2v0OpuTunQST9E5OQ5veDQNTCg=;
        b=UdV2sPoAY5WdCGvK9Ho4Y5NX8N4N5xykFt/VBFuWSNDwUClzAYtOXMU6tVztJcQeKw
         3Au53EaVnjx2E2bGoZi4SgsPBCbtbJ3LY35KSJB0bsdUIJEJni+B6Zw8FotcssIrfwFy
         tAjQtCrt6BVHvuXVCcmfJD1xgeMWjPXv2gqngkJQEP44dg3m2PNsiCNyHGVDUlgBYUzs
         HEFoQHkU8S35mgO5QLUG1Rw6XiiblBFFbnMPy/4+RLBN7Nf5fZD6G3+0WZLd+aY4oJ4T
         gFOz07CpZiPPJr184EPB46knRFtl9Dxx2sbGJSJMTqjpf/WuMVmh4KyF2tB301kFwXQJ
         /qwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=KrHXnZUY;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id j15si817733oii.3.2020.03.02.15.12.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2020 15:12:51 -0800 (PST)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id s1so443169pfh.10
        for <clang-built-linux@googlegroups.com>; Mon, 02 Mar 2020 15:12:51 -0800 (PST)
X-Received: by 2002:a63:aa07:: with SMTP id e7mr1193941pgf.90.1583190770018;
        Mon, 02 Mar 2020 15:12:50 -0800 (PST)
Received: from [192.168.1.188] ([66.219.217.145])
        by smtp.gmail.com with ESMTPSA id k5sm6476833pfp.66.2020.03.02.15.12.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2020 15:12:49 -0800 (PST)
Subject: Re: [PATCH -next] io_uring: Ensure mask is initialized in
 io_arm_poll_handler
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: io-uring@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20200302230118.12060-1-natechancellor@gmail.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <afe86a1d-dcc4-856e-48ea-f12761036e98@kernel.dk>
Date: Mon, 2 Mar 2020 16:12:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200302230118.12060-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b=KrHXnZUY;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 3/2/20 4:01 PM, Nathan Chancellor wrote:
> Clang warns:
> 
> fs/io_uring.c:4178:6: warning: variable 'mask' is used uninitialized
> whenever 'if' condition is false [-Wsometimes-uninitialized]
>         if (def->pollin)
>             ^~~~~~~~~~~
> fs/io_uring.c:4182:2: note: uninitialized use occurs here
>         mask |= POLLERR | POLLPRI;
>         ^~~~
> fs/io_uring.c:4178:2: note: remove the 'if' if its condition is always
> true
>         if (def->pollin)
>         ^~~~~~~~~~~~~~~~
> fs/io_uring.c:4154:15: note: initialize the variable 'mask' to silence
> this warning
>         __poll_t mask, ret;
>                      ^
>                       = 0
> 1 warning generated.
> 
> io_op_defs has many definitions where pollin is not set so mask indeed
> might be uninitialized. Initialize it to zero and change the next
> assignment to |=, in case further masks are added in the future to avoid
> missing changing the assignment then.
> 
> Fixes: d7718a9d25a6 ("io_uring: use poll driven retry for files that support it")
> Link: https://github.com/ClangBuiltLinux/linux/issues/916
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
> 
> I noticed that for-next has been force pushed; if you want to squash
> this into the commit that it fixes (or fix it in a different way), feel
> free.

Great thanks, applied. I wonder why gcc doesn't warn about that...

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/afe86a1d-dcc4-856e-48ea-f12761036e98%40kernel.dk.
