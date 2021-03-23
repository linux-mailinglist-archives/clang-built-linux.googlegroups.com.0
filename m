Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2WM5GBAMGQEM7SPWRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E869346BAF
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 23:06:35 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id o8sf87889ljp.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 15:06:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616537194; cv=pass;
        d=google.com; s=arc-20160816;
        b=0pPrPolKvDReG6MtHEGY8kFTZdGSqIH6mn41//YVI2X2RvarRcfw0BtYGCCM5MSzy/
         L++jRtxKc4exVI6qR21IFcm+rf0obM9IKEvC3IZQhV6m8WzUQtA0fGIl6TFQ8B+K3aSg
         hY6PTYvOsUcCkH5kU04/Ti94vVudVcEJ7/bui/GtCe7/EOUfV2tYA0uO9LxPnULT2WRQ
         MBmziuVp2yE3PtHZ6r+j0V3NEawvXTJJ2vhb0BnfcB4l3oaHXhSMlgRlMHHDJgIzRUzc
         mQzKYf8lQP9fz7uF2hJb7tCMGNkIvVU0+rqWHWFtiJAEBsvRfn6Z33aMcp8/D8Tt/Ei/
         JCoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=UvaGr8OCTFeCE2lFZ3+4tjG1t+nHiFi/yUgLPajlWKs=;
        b=JZmVg6W6tEnF0tzn+2o7g/ZZ8JdBuSNpgsHa6R9n+eGnjm+pItVLulQ+kvpehz3+qU
         H8MSlcUZixGWyGcG5LT/mXG1PGzJ0wnoTQBLe0pRI/utjbSASi4uCN4yMxTZnrJcebrL
         oBLhUxuvbRwFfluLS9ISaQMKlAp8NxWB/Q3sa8GFVEmYHRgKVsP+WITScfvL5M4Rzgq5
         I+Lrlx3W1t3RcEp68NgE4fgS4qhquCqiavrGTzpdvsduqwrx8iK7fgquxNMsh5Y12tJ/
         ylhcT2khpdZLnXtFLZvL0dRTwO0EWVmGx0a+QJQi7gU3glFXaEGqVCyLK3Yj+M1AIttK
         kdJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="jIfAj/g6";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UvaGr8OCTFeCE2lFZ3+4tjG1t+nHiFi/yUgLPajlWKs=;
        b=L/O4hYdpGuTIubJUSgbadKU3DbJn9a4KMojaJNCdUErcOFSgeUzTJpteI0Qc45cfBd
         bO8qMHRU6jpVhjjNJlGJQMaRSdYep5EF5jG2rhUPqgz1YzrrORA9m2iEbRVUsHoLPY9W
         x82ACt5TsgRmhBGrlocwVZakTZQn2Pa4RJkgP11sUfMPs1T03l1rCA1rj+VAZ6dJrhK3
         xwPJ4LHMfoQQCUFgLCG/Ibf/bDMuEQze/oh4I93KNH6MQzNIjfk5ECRJBE2m5CsLN95d
         Ac9j/AkmkBoOeGYMjhJdqKCAOkr5aFpxF6EcVYnNDmh9jSwQ7la7KthwOWolEvHExDMm
         0BfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UvaGr8OCTFeCE2lFZ3+4tjG1t+nHiFi/yUgLPajlWKs=;
        b=EHTORkUrGRrtgE3ST+Szlo4/53j26pm5yRopGP7eHokHKwkrk88cx7RWiDTgQtUw77
         knKM0sU68y9ya014jnMsSruXNZksu6cvy4TnCjl7r6RAfdqP0S78A5jEVF+VdbkzOQIn
         H7LXu95mvXHOoJgASVl1L4z4D4w0hEIqxY3k002WZ3DmRLtCVo+kw9kiurd14oeviHon
         miuQZs4x4IGLxJOesW8HrtmT7xatYKbeo6aoniTRqDkz4v/bM2pGsittbSSeS9fUtaJw
         Eh0seoS+B4IZcH2BkcnHQfY9yyBRsZZ4lUserizujqjorlgZmkLjoBAHzzKIYI0yxITc
         fuVQ==
X-Gm-Message-State: AOAM533RIdKab9XmPw5cro4c03/ses83NHW9c0MrnP/U8r2EBUV2Z9Fd
	lL8AdAZBGjxRKHG8XR4SqJY=
X-Google-Smtp-Source: ABdhPJwgXlHJcrxbKOAfBuTEwk8AjCtn1oFlx1+5uQBm1+VRotHq9jB4bYhJKUBCYJ1UJpqYNfadrg==
X-Received: by 2002:a05:651c:1214:: with SMTP id i20mr20422lja.423.1616537194551;
        Tue, 23 Mar 2021 15:06:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9191:: with SMTP id f17ls59684ljg.11.gmail; Tue, 23 Mar
 2021 15:06:33 -0700 (PDT)
X-Received: by 2002:a2e:8e34:: with SMTP id r20mr54703ljk.114.1616537193658;
        Tue, 23 Mar 2021 15:06:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616537193; cv=none;
        d=google.com; s=arc-20160816;
        b=vormmYwlKCdayjxFXfYW9xfPlnImKKUoD0jYpa2wdSoghwox50Ts4/ugv12cpM0f1m
         GST1O7n4jLMQ+EAHqtO6jgpJgHUqq5L57ip2OkiSoxs5F5+suLdYJHnOSjz1ZrNm1hGK
         w7gKnFfwjTQBuKZIutMs7Ao+G10P5LZGctZusuDbxpyD4whaQWMO0SQyjE6M/g35brVW
         Ie8XOVFDXbEjb5nWMEHnGRhuoi5suUMTyXiT8T2xmLWyUpmciENKaK2h+cQVc+vfvIuB
         nh7yaygQ9eKR00QaMbsA2eoi5hBuqU5kVjHoEWSGd24S7TETia7KfS+Et0uw3jU8ihWA
         TrTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vXkprPtYGMO2ih6Z+KDNNlc8UFFhBMXJ52/OD2yHyRA=;
        b=FPLAGd9WAunyOGIBDpT69wFfNeYj6WeXzeMGPhRilCmLUU+0enuRB58qA4R8uaD/8x
         +p3kDHci0CfQuUZa1TvJaQPTmAw3MH+JOdbVovXsnxK/Jti3quUq8M0Jf3l8MpqbjaQJ
         8ii2r7iy/vJE+WLFr1QqcJwaP3sBIQ40AZxGcS9pFjItQZ/ajyKt8ruqGru6zo8uJvzN
         GsOPFvmgfT55Bs4xDUlpqjME8n2YaPgboPpASHH2eDxa/kMYF9LMVNaFb/3eEl9re7ca
         6TOihuhAAZ4Yc63FVOHaP10aTCLzBYA8lJaBv3wmsj88CWzA78zEWdwMgQW90XMQjOjC
         ipwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="jIfAj/g6";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id o10si8570lfg.12.2021.03.23.15.06.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 15:06:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id w37so28900975lfu.13
        for <clang-built-linux@googlegroups.com>; Tue, 23 Mar 2021 15:06:33 -0700 (PDT)
X-Received: by 2002:a05:6512:94d:: with SMTP id u13mr82260lft.368.1616537193207;
 Tue, 23 Mar 2021 15:06:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210323131842.2773094-1-arnd@kernel.org>
In-Reply-To: <20210323131842.2773094-1-arnd@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 23 Mar 2021 15:06:22 -0700
Message-ID: <CAKwvOdkBEQdVC73_datkwa+meitAGskDgTEr5LzX6AEnE4xd-w@mail.gmail.com>
Subject: Re: [PATCH] irqchip/gic-v3: fix OF_BAD_ADDR error handling
To: Arnd Bergmann <arnd@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Arnd Bergmann <arnd@arndb.de>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="jIfAj/g6";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129
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

On Tue, Mar 23, 2021 at 6:18 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> When building with extra warnings enabled, clang points out a
> mistake in the error handling:
>
> drivers/irqchip/irq-gic-v3-mbi.c:306:21: error: result of comparison of constant 18446744073709551615 with expression of type 'phys_addr_t' (aka 'unsigned int') is always false [-Werror,-Wtautological-constant-out-of-range-compare]

Looks like based on CONFIG_PHYS_ADDR_T_64BIT, phys_addr_t can be u64
or u32, but of_translate_address always returns a u64.  This is fine
for the current value of OF_BAD_ADDR, but I think there's a risk of
losing the top 32b of the return value of of_translate_address() here?

>                 if (mbi_phys_base == OF_BAD_ADDR) {
>
> Truncate the constant to the same type as the variable it gets compared
> to, to shut make the check work and void the warning.
>
> Fixes: 505287525c24 ("irqchip/gic-v3: Add support for Message Based Interrupts as an MSI controller")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/irqchip/irq-gic-v3-mbi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/irqchip/irq-gic-v3-mbi.c b/drivers/irqchip/irq-gic-v3-mbi.c
> index 563a9b366294..e81e89a81cb5 100644
> --- a/drivers/irqchip/irq-gic-v3-mbi.c
> +++ b/drivers/irqchip/irq-gic-v3-mbi.c
> @@ -303,7 +303,7 @@ int __init mbi_init(struct fwnode_handle *fwnode, struct irq_domain *parent)
>         reg = of_get_property(np, "mbi-alias", NULL);
>         if (reg) {
>                 mbi_phys_base = of_translate_address(np, reg);
> -               if (mbi_phys_base == OF_BAD_ADDR) {
> +               if (mbi_phys_base == (phys_addr_t)OF_BAD_ADDR) {
>                         ret = -ENXIO;
>                         goto err_free_mbi;
>                 }
> --
> 2.29.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkBEQdVC73_datkwa%2BmeitAGskDgTEr5LzX6AEnE4xd-w%40mail.gmail.com.
