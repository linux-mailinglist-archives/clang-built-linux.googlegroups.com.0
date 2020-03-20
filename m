Return-Path: <clang-built-linux+bncBDPPFIEASMFBBN4V2TZQKGQENMNBLZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9420B18D6F3
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 19:26:00 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id j88sf5868046ilg.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 11:26:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584728759; cv=pass;
        d=google.com; s=arc-20160816;
        b=WQfOIvMiqigHcp0WoBlTvxm7Io0zw+3GRPSzBKVUZYEibSLgfA8/RYXC7CtgHz5uIe
         Q2ya/YxqzrBYdW/+sGlUhhCwznzeWH4XrN7u4BT90Rl5zv05r0QiARlVxfJ/RU2EffDM
         KGzx1ViJ0kbzSqhVCj+HqZ247xDFs33VerD6adn6ZMRwr1AFBJfGcx+NIV7wiw2TUL9b
         3pi9xbItEwXMSWXmuBq59TW++2WeFhUNoQ+Vql2iOwhyIS4qobTHhbRZW87dK8IUaXIJ
         qDnG+uoizvlbgtj6P/vC90VlL7+1LD05PtLTsmJmovNKJmZxsXl2vLEBKD97JQiKNY4X
         KXew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=N5tgwamOtTYk5625T+WmhlXTOmCpISV+3OAjGh0VFZs=;
        b=slUwrTTzJXz66bq7zxLZ6uvwmpjgiOz+QDh6WH2LAdnRgFfqFbrkbvZHMDeOY0ymxo
         lHWCiNIcN1UvANMXdF7HO7+xl+majFJjeU5Y/NiU3sygtUA/hGKU51+PrX7UgILNcYcG
         D0iCi2lfkZ4mQATA4AqqhbXTlgOn9VvE8FBrmGbF68VTVmJfErYS9/8GkgpDsj96zr7F
         mUa9KUElPztS3lm2gwWD1bAQenFdlHlry1vNNO7d+uBN8EIsIdOKQFj+5v8yYFk9HMG3
         ChV01Wa7nycZWtr04gt07pJB9KyJDIb1wJHR/KxP0NLQ+z3cw2YYIvciVF9n8azyMblU
         9qAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="eq9B/yMz";
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N5tgwamOtTYk5625T+WmhlXTOmCpISV+3OAjGh0VFZs=;
        b=Tpy3ihElyquEcj0kc/IXf8Fc0xC7jWlS3+s3pthEVLZ0aaInFe0YH9jOkaud0PC9ZB
         tfLlmJmlk4ndIJNp587fhvdNex+1WN5HUhnDAf+kX5lKTfOKAwa2GSrNoPGO3qaoXqJ/
         fwOzvZ9LlvvC4A4OxASLJY5QkRugfgLaCdQl+YVMQO+lf7W+DmrpjcTHxxpGugd6ELUz
         CZc8yaCjZg7sXbNeAT169cZsPGkZpws9oNP8iaZGlIs4m4tFmRAaODMlFvbUBNdHhDO1
         CpENR3tKCzheB4Gr6g03CMoMXazqYofz2BKpTSBVcGACiW9z5FWvhR/8JsUPxG/X18RA
         Mxog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N5tgwamOtTYk5625T+WmhlXTOmCpISV+3OAjGh0VFZs=;
        b=iZszgec+vWg00EyssJZgiFip1CzFwt2zxP1QdM9By1nL/ZvIOocuP+w8hoateHCMr6
         jcct1k4manX8zXMz72G7rD2YJjUY66AuMOS3ay5l+7WLRZlL8GbFx5DSOnjF8nwJTJhF
         sEaXPCdb46DjN4HHG0ZGK0ZeUcF7tGmJiyYdr/P9efqqfdN/amM8jyWDZ/nOWb8GEsJ0
         4Cc4L21OD8pX5dVDNYHXJoAYAzaelXiZVCvnd5rp2q20jpKj89NjgTbqBWdE6Gxra7BQ
         lxdsBZLYJCOjYJslJpDHRoPIBG46cXnsdvNqX3GTazpbEwnYhKR9l8CxxEVglxdfGvWU
         j0Jg==
X-Gm-Message-State: ANhLgQ1tXbxOUgd16SKXY2b92Bms1/I9NNJyglRskR5/KurEoh4HP8sl
	cN62HNYkSkkTlBU6qrsxsqc=
X-Google-Smtp-Source: ADFU+vtJ8eJiuMq7UCcDkdgaxKXN/fyT6s/BX3hfN1AiYfpjjJcjlnGIDg0pW0H7fvdLKrFjzhycuw==
X-Received: by 2002:a6b:fc1a:: with SMTP id r26mr8648446ioh.134.1584728759508;
        Fri, 20 Mar 2020 11:25:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6216:: with SMTP id f22ls1140024iog.6.gmail; Fri, 20 Mar
 2020 11:25:59 -0700 (PDT)
X-Received: by 2002:a5d:851a:: with SMTP id q26mr460288ion.25.1584728759203;
        Fri, 20 Mar 2020 11:25:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584728759; cv=none;
        d=google.com; s=arc-20160816;
        b=X/p2WEzEdToOcZ/L7I761iGeaKA95YePyYr7fN7Dkb159HPPbpo/5m0UOJJioWr23F
         REGFPT+0wBG+DwkP6wump7auXCuDwvwF5VHpI63A74BgD7zaOk20G0RBOlqpuYeJkGMX
         XVvY6PeW3gIwhurIHAsWgdk9Fs2vt0YwJW+kOEhtyW1oHVjRIUzzBGnsr9CxgN3z0X22
         IbD9Ea1Ps6ef2TLuvnNn36vYPPGC3qkgI/SPEAAXSx1JXyzAaIU5vTv86GYnInsxnnKn
         iWT71xDWL+TdpEg/Rio12hi+3dKc8rCQiuiftEDrGC77vC29zZcC1XpLXGgMD5orsWJv
         /w5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sAuZ5tw5lKEWRwYrS4t2K3YVE1qFf5yYC3/QDtY6LpA=;
        b=VlEJa8+QW9pAMideNGykoCRD7ZbtaVKNDqo+ccCHezaTfQJgCSBirh0+nOmwu4iNLA
         QF42g6PemhDq/jWIENWqIsORHzFBZBVGXIrEg9qnJZVZ46SpWR0Fk8ERTK6yo4cA9HaK
         ZgPnbN+wAjuJl87IgUcstS9xZcaPfBK3KJQ14AxOn5m2JU2iJwPNDXEb8m0pq8mVIZRF
         KtLlr7rq+jLpc2jd/WI8DXY4/drHecJVjabuQPI8EZ3eKDcf2szpz5OF0n2tQQIB6z/9
         rP7FQhW4tm0rBqfhGoExKXSFJJtaaYR7y2fHVJLZvaIEJ8CqtXF444PfBpOzbxpr47lQ
         xEAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="eq9B/yMz";
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com. [2607:f8b0:4864:20::b44])
        by gmr-mx.google.com with ESMTPS id t13si516283ilk.5.2020.03.20.11.25.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 11:25:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b44 as permitted sender) client-ip=2607:f8b0:4864:20::b44;
Received: by mail-yb1-xb44.google.com with SMTP id d186so2936805ybh.1
        for <clang-built-linux@googlegroups.com>; Fri, 20 Mar 2020 11:25:59 -0700 (PDT)
X-Received: by 2002:a25:c482:: with SMTP id u124mr14970611ybf.286.1584728758311;
 Fri, 20 Mar 2020 11:25:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200314042826.166953-1-irogers@google.com> <20200314142332.GB492969@krava>
 <CAP-5=fXZJidxHYeCqHcNPBArMe_aYwP0+u2dxiTD+V1fammK_Q@mail.gmail.com> <20200315093013.GC492969@krava>
In-Reply-To: <20200315093013.GC492969@krava>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Mar 2020 11:25:47 -0700
Message-ID: <CAP-5=fWmJdAC3GtwO3sf+725roY6T8s8GRvDJL4Rfqv+ByysGQ@mail.gmail.com>
Subject: Re: [PATCH] perf mem2node: avoid double free related to realloc
To: Jiri Olsa <jolsa@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Namhyung Kim <namhyung@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Stephane Eranian <eranian@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="eq9B/yMz";       spf=pass
 (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b44
 as permitted sender) smtp.mailfrom=irogers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ian Rogers <irogers@google.com>
Reply-To: Ian Rogers <irogers@google.com>
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

On Sun, Mar 15, 2020 at 2:30 AM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Sat, Mar 14, 2020 at 09:49:37AM -0700, Ian Rogers wrote:
> > On Sat, Mar 14, 2020 at 7:23 AM Jiri Olsa <jolsa@redhat.com> wrote:
> > >
> > > On Fri, Mar 13, 2020 at 09:28:26PM -0700, Ian Rogers wrote:
> > > > Realloc of size zero is a free not an error, avoid this causing a double
> > > > free. Caught by clang's address sanitizer:
> > > >
> > > > ==2634==ERROR: AddressSanitizer: attempting double-free on 0x6020000015f0 in thread T0:
> > > >     #0 0x5649659297fd in free llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:123:3
> > > >     #1 0x5649659e9251 in __zfree tools/lib/zalloc.c:13:2
> > > >     #2 0x564965c0f92c in mem2node__exit tools/perf/util/mem2node.c:114:2
> > > >     #3 0x564965a08b4c in perf_c2c__report tools/perf/builtin-c2c.c:2867:2
> > > >     #4 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
> > > >     #5 0x564965944348 in run_builtin tools/perf/perf.c:312:11
> > > >     #6 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
> > > >     #7 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
> > > >     #8 0x564965942e41 in main tools/perf/perf.c:538:3
> > > >
> > > > 0x6020000015f0 is located 0 bytes inside of 1-byte region [0x6020000015f0,0x6020000015f1)
> > > > freed by thread T0 here:
> > > >     #0 0x564965929da3 in realloc third_party/llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:164:3
> > > >     #1 0x564965c0f55e in mem2node__init tools/perf/util/mem2node.c:97:16
> > > >     #2 0x564965a08956 in perf_c2c__report tools/perf/builtin-c2c.c:2803:8
> > > >     #3 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
> > > >     #4 0x564965944348 in run_builtin tools/perf/perf.c:312:11
> > > >     #5 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
> > > >     #6 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
> > > >     #7 0x564965942e41 in main tools/perf/perf.c:538:3
> > > >
> > > > previously allocated by thread T0 here:
> > > >     #0 0x564965929c42 in calloc third_party/llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:154:3
> > > >     #1 0x5649659e9220 in zalloc tools/lib/zalloc.c:8:9
> > > >     #2 0x564965c0f32d in mem2node__init tools/perf/util/mem2node.c:61:12
> > > >     #3 0x564965a08956 in perf_c2c__report tools/perf/builtin-c2c.c:2803:8
> > > >     #4 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
> > > >     #5 0x564965944348 in run_builtin tools/perf/perf.c:312:11
> > > >     #6 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
> > > >     #7 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
> > > >     #8 0x564965942e41 in main tools/perf/perf.c:538:3
> > > >
> > > > Signed-off-by: Ian Rogers <irogers@google.com>
> > > > ---
> > > >  tools/perf/util/mem2node.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/tools/perf/util/mem2node.c b/tools/perf/util/mem2node.c
> > > > index 797d86a1ab09..7f97aa69eb65 100644
> > > > --- a/tools/perf/util/mem2node.c
> > > > +++ b/tools/perf/util/mem2node.c
> > > > @@ -95,7 +95,7 @@ int mem2node__init(struct mem2node *map, struct perf_env *env)
> > > >
> > > >       /* Cut unused entries, due to merging. */
> > > >       tmp_entries = realloc(entries, sizeof(*entries) * j);
> > > > -     if (tmp_entries)
> > > > +     if (j == 0 || tmp_entries)
> > >
> > > nice catch.. I wonder if we should fail in here, or at least
> > > warn that there're no entris.. which is really strange ;-)
> >
> > The workload was the stream benchmark with perf c2c, but stream isn't
> > particularly long running. Not sure how j became 0, there's 2
> > possibilities in the code. The worry with a warning is the spam, so I
> > just wanted to make the code correct.
>
> I was wondering if we should fail completely,
> but we might break some c2c expected behaviour
>
> how about just WARN_ONCE pn j == 0, and then
> the lookup will fail already with:
>
>         if (WARN_ONCE(node < 0, "WARNING: failed to find node\n"))
>                 return;
>
> just get enough hints ;-)

Sorry for the delay. I sent a v2 hopefully doing what you asked :-)
https://lkml.org/lkml/2020/3/20/858

Thanks,
Ian

> jirka
>
> >
> > Thanks,
> > Ian
> >
> > > thanks,
> > > jirka
> > >
> > > >               entries = tmp_entries;
> > > >
> > > >       for (i = 0; i < j; i++) {
> > > > --
> > > > 2.25.1.481.gfbce0eb801-goog
> > > >
> > >
> >
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfWmJdAC3GtwO3sf%2B725roY6T8s8GRvDJL4Rfqv%2BByysGQ%40mail.gmail.com.
