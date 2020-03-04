Return-Path: <clang-built-linux+bncBDPZFQ463EFRBUXJ77ZAKGQEOPZM4MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE061797F8
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Mar 2020 19:34:58 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id f207sf1176410wme.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Mar 2020 10:34:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583346898; cv=pass;
        d=google.com; s=arc-20160816;
        b=QTM9nPJbCY/4m5PZSECtOabW9tUqGz+2SCLBVUchGRiAlwOufG9Ir5aFhaOvR0OaM5
         B6poyX8eOfmaKKYH5qdiW6/ohqWCP/CBqqWVxPSHSjsqZgMYDirxRyPF3UzQUXmbSmTV
         StlJzPHlE6qPt8soFxts2gZ7UphgGMwQvbJ10TV57yrzmOlPDqsqQDHCoA/sa5qHFgrg
         wXg4XJdb+QtII+DHCJ3EauWJMT/v556/dyBSZ+I1ElGIaahG4KyzZJ9N1Asgnt21RjMJ
         kwGW9sisggN/nxwE/7EVm1MzPgcFE7yAQcTkLCxJHX74vAuFYTHwsSFc8JW4hcwhYC57
         OClA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=rVlNp+5bxdqxKE9JtW1TnOShQCebBkF+N4hyqhHcVj0=;
        b=TsYCjdWIgHjNxG8xoDIpjD5reQaRKU7BGCnOOcJC07QUtpLMAzGs8ud1UUHGBCFhbA
         x329sGgM9ospgoGJQ5LcSaCCfdclh7QFugJL/JSxSCPPch6R/OtacipM94nOFNfisLcE
         9xHUu+KCslNqf3KZwSSvaUF5/wiD7MnVm0cpOPCMmHNDOhcGGsyaKolIDv/JR4jZRLBg
         Ek8N7+sf1Lf1ju6yc9pVpW894NjXbRDKYMu1k5315zIdSbfnhFu2hK7DY0nq6lEWL5e6
         3JTnUyvZKU2jp9TD0TP9m5I2LQppYyVw/P4SveIpvB3/OTmuVl/DxoP3KniR6S399mHB
         E2cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K2zkK61c;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rVlNp+5bxdqxKE9JtW1TnOShQCebBkF+N4hyqhHcVj0=;
        b=Yr4R6DRz4bDZiNqhfla7Kf6jDfjxEOn+v8QXZGUCUXu2jTGQmxCNfpOoqSLBV0GSvV
         DdIJWfIHB74k9C0Gpgaz2ojBTGNnhI/q/rAFQfnsjO00m8QaHojOh3QzWJwQxCZteQDM
         yvntRmwZmqXCtrik/Uz+xpdwtuCOpaNRu2G0ilm6eG9vdPcg+RD/XWJAeFl8bgi2o7S6
         98p2QobK5ejglG99Yvlvnvxi50BrXi2hbMrrbGemueq2UFdNVlboDroASR+iiRaVi4yc
         miffGIk3kn+w16WX0KbtdiM8L3LPq+oUWXxwuvuSrMttg/wMF7FLRY11NMrv7KHJKNPH
         KLlQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rVlNp+5bxdqxKE9JtW1TnOShQCebBkF+N4hyqhHcVj0=;
        b=KTdYXBr/wfqt/w6gibZsFwxrxFKA1uZNoPGXwZpdCB3oPXb9mmlowNHtplY+L6UeZI
         8pjiFztwGt3/rd/AQmMP/8Gzx061ngM/1KAke44FkpMsBDYNhAO2mRuOtaZDkPN5Yr0m
         j5VbM4b57mzXVkK63KslEgb5vZa6W0rcUzx3NG6eM2IxCoL7iiuEgwpgXlMnmCwUhiGC
         fNs+z8+2XIF/QRJAgJjJHKuZINuDSbPeQl7r6JNHWC+3r810kTY83Kche1334C5G9WDI
         8me7sbQF34YZrun/0jf7HTgJzGJ8AR657PRajgIzgF4kr52vSdvgHYtjpAq4Z/47h/6M
         xRSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rVlNp+5bxdqxKE9JtW1TnOShQCebBkF+N4hyqhHcVj0=;
        b=qpplHATVJW0VeqyFe3DpL/V2uEttH8clGOILGnwzvoUuEIMr0FPS+fTxXMRejXyccO
         g8VBpGlbptPIzGRpcUOBiZEE5ngZybLzk25E37YRiOtpLxdlfueXsXSFl6cl+O9kRNig
         e3QjzOlQ/o9S/+m9vXldZPwYFS99bthH07DT4QPkt/d0WChucv3NWw4Rrwj6Qjm5/DAX
         Rv8udhFaDBxusXZpVp7cYIjbs7NE42KOc4+tJBwLLCrPeoE7hGpkp2aE5mbNdUXaPFnj
         M3mEpMjDiOzMChW7/pp3QQkigJSy20Fzla3vkrSb0S8ojH5fpXh+1IYeJOfgsNnHCjZq
         5xNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0jiUdTULmegENcvVQd1gz6R5RSUpOSfRIkXnovrZTwZSQsZwmd
	d1WpN438vwAxJgXhXSs9T40=
X-Google-Smtp-Source: ADFU+vulJFBd3VaDI5P7JotDyp7IEeznm+AeN6pQO0+VkRYcXivwUwp6Wi0hNitpEtOctXs6XIS9Hg==
X-Received: by 2002:a05:600c:d7:: with SMTP id u23mr4914895wmm.145.1583346898327;
        Wed, 04 Mar 2020 10:34:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:2c03:: with SMTP id q3ls1804451wmg.0.gmail; Wed, 04
 Mar 2020 10:34:57 -0800 (PST)
X-Received: by 2002:a1c:dd45:: with SMTP id u66mr5130464wmg.154.1583346897757;
        Wed, 04 Mar 2020 10:34:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583346897; cv=none;
        d=google.com; s=arc-20160816;
        b=mwIMIh2ak2AlaavQMJMea1DmTsupWE81+sLb7oxZzTPsrdgkQRokVysIGtdv960n+S
         VcymxLmoy9RSbl1am6YYQHloaToKdHzX/tN18f5bHgdjy/gnVSuZJ6BQexJ2IyxxsmCB
         TAmyGrXLuWMW0jOqQXzrB52gTAic3EIbZeS+rUVqSzCmXYkkfnC9v9yEEQneTLvQJ0Ef
         +eN/u5nyxDc423iIeuhFjCXJtikbXV22tP+E7sfXhatpXsZF2Rrfjil1jOCJu8UyqvZA
         70lmWs2Ze47S+lM3V74m32dQwxeqh51NNAj5Qs0NT1z/qk6AEVU0D+I4rMkmmjjZogju
         akCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8DRq31dVT2gcFH3XXRtqpgig/7H0t/mX4ebDUqxQJAM=;
        b=H8ElKC743tiSjluP6Od8X0xFmqRorEyZpyRj7VknbaXIxhzWhCTGs5a+PLo25gD+fI
         KoI5N9a0zoVYwQ/S3yGyzDpiS+TmOxMcs2mYTeZ8bciglAJfSaSFEF3Rr2XsxmpAzgGh
         2wX9W+mVIvRJIrWPvrh+LauzPBSxn+xgtYrTNY9rLQkW/hNDJGEkT1x56uuASu6Upb8d
         iLfKqqcqIV60jaKGUk/M1NFnE55Vh1UuA569qq0BQKF8juhO3mu+edEhEP9/Saf5RQIh
         fCOtdqg9vrVMWU0HbslEKDj/EzUcq8iEtVUu2FxSIDNYUvulAuZ5tfRT5RYAioRdIlSC
         9bBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K2zkK61c;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id d14si131168wru.1.2020.03.04.10.34.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2020 10:34:57 -0800 (PST)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id a25so5327618wmm.0
        for <clang-built-linux@googlegroups.com>; Wed, 04 Mar 2020 10:34:57 -0800 (PST)
X-Received: by 2002:a05:600c:286:: with SMTP id 6mr4934184wmk.56.1583346897405;
 Wed, 04 Mar 2020 10:34:57 -0800 (PST)
MIME-Version: 1.0
References: <20200302224217.22590-1-natechancellor@gmail.com>
In-Reply-To: <20200302224217.22590-1-natechancellor@gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 4 Mar 2020 13:34:46 -0500
Message-ID: <CADnq5_Me3VGP=WfDuSfwC705b_XVENyn6q9SRU7=pXW-2xEdvg@mail.gmail.com>
Subject: Re: [PATCH] drm/amd/display: Remove pointless NULL checks in dmub_psr_copy_settings
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=K2zkK61c;       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::341
 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;       dmarc=pass
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

On Mon, Mar 2, 2020 at 5:43 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:31: warning:
> address of 'pipe_ctx->plane_res' will always evaluate to 'true'
> [-Wpointer-bool-conversion]
>         if (!pipe_ctx || !&pipe_ctx->plane_res || !&pipe_ctx->stream_res)
>                          ~ ~~~~~~~~~~^~~~~~~~~
> drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:56: warning:
> address of 'pipe_ctx->stream_res' will always evaluate to 'true'
> [-Wpointer-bool-conversion]
>         if (!pipe_ctx || !&pipe_ctx->plane_res || !&pipe_ctx->stream_res)
>                                                   ~ ~~~~~~~~~~^~~~~~~~~~
> 2 warnings generated.
>
> As long as pipe_ctx is not NULL, the address of members in this struct
> cannot be NULL, which means these checks will always evaluate to false.
>
> Fixes: 4c1a1335dfe0 ("drm/amd/display: Driverside changes to support PSR in DMCUB")
> Link: https://github.com/ClangBuiltLinux/linux/issues/915
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied.  Thanks!

Alex


> ---
>  drivers/gpu/drm/amd/display/dc/dce/dmub_psr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/amd/display/dc/dce/dmub_psr.c b/drivers/gpu/drm/amd/display/dc/dce/dmub_psr.c
> index 2c932c29f1f9..a9e1c01e9d9b 100644
> --- a/drivers/gpu/drm/amd/display/dc/dce/dmub_psr.c
> +++ b/drivers/gpu/drm/amd/display/dc/dce/dmub_psr.c
> @@ -144,7 +144,7 @@ static bool dmub_psr_copy_settings(struct dmub_psr *dmub,
>                 }
>         }
>
> -       if (!pipe_ctx || !&pipe_ctx->plane_res || !&pipe_ctx->stream_res)
> +       if (!pipe_ctx)
>                 return false;
>
>         // First, set the psr version
> --
> 2.25.1
>
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_Me3VGP%3DWfDuSfwC705b_XVENyn6q9SRU7%3DpXW-2xEdvg%40mail.gmail.com.
