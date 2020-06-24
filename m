Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIMCZ73QKGQEHSOSKSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id EE80D207E24
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 23:09:54 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id l19sf1548591vsp.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 14:09:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593032994; cv=pass;
        d=google.com; s=arc-20160816;
        b=hyNtBJnJ4tupRZjoCSPRVp55mjDTi4ty5fBSlWt2SifttJ6qcxLPb5CxdV/46u64Ko
         xSu07V4OnmCZdym9CNlH4U6Y07+Q79spsm4IdCAjBjNMkIYEJiX84SU5Tmc7aM1sA8jY
         Q04oxxfwSoO4VEjLOjbE3R99jzvDr/cLRLiNmgYzAWj+cR1KDBr8Oukfcyk2vrXhWDyu
         IMQWWoIsZOLefbt0j+DzpDltLYaltY9UFPAwcSYvKwP96BzrKoVmPG28nVDrCmoMGHZB
         7+bkvpYzdhvE30/tIGinvyfhn6q8tPckvNBo8cQRd+2aS9h8eOQbWyP79j34+6/h+XEU
         LEIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AdG7FlAc9mi8oliHArfYW1Bi3CWwFJfYIk0NCyFrpRU=;
        b=B3JJMbwXc0cGuOpHAYDvvjYumYXQdYVTY+LW9m9qz6iq6BOjgyzV8lXZfsrD3W/Md2
         qKWxQSkUo4w74jgI6Qeb9B9H9tOeVh4/IvrtR/hiNBEC4EeWKNCkU7dvBWGIiK6EcKjm
         R2a0lAP8ihKWoGz52Mph/aQjIMksWnFhjzK40ItF77ClLe2mLGWDiuRmbtTSPWberETj
         +8AwLfXI5VXvKKj2pw4iREplOsBPEX46Sqcp3XKIcHfvRTFVErTSLAdz6wQhzp5DNNa6
         xnzQvrufVBlvH1z5VH2xDgUDW05Ms7Rx8qbQvpPChO3NDjbk7tcXfEzc4uHt2S4dUpct
         s+4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ulgAO6ky;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AdG7FlAc9mi8oliHArfYW1Bi3CWwFJfYIk0NCyFrpRU=;
        b=d/qG/KV4y+2wl/Xs9cCvwcfroBpruNSlryemk5ts5OKKzkzrR+KR53mHl2+pLxEVD8
         43A/MmozLPrMUT2Rgjko313thSWYgPOCKfqgxT5AN5sDCE9ghc5SudAz6Hl/1gGL3NG1
         dV9Lm6rH1uwbH02RahbEw53fTqaXOKTpvOBZmGmmCm6OGXkU4p4OnOBIXAdfxdJvz7nz
         U1o9Krq130rFm1gEo/G85An1z9bQlm7ZqZeer+KYgtdliYW3em7NPAVwBBbGZ/4Enl7j
         axwSHsnJCw0eJcwLZyfadSrbkL9E2HYUT8ENpD8VdfCs5zABortMP6/XQmj1yJjFgsHf
         hEdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AdG7FlAc9mi8oliHArfYW1Bi3CWwFJfYIk0NCyFrpRU=;
        b=oKdBLdtYfoIBh9XU1VLLkXWlYjwlAE135gbc/UysSUnngXW7GUk+p3q/xwqFJjxOAT
         3H+Kspl6CyqfNCwASWkjqyuFosGZfVID27C3rHt4yDJ5n0eRy8F2aceGPhQTaltWbOXz
         f4edYNQgVAlpVTrTX5PnJca96yzZ3Mgz1ZO/K5kPaIVFfF62LT9burDnklrW/tVgRRWK
         JX9GmdTYoQ0ib8fQzglfI7k0BnO+MY42tq/LomqX2cCfA8DDUtmPe683fXbM7rr/EF9d
         +6b4ViuNmapJl242QqO3CeioYNrmrU30RB4pwx7ZVnBYA1pLVqLcTT6RWWnmI7Ey3F9X
         WywQ==
X-Gm-Message-State: AOAM533VJK7XYdetaeCpt3RAH3ZI964SU7TP3/l5lT9f1eQm0oN4bdjB
	SSpKjmmLTHfuoZ+3Ux+Yk/M=
X-Google-Smtp-Source: ABdhPJzrjFlxJjRd40KjBdZfYZk1EZ0+SfCLkbbZfQhvOD/Hk2uwGXfj2ZoBPur4xXwwt6ugBODw4Q==
X-Received: by 2002:a05:6102:509:: with SMTP id l9mr27130332vsa.174.1593032994052;
        Wed, 24 Jun 2020 14:09:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3e05:: with SMTP id o5ls230794uai.8.gmail; Wed, 24 Jun
 2020 14:09:53 -0700 (PDT)
X-Received: by 2002:a9f:22e1:: with SMTP id 88mr19509436uan.19.1593032993614;
        Wed, 24 Jun 2020 14:09:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593032993; cv=none;
        d=google.com; s=arc-20160816;
        b=i4Xt60nn3qwMatvCP0Vh4qmkOwOqV5aSqmqykN5uRN0KAfE/kgI9kiz1qe2euQlZr1
         6Anv+whVIANSsUcgkPHvJG6zzSOvXqkoQilMJecFxdnHZemsTKQ0CgxxwrvbeL9MAEg0
         G22svomtxOe+J7qQf1vdJoY6E4icYYobDoAI+VsRuWaQDk2v96NiOuK9PzNCydm+Vew3
         galTMaXgJ4XqX1SVj65sHTSTxb2gwHU4FRTG8SdvqaYSj6emZIZaoAjI38wNiQ0tN3X6
         3LFdkapp0ImbDiqDimi/cKTQ8VpB1RLlorVslrGRi9R0IEYtKthlGwGP/zB0P9nEIMuj
         dPCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=i2jIkhYgexjs9KkwlPySDcA/4RhGGwlAKSrpoMnhGmk=;
        b=wrC6OFsxJkZF5YBEMAoAmeGG+BfGrgx5bnIulNqiOKlOQrYxGnrEReX31CvlA0NE7M
         OsfFIHg7I5G1BYbEetavjyCyGZHVXwbQoCoFDPVfd/31jWnUuJYZh5rwlaNedmkJY1PN
         5fSS3+5AySCRFlFlwYlrA6REz+MJiYUWkY7S0LB63H+OOEXHpt5tLDfoJa5duz8z3Jfw
         lUVXI/IuPNRyF1kvArY5hTUo2jHxbOYZRF0rPSfNW3gQtQxlu0MpZVJH1WwiNL0qkN9l
         uoShtE0LNhOGQM8B2JRMlDlke8NCaKF2tk3DXcikhwJsiyYdzSmMLq6sW+llKrBYk0Di
         8rPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ulgAO6ky;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id f12si1112776vsr.0.2020.06.24.14.09.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 14:09:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id b16so1776423pfi.13
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 14:09:53 -0700 (PDT)
X-Received: by 2002:a63:5644:: with SMTP id g4mr22699481pgm.381.1593032992558;
 Wed, 24 Jun 2020 14:09:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-18-samitolvanen@google.com> <CAKwvOdnEbCfYZ9o=OF51oswyqDvN4iP-9syWUDhxfueq4q0xcw@mail.gmail.com>
In-Reply-To: <CAKwvOdnEbCfYZ9o=OF51oswyqDvN4iP-9syWUDhxfueq4q0xcw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Jun 2020 14:09:40 -0700
Message-ID: <CAKwvOdm_EBfmV+GvDE-COoDwpEm9snea4_KtuFyorA5KEU6FbQ@mail.gmail.com>
Subject: Re: [PATCH 17/22] arm64: vdso: disable LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Andi Kleen <ak@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ulgAO6ky;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Wed, Jun 24, 2020 at 1:58 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Jun 24, 2020 at 1:33 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > Filter out CC_FLAGS_LTO for the vDSO.
>
> Just curious about this patch (and the following one for x86's vdso),
> do you happen to recall specifically what the issues with the vdso's
> are?

+ Andi (tangential, I actually have a bunch of tabs open with slides
from http://halobates.de/ right now)
58edae3aac9f2
67424d5a22124
$ git log -S DISABLE_LTO

>
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> >  arch/arm64/kernel/vdso/Makefile | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> > index 556d424c6f52..cfad4c296ca1 100644
> > --- a/arch/arm64/kernel/vdso/Makefile
> > +++ b/arch/arm64/kernel/vdso/Makefile
> > @@ -29,8 +29,8 @@ ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 --hash-style=sysv \
> >  ccflags-y := -fno-common -fno-builtin -fno-stack-protector -ffixed-x18
> >  ccflags-y += -DDISABLE_BRANCH_PROFILING
> >
> > -CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS)
> > -KBUILD_CFLAGS                  += $(DISABLE_LTO)
> > +CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS) \
> > +                               $(CC_FLAGS_LTO)
> >  KASAN_SANITIZE                 := n
> >  UBSAN_SANITIZE                 := n
> >  OBJECT_FILES_NON_STANDARD      := y
> > --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm_EBfmV%2BGvDE-COoDwpEm9snea4_KtuFyorA5KEU6FbQ%40mail.gmail.com.
