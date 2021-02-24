Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBBM73KAQMGQEECM7TOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E7D32433F
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 18:40:22 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id u20sf1216008ual.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 09:40:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614188421; cv=pass;
        d=google.com; s=arc-20160816;
        b=oj7vSPCOqOdV6w2zRFom6e6OIrF2TXRv2EoIHZIuhz2ReX4Oi8SloLi0v47MZluWfr
         u0RfmzYxxZjWs760DKG5Et2VVFY/LkKgsuBtEaCFCwsh9vnmwWWhhCGatDIrbrO6O+5c
         wqzivXGtmxMT1xWVr8arZoNZPy5mvm2Lu+A9+1ogCh/mkZ0QwUJL4F3A3+wiqS+UeU7U
         3hDi9kreL4QRdt1u3Hy32/swO7RLj5cF2tzIWlz99+s0cAE9aAaeeky5SIZ7qyylI/yz
         OplXjn8joCwJXdIzCPM7mvpPunICTotRe1vxW3hGKKcy4mYa/CCZG9okP0f18bgDrlnJ
         OtPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=5DajF123HvbI2QMOQ9Qr7LsOceFCxe5DWUJsxfcydQQ=;
        b=NWpFk44P7KuQDUvsZvtRXAJiN8n+TOmNpfsBXNAsOnk3e3woUc3Knnnvj0bNQGIRPU
         7YJq8+pv9lTFfGUWgQ2KVSIR2dnWp+sHGetxuUmjpqb/i6oiSHeyEFwC4SywKUixMw5M
         tdhqW5cBCsgm3sS4EujsCdplr36tQGbRWWm1TDo53HkiAGBC8CuS0mFG7VxN6I8lSkeU
         2K+WNZ7+ezltixu2hDVdXxZzT4s1FLwa6Pf6KjIHCxuw2mQJvQV7uepkka50rX5YAQ6t
         doE0qqk9KpLRnhc7y3NYi4wjJ3VAlfNQpcBdcg510b5TZn2KSrJTDZabd7bwiT+lSUz0
         g48w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rYBE3tx4;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5DajF123HvbI2QMOQ9Qr7LsOceFCxe5DWUJsxfcydQQ=;
        b=fcNhwrCmpQ3PkrB3lQEMuk4WYnQjnR68xv22shT0yBx2OgxKIKIsAN0/UQzUN1UUsB
         xlyPDX1U1+DjlBjzmi8Y/ccX77TtanAtX0ju+mPpvAOUG5McMz/Sm6FR21rd/loZ0FUL
         DUHUeUCsHD4wSGkbLeY0DnIudehq3riFdt62T1yT19A9gDSSWqWG6xqnHw1f/7MVUIPt
         wZe1FdK0kMhgVVGA7obdfIzGPebgPsl0KnuFk6cDQPQoo9gtvE98Lcy8IvuV2JbgQF8U
         FleRbaLUa7kbCwv4tRVhiuyvxg5uNrW2T5gl7xO1Aw6S+gbGlTe6x4RTeP2D+lofHLk6
         mcpw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5DajF123HvbI2QMOQ9Qr7LsOceFCxe5DWUJsxfcydQQ=;
        b=glLKcfYfguN5sUBKCZz9hVa9J+Vxn/YoZxAwpKrGj9fyDehAfZWFBCt6JhMTLoDX5O
         uIh1DmfRz9anHiPjinuRZNid95cig8W1y/9LWC21InJwPss7M2zpJPQrwTUrXeLlY46P
         bxpVDtTaIH3Unow/tam8SgHQi0eleZO0V68Fz19w/PVXt49Otdu5sJvsUkiBzPeL026g
         8fsPn4Jl+7f4/EffZJLMQJZ81IMuINuXchTLLNAFGgz2x7Hq85OgwcD0YtCaxCnn7P6Y
         CdJai3pE2VJu04lmxTQtZBM8AUd3H+3kZ8Iw8uve7K6ffCiX/y6YmPXtG1fpOd+7j7aM
         ritA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5DajF123HvbI2QMOQ9Qr7LsOceFCxe5DWUJsxfcydQQ=;
        b=Ej7VQEJ9wDSbt0Bk49rFEVpp4EQn25U/YqxVOPA1yDCl0OKivBLO7NFkrb7alXgYT1
         VtdtyzbcIgTsSXZV8kNrbO971Nf6iJ2WVja5r3i4T6yJmylbN8V6Al7iIfClvWLrwGl8
         HDLrtg1XMHdmB0vGm4L9iAFWSxOD2fLlq/WJrJ12RHvTD/1jidW/AaLlm/SX8/IVged6
         +7iIiGCdf0KWxPrVb7LL4fMqqjB6xnip33tkpl2xS892J8YVV10ycdMbj2yHGvaJWe61
         USDpOeuitpI+tWdmYuVnBt2xFDxDAOQSEal3yl9OramMw2GKDbLOeM/w53vLsuwqLy9E
         EJ7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Xq6vW+jDtLysNeusrez2jUwCIMDWadm/hcnSwW2g7d9Jz5WMQ
	2DV6a1Ayv8K75P3P6jHzkmc=
X-Google-Smtp-Source: ABdhPJz5av1Vcmzc+AlG7yGMZeMcDrFlOOn8o0o9oI1ISLd0yQQiB5sMDNDdhLMcbb76Dws6PTVgoA==
X-Received: by 2002:a1f:2c08:: with SMTP id s8mr20926651vks.25.1614188421718;
        Wed, 24 Feb 2021 09:40:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:64d0:: with SMTP id j16ls229018uaq.11.gmail; Wed, 24 Feb
 2021 09:40:21 -0800 (PST)
X-Received: by 2002:a9f:2701:: with SMTP id a1mr15731342uaa.120.1614188421107;
        Wed, 24 Feb 2021 09:40:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614188421; cv=none;
        d=google.com; s=arc-20160816;
        b=ck/TEnFpoig944HPeBlBimDQSAz4/Q6XrOcNA0QfCBgK3cuQX6JWJkmaNdJvKZvc69
         ZLOvl04B4juxYFUQJ6gjHF3H3KOLpFaq6EQ3sMa8Ns/FQs02hIlgkI46C0yB9zIUVMs1
         zNsTLdT+4GRRCX08c7H03I3jhwVLMMEhZW1AMXMWjrpGD2FVB6YCxDzH/aHLu/zbkPbM
         QltzYppZGqzDtXmm/027WYEkWjY7SN07srPKSo7mna6ZDYza+wRKq2E3e839JYuyP4Ju
         iuVlIyop30y6VRDYNvTALXZ+K2A2rTXpITKtX8+/TexaHgh/bT48MULAf+kpNxsTCa2B
         6hSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KVEFF/e3cq8hSLAqkkWzb/tsBUvxw8HxL0663tRmoQo=;
        b=06QxU2uVqXbqPlPHPk1a+DOOQmEEn3Ae+7Gc33fKMUZvYFzeteqBiv3kfPd3vKx+Is
         W7ZhoYUl0JDd6emEMbXInJhOt9FvG9EJpgciy7PNuVG2kNc4Uji6i1PFFDebQakSM0IL
         ezFhuoj9yolsOhZ9H59jCIpPvc+LCBw2NkFiZmpoxt67SNLHmcfdQeSqb+XvvNWbYL0U
         xv6twO9gulyyrrT2uY0n0rj2AHO0Ag3WR//XF1/QaBYFHruMWEZKGtrF0Ze1dO0GmvQA
         xaolkgIHQCImpmCywo7MJdqKriI3gxQflpKwieTwXl1IFbSRbCSTA4R8Hq0nNgC1thLG
         Sv+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rYBE3tx4;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com. [2607:f8b0:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id p16si209480vko.0.2021.02.24.09.40.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Feb 2021 09:40:21 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) client-ip=2607:f8b0:4864:20::12b;
Received: by mail-il1-x12b.google.com with SMTP id f10so1898993ilq.5
        for <clang-built-linux@googlegroups.com>; Wed, 24 Feb 2021 09:40:21 -0800 (PST)
X-Received: by 2002:a92:c145:: with SMTP id b5mr19179398ilh.186.1614188420558;
 Wed, 24 Feb 2021 09:40:20 -0800 (PST)
MIME-Version: 1.0
References: <20210218224849.5591-1-nathan@kernel.org>
In-Reply-To: <20210218224849.5591-1-nathan@kernel.org>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 24 Feb 2021 18:40:09 +0100
Message-ID: <CA+icZUXGS_bbVRsMVJowVPTZpi8NYQ_18Ec9bXBTztWL6dA=hQ@mail.gmail.com>
Subject: Re: [PATCH] drm/amd/pm/swsmu: Avoid using structure_size
 uninitialized in smu_cmn_init_soft_gpu_metrics
To: Nathan Chancellor <nathan@kernel.org>
Cc: Alex Deucher <alexander.deucher@amd.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Kevin Wang <kevin1.wang@amd.com>, 
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rYBE3tx4;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12b
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Feb 18, 2021 at 11:49 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Clang warns:
>
> drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:764:2: warning:
> variable 'structure_size' is used uninitialized whenever switch default
> is taken [-Wsometimes-uninitialized]
>         default:
>         ^~~~~~~
> drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:770:23: note:
> uninitialized use occurs here
>         memset(header, 0xFF, structure_size);
>                              ^~~~~~~~~~~~~~
> drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:753:25: note:
> initialize the variable 'structure_size' to silence this warning
>         uint16_t structure_size;
>                                ^
>                                 = 0
> 1 warning generated.
>
> Return in the default case, as the size of the header will not be known.
>
> Fixes: de4b7cd8cb87 ("drm/amd/pm/swsmu: unify the init soft gpu metrics function")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1304
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

I fell over this today with Linux v5.11-10201-gc03c21ba6f4e.

Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # LLVM/Clang v13-git

- Sedat -

> ---
>  drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c b/drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c
> index bb620fdd4cd2..bcedd4d92e35 100644
> --- a/drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c
> +++ b/drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c
> @@ -762,7 +762,7 @@ void smu_cmn_init_soft_gpu_metrics(void *table, uint8_t frev, uint8_t crev)
>                 structure_size = sizeof(struct gpu_metrics_v2_0);
>                 break;
>         default:
> -               break;
> +               return;
>         }
>
>  #undef METRICS_VERSION
> --
> 2.30.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210218224849.5591-1-nathan%40kernel.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXGS_bbVRsMVJowVPTZpi8NYQ_18Ec9bXBTztWL6dA%3DhQ%40mail.gmail.com.
