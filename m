Return-Path: <clang-built-linux+bncBD63HSEZTUIBBXWC6X5QKGQEXYB7AYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E81A2858B7
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Oct 2020 08:34:08 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id u16sf666013plq.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Oct 2020 23:34:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602052447; cv=pass;
        d=google.com; s=arc-20160816;
        b=F3Op2VY3+cKNnCemyfw8fB3SDog9+RmM4vWTKKUcdUpevj+0YnD7UR7cdUEu681Kv7
         kHukVLsb2jWioyEAooxoZqUwaU2VMafZDZ+iVExcmrmN1tcyCjjz3/+K9cpbbRGbnWIf
         TbiZAkZIVfsCDDhO/9BnjhBJhukKdin2+80o8adUnnvG+z65vWxWquRxWST0e4vU1WG2
         VryVUcSwUlQJn7dwc7w0czMNU1G9j23A8PYgkWhlF5DVNBGo7dZzEqL9Fq+yV1ABvh9u
         sfv1+1/jDDmDrW/hxjbpgsiBq3InJQrusVpPEOZw5fBR//a5JMpzcJAwSuGHtKGqWIFQ
         jDew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=70TmkZJTSD49gRCqV9C1JJFI5DDgb2kJIQDG7+5hAZk=;
        b=Va/EUyRm4fH91r2k2qF//XQYDyA3qizGWEdH/xcn+Tnd+QxPwixWm4nhFcodnvWt2A
         erw9ZaqyfME5ba/FFoVgvm41GlOGaE7RlExiJGnLl50dgFNrrqX1wBFqUk7NIfEmnLba
         X5soK+h5ePexKifANodCr2/2i+RGVOF98lvwrtz1x78CIePWrqGHc1kmhyipgU2DzeQr
         eiUxcGG/A/rz23oHZ9qaGghwFYWwLh/rMqwLpnaF2oC+bNzLDdApBbflapGLonQs6DRZ
         eR8973k25ksFSpJV3UMS6MF6i3HxMnVsrAALyT6kqG8zsszbGara/pRse6+p1ub0ZZXn
         83Iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=V8Vno4xa;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=70TmkZJTSD49gRCqV9C1JJFI5DDgb2kJIQDG7+5hAZk=;
        b=QUl4kOWK+jtOv8SS1191fSfh8AFHeMeaMVtqECS3WkMeV1AjpDhNccZYkOUQnzrw8N
         2Qzl/jNp+prWNWoKU1S9KsS41gKpsOh7sEM6dbPzw6tr/mw4N6ql0PRLpc1j8ltDuqec
         9B8KSRunM5K07S+3I2p8deIlQbXOWFeM7e/tG157O0VcX60hCjoiJIsfGzyxcz0/q3H7
         qmkvEldyVyUAvE6au6HjmkgoMuMFs0e13KSyrMu+mAIFdKAbWETd7xAx2UCEcGto4LDu
         Npcu9Er5VVEzGqTqKXQeDIzJkG0mkLAFyqZWJpS7tHt/Yof/R7Qej+2le7Iuv7J2bMMQ
         4m/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=70TmkZJTSD49gRCqV9C1JJFI5DDgb2kJIQDG7+5hAZk=;
        b=iep/QRiwhmdQeYg7ozGZYFrM5ztaVh2+KCJ1tNNffLZm+oVG3EPnvc7v2l2ClMtc2P
         ln39odPDqUsQmOZ9Rmqshz1oZUI9/xYZemrvaWmBrJKVXubydZUQz6H8CFnIys4dat0x
         /h/GvD7JUUD7t15zKLC9d2JH+g51mPV/4xj23/ZdaRNcvSuKj3WysvaZWuFqLQ8j1Cjn
         uTtxZPGjf5olFsjD5V2Dzy2OsE1f4Z4sb2R12lM7nwtZzdAyFpitvCDjWuy2BqH6MkFu
         HAA+7UlzgLR9GCCN3jCnutjtTmT7XY7msy8HBmjZnTv/BoB7UbM7RBOBGTUvo+O7dPCe
         37aQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QOWBVlJl9qJqpPmas9aVh3oek4dcS01EUVjwKOE7SbQK/6vdm
	tfTJPC1DjMP8P3sNeAgC4PI=
X-Google-Smtp-Source: ABdhPJyUc0nd0ju62xIuH2+1TRwK/nWPgNaACuTwRkF7wnjf/QX6qO/FGRORifLVCSZmcOxmmH6Dkg==
X-Received: by 2002:a17:90a:d684:: with SMTP id x4mr1595716pju.57.1602052447026;
        Tue, 06 Oct 2020 23:34:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d4f:: with SMTP id 15ls564305pgn.3.gmail; Tue, 06 Oct
 2020 23:34:06 -0700 (PDT)
X-Received: by 2002:a63:1925:: with SMTP id z37mr1719061pgl.23.1602052446374;
        Tue, 06 Oct 2020 23:34:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602052446; cv=none;
        d=google.com; s=arc-20160816;
        b=HdGnd1sr2AJtWpqpVEtpdQmUI4kPuSJQrH57/2utC4EBOvVGC+Mlh44NUIfkrnVUOd
         BS2Xsjyg3cKGjxfh/XDKcAMa2fZfZBXh0fQ/hUFlT4BeOctbZ4pRCgl36yRIdyTVbuju
         Ds49iMK5nT74IsEUc3DH0AU0/opbeTecD7pzCIr1ZwinARuVL3uZJmUydH7AYVEO8v6Q
         yo4kwfLKXLTFBZYVhYLoxb2vMcif38h6edN/wQ4UInwsrNNRWyhRH68VoFvATqLvhcPI
         0zxy2maqB2tMUWa5dQd7esRrm327AkVq9Ax/ZHnq5S+IClBxS8+jH/v0zpL2kqbCJLQY
         CxHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rKIFm60cWNjrLbsJ3A4ku6q97YOSy0+cnPLjgYCYMAc=;
        b=wFPStszicx+g16eg6ZuSQtUAeLQRkg7IaSOZ3viz8VPtttm7iet63toXrIRUkT5vWd
         j3l2DovzQX6i320HFn+1r/3rq52OeO7O3l5cJPSBfTqIaGvdJY403hidsziW6bkNFWv/
         nTLi7EsdP9OkLkax8cPi8DlrlSnKYqHATN4zm1e4ZFFohIAQGTlzxOrNXgycHojOeiPi
         Vv/rmJNISd0DUcN/XFmxnDbBAEnR3mhd9XgwIjifPEgpJph8cvPCwnrrvZwnAFTEEJcX
         1vS0GRcVs6HCOv5cRWKfYVlBZPS4XGbZNLSqUdkZsp8cPdFunR2SoLuSI2kWzG7XHkO7
         0HOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=V8Vno4xa;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m62si89224pgm.2.2020.10.06.23.34.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2020 23:34:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C0D3D2083B
	for <clang-built-linux@googlegroups.com>; Wed,  7 Oct 2020 06:34:05 +0000 (UTC)
Received: by mail-ot1-f47.google.com with SMTP id d28so1276381ote.1
        for <clang-built-linux@googlegroups.com>; Tue, 06 Oct 2020 23:34:05 -0700 (PDT)
X-Received: by 2002:a9d:335:: with SMTP id 50mr921206otv.90.1602052444976;
 Tue, 06 Oct 2020 23:34:04 -0700 (PDT)
MIME-Version: 1.0
References: <20201006195848.707504-1-natechancellor@gmail.com>
In-Reply-To: <20201006195848.707504-1-natechancellor@gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 7 Oct 2020 08:33:54 +0200
X-Gmail-Original-Message-ID: <CAMj1kXF0L03+pOEyvZXpfxdd=FRyQia7k-tf9XZ4sSpwEpLmnQ@mail.gmail.com>
Message-ID: <CAMj1kXF0L03+pOEyvZXpfxdd=FRyQia7k-tf9XZ4sSpwEpLmnQ@mail.gmail.com>
Subject: Re: [PATCH] crypto: xor - Remove unused variable count in do_xor_speed
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, 
	Douglas Anderson <dianders@chromium.org>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=V8Vno4xa;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, 6 Oct 2020 at 21:59, Nathan Chancellor <natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> crypto/xor.c:101:4: warning: variable 'count' is uninitialized when used
> here [-Wuninitialized]
>                         count++;
>                         ^~~~~
> crypto/xor.c:86:17: note: initialize the variable 'count' to silence
> this warning
>         int i, j, count;
>                        ^
>                         = 0
> 1 warning generated.
>
> After the refactoring to use ktime that happened in this function, count
> is only assigned, never read. Just remove the variable to get rid of the
> warning.
>
> Fixes: c055e3eae0f1 ("crypto: xor - use ktime for template benchmarking")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1171
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Acked-by: Ard Biesheuvel <ardb@kernel.org>

> ---
>  crypto/xor.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/crypto/xor.c b/crypto/xor.c
> index a0badbc03577..eacbf4f93990 100644
> --- a/crypto/xor.c
> +++ b/crypto/xor.c
> @@ -83,7 +83,7 @@ static void __init
>  do_xor_speed(struct xor_block_template *tmpl, void *b1, void *b2)
>  {
>         int speed;
> -       int i, j, count;
> +       int i, j;
>         ktime_t min, start, diff;
>
>         tmpl->next = template_list;
> @@ -98,8 +98,6 @@ do_xor_speed(struct xor_block_template *tmpl, void *b1, void *b2)
>                         mb(); /* prevent loop optimzation */
>                         tmpl->do_2(BENCH_SIZE, b1, b2);
>                         mb();
> -                       count++;
> -                       mb();
>                 }
>                 diff = ktime_sub(ktime_get(), start);
>                 if (diff < min)
>
> base-commit: ed4424f2fb02497b0ea92bf58c533c598c0da1d3
> --
> 2.29.0.rc0
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXF0L03%2BpOEyvZXpfxdd%3DFRyQia7k-tf9XZ4sSpwEpLmnQ%40mail.gmail.com.
