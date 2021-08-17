Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXEI6CEAMGQEQIHBBGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA1B3EF23B
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 20:47:56 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id s1-20020a0565122141b02903bf02f21443sf5508304lfr.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 11:47:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629226076; cv=pass;
        d=google.com; s=arc-20160816;
        b=AbR1Ho9ymThToSn7V+3OfPufPbPPLUcBjva/Hz6K602QDsNF5m0WoDtrT43acdU6WI
         4tNgy2yM2EojwSAA6UTlOHOwDGUzI5TNMkumoBumGe7gSC+IgWnbi5/59CmRji9KQGEQ
         iA3gZlnoT2SH4Wh7l1k2xTjWumFqu4Eb3KD9OMzklFJs2i8zCsyAQ6PZ8S9NYCU5G+AC
         +Q8ibqEQLN54hsEv6+dFvJPSkefnS1KJa1An7CgxMR51jn0RgfYHLMnchmYV06gXGFtw
         hrd6f9Yc5pqzkV5tecYes6v0H6eJOUPmFQYOL3qNFeR7LklhWCO9DgSFyBZ+QD0emXxV
         Nl8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MXIzs5bhJqJl2mvZGYY+Pz5PXyCbeB9y2eBc9jKKF4s=;
        b=b4+5h7DgOYPwShDmjTr9lOiQqFKOEOG+FE66okfbZ9V+L6K/X59ti+CvPnHpELeFs9
         0NmKTAg8k/KQWKjOUcqL6z6KPhocpnyYiMGNudGMSK8um3qqWoKFWIEtZpirWJyRX7Ot
         UoMbIAGpjOxVxHiXwBfHmRbhqIRPCLj7Fh32/zG6NVwhA0REE3fpHPDq3/1py2Gxc51L
         2BR0SwvxKrzs4N4lhjpkZsJKFCz/GI4i7whS6APl7vw2WXiJHigITgmJxbNWeqDUjGoY
         K60Up5hlukJkE2i/1ePwbyUXMFv1Mww3pIaX6piuOnVslyXFPg49yW0ZJ1BjQT5aoRRR
         DLkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NQibOidO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MXIzs5bhJqJl2mvZGYY+Pz5PXyCbeB9y2eBc9jKKF4s=;
        b=W03gggskCKSfZhrfMFKOVl86cqoaHe1qwfDm3wxJzn06IwIBylBhPOE2t5Kuq77iMA
         WK7nYZC0xb2SuQCwKrYcr/yX0+XYWHqQI1is4H9hO+N7xaUWC7h9VuD8346MYLfq+Q+7
         PHPICYerx25WlHIkZcr+BYdcFJ6bXJXbY0MHYqtcMoYElTZxnyFPp+j4rVgfSDgJkOAU
         GWvvJzmNcmZPWYQi/K5T9WE71ytzzeHEk6VxFpLuWXAjvN4czuo+d+fjO0aMgOVQxuzQ
         2Kqd+pSc8UczZm4rzXy0VkY/eJ92uXWfVH1SFGqokojhkeXageEf/O3aMQCnI+prWfF/
         jOtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MXIzs5bhJqJl2mvZGYY+Pz5PXyCbeB9y2eBc9jKKF4s=;
        b=HVBSgLcF3aw9W+Si79IWWuQPegeoTWuyHj810f8spYEwULgQdx3k+VrXh2mNLn78le
         2t3j55fL6IO2ZKMnRceYE0RhYV0APvjRGLZOtq0oiTv3ib06ynV6uTdl9pVqEuCYjgPX
         HcNYDLRE7lgS+HrN6w29vM2W1OZuI7nNOyoTbsICzsdWZxXjeJo4ilbGD0FIjo6bGkHQ
         knyu5Yi6NtzZh3YN0frqPmrUIS6X7Xe3lMZGqStPT0E7XRQuYWkEzEiNdsNbRHi95iZd
         U/5bWYj3hMy1heNKoM1mkwS7XyEdfgQhUxVUdzSSarZjqmu/6nfUXlE1GKguo5T0K2xt
         PacQ==
X-Gm-Message-State: AOAM530sfvd33JGLVjjiFRBkpnrOwC552eZRyEBdSPiGOAt3aeL0F75J
	ajEeWg4bEOycojxI8uoJRjA=
X-Google-Smtp-Source: ABdhPJxFEc8Wr16Tn2pZUKzyRyR3SUIVDusRlVLTYK+/VVkHLwL3QGYQWuXfbrN8tGw0XFajRxPg1A==
X-Received: by 2002:ac2:410e:: with SMTP id b14mr3396033lfi.114.1629226076556;
        Tue, 17 Aug 2021 11:47:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf26:: with SMTP id c38ls705066ljr.5.gmail; Tue, 17 Aug
 2021 11:47:55 -0700 (PDT)
X-Received: by 2002:a05:651c:54e:: with SMTP id q14mr4478850ljp.426.1629226075506;
        Tue, 17 Aug 2021 11:47:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629226075; cv=none;
        d=google.com; s=arc-20160816;
        b=yPsT0NXtTJBsHO454zLFVBHEOpnUQyBwk3mnLZGtH3dGN6q598dPJjxfmnznl6kWia
         jNkJhcqv9DYKwvSAEm+wtyusk0s2lI+goSaczHQPea5PnBRKFNHhxUnRsz5C+CrKi+3F
         ptj8M54WrZ49GV/4KYduWyI3h3HkK0gKjJjcZw6CVbdJbdVMj9wyKFdEmHdyG4Tt3RZ8
         GjvYQIIhv7h/6IOcHBPc0yaKFa/tkBnkpr12gdUg5qw3BE6QZ8igeZwz+z98UpkDz0UY
         0I0tCJqkqkXV8ix8cKciCcQWoq3gtp1UdNXmK9GRsUmwJfNMKzfCY6E9J1wWeyYAN5GR
         Dwuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=alY8uh/6wUCPRdZH1MAlluu7K/itfkn6Amur4AolX1Q=;
        b=F1Sbjd+n93ZSD3VZsFVb/HGHD23VgrT89ej9AnGCScnyVDuU9B3fQnK8UJYIxbPGWn
         fqju7LN0f2rJWTOkNI2A9+y//oQbH1qzOZ/0+np3skdSTmgreh8Sae7ZRZvYzNMUKKLy
         xSJmkn6iVWJKH7CyYZABgD8FdUq+Ry7NInEoUL3obgq9BLIld7D5wfjoJTrk6zIUnpHe
         +zXQIEvJqPMBm4+V1/Sy/g1ekNU8QS8KvaHjekxvrYS7OKn2Bn2CtCO2FYRFLNgYqsoc
         Y4ErrtOws3AcUhI05Be+omCX/XwW5z9zGUSEZVTCdFmH6WUTcZa2D6Eo+GeQiSQEsPMo
         QUKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NQibOidO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id f16si191471ljj.3.2021.08.17.11.47.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 11:47:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id w20so43221023lfu.7
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 11:47:55 -0700 (PDT)
X-Received: by 2002:a19:7117:: with SMTP id m23mr3587131lfc.73.1629226074949;
 Tue, 17 Aug 2021 11:47:54 -0700 (PDT)
MIME-Version: 1.0
References: <269701460.117528.1629210189833@office.mailbox.org>
 <796036867.117557.1629210288168@office.mailbox.org> <CAKwvOdkYgC4pU0Ta+vS-UkyAYFTkg8MaLuR+OAsSX63_BY+1vA@mail.gmail.com>
 <CAKwvOdk+fwHQDe23Ttva46tyB9yGGxB73zXzNPkcMCggSRWUdQ@mail.gmail.com> <ec0f00b1-04c7-9972-d28b-122964a127dd@mailbox.org>
In-Reply-To: <ec0f00b1-04c7-9972-d28b-122964a127dd@mailbox.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Aug 2021 11:47:43 -0700
Message-ID: <CAKwvOdnUFuvmoywKvGyrnDMHgkVrq3vSenLSy048U=amWs2QTQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] x86, Makefile: Add new generic x86-64 settings v2/v3/v4
To: Tor Vic <torvic9@mailbox.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "x86@kernel.org" <x86@kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, 
	"graysky@archlinux.us" <graysky@archlinux.us>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NQibOidO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136
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

On Tue, Aug 17, 2021 at 11:31 AM Tor Vic <torvic9@mailbox.org> wrote:
>
> On 17.08.21 18:22, Nick Desaulniers wrote:
> >
> > Ah, cc-option can be used from Kconfig. Perhaps a cc-option call to
> > -march=x86-64-vX with a comment about which compiler versions first
> > supported these (so that we can remove the feature test when the
> > minimum supported toolchains are advanced) would be better?
> >
>
> That makes sense. Will do a v2.
> Which of these possibilities is more "expensive"?
> I remember a recent patch where some of these calls were removed.

cc-option does "cost" more than these version checks, but it is more
concise about what we care about and they can be removed over time.
They also work better for different compilers, since it's easy to
forget to check one particular compiler, or get the compiler version
wrong, or break a pre-released compiler.  We generally want to prefer
feature detection to version detection.  I sent a series recently
removing stale checks.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnUFuvmoywKvGyrnDMHgkVrq3vSenLSy048U%3DamWs2QTQ%40mail.gmail.com.
