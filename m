Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2PP7KCAMGQEPQ62URA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C3D380F38
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 19:48:27 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id v20-20020ab076940000b029020b0b4ada34sf3984606uaq.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 10:48:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621014506; cv=pass;
        d=google.com; s=arc-20160816;
        b=BPXEE5ZdbX89IStJKE156MhES5jM+cx20X4SDRYJCLNzW8Eu0JQYw6bemSMDsglNQu
         qbz2EAXFuqqkNiKgfm7Lw19yHnboxN/KeFrPD86rZo4f03ak2ylPrNOQpECl0A/iIxMb
         C0cF5g8qFIQzn7lhAex3w8Lc++PpVzICprTGyKIYy9COOCNYmMUOZvMMvW+xJ3XSaX6/
         LPEXYaVOMT0K7pEA1QZaoRN6rrCYUBDCBdN8e2P2ARMi97+nsf3mhHPgfnujs45yWBGR
         ynyTnTYdZWnyRDGRz4ECF93L7hir5+hRMJDBSvJpFMImt8tH6aMvT5zjt2WbtK+28BZM
         SLKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=gDd2VxCDWHWO9ZtPhvjIChe+bt3rrEJ1wpLwhSGATeA=;
        b=Rj20vO7S0Nc6NPhxp26JDwfNz+C+I22o4GPRJcMsWDcWn27zR7g5+yPMlrtmJYa/mQ
         NuhrsEmOtVxqBcXoeZZ4MmFmsDa1sKsEvlX/oPAB/hLmc+gNHwxsZZCu7DDGzwuWoxSC
         q+XhEqvUmEnKKDfNNN5sk3otRgNem69YTSZ8NnYjdgK2yufoNcaox2lA4NcCZUTaWm8I
         q8B4uKdtA1t1tarTJvh5QtZPLvnH7+T20byuWjSGT6xCEFokwOqLi/D1kuckBMKG86pe
         Y/QWoqMDLpkKxgcOEAyqMrAB85oiA7+hCueMaqSp/ErCgmLXuUuLvQEb6fVZkgwh0EDc
         sc3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GR4deiUK;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gDd2VxCDWHWO9ZtPhvjIChe+bt3rrEJ1wpLwhSGATeA=;
        b=tU+EeOpLqrmCvvAJS2uCkNnnYRt4iS414I6JYNN6dME7jpnxUEFugEOUEbD8X7bSAV
         6wAJSC3Vbo2aNecbIAV9hmhCWoXAJGZ1vh2lshrg1tPp0tmwDkT6rDqz/a1KGJj439WZ
         C0WmJdlZr0Qqa/6YccGLiEMxg7akQ6yNqHub7o3mT/HQSSlWQXCvRKd1Dh1VbHa2h/dY
         miJtB9NxdIw9s0c2Je2nE6oh6KmelOyccu3aN7L13IabKKCXI3G2D/gPme0c1808l1WW
         azE8lfVSnvkb6LRt+u1Hrm7noOydSHRpp74mKftjfzTqKM8Ajwk5EUTPpntOEzM4qcO+
         CirA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gDd2VxCDWHWO9ZtPhvjIChe+bt3rrEJ1wpLwhSGATeA=;
        b=FjFK4bgbODeQcl1S3LirYn5rYqc9XjHvAhDt/nDUU4jRGddzy/v7Vah+pyQMg7cHCF
         jMW37ktBvvgSCKDaxxB9adHxV1kqQBdgVG8pS2KfsFYKiJGWKVrgMhEtEKgOKiTSBl6r
         R3yCW3epSF4Cu08IbE+XWPQK4gaiHd+mgRcBSxgtuQnXF6kMIyBF7mWufO4GvacosxrA
         Yq5IJIjAM+uliOfYM5KJ0rI+1y07MO60fUxs8fm8c2EmauSJ8N7YqwExrO2HhK4VntUy
         mIvEJHeuYO1MELLq3XUlSkO4vL5C5uOKc/Ug1HBsNAvEv6UOFFV1ZkJ7sGGacjL4Z2Ug
         S1EA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wAX51KDeEykSDLzoxKbtKVJSN5bdKOf8YT1R93zo4FAwirL5K
	P0oXhGBtzptyRYwRcwtVMko=
X-Google-Smtp-Source: ABdhPJyNTpOCk/r8w123HFWLntQANWWpfI1KEkddA3To611oOsH1zzI0l4LS1JJLJBpA0AmF9A76rg==
X-Received: by 2002:a1f:45c7:: with SMTP id s190mr39501135vka.21.1621014505872;
        Fri, 14 May 2021 10:48:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:725a:: with SMTP id d26ls1265514uap.5.gmail; Fri, 14 May
 2021 10:48:25 -0700 (PDT)
X-Received: by 2002:a9f:35b3:: with SMTP id t48mr26804149uad.129.1621014505358;
        Fri, 14 May 2021 10:48:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621014505; cv=none;
        d=google.com; s=arc-20160816;
        b=aNUNIZL2ftkY4gFIETDvcIi2VWG9qmNZqUvLliPz+DBbj//cyd92YhzdggEmSp2pZd
         73V2XSQ6PO4rHm5GpifnFljgb5pHb+Hq206RjAPHNd37ZO4XQZNg5SLmTcW/6LesiviT
         683xoHJNOBldvF7+KD6KZ2xS9+OkpDcMzqEq+LfxwNO/Xka0mrzBarncIwQdvek2CGUW
         Bo+/XcO6IkVvkc91p/Y8dfUhfRcCS7+WyykU4sRtPzeiZLukj3o7xnRWaTKsPDYg+/Rt
         By5QW+VD4LSzFWF1w8Dzw9FUspHnAD9eAQwnGQBx5DRK8C9b9xeQh9DhrouISt8zlwMW
         kr7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=PwHOZ9mMay2e+lnCUmViu//dj+6wMvFlVF1VF8dlLFs=;
        b=SraMBkhlTpXKtIjEGOk66hedR3cqJIN+4VjPNYKTL9U1u2eJovPtCCXtdd7OtFLyL+
         uHM39CruSLcm6YxqU/n8zDi9+KKCvwF9TwjutPXwDZYzOLL+LAkjgQdc/d/iEiRfAOD8
         1MTAX8ithbk6jAGIOjs3VkmU0tb8RFcPmRQNSu2mF1+t5B0bp3QHl4byZ+IMvPXTFlNk
         z7uXmXrsp9/0Q/0Mp7+VLrIo4oP0TPyXzfvN7p7TEB4r3pEV5s9l+ouAF+5wbv2Uiizt
         RlXJjk2W5MHCq8ZcG5xIVs6jtokl1ykAxt7fQIZ0gdUeQ2mf0J928zP/LoidGFEFAM6w
         OfQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GR4deiUK;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w22si582345vko.5.2021.05.14.10.48.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 10:48:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AAC55613EC;
	Fri, 14 May 2021 17:48:23 +0000 (UTC)
Subject: Re: [PATCH] mm/shuffle: fix section mismatch warning
To: Arnd Bergmann <arnd@kernel.org>, Andrew Morton
 <akpm@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, David Hildenbrand <david@redhat.com>,
 Wei Yang <richard.weiyang@linux.alibaba.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210514135952.2928094-1-arnd@kernel.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <1904893e-1e7f-b1a4-454c-6999f8ac670a@kernel.org>
Date: Fri, 14 May 2021 10:48:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210514135952.2928094-1-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=GR4deiUK;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 5/14/2021 6:59 AM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang sometimes decides not to inline shuffle_zone(), but it calls
> a __meminit function. Without the extra __meminit annotation we get
> this warning:
> 
> WARNING: modpost: vmlinux.o(.text+0x2a86d4): Section mismatch in reference from the function shuffle_zone() to the function .meminit.text:__shuffle_zone()
> The function shuffle_zone() references
> the function __meminit __shuffle_zone().
> This is often because shuffle_zone lacks a __meminit
> annotation or the annotation of __shuffle_zone is wrong.
> 
> shuffle_free_memory() did not show the same problem in my tests, but
> it could happen in theory as well, so mark both as __meminit.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>   mm/shuffle.h | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/mm/shuffle.h b/mm/shuffle.h
> index 71b784f0b7c3..cec62984f7d3 100644
> --- a/mm/shuffle.h
> +++ b/mm/shuffle.h
> @@ -10,7 +10,7 @@
>   DECLARE_STATIC_KEY_FALSE(page_alloc_shuffle_key);
>   extern void __shuffle_free_memory(pg_data_t *pgdat);
>   extern bool shuffle_pick_tail(void);
> -static inline void shuffle_free_memory(pg_data_t *pgdat)
> +static inline void __meminit shuffle_free_memory(pg_data_t *pgdat)
>   {
>   	if (!static_branch_unlikely(&page_alloc_shuffle_key))
>   		return;
> @@ -18,7 +18,7 @@ static inline void shuffle_free_memory(pg_data_t *pgdat)
>   }
>   
>   extern void __shuffle_zone(struct zone *z);
> -static inline void shuffle_zone(struct zone *z)
> +static inline void __meminit shuffle_zone(struct zone *z)
>   {
>   	if (!static_branch_unlikely(&page_alloc_shuffle_key))
>   		return;
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1904893e-1e7f-b1a4-454c-6999f8ac670a%40kernel.org.
