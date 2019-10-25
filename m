Return-Path: <clang-built-linux+bncBDPPFIEASMFBBD54ZTWQKGQELCTIZVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EC4E50CE
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 18:08:47 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id l15sf401688lje.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 09:08:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572019727; cv=pass;
        d=google.com; s=arc-20160816;
        b=dmBKUB1D1e0QdFM6r8jq48U3lacG0WHZw2t6Qppe76mp/CUbey3ZHY/xFShGdOS4sg
         MZvt90++xQdS4QAOqRRxXb5//++B8dmlndFk5mBITAJLdErGdqIvb8ZTufGSWkDh9QV/
         Rk/ABXfAaFMq+z6Zj3Wv7O+jmvaT+cVV2oJhmQ/JArnuWkbcaVAFjKkPVuYE5tepq7ae
         noPXmSqbxTiEjH6CwjRsFNCwPTngMyFSnLjPugN+AqYf7IvyARu1u9urah370glyGl8O
         MNX8S+hdwQPNNI0yiS171xrSpqXDJI5pTgOeCjXS4VKDKm1rF28IfoS7kG2EXPHI2m1X
         xe/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4gbswwAObLqTcWtiWfwbvuUSDAyEMS/Fv5tywfaQhiA=;
        b=eW/9rrOZgbsa7D79AvqoFDbjswnlJLzcIJjJ1vLOmAk41Ud1P9hThFODf1adBza4T4
         roxYuFAOBq8vRGWk5eZ7d3XGZKS3ru01nAY1sTfuDUGFSsQHgqTkCKHLKYYxva564UMh
         TCRvacPOzeyZmBqKp/IrsyCJKDALqEY+34tvsknL5HznI5i3orIz5Zc0+wYGSh6dz9S3
         6uKZfEyV/tR7FbhrdpcxqYzwhg+zJ2A7ZbeKqJC4cahllI2ZWtzMx7x/DBVy+zRq5dje
         gNUJnYf7MlW9xiaBJeF0rvSYGbvRuHjhlkOvnBwEruHg1AR4w2iCY9E85vuUv0M1bOU5
         HNSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TX3fDtsk;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4gbswwAObLqTcWtiWfwbvuUSDAyEMS/Fv5tywfaQhiA=;
        b=s9sL4Wu/rkyf5thTBjzqHMvI6Zucet0K/6J5+xLVy+oYdSm0JV0EqT5OwNrCwx5Rd1
         a+MyHg10xLsRLXzlQ8LdUFMuoZXgRfw13AHl5jeE40j4IT8N4/YNzAhjSI0Bw1cMnpUN
         2sgA6rDdr4bGluC3Av7hL1KFT1nmNgByYrPoQcih5QmtepjW2alw+F16YY94KjBkMOCI
         oxCzuLs6v6NLG7tzdOjJXWTe48VEYxe0uO9Fn5yv0o5BXx4D0YMvdh4+9rp5scljOGHT
         uAsd4LD7qvbaaauLLqMFezHKUaq3JuQumzcb348Qlc/mXAAkD3hIYXksVaL1ahDKTZNf
         yqnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4gbswwAObLqTcWtiWfwbvuUSDAyEMS/Fv5tywfaQhiA=;
        b=F81amQVToKQw+HMpxcmNruJekiWAoocbH5jP9DXE0VhU4iaEuiVynmLJ+rkNbNfjcV
         SxSMdK6m4/P1v3B6iJ9MBzukfvs2voABgE76rlavi++pdL41Gbo0MYBmQgLCMoyYWdL9
         uIt7EJbWt8f6caCKA2H6Qugg9+pKfc8ZvrkAeaojb3GmyTC9Buio1btdW6r6OkGUyXHH
         QdGwcTKqg9ERbju5o+0L5lpEuxDizsYlmxx1mUdUjnCxVWZBrtNNYtG4na45/hZRs9zM
         VFLpZVCBUcanQ3zIjDmpZwjzM1chvBG+oEJiQsfKyVuQ3RuE6W8vFlvNh6fLQAEGbw+f
         /qTg==
X-Gm-Message-State: APjAAAXUJWFda4OkfAZgQbI1j1j/eYSGjxJe40u7v1MaadnqNflDcdS3
	VranL5dBV/Y0nh6qBN/+uKA=
X-Google-Smtp-Source: APXvYqwI/38aR5CX2lkVesajcJxAQ3fwcNXHH26TZp10k6NVqMbfpdW4DN+HacZUNvbb6UnZ1Q6p0A==
X-Received: by 2002:ac2:4d04:: with SMTP id r4mr3367068lfi.136.1572019727180;
        Fri, 25 Oct 2019 09:08:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3101:: with SMTP id x1ls1315869ljx.1.gmail; Fri, 25 Oct
 2019 09:08:46 -0700 (PDT)
X-Received: by 2002:a2e:7312:: with SMTP id o18mr3115520ljc.32.1572019726664;
        Fri, 25 Oct 2019 09:08:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572019726; cv=none;
        d=google.com; s=arc-20160816;
        b=QMDiZjm5BEWUkG2FOxhOznxv0i4kHoODr7tt5R78nC6t3uRrulf2gSdeH0WOlxzYSv
         QMeUBVMPZKWKrH1WMfej1xxTFcpOHNoQcymCur1sX//qGaJdODjWwTGrLwrdWGjNfgST
         Q8kuvFie5gbhhB39TZy0IEc6W0/avhS+Qqgdot/DWOMYmlIeUQukxwZC3CjWwHnJ4x6p
         D7a2EvEYGtICpwJAx3c5zyWg/GR3L+Hv+hjcYm71EXVhoTKynbWVmrlBHBgEqGZLur2D
         PYBRtPCFn9XtYVjzatT3hXSJ3tRcG8s6OfvxDbkd0rnzsI7qnIsn6XA32GNiJ4Wu5doH
         VBwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pUAd15LRZOGwcYUMNoWJDAN25LcrehG7DRhTjZLaCUQ=;
        b=CRFfbpU6UZxka80GaunIznOXmwXhkpqee4XX5NgJPcvI12XhtTWucFgnAKmn/niFLp
         djOrUzG/aeGFER1CIFJNngR/WyWFWGm1tJY2Ia9Cba5Z4P7pPWUpUllX0yko7+fwkahR
         qC+jJs4yhkkhyStPT47wVtfp1BZpMtrlenpwpPhdiEDdCofc+/DVSwWqYcb4VzgoPBGk
         DSI6AVvDPcFhPRg7EAUs3sQv29Nw2Qx2TlQgxukaSi4HqadHPeWTrjAzy0Ad9P/eszcc
         bQFo5sBKTnO36TclAp5YZIkblioCnmPAy1dXz28miW5X7ogtpREM5dsE0+UAZkQrgp/u
         WaZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TX3fDtsk;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id 17si113731lfa.3.2019.10.25.09.08.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 09:08:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id p21so2736305wmg.2
        for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 09:08:46 -0700 (PDT)
X-Received: by 2002:a1c:a791:: with SMTP id q139mr4111694wme.155.1572019725853;
 Fri, 25 Oct 2019 09:08:45 -0700 (PDT)
MIME-Version: 1.0
References: <20191023005337.196160-1-irogers@google.com> <20191024190202.109403-1-irogers@google.com>
 <20191024190202.109403-7-irogers@google.com> <20191025082714.GH31679@krava>
In-Reply-To: <20191025082714.GH31679@krava>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 25 Oct 2019 09:08:34 -0700
Message-ID: <CAP-5=fU6quu74JwZSd70UMTSS2wf_29hBgvdXfJZedOfrE7ohw@mail.gmail.com>
Subject: Re: [PATCH v3 6/9] perf tools: add destructors for parse event terms
To: Jiri Olsa <jolsa@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Namhyung Kim <namhyung@kernel.org>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andi Kleen <ak@linux.intel.com>, 
	Jin Yao <yao.jin@linux.intel.com>, Adrian Hunter <adrian.hunter@intel.com>, 
	Kan Liang <kan.liang@linux.intel.com>, John Garry <john.garry@huawei.com>, 
	LKML <linux-kernel@vger.kernel.org>, netdev@vger.kernel.org, bpf@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Stephane Eranian <eranian@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TX3fDtsk;       spf=pass
 (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::341
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

On Fri, Oct 25, 2019 at 1:27 AM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Thu, Oct 24, 2019 at 12:01:59PM -0700, Ian Rogers wrote:
> > If parsing fails then destructors are ran to clean the up the stack.
> > Rename the head union member to make the term and evlist use cases more
> > distinct, this simplifies matching the correct destructor.
>
> nice did not know about this.. looks like it's been in bison for some time, right?

Looks like it wasn't in Bison 1 but in Bison 2, we're at Bison 3 and
Bison 2 is > 14 years old:
https://web.archive.org/web/20050924004158/http://www.gnu.org/software/bison/manual/html_mono/bison.html#Destructor-Decl

> >
> > Signed-off-by: Ian Rogers <irogers@google.com>
> > ---
> >  tools/perf/util/parse-events.y | 69 +++++++++++++++++++++++-----------
> >  1 file changed, 48 insertions(+), 21 deletions(-)
> >
> > diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> > index 545ab7cefc20..4725b14b9db4 100644
> > --- a/tools/perf/util/parse-events.y
> > +++ b/tools/perf/util/parse-events.y
> > @@ -12,6 +12,7 @@
> >  #include <stdio.h>
> >  #include <linux/compiler.h>
> >  #include <linux/types.h>
> > +#include <linux/zalloc.h>
> >  #include "pmu.h"
> >  #include "evsel.h"
> >  #include "parse-events.h"
> > @@ -37,6 +38,25 @@ static struct list_head* alloc_list()
> >       return list;
> >  }
> >
> > +static void free_list_evsel(struct list_head* list_evsel)
> > +{
> > +     struct perf_evsel *pos, *tmp;
> > +
> > +     list_for_each_entry_safe(pos, tmp, list_evsel, node) {
> > +             list_del_init(&pos->node);
> > +             perf_evsel__delete(pos);
> > +     }
> > +     free(list_evsel);
>
> I think you need to iterate 'struct evsel' in here, not 'struct perf_evsel'
>
> should be:
>
>         struct evsel *evsel, *tmp;
>
>         list_for_each_entry_safe(evsel, tmp, list_evsel, core.node) {
>                 list_del_init(&evsel->core.node);
>                 evsel__delete(evsel);
>         }

Thanks, I'll address this.

Ian

> thanks,
> jirka
>
> > +}
> > +
> > +static void free_term(struct parse_events_term *term)
> > +{
> > +     if (term->type_val == PARSE_EVENTS__TERM_TYPE_STR)
> > +             free(term->val.str);
> > +     zfree(&term->array.ranges);
> > +     free(term);
> > +}
> > +
> >  static void inc_group_count(struct list_head *list,
> >                      struct parse_events_state *parse_state)
> >  {
> > @@ -66,6 +86,7 @@ static void inc_group_count(struct list_head *list,
> >  %type <num> PE_VALUE_SYM_TOOL
> >  %type <num> PE_RAW
> >  %type <num> PE_TERM
> > +%type <num> value_sym
> >  %type <str> PE_NAME
> >  %type <str> PE_BPF_OBJECT
> >  %type <str> PE_BPF_SOURCE
> > @@ -76,37 +97,43 @@ static void inc_group_count(struct list_head *list,
> >  %type <str> PE_EVENT_NAME
> >  %type <str> PE_PMU_EVENT_PRE PE_PMU_EVENT_SUF PE_KERNEL_PMU_EVENT
> >  %type <str> PE_DRV_CFG_TERM
> > -%type <num> value_sym
> > -%type <head> event_config
> > -%type <head> opt_event_config
> > -%type <head> opt_pmu_config
> > +%destructor { free ($$); } <str>
> >  %type <term> event_term
> > -%type <head> event_pmu
> > -%type <head> event_legacy_symbol
> > -%type <head> event_legacy_cache
> > -%type <head> event_legacy_mem
> > -%type <head> event_legacy_tracepoint
> > +%destructor { free_term ($$); } <term>
> > +%type <list_terms> event_config
> > +%type <list_terms> opt_event_config
> > +%type <list_terms> opt_pmu_config
> > +%destructor { parse_events_terms__delete ($$); } <list_terms>
> > +%type <list_evsel> event_pmu
> > +%type <list_evsel> event_legacy_symbol
> > +%type <list_evsel> event_legacy_cache
> > +%type <list_evsel> event_legacy_mem
> > +%type <list_evsel> event_legacy_tracepoint
> > +%type <list_evsel> event_legacy_numeric
> > +%type <list_evsel> event_legacy_raw
> > +%type <list_evsel> event_bpf_file
> > +%type <list_evsel> event_def
> > +%type <list_evsel> event_mod
> > +%type <list_evsel> event_name
> > +%type <list_evsel> event
> > +%type <list_evsel> events
> > +%type <list_evsel> group_def
> > +%type <list_evsel> group
> > +%type <list_evsel> groups
> > +%destructor { free_list_evsel ($$); } <list_evsel>
> >  %type <tracepoint_name> tracepoint_name
> > -%type <head> event_legacy_numeric
> > -%type <head> event_legacy_raw
> > -%type <head> event_bpf_file
> > -%type <head> event_def
> > -%type <head> event_mod
> > -%type <head> event_name
> > -%type <head> event
> > -%type <head> events
> > -%type <head> group_def
> > -%type <head> group
> > -%type <head> groups
> > +%destructor { free ($$.sys); free ($$.event); } <tracepoint_name>
> >  %type <array> array
> >  %type <array> array_term
> >  %type <array> array_terms
> > +%destructor { free ($$.ranges); } <array>
> >
> >  %union
> >  {
> >       char *str;
> >       u64 num;
> > -     struct list_head *head;
> > +     struct list_head *list_evsel;
> > +     struct list_head *list_terms;
> >       struct parse_events_term *term;
> >       struct tracepoint_name {
> >               char *sys;
> > --
> > 2.23.0.866.gb869b98d4c-goog
> >
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfU6quu74JwZSd70UMTSS2wf_29hBgvdXfJZedOfrE7ohw%40mail.gmail.com.
