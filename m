Return-Path: <clang-built-linux+bncBDPPFIEASMFBBUXZU32QKGQECY6UHNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CC11BE58D
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 19:43:48 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id e2sf4246869ybm.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 10:43:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588182227; cv=pass;
        d=google.com; s=arc-20160816;
        b=msxu6SMZo5z97Mae8bQYY/4ySpOucc3QDITYMcvaFgCfsLCrWf43MMznKY8YTCyfmS
         a+1m+zEPlS1Orptx3MPBC2jdHMIHLJsBMy3Ouc9wmfgP7CjHsSMagu//0V43uQIEVLLg
         JYTUm79EIw4PFgsMVi4iPDZWNPrqQkgbOJJh619jOXBDPQmRtP/YHGnPT0hwtwo1ABOX
         Rr9s1JIX7AN8z3zDATdDpnzJjfQQ9opLXyg7/m6iMCKXHz/wlFLtjppfayuupZJQVIad
         GYEi1cBlhBxpcmlV/D/z3L9BhZO/CG7o0efCucRFUTDRNjKASAFJQYnlqmj0jn/dwmms
         NOeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=HySKUFdeQHLBXGX+u0cCe6Q8jXMDMtI8YSAYjW9HDR8=;
        b=HyY4qEcB2ZR6WyMURN+Q0jx4escZTpRtnxHyxFifW94NrYs2QrAxWol3b4rxzOzRly
         EAn1m7pe1ty+q1VD5YEyyLmT/x8rtRtLWCKM6Ff0HfT16oJet1TIc+5ykI293msgdZYY
         yHnV1iToASGqgpAuqLky3vKOkcr4q26hwFgT25chC4Op6jp1myhL2QsP0W4FNaE8IlkN
         X2LPSepYrVl/681TN46DiEy/lu6uGozZrSxF7ls0Mx2cn2z7NXyOpHaMJtoSUUrsJvbE
         lAaho8PLWVSlwQg/RBMVzkhxhDzg5+iWShB+DSguLL7OTcNiLkxY9T9SaFOvFixhp1DY
         wrEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eDaVdQvJ;
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HySKUFdeQHLBXGX+u0cCe6Q8jXMDMtI8YSAYjW9HDR8=;
        b=i67cqx0/HfNdkCnpwv7QU6uC9+CzA+TcHuXdm8Ukiarm/iW1fvG1atmhkbYTCA8v5v
         odDt0HwmQ5mwIJEVY+QmcFDRju3K0OlNvLzl4ZHqQtG5TmzdPaHaM0/i/HxIpEzfljFR
         NyHLZMWuzED46A3mW89XrrErK3ZlCUcK1w8OwftiW+FHyAu28bZ2QaqhDvGCTASWSFL9
         tl1k7sw2Qtwvp2EKRYh2zwT0eAz/bztUSnjGqQiEIg8l5eWX4BLkR0EwJbawcbRxUrOq
         cIgNy5hWwdsYZ3zLE/KbwSr11JQMvs+sdHx5DjSr410J8L/JuVuoFVY/rMiqiP6kG2/b
         kaUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HySKUFdeQHLBXGX+u0cCe6Q8jXMDMtI8YSAYjW9HDR8=;
        b=fSd7JKTx+rH0XMzknZJMyTkszDo0JNSp8IluUIOkmo0vO2d9b4xYbs0HuZcC5tlapw
         4ADzVDA8uZLsylPsj2vkTOt6aumBcrjGykY3Q70maYWaqe6FNS5HJ7lIVmcYl2sJEHxb
         CUlk3JItYROmxJEVaVU5fmWIymyo27f1p0ZrIdivbRFIAl8+KF2tB8AQQpssmDsXSylz
         pd1KYFmwTuFUP1ar7wlW8Df+wEJN9fexCnRtpaPEimyYDPVORP6XpeLVtQ46qRRhGXkc
         NnB++WyQ7RapnS9lEJ2KbIA7tbd10UXaY7nXnd81YhORmcOxRcLJA8M10vmNEcsAzRTO
         12NA==
X-Gm-Message-State: AGi0PuYl5LUu14Fx5xYq7oh5UDT87ZIJk66uNct7vg633GLuEqT7oJFL
	zC+FmkuWMnOX2DkLOlUoUIg=
X-Google-Smtp-Source: APiQypKcU04anIuUuDBR2LBkZdES0EgcMQG2f13DumHr+5s6EWTox3oW05Drxvg7GexyllNJ5Aeg9A==
X-Received: by 2002:a25:41cb:: with SMTP id o194mr52957517yba.165.1588182227027;
        Wed, 29 Apr 2020 10:43:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cd43:: with SMTP id d64ls2313655ybf.6.gmail; Wed, 29 Apr
 2020 10:43:46 -0700 (PDT)
X-Received: by 2002:a25:ced3:: with SMTP id x202mr57226724ybe.164.1588182226721;
        Wed, 29 Apr 2020 10:43:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588182226; cv=none;
        d=google.com; s=arc-20160816;
        b=NrsfjHXPMs95c+k2+AEsUzvsio1WbjSIHtz61DAt5Fw2PZ2ryl81VD9Uv7K8WEvep4
         gUrCt9IyAE2We7I+rl1IfoPTbhacpGVJPtryXTaZD4XXC2UDuB1/P9QXDs/3vvR2A+He
         i0kGtttsL695NIQheTj1sQ/EpUs98V9HzuUPB3O/JsW+TGy4SA/bEPGJVbJCwGOxs/6U
         DbKZC5LNSNEqnewehaHkFM8lsIU4keNC5EQErAjxehpLl2jIRcq6lVye6S2V/rxcPgx/
         Wjcnu/N44Cdt0ZpM2bnlF5cwJnN1ZukRCsjhssYCQWiaqw4IjZZkAWKzuUF4OsnHrWzh
         xUPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GUC2c7qaVi26ZGKWMBOTx0/+sTgSLxjRbpYLLRvQLZ8=;
        b=nvuNtw37OQHboJP6q42EPMksD/iYwooX9R1RB3BopW2Uu2udRTShxZoH4R7CWPnAp6
         M5cOZC3Qc8e1yBTasj7Y2gtJHA7Rn+Gcf6q73UqKBlgR5PF2met1hp4PiKu6nUo283pO
         /o12MOVgwZvW8xcoBQpA/DXbSyqYExMf5XlT6OyuLqvC8FTwwIlc6kOShQQ3anHchWSe
         dXU9UGPGB42hWejqFdTE3wfiX5E08Ll8FZnsRLJg0T96inzm6btcbnjjhvZr4fHCBoo2
         21xnRlRecm/c+hcuum4CqzDgEgz6lldnnPsBmyX7r/DZak9oJW7BwcpU8IPHG0Slls4i
         vuAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eDaVdQvJ;
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com. [2607:f8b0:4864:20::b42])
        by gmr-mx.google.com with ESMTPS id k128si1332876ybf.1.2020.04.29.10.43.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Apr 2020 10:43:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b42 as permitted sender) client-ip=2607:f8b0:4864:20::b42;
Received: by mail-yb1-xb42.google.com with SMTP id t9so1703397ybo.8
        for <clang-built-linux@googlegroups.com>; Wed, 29 Apr 2020 10:43:46 -0700 (PDT)
X-Received: by 2002:a25:4443:: with SMTP id r64mr53632222yba.41.1588182226158;
 Wed, 29 Apr 2020 10:43:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200319023101.82458-1-irogers@google.com> <20200323105939.GE1534489@krava>
In-Reply-To: <20200323105939.GE1534489@krava>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 29 Apr 2020 10:43:31 -0700
Message-ID: <CAP-5=fU4dUPwRA-XTw6B9Xtc5y7Z0jZzDHU=KFvNfbNXVsONkw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] perf parse-events: fix memory leaks found on parse_events
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
 header.i=@google.com header.s=20161025 header.b=eDaVdQvJ;       spf=pass
 (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b42
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

On Mon, Mar 23, 2020 at 3:59 AM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Wed, Mar 18, 2020 at 07:31:00PM -0700, Ian Rogers wrote:
> > Memory leaks found by applying LLVM's libfuzzer on the parse_events
> > function.
> >
> > Signed-off-by: Ian Rogers <irogers@google.com>
>
> Acked-by: Jiri Olsa <jolsa@redhat.com>
>
> thanks,
> jirka

Ping.

> > ---
> >  tools/perf/util/parse-events.c | 2 ++
> >  tools/perf/util/parse-events.y | 3 ++-
> >  2 files changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> > index 593b6b03785d..1e0bec5c0846 100644
> > --- a/tools/perf/util/parse-events.c
> > +++ b/tools/perf/util/parse-events.c
> > @@ -1482,6 +1482,8 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
> >
> >               list_for_each_entry_safe(pos, tmp, &config_terms, list) {
> >                       list_del_init(&pos->list);
> > +                     if (pos->free_str)
> > +                             free(pos->val.str);
> >                       free(pos);
> >               }
> >               return -EINVAL;
> > diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> > index 94f8bcd83582..8212cc771667 100644
> > --- a/tools/perf/util/parse-events.y
> > +++ b/tools/perf/util/parse-events.y
> > @@ -44,7 +44,7 @@ static void free_list_evsel(struct list_head* list_evsel)
> >
> >       list_for_each_entry_safe(evsel, tmp, list_evsel, core.node) {
> >               list_del_init(&evsel->core.node);
> > -             perf_evsel__delete(evsel);
> > +             evsel__delete(evsel);
> >       }
> >       free(list_evsel);
> >  }
> > @@ -326,6 +326,7 @@ PE_NAME opt_pmu_config
> >       }
> >       parse_events_terms__delete($2);
> >       parse_events_terms__delete(orig_terms);
> > +     free(pattern);
> >       free($1);
> >       $$ = list;
> >  #undef CLEANUP_YYABORT
> > --
> > 2.25.1.696.g5e7596f4ac-goog
> >
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfU4dUPwRA-XTw6B9Xtc5y7Z0jZzDHU%3DKFvNfbNXVsONkw%40mail.gmail.com.
