Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQP3TWDAMGQEFWM356Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C3D3A6B32
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 18:03:14 +0200 (CEST)
Received: by mail-ej1-x638.google.com with SMTP id k1-20020a17090666c1b029041c273a883dsf3263245ejp.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 09:03:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623686594; cv=pass;
        d=google.com; s=arc-20160816;
        b=yygEtEaevdjGObyiZt0rtxiQYS6mS9UBh9v2JXlfNj+R0sKBamUM8KHJDj7RwIWnd5
         phobAUjvKP2EiEu7ew/4ongAF39q1cXAONo3NCzYQJyet27GKgRvtAdlYmwUxOjf5k9A
         abvM50VoygzUDO1zxCapMf8g4V2ahAXppqLADGd8g1YZm0fVi9ysu9KYaa/8ZcfNBDOa
         iDG1TTm0NOP0W/fMcVhcBdNfAiw0XdN4jmzWSp7fH4gaQOiKijYvJn2ZVVBm6EVpb4tE
         zik+JjVP288CeJmoJw6nA56vQcCl/w44BeaYSLp/XNVsAqdJfjVXYgKlnM4xdtHfnWDq
         EUWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=eRx7MQtgm0rv9Ho461HVA5hqgPTMhnnkkKGcRKVigfc=;
        b=NW0OzT3Ml6bMJ7eK5ctRIbjNoULPHHQ68MFzkIstc7ASzYv0KV1aDtIXn4R9qDoans
         Nt+QulNLAWlSLPW/mpSZSUPagRKIzZXAnyEbSbD5rr8OweFibNBMKdu45Ogzax4Etqf0
         Px931AGWuHK4zGirbHEpRx8v0/V54hg2iD9ibEYWDtfG9Pk/BT4Qi9Ri+awrSKrM3DAU
         /WDgrhD2UKx4oAFP9qxhDXgKCp7R78R/SQGl0eAWJrLPOdZ61/4ousevtsGvNFpAreHa
         EWmR6JGGQN2HZ3VIp1T1Y5Dimz7nuT+LcTxeeeMJ5euC6hDnIc2QtI55nEBcu7b4mq6w
         MssA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Fy7Y+Deo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eRx7MQtgm0rv9Ho461HVA5hqgPTMhnnkkKGcRKVigfc=;
        b=sTpjVpREUQE4j0SKyaWM3VqPYCXzQMwDk/GXN2wtdcdXt9oj+BeG823Xmoro1QZjsV
         Na7O1lDUlRoDVvN4nUm7lSA96kGeou/+TBzQFzZ017ynY7GxOshrxAnVKhl+gw67iv80
         lO4qqj+1uF/X5BEyMKcDgRHZ88bakbNH8RlitgkDKBI42OO1ax1QtDf5JI/R1y7bYF3O
         B+MRSVFJX3NEx/bOlY4Q5fh2gtSEBSTWNWb2oEpfUGXqAog4rYIA1SKeV25k7jSKAFuq
         6dU+nS2FELhzf8mav9UZn1rwAtsZ1pPn1TVvoInkn2dNjV5T11ln+HkELovnOPBdm4o1
         FUjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eRx7MQtgm0rv9Ho461HVA5hqgPTMhnnkkKGcRKVigfc=;
        b=Ap9cdGg1uhwrhzPCWfhw9Bb5f8gsnC5QoEJntPpzc55O8pige11tJAjTRXwcaW/UmW
         ao+bWXasjccgUPJ/gb8HnFrZv1YB71ia5yLCcIUH0jMqLPDUI1U03hMVbTanZL8t9Xzf
         gHZtxMgEf8sGsxiiJVO/HZ0Htnz0na9fcqnIGlQfRJiZ/ra8AFsnigAfs8b/DDnGTWXR
         cKJ3tuEQ7LtW0pg4pZVs14/pVt9f1i2WlECrt/jK1j/YoE/tYiVExzNouZEHzVkbavRh
         +IL6k5YByfD7XE97Dj3dj8dnLogNzQvNLzIEcu907D4l/PxJAs+4wNpV898+6Dc343Pp
         7+kw==
X-Gm-Message-State: AOAM532/gumx8JhSMDLv6IF5RMGwA16dIOwkDQ+LfRxJtBBV65CZDIOM
	UIlj1Qic8maJcEg1AsKT5PY=
X-Google-Smtp-Source: ABdhPJxyi5yyH8QU/ppsD6+OIJWeb2Bv8tfwMgAhEFjpkvj2tHmwH64Flo5cYpwU8JD2ksuC0JJwZQ==
X-Received: by 2002:aa7:ca1a:: with SMTP id y26mr17709254eds.314.1623686593947;
        Mon, 14 Jun 2021 09:03:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1293:: with SMTP id k19ls6710428ejb.9.gmail; Mon, 14
 Jun 2021 09:03:12 -0700 (PDT)
X-Received: by 2002:a17:906:dd6:: with SMTP id p22mr16605266eji.191.1623686592850;
        Mon, 14 Jun 2021 09:03:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623686592; cv=none;
        d=google.com; s=arc-20160816;
        b=n8bjrnkjeWZe065o0qi9nuBBG1mXVHjDrwK4iGwpkUSHje4AKk0aBK90ofA9+tgA35
         vPGvYwJBjwex18QfgDPXPuC3+e6UUSWe4CP/r4ut7YL6z7nhSQZ1xzt3hBrazE7mlaTQ
         boTvbO0O1reVq5pbNP5eKpSvpTiBmrLoftgaucEZrIWJy1vPHz2FXUg504PUJKYgv0p4
         YfadSnc8ej1ZUjJl9L6WscPUzDsDNyxE+D2a8XOMgj8y2ZzVZSl1pwSu2Ud4QtSXYvoq
         mTfhxvwfAmF7HjJ6HtkXJhPDl0OGXS77hzbM7JU8JpMnByiVEznPI153Mhl7b5USb43G
         nU6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3MqGDvp9ypUCvhlLUOO4ezsTJgglqtbS6x/EUZzU8+Q=;
        b=sgun3e/oVMUWWjGOQjLKfUf1Ip7VbHqeq3b9lWh0SQBUC4fugftwMVH1IEY5VTWNsb
         pZsoYUUJJ3dwAs+gqCLWWET6E5/Z0pjbPfEk2Ce814H43PwGqAF8G4Eyokt19vhurb5r
         EkaLWG7tE/xzPivjqrFRUVRgpIPZL8E/0VRDB872KqSObnXGiiKhM5vL2hNhtob3TUvv
         xcoZqIf776AhBwwMGuK+N3ntDMCeqbo72Rba49c7YI2hp4iDUPSxPZurFd4FawwXYvvG
         39AfeOF4Qo5wv92ArAvhPGJZ8yZBifXJZWXRa6XLNq50cQmj/bP5edboza1rDKQmDxmg
         c8Zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Fy7Y+Deo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id e26si658356edj.1.2021.06.14.09.03.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 09:03:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id p17so21910146lfc.6
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 09:03:12 -0700 (PDT)
X-Received: by 2002:ac2:5cd6:: with SMTP id f22mr13208808lfq.73.1623686592188;
 Mon, 14 Jun 2021 09:03:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net> <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
 <20210612202505.GG68208@worktop.programming.kicks-ass.net>
 <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com>
 <YMca2aa+t+3VrpN9@hirez.programming.kicks-ass.net> <CAGG=3QVPCuAx9UMTOzQp+8MJk8KVyOfaYeV0yehpVwbCaYMVpg@mail.gmail.com>
 <YMczJGPsxSWNgJMG@hirez.programming.kicks-ass.net> <CANpmjNNnZv7DHYaJBL7knn9P+50F+SOCvis==Utaf-avENnVsw@mail.gmail.com>
 <202106140817.F584D2F@keescook> <20210614154639.GB68749@worktop.programming.kicks-ass.net>
In-Reply-To: <20210614154639.GB68749@worktop.programming.kicks-ass.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Jun 2021 09:03:00 -0700
Message-ID: <CAKwvOd=aAo72j-iE2PNE5Os8BPc0y-Zs7ZoMzd21ck+QNeboBA@mail.gmail.com>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization infrastructure
To: Peter Zijlstra <peterz@infradead.org>
Cc: Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>, 
	Bill Wendling <morbo@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Fangrui Song <maskray@google.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Andrey Konovalov <andreyknvl@gmail.com>, 
	Dmitry Vyukov <dvyukov@google.com>, Johannes Berg <johannes.berg@intel.com>, oberpar@linux.vnet.ibm.com, 
	linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Fy7Y+Deo;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131
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

On Mon, Jun 14, 2021 at 8:46 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Mon, Jun 14, 2021 at 08:26:01AM -0700, Kees Cook wrote:
> > > 2. Like (1) but also keep GCOV, given proper support for attribute
> > > no_instrument_function would probably fix it (?).
> > >
> > > 3. Keep GCOV (and KCOV of course). Somehow extract PGO profiles from KCOV.
> > >
> > > 4. Somehow extract PGO profiles from GCOV, or modify kernel/gcov to do so.
> >
> > If there *is* a way to "combine" these, I don't think it makes sense
> > to do it now. PGO has users (and is expanding[1]), and trying to
> > optimize the design before even landing the first version seems like a
> > needless obstruction, and to likely not address currently undiscovered
> > requirements.
>
> Even if that were so (and I'm not yet convinced), the current proposal
> is wedded to llvm-pgo, there is no way gcc-pgo could reuse any of this
> code afaict, which then means they have to create yet another variant.

Similar to GCOV, the runtime support for exporting such data is
heavily compiler (and compiler version) specific, as is the data
format for compilers to consume.  We were able to reuse most of the
runtime code between GCC and Clang support in GCOV; I don't see why we
couldn't do a similar factoring of the runtime code being added to the
kernel here, should anyone care to pursue implementing PGO with GCC.
Having an implementation is a great starting point for folks looking
to extend support or to understand how to support PGO in such a bare
metal environment (one that doesn't dynamically link against
traditional compiler runtimes).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DaAo72j-iE2PNE5Os8BPc0y-Zs7ZoMzd21ck%2BQNeboBA%40mail.gmail.com.
