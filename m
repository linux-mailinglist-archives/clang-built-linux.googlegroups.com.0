Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXV47PXQKGQET5QWGYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8DD128C6C
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Dec 2019 04:09:20 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id x21sf5105486pfp.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Dec 2019 19:09:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576984159; cv=pass;
        d=google.com; s=arc-20160816;
        b=abmcAgPOz3uerlsWh0fyX6FhQKJ/Yw50ZVQzprESR4Icu5PJamI7jt3pC5CJRMM6Th
         0LshbQlnIeHwKPfZ9igszjKJtBgSlxWUMcR2sWvA6Le5LLJJaBRPuoi+nCC98i89c+fG
         U6nCN0zo/oDC7vyJBasaNqz1ogX5jxlkMDWnPDHU2P7d16Lisr5MUVcDIHM6KFyg1fPe
         /0UzZ+k4obhvwbw/TFy/CilAX+Jsp5/8djeY7fOMAks7rmcz2HeEHmInq2gX8CDO4uGW
         jtIV7LgD5wFID96bcNoqTPI+OEZnJQfuqbL1szM0EgZz9cvhdNYe147uwnuG8PopSlod
         tJKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=AsS1ioB5m0qYbygsOg092hb+djp79zZhQ45uLWkyp9w=;
        b=sfVnLVI8VTFmueyJVLEHjfa5ibTwm7jQ3Ki1zoweQeBalAi5nslzvw4ch4v7Mvif7n
         P3QBPiHcnWEmt+86ZYmpcRp6qe15IOAwKbhPpiXyPjUlDvf8zk/HoiBv7eukhNQpuxGk
         paNqQbmn6k3/32esyrmGyX8c8EtCnPVpc0PUuG+g9mTCZ6Gnf51Y6UjADj+HOdDjon5J
         DQw/msGQ6iVByjMWBDEXpj2p+8J9XnUpuoZYlKauMN5IMVMpXYRr+lm2fOw/iVQgcUwv
         oG7KiNRmy6LHdcH52GfV626AywHRNAnv18cGJipn6RYi1eQdJWDku5dXG8OAq1X6+mnh
         SKnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="J//ypFVJ";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AsS1ioB5m0qYbygsOg092hb+djp79zZhQ45uLWkyp9w=;
        b=YKwG4dA5C+boElwkmsMlNaxnZHxn7frkmNr/azshTuS6dM6z+E1wYavlkdz05QDsLT
         +rSb0fYz55q+lqt3WwKwkqffEZqrsNI4iBgmRu8LEB7qJCNr9D8XZiSl/HBGLdgFrC5T
         kNDKBmcbBy+rJ27gRPK0WrrD4FUskSzidhfqbGLLpVSnNjAL9gFW57xqZnfoqyrlznE0
         nk3ezGki9w4xxjyTNCf3vgrrbuNvZUb5ZhDDoHIP5SlL1mDrASxZtQ1tZH0OQKwlKssF
         99qd4t8IhfGFsm1juS3CuS2DX3qa0RGbD5PfemyDm/OxwaKB0lNX5xD2i/XwZ8ykcjCf
         l3zQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AsS1ioB5m0qYbygsOg092hb+djp79zZhQ45uLWkyp9w=;
        b=fK6ixETWY6fOm988Uo4JCJj9ZA2TBHyPVJfZx2p0xFW4LQMgf5b71f442+/eQ0zyJh
         4RO7Ade0on/5PjXym/WnRfJtd3QFFzsr3LxZPfZ7yIw1cio7ag/azKziEl9z5f3JbtAs
         kYJNTsHfLJFTR2ul1nR8vcAh0cRwSt+r5Xo14tpfqaTK4tUhzvBZkBN7F2buVS0SBbMN
         fUph5Dp7b9afxJlmvQSlpcfn9a3y8PdM12+MRV3aROvETOjnIAIoXCTEiitSBLcghYjI
         4WlTjUg4rfWunZSIK2WaFAE1bS7UXsG+r8Vh0nhiLBM/mglVMDlFyU+Ysmm+rtcNOY9l
         Wn4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AsS1ioB5m0qYbygsOg092hb+djp79zZhQ45uLWkyp9w=;
        b=P1LcuKnYesXQKp3Wfdm2p+vYKoeDVs3FIT9i2uAokua1WJ5yELnd91aqUhKllJ7H2d
         eEOYehC7isDkA4Awi+STaoyjaRuZGxDqiaOp1aBkb7ggM4sm05DHbMxdTc/3jpPbZxFh
         kL2pnZuRbgY5HnDyk9e5OZXS7gCPe8OUwk/mzkj/cYHLntXE/4hc8zskhPGXkC2+Szgy
         fOobp1MF5fsRkF3u+KiUzOIBetcA66gY5wSEu2cvcxXHlKmQm4NGuwcdstoM8izD9zsE
         GV46kXlguSQMHizSdYPt5jCi75VTox66+A/iEDm9MqmUWpIEAgFAatGd45ZM18soMNse
         Tz/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXKgCWAcCv9Y8exgR/U2084rX2OXR+Q1XdtNToLQulFSJAmSCYO
	Ujxmt+FUyvW9pT+CLgDRJxs=
X-Google-Smtp-Source: APXvYqypry69Ctep/ckZ5PrzmkZaZZ5Kut1/cEsVlW4NtVkmk9Hkx5m1P/Dgp+Z70fhqx4FOcfX8Qg==
X-Received: by 2002:a63:4e22:: with SMTP id c34mr23775184pgb.214.1576984158854;
        Sat, 21 Dec 2019 19:09:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8d43:: with SMTP id s3ls3499359pfe.14.gmail; Sat, 21 Dec
 2019 19:09:18 -0800 (PST)
X-Received: by 2002:a65:4d0b:: with SMTP id i11mr25222927pgt.340.1576984158424;
        Sat, 21 Dec 2019 19:09:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576984158; cv=none;
        d=google.com; s=arc-20160816;
        b=wOfWYSxz/BXlIk8uRwZZcDC9Z/5cHqM14PoQCDOhrfxBYt0PDmao6Nd/MpmmBMuqh+
         kWmDqRSc76O+Px7TroJowp3WgETIioVWjXmGxZgqBE8x/GDjJGbBS8xLobxQk5NDgbfi
         rC0iTh/nlHqYu1SQ5oc0RytNk4mPekFj/Sj6+oVQAKTc3PsTq34CtVEOwWW+sqqhZHru
         jIbZgTiZGm2bpkJtT7vTvi84bwmQeBUSxfH97gDgIsq6OY+pqtgIXLnAE1Ifp+f+MmZx
         QZylvsRnjOTXZUt1X+4QZB7tx/D6THeHGhs0NRIuZTV/SwZ6Ma3tuzZxKXZ+rOUQR4Vk
         TPiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FLxLMHWzhvsAyc7YSZ1UcqmlBwxpr3w938KiSSxaokg=;
        b=peq4hHgQ9djMmpnhOlBgEmge9Gx2UT3PWp4TPs4tlXLNx6gl1W8aMoxvh2wmCMmo+W
         qr6cTgXSdzo7TWP9FhZ141VXmu/GHQC2b3js9MbCGDJI9FTSmGIHW+lnKNBySS+A1VlV
         ZfYdzgrq2QZEmKq/rcL1CK5xAYoGDXJ2ZNzN32MsXUlwxqV5bNLN8qZOjOBbX82MuqCQ
         e0g86Y4GDlIu5/s8HO2WM+BjlVw1hhuXQRvpVBlhB/Y0vbauBPgJF7Iln48loaMYV5Hq
         63/qcrfp3lGjWd1DOg6rKaLmD70Y7BAEnAJLxVQqXxVNEUuDUfcBzduFeF174UCK7AUi
         HS7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="J//ypFVJ";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id v13si619113pga.4.2019.12.21.19.09.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Dec 2019 19:09:18 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id w21so9596036otj.7
        for <clang-built-linux@googlegroups.com>; Sat, 21 Dec 2019 19:09:18 -0800 (PST)
X-Received: by 2002:a05:6830:1cd3:: with SMTP id p19mr8523090otg.70.1576984157645;
        Sat, 21 Dec 2019 19:09:17 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 47sm5494666otf.54.2019.12.21.19.09.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 21 Dec 2019 19:09:16 -0800 (PST)
Date: Sat, 21 Dec 2019 20:09:15 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	intel-gfx@lists.freedesktop.org,
	dri-devel <dri-devel@lists.freedesktop.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH] drm/i915: Remove tautological compare in eb_relocate_vma
Message-ID: <20191222030915.GA27679@ubuntu-m2-xlarge-x86>
References: <20191123195321.41305-1-natechancellor@gmail.com>
 <157453950786.2524.16955749910067219709@skylake-alporthouse-com>
 <CAKwvOdniXqn3xt3-W0Pqi-X1nWjJ2vUVofjCm1O-UPXZ7_4rXw@mail.gmail.com>
 <157538056769.7230.15356495786856166580@skylake-alporthouse-com>
 <CAKwvOd=ov789Lixdq8QE+MVXeYyh=W_sODSuj++4T8uF-hpVMw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=ov789Lixdq8QE+MVXeYyh=W_sODSuj++4T8uF-hpVMw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="J//ypFVJ";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Dec 03, 2019 at 10:45:22AM -0800, Nick Desaulniers wrote:
> On Tue, Dec 3, 2019 at 5:42 AM Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Quoting Nick Desaulniers (2019-12-02 19:18:20)
> > > On Sat, Nov 23, 2019 at 12:05 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > > >
> > > > Quoting Nathan Chancellor (2019-11-23 19:53:22)
> > > > > -Wtautological-compare was recently added to -Wall in LLVM, which
> > > > > exposed an if statement in i915 that is always false:
> > > > >
> > > > > ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1485:22: warning:
> > > > > result of comparison of constant 576460752303423487 with expression of
> > > > > type 'unsigned int' is always false
> > > > > [-Wtautological-constant-out-of-range-compare]
> > > > >         if (unlikely(remain > N_RELOC(ULONG_MAX)))
> > > > >             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
> > > > >
> > > > > Since remain is an unsigned int, it can never be larger than UINT_MAX,
> > > > > which is less than ULONG_MAX / sizeof(struct drm_i915_gem_relocation_entry).
> > > > > Remove this statement to fix the warning.
> > > >
> > > > The check should remain as we do want to document the overflow
> > > > calculation, and it should represent the types used -- it's much easier
> > >
> > > What do you mean "represent the types used?"  Are you concerned that
> > > the type of drm_i915_gem_exec_object2->relocation_count might change
> > > in the future?
> >
> > We may want to change the restriction, yes.
> >
> > > > to review a stub than trying to find a missing overflow check. If the
> > > > overflow cannot happen as the types are wide enough, no problem, the
> > > > compiler can remove the known false branch.
> > >
> > > What overflow are you trying to protect against here?
> >
> > These values are under user control, our validation steps should be
> > clear and easy to check. If we have the types wrong, if the checks are
> > wrong, we need to fix them. If the code is removed because it can be
> > evaluated by the compiler to be redundant, it is much harder for us to
> > verify that we have tried to validate user input.
> >
> > > > Tautology here has a purpose for conveying information to the reader.
> > >
> > > Well leaving a warning unaddressed is also not a solution.  Either
> > > replace it with a comment or turn off the warning for your subdir.
> >
> > My personal preference would be to use a bunch of central macros for the
> > various type/kmalloc overflows, and have the warnings suppressed there
> > since they are very much about documenting user input validation.
> > -Chris
> 
> Is kmalloc_array what you're looking for?  Looks like it has the
> `check_mul_overflow` call in it.

I don't think kmalloc_array is right because we are not validating an
allocation. I am not sure that any of these overflow macros are correct,
we would probably need something new but I am not sure.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191222030915.GA27679%40ubuntu-m2-xlarge-x86.
