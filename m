Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBGPVY7ZQKGQE5KSPALY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B6C18999A
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 11:40:26 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id w2sf25261002qka.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 03:40:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584528025; cv=pass;
        d=google.com; s=arc-20160816;
        b=cNwwfN15TeByuerA61dPk3PlLYaml7atu3hC3dGxOrk4FoWsHEtPPLNuejNevnwcWf
         KcQ0zy7wARaJytuNxAcNUMWNZv4avJw/2LTS+dY/ntWoakBIzVyLkP9Yd8tU9WZCZtzq
         FaHBIF/33TocM8S4eK6jioOYbRoCER13djGx1O/WJcoUPULTnYxd+4/VqSMu0/Yd0k8I
         GtCTR5SSXySA/h2IfXtzY99zfRquJel2euRUAq4ZR+Qs+gPfDszWJFLQ3o9VChm71wTV
         9AS1//LDhJcoxCPL/D/10DI3H9LK5E741QVBrkEIKmRgBagYPelZoSGGafO7FgubX0zA
         7B1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Dr5aflbJpG/r5OjMz9cKx8KYfkAfhW2Tlfi8cQWNMOU=;
        b=igvd+B2VUjGp/UbdaPmDheu7DfA22SJOvlBqT3sWfG07mwvrLFhnwZPbu2Q4m3q6wB
         xFaT9z2Ox1tXd5X54loGBrQcoPTfUC6jRtezfq3VYAIunp49sjWwe3Tz9e6YhHk/BCJ3
         3KvvLeZPi6rXHkoJAXtTkRbA85pp6Zl7KX5eD0pEVlBkNgXppYIL9k9PgQBS6SPh3UQO
         S1a7s8y7J0jzjwVnwSfCVwjXXEbirqyM5Xg4J71Poh6h4nL9RjlaAQCFEBKNW7FKn2Cl
         DqrPiq2Ve7nhG5qFeHXE63Ldskj+8Kg+7TF2CAWcQdZfkp0r1VXMI/HGzvwUrSaD+bZm
         p8og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ccWO6boC;
       spf=pass (google.com: domain of jolsa@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Dr5aflbJpG/r5OjMz9cKx8KYfkAfhW2Tlfi8cQWNMOU=;
        b=VhvDEMnEg6TMTqaTKpr9uvlNgEy77H5auyZDv/GyXW0KeJlK3zhf0kye6Q1qFGHVGb
         gfin+9XwZjatt0oSWSVxx3EsrfpoyUZz1ea+yPjsVRBIcANwa1gu/Sf/dDxLRnYwJuWa
         CpdhB9tYEX20Re10E3FRZUupS9ZU9ps15bDvUUBeAN/+hieUpDudbU/l2m/gcFYVsEwd
         aY/0hy0fDax57CHY7TD4ndYdU3fu+AQmPp6veQFVspv4jGS4RyuWOUfI6nqTj/iaM5Y6
         shAZpDu0wsDK6+jq8H0OxhrIcGMtYlsmM0mB6uHcQJHOnASvQ711zFPa3iMf/n5Z3RQG
         YC8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Dr5aflbJpG/r5OjMz9cKx8KYfkAfhW2Tlfi8cQWNMOU=;
        b=VAYfj2Y1UDk5WsOEJ/TSkQHiYFqEJKWx33nAp0VSat5wlyUm75onQ7+K2WOclV0LPv
         VQozl4L3YB40rut3Vsdxjo+LzpZhqwjEzZdGobN8gpJfGDJZOO4ilRByydkGCYV+alww
         ACKl/u6vi5HNSdYgNvvyy6FMA5jDRM5Gcld8x069Cw8tholkncrKcifCmLDQhJOdlCNu
         BT2IT8b7PbZRFNDGw7G3VzzgkeOi46K/AXlMs4ZrT94723fq5VYv5IPMfHHF1kcK/SvC
         y3wlQ9Vl+mdys4/7K/ufLnsXiCAuaTgDYYR0Yc0HCftHpuOgDNNGnaVbedylwDNexuVO
         jV2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2IjZbGngosAs1AjrIb7fS+MoxsPitACdZBJLveU3C4MnDr0Qlz
	q9CV83URUHb9pzP4T4mMXFs=
X-Google-Smtp-Source: ADFU+vvJzwjdBowak4PotdoiuYkxWWs2MUmaLjjzmc6nngTaDRXzl3+shkFmnKo7BbzOhU09v9Ocsg==
X-Received: by 2002:a25:6b4b:: with SMTP id o11mr5315535ybm.257.1584528025540;
        Wed, 18 Mar 2020 03:40:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ab94:: with SMTP id v20ls8819450ybi.0.gmail; Wed, 18 Mar
 2020 03:40:23 -0700 (PDT)
X-Received: by 2002:a25:3187:: with SMTP id x129mr5028067ybx.397.1584528023555;
        Wed, 18 Mar 2020 03:40:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584528023; cv=none;
        d=google.com; s=arc-20160816;
        b=ShMEXgyZwoC76IWppUmBmJogrS0HA5bR88X0UDAGN5YMOColdayi/Rz5Z5X7cHJWC0
         0j0XLZ+ZMAcyO3APnaLWtrc61BbrpJhfKfZwH5E6BIuq4+VvbuYCOJc08MZTBrjJLEvr
         QIHmDI3uRfX+JtBdwAGzZKqmchyKzjKTqPCFZuI3oVVEJF5UKanraqImT+22+I1B4Mf+
         qAhoF4ximuFu37xNBsE6Mknfigr1aWm8SHWvQaxz7Atkg23D7Ig3Fb3UtvyRaUXO8BOZ
         IcDGsUYKA2YnCO5awIafaX0d4iDWGg7YL5QH1n4AWAbP1VhQLSK69ipWLKQtwvZ/gA1G
         HiaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GBdjH8RHRR7Z8mptXmC5pXUdosTe08Yji59vlIq8X/s=;
        b=CqnAOQ0+77oItGurBvF/pRV6sZ59nysjszD2zBZ1oO22gmje3JQl3pUbw66j6jNlT2
         HowUG2shNEETM/S891efNs+CI7w2T0zy1/Rwxb5CVppzAbDLa+rh0cVvijXF8qvEorsz
         Tf/w89ncORRsRc7qe1ucXLL51J3pDU15yLPuJo5l1FdaRNsCBVr8o5rkGPe23zz2fl65
         P7nSXbcU1sq5brI6/GTQuVuOUhtO6g8vtSd5E/bg93H25PB8nkoLrHagF30NPZJJhCrg
         oNMFYl+MWKElbfgpK3ROgNKQXisN5ILpYwxFARI89aS9V0ybXwo8TGYCUVF5wTXRtvEX
         MgaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ccWO6boC;
       spf=pass (google.com: domain of jolsa@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id l1si137534ybt.2.2020.03.18.03.40.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 03:40:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-18-oYaycwOzNQeocBb6VQrlzQ-1; Wed, 18 Mar 2020 06:40:19 -0400
X-MC-Unique: oYaycwOzNQeocBb6VQrlzQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B0B298010D9;
	Wed, 18 Mar 2020 10:40:16 +0000 (UTC)
Received: from krava (unknown [10.40.195.82])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C2DE95D9E2;
	Wed, 18 Mar 2020 10:40:13 +0000 (UTC)
Date: Wed, 18 Mar 2020 11:40:11 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, Andi Kleen <ak@linux.intel.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Leo Yan <leo.yan@linaro.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH] perf parse-events: fix memory leaks found on parse_events
Message-ID: <20200318104011.GF821557@krava>
References: <20200316041431.19607-1-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200316041431.19607-1-irogers@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ccWO6boC;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 63.128.21.74 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Sun, Mar 15, 2020 at 09:14:31PM -0700, Ian Rogers wrote:
> Memory leaks found by applying LLVM's libfuzzer on the parse_events
> function.
> 
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/lib/perf/evlist.c        | 2 ++
>  tools/perf/util/parse-events.c | 2 ++
>  tools/perf/util/parse-events.y | 3 ++-
>  3 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/lib/perf/evlist.c b/tools/lib/perf/evlist.c
> index 5b9f2ca50591..6485d1438f75 100644
> --- a/tools/lib/perf/evlist.c
> +++ b/tools/lib/perf/evlist.c
> @@ -125,8 +125,10 @@ static void perf_evlist__purge(struct perf_evlist *evlist)
>  void perf_evlist__exit(struct perf_evlist *evlist)
>  {
>  	perf_cpu_map__put(evlist->cpus);
> +	perf_cpu_map__put(evlist->all_cpus);

ugh, yes, could you please put it to separate libperf patch?

>  	perf_thread_map__put(evlist->threads);
>  	evlist->cpus = NULL;
> +	evlist->all_cpus = NULL;

there's already change adding this waiting on the list:
  https://lore.kernel.org/lkml/1583665157-349023-1-git-send-email-zhe.he@windriver.com/

>  	evlist->threads = NULL;
>  	fdarray__exit(&evlist->pollfd);
>  }
> diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> index a14995835d85..997862224292 100644
> --- a/tools/perf/util/parse-events.c
> +++ b/tools/perf/util/parse-events.c
> @@ -1482,6 +1482,8 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
>  
>  		list_for_each_entry_safe(pos, tmp, &config_terms, list) {
>  			list_del_init(&pos->list);
> +			if (pos->free_str)
> +				free(pos->val.str);

ack, would be nice to have  perf_evsel__free_config_terms generalized
to work directly over config terms list, so we'd have only single
cleanup function

>  			free(pos);
>  		}
>  		return -EINVAL;
> diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> index 94f8bcd83582..8212cc771667 100644
> --- a/tools/perf/util/parse-events.y
> +++ b/tools/perf/util/parse-events.y
> @@ -44,7 +44,7 @@ static void free_list_evsel(struct list_head* list_evsel)
>  
>  	list_for_each_entry_safe(evsel, tmp, list_evsel, core.node) {
>  		list_del_init(&evsel->core.node);
> -		perf_evsel__delete(evsel);
> +		evsel__delete(evsel);

ack

>  	}
>  	free(list_evsel);
>  }
> @@ -326,6 +326,7 @@ PE_NAME opt_pmu_config
>  	}
>  	parse_events_terms__delete($2);
>  	parse_events_terms__delete(orig_terms);
> +	free(pattern);

ack

could you please send the separate change for libperf?
and synchronize with that other patch mentioned above

thanks,
jirka

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200318104011.GF821557%40krava.
