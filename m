Return-Path: <clang-built-linux+bncBDPPFIEASMFBB3GPWT5QKGQET5KOOJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC94277C37
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 01:12:45 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id s22sf339515ljp.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 16:12:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600989164; cv=pass;
        d=google.com; s=arc-20160816;
        b=kczTyGgHrKQ9qBehcNyJSCXrImRclgL8YAhVuZ82i8dYUrmAUFJOtW6dokdnw3sp72
         /iEbPiHIB4UmONU773KI1QjDl9P2ncBlcu9DNQ/Q2Kl5VbqiOAGAd27WNJRZt3e3b4Lv
         uEOsr2aQCDhp6MPeA3P9YaUT0j/OwC42MEA0d1N7ldxdxa9aeOcF/zac8Y6HISNAsrEX
         fxLZXrfmRT3jxUzrMC78Inbjh9MZwot1sCWRecyvulw6GxwySrR0zzTXYzTbjU13DE9z
         FS17SydYlJK6OrHZhpsOHiZmzpPF5ngZxAUStMeB3XMqNAt3wODY1fjsG+uPd71wfujX
         zQpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/AQsHn8zuFT96cQ7pp48AobPmjSbO1WMllv1yW5vmxc=;
        b=mkwO8jGMs8yrA2TEBNAHz2YbXk2UApAXxxW+g/JIbqPZmbnDiW6XtD52EB+sVariC+
         GsVwy1XY7d5n9L7QhwX+u0T22m+AMQtvUV/vfSEd0POfSVouenap+OhNafcAAvcbtH9f
         bzpQ7sUJHTQ039KCYWE98eLMgugp3OvFCLKdOjkHU1fOE8VmvpPHjg3vjezUXji19vsB
         6q8eGsTx3U6hBuOY4UfBkLztCfqHJKN+yfxLe88JGcvJ2sdiv4JccLqEAa9WGs3DfkdR
         X1NjziEWWNnNOFX7ezKDRcRW1U/LxjjntSx4hbN0o9iDoeIbMPfIvNGQyen2n/RFiyek
         D3Vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vDRBczFc;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/AQsHn8zuFT96cQ7pp48AobPmjSbO1WMllv1yW5vmxc=;
        b=cOqcHmUvBuPaVOhzcQx6rM8VfAk+iBmr5/r5r/mOgPNGK0ouMWGHzu57nE7Ozb301f
         jDhMyJlKJEm2/9qXJEfhBOzEL7z1GT7gVrXrHgiT0YhjwYMKfgug88JfKaJ7gYfEH0Bw
         +UUeABbpczL4ELs6fN7y7J1qHLF+K0bglLCAWaY5dtL4GMT9StDN5V8SH5GAR6qYd8oG
         B7AecSoYMuSQEbniJUSSNugGbEfi4v1digElLKhQLRj6GKNdk1atvPyei9BqVFkk9NL9
         x5FbFjiF4pcsaYVKdzcJ4yVMAa7Kf2lyVz6rOtFgLclGxGmGBHCVWSD8RrAvupQUpN8C
         p+pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/AQsHn8zuFT96cQ7pp48AobPmjSbO1WMllv1yW5vmxc=;
        b=S2mPL089Jugans4G8QuQeSm6Pn2iCGZJZ/JOIJ8QFrI1SzFkPCtYfyjsVQWAi1jbUw
         2IWKIgKa5dCBNVGaSmUahFncQw2niYx3HDF5HMgOr2D//NKxLQ6/tPbtSBvypfUzgchS
         Fnf1ou8M9cdYusT0w0JKkoPC+QesHkvyouE31vukLqaeQ7qhG5g2aN/wpd1/+55KnN4j
         ii/ekEms+d509r5tYXpz0utOBWf53gnq6hpsIoq4rvu1KQix7Pr/p1a9Puod2g03ybhk
         /o6sYyIsvBE+hiFRGS5LyRJkoQtFnWYIaUvSNixDrJtaoYe7N+BZ5sRRJX9skwkni5Hv
         gjMA==
X-Gm-Message-State: AOAM533PMm+YBirn+QSq/v7elopTIerbG5vogmu7Pyb8HiXZ2xJO22cu
	u3X1m6QHyfrrOSaVfYNnPzc=
X-Google-Smtp-Source: ABdhPJx8wo/fMgMmclRnKPpjPgJw5Ms4PHhY5cK6fjDnLLtznzWbHM97Fz915UHrFEthGxVaJ2MxmA==
X-Received: by 2002:a2e:b6cd:: with SMTP id m13mr424981ljo.383.1600989164741;
        Thu, 24 Sep 2020 16:12:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5c44:: with SMTP id s4ls266201lfp.3.gmail; Thu, 24 Sep
 2020 16:12:43 -0700 (PDT)
X-Received: by 2002:ac2:54ab:: with SMTP id w11mr341992lfk.180.1600989163618;
        Thu, 24 Sep 2020 16:12:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600989163; cv=none;
        d=google.com; s=arc-20160816;
        b=0JhuiD9RbaoEtml9YcNrU32b8P5FAEBodZkSxW3akgmjy+MeK72ApyXEH3AK8nd6gR
         Px1G3aUa/I5WivObIZYzvhtTaAxgvifLtulWgq1gE3P0RL0mBSW1tGQOg+QVyq6RK5S2
         1mR0HQhlqOIf+XkR3q45wXhGBxWFTxBJ/wVlPYusF6zfMUZDiIUyjFStmIhXWErYIeV0
         4GffP47Rl1UKLYRdNDJldyxO/M9gs0/QGVD8GswqTjjf5G+Oj0ZAC7+qiE9trC25Mnah
         rBvjd3+EbORqNHF/fp1/jtJbTau3egdH58WW9A00eTyt1PG7+Vx0LfYO5jKEqoHXYxVd
         8QcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6d77zHv3VbtLF8v+o64epFZYE7UndkOdN5QV2a28vPk=;
        b=BpguWoQzElYri/t/id+YobbD1gdNRuZGWfq7x5ce2ODpcr9zXQw/UgyJckxSW/cKrq
         maY0M/LbctgXCcsvNvOrhfqujQAm4IV5Z+KeoVCVwPF6CWp3YOTUboKbsojNNYFhyOTY
         3/U0SWsASPuB8gm3fdbFy2Ox7ObTMg8e6o6AcmKXijqSzzZs6Vs0YdfpVqp8qH0xrNs8
         RKPfSR7yvGWp//C+GQrzfBnu/TeKaIIg3+RmuZ/PT9m71+YmU0iF3Ycm0+fWc8rjKAtb
         xIpgi4GnGcP8/fuO4tUpH0EcrR2M8GYLZaIV8zrfmQYIvkf++iCiXXISs7B20ZiQvb4t
         3/bA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vDRBczFc;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id t80si17395lff.9.2020.09.24.16.12.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 16:12:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id j2so1400701wrx.7
        for <clang-built-linux@googlegroups.com>; Thu, 24 Sep 2020 16:12:43 -0700 (PDT)
X-Received: by 2002:a5d:458a:: with SMTP id p10mr1220315wrq.282.1600989162869;
 Thu, 24 Sep 2020 16:12:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200923210655.4143682-1-irogers@google.com> <CAKwvOd=V6QFoAmYEVNjHKuOyWG8agjzxwan2EmkuZcQjv6qJ0g@mail.gmail.com>
In-Reply-To: <CAKwvOd=V6QFoAmYEVNjHKuOyWG8agjzxwan2EmkuZcQjv6qJ0g@mail.gmail.com>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 24 Sep 2020 16:12:31 -0700
Message-ID: <CAP-5=fW_uMxebqdrTB5dPMCybGk6w36YgMtyPCQGxA+d=qBf0Q@mail.gmail.com>
Subject: Re: [PATCH] perf test: Fix msan uninitialized use.
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Stephane Eranian <eranian@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vDRBczFc;       spf=pass
 (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::444
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

On Wed, Sep 23, 2020 at 4:37 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Sep 23, 2020 at 2:07 PM 'Ian Rogers' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > Ensure 'st' is initialized before an error branch is taken.
> > Fixes test "67: Parse and process metrics" with LLVM msan:
> > ==6757==WARNING: MemorySanitizer: use-of-uninitialized-value
> >     #0 0x5570edae947d in rblist__exit tools/perf/util/rblist.c:114:2
> >     #1 0x5570edb1c6e8 in runtime_stat__exit tools/perf/util/stat-shadow.c:141:2
> >     #2 0x5570ed92cfae in __compute_metric tools/perf/tests/parse-metric.c:187:2
> >     #3 0x5570ed92cb74 in compute_metric tools/perf/tests/parse-metric.c:196:9
> >     #4 0x5570ed92c6d8 in test_recursion_fail tools/perf/tests/parse-metric.c:318:2
> >     #5 0x5570ed92b8c8 in test__parse_metric tools/perf/tests/parse-metric.c:356:2
> >     #6 0x5570ed8de8c1 in run_test tools/perf/tests/builtin-test.c:410:9
> >     #7 0x5570ed8ddadf in test_and_print tools/perf/tests/builtin-test.c:440:9
> >     #8 0x5570ed8dca04 in __cmd_test tools/perf/tests/builtin-test.c:661:4
> >     #9 0x5570ed8dbc07 in cmd_test tools/perf/tests/builtin-test.c:807:9
> >     #10 0x5570ed7326cc in run_builtin tools/perf/perf.c:313:11
> >     #11 0x5570ed731639 in handle_internal_command tools/perf/perf.c:365:8
> >     #12 0x5570ed7323cd in run_argv tools/perf/perf.c:409:2
> >     #13 0x5570ed731076 in main tools/perf/perf.c:539:3
> >
> > Fixes: commit f5a56570a3f2 ("perf test: Fix memory leaks in parse-metric test")
> > Signed-off-by: Ian Rogers <irogers@google.com>
>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Orthogonal:
> The case where metricgroup__parse_groups_test() can fail in
> __compute_metric() also looks curious. Should &metric_events be passed
> to metricgroup__rblist_exit() in that case?

Thanks Nick! Checking metricgroup.c, metricgroup__rblist_init does
occur even if an error is returned. So there isn't an error, but that
doesn't mean the code couldn't be cleaner :-)

Ian

> > ---
> >  tools/perf/tests/parse-metric.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/tools/perf/tests/parse-metric.c b/tools/perf/tests/parse-metric.c
> > index aea4f970fccc..7c1bde01cb50 100644
> > --- a/tools/perf/tests/parse-metric.c
> > +++ b/tools/perf/tests/parse-metric.c
> > @@ -157,6 +157,7 @@ static int __compute_metric(const char *name, struct value *vals,
> >         }
> >
> >         perf_evlist__set_maps(&evlist->core, cpus, NULL);
> > +       runtime_stat__init(&st);
> >
> >         /* Parse the metric into metric_events list. */
> >         err = metricgroup__parse_groups_test(evlist, &map, name,
> > @@ -170,7 +171,6 @@ static int __compute_metric(const char *name, struct value *vals,
> >                 goto out;
> >
> >         /* Load the runtime stats with given numbers for events. */
> > -       runtime_stat__init(&st);
> >         load_runtime_stat(&st, evlist, vals);
> >
> >         /* And execute the metric */
> > --
> > 2.28.0.681.g6f77f65b4e-goog
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200923210655.4143682-1-irogers%40google.com.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfW_uMxebqdrTB5dPMCybGk6w36YgMtyPCQGxA%2Bd%3DqBf0Q%40mail.gmail.com.
