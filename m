Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBC7KTWDAMGQE6HA5ARY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DB73A6A0D
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 17:26:05 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id x2-20020a17090ab002b029016e8b858193sf213342pjq.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 08:26:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623684364; cv=pass;
        d=google.com; s=arc-20160816;
        b=lrLKLIqIdE56LXLIqxBiFEgXeI/rrzPY6IHVz9U2bV+TzaDq49Y5mfXS4ApA36GIVM
         4hLPZ/L4AcVfHQE09hSbzAPWa8x7LttV3fhrKhb8H7VGoh3IMNhloBUkV7Xz77p8CKrA
         B71Wc1WzS18XIxR1MQCfJuGo2HsdpS6j4GzDu5fvztomyABXDkC6NecnIxyCIuAkOKb8
         ISnVXHYawIbbBY8sFXw+AbErKjufmCvQNquRaGPBhx+uCFijb0JDO1LigPEuImQ+h6LY
         MvxZJTlS+6wFbKNn7KH1WtduhLAHuADHuSdw4nRNBryepe7RFGiYJBPOeb5F9fXvsWJE
         Ndog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kLvTqPez7vDEVk2ZnlnoNA8jwigRaxR1RdxmYiKcQ3Q=;
        b=0dv++C/VbzC7MbVfSwr22Trr/lYsh4pRFg7X5gXII6SSqrGFrJCbaoVIulCKufukAo
         ahvgbVTx7o7Yb19hRoz/9xRcY5Jl6Bzbo5jfTLcrZ2QiT59CPMvJZFUGH3YKpeY7QIos
         9b86M32MROPK6OeWEnpWPAddngTKfIKNZh9e2+98oRgnqZLHiGDG5nbd/LoutAPZiz9G
         /n6V/4FYEUxljXLw7ST7OBCIB2oCJ+UGGtZ2Y3E5ojRly1UKYPUdQarcFulCVzgFuSRi
         OSNf4ffbY/obIeg2jjBkSnUa/wsAZsqoCN5YsIoyaem3ASWNSPqV9nt3JyD0SHkBzmCl
         FpwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Y6OLntP0;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kLvTqPez7vDEVk2ZnlnoNA8jwigRaxR1RdxmYiKcQ3Q=;
        b=Gap2Nvl+W0vYzNE27xeko6qLpK8ev3lBQa9KeYPK88qtFgM1rwjgmxX9p06v3w54ms
         SlWZTTUPxvuHasWOIc3DGgc9mlJvql0BA0SdMKLJvW6QWJxz2Qlj+gDncs8FBgOk8xyu
         DjQdB2RlqINI+cYkbmFI0y9D9BRIchJL2kl7dcmjdWNqSx4dzkHZRIwIlgs8/k63xfTA
         d6qmiUDJC0Twj6ZvuiVBQbNIZzcq3kInAwZQSlpjm3/7hJ1wWbZBi+i1V0RpRYE+BQaL
         byrOvU4AI8AGCcgP3B147KyNijW+UjoimauEwui4oUZxRDirE9i6A/JgmNVeyNwnRwTN
         a48A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kLvTqPez7vDEVk2ZnlnoNA8jwigRaxR1RdxmYiKcQ3Q=;
        b=lzbunGrD5zRz29D6DJvd6X9ud+FNGATnPtseMah5Y+A/zq2TkRgoKvs/w+xtr2L/S5
         K1v3/nZVXrIULnv0czLv3t6B6WbQzRzo4hsQhlo+tqK65Tag7OBNva425dvY6wHo72pZ
         vUf5b9Wuz1qhQzncBupX9yOTFARpVdw5gxaVzAXfOZTTmJVaEuzBmY1HxSPvlzAn0Cci
         h1Iw0fX/EmCns80Bq0S05alb16MzRZ0cIgftFiRIYwF8y71iR8urGIo4Y2EEEQjn9VWO
         efyB3GW0CO3Q0iKqIv+7dIcMEEXz7A03MC2QhF4s7pAXjys9ot8CaY6gu1cZ20eBalcv
         twQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314lAKIUGLyoSm2mGMMb0BMVxxy/7C+fcWzUvInuF3R1PAznYT3
	dgUtIt1lPTo/hicK2+PfGeI=
X-Google-Smtp-Source: ABdhPJzf0kURNqunC1mFPKrLX2B7ucA602b+kS6O46KW7VF0x1pg9FrQwOt5VF39ymVEAJGkaKYEPw==
X-Received: by 2002:a17:902:d483:b029:115:3e1c:649c with SMTP id c3-20020a170902d483b02901153e1c649cmr17255682plg.44.1623684363957;
        Mon, 14 Jun 2021 08:26:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:414e:: with SMTP id m14ls11550377pjg.3.gmail; Mon,
 14 Jun 2021 08:26:03 -0700 (PDT)
X-Received: by 2002:a17:90b:f07:: with SMTP id br7mr20051509pjb.141.1623684363453;
        Mon, 14 Jun 2021 08:26:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623684363; cv=none;
        d=google.com; s=arc-20160816;
        b=SG2/HWcMEk4Vu1UB+Spf2sbiKoKiXBZE63zZ8McHl4WB2jJWMOe85yZ6UkvSwdqMZ3
         wykBoVYLEUMdWtNa0UDJU4FqH0NntmoYYU8ksw+9o5jGrxkhpBQmkxA/Fjxlf2nAKQeY
         NG5qPSODRFz+hRlyR8w0kw+yCyyBPWFZy9YkxFl4OopSmVm1Efr2PpJcIX8U49ED+HNs
         SpfI7yPgacKpsu6Upsng4EbHLd4q104XunEYcz0+jBkATBcpHs0eFY/Cut2TOZVb07wK
         Whoevtm3/I3PvJnUWGDdiB5E9AE2RJ+eGEIEHwFXQkenxXR7cx2v0FeeRV69/2QNFd+F
         iSLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Bcx1hZnVCYvsuGOQgk+jA811yV1iF9Tsc5R2/Wvf6PA=;
        b=O6nJw2zqj5K3nDfNEVagk7MFrckA35HQMi9ddWd7kLRuc32dbugfrFus+/xT7lwPSe
         mx4Sqq3u1mxA5JVWwTq4HVJpR6luaP5fkZCpmWpj7Sr/yeQjlZxWaqYey5oRTBeXHVlD
         0+XJO9ZJdB75VOUcipkqLjFmNgLcO8HFcyN3IOxnu/+qQGhOOHPCetRF3NvWDy9YNfA8
         IoCM53PnAypTTOV6oaAWDHG270ZC5b58nrxxOTiRjQBm9JgafyUc5U2agn3ojTg6zzdO
         Cjru9zhwv6W2b5yx6QdUcSugYUxyEnf57AJSFgIScRbUxBkO3rSq84z5xeheqmdPowHK
         Wp5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Y6OLntP0;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id bk15si1347753pjb.3.2021.06.14.08.26.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 08:26:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id mp5-20020a17090b1905b029016dd057935fso10293857pjb.5
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 08:26:03 -0700 (PDT)
X-Received: by 2002:a17:90b:3709:: with SMTP id mg9mr11738509pjb.47.1623684363165;
        Mon, 14 Jun 2021 08:26:03 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m134sm13253034pfd.148.2021.06.14.08.26.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 08:26:02 -0700 (PDT)
Date: Mon, 14 Jun 2021 08:26:01 -0700
From: Kees Cook <keescook@chromium.org>
To: Marco Elver <elver@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Bill Wendling <morbo@google.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Fangrui Song <maskray@google.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Andrey Konovalov <andreyknvl@gmail.com>,
	Dmitry Vyukov <dvyukov@google.com>, johannes.berg@intel.com,
	oberpar@linux.vnet.ibm.com, linux-toolchains@vger.kernel.org
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <202106140817.F584D2F@keescook>
References: <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net>
 <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net>
 <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
 <20210612202505.GG68208@worktop.programming.kicks-ass.net>
 <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com>
 <YMca2aa+t+3VrpN9@hirez.programming.kicks-ass.net>
 <CAGG=3QVPCuAx9UMTOzQp+8MJk8KVyOfaYeV0yehpVwbCaYMVpg@mail.gmail.com>
 <YMczJGPsxSWNgJMG@hirez.programming.kicks-ass.net>
 <CANpmjNNnZv7DHYaJBL7knn9P+50F+SOCvis==Utaf-avENnVsw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANpmjNNnZv7DHYaJBL7knn9P+50F+SOCvis==Utaf-avENnVsw@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Y6OLntP0;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Jun 14, 2021 at 04:16:16PM +0200, 'Marco Elver' via Clang Built Linux wrote:
> On Mon, 14 Jun 2021 at 12:45, Peter Zijlstra <peterz@infradead.org> wrote:
> [...]
> > I've also been led to believe that the KCOV data format is not in fact
> > dependent on which toolchain is used.
> 
> Correct, we use KCOV with both gcc and clang. Both gcc and clang emit
> the same instrumentation for -fsanitize-coverage. Thus, the user-space
> portion and interface is indeed identical:
> https://www.kernel.org/doc/html/latest/dev-tools/kcov.html
> 
> > > > I'm thinking it might be about time to build _one_ infrastructure for
> > > > that and define a kernel arc format and call it a day.
> > > >
> > > That may be nice, but it's a rather large request.
> >
> > Given GCOV just died, perhaps you can look at what KCOV does and see if
> > that can be extended to do as you want. KCOV is actively used and
> > we actually tripped over all the fun little noinstr bugs at the time.
> 
> There might be a subtle mismatch between coverage instrumentation for
> testing/fuzzing and for profiling. (Disclaimer: I'm not too familiar
> with Clang-PGO's requirements.) For example, while for testing/fuzzing
> we may only require information if a code-path has been visited, for
> profiling the "hotness" might be of interest. Therefore, the
> user-space exported data format can make several trade-offs in
> complexity.

This has been my primary take-away: given that Clang's PGO is different
enough from the other things and provides more specific/actionable
results, I think it's justified to exist on its own separate from the
other parts.

> In theory, I imagine there's a limit to how generic one could make
> profiling information, because one compiler's optimizations are not
> another compiler's optimizations. On the other hand, it may be doable
> to collect unified profiling information for common stuff, but I guess
> there's little motivation for figuring out the common ground given the
> producer and consumer of the PGO data is the same compiler by design
> (unlike coverage info for testing/fuzzing).
> 
> Therefore, if KCOV's exposed information does not match PGO's
> requirements today, I'm not sure what realistically can be done
> without turning KCOV into a monster. Because KCOV is optimized for
> testing/fuzzing coverage, and I'm not sure how complex we can or want
> to make it to cater to a new use-case.
> 
> My intuition is that the simpler design is to have 2 subsystems for
> instrumentation-based coverage collection: one for testing/fuzzing,
> and the other for profiling.
> 
> Alas, there's the problem of GCOV, which should be replaceable by KCOV
> for most use cases. But it would be good to hear from a GCOV user if
> there are some.
> 
> But as we learned GCOV is broken on x86 now, I see these options:
> 
> 1. Remove GCOV, make KCOV the de-facto test-coverage collection
> subsystem. Introduce PGO-instrumentation subsystem for profile
> collection only, and make it _very_ clear that KCOV != PGO data as
> hinted above. A pre-requisite is that compiler-support for PGO
> instrumentation adds selective instrumentation support, likely just
> making attribute no_instrument_function do the right thing.

Right. I can't speak to GCOV, but KCOV certainly isn't PGO.

> 2. Like (1) but also keep GCOV, given proper support for attribute
> no_instrument_function would probably fix it (?).
> 
> 3. Keep GCOV (and KCOV of course). Somehow extract PGO profiles from KCOV.
> 
> 4. Somehow extract PGO profiles from GCOV, or modify kernel/gcov to do so.

If there *is* a way to "combine" these, I don't think it makes sense
to do it now. PGO has users (and is expanding[1]), and trying to
optimize the design before even landing the first version seems like a
needless obstruction, and to likely not address currently undiscovered
requirements.

So, AFAICT, the original blocking issue ("PGO does not respect noinstr")
is not actually an issue (noinstr contains notrace, which IS respected
by PGO[2]), I think this is fine to move forward.

-Kees

[1] https://lore.kernel.org/lkml/20210612032425.11425-1-jarmo.tiitto@gmail.com/
[2] https://lore.kernel.org/lkml/CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com/

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106140817.F584D2F%40keescook.
