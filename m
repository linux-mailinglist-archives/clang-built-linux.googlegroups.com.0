Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOVVX3UQKGQEUXGUPSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id C023F6C2E4
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 00:01:32 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id x18sf15261795pfj.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jul 2019 15:01:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563400891; cv=pass;
        d=google.com; s=arc-20160816;
        b=ekcgtXs9Z+V/mE+DS8tV1hkhLoyv0xi7DkXoKAgqwA3p2rHYaDgTtAT4Z0OVw688/o
         OlK+rro12SnnyFLS3zMq6J98+lXPWVMb3jxN5UKFMProj2uuyZdQu0UloUmRjDdhgcUV
         6FYB6ZesETqKlKTW77ssAsdBhqsWqpwf9YKhuhHR+Mr3c3zYqG0HuSOK5YLKswbHwvW3
         E3y4pO7A8EOmIaxLURI1QUE+CnV9fTATxbmKiZC8c7AiPy4pjD2bc2PpS2zkz4Nfpjym
         Z5ix9vTOBnIg/neVGP5Kylem65asxtT4F+kegJHBEfOuYRvY6reoNbTzAZHMr19Puhk3
         ppUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=olxFHyHBE9lDzvBONPBBiLCNrEq474DGTr6prbd2sdg=;
        b=jWGLln1cryDpRJY71LzCfj3bVtKxiKTodi3SeKo6Qz5mAookcSa5XyI6NX/0DQthOM
         l25HJjGQIpM+wZcPXhuh39Xr3vOw3KGjeVvQ0Aj5bcOUSZCJ+6ty4AxaZNB0YmdThL8S
         HhptALa1QIkkb4zaZLGno8R5EoiRlh6xiYyY1q4VM4L3RvKgOp77Kpuw2emgZSRp8Tn3
         nhA5+JLAv9/42H4s/PNDSGA3aF3baqLKxIgo7Xr4g4+4Rx7UnfIRpJSK+ANCr5eVzeJq
         yVMJJzFceOZ+8a01ZRLxth52hfeuo+yC4UMYExoPAB8VAt3LPpZPFJClM9u6X6RPifm3
         NqTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Z8mzWEN0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=olxFHyHBE9lDzvBONPBBiLCNrEq474DGTr6prbd2sdg=;
        b=U0470ZdIfjzwUO8WhlYuig/TgkPwDFVzbHNyw0ReiPccGzKp8IIh3eqaBLUUiA9LKU
         uxw947he5afU+Ju8BZKVKj9q2dZswCLMCBlhZaQugnbMje4vg2KlvMd/FanO/0fvhjYP
         +Vv6md/ZHUuugixB1Bs6R8qtUzIUgGltgTRabpCGQ4qUYsMrpVQzCZyQeZ4+Cz/YS2pR
         j1ngijh1D+B5Z95RvG1epqvOnUwBMUcL0rnhss0hOE09jAPbGAoGBuykgkaakz1o+20M
         wU/zlpTkXpqghK/K9rf8H/Nd8IRg6vY+yoqXLdJOryxSWlwl1AuAOyrl8Xxlr5NdLaE3
         PzYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=olxFHyHBE9lDzvBONPBBiLCNrEq474DGTr6prbd2sdg=;
        b=UkrdFoMWJOeiwhWu0zbfnJXVSbZiDdbaXYeq5jspJrnEky7najRrHFXJpF/hCZ6iqy
         BNB7wgnlZt1PHtZz86V0CjX542gZHPCZMMbFfb6YVVusApG9Sc9Q1jglR4CT4o5YS2x9
         LTvEXj59NZFfoi/Bg0tLmE6/QgSAweZa1VlLomv5+dO9JCOtB771ojVQTp5saH8cKjoq
         341nBz0rOC5JYCdfoshd7ciPxZ21G84aFhXve0SdK5LgJoa4uNOH3UmX+FmFKQlQDPvn
         krTNeAJqcFnwJzJG3Jg+uydim+ofMG3dwov5VjcStU3eV0eyCTzYRO4I5YTAoVIhUkjV
         8p4g==
X-Gm-Message-State: APjAAAW1X0ZYTc4kAm6v81ms2wsRDePekZFmTuo60gYuP1Ghkxvt0yfP
	EZ4Kab0G1uXWjpRr3m5g/yY=
X-Google-Smtp-Source: APXvYqzq92qOTQWsasK0lnSlgcr1029TZrWgYwOAA2e9CT8T/GokSoUsehAjbAzHNwXnVsu9sGd5Ww==
X-Received: by 2002:a17:902:1e7:: with SMTP id b94mr46935490plb.333.1563400891061;
        Wed, 17 Jul 2019 15:01:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:26ae:: with SMTP id m43ls8692489pje.2.canary-gmail;
 Wed, 17 Jul 2019 15:01:30 -0700 (PDT)
X-Received: by 2002:a17:902:2d01:: with SMTP id o1mr46823434plb.105.1563400890748;
        Wed, 17 Jul 2019 15:01:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563400890; cv=none;
        d=google.com; s=arc-20160816;
        b=vVyvs5fM6j2z+GfNiUTUpvRs0c9tC7QGnEw4PvDsJiVTmuhFSnf+B7UIWNHB/Cgexv
         VKcqS7ZnPF0aIGXcYJYqM2AE9Sd1NAM5BQU88rwpGMPmCsbJ7eZB6sRJdIRdoLl2ccWK
         RHtfWIBHJPWd+roZZotoohLCecFkDyYHeZeC30oLIKdVnlfjiRpycX1saLjuOnKa1mMo
         +qZfii1FL4GmP4xDahSQRkj/w5UhKmV3EbLVU1qPQD53UnwH9sgGnfLgU06rDW2Sszc6
         a43kS4EUF9dRDAkUsAAtXa8T3u/NKet+/REH7s9k2TWl829DnM3nGRDQKFXGB3+WzlvS
         Mf5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fTLcLaPhVwoKKpKMc1I9xT0INE94L4TgQfexrydY+cA=;
        b=Zred4CxASpfh6EaqDhl25e1h3oeTjE/Nxjl4QJfmcr3DdW3Rf6C3oKfmV0xreZjXoa
         M5dAdkCtdJz6BoM7tLjdhzzTXLjT0/UemjFMFCp0V1rIbDEjZGU16A3hGE9p8tLB/fVU
         kiI5y4v5R0M7Fsc3yxhhdVxrvhZItnlDeqkru1+/sh/jyBuHUMP2vOhb2nK2RTPrNIXC
         YqCoTfFQt0unpTEg3JdRUKXe8YHb3gW+iMdft0L5zsk9gepb3r81HDlutpleU6G77Ltg
         ioSoo69w/d1y2Q993jaNOJumee65KtL6A4ibNeKgB60bi5l0drZouxRMZw/aovzACOou
         WLBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Z8mzWEN0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id m23si849082pls.5.2019.07.17.15.01.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jul 2019 15:01:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id l21so11814158pgm.3
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jul 2019 15:01:30 -0700 (PDT)
X-Received: by 2002:a17:90a:2488:: with SMTP id i8mr45895718pje.123.1563400889995;
 Wed, 17 Jul 2019 15:01:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190717033807.1207-1-cai@lca.pw>
In-Reply-To: <20190717033807.1207-1-cai@lca.pw>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 17 Jul 2019 15:01:18 -0700
Message-ID: <CAKwvOdmPX2DsUawcA0SzaFacjz==ACcfD8yDsbaS4eP4Es=Wzw@mail.gmail.com>
Subject: Re: [PATCH] acpica: fix -Wnull-pointer-arithmetic warnings
To: Qian Cai <cai@lca.pw>
Cc: rafael.j.wysocki@intel.com, robert.moore@intel.com, 
	erik.schmauss@intel.com, jkim@freebsd.org, Len Brown <lenb@kernel.org>, 
	linux-acpi@vger.kernel.org, devel@acpica.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Z8mzWEN0;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Tue, Jul 16, 2019 at 8:38 PM Qian Cai <cai@lca.pw> wrote:
>
> Clang generate quite a few of those warnings.
>
> drivers/acpi/scan.c:759:28: warning: arithmetic on a null pointer
> treated as a cast from integer to pointer is a GNU extension
> [-Wnull-pointer-arithmetic]
>                 status = acpi_get_handle(ACPI_ROOT_OBJECT,
> obj->string.pointer,
>                                          ^~~~~~~~~~~~~~~~
> ./include/acpi/actypes.h:458:56: note: expanded from macro
> 'ACPI_ROOT_OBJECT'
>  #define ACPI_ROOT_OBJECT                ((acpi_handle) ACPI_TO_POINTER
> (ACPI_MAX_PTR))
>                                                         ^~~~~~~~~~~~~~~
> ./include/acpi/actypes.h:509:41: note: expanded from macro
> 'ACPI_TO_POINTER'
>  #define ACPI_TO_POINTER(i)              ACPI_ADD_PTR (void, (void *) 0,
> (acpi_size) (i))
>                                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ./include/acpi/actypes.h:503:84: note: expanded from macro
> 'ACPI_ADD_PTR'
>  #define ACPI_ADD_PTR(t, a, b)           ACPI_CAST_PTR (t,
> (ACPI_CAST_PTR (u8, (a)) + (acpi_size)(b)))
>                                          ^~~~~~~~~~~~~~~~~
> ./include/acpi/actypes.h:501:66: note: expanded from macro
> 'ACPI_CAST_PTR'
>  #define ACPI_CAST_PTR(t, p)             ((t *) (acpi_uintptr_t) (p))
>                                                                   ^
> This is because pointer arithmetic on a pointer not pointing to an array
> is an undefined behavior. Fix it by doing an integer arithmetic
> instead.

Hi Qian, thanks for the patch.  How do I reproduce this issue,
precisely?  I just tried:
$ make CC=clang -j71 drivers/acpi/scan.o
on linux-next today and don't observe the warning.  My clang is ToT
built sometime this week.  It looks like drivers/acpi/scan.o when
CONFIG_ACPI=y, which is set in the defconfig.  Is there another set of
configs to enable to observe the warning?

Also, the fix is curious.  Arithmetic on pointers to different
"objects" (with one element passed the end) may lead to provence
issues due to undefined behavior, but I would have expected some cases
to uintptr_t, then arithmetic on that type, as the solution (which is
what I suspect ACPI_CAST_PTR is doing).

Further, you seem to have modified ACPI_ADD_PTR but not ACPI_SUB_PTR;
I would have expected both to be afflicted together or not at all
based on their existing implementations.

>
> Signed-off-by: Qian Cai <cai@lca.pw>
> ---
>  include/acpi/actypes.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h
> index ad6892a24015..25b4a32da177 100644
> --- a/include/acpi/actypes.h
> +++ b/include/acpi/actypes.h
> @@ -500,13 +500,13 @@ typedef u64 acpi_integer;
>
>  #define ACPI_CAST_PTR(t, p)             ((t *) (acpi_uintptr_t) (p))
>  #define ACPI_CAST_INDIRECT_PTR(t, p)    ((t **) (acpi_uintptr_t) (p))
> -#define ACPI_ADD_PTR(t, a, b)           ACPI_CAST_PTR (t, (ACPI_CAST_PTR (u8, (a)) + (acpi_size)(b)))
> +#define ACPI_ADD_PTR(t, a, b)           ACPI_CAST_PTR (t, (a) + (acpi_size)(b))
>  #define ACPI_SUB_PTR(t, a, b)           ACPI_CAST_PTR (t, (ACPI_CAST_PTR (u8, (a)) - (acpi_size)(b)))
>  #define ACPI_PTR_DIFF(a, b)             ((acpi_size) (ACPI_CAST_PTR (u8, (a)) - ACPI_CAST_PTR (u8, (b))))
>
>  /* Pointer/Integer type conversions */
>
> -#define ACPI_TO_POINTER(i)              ACPI_ADD_PTR (void, (void *) 0, (acpi_size) (i))
> +#define ACPI_TO_POINTER(i)              ACPI_ADD_PTR (void, 0, (acpi_size) (i))

IIUC, these are adding `i` to NULL (or (void*)0)? X + 0 == X ?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmPX2DsUawcA0SzaFacjz%3D%3DACcfD8yDsbaS4eP4Es%3DWzw%40mail.gmail.com.
