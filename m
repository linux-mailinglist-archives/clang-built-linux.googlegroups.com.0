Return-Path: <clang-built-linux+bncBDPPFIEASMFBBQVH2DZAKGQECJ3HQVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F1116AE8F
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 19:19:47 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id g6sf9820606qvp.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 10:19:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582568386; cv=pass;
        d=google.com; s=arc-20160816;
        b=yPure+yJ/KNTMz4WLKkcdPf8uD8yWuPyiNODu9nV9MKBSzEYAX+Dxy16sMcS5ttDF1
         htYbqRCERrWeiwPKZGzjp60sYkGP4JRv1vJI8E7/9r/7sqARnkGRAAH6Ew9Fkn4CRaBA
         q2gE/FVlQ5iISjxHTc3mmlcHZPOVL/cai0Zjg7oK2EPLesYPtRgyBjSjWjltS6XwqIV4
         gXBBBvdjrCxwkgZzfzC9giKYs17FBZ10OYrxeLnHccnIW33Y19dZsMMhGLHUNpWhjfyz
         aTHkSa/0cw/hsdeQ5BbofJDB4op8Y5ZxpABUKmgjX/95/I1I5nmV6LxEuvb6m/iz4t9m
         Wi/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+YwrB3E04dAfYMrcZQ0YSmRbxFEcqVxRdfW5BKYI66c=;
        b=yN0XV4LdlCrX+3bPIZBGA/6oSiUJIB2oDmcldBvd92WVgQbEaXTCErCjeadifjCHcS
         X9qr0Bo0bAUL1PI/g1/PX+FOHpOl9oUESj6rxWeur9B+5iq75GagVh2xGqkQPlfCXbQf
         4tRD7r4cnvyRIbkfspHKRHCnY7Sm6Gfgw/ELlhltpKoC2q5ZCaq65XsBDep2/t1H4p/U
         PYRr99RKlLcHI+BeeJ1m7oh7tAsR31OOzs+4KwYYIC2N3tCLwa2S+1lFLPJgewXKDzA4
         aui3jGHGEUGfxZyfM1IgXoks2aSyNToh6iwvkUNcat+JaZQ4ChYEC6LrcOL7re7eEakl
         pb5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T4WRCbzK;
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+YwrB3E04dAfYMrcZQ0YSmRbxFEcqVxRdfW5BKYI66c=;
        b=pCIOU92Z7ZYJn/QqqS2qlLGWlzQlMTLU+GfZVcrp95V3z6ed9gguhnDp4uHdgfGI3t
         WgRgO07lwgcz7Ruz8s/X7Hzw0CZwrZ4qGmnMM5HZCdeagg2CdpsHqI+pWQvi7+t6HX0g
         zYDsd7HYlW41Z7uCCGLW+fqEvyK9T7a1JcX6CWDT7MRZalE2PR2+gFrAS/iL1FQwL5/k
         R5Dwm0Vv4IZCiUfs0bs9T8chqkmHZ2iq4hLJQ9D2cLQjwaXQ1pO/nQ47uVrzuWXheKK7
         TaqaJTtR+cNrhF7mNMh+RJmxCLoAh0bFbOekBXEI4zMB4mVH9G5lwW+TfzESlxy2W8oA
         XGIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+YwrB3E04dAfYMrcZQ0YSmRbxFEcqVxRdfW5BKYI66c=;
        b=NIW7RmALPbC9PVwbfx+R40GYtVnZWf6skCTgIYyrFswxc7BVsl2tU78/Z92DP7PIaB
         Krl0w2t9exD9dOVTuEb6oAt5hh5DEm/wismzPBgxuG95fNi/uPh4mi0Hyqxs80Emm4gt
         JH/TmKDKRT3hThtPjG8vblEe8s+ac9p0QyH9ekLEmoOZcMLpYlR+r+9fz5C2ctXr1pDJ
         lRQN6oTg4kPTzB8GUa/7PE5gdP0ydszevjLUbS/eBp0pTvYxyTvlEHTXMNqwJIe1fkTP
         RnUP6lfJ+Url9zSiv5JOShX2pplpqWoNbUM6WSKsr3IfFzgeJF0sWVLoasmXKDgqsci5
         JVnQ==
X-Gm-Message-State: APjAAAVaaTKLwRACpXgSmQj4Ac1MdYURLnkgt7pVb1nqaf+KODWEEgNW
	9r8U3QtO1chUDZiLkHvDae0=
X-Google-Smtp-Source: APXvYqwaNtVti2rCZQnViRO+qJv0vgZ3L8yjMlTWB4uRo32emxha6dh+Wv/kJnJnx78sUeH3rCN/Wg==
X-Received: by 2002:a0c:e146:: with SMTP id c6mr43988455qvl.116.1582568386182;
        Mon, 24 Feb 2020 10:19:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:8c6:: with SMTP id z6ls3816350qkz.6.gmail; Mon, 24
 Feb 2020 10:19:45 -0800 (PST)
X-Received: by 2002:a05:620a:13b8:: with SMTP id m24mr28642276qki.378.1582568385764;
        Mon, 24 Feb 2020 10:19:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582568385; cv=none;
        d=google.com; s=arc-20160816;
        b=n9ow5tfyy0YKxuMXeUs0j4WBWlycGtMv/bzsSXuh/tyIqU4wT2hU1FhcWTrhDV7Zvs
         z3hCZgnlAbmuHjdvpbkSj9skMwNofjpuTxSrOnow+HlZVRSq9JHbbkLbKIZd21U/lE5G
         ICov8TGMJMOZHbESGWE+8TkAFdtIB29i2fOwVCshixdLxpQFAISfxzAFbnOPAhINMqRB
         VN0LRqdMOd+bf2AaUnkjrbR3cQzVhWrp6+YGNNTCxXY+cqdP+UZHaHkp9jKCmY2o5g6M
         NoXObsaFdbxbH8E4dQtveM/u9bDUTAizjj/eUorv117rzZhdTUgRnJn8xrnmADwEDmxH
         Fo6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mwMd85HDX5SvxneOefTVO3Pm2UjSWW7Q8lu4YFXwuVc=;
        b=uEaSiwQ4WI+8q8noYvX4one9qOAXZkf9TMq/XH1wFQWYgferLqRJSQXd0Kb9xZHme+
         Vz5XgwnjzuWComa4giP/sgokk7PgdlvuMyNYxP6XN2kx6bjjpdHAdcig/9o+Awosjo7f
         0wqco0K8iya4unvlfFMfvhZH80JVRrOyTc6wD80ot4+0mw4f8xpzigLszHK6JlkA6TEn
         bVKin40JxnmXrq6ZhG1jPTByAe4QTuPqT59IeXyHjs4GcFqt7EBJ7cPtJJZg3lM/2+Ly
         dHwPJct7qrsemQIXf2r77nGagEG/N52xDpnyTnm1Vh6hRYYPDBHJ8KRlfx/TwI+w7Tkv
         eBXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T4WRCbzK;
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yw1-xc43.google.com (mail-yw1-xc43.google.com. [2607:f8b0:4864:20::c43])
        by gmr-mx.google.com with ESMTPS id e26si905795qka.2.2020.02.24.10.19.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 10:19:45 -0800 (PST)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::c43 as permitted sender) client-ip=2607:f8b0:4864:20::c43;
Received: by mail-yw1-xc43.google.com with SMTP id 10so5648116ywv.5
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 10:19:45 -0800 (PST)
X-Received: by 2002:a81:a452:: with SMTP id b79mr41515761ywh.389.1582568384978;
 Mon, 24 Feb 2020 10:19:44 -0800 (PST)
MIME-Version: 1.0
References: <20200223193456.25291-1-nick.desaulniers@gmail.com>
 <CAP-5=fU=+uYZDb2uSFO8CTJ-Ange4Nxh4mmsOC1MS=Tedois9g@mail.gmail.com> <dad75d5a7aa443e39dc20972d80ee83c@AcuMS.aculab.com>
In-Reply-To: <dad75d5a7aa443e39dc20972d80ee83c@AcuMS.aculab.com>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 24 Feb 2020 10:19:33 -0800
Message-ID: <CAP-5=fXO+YMO9asspqYdvXATZONCbBYMGbdVNU_3+W3BdeunGg@mail.gmail.com>
Subject: Re: [PATCH] perf: fix -Wstring-compare
To: David Laight <David.Laight@aculab.com>
Cc: Nick Desaulniers <nick.desaulniers@gmail.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Jin Yao <yao.jin@linux.intel.com>, 
	Changbin Du <changbin.du@intel.com>, John Keeping <john@metanate.com>, 
	Song Liu <songliubraving@fb.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=T4WRCbzK;       spf=pass
 (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::c43
 as permitted sender) smtp.mailfrom=irogers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ian Rogers <irogers@google.com>
Reply-To: Ian Rogers <irogers@google.com>
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

On Mon, Feb 24, 2020 at 8:03 AM David Laight <David.Laight@aculab.com> wrote:
>
> From: Ian Rogers
> > Sent: 24 February 2020 05:56
> > On Sun, Feb 23, 2020 at 11:35 AM Nick Desaulniers
> > <nick.desaulniers@gmail.com> wrote:
> > >
> > > Clang warns:
> > >
> > > util/block-info.c:298:18: error: result of comparison against a string
> > > literal is unspecified (use an explicit string comparison function
> > > instead) [-Werror,-Wstring-compare]
> > >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> > >                         ^  ~~~~~~~~~~~~~~~
> > > util/block-info.c:298:51: error: result of comparison against a string
> > > literal is unspecified (use an explicit string comparison function
> > > instead) [-Werror,-Wstring-compare]
> > >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> > >                                                          ^  ~~~~~~~~~~~~~~~
> > > util/block-info.c:298:18: error: result of comparison against a string
> > > literal is unspecified (use an explicit string
> > > comparison function instead) [-Werror,-Wstring-compare]
> > >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> > >                         ^  ~~~~~~~~~~~~~~~
> > > util/block-info.c:298:51: error: result of comparison against a string
> > > literal is unspecified (use an explicit string comparison function
> > > instead) [-Werror,-Wstring-compare]
> > >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> > >                                                          ^  ~~~~~~~~~~~~~~~
> > > util/map.c:434:15: error: result of comparison against a string literal
> > > is unspecified (use an explicit string comparison function instead)
> > > [-Werror,-Wstring-compare]
> > >                 if (srcline != SRCLINE_UNKNOWN)
> > >                             ^  ~~~~~~~~~~~~~~~
> > >
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/900
> > > Signed-off-by: Nick Desaulniers <nick.desaulniers@gmail.com>
> > > ---
> > > Note: was generated off of mainline; can rebase on -next if it doesn't
> > > apply cleanly.

Reviewed-by: Ian Rogers <irogers@google.com>

> > Looks good to me. Some more context:
> > https://clang.llvm.org/docs/DiagnosticsReference.html#wstring-compare
> > The spec says:
> > J.1 Unspecified behavior
> > The following are unspecified:
> > .. Whether two string literals result in distinct arrays (6.4.5).
>
> Just change the (probable):
> #define SRCLINE_UNKNOWN "unknown"
> with
> static const char SRC_LINE_UNKNOWN[] = "unk";
>
>         David


The SRCLINE_UNKNOWN is used to convey information. Having multiple
distinct pointers (static) would mean the compiler could likely remove
all comparisons as the compiler could prove that pointer is never
returned by a function - ie comparisons are either known to be true
(!=) or false (==).

Thanks,
Ian

> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfXO%2BYMO9asspqYdvXATZONCbBYMGbdVNU_3%2BW3BdeunGg%40mail.gmail.com.
