Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBZUC3X5QKGQEYLHE6HI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0122A281601
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Oct 2020 17:04:09 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id a16sf1374241pfk.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Oct 2020 08:04:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601651047; cv=pass;
        d=google.com; s=arc-20160816;
        b=tvF8ck6THWluJtGjuUF0aKNJEAukOYsCFVy8T1/Sprald9LSPB22fCHslWV2U0tpyM
         P8hfdrjiMcXs7T6QjbZhJHNHi9dt4uSHbhE7Feb166h4s/eIpi661C1ex+A2bXi+bnDq
         rudGxxLG/UzarUkd3e8oNilylVi0aTGcoMItzkskpPNsX2RnIa78jD24FxWV6oFrJsRm
         OeKMdL6tas/0XYDDJKVYwu+/gGBkeQKcNZt5CkIK34pkEVVwUfkq/K3q/UrF9lfo8L/F
         bA2bsl4frhJu19NvALzeLV2Y8TYfWBLgb4x93msntc+tw1nzDrqWDSvmt19Ly5CI4edH
         Rcig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+SMw287x1xex9bJQngIHmQT4C4p8W5XK0lO9hzppySg=;
        b=IuQ3/sYPgJqV+POZM/ne9OZVzMyaba5grxFAdLNMz8Z6NiKAcpUDXuZsViqvJGS55Z
         iftZk2jOpxjsd/ZjZHj32F7DUkxSuYFt4318AMe4zov3dEMZ+PiljUWc17ixAK4GXZg0
         GI8xz0uBatfMpFkDOCazlYrobIxwr8OTR/ZkP5jDJwoV3penC6mGnF8Aw3DX0VFCek29
         g2yp0nWr/iSA5prLPMIDUBLrh7MFyRQh/wO9xX3CEMw+KewZDPnSvwQ0djoSSquLKWh/
         IMhby6VPnqL6Txi2pg/rQA28Ec0AI7vMK7cVgqHnMNmObWjXMZWtLIx6InP9kWbEHW/t
         Xylg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iV1InCDd;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+SMw287x1xex9bJQngIHmQT4C4p8W5XK0lO9hzppySg=;
        b=d32EXv2GGCFardMGaxVjHdKOoOt8RU/9lDTIpu2x/kOWrLJSifnQxMDW0JhM5tQApr
         BHAHyW+SSW3aJEnEmHRdIPaJLVbYenTfUoUVDfZZJsmiEyrOYVsJNSn+3I7wD3n52jWC
         dnwkpIBl7Kv1r2DJduMMzRLSzpSjT54T+Z7iaCy3Y2DN29rSyDoLqNmZ5kR42PgfDXrQ
         MiJOha9rHtSEoBt8VJahvERq+HHwzmdVxIqqG/EtBnLy/czQFDpu8Pcc4WJf3bZVZKNk
         5cuGvnwbfUDIN2ibet1eb0Jp9klpcCRnov9aA1qjH/pfbKrrbMiYYXG6GzRMsP93YNwk
         uARg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+SMw287x1xex9bJQngIHmQT4C4p8W5XK0lO9hzppySg=;
        b=T1ckwzasdFl8XAqmlQHVigLquK9QoXCLUgk3d2KBS6FGYlmwXvWGRSkzfYxjBpwm8C
         KefhswFLquiOAEEZ0+nbNunqb8LrQztQf0wx9wVbZN5UevTrXvMmIej2YydtWmRVAdyC
         hs9NQo5f6ebjciuEjsqCD6v2Hc8dA964vuSbiYS/odpyA88m88r39Piv2HqVYV/OMhzn
         bvAhiH7bGy0hElZ5yQ9OowkQTZnMIDnkCyWI2pMpmlJLyQJa/EscW6hanxHfPMHpZqPW
         lYaFXIlsucYYPe7Txd6iWtLjmFVHm2youSC7EWV8yj5ZpZcgEy2LtZ40pIKAVIFMu4QR
         UpCA==
X-Gm-Message-State: AOAM533Ky3nz+ZQai1c5pnX5FZy2JGaFRiHcpm/A+tFLsjZiu3OUsTBp
	RiO29Ra9esKrKg4BXHbrYeo=
X-Google-Smtp-Source: ABdhPJyaH+3mn9+kT+RlwnDMEgYRPKtxyqgoNDS6NDqU6K3yz3i+2qU/E+cCIgtY8gJjM8NS3wCqpw==
X-Received: by 2002:a17:90b:3355:: with SMTP id lm21mr3309558pjb.125.1601651047384;
        Fri, 02 Oct 2020 08:04:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7591:: with SMTP id q139ls1023485pfc.3.gmail; Fri, 02
 Oct 2020 08:04:06 -0700 (PDT)
X-Received: by 2002:a05:6a00:23cc:b029:142:2501:35cf with SMTP id g12-20020a056a0023ccb0290142250135cfmr3335957pfc.47.1601651046405;
        Fri, 02 Oct 2020 08:04:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601651046; cv=none;
        d=google.com; s=arc-20160816;
        b=icqhOuZJDb+DUCINrOGhtEA6LgULTvPijGx3sjeOqPHEmF/IEhxgh1BYVdnD+O2zdm
         Bf8gxN8+UFwUHz+YGAwijCg0txLmyxrwexbHzfiY4wBknRGDdJ8Tg6SVAgdUipzGiDZK
         NLpnRS35TVrhbrVba4/59bIPiOmtqCy5d4iyD2BF2v8yi3aLIupVwfiaQm/4NIW70oWR
         MQnO34Anx9bCEie6kvXoD3PstPozULjSxbwoLWNAP6Hq2DLNBSkvMy3WN5gMEsRn4OVO
         hR107whY0iwJpfncfUCfbcuE6J4Uv5IC8Nm4QjJ2bEFPnK5S08e0JokPB15Fv5Qv2hnj
         QWjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+OT/4n2wS86BoiTVC/dLrqPVRF45rG7BZbw8GfdvQDw=;
        b=zsUGeqSRdP/ffbLXtYmpEVNYuQZH61EoIfCQGlkTZiA7ypLLLHEnE74AzlDsv+4LTD
         GOY7ZX7bFukTV4o+nf53n2eXr0XwZE4DABKeF6eAc0baUvczKMFI6EXst36jXtQB354H
         NqwWf6OAVpGvTUFj8Oiac4W2gPpo1Jpf8ml8dkIcbIHuQuj1IAr4FyvPgzsFfIoC7EBc
         7NYQINcHpkqBK38LEgyTMzWytUH2CfwA/u/jJCTH5nHFz+RI3S/4AvdciXlOwnDecNWI
         iWu7+nIIzZXhJD/LvL8ycwMnPRtySxWs73vEdb54NEELiAJrvZrX2+iH5S7V9l60e6rt
         7Vxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iV1InCDd;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id f8si83410pfj.2.2020.10.02.08.04.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 08:04:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id l85so1490848oih.10
        for <clang-built-linux@googlegroups.com>; Fri, 02 Oct 2020 08:04:06 -0700 (PDT)
X-Received: by 2002:a54:468f:: with SMTP id k15mr1518233oic.121.1601651045524;
 Fri, 02 Oct 2020 08:04:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200922074330.2549523-1-georgepope@google.com> <CA+DmFKDMZPef9+f4xPWMQ2mgdHPSUBmYZ3X=bS6s8XudetmW5g@mail.gmail.com>
In-Reply-To: <CA+DmFKDMZPef9+f4xPWMQ2mgdHPSUBmYZ3X=bS6s8XudetmW5g@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 2 Oct 2020 17:03:54 +0200
Message-ID: <CANpmjNP7ucEfdfuU_Ch7ukdF3HS5z0rPkG=pgrdK16S=--z-WA@mail.gmail.com>
Subject: Re: [PATCH v3] ubsan: introducing CONFIG_UBSAN_LOCAL_BOUNDS for Clang
To: George Popescu <georgepope@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Dmitry Vyukov <dvyukov@google.com>, Peter Zijlstra <peterz@infradead.org>, Arnd Bergmann <arnd@arndb.de>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, David Brazdil <dbrazdil@google.com>, 
	George Popescu <georgepope@android.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iV1InCDd;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Fri, 2 Oct 2020 at 16:43, George Popescu <georgepope@google.com> wrote:
>
> Is this patch ready to be merged?

Andrew already picked this up and it's in the -mm tree:
https://lore.kernel.org/mm-commits/20200922170717.qhs0j%25akpm@linux-foundation.org/

You have to wait for the next merge window, which will likely start in
1.5 weeks (or, on Monday, but unlikely:
https://lwn.net/Articles/832733/).

Thanks,
-- Marco

> Best regards,
> George
>
>
> On Tue, Sep 22, 2020 at 10:43 AM George-Aurelian Popescu
> <georgepope@google.com> wrote:
> >
> > From: George Popescu <georgepope@android.com>
> >
> > When the kernel is compiled with Clang, -fsanitize=bounds expands to
> > -fsanitize=array-bounds and -fsanitize=local-bounds.
> >
> > Enabling -fsanitize=local-bounds with Clang has the unfortunate
> > side-effect of inserting traps; this goes back to its original intent,
> > which was as a hardening and not a debugging feature [1]. The same feature
> > made its way into -fsanitize=bounds, but the traps remained. For that
> > reason, -fsanitize=bounds was split into 'array-bounds' and
> > 'local-bounds' [2].
> >
> > Since 'local-bounds' doesn't behave like a normal sanitizer, enable
> > it with Clang only if trapping behaviour was requested by
> > CONFIG_UBSAN_TRAP=y.
> >
> > Add the UBSAN_BOUNDS_LOCAL config to Kconfig.ubsan to enable the
> > 'local-bounds' option by default when UBSAN_TRAP is enabled.
> >
> > [1] http://lists.llvm.org/pipermail/llvm-dev/2012-May/049972.html
> > [2] http://lists.llvm.org/pipermail/cfe-commits/Week-of-Mon-20131021/091536.html
> >
> > Suggested-by: Marco Elver <elver@google.com>
> > Reviewed-by: David Brazdil <dbrazdil@google.com>
> > Reviewed-by: Marco Elver <elver@google.com>
> > Signed-off-by: George Popescu <georgepope@android.com>
> >
> > ---
> > v2: changed the name of the config, in Kconfig, to UBSAN_LOCAL_BOUNDS
> > ---
> > v3: added Reviewed-by tag
> > ---
> >  lib/Kconfig.ubsan      | 14 ++++++++++++++
> >  scripts/Makefile.ubsan | 10 +++++++++-
> >  2 files changed, 23 insertions(+), 1 deletion(-)
> >
> > diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> > index 774315de555a..58f8d03d037b 100644
> > --- a/lib/Kconfig.ubsan
> > +++ b/lib/Kconfig.ubsan
> > @@ -47,6 +47,20 @@ config UBSAN_BOUNDS
> >           to the {str,mem}*cpy() family of functions (that is addressed
> >           by CONFIG_FORTIFY_SOURCE).
> >
> > +config UBSAN_LOCAL_BOUNDS
> > +       bool "Perform array local bounds checking"
> > +       depends on UBSAN_TRAP
> > +       depends on CC_IS_CLANG
> > +       depends on !UBSAN_KCOV_BROKEN
> > +       help
> > +         This option enables -fsanitize=local-bounds which traps when an
> > +         exception/error is detected. Therefore, it should be enabled only
> > +         if trapping is expected.
> > +         Enabling this option detects errors due to accesses through a
> > +         pointer that is derived from an object of a statically-known size,
> > +         where an added offset (which may not be known statically) is
> > +         out-of-bounds.
> > +
> >  config UBSAN_MISC
> >         bool "Enable all other Undefined Behavior sanity checks"
> >         default UBSAN
> > diff --git a/scripts/Makefile.ubsan b/scripts/Makefile.ubsan
> > index 27348029b2b8..4e3fff0745e8 100644
> > --- a/scripts/Makefile.ubsan
> > +++ b/scripts/Makefile.ubsan
> > @@ -4,7 +4,15 @@ ifdef CONFIG_UBSAN_ALIGNMENT
> >  endif
> >
> >  ifdef CONFIG_UBSAN_BOUNDS
> > -      CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
> > +      ifdef CONFIG_CC_IS_CLANG
> > +            CFLAGS_UBSAN += -fsanitize=array-bounds
> > +      else
> > +            CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
> > +      endif
> > +endif
> > +
> > +ifdef CONFIG_UBSAN_LOCAL_BOUNDS
> > +      CFLAGS_UBSAN += -fsanitize=local-bounds
> >  endif
> >
> >  ifdef CONFIG_UBSAN_MISC
> > --
> > 2.28.0.681.g6f77f65b4e-goog
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNP7ucEfdfuU_Ch7ukdF3HS5z0rPkG%3DpgrdK16S%3D--z-WA%40mail.gmail.com.
