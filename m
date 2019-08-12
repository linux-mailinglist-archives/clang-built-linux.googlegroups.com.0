Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBC55Y3VAKGQE5TAD3WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4438A415
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 19:14:51 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id b12sf64892430eds.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 10:14:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565630091; cv=pass;
        d=google.com; s=arc-20160816;
        b=NOadIRGOAlvV7yFIhdNNEN9qYuBBqkikmAeKzxPr0c33mF1e0khHXaUlEGgtBLT3Aq
         LdcT7Rn99cQpuXoTKheInGYaylMIvtuSPPXlWDL3fRH/pDO0N7joWheYY48r+ipBhVpu
         uiIlaVR84bewEF2DbpBV/if1citAQCVi5frK354/tDZrf4ne1Z1mk+Z6F6jrZgXQ+5ja
         brU8QZxe3c0xxuKIGScX6xFvRLqQ8LKt9v8r4Ok2DAW9+o33e2mTJg1tTejClGiDnpYV
         sxaJg2LNGzYSO/RfSNcTcX2BJaT0h5BmUQTxxwvUJHbYIY5SxZYVNwwjkKZxwTOMrHrU
         Wadg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=243sm+FXf3SDcxo69/ywagR/Hp2/wWfoMgFrRUaVOP4=;
        b=b6CxK/wSyMPPnvm8C8tZHuUpjzQ2RoIkcTX7+zAHig/Zyl68qaWxV7CWSacrCcLNTn
         bNKSu0U+T8kWSWDSQyW/eFd70gWh7R6FYx/iiRIZ3GPhHhiZxHrv7iWJVol9ofZosz3q
         CTUxR9f4mmeeBriv0soMnuIs2NFzPAL0Hugexh4Rz11OyzTXQYVtDLx3JUegZ+78l8X4
         IedxsMLYvz3v4dSPVRvR/wLFEECkld6rLJDYuopo3j3A0P1LhfKZCW3WMcYgOhTOpuL2
         BizXW/SkdoJdDOkb6p5d0kaK5bLleKtmu1XNULAFqOmjwtNZxaSCEtq4dMWcIvYeWub1
         ajsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JQXJHyjA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=243sm+FXf3SDcxo69/ywagR/Hp2/wWfoMgFrRUaVOP4=;
        b=hp5LIcwc6ZX7uAxnaMNhVqm1hm2hiSZsUAIGfQQjnD2TrErKpFXkatCtCCrAPl/48a
         V4sIe7wRgJWFrhs9Zs7gH9GOXcFemwWBMRcMWXfRdGfLusmi7ikd3Mx4+zEogv06NYZK
         azcu1LXkBhx8vkntyBZe0/sP7poFlGTB3GFL7DIDv74AUa8f5RpW5rv4zv1nDkGFW1fp
         ees+FF4oXeTq5TdzIh0EegWQINPKtYBz6atd3aj65/MTOLC0iYILMB7uZSBmpsL4Hf6w
         qC6V3vpCXCG95RLj9tHkUX0ZKJUwPygQUZN0j5PkQyPN26w0OAruodQ6TbzyxiBQYB2C
         puUg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=243sm+FXf3SDcxo69/ywagR/Hp2/wWfoMgFrRUaVOP4=;
        b=Y1eKnR5a6AywGz2T8FPRN/P/1Pp5VqRW+v1rFrBEPl+LnI8URScgNlarxAtr92vERv
         EbJYWfIbem2CVhzB9rlyvmCZJ+GoERbWj3gnsQLeUqH1bMTjAotznOZIwZ+CZ1+hQ4yV
         Uf6DsjOg/dUrV7SqxaULsRlKeKTx/jjF3DKRRqe/C+hRUXph79TrYGzxG6O0r/CCfAl8
         lqco0V78U7zMOwXeSzK22uWAwq/qUo3DzoxAMS4I8SjNnxbVQmj7nh6dplK+ssa7N4qr
         fRd880GrLhT+gKKHSd2i0LBhr2y0XEDH39HvVkFW/QIulSlDSI5ETR0MyMrU/PzTl9K0
         5+Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=243sm+FXf3SDcxo69/ywagR/Hp2/wWfoMgFrRUaVOP4=;
        b=ofgH1MSnsbW8yEgfoqvAuVVLw3ORm+HMVLhnRydyYYEm9qVn4MJCnc+85NtMarpX/o
         6k1KrS4hp6m65pPj0w6db9HZ6flYBLOLnJHIBEFupsHNvuVDSyEGEfx488BGXjRLpVS3
         IR/fXQF3vjSZZeILoZCUuJftM1LEBEMqIaJyDBu67476/1nSrMrKGF/zoXfv84z5k6sY
         Wvcwyc94+/7RQ+2UH/yn/pSjHveL6HGd72pPHXvK9RSC9UTF+YBr5Neh0/TCUM21sI0S
         jDneoUrnE0RGw8WAozMgt2EePX6Dn9iVDVxRpyC+hHWW5tx8+FExM0JO69mDhdQYfvg7
         Sdvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX4pdCarvrHcpI2fz7huwgsddvJknoH7LFxxhDpFa1ztdykf9hK
	8FRlK90gM7kN0vEk7qvhgDs=
X-Google-Smtp-Source: APXvYqzOAFTNKQOhEX5AATRJMFC+OitXt1GcUaI+gzmSTTufncz/2PriGOO8NZw9vuTH1IyyNdZ1ig==
X-Received: by 2002:a50:d654:: with SMTP id c20mr24036406edj.206.1565630091295;
        Mon, 12 Aug 2019 10:14:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:9583:: with SMTP id w3ls30070001eda.5.gmail; Mon, 12 Aug
 2019 10:14:50 -0700 (PDT)
X-Received: by 2002:a50:f982:: with SMTP id q2mr37829192edn.270.1565630090904;
        Mon, 12 Aug 2019 10:14:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565630090; cv=none;
        d=google.com; s=arc-20160816;
        b=Ht0sjOSnXwsIfdAD9fJxbyNCl9whr2wv6HKiYkQJvYT4oKbKx4hCEn4ByRZATlMxOY
         L0N3tujQIYrbjcHoz/Nweq23jbIGSyS4z7JunTRBaP5tSGzNOorwiXz32dgTkpba02Bc
         Zh88CHuVo9UFw/mXcHXuw+xKFdo7dE+806ObTjIb+yzO/JN2DzBXuD3v6CnZHQ5PCuUq
         HJQ0GeeRN1TjyhCAXf1hQU265pTvBXmDfGoFIqwcsv/Ms8ylMi0iubjCuOBniYjol0qr
         hAzOeLkwRbaSA4987ay/yiDy1hjNSDWrV4ySGMqoFf1SDpRVnXGx5PeoND6VYLnAIxdv
         rYUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uyuxaCQlT0KbWKY6B1ulai8tYcYjc2klD2HfPgScdF0=;
        b=YkmKFKuorYpJgnHvwEUMkOAUaGfU3FipViX4QWbsjIdrJR7KxGDaAIpgNev23My30i
         4TUGRUZHXzYhQfrWaD+4z0O7kUW4tvUhFn0qPHybXtqSkyiAVLgvsrGtg03rRaCZ7tN+
         3KQB7Xr+PCG8BQCsJF7Yngd/3Frgw8UOjGLsURtqX3vUjtcp9oXKOI+c88h3oPiWOoRo
         6UmAZMKyTX5PT3Md6azhZ98ZAJAWXvvTN33GnhpUT7sDhV37yKyjQhlM5H42owtOteUN
         V0Uy/HZhbbgDwKb3ddrvAdPwQesQAtuZ9fcaFHofcpA3l8DpNbzRbWk4xxGvt/uunLM1
         W9fA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JQXJHyjA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id s30si2701648eda.4.2019.08.12.10.14.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 10:14:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id p74so246978wme.4
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 10:14:50 -0700 (PDT)
X-Received: by 2002:a1c:be15:: with SMTP id o21mr350444wmf.140.1565630090353;
        Mon, 12 Aug 2019 10:14:50 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id d9sm125544wmb.9.2019.08.12.10.14.49
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 12 Aug 2019 10:14:49 -0700 (PDT)
Date: Mon, 12 Aug 2019 10:14:48 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jussi Kivilinna <jussi.kivilinna@iki.fi>
Cc: Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
	James Hogan <jhogan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Vladimir Serbinenko <phcoder@gmail.com>
Subject: Re: [PATCH 3/5] lib/mpi: Fix for building for MIPS32 with Clang
Message-ID: <20190812171448.GA10039@archlinux-threadripper>
References: <20190812033120.43013-1-natechancellor@gmail.com>
 <20190812033120.43013-4-natechancellor@gmail.com>
 <ec4666a6-c7db-247b-de81-bb784bb9d649@iki.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <ec4666a6-c7db-247b-de81-bb784bb9d649@iki.fi>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JQXJHyjA;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Aug 12, 2019 at 10:35:53AM +0300, Jussi Kivilinna wrote:
> Hello,
> 
> On 12.8.2019 6.31, Nathan Chancellor wrote:
> > From: Vladimir Serbinenko <phcoder@gmail.com>
> > 
> > clang doesn't recognise =l / =h assembly operand specifiers but apparently
> > handles C version well.
> > 
> > lib/mpi/generic_mpih-mul1.c:37:24: error: invalid use of a cast in a
> > inline asm context requiring an l-value: remove the cast or build with
> > -fheinous-gnu-extensions
> >                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
> >                 ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > lib/mpi/longlong.h:652:20: note: expanded from macro 'umul_ppmm'
> >         : "=l" ((USItype)(w0)), \
> >                 ~~~~~~~~~~^~~
> > lib/mpi/generic_mpih-mul1.c:37:3: error: invalid output constraint '=h'
> > in asm
> >                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
> >                 ^
> > lib/mpi/longlong.h:653:7: note: expanded from macro 'umul_ppmm'
> >              "=h" ((USItype)(w1)) \
> >              ^
> > 2 errors generated.
> > 
> > Fixes: 5ce3e312ec5c ("crypto: GnuPG based MPI lib - header files (part 2)")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/605
> > Link: https://github.com/gpg/libgcrypt/commit/1ecbd0bca31d462719a2a6590c1d03244e76ef89
> > Signed-off-by: Vladimir Serbinenko <phcoder@gmail.com>
> > [jk: add changelog, rebase on libgcrypt repository, reformat changed
> >  line so it does not go over 80 characters]
> > Signed-off-by: Jussi Kivilinna <jussi.kivilinna@iki.fi>
> 
> This is my signed-off-by for libgcrypt project, not kernel. I do not think
> signed-offs can be passed from other projects in this way.
> 
> -Jussi

Hi Jussi,

I am no signoff expert but if I am reading the developer certificate of
origin in the libgcrypt repo correctly [1], your signoff on this commit
falls under:

(d) I understand and agree that this project and the contribution
    are public and that a record of the contribution (including all
    personal information I submit with it, including my sign-off) is
    maintained indefinitely and may be redistributed consistent with
    this project or the open source license(s) involved.

This file is maintained under the LGPL because it was taken straight
from the libgcrypr repo and per (b), I can submit this commit here
with everything intact.

However, I don't want to upset you in any way though so if you are not
comfortable with that, I suppose I can remove it as if Vladimir
submitted this fix to me directly (as I got permission for his signoff).
I need to resubmit this fix to an appropriate maintainer so let me know
what you think.

[1]: https://github.com/gpg/libgcrypt/blob/3bb858551cd5d84e43b800edfa2b07d1529718a9/doc/DCO

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812171448.GA10039%40archlinux-threadripper.
