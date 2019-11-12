Return-Path: <clang-built-linux+bncBDEPBSN75UNRBZVDVLXAKGQEKLS7RWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C5EF8D86
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 12:05:11 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id t190sf9280374vkd.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 03:05:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573556711; cv=pass;
        d=google.com; s=arc-20160816;
        b=rgotuJI/HswlAgMyXpVfPJao2Srr/2zp4fJoX2btw62KcWGyjgrS4Q9on6N3/d/F0V
         V5UWDC69wOOiYjksDBkzrJyh+nFrzMvTC05jGcIOJ8X37c1F625WhpBzx0mFGIu+m9Kv
         0vpgFOpkZiY+llrGeLGrV6i4Vd9qCSJZmvpvzcg1ein4SemoHsZON8rz9ifBNPXjcv/z
         kzamvlsIe7I3be9mmvusahd+8FXH5m0mp2bdmjRKGWUm/sn5P5qt4QBSVUNIQBDgxfCa
         ro11uqeuH5xKt/zmbGFuWMsGTYMD5VbV2XZapq7j/51urOF4I1SNZnm2oaVjR5xdBCME
         nq5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature:dkim-signature;
        bh=l8gueELHc945HUHhBdE3epdZFEZSAkWwAegyC2TebQ8=;
        b=DPD8DzGI5hG4wTYqxc17FReF33ELuvpDVsiXUjbCqs7Y4zoRfLFGqTXKOYtCMMPy9f
         deeFFlF6yMip5MPoO3LNWfzQz4eEdz8PQY2AEE78V3al9O5dxUOt+lNGOszPliAGbw3l
         XpugkpXHfMD4n+TZPADhsDZ2aixTu+niS5x8LTVBuNhuV8MKAjdMT6DBEAW/dk6N2Os9
         R6G8Cj8bbBCtYO37ksVrFuhJYVw5fGxiG9qR99P4/tlBhQWU8f81ZnzCJPuFC4OayNzL
         3Kx+XWM+tLyL9zpPbXb0rSDkd0eRNhYImLlH26wNeZJjrL4htshT4dwiVu0o0PLldPg4
         BqCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="CoH/vqG+";
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l8gueELHc945HUHhBdE3epdZFEZSAkWwAegyC2TebQ8=;
        b=a8QNraou6EbOZVYhdc4pvxn7DXssxKt0Ohs0et01GNdH+wPyNoP1TU8A048xbS1mxx
         HHZ0K4evK7oX1OriO0BrEi3KheUIuGjSu2ryZ5yw4CK8UVLAivVPgpdnOmkSz9y2tHeu
         d5CbCGMSLjvac+3pTmPX0TG8acdkpOuxgERqY4o8tA+oQXC4AR+oS31Uxco8Uh3qM8/r
         WhhKWVpzjo5LCO/t1hzobak2H8mimvI9CNLcaXKbfdZR91PT0VhFJLRDmXdMeb63e6HB
         XDT3YGMs8pYprimEkrRoCzxfGL9OTXT3MWVgMmQ7eS4nr3xcMb41mPP+smQybNZjgx+E
         oetA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l8gueELHc945HUHhBdE3epdZFEZSAkWwAegyC2TebQ8=;
        b=qGyxFPQouz8DZvgTqdYU8Fki+r1d84pBmW8+qimLWTgdtIyLBvX60CYEehR6QGzdT/
         qj7ZtdVNIm52yMbTZBf6OnTjt0RhlMsecf1D5Wtqr3Dsq08M5/5u5iTpqTf65peUWcpa
         VIuSCJK8k749uJBty/AnAMO2y/CGvKVOtKPIajXcCV7J270PqDe2aHH/d5EkLs66k9gZ
         0joZa5Eoc8q9aexhRukQi7IyKyms16OVF5slu6kX2upZoUxl+LzqfoWDyBrUtXYfV+it
         jIUscIcsB9pd08u9s4Ckz5B/hyx0FnwMX5dOf3GDC66DUjCYZHFso6yl4zyJKmhHUkDe
         yfOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=l8gueELHc945HUHhBdE3epdZFEZSAkWwAegyC2TebQ8=;
        b=o/DP5rqnVypgOLy7OISdBfff+mgxG8zUcumjHxazwq3ExcYCadTZgPaJO6l+a8TUmJ
         aDkJmW8VBKSM7MFukldkScN6LvHFM/3G/4ZdKWg0Z6hTxWZwgFJIQKDMr6PfE9g3ze88
         8kxRJWbhgHzw7ZYTtYjgYGqrZ/30x5LVvhEk1lLMScqhdIkToo1Iy8tv6oCpQz9XMT6I
         bbWg9U82bDkOKUOqa6HtMYqarAJ5TqzJtj1EuoX+Gu5Ae8LXFXcrW+wQssiMZJDO/2AN
         lyJLF9rNPEppXS/ORKKlCyboLPCxF1bFcevEjtRoS+7dh9wiGMpgaiHa81XZiYyWN/Qx
         ZDzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXJqsPNvUVh8ZxDAjpmqsc8ahKoU4gELxzSe5gXx9k4LBltcJyl
	8/w1F65HM3WMzNJReXo106I=
X-Google-Smtp-Source: APXvYqx3jvTPKFPiHSZFBbAMdPuFz3vrQ8TKx621G17BNqCvy6OHVl0XGHeyVL1oI4VR+uxY4GVSnw==
X-Received: by 2002:a67:c09e:: with SMTP id x30mr22826884vsi.61.1573556710851;
        Tue, 12 Nov 2019 03:05:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:12d7:: with SMTP id 206ls74616vks.10.gmail; Tue, 12 Nov
 2019 03:05:10 -0800 (PST)
X-Received: by 2002:a1f:94c7:: with SMTP id w190mr20548601vkd.62.1573556710340;
        Tue, 12 Nov 2019 03:05:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573556710; cv=none;
        d=google.com; s=arc-20160816;
        b=ki5HF+DnfQTytZtVlucjtSO3VCe0yp7dlA4fIkPpfmUDeGsayUCtLdO4rIrVVxt93B
         N6OommtJqaAN227SjLNHwO4nqza3IWBgdy0QbDhm8ycy86cK+6/orR8LKlOMFiiXe7sA
         AvyU9PwGg+9tAo8Q2DaVtx5ediTkQ3MHMiZ0L/0FZvGX4xqL9q2OX8JBU1uRJgfBbRj4
         idsu3cFcrvZZshFdIXuwfNEDTEn5tKIcGplP21gZvYYHiRNfrQ3lP5l+aYUTQclyQDjc
         Oi+kNGziplbpspPNYafaQZnf0lVv+IsSp14rjuoQ6UVkwwB7N6OgkJqgjXG81F1UG+5T
         btRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=/1qAe80a/Aw51odzHBaIn/JKMcateknemSaOG5ZLUFg=;
        b=DMm2oZ8UxeXPtZc/mvcg6qyqD7kNv8auxyATdPpW0AinAnxA8UvXVNZG9E+ArXmZpg
         O58rZfUS3PIk9cT2r3kLlX6jDeDHwRZAq0iy6IVNxWb54Vj9Axh6mDMyUweCrDZd5umF
         JaP1VVabi04NcC+XmdjZcCSwmOqLId2ENZ7ipdy76mr/61TZw+UzATStiy4EtyrGFlFA
         ppb7/LAxISG8v4bTgJyNThYfK1h/ETK6b36ZiOddkMw+vH6yaRXJH/d2+Ci9DR3KTZqm
         j1VuX2KPnQf/vko+vGe2YTz2oIYGX2VbwT1IVpJqRSfopMgO6d4ZJdyNMClVF7nGnPBf
         Fiag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="CoH/vqG+";
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id f12si1063980vso.1.2019.11.12.03.05.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 03:05:10 -0800 (PST)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id 15so14015354qkh.6
        for <clang-built-linux@googlegroups.com>; Tue, 12 Nov 2019 03:05:10 -0800 (PST)
X-Received: by 2002:a37:9d0:: with SMTP id 199mr14884770qkj.356.1573556709800;
        Tue, 12 Nov 2019 03:05:09 -0800 (PST)
Received: from quaco.ghostprotocols.net ([179.182.211.47])
        by smtp.gmail.com with ESMTPSA id n21sm12520160qtn.33.2019.11.12.03.05.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 03:05:09 -0800 (PST)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 38F97411B3; Tue, 12 Nov 2019 08:05:06 -0300 (-03)
Date: Tue, 12 Nov 2019 08:05:06 -0300
To: Ian Rogers <irogers@google.com>
Cc: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
	Jiri Olsa <jolsa@redhat.com>, He Kuang <hekuang@huawei.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, Andi Kleen <ak@linux.intel.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH] perf tools: avoid reading out of scope array
Message-ID: <20191112110506.GI9365@kernel.org>
References: <20191017170531.171244-1-irogers@google.com>
 <20191023082912.GB22919@krava>
 <20191111142511.GF9365@kernel.org>
 <CAP-5=fUB-FddKaKOCYfU2Zu+AX88U9dFFmZ4Fdv146vKvQSr1g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAP-5=fUB-FddKaKOCYfU2Zu+AX88U9dFFmZ4Fdv146vKvQSr1g@mail.gmail.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="CoH/vqG+";       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::743
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

Em Mon, Nov 11, 2019 at 12:34:23PM -0800, Ian Rogers escreveu:
> Thanks Arnaldo, this patch shouldn't be added. It was replaced with
> the longer v2 patch that addressed the memory issues properly. That
> was followed by a number of improved versions.

Thanks for checking,

- Arnaldo
 
> Ian
> 
> On Mon, Nov 11, 2019 at 6:25 AM Arnaldo Carvalho de Melo
> <arnaldo.melo@gmail.com> wrote:
> >
> > Em Wed, Oct 23, 2019 at 10:29:12AM +0200, Jiri Olsa escreveu:
> > > On Thu, Oct 17, 2019 at 10:05:31AM -0700, Ian Rogers wrote:
> > > > Modify tracepoint name into 2 sys components and assemble at use. This
> > > > avoids the sys_name array being out of scope at the point of use.
> > > > Bug caught with LLVM's address sanitizer with fuzz generated input of
> > > > ":cs\1" to parse_events.
> > > >
> > > > Signed-off-by: Ian Rogers <irogers@google.com>
> > > > ---
> > > >  tools/perf/util/parse-events.y | 36 +++++++++++++++++++++++-----------
> > > >  1 file changed, 25 insertions(+), 11 deletions(-)
> > > >
> > > > diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> > > > index 48126ae4cd13..28be39a703c9 100644
> > > > --- a/tools/perf/util/parse-events.y
> > > > +++ b/tools/perf/util/parse-events.y
> > > > @@ -104,7 +104,8 @@ static void inc_group_count(struct list_head *list,
> > > >     struct list_head *head;
> > > >     struct parse_events_term *term;
> > > >     struct tracepoint_name {
> > > > -           char *sys;
> > > > +           char *sys1;
> > > > +           char *sys2;
> > > >             char *event;
> > > >     } tracepoint_name;
> > > >     struct parse_events_array array;
> > > > @@ -425,9 +426,19 @@ tracepoint_name opt_event_config
> > > >     if (error)
> > > >             error->idx = @1.first_column;
> > > >
> > > > -   if (parse_events_add_tracepoint(list, &parse_state->idx, $1.sys, $1.event,
> > > > -                                   error, $2))
> > > > -           return -1;
> > > > +        if ($1.sys2) {
> > > > +           char sys_name[128];
> > > > +           snprintf(&sys_name, sizeof(sys_name), "%s-%s",
> > > > +                   $1.sys1, $1.sys2);
> > > > +           if (parse_events_add_tracepoint(list, &parse_state->idx,
> > > > +                                           sys_name, $1.event,
> > > > +                                           error, $2))
> > > > +                   return -1;
> > > > +        } else
> > > > +           if (parse_events_add_tracepoint(list, &parse_state->idx,
> > > > +                                           $1.sys1, $1.event,
> > > > +                                           error, $2))
> > > > +                   return -1;
> > >
> > > nice catch, please enclose all multiline condition legs with {}
> > >
> > > other than that
> > >
> > > Acked-by: Jiri Olsa <jolsa@kernel.org>
> >
> > Ian, this one isn't applying to my perf/core branch, can you please
> > address Jiri's comment and resubmit?
> >
> > - arnaldo

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191112110506.GI9365%40kernel.org.
