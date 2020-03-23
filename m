Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBBFN4LZQKGQEIUETFMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D5D18F33E
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 11:59:18 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id r23sf9558048otp.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 03:59:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584961157; cv=pass;
        d=google.com; s=arc-20160816;
        b=LUNH8Ip0N+ZxjwhvBP+UScQht5djoyI8e9E6WVx0fwcifU2JJJ/1+hVWlpPptgqFNA
         PjbcCYsgsnMbh+sr1QFhbaQQEE1GLK0BjLYnt+SzMLpj4HuQ2Xo/KjA+UOZg3r/2Ydc9
         KSoSfMGVKJEYx8PlplqE3er371xoffSKYiIu6vF1Sp4/pfKm8I0NbqaZQ8uZkvd61eJA
         VawnBFBYRRuZAIgT3UMpcPKeLA2R+OpgXxsf+DOdaPZ/cGFIyNIhtlpkkONC/w4Z185O
         iFpf7Z2tckZANDNaMIgPRX8zv6Qm2MOPbKEpvAV95UyjkFuF0oIXrqRBzghdgjvl/iZF
         QBtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=McOWoZDDNRRJJN3W+fyDGQM9I4xX4PPcYWsUPrpQ7oU=;
        b=su8O+SAClvktDEngdqMeuPDwoOysLLF2Q7gKn5G1Asz4s5b3F+XcK5oSTCicXx6h23
         yxTo1edVv3r+tWN2VWBaqG1yagH9C+ZemFkuvPasQ+eyOjV5rA6yduV43fFEjKkKEDxY
         w8uoqu6SwLDb6KqoKKnVxQKT8UmRKbDbmxCvbuTULXiX4qFJ1FoCksMul+tZrXidK54r
         n535XSq0jn6hkPTQVQaa7ctrvxSp+jILzw5vfG3ZEq1JrSFIHq0xrI9TrrLHZJvKFCU6
         uGqoydguLbH/UwvGIYVPjMSPp2wR8vIVeZmGx6pkYzp6HJB04fz/mNyHLZ3AW4qIJ+bu
         c20g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LLT7b68S;
       spf=pass (google.com: domain of jolsa@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=McOWoZDDNRRJJN3W+fyDGQM9I4xX4PPcYWsUPrpQ7oU=;
        b=r8DPeYrXtvZhrLR+2diB8o5Nj7H2Wx1t9Avcb4P6yseRGr6PmSkpIMsc5tbiML/+fX
         LURS3fz0i3loIwUZ5BNei5Iq8MYDQnhkwqdReNVO5D90Lmn0lyN4173Hvr1FXrujfQU9
         JyCOIqEYdzgRdl9sqQc2Jd751vxRqOYAiJG1+L6k4mkOavRfBBI3HPGG486cezAQJ73O
         T11zaSCasdbeADOIOmkD9MFRXO47Rk3uQOU+fZraZFM4vEgJAgkZhf0mF8qrmMTqQXKJ
         NBszxuMVZGhL5M/A5BJeegaEjnw7oe3ei/k0zjGVMn0QEXrMlkzcTo9D2LNQp+Baw4Kp
         I7tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=McOWoZDDNRRJJN3W+fyDGQM9I4xX4PPcYWsUPrpQ7oU=;
        b=TH9GLl40PJskLnruRp8vkWeQUgcFQ+KpwVP04xCWpfVVNxLRNTcyTHYDqBKZLRjiXt
         mYWFfzQJoqApS8JrWQt7HTswBWrJPqRECv/bTnC2dFevWL+dI/S0OIloowZ8n5Z9l4+h
         SUs6wnpTpFz2yiU3ACwq/85KUZhRHX/T9RE39muPzIJ4dY3CAbMsFETzKCQhXEwgqu+q
         nXUu8+giJrjUVOphaGksTw0SRtMQOelXbmhjVuxcZy+WSpcuTCDTZx2VYWGMpVeGIAHq
         ZTpoCESGzUKmICK8wbLw66kn7euOhDTAQWch9aZ5sD6Zd+jS7J2twPiBHT+1YOr3XPgP
         W2zQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2RBxF6FVxGDBrt+Mna04GDK0nY9XN+uF9dUU2c5FllIfS3rtQD
	hHJUgWAVpuKg1Zq73h125os=
X-Google-Smtp-Source: ADFU+vs/t3WtStA4DyTEtULFLTZ+QWgRKpLOeE2W4zasmWpWPJHKtbNjnI01aSM2bNsViBsPxE/FzQ==
X-Received: by 2002:aca:c6ca:: with SMTP id w193mr16038583oif.165.1584961156959;
        Mon, 23 Mar 2020 03:59:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3985:: with SMTP id y5ls5843695otb.7.gmail; Mon, 23 Mar
 2020 03:59:16 -0700 (PDT)
X-Received: by 2002:a9d:77d1:: with SMTP id w17mr9931755otl.44.1584961156522;
        Mon, 23 Mar 2020 03:59:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584961156; cv=none;
        d=google.com; s=arc-20160816;
        b=XWq5k3X5pT2MdPTkXhUZgBDmzGOGop+AAjZS/t6x1KaWK91/olONLlA8UvfCiFdshN
         t/hYz5d0Ogl35HC11KVxH4e5DOxlgoP+7wpVBxxCdNBi4PDyObqUSdIzdh2PACWsWNWX
         5aAcQRoOdiCnsTslkzRZe9sdqaKqOFNoIcZ3Qt3mmY929SRxpbn4ECq/v0yN/eMWrhiI
         iQuOc81p0mlujz0Jt9E/q6AV950J8oSykSKh733X8INPFQhrHeU0GkIlAuBE3mY5DZqW
         hC2uX6lnnlPn2xThKWCnIVmJfW8UqVuKePF3NSagosLRNsWZgE/Kmis2rARWYnhzWXDH
         C6mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8mKkMCxUz98E1nhjMRn0Wqmkvjw6DFydIpIMbYY2oNk=;
        b=qVOsEB+IrEc4sSpHE6jhjbpXslCAS0j0U9N0WB4uSntYnl4a6qs6ET0voYOrhVbjAO
         VRDpIhqa3m37xTH11756iEBYbKeVsRWhMRiywbfcS762NLZb65tj+LRCcDcKq2/4BmB2
         xtmJX0dCGJD7g+KeXdf1xRf6OO7OezdDlXUlCPQIqeOzSijc72S4jhYkqgzWE6r1zE50
         vR9kNtFLuXut69bg3HQKllJvFQvUtjDaMUnsqdEe6ljT+bLG99058V8Yma7sgMvD3jzR
         2cgL3G45OEx4NBWyJfnUFSRo78zlLpBr6JnrPAjN+CNUDJIfYSd/ixEe9KJmu4GWtq9P
         SMsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LLT7b68S;
       spf=pass (google.com: domain of jolsa@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id e21si28527oob.1.2020.03.23.03.59.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 03:59:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-246-pVpfyIBBOl2cnWiuZjJVFw-1; Mon, 23 Mar 2020 06:59:09 -0400
X-MC-Unique: pVpfyIBBOl2cnWiuZjJVFw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C66E8100550D;
	Mon, 23 Mar 2020 10:59:07 +0000 (UTC)
Received: from krava (unknown [10.40.192.119])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E3885C1B5;
	Mon, 23 Mar 2020 10:59:04 +0000 (UTC)
Date: Mon, 23 Mar 2020 11:59:02 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, Andi Kleen <ak@linux.intel.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Leo Yan <leo.yan@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH] perf parse-events: fix memory leaks found on parse_events
Message-ID: <20200323105902.GD1534489@krava>
References: <20200316041431.19607-1-irogers@google.com>
 <20200318104011.GF821557@krava>
 <CAP-5=fXQzLMuv-6EWGdFY1p5oLjV9301k1tkYL+R7qYHQR6wXA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAP-5=fXQzLMuv-6EWGdFY1p5oLjV9301k1tkYL+R7qYHQR6wXA@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=LLT7b68S;
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

On Wed, Mar 18, 2020 at 08:56:26PM -0700, Ian Rogers wrote:
> On Wed, Mar 18, 2020 at 3:40 AM Jiri Olsa <jolsa@redhat.com> wrote:
> >
> > On Sun, Mar 15, 2020 at 09:14:31PM -0700, Ian Rogers wrote:
> > > Memory leaks found by applying LLVM's libfuzzer on the parse_events
> > > function.
> > >
> > > Signed-off-by: Ian Rogers <irogers@google.com>
> > > ---
> > >  tools/lib/perf/evlist.c        | 2 ++
> > >  tools/perf/util/parse-events.c | 2 ++
> > >  tools/perf/util/parse-events.y | 3 ++-
> > >  3 files changed, 6 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/tools/lib/perf/evlist.c b/tools/lib/perf/evlist.c
> > > index 5b9f2ca50591..6485d1438f75 100644
> > > --- a/tools/lib/perf/evlist.c
> > > +++ b/tools/lib/perf/evlist.c
> > > @@ -125,8 +125,10 @@ static void perf_evlist__purge(struct perf_evlist *evlist)
> > >  void perf_evlist__exit(struct perf_evlist *evlist)
> > >  {
> > >       perf_cpu_map__put(evlist->cpus);
> > > +     perf_cpu_map__put(evlist->all_cpus);
> >
> > ugh, yes, could you please put it to separate libperf patch?
> 
> Done. https://lkml.org/lkml/2020/3/18/1318
> 
> > >       perf_thread_map__put(evlist->threads);
> > >       evlist->cpus = NULL;
> > > +     evlist->all_cpus = NULL;
> >
> > there's already change adding this waiting on the list:
> >   https://lore.kernel.org/lkml/1583665157-349023-1-git-send-email-zhe.he@windriver.com/

Arnaldo, could you plz pull this one ^^^ ?

thanks,
jirka

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323105902.GD1534489%40krava.
