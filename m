Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTW2TLXQKGQERQIZBHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D4F110469
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Dec 2019 19:45:36 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id p5sf1959013iob.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Dec 2019 10:45:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575398734; cv=pass;
        d=google.com; s=arc-20160816;
        b=WHfQfM1cSxYp/Az8OUP1OxMW+rWx13IXqlxyBjA8rkEO7wPvH6+Sf77dkKQOGgh1Op
         3icg3AQpIqIJj0ak8XRrXY1of2h99yF9A2s7w5T5F8F53Ktzgf34TIVf/jyk0+uvKC8S
         tnXcaFJBfGLZI85jzaFY3VCJtni+999iz3DK+E1FMjU6ej+XZ8jwRGTK0V/McJVSRhdR
         oWZkN+oSl242Rb7OdQhEDYYCL0fdbOWLKlONN21Jqh+T+Nf0Q56SrVUj41vh4P6xpRai
         hmAf2Ms/QpsypiVSJpT5GIJUCX4MX7i+HIXWIaCJGSHQjwhdMVDwEW1rwHvzvPUZGKkB
         P9iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=z/r3pMFAXSYcfbCN/N08VDMSqthuZPVatX855FA25o4=;
        b=i28DeBqkpkeqB3A29JgCg3ZUKf+6xfF3/uWBa1sxy2nCH0oFR4F9cegsLEcoUYQJ9+
         aDlnqTNdugoXpVP2s+FRFDbw4SQvYv4BlGMpty2TGT/hVJZWsPmDh1mQJBGniJF1sLuU
         An4k+Zkw4xyKURGDDCbPPboA/y/faUwBccAHOnwfouwbmcMDjeJmdg3yHKX7tNdWQ7aN
         zi45LW9fzcIQW6Bb7inYCDhTbqxtDVnjMUL5v/mMtmzWqMmVHdZVy9UFYp/5lfi/9rHF
         EPb7gP4PZmhBaqSb08i5zHMJehIGBrEmPN9hTSbbiuBZ2KsCcsu9wAbuDORrI/J+ux48
         3aSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XNFVfbfC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z/r3pMFAXSYcfbCN/N08VDMSqthuZPVatX855FA25o4=;
        b=SeMDx0KLYKaP/IZJ4ck/UTgb5DigiYgvlrwUPO2jUynvMCk90cFijJlsnRkJUhfpFV
         E43f49CGx/z8Wy/S1gRB5phx/pSsYbc3/gSJnJZanU2oJndsN6ZyOinHEGCx4vb11v2t
         ZiQqpbCBgMXLEYcYsExeYjyinI+e6JY+Y8YEfAdQTyY95fuWwT8CDQiSfblMM3rAoflV
         5tjm0yBs9OpG08oWq28wocxYVkUF98mqnAGXSY1b5O7oD/vBrKDYRS0ll1EIrrbm7qEv
         WyVPr+Aih1UMPWAPEgE8SJ0LswBZvj9xXw4dzbI+Ym/z3DpsEg8ZLKPzxpmBt6OH0Jnz
         8H5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z/r3pMFAXSYcfbCN/N08VDMSqthuZPVatX855FA25o4=;
        b=MKYx82/QpVSifNIx+pFaMkVfLoPrqOjFPhbde7W/67ZnLCcJfj//NrBJGcAatiDLWX
         NlsMeVAPjUzpdUn88CQJwqKCf7QwqLHm0E+TFqJrH7P9Jmm4Weq8ZljiDpHV2AZSHW+G
         IJhJxnKgv1lrq7LZsV84q1On7oGfBUYTMz6RmNHC1+UmWBUSJp6d5snj2fR0EanEHW+f
         J8ZAxKj0KHNo2iat26LiKZutU3C0xtHkpCXPjsSDf2YsL3mFg08185VRYeDqceqhuVmg
         BTyzAwGGHzVLA3NQcjPy5cLy56y03OgK001dr9A3w/3uEMI55XVA7ZOb9n5JnRQZrNf1
         v9TQ==
X-Gm-Message-State: APjAAAWpZrEh8N8LeC60SM1RJymDsuA2uSKv3ufbaKNGr+fcUuhngawj
	/UU3Zq38yTVJmtLQ1KnQQGM=
X-Google-Smtp-Source: APXvYqzLeYUQL0wjEUUAflpak6o7hUvE//Y8+9NSD8JPDJYMzcH6GNCn5OTKfKgIXMQP2UF9kty4bg==
X-Received: by 2002:a92:3c41:: with SMTP id j62mr6102317ila.269.1575398734525;
        Tue, 03 Dec 2019 10:45:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:8f1:: with SMTP id n17ls750486ilt.6.gmail; Tue, 03
 Dec 2019 10:45:34 -0800 (PST)
X-Received: by 2002:a92:5b14:: with SMTP id p20mr6132351ilb.250.1575398734158;
        Tue, 03 Dec 2019 10:45:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575398734; cv=none;
        d=google.com; s=arc-20160816;
        b=okk7cpys5m1+26aJkwQxSTqmpUdV6VfTnoQFVetQuoJqFUmc/AAco6Qb+ouelZd1FO
         TCbsYJjvywIwNcL55DwFgcHj74Ids5fq0WER4DiVRwsSyKHwoOFb7SCuU7hFKcm5KruU
         howYfdSqB/92Z02nUFmMckGGYw/V6CEp7E2bcQM7bi9/whmuU5eyfC2ygLi2jfCEkodM
         CqVKeTkbTUeTP5IU8aLqvyvK17DyNf2/RGQLtdmlxy0LUKivWL51dNoNDKXaRmtgLh80
         iZbpW03cDuTHmAsoc7H7YmtnX3uhCOFmTLE8YooiB7930njZhFCvNA02roixV1LrTe0H
         4Mmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bG8Nt6cVodf34zynBURXT0B9txwe3S1q7fxCr2Als+4=;
        b=sqI/yY88l02IqsSrQhWnT3BVyt2MdFWd9jpPlfrkHgvr5erFMuM3mRSdhneoGZJIAt
         cGaw/aEXADfQmwLE8xZ3i/xto1nsUqZlWoj5rHHQAyynXhSLFywbMvKHt/SskoGie1HY
         /56DMKTxc2Q7ZXF152Tvmf05yYH0g8bn2W4cxSzOlqKc90nZSH8ivw38NAukUosezc/V
         bTKwIlL1NWhe3a8DfxeSiKlab0cky8a0GRcsRB3hxMAyrAxvtjSjMkO+PQTggIBCVbCo
         zqDFoAJb1B0GNMa9YBNhjXQ3Z1uQh7TFVYd7crLeIjWKcwXxX24LhngnqaflOlTvAihP
         jlJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XNFVfbfC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id v3si285311ilq.0.2019.12.03.10.45.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Dec 2019 10:45:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id o8so2039790pls.5
        for <clang-built-linux@googlegroups.com>; Tue, 03 Dec 2019 10:45:34 -0800 (PST)
X-Received: by 2002:a17:902:8ec8:: with SMTP id x8mr6052422plo.119.1575398733219;
 Tue, 03 Dec 2019 10:45:33 -0800 (PST)
MIME-Version: 1.0
References: <20191123195321.41305-1-natechancellor@gmail.com>
 <157453950786.2524.16955749910067219709@skylake-alporthouse-com>
 <CAKwvOdniXqn3xt3-W0Pqi-X1nWjJ2vUVofjCm1O-UPXZ7_4rXw@mail.gmail.com> <157538056769.7230.15356495786856166580@skylake-alporthouse-com>
In-Reply-To: <157538056769.7230.15356495786856166580@skylake-alporthouse-com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 3 Dec 2019 10:45:22 -0800
Message-ID: <CAKwvOd=ov789Lixdq8QE+MVXeYyh=W_sODSuj++4T8uF-hpVMw@mail.gmail.com>
Subject: Re: [PATCH] drm/i915: Remove tautological compare in eb_relocate_vma
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	intel-gfx@lists.freedesktop.org, dri-devel <dri-devel@lists.freedesktop.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XNFVfbfC;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Tue, Dec 3, 2019 at 5:42 AM Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Nick Desaulniers (2019-12-02 19:18:20)
> > On Sat, Nov 23, 2019 at 12:05 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > >
> > > Quoting Nathan Chancellor (2019-11-23 19:53:22)
> > > > -Wtautological-compare was recently added to -Wall in LLVM, which
> > > > exposed an if statement in i915 that is always false:
> > > >
> > > > ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1485:22: warning:
> > > > result of comparison of constant 576460752303423487 with expression of
> > > > type 'unsigned int' is always false
> > > > [-Wtautological-constant-out-of-range-compare]
> > > >         if (unlikely(remain > N_RELOC(ULONG_MAX)))
> > > >             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
> > > >
> > > > Since remain is an unsigned int, it can never be larger than UINT_MAX,
> > > > which is less than ULONG_MAX / sizeof(struct drm_i915_gem_relocation_entry).
> > > > Remove this statement to fix the warning.
> > >
> > > The check should remain as we do want to document the overflow
> > > calculation, and it should represent the types used -- it's much easier
> >
> > What do you mean "represent the types used?"  Are you concerned that
> > the type of drm_i915_gem_exec_object2->relocation_count might change
> > in the future?
>
> We may want to change the restriction, yes.
>
> > > to review a stub than trying to find a missing overflow check. If the
> > > overflow cannot happen as the types are wide enough, no problem, the
> > > compiler can remove the known false branch.
> >
> > What overflow are you trying to protect against here?
>
> These values are under user control, our validation steps should be
> clear and easy to check. If we have the types wrong, if the checks are
> wrong, we need to fix them. If the code is removed because it can be
> evaluated by the compiler to be redundant, it is much harder for us to
> verify that we have tried to validate user input.
>
> > > Tautology here has a purpose for conveying information to the reader.
> >
> > Well leaving a warning unaddressed is also not a solution.  Either
> > replace it with a comment or turn off the warning for your subdir.
>
> My personal preference would be to use a bunch of central macros for the
> various type/kmalloc overflows, and have the warnings suppressed there
> since they are very much about documenting user input validation.
> -Chris

Is kmalloc_array what you're looking for?  Looks like it has the
`check_mul_overflow` call in it.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dov789Lixdq8QE%2BMVXeYyh%3DW_sODSuj%2B%2B4T8uF-hpVMw%40mail.gmail.com.
