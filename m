Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBRVM46BQMGQEOVCTKBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 661163627A6
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 20:24:07 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id k12-20020a17090a590cb029014dd8eb8647sf14653334pji.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 11:24:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618597446; cv=pass;
        d=google.com; s=arc-20160816;
        b=XIzANic7WTt/AV89vVXMX6tOaouLuM7UtLr/L9fWuhEg3zlyp1uQCbIBeDx9rz7uNI
         QQUxXSpJ5v+IYwtII/omhTY4LTqFZq4ccZA3BPVCSy6wN5FdAVcdaKwHH4hBEI9UslQB
         0hEz2BYYkpkGYg7tJqvrfi+5H15RQsm0sYJadBuZqgKqhtNMdUQ6u0gxvZSwkA7iS9hm
         ugXeUXXKIFkal5D1y/sJNMOMhyhaYolACJgZ5aOQepumk8/AZRo/bUNKPv0fMbGZdBT9
         /8LZallLFkkVhqAV73Rda66+YhqD0sXFoQDnq065ZsXDjj63+mmp8AeMQd3vTrfE9wDB
         kbTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=eSBNKOewKMa3Pve2SRrKvBbDQ8ZXH0Cky/yTHcpBj/4=;
        b=e3VhFJaR6ABf+x02wYBCzk9q43Iidn13txcuEgs3H/a/cL/RsxbFZS2VKfA1SV0+Gx
         vTorzs6HL5ChlfqXistzyv0vhRfrYUaHfTzIzOLO+GO8KG+K18nJowWFSDLZswa0k4K0
         ugmA6nz/DHu6SJ2cXr7e+2TvdNw590mtyGR2qX05HUngs3diVSelxUJT05JBmk1uFMfk
         B/pLDdWbdJaXgHucgo2wnWg2QdsNmYSGuCMTrTD/fNf2EvG+Q64CSfpDwqGZyQ79K6Cc
         vg6/FZDC3QpEPJ7ZYrTfiK/iP6RFTnbVB8Tt/K1EBR1cmpBwUD4yS45Hq4iKpD7Jrvbr
         +tRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qRxg1AQV;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eSBNKOewKMa3Pve2SRrKvBbDQ8ZXH0Cky/yTHcpBj/4=;
        b=abkODl94TnF3SvTl9FhiPzcpI/ZB8+3K0oCQ1MOhQ39BXfWwEQmiqs85M9JSTg6M9p
         NxFYC3BCYhLMtr14cA7+stX087RMDvJWn9ZODWJTxyWXZBj2iAov1lvcz4vMprP2NOjN
         OBz7FlbO7bWxnxkDeYcYB+f96YkUsbll4lxxyDl/fzIuGXlVxyI9UZAlwjmuFdsQAIbt
         Y8Pegd3BRaA3GU92Y75G3FnHXBPcq2AXid3PW5jDO8xw5oYpuOAt5CGf4EUvVjlHlAvj
         tn+H9fhvtXOoS5G7h7TBtjNnY5FVTfvwciqXf9pnYtVVKLiyexB/IBn4EI0V5IxmjGPE
         KK1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eSBNKOewKMa3Pve2SRrKvBbDQ8ZXH0Cky/yTHcpBj/4=;
        b=j7TfYVM7hiKYDTssOMgLBPNQlpcfex1uB+nzHysAHZH6trrdeQ3HHpilX+mQQ9DbVJ
         Jktabz5cgaheZ704BLnhMQzicP8qxZs2iIHVoc6LDjuyXFAWte0iF5zp2lb+pbwXAEJw
         t3sTJlTMnxd2x0jrv9X+IK2oU1A4PsbrKuVFSg+fhKMa8i1CR179RpODGCY3bUepRmki
         M+7n3EScJngVukoe1Z36+LXBryWKRhLKadWazxUDAFFF1gHUsR0YGQkJaxb8TY0mvgr1
         mtKwHb8m+sGs/8779ONnr+oUj5S64OeasHf82AyVEBh1BcVuew+9hV1PlrGTJIZQQGSD
         FaHg==
X-Gm-Message-State: AOAM531n/IbQ+cAmlFNV2s1RGCEP2ZH668LyiO40PJ3bKsXjgUypTTd7
	8KbTWd7knktApJPbW889NjA=
X-Google-Smtp-Source: ABdhPJxWTpr+FxVk6YC4DgMnwltXE4wxC+KJV81k9R5Uhg1R8Jn90Gi+0FBjfEbYo+wftm6Jiwa2kg==
X-Received: by 2002:a63:2213:: with SMTP id i19mr378200pgi.242.1618597446136;
        Fri, 16 Apr 2021 11:24:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:4e50:: with SMTP id c77ls3953239pfb.10.gmail; Fri, 16
 Apr 2021 11:24:05 -0700 (PDT)
X-Received: by 2002:aa7:962f:0:b029:244:8f8f:4734 with SMTP id r15-20020aa7962f0000b02902448f8f4734mr9089872pfg.49.1618597445606;
        Fri, 16 Apr 2021 11:24:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618597445; cv=none;
        d=google.com; s=arc-20160816;
        b=rJAJ2qZjKgj4E4yMqtATi/he5wn0US/mOpu2avZCMYGBIwzsfwjrlF6JbHd1vreVUg
         OgocmzZfWm5u6ca8szQJSI0ZcPc/27nRj4TPJ4z5ocE6F5WaN6thEoTP+xzmJtCUeFJq
         38hvlTO9nlPvQrUua//07PxVTl6W05NMtM+9tzUa5Gupl1l9atED7HmcD0CNImmOyb+S
         YtArv1JlXrm8++LaQHpKrsd9UdvoFxsYlUoDsUB8d0hBw1M2VvlA4uQta4uuaTb9huvd
         hzQ/Uqp4GgRSK3nBR0Rs5gqCRlte46GMnqMwOO+O5TbB9AaQvPV71CvOfhNAmRNhKDOj
         lmlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=NGL2DZ81iiy8zZ9X98sR3lExSRtmhzsEE2kmMo2vY6Y=;
        b=Y+b8dUoFdkifcqBbtdRpQUk5ipjWgWY8xiXW30OHKBXOGMOEY9h2OYA3HM2iIXvDx7
         4tglED8Rhm/oLUykgkrTvzFzr5QJOJrWml3r0Ff/zryFT7tW1NbTkSWhg42srGKftkGy
         vfycw9QxJolctQWJJVJ1ZcHPWn4Oby2uEXphZJZxvKAYy3HCblS68Bbmaon3Wmc/P90Q
         AXvE83X+WtJ2o4X84H/WYZgVGbpZ+HgQBduHg9aNkewRK/a+83Sm81mnt/XCFakGSTzY
         j5tSGsmG3UHT4SC1eJ/vgEm37dhFaHIypbWUPYyZGPXTYSIYW+XSRVBiaUZkdkuaeMAN
         DGrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qRxg1AQV;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com. [2607:f8b0:4864:20::330])
        by gmr-mx.google.com with ESMTPS id ng4si808209pjb.1.2021.04.16.11.24.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 11:24:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::330 as permitted sender) client-ip=2607:f8b0:4864:20::330;
Received: by mail-ot1-x330.google.com with SMTP id i16-20020a9d68d00000b0290286edfdfe9eso15936596oto.3
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 11:24:05 -0700 (PDT)
X-Received: by 2002:a05:6830:200e:: with SMTP id e14mt4156134otp.111.1618597444844;
 Fri, 16 Apr 2021 11:24:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210416181421.2374588-1-jiancai@google.com>
In-Reply-To: <20210416181421.2374588-1-jiancai@google.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 16 Apr 2021 11:23:53 -0700
Message-ID: <CA+SOCLL28Hej9zMmKJpU5vffVGviDo59uG=kWm0zPtCyZodR5g@mail.gmail.com>
Subject: Re: [PATCH] arm64: vdso: remove commas between macro name and arguments
Cc: "# 3.4.x" <stable@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>, 
	Sasha Levin <sashal@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qRxg1AQV;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::330
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

I should've mentioned this patch is for 4.19 only as the code has been
rewritten in later versions, but requires a large amount of backports
(https://github.com/ClangBuiltLinux/linux/issues/1349). This is the
only blocker for 4.19 migration to LLVM's integrated assembler on CrOS
that I am aware of.

Thanks,
Jian

On Fri, Apr 16, 2021 at 11:14 AM Jian Cai <jiancai@google.com> wrote:
>
> LLVM's integrated assembler does not support using commas separating
> the name and arguments in .macro. However, only spaces are used in the
> manual page. This replaces commas between macro names and the subsequent
> arguments with space in calls to clock_gettime_return to make it
> compatible with IAS.
>
> Link:
> https://sourceware.org/binutils/docs/as/Macro.html#Macro
> Signed-off-by: Jian Cai <jiancai@google.com>
> ---
>  arch/arm64/kernel/vdso/gettimeofday.S | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/kernel/vdso/gettimeofday.S b/arch/arm64/kernel/vdso/gettimeofday.S
> index 856fee6d3512..7ee685d9adfc 100644
> --- a/arch/arm64/kernel/vdso/gettimeofday.S
> +++ b/arch/arm64/kernel/vdso/gettimeofday.S
> @@ -122,7 +122,7 @@ x_tmp               .req    x8
>  9998:
>         .endm
>
> -       .macro clock_gettime_return, shift=0
> +       .macro clock_gettime_return shift=0
>         .if \shift == 1
>         lsr     x11, x11, x12
>         .endif
> @@ -227,7 +227,7 @@ realtime:
>         seqcnt_check fail=realtime
>         get_ts_realtime res_sec=x10, res_nsec=x11, \
>                 clock_nsec=x15, xtime_sec=x13, xtime_nsec=x14, nsec_to_sec=x9
> -       clock_gettime_return, shift=1
> +       clock_gettime_return shift=1
>
>         ALIGN
>  monotonic:
> @@ -250,7 +250,7 @@ monotonic:
>                 clock_nsec=x15, xtime_sec=x13, xtime_nsec=x14, nsec_to_sec=x9
>
>         add_ts sec=x10, nsec=x11, ts_sec=x3, ts_nsec=x4, nsec_to_sec=x9
> -       clock_gettime_return, shift=1
> +       clock_gettime_return shift=1
>
>         ALIGN
>  monotonic_raw:
> @@ -271,7 +271,7 @@ monotonic_raw:
>                 clock_nsec=x15, nsec_to_sec=x9
>
>         add_ts sec=x10, nsec=x11, ts_sec=x13, ts_nsec=x14, nsec_to_sec=x9
> -       clock_gettime_return, shift=1
> +       clock_gettime_return shift=1
>
>         ALIGN
>  realtime_coarse:
> --
> 2.31.1.368.gbe11c130af-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLL28Hej9zMmKJpU5vffVGviDo59uG%3DkWm0zPtCyZodR5g%40mail.gmail.com.
