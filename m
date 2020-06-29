Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6HA5D3QKGQEOT2D4SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E4820D08C
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 20:18:33 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id u64sf5380845ybf.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 11:18:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593454712; cv=pass;
        d=google.com; s=arc-20160816;
        b=BQRMg7DhLQcy1c5T9z302gCNxs7RLFUNx3MePmChX86dsaAkkVOCqNItxFchaHWxmJ
         U2pZPekA8FEUBow7hlRgQKml/APViP0aWxpdMwfGmSdQLallztGE0rjQgd+F2fL8f3L8
         G2S2tszu/IFBnU5RoPCpx9ebI72LE4z/afKpshPfZjOnr/iudEANdblc6TjZ9Hzbv89w
         w5k6PC1IZgguPBJsjCUDx2FQeA+0H9m7K+v541DNtKpxpY7/PaOhVQhDIUOPRg6/cQNq
         DkK8fpVeja40KkZd7Mh4vU/KBYsUt33wrcw1FwtFcNVBK584v3a3kweDAE9ll2DTIFsp
         9SiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=h9u9GyzPbQqv/N6Sz7C8fys9go+u1uw/zk8P1loyL0A=;
        b=eTRTg5wTzaHJqvuO7fY7Y+6TnQEqdb54clf0bj1X4Y1S1OLJmv0y1hdRGXSw8UvSLJ
         9p2eqXqbddWJzm+EMi/uN7IJ6HfzSf4lfVNxBGW+f4Ng772Qijx1sLXglQbdlPxsbaGh
         I5lAOkf9ivFinouu33pNCupmJcpKpEtpMVBYsSwMu8EEAXfgA9NHvBeYkaniolga06SK
         33U2haNrzgH2TQjovycNgeSyZGx9rt+WG5HJRnENExM8eHjIDCoUy7qKc2KhmUgRbM7A
         +/Oof71fobgTOskN5gwOqtOLGQShlRRnFvkPuRNsbYuJ2nUXxzQ12ydZEYvCXc2qsOzX
         bVCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TG6rKq8O;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h9u9GyzPbQqv/N6Sz7C8fys9go+u1uw/zk8P1loyL0A=;
        b=RIUJXbK9gicLhlW+Xe3XSxI2BGIGYMNiDOXnee24BayXPF0FbUoFW4bPcTEFgltkV3
         N0BvmJluK3lCgh5ERp9JH+Jb6FcJL6X2LnQFwKsEkc7DrPkTf9xjgsY5Sy3jFpy3d2VN
         cNG6SDIzKaEZq54hbBTlnZ5Qky7F5QBynQ9IpG94w3xtDzznvm9zT6bRZZtTAbWOvjRp
         0vGT+XQybHAzLq684I/tBZmpQpA417gynuk+YJRiGLGo81tO674L4EQXbbwK1rYKu0Hv
         eRaTbitGS/h67Undw21e0cRvmKUSNF2O6ccj8+ZZTgfmvkg+vVOhFw36ZOJV13BqE4kn
         Gg2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h9u9GyzPbQqv/N6Sz7C8fys9go+u1uw/zk8P1loyL0A=;
        b=kCzMKdRCdsLIYEtXhRYLv2GLZgL7uZY9xQj3lCM8ue5D/Q9fPjV3xWgA8LmX/cpT5z
         Z2YrdUzLMN/mmBzgBM4dlFnx9QX4m+uetckPQXpVaqggupYrfzPVDyCd1G21WOJC47KX
         lPO3bOwoRc1XRnCCRCLskqRbI5I479NkcevObG0C5ouweW7ntjhLG6Uxe3yRwyvNYjQY
         QVmYQk8av82EafNM7z9BuABiaGIE2ftJgZRDNONzA7fPnDUlkLuPozzvE7tibKiKzlZ4
         OgTeEIZoWHC7QbGFPQDIQvY3V4bQcXBP1p5WCeWjqNdLdu4L4ZzIykTqYbzWjmdwA6bY
         wJuQ==
X-Gm-Message-State: AOAM530Aep7ueKVdbLxCnJlYNOrJMDC+LqmZPfi9MFiu5ppTwSJZe0Yi
	BQooOx07hV/3rXoQV2Xz52Y=
X-Google-Smtp-Source: ABdhPJyRBbFoZlTUPEnXiJ7rj9us6qjXLwahfnmR/vCzSY/ylrqB9VYKHWTR2cDUORYxsfCp/c6ucA==
X-Received: by 2002:a25:3544:: with SMTP id c65mr6215380yba.440.1593454712787;
        Mon, 29 Jun 2020 11:18:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c785:: with SMTP id w127ls163290ybe.7.gmail; Mon, 29 Jun
 2020 11:18:32 -0700 (PDT)
X-Received: by 2002:a25:b885:: with SMTP id w5mr17828735ybj.226.1593454712514;
        Mon, 29 Jun 2020 11:18:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593454712; cv=none;
        d=google.com; s=arc-20160816;
        b=noLGkQc9HKhXjkeE4xpSMFDKFXGSE70Oe655plwL8VXh+Wz3rZFb/2LNOUZ2TNtspm
         TdlTq9fM8FDjmp8CrarcfP5OpSIj7oMibhPJCRVxYNlMOEpqpu3N5bRz+RIxRHXgpuRa
         6ZhxV/K/xXqoWlTTi9o8P3pPJYi9kF2EcDWKRiJaz52PTvcB2gh73G0uTBM9ENgHNL3w
         4b3en6I7WbZ/vEF/pz9jw4aB7WegY/nw2kyOsthx2c6lRu2zxf6Dy5e2k89jlB0id+98
         Xsnb6l44VFnOx9nIwXezhBdOpyfGuU4K1VrjxcvBgkIKd9mrEGLwdIFv46SeSrhcI044
         4wkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RVpg6vIouDiH3on4zq6Qkvcb4IcnV9Eg7LBox0nJvvM=;
        b=FkO9l5EFSMC+MWgUIIwt+pCRfDcewxSlqW+Iw7OyowpiMxx5umb9/uDu9aFu5bZUil
         +Dd1SIN5soGjt8+vidvXGk7jmLUt3u+7/PI38IcaZgwXOvjWXvP2ibX4CfNaq582Dt8d
         DwyFYqEkk+JLo0qhVjnCKWwVKXGVgZYJS0FK1qn1J0ZGK+mY8KS96Uut4Qo0FlLwCNeg
         /Nenp8i6V3DG+9qJlNI8gnZZtXTmLqb5iK+nP3Y4pN9yTfw2jMzX9yJc9stZXL4ythMX
         uN+d+4eNCo7Q1m8LPDg50gNceeZhOXlRAb4orvjSsdfdXjVZqycdWXDE/lutaCBTmN8j
         P7Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TG6rKq8O;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id n82si11079ybc.3.2020.06.29.11.18.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 11:18:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id u5so8245738pfn.7
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 11:18:32 -0700 (PDT)
X-Received: by 2002:a63:5644:: with SMTP id g4mr11018260pgm.381.1593454711516;
 Mon, 29 Jun 2020 11:18:31 -0700 (PDT)
MIME-Version: 1.0
References: <202006210249.QHly8bQZ%lkp@intel.com> <CA+h21hpABfDvthiwq_JwWGpqZ68VJxu5TOBVbw_Gaxpq8j+XQg@mail.gmail.com>
 <CAKwvOdnAKR_CtOccZohR_r1kzKKVuvo8LbpLi0s3ek+3u+c_zw@mail.gmail.com> <CA+h21hokCCF52O1wxkg0gLqS9ZcGtB0xMBm07_--i56=anJ=Rg@mail.gmail.com>
In-Reply-To: <CA+h21hokCCF52O1wxkg0gLqS9ZcGtB0xMBm07_--i56=anJ=Rg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Jun 2020 11:18:20 -0700
Message-ID: <CAKwvOdkcPWT4krC5FuCpiXaoY+GiTeUa=CiamFCk5tPJOz4Cjw@mail.gmail.com>
Subject: Re: drivers/gpu/drm/panel/panel-samsung-ld9040.c:240:12: warning:
 stack frame size of 8312 bytes in function 'ld9040_prepare'
To: Vladimir Oltean <olteanv@gmail.com>
Cc: kernel test robot <lkp@intel.com>, Thierry Reding <thierry.reding@gmail.com>, 
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	dri-devel <dri-devel@lists.freedesktop.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, lkml <linux-kernel@vger.kernel.org>, 
	Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TG6rKq8O;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Sat, Jun 27, 2020 at 12:43 PM Vladimir Oltean <olteanv@gmail.com> wrote:
>
> Hi Nick,
>
> On Mon, 22 Jun 2020 at 19:50, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
>
> > > I really don't get what's the problem here. The listing of
> > > ld9040_prepare at the given commit and with the given .config is:
> >
> > I wrote a tool to help debug these.
> > https://github.com/ClangBuiltLinux/frame-larger-than
> > If you fetch the randconfig and rebuild with debug info, that tool
> > will help show you which variables are used in which stack frames and
> > what their sizes are.  Also note that strange things get dug up from
> > randconfigs.
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
>
> I ran your tool and it basically told me that all 11 calls to

Cool? No bugs running it? (I still need to extend support for many
architectures)

> ld9040_dcs_write from within ld9040_init are inlined by the compiler.
> Each of these ld9040_dcs_write functions calls ld9040_spi_write_word
> twice, so 22 inline calls to that. Now, sizeof(struct
> spi_transfer)=136 and sizeof(struct spi_message)=104, so, no wonder we
> run out of stack pretty quickly.

I'd expect these to have distinct lifetimes resulting in stack slot
reuse.  When the compiler inlines functions, it introduces a lexical
scope. You can imagine it inlining the body, but within a new `{}`
delineated compound statement.  Then the compiler knows that the
variables local to those scopes can't outlive each other, and can
reuse their stack slots in the containing function.  Escape analysis
comes into play, too, but I'm not sure that's an issue here.

>
> But my question is: what's wrong with the code, if anything at all?

The general case we try to find+fix with this warning is excessively
large stack allocations that probably should be heap allocated,
percpu, or static.  Also, the `noinline_for_stack` function annotation
is used frequently for this.

One known case of issues are the sanitizers, which can generally
prevent the reuse of stack slots.  Were any of those set in this
config, since this was a randconfig?  I'd check this first, then
consider if `noinline_for_stack` is appropriate on any of the related
functions.

> Why does the compiler try to inline it, and then complain that it's
> using too much stack

The flag -Wframe-larger-than= is a warning on semantics, not really an
optimization flag controlling the maximum stack depth of the function
being inlined into.

> when basically nobody appears to have asked it to
> inline it?

That's not really how inlining works.  If you don't specify compiler
attributes, then the compiler can decide to inline or not at its
discretion.  The `inline` keyword or its absence doesn't really affect
this.  __attribute__((always_inline)) and __attribute__((noinline))
can give you more control, but there are hyper obscure edge cases
where even those don't work as advertised.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkcPWT4krC5FuCpiXaoY%2BGiTeUa%3DCiamFCk5tPJOz4Cjw%40mail.gmail.com.
