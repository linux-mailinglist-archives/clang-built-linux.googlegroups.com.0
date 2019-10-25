Return-Path: <clang-built-linux+bncBDPPFIEASMFBBNFUZTWQKGQEO2G6GPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF47E5080
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 17:52:21 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id z9sf1448588wrq.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 08:52:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572018741; cv=pass;
        d=google.com; s=arc-20160816;
        b=fdNycwB6Mr7h8sSn7Tycv826gZjFQHgZMaEzqMbeW6gCihry5OqoU8QXn8nIVm/hqA
         p3lL6GDvEzKhoCw9jss5d/HHnnNTyUuh46ueVN44+BxrnSAmKOmxQCIlm6RLU0u+LNBW
         cadCeDpc7nQzuqgLvVkCit9xnba4gcJfP7JXXBF/b8LavfTHACiYuMjZHnQhN7RMqJ/t
         Fir4p2gWN142xBW6/DyqBkwl6Q3QIEQFJeSbIWua3mF39gqPkdYwwrVTxphG8MalkS8i
         tg3Px/W6W7r5X4Wgg+1/UKqgD4rcp30Rl7hyC0C1MxzMKPe5xYIsNZUaygX1N3ooHyvP
         Q7WQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6EyskAJDhurQ1EP48M+cK57KThOuYF5YzkzLWXyoQ9o=;
        b=LWcOsM+3qVYguJiR4xqny3pnTh7/ntdCBYiELRfvGjppDT4+YhhVtDazVKWvruVS9u
         +BgyKN3MyhzcymLOVvtJ6H70AVYFv/2IifQpwRFxCGfHLzcQysDDNUIMsAj9FYvc2EFx
         2o1Tpbdf2L3qWm+cPmsMAAVpP+AFrGHnhNYZ3D5nPCqIdE+qMnSszroH3k1fwRFe9cC9
         L7idwOJIPwXjbkn9XEzUNBp/ewBclXaCcr9pGFlm9oFZUdYCpPW++pl3Rjjzltw9xXNx
         g+QGdcDvQPVP/POke2yTInMOyKO2vO9ywf5vzTu8k2RgE+UFu730Xb/hsiNwOslz3ond
         u85Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="qdNod/O2";
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6EyskAJDhurQ1EP48M+cK57KThOuYF5YzkzLWXyoQ9o=;
        b=GplNVM7LtEHhiM1T8bcL0Q3Vna4oEnu+chKxdbAqw+Q//dBIBFw3s5DCBggDO92c0N
         OAXwT1Ms7ZY1+JAOa23FvybH55JFyvdO/TRohrYKkTsusHGAnLIRHF4uaRgU6Xl47Aqe
         qCpgDu1Cwddt+UlyPSGJCZU/ri59TwTOQCExVixQNrFg/tXVCewP89V2C5VbmCqzD8lC
         JX3wKmoUe5N5x7335kTDfk5rF7bURzMtORn/X1GYSoqt2crdRfJ5vlzp1jituhctthDE
         bruJFCoCZ1QR4xsTmff3KCfiYLI82a83mZriN/LqI1lNTeACT+wNWF8L9ObfTuzOIRBE
         Cs0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6EyskAJDhurQ1EP48M+cK57KThOuYF5YzkzLWXyoQ9o=;
        b=NpMswtGnPKi3DwVLb+MZX42ltB/USGszshMsEjqnTpTfIHJWy/GqIrOAhmggR6zXFo
         sUivK+1ja9N+vYAHXFCyRfH5ExeT96eDyOFUVtZvShv8r8HaiD2n1KszchUExuJWspRC
         cKig0hVf5duR0XLhEstq0/QJPSIv5qJcPm5tEak4wkdaqyqa48542RGRiIGzLwydF1ql
         6yAtEPhPdAEN0DEKxK+Vspkh/C0NCli0A+I5FiFZMSsz7EtsirX1R6EFabOXj4Fzbz/l
         YB1TcHphwaJSZhD2zOmdB5xG4NovMueciktoqBae3CfxxuZ2C1QB5naaYcWE81cohfH9
         yc3w==
X-Gm-Message-State: APjAAAUaZ21A2YND1ngOy3c9f7KpyaC6dUzcmCRJP5gy2nRD5PcY2536
	fGec/20LJQ0Xf/Sf85boDrE=
X-Google-Smtp-Source: APXvYqzV3QamdaO7q7+UYw6KJ2FJTXjzGIbC+B5w/7o3qDbYeMRAAWHzdmSyhGRKVCoriHf+NEwxEA==
X-Received: by 2002:a1c:a848:: with SMTP id r69mr4005926wme.83.1572018740997;
        Fri, 25 Oct 2019 08:52:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1a10:: with SMTP id a16ls1866366wma.5.gmail; Fri, 25 Oct
 2019 08:52:20 -0700 (PDT)
X-Received: by 2002:a1c:44b:: with SMTP id 72mr4035750wme.72.1572018740454;
        Fri, 25 Oct 2019 08:52:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572018740; cv=none;
        d=google.com; s=arc-20160816;
        b=NWNb3VOyRRadCGKijTvT3MpVBTgoqNM0rHyptR6qSFfX1y1Qf5e++gbzenuCRJfyx1
         dJKgvY//cakuD+hLX0M3NWgVbeHwQuJWAgFPc/i4tZBBZtYcA3B2Ti49yVTVbn3+qdml
         6E6zh+YZwHclq1zZuTHC2EexA/gMi7lqbyubqhZP2g29xIxljyz0H609QlS9nU+1C0nF
         V4tDvS8DMTC/f9Z/NGMS2s4DPTgFwiIHYA8+FzbV1s7h96NktHGmccPwxkgFLVHXWxod
         WDsGzm6sDtb9Ld5gGUzhL3jaHTgOWzaoEhD81qFKZq1gGB6F7oKPMYw0PfAuRmMvI53n
         PJtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MkEnZfsIQrngMILmeAT4dBDXyh5jmqSJ5s+5PTuBqsM=;
        b=BoONwljPrucc7Ykx28H4tJm5aXGJrdxNqUIAsLDvPBc8/w9wnsMUJWayk/rRwo/LKl
         SnFE1WjsgzyWJyb4h1iCbrOlfxQ9c3aCHB5nKvVmnkqorcufhXbXvbSAVKOUHGNGls0y
         lwHBwketff/crXM8XfoVf3OG8dSjL+gps9iR6LbhtBv+MbkfoDCmm994DMnZAx5qVRQA
         hZuiE5OrX4dIIQKIXA80HmeQdSkL0iOQ5D/IJkfomcIfnYxjdO6SWW2PrYekzRk4dxSG
         LHILegMbSAYDprB5kmHxs4Jb8pBc4RwrkYjs13DjAOIfL5ShL+RjaPm9heQCY7PfMbwZ
         OSZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="qdNod/O2";
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id q3si139560wrp.5.2019.10.25.08.52.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 08:52:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id 22so2368008wms.3
        for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 08:52:20 -0700 (PDT)
X-Received: by 2002:a1c:6641:: with SMTP id a62mr2300413wmc.54.1572018739487;
 Fri, 25 Oct 2019 08:52:19 -0700 (PDT)
MIME-Version: 1.0
References: <20191023005337.196160-1-irogers@google.com> <20191024190202.109403-1-irogers@google.com>
 <20191024190202.109403-4-irogers@google.com> <20191025081046.GG31679@krava>
In-Reply-To: <20191025081046.GG31679@krava>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 25 Oct 2019 08:52:07 -0700
Message-ID: <CAP-5=fW6PV5xYDyNViz_U9Y5Up8B30tUoyCuf_jM0XLj2ESQRA@mail.gmail.com>
Subject: Re: [PATCH v3 3/9] perf tools: ensure config and str in terms are unique
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
 header.i=@google.com header.s=20161025 header.b="qdNod/O2";       spf=pass
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

On Fri, Oct 25, 2019 at 1:10 AM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Thu, Oct 24, 2019 at 12:01:56PM -0700, Ian Rogers wrote:
> > Make it easier to release memory associated with parse event terms by
> > duplicating the string for the config name and ensuring the val string
> > is a duplicate.
> >
> > Currently the parser may memory leak terms and this is addressed in a
> > later patch.
>
> please move that patch before this one

Doing that causes a use after free, or freeing of stack or .rodata.
The strings need to be on the heap before they can be cleaned up,
hence the order the patches appear here. There are already memory
leaks here and so while this does make more of them, it is a temporary
state until the later freeing patch is added. I wanted to avoid a
large monolithic patch.

Thanks,
Ian

> thanks,
> jirka
>
> >
> > Signed-off-by: Ian Rogers <irogers@google.com>
> > ---
> >  tools/perf/util/parse-events.c | 51 ++++++++++++++++++++++++++++------
> >  tools/perf/util/parse-events.y |  4 ++-
> >  2 files changed, 45 insertions(+), 10 deletions(-)
> >
> > diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> > index f0d50f079d2f..dc5862a663b5 100644
> > --- a/tools/perf/util/parse-events.c
> > +++ b/tools/perf/util/parse-events.c
> > @@ -1430,7 +1430,6 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
> >  int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
> >                              char *str, struct list_head **listp)
> >  {
> > -     struct list_head *head;
> >       struct parse_events_term *term;
> >       struct list_head *list;
> >       struct perf_pmu *pmu = NULL;
> > @@ -1447,19 +1446,30 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
> >
> >               list_for_each_entry(alias, &pmu->aliases, list) {
> >                       if (!strcasecmp(alias->name, str)) {
> > +                             struct list_head *head;
> > +                             char *config;
> > +
> >                               head = malloc(sizeof(struct list_head));
> >                               if (!head)
> >                                       return -1;
> >                               INIT_LIST_HEAD(head);
> > -                             if (parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
> > -                                                        str, 1, false, &str, NULL) < 0)
> > +                             config = strdup(str);
> > +                             if (!config)
> > +                                     return -1;
> > +                             if (parse_events_term__num(&term,
> > +                                                PARSE_EVENTS__TERM_TYPE_USER,
> > +                                                config, 1, false, &config,
> > +                                                NULL) < 0) {
> > +                                     free(list);
> > +                                     free(config);
> >                                       return -1;
> > +                             }
> >                               list_add_tail(&term->list, head);
> >
> >                               if (!parse_events_add_pmu(parse_state, list,
> >                                                         pmu->name, head,
> >                                                         true, true)) {
> > -                                     pr_debug("%s -> %s/%s/\n", str,
> > +                                     pr_debug("%s -> %s/%s/\n", config,
> >                                                pmu->name, alias->str);
> >                                       ok++;
> >                               }
> > @@ -1468,8 +1478,10 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
> >                       }
> >               }
> >       }
> > -     if (!ok)
> > +     if (!ok) {
> > +             free(list);
> >               return -1;
> > +     }
> >       *listp = list;
> >       return 0;
> >  }
> > @@ -2764,30 +2776,51 @@ int parse_events_term__sym_hw(struct parse_events_term **term,
> >                             char *config, unsigned idx)
> >  {
> >       struct event_symbol *sym;
> > +     char *str;
> >       struct parse_events_term temp = {
> >               .type_val  = PARSE_EVENTS__TERM_TYPE_STR,
> >               .type_term = PARSE_EVENTS__TERM_TYPE_USER,
> > -             .config    = config ?: (char *) "event",
> > +             .config    = config,
> >       };
> >
> > +     if (!temp.config) {
> > +             temp.config = strdup("event");
> > +             if (!temp.config)
> > +                     return -ENOMEM;
> > +     }
> >       BUG_ON(idx >= PERF_COUNT_HW_MAX);
> >       sym = &event_symbols_hw[idx];
> >
> > -     return new_term(term, &temp, (char *) sym->symbol, 0);
> > +     str = strdup(sym->symbol);
> > +     if (!str)
> > +             return -ENOMEM;
> > +     return new_term(term, &temp, str, 0);
> >  }
> >
> >  int parse_events_term__clone(struct parse_events_term **new,
> >                            struct parse_events_term *term)
> >  {
> > +     char *str;
> >       struct parse_events_term temp = {
> >               .type_val  = term->type_val,
> >               .type_term = term->type_term,
> > -             .config    = term->config,
> > +             .config    = NULL,
> >               .err_term  = term->err_term,
> >               .err_val   = term->err_val,
> >       };
> >
> > -     return new_term(new, &temp, term->val.str, term->val.num);
> > +     if (term->config) {
> > +             temp.config = strdup(term->config);
> > +             if (!temp.config)
> > +                     return -ENOMEM;
> > +     }
> > +     if (term->type_val == PARSE_EVENTS__TERM_TYPE_NUM)
> > +             return new_term(new, &temp, NULL, term->val.num);
> > +
> > +     str = strdup(term->val.str);
> > +     if (!str)
> > +             return -ENOMEM;
> > +     return new_term(new, &temp, str, 0);
> >  }
> >
> >  int parse_events_copy_term_list(struct list_head *old,
> > diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> > index 48126ae4cd13..27d6b187c9b1 100644
> > --- a/tools/perf/util/parse-events.y
> > +++ b/tools/perf/util/parse-events.y
> > @@ -644,9 +644,11 @@ PE_NAME array '=' PE_VALUE
> >  PE_DRV_CFG_TERM
> >  {
> >       struct parse_events_term *term;
> > +     char *config = strdup($1);
> >
> > +     ABORT_ON(!config);
> >       ABORT_ON(parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_DRV_CFG,
> > -                                     $1, $1, &@1, NULL));
> > +                                     config, $1, &@1, NULL));
> >       $$ = term;
> >  }
> >
> > --
> > 2.23.0.866.gb869b98d4c-goog
> >
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfW6PV5xYDyNViz_U9Y5Up8B30tUoyCuf_jM0XLj2ESQRA%40mail.gmail.com.
