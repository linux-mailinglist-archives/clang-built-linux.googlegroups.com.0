Return-Path: <clang-built-linux+bncBDEPBSN75UNRBGNWRPXAKGQEQQ3AZNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 86756F18E3
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 15:39:22 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id x3sf19128983pfr.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 06:39:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573051161; cv=pass;
        d=google.com; s=arc-20160816;
        b=GrihKCcFB9ZdO8lzOHzqAIpo16R3UNvZ92ZNTfO+weuRKUAfsRSho+g1rpFqbwYAzk
         3bOcH0kR5OUi4pCUMspD2LR9QSztyiy3ORcKjLeMA4LHBrxERhIVUc7+0tUK4NVeiGbv
         cQZcafp3HGKgCSDy2UZR2O0KKoB3EAwyuyAKa+vmDkKFJnGbqtmxpBiK4VBqFYdVxL5A
         ySp42rgc4iE0ndrjh4dgUnrnrZVM3Okqhx5cjphiAQm1p+ZSpTvksKbhw85aEnLymyDi
         nZZ59HyxGX/tjZHWlVWMxPnxE3ELyucbPuysIL/MbjmPZ7g1vAMpiqJzeAGzzo/fwNP2
         xRcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature:dkim-signature;
        bh=qZUL4g/rtRiliiJ3VwIQpEb7UwEyJx5Y2TPg/7XE+2I=;
        b=hr/QsEdoTnMfY2dM1+xSW+54A+Kyzjr63kFddcz4ayN39on53UrPuUy7zIUkfFyZOR
         cIBJU+9QhxcraTedbKC+fmaTErEbymcT8Jb4+xyB+2QWlYa8zEZD0PjSS7ORF2rymkn5
         6lO/4huBSjnl0khpFOWFDvOapQS7Hdm87zE7VTqPv8ZhEj8SqLCFmLa+uWzs4i6qNdt3
         mxrprQMw0iWcFEQlNyj+7i4XoklBv8zPzqk6PDWznH4fHa/ShvsUZrGuFqblyiGBq2OD
         SzAPyG3V65l7VHkNxnLLHKAvKM23OCM8Xaim9NDTOWNZ1ZOGgO1GA7CYr1FZ7g5DgQEs
         hcYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="S/H+0cHu";
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qZUL4g/rtRiliiJ3VwIQpEb7UwEyJx5Y2TPg/7XE+2I=;
        b=VF+HoixnRInux7r7w5muHM3fO4++9+ae0GOnrBBMQTAx9/x6ZUh2rPCzEuf6KHcB4f
         Yh+QjHvb8tzRj7q0J3FXRgZqxkDE662oiwQyFnmXXIle2Uz7NSL6TdCYvNkGByZK4Fvy
         3w4cDpNhNrDVr5TCuxlAVijcj3OMwgRvszq4Kh7nD1Nr8VICJ/6lILgMap+9C/ru/w+r
         Vh4HFMro4dEcWMt9aJisPvQYLRZzp8Ti03ReW/yq2ekv1mxd27jF0hz9vPtjL4z5NGzG
         jdujn7ZFGDckFEbOBO4rMYeNKkbkJZLsRjyyQU9MLAgftIK6Gt8Eyx7I5vs+erNme04W
         qPJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qZUL4g/rtRiliiJ3VwIQpEb7UwEyJx5Y2TPg/7XE+2I=;
        b=UaVEU/0U40FRKx78qRG4ep0MQk7Ocl8qgWqPlvLTZuvUVbQ41RG/DxtKqmFTBZnmzP
         gbO/fYQgL7YxSH8psHfSEOSkv9oGkSh14l/ITtaoxRDmLKFc6HpMu72CRMZjsahOG+lV
         buVJPd0nFKXwDNp2nijHjRVW1PhFQPRtWM185C3UTknV+LGjo3S3kT1JXGd/si2eNsDY
         MSdPPZgs8/BjvmTgJZpaWbGnuCBIKq+CRd1smgz435JMUJwwrABbM0tqCSZE04rd3Xgd
         pU6eTrNxoBoD8eNLYzqGwd5G9yULHpRnscKZx1yJs4eIgJLyIjNeTEMolcM//iYcwbyU
         VqJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qZUL4g/rtRiliiJ3VwIQpEb7UwEyJx5Y2TPg/7XE+2I=;
        b=TY4M+B1Q/kHtZI/c63LIAK6OCP9H0k4vO5kHHZ3isWVTNiqMPmBFmsH/D9Ifx/7QC2
         3x0NSFbcwMtwiz+sRBquvk3v4APR0jGIMrkTd2NH2ReO/rP+cak6YSuw0086FLzzPf3t
         UbyrNWqtHO9s8TnBHulEwmORItsfBKYAG92vFQyogkbHPPOLeDr+BmI5dXZ+b79OtJ2O
         JYlWmH97fL1mjn0YeXo1KBMdDPNWqUxjTQfsGSm95X6VBStTorJi2u7hLIAoQCjMhjx2
         LmaKmyl6ofRWQm7TtZmUObe5iWBj/ELCWdDbFFB3Lai0JZVDNiv8dcqtBK33+7NAf1Kg
         Bfag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXXOry63CvxVSyu/n4E/EID90yPJejXFFaVwqeKBWngEqW8fefo
	cI/Ve2xW7rJOp4XZjj2uQ1o=
X-Google-Smtp-Source: APXvYqx7+h3uKYkYfSKQRMclvMcyMlePQ/yxpYTNg8eKKm9+rdEIyEsnaX/k1NawXbAyXO/OnZWNCw==
X-Received: by 2002:a17:902:a987:: with SMTP id bh7mr2860198plb.181.1573051161121;
        Wed, 06 Nov 2019 06:39:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:45:: with SMTP id 63ls644435pla.14.gmail; Wed, 06
 Nov 2019 06:39:20 -0800 (PST)
X-Received: by 2002:a17:90a:f0cf:: with SMTP id fa15mr4304033pjb.51.1573051160717;
        Wed, 06 Nov 2019 06:39:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573051160; cv=none;
        d=google.com; s=arc-20160816;
        b=MBxzu4s3Uw7bAtloEW/ZPqOQCsgjlWoLVYnsighcsSFul+3JnqI0dxO+FDQI2HB9m/
         9hIdJ2QvG13yoFsQmUf1KRgA5Pf3mfHw7HrsjnWe4WEauelQzBvJN2SydHLNI2IjCeOw
         P/mCwIh99HYFES4zJXKFiN2rWEnCHWd3t2LPlNhv5wVY7TdIQYcTGPd+nFQhyPXQpwZB
         X0Dhw8i4GS8vjxmdglJJ0ORRwiv54R+G3BOeevZuAXJGAr2ruhkbVQb20hwxrK9TMzwv
         U+JJphSAbaBnmb8kDj7VuOsIbm+uTcBkgR8PalNz+GG2XV45Oxp/A03bCAvUAl3PHIoS
         9M3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=lPCixJQnRcBD0c5p0tZ1Pszikd0T2GsXeZOZpWPEV90=;
        b=KDUguk+HD6m2ssrE18z/zpK0wYwsadFv/SQoF4nhRvFPuTnf47Wi2uxRR3SP0dKED4
         oFZUGpumV3BZaKnW/xTqYiXTxFWW6qFJfNiygJT2BTVrJPwZgwj5+EaMajoawpuVj1L1
         1j0iL2ZSXMVIHS7zluMbVYrIpGTpBaNTjHfEmtaQnwdEe3rzc8MQdsPsGhVt36Iqu6uI
         vI/6LEG51tgq825qDK81O4PhT2aJ2LCmhcWD5BQyuNuM2XmNpz+vJq83m3bmZ4Ihcmxq
         zAPthos6Ski3jgyWUx7wbFHB72namAU91Co5AaUKfNAQCffOWYRUQ9Prf4V07nAlHbiB
         4Xpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="S/H+0cHu";
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id h13si84497pjb.0.2019.11.06.06.39.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2019 06:39:20 -0800 (PST)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id t20so18293775qtn.9
        for <clang-built-linux@googlegroups.com>; Wed, 06 Nov 2019 06:39:20 -0800 (PST)
X-Received: by 2002:aed:228b:: with SMTP id p11mr2729632qtc.196.1573051159674;
        Wed, 06 Nov 2019 06:39:19 -0800 (PST)
Received: from quaco.ghostprotocols.net ([179.97.35.50])
        by smtp.gmail.com with ESMTPSA id t132sm13057929qke.51.2019.11.06.06.39.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2019 06:39:19 -0800 (PST)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 374D440B1D; Wed,  6 Nov 2019 11:39:17 -0300 (-03)
Date: Wed, 6 Nov 2019 11:39:17 -0300
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
Subject: Re: [PATCH v5 09/10] perf tools: add a deep delete for parse event
 terms
Message-ID: <20191106143917.GG6259@kernel.org>
References: <20191025180827.191916-1-irogers@google.com>
 <20191030223448.12930-1-irogers@google.com>
 <20191030223448.12930-10-irogers@google.com>
 <20191106142444.GI30214@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191106142444.GI30214@krava>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="S/H+0cHu";       spf=pass
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

Em Wed, Nov 06, 2019 at 03:24:44PM +0100, Jiri Olsa escreveu:
> On Wed, Oct 30, 2019 at 03:34:47PM -0700, Ian Rogers wrote:
> > Add a parse_events_term deep delete function so that owned strings and
> > arrays are freed.
> > 
> > Signed-off-by: Ian Rogers <irogers@google.com>
> 
> Acked-by: Jiri Olsa <jolsa@kernel.org>

Thanks, applied,

- Arnaldo
> 
> thanks,
> jirka
> 
> > ---
> >  tools/perf/util/parse-events.c | 16 +++++++++++++---
> >  tools/perf/util/parse-events.h |  1 +
> >  tools/perf/util/parse-events.y | 12 ++----------
> >  tools/perf/util/pmu.c          |  2 +-
> >  4 files changed, 17 insertions(+), 14 deletions(-)
> > 
> > diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> > index a0a80f4e7038..6d18ff9bce49 100644
> > --- a/tools/perf/util/parse-events.c
> > +++ b/tools/perf/util/parse-events.c
> > @@ -2812,6 +2812,18 @@ int parse_events_term__clone(struct parse_events_term **new,
> >  	return new_term(new, &temp, str, 0);
> >  }
> >  
> > +void parse_events_term__delete(struct parse_events_term *term)
> > +{
> > +	if (term->array.nr_ranges)
> > +		zfree(&term->array.ranges);
> > +
> > +	if (term->type_val != PARSE_EVENTS__TERM_TYPE_NUM)
> > +		zfree(&term->val.str);
> > +
> > +	zfree(&term->config);
> > +	free(term);
> > +}
> > +
> >  int parse_events_copy_term_list(struct list_head *old,
> >  				 struct list_head **new)
> >  {
> > @@ -2842,10 +2854,8 @@ void parse_events_terms__purge(struct list_head *terms)
> >  	struct parse_events_term *term, *h;
> >  
> >  	list_for_each_entry_safe(term, h, terms, list) {
> > -		if (term->array.nr_ranges)
> > -			zfree(&term->array.ranges);
> >  		list_del_init(&term->list);
> > -		free(term);
> > +		parse_events_term__delete(term);
> >  	}
> >  }
> >  
> > diff --git a/tools/perf/util/parse-events.h b/tools/perf/util/parse-events.h
> > index 34f58d24a06a..5ee8ac93840c 100644
> > --- a/tools/perf/util/parse-events.h
> > +++ b/tools/perf/util/parse-events.h
> > @@ -139,6 +139,7 @@ int parse_events_term__sym_hw(struct parse_events_term **term,
> >  			      char *config, unsigned idx);
> >  int parse_events_term__clone(struct parse_events_term **new,
> >  			     struct parse_events_term *term);
> > +void parse_events_term__delete(struct parse_events_term *term);
> >  void parse_events_terms__delete(struct list_head *terms);
> >  void parse_events_terms__purge(struct list_head *terms);
> >  void parse_events__clear_array(struct parse_events_array *a);
> > diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> > index 376b19855470..4cac830015be 100644
> > --- a/tools/perf/util/parse-events.y
> > +++ b/tools/perf/util/parse-events.y
> > @@ -49,14 +49,6 @@ static void free_list_evsel(struct list_head* list_evsel)
> >  	free(list_evsel);
> >  }
> >  
> > -static void free_term(struct parse_events_term *term)
> > -{
> > -	if (term->type_val == PARSE_EVENTS__TERM_TYPE_STR)
> > -		free(term->val.str);
> > -	zfree(&term->array.ranges);
> > -	free(term);
> > -}
> > -
> >  static void inc_group_count(struct list_head *list,
> >  		       struct parse_events_state *parse_state)
> >  {
> > @@ -99,7 +91,7 @@ static void inc_group_count(struct list_head *list,
> >  %type <str> PE_DRV_CFG_TERM
> >  %destructor { free ($$); } <str>
> >  %type <term> event_term
> > -%destructor { free_term ($$); } <term>
> > +%destructor { parse_events_term__delete ($$); } <term>
> >  %type <list_terms> event_config
> >  %type <list_terms> opt_event_config
> >  %type <list_terms> opt_pmu_config
> > @@ -694,7 +686,7 @@ event_config ',' event_term
> >  	struct parse_events_term *term = $3;
> >  
> >  	if (!head) {
> > -		free_term(term);
> > +		parse_events_term__delete(term);
> >  		YYABORT;
> >  	}
> >  	list_add_tail(&term->list, head);
> > diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
> > index f9f427d4c313..db1e57113f4b 100644
> > --- a/tools/perf/util/pmu.c
> > +++ b/tools/perf/util/pmu.c
> > @@ -1260,7 +1260,7 @@ int perf_pmu__check_alias(struct perf_pmu *pmu, struct list_head *head_terms,
> >  		info->metric_name = alias->metric_name;
> >  
> >  		list_del_init(&term->list);
> > -		free(term);
> > +		parse_events_term__delete(term);
> >  	}
> >  
> >  	/*
> > -- 
> > 2.24.0.rc1.363.gb1bccd3e3d-goog
> > 

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106143917.GG6259%40kernel.org.
