Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTFLVOEAMGQEV65ITZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id CD59B3E070F
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 20:00:44 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id m14-20020a0565120a8eb02903bcfae1e320sf1437006lfu.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Aug 2021 11:00:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628100044; cv=pass;
        d=google.com; s=arc-20160816;
        b=seWtlx/6jMm231Cusm/HTYdL11mdDYK+qyH7nz1JJ2R2d591845r3lM15kVPrmqFhf
         isnIH8yfWAZykAHrlBVY3lblb8fGRMy4Ny5hCIJgIibBuI61aoIeBMQr+Iy3M/FioX49
         be7Jw4Q9w2eGajgHOLaell4L230rh8M8axtMLavenCBKdtQgstFLvvRNs2j0WjmvkD4j
         IjO/guGeJTP5LDjn2wNRNSGqMnjWh0pKKHIOVcAsvak7nxZMMBlL3wb4hBaJeZtHbksz
         aF/JtSoW43ouyiK8/2uU0jqx3H+bD4jgfY6bPuVC9rN01SwmlIfJ8+kW5fgGLGvNHWoo
         O/zA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yM83nRgYD04zqZ8emFis0Bqn936CKAIzrmWnWapBZEU=;
        b=e1yTd4U82jd0AcfZrbKe39A+EQ2ibieVajK5SgcOokLJiZnwO+JA81/mi3OOyv/HAQ
         jE0skzfYKBcsh9WTh6au+OeGtUvMp5NMF4aF096s/W2GFOajXZ+mmJ9xwIovK1tTRSDw
         8q7BLHpCJhXEqX9PkWDjQkxF6ZEXCUvFB9pOfwSZQxRPaVQNe/Ye75JT2rQ2a2WFktwx
         A3vYaXtZeq2MWLf+TfpO7m9qWNOPVfWyGjRvxzJoK8w/+WzOAlWhXJEcAnVxVrs9HRC7
         8qKGEPrANEd1Ydo6e5Ko7vB0swmdCz3PH6N0cUC/9WzFrbNr+oKSbgV+Y42cPc7x0T47
         +BIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WBMCSpfh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yM83nRgYD04zqZ8emFis0Bqn936CKAIzrmWnWapBZEU=;
        b=m+9FETkKkakgYmGztubAv/Zmze3rFZh5iZZXAjnvRIx0BxlePBRFT9wfpTiWE3HqU+
         YubqGtwM0hGtaYgcBvBw/q8qlDkgCS+psAfCfg8R1x/u18o4g4z6fqhIZoSlZllK5C+A
         sw/lGfYedacaYarqRbCkJ49yMCZdSGDNMhv1eN6lHlweDBYDXKa9bm+rvXFAEYTxY+H3
         feTyP9l2lgoPzTly1MmsCLj+S4gM+bBXE5kHg1d7KWIunU16AE2kOCnSe5owF0I+UWse
         MAGb0s6GzfgNr+6iW6o7hLlqVHIWg8tv6XmwAieQOyeLvG57GEv+lzYVOWU5Oy8X6LIn
         DXRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yM83nRgYD04zqZ8emFis0Bqn936CKAIzrmWnWapBZEU=;
        b=ME3oI8nd1r2PrBU201kH5PT+gKWSli7rBDUwpo/b1vx7YT3Xdji8zOkxgstmeIMOm4
         ozLQXd39s69zPdq+2JYh16PZSGDwRNnUMlHLjr+Yfbn7QZWWtJqVmbtkCE/3HClfp1Ui
         AckYtusL1fByUyKZZtmAGteSyxbBCpTRXPc5WTcAE7qkl1Fku5lXMFm35R0nWqpL12tZ
         2grbzNrlunI8LQLWECyaKMhYhsKsVG7kFuCU3/8mZk/VxtEelnKvfgI706elxRwK26Hl
         0cQKamjFncdloPlERkrw8vZubVQVr/y7humsqjAHh1cJlq1d124CGdmtC5Tf7rT1SWCr
         o3ZQ==
X-Gm-Message-State: AOAM533960qWHmy55WbTGn1O785qM6LHGO6fBW4WtHsRLPaRRRlekqPp
	IYFrya1UDSth9PmH+/VHDSU=
X-Google-Smtp-Source: ABdhPJxbP380NF7/ZA7FWXPRT2Ssar7pQ9ez/F1XcSwLvmswQdYaMRkIwZkIOFzXY9cVVJr26rQhXg==
X-Received: by 2002:a2e:a553:: with SMTP id e19mr437943ljn.102.1628100044408;
        Wed, 04 Aug 2021 11:00:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b1e:: with SMTP id f30ls2358807lfv.0.gmail; Wed,
 04 Aug 2021 11:00:43 -0700 (PDT)
X-Received: by 2002:a05:6512:2293:: with SMTP id f19mr301333lfu.379.1628100043435;
        Wed, 04 Aug 2021 11:00:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628100043; cv=none;
        d=google.com; s=arc-20160816;
        b=JX5SJQEiSho++8IFLcfpj2xYW0npFIu/7ABUdGjxVNLvnCw8XReLoE4nl37o8PD41K
         Svc+NNGswfEoF+BWw3AHW6WmKD0BUK+aI3lI6TQneC69GdnKh7859fDBPpRGMm60l8Hk
         DsRRcGVNCx6vh0/beObG/VQhmm4j0ERMgqSt2VudD3TzHxnbypeIsljP/z5SoHh8lCZT
         3krz9+zkn3rfIm2XSK6nFYQIlV65xuXlsIY5w3XZrftELi2stICMIiODN39V3Tv4BKfy
         Zc7T1UXOiISuRziXqVKX64ANS7YRpb1rYham+J3Gv05IZZKT0w2PaYy6qZm+IMvysFtl
         klmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=l+ibMoMQpfUT9bLOurH7tEEZu9XJnKNs+DZk3gP/F/4=;
        b=yV1klUXJDfkQ27/x0wxClKcbbfThysLQc5wrrYzdmDmBNUJT7tL3UMbZo8eAnkFIoO
         uL4v0dtkowA/2NzK2f7y7io5NXp6iyZLxPyEuazwJvWgK0QtKVgBWih6VTgK85Oh6qGR
         yfKXZBIrkpA60fNEtYBalmW9qtKRnHZAUImcC+NnvSQOsunWtNfud+8yCYEmSc+odh25
         AHxB77U0oA+Cg1aF46zW8Brc4ELYwC9oriZOJFS9kjJBNlBq1gsDuaN00TPMFbSKU8SN
         jRZPduEWEV8MbO6OInnXRpclpymQTIa8diJKfk8RpsA22N+mRZmU6j0FMuZwGpFxY8Dq
         QfFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WBMCSpfh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id u7si23514ljg.3.2021.08.04.11.00.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Aug 2021 11:00:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id p38so6012982lfa.0
        for <clang-built-linux@googlegroups.com>; Wed, 04 Aug 2021 11:00:43 -0700 (PDT)
X-Received: by 2002:a05:6512:3041:: with SMTP id b1mr346634lfb.122.1628100042816;
 Wed, 04 Aug 2021 11:00:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210720181542.2896262-1-ndesaulniers@google.com>
In-Reply-To: <20210720181542.2896262-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Aug 2021 11:00:31 -0700
Message-ID: <CAKwvOdkdoAadmOt1w2cE4Q5rOM48qPt3_WgkSkhxGVsyVV6U0w@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: add Nick as Reviewer for compiler_attributes.h
To: Miguel Ojeda <ojeda@kernel.org>
Cc: linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WBMCSpfh;       spf=pass
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

Bumping for review EOM

On Tue, Jul 20, 2021 at 11:15 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> $ ./scripts/get_maintainer.pl --rolestats --git-blame -f \
>   include/linux/compiler_attributes.h
> ...
> Nick Desaulniers <ndesaulniers@google.com> (supporter:CLANG/LLVM BUILD
> SUPPORT,authored lines:43/331=13%,commits:8/15=53%)
>
> It's also important for me to stay up on which compiler attributes clang
> is missing.
>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 548783bf6505..fe9b2ab45402 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4658,6 +4658,7 @@ F:        drivers/platform/x86/compal-laptop.c
>
>  COMPILER ATTRIBUTES
>  M:     Miguel Ojeda <ojeda@kernel.org>
> +R:     Nick Desaulniers <ndesaulniers@google.com>
>  S:     Maintained
>  F:     include/linux/compiler_attributes.h
>
> --
> 2.32.0.402.g57bb445576-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkdoAadmOt1w2cE4Q5rOM48qPt3_WgkSkhxGVsyVV6U0w%40mail.gmail.com.
