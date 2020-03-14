Return-Path: <clang-built-linux+bncBDPPFIEASMFBBXEYWTZQKGQE2MMSSNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD0118560B
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Mar 2020 17:54:54 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id q7sf11622726qtp.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Mar 2020 09:54:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584204893; cv=pass;
        d=google.com; s=arc-20160816;
        b=uvmhQRtX+AwX4nsV2225DsroQG4YJeITfHwO3B1wSDVwgcyOLeA7FFB6dwj+dYEu0Q
         xNAhWn2Knbv9IRPEBMopISGKekCB6HR7ibT7NxjDq/JDkIXTLrmSadSovg/bBjc+y5Wh
         s8YzgbZtDTG1s4MPNQY9bm238hzMdumenhBMtAuPzS8BGj9XFnJC7QJ/3jrZn8CyL31Q
         bKxCjaQPmvD/j5vd3cGRoPnnbUlRvMGrX0q6EmBmZiGK6kFjBEaosSd/Ug3yARxQVtoO
         MPRzdzQ8ww10Jr8bJ3GI3lX6RhpcunZSDLpJvlA7gg/Zo7dpcqzFlDKgcM78Nh9JdmmX
         OmMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=UJvKPBBotCt+4r017EbsmwngYKLh/qVySxA3b1utmQw=;
        b=ZKsG28jT9Cs7A488DU5xHn+eUnLG53Y+ESoA4QG1AlU4msJp7HCU820MXoz8czaPpd
         4axvPUe2LZaMMQGULMNIL8E7iznf+7XVL+ek5cY7V1i/F2rtqpGMC5LIVWUDuEIVd/do
         AvjoZmCOgsJJ1pmtENmFGi4C2L5AltzVdg5xH48auL9/ufyK6YPJhqvvO82JSgStDL+O
         ohOXn6E0Z1P/G99RcsivSW4DGEqkI/XOMKRs/owvzc/a/qh5qSOAL6cTTsFeu5lJLJqU
         E4+8HXLGb4BTHUcNIoReeLIk/g1nkUTMh7BcKJ3hIIoJ3lc7kOFjZoNd1UAnCq/bKPjP
         znRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HjZqb4hM;
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UJvKPBBotCt+4r017EbsmwngYKLh/qVySxA3b1utmQw=;
        b=hACBCrqW+hMsPY3ezpHVEy7gwWxuHzVWv+sfRM4TWzwsIaC3hCw7kFS4nUIDlCWcDB
         NAZVew5SkQrvtCiVRkh63yb8E4F9xL0bSzFl5abJA3q8xc+sUDAfHMs5NdTiDla4V2Ju
         xJALIxipux0a6t3a85pWD7t36mKbf72udeDIwG16lnjRnm0ZBpdJhzASNc2dRA68dHRr
         1xVx+D3zodbaRvJnlnzHbBJLI7NYWV0Jn/paqkZpBFh+HbfmZUVDXXBy+JC6WfewoF6O
         0DzwdZ7UFYuw6rZTslgDMj07HGq0SCwfZZ999PirYFNEWpw9qziA+/P6RphSlZwDSK96
         iLXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UJvKPBBotCt+4r017EbsmwngYKLh/qVySxA3b1utmQw=;
        b=G95vP58PRmtUu3tBg9j38yMHrNUXxQEEppnOYUTbwZs4q0mm0sOzFXI5Ny7Ifo/Oaz
         tqdanYwio390vX68UHuOFb/z2kpT/0PUTaxfRy/CmREh6t9ow06ACmliu4YLp7noY3am
         7AK6URGUIzcwsAabD3BAzPuqkXp+Vt3t1mseYsHyyJbTw21Ne+MSEUnSUC2raQ+XG/yZ
         rasGJ3fLDe2MAQN8C1CFXcBs2iQggnJ44XEB27HUn0NXBa2PINP2H2Qkkv6CqrZc7Qyo
         IzNi43W6leyuYqpzq7RQBvGZUD855L3R94jmsetLnztvVMlvqbc523I5kX3RClguMJPk
         xcCA==
X-Gm-Message-State: ANhLgQ1+vMqJDJ3BZrhFtar8lVGI/KeicAlIddt2mlIYq4KyHrNR8McJ
	s6bwu3GuT4tt+nXKKksj7tw=
X-Google-Smtp-Source: ADFU+vu+EyVv+HaxIH3ymKP3L7TRtxk85BhPuGWjdNXNTGFgrlbxRxqA3OS6Wr31x7TTFv5xdit6uA==
X-Received: by 2002:a25:cc8e:: with SMTP id l136mr3305661ybf.55.1584204892877;
        Sat, 14 Mar 2020 09:54:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d057:: with SMTP id h84ls4375909ybg.6.gmail; Sat, 14 Mar
 2020 09:54:52 -0700 (PDT)
X-Received: by 2002:a25:7189:: with SMTP id m131mr26217396ybc.344.1584204892497;
        Sat, 14 Mar 2020 09:54:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584204892; cv=none;
        d=google.com; s=arc-20160816;
        b=vMh7VtVj4ZDtWOO6Y46EskjJgGS+qBtqwCicxvQ4vPTFGiLEGjlm9FT1Y1IQW3sHM3
         xK6tdmqPsvkPyO9uWv4SKfkwise+DNz/WpTzJlC9sJhE9BcDfeRksfu7rVaBmbpLVjAY
         RydlMp2RBoPOUS0xIf35abUKweR5ITFyO0wqNHJ4K9Cu5TY/u1I2hzPF4D49LYvF/+SR
         TTYsfND2snmO2Oc9cR1xFrvSmdjpGMY04TXmAqWJWTqxfXBy6Hi9/e8PH6FZproTY00N
         BxnuY3c1fbulCgNFEN5XJMiews/IiBTAQXc7YgnmPm39C2KeR3zRRegvBToljKtxGf1O
         jOZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dyh7Hx4P5azfX0v8IUQDrnTKYHqh3YH9V1fzoLax7D4=;
        b=rI/gndeP5r+lHD0zhtOsJfFMe4HoQNsJJJYNuPJV+f2IDMCDuXCXS3GeZC2HHhmf7y
         6gDORo5VAIFj3PuB795TrqECJul1ax6AML4TNYk3ApvKDA5YbqKsQFYK1dPtCQgdfDEI
         XD0f1u8VYXV+VFkNeFP0v05L2MFgpGXGSMt4xJ2zcTU13yxVUThH5LKAiCJ1fXzDT4XL
         QCksA7KUYRtEa/Ob4QZCrZMS8yJJDcM85XobIpuMA2F4mEZlY8raMrwmsQ8MK6OL3z4y
         EsGS5UzkcQ/S5aC7vwSzHq0a4MS8WRURw1kouiAk2JEPtjV6+2Be7oxOelCDhCNfaJec
         bCgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HjZqb4hM;
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id x13si1040623ybs.4.2020.03.14.09.54.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 09:54:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id d8so18524631qka.2
        for <clang-built-linux@googlegroups.com>; Sat, 14 Mar 2020 09:54:52 -0700 (PDT)
X-Received: by 2002:a25:6c0a:: with SMTP id h10mr23810528ybc.47.1584204891686;
 Sat, 14 Mar 2020 09:54:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200313230249.78825-1-irogers@google.com> <20200314135925.GA492969@krava>
In-Reply-To: <20200314135925.GA492969@krava>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 14 Mar 2020 09:54:40 -0700
Message-ID: <CAP-5=fWO8Ufw9EmjC3TsOJwbzqQsv4OBtNiGAjiMtRtRo60yJQ@mail.gmail.com>
Subject: Re: [PATCH] perf parse-events: fix 3 use after frees
To: Jiri Olsa <jolsa@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Namhyung Kim <namhyung@kernel.org>, 
	Andi Kleen <ak@linux.intel.com>, Adrian Hunter <adrian.hunter@intel.com>, 
	Leo Yan <leo.yan@linaro.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Stephane Eranian <eranian@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HjZqb4hM;       spf=pass
 (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::743
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

On Sat, Mar 14, 2020 at 6:59 AM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Fri, Mar 13, 2020 at 04:02:49PM -0700, Ian Rogers wrote:
> > Reproducible with a clang asan build and then running perf test in
> > particular 'Parse event definition strings'.
> >
> > Signed-off-by: Ian Rogers <irogers@google.com>
> > ---
> >  tools/perf/util/parse-events.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> > index a14995835d85..593b6b03785d 100644
> > --- a/tools/perf/util/parse-events.c
> > +++ b/tools/perf/util/parse-events.c
> > @@ -1449,7 +1449,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
> >               evsel = __add_event(list, &parse_state->idx, &attr, NULL, pmu, NULL,
> >                                   auto_merge_stats, NULL);
> >               if (evsel) {
> > -                     evsel->pmu_name = name;
> > +                     evsel->pmu_name = name ? strdup(name) : NULL;
> >                       evsel->use_uncore_alias = use_uncore_alias;
> >                       return 0;
> >               } else {
> > @@ -1497,7 +1497,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
> >               evsel->snapshot = info.snapshot;
> >               evsel->metric_expr = info.metric_expr;
> >               evsel->metric_name = info.metric_name;
> > -             evsel->pmu_name = name;
> > +             evsel->pmu_name = name ? strdup(name) : NULL;
>
> so it's pmu->name pointer.. does pmu get destroyed before the evsel?
> also should we free that then like below?
>
> >               evsel->use_uncore_alias = use_uncore_alias;
> >               evsel->percore = config_term_percore(&evsel->config_terms);
> >       }
> > @@ -1547,7 +1547,7 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
> >                               if (!parse_events_add_pmu(parse_state, list,
> >                                                         pmu->name, head,
> >                                                         true, true)) {
> > -                                     pr_debug("%s -> %s/%s/\n", config,
> > +                                     pr_debug("%s -> %s/%s/\n", str,
>
> nice catch ;-)
>
> >                                                pmu->name, alias->str);
> >                                       ok++;
> >                               }
> > --
> > 2.25.1.481.gfbce0eb801-goog
> >
>
> thanks,
> jirka
>
>
> ---
> diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
> index 816d930d774e..15ccd193483f 100644
> --- a/tools/perf/util/evsel.c
> +++ b/tools/perf/util/evsel.c
> @@ -1287,6 +1287,7 @@ void perf_evsel__exit(struct evsel *evsel)
>         perf_thread_map__put(evsel->core.threads);
>         zfree(&evsel->group_name);
>         zfree(&evsel->name);
> +       zfree(&evsel->pmu_name);
>         perf_evsel__object.fini(evsel);
>  }

Agreed on the zfree! I'll upload a v2 with it. I've tested with
address sanitizer in case of double frees, etc. I haven't yet fuzz
tested the latest version of parse events, libfuzz detects memory
leaks between iterations so I expect there will be future small
patches like this coming.

Thanks,
Ian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfWO8Ufw9EmjC3TsOJwbzqQsv4OBtNiGAjiMtRtRo60yJQ%40mail.gmail.com.
