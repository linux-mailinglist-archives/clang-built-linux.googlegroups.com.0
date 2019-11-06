Return-Path: <clang-built-linux+bncBDEPBSN75UNRBTVURPXAKGQEWGOBVWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A0387F18BD
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 15:35:59 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id s7sf18818188ybc.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 06:35:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573050958; cv=pass;
        d=google.com; s=arc-20160816;
        b=ypHGju5Qny61vHI6JcUdx6uHTFRiPfkaubU+fFRv+9UBvHH1Y5cEKu5NeJZa+ygd3u
         onfxku84D5vk2lTPbK+p4zSusjtHq+hKjxYHYl/lF0K1h7G03Cq3bwyeiFuj7NSEot+L
         yHDy24HyPASc3NSdzSU/Ysy5rX495jY5z4z0WgZ/eDOgTqtx9DSgz84nb/9GfWJm7aEr
         JJmwotkqytmVHq+Ldmv1g2f2axckrWG6DUHDKwFD8kfWQ5GnTpR2LIOyiJuWHho2p3rV
         bRYP7Sq/Uoa1CFNA3UATBGpg68KLD6mumNDQJS2kBcq3xIPTDSPT0COri8mgq2a6bAmM
         mV1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature:dkim-signature;
        bh=C2SquVRutDVcMUJHKZ3rLfBYxW5PVoJrBARI3IEE+5M=;
        b=NsP921HwJNi39TM7dJ7jdI2ak2GYg/aj8L9H25Bux48F/vHEaCspVZPhaYL5KNgF3K
         eR5nLgMUuBfp/RN8MwtkPW5abfnKpNR+TG2WpNlnF5Pg847bBzja/gNt5/tVKNkjDR0r
         gAQxDasSd6vvFmtpOmFtT83Fd5qRlBS6/acxK7aD6PB+e6UXYIAOAhFeckfFnUjpArkI
         5EQNF1YLMlnGy1lmtKHKFp4vqhzSKdXsGfTcI4m28tbxo28gtazmMX6sBbigzhV0Ei4Z
         Bas0vm/E41DYU9qdSqy8gw/4/P6hjOPCgUsbv2JUcjg6BLO9yo/Lz8j5XCmYTdSAgzwj
         Qohw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P1NvzCEw;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C2SquVRutDVcMUJHKZ3rLfBYxW5PVoJrBARI3IEE+5M=;
        b=hrE+wyxkKtv3qU+JUpE/Bwnc+tFCI65tWylBENQxRE2UBXu4Zse4s/xCyTEvFcwqkW
         X0SBcrOKhZ8iIXptfl9W4SQv+LaBkRMJeUcri3DynQXKS/j5Ed7vvuzOPiVYJSD5OLMU
         bmlHb3J43WUX0BFOCgF/wDkMzWagDBQOrEL3vQxxrBvdq2MMEjla6LUF1hXqMVAVac5e
         Sy2vXWcwEi7fjlT9pVdEzvnLZcDXSMjI6fwOZgOUKBSZWWnrlYKyrtXIWLlkzPi2mw18
         oSQ5ietR+R0+pnZKKZ7Wadx3iibmc8Z/UAiIbIDLbRexVcsJBq8HDbGqM3HS789Lp+Lx
         qDLg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C2SquVRutDVcMUJHKZ3rLfBYxW5PVoJrBARI3IEE+5M=;
        b=LvvqC8vBDxko4P/duhzjxsrJ/wGZXGnDoBY9z18pFOO9vziUtyaXKo1WQqk1W7IpIg
         KOgt1KsNcXf7J4lSNRzIPEfcbSO+KorguOEdyyyRUcp5kF/406M0So/PE9MsEd9wAMFp
         ybiLnw9fA1udVm39G8yOfzdfWRxZo83eSSqlHv6q6AbonRB7jMqbXJwelwb1Fy7zLHjI
         r2T5rq3pE9jMvioXzCLkX4T3wL3vp5IERHH3DFjFpLCrBs5DbywTeBNrnJ0eEfQHC/YM
         /hA4A1QVwRxXeo2TuNl7SQ/w0YWAM/RELKZ/PpfutEqGNtUOOj6qQ3u66WsyQxVQyo9H
         JV9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=C2SquVRutDVcMUJHKZ3rLfBYxW5PVoJrBARI3IEE+5M=;
        b=bY8Zh3Alyb1xCp8bhmbVc5LzhliatI3yqkcArkpfte6BzMX1ceTO1gquu2brB9Oanx
         fqp8hA707mSUBiAVutPJG0+6Kt6CFm4NP6+qSQMeoQHG2c2FnZScBVyWNu4wi1ht5fCd
         S2a6CzUTNUlN7TD78WbO5QHdbp1nbEwblAbPKmrhv277PiBlue7vmubM6i7Vr5mD6gQ8
         3RFe3f+b3h5sGNWSB/JfMcN8txxS8PEk0W0s85QX2UZwiTh/CU+j6NTSpAqaCzWV/Kfk
         bJZytynb8QZnRsfBQbldgQyeAMZzBs1oNyt3ZpJlHFL8ilyEXGaNN5mbSauT+fsohdy7
         ujuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWuPEiHQCadC02RTKFqehVtffULyT8rQKyyIOLUGzXkhkx7CrzH
	w/TkIpjUrOQXYDMq9Uro8TY=
X-Google-Smtp-Source: APXvYqzsWWdTptTnHky2zDrBisf8wqYS6vESkgGirvEChBlTP3WbDRDa/CFSOHivdJRJQvnv/oBwow==
X-Received: by 2002:a25:360b:: with SMTP id d11mr2447662yba.86.1573050958433;
        Wed, 06 Nov 2019 06:35:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:1445:: with SMTP id 66ls424149ybu.5.gmail; Wed, 06 Nov
 2019 06:35:53 -0800 (PST)
X-Received: by 2002:a25:c008:: with SMTP id c8mr2375335ybf.318.1573050953353;
        Wed, 06 Nov 2019 06:35:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573050953; cv=none;
        d=google.com; s=arc-20160816;
        b=bmr2BmbMlFI/vOojQtZDaKYjytaimF9d46FAsykT65m+ZEETi36aoQYIPKuA0/t4g1
         Q6Io8AOX0/x0omZRUpiCFj8ehjv1r51x0gqXtYQWCE1scxLUipeubdU37hBgJAnYTGQX
         UJylBTJsdTfjyQO/Mys5uhIdp5xwO2ZuXo6MOSUNa1XjlLetlIO2HiTOw2ch+ypWprCt
         SSBUWxXr4L88YXJPsrI49fhC3pBld0U55m07UX+0tvLe1rOu5pP0h8hVzbi+E+MCdpRd
         H0Zbl7pXe7y0Zuqib5SZU0dIQa5wzMtSNU5omsbYeB9E2IwQCND//pj5/2W9nIdRwWnw
         MwgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=gWaWc2qSkhh0jyxJemX9BkyQA39c3n/0zxtISnFYQhM=;
        b=DX0WayzSDBWozxyOvwJb6Pq/EwJ77OAy9tRR7F+9S03UJiI2A+6Frj6CmBYpqVJ2gj
         JHRJbMwV0BqsCy6XYcw38YlqMqNFlZq8zltgt5fLlOXcBHGRh72SEOgpEimVFNlSeHij
         YK34OSxlkR55yRno5zhku9HMSqJFsHDVpAWDMgyKsHpcaSctSSni1b12L5vXwOjIVIow
         SGSPTG+GeBZKBJqHVuD7w0AWfDdwqBUjvkOwE0cLEEoCPr668hbWynZPfVgBZtIKIHnm
         48I4Xj7gEe39RLmHX7gvC2I3oJYkWyCd+nUfxlz01RO4iTrKJQofOalagB/Mdgcr3Ulx
         /r4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P1NvzCEw;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id u8si458326ybc.2.2019.11.06.06.35.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2019 06:35:53 -0800 (PST)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id g50so33931034qtb.4
        for <clang-built-linux@googlegroups.com>; Wed, 06 Nov 2019 06:35:53 -0800 (PST)
X-Received: by 2002:ac8:6ec4:: with SMTP id f4mr2683702qtv.271.1573050952921;
        Wed, 06 Nov 2019 06:35:52 -0800 (PST)
Received: from quaco.ghostprotocols.net ([179.97.35.50])
        by smtp.gmail.com with ESMTPSA id l14sm9990457qkj.61.2019.11.06.06.35.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2019 06:35:52 -0800 (PST)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id C4E6B40B1D; Wed,  6 Nov 2019 11:35:49 -0300 (-03)
Date: Wed, 6 Nov 2019 11:35:49 -0300
To: Jiri Olsa <jolsa@redhat.com>
Cc: Ian Rogers <irogers@google.com>, Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>, Andi Kleen <ak@linux.intel.com>,
	Jin Yao <yao.jin@linux.intel.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kan Liang <kan.liang@linux.intel.com>,
	John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v5 06/10] perf tools: add destructors for parse event
 terms
Message-ID: <20191106143549.GD6259@kernel.org>
References: <20191025180827.191916-1-irogers@google.com>
 <20191030223448.12930-1-irogers@google.com>
 <20191030223448.12930-7-irogers@google.com>
 <20191106142424.GG30214@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191106142424.GG30214@krava>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=P1NvzCEw;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::841
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

Em Wed, Nov 06, 2019 at 03:24:24PM +0100, Jiri Olsa escreveu:
> On Wed, Oct 30, 2019 at 03:34:44PM -0700, Ian Rogers wrote:
> > If parsing fails then destructors are ran to clean the up the stack.
> > Rename the head union member to make the term and evlist use cases more
> > distinct, this simplifies matching the correct destructor.
> > 
> > Signed-off-by: Ian Rogers <irogers@google.com>
> 
> Acked-by: Jiri Olsa <jolsa@kernel.org>
> 
> thanks,
> jirka
> > @@ -37,6 +38,25 @@ static struct list_head* alloc_list()
> >  	return list;
> >  }
> >  
> > +static void free_list_evsel(struct list_head* list_evsel)
> > +{
> > +	struct evsel *evsel, *tmp;
> > +
> > +	list_for_each_entry_safe(evsel, tmp, list_evsel, core.node) {
> > +		list_del_init(&evsel->core.node);
> > +		perf_evsel__delete(evsel);
> > +	}
> > +	free(list_evsel);
> > +}

Applying, but later I think we should use something like:

void __perf_evlist__purge(truct list_head *list)
{
	with the above code
}

And:

void perf_evlist__purge(struct perf_evlist *evlist)
{
	__perf_evlist__purge(&evlist->entries);
	evlist->nr_entries = 0;
}

To replace the existing:

static void perf_evlist__purge(struct perf_evlist *evlist)
{
        struct perf_evsel *pos, *n;

        perf_evlist__for_each_entry_safe(evlist, n, pos) {
                list_del_init(&pos->node);
                perf_evsel__delete(pos);
        }

        evlist->nr_entries = 0;
}

Anyway, applied.

- Arnaldo

> > +static void free_term(struct parse_events_term *term)
> > +{
> > +	if (term->type_val == PARSE_EVENTS__TERM_TYPE_STR)
> > +		free(term->val.str);
> > +	zfree(&term->array.ranges);
> > +	free(term);
> > +}
> > +
> >  static void inc_group_count(struct list_head *list,
> >  		       struct parse_events_state *parse_state)
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
> >  	char *str;
> >  	u64 num;
> > -	struct list_head *head;
> > +	struct list_head *list_evsel;
> > +	struct list_head *list_terms;
> >  	struct parse_events_term *term;
> >  	struct tracepoint_name {
> >  		char *sys;
> > -- 
> > 2.24.0.rc1.363.gb1bccd3e3d-goog
> > 

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106143549.GD6259%40kernel.org.
