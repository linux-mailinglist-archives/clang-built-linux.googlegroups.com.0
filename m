Return-Path: <clang-built-linux+bncBAABB7GRTKDQMGQEUO2Y2FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8A43BF642
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 09:27:57 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id k6-20020a1709027606b0290104f319bb01sf1602922pll.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 00:27:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625729276; cv=pass;
        d=google.com; s=arc-20160816;
        b=oDq2Xhh/wQNLSkWVG5tEf60pl0MViVVS9p9qqp4dd1p82Zc8ll2nhLCU7w8PfEZ7vJ
         geqiK7ihwmDwJrwm9E6jM5yX9gf1WhJIyz0QY6auOu+AzG/uWtONHimOVeZlX8+gcaPe
         hHfQ9I++hQXCM3O+6Hocp9+ExwQYs54YYX3hKkkslXe5DpYSgpRN8j8xDal9M14djnQI
         Y2+8Xp9R4zkyo1Hgit+y3/IS2Ut4EQTt+Z09puz6+/ayVtAb5ktPduUY3ycGH9HTcipn
         rODAHm2xpmASGv/Ovnu2hSRpKuvBpb6EbHkIQ50haEyxWkKX258j1IuP+tb/D6RDQDH7
         0yaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=CQ5rk6Fhzc8VdKKl2DTl1A6baZdoxCUeAzZ4M4ey2qY=;
        b=hPG7rODFBAmdSdCRKHwv1vI/T0kcXYKTG/40ZAiN/1SbZPQ/78Zkz1QRy7vnRFYX8G
         IZv9iF+gjglPc3Tq85Jgim+R2WpgwmMRyLwjeYIh21cYHGtNAaAN7+XXPQhxpF8E/BkN
         Es8g1fDEvzoncJ9/N+mN0NuNW+iIBj6WVf0oGYmJikRqI5dDxopg+xLCUdfXcuN5bx8f
         uE6e+fxinNrGh/HCJCh44f2/Q1KKlxrHNRZMpn+/MBdHP77u3Jlax6vJLqLN2YcpwbrC
         9PD/VqtQysr9XR2dPvnEDPqfvOwJHPqaaskFelJqWOBQpQ1qrDLFq+pZA+7t/n8Aem5i
         QUXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=efxDp5fF;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CQ5rk6Fhzc8VdKKl2DTl1A6baZdoxCUeAzZ4M4ey2qY=;
        b=WgZ5USJQSvUOcdHky5metsWXtpW/KAD/KBvh4dSKzzXpZP6Ayny2SQmDA1kcufu4Fy
         bC5ZP6rmceF3HYRMxPJntk2WY4RzZnlnbZqrJOJaD1v55lvNbZ+hOKhy2/+Oi/HU8i3g
         9oCW22MLYV1s0vx0k/BsLLc5MQGxyqG+HpZaNipjmKO2shlYS03/5LqSXcBfl+hKJQSg
         Qe9NvC6h3vpepq6/3AQBpgqwi3yII/OLvs6tFELVbbU3HKeW/jD9U/v+dytzy4AnVrkL
         V8yzbhA+5uvu6ZeANyDYcJ0Oc7iY336sfljmvXPj+/TXSmPSu8tEpd+VcrTwwRC6TLRB
         wkFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CQ5rk6Fhzc8VdKKl2DTl1A6baZdoxCUeAzZ4M4ey2qY=;
        b=hbgE7uihhRbLAXKbiiXbsxvuGDEDfXY2wa4NTcds6BdEo4NUm3PNz6j3hUx87HAqZ6
         2aNmR4KezDN67XVKjvksGj1t6dqTZAN6h72Gq3C5G9YoiJWqM/cN5ojKA4TqYg0EVNFX
         b+DUaioqUGurCvD9fcvAbmRvUSIWmnfOiyymu+Ojib5bHVX1g5/M/s2oWo7NwE6PHh4R
         mPiyZQoUshrLiv106ZdfmFXKTQb2okZHxd0+yzQ2+xf1hlq3LyKZV45Css2WBHbo1g0Z
         qtljpe097q3llUCjH4SDGUQ67VEK4biUsA0G/q/z4PuHIfA7KXlMzQ4iwWbohwb+aYo5
         IJjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TcEff7JSSABsYYyEGaPDofx4LwghvoaMfwVATQUPXChuGGfsI
	GNdgmzOA61MWJ7etBZeBKrc=
X-Google-Smtp-Source: ABdhPJzo6d+quCtyb1wvuuljjweacWSPBSwBstBejxDHsnOBhDZ9lhN7dKtkKOOoIv8Z5khn+BUojg==
X-Received: by 2002:a62:2cce:0:b029:327:6418:abc7 with SMTP id s197-20020a622cce0000b02903276418abc7mr3057274pfs.27.1625729276480;
        Thu, 08 Jul 2021 00:27:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c10c:: with SMTP id 12ls770467pli.11.gmail; Thu, 08
 Jul 2021 00:27:56 -0700 (PDT)
X-Received: by 2002:a17:902:f68b:b029:129:c4d5:1cda with SMTP id l11-20020a170902f68bb0290129c4d51cdamr5737791plg.68.1625729275959;
        Thu, 08 Jul 2021 00:27:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625729275; cv=none;
        d=google.com; s=arc-20160816;
        b=T1vGp56ohds1DZOjMWF36O23COgFgAt8eGWNoGUipmLmklksrbv+CAM5onU4ASI2bl
         dg6UgFmLuKLffBEkFr6K4OT0PBD1rQHcNP0whyP4MzeD+65A2BQWXMA5v+QirswQ7rAU
         sVCh9DX7eX0cnPgVhPeIjzp/uROi5a+ZQ47vGx60gk+EiAPMRhX5IjPEwSCUQq3Jf3Qz
         28NYw9vqJ4lIrrS+FmNo7cwwOjnhXQsrAUo7mjhBcYA7Voc/bfTJcjXgsg0ui9PMQHD7
         +yi9ILkJcI7v0MBYuupsrGw8kPBhySjBPT13jjWWV8WuhLa5XIEt0oRk45n1tTppJInj
         27xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=90EWH7QvpbnzJDZ8mD0Nd9WqHtXgXg8SAYGJimINLx8=;
        b=G6kP9MsA6J9dNSWkMvgIw8ld0wBDryG6bAnexhPgmE45yMAGN1IjVgORxQkrhHsSwE
         LjIOQAkngmZfVXjBp9nv7JzYMCszTMvvwWgbBLPOBmjDHkCu7NvqwNOxF7yaDa/tpi8L
         uuNI7EzfinXmH2sT0mDO9zPdtdJpDkbAzNrkMqGIL6r/RS4KkaZxFCCArGUCLmN+/bPg
         bT82t/TZcK28DvuXiitcqFgOheLCUGtAS/URFnF7o0+vaC7LAUB5ZAzE83hMTeU39tDx
         DKU4eEPUgGxNNDYDTicUYpeBATPwYPurSzruk0Rl3vz9aB6zfZHOhF+WlyuDjwZjzX9G
         rbww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=efxDp5fF;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q7si229041pgf.3.2021.07.08.00.27.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Jul 2021 00:27:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AA85261CE0
	for <clang-built-linux@googlegroups.com>; Thu,  8 Jul 2021 07:27:55 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id v5so6224997wrt.3
        for <clang-built-linux@googlegroups.com>; Thu, 08 Jul 2021 00:27:55 -0700 (PDT)
X-Received: by 2002:adf:e650:: with SMTP id b16mr3155943wrn.105.1625729274326;
 Thu, 08 Jul 2021 00:27:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210707224310.1403944-1-ndesaulniers@google.com> <YOaR1ZjToP/kgNsC@infradead.org>
In-Reply-To: <YOaR1ZjToP/kgNsC@infradead.org>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 8 Jul 2021 09:27:38 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1ctLcHuLZfBJ7wXHRmidpQZ4EZdML1nqPJVGYVTgHmaw@mail.gmail.com>
Message-ID: <CAK8P3a1ctLcHuLZfBJ7wXHRmidpQZ4EZdML1nqPJVGYVTgHmaw@mail.gmail.com>
Subject: Re: [PATCH 0/2] infer CROSS_COMPILE from ARCH for LLVM=1 LLVM_IAS=1
To: Christoph Hellwig <hch@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=efxDp5fF;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Jul 8, 2021 at 7:49 AM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Wed, Jul 07, 2021 at 03:43:08PM -0700, Nick Desaulniers wrote:
> > We get constant feedback that the command line invocation of make is too
> > long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
> > target triple, or is an absolute path outside of $PATH, but it's mostly
> > redundant for a given ARCH.
> >
> > Instead, let's infer it from ARCH, and move some flag handling into a
> > new file included from the top level Makefile.
>
> Why only for LLVM?  I really hate the mess we currently have with
> ARCH and CROSS_COMPILE.  Being able to set both in .config (and maybe
> even inferring CROSS_COMPILE where possible) would make my life so
> much easier.

I agree this would be best, but solving the problem for llvm is
trivial with a 1:1
mapping between ARCH= and --target= strings. Doing the same for gcc
requires enumerating all possible target triples, and possibly deciding between
different versions, e.g. when your path contains

/usr/bin/powerpc64-linux-gnu-gcc-5.2.0
/usr/bin/powerpc64-linux-gnu-gcc -> powerpc64-linux-gnu-gcc-5.2.0
/usr/local/bin/ppc64le-linux-gcc-9
~/bin/powerpc/powerpc-linux-unknown-gcc-12.0.20210708.experimental

all of these should be able to cross-build any powerpc kernel, but
there is no obvious first choice (highest version, first in path,
ordered list of target triples, ...). I tried coming up with a heuristic
to pick a reasonable toolchain, but at some point gave up because
I failed to express that in a readable bash or Makefile syntax.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1ctLcHuLZfBJ7wXHRmidpQZ4EZdML1nqPJVGYVTgHmaw%40mail.gmail.com.
