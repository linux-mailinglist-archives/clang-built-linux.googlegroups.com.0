Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSN4ST5QKGQEB6L2ZCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B29270791
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:53:30 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id n16sf3212701oov.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:53:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600462409; cv=pass;
        d=google.com; s=arc-20160816;
        b=NTas5qrB+xKxXAeoakICSQ2Bsb4PyaIClXq99w51p/OwPhdIbVwAGWJVEbF0hTkYzx
         zmHugP8oNy3pOHpgS3rCZ7jliSqHtwpxA8tKB9ujTBe7zfXgIEy1bGtNuAnpBjpkiN7v
         h/CZi6zD2ru2GYhe5KEoYn84C84p/3T410V1N24lPqUP1o75Xjjp5W8ir0hSf2N4F3X4
         Hs2TX4Ox9acCUtPGxyh0K3OIguDot4W4DauPiloYoVARWDdkEuLIYej7Jd2R1LU6cMbD
         kHAlU8KoWZemxIr+HEeiK8+inzB/fneGtKukosPpD0vhxAn9Aex7dsIet6IxdLPvfP4/
         mJlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TTklxXlSY49kTj9MKJ93QiXJLJeSVUQ1QbokgQCbrlk=;
        b=Y9+Y8l19/soj1eGjg4yzfyeRupfgdV9pywLHOxCrGa5qh0NctxM7cxS7yCValy/cVa
         1aBxZdOE2J3z97koAZwowGaVb9iooG2h4KM8n9rkJ8YS9WbYSFtUliwL+F1HMAPq0vFZ
         KlAG/RRmig7oHNFKCMFVLMEjkjGDfSuMzzNOSh/KwANiehIgmU9xFhWfnH8fLgY0TgBA
         ZEugvpVdOEPIcMgeq4376/Di6WLght0SpV8YRVY5k8FfFdb1zupmk+ZQiw2fof/Md+Hz
         eFCrcgko9tcWAuBvFUea0UzBYVQhubFBGKLyzUQJFMsLVq0pz0jTlONsJ3Fea4pNmOQ1
         jJbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KW2Q2zo+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TTklxXlSY49kTj9MKJ93QiXJLJeSVUQ1QbokgQCbrlk=;
        b=FDuH6kMCpsjN8OJPbbSIK700zTXxEWOuLF/iiL6FROP3l9v4eBm+S++OJY+P+EM6GL
         7bmf4JeGJ9DdNXHTWdBXC9cZTXJoDIQ59wzkczWOhfIzHTz9jUJZXPA1H9RjnQeaa2tt
         4ickQEidt99MS90Je7qR7n7d1D42XH1qhBCVIan0VqnFusWX9716dkibiu4sELIKKLWz
         /y7pook8zJEHTgR2asdw+5lXYVsKhKhbBPU1CrXLO9w0VO7wR8M0n9P33+aJaaMV5ZTu
         NhgHgHtp/mN8thOFspLqAOcuQbY5Vwuhfg5bzV8RImBFwrOzkJIoblQbP0ZUNjEWKcJE
         uXfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TTklxXlSY49kTj9MKJ93QiXJLJeSVUQ1QbokgQCbrlk=;
        b=tgsQbf6Okmfk9hYJKaKTNFDxtmdvju+0uKBhl+xt9UumVCao+VGV31QAgPRfjmzOu3
         EdUi3IKLcHgk/7Te3k/C9PgQVE01WYuKEK+YMalNgqVctFawSL+v8ncGO4p+2i97IzMJ
         MOGwi+IUI6owbVWZ2wPA/NxBmNuAUVb0FxYZa9mw44Lhmd6p8O2xfXQMQMKuC4f5pmQH
         iYZaJAoWyq5Xg7eo+oyxJxJ98vhimlUfVJfHTTahPjLM3Gyze3q9HfONwArDdGrb7hUt
         fVgxnyhy21W07zigTPTZXEZXh1+FEfxN3nrV779lLLYm4XWtAyxSN+EB4vZ2/tNAT39M
         I1sw==
X-Gm-Message-State: AOAM532GlIgvysFBUj+FdyExLygr8RaxuEP//+hgBA3TPlSM21ZYRD04
	EuG83MferirvvD5sv7gwrP4=
X-Google-Smtp-Source: ABdhPJyg1m4w9xdSlLvjKLd8s1Wo19sXCZkeAknRpsT/f34tE8Ky0b1euQIO4mahzaOdKZWonLDNxw==
X-Received: by 2002:aca:b354:: with SMTP id c81mr1837674oif.41.1600462409786;
        Fri, 18 Sep 2020 13:53:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7ad8:: with SMTP id m24ls1566312otn.8.gmail; Fri, 18 Sep
 2020 13:53:29 -0700 (PDT)
X-Received: by 2002:a9d:3f35:: with SMTP id m50mr11513171otc.369.1600462409374;
        Fri, 18 Sep 2020 13:53:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600462409; cv=none;
        d=google.com; s=arc-20160816;
        b=HlIe7571CdXWORhAt7X1cS9P9SmL7iVrR31X5L+jKHJB5bPp8Jy613CB8eI8z4vpvi
         GaUZA5TQPBEzL+T0SRGD8PDX9xjNWMrnMI3Lp9WFh1T6gI8dmRBIsHAUf2nGmf/cR0Za
         6w5Ooes1jeoHLZ+0uesk5IaTbyaeyDtUZrrL2tdKp1zQvhizHSYnnWoMBrJvBtZQ3ajR
         PGaZJ3ymN3CXCLYRX9i96SqDy3vNjZlGiipJKq6DFCVsTgtmvo6mws11ZTal4kpCILv7
         54EUDuWF8PI0iaVIrAEPLwiJzTd7YAoyC7QmvZfk/fGuA66RNfxZtBrRRmxvJ94LxT4t
         l6RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Iy3TQ3C1Ek23yK9GZJXs0daNRNetn5CYF4/zAE2h7ik=;
        b=R1Vo+NXmpB0GR7TbVga/gonBaLTAdFW2YVYoKrHPZsv3XXISy9aE9xbIS2H7czgYx2
         FK9Fnk6tpiRKURmKVlDTIV7I9MHOBXncJSpm8t8B8zP3TgDH4BKe1tn5GCUHi2VfgxzI
         biYbw0QKf3AHU/i32vNu7VZhdSPb9qhBybiDS1ifgpwy7Lb6hEaXOINUFJEUNn5cH/jN
         gCYtWNQgfSVYqf+LDkVfiwOf6NvuFwL52V3e4qZK7HlBYyhUWYvJKvGPhnVe2vRSMHjL
         5JQF13qalE5LiolJWKdOlzPeYvE3jLR5mXfZ/O2EJPKIyyguxOGeqSXm31CeXTvt2aMB
         MYBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KW2Q2zo+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id k7si368484oif.3.2020.09.18.13.53.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:53:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id mm21so3798245pjb.4
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:53:29 -0700 (PDT)
X-Received: by 2002:a17:90b:f18:: with SMTP id br24mr2004360pjb.32.1600462408474;
 Fri, 18 Sep 2020 13:53:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
 <CA+icZUW1MYSUz8jwOaVpi6ib1dyCv1VmG5priw6TTzXGSh_8Gg@mail.gmail.com> <CABCJKueyWvNB2MQw_PCLtZb8F1+sA1QOLJi_5qMKwdFCcwSMGg@mail.gmail.com>
In-Reply-To: <CABCJKueyWvNB2MQw_PCLtZb8F1+sA1QOLJi_5qMKwdFCcwSMGg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Sep 2020 13:53:17 -0700
Message-ID: <CAKwvOd=N5XS+c7X+fM+0aHWoo8j-xZ96Qk1a4n6gvYJZAq1mCQ@mail.gmail.com>
Subject: Re: [PATCH v3 00/30] Add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KW2Q2zo+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Fri, Sep 18, 2020 at 1:50 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Fri, Sep 18, 2020 at 1:22 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Fri, Sep 18, 2020 at 10:14 PM 'Sami Tolvanen' via Clang Built Linux
> > <clang-built-linux@googlegroups.com> wrote:
> > >
> > > This patch series adds support for building x86_64 and arm64 kernels
> > > with Clang's Link Time Optimization (LTO).
> > >
> > > In addition to performance, the primary motivation for LTO is
> > > to allow Clang's Control-Flow Integrity (CFI) to be used in the
> > > kernel. Google has shipped millions of Pixel devices running three
> > > major kernel versions with LTO+CFI since 2018.
> > >
> > > Most of the patches are build system changes for handling LLVM
> > > bitcode, which Clang produces with LTO instead of ELF object files,
> > > postponing ELF processing until a later stage, and ensuring initcall
> > > ordering.
> > >
> > > Note that patches 1-5 are not directly related to LTO, but are
> > > needed to compile LTO kernels with ToT Clang, so I'm including them
> > > in the series for your convenience:
> > >
> > >  - Patches 1-3 fix build issues with LLVM and they are already in
> > >    linux-next.
> > >
> > >  - Patch 4 fixes x86 builds with LLVM IAS, but it hasn't yet been
> > >    picked up by maintainers.
> > >
> > >  - Patch 5 is from Masahiro's kbuild tree and makes the LTO linker
> > >    script changes much cleaner.
> > >
> >
> > Hi Sami,
> >
> > might be good to point to your GitHub tree and corresponding
> > release-tag for easy fetching.
>
> Ah, true. You can also pull this series from
>
>   https://github.com/samitolvanen/linux.git lto-v3

Also, I've been using b4 happily for a short while now.
https://people.kernel.org/monsieuricon/introducing-b4-and-patch-attestation

My workflow would be: check lore.kernel.org/lkml/
for the series in question. In this case:
https://lore.kernel.org/lkml/CABCJKueyWvNB2MQw_PCLtZb8F1+sA1QOLJi_5qMKwdFCcwSMGg@mail.gmail.com/T/#t
is the cover letter.  Then in my tree:
$ b4 am https://lore.kernel.org/lkml/CABCJKueyWvNB2MQw_PCLtZb8F1+sA1QOLJi_5qMKwdFCcwSMGg@mail.gmail.com/T/#t
-o - | git am
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DN5XS%2Bc7X%2BfM%2B0aHWoo8j-xZ96Qk1a4n6gvYJZAq1mCQ%40mail.gmail.com.
