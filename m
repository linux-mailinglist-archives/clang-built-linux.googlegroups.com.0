Return-Path: <clang-built-linux+bncBC2ORX645YPRBJPW335AKGQE3PDDB3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CC526166E
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 19:11:02 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id d21sf68416pjw.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 10:11:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599585061; cv=pass;
        d=google.com; s=arc-20160816;
        b=NhS5/ZVRygtMOUlR/ZdiDeube5v70UqUY8cX2mAhMabcgOggAgm947Fd77Mju8suWT
         +RN9aPlKAG0PkCMAmBGCWqxRiv2rkDWleXDs98LUPqUOEt3ApO1mF+UY8N1xLfU6wJSU
         CeqkSFsAhkmUhKUDS4Bl0ACK42sxOxiUOdtnWcvFutOvb/lbz6Au2l5R7SR6y+C+nQrd
         Cn7UaqrfsYGQ49IomdEMIZzHWDDHwqjQ4s1l6FUTFKvhfIcgvdzYTyZj0580fliz18AE
         UKiPBeEG15mPq47txkQSgzcfyauaOcowinwRgJL+Qv+z3TkLFdnHoWnfr0ddZrlocG/b
         LJyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=EU009Z7lfHjPsiTIbAYdNVuKWnlWQl+3ob/Me4grMtI=;
        b=MiOFa/5ONdiA0FKKQuFEetqpV2L3WgF9RtDIpdk6kWSVmswTBfEo0QVCVFlxbENa+E
         ub82uyjUFArtS0rn+PfuelO2QWla35FOCsFdZljx+mwfApAy05EYQPWBYF6ZOxEuL4rT
         PysBuudO+VSa/cUbOAWQdeDQ4MGfBvI7mPnAdwQ+rRf7mTvtU9e+UhGbg4UKU7h+hhpr
         7K6M0BAy7CJYQ2hpvUlUIQ+CAvM0lU85i/dxHKlOuXoWvKqBQru0P1IglQsyPuRitXE4
         FFAV/I+gUT2gB4u+pd8xotR0Bd8XTpSa1HI7UpddZUspY3GLJA/5tqeS1Ckadn2eeMtJ
         YULg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="EDOnxu3/";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=EU009Z7lfHjPsiTIbAYdNVuKWnlWQl+3ob/Me4grMtI=;
        b=Z6yhSCBuziRk4Wm+SgKzabTZyAzDBCW0WuKfdtVOG0Betx2viXQkBylRcz1HOcGhzI
         +lF3Q+95u8s/1ddmIYsS3JL8ajNXGB2FYHxW5xUAfaYtFX3H2oGNnD/mQhsxTNcVv7XU
         vad/rBroLtNzRSAxE83t5wSr/i0HcUu2D9vRllwf0UIGF32vubol7vyTpaGZ+OflTPfu
         7a1waaoUsh7Re6Trz3HZjUcKfVjYDf97P16gwwFs5lSIu9k6HceqrCYi0VCJmG0HXR8h
         8T5AzzXs0An+HulUP1yqC//bOWyQWH76Fty3JHMDazJX5wVCL8W+TBpoKXtB9fEaErrN
         0rYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EU009Z7lfHjPsiTIbAYdNVuKWnlWQl+3ob/Me4grMtI=;
        b=kYwQuIR5hHVXktaa1dULx7hVrk1rIUfWEJghwmx0uZt7lDugF8MocSWdFjKCb1sTvm
         QlPZ0LpajhxuparoBNrYH1z1lZH+0FMqEVdL6FZVgJpXKpesPI4JuqorAbRKjBQaoF0J
         NF6czKy2DZjV29DDNLNMSVt0Wy8lZ16DKz5q9IGVpdY3CJiMznrDNmHDfoXkL4ifKR3m
         UGhus4e3zDEmOuELGo3q3jk1m9xX3suHzXt4wSPYVzGX8CwUFq4pAV0vcyj7zKfmQEKL
         O2rrSgO/JtFWIbciYpk6fWaiKpuIaP6eB1yJ5zJTHbru2ycCiLtxe3izmdauk0InRu2R
         7+fQ==
X-Gm-Message-State: AOAM532EFEXYUhRW523H3RCoqYBbfVnB42ZthI6ZyhMIHs/ePWWrIxlX
	GwKmHaEnjbwMDvM1poGM2/c=
X-Google-Smtp-Source: ABdhPJymLkWS5NkqGdg+wnKIimARvmsbwiQZzVrkc/vNfAmOzZnfJ1lAMTILTDZO2L0SMPOpsr8ZkQ==
X-Received: by 2002:a17:90a:49c8:: with SMTP id l8mr127906pjm.24.1599585061474;
        Tue, 08 Sep 2020 10:11:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e64b:: with SMTP id p11ls5818083pgj.10.gmail; Tue, 08
 Sep 2020 10:10:59 -0700 (PDT)
X-Received: by 2002:a62:93:0:b029:13e:d13d:a085 with SMTP id 141-20020a6200930000b029013ed13da085mr126653pfa.28.1599585059294;
        Tue, 08 Sep 2020 10:10:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599585059; cv=none;
        d=google.com; s=arc-20160816;
        b=eVcepg4KeW+9KvtSa6jpKiD+i4zaZj8q9CegaFvpo+a3Ucmakptln4xfPWdvpmm2kt
         NgxjwfxgFm1xBNYSaoDz6d/ZKvX+rmwiQSgj3DxouNELKolVa/PsNKr7Fuu8ux02mANV
         dafni2qpVhY+8UB+QAdtmCQh/Rs6rpVQ701wE5YPw287zRGZ7XWHc7JtTAKlwUbla6wR
         x6PmFjh8WBTfJsT6mHXHxfvoW6leyS1Uz1nse5t31HXYA/oHB12DzEsy+6+vAVCjcB7i
         e/q+h9rS8aNqpnZWCZpNFR9kbjigxyTfnFAEOXjRXyETJV7PTyqdjYKEfHVpMuMeGSB8
         JxoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+LDeT2lt9SUcFTCT7BGDtz2er/OFG3MBH42fF3G6h68=;
        b=X3aiNVxXSBDoHdGtR3/QKang7EV6tv082AoxUtrln4InE9EiUmRwAMqx+CdU4yefYB
         FEHpu45lTt8DBrQLr9Su7Z4o1mnq6l2uEuAt/C4eHtiUKc9CRU893rfTWU5NSduKo9L+
         HkWvmEKTkbZuZDBg+WijlYuFkOkDN9hehtS5yVXwRF2wEh4HCV52v0R7pLobJQe5d3Ez
         hc4FbPj+bmo+uJAMqKYr/iIQWuvW5tyMRmpuuFYkga6+M2qiPC4XMei+bIK6b6I+ek3L
         xeOHSMfcE05Rv90ebjLRyKBqkppoqGGr6UrxxAmhtIHYG/3YxoRCAeVwBT+hN2C5WHih
         B2Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="EDOnxu3/";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id bg1si1020125plb.5.2020.09.08.10.10.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2020 10:10:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id v196so11505540pfc.1
        for <clang-built-linux@googlegroups.com>; Tue, 08 Sep 2020 10:10:59 -0700 (PDT)
X-Received: by 2002:a62:3812:0:b029:13e:d13d:a062 with SMTP id f18-20020a6238120000b029013ed13da062mr30916pfa.40.1599585058742;
        Tue, 08 Sep 2020 10:10:58 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
        by smtp.gmail.com with ESMTPSA id l141sm25676pfd.47.2020.09.08.10.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 10:10:57 -0700 (PDT)
Date: Tue, 8 Sep 2020 10:10:52 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Subject: Re: [PATCH v2 09/28] kbuild: add support for Clang LTO
Message-ID: <20200908171052.GB2743468@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-10-samitolvanen@google.com>
 <CAK7LNAQ40LGvfjca9DASXjyUgRbjFNDWZXgFtMXJ54Xmi6vwkg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAQ40LGvfjca9DASXjyUgRbjFNDWZXgFtMXJ54Xmi6vwkg@mail.gmail.com>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="EDOnxu3/";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Sun, Sep 06, 2020 at 04:36:32AM +0900, Masahiro Yamada wrote:
> On Fri, Sep 4, 2020 at 5:31 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > This change adds build system support for Clang's Link Time
> > Optimization (LTO). With -flto, instead of ELF object files, Clang
> > produces LLVM bitcode, which is compiled into native code at link
> > time, allowing the final binary to be optimized globally. For more
> > details, see:
> >
> >   https://llvm.org/docs/LinkTimeOptimization.html
> >
> > The Kconfig option CONFIG_LTO_CLANG is implemented as a choice,
> > which defaults to LTO being disabled.
> 
> What is the reason for doing this in a choice?
> To turn off LTO_CLANG for compile-testing?
> 
> I would rather want to give LTO_CLANG more chances
> to be enabled/tested.

It's a choice to prevent LTO from being enabled by default with
allyesconfig and allmodconfig. It would take hours to build these even on a
fast computer, and probably days on older hardware.

> > +ifdef CONFIG_LTO_CLANG
> > +ifdef CONFIG_THINLTO
> > +CC_FLAGS_LTO_CLANG := -flto=thin -fsplit-lto-unit
> > +KBUILD_LDFLAGS += --thinlto-cache-dir=.thinlto-cache
> 
> 
> I think this would break external module builds
> because it would create cache files in the
> kernel source tree.
> 
> External module builds should never ever touch
> the kernel tree, which is usually located under
> the read-only /usr/src/ in distros.
> 
> 
> .thinlto-cache should be created in the module tree
> when it is built with M=.

Thanks for pointing this out, I'll fix the path in v3.

> >  # Directories & files removed with 'make distclean'
> > -DISTCLEAN_FILES += tags TAGS cscope* GPATH GTAGS GRTAGS GSYMS
> > +DISTCLEAN_FILES += tags TAGS cscope* GPATH GTAGS GRTAGS GSYMS .thinlto-cache
> 
> 
> 
> This was suggested in v1, but I could not understand
> why doing this in distclean was appropriate.
> 
> Is keeping cache files of kernel objects
> useful for external module builds?

No, the cache only speeds up incremental kernel builds.

> Also, please clean up .thinlto-cache for external module builds.

Ack.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908171052.GB2743468%40google.com.
