Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4NH4DZAKGQECDAGFPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A8F172857
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 20:09:38 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id s71sf629432ill.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 11:09:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582830577; cv=pass;
        d=google.com; s=arc-20160816;
        b=JyHn1Jrmz33xJ0r7iJm2B2D7ISe6pUh8c+vtfjvHOR2AgTCDH9RqWKPVtAZ9es+uqh
         JNrV6Kx3/2Ica5A3LOqqfhlpUg2yOnvTAXMjxKzEzqPiHRIxjAvsaP5g4qCRVwZV6kuH
         nj858xYOTeBIBL4UTrlZZBDPzDICYFp846dlmiE93/6ysD0RRPH+WcFP8XcIq6+I1jTd
         QxfcNA4OLLECkuqQgEBHFu1fl1iyvT4ut0qZ8mm+6Uh3eIq4oT4PGGtrpnY1J+KtEC7m
         wZUqyy/3WNybKAIa2s2vUdxWJU0fW7TQYNaQujT2v7aT+W08bNEI8qezJE+u08Jcclq7
         NCRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zdzlpWEualPQhQLK4BI9hEoow/Z0ox4tMXf0k62lXS4=;
        b=M3Qtldwrbo3CjjS3/tY000zQVD02AaMP5fA7ayafWQ3qMwMtWfyf49+M0vTz3NjH+N
         qxSL6K8Zpe/Ppl49s2sKeyeThsD24Wgm94809pJ9OnkpA64aTkz5BrJ2IcRI4aM3xsM7
         MDLEFhqPEgN/OffRV39aQiKZf/wI5rZ9nEt7v5ikWfSGyfOINS0CTS05hjSe7Dw9GbW3
         j3NgubTPwpPT9akV0XSwmUme5KR1ZOuEXPD0NXXw4ueUYeq+4WByY4etjQPRURMqrb2o
         RIKrYDJ3pbB4/q9DcrTfsj0V9EYjP1SLQye9CaB3HwCCVD7b+MqH21Dq2S04YSzmJ1na
         drlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kamb1Svg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zdzlpWEualPQhQLK4BI9hEoow/Z0ox4tMXf0k62lXS4=;
        b=lBttK7y2oGRPDtDIncssDTycq37ftwQY4R51r4yaF5RFbzvbuAaUXvQaZfPjw/ZWtt
         E1A6km8CumARxnxBch6IiW98ocQtTlIN35gHAEf6BDghghYfefX3V0g86e1x2YCDzuMs
         e+5ozqAv69xD1p3r2u6WG5khoWqcAQmv+t0hfMVE0yjBtjJrIvNcZKhNs1oTEiVoXlL8
         Uk7+x4jLQTcfHPqNladqIwPs5ZOHgIOv2XRmis2BJoba+dCnE7Ivd3Xbnp4WYHceW8Oq
         RxOurGcbQVppl2U+BdMqF5FxkbfEeoIpIdhpwhmVcBLKcwD1IC8VzWIHtiMrs+MZjdQL
         5OeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zdzlpWEualPQhQLK4BI9hEoow/Z0ox4tMXf0k62lXS4=;
        b=MKFWAc7KZgoKJRoyK2G+WvW3sJ4Ha+hxSaAxc6EYjVAjsbDiICgY2+BHp7xKviZubF
         OKlDXtaNLseiXGuEuf/2huif6TyUknqJQrineV5GpmK+xOH2Pu92auWG45WRkYHU5Utz
         tcnVTnAd6zUuSCRtiuDNHj0xLN+e/8pQ9+hotIvti/7JfY+D0dxxMuoYygGs+jN6Enz1
         BvMuk0F7WTpSge3ksmY02Dfeg/tXnTQt2kbHRkp+YDg/2KwHg1I5nFk7G8qYSkj2QJ5U
         jDMnFFD+LrDJCa+ZAomxN9gEaf848HNr9tXO8ljNA2vDKt1BdOQdyajjRf5e0PbeTNWY
         Ossg==
X-Gm-Message-State: APjAAAVvNc7oeCo6XqYZsDYu8KdoINtRZYub2dQ917Jkndh14s0/D7sN
	jXp300swKSeoqSYFawY+JeM=
X-Google-Smtp-Source: APXvYqw4prLqKcUCO9WSQwMCcnNGQ57np9BuwaCiYf/XCK67Vt35PpsiA0BJi3fulLdKllvvBVE9iQ==
X-Received: by 2002:a05:6602:2113:: with SMTP id x19mr644107iox.227.1582830577674;
        Thu, 27 Feb 2020 11:09:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8787:: with SMTP id f7ls112628ion.3.gmail; Thu, 27 Feb
 2020 11:09:37 -0800 (PST)
X-Received: by 2002:a6b:db0d:: with SMTP id t13mr625852ioc.171.1582830577304;
        Thu, 27 Feb 2020 11:09:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582830577; cv=none;
        d=google.com; s=arc-20160816;
        b=eBB6lvhCd7unlYEhJix4qkqoIIxHgmb2fIhsQqc4FaSd+o7cAIsLo+AbScVsjuPAOb
         IY7+E98dm87aM8dupFWZeGn/+oUHl9J90vBIHIwFbM/fih253fZorb38Kh+l8yu4QcbI
         uUzokehcdZwp8AwiAee282sHYWR3FjMOjF22LwY44JytcklvSwz7pNDqFXGlAT1ntBRp
         hp8ZXjFJP/ow2gtR64sD6oXDEjWnp50ygspmv/2xS1nQeLjcqaXuBQC6qr+jSI1YJAcw
         6uIp9RpTRem1ssZdc7PW0s6oa7sflea2z8on1SwsMzgHm/aJqVoTmFBLY+eWeaF26yEW
         QGnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IIUUVcQLz6sKgnI4FMJ5K8CICSDgtCiRkSBsjamGD9Y=;
        b=irL3XarQ1V//1hSga0oNsuT8GsosRL27t8iNwXsgO/+xBVM+NmHuNLOkTYL+8kGrPw
         9DzV+KTafrLDlwjNdy2X/ykDi5n2WjI7Qy9e7ksGHw2YyWxbfhdqf7L0oGKKGemQ8HAv
         mDS611p90Te6gULdDLz+HJMCweBgY2cnGobITYW+F/LRA1K0TRy/6LBINYv9m+SJWJEE
         EPz9uAWa+JEbZm7UjQT4T3nhIrKSCFRTuvkG4KLBmLLvDbgPeCaSG6soCR7MYXU6XzPS
         Dm1D5bHvdfBIa1mpMB1iLl170tIzBZw7JgPnLExgxLv0Q8NQUbYO0oOHz/AruEtnOJ6d
         hkTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kamb1Svg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id d26si22930ioo.1.2020.02.27.11.09.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 11:09:37 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id 7so184765pgr.2
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 11:09:37 -0800 (PST)
X-Received: by 2002:a63:4453:: with SMTP id t19mr724146pgk.381.1582830576299;
 Thu, 27 Feb 2020 11:09:36 -0800 (PST)
MIME-Version: 1.0
References: <1582822342-26871-1-git-send-email-hqjagain@gmail.com>
In-Reply-To: <1582822342-26871-1-git-send-email-hqjagain@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 27 Feb 2020 11:09:25 -0800
Message-ID: <CAKwvOdm_6cBtRexkmbkj-NF3WTTDc+UzcZkQXfa05BaYvaLX=A@mail.gmail.com>
Subject: Re: [PATCH] kcsan: Fix a typo in a comment
To: Qiujun Huang <hqjagain@gmail.com>
Cc: Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kamb1Svg;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Thu, Feb 27, 2020 at 8:52 AM Qiujun Huang <hqjagain@gmail.com> wrote:
>

Thanks for the patch.
s/slots slots/slots/
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Signed-off-by: Qiujun Huang <hqjagain@gmail.com>
> ---
>  kernel/kcsan/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/kernel/kcsan/core.c b/kernel/kcsan/core.c
> index 065615d..4b8b846 100644
> --- a/kernel/kcsan/core.c
> +++ b/kernel/kcsan/core.c
> @@ -45,7 +45,7 @@ static DEFINE_PER_CPU(struct kcsan_ctx, kcsan_cpu_ctx) = {
>  };
>
>  /*
> - * Helper macros to index into adjacent slots slots, starting from address slot
> + * Helper macros to index into adjacent slots, starting from address slot
>   * itself, followed by the right and left slots.
>   *
>   * The purpose is 2-fold:
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm_6cBtRexkmbkj-NF3WTTDc%2BUzcZkQXfa05BaYvaLX%3DA%40mail.gmail.com.
