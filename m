Return-Path: <clang-built-linux+bncBDYJPJO25UGBBL7W533QKGQELG3OAVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 80640210001
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 00:22:40 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id c123sf1888424oob.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 15:22:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593555759; cv=pass;
        d=google.com; s=arc-20160816;
        b=j71lnSlwes/2fXMg1X8zWJ+aeeQTEQRlNqxLhlRs+PVr3XgYnz6StNUPwteevYnn9k
         ktSG/OOaY56hBFX5890jNUE9MrllvCf3NNdlvBjfnE+VGmJyDdjC2WJ/Vn2Mb3B0+AiC
         zYpBcmgpBC9BnUvkTu69fW2paZqYXzbQwGui01gV4byov9Ho2IrUm/jAXzthD9e7EsvO
         +oGOsarlA3eweBxnPY5/jMIArznOhEmuQeGPMOVYWeRvjXleNnrs53h4xeNwsQrO4HnA
         1+3Mv1dmlykbrKs3nO2jnj0a4PVIzHAIjLnFEekk5rDdPJJ9nIQDXche7reAsRT2UgS6
         LL+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/XSGr6Oo28axNFVSowSd1ctF6/1EI7GBlWfbT3595do=;
        b=qmCvCNLQ6m5vB7DatQcgSO2/8mjHq6+cVcSu3RIRI5bSRbANxo2YFQb0Yf3hjQI8PA
         a+zHazfrCmrMuu3h7/iLQlCtD61NlRKiNbZIJcz8QREX5ZZY1oqsi3A5lgkohYWJpLdN
         HjiYR0ALr1UCKigO++A8AD/nEZ47IhVHie9ri8JDVrUOYk04sA4ZFMEoNh1oBxD9bPD+
         9zhb5pMmeUB8U/+AqGG2sniVZeAvrwABfI+BH/T7RhIdy2QRFVRUiPfJm1FyvMFRkmir
         aGqk0ItEFqzD/3GaVmhm7tCSA6rm9lglu9CvngjY7/duECVMwUORMZYg6NKe/90SBeZS
         in4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d9za7jNT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/XSGr6Oo28axNFVSowSd1ctF6/1EI7GBlWfbT3595do=;
        b=UCSCAz4Jwo5tMXk+gxFgZdmqKBnq3ses1Op0X1w6LfEwyg0Ba0EABhC+gNi/TttL6T
         A+fxC/FmM81gpMfXGcJJpA8HPqgLyI/qrVUzFtk9pBqR4V5sgKkQbk6LPP9hbylO/QbF
         SCz/Ivw55CQfqjkSh1Mxyh0yV43vrNTngmbWFqrka1IEHSxFnYzDUis8gu8DNYi6hN+o
         CE8cL7nk4dZ+CEmEAnLlwF8io3uK+UgdDiA+hgjAMlBvuKUB7Bw5W3JUa7xegIxco2Px
         0bFWfSXOgiZmGfe8CbgiZzau2x8EmoaXBxlXlyAnc/EqASzSY2/N6VYse5ok5a1uFt+3
         Z/Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/XSGr6Oo28axNFVSowSd1ctF6/1EI7GBlWfbT3595do=;
        b=ZFqjutqBdx2ct6WjDY3TALHGvycyqeCSFzA9SI6KvKF1RxSf0kTKP6roypcLiTQkrP
         npcuwdV3xZW0RmQctIsGq6+y28p5kRtj6LRilce2kSZfHkPex+q/kMVZOWidqvrrcR6J
         CDufN/F5GweNIChvyJ1VEbLGRJdWTdGH8vUwo9RNOlRy4kwNlDC+PaAn8N5lbqocZTHX
         H4oxJQsfeFXFYoNugop1zg9F7oON/C68NAubDEaFY8F5uKn8BbZ0fl6wf+PMBn5MMoJM
         FUsS/TsG2Aab9E7Wt6hzcRv50eqDMlQEHj/Je6DSuWpSd5k8j41eG0fqhemwDvRf7Xqr
         d92w==
X-Gm-Message-State: AOAM5323Zb5XwCtk2BOzo7NK5vcYP1tZsTDoPcBJMx2/+wWa7sDI9BTM
	traeX9ef+qXzQJ12EaSl/Ls=
X-Google-Smtp-Source: ABdhPJydcLWAoBSaOu9Jx5HUrmFthE/xGHP2vjkF+O7826fruIYfSkQTX3rndtVckh5rGRQJtDJ1qg==
X-Received: by 2002:a9d:7301:: with SMTP id e1mr19725500otk.289.1593555759140;
        Tue, 30 Jun 2020 15:22:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cfc3:: with SMTP id f186ls43652oig.11.gmail; Tue, 30 Jun
 2020 15:22:38 -0700 (PDT)
X-Received: by 2002:aca:4f43:: with SMTP id d64mr17561158oib.100.1593555758846;
        Tue, 30 Jun 2020 15:22:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593555758; cv=none;
        d=google.com; s=arc-20160816;
        b=w5gY4rNDCHQyHUyEaupdXkZOgpiACc2cdhUFm231oLZX+wbb2zOwli1UvysM1VHTu2
         T9opC5JjbkxhtBQtHQ2N6LEyJwNR8cYpW3xoyUjoAqGnGGKKvTrfNrYH0ghI5qEoymHv
         ajhkY9HMHCP31kV7igTo9BVPgCgBKAVMMvygkKg19mrgifA4XrVB4e8YpwzzwDC78vRv
         WpNd8PmHuU1TtlvWGCh2BpwlnpUjgv7rQQXUkfQ2QdhCactGcC9j/YSjBztYAW6l6lol
         4ekUxTGELuh8KEnCdJPHCvZQLXRXkIb9Knj6UBGWkuuHXmGaTMguItrBIOLBZqcEzVSz
         XIdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LQqg1+PZ05kIBpTL59xr7DfetEZhJfx8+ch9+gI56hE=;
        b=Vzbx/gXaHZYe2OA4q2UUXK5/Fv8z4CL95P+oaSf3iqaOwkooqEaagnQYB1dtDAl4/I
         R+LLfE97nJFG0WaTlcfOPTDACF3WWszPJ6sgRLJEIyYWpz5LAd3h0MKnafL1XGtUTd65
         JxcAUsZbKM5SS4+oMqcL4y6HxtOU7Y1ISYNRN5tOpkgo120YZmdPgC1y79r8VTUZRNN2
         XIJovXN7ocp1vCEKXKSJ/e27D4EUp6PIbUKU6OQje78Hm9XvordTwJbo3kUDUa5k5Ddc
         PN7gGKqrAe6gxreKEEcYCVQQicKyIgkKpuCFlqFUlWAkPwVrI9hnzga8OG6gCP2inT6H
         C2tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d9za7jNT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id l131si280007oif.4.2020.06.30.15.22.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 15:22:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id f2so9059891plr.8
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 15:22:38 -0700 (PDT)
X-Received: by 2002:a17:90a:1e:: with SMTP id 30mr23028159pja.25.1593555757877;
 Tue, 30 Jun 2020 15:22:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200617010232.23222-1-natechancellor@gmail.com>
In-Reply-To: <20200617010232.23222-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 30 Jun 2020 15:22:25 -0700
Message-ID: <CAKwvOdkXfW0vncswB_OjLfVu4-dAqZXaotw44y6TZSVEezWW0Q@mail.gmail.com>
Subject: Re: [PATCH] ASoC: Intel: KeemBay: Fix header guard
To: Cezary Rojewski <cezary.rojewski@intel.com>, 
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>, 
	Liam Girdwood <liam.r.girdwood@linux.intel.com>, Jie Yang <yang.jie@linux.intel.com>
Cc: Sia Jee Heng <jee.heng.sia@intel.com>, alsa-devel@alsa-project.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=d9za7jNT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Tue, Jun 16, 2020 at 6:02 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
>  In file included from sound/soc/intel/keembay/kmb_platform.c:14:
>  sound/soc/intel/keembay/kmb_platform.h:9:9: warning: 'KMB_PLATFORM_H_'
>  is used as a header guard here, followed by #define of a different
>  macro [-Wheader-guard]
>  #ifndef KMB_PLATFORM_H_
>          ^~~~~~~~~~~~~~~
>  sound/soc/intel/keembay/kmb_platform.h:10:9: note: 'KMB_PLATFORMP_H_'
>  is defined here; did you mean 'KMB_PLATFORM_H_'?
>  #define KMB_PLATFORMP_H_
>          ^~~~~~~~~~~~~~~~
>          KMB_PLATFORM_H_
>  1 warning generated.
>
> Fix the typo so that the header guard works as intended.
>
> Fixes: c5477e966728 ("ASoC: Intel: Add KeemBay platform driver")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1053
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  sound/soc/intel/keembay/kmb_platform.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/sound/soc/intel/keembay/kmb_platform.h b/sound/soc/intel/keembay/kmb_platform.h
> index 29600652d8f4..6bf221aa8fff 100644
> --- a/sound/soc/intel/keembay/kmb_platform.h
> +++ b/sound/soc/intel/keembay/kmb_platform.h
> @@ -7,7 +7,7 @@
>   */
>
>  #ifndef KMB_PLATFORM_H_
> -#define KMB_PLATFORMP_H_
> +#define KMB_PLATFORM_H_
>
>  #include <linux/bits.h>
>  #include <linux/bitfield.h>
>
> base-commit: 27f70ec4fa0e0f419031f1b8d61b1a788244e313
> --
> 2.27.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200617010232.23222-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkXfW0vncswB_OjLfVu4-dAqZXaotw44y6TZSVEezWW0Q%40mail.gmail.com.
