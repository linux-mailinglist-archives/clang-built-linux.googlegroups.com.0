Return-Path: <clang-built-linux+bncBC2ORX645YPRB34NQSFAMGQEJSS3G6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 9115A40B950
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 22:32:48 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id z2-20020a626502000000b003fe1e4314d2sf298332pfb.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 13:32:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631651567; cv=pass;
        d=google.com; s=arc-20160816;
        b=rMyJDCZDNcinr3bRNZyD7NUxDNM8CKJdizAF/UBXixIEDVKG/g6QaltrPbDTJXBvhr
         vM2mjORJ2FEzbBrXHixY2rnSlarH/vW2E3DP1Cw2IRs94nfXZN9bTx/CIAyYuQSSPH80
         ZMSEHq3uzix/of5W+JNWEB87736M/qkcZi1JJ0G12tHI7qkyKf5hY2z6GMTkRe0IzUOi
         S/TAIhmBJqdkzeV95xRi/Zi5R7RvwdO/Yv4kpn/WrzV18L2kI7XfgzHPs58lePWTVRXQ
         Ljyrgw4Q9z9TrHZDe+zYcw7Lj8KsEAgzV8Q8/+1BqWMG92wvvHrqByq2YKHpaAJ+4GFy
         UtIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9LJ6T3P8sf5p1iOBv+D2Fo6Rag+hQ8c/R0257aFp3Cg=;
        b=WEM/iu6liHB+rYwiOlOkZ69uZvFhgRZY+eBjHzqBVcWJkU31edrNst8HPVS9T1Vf6s
         dajwRiJq/zfVwSedjHZt8KCWFAGq1JZ69maS8Uu2KI32G46Fi62sYPjXZSw4m+AAZ3W0
         KkoI1vco2GWvtRXvvGbEmC34MRS3ntJobk5qrr89zQQxGtMP/OBVq032fZkctGFWJu8N
         c2/gkg8UgOfTMtTo1US+HjRDtoX5VIowoU9+ZEGHUsiqsax5QcWdu9yAer+JpLnFihuT
         L+FND+ywfV5didEUC885bA77dvqRaHlx1pFR32BnFFcXM73zUsxVvmCkE2/VIKAhIC2g
         BJqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=bcaWNiUm;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9LJ6T3P8sf5p1iOBv+D2Fo6Rag+hQ8c/R0257aFp3Cg=;
        b=eVYBXwS1yNouM/hOQcFWln154vyszKqvBSrkxypd5C3hvqG5VH1vi9OP6LQaHLUPFF
         nXyGafmDqqXmhDBbm3DIj5IhzdcdrBzPS6cE8D3YkKXZ7A1PCNoK6n4lYN+uRr2F2Xw7
         cjFVmfCh3/564TaoP5hThb4vJv3MZI9zmAfBlJc2jIR+JXKpBTOEXiAaNZaUTI2NE1nc
         BUYeYXClOOVGQl93nEffvnm/ByHOP/3hBRcpYdwpZgZD9xg9LKzy87+GmmdJ8qGtzC8b
         M4zqOlng3YV/RXkPAzxIRWQ8tokzRFSwOk63jKzZRWAiB+5vVdAZPn0f5AZ/xKPZKvPN
         T0kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9LJ6T3P8sf5p1iOBv+D2Fo6Rag+hQ8c/R0257aFp3Cg=;
        b=q2uT3YuLYnxcEe8uPpD1LDMuOJRChgsAhqhj0tKxVIKTDzCSE51pEPUEfGkeqIUWho
         S/BIi4+Iwwa3+UQu9ZzsDl5TJgjCHh4CjQuYz5JMr1/oSs94rBwV0Ndks4/jbBc9w2qH
         B5mVCoEfgc+9uAdt16GAwafKoTULtjDqx6Bqli2SXavHIrw/CALSGnS3I0dFj9Nc+Xpo
         ydNF5bSG6MM3B39HF8iNN07sRg0ESp0W64iFqlOeqH0ER3GIN9pHtRbuFmPFYWf8YyJA
         5A/Ci1ImPYKHKoh+eQjJTqlpr1e3nHPZ6Mwco+5M6EkMd/PPCdQa2oiTz9gb3WnwFDO3
         E3vg==
X-Gm-Message-State: AOAM532zZmRbLyQ+02bvv/E9ZDeXN2F7bk8Yjs60BkWNWA9z/B1LyoJY
	/FaET/V6V5u8YWx2vQNcBZ4=
X-Google-Smtp-Source: ABdhPJxiCX8Lyxzb12RB9R4f3MfrtuNFAmYMUJSIS1tx7lJtyMiDISPr1N+YmYS7yJ/TiP/N756mNw==
X-Received: by 2002:a17:902:654d:b0:13a:50b5:da29 with SMTP id d13-20020a170902654d00b0013a50b5da29mr16685539pln.68.1631651567303;
        Tue, 14 Sep 2021 13:32:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:520c:: with SMTP id o12ls38292pgp.6.gmail; Tue, 14 Sep
 2021 13:32:46 -0700 (PDT)
X-Received: by 2002:aa7:8893:0:b0:416:4ed7:e4c4 with SMTP id z19-20020aa78893000000b004164ed7e4c4mr6564545pfe.83.1631651566688;
        Tue, 14 Sep 2021 13:32:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631651566; cv=none;
        d=google.com; s=arc-20160816;
        b=u7z4WD2OAuaGq7VH7CSfpkj7mcz4q/LeNqkCuwuOt8ZcGH4i/A8olZuev2GUe2QiaR
         b0oXMH6X3WLyEHkLoNEFHwfDtnYnrZidJiaRf/wKNMLDDxj53i0ths2SKDZGOUs37Ext
         gS4muvk304G0zE4qyg9OA0Xpkwbtc4VZnmRfjWyMvdWIrdisnd6GpwJWS+LIfPH7xwu3
         ZrSz41PIwG5Gjt5yh8zqThtTTvk09Mp4ow+X9cMgncWNs2Q4b2+VVMq6eHp4wGNPrdPs
         bD9zhkSMDwgxMlCF//50Rrmu8MD/jk0YxDSohYTC/SXCBsaLjxngH08pAHlrXWjlLanV
         S5xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NfCs5ZOjiQwn8561ZlGnTqyiRoY51Z30liszO8UxNQY=;
        b=ss1wyIAgAIEIKjdB1505x4D2xsRQvKrWXvNg6jAui1k8Tm99ri1pNT4Lca7FmROu0w
         PhP0dh80rusB+Kr1+iWZcWHpdspEWYhlYHR/BDNmug3KuCHQ416jMTrGfRseeJwqNWEh
         6rojzMgDQWF/TG/5tA0XNJDGoaheCJqLvTYhmGomwjlHrJzk5hWwqOh0w/fqIRBtlggF
         xH2yIgYBMrF4HyNb228q29mfAdUXfDB+H3Qjwf6VLN3XS6yMIGkJAgfLpZwyOklsNKIf
         Kki8AiLXVh6PYmWdlHlG6cHbmI2qjbvJD9ApkfXMwh6uHnXGc7MHQEokbWLu7kFa603d
         TRkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=bcaWNiUm;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com. [2607:f8b0:4864:20::b36])
        by gmr-mx.google.com with ESMTPS id o5si943396pgv.1.2021.09.14.13.32.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 13:32:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b36 as permitted sender) client-ip=2607:f8b0:4864:20::b36;
Received: by mail-yb1-xb36.google.com with SMTP id s11so753712yba.11
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 13:32:46 -0700 (PDT)
X-Received: by 2002:a25:2142:: with SMTP id h63mr1475940ybh.70.1631651565763;
 Tue, 14 Sep 2021 13:32:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
 <20210914191045.2234020-5-samitolvanen@google.com> <CAKwvOdnTeTLcrjPy5QcshSLr0Cc2uj7_hTt70j37eEBZzxr=PA@mail.gmail.com>
In-Reply-To: <CAKwvOdnTeTLcrjPy5QcshSLr0Cc2uj7_hTt70j37eEBZzxr=PA@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Sep 2021 13:32:34 -0700
Message-ID: <CABCJKuc1LNPfO=RBDpOahGBgc7TF1L4D_ujhbrNfFWJaExsjpQ@mail.gmail.com>
Subject: Re: [PATCH v3 04/16] cfi: Add DEFINE_CFI_IMMEDIATE_RETURN_STUB
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=bcaWNiUm;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b36
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

On Tue, Sep 14, 2021 at 12:36 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Sep 14, 2021 at 12:10 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > This change introduces the DEFINE_CFI_IMMEDIATE_RETURN_STUB macro,
> > which defines a stub function that immediately returns and when
> > defined in the core kernel, always passes indirect call checking
> > with CONFIG_CFI_CLANG. Note that this macro should only be used when
> > a stub cannot be called using the correct function type.
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> >  include/asm-generic/vmlinux.lds.h | 11 +++++++++++
> >  include/linux/cfi.h               | 14 ++++++++++++++
> >  kernel/cfi.c                      | 24 +++++++++++++++++++++++-
> >  3 files changed, 48 insertions(+), 1 deletion(-)
> >
> > diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> > index f2984af2b85b..5b77284f7221 100644
> > --- a/include/asm-generic/vmlinux.lds.h
> > +++ b/include/asm-generic/vmlinux.lds.h
> > @@ -407,6 +407,16 @@
> >         KEEP(*(.static_call_tramp_key))                                 \
> >         __stop_static_call_tramp_key = .;
> >
> > +#ifdef CONFIG_CFI_CLANG
> > +#define CFI_EXCLUDED_DATA                                              \
> > +       . = ALIGN(8);                                                   \
> > +       __start_cfi_excluded = .;                                       \
> > +       KEEP(*(.cfi_excluded_stubs))                                    \
> > +       __stop_cfi_excluded = .;
> > +#else
> > +#define CFI_EXCLUDED_DATA
> > +#endif
> > +
> >  /*
> >   * Allow architectures to handle ro_after_init data on their
> >   * own by defining an empty RO_AFTER_INIT_DATA.
> > @@ -430,6 +440,7 @@
> >                 __start_rodata = .;                                     \
> >                 *(.rodata) *(.rodata.*)                                 \
> >                 SCHED_DATA                                              \
> > +               CFI_EXCLUDED_DATA                                       \
> >                 RO_AFTER_INIT_DATA      /* Read only after init */      \
> >                 . = ALIGN(8);                                           \
> >                 __start___tracepoints_ptrs = .;                         \
> > diff --git a/include/linux/cfi.h b/include/linux/cfi.h
> > index 879744aaa6e0..9ebf67a0d421 100644
> > --- a/include/linux/cfi.h
> > +++ b/include/linux/cfi.h
> > @@ -20,6 +20,18 @@ extern void __cfi_check(uint64_t id, void *ptr, void *diag);
> >  #define __CFI_ADDRESSABLE(fn, __attr) \
> >         const void *__cfi_jt_ ## fn __visible __attr = (void *)&fn
> >
> > +/*
> > + * Defines a stub function that returns immediately, and when defined and
> > + * referenced in the core kernel, always passes CFI checking. This should
> > + * be used only for stubs that cannot be called using the correct function
> > + * pointer type, which should be rare.
> > + */
> > +#define DEFINE_CFI_IMMEDIATE_RETURN_STUB(fn) \
> > +       void fn(void) { return; } \
> > +       const void *__cfi_excl_ ## fn __visible \
> > +               __attribute__((__section__(".cfi_excluded_stubs"))) \
>
> Can we use __section from include/linux/compiler_attributes.h here
> rather than open coding the function attribute?

Sure. I'll change this in v4.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuc1LNPfO%3DRBDpOahGBgc7TF1L4D_ujhbrNfFWJaExsjpQ%40mail.gmail.com.
