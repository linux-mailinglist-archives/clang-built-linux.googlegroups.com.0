Return-Path: <clang-built-linux+bncBDPPFIEASMFBBDVSZTWQKGQEDJNAWJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id B26D1E505E
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 17:47:26 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id e25sf1445256wra.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 08:47:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572018446; cv=pass;
        d=google.com; s=arc-20160816;
        b=XwWVHVxiK3O1akUCyyMLgu52JCaU153w+QroThsF0qoL13q25SUNp8vCGq41LTIyn5
         z+rPJ+DX7ueOsOrcYeOB30pbRyIGgQ7tZ1IUS7EMvGhWC4O/c/tiY4Ngemiay5b49Zq5
         SRierAliQvWesmIbdjcWG1Zs70y+teOE2LnCDh9Ix4Oh3yUK35fu4+lQ1avynvJzV8M3
         fVTHEMjnT+aC3KzBe/Zjn+hapbdNo0kdwa0lTWcAIr/j4r6BF5MM4ezblDmEVC1prysI
         zVyUM28+T1/fHZQRDkj3EYpKIIDoC8YUcN266o1cu7DOygm/0CUyDRE0Fy3xhJtGd7O+
         +swA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8HLUNCoEC05qLHGLeKrn2nt1M/6QHSZ4uzzn7MF/Bbo=;
        b=Dnu+93CbBcJdJacLQ09UTc8LgeOOdqOJ67ewmiNpHNHPR19j0F3I0+OhXMxQUX0kRr
         KMiyYd1UHioltbCceCsmCGW4Pkb27+Mj0H1PMXT+zkM4TsltdbRFfbbpwenxZBXqH+8m
         tG03+IDdD30N0A0MISGfui5oc7HS4jmZEJE1ACnJD/nOP4QMuZvOdMeecI3KqXnFbewn
         fdVFZ5uriYmiji+1CLzbBtL4vn7jWIquYG12EN9qnAJn/So3Pm+bedo9HevRQvHK1syU
         13cEmXh/bWuFHB2oMG23e5ZZtRKGC8hz/3uVo0VWy5w70Wo9gieO6cc7XVybbMBlvDX4
         XLrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ga91dKJk;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8HLUNCoEC05qLHGLeKrn2nt1M/6QHSZ4uzzn7MF/Bbo=;
        b=k21vQh71H/V1m5H9dJ0OS+dPoFXDZYvmw8Ket/1P248wdTx84irtWMrNDgVkUq9JjI
         z/egr4GpQFEZiMyftDjNVf8XSwXgN2TWrnS9UsFyjtjNV8dXceXlUW8GqEA7F0+19CIq
         AXSoNUckBDS91Aux2F82XdcB9BwK32ukWe4J1HGtzN6GgRNUbK9gQzJMZUBbreRVcfzi
         NRExvaIw59cZnaDuNCEFT76PXcsxdDdCPCApmxAfRLpeS8gmLKuc9MiR0ukfoefTsZSu
         92zd18bO1IbaDchZHGcpHdKP9HMpuOkDx8W9r4EfvOtNqwbhC0flic4yKpWfPD9Mg01M
         yfRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8HLUNCoEC05qLHGLeKrn2nt1M/6QHSZ4uzzn7MF/Bbo=;
        b=iLKYSDuxMidn47FxHMg8vFi6xM1R66g2zQqdi2qmvyEhlYLCSmD4CBBFG1YNY2qvEv
         lAhZhulp3qQDjwzRJQnlB0Iw4KXgWBvStTueld6h9GmmsUQbxuUGhKpsfM/VF4xMjmY1
         d/tvpiwK5b4ZUAdFEiNwawZseHP+SnvaS1b2fS9avusSjN1Jt/B5+2648dhVc8PV3Mkg
         Xdj/1Do0zklU7gpeAs8F8HRGHWdZSaNzeXyBVdSFcIma7Sz4tn32/Sci1Q7ALMfnA2CD
         q8gfp/lPA56xZVHt4w2Y+JLF5rO43WBMTidxep70SVuhpvo3ztbfaK/Hi0ki1xMCOmZo
         fqPg==
X-Gm-Message-State: APjAAAV/cBHrOBGKZIvl4d3SRu1lt4py0dNKAuZBq7hftYAMlB+dLUUw
	+9L6Fhg8/PVRckYBOeArXhs=
X-Google-Smtp-Source: APXvYqwh3i4rvDRmtjQnmYA/B27f6hfk9r6f015kxa7EHXq0QpH2RKegoCYp2WFCA2O1cNLQIyuvaQ==
X-Received: by 2002:a1c:2342:: with SMTP id j63mr4004256wmj.56.1572018446389;
        Fri, 25 Oct 2019 08:47:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:8b1d:: with SMTP id n29ls6292159wra.8.gmail; Fri, 25 Oct
 2019 08:47:25 -0700 (PDT)
X-Received: by 2002:a5d:404d:: with SMTP id w13mr3855388wrp.185.1572018445936;
        Fri, 25 Oct 2019 08:47:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572018445; cv=none;
        d=google.com; s=arc-20160816;
        b=sgm9Sqb396nkflduBgCtGAPlLB1v1nvV2bIO+yALygYkMzlVxYlE0c247dQ7uKpZnw
         b3htnMlWD8fMRm6aMqwmxqFaAIRqOJC8/mqyvqiV4CBX+xTCq94WIV3oQp4S8i9vvXvU
         jkUw4Vs/xNs9C3kACSPIIhqWs7CyzsagDhhQAsBanc5YgTHa91j6Oc5K6ZwjyiLDiSej
         PTvuQrYOiV9xDO9RMtzU/zJeWCxgZnLzLfA/5EY6TkQw8AgwrYu5Nha9mrPX+A0uJ00R
         pqr0BcN1gC6HOtbBpcOzC4XS5KezuPxsbw2zZutFF6/9m2ZNU2xiCAL01445zWqiaMRh
         wRTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fo4JPUIMC83Jn+ORQE5fOd6wpwt98Yvm2b1ZRTBSf+k=;
        b=JoIH7eOXLjgmZMAwZacyyKrut/6Q7yGLbwn2sEb2el3Af1q8bYvALWInIp7bOFHgzU
         C1+qLocNrzWy47+UVXsAyXk49KyHjzYZGvwveoZU/sI//EdRm0Fd1virUVz+yVHLPIpm
         i4JYByrPg2r+r4QYUcXJ7WJ6ZsYu3Jgv42CKLjppEQmaJmxPQ0s4+tp4MACEfhrgB5np
         G/Lb7xKtOLd/GcEzRBW0HZBw8hTZoE1fX/gA/34ZdaTkMIoxt7j2zzjmH/b74FNep5q4
         hstqtxwlNxgMWkZ1viEIvle72oEePFDe31GzvSrBXCen7bGFbgOxnqYofZVLFDD3VcZf
         noUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ga91dKJk;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id z8si128492wmi.1.2019.10.25.08.47.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 08:47:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id p4so2877602wrm.8
        for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 08:47:25 -0700 (PDT)
X-Received: by 2002:adf:e651:: with SMTP id b17mr3130375wrn.191.1572018445122;
 Fri, 25 Oct 2019 08:47:25 -0700 (PDT)
MIME-Version: 1.0
References: <20191023005337.196160-1-irogers@google.com> <20191024190202.109403-1-irogers@google.com>
 <20191024190202.109403-3-irogers@google.com> <20191025080142.GF31679@krava>
In-Reply-To: <20191025080142.GF31679@krava>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 25 Oct 2019 08:47:12 -0700
Message-ID: <CAP-5=fWoHN9wqWasZyyu8mB99-1SOP3NhTT9XX6d99aTG6-AOA@mail.gmail.com>
Subject: Re: [PATCH v3 2/9] perf tools: splice events onto evlist even on error
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
 header.i=@google.com header.s=20161025 header.b=ga91dKJk;       spf=pass
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

On Fri, Oct 25, 2019 at 1:01 AM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Thu, Oct 24, 2019 at 12:01:55PM -0700, Ian Rogers wrote:
> > If event parsing fails the event list is leaked, instead splice the list
> > onto the out result and let the caller cleanup.
> >
> > An example input for parse_events found by libFuzzer that reproduces
> > this memory leak is 'm{'.
> >
> > Signed-off-by: Ian Rogers <irogers@google.com>
> > ---
> >  tools/perf/util/parse-events.c | 17 +++++++++++------
> >  1 file changed, 11 insertions(+), 6 deletions(-)
> >
> > diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> > index edb3ae76777d..f0d50f079d2f 100644
> > --- a/tools/perf/util/parse-events.c
> > +++ b/tools/perf/util/parse-events.c
> > @@ -1968,15 +1968,20 @@ int parse_events(struct evlist *evlist, const char *str,
> >
> >       ret = parse_events__scanner(str, &parse_state, PE_START_EVENTS);
> >       perf_pmu__parse_cleanup();
> > +
> > +     if (!ret && list_empty(&parse_state.list)) {
> > +             WARN_ONCE(true, "WARNING: event parser found nothing\n");
> > +             return -1;
> > +     }
> > +
> > +     /*
> > +      * Add list to the evlist even with errors to allow callers to clean up.
> > +      */
> > +     perf_evlist__splice_list_tail(evlist, &parse_state.list);
>
> I still dont understand this one.. if there was an error, the list
> should be empty, right? also if there's an error and there's something
> on the list, what is it? how it gets deleted?
>
> thanks,
> jirka

What I see happening with PARSER_DEBUG for 'm{' is (I've tried to
manually tweak the line numbers to be consistent with the current
parse-events.y, sorry for any discrepancies):

Starting parse
Entering state 0
Reading a token: Next token is token PE_START_EVENTS (1.1: )
Shifting token PE_START_EVENTS (1.1: )
Entering state 1
Reading a token: Next token is token PE_EVENT_NAME (1.0: )
Shifting token PE_EVENT_NAME (1.0: )
Entering state 8
Reading a token: Next token is token PE_NAME (1.0: )
Shifting token PE_NAME (1.0: )
Entering state 46
Reading a token: Next token is token '{' (1.1: )
Reducing stack by rule 50 (line 510):
-> $$ = nterm opt_event_config (1.0: )
Stack now 0 1 8 46
Entering state 51
Reducing stack by rule 27 (line 229):
  $1 = token PE_NAME (1.0: )
  $2 = nterm opt_event_config (1.0: )
-> $$ = nterm event_pmu (1.0: )
Stack now 0 1 8
Entering state 25
Reducing stack by rule 19 (line 219):
  $1 = nterm event_pmu (1.0: )
-> $$ = nterm event_def (1.0: )
Stack now 0 1 8
Entering state 47
Reducing stack by rule 17 (line 210):
  $1 = token PE_EVENT_NAME (1.0: )
  $2 = nterm event_def (1.0: )
-> $$ = nterm event_name (1.0: )
Stack now 0 1
Entering state 23
Next token is token '{' (1.1: )
Reducing stack by rule 16 (line 207):
  $1 = nterm event_name (1.0: )
-> $$ = nterm event_mod (1.0: )
Stack now 0 1
Entering state 22
Reducing stack by rule 14 (line 191):
  $1 = nterm event_mod (1.0: )
-> $$ = nterm event (1.0: )
Stack now 0 1
Entering state 21
Reducing stack by rule 7 (line 147):
  $1 = nterm event (1.0: )
-> $$ = nterm groups (1.0: )
Stack now 0 1
Entering state 18
Next token is token '{' (1.1: )
Reducing stack by rule 3 (line 119):
  $1 = nterm groups (1.0: )
-> $$ = nterm start_events (1.0: )
Stack now 0 1
Entering state 17
Reducing stack by rule 1 (line 115):
  $1 = token PE_START_EVENTS (1.1: )
  $2 = nterm start_events (1.0: )
-> $$ = nterm start (1.1: )
Stack now 0
Entering state 3
Next token is token '{' (1.1: )
Error: popping nterm start (1.1: )
Stack now 0
Cleanup: discarding lookahead token '{' (1.1: )
Stack now 0

Working backward through this we're going:
start: PE_START_EVENTS start_events
https://github.com/torvalds/linux/blob/master/tools/perf/util/parse-events.y#L115

start_events: groups
{
struct parse_events_state *parse_state = _parse_state;
parse_events_update_lists($1, &parse_state->list); // <--- where list
gets onto the state
}
https://github.com/torvalds/linux/blob/master/tools/perf/util/parse-events.y#L119

groups: event
https://github.com/torvalds/linux/blob/master/tools/perf/util/parse-events.y#L147

event: event_mod
https://github.com/torvalds/linux/blob/master/tools/perf/util/parse-events.y#L191

event_mod: event_name
https://github.com/torvalds/linux/blob/master/tools/perf/util/parse-events.y#L207

event_name: PE_EVENT_NAME event_def
https://github.com/torvalds/linux/blob/master/tools/perf/util/parse-events.y#L210

event_def: event_pmu
https://github.com/torvalds/linux/blob/master/tools/perf/util/parse-events.y#L219

event_pmu: PE_NAME opt_event_config
{
...
ALLOC_LIST(list);  // <--- where list gets allocated
...
https://github.com/torvalds/linux/blob/master/tools/perf/util/parse-events.y#L229

opt_event_config:
https://github.com/torvalds/linux/blob/master/tools/perf/util/parse-events.y#L510

So the parse_state is ending up with a list, however, parsing is
failing. If the list isn't adding to the evlist then it becomes a
leak. Splicing it onto the evlist allows the caller to clean this up
and avoids the leak. An alternate approach is to free the failed list
and not get the caller to clean up. A way to do this is to create an
evlist, splice the failed list onto it and then free it - which winds
up being fairly identical to this approach, and this approach is a
smaller change.

Thanks,
Ian

> > +
> >       if (!ret) {
> >               struct evsel *last;
> >
> > -             if (list_empty(&parse_state.list)) {
> > -                     WARN_ONCE(true, "WARNING: event parser found nothing\n");
> > -                     return -1;
> > -             }
> > -
> > -             perf_evlist__splice_list_tail(evlist, &parse_state.list);
> >               evlist->nr_groups += parse_state.nr_groups;
> >               last = evlist__last(evlist);
> >               last->cmdline_group_boundary = true;
> > --
> > 2.23.0.866.gb869b98d4c-goog
> >
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfWoHN9wqWasZyyu8mB99-1SOP3NhTT9XX6d99aTG6-AOA%40mail.gmail.com.
