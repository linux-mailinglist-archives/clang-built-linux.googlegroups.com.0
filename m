Return-Path: <clang-built-linux+bncBDPPFIEASMFBB562ZPZQKGQES6DHBII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 563BC18AB52
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 04:56:41 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id l5sf710532pjr.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 20:56:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584590200; cv=pass;
        d=google.com; s=arc-20160816;
        b=fyRG9S6G95QTEqV9atsBElPV1whma3uI60jCQM0eQ8AvNoMR9ez7nhyQYanl7JGbzW
         ubIBdgjJDnXFrzoG+EJ0ObIWiI48X1iOuM+QLhB413VHWza76oRu98gLLOyt1bgdwdr0
         C+FwKdIjgXntq+NNK2Z+wyrnsjAbJly/diQLQfeR691Iy4lDiIvjgVC1rmjnttC0fq6O
         DhStbTtaePCNdm9YPZyd6hK4ajr3R2JRSlKua09RyKQYtvXCdwM8JK4GJkYtkn9vN9h2
         htPpMOVA3nH+OpTqm+wnpBqb2UXNiFPRhBM2SF2jtJZIKjzYP3Y5KbB1W/h9eHuCQybS
         vkaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vV8BaAcfG9fZCFD4KcZgFY+tdA8MovkzOS8s0UYd500=;
        b=nmlt3vUXXyE2R7oRqOryGWxu+JDuD+lbtJTrPvvK933bugipb5LKVBoVAGaAfT+Smz
         Ooh/oER7prwSzS1u86R9nkR7rVaXCu86ZqGFrukh3odQibWaTCn9sAlysjxxUJOWHiMX
         wWTXX+M/J2fNl9BIGk+tFaKE3JaUZpCPJ0gZmzWTxS1cMGM0eY26EBTBEFBrIMZAO0D6
         8wMYSkgB6e5pID4k3ZIfC2+AoKDEr0Vvsmm/d/EBnPAlrRqlNMXHuwBPZdXfVcrpaOyH
         20aYVzt742TkB4YZr0+wne2rn92qj+Z6Dm7gdbJtxgn7+bCSqgcf+rRzcqGcEZcbrdct
         Zyqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="HLqJ5V/9";
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vV8BaAcfG9fZCFD4KcZgFY+tdA8MovkzOS8s0UYd500=;
        b=MpyK2GmQFt4i6ObG97Q0C5oc4+G1qS1Leb/MkhSVtjRcDWIAyOSgWmCmkEw60VojkQ
         XXEkqvtx0ZrvalLP+KST+Jayhdh9jlFePdDaqCaBvJYNgnCooKJNffQCc25OT3pK0zAe
         U9RahPBcJQ5QpFBnmhQ1DDQD+pjd0EWC7AXDR3MdHKrpKn93F4g0WMD69Bl4s6U47bQG
         txBk0VAklMN1TfVIxnxYKUqunr4Z1pUXJwPZ37U3J0cX+BFEsSQNN59/z0PE7dpdl6LH
         lVcx/uF2W7efM1V6VEWLhmuxlGupreGXpS8HmIZLsxKMTh8I8DJCFR+3ORLeJFYAywU3
         Epuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vV8BaAcfG9fZCFD4KcZgFY+tdA8MovkzOS8s0UYd500=;
        b=cOtTZ6VZr5KkRvvvp9O4Gtl8TieQ2yPnKXQ/Wa2oKrI0EVynQhYmAiUebfdmoxpf4K
         DPGvDwcnZXlfajqrqFcV+PYuPFjakXCTKo3xa3iWbWYabex/Az/OD3fL0NUOTa9b8k/q
         Bw19jLXNJoS7zSXi94ACdsQGPG0Adn0EU7KN/v6wCE3NPmSTTZEXtjEFk+8J120hzoQU
         yT7XUukQLe3fc1YHBd/cxuVEWqNx7CsHD8JnWc4J+eEs9QVYAnx+T8zZgoGLJEfsupVG
         fEtWmH/UVsvHUEY0wLxkOk5SCulpUi6xNAFvNlGEZ/x+dsfJjJxArKy24TfBzCc6QX4e
         SdSg==
X-Gm-Message-State: ANhLgQ1Ac1QbtWfHpCRMTfOUaSXUA+/7ADPwLEf+USpxTw5q6SPbuUy7
	JHffzciPdiqFhsncdOqPy7Q=
X-Google-Smtp-Source: ADFU+vvoAMEKmy8PzGpnXbPR4PBxX12grPMjbzVzQa9s+klextHkwK6Keh3i9Gaxh3z3pHGuN3UJvQ==
X-Received: by 2002:a63:1d4:: with SMTP id 203mr1246572pgb.416.1584590199846;
        Wed, 18 Mar 2020 20:56:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5f8b:: with SMTP id t133ls905199pgb.1.gmail; Wed, 18 Mar
 2020 20:56:39 -0700 (PDT)
X-Received: by 2002:aa7:9f03:: with SMTP id g3mr1836525pfr.287.1584590199377;
        Wed, 18 Mar 2020 20:56:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584590199; cv=none;
        d=google.com; s=arc-20160816;
        b=wcarGJfDSVaJqwuB2Ry4xs5wCDkNAm52UtFOeFjbQKWfM4IprAn426sJ6FmVglcTCW
         cQ3lByxFxejCRRBh3HRWHSb5eUHxvaLjjABxH0kVSqVozUAPy5hm7C6n42lelcn4Up+2
         dTmzbWHu7y+LUkfl5Ti1lcH4t1n+fTzKMhlPyWvg3Co5wvk57Jq6b7LMWZCuezAVwUQi
         fW5WCnLj1+J4fb/eUrVkpgWmGNPc7Seha0P40DrjVvdVcg5hMzPq4xe6mtMenWrgrcpG
         W4EOf51ik93P/FNnROSDBJzrGPR2GI10sqTI8qeyn+79ZC73pukPeRje7PSTd+ByYsge
         4+2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OL5W/cXAcaO5++QZJaWBgs8McWwwSxdm+ZdDM1yl8To=;
        b=T6M5ZLKgiBh3Uwr9oFnEMchPXCdrcXBWFihF05ZF6QBaZeOqwVC7gh6ZvaiceyIjSi
         3UCj14ym6OopAL8NkV3Y4DHyglFERb/qt67posk2+faPHFHrVZf9pYKFN1UOF8EDg1kK
         gyRCQSnqpCmdFIC3peeTzRf+l2hKmkFgbIE0XMirQGS+wjHsT9VcADAFz6bSA9Fwaoxs
         6CSG+jy/kB3BV6+K2/PnadHDOiR+HH9Iq7tGjr5MTvqczIkDkXRGjA6ZCFScl9UStPsu
         NFiaqvGjZg26ZNQne+MsWHx611FSC6y01bcbu+0+ZoKpTjao1CqxmCB+Y1AEes3MEn4l
         rwEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="HLqJ5V/9";
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id i19si237418pjx.1.2020.03.18.20.56.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 20:56:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id p6so1192066qkm.0
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 20:56:39 -0700 (PDT)
X-Received: by 2002:a25:c482:: with SMTP id u124mr1628208ybf.286.1584590198061;
 Wed, 18 Mar 2020 20:56:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200316041431.19607-1-irogers@google.com> <20200318104011.GF821557@krava>
In-Reply-To: <20200318104011.GF821557@krava>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 18 Mar 2020 20:56:26 -0700
Message-ID: <CAP-5=fXQzLMuv-6EWGdFY1p5oLjV9301k1tkYL+R7qYHQR6wXA@mail.gmail.com>
Subject: Re: [PATCH] perf parse-events: fix memory leaks found on parse_events
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
 header.i=@google.com header.s=20161025 header.b="HLqJ5V/9";       spf=pass
 (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::741
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

On Wed, Mar 18, 2020 at 3:40 AM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Sun, Mar 15, 2020 at 09:14:31PM -0700, Ian Rogers wrote:
> > Memory leaks found by applying LLVM's libfuzzer on the parse_events
> > function.
> >
> > Signed-off-by: Ian Rogers <irogers@google.com>
> > ---
> >  tools/lib/perf/evlist.c        | 2 ++
> >  tools/perf/util/parse-events.c | 2 ++
> >  tools/perf/util/parse-events.y | 3 ++-
> >  3 files changed, 6 insertions(+), 1 deletion(-)
> >
> > diff --git a/tools/lib/perf/evlist.c b/tools/lib/perf/evlist.c
> > index 5b9f2ca50591..6485d1438f75 100644
> > --- a/tools/lib/perf/evlist.c
> > +++ b/tools/lib/perf/evlist.c
> > @@ -125,8 +125,10 @@ static void perf_evlist__purge(struct perf_evlist *evlist)
> >  void perf_evlist__exit(struct perf_evlist *evlist)
> >  {
> >       perf_cpu_map__put(evlist->cpus);
> > +     perf_cpu_map__put(evlist->all_cpus);
>
> ugh, yes, could you please put it to separate libperf patch?

Done. https://lkml.org/lkml/2020/3/18/1318

> >       perf_thread_map__put(evlist->threads);
> >       evlist->cpus = NULL;
> > +     evlist->all_cpus = NULL;
>
> there's already change adding this waiting on the list:
>   https://lore.kernel.org/lkml/1583665157-349023-1-git-send-email-zhe.he@windriver.com/

I'm not seeing this in perf/core on
git://git.kernel.org/pub/scm/linux/kernel/git/acme/linux.git
The previous thread mentions Arnaldo porting it. It is only 1
statement so I've left it in.

> >       evlist->threads = NULL;
> >       fdarray__exit(&evlist->pollfd);
> >  }
> > diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> > index a14995835d85..997862224292 100644
> > --- a/tools/perf/util/parse-events.c
> > +++ b/tools/perf/util/parse-events.c
> > @@ -1482,6 +1482,8 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
> >
> >               list_for_each_entry_safe(pos, tmp, &config_terms, list) {
> >                       list_del_init(&pos->list);
> > +                     if (pos->free_str)
> > +                             free(pos->val.str);
>
> ack, would be nice to have  perf_evsel__free_config_terms generalized
> to work directly over config terms list, so we'd have only single
> cleanup function
>
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
>
> ack
>
> >       }
> >       free(list_evsel);
> >  }
> > @@ -326,6 +326,7 @@ PE_NAME opt_pmu_config
> >       }
> >       parse_events_terms__delete($2);
> >       parse_events_terms__delete(orig_terms);
> > +     free(pattern);
>
> ack
>
> could you please send the separate change for libperf?
> and synchronize with that other patch mentioned above

Done-ish. Thanks,
Ian

> thanks,
> jirka
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200318104011.GF821557%40krava.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfXQzLMuv-6EWGdFY1p5oLjV9301k1tkYL%2BR7qYHQR6wXA%40mail.gmail.com.
