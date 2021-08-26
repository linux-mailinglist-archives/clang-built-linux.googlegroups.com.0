Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPFRT6EQMGQEHUNG6LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AF73F8D9A
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 20:09:05 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id b207-20020a1c80d8000000b002ea321114f7sf467494wmd.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 11:09:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630001340; cv=pass;
        d=google.com; s=arc-20160816;
        b=WZ9tX8O3NFmwDxPhPfZLyh+uRpiO2OeAe0yeMCRPPPn0TYImAYXWlFbUHBFHnrewf4
         r1GJG9jKh1EThmwPPGSlO3NrwybrIWSZMQ5FkLDbRHZENIngaq3KHvdnbH4ndQ/BfX7w
         0ezujn60i0DrVDr4RlwE0ar84RrjC2GPNoA0eeb/xJatK2jeiMTRUnZbY4Nh6O69oTj8
         HhfTKEj8EBactCe9qnuT3A18UX46XXY05hZ5/0TQTe663EJyrqyeQwoNXhq6slF4K6JL
         LcsQiOosfSkKSJJuHYNDAe/ZnWLkIPG/0jabZw6ioL3cxoHemN/bHbJreRBLNpun9cXG
         cYtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=joojs3JR2emKOgX+ANB1aYiW7tqy3yket2i9TJKBhP8=;
        b=o7MWL0nL4o3WMnSrEtxZUfxRRHgzQakfbC7GTreKLKWFBmb/+mR8y/Mi4iVWXClcuX
         o5JZyfAdLuBM+FZT+by5ev4/iHyKuTWytNJLycunQ6LQFdEY0KGSThmNB3EeeFqR+SjO
         m2iBohJgEjwegqPIe0Lj0mtXpN09wcDOEyP2d3zYWnwbay5Nir2AxQ1eSsXr6PNxGU8a
         +wk14RignxWyngk9f1wwk6FzBAXd8uv7BCXvj29lKQ4vo4P0q5c5dAHaymvbe3fXB9oL
         Y9Lu2nkmjCA02LQYHpIFXVMeS63LSvXW99VCGNNxlSJaIog4Mu2k2Qz40nJabWuMNkjo
         WmoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oFaf1OcB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=joojs3JR2emKOgX+ANB1aYiW7tqy3yket2i9TJKBhP8=;
        b=UeNI2dRBw2hWsIbX/ro4tZJtlMKn+1snfWe+HmAHarRTJge/LuLWKhM1KuTozbhIOa
         0nGqJXnkVdh4hvuS5Fjs1ZXxlPIh2yZfvYkcO5ORq1dX+FBgr38GEmXsz1vQbq9H64cZ
         r2mNtJBUjaYG17FdmBNU0xGa6wjOhNho2usC//4Q9w4b93R10iAo4XpkCWt5CH5R1k2g
         8FLU/13PxIocdto1Smu7hyXhfQkHfKKG95fopA0ZgQIB3OvgzSY9dztOVZACt0uhHkAg
         amsT5T8Tl+FPUmFM0Q2cFAMcUD4m72nwG8yWkLK1pVwj7/zJxersHC4ASI6QemMM91Me
         X/Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=joojs3JR2emKOgX+ANB1aYiW7tqy3yket2i9TJKBhP8=;
        b=HQESJtf4sWgSgqFcEnFI6/ebujbkObGE2DPFq6gq3uHB3xrBnjEoykqEq9wY2b1l9Y
         FRulhPo+jgIFpQkR06BgtAfjZw7RRY989It5Hle3kSciCEdsCUlANVmSXfdINHSdre4t
         vn3F7HpJGJGfMCCWDzJHfDOQ5K3TrwX5B8VKsevsbEKHkOl4egJ5V4oLKBJbmc9pTsAM
         0wco9gUk9DjG8Izn6x3dq+xVtgXjTCeeVfWaS02jeQOIy8zdpalnhiAdYNuk0tKODiqv
         AR6Z7eqc1uQlyuO4p/0uig2R/1hK84FuvOC8Nv/PJRob4P8LTrkJyESQ5mxbKT5J2jQ4
         08HQ==
X-Gm-Message-State: AOAM533Ms8eFy/I3mJEth0cv8rBJbJvAaHz8jqplSaeijegAwgJvxWM6
	ymIG6xGIc/sqfX+W8j89SAc=
X-Google-Smtp-Source: ABdhPJy/tjX819V9MZo47sA2je0WXi0lJhwoCJkqpeOl2ij8KH028kV6CXYkZ+sV6BmkfHwgGNszSQ==
X-Received: by 2002:a7b:cb09:: with SMTP id u9mr15554963wmj.63.1630001340511;
        Thu, 26 Aug 2021 11:09:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:988b:: with SMTP id a133ls3197244wme.3.gmail; Thu, 26
 Aug 2021 11:08:59 -0700 (PDT)
X-Received: by 2002:a05:600c:2308:: with SMTP id 8mr13915218wmo.142.1630001339680;
        Thu, 26 Aug 2021 11:08:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630001339; cv=none;
        d=google.com; s=arc-20160816;
        b=wYaEfl/6KQr22bW4AMRe9SfRr0d0NMVGPc6JjZoUcAHCaQKCAqNgG6lr/P0Nc+V/fZ
         kmZUv190SJEpCDK7ZlJKwKgFI/MS5cBLVvKt2hh3FKSaFdyZBsHWsI51V3qTUXBdkUSb
         dOsJNK+vO1jJpwR5k68867tNdgqI2IVfp1jc9unjnmiE8HYNiVbdozWe46Cc+sgCkkHE
         k1EefZT++3FuJa2/AAAucw+SlXu3R1lFpyYWEwbg5hQ3264XxswCbVyGxjJGnu/+uTlA
         9cs3e4TI2qA6z86kVjrTpP6GHKEQAs/0mizRgTa1xfK4sxxsGkATUOVFDARgobCtEY0T
         Xmqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sdk8oq9F9d0RnEa7dfHJHGoL0Z5yyU5Y/fEoZ2o9vEs=;
        b=nRmCowvk0ICXmoS5tgmFU1rsYsRH7g8Dai22PgYxexLnRJHpnhrndgMilKTiUdwYw7
         F4SCtmJ2tYXlqxQGnoXMr8f0hdw+fbD2HV9zVeOqyzXgT9R60Y50RIoL36IrvUyfpdht
         bA1QjXz/9cXKneLiHAP4I4thkWClfdGvZa6ENNhnsyn1jLu8LYUQLc2Z94p/o1hMvCsi
         h33HczdmpYAQLPF1F6r6Vtw138WQJbXXKCzmp2l5odlK4Lz766WYhVRhgsZsjY5nXBRk
         L37N0x+Ixc6MPP8bCOhGx8NavPhZ4nEV8GOZpTZF/VbHBLDuLoMIwGjTywN6Eh/AHOeo
         R6pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oFaf1OcB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com. [2a00:1450:4864:20::231])
        by gmr-mx.google.com with ESMTPS id g17si297424wmq.4.2021.08.26.11.08.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 11:08:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) client-ip=2a00:1450:4864:20::231;
Received: by mail-lj1-x231.google.com with SMTP id i28so6707955ljm.7
        for <clang-built-linux@googlegroups.com>; Thu, 26 Aug 2021 11:08:59 -0700 (PDT)
X-Received: by 2002:a2e:a788:: with SMTP id c8mr4240939ljf.116.1630001338932;
 Thu, 26 Aug 2021 11:08:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210822075122.864511-1-keescook@chromium.org>
 <20210822075122.864511-15-keescook@chromium.org> <CAKwvOdmY2DQbjKutcofN3zsiz_majg6UnhMjMWbamVRhaRPhsw@mail.gmail.com>
 <202108251942.26FC1B8E7@keescook>
In-Reply-To: <202108251942.26FC1B8E7@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 26 Aug 2021 11:08:47 -0700
Message-ID: <CAKwvOdm9GMcR8rAwaEL8Nv7xJ-gAgo1NmmihF=CG72x0qj2MKw@mail.gmail.com>
Subject: Re: [PATCH for-next 14/25] lib/string: Move helper functions out of string.c
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Daniel Micay <danielmicay@gmail.com>, 
	Francis Laniel <laniel_francis@privacyrequired.com>, Bart Van Assche <bvanassche@acm.org>, 
	David Gow <davidgow@google.com>, linux-mm@kvack.org, 
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oFaf1OcB;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231
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

On Wed, Aug 25, 2021 at 7:47 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Aug 25, 2021 at 02:48:30PM -0700, Nick Desaulniers wrote:
> > are memset16, memset32, and memset64 worth moving as well? Also,
> > memscan(), check_bytes(), memchr_inv()?
>
> All of these are implementations, so they should stay put.

All of the functions being moved here are definitions. So what's the
difference between moving the definitions of functions like
strrreplace, fortify_panic, etc., but not memscan(), check_bytes(),
memchr_inv(), etc?  ie. it looks to me like a few more functions can
or should be moved as well.  If the point of this patch is to "move
all the helper functions into string_helpers.c so that they gain the
fortification coverage they had been missing" then it looks like you
missed a few.  I don't think the compiler will recognize those
non-libc identifiers for any fortification related transforms (unlike
memcpy and friends which are left in place).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm9GMcR8rAwaEL8Nv7xJ-gAgo1NmmihF%3DCG72x0qj2MKw%40mail.gmail.com.
