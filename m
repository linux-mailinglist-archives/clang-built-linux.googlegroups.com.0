Return-Path: <clang-built-linux+bncBC2ORX645YPRBLF4S6DQMGQERXNP2PQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8513BECC0
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Jul 2021 19:02:38 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id 4-20020a17090a1a44b029016e8392f557sf4245951pjl.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 10:02:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625677356; cv=pass;
        d=google.com; s=arc-20160816;
        b=WaD3+l461f30hCFlH+gVEUUFl84Lsuj5QnWZ7PybXN3rprpU6QoPWXIwoYX0CSlS1o
         VEXl/fSmMqvOQAik0DPDEmzRZldoWRDZVbR+sWHeMO2RY7uBz4AiNDAuE+tzp5occdMr
         NiwQl/VvZMw8b/ru9j8DH3Gn4mVyTJQq6g+ypWItenOcHnaSDwKD87Wj3sxoMf2i7pli
         pmaLD78kYTFgeend53lcz4TNpn966GcreriJBEBbAYPS3Eq/8Ti3fvLo/C+QuZtjffMs
         pVEdXX9puZJdUwvCAHDnwK+DI2otUUom11OC2fG9DuctF1fQUFByDRT/3GQLkbzC9UYg
         KEeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jxMX77XWyPxJdZbl8wKaEjpDcx2qUzQZKNsPYLK+4x0=;
        b=welGyOAz8NdaQdehonUChRpF8tgAAdft5vnxZUaTF+scy7cA1ceMo39F61QoKjeyxV
         Xwwl/aI8WeUf10Gr4vii6WOSs1VhWIan0fa6Vzo30NABrQFD9i0/ycqpGtvQY04Js4vL
         FQLx6qJnWrIQc6MyhOlxh5H5aaZh2f1qdhM744sdE8j82ODBXXyZd0aOiDd7pk3iU0SP
         wEwf+yumq7RZYc8dTTR8q245uNbQgUH+eN1T+g08kW1p2QPsN0+kQdMyq5Fi2MgOWxCb
         jlPMJa1Q28NluL5UfYBJmpk2JpQqz2w3NbRQmyBya9Gk3syLqa2NIZGRiFSgrKGjlVF5
         DMxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ae0a52BS;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jxMX77XWyPxJdZbl8wKaEjpDcx2qUzQZKNsPYLK+4x0=;
        b=RYPQbm7ktRPeQHfdnNmb/Kc/ySLW2n6SucNpua9w/P/P9NZoBSvJgcmheuQYnGlerI
         fQIAOfh+QZISkV00xAVDP1uIopJ4mB6QnSnDTVk6nSnonvrP7SWdW2qEAMV9OWY9twAb
         yMIOMkq/jlk9k9/FqKMAxsD09BwzZ2oPt4WBruqwNULYDv0ohZvFL5hcYiFMqWH+kirt
         qLW3CIRwvOaSkqAvZVLUkzO6X8AKyHjCID5pG2zpEDPRVMtkOU5siI456Yn1ZCOI/Qv0
         Hgzt139j9wDfAmJqWOAtnPgPYLhu4wKIV+4N8CdnBEeTudmMQlm8eMWj2YwimO/FjMpj
         iiAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jxMX77XWyPxJdZbl8wKaEjpDcx2qUzQZKNsPYLK+4x0=;
        b=jaSY7EQhCV+nf7Mr/RgJhDtgw7GKUGcHSaYJaaPXBgDuKRYKNXtqUq76YZsiJ3J/H8
         d5lGEgFWeykYba2t0V2+B30rka8DVmeMoudTh4YpXRyO1nBkQlJj1unGw+El7hWbj1xV
         bLZIiSecKxs5jJkGfUIW+fnOB+q0WJnBNkZ0Bs5b3AGBra1y59iIxRG2CMqBFihMnNTY
         jE7LrIUU3SM8sNz9xJLAwAIym1HNJpDgLkbwYrfI98FsKIKnpoOSun0FQQ1sxB8yVFlY
         X/bEYqyRtl+b2VPM1P7UnHRFiB7c5KQxd5D/B2z10he0Bfjpn3dMymSq+OfyPybHeDy7
         ThNg==
X-Gm-Message-State: AOAM530OKuB1U+kwSQ97voX+mYX19q0xX+Y16tUKnQ0FPCnQhPTRb1HQ
	QOq0hm9YkZgpiweQhxaWGPc=
X-Google-Smtp-Source: ABdhPJzzmvmZBTqKdT3GeosqYfaoq/n7T9Sa+GW+Y1y5ZZCmIHCebbAXXuUpACdh67kyKC5Wlzc45Q==
X-Received: by 2002:a17:902:778b:b029:128:c0ef:9d7e with SMTP id o11-20020a170902778bb0290128c0ef9d7emr22049516pll.36.1625677356730;
        Wed, 07 Jul 2021 10:02:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:788b:: with SMTP id q11ls5143741pll.6.gmail; Wed, 07
 Jul 2021 10:02:36 -0700 (PDT)
X-Received: by 2002:a17:90a:b396:: with SMTP id e22mr36644pjr.3.1625677356163;
        Wed, 07 Jul 2021 10:02:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625677356; cv=none;
        d=google.com; s=arc-20160816;
        b=j3rdw1+RSG/R8W3KArzxcCKj62S1wb+5v/4MtMIQTLDtN8pXsBE/okvmFkT+brwztX
         1y2gRpSo2pVoHtzcq+bkJbs12i2HhmX0f+xMVwcI4qYxBA+uyvjRcLiRErrYn/+rIepW
         ky2wQPNP1xBVHSixIeyFvTb5J2kuoCiRcMefwKnfhf3uMNl1o2haoyub2C1liZTnYQQo
         jvWZGxwaflI9k2fJY5vrbYthmK9S1OLTFr/QGZqXH3fyrjWc3raSPeqXWK+RzwQ84eLs
         TLMkUAxI2IiQDq6GbfiGkw3pHOVKRagG88agQjgBW3zGOLPo1alkXH1WmMiv8ioINi4X
         2PWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Nvt17DC+0V0vDNtkCundvZnkSWcUic46kjkyGHinAVw=;
        b=P5+EfcfRtBSJY/rbqOddjRa1qSvhz8uyAE12ywyPPhYnNO+ootljyxvyyPZ8Szupzh
         mF6r7Y20ap7WWVzGFivbquILPE05LxVz2MOzv+p8//ZUS8TB5W0B470jXxx0hoJ0CtxH
         aihToWjmp4kjmkO8iZXH2TIVx46NhRIlSLesHFGSJDPno0qVpId1uhxsI6zWvDFpVbhi
         +Gv0t3npNYRCdyv3SPeuk0KVyIQ0wxqKw6xNdqZQCR1b1chbs7+QhilpwtQVGaIla2Ux
         w3gigKmb5yyJtTFXpEF7Rd31yMYC5UFBIXFPJyQ6RYeyOrcP7zcqQtdQ6fr/IMwCAYDh
         jIHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ae0a52BS;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com. [2607:f8b0:4864:20::b35])
        by gmr-mx.google.com with ESMTPS id r7si1840070pjp.0.2021.07.07.10.02.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 10:02:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b35 as permitted sender) client-ip=2607:f8b0:4864:20::b35;
Received: by mail-yb1-xb35.google.com with SMTP id g5so4184262ybu.10
        for <clang-built-linux@googlegroups.com>; Wed, 07 Jul 2021 10:02:36 -0700 (PDT)
X-Received: by 2002:a25:7085:: with SMTP id l127mr35127383ybc.293.1625677355105;
 Wed, 07 Jul 2021 10:02:35 -0700 (PDT)
MIME-Version: 1.0
References: <CABCJKudYQV6Nt=Qq+zY=9JF1WmLVLnx+--3mJA9dkhLMhMvuFg@mail.gmail.com>
 <20210706090607.19421-1-lecopzer.chen@mediatek.com>
In-Reply-To: <20210706090607.19421-1-lecopzer.chen@mediatek.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 7 Jul 2021 10:02:24 -0700
Message-ID: <CABCJKufWcp6Hx=8btz6pDNcKvQ21n4BSPZ7cp1Tzhxt0+pQOmw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] Kbuild: lto: add CONFIG_MAKE_VERSION
To: Lecopzer Chen <lecopzer.chen@mediatek.com>
Cc: clang-built-linux@googlegroups.com, keescook@chromium.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	masahiroy@kernel.org, michal.lkml@markovi.net, nathan@kernel.org, 
	ndesaulniers@google.com, yj.chiang@mediatek.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ae0a52BS;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b35
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

On Tue, Jul 6, 2021 at 2:06 AM Lecopzer Chen <lecopzer.chen@mediatek.com> wrote:
>
> > On Sun, Jul 4, 2021 at 7:03 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > On Fri, Jul 2, 2021 at 12:29 PM Lecopzer Chen
> > > <lecopzer.chen@mediatek.com> wrote:
> > > >
> > > > To check the GNU make version. Used by the LTO Kconfig.
> > > >
> > > > LTO with MODVERSIONS will fail in generating correct CRC because
> > > > the makefile rule doesn't work for make with version 3.8X.[1]
> > > >
> > > > Thus we need to check make version during selecting on LTO Kconfig.
> > > > Add CONFIG_MAKE_VERSION which means MAKE_VERSION in canonical digits
> > > > for arithmetic comparisons.
> > > >
> > > > [1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
> > > > Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
> > > > ---
> > >
> > >
> > > NACK.
> > >
> > > "Let's add MAKE_VERSION >= 40200 restriction
> > > just because I cannot write correct code that
> > > works for older Make" is a horrible idea.
> > >
> > > Also, Kconfig is supposed to check the compiler
> > > (or toolchains) capability, not host tool versions.
> >
> > I feel like requiring a Make that's half a decade old for a feature
> > that also requires a toolchain released last October ago isn't
> > entirely unreasonable.
> >
> > That being said, if Masahiro prefers not to rely on the wildcard
> > function's behavior here, which is a reasonable request, we could
> > simply use the shell to test for the file's existence:
> >
> > diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> > index 34d257653fb4..c6bd62f518ff 100644
> > --- a/scripts/Makefile.build
> > +++ b/scripts/Makefile.build
> > @@ -388,7 +388,7 @@ ifeq ($(CONFIG_LTO_CLANG) $(CONFIG_MODVERSIONS),y y)
> >        cmd_update_lto_symversions =                                     \
> >         rm -f $@.symversions                                            \
> >         $(foreach n, $(filter-out FORCE,$^),                            \
> > -               $(if $(wildcard $(n).symversions),                      \
> > +               $(if $(shell test -s $(n).symversions && echo y),       \
> >                         ; cat $(n).symversions >> $@.symversions))
> >  else
> >        cmd_update_lto_symversions = echo >/dev/null
> >
> > This is not quite as efficient as using wildcard, but should work with
> > older Make versions too. Thoughts?
> >
>
>
> I've tested this in both make-4.3 and 3.81, and the CRC is correct.
> But I'm not sure if anyone would have the "arg list too long" issue.
>
> Tested-by: Lecopzer Chen <lecopzer.chen@mediatek.com>

Thank you for testing. This should produce a command identical to the
wildcard version (with newer Make versions), so that shouldn't be an
issue. If nobody objects to this approach, would you mind putting this
into a proper patch and sending it as v4?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufWcp6Hx%3D8btz6pDNcKvQ21n4BSPZ7cp1Tzhxt0%2BpQOmw%40mail.gmail.com.
