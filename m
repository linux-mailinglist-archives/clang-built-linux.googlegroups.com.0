Return-Path: <clang-built-linux+bncBDRZHGH43YJRB3MCQTWQKGQE46V3P5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id DD804D4A48
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Oct 2019 00:25:49 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id w10sf4998750wrl.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 15:25:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570832749; cv=pass;
        d=google.com; s=arc-20160816;
        b=NZvaaHO8oPr1YTu8ec65V52IeOKbLlcstZwgQgApC5NRMaqspGWP3Zi0kGrawNbjEd
         cE8Lal4aPmZJXpzJp/SwTNpySkTxD/RlNQjgGTPZ+xfbMhxiW2PUvJyoqETD1JlrRuE3
         +fqZYBp5YosROD/dPUFPgfYtOdQygzTHNcFx01a6w5gSijOHwpWFRjlvmVTvPOaVwVkB
         app2XfqzFD/ILyUIDgDUpYwBS4+Z0qUlN+4009k0dVJbf9SB+228Fruzz9PUy+Dit0Ul
         igMDPwwCeP9HzwmY5nnHDR8CEOOvhAi+Y8l6PJ6oY/IgEFYRDs479V+8ax/LVxqqMtG1
         983A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=NRDkZ/thhqpkDuLUcwhd/PUiF7u0uHV6iyiUOyWobfE=;
        b=r2u6jWlT/a4aGIz6pUj6ml6cyENvb2ybCtah72tfBhi9DPn7C3k72P9XVZVxXhzDGc
         zXqxifIp3qdXqncb2+doOWvzvlGA5+QgnNzCSDV3KsW0v+9T+7pHLarXcReZ2csEew2j
         VGGend3oxIAIzMmYHRL9Scd58+ipfbZ4MPzNziAh88KjJeeUQn9rgKSW7R6mnBTMd/z8
         19qmkLJZQtkB3Q2vQiV9W66C2Bu8ByIotljfFbspYfIfC8FILvgCfquGkaNrBBlucvQ2
         ntAQeR84Q/SpTrCQ8r9+SNlRhWGfrloaY9rvM0v0ZjmvNCNqTJpQC5IK4XPMefHGfkbO
         ta2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VhKvdiWs;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NRDkZ/thhqpkDuLUcwhd/PUiF7u0uHV6iyiUOyWobfE=;
        b=h94//xQuBlmlL/eBNtvVJtqIeKLwr9dYaENFUw/bTQZDqF9oCtyKFQUMzuSRJWWOYR
         rJCBrt1calyTF0/uw9g5DyZl1Q75tQkmYU6/MrGFommKhg5q/m8ulMFdG6E7wAFzqHIV
         ZADKb84QOkyaVgu8LBioMcQgaDjYBUb5mmmGy65VEyFpoNsjM00VppAHd/qcOMtDYUpR
         aA/Bz4DXgsIACfRnGt/7GfmpAbGKi/IsHqELouHjYwj7sIf2dnlgSumqHwV5AAPNknFc
         iwNrjUkkCKTyeQ4QVxZH/L+ihzOVRkdi/ATrsgtGZHkRDzeNaQbymj+NatG5H5k/oqvJ
         2Dew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NRDkZ/thhqpkDuLUcwhd/PUiF7u0uHV6iyiUOyWobfE=;
        b=Pln4DY8GD+y0ffNmApRNeqxQiPPZ6qYdBGwJou/i7Vl+lL2Y+kAf2o8iGr5prgof/2
         zpdui3gWQX3fjBSPJzLSEUO8UpfQt356kl7lhAuXGeg6GfqdurpKLZwts4mI+hnquGY+
         Man6qt1ZFDJgLNCJPjUSmuafqkSJ4U3763RKAMeNFdsJkGDtscDi1fWVRkJ15M0Tip7S
         ATTQ/nBYawnLsDKOdtDWSRpesLK8Kq1QoxQboQI0Bzlw6KPJxgdJV67ytEEQQO5xWZ56
         uF/F5j68ue8KrOof2ogpf6EJqO9QPMtGu24kN7xwKNCtRRig6zcU1iVIZ03oiw4J/C6/
         1QXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NRDkZ/thhqpkDuLUcwhd/PUiF7u0uHV6iyiUOyWobfE=;
        b=jTCFt0WeKV8LduscZpHK5gcxf3wiUsYFPMRBtIPcgpanOhZiGaVIUiqGtoO9rsLAwL
         IVhpCgir4X+rHVAZK1K3E5xBBHar9nbe8PQSZRKeucvIxE2IQTCKUguGCByI2hB8h/Ru
         umyc1YzIxZSnqwvFezFXm4GEdlMKW9PylpCjsfi6hF/luwUbIrdYbiP31VZ527S6ITUH
         NBQBCkgw+kR1LdKM7zRVwtQ1nKfN5JK9bhA3h9X6FGT28bCKmQhtkOaCfRMe3EQcOqtb
         7mZ0XvOjK8wjIIMCRubt3JISCUOo8wWHVINzJp9+wWgnpJnQyvu/vFXBRAXL/ulbMjYN
         BzRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX3/YQahN2cj+ee5Re3DtfEdNEo7rKYUA6YndtOkutONJdoDakV
	9cvf2vN2RjPyMA0IukuyxTM=
X-Google-Smtp-Source: APXvYqxdIQMvrh+iAV7t17uq2U+LrH7KVKSi5xMlZtw49yX6OyGhBZPsbYXgUw66Md0WeQLW7vd2rA==
X-Received: by 2002:a5d:460a:: with SMTP id t10mr15514915wrq.13.1570832749584;
        Fri, 11 Oct 2019 15:25:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c5c4:: with SMTP id n4ls3463115wmk.3.canary-gmail; Fri,
 11 Oct 2019 15:25:48 -0700 (PDT)
X-Received: by 2002:a1c:b654:: with SMTP id g81mr4747954wmf.172.1570832748929;
        Fri, 11 Oct 2019 15:25:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570832748; cv=none;
        d=google.com; s=arc-20160816;
        b=i6vdTKYixl/4vqurwdxC9AdlAfPkt/7Yp3r5vcRbG6sGnWRCElhhPOid1U34Dcbm5Q
         njPa1kwW5z9iELtYzcj3flPAWHaqC4WBpapQ01jvCotskVS5I4MFJnnpiQhkFx3cbqIQ
         x2I01P/7VLfiJpYijCsuNhncbazbDclLF0NJT31PhnEp01cq2sioeXpj5vcTjbvzzoKL
         MsMHBGHWcWWQwV0UeSHPbiidSlcFk8hbSRR6TquN2tYoM+VkS8akS8se58mqEGcyF/Yq
         WsJj/HwhuQ9wPSiCU9ytbmCGbvJDjZ9reAVLC8bxTKlYPlOlsDvYg89EN/OE5BG0uW3w
         2Gxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QenENoNx2upQIqA236w/j+vjS4vhzOddn2duiocDbww=;
        b=B+5MpdTij9axfqPEJ8x0KgMB+6ZX5DEkvgYBVRijNiJIm+cj548QySuQn4YdUrkHij
         tTBbDTrY01D5sMerLpK3EfduYK09QAmQ1H+TedTlRK8G+dt2PDkUOze7nMWjPNtm2q3B
         9itCXVslTdbX2kTwYJcDudwii7fZZ4g8J/E4VmDaj665LDqc/O3jm5TykInA6MY+fwYH
         XLEw0EM+dTWs4Zz3RqLnhChkmudmYPn/ZKiseS0pcaq7Fwk7kkPy4P6RCG7+KXmJN2KI
         dEQTg9Sz4a97SSfEjJltEPf+T9EGXoyjNXcxAJ6bYp4xTN+kPFHY/X1uzNxKV0w7LCwE
         OgKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VhKvdiWs;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id q185si462256wme.1.2019.10.11.15.25.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 15:25:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id q12so8056316lfc.11
        for <clang-built-linux@googlegroups.com>; Fri, 11 Oct 2019 15:25:48 -0700 (PDT)
X-Received: by 2002:a19:ae05:: with SMTP id f5mr9672657lfc.165.1570832748416;
 Fri, 11 Oct 2019 15:25:48 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570292505.git.joe@perches.com> <79237afe056af8d81662f183491e3589922b8ddd.1570292505.git.joe@perches.com>
 <CANiq72kU2_s=58HqdN6VMGDAh_+G+dtns9xzoc4huSVwP+ZXUg@mail.gmail.com> <201910101334.7E09211F@keescook>
In-Reply-To: <201910101334.7E09211F@keescook>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 12 Oct 2019 00:25:37 +0200
Message-ID: <CANiq72msyinpJ0TDe=kh0Zp7jnkWBkkGdy7RYzeY_kmgVDS8=w@mail.gmail.com>
Subject: Re: [PATCH 2/4] compiler_attributes.h: Add 'fallthrough' pseudo
 keyword for switch/case use
To: Kees Cook <keescook@chromium.org>
Cc: Joe Perches <joe@perches.com>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Pavel Machek <pavel@ucw.cz>, "Gustavo A . R . Silva" <gustavo@embeddedor.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Kan Liang <kan.liang@linux.intel.com>, 
	Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Shawn Landden <shawn@git.icu>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Andrew Morton <akpm@linux-foundation.org>, David Miller <davem@davemloft.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VhKvdiWs;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Oct 10, 2019 at 10:37 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Sat, Oct 05, 2019 at 07:17:36PM +0200, Miguel Ojeda wrote:
> > Hi Joe,
> >
> > On Sat, Oct 5, 2019 at 6:46 PM Joe Perches <joe@perches.com> wrote:
> > >
> > > Reserve the pseudo keyword 'fallthrough' for the ability to convert the
> > > various case block /* fallthrough */ style comments to appear to be an
> > > actual reserved word with the same gcc case block missing fallthrough
> > > warning capability.
> > >
> > > All switch/case blocks now must end in one of:
> > >
> > >         break;
> > >         fallthrough;
> > >         goto <label>;
> > >         return [expression];
> > >         continue;
> > >
> > > fallthough is gcc's __attribute__((__fallthrough__)) which was introduced
> > > in gcc version 7..
> >
> > Nits: double period, missing "r" in fallthough.
> >
> > > fallthrough devolves to an empty "do {} while (0)" if the compiler
> > > version (any version less than gcc 7) does not support the attribute.
> >
> > Perhaps add a short note why (empty statement warnings maybe? I don't
> > remember them but it was months ago so maybe it changed).
> >
> > > Signed-off-by: Joe Perches <joe@perches.com>
> > > Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> >
> > Please add Dan's Suggested-by and copy the things I wrote in the
> > commit message when I proposed this:
> >
> >   https://github.com/ojeda/linux/commit/668f011a2706ea555987e263f609a5deba9c7fc4
>
> Perhaps just take this patch directly with Miguel's authorship into the
> series and tweak the __fallthrough to fallthrough in subject and body.

Since I was going to pick it up, I would have signed-off-by anyway, but yeah ;P

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72msyinpJ0TDe%3Dkh0Zp7jnkWBkkGdy7RYzeY_kmgVDS8%3Dw%40mail.gmail.com.
