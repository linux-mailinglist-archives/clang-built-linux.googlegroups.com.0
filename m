Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBSNPRPXAKGQE2WFWDNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 51401F1884
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 15:25:14 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id f16sf13860214wrr.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 06:25:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573050314; cv=pass;
        d=google.com; s=arc-20160816;
        b=DfyLvTXeXH1ZnPXH3Rd/wJOMUrKXU1b5obtagd7sPFEtDJtZO2Q0TgF/Ozl2JFoINc
         zAP/K9MCrF/WpZZIr03mNvGl9I2Es3OzDq0EVPCiw8X+gHhUgo/jQTJVMOB3eRbfCxyy
         dglalY7AR5usL1kHyQSSrGgOdQqvQFOFhapfQgl2/9gXUj1UplUZtBlTATQcYviXolxZ
         JyqkpXzwyYnZ3bW5tQdwK3adOPmQNVAlWoSoIhae4V/QBNEWJqPOkwUhkxXCEu1I0aNM
         szA0TL8BThElrbHiwYMdJY+HPfZUPJXKImsA0le5XjQSTBHTDl0pE4M4F9OmkzsxyWVV
         ZSNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=7Eno26sL9Jdeouoax16qQZu9Kh9L9vcVucKudvTKoz8=;
        b=Lv/o5kLtOaB9cLfbPnhE++ACajfcwt1NLRjxNziWSKuq3TVJqtC2FPfzEd9O6Iuzxr
         iA+MUPFGq6tEC7WsPPLXZ5MC2WXIpaXMHaUqbISai1iEGkG+BuHf440cOeCCAKz5BXRC
         3KlQebWbEKJHp1ECrbAkOREJBrm6PxO2QYeBdKwmbFikaRwr7AucZmGjcT5aB1ddYITn
         eotScGeKAITmMxwnAkBL8gphbNG8D1Bds79LZmlWQBJjYFtSb/z0wppUffQJgirQ8bUD
         1wmEk68abor1Hi57AqU/ZliDiywg5STUJ00GAXUGK4DjcQfg1E3mkHNkxJbKEmR4HjKZ
         HE0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=E0bV3rtJ;
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7Eno26sL9Jdeouoax16qQZu9Kh9L9vcVucKudvTKoz8=;
        b=AuJKhOkhR7xCnNa3sjDUo5ued+ThctT0deOa3R/yhJjtAZ3aZxTj4uLPVzY8yUKzT8
         964e4VAENf4f7QAy3TaJwid2I9ZawNvQNvFOU+kh5kgcqht66efxIeUSDTIeHj9uKXf4
         dEIe8+cqedh62iCJZGLXZSLTqOohMthvvGd8XUmwhwb9gkVapCxgvGip0Acl4NWxHsLn
         INL+736WmaztgwVMqVjsONucgkV1eangBAsfN1Z68xy57IgFWFOujYZ6pmb5q4iseKZ4
         OAcfpCtEhqoy8Rcp0An8PedOGafugc4h1NjBCF/ue2vq5XNNIbguMnOklyMhQVnd9nUh
         tWEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7Eno26sL9Jdeouoax16qQZu9Kh9L9vcVucKudvTKoz8=;
        b=kRiv+SvykTxzSj0jUYhXNpAC6gz9qGibmJqmplWnZz47zLDnR6Ue3nERrVkU5VjYNY
         Auv1e1F/MMKQP4TQg2JDmu8L4F5TR7pZXVORoRhyCQj1sMPDSsvXyec1xxsejWN+Yi6G
         Z1LK6g68YzMroqlP1dMSPNCYdv7wUVXy5mEQzTtLBsaP2Il/+o/N/aT4dQwx293qZFG6
         TTIU3waBWqKYFUBcL5onA3Sh96kFkXCtnPBZIRCMiFp7hVOD0XiHG8DqMWN3UFTimZ4E
         Cgk4HlTV4lRRmlQIWyI6hOR8AHF0wQ+dtELYHsea/zvJ2TsWjJvvlTEnhNj2CLHBfhH+
         niog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW4SYF7pATSZQGQYQNpSsAjV0IUXWcuzKnEqWT6Q8XnauRT7Gru
	I1syfhEJHUio7kUZkSIOpKo=
X-Google-Smtp-Source: APXvYqy0oMkHezEnBzwCe/dTHvVCVAU+lbBpXZH1ROiRxlCBRXtkCpzn/mbU9dnhdL/TjBLeF2usJQ==
X-Received: by 2002:a7b:c549:: with SMTP id j9mr2873264wmk.88.1573050313935;
        Wed, 06 Nov 2019 06:25:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:11c6:: with SMTP id i6ls410035wrx.3.gmail; Wed, 06
 Nov 2019 06:25:13 -0800 (PST)
X-Received: by 2002:a5d:530f:: with SMTP id e15mr3064206wrv.119.1573050313278;
        Wed, 06 Nov 2019 06:25:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573050313; cv=none;
        d=google.com; s=arc-20160816;
        b=EJoz404g3CISs3mFuqfSIqSP/KerB3VmW7pQV3mfWwWLlDPLGg9rkn32zoGUtycusH
         6UxGAK0ZnXa2zo1wwsMPSK8Yh9foNe54qPn0GQMNqmGohuAsTUoxw89pPCX3DNst368b
         L50khi0ZBitF6g6GI/oFUy+aeX/CdwdUzGWN9JDPxxKAOo+udwsUgWVXON0rLgzCI54x
         XWPfYFWppW4nzT94GroWo0c01CkcMqW3NLYB8LsXnELXLkB+PHV71xBfSVedZjO0zX6i
         gEM6bUi094CR7xKzpEoibKaRFT+39nzIK79C9xsRY4wjl3qpWMfYS0m7gTCf1025p0IO
         svaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=h5pPZVTREMq4qu46ZNU6BI6SD31ir0ObDVVlebbDEPg=;
        b=hdQrgbnoyKLRmmKWGkrarKMHFYVJKbJ4ceGu71AmpK3vkkdtJvYRXOvFViTGkZAVp3
         tcd4xmrermGr6DAvlpLo2/zoflhXx9Kl7jz9frGf84TZIz9IfiZhNufJMdhYnjCpocJj
         KNOBDHHqVkezgwevzQ7hvLFhrsIfXiGDEkZdasv1tM0tMFSh5mKVOysTDN7WzMYa5AhL
         iAzlFrlPRFlfGHwH0PluzS9jdkIl1yu9S4Gw9LMG8QqzaNtBuel099YPz/KPbYn2iRca
         2hOpLZDJHY3OkEDJY3sdnqDgEVGoTOR7Dr8wm1sSC09pzSLdd/y1r+/TpT3Z24nx2WH+
         z9uA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=E0bV3rtJ;
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id c12si1436659wrn.2.2019.11.06.06.25.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Nov 2019 06:25:13 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-223-otur01r4OniW7ijTIICpDQ-1; Wed, 06 Nov 2019 09:25:10 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2D6058017E0;
	Wed,  6 Nov 2019 14:25:08 +0000 (UTC)
Received: from krava (unknown [10.43.17.48])
	by smtp.corp.redhat.com (Postfix) with SMTP id 5AD1C5C3F8;
	Wed,  6 Nov 2019 14:25:04 +0000 (UTC)
Date: Wed, 6 Nov 2019 15:25:03 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
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
Subject: Re: [PATCH v5 05/10] perf tools: ensure config and str in terms are
 unique
Message-ID: <20191106142503.GK30214@krava>
References: <20191025180827.191916-1-irogers@google.com>
 <20191030223448.12930-1-irogers@google.com>
 <20191030223448.12930-6-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20191030223448.12930-6-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: otur01r4OniW7ijTIICpDQ-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=E0bV3rtJ;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Wed, Oct 30, 2019 at 03:34:43PM -0700, Ian Rogers wrote:
> Make it easier to release memory associated with parse event terms by
> duplicating the string for the config name and ensuring the val string
> is a duplicate.
> 
> Currently the parser may memory leak terms and this is addressed in a
> later patch.
> 
> Signed-off-by: Ian Rogers <irogers@google.com>

Acked-by: Jiri Olsa <jolsa@kernel.org>

thanks,
jirka

> ---
>  tools/perf/util/parse-events.c | 51 ++++++++++++++++++++++++++++------
>  tools/perf/util/parse-events.y |  4 ++-
>  2 files changed, 45 insertions(+), 10 deletions(-)
> 
> diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> index 03e54a2d8685..578288c94d2a 100644
> --- a/tools/perf/util/parse-events.c
> +++ b/tools/perf/util/parse-events.c
> @@ -1412,7 +1412,6 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
>  int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
>  			       char *str, struct list_head **listp)
>  {
> -	struct list_head *head;
>  	struct parse_events_term *term;
>  	struct list_head *list;
>  	struct perf_pmu *pmu = NULL;
> @@ -1429,19 +1428,30 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
>  
>  		list_for_each_entry(alias, &pmu->aliases, list) {
>  			if (!strcasecmp(alias->name, str)) {
> +				struct list_head *head;
> +				char *config;
> +
>  				head = malloc(sizeof(struct list_head));
>  				if (!head)
>  					return -1;
>  				INIT_LIST_HEAD(head);
> -				if (parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
> -							   str, 1, false, &str, NULL) < 0)
> +				config = strdup(str);
> +				if (!config)
> +					return -1;
> +				if (parse_events_term__num(&term,
> +						   PARSE_EVENTS__TERM_TYPE_USER,
> +						   config, 1, false, &config,
> +						   NULL) < 0) {
> +					free(list);
> +					free(config);
>  					return -1;
> +				}
>  				list_add_tail(&term->list, head);
>  
>  				if (!parse_events_add_pmu(parse_state, list,
>  							  pmu->name, head,
>  							  true, true)) {
> -					pr_debug("%s -> %s/%s/\n", str,
> +					pr_debug("%s -> %s/%s/\n", config,
>  						 pmu->name, alias->str);
>  					ok++;
>  				}
> @@ -1450,8 +1460,10 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
>  			}
>  		}
>  	}
> -	if (!ok)
> +	if (!ok) {
> +		free(list);
>  		return -1;
> +	}
>  	*listp = list;
>  	return 0;
>  }
> @@ -2746,30 +2758,51 @@ int parse_events_term__sym_hw(struct parse_events_term **term,
>  			      char *config, unsigned idx)
>  {
>  	struct event_symbol *sym;
> +	char *str;
>  	struct parse_events_term temp = {
>  		.type_val  = PARSE_EVENTS__TERM_TYPE_STR,
>  		.type_term = PARSE_EVENTS__TERM_TYPE_USER,
> -		.config    = config ?: (char *) "event",
> +		.config    = config,
>  	};
>  
> +	if (!temp.config) {
> +		temp.config = strdup("event");
> +		if (!temp.config)
> +			return -ENOMEM;
> +	}
>  	BUG_ON(idx >= PERF_COUNT_HW_MAX);
>  	sym = &event_symbols_hw[idx];
>  
> -	return new_term(term, &temp, (char *) sym->symbol, 0);
> +	str = strdup(sym->symbol);
> +	if (!str)
> +		return -ENOMEM;
> +	return new_term(term, &temp, str, 0);
>  }
>  
>  int parse_events_term__clone(struct parse_events_term **new,
>  			     struct parse_events_term *term)
>  {
> +	char *str;
>  	struct parse_events_term temp = {
>  		.type_val  = term->type_val,
>  		.type_term = term->type_term,
> -		.config    = term->config,
> +		.config    = NULL,
>  		.err_term  = term->err_term,
>  		.err_val   = term->err_val,
>  	};
>  
> -	return new_term(new, &temp, term->val.str, term->val.num);
> +	if (term->config) {
> +		temp.config = strdup(term->config);
> +		if (!temp.config)
> +			return -ENOMEM;
> +	}
> +	if (term->type_val == PARSE_EVENTS__TERM_TYPE_NUM)
> +		return new_term(new, &temp, NULL, term->val.num);
> +
> +	str = strdup(term->val.str);
> +	if (!str)
> +		return -ENOMEM;
> +	return new_term(new, &temp, str, 0);
>  }
>  
>  int parse_events_copy_term_list(struct list_head *old,
> diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> index ffa1a1b63796..545ab7cefc20 100644
> --- a/tools/perf/util/parse-events.y
> +++ b/tools/perf/util/parse-events.y
> @@ -665,9 +665,11 @@ PE_NAME array '=' PE_VALUE
>  PE_DRV_CFG_TERM
>  {
>  	struct parse_events_term *term;
> +	char *config = strdup($1);
>  
> +	ABORT_ON(!config);
>  	ABORT_ON(parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_DRV_CFG,
> -					$1, $1, &@1, NULL));
> +					config, $1, &@1, NULL));
>  	$$ = term;
>  }
>  
> -- 
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106142503.GK30214%40krava.
