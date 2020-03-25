Return-Path: <clang-built-linux+bncBDPPFIEASMFBBPU557ZQKGQEWV5TUEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1171932DB
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 22:35:59 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id i35sf1466817uai.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 14:35:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585172158; cv=pass;
        d=google.com; s=arc-20160816;
        b=gM+SWIRAdkgzsXaOEvufsQzA84MsK8WH/57Qr77v+qUD7QYyDwXvIxGn6PDf9/ZNRl
         vHbhFXbFeYSj3/fwKtSLxs8GRHVIyg2+kDqgY8iTi/BPOyLWykmDB6djxnVmuSnZvddi
         QZNQ3k0mU0SUOMRTmVVOtIzAJM4K8vWCYL9HUsQPTeFCVKIDx2vYGv21RLfSXpKMe9QT
         lG8rx4JWrteP2GJ0HmnUGEW30g4Lh5DVwFcM485ETjoJO2DodbiqNzWyko1aN0C6+4dT
         ZsPA+EwXbCqy1O9f5GBBUhJI7B0qVu7PemmhWgySPUjsRZj8niz4pkRHdoRc1nmS027b
         Eeqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=h0CuZhX5ZlPn3wsyq1JY7F4WCllVWQ06y8PUMX5QsU8=;
        b=Pm5jbrgrQBf8N5rTZfovDOKnlwmOFpx8fHvjylJ/2Md0ID0yYS0RoQ+nFE4EfHwENj
         bh75pG3bPmzInLmidwdaWGGEHvOw/aMIJ2xMo1uapQKsq+tjH2NXJ+wPVMPu/yTthQ5r
         RJLWuOQIH187qpJMoJb7JZvtQX1Cjh2Pi4RBtsBuEH5eBCk/MAcCikIYzn7cgqphzptu
         vlNdFWDZt22X2iB6jDHK8+FolgMX0xsPYDAuNOR1ajXSZR1MCF8YQmfo2UW9n7V2voIQ
         dLOK3i0FMuJscMBotG1v0izgMttBiQCBakoPGQvI0eLo9eFWsM9l6U6xn21dEKCnv2v1
         9Crg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Jvkg5nCB;
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h0CuZhX5ZlPn3wsyq1JY7F4WCllVWQ06y8PUMX5QsU8=;
        b=PsqvjNF6j6nWOOtKOR9h7zDmbIvcjSF6vewi3YQTJ24/gAxNzuW69boBVq4saCMlpr
         +K4R1tql5H0dvZpOIhpuiD8QCwsoPCUgJlYIzDIvmUFbYBebUe6EbrgLhKBn7anUlhHK
         dX7eFTwJ4RHYQQ5qsJ5FbJgf88B7SuIRHEoIhC2d1b3Pzqc4/q8jPr6ySi5sF2YIcUVk
         2m4dDDvZXpAGfnADfzeZsbJFF3EWsZszwHlhpKCZ1xbkffwXMGW0Sm9DttcHK+/FrN/H
         yXGDT90hLZgC/7VRJAug3qU+BCmUp8Flj054a+MWwjaj/CobmUs+xEzCkrbNRd5yK1d+
         GsIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h0CuZhX5ZlPn3wsyq1JY7F4WCllVWQ06y8PUMX5QsU8=;
        b=dV2GNK1SmE2UwI5SzoZsN4lXi7aYy1sLlwTaH4K4TH0NKZD4CGEL7qf5y69pdS+ua0
         kkpOA8bMILIbXUTPB2IfCktPLN+vCIpldjowg388a60D4ml04j1S8+Zo1/wTS65AL2NE
         Aw6FLp+ufMt34Nr5MMZa8QnnkcAuclq+i6NOwfSEyE8LX20J/RlEPmHgLT2yf7YGqz9b
         9NLQwEwhiC+sB67JOQ4M0s253VAB6+ecP2GKa/SYDsmiYv6qWHOIwuDg9gLSk2ZQedNd
         vPHgLjQOHs9khGzcKidM7K14AW9IW25cGkivy4yRulbPFHoY+dGSHJ6KFgVap/meQ40g
         fc7g==
X-Gm-Message-State: ANhLgQ1t09WjSNUl2/++JsmPwIyKGxmeUr5lLG7WPCAPITVcN8Ef1M9V
	mXNn+qpSV1SCd1lHaOK0e94=
X-Google-Smtp-Source: ADFU+vtxMM037+TGvyo4JoakBXWOF3l0BAhZMuAOgCdOc4WnkStvSQt0xWmoYNAMRv1hWCiTsIvsvg==
X-Received: by 2002:ab0:2253:: with SMTP id z19mr4167710uan.92.1585172158111;
        Wed, 25 Mar 2020 14:35:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c496:: with SMTP id d22ls437363vsk.8.gmail; Wed, 25 Mar
 2020 14:35:57 -0700 (PDT)
X-Received: by 2002:a67:f81:: with SMTP id 123mr4606477vsp.50.1585172157604;
        Wed, 25 Mar 2020 14:35:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585172157; cv=none;
        d=google.com; s=arc-20160816;
        b=Wt2/ZN4PDATkdE6ldw6XbPO5nR5prrSkZfQA9BD/XHD8MZxxi/AwvgDOPGunXSGIOh
         HsfB3rgHaCV23qUkrzB0XcZ+czWUFRjBX3tUgdnLNun/SRtgtMMf/GH0QbXFsBJoSPkL
         33HbK2kufIVyjGJkGg0OZl47dUVW3E91ai68R42+5WOyRtKDwWuKNQ51xqi1EMfuy7G4
         7cp7q6No5e0wwMRwQoE8IRuQI1RA+rclPKTQFQ8NxlqJZoYTK74OKhizoFLHSV4vbe9k
         U8ptJceRy7+HPIMpdMsQ5SOUkS7z0Gr/5AUbOI35ayZ/cFc9Heh5qKfu0WuY42Mq2aaW
         GX0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kM5tF24jxTWZD1wcuGGjp7ru29LzT/mQ5FW1gUutUcg=;
        b=iGK0qRkIG/qXp3UhTClZ7RvIGyvbwaLGXFJypDEeQed+Khpwm0I3a02/29xa5AOyHp
         5WTu/jcj0SYeyFJNBjKhbi62rLqlkn+9TvBNpXxEAMvIfKyoGCbBpUgyyQegQJK1r5cS
         6EGGYBdIk3lAXVNP4FKjiVa6OFO5QEg8YsHJB1kY8WyIQ3XWWKlBBAWCBOIS9dYPyESs
         wEgARtqzaYrExz11wSsfwriH1rcAIhuUrAkxceES08fDHvxMnWnroorho5IlDUWLSYYi
         HPORgGdRlrmNG+SEvmr1CDjBEzUePQtts54P/lflpTQBlYea3vqqrBVof/b58BVcGPqY
         qHsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Jvkg5nCB;
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id h6si31239vko.4.2020.03.25.14.35.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 14:35:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Received: by mail-yb1-xb43.google.com with SMTP id r16so2035138ybs.13
        for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 14:35:57 -0700 (PDT)
X-Received: by 2002:a25:aaa4:: with SMTP id t33mr9126430ybi.324.1585172156837;
 Wed, 25 Mar 2020 14:35:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200325164022.41385-1-irogers@google.com> <20200325192539.GH14102@kernel.org>
In-Reply-To: <20200325192539.GH14102@kernel.org>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Mar 2020 14:35:45 -0700
Message-ID: <CAP-5=fV9LVmaeSsXaD_oA=SZHjY=nhXi-RgJFe0EXzWzBdjsOQ@mail.gmail.com>
Subject: Re: [PATCH] perf parse-events: add defensive null check
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, John Garry <john.garry@huawei.com>, 
	Jin Yao <yao.jin@linux.intel.com>, Andi Kleen <ak@linux.intel.com>, 
	Kan Liang <kan.liang@linux.intel.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Stephane Eranian <eranian@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Jvkg5nCB;       spf=pass
 (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b43
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

On Wed, Mar 25, 2020 at 12:25 PM Arnaldo Carvalho de Melo
<arnaldo.melo@gmail.com> wrote:
>
> Em Wed, Mar 25, 2020 at 09:40:22AM -0700, Ian Rogers escreveu:
> > Terms may have a null config in which case a strcmp will segv. This can
> > be reproduced with:
> >   perf stat -e '*/event=?,nr/' sleep 1
> > Add a null check to avoid this. This was caught by LLVM's libfuzzer.
>
> Adding the NULL check doesn't hurt, I guess, but I coudln't repro it:
>
>   [root@seventh ~]# perf stat -e '*/event=?,nr/' sleep 1
>   WARNING: multiple event parsing errors
>   event syntax error: '*/event=?,nr/'
>                       \___ 'nr' is not usable in 'perf stat'
>
>   Initial error:
>   event syntax error: '*/event=?,nr/'
>                        \___ Cannot find PMU `*'. Missing kernel support?
>   Run 'perf list' for a list of valid events
>
>    Usage: perf stat [<options>] [<command>]
>
>       -e, --event <event>   event selector. use 'perf list' to list available events
>   [root@seventh ~]#
>
> Does this take place only when libfuzzer is being used?

Good catch! I was driving the repro through the fuzzer and getting the
stack trace below and had assumed this would repro on the command
line. I'm now wondering why it won't reproduce :-) I suspect this
issue can come up in other scenarios so as you say the null check
won't hurt, but the commit message is incorrect.

#0  __interceptor_strcmp ()
    at llvm/compiler-rt/lib/sanitizer_common/sanitizer_common_interceptors.inc:448
#1  0x0000555557345eb2 in pmu_resolve_param_term (term=0x607000081190,
head_terms=0x602000007cb0,
    value=0x7ffff4cc0320) at tools/perf/util/pmu.c:994
#2  0x00005555573389a4 in pmu_config_term (formats=0x6080000012c8,
attr=0x7ffff4dd4e20,
    term=0x607000081190, head_terms=0x602000007cb0, zero=false,
err=0x7ffff4c90020)
    at tools/perf/util/pmu.c:1117
#3  0x0000555557337b4e in perf_pmu__config_terms
(formats=0x6080000012c8, attr=0x7ffff4dd4e20,
    head_terms=0x602000007cb0, zero=false, err=0x7ffff4c90020)
    at tools/perf/util/pmu.c:1154
#4  0x0000555557338f7e in perf_pmu__config (pmu=0x6080000012a0,
attr=0x7ffff4dd4e20,
    head_terms=0x602000007cb0, err=0x7ffff4c90020)
    at tools/perf/util/pmu.c:1174
#5  0x0000555557314027 in parse_events_add_pmu
(parse_state=0x7ffff4c900a0, list=0x602000007e10,
    name=0x602000001910 "uncore_cha_1", head_config=0x602000007cb0,
auto_merge_stats=true,
    use_alias=false) at tools/perf/util/parse-events.c:1485
#6  0x0000555556d257f9 in parse_events_parse
(_parse_state=0x7ffff4c900a0, scanner=0x611000000cc0)
    at tools/perf/util/parse-events.y:318
#7  0x000055555731c573 in parse_events__scanner (str=0x7ffff4d85c40
"*/event=?,nr/",
    parse_state=0x7ffff4c900a0, start_token=258)
    at tools/perf/util/parse-events.c:2026
#8  0x000055555731cbc3 in parse_events (evlist=0x61e000000080,
str=0x7ffff4d85c40 "*/event=?,nr/",
    err=0x7ffff4c90020) at tools/perf/util/parse-events.c:2066

Thanks,
Ian

> - Arnaldo
>
> > Signed-off-by: Ian Rogers <irogers@google.com>
> > ---
> >  tools/perf/util/pmu.c | 11 +++++------
> >  1 file changed, 5 insertions(+), 6 deletions(-)
> >
> > diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
> > index 616fbda7c3fc..ef6a63f3d386 100644
> > --- a/tools/perf/util/pmu.c
> > +++ b/tools/perf/util/pmu.c
> > @@ -984,12 +984,11 @@ static int pmu_resolve_param_term(struct parse_events_term *term,
> >       struct parse_events_term *t;
> >
> >       list_for_each_entry(t, head_terms, list) {
> > -             if (t->type_val == PARSE_EVENTS__TERM_TYPE_NUM) {
> > -                     if (!strcmp(t->config, term->config)) {
> > -                             t->used = true;
> > -                             *value = t->val.num;
> > -                             return 0;
> > -                     }
> > +             if (t->type_val == PARSE_EVENTS__TERM_TYPE_NUM &&
> > +                 t->config && !strcmp(t->config, term->config)) {
> > +                     t->used = true;
> > +                     *value = t->val.num;
> > +                     return 0;
> >               }
> >       }
> >
> > --
> > 2.25.1.696.g5e7596f4ac-goog
> >
>
> --
>
> - Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfV9LVmaeSsXaD_oA%3DSZHjY%3DnhXi-RgJFe0EXzWzBdjsOQ%40mail.gmail.com.
