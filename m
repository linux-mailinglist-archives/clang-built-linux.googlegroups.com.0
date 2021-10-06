Return-Path: <clang-built-linux+bncBCQ2XPNX7EOBB6VM6SFAMGQEFJFK5RA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id A6499423646
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Oct 2021 05:22:35 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id p15-20020a4a3c4f000000b002a96a40103asf875425oof.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Oct 2021 20:22:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633490554; cv=pass;
        d=google.com; s=arc-20160816;
        b=pJMexFqrcZY7sSSa4eefSEZ+fqSt6W1zDwQbvXd3NgiPGUbEJPMAr8O7UYKVeTYTZT
         MHjGeBflN5XAusCh/C5AWAsR3dX8fX6nTVBXswl3lZQlPjeGD+7haoem4U4bgKC923qB
         peMIxJKsvp0s1B1ZCXo2CZeZIgwHbY1zXT0wWqYJ1/XL0LKQfJjkiLHLzfvIvx2+k33I
         3pO/HdWPy7eTMgNn6WRaMOGuPRDwDwob8kLlWTTeIAtnUfp7WKr65NxluddgIZ7dal4a
         uKLvBYHy6uSEdLDU5o3WBOZLruAYJLIhjB+QnVY7yAEH7o8nr6kI5f2gRtGKMFGBxHDL
         vz0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bfZUqW8DFT1fL+KAM1JVJDCfWwTvUGEE7xBHekkRFbY=;
        b=dC+t9paMY0dSXZeKkwmfQJHWc4A+NwVF8+8Wgc+ME0BNF4E9YI7mElL5roxUazQ1qm
         bSI9UDoLZsY0Yu43oBqhyptQuP7Ybe8geZBpJ7DqsL4wCNhA2zhjMP/ryXjcLTMswVva
         RDB+vinV6B8v+1USrdjVWjBs18gFd0iFSL48n+qsu7+/H3gnMVj2I0fqXL/GVVgELBM0
         Imj3ZFzLObm7vmosTXwfV362bOrcrToXjUxvYc1tRrUgPTXAgaI+50c9n8XORXUlcbkr
         i0EOGUso07nzLiODVfu5Hya18//dQ0p1O5RcGBILwmEjsrr4bXmFzcziJenK0atq8OR3
         ErWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=LEjhlPYF;
       spf=pass (google.com: domain of jannh@google.com designates 2607:f8b0:4864:20::a2c as permitted sender) smtp.mailfrom=jannh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bfZUqW8DFT1fL+KAM1JVJDCfWwTvUGEE7xBHekkRFbY=;
        b=PANOHsXAScHfZkAzDKrR6rVx5x66g2/wfMSE9pKUbp7PAdXmtZZ9QMHbe0U4rE9y39
         SsIVXFLnDgVw3QP7S/PSpCyY3qhCtklNz6ul0+Li8sM1qgQl9YHkj9E6Ba+fQnq/SzlG
         FSLXU0BpZilGPLQq6s1+0zf/vHX2pXiFPuHVKhnSELDT6rPjomtYFj5U3gNYg88tAve5
         i5ia+5XQk5QHlftdI61vyWRYprKtPd2jeqhnEbU86eRKkc3cLzRqkIuoo2B9nLcRnrbo
         kL3QTqn6TVqHCh5ZTI8HrjGVD9y6Z1GwxqHoZlh68Pj/Kxr6nOGDs8G6gESwqEJg6+QU
         NE4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bfZUqW8DFT1fL+KAM1JVJDCfWwTvUGEE7xBHekkRFbY=;
        b=sHD3I8F/+wFbfg5PKT1zy/tzRbnUvlJMeBzC9AM+/W+1RyIeI6xxxQ2DgZqcMjaN9K
         Mrc+PfFhDU9edUinpkz/FupxD9XmoGJvsWB17Xo0W7QmZlFaWQN+J+ZzlWMtemOpwC3Y
         1PmZ4APP5f0YDS4b8suuzL3sPYPRAPF3unp72RiYetJ/CeYmr7e+/yMMqMscgD1OWkE/
         ddJ0Olbi2zI4v16K5lOsBp2Iy4puuUoqbZXw0v+xeWGCFFvAIjzLn1TSDZ2lyQMMI4R0
         VVFXgjMYTM2n40PN4bqHLMwHHnUGuoh/QPjyLKVMF48GKUG+fTUnRrZzD/C2rZlFozHk
         f5lA==
X-Gm-Message-State: AOAM533+PT4sHGnxto5A+hwkXkNTjETBKc1QLVcJEeuWmuqu7fNgFbQd
	uq3BQHe66g0ZC2rusM7+fQw=
X-Google-Smtp-Source: ABdhPJzhX7X3gECjpMFnheAu3ni7WTCwn7fUaL6AHxjEmESAfI1yhoCWqo+DXuQkFvETgv6tQheFxQ==
X-Received: by 2002:a4a:430c:: with SMTP id k12mr16322186ooj.43.1633490554381;
        Tue, 05 Oct 2021 20:22:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:df56:: with SMTP id w83ls4590575oig.3.gmail; Tue, 05 Oct
 2021 20:22:33 -0700 (PDT)
X-Received: by 2002:aca:5e8a:: with SMTP id s132mr4857382oib.90.1633490553930;
        Tue, 05 Oct 2021 20:22:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633490553; cv=none;
        d=google.com; s=arc-20160816;
        b=mvcfER3OVUKE85vB7z4mldywGktUq2NXF/OaTUS5f7ClsccWneiXn3amDnkVWT6wfe
         nlQgfzKavqwHebmbQdG17B2tGbVYEdYbHUUXOlDhVQ65/FWB64QLVIhE++2jm7m6CRfz
         PLOBx0uzgnJpKwrvYGGHVfV0U+O/8PIpScB/DJBJ4QB1MervV2ufuJvxc9+N7inWaYxp
         cQL3vMXga7hCCWvuG3v99tXTRbAjxuCHIZWjnb3Mn+UdJ5xa8HroYG/rHEWRGMRjxryb
         C6GFVnynXct7yeGzgAdFWX5GR/tN2qzIiaGDRGiFoiSkpV/bycyPXqkzOw9dX3VzkQ+U
         jA5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bfp9VlLBc+DNVBQ774WyK5TigN2C4A/ShHU2p0epUU0=;
        b=AQfn5ulSVpqA01SbxRIoLqNK0lxeXATqS24CQmn9Pww3QMJyTduRXLDaix2Oa7nLiq
         dvdvPXB+zRwwybmDW+qJ3k31visRTHAve3POIIwcpZico45ywdFV6Ja7punaIZz+Wbsl
         QHqfxUSoyx+obeKF1oUh5AGw43+okB0BZdSShDRloIk+eCW+rcOex+0W6VUdyk4xDjIh
         1R0O41HuN94acmEPy/u0bZGY9toWjmeDscJGYsAr45/AWuiS+umPQtWDZGE5Mk3t+Xr2
         THsIllhLTIrnfXjjzHr8CHSGpLpJ8v+37Qkp1IM5j23yb6TSKZ0HO5Rtc+HAxuMmG/nQ
         6XCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=LEjhlPYF;
       spf=pass (google.com: domain of jannh@google.com designates 2607:f8b0:4864:20::a2c as permitted sender) smtp.mailfrom=jannh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa2c.google.com (mail-vk1-xa2c.google.com. [2607:f8b0:4864:20::a2c])
        by gmr-mx.google.com with ESMTPS id bi42si2615769oib.4.2021.10.05.20.22.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Oct 2021 20:22:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of jannh@google.com designates 2607:f8b0:4864:20::a2c as permitted sender) client-ip=2607:f8b0:4864:20::a2c;
Received: by mail-vk1-xa2c.google.com with SMTP id y74so586528vky.12
        for <clang-built-linux@googlegroups.com>; Tue, 05 Oct 2021 20:22:33 -0700 (PDT)
X-Received: by 2002:a05:6122:201f:: with SMTP id l31mr4854778vkd.22.1633490553254;
 Tue, 05 Oct 2021 20:22:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210930222704.2631604-1-keescook@chromium.org>
 <20210930222704.2631604-5-keescook@chromium.org> <20211005184717.65c6d8eb39350395e387b71f@linux-foundation.org>
 <202110052002.34E998B@keescook>
In-Reply-To: <202110052002.34E998B@keescook>
From: "'Jann Horn' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 6 Oct 2021 05:22:06 +0200
Message-ID: <CAG48ez19raco+s+UF8eiXqTvaDEoMAo6_qmW2KdO24QDpmZpFQ@mail.gmail.com>
Subject: Re: [PATCH v3 4/8] slab: Add __alloc_size attributes for better
 bounds checking
To: Kees Cook <keescook@chromium.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Christoph Lameter <cl@linux.com>, 
	Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, 
	Joonsoo Kim <iamjoonsoo.kim@lge.com>, Vlastimil Babka <vbabka@suse.cz>, 
	Andy Whitcroft <apw@canonical.com>, Dennis Zhou <dennis@kernel.org>, 
	Dwaipayan Ray <dwaipayanray1@gmail.com>, Joe Perches <joe@perches.com>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Tejun Heo <tj@kernel.org>, Daniel Micay <danielmicay@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, clang-built-linux@googlegroups.com, 
	linux-mm@kvack.org, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jannh@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=LEjhlPYF;       spf=pass
 (google.com: domain of jannh@google.com designates 2607:f8b0:4864:20::a2c as
 permitted sender) smtp.mailfrom=jannh@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jann Horn <jannh@google.com>
Reply-To: Jann Horn <jannh@google.com>
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

On Wed, Oct 6, 2021 at 5:06 AM Kees Cook <keescook@chromium.org> wrote:
> On Tue, Oct 05, 2021 at 06:47:17PM -0700, Andrew Morton wrote:
> > On Thu, 30 Sep 2021 15:27:00 -0700 Kees Cook <keescook@chromium.org> wrote:
> >
> > > As already done in GrapheneOS, add the __alloc_size attribute for regular
> > > kmalloc interfaces, to provide additional hinting for better bounds
> > > checking, assisting CONFIG_FORTIFY_SOURCE and other compiler
> > > optimizations.
> >
> > x86_64 allmodconfig:
>
> What compiler and version?
>
> >
> > In file included from ./arch/x86/include/asm/preempt.h:7,
> >                  from ./include/linux/preempt.h:78,
> >                  from ./include/linux/spinlock.h:55,
> >                  from ./include/linux/mmzone.h:8,
> >                  from ./include/linux/gfp.h:6,
> >                  from ./include/linux/mm.h:10,
> >                  from ./include/linux/mman.h:5,
> >                  from lib/test_kasan_module.c:10:
> > In function 'check_copy_size',
> >     inlined from 'copy_user_test' at ./include/linux/uaccess.h:191:6:
> > ./include/linux/thread_info.h:213:4: error: call to '__bad_copy_to' declared with attribute error: copy destination size is too small
> >   213 |    __bad_copy_to();
> >       |    ^~~~~~~~~~~~~~~
> > In function 'check_copy_size',
> >     inlined from 'copy_user_test' at ./include/linux/uaccess.h:199:6:
> > ./include/linux/thread_info.h:211:4: error: call to '__bad_copy_from' declared with attribute error: copy source size is too small
> >   211 |    __bad_copy_from();
> >       |    ^~~~~~~~~~~~~~~~~
> > make[1]: *** [lib/test_kasan_module.o] Error 1
> > make: *** [lib] Error 2
>
> Hah, yes, it caught an intentionally bad copy. This may bypass the
> check, as I've had to do in LKDTM before. I will test...
>
> diff --git a/lib/test_kasan_module.c b/lib/test_kasan_module.c
> index 7ebf433edef3..9fb2fb2937da 100644
> --- a/lib/test_kasan_module.c
> +++ b/lib/test_kasan_module.c
> @@ -19,7 +19,12 @@ static noinline void __init copy_user_test(void)
>  {
>         char *kmem;
>         char __user *usermem;
> -       size_t size = 128 - KASAN_GRANULE_SIZE;
> +       /*
> +        * This is marked volatile to avoid __alloc_size()
> +        * noticing the intentionally out-of-bounds copys
> +        * being done on the allocation.
> +        */
> +       volatile size_t size = 128 - KASAN_GRANULE_SIZE;

Maybe OPTIMIZER_HIDE_VAR()? The normal version of that abuses an empty
asm statement to hide the value from the compiler.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAG48ez19raco%2Bs%2BUF8eiXqTvaDEoMAo6_qmW2KdO24QDpmZpFQ%40mail.gmail.com.
