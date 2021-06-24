Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPV52ODAMGQECHGAJHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 382C53B3712
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 21:36:31 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id l9-20020a0564022549b0290394bafbfbcasf3926471edb.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 12:36:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624563391; cv=pass;
        d=google.com; s=arc-20160816;
        b=KtvNwzw6AxxOPgejpz6JrbTejTs8AOaoyBkKpxxKPQvwTAS2wFQ9ghIbJ9+VdcKQVi
         PKLDhlxVBAAEJxalkzKZdR9320V5/sOW87yl8x6yyPUS4iD++oj3C+Pe1ZRFibXR7YrN
         i06/o2cHEa6kfbh36DdRURF/Aj/6m227NtlDDQGhCy3nYuhS2vKBxx9FxOPNx6eFJYWG
         pDSbH6UpGLYiyUSi8UZij2bwwLB6TjilgKtY2gZBUj5/JeWNR9Qgost42nSrXjMIL6fz
         7iw28Y+Xn2QLEPLVKkDVuxayHM/TZWh/DMSSyy6jWNSfa8T4jLrlBA20jLQ4qWmgzDJO
         Fnsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=x3Z0aLR17Pq+dCOn0XnsmrNb4SA+9siscIKO4y9xueE=;
        b=YnxKJ3sa7KNrVW6uvv7UjGn3AKJRlVzEraspmIjjmBP7PqjQpLiNTWTk+pgexay8+n
         9fF7d+KnHxpJu1fnbitI8lceZM0oYOXPOBXVgov+5+ZhfHDH5Xqj9zqcHj1ctPyT+5KK
         sNcApN960/3fKCLqzavc8UpDDkyH3boqOLaEvYMSRwDWrSC8+hTMNUTvodDcDa3r9Jqo
         giZXzIp5a2nc9ZvOiavgJqO1qhkDmdlWQLvQPCbzjzXivFf6R57UcpBcowpsHG8KGExs
         ULG2vggxzhVdKka4G4RcH9xwpmX6LKfUht0VcsFvFqXTiTKJAaxZRXs964tcu5WJezex
         8XnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dYwgZ9h2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x3Z0aLR17Pq+dCOn0XnsmrNb4SA+9siscIKO4y9xueE=;
        b=M6+2TyxkqozXG46rX7uVsp1NRJK8ZfXP8NFUsTZWRGRIyU1AlKp3PE6SuQ830n/jMD
         qadDj8VEjKHRsqBTiHU/IHr4qWoj8MlWvezC0XS1nQKlGgXBBrnO0N2LuHxGgAvSZm7A
         z+ZL+rr/QZhjuYwsoJWx2udotBwr5M7kjl6jxWQvgtXJ6B8rYh6CTGym8iygj3RjwuKs
         n59lTM8AaRsAz4h6KyVkD9qS+grgYWt0SmRD7lRiltzXDPUxBWAmxLN2xM+nJzjdiFDg
         BZzj16TZGih207YyhCQYLA3rzEhvdMo+y05E0rnEKJ0YPxvOouBuxw7g0wTxbeZs8R0O
         FO4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x3Z0aLR17Pq+dCOn0XnsmrNb4SA+9siscIKO4y9xueE=;
        b=fFcVZLq70tl77S6ZJuom3HVNc1FAOScUKCpUnqrPki9ED0byO6n3bjayok1QU+cg80
         P1COYbAk6oCAHhDtPvy7aKPsL4zd1jgHpi1rCGI6urewggVIBpufxVQvpOqlk4w6uvY+
         UHcrVCB1no3GuAk/tUsOc9E/QkhO2GT9UA2zfxCO68JHNhNU/6vpwC/wuMVXdk4DOt/l
         MDcONCNTeIrXBjX+sKofhMbrsnPQ5iLc0s5l5M7VLC517mpSEvE0qvBVj9JBVj9LTtf6
         bMf2loxMOL2nFSQCkagrC7lwIZlQQ5S2qoTJVloYN5meaSsOVNLGigkPSPNynOf2nY/h
         jg+g==
X-Gm-Message-State: AOAM532WgWfIqrclpSXN1uL4Viz3T0QkzDj797DGloXZf6qox0APakiQ
	p0bsxOC6pHyg3rSGkswNVV8=
X-Google-Smtp-Source: ABdhPJyIVRRko1x8m3oyU5Xx+taef7bJT/6oIjQiAhD+jZXwkpaGON6BlvTKiWCdhgHI5eZt6wu9DQ==
X-Received: by 2002:a17:907:1ca0:: with SMTP id nb32mr6668036ejc.105.1624563391012;
        Thu, 24 Jun 2021 12:36:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:90b:: with SMTP id g11ls3828899edz.2.gmail; Thu, 24
 Jun 2021 12:36:30 -0700 (PDT)
X-Received: by 2002:a05:6402:10cc:: with SMTP id p12mr9540634edu.328.1624563390155;
        Thu, 24 Jun 2021 12:36:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624563390; cv=none;
        d=google.com; s=arc-20160816;
        b=Mr+LEtSheZxos9dOwWrzGbTJDqB4gP+5BbZIqkr8fYu3cd88ex/F/mhoZ3U80dS5wE
         Tgz+eSPeG8Sr3gP35ps8e/bV8XGrZ2e6+H6VSLCyGNfHwuB5xPJJEfkvZGEoxZANIFXq
         /igPNFx2S3uM3YePb28gTALj6GgX3W80ZS7p/NjNGi4UyeW+CHQ643wnpHZv49xljDt7
         ib+2WiciBFk/SowvVriAKfmeVdC/ooEINA6cnPL/mbhE8W2exiTDce4NRYcnIe7zrX9R
         Ues7mOFBghUG5y1dEso0Nwa2J0mwveBYNDZEd14oDUOn/U4/4XGhDKIx48Z924d7PMpu
         SArQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DBxJ+5KzUAKH3jFhz3Iwj54r7FIMmamDMI5BPojMuJc=;
        b=XKg+IXYBZ9eqDEreh8Wquwoiz36gQn8s1LoEBQRAwqjdYLfMhjXo61LIK56QpaDY3j
         DEOqcc+GY96EdhmWzU7/58u7KMHuk48YBX2YMaT2paGSygjfwvB78ydtELDRz7YDdleR
         PEC9t9eR2fgJlQWYnSX7IBoOHuk+uXmYkLxuRtZAlZ2UZ4uwl/Qar4upVHJGFJDFfJEH
         dwVa618GLEZjfKV3/IE3nqB6lXZrO0iw0GP2k0GUbZl+vnYAiZXtLWCY5UtRfiaok1vO
         nuW+kodezLVfYEuH4uMgt3iqKvxKKvDvY3l7pAqAnODVO3qzThSuaVY9BiBmcIYzDqdD
         B6ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dYwgZ9h2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id s18si103221ejo.1.2021.06.24.12.36.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jun 2021 12:36:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Received: by mail-lj1-x232.google.com with SMTP id d13so9245084ljg.12
        for <clang-built-linux@googlegroups.com>; Thu, 24 Jun 2021 12:36:30 -0700 (PDT)
X-Received: by 2002:a2e:92cc:: with SMTP id k12mr5168790ljh.116.1624563389245;
 Thu, 24 Jun 2021 12:36:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210621231822.2848305-1-ndesaulniers@google.com> <162442894704.2888450.8087873021886781652.b4-ty@chromium.org>
In-Reply-To: <162442894704.2888450.8087873021886781652.b4-ty@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 24 Jun 2021 12:36:18 -0700
Message-ID: <CAKwvOdkC4E5AvyrWzzN4q3xjceHZG3xQSjO6tp6vGK5Yc204YA@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] no_profile fn attr and Kconfig for GCOV+PGO
To: Kees Cook <keescook@chromium.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Vasily Gorbik <gor@linux.ibm.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	linux-arm-kernel@lists.infradead.org, Nathan Chancellor <nathan@kernel.org>, 
	Fangrui Song <maskray@google.com>, linux-kbuild@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-s390@vger.kernel.org, Peter Oberparleiter <oberpar@linux.ibm.com>, 
	Borislav Petkov <bp@alien8.de>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Marco Elver <elver@google.com>, Christian Borntraeger <borntraeger@de.ibm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Heiko Carstens <hca@linux.ibm.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Dmitry Vyukov <dvyukov@google.com>, 
	Bill Wendling <wcw@google.com>, Arnd Bergmann <arnd@arndb.de>, johannes.berg@intel.com, 
	clang-built-linux@googlegroups.com, Jonathan Corbet <corbet@lwn.net>, 
	Martin Liska <mliska@suse.cz>, linux-toolchains@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dYwgZ9h2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232
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

On Tue, Jun 22, 2021 at 11:17 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Mon, 21 Jun 2021 16:18:19 -0700, Nick Desaulniers wrote:
> > The kernel has been using noinstr for correctness to politely request
> > that the compiler avoid adding various forms of instrumentation to
> > certain functions.
> >
> > GCOV and PGO can both instrument functions, yet the function attribute
> > to disable such instrumentation (no_profile_instrument_function) was not
> > being used to suppress such implementation. Also, clang only just
> > recently gained support for no_profile_instrument_function. GCC has
> > supported that since 7.1+.
> >
> > [...]
>
> Applied to for-next/clang/features, thanks!
>
> [1/3] compiler_attributes.h: define __no_profile, add to noinstr
>       https://git.kernel.org/kees/c/380d53c45ff2
> [2/3] compiler_attributes.h: cleanups for GCC 4.9+
>       https://git.kernel.org/kees/c/ae4d682dfd33
> [3/3] Kconfig: add ARCH_WANTS_NO_INSTR+CC_HAS_NO_PROFILE_FN_ATTR, depend on for GCOV and PGO
>       https://git.kernel.org/kees/c/51c2ee6d121c
>
> Note that I've tweaked the series slightly to move the PGO Kconfig change into
> the PGO patch.

Ok, LGTM.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkC4E5AvyrWzzN4q3xjceHZG3xQSjO6tp6vGK5Yc204YA%40mail.gmail.com.
