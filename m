Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPUR2HZAKGQEINS46VA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A13A16B38C
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 23:05:51 +0100 (CET)
Received: by mail-yw1-xc3f.google.com with SMTP id 13sf9228957yww.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 14:05:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582581950; cv=pass;
        d=google.com; s=arc-20160816;
        b=C/sStqrIv7kv5rc5tY471ABlZCWqK20qOAw96BB8jgXgaDdndYsEPqn8keFf2f0IBH
         rlaqjli74d13o1KR2ugJdX499aJibLRby9Kube95UJjzBspr/6aEdIUyyjac13En2Nvr
         bh4lUBsBMXVDJf18xTkPMyTskRpVBWVscNZGJzPDGxoL4zH/CBHXVxyUhHMj55gLOmU/
         jU3buXQe4/OPMdywisL/sGlQ1KOEDblLkwVPCFRYShPce9O/EawWLXBMdBInaLxu9gIT
         x7k4tFfeaPewMCRZkp/rmFOAC4NBpXTtwi+8q+jIXH/FimYRILgC282pWKOteRb85Pwc
         QqMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gubsD2dsbfJ2yvkid4+u2rQruHYHVk1Z7KNXBbWjshw=;
        b=wNp6DE8fhVQZQaXrjmLhv7p4HVrcGIuxzquKlkQS1SatkSDRJ4ecRrLE9JK35ai+/f
         X0LqiU/h2epS3nj1b7ESgM4IRIYHTegiUQjVjZsbEeHxKhh5OT9e+lV8nIQlR8XmqTlI
         d3xh0xWQc5IORCgYkIr5HPbl47GGphQEV9vbvgx6IjDTly+J14Ea1mausMj3ZHqadgIF
         ow2vQAJYdEmS5nMC++LBSssCitYnWuUAjMTKa325Ow87qGZng9IbCfqErsvKU3YlicDt
         3x6npnLw/wNkcnxjK2EeZNLoBusEVyWhyfGSdiD5j2h+uEDSGj76ljpn+ZS10wVZRK0J
         FhJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=K9UeQctv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gubsD2dsbfJ2yvkid4+u2rQruHYHVk1Z7KNXBbWjshw=;
        b=C7NgaRGVPPfFoCueAM8RQQQKQ/da3hzpfildF0Dm5ql1ppoJ9PJADJoqqLG3dM9FEH
         snK5XnuhLhDOsFuP1PPdRCh7bWLU7X+bgid+bPU3Eo0+qkSEXmVTogTJQv0JCdMUbdmJ
         AASWJpnL0CsqezM0zhrFcAyurORWHUE1DVc4HgAbGNW0Xkw5VgYABYlr/AGbdw7BT9L/
         QY0E+n8H99oJLgDKlzgkcjbzyZu0UFdzTSEj41pJfg/GX4xVIuwtYe/36gbcf39VMFCd
         jAdsNc/aR8U/3tab0YgPUYXkm6chylOeNq+2sySIKrVU79F/9G4eeBBah8C8/qg6YTHM
         Uu+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gubsD2dsbfJ2yvkid4+u2rQruHYHVk1Z7KNXBbWjshw=;
        b=izRU8isWmF1osEXw01rMDeQeqRxEXPXPF+Hu03ZU+L94PyUOA0hc34lDgZzBo+gb1f
         KnTNkLqSA9kVHBCfsSYUpvU5cRCEXseRsQHkFkva2lNQZKm0Vt+3OmL82NZB7tENp67i
         qKS1ao0C4TfFMwsAHq3agP3lJbdTX2+w1K3rSyl2jL1K7/j+FPOWdXbAiBjj8oAHh4pk
         NRGaxggwEtejOg3FsP8jaLO6cH2kWPXY2D9SaqwNoj7EDvvRqadAbQ8yQ9NhgHQYKSX1
         FIBuBGFXk49YlEPAIktqyTW8t47cZPZZAnMw7ZCxnxVN5/cA2Tx8NJzv6l4lLFUEeVuA
         +iPA==
X-Gm-Message-State: APjAAAXQwi677kr+0hiabQycDpq2BvYY6U5U7t6Pa6xvoNcCkqBcePh3
	0ma5h018uC/FnNHnk//nR/U=
X-Google-Smtp-Source: APXvYqwyotXr8fu/it/zSPmGKymUj7QfS0Dv+treWZyiiIub4XfptLt8fUqKeZuw7pJz+y2S4260Rg==
X-Received: by 2002:a5b:145:: with SMTP id c5mr5606372ybp.211.1582581950176;
        Mon, 24 Feb 2020 14:05:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:df8b:: with SMTP id i133ls2389091ywe.7.gmail; Mon, 24
 Feb 2020 14:05:49 -0800 (PST)
X-Received: by 2002:a81:4f0d:: with SMTP id d13mr45442640ywb.128.1582581949783;
        Mon, 24 Feb 2020 14:05:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582581949; cv=none;
        d=google.com; s=arc-20160816;
        b=uP/F3O2YqReLHdwVA23svZJ5w2TjfFD4pIV684q+9tquFFdCZh1aDmvo8W+qIIWoyS
         /tLRhw0SPTLKGQp8HamU5LFp4x1u+dYOlt60fAvvoH3V3FnL4CaVevp3a2ZQtnyyVMes
         VHecxGpZjbnXaFuZB7hV0EOkVyzOHrLaSZFFlufajGfhe16LUTK754/vYI9g3FXSC30U
         NkrmfK/raADhNlE4Pn+kUbsLC6cwRGWNPKrLFIAdjpicEMVhN7Qrp19hKyRVWgXPrAnF
         6h0LYew+ow00RgBZMY+EbocgmAR5xi1Cmrp1e7YESFaMQX89GjZ4WgZpzzgqMyE/dIlz
         4mvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=b83M3bsEx4cU3BGUQLKP/zLTl/hQm5rCLWYZzAWmz7c=;
        b=kgpENnLD+BzmNVTHukDruOEhoyFOzOtiDoHE+GkEUgv4VGxgNC/kqMz0xPH5K9IfvH
         /rmDJEon1gYNjtUzP25Q3Wik1mFhn8WcxcyahG9Yqp7TGz6YNOzoZuWEShSDmDx0m9TJ
         n5YX2WWZrz/UNhVO3kJHiYweh3xFn2XJ3MJaj6xROqXpDDsMDv4iFE71F8boPYDIsF2A
         HURv9YppwjtzG2UD2dOrfHpBLgs17P1IGf9EW47OO8Gqryw5oqnXLYKyHh28ugSXM1JI
         jq8IkhEV7UUXu3Z0vq6td/pvCgWuOeIbPAEXc/QjC2LRw2peOkBiYbngWLDoAe1hlA0X
         /teA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=K9UeQctv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id 136si591347ybd.4.2020.02.24.14.05.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 14:05:49 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id g6so4608324plt.2
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 14:05:49 -0800 (PST)
X-Received: by 2002:a17:90a:7784:: with SMTP id v4mr1391652pjk.134.1582581949080;
 Mon, 24 Feb 2020 14:05:49 -0800 (PST)
MIME-Version: 1.0
References: <20200223193456.25291-1-nick.desaulniers@gmail.com>
 <CAP-5=fU=+uYZDb2uSFO8CTJ-Ange4Nxh4mmsOC1MS=Tedois9g@mail.gmail.com>
 <dad75d5a7aa443e39dc20972d80ee83c@AcuMS.aculab.com> <CAP-5=fXO+YMO9asspqYdvXATZONCbBYMGbdVNU_3+W3BdeunGg@mail.gmail.com>
In-Reply-To: <CAP-5=fXO+YMO9asspqYdvXATZONCbBYMGbdVNU_3+W3BdeunGg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 24 Feb 2020 14:05:38 -0800
Message-ID: <CAKwvOdko+Qb=h_Pm=oFUnsiBg7Am9u=Z83g8cNyY1QZQS=Mh7g@mail.gmail.com>
Subject: Re: [PATCH] perf: fix -Wstring-compare
To: Ian Rogers <irogers@google.com>, David Laight <David.Laight@aculab.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Nick Desaulniers <nick.desaulniers@gmail.com>, Ingo Molnar <mingo@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Jin Yao <yao.jin@linux.intel.com>, 
	Changbin Du <changbin.du@intel.com>, John Keeping <john@metanate.com>, 
	Song Liu <songliubraving@fb.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=K9UeQctv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Mon, Feb 24, 2020 at 10:20 AM 'Ian Rogers' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On Mon, Feb 24, 2020 at 8:03 AM David Laight <David.Laight@aculab.com> wrote:
> >
> > From: Ian Rogers
> > > Sent: 24 February 2020 05:56
> > > On Sun, Feb 23, 2020 at 11:35 AM Nick Desaulniers
> > > <nick.desaulniers@gmail.com> wrote:
> > > >
> > > > Clang warns:
> > > >
> > > > util/block-info.c:298:18: error: result of comparison against a string
> > > > literal is unspecified (use an explicit string comparison function
> > > > instead) [-Werror,-Wstring-compare]
> > > >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> > > >                         ^  ~~~~~~~~~~~~~~~
> > > > util/block-info.c:298:51: error: result of comparison against a string
> > > > literal is unspecified (use an explicit string comparison function
> > > > instead) [-Werror,-Wstring-compare]
> > > >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> > > >                                                          ^  ~~~~~~~~~~~~~~~
> > > > util/block-info.c:298:18: error: result of comparison against a string
> > > > literal is unspecified (use an explicit string
> > > > comparison function instead) [-Werror,-Wstring-compare]
> > > >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> > > >                         ^  ~~~~~~~~~~~~~~~
> > > > util/block-info.c:298:51: error: result of comparison against a string
> > > > literal is unspecified (use an explicit string comparison function
> > > > instead) [-Werror,-Wstring-compare]
> > > >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> > > >                                                          ^  ~~~~~~~~~~~~~~~
> > > > util/map.c:434:15: error: result of comparison against a string literal
> > > > is unspecified (use an explicit string comparison function instead)
> > > > [-Werror,-Wstring-compare]
> > > >                 if (srcline != SRCLINE_UNKNOWN)
> > > >                             ^  ~~~~~~~~~~~~~~~
> > > >
> > > > Link: https://github.com/ClangBuiltLinux/linux/issues/900
> > > > Signed-off-by: Nick Desaulniers <nick.desaulniers@gmail.com>
> > > > ---
> > > > Note: was generated off of mainline; can rebase on -next if it doesn't
> > > > apply cleanly.
>
> Reviewed-by: Ian Rogers <irogers@google.com>
>
> > > Looks good to me. Some more context:
> > > https://clang.llvm.org/docs/DiagnosticsReference.html#wstring-compare
> > > The spec says:
> > > J.1 Unspecified behavior
> > > The following are unspecified:
> > > .. Whether two string literals result in distinct arrays (6.4.5).
> >
> > Just change the (probable):
> > #define SRCLINE_UNKNOWN "unknown"
> > with
> > static const char SRC_LINE_UNKNOWN[] = "unk";
> >
> >         David
>
>
> The SRCLINE_UNKNOWN is used to convey information. Having multiple
> distinct pointers (static) would mean the compiler could likely remove
> all comparisons as the compiler could prove that pointer is never
> returned by a function - ie comparisons are either known to be true
> (!=) or false (==).

I wouldn't define a static string in a header.  Though I could:
1. forward declare it in the header with extern linkage.
2. define it in *one* .c source file.

Thoughts on that vs the current approach?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdko%2BQb%3Dh_Pm%3DoFUnsiBg7Am9u%3DZ83g8cNyY1QZQS%3DMh7g%40mail.gmail.com.
