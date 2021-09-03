Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBZW5YWEQMGQEYMXYHHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5393FF867
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Sep 2021 02:40:07 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id i186-20020a6722c30000b02902bc73413510sf1449976vsi.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Sep 2021 17:40:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630629606; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rtr5vbmUptswlxUBEJ2FjHkw15q/U2kX2f87+vh1QSXzNc+MTQu4R7Vs08cMRjEsKB
         VkMopKATEpfkbavj41wkd2GudltVkakagtzG9P3QBdrejRJJcH+OnGTDY9CY4RPJZdi+
         QEOwonawbzStwBVH7scQVW/8hUAYhwbQ5akrs1aQtO8IJu9QPukHSt3CI1cfJPQzX9H9
         x5YpSGLDrGaPYBAooxlRK/qU52ldsLM6uux4dc0YWc7nhwYFGhICnun0Zn//9jr7tUNH
         V0iDOpq70RYXFiakGOM7KaOXN6x9LO4gbHnJhE1DwV6pl3nzZcoZOJoMEjykcBrizUQD
         Wg7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=p4oiravwPUYGipuH1L7ZZqzgy/126n1JVWeNTAeI6u4=;
        b=sDRTGRkWY69cNlHsWTw+98CezJStBB9BU4sE2oGnis7tS5F2u6s8Sx6JU7FS9CyBdQ
         dIAyBjccBTE1soD+PM46U1T25zLK6EQQydhC9agOWw1sOToTk5vn8JQtI+kyhbQGuoP5
         7nzzvlFmUOdbOi95jUwWG66Rl4YbMm9sFT0Nk4R5oa5Wj4cjOX/47JG7yTHbj0c85VEA
         6/Yed9W9zx5fxeljHVb9i5abPJVhd5rLz+BRK90V3WVCYXS2jQVBkQoUh7yeDAs5FZ5f
         2bIl1IcsdbJqGJ9vyL6lznMDotCVenu/8ipJspo24HagNUJLJs6F3P88gtyJZz9P0r5W
         HMeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=fmpUYj73;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p4oiravwPUYGipuH1L7ZZqzgy/126n1JVWeNTAeI6u4=;
        b=I9Bjm4ZBZB06BXutSy0UaOX5llJ5S824YZ1dH12K21lPC/HQTlfnO1/hnOAjru0dvG
         O4hTv2KW5kH5zYAIudYK/6d3jQhgyk7A8E5gxP8vwJFZis+b5VOReWYJQO1Hz+Lmn5eF
         afJMQHt4t8eUG5li3KbI3uQeNvXNEoZFzT9jgHvNDjl6gUvdxiJHNk9wLWroVXe3j2uQ
         qd/pvYmOGB7vK1WAI36RIyXe3LdIS0YkSulBawlbdewR3pzGWxgcRywLeUA5zHTipXiM
         AcEZKox4FZsc+72zc/5FL/T7gtHRHx27vl4i10VXdPS/5F42zPe1dmjfrhabpderHRO7
         u3ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p4oiravwPUYGipuH1L7ZZqzgy/126n1JVWeNTAeI6u4=;
        b=XQdqXEJb03AKPBYuMyU9457uL0knh6nOIoHaWBIFoH9+ZNbggc1LvYVouhmA15p3H3
         xY4X40IRgkNL5EYlUcemB0Z77Gh/UqO85I6fp/Dzmswo2Qt7kHo8pHZ8wxM0vpR98lu9
         Pu2m0IkyTxHbHRhgOykC1gdsnygZ8FLT5z3RBtTQJ01Y/N6N/3yALlTY8H2iBnDX9Kk3
         bkLv4pWn0Gpenrp6vKMIthcYEnti++tc0rIGOyg5by/59lM19Wx/HIj0/eQE+TyelpXL
         qVVY406LDCy9W0tHROSltBH9XSizAj6jd5cjk1PMNVpaUjPFd8HnTPv42iJ3F8RZbA9U
         dD+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531lSM11zcL6KwOBHlWT6SPOWUxBYwkUz/dMclmUnpKI+QU6O2Ei
	fv1BS7A/8O8x1x3nkCeCoVY=
X-Google-Smtp-Source: ABdhPJz9vq0IQ0bMynWcGF3pRuxoI41DOuocPTEXMLZodJIipES0m5Tl6szskxQTgQY4eCcOMYciTw==
X-Received: by 2002:a1f:5e58:: with SMTP id s85mr769748vkb.3.1630629606711;
        Thu, 02 Sep 2021 17:40:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2ebc:: with SMTP id y28ls440456uay.11.gmail; Thu, 02 Sep
 2021 17:40:06 -0700 (PDT)
X-Received: by 2002:ab0:3a3:: with SMTP id 32mr699934uau.131.1630629606128;
        Thu, 02 Sep 2021 17:40:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630629606; cv=none;
        d=google.com; s=arc-20160816;
        b=gTJqpj3KuRVUUlj1fIugoBGR1+kp4YY6ObWA1aHcGgF7L5tUzBBqxrMJugDuJnKN7G
         8T0HL8U0ZIBFw9QlDy3hXrSUw9gVPcv8zFgrOmH9l/6S1K7ImL7zjKUaPUCOxhsDDcwl
         N1klPg67Q9okiH7ogPIXNYazgy9akKZDH72iDEHdXYJy1POL8THPawnrQTuMl9AY3nYx
         tocSUtio4/+fDdH5eW0Lk/FyQ0FDsvRgGlFtyI+HgIQaV4lPIHHX4gax2D53FTb7P/Ff
         xFtsiIRintkiUv41kRiNeTiEW0AA8lDzU8x17Ubx842fHADHICIUr3z5C/P2xqBtJY6W
         UM4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=1Y6XFgB9/D7mjEiysoImroDcHiCWsyF8Liocy0ZJmiw=;
        b=tQ4bdFfo/SBlKKK0+k4AP3/JtYiR8nW1iYOQk9zylzpF/L3Mb6djSLO9PuXY6+vMkf
         ln9KKh/QNraWC6bIS4Y5s0OCfpHdMXqFOw2XHyc4lLJqePqeMFF7p8UUsXK1Mj7nU3S7
         56d/gfxhMb/iEpBEdhyVo2itJ/cHqyAYsO4uMaTWppkUvX9ZbmjW8iVr8sbgAHpZIZmJ
         Kpb2hegk58nmS+B/VBG2jCiHLxskMElvdqHcPedwlPt6RE+b/U9bLOBwptLN3JRjcvv/
         VZdLSyTivi7RtDYrb6B+CT7Rfg++DM/Gfzos1TCEJ3wbL7+QIYwmARO0UrKMT+aqurhX
         2IGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=fmpUYj73;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id az31si225920uab.0.2021.09.02.17.40.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Sep 2021 17:40:06 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 1830dpiE000591
	for <clang-built-linux@googlegroups.com>; Fri, 3 Sep 2021 09:39:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 1830dpiE000591
X-Nifty-SrcIP: [209.85.215.174]
Received: by mail-pg1-f174.google.com with SMTP id r2so3808895pgl.10
        for <clang-built-linux@googlegroups.com>; Thu, 02 Sep 2021 17:39:51 -0700 (PDT)
X-Received: by 2002:a63:d40a:: with SMTP id a10mr1047510pgh.7.1630629590936;
 Thu, 02 Sep 2021 17:39:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210831074004.3195284-1-masahiroy@kernel.org>
 <20210831074004.3195284-7-masahiroy@kernel.org> <202108311034.D4B1410@keescook>
In-Reply-To: <202108311034.D4B1410@keescook>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 3 Sep 2021 09:39:14 +0900
X-Gmail-Original-Message-ID: <CAK7LNATkducKiw8==u4477JGfyb5vnvbp2gM2s9ndZ_8owXfeg@mail.gmail.com>
Message-ID: <CAK7LNATkducKiw8==u4477JGfyb5vnvbp2gM2s9ndZ_8owXfeg@mail.gmail.com>
Subject: Re: [PATCH v2 06/13] kbuild: reuse $(cmd_objtool) for cmd_cc_lto_link_modules
To: Kees Cook <keescook@chromium.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=fmpUYj73;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Sep 1, 2021 at 2:35 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Tue, Aug 31, 2021 at 04:39:57PM +0900, Masahiro Yamada wrote:
> > For CONFIG_LTO_CLANG=y, the objtool processing is not possible at the
> > compilation, hence postponed by the link time.
> >
> > Reuse $(cmd_objtool) for CONFIG_LTO_CLANG=y by defining objtool-enabled
> > properly.
> >
> > For CONFIG_LTO_CLANG=y:
> >
> >   objtool-enabled is off for %.o compilation
> >   objtool-enabled is on  for %.lto link
> >
> > For CONFIG_LTO_CLANG=n:
> >
> >   objtool-enabled is on for %.o compilation
> >       (but, it depends on OBJECT_FILE_NON_STANDARD)
> >
> > Set part-of-module := y for %.lto.o to avoid repeating --module.
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> >  scripts/Makefile.build | 28 +++++++++++++++++-----------
> >  1 file changed, 17 insertions(+), 11 deletions(-)
> >
> > diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> > index 21b55f37a23f..afc906cd7256 100644
> > --- a/scripts/Makefile.build
> > +++ b/scripts/Makefile.build
> > @@ -236,20 +236,26 @@ objtool_args =                                                          \
> >       $(if $(CONFIG_X86_SMAP), --uaccess)                             \
> >       $(if $(CONFIG_FTRACE_MCOUNT_USE_OBJTOOL), --mcount)
> >
> > -ifndef CONFIG_LTO_CLANG
> > +cmd_objtool = $(if $(objtool-enabled), ; $(objtool) $(objtool_args) $@)
> > +cmd_gen_objtooldep = $(if $(objtool-enabled), { echo ; echo '$@: $$(wildcard $(objtool))' ; } >> $(dot-target).cmd)
> > +
> > +endif # CONFIG_STACK_VALIDATION
> > +
> > +ifdef CONFIG_LTO_CLANG
> > +
> > +# Skip objtool for LLVM bitcode
> > +$(obj)/%o: objtool-enabled :=
>
> Is this intentionally "%o" instead of "%.o"?

Good catch.

No, it is not intentional.

I will fix "%o" to "%.o"


> (And it later overridden by the "%.lto.o" rule?

No, opposite.

While building %.lto.o, we want to set objtool-enabled.
But, we want to cancel it for %.o




-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATkducKiw8%3D%3Du4477JGfyb5vnvbp2gM2s9ndZ_8owXfeg%40mail.gmail.com.
