Return-Path: <clang-built-linux+bncBD66FMGZA4IMNKW2QUDBUBCMUN4RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D76A397B07
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 22:15:03 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id k10-20020a05651239cab02902cf19c03142sf3225926lfu.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 13:15:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622578502; cv=pass;
        d=google.com; s=arc-20160816;
        b=CtO45vHTXgwNn3O98pPAEoIAdg+FbkMXVOb4IthKbDd6u9QNU1Ss6kQaGKsAZ1yQe1
         Ei6Sb2GdKULUUDM2oWdj3eE2iRh+Twcn0sM6ipTTmSSqi5KKYAFCb0LF7q352D1aw3/0
         oGJlIi3gA5XSahZODx1nNMHXbXryHvlNF1S4XcFGQEty5+cE6hL/jNACkn81XwUxjR5X
         u/aWo/3KOQY4DLcttmnZxqjomKrLzoDZyw54CYMWwl/ySdP1HHzhOjp0Xzj+wLmIS/Qc
         Z3KEettZsDH1vgt2Sbr3i/1C+vWzKDG8Q0Q90ldMwI/7zO7spAjOMfoDSf7wBGcBETO4
         v89w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=XV8/EtnsSn5TAfJcs+VC7aXE7gSfyjyzxK8n3scHF5g=;
        b=IdP28w+5Q84Z4/oUIhLiew6u0gx6+W5EoZZNGKwYSdfTzGy8mcLJEjoui4OUmv4+QR
         bNj7fmBKzUsELGlQkdOlBZKlPcY1YtYXGLnhUcZ/7ARw63miAudn80+EJCkVyrKuJXFI
         vr8M8KrPTXzNvNxOZ5uF06HMQGkIAj7NIL4C1IVttl3AR3Sk6qS/F4WEfCZbwWQT9h10
         THJ6DvYVrntyYVoJCPCwNLFtdP0yezbRkgSyihhYSFY4KsqtUkam/drRD234RosCuc8p
         Z5tUqmL4O9uSOEYO627vQQa47pSrDr/GkcoN/+6rtdDnynAs6EQ2dDst1PvpjBykm/yH
         gMmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="lN7/RTkg";
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XV8/EtnsSn5TAfJcs+VC7aXE7gSfyjyzxK8n3scHF5g=;
        b=j8WqNuJ1suyX3Zb6luqQExB+yyDe/5AajaRG25upwk+wmXEl0PwmZBpagn/hv29/qL
         ow9WkHC91O0NxjkvVKriWNWHxygPDI+3Cmf/+7nVj605zJlfgFCwkuNFpg5Ahm3OoyM3
         ly/rMaPqybCrVBagY2mDeU4aRAuK51/ih1soyrlSlncJrEOvqjnSOJUYr9BF8slxosN0
         KQw6iGJ0sjm/FNTqBs6T+AuACXygM7GPRqAC54M+y+cFzGQ+v0/RIEaeoDafJRBd5R/d
         WGQXU6sZWMuVqE1yiqh/4ObxnQqSM1oB4biQtHCfdyMgkCqKoJEG/yPuSorCsHN7nd99
         vX4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XV8/EtnsSn5TAfJcs+VC7aXE7gSfyjyzxK8n3scHF5g=;
        b=ZfeoUwCtMU+8MZXuAS9S1qXd7jA6hvoZGK5heeF0u7w0PPdt3pQFS+jklNtFxCKD2q
         UGWEvULenguIHZLRBrVT46DsAPPROetKy6LY7oWc5L1BKDlW2PnIJTyiUE8zY9HbpTiM
         gg7rMmZcBD/NFjNTOuUd3aFCmBuiSkEClUwlx/8z1rE+2UnqDGW7hIMDuZ+3/bP7SnGV
         ElbWBAn/krwWc7ocJpQKjx3iI+Tb/jqkLG/z9ZCWMk6g/NGrkVYUgLCKTBjFw1jyjiaL
         l5X0c1cTA1dO+mXIE+MZFvtaVcFZWAJyplAEvhhYXS3NpIeIDf2/ck+Giac/EtIl8hA8
         OYRA==
X-Gm-Message-State: AOAM532gdtvV9hHcJeJ6fJNBq9HDa45EN/kHmBoQyJLq9pD3gxpFpGIC
	LBbE6hXeFVoFiC0G8DsTgYc=
X-Google-Smtp-Source: ABdhPJz+a/EIzo6wkyvJ8OJOTgvd7UXUtcum3om7yQa+zwxlt5Ul1en/3FPkUTwBK9LS9GBWLJ0EJw==
X-Received: by 2002:a2e:9145:: with SMTP id q5mr22079087ljg.400.1622578502467;
        Tue, 01 Jun 2021 13:15:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b99:: with SMTP id g25ls1296289lfv.2.gmail; Tue,
 01 Jun 2021 13:15:01 -0700 (PDT)
X-Received: by 2002:a05:6512:33ca:: with SMTP id d10mr1517099lfg.258.1622578501440;
        Tue, 01 Jun 2021 13:15:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622578501; cv=none;
        d=google.com; s=arc-20160816;
        b=yZ/k8+PnbwQsPTJbYMaPympocQACCVQ3z7L5yhNITRzjy/TQ3m5Rdn31jf739gq0GN
         1fVmTuICvd/Tuag79N8uH7URyBvAsnMfvwTMXZLoBO2/LYR5xFzqElQaSpTK4TxeI3od
         NTbKX1pU1ivnNfUAFasUVisQHrHpFxmFyuhlYza4UOveBp1lFcl/woeZcNrCyyiBzKH1
         hjrZhxDI3rviRFHL07y4EDcOMY+WX/I5+DA8NNiGzQ+xQbQ32n0I8zgsfrpJzFo3A0EA
         Y+mEAUfYzmpzOYquyM36E9Dwpbz0y2nN5rL7YB0V5DutdzABm4gs9tFKIWp0MVZkSrSS
         r4iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tP5u+ISjsaq73D6nmuIT4za8n4Lwg8QUjtoaeR5RI/0=;
        b=Lkko3mK7XZDWKkyYsJ9wAzvg9hs/dMGFBiNwCX3dhMYL0VmeMJ/BxwxIW5sIppXlC7
         hykuL9MwEjHtUaldTK9dtEqXZAjCjwDATU4itxgnsN0JMcm2ULR8zD9SCqicLN+F6DJl
         Ye9uYNn0UP1D9Inn0ZzfJJd0FQd5jptgnoRO67hZtJq0MJVchYbrIqkvOMdn7o7AgpuH
         Z1egFsEE9zSYEyS01js2q2p8R7Gw/4ASviXdgfrvcwViWK0F5v2L73xeyPxNBURg2nI4
         r0TmoqSmPJlgFTl6vN823+IRrysUeae47/dNtI4zGh2JUV4aYyNDt8gVMfbBuzMe8Wof
         JZ9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="lN7/RTkg";
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com. [2a00:1450:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id p17si25903lfe.0.2021.06.01.13.15.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 13:15:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52f as permitted sender) client-ip=2a00:1450:4864:20::52f;
Received: by mail-ed1-x52f.google.com with SMTP id y7so111099eda.2
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 13:15:01 -0700 (PDT)
X-Received: by 2002:aa7:c782:: with SMTP id n2mr34883171eds.77.1622578500766;
 Tue, 01 Jun 2021 13:15:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210601190541.1446239-1-keescook@chromium.org> <75a5aefd-084f-ef59-ceff-0f3856dcce71@kernel.org>
In-Reply-To: <75a5aefd-084f-ef59-ceff-0f3856dcce71@kernel.org>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Jun 2021 13:14:49 -0700
Message-ID: <CAGG=3QV2HpVtBmm90dGdJqq-=Ygzp8FHc76Y7T06EB3pXsWYgQ@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: Expand and relocate PGO entry
To: Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="lN7/RTkg";       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52f as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Tue, Jun 1, 2021 at 12:07 PM Nathan Chancellor <nathan@kernel.org> wrote:
> On 6/1/2021 12:05 PM, Kees Cook wrote:
> > This expands the "PGO" acronym and adds additional metadata to help have
> > patches get directed correctly.
> >
> > Suggested-by: Nathan Chancellor <nathan@kernel.org>
> > Acked-by: Nick Desaulniers <ndesaulniers@google.com>
> > Cc: Sami Tolvanen <samitolvanen@google.com>
> > Cc: Bill Wendling <wcw@google.com>
> > Cc: clang-built-linux@googlegroups.com
> > Signed-off-by: Kees Cook <keescook@chromium.org>
>
> Acked-by: Nathan Chancellor <nathan@kernel.org>
>
Acked-by: Bill Wendling <wcw@google.com>

> > ---
> > as seen in: https://lore.kernel.org/lkml/YLVRTilQ5k5n+Vmz@archlinux-ax161/
> > ---
> >   MAINTAINERS | 22 +++++++++++++---------
> >   1 file changed, 13 insertions(+), 9 deletions(-)
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index fd7d34fcd95c..2030cd9593cf 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -4448,6 +4448,19 @@ T:     git git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git for-next/cla
> >   F:  include/linux/cfi.h
> >   F:  kernel/cfi.c
> >
> > +CLANG PROFILE GUIDED OPTIMIZATION SUPPORT
> > +M:   Sami Tolvanen <samitolvanen@google.com>
> > +M:   Bill Wendling <wcw@google.com>
> > +M:   Kees Cook <keescook@chromium.org>
> > +R:   Nathan Chancellor <nathan@kernel.org>
> > +R:   Nick Desaulniers <ndesaulniers@google.com>
> > +L:   clang-built-linux@googlegroups.com
> > +S:   Supported
> > +B:   https://github.com/ClangBuiltLinux/linux/issues
> > +T:   git git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git for-next/clang/features
> > +F:   Documentation/dev-tools/pgo.rst
> > +F:   kernel/pgo/
> > +
> >   CLEANCACHE API
> >   M:  Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
> >   L:  linux-kernel@vger.kernel.org
> > @@ -14387,15 +14400,6 @@ S:   Maintained
> >   F:  include/linux/personality.h
> >   F:  include/uapi/linux/personality.h
> >
> > -PGO BASED KERNEL PROFILING
> > -M:   Sami Tolvanen <samitolvanen@google.com>
> > -M:   Bill Wendling <wcw@google.com>
> > -R:   Nathan Chancellor <nathan@kernel.org>
> > -R:   Nick Desaulniers <ndesaulniers@google.com>
> > -S:   Supported
> > -F:   Documentation/dev-tools/pgo.rst
> > -F:   kernel/pgo/
> > -
> >   PHOENIX RC FLIGHT CONTROLLER ADAPTER
> >   M:  Marcus Folkesson <marcus.folkesson@gmail.com>
> >   L:  linux-input@vger.kernel.org
> >
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QV2HpVtBmm90dGdJqq-%3DYgzp8FHc76Y7T06EB3pXsWYgQ%40mail.gmail.com.
