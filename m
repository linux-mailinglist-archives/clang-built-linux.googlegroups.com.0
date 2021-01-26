Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYUTYKAAMGQEPW3V7UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id AB05E304B8B
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 22:30:11 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id f127sf16459432ybf.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 13:30:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611696610; cv=pass;
        d=google.com; s=arc-20160816;
        b=P3GV7iGfH89qpZW4sqO9NVNuxoYyWgK9cTlPxCv5exL5wMSjnYE8unj9dzD6adl8oj
         xTst2weKRsA3IY8nT1pwKK5djjbF5UJ+EC5TyzZI4sNx6HLhsaBAv+m2UCAhc+XxMNeE
         VXxE7xABMKuGnFHu7nnXPR975d1ZjvnvbaIBXjnl7qrE1UiT/lJ1uj2ebuidN2PWiczz
         brkN1YNsGq7JQQS50+7hSvIQmpbXhqmRfFHvVhJG13L8SRMXdWk7Q/9rlMT2EzSgVDLp
         8ycYLJvJD2eWJKc/w3csLw1h68utYq+tiiOrlPVwWavbWXjOLPlyUfqitl+oRYPj3gXw
         rJ4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yLCpOPYOtujW9jrlEKF+YS3/4PrHQvh16NR8YkJHDb8=;
        b=f5dBVPIMxStjOhlaUlHZ31oxEwEbwx2KH6pKfzsEJy0CN9M3A9QZXfElVFv9bC9oOT
         aeeF1GOsV0I0v4MUlrSO3KCC++lRzyJrULsviGL6csRaj6aGb3s7cJGH+Xb/rGH8c7R0
         kPszUc+H06nRLuaznQuC7Q0+IAvuYD29yfAunaCj6ARcX4op1091dTCE6SfKLLT0pUN0
         JEx53C9LmSnOkcMI/xnNY8OI1F/pGcedEc8kZjkkzIM7GRrgbA2K/1EqkCMIZpwrzs7n
         +o5wyhPtKUKkR8zVb+nPm+2+sKJnjDsY6OWZUkfY5QvdMH67Ga5cKZM8dt1rlW7xVNsd
         oQLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vs3D6j9F;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yLCpOPYOtujW9jrlEKF+YS3/4PrHQvh16NR8YkJHDb8=;
        b=Y8nM36ku4vJaca2UQHb1Gv6Ppa+SpTYHaOsoMIALBB4VSUoTxX8cdUVI8YaNLMWWQr
         NN/EsU718kaupTRi/UiF6G8Ql6KoDx79hkmfmRI5N7WGdzkAEKNYFN+57MW7ORrNNRW2
         THFsfE17okw1zv1nHfSnbXt0y9Tt9/vupGcCTXltDaV8CQVfRPvt7JiPsMYG4xyWt8dU
         kfvliWU3Gs6cv3PWtHv+K9mH0yv3t14HGtXw4HN4t8RDHyOIoW8MeQ5xjXOFgvxv+nEQ
         KeT6x3rzGvNZC6SGVjmO8Tf633zTCzSgvwJREFLqJkUYwyAZy0Q8sD+TagEke8UHcMqt
         0KGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yLCpOPYOtujW9jrlEKF+YS3/4PrHQvh16NR8YkJHDb8=;
        b=RuRPrRLcmF2a1YapnkFnjEvhqfNJYKW60TagQPybODZlSpad+ja9+M9JYfTXdCtJEK
         cimeneIxEkMN3LAYSp6R0/qfuKbniSlRK6Z415sGrDT4dG2d8At4ok0z1xG+OqNDli/h
         v6a2aOkzC9Q4ov/vhrN7mbS/Wpy3l7M7LxtQHSEcBS207zeQmcUEOQeGf6/efHoDYFNB
         Ll9cau+U4MKgJ1JtiWo4b1rctOXNODcBiMaeoYf5PyfhrplEx+WF8tJKHd1LoWRiqU+F
         N+jp9wndA0DWPvMDOhj+0rWiPvEX/4ThbfVA8QByZOtsoay568WWP3FUsQPnlf9ZHBcT
         f78w==
X-Gm-Message-State: AOAM533bi+OT1CIkXT9llW5qXuF+K2kMlcHmgrQ8CNFIsPJQm3lMI6hG
	8oxo2jt1ym5PdOT0IFPUm9Q=
X-Google-Smtp-Source: ABdhPJzuTg1mWVqkLC78RR9F7TXD4HmWT0Huie5jBxwdCXuHnzNqsRo1vLtNbGSCVn+ruyQqLRoqWw==
X-Received: by 2002:a25:c50a:: with SMTP id v10mr11209677ybe.361.1611696610485;
        Tue, 26 Jan 2021 13:30:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:af4a:: with SMTP id c10ls50280ybj.1.gmail; Tue, 26 Jan
 2021 13:30:10 -0800 (PST)
X-Received: by 2002:a25:1002:: with SMTP id 2mr11487942ybq.410.1611696610017;
        Tue, 26 Jan 2021 13:30:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611696610; cv=none;
        d=google.com; s=arc-20160816;
        b=y/3xMJkYBN/4/mDupmwffDHlJ/IXCW2cRl7z+y5Q1xotJv0vZXyFYIVOijZ6dgQGNZ
         lgUSkNaiCYXOEtcPrMAkONfA3XTBuYIdgXSmlhzpDsVsQGHDgW70C7O7L1jGxEfHqP2v
         NDeRQMQvQuoFYAXjkEvV3IyYnKzYoQ7ghVJRPyLP6XbsZ/EOwn+3Jlbc7mB91401TiP/
         7H4QQlZ8Sl8HaFPQSIKjYk7UlHBbCJD7CCX/L0k5NBWr9OG+i3B4ciaLURg8vhlfg9Sk
         7M73su2pfNG7jUfXHoW+EBLlGQgB2hXbDJJ7H6ND65oRDdmv1HbXTvJrACgBHltU9GsI
         9mwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xPhH8nCzVbNzJsc/BNpQKLyOyxnyLT0e84sZo+cfEdA=;
        b=KhxJcfxjLQ5aqLe4CwZyQZf/3SvfZ5pkag2gOKZNEvNgmMjkHD0OjeIY6wgMffqU40
         xRq2tCJQbYvRG9+jRL7/Y4mD9pJBh7Up2VM3X4bBP0DoY93MBl5nV55JOjoRCnDUzWnE
         quR7JzDbQYy0b/a8eL77aixR4b5BAJlu4XF9rTssrsRBQJhVdRBoGQqUKcY9mPDrbpVU
         tj44qmBz+Izl/mo8GrZQNVJvPBhU6cmEp1x6y6gfDoiwXFKJvK1KkxhrkNHFpTnp0yoU
         3RmhNBFnAj+7dcStzou7LMRHrRmOvu5TpevoJpRWkUUBU8mRpv0zAZnaFzgQ9Ihq6ZLK
         CsWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vs3D6j9F;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id i142si6324yba.5.2021.01.26.13.30.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jan 2021 13:30:10 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Received: by mail-pg1-x52f.google.com with SMTP id o16so91207pgg.5
        for <clang-built-linux@googlegroups.com>; Tue, 26 Jan 2021 13:30:09 -0800 (PST)
X-Received: by 2002:a62:7896:0:b029:1b6:7319:52a7 with SMTP id
 t144-20020a6278960000b02901b6731952a7mr7456699pfc.30.1611696609419; Tue, 26
 Jan 2021 13:30:09 -0800 (PST)
MIME-Version: 1.0
References: <20210126212730.2097108-1-nathan@kernel.org>
In-Reply-To: <20210126212730.2097108-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 26 Jan 2021 13:29:58 -0800
Message-ID: <CAKwvOdkpJn=e+4cuX7-F3AUPhSGKGqG1SuNtZTo1FKCLFjHSGQ@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS/.mailmap: Use my @kernel.org address
To: Nathan Chancellor <nathan@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vs3D6j9F;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Jan 26, 2021 at 1:27 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Use my @kernel.org for all points of contact so that I am always
> accessible.
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Acked-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  .mailmap    | 1 +
>  MAINTAINERS | 2 +-
>  2 files changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/.mailmap b/.mailmap
> index b1ab0129c7d6..b25a44ab5ba6 100644
> --- a/.mailmap
> +++ b/.mailmap
> @@ -247,6 +247,7 @@ Morten Welinder <welinder@anemone.rentec.com>
>  Morten Welinder <welinder@darter.rentec.com>
>  Morten Welinder <welinder@troll.com>
>  Mythri P K <mythripk@ti.com>
> +Nathan Chancellor <nathan@kernel.org> <natechancellor@gmail.com>
>  Nguyen Anh Quynh <aquynh@gmail.com>
>  Nicolas Ferre <nicolas.ferre@microchip.com> <nicolas.ferre@atmel.com>
>  Nicolas Pitre <nico@fluxnic.net> <nicolas.pitre@linaro.org>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 992fe3b0900a..f9a360103daa 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4303,7 +4303,7 @@ S:        Maintained
>  F:     .clang-format
>
>  CLANG/LLVM BUILD SUPPORT
> -M:     Nathan Chancellor <natechancellor@gmail.com>
> +M:     Nathan Chancellor <nathan@kernel.org>
>  M:     Nick Desaulniers <ndesaulniers@google.com>
>  L:     clang-built-linux@googlegroups.com
>  S:     Supported
>
> base-commit: f8ad8187c3b536ee2b10502a8340c014204a1af0
> --
> 2.30.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210126212730.2097108-1-nathan%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkpJn%3De%2B4cuX7-F3AUPhSGKGqG1SuNtZTo1FKCLFjHSGQ%40mail.gmail.com.
