Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBOFDT3VQKGQE3QUNN3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 84989A1413
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 10:50:00 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id r25sf1686683edp.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 01:50:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567068600; cv=pass;
        d=google.com; s=arc-20160816;
        b=d7ZxAWVRknQKpeJT+OujTfwHmjGh641WIkUX688MIGCG/P6oShtVpdqFC5icXqw1Dy
         afySYAgTk2YQsf662sSPn9LHq4C2WauP5M2otyrb+kEsJnbK3vAoBSapzbbXfCApqrbn
         84cm6U/G7mNBxzUu6ATGnlppA8PxwK0xBOW7vHT/ptZ3LR+aQ4pXNo24IhO9OHaq57hY
         cJ5bR3+rviDStiN1SnIWEADk6PfftcuBO0gCZTbYli7wruFoO9hQ1luTbmUEkQZQSRnC
         JPucKcQyeqDbmI1DZow+2pPQkAU8IYWqdelyO+AgNRXVVrMLg1S3qdtGNw9k1wHLhsO5
         EdYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=aScLvbBfOhlTQxdfrTvCpUQzg6ryumwC2NPnCBJxzCY=;
        b=YR3uU84CF2OSHnZ1y7BCtbGEpoM7Vj00rxvmV1sZckpcautuNvYYBO4bsNGXzvK2ER
         b1pSeS/RGdIRTy8d7bxiEH/3EB2cQOsUqyAyCsWSOvCu2+A85zCM3P7f7CCGOH69t4kj
         Mgkf1nwmUtBSTl1UEbqf4bC1tLoYg1tz9TY5ahajQNIyD18qnYkovSlDWzoF0LDbDFK2
         EpJcJWpym0r0l2Qk3BlJjxhES+X9B153kS8Ct8AbIOOwVNcxyd9+ktABFGh9FcrjZ246
         rP/hD6O3g3Pm13Jqnq9qLCmvhqDq4RYiJ0zxmEWiLPcrk1CPBuupojli71EP7xCUI93y
         t6tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aFP8yM62;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aScLvbBfOhlTQxdfrTvCpUQzg6ryumwC2NPnCBJxzCY=;
        b=jIznPi0zp/djFY+Ezqu+OeVw6XoE4crKeDX760pibjOa3zrF8YItaMEXe7KcqMwUYv
         RlApNDYVFv2486tA9/9IktAumpfGoey0AawYnffeT3SCYf7rXmBeP7InWUCSIGYlOtwS
         ijB3y1WcAYw9REuYdV+J/Xzg0x7ch5vQlNoTQ7Ngcp14T0gKGzsMSK6VkCeaDVZq9S6o
         BMLJE0OVU8eMm9+jSE1ODIFPHSRV7CTcc/qKzdBQygeKaTxjkVyQl4QnTVePONcTlpLR
         FcpQGTmIZ1Q8TosiMP5/iTipsgh+Lqe015GSNVP9WXX66QZuCoPZBg5OUJuh/OJ4P+n4
         jD6w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aScLvbBfOhlTQxdfrTvCpUQzg6ryumwC2NPnCBJxzCY=;
        b=L6GFzKf9a22jEQHlVWBMyq7oSVEu1kFbG0CuLj0VFgwli1yDgY38rv04jnsnmEZJV6
         mOxy1odDtPO5nafFbhIemMaxBruZZG4IMys/Po4GTZa+fytf4xCxf2t/pXtZpVBqVL+P
         RcFVpwJyjdNzc8hLj9wQf+LdHqYoNMeBJuu5hDirggNs8Utng3JiXJ74EIAoxv2hbBAh
         GWeKDdIa+hXO9g5sC25AY1FQyN/EGoVjAmcXaFNU+L+TWUUYLoj6bV4uuBt16m3ik9UZ
         dN8OE4FVQCUsv8eo7zfCapcQwBc6KJ+AOVQAwrKkVV5PuK0MdKb+rT31Z+bPlTRP/aca
         TO+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aScLvbBfOhlTQxdfrTvCpUQzg6ryumwC2NPnCBJxzCY=;
        b=ZujCf9cQXl/skYtIMNfd6GhiAieC+4jQUVF9iDZUxRCjJEvCk+k1GW7dAZ43j31iau
         WIqw5PPmKFIZqOogG+Olw1xOzAqFWil/ys/4hDSeTAQGGqKrZNRBh0UVU83QGZcR5O1Z
         X2gI1j8KUz8/k7sVWoDKr4EjlONQJxggEnT1tzZ3Z7etKcTKc/FVKP+wBbtLXC9lLsr+
         +jKcRGDw0i7SOPiBkYmxOd2cz4dClKrUNkkSXuZdK4WFrLjJ2Od8hT9kflqiB6Vu32oB
         EVbS+yK24hfhxVZ+72PGiKW4pFSGCo0Qp2enQhgOct0D6AcHk0Q5MNGY/9E7rharnmxD
         Qdng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVrC6738g+AQ+1GUHyKXkuIqZOaoTz1UwhvK9rnpaO9KgsxOZtg
	jzbLnHgkbgpe0BhhBRqs7Io=
X-Google-Smtp-Source: APXvYqzoFZX49TWTojkuZln1k9zN6KXVCQPZr/avHhm7mGFe6fJVP0r8v8rudQxVAVbNmcM5uS/j8A==
X-Received: by 2002:aa7:ca02:: with SMTP id y2mr8461914eds.205.1567068600187;
        Thu, 29 Aug 2019 01:50:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:89f6:: with SMTP id h51ls568531edh.15.gmail; Thu, 29 Aug
 2019 01:49:59 -0700 (PDT)
X-Received: by 2002:a50:e611:: with SMTP id y17mr8403710edm.66.1567068599627;
        Thu, 29 Aug 2019 01:49:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567068599; cv=none;
        d=google.com; s=arc-20160816;
        b=xS2WTVtAU8FNE90KlAU1pLvu2XTM5pEsu+x9B/sDnbBh2hM5xML7czK5dk/tFzVbvq
         fcanHmv0XU/2r+fTzXYNB5d3LGUe6fFL7/cygKPwZnn7VWa4GP0O5XuPUj0PKEUHZgOm
         C5m5Zj0lJcqwWTT4HXVMn0wXb1CC8uAT7PIUzjuUW7KyEN2TO5AQ3e6DvCqmiCZpYKjm
         kYEbj0aHUpVBJJFcZrcLjSQd4xNsyXQkqxrhLY1a7d85lthc/fKE3HexJWOOMeJeGIOR
         pQ/Xb66hXmlvGPZv1J6QgVjfKkZ3qkqDwUXFGMniTBIYUx3kGHeKRSff9FtPiGX+V6eb
         HAIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:dkim-signature;
        bh=jGqsZBQK7NqMe1GSC7sANXtWJk7x0h+B0OmREYTw6G0=;
        b=FiFnWu8uw9UVP4zA32f3E8u4fKnUJ1A3S92EwcgluVoOOfafsvFaZgakNRdjtPiTMv
         /bdsSKPA4ME13uAMUhBC4yzsK04EY9hRVin32qg0BE7ztaSP6UWZ7SxjM71d3E9HCbr0
         PGcpeTLZMtn94QI53ZLBL6QfT6ecxJ2vVrghsRJMEqKsk/gGZ/CsECgcOmqknTqHhj45
         ZRFx/xfiDAwLUnJsI72iA0nQVGLI2IJs0ju+Hd4gNzFZbFNKUsfm2sxFJae0VnZECCTk
         ArR9AdrmdhAPHQd2mK4rXEiYKojIUcmPd3t93pP3jlUnMdzrWIWxIgECwAdNk0NWUpdb
         s6NQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aFP8yM62;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id m3si115730edq.0.2019.08.29.01.49.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 01:49:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id r17so3625489wme.0
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 01:49:59 -0700 (PDT)
X-Received: by 2002:a7b:cf21:: with SMTP id m1mr10608663wmg.150.1567068599232;
 Thu, 29 Aug 2019 01:49:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190828055425.24765-1-yamada.masahiro@socionext.com> <CAKwvOdmFjOMPW3_V+2ZnYFUyjWWuW2919cCk=ePn30f2szsi2g@mail.gmail.com>
In-Reply-To: <CAKwvOdmFjOMPW3_V+2ZnYFUyjWWuW2919cCk=ePn30f2szsi2g@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 29 Aug 2019 10:49:47 +0200
Message-ID: <CA+icZUWv0vAOSq_4BfbqrTdUSnN_D4ETVfpSHiATokCsY2R9pg@mail.gmail.com>
Subject: Re: [PATCH 1/2] kbuild: refactor scripts/Makefile.extrawarn
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=aFP8yM62;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 29, 2019 at 12:38 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Tue, Aug 27, 2019 at 10:54 PM Masahiro Yamada
> <yamada.masahiro@socionext.com> wrote:
> >
> > Instead of the warning-[123] magic, let's accumulate compiler options
> > to KBUILD_CFLAGS directly as the top Makefile does. I think this makes
> > easier to understand what is going on in this file.
> >
> > This commit slightly changes the behavior, I think all of which are OK.
> >
> > [1] Currently, cc-option calls are needlessly evaluated. For example,
> >       warning-3 +=3D $(call cc-option, -Wpacked-bitfield-compat)
> >     needs evaluating only when W=3D3, but it is actually evaluated for
> >     W=3D1, W=3D2 as well. With this commit, only relevant cc-option cal=
ls
> >     will be evaluated. This is a slight optimization.
> >
> > [2] Currently, unsupported level like W=3D4 is checked by:
> >       $(error W=3D$(KBUILD_ENABLE_EXTRA_GCC_CHECKS) is unknown)
> >     This will no longer be checked, but I do not think it is a big
> >     deal.
> >
> > [3] Currently, 4 Clang warnings (Winitializer-overrides, Wformat,
> >     Wsign-compare, Wformat-zero-length) are shown by any of W=3D1, W=3D=
2,
> >     and W=3D3. With this commit, they will be warned only by W=3D1. I
> >     think this is a more correct behavior since each warning belongs
> >     to only one warning level.
> >
> > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > ---
> >
> >  scripts/Makefile.extrawarn | 104 +++++++++++++++++++------------------
> >  1 file changed, 53 insertions(+), 51 deletions(-)
> >
> > diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> > index a74ce2e3c33e..1fa53968e292 100644
> > --- a/scripts/Makefile.extrawarn
> > +++ b/scripts/Makefile.extrawarn
> > @@ -1,14 +1,6 @@
> >  # SPDX-License-Identifier: GPL-2.0
> >  # =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
> > -#
> >  # make W=3D... settings
> > -#
> > -# W=3D1 - warnings that may be relevant and does not occur too often
> > -# W=3D2 - warnings that occur quite often but may still be relevant
> > -# W=3D3 - the more obscure warnings, can most likely be ignored
> > -#
> > -# $(call cc-option, -W...) handles gcc -W.. options which
> > -# are not supported by all versions of the compiler
> >  # =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
> >
> >  KBUILD_CFLAGS +=3D $(call cc-disable-warning, packed-not-aligned)
> > @@ -17,58 +9,68 @@ ifeq ("$(origin W)", "command line")
> >    export KBUILD_ENABLE_EXTRA_GCC_CHECKS :=3D $(W)
> >  endif
> >
> > -ifdef KBUILD_ENABLE_EXTRA_GCC_CHECKS
> > -warning-  :=3D $(empty)
> > +#
> > +# W=3D1 - warnings that may be relevant and does not occur too often
> > +#
> > +ifneq ($(findstring 1, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
> >
> > -warning-1 :=3D -Wextra -Wunused -Wno-unused-parameter
> > -warning-1 +=3D -Wmissing-declarations
> > -warning-1 +=3D -Wmissing-format-attribute
> > -warning-1 +=3D -Wmissing-prototypes
> > -warning-1 +=3D -Wold-style-definition
> > -warning-1 +=3D -Wmissing-include-dirs
> > -warning-1 +=3D $(call cc-option, -Wunused-but-set-variable)
> > -warning-1 +=3D $(call cc-option, -Wunused-const-variable)
> > -warning-1 +=3D $(call cc-option, -Wpacked-not-aligned)
> > -warning-1 +=3D $(call cc-option, -Wstringop-truncation)
> > +KBUILD_CFLAGS +=3D -Wextra -Wunused -Wno-unused-parameter
> > +KBUILD_CFLAGS +=3D -Wmissing-declarations
> > +KBUILD_CFLAGS +=3D -Wmissing-format-attribute
> > +KBUILD_CFLAGS +=3D -Wmissing-prototypes
> > +KBUILD_CFLAGS +=3D -Wold-style-definition
> > +KBUILD_CFLAGS +=3D -Wmissing-include-dirs
> > +KBUILD_CFLAGS +=3D $(call cc-option, -Wunused-but-set-variable)
> > +KBUILD_CFLAGS +=3D $(call cc-option, -Wunused-const-variable)
> > +KBUILD_CFLAGS +=3D $(call cc-option, -Wpacked-not-aligned)
> > +KBUILD_CFLAGS +=3D $(call cc-option, -Wstringop-truncation)
> >  # The following turn off the warnings enabled by -Wextra
> > -warning-1 +=3D -Wno-missing-field-initializers
> > -warning-1 +=3D -Wno-sign-compare
> > -
> > -warning-2 +=3D -Wcast-align
> > -warning-2 +=3D -Wdisabled-optimization
> > -warning-2 +=3D -Wnested-externs
> > -warning-2 +=3D -Wshadow
> > -warning-2 +=3D $(call cc-option, -Wlogical-op)
> > -warning-2 +=3D -Wmissing-field-initializers
> > -warning-2 +=3D -Wsign-compare
> > -warning-2 +=3D $(call cc-option, -Wmaybe-uninitialized)
> > -warning-2 +=3D $(call cc-option, -Wunused-macros)
> > -
> > -warning-3 :=3D -Wbad-function-cast
> > -warning-3 +=3D -Wcast-qual
> > -warning-3 +=3D -Wconversion
> > -warning-3 +=3D -Wpacked
> > -warning-3 +=3D -Wpadded
> > -warning-3 +=3D -Wpointer-arith
> > -warning-3 +=3D -Wredundant-decls
> > -warning-3 +=3D -Wswitch-default
> > -warning-3 +=3D $(call cc-option, -Wpacked-bitfield-compat)
> > -
> > -warning :=3D $(warning-$(findstring 1, $(KBUILD_ENABLE_EXTRA_GCC_CHECK=
S)))
> > -warning +=3D $(warning-$(findstring 2, $(KBUILD_ENABLE_EXTRA_GCC_CHECK=
S)))
> > -warning +=3D $(warning-$(findstring 3, $(KBUILD_ENABLE_EXTRA_GCC_CHECK=
S)))
> > -
> > -ifeq ("$(strip $(warning))","")
> > -        $(error W=3D$(KBUILD_ENABLE_EXTRA_GCC_CHECKS) is unknown)
> > -endif
> > +KBUILD_CFLAGS +=3D -Wno-missing-field-initializers
> > +KBUILD_CFLAGS +=3D -Wno-sign-compare
> >
> > -KBUILD_CFLAGS +=3D $(warning)
> >  else
> >
> > +# W=3D1 also stops suppressing some warnings
> > +
> >  ifdef CONFIG_CC_IS_CLANG
> >  KBUILD_CFLAGS +=3D -Wno-initializer-overrides
> >  KBUILD_CFLAGS +=3D -Wno-format
> >  KBUILD_CFLAGS +=3D -Wno-sign-compare
> >  KBUILD_CFLAGS +=3D -Wno-format-zero-length
> >  endif
>
> I find this part of the patch exceedingly confusing, and I think it
> mistakenly changes the behavior of W=3D2, W=3D3, and W=3D4.  If W !=3D 1 =
&& CC
> =3D=3D clang, then disable some flags?  What?  So W=3D2,3,4 those are
> disabled, but at W=3D1 are not?  Didn't the previous version set these
> unless any W=3D was set?
>
> > +
> > +endif
> > +
> > +#
> > +# W=3D2 - warnings that occur quite often but may still be relevant
> > +#
> > +ifneq ($(findstring 2, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
> > +
> > +KBUILD_CFLAGS +=3D -Wcast-align
> > +KBUILD_CFLAGS +=3D -Wdisabled-optimization
> > +KBUILD_CFLAGS +=3D -Wnested-externs
> > +KBUILD_CFLAGS +=3D -Wshadow
> > +KBUILD_CFLAGS +=3D $(call cc-option, -Wlogical-op)
> > +KBUILD_CFLAGS +=3D -Wmissing-field-initializers
> > +KBUILD_CFLAGS +=3D -Wsign-compare
> > +KBUILD_CFLAGS +=3D $(call cc-option, -Wmaybe-uninitialized)
> > +KBUILD_CFLAGS +=3D $(call cc-option, -Wunused-macros)
> > +
> > +endif
> > +
> > +#
> > +# W=3D3 - the more obscure warnings, can most likely be ignored
> > +#
> > +ifneq ($(findstring 3, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
> > +
> > +KBUILD_CFLAGS +=3D -Wbad-function-cast
> > +KBUILD_CFLAGS +=3D -Wcast-qual
> > +KBUILD_CFLAGS +=3D -Wconversion
> > +KBUILD_CFLAGS +=3D -Wpacked
> > +KBUILD_CFLAGS +=3D -Wpadded
> > +KBUILD_CFLAGS +=3D -Wpointer-arith
> > +KBUILD_CFLAGS +=3D -Wredundant-decls
> > +KBUILD_CFLAGS +=3D -Wswitch-default
> > +KBUILD_CFLAGS +=3D $(call cc-option, -Wpacked-bitfield-compat)
> > +
> >  endif
> > --
> > 2.17.1
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers

Just a quick test...

...with clang-9 (built with tc-build from llvm-project.git#release/9.x)

$ mycompiler --version
ClangBuiltLinux clang version 9.0.0
(git://github.com/llvm/llvm-project
e82a53603ae3fed2215a44b5ac603db00a780c02) (based on LLVM 9.0.0)
Target: x86_64-unknown-linux-gnu
Thread model: posix
InstalledDir: /home/sdi/src/llvm-toolchain/install/bin

$ mylinker --version
LLD 9.0.0 (git://github.com/llvm/llvm-project
e82a53603ae3fed2215a44b5ac603db00a780c02) (compatible with GNU
linkers)

With each run (changing W=3D...), I stopped my build-script manually,
that's why the numbers differ.

[ NO W-N ]

sdi@iniza:~/src/linux-kernel$ for i in Wno-initializer-overrides
Wno-format Wno-sign-compare Wno-format-zero-length ; do echo [ $i ] ;
grep $i build-log_5.3.0-rc6-2-amd64-cbl-asmgoto.txt_NO-W-N | wc -l ;
done
[ Wno-initializer-overrides ]
178
[ Wno-format ]
178
[ Wno-sign-compare ]
178
[ Wno-format-zero-length ]
178

[ W=3D1 ]

sdi@iniza:~/src/linux-kernel$ for i in Wno-initializer-overrides
Wno-format Wno-sign-compare Wno-format-zero-length ; do echo [ $i ] ;
grep $i build-log_5.3.0-rc6-2-amd64-cbl-asmgoto.txt_W-1 | wc -l ; done
[ Wno-initializer-overrides ]
0
[ Wno-format ]
169
[ Wno-sign-compare ]
169
[ Wno-format-zero-length ]
0

[ W=3D2 ]

sdi@iniza:~/src/linux-kernel$ for i in Wno-initializer-overrides
Wno-format Wno-sign-compare Wno-format-zero-length ; do echo [ $i ] ;
grep $i build-log_5.3.0-rc6-2-amd64-cbl-asmgoto.txt_W-2 | wc -l ; done
[ Wno-initializer-overrides ]
129
[ Wno-format ]
129
[ Wno-sign-compare ]
129
[ Wno-format-zero-length ]
129

[ W=3D3 ]

sdi@iniza:~/src/linux-kernel$ for i in Wno-initializer-overrides
Wno-format Wno-sign-compare Wno-format-zero-length ; do echo [ $i ] ;
grep $i build-log_5.3.0-rc6-2-amd64-cbl-asmgoto.txt_W-3 | wc -l ; done
[ Wno-initializer-overrides ]
114
[ Wno-format ]
114
[ Wno-sign-compare ]
114
[ Wno-format-zero-length ]
114

[ W=3D4 ]

sdi@iniza:~/src/linux-kernel$ for i in Wno-initializer-overrides
Wno-format Wno-sign-compare Wno-format-zero-length ; do echo [ $i ] ;
grep $i build-log_5.3.0-rc6-2-amd64-cbl-asmgoto.txt_W-4 | wc -l ; done
[ Wno-initializer-overrides ]
495
[ Wno-format ]
495
[ Wno-sign-compare ]
495
[ Wno-format-zero-length ]
495

W=3D1 is not passing -Wno-initializer-overrides and -Wno-format-zero-length=
.
Unsure if other KBUILD_CFLAGS  in W=3D1 disables them.

So, if it is desired to pass the CLANG extrawarn compiler-options to
all W=3D... then I ask myself why the CLANG block is in the W=3D1 block
only?
So if CLANG extrawarn options are independent of any W=3D... make-option
then I prefer to put it in a seperate block with an appropriate
comment.

According to the commit message W=3D4 is unsupported, but I can do a
'make V=3D1 W=3D4'.
If I pass an unsupported value to W=3D... then I expect an warning or
info or exit or whatever.

My =E2=82=AC0,02.

- Sedat -

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUWv0vAOSq_4BfbqrTdUSnN_D4ETVfpSHiATokCsY2R9pg%40m=
ail.gmail.com.
