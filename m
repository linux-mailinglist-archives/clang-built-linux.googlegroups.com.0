Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBF6ZY2DAMGQELK7VHWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id D181D3B0025
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 11:25:44 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id t18-20020a67bc120000b029027205cd0f2esf1753371vsn.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 02:25:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624353944; cv=pass;
        d=google.com; s=arc-20160816;
        b=XSNtR2PGE6feC6sBy+2z7nhX8CukQRsyDdnEoDncqM7iUQfqfvQs/DGiHNNFDrz4w3
         mAg4Ef0IaXK/nmlnU+wgtJhitiNg5CdSDHhS/4ISWf3hsnCdrm5EbBwrWwIPVIcb5yBX
         YDsd6eKDNdsMB5eqZOpmIVMAEpNwZlm6gkPCVpa8mAFsdCzxZwy0VM6AIceMQFLSA2w9
         ay3aiCNlUtX+vZD0HJ+bpKt9Qyy6qbLNcpersXxDxuP19v6E8/SjJwNgaSKdV3eMYG7j
         6sj0NeDywmZwOYDRO1NZZSwSXxRqLdz1eOLJix2Lc/atUJO5O0wPVeD8NxRt/WAzVfJ7
         XB7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=K0qs7gdtDNpda25llUA9XNoclRyQpMTVCdrTipnKqh0=;
        b=lvnVgARqTeqPzR4XWdqnNkvSBFq6i39RmZtLgIqcdegUwyPez8f9YunQ3rK8fvadzA
         SfKP6EyblqlMcvScBuOFCwAaZU+iYlNAsJOM0yqjLtVby67sa+Pe3en5RRfH8LFZEMny
         lHNurC0AKDvAZHgBMtCsODLb4jITVoZBGqF0u1BdAgPWJrt0sfMCJZA0cAysU864LJAN
         u+xxRTWgudcQ5vjZFgDOffwLl1Cde2rMpshmTowdpxrAITFQQIvgZtN9v0DSvQbZz+jY
         fLoKrMrxdFkhwelWrs3EBDbU0lP6E77gOE+Z+pXyrj593SZ9oIHDW/AnBjkDD462VU2h
         Wviw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K0qs7gdtDNpda25llUA9XNoclRyQpMTVCdrTipnKqh0=;
        b=Ofg8yb633us3Rj3Az9BXuF81HuygU7AOpQZl8ap/87jjef0EUL8JaAwTmWkisXBaUa
         nDwhcAQEsa1UtqGyO58gtDAl0TwCN3Sh9mLlg4kiHcHFCg7zK0NyyKEFyOJ76d/xviDD
         Z+G5N5DvEnxIUKQmd6+JYTWVerfAa+Z6LHNf0SV2sei1T8DbsyAJEsgB8rQGbvOhkazu
         hziWeh8lXJjhoSOM03/66vB6AFWLCW+9/P5l2d87kt7wPtIDUQMC0yDHZ0dOwphJ8ldl
         86bSYvXJ/J8Z+tduYVMSzzBGTgobgHEBmnpqqVuDv9y1zegqJ+pH+idqCgKPi6Y6NmaJ
         VwZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=K0qs7gdtDNpda25llUA9XNoclRyQpMTVCdrTipnKqh0=;
        b=gJT8pTf4eCAkNPFLpYqGWn203liKZqzUtI368yB8YfcXZRExKzGD0NV4jiUADzTaq0
         5KqMVKwZwrYBEXsFdZAtT1jMb7e+7XdyZeQCAiNx4G4dKMhJvaI0Ftr9B/nZ5mdR6KcC
         2c77xbbr4POo2kBj3+wZhouX7BlBzGFi67XnKbOjQtVuzLkpw7GjbGfwKircxGJM318r
         SUJZ01kj0LcDyvg4SB0CnMfkzJzSWA9Q9A0UMYdBoCOa7vu5GdWkH6dRsk2ABu3Iy//5
         hCTyhuLZIOgrYhLYBH0f88sJ9CgStZbJGdV6vQuZrUX0Nc2FMKUabYGVsc8sOq4eYBPr
         kbsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309+aKIioNeAlfFADWYG2l3jrKY+fhzo7c5RKIvQtdOQZlLF8MT
	P8w4aMRf6Za+ju/r0guGXMQ=
X-Google-Smtp-Source: ABdhPJw566pRfvdagOihYxYqQgrHdM5LcwNfSPkTjW+5Id2DTmPQy8gp17uaIZ5at00CxqiYDudOEw==
X-Received: by 2002:a67:f3c1:: with SMTP id j1mr8709478vsn.43.1624353943821;
        Tue, 22 Jun 2021 02:25:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2fc3:: with SMTP id v186ls938407vsv.10.gmail; Tue, 22
 Jun 2021 02:25:43 -0700 (PDT)
X-Received: by 2002:a05:6102:10c8:: with SMTP id t8mr10027148vsr.27.1624353943185;
        Tue, 22 Jun 2021 02:25:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624353943; cv=none;
        d=google.com; s=arc-20160816;
        b=bGZersrg9mb7kjAkTaA8pj8qLVu0DmtlvmV05CvZqRQddVpX+u9yo6zE4yRLnTi9S5
         +JkSfR0YszvUssVxmog+bqIqq7OKEUEbViV0RD8s03B5CslpOJRKHc6DoIgtMuDGU5hT
         i7Jx1H82y2mxKpaDDz2BT0hIPYAGqntE+hYMkvFkMJdTDrsAwXwepwDC6IDdcnTKJU8W
         V6sXHe/nL3sSrE6Bm33XJXHffBeoOiWwRjhqQpvN8pmERq/n8cyK3tXpa2hvZsokoodv
         XARlxjTRhPNELcB2NZXqoj418XrxmuzXlXoi2b4GQ+/W0DSAkRrPdPnjfSYSlX63GAWE
         5l9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=BgqbaGp1pJxi8LtMDQNlYlTHDN7N5mQvZWm8Q69Qgpk=;
        b=SulokO6puwM59Ed+UP1XMGtbHy7XpJcpWN6Gg+Zmp8dT2NEcO72WB5DYNpWwt805oS
         ysVYrQbrSHKM1QLA4gdvFDzbf7/va++CyFM/0sySeI8pMIHdp7WfQ1lISjiDQMeojqYF
         wPfL/L2CbykPceSBTlGDoJF1lkzAUj9smYmCvOhF7PubvhNhSQfog3SrTx+WLL8bb9X+
         gT7VOZx9poT3qPeQETY1mFEYwDAt9AAUyHobZXTVzhdHN/3G39bX4R+bRUz7okCQe/FA
         KL8+iUcyW40cCVGpDE7ZAI2CaeYuWP7R6iqymlI0faoBxmaH0V7PG/exf1V+cc8ygEZE
         tZqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g20si132883vso.1.2021.06.22.02.25.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Jun 2021 02:25:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E7FB76128E;
	Tue, 22 Jun 2021 09:25:36 +0000 (UTC)
Date: Tue, 22 Jun 2021 10:25:34 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Bill Wendling <morbo@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Heiko Carstens <hca@linux.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Bill Wendling <wcw@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>,
	Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Johannes Berg <johannes.berg@intel.com>,
	linux-toolchains@vger.kernel.org, Marco Elver <elver@google.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-s390 <linux-s390@vger.kernel.org>
Subject: Re: [PATCH 2/2] Kconfig: CC_HAS_NO_PROFILE_FN_ATTR, depend on for
 GCOV and PGO
Message-ID: <20210622092533.GB3555@arm.com>
References: <20210618233023.1360185-1-ndesaulniers@google.com>
 <20210618233023.1360185-3-ndesaulniers@google.com>
 <CANpmjNNK-iYXucjz7Degh1kJPF_Z_=8+2vNLtUW17x0UnfgtPg@mail.gmail.com>
 <CAKwvOdmxGt6nAj+dDZEPdQtXNbYb8N6y3XwoCvCD+Qazskh7zw@mail.gmail.com>
 <CAGG=3QXeAxaf0AhKsg8P1-j2uHOoXne2KCOCEhq9SKa-e2dnag@mail.gmail.com>
 <CAKwvOd=9oAGPeuQmWnAMOxZn2ii_CRmyWnheoyXGcd09-U_CwA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=9oAGPeuQmWnAMOxZn2ii_CRmyWnheoyXGcd09-U_CwA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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

On Mon, Jun 21, 2021 at 01:43:54PM -0700, Nick Desaulniers wrote:
> On Mon, Jun 21, 2021 at 11:50 AM Bill Wendling <morbo@google.com> wrote:
> > On Mon, Jun 21, 2021 at 11:22 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > > On Fri, Jun 18, 2021 at 11:23 PM Marco Elver <elver@google.com> wrote:
> > > > On Sat, 19 Jun 2021 at 01:30, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > > > We don't want compiler instrumentation to touch noinstr functions, which
> > > > > are annotated with the no_profile function attribute. Add a Kconfig test
> > > > > for this and make PGO and GCOV depend on it.
> > > > >
> > > > > Cc: Masahiro Yamada <masahiroy@kernel.org>
> > > > > Cc: Peter Oberparleiter <oberpar@linux.ibm.com>
> > > > > Link: https://lore.kernel.org/lkml/YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net/
> > > > > Link: https://lore.kernel.org/lkml/YMcssV%2Fn5IBGv4f0@hirez.programming.kicks-ass.net/
> > > > > Suggested-by: Peter Zijlstra <peterz@infradead.org>
> > > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > > > ---
> > > > >  init/Kconfig        | 3 +++
> > > > >  kernel/gcov/Kconfig | 1 +
> > > > >  kernel/pgo/Kconfig  | 3 ++-
> > > > >  3 files changed, 6 insertions(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/init/Kconfig b/init/Kconfig
> > > > > index 1ea12c64e4c9..540f862b40c6 100644
> > > > > --- a/init/Kconfig
> > > > > +++ b/init/Kconfig
> > > > > @@ -83,6 +83,9 @@ config TOOLS_SUPPORT_RELR
> > > > >  config CC_HAS_ASM_INLINE
> > > > >         def_bool $(success,echo 'void foo(void) { asm inline (""); }' | $(CC) -x c - -c -o /dev/null)
> > > > >
> > > > > +config CC_HAS_NO_PROFILE_FN_ATTR
> > > > > +       def_bool $(success,echo '__attribute__((no_profile)) int x();' | $(CC) -x c - -c -o /dev/null -Werror)
> > > > > +
> > > > >  config CONSTRUCTORS
> > > > >         bool
> > > > >
> > > > > diff --git a/kernel/gcov/Kconfig b/kernel/gcov/Kconfig
> > > > > index 58f87a3092f3..19facd4289cd 100644
> > > > > --- a/kernel/gcov/Kconfig
> > > > > +++ b/kernel/gcov/Kconfig
> > > > > @@ -5,6 +5,7 @@ config GCOV_KERNEL
> > > > >         bool "Enable gcov-based kernel profiling"
> > > > >         depends on DEBUG_FS
> > > > >         depends on !CC_IS_CLANG || CLANG_VERSION >= 110000
> > > > > +       depends on !X86 || (X86 && CC_HAS_NO_PROFILE_FN_ATTR)
> > > >
> > > > [+Cc Mark]
> > > >
> > > > arm64 is also starting to rely on noinstr working properly.
> > >
> > > Sure,
> > > Will, Catalin, other arm64 folks:
> > > Any thoughts on requiring GCC 7.1+/Clang 13.0+ for GCOV support?  That
> > > way we can better guarantee that GCOV (and eventually, PGO) don't
> > > touch noinstr functions?
> > >
> > > If that's ok, I'll add modify the above like:
> > >
> > > + depends on !ARM64 || (ARM64 && CC_HAS_NO_PROFILE_FN_ATTR)
> >
> > Wouldn't "!ARM64 || CC_HAS_NO_PROFILE_FN_ATTR" be more succinct?
> 
> We need to be able to express via Kconfig "GCOV should not be enabled
> for architectures that use noinstr when the toolchain does not support
> __attribute__((no_profile_instrument_function))."
> 
> Where "architectures that use noinstr" are currently arm64, s390, and
> x86.  So I guess we could do:
> 
> + depends on !ARM64 || !S390 || !X86 || CC_HAS_NO_PROFILE_FN_ATTR

I think you want:

  depends on !(ARM64 || S390 || X86) || CC_HAS_NO_PROFILE_FN_ATTR

> (We could add a Kconfig for ARCH_WANTS_NO_INSTR, which might be more
> informative than listed out architectures which might be non-obvious
> to passers-by).

That would probably look better.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210622092533.GB3555%40arm.com.
