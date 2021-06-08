Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUPS72CQMGQEMSBWNGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EB439FFDE
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 20:39:14 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id 133-20020a19058b0000b02902a413577afbsf8025793lff.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 11:39:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623177554; cv=pass;
        d=google.com; s=arc-20160816;
        b=kAyf43XoJ8j4G9TXwo2C/V5q9xZzils2opuQn5cgmm1gjbhr+d8qDgPVIK/NHS3T3b
         nnYfKsMfd/663cnAKa5LIgNDxcu6ZhiDKbEtJExRsoboWmzDewhfWHzRit7ts5QPaMmv
         lf32ozno6saholALafeuQxxXFi0laNf+jzdLrTmJP2oP2wuOtcxmlgZqkO/smdZmB0ur
         cjLHQji7gpV/leNXjRPW7j90tqIZUhXk7b97y/UVgRhHGkJTS7NZFJT1nqD9B11MD5zQ
         Am4pR/oix+91UgrmkJiyKqK7sHaavzrxIS2ijsXYHleUNtdPndHAAe/DwABRJS5DFOHf
         YJhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PaOqlPSHfSM5sq/6qCTa87K7lTJH0H4VGQXyDPFmdZA=;
        b=ryO0WlZ19oMxuzBkm01gijZuby9XoGMnnRRHHGjdXyiWmD2V7iCaITBCqU7g1/mZWa
         0uQTQPkB6WXTPKkGaNk76f78h/soQRUSvT/lCIcypxuMpxgR8uVrqqvGKIGIQbZRuGoO
         9qUFgMz/1U976kBoYsY1cU5ky9ZcT0LfFr5jrN2r0iDddYs/EcduSYLW7lzhuevnbNaO
         spfVeSacfvzJQ39FCbSLRqmaNex/cd4zDG8M3Y4D+/gKChqbm1vJIBHolrdcpODj29bw
         pBYYIR+adSYAFp3YEFHZbZkt1J35/M/ADgC7ofZ3JpFEEnXw1ur5AYEITN//g1lhypjz
         Wkmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pLX4yrmr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PaOqlPSHfSM5sq/6qCTa87K7lTJH0H4VGQXyDPFmdZA=;
        b=jp28H5u8MoMY6wyxgNFrCXZ0NGEE0VmyZNxF8uxuEK08vg5+csEV6+V37TbvAHKsgp
         02+2WMi/4QoQOdlEBegvC5tSEE7/zRrjC4ajiZBijF2q5y6C0PzGk1lLTGDFKrUmjmO9
         9/VIcb7A7h/GAhhRwc5gbI2d1DUFRCkWJ3f08+WcJJxKC+s3/PWGHooEI4+nS04s4A2m
         oUjFXGKD0dv/UZWypbDuC7mHiZ5dz5AaoZvdhHmntKNcuWfS+R+8dpzUKKrvDXunqfvi
         4P/bfmfXFVxn2ldA17nCbMGwf3hadLGupdBOeoxhN7ZTc919gvnBjPvcmrLsSXu22Skq
         bFew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PaOqlPSHfSM5sq/6qCTa87K7lTJH0H4VGQXyDPFmdZA=;
        b=W0qSVlPbQebBoLZp+pKgI7OuNQkQvhrcPBGyZzRy5h30zkGBrmgvchIykOykl9mS8r
         WGxkyGUfJX31T8aLaLGvl33J16bOmSQJcOKYubh28AUjc9irGm4GxeIcfgGvAUSi5ynR
         KQwq93YQVyN8JhkiREVlpK7IeXisRcTI04UMUaunGgRNxdcGtNILgjqZYmY2hdq3GG3J
         dT6gShkdrCJVH+AYIIUYfdCQgqfC8uhj+E6OlhTJi022qvAH5U8XqiN/X5jFbTQeDuhl
         //6yAC255uED6XaxGhBrqCMm0RlSWGzSBfHKsAWZ6x85MdkFswZGv3udDugQGcISNuUL
         MM/g==
X-Gm-Message-State: AOAM530drnwxmS4hawBYKt4S2tacEYA6Z4sNOEjCgKFfKRhGxllabUCR
	6dtVwVqSW2YutSuykuGZM6Q=
X-Google-Smtp-Source: ABdhPJwtqhs3W1Qr+p3IVNUkOg3KWbbfAVt/ldnLImukNDOqvZKBbkpF8Dukl1sStS1Usa8tUn8wBQ==
X-Received: by 2002:a2e:a4a4:: with SMTP id g4mr19437220ljm.376.1623177553919;
        Tue, 08 Jun 2021 11:39:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b0e:: with SMTP id f14ls1585538lfv.3.gmail; Tue,
 08 Jun 2021 11:39:13 -0700 (PDT)
X-Received: by 2002:ac2:494a:: with SMTP id o10mr16598641lfi.149.1623177553024;
        Tue, 08 Jun 2021 11:39:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623177553; cv=none;
        d=google.com; s=arc-20160816;
        b=av9h0O6+q1j5/MrZ8ofDn89Qs3jp/n9K89LuQLBWYawbtiraVTtEArm+m/1tDHtcC5
         kZM9Z+iqMnfVsESlUZ2tyUlLNWk0GcYVH32MZBKp//rRFvhWuMOERclySEtTZMrOc7MI
         yKos2N3jr+w4iraVgPdv78z0BDb3Y2hx2WpHJbVYalZXBd5Kx7avgY4Avn31Hp2JQ4IP
         asNUTiZKN647V2qVBsRc0Wgq6SmEEeEPDZKBYKXMR/lo+bv0CwZUI25z/K1GZAw0oTx9
         kfGDFx9C9aoB6Xql51+nxn1DD96uLkBA0lgGgcbNZUblbQC+ynjcg0mNhj1SJsOarlzo
         3vAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RFVHIAFVezn4A//yU0olDz7nXpJepZN2+RpU9TzzyE8=;
        b=P1aNxmaIs+Oz+h/TxbuLhb+/97Ts0J9yL+GeOAwNXI5cml5EWtoRkw2+DLWI/4c4vX
         qJSXGkgDCu7VVxY/yn0SSwrMCxsqPMyiwAq3SbcBIez4D6wum0i5OQR7T1NnGW4G7NQn
         1tSLjlSXaTbNpah5QjlkrC8Gwktcm+I/lRgszr4LuT18dFWt1SXu8rHxwrAJZbPbTl0u
         GJatpou0IL/1XdVsdzUHCCoXIieSWZtFlFQrc4AqmQLq7jTx5Qw6VCdbjhgpPhc9xCPF
         iubGE/ADPaDBsdWkWKT2rhmRmh9Ogq7RdnzLsKLcqCSC6gZ09exvrZASvzKrg7I/3Ioi
         IDjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pLX4yrmr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com. [2a00:1450:4864:20::130])
        by gmr-mx.google.com with ESMTPS id 81si17412lff.11.2021.06.08.11.39.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jun 2021 11:39:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) client-ip=2a00:1450:4864:20::130;
Received: by mail-lf1-x130.google.com with SMTP id w33so33717227lfu.7
        for <clang-built-linux@googlegroups.com>; Tue, 08 Jun 2021 11:39:13 -0700 (PDT)
X-Received: by 2002:a19:4843:: with SMTP id v64mr6200836lfa.374.1623177552600;
 Tue, 08 Jun 2021 11:39:12 -0700 (PDT)
MIME-Version: 1.0
References: <1623145562-111662-1-git-send-email-yang.lee@linux.alibaba.com>
In-Reply-To: <1623145562-111662-1-git-send-email-yang.lee@linux.alibaba.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 8 Jun 2021 11:39:01 -0700
Message-ID: <CAKwvOdmyXV09ZxcDqQ6x43f+Eze4h40W2AoKcCmUhGM2gUWsnQ@mail.gmail.com>
Subject: Re: [PATCH] thermal: devfreq_cooling: Fix kernel-doc
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: Zhang Rui <rui.zhang@intel.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, amitk@kernel.org, 
	Nathan Chancellor <nathan@kernel.org>, linux-pm@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pLX4yrmr;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130
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

On Tue, Jun 8, 2021 at 2:46 AM Yang Li <yang.lee@linux.alibaba.com> wrote:
>
> Fix function name in devfreq_cooling.c kernel-doc comment
> to remove a warning found by clang(make W=1 LLVM=1).
>
> drivers/thermal/devfreq_cooling.c:479: warning: expecting prototype for
> devfreq_cooling_em_register_power(). Prototype was for
> devfreq_cooling_em_register() instead.
>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>

That compiler warning doesn't come from kernel-doc.  Your diff looks
good (the comment was wrong), but the commit message is curious.

Usually that warning is from when the function prototype does not
exist for a function with extern linkage.  It looks like that's always
provided though in include/linux/devfreq_cooling.h.  Can you share a
link to the original report?

> ---
>  drivers/thermal/devfreq_cooling.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/thermal/devfreq_cooling.c b/drivers/thermal/devfreq_cooling.c
> index 3a788ac..5a86cff 100644
> --- a/drivers/thermal/devfreq_cooling.c
> +++ b/drivers/thermal/devfreq_cooling.c
> @@ -458,7 +458,7 @@ struct thermal_cooling_device *devfreq_cooling_register(struct devfreq *df)
>  EXPORT_SYMBOL_GPL(devfreq_cooling_register);
>
>  /**
> - * devfreq_cooling_em_register_power() - Register devfreq cooling device with
> + * devfreq_cooling_em_register() - Register devfreq cooling device with
>   *             power information and automatically register Energy Model (EM)
>   * @df:                Pointer to devfreq device.
>   * @dfc_power: Pointer to devfreq_cooling_power.
> --
> 1.8.3.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmyXV09ZxcDqQ6x43f%2BEze4h40W2AoKcCmUhGM2gUWsnQ%40mail.gmail.com.
