Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJPIXLXQKGQE3AWOIEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CB61177C8
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 21:52:55 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id j66sf12463689ybg.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 12:52:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575924774; cv=pass;
        d=google.com; s=arc-20160816;
        b=OW/mqRLcXKvnOACoL+8Kwm46ko5WQq8m5Wq2mgOTzaau3PjP/nl4DH7vQDkuv/RKut
         YV+lG9TTZ6rW0OYMmo3SezNohgBY2cDjxaY2WNnDAOYKPdxUSbJulFYOP6zZAP62bm1E
         p/MT8jxIPgVqvI5S+T5vdKOAOW/PS1JdqcghWq6HJdpqpSzdrezNm4FebDNN38nJtb29
         PuMfZxsgHy3QT9swCOUNa3alcydGdG5bN7LIssMmlci9Q33/j5qYy6e/RN8lfzYGMXSS
         qF0fVu2aueR4EAKlqpA4WrPBRBBD1BoxDju7CaSnBJXGtiTZV2S/IO7IUHedKVp8/9lJ
         YEXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=qNy4i2863q5IQcfXt9OyuUeDaem1hPgyHTIHyDvOzEw=;
        b=ozVuYPvzbqmKOwwTHMoJFH3If50hq5T5pDGIYL3YJV/XoFO/EcVsUGJzOLtvGB32Qt
         qW/2T9Eh+4hzLSSn/CsB7J8VvLzfiaS98oLFCa1eLW5z6teyT45rKQqOHjc6rWcRjGms
         ldxNB+zVYZ+uhJiS5/C+HKpYhmONwu3MmcP8LXGBdo4X4COxcbb6SE47X8rB+s8vTDTJ
         KDqJEUvDZRJOLQR/QvUAE2BgjsowvktyZRFgeJxZqRhTQoCdCeGMTpicqKYwbpDMNcVw
         Ke+weYzP5oz8f4v0P8jcVlmP8ip6y9mMfu9z37u8BcyMv11PuRk0Tn80GovIYjfKovp1
         HLxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BMWEse7d;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qNy4i2863q5IQcfXt9OyuUeDaem1hPgyHTIHyDvOzEw=;
        b=CYQeidQIJRv7xTzQrM3SFPNfKtFNG5JCXHDCSPZhcDKhaLEYmbXZBsK9mSyL/BT04n
         OchslSli4J/GnnsxPNW6UEZ3WuYsP24pCgXBgQlH22NAfKUpmEbqAlQb9Vs2oICogOqh
         iWMCn8PV/zb2r2gIV0/UyekpUBydq33w9P7UVv7yjnU8ZOEhomArgKjdB6kJ4zJX4q5x
         AijyG3dJvG3CeTnhH+cD5sI69LXdO2LquUhFffzLbavpjrfR71GqhHlpxjCdpTkpMoZR
         bsLzU05UQvMycRJW/wQPGQuYpkkKJCdp+2vPH+uEUr1d6cfm2qJLQqnhUFPgF9QaqNVG
         aCjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qNy4i2863q5IQcfXt9OyuUeDaem1hPgyHTIHyDvOzEw=;
        b=rSssGzbjSOPZ5X0czvdC+g/D8WIBvSEBHG/INE5q16Bx3YelKLSZ2NCDFmPpH0706F
         X1CzTAY0GXsVaaGhLxU3Md9tVDqthVcG8H2nixiE44cInURbfhIlK9zBxoamRB5mjGhR
         uKFZDqs80FnNpe4CykRisiOKuVWyTeUvRDT8KbT+do48hezJuG3OaECFQPYq1FzBQ/OB
         6pFKjaDHIUQdOpT03Wb0p532oHEy4keDR7bvOUAdlmTBsB2W42mbOF1av/pyrUAN58Xu
         xhvFQV1l17KyEUI3Gy2y4uQZeri61bttxqSXveRAwhiqVAJ2l8Q2Jx5V3HzsOlwnwPYK
         YQRg==
X-Gm-Message-State: APjAAAW0pGxJ6THk+s8LTGSnkuITP0Vr8gmjBlNQJsXf6+fXNGsAAHxB
	B9Hp+QBELMmes/TIJys7NtA=
X-Google-Smtp-Source: APXvYqwDD/P2FtbP3lL+QE/lxZ9rxAcEkTlFg+ENEcXuAMlbjuFOC0f6gTw1J20htCaVrNZzmz/qMw==
X-Received: by 2002:a5b:443:: with SMTP id s3mr21554694ybp.197.1575924773998;
        Mon, 09 Dec 2019 12:52:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2397:: with SMTP id j145ls987980ybj.7.gmail; Mon, 09 Dec
 2019 12:52:53 -0800 (PST)
X-Received: by 2002:a25:838b:: with SMTP id t11mr22411844ybk.130.1575924773599;
        Mon, 09 Dec 2019 12:52:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575924773; cv=none;
        d=google.com; s=arc-20160816;
        b=SIygXq1KZfvUzIbAlgAXLFrNidh/BV/KZ5wl3h9Hzwtas0YvDRyXcWiO5hbPHuvzMc
         +KtrFNx6GUmbakBZsSP3Nmq3VcfSXoKRDiKvedBmSYwaQM0K3hr2VCeCQicjgRD8Za/Q
         XheV82ayjO/+rZgRECIJxzH2xvL8ocwuEHe2Zuew6kCTYVTnFAarY+jMnhiKTPArIBM7
         5vHHFpGxs1d956mCuw4NiD2aGKAPrtLaFmNwtDbikOtxOR/2+XhUZ4fcQ0G0yXWsq0JC
         Pj7XZqw32A3ECCeW0Z1lsTxTZsyieddZi9XmWvFYKGqrhdOLRWfAr42uL0wNZesj3/+n
         yyYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AvjOGQmItdmAy3vt51SLf/vsbTcB+aY7zT7fuJp4dP4=;
        b=MGDs2SKM9b3fSx2IsLvn/W4QKxWh4IDXat1/LGexh+KdogTNmAH5fZL9zO6p/IwD/x
         r4qH++jdiroqhLAOHjUYtaqd7pKLrYJhGCNE8RtOF09mhCjU0pqsDbgADEbF+IrqwFWz
         gRSii9yku2XlN5SxfaU67ZGL5OjD49HU2kITa0igC4vn+yW9XmEfxLP5PXKOUIBe4lIm
         a0TQcrBzyzt/1/h0dktEfcTjw6g30xt+5+7VZcr4xPFoM6g1QG2Ucr6btwYXCno/NU5M
         hQMvPqRR82yqbXJM0eCaAa5RMAu9RzbJkR396g1V56DQwD7rLAJsRtFe+8j6zMEgHvP7
         2mfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BMWEse7d;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id p187si59156ywe.1.2019.12.09.12.52.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 12:52:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id x185so7833580pfc.5
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 12:52:53 -0800 (PST)
X-Received: by 2002:a65:590f:: with SMTP id f15mr20415804pgu.381.1575924772395;
 Mon, 09 Dec 2019 12:52:52 -0800 (PST)
MIME-Version: 1.0
References: <20191209203230.1593-1-natechancellor@gmail.com>
In-Reply-To: <20191209203230.1593-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Dec 2019 12:52:40 -0800
Message-ID: <CAKwvOdkeCCuYDWQFHitFczFX1-R1LjWoJ2gAfLuQAqvGz0ymPg@mail.gmail.com>
Subject: Re: [PATCH] drm: msm: mdp4: Adjust indentation in mdp4_dsi_encoder_enable
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	linux-arm-msm <linux-arm-msm@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, 
	freedreno@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BMWEse7d;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Mon, Dec 9, 2019 at 12:32 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> ../drivers/gpu/drm/msm/disp/mdp4/mdp4_dsi_encoder.c:124:3: warning:
> misleading indentation; statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>          mdp4_crtc_set_config(encoder->crtc,
>          ^
> ../drivers/gpu/drm/msm/disp/mdp4/mdp4_dsi_encoder.c:121:2: note:
> previous statement is here
>         if (mdp4_dsi_encoder->enabled)
>         ^
>
> This warning occurs because there is a space after the tab on this line.
> Remove it so that the indentation is consistent with the Linux kernel
> coding style and clang no longer warns.

Thanks for the cleanup. Nothing to see here, but should help us find
more interesting cases.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
(If there are other instances in drivers/gpu/drm/msm, they should be
rolled up into this commit)

>
> Fixes: 776638e73a19 ("drm/msm/dsi: Add a mdp4 encoder for DSI")
> Link: https://github.com/ClangBuiltLinux/linux/issues/792
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/gpu/drm/msm/disp/mdp4/mdp4_dsi_encoder.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/msm/disp/mdp4/mdp4_dsi_encoder.c b/drivers/gpu/drm/msm/disp/mdp4/mdp4_dsi_encoder.c
> index 772f0753ed38..aaf2f26f8505 100644
> --- a/drivers/gpu/drm/msm/disp/mdp4/mdp4_dsi_encoder.c
> +++ b/drivers/gpu/drm/msm/disp/mdp4/mdp4_dsi_encoder.c
> @@ -121,7 +121,7 @@ static void mdp4_dsi_encoder_enable(struct drm_encoder *encoder)
>         if (mdp4_dsi_encoder->enabled)
>                 return;
>
> -        mdp4_crtc_set_config(encoder->crtc,
> +       mdp4_crtc_set_config(encoder->crtc,
>                         MDP4_DMA_CONFIG_PACK_ALIGN_MSB |
>                         MDP4_DMA_CONFIG_DEFLKR_EN |
>                         MDP4_DMA_CONFIG_DITHER_EN |
> --
> 2.24.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209203230.1593-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkeCCuYDWQFHitFczFX1-R1LjWoJ2gAfLuQAqvGz0ymPg%40mail.gmail.com.
