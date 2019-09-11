Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVGB4XVQKGQERMLXCDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB40B050F
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 23:02:13 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id 93sf4233806uav.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 14:02:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568235732; cv=pass;
        d=google.com; s=arc-20160816;
        b=y/AvVfQBGVBpM/rkxU98i/8OWQpWf/8xvPpokUZjlmR4B3tMbsjhW7G7Qk3onHjIAQ
         /N64x6RNFsuA1A33TiGAT3n0Mm7YpCS5vRwyuctKsEYFzWe5ivujADIrgCg/mkjyKSl8
         VPztpznGhCKFvwhPh1xA/sjbqdMFtXQm7UJ1EZA1MWemOkwagnmTOCCK3jgJbPSksgNs
         b+oS4wNOTIjcexBybYF/WGF8ghHa6ddZccU1jeRsbIxZ6Gu9Zwq5Wsk8LaqaWtxmX4NL
         0CXaLLNMtUHp7Oj/kWyQWbHZpodDU7evLnVCEUX6PO+BL0dAzfOV7nrnCADdNGbQ+uLd
         pJQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fnXadRPB638K6XmbcvlftYoUho6P02kZHgP0IhHHiGg=;
        b=Uz/NtmVOxDLMSuvzlWzHL204l4JowQeVw57KmerULYJfRg2fGCQbgFXQdBfUjWVcfR
         O2qILObysshed7bGAV8/hepLBdqk9ZG42rrzED3uEr6tj7DX99Tc8MELdgqJNH5w0xlj
         kQkOhEJOCJyhk/UiSg+NjRnI0t8TJwZhYvFpKwSJ7ugCp4iUd2oYQnproks+A2ljAHKq
         5pRUm3gvkGfknkdyx/ybFjwaFh66UPrWd2YPi0ri5n+wqd4B/VcGve1XtTrVIhQHUJdx
         EgAPEPa9aCBApbl7BjNu6AcqS3i5HFmW+AIftY+CspLE4tM48qTEKvGv2p0F4l5OLqGV
         VN1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o7jCP9O6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fnXadRPB638K6XmbcvlftYoUho6P02kZHgP0IhHHiGg=;
        b=TX+PEr8Sv/KWXZEQWTVc897w1PDUMhwAi+bYFnMyHQmHwxV9V9S5PXQJnNgtHzwhg1
         ZbZ9mQ5p08HaWstps6vwG8h4hhhYBHFC9fId8R8h+KdNS1ukFwjBEqAEyfvjPe/ShQ+v
         zOOww9d5OKmt/luyxawDYIf+mMguXUReLhF8kOOiubRcgGpFgi2WnVkiew9DFji+XocI
         YW6yYNnWTCMrGZhOuEfMGqDCF0rbFXj0jNnIFA+gVIXbhyBqN6adHpFFO2XNCGwTz5x7
         BpeYFfzTU4j7UlHvQOr9seYzd7rZKC9XtnCm1B//IFHSqi48cf3y2lIfS8fnJW0okoKR
         /Mqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fnXadRPB638K6XmbcvlftYoUho6P02kZHgP0IhHHiGg=;
        b=qHvDDrfDpahfMUw5KOhrJ7vO+P2YQRwEkw51a6B4Lgnz4LE9p769NT+8uYKz8bKvSw
         9QsGynekUYhKhI9iyh4ZEC2BFDMgUSiAqtW79DjYY/GvfbU/HI6TM+OvS2ya3InCif2g
         QWdd2DyOKEyxuAcXdNVIF2lO1UwWWhemTIJwhpKoJ2Lp34BkRc+8gjQd4TqxsvCa2C1Y
         b3GEECPkRar238VkcqFhzUwtvOFWZkcC1y/lvgkj55IcRmKiBhLQ+fWmsRPcKmOdjY99
         wHGza9emPty7P+lXa38rrpsNYlRgz1k9MpuQZuHiNHV9xNeAxcFWrLT02VF5zG1z6Zbe
         LHkQ==
X-Gm-Message-State: APjAAAUZOyLR90c3pvJ2gd1gHRhROlVW58xGolSxGStu9ut0YaWPuyJj
	9+mYl2hlx4LU2XyMdq3xm4Y=
X-Google-Smtp-Source: APXvYqyPtprF1Az1vtmwcT9mAgbmTpKZts+2/CzHGiUyh+78ZPnUcesvSNeksltHtnZFMEEn552qaw==
X-Received: by 2002:a67:db8e:: with SMTP id f14mr20572839vsk.198.1568235732688;
        Wed, 11 Sep 2019 14:02:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2562:: with SMTP id 89ls771054uaz.12.gmail; Wed, 11 Sep
 2019 14:02:12 -0700 (PDT)
X-Received: by 2002:ab0:6585:: with SMTP id v5mr12585159uam.78.1568235732403;
        Wed, 11 Sep 2019 14:02:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568235732; cv=none;
        d=google.com; s=arc-20160816;
        b=X0JNMd9J3amiJWgkKfASYEb3LHHJj7RRHx4lm+BcZYyXg0k+Ihd0n9REqllC+DdfKp
         UrV/i51MOdTctz3gHrf/87zkINunx7Z+rSkWb9kGU7UyQTEtIjIg/W+cVpPFD4BEiBB8
         H8uLZUnm9TdsgyTQ2JFUKyRxbDuc2b+hba/jDKA2DHM/zNOstToTEKIJ5GV5FHZWylSi
         XcwzHpSciS+CJ4nkY+vdl2lUP6G9vjqV3xlEw3vdW8mhIT6qYy7gKXMKlYREZvLX1M/C
         Gco5hFSHYwBplf8XA9rtt2DVnkUHtDEReYaW2Dk9IAZaYW7Kos76Q8fpaKUMV7FhQGyQ
         l93w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BmSGku8jGWaQdEnWgjS8EmzhMwO0vQvjKEtMVStz3ho=;
        b=on5hCB74OKTi8S93aJ4qWh1k9Zs88fRVTTBAcK30FKvOjvXK4umhvgtQPecrTLHBx8
         Ay0ic2xB/+QblaT0TY3XsOV7M1Fq1vQra7PfKGejJUVlI/rT+Inwc9LikfqE9me+NqS9
         jS2TVwJD8XwW0allhXJOzFask7Zrwf3yAbQimgvhZN6oCraYhKoSQgrV2PBTnkraGl4A
         MwPlhm6kYsNmlVtjJ1jOnG9QnJPwTjPeJ3IPCAxpp5qzu6ObgReJoYVwVDjdmG97d1bW
         br4QggHs4BsEfrL9OySUo9sfI5ukCvlAl1mavVxEAzt/5bbJ+7+Mh21hp+3sUn0lxP1u
         jG5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o7jCP9O6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id y23si1089479vsn.1.2019.09.11.14.02.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2019 14:02:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id y5so11725255pfo.4
        for <clang-built-linux@googlegroups.com>; Wed, 11 Sep 2019 14:02:12 -0700 (PDT)
X-Received: by 2002:a65:690b:: with SMTP id s11mr34339694pgq.10.1568235730928;
 Wed, 11 Sep 2019 14:02:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190911182049.77853-1-natechancellor@gmail.com> <20190911182049.77853-4-natechancellor@gmail.com>
In-Reply-To: <20190911182049.77853-4-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 11 Sep 2019 14:01:59 -0700
Message-ID: <CAKwvOdnh+YoACaX4Oxk7ZiEQAQ2VgA6W=Dtbk7gzK5yJduFvGQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] powerpc/prom_init: Use -ffreestanding to avoid a
 reference to bcmp
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=o7jCP9O6;       spf=pass
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

On Wed, Sep 11, 2019 at 11:21 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> r370454 gives LLVM the ability to convert certain loops into a reference
> to bcmp as an optimization; this breaks prom_init_check.sh:
>
>   CALL    arch/powerpc/kernel/prom_init_check.sh
> Error: External symbol 'bcmp' referenced from prom_init.c
> make[2]: *** [arch/powerpc/kernel/Makefile:196: prom_init_check] Error 1
>
> bcmp is defined in lib/string.c as a wrapper for memcmp so this could be
> added to the whitelist. However, commit 450e7dd4001f ("powerpc/prom_init:
> don't use string functions from lib/") copied memcmp as prom_memcmp to
> avoid KASAN instrumentation so having bcmp be resolved to regular memcmp
> would break that assumption. Furthermore, because the compiler is the
> one that inserted bcmp, we cannot provide something like prom_bcmp.
>
> To prevent LLVM from being clever with optimizations like this, use
> -ffreestanding to tell LLVM we are not hosted so it is not free to make
> transformations like this.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/647
> Link: https://github.com/llvm/llvm-project/commit/5c9f3cfec78f9e9ae013de9a0d092a68e3e79e002

The above link doesn't work for me (HTTP 404).  PEBKAC?
https://github.com/llvm/llvm-project/commit/5c9f3cfec78f9e9ae013de9a0d092a68e3e79e002

> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>
> New patch in the series so no previous version.
>
>  arch/powerpc/kernel/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/powerpc/kernel/Makefile b/arch/powerpc/kernel/Makefile
> index 19f19c8c874b..aa78b3f6271e 100644
> --- a/arch/powerpc/kernel/Makefile
> +++ b/arch/powerpc/kernel/Makefile
> @@ -21,7 +21,7 @@ CFLAGS_prom_init.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
>  CFLAGS_btext.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
>  CFLAGS_prom.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
>
> -CFLAGS_prom_init.o += $(call cc-option, -fno-stack-protector)
> +CFLAGS_prom_init.o += $(call cc-option, -fno-stack-protector) -ffreestanding
>
>  ifdef CONFIG_FUNCTION_TRACER
>  # Do not trace early boot code
> --
> 2.23.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnh%2BYoACaX4Oxk7ZiEQAQ2VgA6W%3DDtbk7gzK5yJduFvGQ%40mail.gmail.com.
