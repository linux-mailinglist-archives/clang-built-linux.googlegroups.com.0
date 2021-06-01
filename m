Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBIPI3GCQMGQEZSCSQVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id C938A397985
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 19:53:37 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id l185-20020a1c25c20000b029014b0624775esf1323565wml.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 10:53:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622570017; cv=pass;
        d=google.com; s=arc-20160816;
        b=js5Mg1aJ+xlu2xYCgAIB1af57fSQb1mYSsYgpL4xH5h6uFckY1cP3SEOspePGceN0K
         tHz9ddCuhixLfHukf5AA0H/92xUVP7NsozQY+Ft5v5UGnHhIwlzAcC3cSpLPew6ICK+o
         mSjJPfgahRGGJNe/eJ9Vywq0FE+N6VjMeW5ImR2INvDOg3ip+kiXSLd73/i9UrrO47RF
         Mfc8ICX2byS06mmVzYFM0ry2MegCOy8lMXxMz7ua4oRCpNc/GqKFo1IDN6LCiRjQM/99
         yxkYiDvDWDphAyi6Vo/sCGXcG7Hhra9wfIGmSVc2BrKagtcqnXM9z2/5DuAyywjFBPY2
         tEOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yH/jD5H3SCeRX0V0cmWyexMHb7AQIBpD2AmbnVzK5B8=;
        b=jtVL3tBEXCo703bqwlL2S9T1df+5hlOzIpX4mjewbTjl12/xo0gdlxm3fC2hplBOFo
         j/uoHKBH7daCKzXkcxp5MND4lFfhQz8Fdc0kMdsIMwR9RfCIplKW9nM1r8WKxuYjBBSB
         hEUBggYGwvn6Tex2JFV7fR2Rcg/m/jwGCWUgRaMv640c9m89anTSNFHzxBCUPGFqMZms
         R50mH5YzNG76Bhfv5nl10h3J7UWc9hLwYk3kgypUcPsShskANw+NZgDblJ72oObdh/wQ
         zNls4TAiULpKSr7OwMwRzpUXVxKqUh8RpTCcYkwdm+6yvv0eEXNEuCbMIfTO2U1bZ8gK
         2ROw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lqW4OyYI;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yH/jD5H3SCeRX0V0cmWyexMHb7AQIBpD2AmbnVzK5B8=;
        b=CALW4jfK68xrSfVO1XQeSD2EDR5DC2jfEqCQ9uFWR3odHxbRbB8aj6qiMqW5wKQCuK
         6208YbGdr78KQ1lw+mNkboD0KU6dVH0z2xsXcl9kaMHK6zozxcWx4Jt1CkFVsH58Bx/g
         9RSLN5BnyJssEZePoS0IMnPSQQLdPzerPS7v2Uz82LWnouyCkTjZsuXUtZjQuNh2jzaP
         juwlQn/wxasPjH9JxkAUHocbJKoWfFs1OBUy6MQxrHzP1U9rdfYNiTOKwTuma5z3DOSn
         KWt9rvMECTz3xBjLKciV+JE0SN2wEg6VVRDHhz7jIbvV6XL3RKKXkGZSrpXp8a/iQSbS
         ErqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yH/jD5H3SCeRX0V0cmWyexMHb7AQIBpD2AmbnVzK5B8=;
        b=INPgJjq6x/9BNJDyocdloJzrVUy6bIwwUqRbAfs8N6Eyk2zZ1jaNfcAivB6iuz0LMf
         C/rLKA5/B+SBBJjxwFxXf24zPaAXk6B6frB7xac/7R7KZaW53k5Ttl0A/W+zaCRItGA5
         JLksWOVBUCkdaxfRLZAilC5xceHs7frx8TMV3ZWFeldszJ8uGRMCI4UpkWDkUwgjATSS
         2EmBEIvTTmELGVfxrAhwOU7eCfx2ECZ76TOoOenfTHVw3Nw7Q9ZFPp610ZO7E117sNdb
         UfrtF4bkev439/fX9GURzFlbsj8tWHLQTmC0BMFPshpxwPSzeiGRdUfiiPJSws2TFKt0
         TlQA==
X-Gm-Message-State: AOAM531ICT+IS/aJwKhbC4AugXuBo5ga77QsljvfdmQD72U1AMoP/egD
	kwELlJ3nLblT3OC4//aG0BQ=
X-Google-Smtp-Source: ABdhPJwdE45YQnj0SLIHPc2VHJKN9XW8vT6xPsaDh57BuCnl9XM0j2rTPsZSS0m60IPY+WUczt5WJQ==
X-Received: by 2002:a5d:6d04:: with SMTP id e4mr29252437wrq.344.1622570017549;
        Tue, 01 Jun 2021 10:53:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6dae:: with SMTP id u14ls2984982wrs.3.gmail; Tue, 01 Jun
 2021 10:53:36 -0700 (PDT)
X-Received: by 2002:a5d:6c6f:: with SMTP id r15mr28459715wrz.79.1622570016600;
        Tue, 01 Jun 2021 10:53:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622570016; cv=none;
        d=google.com; s=arc-20160816;
        b=lXK8jS+PlPd6PSNuN7zCiV8P0WPt7bjGZOzji84jRg/0ZLPHPlxSGqJBOpV4jC/uuB
         SqtKkiZAi1o5D4r1u0Vz3/S5jLVOrK+Z0jgdOhUfmUiAr8XKWQzJGuDsL7EjNtFAiRI0
         wjRLuGTbUNRejBT4ybCU9EutDoWj9dTggLXfSJHPZ2mCUr3OuH3f4LUdNI89yflQ8VHT
         LCMHAFjE0gY7a26yVAswm9gwRRGd5RPGsf2LG0ROndht9lpCzT//AO1wEqy9IE7XnhyV
         3n0fVh/IKLfLKjj0TDPDYxf0jzeYreyC3Hdp1JlnXnrdzkObqm6nD3DYWXXaHdy1ya//
         WvCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IKgq4o1KMFQWb4eqWEtxAreJyLSizVw7xMXtspskoP8=;
        b=lh7iKvpQIr186Zz1fBTP4Cy+JxmC2LF8MpikUctOgc+vKRHt61/FnpMCVQ9pzYINd1
         p+yGp9utGRhoDy+bwxPWX6gd7cT6AwDPVro2+DjQLAuk7MpW3J/Jj1Qdez1blPBr7bbG
         RXgdsj9avHbq398Qse9l8kJmrLp5SLGA769F8jtVaJo0WOmWGVixBftX5ltqBOf0EtTx
         kFrsHxDqYg20c1nq4Gn71rXi49Dnv7oA63Qa8b2AitLHivCA5TYUTCq0gnrSrg/aX+OH
         s8q+X0OBCddxgiUZN0tFFXES2QQp8Lrnwih5YUcPwqQGQyx0MglQTZUe+WSNXONe22Tm
         vKEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lqW4OyYI;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id c4si155534wri.3.2021.06.01.10.53.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 10:53:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id i10so11107562lfj.2
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 10:53:36 -0700 (PDT)
X-Received: by 2002:a05:6512:46c:: with SMTP id x12mr5528836lfd.203.1622570015793;
 Tue, 01 Jun 2021 10:53:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210527162655.3246381-1-elver@google.com> <CAKwvOdmgZXJB2dV7iG67qHgbDgVTJaH7b3dkpgZyea4ULgQjgA@mail.gmail.com>
 <CANpmjNNqzCTks5dFkbbqzPP4UX7GDTdjbvJ7SbN2jcSNWjxQzA@mail.gmail.com>
In-Reply-To: <CANpmjNNqzCTks5dFkbbqzPP4UX7GDTdjbvJ7SbN2jcSNWjxQzA@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Jun 2021 19:53:24 +0200
Message-ID: <CANpmjNNXepu4=9Fgzdu9g8AzNQ_vfZvAf=AFOAfbWg8e8qzxRA@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=lqW4OyYI;       spf=pass
 (google.com: domain of elver@google.com designates 2a00:1450:4864:20::12e as
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

On Tue, 1 Jun 2021 at 19:46, Marco Elver <elver@google.com> wrote:
>
> On Tue, 1 Jun 2021 at 19:42, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > On Thu, May 27, 2021 at 9:27 AM Marco Elver <elver@google.com> wrote:
> > >
> > > Until now no compiler supported an attribute to disable coverage
> > > instrumentation as used by KCOV.
> > >
> > > To work around this limitation on x86, noinstr functions have their
> > > coverage instrumentation turned into nops by objtool. However, this
> > > solution doesn't scale automatically to other architectures, such as
> > > arm64, which are migrating to use the generic entry code.
> > >
> > > Clang [1] and GCC [2] have added support for the attribute recently.
> > > [1] https://github.com/llvm/llvm-project/commit/280333021e9550d80f5c1152a34e33e81df1e178
> > > [2] https://gcc.gnu.org/git/?p=gcc.git;a=commit;h=cec4d4a6782c9bd8d071839c50a239c49caca689
> > > The changes will appear in Clang 13 and GCC 12.
> > >
> > > Add __no_sanitize_coverage for both compilers, and add it to noinstr.
> > >
> > > Note: In the Clang case, __has_feature(coverage_sanitizer) is only true
> > > if the feature is enabled, and therefore we do not require an additional
> > > defined(CONFIG_KCOV) (like in the GCC case where __has_attribute(..) is
> > > always true) to avoid adding redundant attributes to functions if KCOV
> > > is off. That being said, compilers that support the attribute will not
> > > generate errors/warnings if the attribute is redundantly used; however,
> > > where possible let's avoid it as it reduces preprocessed code size and
> > > associated compile-time overheads.
> > >
> > > Signed-off-by: Marco Elver <elver@google.com>
> > > Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> > > ---
> > > v2:
> > > * Implement __has_feature(coverage_sanitizer) in Clang
> > >   (https://reviews.llvm.org/D103159) and use instead of version check.
> > > * Add Peter's Ack.
> > > ---
> > >  include/linux/compiler-clang.h | 11 +++++++++++
> > >  include/linux/compiler-gcc.h   |  6 ++++++
> > >  include/linux/compiler_types.h |  2 +-
> > >  3 files changed, 18 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> > > index adbe76b203e2..e15eebfa8e5d 100644
> > > --- a/include/linux/compiler-clang.h
> > > +++ b/include/linux/compiler-clang.h
> > > @@ -45,6 +45,17 @@
> > >  #define __no_sanitize_undefined
> > >  #endif
> > >
> > > +/*
> > > + * Support for __has_feature(coverage_sanitizer) was added in Clang 13 together
> > > + * with no_sanitize("coverage"). Prior versions of Clang support coverage
> > > + * instrumentation, but cannot be queried for support by the preprocessor.
> >
> > I'm not against a version check for supporting older releases (in
> > addition to the cleaner feature check, since the feature check was
> > non-existent); we can clean it up someday when clang-13 is the
> > minimally supported version.  Would having an additional version check
> > help support existing/older releases here?
>
> The feature check will just return 0 on older releases, since the
> feature does not exist there. Therefore, no additional code is
> required to support older releases and a version check would be
> redundant.

And to avoid further confusion: -fsanitize-coverage exists, but the
feature "coverage_sanitizer" queryable by __has_feature() does not
exist. The confusion is the price we pay for this technical debt --
but I'd rather not write an essay about this in the comments. Most of
it is in the commit message, and if people are still confused I hope
they find this thread.

There was also a v3 explaining this more in the comments, too:
https://lkml.kernel.org/r/20210527194448.3470080-1-elver@google.com

Hopefully that is all enough.

> > > + */
> > > +#if __has_feature(coverage_sanitizer)
> > > +#define __no_sanitize_coverage __attribute__((no_sanitize("coverage")))
> > > +#else
> > > +#define __no_sanitize_coverage
> > > +#endif
> > > +
>
> Thanks,
> -- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNNXepu4%3D9Fgzdu9g8AzNQ_vfZvAf%3DAFOAfbWg8e8qzxRA%40mail.gmail.com.
