Return-Path: <clang-built-linux+bncBDYJPJO25UGBBC6UYP3QKGQEC22Y36Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 795F0203DD7
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 19:27:40 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id k12sf5119258uag.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 10:27:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592846859; cv=pass;
        d=google.com; s=arc-20160816;
        b=spGVAsmvud4iX6YhS1GlrXJXwzp67kyp+5P2T0i1dtqcmMof2zrRbXpQHxsXmwt8s7
         qobYuHDChdVR6rr9GbLG+Urjk40HubXSnZV6G62lMj7vw9lxoASGEMvED80NmtMJJUks
         Mn1cnj/Xy72ifrG1CPNmnca6gg1g60iCBiyXSsmPVx9W9N7tYGK8TgFByWYm7zaQNhTQ
         RuSwhjU9ow1ll4gnh5M8c2anDD5/J7SeY4yTSRsSggMUzxqPA49bcZelADqLUgTI1eb2
         FHEF5nSfGE0vHWHObSa3RHjewTEI3XmlFF3ZnCLIJFJTMpPdZ0vFLfPpE+XHaS/nE1QA
         nH7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6LUS151Kxj6dU4QSdkG4z5FOgSIeBVwWecCmJTOlb4E=;
        b=rp6W3KRi6RJZebICWZ2nfLldOybWGSGvBAF6l2LsI82gyWG/j7D7KG9tqgy/c/YbaQ
         iTSnW04uRzVHFTzyDGuleKG/fvmUzf7fmjqeUMHVHjR7F5c/zLqsdQr3VmDTWk3gf4lF
         sqxj2Dj1IVS3lxGRgr46MCL/C99FrOL5wtfjzeDbrcDsa1wFG7wgHQWTPGoo1xW/sTfG
         bGi/aezUOYE8WcZDIVH0kPyAXWoE1vpwHcvadbt35CnIIP74Y3jcwJNE/BtD/dps+yS0
         EiQJqjwskI7lfNhgV9SwPxrcTwDUYGUf1EwJWJKYu1MoDoqmzFL3+L91uMY71Km/anve
         hpLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Sj/LDxGl";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6LUS151Kxj6dU4QSdkG4z5FOgSIeBVwWecCmJTOlb4E=;
        b=lgHAh2fTU0pIhd6Go36aVsbwjebRULB1tL9fPCLEhE8vf9n8VWHB8RuVuSlMTDf8b1
         VHUWNICZ5n36baBuSPlhjN6A6ARiy8pAZv+oVP4cDp8cRpa72c7pAzjXz3c7MsrmGBdo
         xN+NTHcd4wYA68lvOutyLioh3ZHImQ8YIL9fm8UKADvZOTurKXj8XGeKTPUw+jZIU52I
         W3SomrJSyMctwJ7+t58LhQ/avGeq3ka/9y0iafQgHbrJ/OB3UPU+FPP0zuNGJWgSe+Ai
         l8jc4OfExSjpBxMCFrnOv1CGFZVjMJ4G3bzOaou5FBrHqA6Bz5ICpP3W1KnLvEucfMLX
         SKpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6LUS151Kxj6dU4QSdkG4z5FOgSIeBVwWecCmJTOlb4E=;
        b=TaLoI8gng0k305yZ7J64TRKizcx1lqgavRYMDJRwCGur5p8BfUf5ec4vas9c9hY1dW
         eaMPrZ41kdIdirsqArJwmkFuatVVjruT0trcxR542NRGR0FsdYdwKMHa7ZMbfaBY8WxM
         e8vYYwLn6mS4OrZXdLM4wWYkoNpfhbhHSqPHo3vg2gO/NLr1qIpVIxTMlzpailfQH38r
         dRcSFBQo/srXtXQcStNSOGqZk33WJHSF8CF7xcxcMNCLEmJhiMWrx2iKj//7An9Pligd
         o74of5g1VD7E3cdeR4Auhaq04ZTO7kXnuP1lKH9fXfuXWiQz2WvVfuEXPIRHInrzIxK+
         UU1Q==
X-Gm-Message-State: AOAM532Z5nCcIsdCFojDVyXV8mJEomJjUJicl2/DG79dfPcwFjHIz7rk
	xIIQAO0Rict/IzTOzNF/QtA=
X-Google-Smtp-Source: ABdhPJx6K/28xytVAlQVs80DkKbjq5l/YakGOeGxXOyo0Lvu+YC7Vpy7U0zcWYTc9/ExCncA7oPC3Q==
X-Received: by 2002:ab0:a81:: with SMTP id d1mr12547913uak.67.1592846859477;
        Mon, 22 Jun 2020 10:27:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:902:: with SMTP id w2ls1182497uag.0.gmail; Mon, 22 Jun
 2020 10:27:39 -0700 (PDT)
X-Received: by 2002:ab0:3145:: with SMTP id e5mr12076964uam.73.1592846859079;
        Mon, 22 Jun 2020 10:27:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592846859; cv=none;
        d=google.com; s=arc-20160816;
        b=jlHjCXqy0SL/frLg9ZgdDl1FkkZsGHFBAw4Owb0N2Au/w85ZiHICiHbJebHyyRWASN
         uibc/ViCSSQApvcg8yegMHAEu8Qi1+wE+PHfYWHSJR1wS6vIQfIMFlarvIBV47c90Xw4
         kKwthNVlOjyQ7IE7iHDxPWz6UCC5+Vu48j4KPTedLzME6bkazVHs4r2amiWeM0gKEnbx
         uQFsQYDfhisnrtL9XEqpyDOHfGm9hUZo42bsJ0Qqs7EMQHkBDFr5rp4antEOMid6+UvO
         BSBU3O8Qd55WhYlEefWTnxhubRHrV3jE/80U+4Zmc61zo1WszHDknLpWdjdGS0ggI6vk
         qOJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+qKZonIXzYkaE7j6NEmUZDll/lqh82KFC5lIzFFAexA=;
        b=iHA7ntKc8kqa+9hPj75UKPfyi4K39vZ3ootJDPuUxFp6OTURanWTOMOZ3O8jZYOy9p
         hOAEek/ep1g1+zWUPsiUKugPY7eKo3X+P81L/9R5SER48ljbU71tSGvuaCmho8emY/jm
         ZzLIe3v+5EJUKK31BKo8oAmyqLuCQzycB0Xv7IkzImmfpa2MD6wWCA5eCMadJzeZSnE2
         HmZnXMPTYTYcKKBRENaAki7yOlb9W44zLmdV/L6FoaTkvVr77fN3RlF0Ah1/5Y37+YxG
         f06tNdm0dD0gwUuCI7n3OUgYzAFF4qNyqTYj/JfrM97X2mf+9/N9P96OTgwmWFYwGHvp
         9XZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Sj/LDxGl";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id a68si301716vke.1.2020.06.22.10.27.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 10:27:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id i4so142431pjd.0
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 10:27:39 -0700 (PDT)
X-Received: by 2002:a17:902:b698:: with SMTP id c24mr20096772pls.223.1592846858031;
 Mon, 22 Jun 2020 10:27:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200620033007.1444705-1-keescook@chromium.org> <20200620033007.1444705-17-keescook@chromium.org>
In-Reply-To: <20200620033007.1444705-17-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Jun 2020 10:27:26 -0700
Message-ID: <CAKwvOdmzYXGL2NVZqBkzyMzc-fLm_UgVCsB3aHW2GmFi3zyf9Q@mail.gmail.com>
Subject: Re: [PATCH v2 13/16] mm/debug_vm_pgtable: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, Network Development <netdev@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-wireless <linux-wireless@vger.kernel.org>, 
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-spi@vger.kernel.org, Linux Memory Management List <linux-mm@kvack.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Sj/LDxGl";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Fri, Jun 19, 2020 at 8:30 PM Kees Cook <keescook@chromium.org> wrote:
>
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings (e.g.
> "unused variable"). If the compiler thinks it is uninitialized, either
> simply initialize the variable or make compiler changes. As a precursor
> to removing[2] this[3] macro[4], just initialize this variable to NULL.
>
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
>
> Fixes: 399145f9eb6c ("mm/debug: add tests validating architecture page table helpers")
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  mm/debug_vm_pgtable.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/mm/debug_vm_pgtable.c b/mm/debug_vm_pgtable.c
> index e45623016aea..83c9e88a052a 100644
> --- a/mm/debug_vm_pgtable.c
> +++ b/mm/debug_vm_pgtable.c
> @@ -307,7 +307,7 @@ static int __init debug_vm_pgtable(void)
>         phys_addr_t paddr;
>         unsigned long vaddr, pte_aligned, pmd_aligned;
>         unsigned long pud_aligned, p4d_aligned, pgd_aligned;
> -       spinlock_t *uninitialized_var(ptl);
> +       spinlock_t *ptl = NULL;

It looks like the address of ptl is passed to pte_alloc_map_lock.  It
looks like pte_offset_map_lock unconditionally assigns through that
pointer before reading.  So this could be left uninitialized, but
initializing it doesn't hurt.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
>         pr_info("Validating architecture page table helpers\n");
>         prot = vm_get_page_prot(VMFLAGS);
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmzYXGL2NVZqBkzyMzc-fLm_UgVCsB3aHW2GmFi3zyf9Q%40mail.gmail.com.
