Return-Path: <clang-built-linux+bncBDPPFIEASMFBBLMWWTZQKGQERN4FT6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E65B185609
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Mar 2020 17:49:51 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id ev8sf3289490qvb.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Mar 2020 09:49:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584204590; cv=pass;
        d=google.com; s=arc-20160816;
        b=CS9nc8D0qpDl4T5c5OV9vKkzaFS8uYQQ1YgnMEllES1yMFkjLgZdbcDtNKrkI0bfDm
         0tXUDcFcHBp2WDD2NGyZSvgxlBnjBCIaFj/0aLXpVkRYRX/VycNhlOpuzf/dpW1sZ0LW
         Q0HrSB/s8AteIuvCGhC6m0jd0df2HEbkoXRvb6Ol1RFhn9JpnHtIB8qhRAt6/7B2y1Pq
         4wCpvn/NubGQzpjcXdegzj3nVltwrtMOeqsjcRgrLLIv3R/xSTy68y8uToiO5t5U4l/U
         3mNkQqeuXiUrYcwSybgKz1/4AxOAiz4XerfrJEpCELvzGnyf2wEMHi2AIL1yZCjR842w
         +nvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=XQtOFIn5VbqKum2eCXI+Qulj4p4Igk7Rpol/XtkgMfU=;
        b=WulizqAFYK3Wtqivveevl1QGP5LPc9wwzGm9Mk0DoRKS4oC3b6MPsh5dYxXOEnQAYj
         lcnWvDqHaRx0SUu3wvm0cuSZwsZ1kxvqVk1XzDQILMQZO4gCLbkprLC5a2YpIB6jIyQj
         FQO1LDAMwBfC9YaSKJbp6yI5CQl9W4YTG2MyLTUD8Lvx2nosrOfS238sx/8KH2Colk3t
         EIIAsSj+qLLYhHQxupmXOjWd+4bhDnReek7n52uNMOD6FnMeAF0a9gmtMw9PnjgncKHS
         RnKrIjn3bHcCHpISIKYJYyCjRPe1xwMPq8DtytRavKAKQKsT3/2XkoKEKgawz4SEKa6j
         455Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QsE47yVs;
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XQtOFIn5VbqKum2eCXI+Qulj4p4Igk7Rpol/XtkgMfU=;
        b=Le34HY08u1sdRn/S/gY7ZxA+l/IjQTPXzKlNgadKI4qZEWK1qX/xwjz85oyMK8kZAO
         u99jqxO84eUiwvFfGTsh2qKw8Gp8kTRVkrCU7TBMCbciyLdNCVU8peePgzWqrY9XLOfg
         9G1b0UBcUZNokBLx9vrJGfcg6UZ7W9oMhugYsZCc8g/UK1Nnt/W4ldQAPvX/IQkUlQob
         fZ3jGoXjgFqKbo87jnitNcI9P0fFowHFtSzY5Oz+Mw2BgTsCoY4DljXMDML9jKu75Rvv
         G/c4RlpiHLskC6z6nlgOcB/NJ0bxMuU3cX9ApHyuVFXmn0Gpq0UTaMC2uP7PzwZKjGyQ
         JGZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XQtOFIn5VbqKum2eCXI+Qulj4p4Igk7Rpol/XtkgMfU=;
        b=iuNkAdJKBX6/3r0dSv3KCVe/psx5eqNi+o9Sox1+vmR6AMnIRmpn+6kyxwgclDOtpJ
         SKYgdJGLRKPUd6vEtt8SYzbBx1wfWep0EZjOiiv4EqpUxLH1bNBWK0BnKlJZ5gwt/ola
         APqgSe1YreLtGr5Gw06+8G047ER2ykWVOF5/iZefc1U2ayzLFo7dNFp87DzqqYjzu2kf
         TAMsvBqRBGgiHxS3inBG21gpBKUy5kxgPjVRqzlvt5rM4CCGF6vlK7wNB2gZiur8cUCC
         uIqBQwQljg+5NdDks1g9qKbGE7CjTK+EBocJVN6edYAnDDhqwhSpWQI2awIWmba7AkhB
         We1A==
X-Gm-Message-State: ANhLgQ1cG6h2xPYTTaTAcAkYqgyGYxDHTXhnlLIoOLgDDNA2nYA7xXTb
	VrUxTjlH1K62+xu31ZwsWag=
X-Google-Smtp-Source: ADFU+vtny8iR7Cp71ub+X+DVDWsrkBWF+PduYXStHgmm1Q5HBnm081kQXkhSpHtmG7WyOQjT4g95Gg==
X-Received: by 2002:a37:6215:: with SMTP id w21mr19046555qkb.149.1584204590072;
        Sat, 14 Mar 2020 09:49:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b7c4:: with SMTP id h187ls4045876qkf.1.gmail; Sat, 14
 Mar 2020 09:49:49 -0700 (PDT)
X-Received: by 2002:a37:4b0c:: with SMTP id y12mr19203951qka.268.1584204589702;
        Sat, 14 Mar 2020 09:49:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584204589; cv=none;
        d=google.com; s=arc-20160816;
        b=OLLvswxrLhfIPkeh0U2N4ZkB3gqN0DEUZ6iGOUr7GA1E+h68YaSahUnQwwfSLW5VDv
         NxS5mk8J2j12KmtgQG0gAOSy0RL5q1NvVfJjIvVuRTFqryb+8G7Kj1sA8OgAT8TTJ6qp
         bfziaOC32ZKgZLOKflB6cDGmAT3oTkhWqscp6+eGTmf0MfqkOzqWRqHF6U0aRNF32D/t
         z8MNU7odEpsPwqIK8NiEaPsN/LRcaYkdrBybscLNxQRwB+/4+4MOLMrY0mmQtuD0eYa2
         NkeVlufZZGOjRdlj+RHhAVOCpCaPMBRWsKR9Qb4cQfwnUGyI4eeMb/pnJfDJOGIBWOf3
         aqVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ecMdX/kkcgeI1bF1MRkVwY4khKwFUay4TKuNBxqnWmk=;
        b=OPMfF71p+OPH0LkreTO86mCdiYRQcBHKM3poDk1LEL6bRLkbneHOlrypUNnXVlmeHC
         hNvfyEIGv7AIDpBhH7LoAmkhl5nkJxp9s4SVAg4oSveTs30IWqBd3rJywMVG4E3A+vbJ
         mUZR6iBjKKlu6S9oVEeObZLLaLyqB0Kt9Mj8sDMTeG+CDYX5Tcj85Qb8boOJZURrLv0h
         DJh7HAG8a2dz/CA58ibmlDEoqAtNF2Bc5Zo+lE1l2rK5outWpmhTgZzEZioHJ8vByp7G
         mNw8NDgKZiZRYTdpj9NJuXP7RqBj1pKECKPgQKrzsMYgN9dMi8OqxKhSWNaADAfFzp1r
         MCMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QsE47yVs;
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id m18si718559qtn.5.2020.03.14.09.49.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 09:49:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id s11so7179937qks.8
        for <clang-built-linux@googlegroups.com>; Sat, 14 Mar 2020 09:49:49 -0700 (PDT)
X-Received: by 2002:a25:908a:: with SMTP id t10mr12174650ybl.177.1584204589078;
 Sat, 14 Mar 2020 09:49:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200314042826.166953-1-irogers@google.com> <20200314142332.GB492969@krava>
In-Reply-To: <20200314142332.GB492969@krava>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 14 Mar 2020 09:49:37 -0700
Message-ID: <CAP-5=fXZJidxHYeCqHcNPBArMe_aYwP0+u2dxiTD+V1fammK_Q@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=QsE47yVs;       spf=pass
 (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::742
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

On Sat, Mar 14, 2020 at 7:23 AM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Fri, Mar 13, 2020 at 09:28:26PM -0700, Ian Rogers wrote:
> > Realloc of size zero is a free not an error, avoid this causing a double
> > free. Caught by clang's address sanitizer:
> >
> > ==2634==ERROR: AddressSanitizer: attempting double-free on 0x6020000015f0 in thread T0:
> >     #0 0x5649659297fd in free llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:123:3
> >     #1 0x5649659e9251 in __zfree tools/lib/zalloc.c:13:2
> >     #2 0x564965c0f92c in mem2node__exit tools/perf/util/mem2node.c:114:2
> >     #3 0x564965a08b4c in perf_c2c__report tools/perf/builtin-c2c.c:2867:2
> >     #4 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
> >     #5 0x564965944348 in run_builtin tools/perf/perf.c:312:11
> >     #6 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
> >     #7 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
> >     #8 0x564965942e41 in main tools/perf/perf.c:538:3
> >
> > 0x6020000015f0 is located 0 bytes inside of 1-byte region [0x6020000015f0,0x6020000015f1)
> > freed by thread T0 here:
> >     #0 0x564965929da3 in realloc third_party/llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:164:3
> >     #1 0x564965c0f55e in mem2node__init tools/perf/util/mem2node.c:97:16
> >     #2 0x564965a08956 in perf_c2c__report tools/perf/builtin-c2c.c:2803:8
> >     #3 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
> >     #4 0x564965944348 in run_builtin tools/perf/perf.c:312:11
> >     #5 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
> >     #6 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
> >     #7 0x564965942e41 in main tools/perf/perf.c:538:3
> >
> > previously allocated by thread T0 here:
> >     #0 0x564965929c42 in calloc third_party/llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:154:3
> >     #1 0x5649659e9220 in zalloc tools/lib/zalloc.c:8:9
> >     #2 0x564965c0f32d in mem2node__init tools/perf/util/mem2node.c:61:12
> >     #3 0x564965a08956 in perf_c2c__report tools/perf/builtin-c2c.c:2803:8
> >     #4 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
> >     #5 0x564965944348 in run_builtin tools/perf/perf.c:312:11
> >     #6 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
> >     #7 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
> >     #8 0x564965942e41 in main tools/perf/perf.c:538:3
> >
> > Signed-off-by: Ian Rogers <irogers@google.com>
> > ---
> >  tools/perf/util/mem2node.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/tools/perf/util/mem2node.c b/tools/perf/util/mem2node.c
> > index 797d86a1ab09..7f97aa69eb65 100644
> > --- a/tools/perf/util/mem2node.c
> > +++ b/tools/perf/util/mem2node.c
> > @@ -95,7 +95,7 @@ int mem2node__init(struct mem2node *map, struct perf_env *env)
> >
> >       /* Cut unused entries, due to merging. */
> >       tmp_entries = realloc(entries, sizeof(*entries) * j);
> > -     if (tmp_entries)
> > +     if (j == 0 || tmp_entries)
>
> nice catch.. I wonder if we should fail in here, or at least
> warn that there're no entris.. which is really strange ;-)

The workload was the stream benchmark with perf c2c, but stream isn't
particularly long running. Not sure how j became 0, there's 2
possibilities in the code. The worry with a warning is the spam, so I
just wanted to make the code correct.

Thanks,
Ian

> thanks,
> jirka
>
> >               entries = tmp_entries;
> >
> >       for (i = 0; i < j; i++) {
> > --
> > 2.25.1.481.gfbce0eb801-goog
> >
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfXZJidxHYeCqHcNPBArMe_aYwP0%2Bu2dxiTD%2BV1fammK_Q%40mail.gmail.com.
