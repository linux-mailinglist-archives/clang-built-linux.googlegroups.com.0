Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAOUXSDQMGQEYNOAYLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F94D3C8A9C
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 20:16:34 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id e15-20020a2ea54f0000b029018e0ca63855sf1646322ljn.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 11:16:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626286593; cv=pass;
        d=google.com; s=arc-20160816;
        b=E3RKgtJlaPlIchYxjo+sbCuTtZH0p73y1I/7/kk4vEhF61zmi+D7lDUb+DIqgokJRw
         5iLrPOtPzDHwyRuHlo2eceVyzpGJ0F2WGIRenrM6iJghb1VhaTCkcEQtVdc1ZT57WEwL
         +YHnjiCqXG8j5duu1rDza2780QLBWv8WHIp+zos0AQe9zqY6QL1ihzErg9UA78e53CSf
         i2OvdfJe5POKBAIFY7HPTZOg4kgWcNfIw+g0BJbEZpqzrAaltFR4F94C0rsMnWfKYgFN
         C6OmoNQ1JvptWOAB15jtPTRKw4UEqE7mxoJD121O2LDi5J7UMr9gMJZ79SiRJ0VQQXvh
         3BKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=tgm+gij48wc6L53RJrixOJDZ4bW0SFOtWAPt7e0AsHM=;
        b=yjT9Wq23nqNElVoMs7kFHMjLrozpHsvKSZbO4aVJO0jDQkwbs0Bajq+53E5IjDKXFj
         GDpfVbu2961l0X0CTDfDoQACahUFnIEuCFprs+9Gu/BiSRoj4+KUMCQMGE0zsNqH69eX
         n/quwe7PpEEeTCS35RVqsGZGStZ4ZTwhTKw9JQhV6g/Ne8phao0F88Hper0nIl/Vcdow
         CKaQPYw7dheDOyt8DxCMmetu/ZPtSAmOGqiqMU2VTXNcl5GueT1TBATKTMNY6OQURuVa
         2EUquC23X0IucQ1L5geJIUGMN2qg/L1wEfHF3ZgyNE8CsAMEIQHcP9uzK6hCE5XALC03
         tHRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NWbdnzBE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tgm+gij48wc6L53RJrixOJDZ4bW0SFOtWAPt7e0AsHM=;
        b=mcO80OKPL3jzPkuaMBn8RGRid4lnK+SI7yi0CpErewHnsaWCTAk8PaA9nQuQBW8jq3
         hm45VdlFhTGp3+IWRHonhBaF/5B43lS1Cfl2Uf9STpkbI9KoPm5BoK344ulEcCoCiLAo
         hKOttnlooaKbrdcOE4hBRI8I+MPFV8JP76jVVHQlZ0Quz26+cEfacTfzJWiei0h0a96H
         DeuXluzLopR9RQvZM0UV6XXTux16i95h3W25f/FjKD0ZMN2Yp3yy5EYx4JkD56qDywnp
         Hmykoi1l12/FgNIHzYR1DBsAFt6gTcRXqOckApyUl1drLDLpEKMTZ1LFZftkLeCVvaFs
         Lg/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tgm+gij48wc6L53RJrixOJDZ4bW0SFOtWAPt7e0AsHM=;
        b=kACrHF96LijYzgRzhvChDdGa3eSbbZfr6ick30+/SVMYYHoG7bF+e0EPMu2Ml4PQvF
         FJGwjDC2gFUCUPZTOJ0LGzITmj+dQhEp9aNbB8YyAL6MC7/x/E0ipYv+YpA63g9wtc+K
         UwcxDWn3MsWRkC36PvcW1wDe9BiVXyh4hrAs4yalH6M/Zf9ulKRiuhVPMtDUHkieJlir
         FQy40QrUmFMkwDUlqsVZzDMyoJttE26Fpm2RWvp41NhV1yY4tEFD2HczViOlhbri+xT0
         b8Yv3vFfT0+D2bY1ec4x7EFNtfQvOw6iT3xnTMscTawW2JuxLB0RRpb8F7J7EhaXygiM
         vT3Q==
X-Gm-Message-State: AOAM532oXf0151rN4CC58/mXz4i/syz7/dHtSzs0bUUH1DJq7ia3HyH2
	V9ezBbX/qN3MCzmJci9wbdg=
X-Google-Smtp-Source: ABdhPJzsL67tAomQbki/YWGnTJX1dK/nIoViGqTlwg51cwOWbPW0odnz9pdtFGo2MgDdqZV6pJzDpg==
X-Received: by 2002:ac2:5d69:: with SMTP id h9mr8452127lft.603.1626286593578;
        Wed, 14 Jul 2021 11:16:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:508b:: with SMTP id f11ls2716815lfm.2.gmail; Wed, 14 Jul
 2021 11:16:32 -0700 (PDT)
X-Received: by 2002:a05:6512:239d:: with SMTP id c29mr9018706lfv.355.1626286592550;
        Wed, 14 Jul 2021 11:16:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626286592; cv=none;
        d=google.com; s=arc-20160816;
        b=fBqVRIIh45u5m/TJ9DbO3vMfTgnIt3lBMoRwRIKgPC1bE8vL6mZBlNQk2gOFG9URSz
         72wpvhRfeZFPbPB53uOTMXWNlD4T3sbegfTf+/cLbGZ1mewO+o2/XkklqPYgXGIa4TZS
         eFctRVHq1Q0y5A/ceYoxCtfyIq86W0x6C4myadTrn1D9zmhVqQczoPWYL1bvmA2+XWo+
         uAaEHNcX5DtA28AAKk+11ZrOtCWcWNttM4EGCny51vgAxlIOHBu86CbQ+z4ncHdZeLTR
         W455/vJFgBWw/xXCKeNFgnhP6R9wRK8jbOKBL4nF44iU+aUuYZJSsAIpA4rhzMPX8tXF
         RHyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gdYfStJb5mwOOj1KojUyVafFJ1o2WedkSsc19T3H7UY=;
        b=DnBGCazkeNpBtB8Gjz1M9dNYMepVTqhcKr8WqIEpWqj3+uQF+CS8EFeOkGvyzL3Us2
         n7pGcuZU/dix+OhhqGs1IF4+77mJ6cbblb4BUuomc2Rtj8yST3sLUL8ywv3yAgR++XZG
         W0jqQ/94mvtO+jAsVl35J1FZW162XbLbkLDd9o29RuiBVHU/7yIku/34c90V5toA9MDE
         8/rpC66SOKDxV6vxvQaQdLMQb77ce6t08WN/rDAb+jjR3IuD9Wy0vlboZDblsAEpkVXI
         +bZVENqOiMDbta69lYBOhnkFkaAbiWHYGre3RLhwd6tNZfOeHTpwfc2Ac2KNUBtNXB7K
         eSDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NWbdnzBE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id m18si117570lfl.1.2021.07.14.11.16.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jul 2021 11:16:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id t17so5226761lfq.0
        for <clang-built-linux@googlegroups.com>; Wed, 14 Jul 2021 11:16:32 -0700 (PDT)
X-Received: by 2002:ac2:59db:: with SMTP id x27mr5574226lfn.547.1626286592091;
 Wed, 14 Jul 2021 11:16:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210704202756.29107-1-ojeda@kernel.org> <20210704202756.29107-4-ojeda@kernel.org>
 <CAKwvOdnO1ZbM_FzY3qwokEkWDxsr37t_u57H_wEO6Pbu6CqFZw@mail.gmail.com>
In-Reply-To: <CAKwvOdnO1ZbM_FzY3qwokEkWDxsr37t_u57H_wEO6Pbu6CqFZw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 14 Jul 2021 11:16:20 -0700
Message-ID: <CAKwvOdm3_TbPPCZRvpdsfZW7szWEEnpb4NyqQ39P8a=7YGCb=g@mail.gmail.com>
Subject: Re: [PATCH 03/17] Makefile: generate `CLANG_FLAGS` even in GCC builds
To: ojeda@kernel.org
Cc: Linus Torvalds <torvalds@linux-foundation.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, rust-for-linux@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Alex Gaynor <alex.gaynor@gmail.com>, 
	Geoffrey Thomas <geofft@ldpreload.com>, Finn Behrens <me@kloenk.de>, 
	Adam Bratschi-Kaye <ark.email@gmail.com>, Wedson Almeida Filho <wedsonaf@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NWbdnzBE;       spf=pass
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

On Wed, Jul 14, 2021 at 11:13 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Sun, Jul 4, 2021 at 1:28 PM <ojeda@kernel.org> wrote:
> >
> > From: Miguel Ojeda <ojeda@kernel.org>
> >
> > To support Rust under GCC-built kernels, we need to save the flags that
> > would have been passed if the kernel was being compiled with Clang.
> >
> > The reason is that `bindgen` -- the tool we use to generate Rust
> > bindings to the C side of the kernel -- relies on `libclang` to
> > parse C. Ideally:
> >
> >   - `bindgen` would support a GCC backend (requested at [1]),
> >
> >   - or the Clang driver would be perfectly compatible with GCC,
> >     including plugins. Unlikely, of course, but perhaps a big
> >     subset of configs may be possible to guarantee to be kept
> >     compatible nevertheless.
> >
> > This is also the reason why GCC builds are very experimental and some
> > configurations may not work (e.g. `GCC_PLUGIN_RANDSTRUCT`). However,
> > we keep GCC builds working (for some example configs) in the CI
> > to avoid diverging/regressing further, so that we are better prepared
> > for the future when a solution might become available.
> >
> > [1] https://github.com/rust-lang/rust-bindgen/issues/1949
> >
> > Link: https://github.com/Rust-for-Linux/linux/issues/167
> > Co-developed-by: Alex Gaynor <alex.gaynor@gmail.com>
> > Signed-off-by: Alex Gaynor <alex.gaynor@gmail.com>
> > Co-developed-by: Geoffrey Thomas <geofft@ldpreload.com>
> > Signed-off-by: Geoffrey Thomas <geofft@ldpreload.com>
> > Co-developed-by: Finn Behrens <me@kloenk.de>
> > Signed-off-by: Finn Behrens <me@kloenk.de>
> > Co-developed-by: Adam Bratschi-Kaye <ark.email@gmail.com>
> > Signed-off-by: Adam Bratschi-Kaye <ark.email@gmail.com>
> > Co-developed-by: Wedson Almeida Filho <wedsonaf@google.com>
> > Signed-off-by: Wedson Almeida Filho <wedsonaf@google.com>
> > Signed-off-by: Miguel Ojeda <ojeda@kernel.org>
>
> Patch LGTM; please keep an eye on the series:
> https://lore.kernel.org/lkml/20210707224310.1403944-2-ndesaulniers@google.com/
>
> If that lands in kbuild before this, this patch will need to be
> rebased to avoid a conflict in linux-next.
>
> So (tentatively :-P):
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
> If the patch needs to be rebased on the series linked above, please
> drop my reviewed by tag and I will re-review. Perhaps putting me
> explicitly on Cc: in the commit message will help notify me if there
> are successive versions?
>
> > ---
> >  Makefile | 17 +++++++++++------
> >  1 file changed, 11 insertions(+), 6 deletions(-)
> >
> > diff --git a/Makefile b/Makefile
> > index 0565caea036..6e823d8bd64 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -573,18 +573,23 @@ endif
> >  # and from include/config/auto.conf.cmd to detect the compiler upgrade.
> >  CC_VERSION_TEXT = $(subst $(pound),,$(shell $(CC) --version 2>/dev/null | head -n 1))
> >
> > -ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
> > +TENTATIVE_CLANG_FLAGS := -Werror=unknown-warning-option

Also, consider whether `BINDGEN_FLAGS` would be more descriptive (and
less verbose) than `TENTATIVE_CLANG_FLAGS`.

> > +
> >  ifneq ($(CROSS_COMPILE),)
> > -CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
> > +TENTATIVE_CLANG_FLAGS  += --target=$(notdir $(CROSS_COMPILE:%-=%))
> >  endif
> >  ifeq ($(LLVM_IAS),1)
> > -CLANG_FLAGS    += -integrated-as
> > +TENTATIVE_CLANG_FLAGS  += -integrated-as
> >  else
> > -CLANG_FLAGS    += -no-integrated-as
> > +TENTATIVE_CLANG_FLAGS  += -no-integrated-as
> >  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> > -CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> > +TENTATIVE_CLANG_FLAGS  += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> >  endif
> > -CLANG_FLAGS    += -Werror=unknown-warning-option
> > +
> > +export TENTATIVE_CLANG_FLAGS
> > +
> > +ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
> > +CLANG_FLAGS    += $(TENTATIVE_CLANG_FLAGS)
> >  KBUILD_CFLAGS  += $(CLANG_FLAGS)
> >  KBUILD_AFLAGS  += $(CLANG_FLAGS)
> >  export CLANG_FLAGS
> > --
> > 2.32.0
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm3_TbPPCZRvpdsfZW7szWEEnpb4NyqQ39P8a%3D7YGCb%3Dg%40mail.gmail.com.
