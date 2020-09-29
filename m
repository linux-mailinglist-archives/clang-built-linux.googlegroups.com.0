Return-Path: <clang-built-linux+bncBC2ORX645YPRBS5KZX5QKGQEW5D2HEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F61427D2EE
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 17:39:56 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id r19sf2316986edq.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 08:39:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601393996; cv=pass;
        d=google.com; s=arc-20160816;
        b=PiYL9Ack4CeYzgNuLemQGW0Xo3MjanscNzMkmtktOHlrRR26zy8znnoWg99tNcAfvb
         Rv4ZW/nHyvXpulYlMXQrVE4s6cJBJqmOc5/XZAg3TjqnJkArFVCTFIqR5VkcNXrOAAfF
         yae68FpkjrXK+JrM1zqkuIT3ble7D4Cgslxr9Bc7T5R9MxSgOkVJUr4bAF5OAPkicT5d
         yQ8HWWrajPr4esBFhwXJVBxSeQM43PeF/HNOKWuu/n13yJMMU8/xepknU1QldpXLFEIS
         xbUb1e6qHM74A9wcbyKO5pdB0S6ESq6vvDgiiNdI45nZRWoPlqiPC1GNqP7sEVASKclY
         zznQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+0f7dghLtzoCbmd1vqkQnxUVbMrzdkh/QpF9bgU40oA=;
        b=otgFXgrt0/T5s8qTRevE9LwQoQVipGCFXtqx89E9bpS8357MTXJP8XNQctB3gljCY8
         dpiqhmf7YzaoN+uyiphQbjDE3idnb7wT9uoG++kwjSE9NCXrwzeteNLXlet6gQo2cx8U
         vQymm2Rmd5+KbjQg9k1kTAf5VwDhKv603qwQc1FThRkA7iLmd75NIfNdf74aRbOaU/nj
         Fi5Y44zsGa3MrREpXlQf4wfYsYr55w4v06Ym8bS8gQUeDZ9BREf4zrO4Z36RRvE0H+ZE
         mS/7XoN0oEX+bwwT0lLGsGOziuaI1jq6inHpLlPo5VAbgOpFWI6avWuEo5rKOVS1wIVK
         ElKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="m6ew1pj/";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+0f7dghLtzoCbmd1vqkQnxUVbMrzdkh/QpF9bgU40oA=;
        b=PSTuN6gvsVOYDxgak3KVRlor/k5jnb6gWLTNPhjYP+gbkPSeSUdi+nwF3Gdgqa4ynh
         CrIjn5Id7dJdP92djoh1GQjxBl3lg5sMBOqXfEzKFgfoFbVK8I015sTgj6wc4gACz/8i
         Z8pPiSqDLSSq+9sORmoWk+N0JPce5gsaGBftzEn4J8xUI9XsGWy2jhIwvZh8ai79JXoi
         yLPfkmGtPdOvkw2UL2Gtjt8mqmQl224DzBEnnZwxbWYXKpiRoVlVUlfpm+w1XceCl3mN
         D16+D+82C+7JUszHLLvjfQBvZHf6ALSPY/8vRiD0Esj6PUsw05XzRNsQ1sgS9F9aY5+6
         qK8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+0f7dghLtzoCbmd1vqkQnxUVbMrzdkh/QpF9bgU40oA=;
        b=EDs3jmtrQaxwKgjMOGp8akkvqDr64BMLl4TG3FsefmfYJ1cD0XLqjCSSvRgd6GMqAj
         2GlchrpySWeFNdpCfqbEhkchOOrTH7aMzfTJYDIf+xtJ7IyNZ5nAuwEkX1GwcRgcFtYg
         qPnF22drJrSpqlhIgYr3yFW3jIZiZf5lfZbRDdcuaG7OmBQ56A65/jcg6CkvifPbC0QI
         nZPVFvX27yMpBFAPbcrgBCBpeW4H8Vd6Oc6cyTuOOQoi2J7lYnWuOeTkXxafj0HUN70x
         OKpvLNeaOmkZZ3SfUbjmKhLKWGhX47bneds5AHElG4YcoV+65SCHDZ/naovhitSZfaBe
         3LWg==
X-Gm-Message-State: AOAM530bdoGlic6p1nKkJ+Glhg1rOWZqkuM7kQiJtR1T3slmC+BzCF1m
	6DULusGCcdkvRjlqF4J+3CI=
X-Google-Smtp-Source: ABdhPJzNgFDFvF8WgVrntGfQAntYpccBN2I9o+wQ/WdhG64GY0Ndz74oglkztZaL3YtjBLoJvvqTwQ==
X-Received: by 2002:aa7:c387:: with SMTP id k7mr3828396edq.242.1601393996038;
        Tue, 29 Sep 2020 08:39:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:39d8:: with SMTP id i24ls717975eje.11.gmail; Tue, 29
 Sep 2020 08:39:55 -0700 (PDT)
X-Received: by 2002:a17:906:cf8b:: with SMTP id um11mr4745052ejb.540.1601393994994;
        Tue, 29 Sep 2020 08:39:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601393994; cv=none;
        d=google.com; s=arc-20160816;
        b=LzaTV2wwe3TrZJj1vdhdABr7lv2vHqYsGoJzoVke9ESmZnAvY7onGdxub6cZTxI8V5
         B+gGVen+YADSfJw6Rkb9WNmOKRpn5hDkSOhSV1QgZeN7hAg8ooWMX9A4o6RvT8KBsoCP
         WKh7RknIJrnaCN8scgaRappEVnmpraEoaiktp/yYwZIDBG6V4LzWsXvG8odPPlEWam2h
         k8XWMiyRutAQhDaAaaW/Bq5jkBeMvN8l6nC97HQtSRlQkeKAoqqACK4vuX1xGZduibac
         iVp2iRPtamAdY3vzsOqoCL1/nBfWtjK8+K3DfbBNuaAJcpnoEIcd19V9qJnwjBQItrXq
         GgWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=b/ndqPAMEfMRymlJX6dxjBJfNF/RdG7bAvnqIWB8lEs=;
        b=Y5+NHi4rdkqkGKyaHheJE47M6L/X/C2tf9fxrlwucTN4gZx6xud5DKzkBQEZe4XY+x
         Oj+lr7DilKqpuozAQUSw34XLaacY0DS8nwOuMMjbT7nUJqG0hH/vuXDciLEJITDu6nCo
         VP0MgZpLPioCRisWPinjbpnPzYP6B0MWJn0NEew6rpe/PTTzy24mSzmaWk1c/srwamwT
         apCTxQeed25ovwAKXvDfjkxWfO+m6oHiDreL7RooZJ6bNORFRAVhFQk2dVXO+4tXthXl
         uxFtLyag7HaCJk4kdQE/+SHSwzT1ow/8+S2WFWvK4MvP152V+P+oppoHLDDz0QFNRS8o
         CeqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="m6ew1pj/";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id dn9si39082edb.0.2020.09.29.08.39.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 08:39:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Received: by mail-ed1-x543.google.com with SMTP id l17so6821193edq.12
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 08:39:54 -0700 (PDT)
X-Received: by 2002:a05:6402:78b:: with SMTP id d11mr4046267edy.341.1601393994450;
 Tue, 29 Sep 2020 08:39:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200928230939.5574-1-natechancellor@gmail.com>
In-Reply-To: <20200928230939.5574-1-natechancellor@gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 29 Sep 2020 08:39:43 -0700
Message-ID: <CABCJKuft6NaesrL+840n3ZNjwaWfrc7Z++QFM=e7Ludom_BhLQ@mail.gmail.com>
Subject: Re: [PATCH] static_call: Fix return type of static_call_init
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Ingo Molnar <mingo@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, "Steven Rostedt (VMware)" <rostedt@goodmis.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="m6ew1pj/";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Hi Nathan,

On Mon, Sep 28, 2020 at 4:09 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Functions that are passed to early_initcall should be of type
> initcall_t, which expects a return type of int. This is not currently an
> error but a patch in the Clang LTO series could change that in the
> future.
>
> Fixes: 9183c3f9ed71 ("static_call: Add inline static call infrastructure")
> Link: https://lore.kernel.org/lkml/20200904044559.GA507165@ubuntu-n2-xlarge-x86/
> Link: https://lore.kernel.org/lkml/20200903203053.3411268-17-samitolvanen@google.com/
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  include/linux/static_call.h | 6 +++---
>  kernel/static_call.c        | 5 +++--
>  2 files changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/include/linux/static_call.h b/include/linux/static_call.h
> index bfa2ba39be57..695da4c9b338 100644
> --- a/include/linux/static_call.h
> +++ b/include/linux/static_call.h
> @@ -136,7 +136,7 @@ extern void arch_static_call_transform(void *site, void *tramp, void *func, bool
>
>  #ifdef CONFIG_HAVE_STATIC_CALL_INLINE
>
> -extern void __init static_call_init(void);
> +extern int __init static_call_init(void);
>
>  struct static_call_mod {
>         struct static_call_mod *next;Thank you for sending the patch, this looks correct to me.
> @@ -187,7 +187,7 @@ extern int static_call_text_reserved(void *start, void *end);
>
>  #elif defined(CONFIG_HAVE_STATIC_CALL)
>
> -static inline void static_call_init(void) { }
> +static inline int static_call_init(void) { return 0; }
>
>  struct static_call_key {
>         void *func;
> @@ -234,7 +234,7 @@ static inline int static_call_text_reserved(void *start, void *end)
>
>  #else /* Generic implementation */
>
> -static inline void static_call_init(void) { }
> +static inline int static_call_init(void) { return 0; }
>
>  struct static_call_key {
>         void *func;
> diff --git a/kernel/static_call.c b/kernel/static_call.c
> index f8362b3f8fd5..84565c2a41b8 100644
> --- a/kernel/static_call.c
> +++ b/kernel/static_call.c
> @@ -410,12 +410,12 @@ int static_call_text_reserved(void *start, void *end)
>         return __static_call_mod_text_reserved(start, end);
>  }
>
> -void __init static_call_init(void)
> +int __init static_call_init(void)
>  {
>         int ret;
>
>         if (static_call_initialized)
> -               return;
> +               return 0;
>
>         cpus_read_lock();
>         static_call_lock();
> @@ -434,6 +434,7 @@ void __init static_call_init(void)
>  #ifdef CONFIG_MODULES
>         register_module_notifier(&static_call_module_nb);
>  #endif
> +       return 0;
>  }
>  early_initcall(static_call_init);
>
>
> base-commit: de394e7568ce2cdb4643ed230169f484f25f9442
> --
> 2.28.0

Thank you for sending the patch, this looks correct to me.

Reviewed-by: Sami Tolvanen <samitolvanen@google.com>

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuft6NaesrL%2B840n3ZNjwaWfrc7Z%2B%2BQFM%3De7Ludom_BhLQ%40mail.gmail.com.
