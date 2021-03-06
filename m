Return-Path: <clang-built-linux+bncBDE6RCFOWIARBVXKRWBAMGQEESHDPGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6A432FAA9
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Mar 2021 13:28:07 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id m9sf2462775wrx.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Mar 2021 04:28:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615033687; cv=pass;
        d=google.com; s=arc-20160816;
        b=PPti9HyY0shmv0OYkGSYH1/xOuCqwTZ7No7YiXjZumtCMYPq6UagUNDHT9sD27MwZR
         4PoNa/yvaxGD+TWDZHXdifqQFZIe6yhjufc+Geez1AUQNwkKLHWt4gsAWN3LhE+Ve4Lx
         KWfGC3QFNsWvy7bgoTgDnKwBQKDq/oa3YkVba9zMfZXAqqk8JQpxL0zBbeMT2xqIfC0Q
         KHgtD8iSFkrojGqswUVIzymIV9d5Mua+SpeQkS8W8P3rofuUyvWE4GLRMSA9NAUnoiHM
         IZzr8OU0acvWMpyPsSu74CGn0TyNcazxPPLRGROs9vI1u6Gd1Hb+kaKvZ20zfoUV+Hhz
         /AZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=lIVZOODlSA2dPFqfXUCVodv4OIGi8yycpl3yTYGfOnw=;
        b=n+y/cvmJy2ofK5lFNrmccc72mlamy5yNlP4/CcabSterGQzOcscDdNw8u3zJYm3aim
         16P3RwH7eVEt4ibrLl4SvV3JSESoWjzP+1QYLNt7B4t6NnoEmpOq5XF/vg6zrfb3T6zV
         jRU//cZnwNRX0lx+WBlLlg1X8rrKIJ8hnsAiGspdKaNVO0OCvkdZRe+nU3DFTKoa0PaX
         s0Q+kxwEG1K7W5MhZhNJMewzZr2pAONJc+QvCuxiFYNlhVWfM5gfiJD6/IkmJsuvnwjv
         lv4sj0kSmddWRwH6FW/9y9ObV9iPF/wLSU5P7LH4Kz45bKI83Rq9eKGwYHWD7zZfBCJh
         pzkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=KvukWuCf;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lIVZOODlSA2dPFqfXUCVodv4OIGi8yycpl3yTYGfOnw=;
        b=YL79MNQMovLNLILWlGZm6WF62doE4oIJNEO25Gt4bdRegYrihSxpBB2ktVWWOlxq2g
         F6Sfg4ZkYbf9/6FnIq4r2WDd21xqTUC+TU+uJwutPpJtUlBeOIVMjMXWP3S0zxEgYwIU
         4zLD3EwFO6lqZQ7HfltcRRKxjbO/VFC6ONwXt9V+wsAa2vCK6dyJhelRSPunCOXJox1j
         9CWQfNEE6IX4MzmHPsnQNTZ2eIFE2nGZ2nBrN7dprwhlklCQQsNsX645wXRqpFoTKqAE
         rCl9l9W9GtlyXBfwUDBT7cWTfI6TrRsFObSiyD5lPBTPGaQiW2ek+GsF0LrvaXhQpXY4
         9Llg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lIVZOODlSA2dPFqfXUCVodv4OIGi8yycpl3yTYGfOnw=;
        b=oNhyeoYbAYiJ8l+x9GFkrcxAIGs5go5vsIkReKUxhbL1loVSfSm/d+Woc+JT+RmK0y
         Y0OdskSk6/sOfCIH+45jeuZjDawcvWXPs8n9/H8i/WJEgkU3CJPaXWT/bM+cGlKhRjXk
         T5T7P9J+ByvzGQR97f3shImfQL7CeGsC9LMPABGFcGN3tsqcYjGGfqxPz1cQA3Q7mwJn
         iLWTZESBvsbO5RslcEpEzD4acWZ75VY2FcqP5GvsHJnNnl4GoEokzYHha2RWjxS+kz1K
         J6GA7aQBBQDJZEFEz9Y0I9jaQOELHB0SVvfzwr/cOuFmfRe26MoK0ZqzPNxIUIEFbnGo
         f4xQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530E8uIcttucIDX+pnXFioA0ipVexJsCBmkf4XpEbbH0wL4imsuo
	KssKAPhOzVgheSS0OCsURHs=
X-Google-Smtp-Source: ABdhPJz3IxOzmklWjRN+/A15o0+jZUrS/ROfr6hXMl5oq50H96dheZZ+GnnH/QLU36oSDXsNm95OaQ==
X-Received: by 2002:adf:d0c9:: with SMTP id z9mr14578356wrh.396.1615033686937;
        Sat, 06 Mar 2021 04:28:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:c2:: with SMTP id u2ls6062792wmm.3.canary-gmail;
 Sat, 06 Mar 2021 04:28:06 -0800 (PST)
X-Received: by 2002:a1c:17:: with SMTP id 23mr13522924wma.6.1615033686123;
        Sat, 06 Mar 2021 04:28:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615033686; cv=none;
        d=google.com; s=arc-20160816;
        b=IdIaSuQao+FGJ0hdy1o07dWDbMDD+eQx2a3QCEh/LZVBJsWXt+5v+MPvm8Th09+PEc
         wu0InIHqHa/ykPW2xTieOGm2vzLYTOj84Jhoyt56FfCyyAXJjs+8nPmyPW+S1D0y7ZjL
         ULoVjbaWtoKKKW2Riqm30lgwqrFieKxjFCqBOSjwftjPMEMbBfjGKYxprA3/3JlrTegB
         r0JoNEpCy9iJWdjRftUo/fPvuzHouax0OKlxEFN04h2DteIoXja3xt5yOFn+HRv60A6r
         47lv/nV9mXrVlu7u+bFJd5W4HkhP7m7zex+jC4/ToA8A17LK9LfvrHr2FR7ebGPElcmM
         SZiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JRTQ//F7vNrpXNh19Edx5ubUS+rURU5261q44/OgIzo=;
        b=AlzCRoS7Yx3gIt6l9akMtwXcsXSxpQAjpdx7ky9/9kHXKdc6wz6Uqi+s5awr9t9TbW
         BEdgSDXx/E/TdLIIqY0PlyweCfPm8+oSqgH27gGLjYRq5j/ULreUM4OdDKg4N3dGdZAS
         vpx0a+V5Q6nhI+X1K0RO6r6GohCpU34S+Rz05qpKRFk24aJNm19XIMDJfsL2KC/FLJcn
         Ij/9zEoAGcdQZ89miauf83GKsbWlxpWjByuITNiWgT2th8rktSxIXdjonLTcBysFVYUV
         FV8hLB1NwTdYVg34VJPDRfqWCTgq7Y/iwxE1qeN8OSco0gnCP6MqD5ITEYdoa6PUcoLG
         grIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=KvukWuCf;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id k83si224990wma.0.2021.03.06.04.28.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Mar 2021 04:28:06 -0800 (PST)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id k9so10527838lfo.12
        for <clang-built-linux@googlegroups.com>; Sat, 06 Mar 2021 04:28:06 -0800 (PST)
X-Received: by 2002:ac2:4d95:: with SMTP id g21mr9045702lfe.29.1615033685580;
 Sat, 06 Mar 2021 04:28:05 -0800 (PST)
MIME-Version: 1.0
References: <20210223023542.2287529-1-jiancai@google.com> <20210305005327.405365-1-jiancai@google.com>
 <20210305095256.GA22536@willie-the-truck>
In-Reply-To: <20210305095256.GA22536@willie-the-truck>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 6 Mar 2021 13:27:54 +0100
Message-ID: <CACRpkdYioQs4poAbUp1zCennOfFhGEY59q3Qht6s9NC0fOUNEg@mail.gmail.com>
Subject: Re: [PATCH v6] ARM: Implement SLS mitigation
To: Will Deacon <will@kernel.org>
Cc: Jian Cai <jiancai@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>, 
	David Laight <David.Laight@aculab.com>, Russell King <rmk+kernel@armlinux.org.uk>, 
	Russell King <linux@armlinux.org.uk>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>, 
	Masahiro Yamada <masahiroy@kernel.org>, Kees Cook <keescook@chromium.org>, 
	=?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Daniel Palmer <daniel@0x0f.com>, Ard Biesheuvel <ardb@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Vladimir Murzin <vladimir.murzin@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Mark Rutland <mark.rutland@arm.com>, David Brazdil <dbrazdil@google.com>, 
	Joey Gouly <joey.gouly@arm.com>, James Morse <james.morse@arm.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=KvukWuCf;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Fri, Mar 5, 2021 at 10:53 AM Will Deacon <will@kernel.org> wrote:

> I still don't see why SLS is worth a compiler mitigation which will affect
> all CPUs that run the kernel binary, but Spectre-v1 is not. In other words,
> the big thing missing from this is a justification as to why SLS is a
> problem worth working around for general C code.

I might be on the Dunning Kruger-scale of a little knowledge is dangerous
here, but AFAICT it is because it is mitigating all branches that result
from the compilation.

I think the people who devised this approach didn't think about the
kernel problem per se but about "any code".

They would have to go back to the compilers, have them introduce
a marker instead for each branch or return, and then emit symbols
that the kernel can run-time patch to mitigate the vulnerability.
Something like that. (I guess.)

Notice that these symbols/pointers would first have a
footprint impact, though maybe they could be discarded if
not applicable.

The patch says:

   It inserts speculation barrier sequences (SB or DSB+ISB
   depending on the target architecture) after RET and BR, and
   replacing BLR with BL+BR sequence.

How would you do that at runtime? If you slot in NOPs
around the branch for mitigating, there will still be impact.
If you want to make the code look the same unless vulnerable,
you would have to patch the branch with a branch to another
place to do the barriers... that patched branch in turn could
be speculated? I feel stupid here. But I guess someone could
come up with something?

So instead of a simple straight-forward solution that becomes a
really complicated awkward solution that generate a few thousand
more man-hours and delays the mitigations. So I understand if
the authors would want to try the simple approach
first.

It may however be our job to say "no, go do the really
complicated thing", I guess that is what you're saying. :)

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdYioQs4poAbUp1zCennOfFhGEY59q3Qht6s9NC0fOUNEg%40mail.gmail.com.
