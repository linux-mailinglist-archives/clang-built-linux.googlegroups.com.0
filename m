Return-Path: <clang-built-linux+bncBDPPFIEASMFBBDULVX2QKGQED43QJTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 561471C0986
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 23:39:28 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id y64sf7917946qkb.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 14:39:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588282767; cv=pass;
        d=google.com; s=arc-20160816;
        b=AhzEBr9W4abCaXss/QiHJWPQQZK7+GobL1uSSJ9FMYkQC6Dym1NGy1/mx1KiOQNiti
         mVRi9vxSYKwU1sKf0Rv+EqxO16NlmIpw4CKedugpEKkAtvPMylcic1qn1bxJBhcG3sZi
         icVe2o78XkqH3drCqDo4YvMsRbZOFB7NZKkvoPZOy03CJxDU5UX8C/CEQgqTcbdAnnoR
         uxSA7Xf5Pv4CjvC8ruHx9yjmB0254iihnLm+IlC+tu2ulSix3GOb1J3xhxYMxSOSJq9m
         gO2L+lxGtWFMiyVtmIIKnvZc/APOioyvrpo36W9QGKfzppy6gXfdK7Q7oaMMsb+hdBMU
         Y2lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6t6wqIyAATTQ5NszbtP4bzDoFYW3RHtL7+gA1uuPRJ0=;
        b=e2qrpS6odufDPffQmU7omQfECCmLe1LAG6EpLHOC7xtLQ8vrCbhHcf8ct5DxkETYx4
         /7hjzId6jW9SE0DyHd1EhqPy4oavuMkKG44xTMguCwX0NdsmN3e5uaa5SvzeMxYhhxHA
         01G7bOedpohpZGqR8g4qS98WjYKtEjXNgw/1eNwe2bH6ng0OJD9hfBzAwAlwlrQDNgW8
         jOIJXoLB8xELDBsqbZmiLA80TsAZiU+uuZxNUdu3M9u3VIFDxMc2+PleWTDUEe+C+ea/
         JGcy4QaVGvynvyOQ79fUb5m/FXYv22R9rdyygvC+jwtkk9sJ4FIsZoyET8kehDIkjPyG
         WLgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I4c8tebj;
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6t6wqIyAATTQ5NszbtP4bzDoFYW3RHtL7+gA1uuPRJ0=;
        b=LgYaez3rLknytYPV5Su3IKJ+QraEBYeD/uP58YcbtpA+Ry+IYcNVrKrY9On+rHlSGb
         Kd8xe+1uXErwyIoo+9qATObpItx5zUBjBz8U5+XLGnzEy687lmMrNFkiZvLJDpUPJfL8
         a5ZU4UbTAtqO5FkJgjlOtE2PVdH09fe6BpT4f4YDHAII3zqcY6b1YH5+uG5VPbzzQjPu
         c846/KGBgcnWu0PDuuhe5X8CGXeCIa6tdMlzTx92zNJOvmj4APxgwgYSCh1k3Ai51CVt
         ctDjFaXvpg88TkyVMzq73e65laVviciYQGNYzSe/y4QXVTRIGrvavBwFeNjR93cqGwGg
         DgZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6t6wqIyAATTQ5NszbtP4bzDoFYW3RHtL7+gA1uuPRJ0=;
        b=D88jB1erkMFYVPCwLKwTK4DO50nt/PGMBs7jTQ75W0wflya1//xphNeeIQhHZxpXIy
         K77CM2GkmGazFFfP7w4bz2By/jbfcbB8/TuYlpbCVNWORTQQkNChONVn2wJSvmF7oF+9
         oc9NNcUsTx6hebJONX+r1xVKfVY8kRgBmI/HFOd9WebdcDltleobd9omAAs8bpytjptx
         VP95qq1Q0Y3M6W7xZ+QfUp9pbC2XVUWL0MhQU7XptM/QAXLJphfcBWx7lx16bq90XVCB
         oKAqKkUOcSN3Mfja+f3cnACga2hUefsryxvkw5MP8URRW4XPlF0ONYX4zMywm4PFMeNe
         WsBQ==
X-Gm-Message-State: AGi0PuYXGKboZs/GsS/7/SVDV9LKVjkR/NKl20s/VN/y5OnrMufRm3vE
	qeQZFlqkACD+vLU2x4IvIYk=
X-Google-Smtp-Source: APiQypJqCeqpcnfFf0rJa5q1pkFMO+j7wnlafpn21tO7/4lebnI9Qo+Qlo0l+MaZ1UTYFFklWnVbjw==
X-Received: by 2002:a0c:9e6d:: with SMTP id z45mr1054680qve.206.1588282767051;
        Thu, 30 Apr 2020 14:39:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:68c9:: with SMTP id d192ls700498qkc.10.gmail; Thu, 30
 Apr 2020 14:39:26 -0700 (PDT)
X-Received: by 2002:ae9:e606:: with SMTP id z6mr609864qkf.320.1588282766649;
        Thu, 30 Apr 2020 14:39:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588282766; cv=none;
        d=google.com; s=arc-20160816;
        b=X6m/DPm81Zfm0wBvQkIJNXQnhn/82Q0jSvBZ+Rq6QkqpPacYUR2E4V5IJ3iB0wuIPF
         rUhwVOC4ZIuk5HOyPg+fwTAraT+JJ+uCdZKE31MsizrcYZhqdCsZRvN3Aug0HFi2JZDZ
         dQhxVJTgvET+PLuxiHdsDk7j59pm1OJzbUfZvGO7XFNnAEU+WgHKKDcqozmpBWk/vPn9
         fmk+D0YJBSc9uZcO10L5eluEfo8D1hYTlOIpc67bgOzLdNBBF9bd4s2yhus88pJAxEmC
         b6UIGYT7+3OqzXqJ7S1afLAQtemk/HAt0b8lwI9Bf4hXGesFTfKpZlnOh8/SGLXW3kZe
         SLIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PPXfTr1PUEcnQYtzL1SCshQ9U2tFp7AGyjQ19zmlJjw=;
        b=oULUiYZA0z5Ke8+ZGzPcFTPcqzCM+R7W6GYD29WJm8THhOUfoaevLueP7Dj6flIP5r
         0KrfDlHmNdPdCbToluKGzpPax9w/OLCmRo9yLM/A/nICYvKxfFJyTb+WcpvElJ/DlufN
         vr9QB6wNccDqkuDhmKZu7VPLMENsO4PQTn3q5rkwSpPnIlFeqb5RbJewQoEQwfswMvXs
         88zIhghU+hruYs6ZeyoaDt7X5PBd0c43iR+ATJWIGlK1GlkKH8wdxFjgrUSFEqbSktxN
         d5crJ2I481ACFxvRQsMSo1Duf0GQz19WYliluQS6ARnms8GQ8XDl5Mk/67TVIqV+pgYZ
         nzCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I4c8tebj;
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com. [2607:f8b0:4864:20::b44])
        by gmr-mx.google.com with ESMTPS id h25si137313qkk.4.2020.04.30.14.39.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2020 14:39:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b44 as permitted sender) client-ip=2607:f8b0:4864:20::b44;
Received: by mail-yb1-xb44.google.com with SMTP id d197so3974446ybh.6
        for <clang-built-linux@googlegroups.com>; Thu, 30 Apr 2020 14:39:26 -0700 (PDT)
X-Received: by 2002:a05:6902:505:: with SMTP id x5mr1358771ybs.286.1588282765903;
 Thu, 30 Apr 2020 14:39:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200319023101.82458-1-irogers@google.com> <20200429175420.GD30487@kernel.org>
In-Reply-To: <20200429175420.GD30487@kernel.org>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 30 Apr 2020 14:39:14 -0700
Message-ID: <CAP-5=fWTAbyOXr5GghrbvfkaZ6EzH7GNDJiiDJkFqeF5mPgDeA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] perf parse-events: fix memory leaks found on parse_events
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Andi Kleen <ak@linux.intel.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, Leo Yan <leo.yan@linaro.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Stephane Eranian <eranian@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=I4c8tebj;       spf=pass
 (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b44
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

On Wed, Apr 29, 2020 at 10:54 AM Arnaldo Carvalho de Melo
<arnaldo.melo@gmail.com> wrote:
>
> Em Wed, Mar 18, 2020 at 07:31:00PM -0700, Ian Rogers escreveu:
> > Memory leaks found by applying LLVM's libfuzzer on the parse_events
> > function.
> >
> > Signed-off-by: Ian Rogers <irogers@google.com>
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
>
> I'm applying it but only after changing it to zfree(&pos->free_str), to
> make sure that any othe rcode that may still hold a pointer to pos will
> see a NULL in ->free_str and crash sooner rather than later.
>
> >                       free(pos);
> >               }
> >               return -EINVAL;
>
> And the following should be in a different patch
>
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
>
> And this one in another, I'll fix this up, but please try in the future
> to provide different patches for different fixes, so that if we
> eventually find out that one of the unrelated fixes is wrong, then we
> can revert the patch more easily with 'git revert' instead of having to
> do a patch that reverts just part of the bigger hodge-podge patch.
>
> If you go and have a track record of doing this as piecemeal as
> possible, I will in turn feel more confident of processing your patches
> in a faster fashion ;-) :-)

Thanks, at some point I'd like to get libfuzzer with asan working for
more than just me so that we don't backslide. It'd also make the
reproductions easier to share.

Ian

> Thanks,
>
> - Arnaldo
>
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
> --
>
> - Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfWTAbyOXr5GghrbvfkaZ6EzH7GNDJiiDJkFqeF5mPgDeA%40mail.gmail.com.
