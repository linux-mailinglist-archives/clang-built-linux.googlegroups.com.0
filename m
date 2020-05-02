Return-Path: <clang-built-linux+bncBDEPBSN75UNRBOE3W32QKGQETXOTN4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDFD1C2672
	for <lists+clang-built-linux@lfdr.de>; Sat,  2 May 2020 17:11:53 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id u4sf2674750vkl.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 02 May 2020 08:11:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588432312; cv=pass;
        d=google.com; s=arc-20160816;
        b=CWN3NZtTPt/tU7oATp/wYCTmcHIoJjpdT2uvMml6KRGtH0F5d5O1ISsX2qOuC9SGVw
         lMiKBzGs8G4bUhSM01DKJ7bvt2gVw8EmFZ5V0XMmi43wFyxb6P8qPWn7oXMbPAaT0dKk
         lZN0LirHhQ9mIvt5UR/R5EjUNaXq0XrkDnrLcypg/N08dlZuyMT3RAkTzJ8i6Rl9PNau
         iIzF7OmYuTjsv+s/sdvkRkLogFie2byBlSNgAZfGlmfW68GeMYrfUyY9yXVjkDrbPg+g
         EIAM4aT/NCWL6ZUCixdIpWSMyYDxowa6HESrziypbNBJfmecoS9jScuoRu9Sir39Q/JQ
         Z3/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=DAyWCd13haBpUa020JGfRXkxj0tJhqoGdsYL0ZiJKQk=;
        b=QHmfITUWIjo4nMRfhc/4FSjUXkkpFwrH6fZiGaWwOB4Bst8cYnyxDdY1zsvLdbAaww
         rb3GO/CdXrXjzjiDb3Pir7dln78FgShMjPPWt6Z5irN7fpVPXLTc/aqdcoCmHRlrN761
         8VeAdqygPu+M5cvkXf4H0sESumvbKSolp/4Yu4DHVjNPrtj2ZAIU+kamdgYSmUWefSH7
         DliEPPhOKzFfM8YnxIGF2GLOK6eXlp3arhpqzFBqIcriNpjkHSNPYV08H0M66xoscM2B
         4XAlFDqhnwaBUHJ5RssCfwE4t+KAPFfdlFDQsEUj60F+9Xpt7NJkWrwTcF4lN7eDFV1M
         t8PA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iY9gEDc7;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DAyWCd13haBpUa020JGfRXkxj0tJhqoGdsYL0ZiJKQk=;
        b=XPyh+l2k1BJy+qye8/PQP0b4low1BRpbnLyAYjCqoJ0NbpE4iUcC4PqDQMw+x1reUm
         em+uIl9uToaNYtca9SyWxoF5mrwZEiEIqaffyB04tCVFLfR9SPh19042ca4H3MBx1iQ/
         AnPlqdoWb144he81guhsPkWVJhBRUNTuqZ0HReLfLEdxLEveaGLOOfm4ClATQo2U4eFG
         fEL5s3h74TCjL40btnk0WRbapg77VKKGPU3gZpLDwrmFGUWH/NQJ3NaiGV/TUGu0oJ+P
         ENIVovF/6boE1Hg9EdJNvF/M6hAEZt4tJ9OsL2hN0Y0FUhSRxwmpgD0abTK87svVCtSR
         DQmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DAyWCd13haBpUa020JGfRXkxj0tJhqoGdsYL0ZiJKQk=;
        b=YQz2XLw5neI6HKrVaBX5nQGuKiopne43Po6tphohxJ/AaK72Y/1Zpu2/U4XgC+uInT
         XGi/uLNTl2bX6evhdQtH1TVItkaMd/wtMNlE5wYnQ+rjGUSTXi1nL122UkYpajLB0EWA
         WTeEj8/M+kkJ/br//n3nnuo05TggI0yIWCQJsPGLCGIN/ZfSeM03SBSZl29g08X7BY2Q
         bMO6oNDv1R1NQ2ADzgV8gVxVn53TygGjQr0T30juOr9cQ08PT8evnvx51OmUfUIcquYo
         xbIHLYGKI5kNf8fZR8dhqVFldRV7WpsXN9BKM9nJW7KGu9DGuYhuOlvsCHxcV245Zpu1
         KY+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DAyWCd13haBpUa020JGfRXkxj0tJhqoGdsYL0ZiJKQk=;
        b=Jg9sDt7oZKuIBoOdtf/ydqaJ4rDY6HQYXu9GQ5auSwGiwz3FCBMcmuSgP8CBAXVxAV
         vMQLo54znNX+69F+YR0XIEwKo2Je7ASowZeyZQrtFTsDqss2CI+BnqBF0nZ8P4rPVyGj
         YqvZ9/1CivGfyzWrmmrCsjFR/b5NmUR/KXdRoQlHKFdxSIzCk19XIv7igzRV92MbvLYE
         +73XboKPG1odxkDyHTcM/0OaB90OjP+N/ORV/7v4n9kCTcIvaSRESzKpN39pIMA7wjWF
         /gEx+RRO5tygJmjCct7vBdp5xx2/z2IZTCAYZOFEReRNfWw2X1rSZLwPJYYNx32rE8pn
         YGhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZnQqtEaUPgpsHN+b4H0BgNH12TWiPA/jUer50RPw3qtlODtSLK
	BILlo937dsXrs648CVpggCs=
X-Google-Smtp-Source: APiQypLkbFUkiZapLRNiK1v5vg2K1204o0sF1YWM4Ab8xoDP2SivH2SWBCNFRIDCE77HtBmyIU1jWg==
X-Received: by 2002:a1f:4586:: with SMTP id s128mr5914460vka.90.1588432312130;
        Sat, 02 May 2020 08:11:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:bd8b:: with SMTP id n133ls457502vkf.1.gmail; Sat, 02 May
 2020 08:11:51 -0700 (PDT)
X-Received: by 2002:a1f:208c:: with SMTP id g134mr5917516vkg.74.1588432311746;
        Sat, 02 May 2020 08:11:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588432311; cv=none;
        d=google.com; s=arc-20160816;
        b=F7F0xxVAOVCEZoEgsrJeIj8ho1h4QK2QL6mMop1R3ptA2jfLHF2/0eH0IuHFOdG/Ma
         j37ALgsILE1XhCWZI5xdjgisfaXs9aZyTgTMhoHeI2n/viXQ553wP+TBiHrBHTG0/ckX
         KVmq/09ecCvhRLjuLRqyHglabNnnQXkf4P+JLlnmFh/qvA2djtdB1Co/WluRzl+Fxn4/
         CR60V9VY1i8D8BhrAWvwwFDD5PTgJvvq6xtWlec0Ds4M3HGOsnSw5Jn7CkImoY7Qqd51
         JbcxXCyc38EO6FMneNcBw3Wt0s5ATpLL3OMcn7/FI6Ini3JOGV/T96jMFH2nNWGScwMi
         SkJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:dkim-signature;
        bh=f945qmsRocAEp8gf6rmU05hEia4s9EsqMMhwTZIcQws=;
        b=OulRCVTFdCd82bxSud+1dVRmFdHGjsy2ke5oNAMu14eTE4Lgie7fj35MAae5yv3P99
         ZVnPaPKJyzstUloEQ2IS9XgtvkgfWRTUx39mx/xEI0p1bX24oTYIf5pKDV9f9DYQDy7y
         qBDH0tf9K1SevWqnRr5/7nPpD0uRritdOrsDNNoLC0T5OYUa2Ak5Kh3VpiuJGcDYqAnI
         Z3pAqEtLab2IQh97vXYXTLCL8VDlqYwB7oaWl7tZK1NkbsmF0roY6M5TglUD7w3oQvuK
         wFVaFakbvxxi4uMiGv01YlCVkhSbcofSiCuddq1yaA1cxb+wDZuHwqPS50ZztfYyUB7F
         3QLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iY9gEDc7;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id a205si457787vsd.2.2020.05.02.08.11.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 May 2020 08:11:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id b1so10319602qtt.1
        for <clang-built-linux@googlegroups.com>; Sat, 02 May 2020 08:11:51 -0700 (PDT)
X-Received: by 2002:ac8:6757:: with SMTP id n23mr8822961qtp.304.1588432311225;
        Sat, 02 May 2020 08:11:51 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
        by smtp.gmail.com with ESMTPSA id h6sm5318820qtd.79.2020.05.02.08.11.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 May 2020 08:11:50 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 24EAC409A3; Sat,  2 May 2020 12:11:48 -0300 (-03)
Date: Sat, 2 May 2020 12:11:48 -0300
To: Ian Rogers <irogers@google.com>
Cc: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Andi Kleen <ak@linux.intel.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Leo Yan <leo.yan@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v2 1/2] perf parse-events: fix memory leaks found on
 parse_events
Message-ID: <20200502151148.GA5377@kernel.org>
References: <20200319023101.82458-1-irogers@google.com>
 <20200429175420.GD30487@kernel.org>
 <CAP-5=fWTAbyOXr5GghrbvfkaZ6EzH7GNDJiiDJkFqeF5mPgDeA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAP-5=fWTAbyOXr5GghrbvfkaZ6EzH7GNDJiiDJkFqeF5mPgDeA@mail.gmail.com>
X-Url: http://acmel.wordpress.com
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iY9gEDc7;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842
 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Em Thu, Apr 30, 2020 at 02:39:14PM -0700, Ian Rogers escreveu:
> On Wed, Apr 29, 2020 at 10:54 AM Arnaldo Carvalho de Melo
> <arnaldo.melo@gmail.com> wrote:
> >
> > Em Wed, Mar 18, 2020 at 07:31:00PM -0700, Ian Rogers escreveu:
> > > Memory leaks found by applying LLVM's libfuzzer on the parse_events
> > > function.
> > >
> > > Signed-off-by: Ian Rogers <irogers@google.com>
> > > ---
> > >  tools/perf/util/parse-events.c | 2 ++
> > >  tools/perf/util/parse-events.y | 3 ++-
> > >  2 files changed, 4 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> > > index 593b6b03785d..1e0bec5c0846 100644
> > > --- a/tools/perf/util/parse-events.c
> > > +++ b/tools/perf/util/parse-events.c
> > > @@ -1482,6 +1482,8 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
> > >
> > >               list_for_each_entry_safe(pos, tmp, &config_terms, list) {
> > >                       list_del_init(&pos->list);
> > > +                     if (pos->free_str)
> > > +                             free(pos->val.str);
> >
> > I'm applying it but only after changing it to zfree(&pos->free_str), to
> > make sure that any othe rcode that may still hold a pointer to pos will
> > see a NULL in ->free_str and crash sooner rather than later.
> >
> > >                       free(pos);
> > >               }
> > >               return -EINVAL;
> >
> > And the following should be in a different patch
> >
> > > diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> > > index 94f8bcd83582..8212cc771667 100644
> > > --- a/tools/perf/util/parse-events.y
> > > +++ b/tools/perf/util/parse-events.y
> > > @@ -44,7 +44,7 @@ static void free_list_evsel(struct list_head* list_evsel)
> > >
> > >       list_for_each_entry_safe(evsel, tmp, list_evsel, core.node) {
> > >               list_del_init(&evsel->core.node);
> > > -             perf_evsel__delete(evsel);
> > > +             evsel__delete(evsel);
> > >       }
> > >       free(list_evsel);
> > >  }
> >
> > And this one in another, I'll fix this up, but please try in the future
> > to provide different patches for different fixes, so that if we
> > eventually find out that one of the unrelated fixes is wrong, then we
> > can revert the patch more easily with 'git revert' instead of having to
> > do a patch that reverts just part of the bigger hodge-podge patch.
> >
> > If you go and have a track record of doing this as piecemeal as
> > possible, I will in turn feel more confident of processing your patches
> > in a faster fashion ;-) :-)
> 
> Thanks, at some point I'd like to get libfuzzer with asan working for
> more than just me so that we don't backslide. It'd also make the
> reproductions easier to share.

If we can detect the presence of the needed components, libraries,
compiler with the right feature set, yeah, a 'perf test' built under
such environment surely would benefit from having further tests,

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200502151148.GA5377%40kernel.org.
