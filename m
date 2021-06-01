Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBE7F3GCQMGQEVAVGCEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF68397972
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 19:47:00 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id z4-20020adfe5440000b0290114f89c9931sf2970007wrm.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 10:47:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622569620; cv=pass;
        d=google.com; s=arc-20160816;
        b=znHdE1E9OP4htSOBHVPB96U5JkqYag3eadkemhKnwZfZO8wm0mzaxXTPisfSupTbrO
         k/FjxZbcJqZg7nPVDhwUNt3YrEAwZBSz72PfJOY7ib7heBMwZHxk7Hse/xsf9c92WZOP
         gempvXLyL2eHo40IxCit3geIxwFKIVDNSpGsymf2lfK/od2EovorNIN0kRJH5KvhiLM/
         EOxv907oM8umvSE8d+ZrRZ/x05YEf1dcW9wg6Efn56PXtnMOO8BAlHT6xmSqUicScO5O
         9PciSwpT0uJRorCe94Kfi0x58oI15icxbfMmwqN/YdXteZymrnhdOBQC/bSTk8u9vCmp
         FpJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dAJefq4BD+uRxPNVKclU4wiLJF8oUQMxEjjFXW1bq3Y=;
        b=q+JMVvG3L2BA16Ue+X7wDvUG6V9U696veVqqookomSg2zTYS6y7DBXzxoOqC7jhw6h
         tmjXo9o1Ezgj5+mNwXafbWLdzSTEFQYHFJ11CmkEnzjpuI7C41Dr1EWdy03EBfBp2m1J
         /7t+E6ikt7Wx9q24p3K4TeF/cnZ0T+Dbp5t/AAtjdEOhReg003D4YjU8mvt0H7bS6ofE
         yUH/5HqkDUN7G78i81NzbC/d5uzy/uIcklru71WjGlvqbflm7lmmnpvStFqq522sTkA5
         fpp2SgtmBZo83KirgrpdhbCo9PmHe9bPRAboWnh9+7wEXLt/j5XwO6p2OfgQWdPVsNxX
         d74w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="uiisl/l2";
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dAJefq4BD+uRxPNVKclU4wiLJF8oUQMxEjjFXW1bq3Y=;
        b=Ge8NgklGm1uB1FQQLZfvNHyYA+dst4rkczONU7zMEPzSWtYVqjU4dGECpQc0YdIrgh
         Ie1pm2daNRxvIRqZudMZAr2WcKdNdu7NJ1yWhn0oQPNzj9Jjy6ndI1bXNWzY1xd4rzBL
         V6lyfMlqJAlXbY8E8q/06WLXZhrjZmAZWvS2UTVYBATPsZO7FDrgbgSWLPvQcgnyVsR8
         wt4U4MwphPkAUUrHQFYKdjpZhYkPkdMQb357dcDj3colgIIgvEGuQXVu+37Bz03wzUA4
         LxcqjJfvigEtVyAeL97uwbhmzSwgi6mteeDbK67nEd0BzxfYicv4uQM+32v21V88yDDq
         ubiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dAJefq4BD+uRxPNVKclU4wiLJF8oUQMxEjjFXW1bq3Y=;
        b=ltCEe9JANCEi2PXZoa8JaUPl7oCiaGC9gXaSm7JF5F8QT4EOO7E67P8HsMxuRsbIsn
         E5Zws7uzOtwxI19QesS1ZyTIUXinTokUH8dZnXctR/DqEJ7MO6ehjrmKLpSAgV5gqNRy
         9Anv4gEntIDeXoIjByVzyHC1/lCeF7hBQd248uYGBD2b3GquttJwjdDmga9EeKkdLhlY
         EMl9PxDHGakTPaljC6WMdCRFB58TcBRRu++6+3LSI8brYcz523VC5XInO9k68W0C/Mmt
         p3Ia98LLXuz6+T/tl9tMSGikaiQ2XcE3XteSoIC5wc20JCh4ijElD8kdX4NeYP0FE8KV
         V9Fw==
X-Gm-Message-State: AOAM53391gtZmkS+EMh7Gy6PfBCzMXPU60aFgeQ9mLSD2xUyIrBZU9pd
	F+elVA6thAyfSfwNTLaI0yU=
X-Google-Smtp-Source: ABdhPJwEVENYmTUc92q5IZTtRMw2AeXV9zz6cbMaul3lmSxyDuLpK2eq7/HnbAs339P5IVT0ZP85bQ==
X-Received: by 2002:a7b:c304:: with SMTP id k4mr1067323wmj.68.1622569619912;
        Tue, 01 Jun 2021 10:46:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fe4c:: with SMTP id m12ls2971845wrs.0.gmail; Tue, 01 Jun
 2021 10:46:59 -0700 (PDT)
X-Received: by 2002:a5d:6109:: with SMTP id v9mr29382383wrt.0.1622569618985;
        Tue, 01 Jun 2021 10:46:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622569618; cv=none;
        d=google.com; s=arc-20160816;
        b=NdlfzXI4prp3dP4ZV0iwqMIww4X5chsyQd436bi+IjHOHTodAvahMMJyIppXnTIN35
         1uYRVWTljZ9s8V4JfiauR68m5beO5DWjoYOfPCgKpHfBS/kC7EX/G3C4khfD0vSyNf+B
         XGgcix4773/kWaG91jBGR+vdNGTg3ixqH17+PZ0p+ZAzNObU6CWFENKim9UVNE0DyyEi
         pS/qoJslCicE9LG9WtjuvQmlrM8hR7z67WJ0QWpeYIaVAGzdm/f0qmaYQGFvqkhos+vg
         s/OxplRPZH1kJckiCVSYAbaYoZPzXoAdK26cWRBUAu/U9Otal4qemqO0+0JDYKeuE+rC
         YRUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jJYP1ahOHUDkEz4I2iYxmBxvA/YEgFvm6f/leHoOsVY=;
        b=yBNQ53kGW8glFlDi2pcAITRFBnfgbRe7x/OGBqXWJYvG7NEqQ7bcfWsxr6HlvaKteQ
         rfWcc9zc2EkvR0j8vA4s2RAYNuvWSoE8QaiU4dNyiVBhML7zy8YzvNcjW1rhf1R2DODr
         12vawdYB+I6sVHvMb2R0OxAsEv9ZFf3TAw0+oUwPAd73RcZXexbpuoCda+eLvKDauYUN
         jRMnZN5WjINmndy/rYKNDszmiLdJvdJO9YHIR3PExIk1Iy+AWA6lsPW44NE4UF8nDVBl
         hX+DCF61KyshMlnqgE8CX2qrUE59cpM/4Vy3Ru7LHIOyCTN64SbYijVNbN+8m7nl86nv
         3WgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="uiisl/l2";
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com. [2a00:1450:4864:20::130])
        by gmr-mx.google.com with ESMTPS id t1si251727wrn.4.2021.06.01.10.46.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 10:46:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::130 as permitted sender) client-ip=2a00:1450:4864:20::130;
Received: by mail-lf1-x130.google.com with SMTP id a5so23130234lfm.0
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 10:46:58 -0700 (PDT)
X-Received: by 2002:a19:dc08:: with SMTP id t8mr8284937lfg.503.1622569618435;
 Tue, 01 Jun 2021 10:46:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210527162655.3246381-1-elver@google.com> <CAKwvOdmgZXJB2dV7iG67qHgbDgVTJaH7b3dkpgZyea4ULgQjgA@mail.gmail.com>
In-Reply-To: <CAKwvOdmgZXJB2dV7iG67qHgbDgVTJaH7b3dkpgZyea4ULgQjgA@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Jun 2021 19:46:47 +0200
Message-ID: <CANpmjNNqzCTks5dFkbbqzPP4UX7GDTdjbvJ7SbN2jcSNWjxQzA@mail.gmail.com>
Subject: Re: [PATCH v2] kcov: add __no_sanitize_coverage to fix noinstr for
 all architectures
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Kees Cook <keescook@chromium.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Will Deacon <will@kernel.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Borislav Petkov <bp@suse.de>, Sami Tolvanen <samitolvanen@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Dmitry Vyukov <dvyukov@google.com>, 
	Mark Rutland <mark.rutland@arm.com>, kasan-dev <kasan-dev@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="uiisl/l2";       spf=pass
 (google.com: domain of elver@google.com designates 2a00:1450:4864:20::130 as
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

On Tue, 1 Jun 2021 at 19:42, Nick Desaulniers <ndesaulniers@google.com> wrote:
> On Thu, May 27, 2021 at 9:27 AM Marco Elver <elver@google.com> wrote:
> >
> > Until now no compiler supported an attribute to disable coverage
> > instrumentation as used by KCOV.
> >
> > To work around this limitation on x86, noinstr functions have their
> > coverage instrumentation turned into nops by objtool. However, this
> > solution doesn't scale automatically to other architectures, such as
> > arm64, which are migrating to use the generic entry code.
> >
> > Clang [1] and GCC [2] have added support for the attribute recently.
> > [1] https://github.com/llvm/llvm-project/commit/280333021e9550d80f5c1152a34e33e81df1e178
> > [2] https://gcc.gnu.org/git/?p=gcc.git;a=commit;h=cec4d4a6782c9bd8d071839c50a239c49caca689
> > The changes will appear in Clang 13 and GCC 12.
> >
> > Add __no_sanitize_coverage for both compilers, and add it to noinstr.
> >
> > Note: In the Clang case, __has_feature(coverage_sanitizer) is only true
> > if the feature is enabled, and therefore we do not require an additional
> > defined(CONFIG_KCOV) (like in the GCC case where __has_attribute(..) is
> > always true) to avoid adding redundant attributes to functions if KCOV
> > is off. That being said, compilers that support the attribute will not
> > generate errors/warnings if the attribute is redundantly used; however,
> > where possible let's avoid it as it reduces preprocessed code size and
> > associated compile-time overheads.
> >
> > Signed-off-by: Marco Elver <elver@google.com>
> > Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> > ---
> > v2:
> > * Implement __has_feature(coverage_sanitizer) in Clang
> >   (https://reviews.llvm.org/D103159) and use instead of version check.
> > * Add Peter's Ack.
> > ---
> >  include/linux/compiler-clang.h | 11 +++++++++++
> >  include/linux/compiler-gcc.h   |  6 ++++++
> >  include/linux/compiler_types.h |  2 +-
> >  3 files changed, 18 insertions(+), 1 deletion(-)
> >
> > diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> > index adbe76b203e2..e15eebfa8e5d 100644
> > --- a/include/linux/compiler-clang.h
> > +++ b/include/linux/compiler-clang.h
> > @@ -45,6 +45,17 @@
> >  #define __no_sanitize_undefined
> >  #endif
> >
> > +/*
> > + * Support for __has_feature(coverage_sanitizer) was added in Clang 13 together
> > + * with no_sanitize("coverage"). Prior versions of Clang support coverage
> > + * instrumentation, but cannot be queried for support by the preprocessor.
>
> I'm not against a version check for supporting older releases (in
> addition to the cleaner feature check, since the feature check was
> non-existent); we can clean it up someday when clang-13 is the
> minimally supported version.  Would having an additional version check
> help support existing/older releases here?

The feature check will just return 0 on older releases, since the
feature does not exist there. Therefore, no additional code is
required to support older releases and a version check would be
redundant.

> > + */
> > +#if __has_feature(coverage_sanitizer)
> > +#define __no_sanitize_coverage __attribute__((no_sanitize("coverage")))
> > +#else
> > +#define __no_sanitize_coverage
> > +#endif
> > +

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNNqzCTks5dFkbbqzPP4UX7GDTdjbvJ7SbN2jcSNWjxQzA%40mail.gmail.com.
