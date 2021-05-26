Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBVWTW6CQMGQE57NJIJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD0D39109E
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 08:25:27 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id u9-20020a05620a4549b02902e956c2a3c8sf31877123qkp.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 23:25:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622010326; cv=pass;
        d=google.com; s=arc-20160816;
        b=rwdwhbRPXGW5JzXauCsJmhMwAx3jN4wCAzLiEE1LhnykjjwTCGGtRtrAO+j4Oh0esZ
         Ka3aW9bFGfsBAfZ97uhs+lgQBMU7A2vNdPP/y3TasLokGuEfxSHDAgKQUPZZKj+C4M6e
         27UPcfLf4zXrbk3oHCpOGm3RLf4fQ4i3scSoBHX6tzl7GHGwJpYmJHyt2CJwPHc7f/Zj
         /CLuq1AyF8i8PbwcKdmnpgi++6bgBQXiDwM4BiQDo0JW172s6YVueryIA1PVhmFLW+Ds
         JcpBD5v2xu+CiWSuEDz6JAC06MrxK4N8fLTk4msgnodXPRAEo6HQmGFDIqsCz5WxV8VP
         h2Mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Z9c9J/96QzEiHYjcE7g7PczMO79Kbb3ovM08pFPNOLw=;
        b=AicfhAhgMYJN6TkYBO7SHDSPbba13f9ZbuLplkFGpeWULewoAjw8srxDVTvDQecYBE
         W5Plrqy0xapN/YSPtgj12hShVRWcFMnmIUyCFGjdtpZd36FRLFhxWhBWOGiq7gt5yJra
         NFezHLbFEqbhg//cgSlrez1DmV3wgKG7UHTiTs5r01XBCaIN0I08APHiT3UZL/F75xKU
         e1vlRf48HW22KF+6T9FWJY+lsjEFO3d9eX99ABmcsRSp9K05jPJIUgG84APS+kyhoYbL
         4937wXUeYd+imklFCQ7blPImyeFzzCRZPvvlJXQk2chcC9fe+uWSmJFEcy40SqUQkS6q
         3yQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q4O0S5sA;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z9c9J/96QzEiHYjcE7g7PczMO79Kbb3ovM08pFPNOLw=;
        b=QFv+GQwrhj3N3kKsJV+IRAC6utdHXggEgWDimyfeYdCm1+wu+ChY3cVUVnYyK45NvE
         hOt30kuNXLkKLBiwvX8bh+QwmwDsUcBHuaeI/hOMAFII2lpjrKJSu9fceWhkSavDbNdJ
         64XnJ0zDfACHQhidARi0om6iljeFQ6G/2rS6jthM7gz9cJF5T9LU7FWz6dSCPIzV0Zrs
         cb/N1RDaJxXNoLRa47AGhn2wkkBm7aWClJzmRgj1xCNj4yJhiLzFK3igBQiieqXqfW9B
         yPu+XCAI2nRafNwz4vAy5HVuP4tOV7FAFqcnmIX01gary2qbrurZPwTA6h0W4iccwIaN
         PzLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z9c9J/96QzEiHYjcE7g7PczMO79Kbb3ovM08pFPNOLw=;
        b=rxhLdz6frL3MqQe7sStJwZ4YjbzpUGyVAc/QFlmIlSXThKDV7RolTCk7zUkjmEgJCS
         408vHIieSuLNiAlf+MR6/IVHJTGZP4RZW2ZWNP+6ZRKd8O6KF58maNE94i3Qp3YJI/rd
         4//W3lbp95abxoxpOmd+WUeqSoUYjlVNYsq/tOT/WHXuog8aSqeJAwxVE6L2JMcFacuB
         09J7cE36go51sm+mUciWTbfoLMCrXkp+rQKkbfKgBP1Jg9Y4308jRNjr365xrjSF5hFZ
         3F+N+3+mS3x17iR/4/tb4WBmd9S6Xc1a4l/AIupPr7ZtcBxPziVD0VsTap4hqJBeKq/f
         EnPg==
X-Gm-Message-State: AOAM5311S5dkX3pUeKe8Z/yVLoYcqA7ykBIa0UGmnjCFyPOFXgUTSqXV
	36BWZl9gJ73uLHDwCj8RBo0=
X-Google-Smtp-Source: ABdhPJxUN0zqYNJO2Qgtx7gj3vIEP3pJpq3y5947k6lJZu+oDzCQ3/CvZt6+aYGuK6+ROYlu08krgw==
X-Received: by 2002:a05:6214:a6b:: with SMTP id ef11mr31125580qvb.19.1622010326158;
        Tue, 25 May 2021 23:25:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5a45:: with SMTP id o5ls8728481qta.8.gmail; Tue, 25 May
 2021 23:25:25 -0700 (PDT)
X-Received: by 2002:ac8:65d5:: with SMTP id t21mr36316458qto.269.1622010325663;
        Tue, 25 May 2021 23:25:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622010325; cv=none;
        d=google.com; s=arc-20160816;
        b=pbA558NwfJa8Td+UEWYvsdRi40UgFy429kkVeqXk3C7/cl9cGs5TgGxq1Qdpa5dH5k
         8hb9SvFILNfywQqTOU8bcisDsw7d8CuXWNTHFWklQErNFlMyQNRsfR38rEHvb+7YdKcr
         KTKyKO5nI8MmfalctUlWqprUTshs4OrtN39qR+9IkTTyYppZI7t2gOa5aTKnjMl3tvHa
         AkFrKp55bPfHAihF8vFEm9t0X74asohJZRlHJiJGpeWL1fCEo8pEGT86I4E3dsGxU9qY
         7TCfdtV9w044lK+YMd51ztNCCZg7tT7WRsw0WKJrccsZKd4BVnh5uu5NxAo8uFBr2oNT
         XEQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WpFGeM+BH3Mgu7E6GssVzw2HhPZxd2Kqk2VIWf3hIA0=;
        b=Mnj3iJoaaGo8siGg1Fo1hRkfSPOSESZElNpoWBlr1Mere5cuvPiFofxrMQ31Z6vcnJ
         /6vsdua6ci4q1iz5UCZxxvoGq58tOXPKyM5mixZ8qTdwavEf0J4BqNxi3uamBs2Nq4AS
         sk8RKzuyXN2eFeh30KGFYLJzoe8bUzs4rjEMQl7Nf1HdpLeK2amsMejzD+KmpGGqKd9g
         bA8L+FFb3lPuu3iMWDQzjHuGfYfNPD2hlSXjI5bsJojsRoBWx3gEtBFYXp2ZzTH4oDJ4
         nw/GsSzbpizhUpnSNzg3S9cI5Rdbp6y082h7aG9FRS2n1gQvcWM7PoV9cGcB261nidbB
         QApA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q4O0S5sA;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com. [2607:f8b0:4864:20::234])
        by gmr-mx.google.com with ESMTPS id y5si127121qtn.4.2021.05.25.23.25.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 23:25:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::234 as permitted sender) client-ip=2607:f8b0:4864:20::234;
Received: by mail-oi1-x234.google.com with SMTP id t24so518274oiw.3
        for <clang-built-linux@googlegroups.com>; Tue, 25 May 2021 23:25:25 -0700 (PDT)
X-Received: by 2002:a05:6808:10d4:: with SMTP id s20mr858862ois.70.1622010325003;
 Tue, 25 May 2021 23:25:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210525175819.699786-1-elver@google.com> <CANiq72krX9PU14wFsQyW_CJEjTS-TT8wyhBVZZbC132Gz5XO-Q@mail.gmail.com>
 <CANpmjNPGUAv-d3yEusyF11ip0zEdht7eMGi4pSoQsRYns-MvJA@mail.gmail.com> <CANiq72kCkej_ONwSWjRHWLVrr+g0BZygAUAQVx+FQf7DEdg3cQ@mail.gmail.com>
In-Reply-To: <CANiq72kCkej_ONwSWjRHWLVrr+g0BZygAUAQVx+FQf7DEdg3cQ@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 26 May 2021 08:25:13 +0200
Message-ID: <CANpmjNM_fP-ziy204=1rd52hOO4WfCsxAwQgJ-t1WF_yFo=UzA@mail.gmail.com>
Subject: Re: [PATCH] kcov: add __no_sanitize_coverage to fix noinstr for all architectures
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: linux-kernel <linux-kernel@vger.kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Masahiro Yamada <masahiroy@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Dmitry Vyukov <dvyukov@google.com>, 
	Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Q4O0S5sA;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::234 as
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

On Wed, 26 May 2021 at 03:54, Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
> On Tue, May 25, 2021 at 9:13 PM Marco Elver <elver@google.com> wrote:
> >
> > Long story short: this is not fixable without more Clang changes. The
> > only way to do it without a version check would be to introduce
> > no_sanitize_coverage attr to Clang, which we probably shouldn't do,
> > and I didn't want to fight it. ;-)
>
> I am not sure I followed why you would not want to support querying
> for the attributes (if they are intended to be used separately).

Not my decision, but some historical decision in Clang. Somebody
thought "no_sanitize(<string_literal>)" simplifies things. Hence,
Clang only knows about the no_sanitize attribute but not its
"subattributes".

> But regardless of that, why not the feature flag at least then, to be
> consistent with the others?

__has_feature(coverage_sanitizer) does not work either (yet).

> Going back to version checks seems bad -- they should be reserved for
> e.g. known broken versions and things like that. New compiler features
> should come with new feature flags...
>
> In fact, for Clang, I do not see any version checks in code at the
> moment, so this would be the first :(

In this instance it's absolutely required (for now). But if you don't
like it I'll go back to trying to fix Clang more. I'll check with
Clang folks which one we can implement, the feature check or the
attribute check.

> Cheers,
> Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNM_fP-ziy204%3D1rd52hOO4WfCsxAwQgJ-t1WF_yFo%3DUzA%40mail.gmail.com.
