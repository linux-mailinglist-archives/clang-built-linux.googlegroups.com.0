Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDPYQOFAMGQEYO3UA6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E19B40B852
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:46:21 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id h1-20020a05600c350100b002e751bf6733sf90742wmq.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:46:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631648781; cv=pass;
        d=google.com; s=arc-20160816;
        b=SWlW0sNMtEz9psfPwnj0rYkj5COpzeLU1Da+4GxUj7e/VZh4GLo0IYo96jYESiBvBF
         IoAsoyW76g9Uhxh+IrVWpbuwGUALUYq3fD+QZckRGF2hWAZJiP5Bt76OmLV5vKPtkugq
         1G/13BHqFIgx02duxAAALOKoxC4dN3rKZ8Us1Nb8jGcCkMcJR//W/qQq8kZ4cmLqog8N
         apGEAZ/6QiKqeI7TZhP9hD0aS65GrajvkSv6dtMdP2lMUUjq3IyNYccr99PUZgFYbKkn
         9zRwepYGFfhoXEUfreRCf9hoU6zzsgT3c5eUjxw+tJPON9FzzX/shWv8lYb5AaHC8fkU
         FIrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WbX0lCLZxdcuNScJRYCyYMulXay0D72BYRPugLBCjcg=;
        b=Z7zqc5YapAjAIefRVUCWlQWJCAAosAGsyZuN2FZdPvKEZQwhsw1OjZH6Ys5RHKZon5
         jYp6gJUIXte9dns9h0df1+SXlfwKhOzKIkjq++T3/+nG3c9vs4pP6Ft8VShSXO/RSC/1
         zXs9etskAGR8AEnt653QDLtgtmAHoVwl7qbXrvLoT/V+eI6gt5B3yHaAsIJEoL/1L9gW
         750Gqy/xXQlN3by0eCCoeeZv/QWI7Rt6/ebXaZCpVjTdSXIcGizmC01jMbWD2Yn6A77S
         Jy45vGVYn4+9xQyFCs+32KV20b3wQQI5NFHDb1VCOqm3yiRPiT4Mn9Xo1aXDMqIYNaMw
         VLkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=CCXklwHg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WbX0lCLZxdcuNScJRYCyYMulXay0D72BYRPugLBCjcg=;
        b=XOByQs5s73fTQieWAM08X0p/wXerEDN4INILfkuyq9+I/kQGmXWbtE4RopwE3oLRrA
         mID0DobQnnerUbY8AHG8hXmamIqVpBOSSTn3W4z4jyIIe4/fKvztwsZsbuQNEypLu62l
         R2fBYZ+M36HCQiCyNgusg10y32vRUKjmANNWPKWGlfuAyAvV7xIHy2ZlF/1s7pDWauDL
         duJ3YgfjPb/avSOWwr8Rqf6GdlYZyb8cgheunCP8cJLnGlmm2mKeyBgPQkC8m/c0J0bv
         e4SHhp4te8mCbpN0elSAsds5hpaZiq6XraQWFh8itJqW191YSIBVrIq/+Yrzy5LMZE9u
         Y27Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WbX0lCLZxdcuNScJRYCyYMulXay0D72BYRPugLBCjcg=;
        b=3oAp5JXxJ8s/XHNZTO7Ae6hgZyOzRA9ExQbJzCPptE1Stw5TGbMpEswFy+YpVDOtIX
         SQDNNDojQbZE3OVAEMRxs2qYYE3OPO7UiuejUy3IT5x4IvEZ1xsU9W/WdrH/eozzwP5+
         XUrBvtqgQIJv/5BqxG9s1Xkv9jI2hMIT98ZWM3r51tbhHtln3rbnmilaJieCv+uiwVxn
         B85A5CqNeROvfnIybBLwGCgUpcZpHI/LHDFeUAXvD4lrhIJrW16Z/39E+q5vJwy1ppHg
         sM4n+R7yziss2Rnw4nh5mLGCdk1jJ71foczfQFxEkiB8iuFJPk+Sl0WPMFb+y2U47pal
         h1Lg==
X-Gm-Message-State: AOAM5301wfC1/C4KnGuyi93spjvU6Vw8TQsPp4mgSUlnElhBqOT33r28
	EfDSn1leUJvVJdT/YfFAqmE=
X-Google-Smtp-Source: ABdhPJwXSu1AzSzv2nuwXMxSTaGTVcHxRhbTrYOda3okx8Z4QuGAuHoJr18e8hrsMwaY+72/ej5xsQ==
X-Received: by 2002:a7b:c4c2:: with SMTP id g2mr754454wmk.134.1631648781378;
        Tue, 14 Sep 2021 12:46:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:c789:: with SMTP id l9ls86744wrg.1.gmail; Tue, 14 Sep
 2021 12:46:20 -0700 (PDT)
X-Received: by 2002:a5d:58c9:: with SMTP id o9mr911361wrf.279.1631648780595;
        Tue, 14 Sep 2021 12:46:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631648780; cv=none;
        d=google.com; s=arc-20160816;
        b=XYx5/vXf1xzQFOPDCIKuvMk3Fjx0qLkM5nR9e1vlaKOurQM6DYgjmOTHz6i1U9TKql
         zlEy3SORCzX/5BZu4i3ppjqr9H990MeEaDy+KmeE9lsF8eDeliW6sHo4ARW+l6OStNUS
         KV6Omaz0rwdSxe2Pyx2sB6GojCqyxTsXa8LPJcOLbSqBlNk89Ia1dAD0dDVAa/D8Nsiz
         oqCfbxRVWILAqGzlAJFp7lfBKNvpwi7bMf18MEkldltNOnX+oFAerTfSbmpL3qYDwh0G
         GTHkFmyBw8SifB3YQJEpP4Ypo3dgJ7U45pXZGLidu+csV1IOyxbsyq/UICRUWNB/Y3Nz
         26MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zJoP/OqIzovh+f7RN/ZmhSCTt8+2LJh5ljOOfisx8/A=;
        b=W/3Zy1ZQ9OgK4M/lKzLmwVp/cjSqb6m+MfG9GRz3rJYySosfAFWejPLx/dU1JEhIW0
         fGp7EmHtCjAjCV78zjgybfN/t6BkWNYZaqgyPdq3Y9vpe7+OljUz/QYBrPK/sPg6LoMy
         o3mwezCqWfKPrExXqSnI8TJ3Deg7r+uvRBLxjV06OqdbEECNsJtUvcolGSgODx8FMZxV
         ffOnW8SEDmsbbkpVvb1PKPTFVHmwBJEiy+8Nzmwz5bH/rUHjaUfdel+r2zMmcZpkL8MU
         y2FmY7/iHJV0cV1ldIMjL95AlaW8UErmZDdJ+u/cgoDwghTAHn0ITLk62EE6IxECJK2H
         1WQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=CCXklwHg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id 130si83103wme.1.2021.09.14.12.46.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:46:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id g1so741103lfj.12
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:46:20 -0700 (PDT)
X-Received: by 2002:a05:6512:2291:: with SMTP id f17mr14633288lfu.489.1631648779874;
 Tue, 14 Sep 2021 12:46:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com> <20210914191045.2234020-15-samitolvanen@google.com>
In-Reply-To: <20210914191045.2234020-15-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Sep 2021 12:46:08 -0700
Message-ID: <CAKwvOdm1dy7RiSfP1Ra1ek08OQ=8o8FDnrMdW44e6ZssgPbCAw@mail.gmail.com>
Subject: Re: [PATCH v3 14/16] x86, cpu: Use LTO for cpu.c with CFI
To: Sami Tolvanen <samitolvanen@google.com>
Cc: x86@kernel.org, Kees Cook <keescook@chromium.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=CCXklwHg;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133
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

On Tue, Sep 14, 2021 at 12:11 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> Allow LTO to be used for cpu.c when CONFIG_CFI_CLANG is enabled to avoid
> indirect call failures. CFI requires Clang >= 13, which doesn't have the
> stack protector inlining bug.

True, that was fixed in clang-12. I hope to one day use
__attribute__((no_stack_protector)) to clean up this chem spill.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Technically, GCC still has this bug.

>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/x86/power/Makefile | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/x86/power/Makefile b/arch/x86/power/Makefile
> index 379777572bc9..a0532851fed7 100644
> --- a/arch/x86/power/Makefile
> +++ b/arch/x86/power/Makefile
> @@ -4,9 +4,11 @@
>  # itself be stack-protected
>  CFLAGS_cpu.o   := -fno-stack-protector
>
> +ifndef CONFIG_CFI_CLANG
>  # Clang may incorrectly inline functions with stack protector enabled into
>  # __restore_processor_state(): https://bugs.llvm.org/show_bug.cgi?id=47479
>  CFLAGS_REMOVE_cpu.o := $(CC_FLAGS_LTO)
> +endif
>
>  obj-$(CONFIG_PM_SLEEP)         += cpu.o
>  obj-$(CONFIG_HIBERNATION)      += hibernate_$(BITS).o hibernate_asm_$(BITS).o hibernate.o
> --
> 2.33.0.309.g3052b89438-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm1dy7RiSfP1Ra1ek08OQ%3D8o8FDnrMdW44e6ZssgPbCAw%40mail.gmail.com.
