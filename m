Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBMHLW7ZQKGQEXPIAIXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 32416185B7F
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Mar 2020 10:30:26 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id b72sf11049189ilg.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Mar 2020 02:30:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584264624; cv=pass;
        d=google.com; s=arc-20160816;
        b=SNSdclM604nJ5k61vOqQe6AiPzIQdryiLscg82vdrCLl6HLJr7uNZnlrwylN5eBgpd
         u+7eP4KV5iwGSi5bHC15sQG21XtUwl7boDKFewPkoR6gi/I3dvFL00XzVhjiRMJXCW6j
         Ijey+OYHTGAxhFb31puYQBf0dL24iOdNw6/5ZMFFhAC3FtTJqXWl8/hx7hEg6T4F9l9a
         5tgGr2gyvGESVKRU/FrEESfXD0c/NaS9lkPFmy4gznAXsz7+3oieE6wimAJggiAXXcnT
         DDLMkCZC25KSLRLVEQYfxmw4u04hWmNcnzdjlBZgXFTCnKsmA1yFQARHI+yEy88ke+IU
         8zsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Onbke8nS3qXNmxSku0Jr/78pTnc7MwfSSLtrVnkrDKQ=;
        b=mjoc9M0ICdGW+pszgI8V5tp7ynVCsduz7K08Sv/B6DbIQ7sqDmpqLEr8oFhsIDDHHU
         /x4vwlG6AN16ETXj/oZ4SCe4cRNELwl4y4PdDDeKG2E6zrQlxuAFUtchr1yxeBDyydZD
         q4KtnfFAoDi3UkcIWMMlxCA914vntet8YAoLV+HhpAsdDk7qSdxwVUuLjAHGT66rBPN5
         drgIiZ+xmZRuhZp7exPaOdTyDCZOaPzif63lrd2xTynkmDA3afSeG04TLpJMYXs4CHfj
         bcHaJT6mOCjrpQIb8Z0gG+rx0WCyXeG7zkcOnnXFUMB22/VKziUg0PGefZmgJ+5yjS+R
         8kmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=COrUznnc;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Onbke8nS3qXNmxSku0Jr/78pTnc7MwfSSLtrVnkrDKQ=;
        b=Uo3aMihMwileke0eE/7NsHk8vGYKuwjv2Px6LXQaJx0w6rxkitelnjEm+lAis2nNKN
         bCaTsv4YRH0tywaf+vbVgu1Yt4/YIIUXgvJ/GxcF3f+2oyiCxnkoglynIzhG6Vq14hcS
         WkJUhoDVQiuWZ5+YW/q+Vo0F6mM6oMK65sxCibUbvMkyXICaVjQqCY14dOHyBLpjhpvM
         GG/mlZvhYB/xoCue9dDD04C7UnGyv41wBW41MfgY4buxVqJJAhyc88ho2MDyp0j3glhY
         borHO4gF0SUA0GMndP0+cZwp98T49+sHO1r1/PkGAcCqSWtwAbFgRI4lKONpGDPKiIYo
         pewQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Onbke8nS3qXNmxSku0Jr/78pTnc7MwfSSLtrVnkrDKQ=;
        b=ZNUyLLfiT4xcV84Cwt+Y/Fa+awnM3xjOImdaSObL5tjXB9I7/xANl7JZNZlatY9XaF
         3u3cmGzndt+b14/KNJizrO7aIvzheoYq3Hvi7aMmwTer1kTKTQYz0lpHb2vRYJsAo6iI
         4E55Xxz4Pn6SSTDx70qfafoYohfaMw/VmFJovwdAUQhk8wIn7bXVHk/1xST29pTegKW0
         qR1zxv90rivOvh2rHxgSD8QJF7/K75TxuzBEX0itr1CHJFw3asfgUpfh50DOEdkEX4J9
         j589R43Iw9jy2mbj8sjVi7j2nYYwX0dQ8tualV89AWr+YnkMkLN9uBRMkFy54zCAF8GA
         eLrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2EWxQR1RAcjykDDnk1Wj2JglB0zGeD/9fD6ASC3vGsW0XImEWG
	DROKiGX2cpHsasSsJRqgKYQ=
X-Google-Smtp-Source: ADFU+vtVdu1YN3hNeCrYWQlUUlIqjk8D7B6/l7Spif6N/pCrxESi8I7Oc/nQeeoW9wd4RanSsJO56Q==
X-Received: by 2002:a02:c8cd:: with SMTP id q13mr20947115jao.66.1584264624734;
        Sun, 15 Mar 2020 02:30:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d204:: with SMTP id y4ls220873ily.5.gmail; Sun, 15 Mar
 2020 02:30:24 -0700 (PDT)
X-Received: by 2002:a92:8d0e:: with SMTP id s14mr21476451ild.117.1584264624188;
        Sun, 15 Mar 2020 02:30:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584264624; cv=none;
        d=google.com; s=arc-20160816;
        b=HjRCtyDGr5PKtJlIfHOS5EQIjTj3+M5JYkVPIvKr6OBFR+jqwObGzqCg0/DBHLvFBz
         Uel4uwVdVAyCkYqmrDotjjQAf32wO++mKx7dbt32z0Sbu9uJiEF75KXQKEa5UTlI59T9
         Oi4MdMdKEPrfmIlLgLJdD02I+GqY17wtVWpm/ZyhdB4gJsyn+aj3plOdkrzlsFqn7Wa0
         Hy/jOWoRTjb4QQWiAV26tsas9qoJcw9WHi1ky5uxlCjyMgYZzsqVPZrx7+FNAD/Q8pFj
         haRIJzcX1s8m4qB88huKmAjVG7xYb2otJ1iL57ZobhM6XvTkPRqtK9uc9dK/SLWVdWMt
         K//A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rNFz5DYWHgexHyJt056VriaIF9paJuhnZXXnkdcdqbg=;
        b=JA+5uTihvezAKWGv60h+A/9AdHsZxzs3S2MmDgms5plVI2oDLZhB5SGeYsVaMyE9za
         g7d7ia6G7StwQ2scxMqYm4h1apGCmxt1GGXRZ0X9yD3Kk0VRUoR0c0xamJkk6BCrwmuD
         J6otfEo7hXyxdcI5N/tH7cIHNSI3/NnfpWfbvq/2Vl9ytRjO4tB7INj0WCXmWRsv6h5T
         mUpRZSGSABRfbD3VyftS70tJvYDZHjXoO+kI157v171nPqMQRTVaIT5a4DMv9HMwewQr
         62U2e+LORbuPFbnkvIOzbWXLr4GEU8mbkk6Yti50qjNMsaEx5ZhkGfqd4tdfG5N4AfHj
         0oGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=COrUznnc;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id v13si632997ilg.4.2020.03.15.02.30.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2020 02:30:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-460-1ULkcQfGN8SlH9l2u-WY7w-1; Sun, 15 Mar 2020 05:30:21 -0400
X-MC-Unique: 1ULkcQfGN8SlH9l2u-WY7w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9F24B107ACC7;
	Sun, 15 Mar 2020 09:30:19 +0000 (UTC)
Received: from krava (ovpn-204-71.brq.redhat.com [10.40.204.71])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7D467907F7;
	Sun, 15 Mar 2020 09:30:16 +0000 (UTC)
Date: Sun, 15 Mar 2020 10:30:13 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH] perf mem2node: avoid double free related to realloc
Message-ID: <20200315093013.GC492969@krava>
References: <20200314042826.166953-1-irogers@google.com>
 <20200314142332.GB492969@krava>
 <CAP-5=fXZJidxHYeCqHcNPBArMe_aYwP0+u2dxiTD+V1fammK_Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAP-5=fXZJidxHYeCqHcNPBArMe_aYwP0+u2dxiTD+V1fammK_Q@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=COrUznnc;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Sat, Mar 14, 2020 at 09:49:37AM -0700, Ian Rogers wrote:
> On Sat, Mar 14, 2020 at 7:23 AM Jiri Olsa <jolsa@redhat.com> wrote:
> >
> > On Fri, Mar 13, 2020 at 09:28:26PM -0700, Ian Rogers wrote:
> > > Realloc of size zero is a free not an error, avoid this causing a double
> > > free. Caught by clang's address sanitizer:
> > >
> > > ==2634==ERROR: AddressSanitizer: attempting double-free on 0x6020000015f0 in thread T0:
> > >     #0 0x5649659297fd in free llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:123:3
> > >     #1 0x5649659e9251 in __zfree tools/lib/zalloc.c:13:2
> > >     #2 0x564965c0f92c in mem2node__exit tools/perf/util/mem2node.c:114:2
> > >     #3 0x564965a08b4c in perf_c2c__report tools/perf/builtin-c2c.c:2867:2
> > >     #4 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
> > >     #5 0x564965944348 in run_builtin tools/perf/perf.c:312:11
> > >     #6 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
> > >     #7 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
> > >     #8 0x564965942e41 in main tools/perf/perf.c:538:3
> > >
> > > 0x6020000015f0 is located 0 bytes inside of 1-byte region [0x6020000015f0,0x6020000015f1)
> > > freed by thread T0 here:
> > >     #0 0x564965929da3 in realloc third_party/llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:164:3
> > >     #1 0x564965c0f55e in mem2node__init tools/perf/util/mem2node.c:97:16
> > >     #2 0x564965a08956 in perf_c2c__report tools/perf/builtin-c2c.c:2803:8
> > >     #3 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
> > >     #4 0x564965944348 in run_builtin tools/perf/perf.c:312:11
> > >     #5 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
> > >     #6 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
> > >     #7 0x564965942e41 in main tools/perf/perf.c:538:3
> > >
> > > previously allocated by thread T0 here:
> > >     #0 0x564965929c42 in calloc third_party/llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:154:3
> > >     #1 0x5649659e9220 in zalloc tools/lib/zalloc.c:8:9
> > >     #2 0x564965c0f32d in mem2node__init tools/perf/util/mem2node.c:61:12
> > >     #3 0x564965a08956 in perf_c2c__report tools/perf/builtin-c2c.c:2803:8
> > >     #4 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
> > >     #5 0x564965944348 in run_builtin tools/perf/perf.c:312:11
> > >     #6 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
> > >     #7 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
> > >     #8 0x564965942e41 in main tools/perf/perf.c:538:3
> > >
> > > Signed-off-by: Ian Rogers <irogers@google.com>
> > > ---
> > >  tools/perf/util/mem2node.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/tools/perf/util/mem2node.c b/tools/perf/util/mem2node.c
> > > index 797d86a1ab09..7f97aa69eb65 100644
> > > --- a/tools/perf/util/mem2node.c
> > > +++ b/tools/perf/util/mem2node.c
> > > @@ -95,7 +95,7 @@ int mem2node__init(struct mem2node *map, struct perf_env *env)
> > >
> > >       /* Cut unused entries, due to merging. */
> > >       tmp_entries = realloc(entries, sizeof(*entries) * j);
> > > -     if (tmp_entries)
> > > +     if (j == 0 || tmp_entries)
> >
> > nice catch.. I wonder if we should fail in here, or at least
> > warn that there're no entris.. which is really strange ;-)
> 
> The workload was the stream benchmark with perf c2c, but stream isn't
> particularly long running. Not sure how j became 0, there's 2
> possibilities in the code. The worry with a warning is the spam, so I
> just wanted to make the code correct.

I was wondering if we should fail completely,
but we might break some c2c expected behaviour

how about just WARN_ONCE pn j == 0, and then
the lookup will fail already with:

        if (WARN_ONCE(node < 0, "WARNING: failed to find node\n"))
                return;

just get enough hints ;-)

jirka

> 
> Thanks,
> Ian
> 
> > thanks,
> > jirka
> >
> > >               entries = tmp_entries;
> > >
> > >       for (i = 0; i < j; i++) {
> > > --
> > > 2.25.1.481.gfbce0eb801-goog
> > >
> >
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200315093013.GC492969%40krava.
