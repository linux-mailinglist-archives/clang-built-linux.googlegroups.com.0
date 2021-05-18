Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWOHSCCQMGQEAWHDNEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 0313A38816B
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 22:30:18 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id t1-20020a2e9d010000b02900f5b2b52da7sf2535821lji.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 13:30:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621369817; cv=pass;
        d=google.com; s=arc-20160816;
        b=W+OIQxZSEpv5xqx8WbkhV/uhCWBrPVL5ND76FMfb551yKFIBSEx9j1oRN3vKNlH6vS
         NZivWvvz6Uw1tq+F2TUyQO5xSDoKS5KUFANg1HZ6wJcfGv+n/B8WRltdN8sX6GaV5Yt8
         lTJ2kwq4abr62p2YIBC+Y4CJVaUvig+XXez3HWSt+74ZWVC2ow4FDgJcCu/W5TU5hiQG
         7eQc1teoi/l5lc25c0EnD8f5eXIvgNFwyxEZsf9L/QPjyvgYGC6maZ3kKZwxBjwru9cX
         ABLoel5oI8xSuRh4xCELowqFEyi2wm8IdI13jCt6lxQZTGVGrcYw7U3GvgOKLD/aUCPn
         JBvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TYTYFKOPPY50a2E8qOlwkEMaAvZ3Ijy6lM4102Hd3HY=;
        b=ORA1TTHOh46JqDWCM5579MM1E+CpFSiwQ8BlgVBwlh8pz2VrlX5m9JyfPKooHSrnD3
         fY+zmBU5KbL+p9/cZttw9sgx7EwJQvM9itjgS31+FJAI8y9KlbFuROltidr2xH2ZxHGo
         j70oRnuN1XrBFodLoT1GZNNDQLn/lRmydRaBEvOfcOW38oa468CnF528miiossjSkqRE
         oq8cieGS3iGJ6Vujm4s3WMxY09UGiK9WmSwUnhNdfp4ovA13pZdCW0jjb2RKu2U7e6ES
         kgaGKmSKQS6htqYrnQr7mjWdprIP4Le+WLjivTtMTjIf8/W0LypBC+T6CmroKBjZlqs1
         cdOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mofCgvJk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TYTYFKOPPY50a2E8qOlwkEMaAvZ3Ijy6lM4102Hd3HY=;
        b=qEWrux70OUVDw/Tc65DKrckl+6bn5bFiRjiwFkBjNBAS8VAYMu5oohAVZRCNSUFN3d
         KBFulooZez5sWohLODQX40CpiyqC+wQa1KY9guiA6vZodzadtYulsgiV/ChFwceUrI/+
         e9n60ab/XqCeg6tR8I7bNeX1yaRV6vZFUjn9vgepDUAavz/TPIS3+99uSgOpP6ogzyPo
         tbL5785+RTCU2MdfiVijRSjDpNnY+1G9FIKhjiv37O8VcTZDqONOpzgetQO8noYe3Rv8
         u59VF2nsaczeQIcX/wpYVDKiUb2tjLfNCRARt9hKtXZoz9L5WWbHzRs343wKrKjGFaOl
         TIvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TYTYFKOPPY50a2E8qOlwkEMaAvZ3Ijy6lM4102Hd3HY=;
        b=hnslCThDhRRor8hlPuGV0Pt8A/RtBtLJZwp4o8p9Graz2ugUg69NJDY353wMm3xved
         EPGDHxsafqydCBt1SByHt0myrULpAydr++OqX1zXgQCOlT/Tn57nAK6bQha3c+dMbFz0
         uFM8UIp7bGgubBuDm9oA0TMD0rvy3dcFJM0WhJdtuxjYNU7PIDRZ1G7WRx776KHS19Ko
         xBSxBZrPG4D/Yrcr5MU76se2yF6myrYU4ObCCdtMaIABTTTteIym6Dc+7m+xQdVFBCc5
         BHwQ3PmLkHJUleQXLTjGBhWaDjnJpha8Gf2qMTIXsOH1NH/QrqlX6y89wPmOAgnk53U8
         rfDg==
X-Gm-Message-State: AOAM531P7LN02XMlk7EHjcXuYq6fvBsXBFO4XjWTmzABDX7fQRchcmYH
	mB1Nsmpot5K32Yx8EwtZtu8=
X-Google-Smtp-Source: ABdhPJxN20EHTPJwj7Dn/bhifRkORKx0Cc0SWRns6xKSPfAzqfm1sYe/vxxSxqD7DCO7Yw9PImna0w==
X-Received: by 2002:a05:651c:1251:: with SMTP id h17mr5615653ljh.215.1621369817576;
        Tue, 18 May 2021 13:30:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1025:: with SMTP id w5ls3763641ljm.0.gmail; Tue, 18
 May 2021 13:30:16 -0700 (PDT)
X-Received: by 2002:a2e:a489:: with SMTP id h9mr5396109lji.21.1621369816518;
        Tue, 18 May 2021 13:30:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621369816; cv=none;
        d=google.com; s=arc-20160816;
        b=I1WoiO9fQ8vr2AsY38DqN+K/mV2rn3Esmd5ddFO1P2Td5C7dTtuuLYAcPaILPOSyBv
         49ct4e0w/xnBLM2RrXKvIccPLwBL/7oX9779GJhKd8S6L8AU80meIfkHf3fd1Fk2f2Ig
         yBs5vn6cAd3BdlPB6sBh56F23IEr/8H0BjgwSgEfym9sqC/trq6fMiw4CSX+PuHtFhli
         t5kQw5PF8Z2t5avVFTJ7yC224Ad5sOMCYP32CA2hlW/9R3JrQcfOsfAAHeHDAXenvyQ0
         OvwFaKtTAChkxdkDgxf0GXgvbp5z6y8EU9C2VAXUPa75kGj/v7GT3/espW1MD0t/kwhX
         vikA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4Bk9uyRl39i9BigbgL1GtEM49Gq25V6Tx/nXtBMrKNo=;
        b=A42prDOs5j0q8inj1u/vvzgV+sYaMOaduJvP9ZjihvbAAP1uZ94mvPxjAtyLMedXWf
         ZNM5kW3aKj6bBebmiKWTS9IbpW3BY4OmKlmS9EJG77iiLN4JvDzbm9jzTsN2FH6T/+6M
         /FWHbtYEanyr4sa3ZbYK3OHc70FrMZx9UgpkvanmOSXmd/fbxieobSx28iCz/Pdb37+a
         sUeJqp7cguJU/VIVnbfgkiyTexiD0GVDgBO7Wz10cU9iJ0zUjFCtRN1bfduCdlL76lFX
         WJUU3UIGjGiXQgJpZi5vjmQx1+olyjEp3JGkVotdGRoG7h/OY1iHTl2izCIKNeCu3LGI
         2nCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mofCgvJk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id o11si388897lfk.12.2021.05.18.13.30.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 May 2021 13:30:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id e2so6707871ljk.4
        for <clang-built-linux@googlegroups.com>; Tue, 18 May 2021 13:30:16 -0700 (PDT)
X-Received: by 2002:a05:651c:106f:: with SMTP id y15mr1811072ljm.244.1621369816059;
 Tue, 18 May 2021 13:30:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210518181247.GA10062@hyeyoo>
In-Reply-To: <20210518181247.GA10062@hyeyoo>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 18 May 2021 13:30:05 -0700
Message-ID: <CAKwvOdk+BZjNeGNjW3a0_yRoGhonP0=Jr6C7=KxWQphkU_dRkA@mail.gmail.com>
Subject: Re: [PATCH] mm, slub: Fix support for clang 10
To: Hyeonggon Yoo <42.hyeyoo@gmail.com>
Cc: Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, 
	David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>, 
	Nathan Chancellor <nathan@kernel.org>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Linux Memory Management List <linux-mm@kvack.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Naresh Kamboju <naresh.kamboju@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mofCgvJk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235
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

On Tue, May 18, 2021 at 11:12 AM Hyeonggon Yoo <42.hyeyoo@gmail.com> wrote:
>
> Previously in 'commit ff3daafe3fd3 ("mm, slub: change run-time assertion
> in kmalloc_index() to compile-time")', changed kmalloc_index's run-time
> assertion to compile-time assertion.
>
> But clang 10 has a bug misevaluating __builtin_constant_p() as true,
> making it unable to compile. This bug was fixed in clang 11.
>
> To support clang 10, introduce a macro to do run-time assertion if clang
> version is less than 11, even if the size is constant. Might revert this
> commit later if we choose not to support clang 10.
>
> Fixes: ff3daafe3fd3 ("mm, slub: change run-time assertion in kmalloc_index() to compile-time")
> Link: https://lore.kernel.org/r/CA+G9fYvYxqVhUTkertjZjcrUq8LWPnO7qC==Wum3gYCwWF9D6Q@mail.gmail.com/
> Link: https://lkml.org/lkml/2021/5/11/872
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Signed-off-by: Hyeonggon Yoo <42.hyeyoo@gmail.com>

Thanks for the patch; hopefully this isn't too much burden in order to
help us support clang-10 a little bit longer.  We will rip it out when
dropping clang-10 someday; grepping for CLANG_VERSION should turn this
up easily.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  include/linux/slab.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/include/linux/slab.h b/include/linux/slab.h
> index 9d316aac0aba..8d8dd8571261 100644
> --- a/include/linux/slab.h
> +++ b/include/linux/slab.h
> @@ -413,7 +413,7 @@ static __always_inline unsigned int __kmalloc_index(size_t size,
>         if (size <=  16 * 1024 * 1024) return 24;
>         if (size <=  32 * 1024 * 1024) return 25;
>
> -       if (size_is_constant)
> +       if ((IS_ENABLED(CONFIG_CC_IS_GCC) || CONFIG_CLANG_VERSION >= 110000) && size_is_constant)
>                 BUILD_BUG_ON_MSG(1, "unexpected size in kmalloc_index()");
>         else
>                 BUG();
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk%2BBZjNeGNjW3a0_yRoGhonP0%3DJr6C7%3DKxWQphkU_dRkA%40mail.gmail.com.
