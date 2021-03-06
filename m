Return-Path: <clang-built-linux+bncBDYJPJO25UGBBA4OROBAMGQEOTYDLRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F75D32F709
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Mar 2021 01:04:20 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id z22sf1375313lfd.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Mar 2021 16:04:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614989059; cv=pass;
        d=google.com; s=arc-20160816;
        b=kCrfajAe/CZNpDlcDWqmCiF+1Z6GvlWaGkJKHO5VBp4S1JCf9GRJpUZR+hE54PC22h
         R1ViAYyVMO+4sErZHqJatTBrbbU3xe0/2tbF//zhoJloBwefvwgYT0fd+d7HN5Iv7e95
         rfWjFtkoTG6qWQtqJxvB/Pe/BmK0XbUyO+sZS5hUvZ0hubqB6U+g3YQnzeKg8U0GuB9A
         8PtJyvixwaIRRaMtJopXDV7UVgydescBFQ2+g69Ck3ypCzyDoNH3PIlrY3PJ0BLKc1ng
         V272Q30zbhl3BQclt1/oE1xdTx9OWa4bJKPqQW+OtUnHxRnSFnjKW03pe0gKMrMNGf6i
         bg0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3u5tI4e6o7Sz341+WU2RH4wfoio4INfg7vf1OKrfT7U=;
        b=w78JZqVo/52JAknZlAEvW99J20bltFMEP2c8F6DleHYKV2KUApSKxaHpyxHD1kTvbO
         92cOgtXl3axiG8GHKEzvhG7I4lcFnjE1pe7s13xI83yrKPXXT8Z6qbIjCV8CncN2IR6+
         C2on4pWwrQNZ1abLYJP2fxpk6Uly4NaStN6BHGv+txwDvI6ZuEZWBwGVxEB1GTmqwDIs
         jDh2go075RQEE+58PAxuxeJ7fJ8/DjIuQnpLIVIPdC4jDek1qUV9KHBYSkPpVfdivfDR
         1Xar1esat+0PQRq7i0nJhSD4TyCXBhG5F2R29xh+nO28L/aws2m2wMg7eUkiO6nXW2LL
         BlQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o5cANNl0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3u5tI4e6o7Sz341+WU2RH4wfoio4INfg7vf1OKrfT7U=;
        b=mLxFzSw6oga0vy0MoSqGxIxER/0dFGgaLWu+yJYKtdSaZbi+YDGGsitLPnx/l5uDqq
         xgBCxmXNEp7mbBdL16Ox2OIPUyqqyUnHea545YjJwT33NTdkGuvHuxR4YZYTnAgNaH9F
         2QBzn0pt2nX+qKuj+0TfSAb4v8XnBu1R4jy4J5vqtNtAD1AO9pi0jF2uJ618boCJ+peo
         Emm29oIAmXj7JnoZp0Gd/dygk+sC2UVVSq0psjeZDEeV7BkvCr8mS8W0unTNNsVJmGog
         mmyXpPi9fbr0n2IHV3HtfVeKpM+JLixUUnEJy6OhiCM6nWLlhV7RhWDEHG98ZJJXaEGb
         YiOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3u5tI4e6o7Sz341+WU2RH4wfoio4INfg7vf1OKrfT7U=;
        b=CLKV8pAxsCZrkfgH6iGsh5zMLOQ5RsIdKexKC0drtTEf/x0VoAeY6XtHLqImOcumef
         cN0gf9Iynh8CbvECkt0KElTDSsjYXTGHHvHCoGyE6lBCZNvnGqIXi1RRxWdBVyNBlRXL
         wSlrYtCrllWlm0oGL20UxRZFHAZx+0oixkeBLQhC1P0y5gBfs0ns0QDLChzImMkLckNe
         A69UN/avAAIjxJBWKI7A5Kjj6AhJcZxMPPFVKsZz9aRxpTm2eT4IkHMC6nwTqSDhsuLE
         /13RafdupM6FwWriN2LMH6+NGKCfsmgbdai0NtLJADhMzMtaEj/Kn1IjEHY8wps1V+k3
         eH3w==
X-Gm-Message-State: AOAM53207LcR0YaH8ivYplE9ED7iTlLu5PdSa6107PRdlCXnt0RhwCNh
	U5LWGKj9fwKzYEwKYNxFols=
X-Google-Smtp-Source: ABdhPJwmJSJQXwc1gmnNYDp9Kas+P40RXTP81yYboRzoDmC3PEXg4r5D4QBwDxfgB9B5m8n9M91OSw==
X-Received: by 2002:a19:80c9:: with SMTP id b192mr7278666lfd.130.1614989059805;
        Fri, 05 Mar 2021 16:04:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:e86:: with SMTP id 128ls1033737lfo.0.gmail; Fri, 05 Mar
 2021 16:04:18 -0800 (PST)
X-Received: by 2002:ac2:4465:: with SMTP id y5mr6974615lfl.70.1614989058806;
        Fri, 05 Mar 2021 16:04:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614989058; cv=none;
        d=google.com; s=arc-20160816;
        b=N/vmW5Rj0A+CeYDZintd/KmlQHOLa1UjjbIQFCiDju/xBP3X+OA5Aoj/v94cPzqrJl
         xfxhnxqXrm9sSLJdXRZqqvPr5BYDaC6oWGlzIFUhpjE6tjoWGUxaHZjacg1P/NbL0h/N
         o244jL9iyVxrjvwyE3dMqbfauANJTodU4e13OOj89vJXwd/ckRnuWsmTPX0gx38RzPP9
         jq+BvL2hvMhF8aekY41ca3bryeL/ws7GLpIGBnXDiVQeb/gXLUo698dPSw7EtTeNfYxv
         3mcqbmAD39cPJMBf2iqRe4m9nALopMj9vGBMNWZIPbT11R8VXQi3fRM0MvVmwP1pC1EG
         J6Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ng7BsdZElPC+gzGXsxquczNpRrNVtdewc/pU/jfXSXU=;
        b=EJRuRxFvUpiXTKxqrhbIM76N/Y+WehJ+rLwF9w+SuN4nMMBmfmVf+WJCy9HFTqb5kJ
         SPfGTsa8jnc/M1daPbWNCM4LBLYCKYjvH+1RLIw7dsGZKeQJJ8NJYz33yso4q9ZPDjN7
         vC3SfQ9j1Fv4lKS2DlVH9guzWs6BLBdJj3bKxfhayQsTWFifX6gzN1bJ5ZH1aToUmPMo
         DjH9QtfQ8s/dgDq5uai1SKHMqMEbgHw2cHhSvmbDxjK/Aib+eAEnbEQL/EiYhTChJXYB
         UTbmPqmR9C6XUr+NiPSGVf70YDM67vPpPUNO5uttSoMT6+HmlSmHPmLYEbOM4JojnpWF
         p36Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o5cANNl0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id r16si55134lfi.11.2021.03.05.16.04.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Mar 2021 16:04:18 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id k9so6757280lfo.12
        for <clang-built-linux@googlegroups.com>; Fri, 05 Mar 2021 16:04:18 -0800 (PST)
X-Received: by 2002:a19:5055:: with SMTP id z21mr7120804lfj.297.1614989058347;
 Fri, 05 Mar 2021 16:04:18 -0800 (PST)
MIME-Version: 1.0
References: <20210303170932.1838634-1-jthierry@redhat.com> <20210305235102.384950-1-ndesaulniers@google.com>
In-Reply-To: <20210305235102.384950-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Mar 2021 16:04:07 -0800
Message-ID: <CAKwvOdmgRAJXVdaHAnZoYm-Y4Dt01CYxvsnJC6zaSwr5amRWBg@mail.gmail.com>
Subject: Re: [RFC PATCH v2 00/13] objtool: add base support for arm64
To: Julien Thierry <jthierry@redhat.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Will Deacon <will@kernel.org>, ycote@redhat.com, Fangrui Song <maskray@google.com>, 
	Bill Wendling <morbo@google.com>, Pete Swain <swine@google.com>, 
	Yonghyun Hwang <yonghyun@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=o5cANNl0;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f
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

On Fri, Mar 5, 2021 at 3:51 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> (in response to
> https://lore.kernel.org/linux-arm-kernel/20210303170932.1838634-1-jthierry@redhat.com/
> from the command line)
>
> > Changes since v1[2]:
> > - Drop gcc plugin in favor of -fno-jump-tables
>
> Thank you for this!  I built+booted(under emulation) arm64 defconfig and built
> arm64 allmodconfig with LLVM=1 with this series applied.
>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>
> One thing I noticed was a spew of warnings for allmodconfig, like:
> init/main.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> init/main.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
>
> I assume those are from the KASAN constructors. See also:
> https://github.com/ClangBuiltLinux/linux/issues/1238
>
> Can we disable HAVE_STACK_PROTECTOR if CC_IS_CLANG and CONFIG_KASAN is set,
> until we can resolve the above issue?

Ah, filtering the logs more, it looks like GCOV is has the same issue
KASAN does (known issue).  Here's a filtered log:
https://gist.github.com/nickdesaulniers/01358015b33bd16ccd7d951c4a8c44e7

I'm curious about the failure to decode certain instructions?

The stack state mismatches are what are valuable to me; we'll need
some help digging into those at some point.  The logs from defconfig
are clean.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmgRAJXVdaHAnZoYm-Y4Dt01CYxvsnJC6zaSwr5amRWBg%40mail.gmail.com.
