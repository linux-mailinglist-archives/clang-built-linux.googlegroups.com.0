Return-Path: <clang-built-linux+bncBDEPBSN75UNRBB7W4XWQKGQEDBDORVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 2423AE9B37
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 12:59:05 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id x65sf855786vkd.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 04:59:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572436744; cv=pass;
        d=google.com; s=arc-20160816;
        b=MLqrAFJB0dECI5bk2gpW+5GNDpU8nIZD6H7W+FJSz/A33pOjR40E7JcKY8eH0Xvd9w
         dvmr/vpPXsGyDRMSZVxOs0RX3Hmj2TfY00h7wVeOnM36R9mddJ1fgQXClI0ENIvQO7jf
         FSDBfrW1UrBm7PrAenpK359IaU4GkAX5wbfz7OBdmXuDyfWkyYsK3Uki94yJ1afWKZXF
         rAShO+okIAcu1wgVDEaNIJT9q8SPN5/ab5SGkWHJs9XVOe1rOtAYbK/n2tAj5NCvq5rn
         DvF0ONEqsyGmIEgNoEVWDCLXWbuKv75pOnTShyzV3iVF8emD0/GnjmTax4CP6/nFlbRF
         nASA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature:dkim-signature;
        bh=+hgqwnvB56rLwkEZxWuv+QjgoLh+33ZSkf9gR61vCOM=;
        b=GTTWNSnQecZxEq+ZVz1rd6Ez3XplIhBnz/5jEuglY90Typzfmv8QlgMML0WyiCcYs+
         maadRzhsB2KwFrTT/q0rq/WBXns17JFtdrZOumtsetrtx1B+wxfd4OeRRdOsCeQlJJN+
         gfgNRGYz0hOSa9ikoVZ/tQsAYqWYoE1Pni1FeZvV6fjvW9OD/3+KA9Thw/Przv9o8Jxq
         es44fLft0eW5XOOmHirqDLaZzEAY0R/daSfAY7amR9FQA8dkvc3gLG/5NfMgRQge8Cp+
         v5GR1qbxosGsGos1koep2R/in/cxVi7zkTY4iQqqyjLpYwYTnPIrSIxoKt0tU5QloqcI
         7j9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TPN+erso;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+hgqwnvB56rLwkEZxWuv+QjgoLh+33ZSkf9gR61vCOM=;
        b=dDI4oNVDmVcLy2IA3TtrNxZeo+23PKdrSIhouSMnFyYpzf73OGy9+OFMV+fVrhiWUW
         gQNzwZPiTRP99wP8jWOkdt11lbln+2/PXOyWdEPseAtoqyDTobLYsZmb03ePCLxFO2XQ
         LNDbCNwdLX471kx3w0iU7fHFVHR16MJo5qPKd/ATjmR1LrRbfr+0nj1gNBKj6XgxL0cK
         8aLshFO6fVvpBwdiRB9BXz9m2NrJrluW/MdqXpJ2y/OFdBvZF9FjQuONa1LaLkrYIlb9
         ymtREos22E6U3ek5ou43ju1+1nsnbjbL+k7yDjGKiAoy7Lxs2uHPjgQk/pmLVvScdLqs
         BijA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+hgqwnvB56rLwkEZxWuv+QjgoLh+33ZSkf9gR61vCOM=;
        b=EpWahgeqM13+hbsO5wioJdsP9J7mXzRYNyJmtVnTCVyGSKLWZUOVKvjgZ9E5msxyEB
         F+yL5vFwIZ/I0M7OPeWXMWeb891YCiUSOXrMC3dnAaYIe17eo0ZLhGh82kzGggA03Xoq
         1JFRDg0Te4tFdQqP7y9uBpMgr161Yr7qLSWmY1jIZka+ZnOAdxAMPx8eotp6BrPTOk5v
         5zmIpFulC2O2znccheply4vQAlUq2Z/Wctx2NK7uIeGqswG7KbBem61BFbZLPLCPtDDV
         as+Lrs8qxlFdtP6MvldNFh9Bw1CwUtl9NR+hF2TLQD2Q/HRzZbRttKkgMgGrBpeLi/8Y
         4Fwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+hgqwnvB56rLwkEZxWuv+QjgoLh+33ZSkf9gR61vCOM=;
        b=cQFJmRRHrVUG/knuv/fszbBBvRxF66jur7qgQzK2ee7pOKAJYao+Ruv/yk8LT5ZZ5R
         HBv43eeVs2jhPPhtiCvFkRXNQWX0NTIViFpIpBz2wUs2UOjFzQ9dcau066sfH/k8OinF
         FGTb82Z6ZJfdYFtJGSDOPQB+4KsWhXl7vgsm7ZdrEN1LFpxGOuGOAHM3GqUxrjUZVqjE
         jraJnlBC5sdvhtMEoAMNTWETXa4gZg0B1r83pgn/IV0Ya6r9kSZaQeDJXkESqQZaueR3
         K36uPztJYrnlbTsOlECb+AVmI/hs4VzKqtLRZ/1DK+xOTdNHCktYyuWIsI+VpKH5xdLD
         mhzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXIWYk6h1ohiKBUxGj0OBTlLK5LJ0ag6Exmc19Vh9zhBLwsR4UP
	xAHc3iHgj1F9E/oz8xnX91k=
X-Google-Smtp-Source: APXvYqyvMfX0OzLAprrt9s7AKX8yht6tbh5Y58ehnDp2FYNy5n753m4MYd5tHQEu9msotAvK2hd23Q==
X-Received: by 2002:a05:6102:3115:: with SMTP id e21mr4840328vsh.53.1572436744003;
        Wed, 30 Oct 2019 04:59:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e2c8:: with SMTP id i8ls820297vsm.13.gmail; Wed, 30 Oct
 2019 04:59:03 -0700 (PDT)
X-Received: by 2002:a67:20c7:: with SMTP id g190mr902580vsg.177.1572436593758;
        Wed, 30 Oct 2019 04:56:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572436593; cv=none;
        d=google.com; s=arc-20160816;
        b=p78RU1iX1ZLgYsV2fH1diAnfUikpW9K/g2k1uvPWSV5FspsJ1966kdwI7F8fA70t+l
         Wi7x8Sx16jgpiuWCIL7WbnkCrImw3yPhtXtwgi2Jq5Sq0dejK28uROhJoqcnx53yQcjA
         WhHHfRekQd5cnsXmT0v8CWDhyRR1M1MgR3f55PgafLu1ZF162fr2QQiCVF8oqvynbdSh
         iJYi0XuQkCMC87qP0f/RDrxmY4CB1YbDiYp1tKJXYvGDWtdy3km1/fYOQv0DbfNjHb3L
         XDMe0cQ/5yJMchr2CZjiN36WMCg3iCJf9vuuZ08Kgz7nuO0bGHApxfKafA3aA2k8Nd1E
         MUSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=9VRvwupe1Us8UkNQwMDn+6sFPpjxIr5st7RpNyH9QM4=;
        b=O62/mc/DxAv7vY2UGv/xT3OyERioUGRFQJnRvu/ZHpcB3xsnJ+B6DTsq7IpAz80pqH
         OYhmcws9npOl64W9J4hIT9xwyR3zsSjT0QXlGOVcO838skBCjIDTpaUjZaExF8WqSEiH
         58XvQM5afF/43N7M1wcITBa70tH0El/+Vk3Ch0cH3UtVYsjuXYW2C7PFUrSTM/WSZhsW
         jNWlc9BVGHz/sMr4Syh9ukJ2pdKDg4AJIvU9Lyyp/OIrrono5QWBf01dBft4CHwi4h3K
         djUUoeP4eHSEkxjMtDOQIXprn1fK1FowPb3nLUwW+U7+95q0ID2S7IuRadeL2m0iXRS9
         E2aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TPN+erso;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id c126si161311vkb.3.2019.10.30.04.56.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 04:56:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id x21so2733599qto.12
        for <clang-built-linux@googlegroups.com>; Wed, 30 Oct 2019 04:56:33 -0700 (PDT)
X-Received: by 2002:aed:3e75:: with SMTP id m50mr4307731qtf.87.1572436593246;
        Wed, 30 Oct 2019 04:56:33 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.35.50])
        by smtp.gmail.com with ESMTPSA id w15sm1200336qtk.43.2019.10.30.04.56.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2019 04:56:32 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 28557410D7; Wed, 30 Oct 2019 08:56:30 -0300 (-03)
Date: Wed, 30 Oct 2019 08:56:30 -0300
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
Subject: Re: [PATCH v4 4/9] perf tools: splice events onto evlist even on
 error
Message-ID: <20191030115630.GC27327@kernel.org>
References: <20191024190202.109403-1-irogers@google.com>
 <20191025180827.191916-1-irogers@google.com>
 <20191025180827.191916-5-irogers@google.com>
 <20191028210712.GB6158@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191028210712.GB6158@krava>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TPN+erso;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::844
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

Em Mon, Oct 28, 2019 at 10:07:12PM +0100, Jiri Olsa escreveu:
> On Fri, Oct 25, 2019 at 11:08:22AM -0700, Ian Rogers wrote:
> > If event parsing fails the event list is leaked, instead splice the list
> > onto the out result and let the caller cleanup.
> > 
> > An example input for parse_events found by libFuzzer that reproduces
> > this memory leak is 'm{'.
> > 
> > Signed-off-by: Ian Rogers <irogers@google.com>
> 
> Acked-by: Jiri Olsa <jolsa@kernel.org>

Thanks, applied.
 
> thanks,
> jirka
> 
> > ---
> >  tools/perf/util/parse-events.c | 17 +++++++++++------
> >  1 file changed, 11 insertions(+), 6 deletions(-)
> > 
> > diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> > index c516d0cce946..4c4c6f3e866a 100644
> > --- a/tools/perf/util/parse-events.c
> > +++ b/tools/perf/util/parse-events.c
> > @@ -1952,15 +1952,20 @@ int parse_events(struct evlist *evlist, const char *str,
> >  
> >  	ret = parse_events__scanner(str, &parse_state, PE_START_EVENTS);
> >  	perf_pmu__parse_cleanup();
> > +
> > +	if (!ret && list_empty(&parse_state.list)) {
> > +		WARN_ONCE(true, "WARNING: event parser found nothing\n");
> > +		return -1;
> > +	}
> > +
> > +	/*
> > +	 * Add list to the evlist even with errors to allow callers to clean up.
> > +	 */
> > +	perf_evlist__splice_list_tail(evlist, &parse_state.list);
> > +
> >  	if (!ret) {
> >  		struct evsel *last;
> >  
> > -		if (list_empty(&parse_state.list)) {
> > -			WARN_ONCE(true, "WARNING: event parser found nothing\n");
> > -			return -1;
> > -		}
> > -
> > -		perf_evlist__splice_list_tail(evlist, &parse_state.list);
> >  		evlist->nr_groups += parse_state.nr_groups;
> >  		last = evlist__last(evlist);
> >  		last->cmdline_group_boundary = true;
> > -- 
> > 2.24.0.rc0.303.g954a862665-goog
> > 

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191030115630.GC27327%40kernel.org.
