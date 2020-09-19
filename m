Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBO6RS35QKGQEMXVOZJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 954D7270B32
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Sep 2020 08:44:13 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id q5sf5039469pfl.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 23:44:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600497851; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZGR93tYNbdSC+4lHxawnPOivUTAWrgIZi5IucDy9w1l0nKOfi52TsWD+rgGMuATqqR
         xp8VI7bwl+mWWqrWB29OZBJlFyBJks+/i+NKqCgIl0Pi/5nTFBRDIdTTi7vIePZHVyuj
         YMCeOvmbJkVdI1FLbyzbMlos/xNOSsn2LanTmzToRL1Mi3UdAwvzZVJPnaqep79YsEGr
         OM1KGHwGMTQX6QkqSjqp6oOjNPxs88Iby1OsdwnF0OLxIhAuAoUGolPaa/J56c2Sy0YZ
         XZkw01n/5PdOy5XwEsVfEuqPuhnQsLIxdM12YRJZjOQ6uDzGgnoh9n1kLaaZxzPWdQZQ
         s6CQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yuEInWm7fSgZFe7hb87zsmekL1fbznOlukd9kRojNPE=;
        b=zhViDzR/MSfqawoFGHz9JUxJRNMfYuUzZz/sG7HMuiqeiJTJ69ZcAEDWb+dXESAmn0
         Y6VLsuqh3zlLA59v6xFI9fmQUPkGsx8zOx3HG9HXvPK8jZCS6yNwYM2em0TC7VNdflLJ
         IEJh58gDHYCcoyi8W/VGuCs41XAK/N0quTej4udHRA7ytilxW/tHBF3zUDnhD0UW+qUI
         SD3iFOV7oMUTlRVZixGa65xLB+GE2QhGOt1kdny0oMZW2NZYYc/owfqIsRHT86XbenE9
         nahviDsUOwRxrCqKNxDsZm3foUwvnjL1tZ6E1i7bDcRWTmbaVTDTCmGwapOa3JJpFViG
         ldeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cyLQWVzC;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yuEInWm7fSgZFe7hb87zsmekL1fbznOlukd9kRojNPE=;
        b=Fz2kMUveRb5IJrsHX6ealKY13udvzzXQadetqzhRwnhTd0lXs6frY4pcuS6nBo76GW
         +EBOLWVZ+PaV3Y3f8KiQcVOdLz1QJ0m3CWBnptUbaZ7KYaIhPPPwuKHRUqZhMFaclVJA
         AdpxfcUF88FFGmJiL9KH3LQVvMGby4d/QVRbaTFamx8gBdViMNhHVCeIjs2QVvL05m1g
         GXd/wpvcB9mMVePhG7ps0TPF9CESuw1vh/RyF/Pd6nF856KaMTNoHhzWDY5RfGe+aK5k
         chwO4wyV3JCR5wQ3kMsRdOvuburTYg0gw9x1g/CRx1G/71uRRqbZ5dqAtSRperS5iFoJ
         W0UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yuEInWm7fSgZFe7hb87zsmekL1fbznOlukd9kRojNPE=;
        b=expGlwgPgP3zs9Me2tDKKsvDjzw2RoMcZ2c8O6noJZnGbvB1f9q/1WwHJuEcLMcm3Z
         TgfSQB1bDeh2OKTIWuNaEnevYzQP7SO11tBHv8cBshDDI+/2xj6XloHqvVByY9QrU9QG
         gv7mBgsl8xTRHW4nKapSm/N88tOfMqEKwhEbnuFKSWPS10eaoENFXFot1tNkfS6yxMW4
         v3yovb4awFjUMQ6ag/x+bjeDC1D9cDyA8GmF3tj3eoYmuBYqDmRH3M8OD/ocZQFdk3co
         18uRiid1SHVj4cfCsU36oouglTUHgpIjWgJfEwf5ohA+eDO2IvLPRdRsBftI5POj6WlD
         QaWQ==
X-Gm-Message-State: AOAM531XusTbmLYyF7iGtygfcWIs2o0ox8TwTFLdVDd/l85MQt1TjanT
	2G8E7N82flmV21nGqtQob88=
X-Google-Smtp-Source: ABdhPJwv9P4cqRYbkPAbKoRmPM/4KQ5RjNo6vV5rxyd+X4dHd+z274deWv4iVl3fBhwNfDlUrPfYDg==
X-Received: by 2002:a17:902:d714:b029:d0:cbe1:e7a2 with SMTP id w20-20020a170902d714b02900d0cbe1e7a2mr35756156ply.19.1600497851621;
        Fri, 18 Sep 2020 23:44:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:45:: with SMTP id 66ls2943316pfa.1.gmail; Fri, 18 Sep
 2020 23:44:11 -0700 (PDT)
X-Received: by 2002:a05:6a00:1b:b029:13e:d13d:a101 with SMTP id h27-20020a056a00001bb029013ed13da101mr34229691pfk.29.1600497850978;
        Fri, 18 Sep 2020 23:44:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600497850; cv=none;
        d=google.com; s=arc-20160816;
        b=xBcoZmwy+cyeLitNs2IIpC0r2TYkMCQQaeRa+ncP+1UJ5lwIJ++2vLCyUrsOMI5j6U
         05uSX4MBwTNTqIrQEpvQK412/2yH2iTCPqn3ZtjlrZArcxhteCbM8m7sEbVB/s4xr0CT
         dOWF4nwM6s27IDKWA0CUyPVu0WRmWx3SVKamZYfDa9crveUfcH/JnFzCTl3saq14enLj
         iWPkHwTjLvku7EWfEWTI1xr60IiPxU/iNIbqKipYTNDF71SnMliOzV49L8qiAQ8Qhbtr
         7LK+SYekxV5RK4RZHnYDrPNImnnev/5RjtWrN3GS3OAcXXdN3B4zggJnBxhk7iNX66KJ
         yLGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xxMRWpqFMW35rqNi5wTKblzpN8rt4YbGzNvX/rQXDjw=;
        b=JlJtSpQ/O4JF2yJDiMzQK3hXGFo+VsCQ3soSpLTZTxzy97dW9/71btd9p/fNza+y4d
         fB1XHjqqZFTvtNSt/iOpFg+RsPpESIb3nAtkzqivZG6aSSBMP5PY/slL7AAUv5ySnFWA
         71KYkqJiNqjE0WtWZ15KnFQU9YKCTVPJxu1CfmEqX38qhF6sCmpshAYYawqvLoKnhgt8
         tKWG/EyazEnApDXS+zIGS15S2W8zfFp3D9C5/znlMiiO/wc3uRy2n/Sx5BMJrmLmaNLT
         FRi79UoyY7e1LkUPloD2uomlc/EdvsT4yTBpm26gX6sR2uSiwcPXmZ0gJYY1stROBPba
         y3Uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cyLQWVzC;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oo1-xc43.google.com (mail-oo1-xc43.google.com. [2607:f8b0:4864:20::c43])
        by gmr-mx.google.com with ESMTPS id z13si342333pgl.5.2020.09.18.23.44.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 23:44:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c43 as permitted sender) client-ip=2607:f8b0:4864:20::c43;
Received: by mail-oo1-xc43.google.com with SMTP id g26so1992153ooa.9
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 23:44:10 -0700 (PDT)
X-Received: by 2002:a4a:4fd0:: with SMTP id c199mr26710623oob.54.1600497850120;
 Fri, 18 Sep 2020 23:44:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200918133632.4038538-1-georgepope@google.com>
In-Reply-To: <20200918133632.4038538-1-georgepope@google.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 19 Sep 2020 08:43:59 +0200
Message-ID: <CANpmjNO82DrJSeeTS1m7WQKbfHD7FQKxf6e07EcP5qd80CdStA@mail.gmail.com>
Subject: Re: [PATCH] ubsan: introducing CONFIG_UBSAN_BOUNDS_LOCAL for Clang
To: George-Aurelian Popescu <georgepope@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Dmitry Vyukov <dvyukov@google.com>, Peter Zijlstra <peterz@infradead.or>, Arnd Bergmann <arnd@arndb.de>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, David Brazdil <dbrazdil@google.com>, 
	George Popescu <georgepope@android.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cyLQWVzC;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c43 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Fri, 18 Sep 2020 at 15:36, George-Aurelian Popescu
<georgepope@google.com> wrote:
>
> From: George Popescu <georgepope@google.com>
>
[...]
> Suggested-by: Marco Elver <elver@google.com>
> Reviewed-by: David Brazdil <dbrazdil@google.com>
> Signed-off-by: George Popescu <georgepope@android.com>

There's a mismatch between From/Author and Signed-off-by email address.

> ---
>  lib/Kconfig.ubsan      | 14 ++++++++++++++
>  scripts/Makefile.ubsan | 10 +++++++++-
>  2 files changed, 23 insertions(+), 1 deletion(-)
>
> diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> index 774315de555a..553bd22e83ee 100644
> --- a/lib/Kconfig.ubsan
> +++ b/lib/Kconfig.ubsan
> @@ -47,6 +47,20 @@ config UBSAN_BOUNDS
>           to the {str,mem}*cpy() family of functions (that is addressed
>           by CONFIG_FORTIFY_SOURCE).
>
> +config UBSAN_BOUNDS_LOCAL
> +       bool "Perform array local bounds checking"
> +       depends on UBSAN_TRAP
> +       depends on CC_IS_CLANG
> +       depends on !UBSAN_KCOV_BROKEN
> +       help
> +         This option enables -fsanitize=local-bounds which traps when an
> +         exception/error is detected. Therefore, it should be enabled only
> +         if trapping is expected.
> +         Enabling this option detects errors due to accesses through a
> +         pointer that is derived from an object of a statically-known size,
> +         where an added offset (which may not be known statically) is
> +         out-of-bounds.
> +
>  config UBSAN_MISC
>         bool "Enable all other Undefined Behavior sanity checks"
>         default UBSAN
> diff --git a/scripts/Makefile.ubsan b/scripts/Makefile.ubsan
> index 27348029b2b8..4e3fff0745e8 100644
> --- a/scripts/Makefile.ubsan
> +++ b/scripts/Makefile.ubsan
> @@ -4,7 +4,15 @@ ifdef CONFIG_UBSAN_ALIGNMENT
>  endif
>
>  ifdef CONFIG_UBSAN_BOUNDS
> -      CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
> +      ifdef CONFIG_CC_IS_CLANG
> +            CFLAGS_UBSAN += -fsanitize=array-bounds
> +      else
> +            CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
> +      endif
> +endif
> +
> +ifdef CONFIG_UBSAN_LOCAL_BOUNDS

Unsure what happened here, but your Kconfig option is named
UBSAN_BOUNDS_LOCAL, yet this uses CONFIG_UBSAN_LOCAL_BOUNDS, so this
patch unfortunately doesn't work yet as you intended.

> +      CFLAGS_UBSAN += -fsanitize=local-bounds
>  endif

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNO82DrJSeeTS1m7WQKbfHD7FQKxf6e07EcP5qd80CdStA%40mail.gmail.com.
