Return-Path: <clang-built-linux+bncBDEPBSN75UNRBS66UXXAKGQEBSJWYEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F61F7654
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Nov 2019 15:25:17 +0100 (CET)
Received: by mail-vs1-xe3f.google.com with SMTP id g14sf2164193vsa.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Nov 2019 06:25:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573482315; cv=pass;
        d=google.com; s=arc-20160816;
        b=hFaFN1GV1Chd/StOxSLe8WBvvieLeGM8wAODVsX5eNqAQDUKkvnCBc1HP4EjMs/Vhk
         ORRhV8VcvTNxcp3LwsadWgFz8s5Ah1uYaTVCni0cs2Ky+Oj0UjgUGQ6xjNk4G6R3KXZW
         HozDb4yfiv8T8Y+xpxDC13S+J/IraoBoAsYUn1QtWiETWY9nAS4nFd1ppUaXKESwtxsh
         +KHD9rbjmcchVVP/XmL38muwvIluH2crv1Mt3XskrbD+l3xXVi/X3gZ9nIKCqucfLRUl
         A5mSs248SijZmHT0efr56VQWpfQnpaC4q8RIGHgwG6GjOdnQpu4cy/M6lubpWH6KQSVw
         44zA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature:dkim-signature;
        bh=tk/CFwz9DjVB5bey5OJe8rlppciOm+vwMcx+yngm0Bs=;
        b=0BAerZq49PVh4UAtvN573Qe9yhnihKwlIjPIu9o2cwKfBgZmw1Od81lf8ooj3AURLO
         aKx/DLKq8DQVqK/A75zBVRh9ifXhJf9j8z60sranNuknXkC+Of2VbyBIkUv/HHomVVhl
         TuFg+/IUdhfniOZ3V2pTJzJjSW21N4JgREEARO8qDh3v/iHLvrP4WIYEJJQ8gP7I7hOG
         zR2yyHTKMakabC6gI4TeqtzdjE6woLuzAtpu0Wjfbz+7QyOabb8dqAUwNE/6268xhdNF
         s00+m0KeLTdWdpaTx6dN+s29ne4fxlW5NXBdf+XyOVOuSC0DzMPh2Jy+EKDk+hUH3YKz
         Wiuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O1iftIqO;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tk/CFwz9DjVB5bey5OJe8rlppciOm+vwMcx+yngm0Bs=;
        b=PbUlH6dpmUs4oF2Yghg6TYDvb9EYXIwDzzgKGwXMBXRHtc2XuJj1MNumwL3l3w/0nA
         uzygNCjObktZoS32COC0MIHqsAQA+5K+5TBxNHb428OO3LlQYtk0lwAaVAMc56KobxfE
         +a13LiOtdkK3rcHRYDm7r2BAA4otfbnNYGmsZi9bC72xl9k6Gbqvg1lRxbQxxvqcNgCe
         vbRbPikYuYzPC8Q5CzRUCC3y/+KYCpthNING1Pl/u1FoXo4BCOYNn7fgpFmBfTA4oIAE
         2szU/LhzhqyhrybYY4uvW0eqU9oeaSge34QCSKfaXiLqIeyVlYHTdLxKZZPTTWtjziGb
         si6A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tk/CFwz9DjVB5bey5OJe8rlppciOm+vwMcx+yngm0Bs=;
        b=BlDix6JQ5K7FrDegDIYwH5boJelL3yz9HnSYinM7tybRS69TyEP2eFegLrXARyCUzj
         OU6GtKEFPPcf+VBihR6SHithmAf2WtsEvfHLEBG/FJc0k4veIIQuNEVgHPnqT5oB8hZs
         m0ZCzKPu79vSDE071p21TKid/f4c1gYEbt9UcVQvdum7i6Ky+ioRtHRFYteX7fmTrnfz
         4CEPD85nLa6ImyOpguf/pLfWteUMmFvNyuqAKrBmbC1ziTm7HZXBDX2aCs3pMgs6xusn
         NZwMKx5FIfm9y3PfjWxK2/fFdYE0OcaH6wAGj8g7VtcnBdJZtjCmYjt1v5mZ7BlHRQb9
         Gqsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tk/CFwz9DjVB5bey5OJe8rlppciOm+vwMcx+yngm0Bs=;
        b=qPaICQivJe10On51NuVMMioZ21h6CcneSeOKaiqzm61e6/tCiJgxXrE5+qJ9frZkIK
         O52FueRos9WcVfNS7TUp0poRWgR0Rvil6cgTT7qYdXaRpwzzBWwtM/jSqd+GjAWnRP7j
         Gu27fuMIJKJpO6SJyky10vTtIP9EFYHwhkipHCWs9bMSDKCJWCM0y49A+V3u0kJVbi4n
         v3Ylaj0YwNlRli2I0nWtC1MmM3KFf3vdqGoAX/QHWHkxEP9d0P0D3WU43t2nJ2O2Tmnz
         N9BubXnBypfTKFab020K/8MKLjx7Zv/4RaAv/wvvr0vlynzmedhT1nWlvavsTRi0rdiT
         ipsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX+kNw61Uhpa9fVcBaFzT6IGtsr2hNZd1vj7OaQzvF/Zod5DCFS
	o0UJGsqGzsWtM2dkehiTOjs=
X-Google-Smtp-Source: APXvYqx4ohofNjhZ2r0aBkbY3eQf9oTHGXTJJFehxgqFjC+XlJEAis8oXiNLZQISdnIwj8G4kZeqeQ==
X-Received: by 2002:a05:6122:1074:: with SMTP id k20mr17870347vko.57.1573482315194;
        Mon, 11 Nov 2019 06:25:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9f91:: with SMTP id i139ls613732vke.3.gmail; Mon, 11 Nov
 2019 06:25:14 -0800 (PST)
X-Received: by 2002:ac5:cc71:: with SMTP id w17mr18152341vkm.58.1573482314578;
        Mon, 11 Nov 2019 06:25:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573482314; cv=none;
        d=google.com; s=arc-20160816;
        b=GqoLbFbSUxLiFD6RZjSy4b0F/pZFJw8Q7BpKB9QApTj43mTUD7Om/QBYxH/ZFAOD85
         b6XHiOx+1fA21aTIKU4RerI9nCrV3XAONx6i0LsC9rcHja5I8+Q5fJkycSB6zX8yWWWi
         PEh+dBLjqTBCdx6gRrbYXLU/fDnig+CQn5zFQIshIRxyplKbaLJ+e7TTV39PzyNY9EDP
         Mi0bvCAabwKJrz7A5dMBnE5yR4aYAz3SYORRNpXfq1LVM+uqzL7miFt40xrlgEz72p2p
         hDZKFnwWKOYylrJ9gBKU6OwQYNekJLOgHxZJXr744RjvF6HbGlG8UQdJlzNSPuDJtjwY
         3Pxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=Pd0jyk5Hmsa8VRUVMIT7ZCVSUG/JVaQlXwpiOsD9XiM=;
        b=zgcfsN2xvIDhQ5+ZJEdFPVLe13qaKrlbnmOHMgSEpqrAoAVVs4PCZF+PsgEyd4e1wQ
         sQAIOxpBztLupdm19Ggm0Ea9zdmyVkvhLGYsQdeCDe5aEGvB5EZxOYvzF8Qo8XtNe0Da
         QWQqCZlIHBYkThqbq0O+pDJkoOhqFJrFvqtFQlR3Ld83EMSOT0FkUViCl+PsSb26LZ60
         yU2sg951aDrZDORtInXLMs72CaHIDURboXFG7EbgHbTTryoubpH5/n+Psn3jDCaoBvlw
         pCXCTuxqdKNXcpjRDJWYtr5m8uk+0xuj7O6PaGwvzA1eq+jy5BOruf9k3l03VM+YvQTy
         oulA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O1iftIqO;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id p78si1235263vkf.0.2019.11.11.06.25.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Nov 2019 06:25:14 -0800 (PST)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id i3so4738470qvv.7
        for <clang-built-linux@googlegroups.com>; Mon, 11 Nov 2019 06:25:14 -0800 (PST)
X-Received: by 2002:a05:6214:1323:: with SMTP id c3mr23573062qvv.243.1573482314083;
        Mon, 11 Nov 2019 06:25:14 -0800 (PST)
Received: from quaco.ghostprotocols.net ([179.97.35.50])
        by smtp.gmail.com with ESMTPSA id c128sm1022371qkg.124.2019.11.11.06.25.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2019 06:25:13 -0800 (PST)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 4A5AE411B3; Mon, 11 Nov 2019 11:25:11 -0300 (-03)
Date: Mon, 11 Nov 2019 11:25:11 -0300
To: Ian Rogers <irogers@google.com>
Cc: Jiri Olsa <jolsa@redhat.com>, He Kuang <hekuang@huawei.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, Andi Kleen <ak@linux.intel.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH] perf tools: avoid reading out of scope array
Message-ID: <20191111142511.GF9365@kernel.org>
References: <20191017170531.171244-1-irogers@google.com>
 <20191023082912.GB22919@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191023082912.GB22919@krava>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=O1iftIqO;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::f42
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

Em Wed, Oct 23, 2019 at 10:29:12AM +0200, Jiri Olsa escreveu:
> On Thu, Oct 17, 2019 at 10:05:31AM -0700, Ian Rogers wrote:
> > Modify tracepoint name into 2 sys components and assemble at use. This
> > avoids the sys_name array being out of scope at the point of use.
> > Bug caught with LLVM's address sanitizer with fuzz generated input of
> > ":cs\1" to parse_events.
> > 
> > Signed-off-by: Ian Rogers <irogers@google.com>
> > ---
> >  tools/perf/util/parse-events.y | 36 +++++++++++++++++++++++-----------
> >  1 file changed, 25 insertions(+), 11 deletions(-)
> > 
> > diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> > index 48126ae4cd13..28be39a703c9 100644
> > --- a/tools/perf/util/parse-events.y
> > +++ b/tools/perf/util/parse-events.y
> > @@ -104,7 +104,8 @@ static void inc_group_count(struct list_head *list,
> >  	struct list_head *head;
> >  	struct parse_events_term *term;
> >  	struct tracepoint_name {
> > -		char *sys;
> > +		char *sys1;
> > +		char *sys2;
> >  		char *event;
> >  	} tracepoint_name;
> >  	struct parse_events_array array;
> > @@ -425,9 +426,19 @@ tracepoint_name opt_event_config
> >  	if (error)
> >  		error->idx = @1.first_column;
> >  
> > -	if (parse_events_add_tracepoint(list, &parse_state->idx, $1.sys, $1.event,
> > -					error, $2))
> > -		return -1;
> > +        if ($1.sys2) {
> > +		char sys_name[128];
> > +		snprintf(&sys_name, sizeof(sys_name), "%s-%s",
> > +			$1.sys1, $1.sys2);
> > +		if (parse_events_add_tracepoint(list, &parse_state->idx,
> > +						sys_name, $1.event,
> > +						error, $2))
> > +			return -1;
> > +        } else
> > +		if (parse_events_add_tracepoint(list, &parse_state->idx,
> > +						$1.sys1, $1.event,
> > +						error, $2))
> > +			return -1;
> 
> nice catch, please enclose all multiline condition legs with {}
> 
> other than that
> 
> Acked-by: Jiri Olsa <jolsa@kernel.org>

Ian, this one isn't applying to my perf/core branch, can you please
address Jiri's comment and resubmit?

- arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191111142511.GF9365%40kernel.org.
