Return-Path: <clang-built-linux+bncBDEPBSN75UNRBNFVRPXAKGQEDC2QTSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D3CF18C6
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 15:37:41 +0100 (CET)
Received: by mail-yw1-xc3f.google.com with SMTP id b184sf19052505ywa.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 06:37:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573051060; cv=pass;
        d=google.com; s=arc-20160816;
        b=SmsUHr0r0Wr7m8Y2tNE6+yfy3WLuXc4GXzS+dYr2M2tvX8NskLVV0GOS3erka9+s3p
         oJV/J6C0czIdiJec/CR1EeOz2W+a/C4RMghBCUjpxgYy6+BO9DzOG9VFhZlB+EcG15pA
         OTKeHVzo+Vh6zL8owBh5FNWPye1rBwTBZcJjKD+oJ0kmpqeQr25Hqyelsq1WUJ6Hf+B0
         W/Efd5XwnS3qm+ZzA6cAUN2a74UNSbdI0zzrnlhM0nDFV25W57Z60m37iEvzkpVLvGil
         gQUxIyOBMW3CLLemizeprpMuqWyK9HCJ9mpxlol0wauCWRbLDZe9nO5wx8hhHq2dSEVC
         xOPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature:dkim-signature;
        bh=pstG3Z0iEz5DiCg3TNFfHOq11cYnmS9bNoBw1QFRzMU=;
        b=FVpykjZBtAUsjgChrQAewYT6HtS+NUlt522M56Z4emHooNjF9mTt+T3wz9VJAxnjPy
         aA+8Ux0mmYDAQNtheWADv4ULFgzfxnOh5KfIYjafw2850Q8j2WJ0kQCrChPbx+LpMTCG
         QzmesYG4a+7+zn0RZgZAilrZUijsAO1OIUlK/KW2pnG3pD9ecErhU+yeMl4eNmAfAJ70
         VbFJOsQ1OlT/+so7dI/KdkvD9D6vcbCEQUwXbht8yKxS4qpSlPJouO/8FMDpNUlItdCK
         47u4isQnmMRDOeaaBYEwnTuE6pms5bxQoa4L/b3KblsNemGyTbRo7hiknfQpyoMs8A5I
         NOhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z5kWS2L6;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pstG3Z0iEz5DiCg3TNFfHOq11cYnmS9bNoBw1QFRzMU=;
        b=k+W0fqzVJHc3YQ+DE9kISD7SMBMikW6bLm6wkbqM+HF+kdW3P9iEv07WlQMbjtiyXN
         qH5PFctiPpv6sCtm1s1SpUVh//a6EJBKzl1of5C6csHC/S0mhOIn9zdHtoLXjBhu9Xzt
         c8erD+okPNmCxWs6GqfkEhIBNLC6GZ7EGi/ePnlGY3YL5m7ATEFhwgJrCiw0LqEEC9Zh
         QbUBQW0yzV1HZN3Y4rhDQHQUyHhWthE8j9T7bh2B86xLRqi/cgFkGACkE6pp0FCmR8HK
         uKspmQyBSB796L8Q4i3VHiORKtrGFuerE4q6XPMLdWKl6Djge7zkrx37o6lGJ5LM+5kI
         18mQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pstG3Z0iEz5DiCg3TNFfHOq11cYnmS9bNoBw1QFRzMU=;
        b=EMiMGWCHobP5jwWwWjv9CSjQ9esFNSONxFhpxox5iiqKyR3qibFtYHJlgsTiG4EnNn
         GhRjwW1zReyZnNUmSO/VM/CFdZC+npynuRHpqUEbmLdkJvvSNGhUfu+L4QDoiS8tu3yL
         w4CXW/kbnZxCaLl1/ueRsiv9yXXJ0tEvwvHqPK4FouK2xKa0d6ZiUmsYbKF14rTSf5fc
         0dwjteNbjHSr0fa6W4uJgNsi2cTiwsgOeYBSbU7IoIzae7NkbfwVvcQljsNehV7S6oUO
         RwBsi6lO4APc9+13KIogRQHYyFxfaVnp4uAgydz8GdEPx5v57gm0Z0gCn9OFEYCiBI30
         HL+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pstG3Z0iEz5DiCg3TNFfHOq11cYnmS9bNoBw1QFRzMU=;
        b=r8QOLFyzp/ZKSNgIn107y0IThXaa9y2zjdK5o42I1tTrQdcjR41NeAsuhhrpwIWia3
         q/COmxlA4p6x4G3BxdnqKFa+O79AX01Vb3GJQn11wAxtZLTvQuLud26MzSPNg9RgsJz7
         L3IGD4Z1FbP3cSQpAvVcYOG+xPwqfosReWZufQYhWmg5W96IRZjUjfuDTpwYTMPmdHY8
         AgliaqxJ2oWk8X0WNMfJ9PfTl4K+qtPhOsEZnWvv7OQWB5vgziigXAIN05SMKPv5OvwL
         M2wklzkaSUqNTBm1i7tfrUNgV4Geq5aXUSiCyvXzSSUvTVQQIE0VF/00qu7V6kQWpbK2
         q10Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXOE7C/fM5yNZGWjQjfRi5ZhQCYFYW+3vbtJzOEbUzVNQauCl9M
	OfusxOCn6FAeR5+h2gwGT7g=
X-Google-Smtp-Source: APXvYqzJbGkOF3nwc4m5d5KlcmXRjZHP0No9RhI51Ey447u/Tr06BW4mZDwRxQLc2+v2mStdonu2yw==
X-Received: by 2002:a81:4f82:: with SMTP id d124mr1612699ywb.262.1573051060418;
        Wed, 06 Nov 2019 06:37:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:e403:: with SMTP id n3ls334377ywe.16.gmail; Wed, 06 Nov
 2019 06:37:40 -0800 (PST)
X-Received: by 2002:a81:a60f:: with SMTP id d15mr1805811ywh.224.1573051059970;
        Wed, 06 Nov 2019 06:37:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573051059; cv=none;
        d=google.com; s=arc-20160816;
        b=zW/SUZzIp95xCS39pL1VDSPyKKzRVqZrQT0dxhfvmyi95SG1J2q4cf5sBu8Ugff2JE
         rnaRPM/lmcshuAhF46xCqBIsax+69m24rHXh19qLc3hhEvCZRCCFDI8XDRe0fRxMPHgE
         E1acncIFGUJCBGmlic0RfIlgud1wORW/RPUEYydzrRQEZ8tvWcYsff7ncAXPvdFgNv9W
         H4rdlQVtu1qrsbEJRl6MmGP+x8+VLtlhUxr5vboXO4UHYbTjsnz0fXJ76IMuyRujq3PL
         YOZjgfiKTmWJ786rZ4AAiHUobXLJzcudUKn/V9p+2BwEtRdcDuVpGwxXBOmPxKd9/SZF
         NaIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=qY9aE+da1oLtiOaxaBkx+adE6qIJMpAJdvaAwycINls=;
        b=yPKr8n5KIdOIcwWnOYzC1eu725l9EOzJGA0WpnXHKQCMtn34QQCpdoiI831vAfbBx9
         IQvE0kWy2gzHogHblA+8zeWstMXPNYiO5zvvlkDzc1JXG7j8do8VdLX4pLU8nr3fehZl
         +J/v9f6ot4QTIFPZN7SeWkle+6OJQ1yN6VAEbCNeJrsxJPaesQ6K1sbiBo+N6zibJXck
         381ym4ci4k5u0ZXBz3teRtq6w1+N3dF97TRMK7NgHAJOMdEA3/ClTGsU5kk1wE/KX8Kc
         mvbsyyt/0FC3CRdZP/PNUDOVspwOQPR1gpukgUbZWWuPelIgiHAmx9YgPCVVv3hfyHTR
         cREQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z5kWS2L6;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id 63si382755ybe.4.2019.11.06.06.37.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2019 06:37:39 -0800 (PST)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id i19so15646963qki.2
        for <clang-built-linux@googlegroups.com>; Wed, 06 Nov 2019 06:37:39 -0800 (PST)
X-Received: by 2002:a37:62c6:: with SMTP id w189mr2119872qkb.48.1573051059312;
        Wed, 06 Nov 2019 06:37:39 -0800 (PST)
Received: from quaco.ghostprotocols.net ([179.97.35.50])
        by smtp.gmail.com with ESMTPSA id 187sm13736735qkk.103.2019.11.06.06.37.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2019 06:37:37 -0800 (PST)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id DAC5940B1D; Wed,  6 Nov 2019 11:37:35 -0300 (-03)
Date: Wed, 6 Nov 2019 11:37:35 -0300
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
Subject: Re: [PATCH v5 07/10] perf tools: before yyabort-ing free components
Message-ID: <20191106143735.GE6259@kernel.org>
References: <20191025180827.191916-1-irogers@google.com>
 <20191030223448.12930-1-irogers@google.com>
 <20191030223448.12930-8-irogers@google.com>
 <20191106142454.GJ30214@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191106142454.GJ30214@krava>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Z5kWS2L6;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::742
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

Em Wed, Nov 06, 2019 at 03:24:54PM +0100, Jiri Olsa escreveu:
> On Wed, Oct 30, 2019 at 03:34:45PM -0700, Ian Rogers wrote:
> > Yyabort doesn't destruct inputs and so this must be done manually before
> > using yyabort.
> > 
> > Signed-off-by: Ian Rogers <irogers@google.com>
> 
> Acked-by: Jiri Olsa <jolsa@kernel.org>

Thanks, applied.

- Arnaldo
 
> thanks,
> jirka
> 
> > ---
> >  tools/perf/util/parse-events.y | 252 ++++++++++++++++++++++++++-------
> >  1 file changed, 197 insertions(+), 55 deletions(-)
> > 
> > diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> > index 035edfa8d42e..376b19855470 100644
> > --- a/tools/perf/util/parse-events.y
> > +++ b/tools/perf/util/parse-events.y
> > @@ -152,6 +152,7 @@ start_events: groups
> >  {
> >  	struct parse_events_state *parse_state = _parse_state;
> >  
> > +	/* frees $1 */
> >  	parse_events_update_lists($1, &parse_state->list);
> >  }
> >  
> > @@ -161,6 +162,7 @@ groups ',' group
> >  	struct list_head *list  = $1;
> >  	struct list_head *group = $3;
> >  
> > +	/* frees $3 */
> >  	parse_events_update_lists(group, list);
> >  	$$ = list;
> >  }
> > @@ -170,6 +172,7 @@ groups ',' event
> >  	struct list_head *list  = $1;
> >  	struct list_head *event = $3;
> >  
> > +	/* frees $3 */
> >  	parse_events_update_lists(event, list);
> >  	$$ = list;
> >  }
> > @@ -182,8 +185,14 @@ group:
> >  group_def ':' PE_MODIFIER_EVENT
> >  {
> >  	struct list_head *list = $1;
> > +	int err;
> >  
> > -	ABORT_ON(parse_events__modifier_group(list, $3));
> > +	err = parse_events__modifier_group(list, $3);
> > +	free($3);
> > +	if (err) {
> > +		free_list_evsel(list);
> > +		YYABORT;
> > +	}
> >  	$$ = list;
> >  }
> >  |
> > @@ -196,6 +205,7 @@ PE_NAME '{' events '}'
> >  
> >  	inc_group_count(list, _parse_state);
> >  	parse_events__set_leader($1, list, _parse_state);
> > +	free($1);
> >  	$$ = list;
> >  }
> >  |
> > @@ -214,6 +224,7 @@ events ',' event
> >  	struct list_head *event = $3;
> >  	struct list_head *list  = $1;
> >  
> > +	/* frees $3 */
> >  	parse_events_update_lists(event, list);
> >  	$$ = list;
> >  }
> > @@ -226,13 +237,19 @@ event_mod:
> >  event_name PE_MODIFIER_EVENT
> >  {
> >  	struct list_head *list = $1;
> > +	int err;
> >  
> >  	/*
> >  	 * Apply modifier on all events added by single event definition
> >  	 * (there could be more events added for multiple tracepoint
> >  	 * definitions via '*?'.
> >  	 */
> > -	ABORT_ON(parse_events__modifier_event(list, $2, false));
> > +	err = parse_events__modifier_event(list, $2, false);
> > +	free($2);
> > +	if (err) {
> > +		free_list_evsel(list);
> > +		YYABORT;
> > +	}
> >  	$$ = list;
> >  }
> >  |
> > @@ -241,8 +258,14 @@ event_name
> >  event_name:
> >  PE_EVENT_NAME event_def
> >  {
> > -	ABORT_ON(parse_events_name($2, $1));
> > +	int err;
> > +
> > +	err = parse_events_name($2, $1);
> >  	free($1);
> > +	if (err) {
> > +		free_list_evsel($2);
> > +		YYABORT;
> > +	}
> >  	$$ = $2;
> >  }
> >  |
> > @@ -262,23 +285,33 @@ PE_NAME opt_pmu_config
> >  {
> >  	struct parse_events_state *parse_state = _parse_state;
> >  	struct parse_events_error *error = parse_state->error;
> > -	struct list_head *list, *orig_terms, *terms;
> > +	struct list_head *list = NULL, *orig_terms = NULL, *terms= NULL;
> > +	char *pattern = NULL;
> > +
> > +#define CLEANUP_YYABORT					\
> > +	do {						\
> > +		parse_events_terms__delete($2);		\
> > +		parse_events_terms__delete(orig_terms);	\
> > +		free($1);				\
> > +		free(pattern);				\
> > +		YYABORT;				\
> > +	} while(0)
> >  
> >  	if (parse_events_copy_term_list($2, &orig_terms))
> > -		YYABORT;
> > +		CLEANUP_YYABORT;
> >  
> >  	if (error)
> >  		error->idx = @1.first_column;
> >  
> >  	list = alloc_list();
> > -	ABORT_ON(!list);
> > +	if (!list)
> > +		CLEANUP_YYABORT;
> >  	if (parse_events_add_pmu(_parse_state, list, $1, $2, false, false)) {
> >  		struct perf_pmu *pmu = NULL;
> >  		int ok = 0;
> > -		char *pattern;
> >  
> >  		if (asprintf(&pattern, "%s*", $1) < 0)
> > -			YYABORT;
> > +			CLEANUP_YYABORT;
> >  
> >  		while ((pmu = perf_pmu__scan(pmu)) != NULL) {
> >  			char *name = pmu->name;
> > @@ -287,31 +320,32 @@ PE_NAME opt_pmu_config
> >  			    strncmp($1, "uncore_", 7))
> >  				name += 7;
> >  			if (!fnmatch(pattern, name, 0)) {
> > -				if (parse_events_copy_term_list(orig_terms, &terms)) {
> > -					free(pattern);
> > -					YYABORT;
> > -				}
> > +				if (parse_events_copy_term_list(orig_terms, &terms))
> > +					CLEANUP_YYABORT;
> >  				if (!parse_events_add_pmu(_parse_state, list, pmu->name, terms, true, false))
> >  					ok++;
> >  				parse_events_terms__delete(terms);
> >  			}
> >  		}
> >  
> > -		free(pattern);
> > -
> >  		if (!ok)
> > -			YYABORT;
> > +			CLEANUP_YYABORT;
> >  	}
> >  	parse_events_terms__delete($2);
> >  	parse_events_terms__delete(orig_terms);
> > +	free($1);
> >  	$$ = list;
> > +#undef CLEANUP_YYABORT
> >  }
> >  |
> >  PE_KERNEL_PMU_EVENT sep_dc
> >  {
> >  	struct list_head *list;
> > +	int err;
> >  
> > -	if (parse_events_multi_pmu_add(_parse_state, $1, &list) < 0)
> > +	err = parse_events_multi_pmu_add(_parse_state, $1, &list);
> > +	free($1);
> > +	if (err < 0)
> >  		YYABORT;
> >  	$$ = list;
> >  }
> > @@ -322,6 +356,8 @@ PE_PMU_EVENT_PRE '-' PE_PMU_EVENT_SUF sep_dc
> >  	char pmu_name[128];
> >  
> >  	snprintf(&pmu_name, 128, "%s-%s", $1, $3);
> > +	free($1);
> > +	free($3);
> >  	if (parse_events_multi_pmu_add(_parse_state, pmu_name, &list) < 0)
> >  		YYABORT;
> >  	$$ = list;
> > @@ -338,11 +374,16 @@ value_sym '/' event_config '/'
> >  	struct list_head *list;
> >  	int type = $1 >> 16;
> >  	int config = $1 & 255;
> > +	int err;
> >  
> >  	list = alloc_list();
> >  	ABORT_ON(!list);
> > -	ABORT_ON(parse_events_add_numeric(_parse_state, list, type, config, $3));
> > +	err = parse_events_add_numeric(_parse_state, list, type, config, $3);
> >  	parse_events_terms__delete($3);
> > +	if (err) {
> > +		free_list_evsel(list);
> > +		YYABORT;
> > +	}
> >  	$$ = list;
> >  }
> >  |
> > @@ -374,11 +415,19 @@ PE_NAME_CACHE_TYPE '-' PE_NAME_CACHE_OP_RESULT '-' PE_NAME_CACHE_OP_RESULT opt_e
> >  	struct parse_events_state *parse_state = _parse_state;
> >  	struct parse_events_error *error = parse_state->error;
> >  	struct list_head *list;
> > +	int err;
> >  
> >  	list = alloc_list();
> >  	ABORT_ON(!list);
> > -	ABORT_ON(parse_events_add_cache(list, &parse_state->idx, $1, $3, $5, error, $6));
> > +	err = parse_events_add_cache(list, &parse_state->idx, $1, $3, $5, error, $6);
> >  	parse_events_terms__delete($6);
> > +	free($1);
> > +	free($3);
> > +	free($5);
> > +	if (err) {
> > +		free_list_evsel(list);
> > +		YYABORT;
> > +	}
> >  	$$ = list;
> >  }
> >  |
> > @@ -387,11 +436,18 @@ PE_NAME_CACHE_TYPE '-' PE_NAME_CACHE_OP_RESULT opt_event_config
> >  	struct parse_events_state *parse_state = _parse_state;
> >  	struct parse_events_error *error = parse_state->error;
> >  	struct list_head *list;
> > +	int err;
> >  
> >  	list = alloc_list();
> >  	ABORT_ON(!list);
> > -	ABORT_ON(parse_events_add_cache(list, &parse_state->idx, $1, $3, NULL, error, $4));
> > +	err = parse_events_add_cache(list, &parse_state->idx, $1, $3, NULL, error, $4);
> >  	parse_events_terms__delete($4);
> > +	free($1);
> > +	free($3);
> > +	if (err) {
> > +		free_list_evsel(list);
> > +		YYABORT;
> > +	}
> >  	$$ = list;
> >  }
> >  |
> > @@ -400,11 +456,17 @@ PE_NAME_CACHE_TYPE opt_event_config
> >  	struct parse_events_state *parse_state = _parse_state;
> >  	struct parse_events_error *error = parse_state->error;
> >  	struct list_head *list;
> > +	int err;
> >  
> >  	list = alloc_list();
> >  	ABORT_ON(!list);
> > -	ABORT_ON(parse_events_add_cache(list, &parse_state->idx, $1, NULL, NULL, error, $2));
> > +	err = parse_events_add_cache(list, &parse_state->idx, $1, NULL, NULL, error, $2);
> >  	parse_events_terms__delete($2);
> > +	free($1);
> > +	if (err) {
> > +		free_list_evsel(list);
> > +		YYABORT;
> > +	}
> >  	$$ = list;
> >  }
> >  
> > @@ -413,11 +475,17 @@ PE_PREFIX_MEM PE_VALUE '/' PE_VALUE ':' PE_MODIFIER_BP sep_dc
> >  {
> >  	struct parse_events_state *parse_state = _parse_state;
> >  	struct list_head *list;
> > +	int err;
> >  
> >  	list = alloc_list();
> >  	ABORT_ON(!list);
> > -	ABORT_ON(parse_events_add_breakpoint(list, &parse_state->idx,
> > -					     (void *) $2, $6, $4));
> > +	err = parse_events_add_breakpoint(list, &parse_state->idx,
> > +					(void *) $2, $6, $4);
> > +	free($6);
> > +	if (err) {
> > +		free(list);
> > +		YYABORT;
> > +	}
> >  	$$ = list;
> >  }
> >  |
> > @@ -428,8 +496,11 @@ PE_PREFIX_MEM PE_VALUE '/' PE_VALUE sep_dc
> >  
> >  	list = alloc_list();
> >  	ABORT_ON(!list);
> > -	ABORT_ON(parse_events_add_breakpoint(list, &parse_state->idx,
> > -					     (void *) $2, NULL, $4));
> > +	if (parse_events_add_breakpoint(list, &parse_state->idx,
> > +						(void *) $2, NULL, $4)) {
> > +		free(list);
> > +		YYABORT;
> > +	}
> >  	$$ = list;
> >  }
> >  |
> > @@ -437,11 +508,17 @@ PE_PREFIX_MEM PE_VALUE ':' PE_MODIFIER_BP sep_dc
> >  {
> >  	struct parse_events_state *parse_state = _parse_state;
> >  	struct list_head *list;
> > +	int err;
> >  
> >  	list = alloc_list();
> >  	ABORT_ON(!list);
> > -	ABORT_ON(parse_events_add_breakpoint(list, &parse_state->idx,
> > -					     (void *) $2, $4, 0));
> > +	err = parse_events_add_breakpoint(list, &parse_state->idx,
> > +					(void *) $2, $4, 0);
> > +	free($4);
> > +	if (err) {
> > +		free(list);
> > +		YYABORT;
> > +	}
> >  	$$ = list;
> >  }
> >  |
> > @@ -452,8 +529,11 @@ PE_PREFIX_MEM PE_VALUE sep_dc
> >  
> >  	list = alloc_list();
> >  	ABORT_ON(!list);
> > -	ABORT_ON(parse_events_add_breakpoint(list, &parse_state->idx,
> > -					     (void *) $2, NULL, 0));
> > +	if (parse_events_add_breakpoint(list, &parse_state->idx,
> > +						(void *) $2, NULL, 0)) {
> > +		free(list);
> > +		YYABORT;
> > +	}
> >  	$$ = list;
> >  }
> >  
> > @@ -463,29 +543,35 @@ tracepoint_name opt_event_config
> >  	struct parse_events_state *parse_state = _parse_state;
> >  	struct parse_events_error *error = parse_state->error;
> >  	struct list_head *list;
> > +	int err;
> >  
> >  	list = alloc_list();
> >  	ABORT_ON(!list);
> >  	if (error)
> >  		error->idx = @1.first_column;
> >  
> > -	if (parse_events_add_tracepoint(list, &parse_state->idx, $1.sys, $1.event,
> > -					error, $2))
> > -		return -1;
> > +	err = parse_events_add_tracepoint(list, &parse_state->idx, $1.sys, $1.event,
> > +					error, $2);
> >  
> > +	parse_events_terms__delete($2);
> > +	free($1.sys);
> > +	free($1.event);
> > +	if (err) {
> > +		free(list);
> > +		return -1;
> > +	}
> >  	$$ = list;
> >  }
> >  
> >  tracepoint_name:
> >  PE_NAME '-' PE_NAME ':' PE_NAME
> >  {
> > -	char sys_name[128];
> >  	struct tracepoint_name tracepoint;
> >  
> > -	snprintf(&sys_name, 128, "%s-%s", $1, $3);
> > -	tracepoint.sys = &sys_name;
> > +	ABORT_ON(asprintf(&tracepoint.sys, "%s-%s", $1, $3) < 0);
> >  	tracepoint.event = $5;
> > -
> > +	free($1);
> > +	free($3);
> >  	$$ = tracepoint;
> >  }
> >  |
> > @@ -500,11 +586,16 @@ event_legacy_numeric:
> >  PE_VALUE ':' PE_VALUE opt_event_config
> >  {
> >  	struct list_head *list;
> > +	int err;
> >  
> >  	list = alloc_list();
> >  	ABORT_ON(!list);
> > -	ABORT_ON(parse_events_add_numeric(_parse_state, list, (u32)$1, $3, $4));
> > +	err = parse_events_add_numeric(_parse_state, list, (u32)$1, $3, $4);
> >  	parse_events_terms__delete($4);
> > +	if (err) {
> > +		free(list);
> > +		YYABORT;
> > +	}
> >  	$$ = list;
> >  }
> >  
> > @@ -512,11 +603,16 @@ event_legacy_raw:
> >  PE_RAW opt_event_config
> >  {
> >  	struct list_head *list;
> > +	int err;
> >  
> >  	list = alloc_list();
> >  	ABORT_ON(!list);
> > -	ABORT_ON(parse_events_add_numeric(_parse_state, list, PERF_TYPE_RAW, $1, $2));
> > +	err = parse_events_add_numeric(_parse_state, list, PERF_TYPE_RAW, $1, $2);
> >  	parse_events_terms__delete($2);
> > +	if (err) {
> > +		free(list);
> > +		YYABORT;
> > +	}
> >  	$$ = list;
> >  }
> >  
> > @@ -525,22 +621,33 @@ PE_BPF_OBJECT opt_event_config
> >  {
> >  	struct parse_events_state *parse_state = _parse_state;
> >  	struct list_head *list;
> > +	int err;
> >  
> >  	list = alloc_list();
> >  	ABORT_ON(!list);
> > -	ABORT_ON(parse_events_load_bpf(parse_state, list, $1, false, $2));
> > +	err = parse_events_load_bpf(parse_state, list, $1, false, $2);
> >  	parse_events_terms__delete($2);
> > +	free($1);
> > +	if (err) {
> > +		free(list);
> > +		YYABORT;
> > +	}
> >  	$$ = list;
> >  }
> >  |
> >  PE_BPF_SOURCE opt_event_config
> >  {
> >  	struct list_head *list;
> > +	int err;
> >  
> >  	list = alloc_list();
> >  	ABORT_ON(!list);
> > -	ABORT_ON(parse_events_load_bpf(_parse_state, list, $1, true, $2));
> > +	err = parse_events_load_bpf(_parse_state, list, $1, true, $2);
> >  	parse_events_terms__delete($2);
> > +	if (err) {
> > +		free(list);
> > +		YYABORT;
> > +	}
> >  	$$ = list;
> >  }
> >  
> > @@ -573,6 +680,10 @@ opt_pmu_config:
> >  start_terms: event_config
> >  {
> >  	struct parse_events_state *parse_state = _parse_state;
> > +	if (parse_state->terms) {
> > +		parse_events_terms__delete ($1);
> > +		YYABORT;
> > +	}
> >  	parse_state->terms = $1;
> >  }
> >  
> > @@ -582,7 +693,10 @@ event_config ',' event_term
> >  	struct list_head *head = $1;
> >  	struct parse_events_term *term = $3;
> >  
> > -	ABORT_ON(!head);
> > +	if (!head) {
> > +		free_term(term);
> > +		YYABORT;
> > +	}
> >  	list_add_tail(&term->list, head);
> >  	$$ = $1;
> >  }
> > @@ -603,8 +717,12 @@ PE_NAME '=' PE_NAME
> >  {
> >  	struct parse_events_term *term;
> >  
> > -	ABORT_ON(parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_USER,
> > -					$1, $3, &@1, &@3));
> > +	if (parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_USER,
> > +					$1, $3, &@1, &@3)) {
> > +		free($1);
> > +		free($3);
> > +		YYABORT;
> > +	}
> >  	$$ = term;
> >  }
> >  |
> > @@ -612,8 +730,11 @@ PE_NAME '=' PE_VALUE
> >  {
> >  	struct parse_events_term *term;
> >  
> > -	ABORT_ON(parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
> > -					$1, $3, false, &@1, &@3));
> > +	if (parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
> > +					$1, $3, false, &@1, &@3)) {
> > +		free($1);
> > +		YYABORT;
> > +	}
> >  	$$ = term;
> >  }
> >  |
> > @@ -622,7 +743,10 @@ PE_NAME '=' PE_VALUE_SYM_HW
> >  	struct parse_events_term *term;
> >  	int config = $3 & 255;
> >  
> > -	ABORT_ON(parse_events_term__sym_hw(&term, $1, config));
> > +	if (parse_events_term__sym_hw(&term, $1, config)) {
> > +		free($1);
> > +		YYABORT;
> > +	}
> >  	$$ = term;
> >  }
> >  |
> > @@ -630,8 +754,11 @@ PE_NAME
> >  {
> >  	struct parse_events_term *term;
> >  
> > -	ABORT_ON(parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
> > -					$1, 1, true, &@1, NULL));
> > +	if (parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
> > +					$1, 1, true, &@1, NULL)) {
> > +		free($1);
> > +		YYABORT;
> > +	}
> >  	$$ = term;
> >  }
> >  |
> > @@ -648,7 +775,10 @@ PE_TERM '=' PE_NAME
> >  {
> >  	struct parse_events_term *term;
> >  
> > -	ABORT_ON(parse_events_term__str(&term, (int)$1, NULL, $3, &@1, &@3));
> > +	if (parse_events_term__str(&term, (int)$1, NULL, $3, &@1, &@3)) {
> > +		free($3);
> > +		YYABORT;
> > +	}
> >  	$$ = term;
> >  }
> >  |
> > @@ -672,9 +802,13 @@ PE_NAME array '=' PE_NAME
> >  {
> >  	struct parse_events_term *term;
> >  
> > -	ABORT_ON(parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_USER,
> > -					$1, $4, &@1, &@4));
> > -
> > +	if (parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_USER,
> > +					$1, $4, &@1, &@4)) {
> > +		free($1);
> > +		free($4);
> > +		free($2.ranges);
> > +		YYABORT;
> > +	}
> >  	term->array = $2;
> >  	$$ = term;
> >  }
> > @@ -683,8 +817,12 @@ PE_NAME array '=' PE_VALUE
> >  {
> >  	struct parse_events_term *term;
> >  
> > -	ABORT_ON(parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
> > -					$1, $4, false, &@1, &@4));
> > +	if (parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
> > +					$1, $4, false, &@1, &@4)) {
> > +		free($1);
> > +		free($2.ranges);
> > +		YYABORT;
> > +	}
> >  	term->array = $2;
> >  	$$ = term;
> >  }
> > @@ -695,8 +833,12 @@ PE_DRV_CFG_TERM
> >  	char *config = strdup($1);
> >  
> >  	ABORT_ON(!config);
> > -	ABORT_ON(parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_DRV_CFG,
> > -					config, $1, &@1, NULL));
> > +	if (parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_DRV_CFG,
> > +					config, $1, &@1, NULL)) {
> > +		free($1);
> > +		free(config);
> > +		YYABORT;
> > +	}
> >  	$$ = term;
> >  }
> >  
> > -- 
> > 2.24.0.rc1.363.gb1bccd3e3d-goog
> > 

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106143735.GE6259%40kernel.org.
