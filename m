Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZPAU7VAKGQENQQTVYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9969E83B05
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 23:25:58 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id e25sf56795517pfn.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 14:25:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565126757; cv=pass;
        d=google.com; s=arc-20160816;
        b=hze5pZswoJPC4D9K8A/EjWq1cS1QhN8FsZ9ZpsiP1p7LVlAqjfoGpM9W6WAX7fdEyC
         ayU03QVLiyyPvUC4QLNp0VP0sSt6U6QjH0vVqyBIpa8Ow0a/HVI0skNgN9mGb8jO5LBr
         bLuqh8XHtXCp7LjQ012elZX8q4ZhJsTYZWtCuj6F2ZqICz8bWMIF9WTkE1y72Z6z0HbL
         VjZVGvHkZx3kO4tOSPOuohokje6S9Sh/kxQoBVOS/3D5K7e2ks6Q0mp0RVqYUQ56AfLU
         RY4fovql85WLcA0jUPo4Xq7qyiRGMEsvXGzzNW43Qbt3lxIkr3RLme/hf9BGEhsqOiGP
         2mPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=X60wIPe3Mf1RZ4lrVULkX/p5ZtGXsli2xkLiHgZhIiw=;
        b=jxtwCs/7TUxFpCH6Dg/5dIPaE7uAEhiBhChhqYKhVD2pHe7/5jQY1FgJpN29uiDXeY
         GghRfQAZvXe2311bARq/WmRY4enOpzCWpd+xCjn8Q1HaRqwTZdDVkuFqBToSOn0m+r6g
         kFaz1Juar0L6ZxM21M44zZz0TXKgrKVGSPeGQ55qKQKmQ06pxHyfnglJcOPaxtqFcJzN
         uXblo9NnJZlh2CLwhZk0IEqPoJinsLcMUUz1m6p0whygiiny+Ot1kO9C9MJOT3n7AXq9
         U8DwmtzG6O0mKtn/SunKMg7YD2oRYpyta+pxAClkf9z+8T/vt5io7m/nRYcUM7Dj87hE
         ZZLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cq8p4S0c;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X60wIPe3Mf1RZ4lrVULkX/p5ZtGXsli2xkLiHgZhIiw=;
        b=YBlno+OXTmWHZBKDbyDF+ylMfC4ZihW8JkxnTtz0YvBn5EbjJaREqbas2zDvTauN/g
         2bIDUt6ADDRmBM1Op6KGavMqhDLYErB8sdOjVjTRyhve9YHgAgOdn71G50L6ebBdqPUg
         mWEhjpnCoUK76Wj0S/RxKg1qY4J0/2hFGY0jHBUisGngCQJKiEEAvSa6//tkq1Y3z1FA
         RbNT/VELdXzD2DONQWXm9PwxIPzs6PaeMEjAOaemlxCsffZv38eljR/WZHNKCObO5Akt
         V2IhfQofoKvhqXebMAcLGiqB0MUPpfOsyf3LgnGPY7x07NqWm4Dls9hRqHGaJXzgGWfU
         GdJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X60wIPe3Mf1RZ4lrVULkX/p5ZtGXsli2xkLiHgZhIiw=;
        b=OphgCy5h4Uh2kEADUCLFRVeCeGep5VezUqgSpsehwrvg+oP5J3f9B31hPuw7WrLKyr
         bKj4hh3EcYgApYCrJG156mKJ/k7Q4x1533woygwBVHr+saKkGGwPqSYqz8KBmFkzK1u+
         Ynlx/laHSqkSed7JiUOM1lLDabX5tEN4KpzhrmCU3y1HeZbTwHwlhOXvf0Lqoa/9zmMX
         iMWMbafAXWtAcKJOIUTjZ5x2aJidFP4ItSAm/VgV8Woii4xAAaQl5MpRT+anNfEaNUxH
         N78D4OT+10iGjb+s/1yqWrWh4KNI4vHkymI+jG8A+F7cKq5aT2UyDAOV6NOM2819imkN
         ZKDg==
X-Gm-Message-State: APjAAAV6q2cgTSgKXlx8VsIi3P07UpZUtvAm8oiJFlXeWnb6IrjF9cZA
	t9+N7Sv8kbafI3Ns4nEY7bY=
X-Google-Smtp-Source: APXvYqxCpszD8B4lOwfx5qh4Uj7cb67GPVIBGd20/cINO5VuLU2BDtL7O1ee64GMxDP463MVFDFI2A==
X-Received: by 2002:a17:902:ff05:: with SMTP id f5mr4899794plj.116.1565126757258;
        Tue, 06 Aug 2019 14:25:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:954c:: with SMTP id t12ls19249591pgn.12.gmail; Tue, 06
 Aug 2019 14:25:56 -0700 (PDT)
X-Received: by 2002:a62:16:: with SMTP id 22mr5972831pfa.151.1565126756966;
        Tue, 06 Aug 2019 14:25:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565126756; cv=none;
        d=google.com; s=arc-20160816;
        b=rnqIZmhWhHzN3cphYnxnR7mUIHbEO3FhFBQkPvlWbDdYQJ/LLOmcFCkJumNhKJ3HS1
         9ka6jgwCc/twB6LEGuf3A4J5QL8c/nxUaOqVrmJOECbYPgNwce2KJbdqnXI/ICDRGuaz
         r0zcKG7sTsIIH4rxtONbd4Jq9kCmlwuNhLaLCkQZfwvosw3efeh8+4hpHb8701LnTxzw
         CPHnP8XhUbA2O/Cp9G+rwgLz+jnFLdGyRBaJSOlO/DMFl0cxmD6YT1Rnaus2dDG0OD70
         ymkOICZCs77Hw8GrvgrzlIwohVThv0A3blrHw2OJJ0wOS21JB19/3ljx7H5uXtYNTkZp
         /dfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GObBCpJX+hg87HT6Xs1kywdcUBdqzo4P5DaWgPTYKqY=;
        b=Oc/6uMMbyu5Nvd5Qmdfa2Drcrt7hnueNGU9q0gt8/ilPQ116AuR6uN8M6XA6qWXQLj
         QSXJgje5cTyd358uRqNOqdMOTYqM7xSKUPiOvUcxS4s0Dgc1G9I+SfwjGIv6XSKPl1Wi
         0ZZAa1ECbDxHAJ/IZK1EnVoSh3OfxbS5eYMPyYQD5MFqRZtUawnBxDzWLCvav/T7TQaw
         RUw9hfJkQXDKSXZLMjJncJxmVDmiOX0YlMgvt1t8l/QG6xL8ztzFhJYI2FdpcAiELBqs
         YE9Q+ecQW/Qpj5rb/Y7tUCqTEGSBqDY3hZ6WPd3hf9uxfT3HcmdYgs2VnP7bZJSrwb4t
         ecHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cq8p4S0c;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id h14si4121019plr.2.2019.08.06.14.25.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 14:25:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id y8so38387031plr.12
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 14:25:56 -0700 (PDT)
X-Received: by 2002:a17:902:9f93:: with SMTP id g19mr4967039plq.223.1565126756358;
 Tue, 06 Aug 2019 14:25:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190806183918.41078-1-broonie@kernel.org>
In-Reply-To: <20190806183918.41078-1-broonie@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 6 Aug 2019 14:25:45 -0700
Message-ID: <CAKwvOdkvFowCWP6cpKoMOz+EWojBXJWs3TzuTvn4180sVu4ayw@mail.gmail.com>
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
To: Mark Brown <broonie@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Tri Vo <trong@google.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cq8p4S0c;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Tue, Aug 6, 2019 at 11:39 AM Mark Brown <broonie@kernel.org> wrote:
>
> Current boot tests with clang built big endian kernels in KernelCI are
> showing problems with the kernel being unable to interpret big endian
> userspace. This is a bug and should be fixed but for now let's prevent
> these kernels being built, we may end up needing to add a version
> dependency on the compiler anyway.
>
> Signed-off-by: Mark Brown <broonie@kernel.org>

Link: https://github.com/ClangBuiltLinux/linux/issues/628
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> The clang people (CCed) are aware and looking into this.
>
>  arch/arm64/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 990fdcbf05c7..1c32d9889e0f 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -813,6 +813,7 @@ config ARM64_PA_BITS
>
>  config CPU_BIG_ENDIAN
>         bool "Build big-endian kernel"
> +       depends on !CC_IS_CLANG
>         help
>           Say Y if you plan on running a kernel in big-endian mode.
>
> --
> 2.20.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkvFowCWP6cpKoMOz%2BEWojBXJWs3TzuTvn4180sVu4ayw%40mail.gmail.com.
