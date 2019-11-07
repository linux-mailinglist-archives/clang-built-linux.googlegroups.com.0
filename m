Return-Path: <clang-built-linux+bncBDEPBSN75UNRBV5SSLXAKGQE2OLXHGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F6AF3B58
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 23:23:22 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id b26sf4435531qtr.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 14:23:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573165399; cv=pass;
        d=google.com; s=arc-20160816;
        b=DJU/BGX3dVOhxVj06OuLY5YaQeKCy99cUu5OC0eu0AvU0fzAeryTb6m06tkq5MybpS
         9jr6KAR3P8cExG6AR7Rl9fol3Tgmc/EkErDcX02+lDfnfopaYcZrZL8v0uJtyCSwLhQk
         lkhLoM3N+Lbd8BfS2LexcZz+rKgcjzWHXWuoSc2nZs2Jt8SeW0vVzL26W12PJgorlEyb
         1gn4fS9PlwcpkSPQDmLr+sRZM/lC9uj1+4t7EUKqdVH5uOEzZtSinBYEokgzJs5KuibO
         OcqsZ3hNnZ06MxWvpeEhFB4JPyJ890m4CDi3QJWI53Ut4RDIU3dwIuQIj7ZZS0vyM3Zc
         psYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature:dkim-signature;
        bh=svT5TvmQyzSB9DAHhL5EJNkAX5YQkOA9W8f6MA82DcU=;
        b=k+cxZLQ49oXkYqE/ODeMl+9kO5MnggRHqCcdavgiNWs20VMBz+1T3JCt3lrfmq1V/N
         lrpcGkcbEZ+HEEtfiOpTSg+QUC+BnUhudRksVpE8uAtPppAQfcwCBGKI9UEO11q/Sgh6
         QLwCHZOy+GA5LaeIpIGEU/X6Ladkbc53kgDuPMJ18T6WQTd+60aWtU96u2OP2qoZ4FRN
         uDYtfGfL9XyndJoWP11i4p7hF2FLJfejXkhKEzFgiyBjQLqxHzbJ4kyC/8gzdOkNYrv8
         U/s9+l2LSKd94IjQ1xfoACPoUErMNrZw/1jxEs6BNme1VQ5qcTapjgDEsJqVZCera/7y
         pz6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HPM3WJ2i;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=svT5TvmQyzSB9DAHhL5EJNkAX5YQkOA9W8f6MA82DcU=;
        b=G1sgNzICOPXG626GPCnbXc7iDkjraRL1V7nbN76MLySyyVFDlS4CZ/OTxgK6lZxof+
         Ku1nfT4jgUDi1zrRqZ3uAJ0ulsRDzhlWS1oWj0MYdg5x+3zOeSgyhj8wXTCTQr9bIQSu
         AOagh7cClOG/rtZxG8JcqY5pwPz0WExPY/6iYylaNcUong86kjBgj1l9a0bpN9G4oOuA
         fMyDPsmA/Wj1jwpk7QsawmuVomSKOb883Fr/+S0SH2gkQ3I/FhjwS2pthWgt2nV5nplu
         Srtwzoav6/065Qa7xLJnCiYzEYBhKEUecGpbwEBuq9lIydeMpZn3ogqxOP1X5zP5Lc5P
         YLww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=svT5TvmQyzSB9DAHhL5EJNkAX5YQkOA9W8f6MA82DcU=;
        b=jUBHFkdnTAra5EB5CXZzTaca+Ddtlh9BjCt8Vkc5a2Rq7UUPOowChdRYLNYZlBKTHp
         sDjB5yVCfHE3gEJrKe5wTwW1wtKAJZ1eXe6N40pZqpEXf6BdYuXI/Dw7QxGR5TLFJbF4
         cdO/6WC0vMhsiVmzv03RBEEc8WoRuOg4h3XjIdEXUT7ASiDxDj0mBZLGYqQAbMMLlIGn
         LP6diM3uKV9YnEVhs37aM/2wEuJVgNVbAmUSeXSr9D+3S/XYcCQqJtYF+xqzl2nU4C0c
         FoVfotviCWtBpjlb55tZ3mfWA1YV9HjOfodcFSpI63klTYWrEEErN2IDRwMyY/PsXUod
         a0sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=svT5TvmQyzSB9DAHhL5EJNkAX5YQkOA9W8f6MA82DcU=;
        b=ZvORFunBz9WM8zBt1lRI4gsdfYjuxtlJwO0gAGVrL9JKuiyXaa7PmLrvG8qYHgcOYK
         pzH2mI08jqsfJALyLLsXStNpvNAdL6I9yBWLmpE6XXdT8Ddzm3efAIiHb5vUqS12eUae
         sV/Ik6S09jGjPWOxc/by7znCD4fKg1YO83WC/fyvE7wxFquWghLbHyvmFRAxzF8MTk+Z
         jiuymbKLlMcVHicjfYmy9YlwNsoa3qLjI6t/2OY60PwGAz1WBW27xZgEijdi9r/iqiOe
         xqCmZYKrdvj40ZhKyZadc1NiQRg4vcM5AT0Gj3sh1GnisfCr9NuPuxVZPS5XgeBO8p19
         ghLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVNrmsp2xnnoOPcgbecWPt+5dnKjW2iXy8qnzxDu+PIuTWT37qq
	PeWVuQRzLqnctwOZ/0L4o/U=
X-Google-Smtp-Source: APXvYqyrS6KtpWC8vmgjLYRwmblMiX30SKWJ4Mx+yJBv5zz0jgfxe8rBfAFLEdNiAjqo0o2/ubFFpQ==
X-Received: by 2002:ac8:7950:: with SMTP id r16mr6620969qtt.142.1573165399693;
        Thu, 07 Nov 2019 14:23:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:13c7:: with SMTP id g7ls2508396qkl.11.gmail; Thu,
 07 Nov 2019 14:23:19 -0800 (PST)
X-Received: by 2002:a37:4146:: with SMTP id o67mr5515486qka.232.1573165399294;
        Thu, 07 Nov 2019 14:23:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573165399; cv=none;
        d=google.com; s=arc-20160816;
        b=SlxzODllcnk8rEjQ51J0+XrRYczIHErefzlrKStWHTB/LoJvfv8ViBI0xGatCfWX7Z
         1y/a3JGykwcYeq+KgWSTPtiP/1op4U4O9UYJjfHgXJ+TWN0fpjZKWhwF27Kb75e10jl+
         lVuSOdm6f8+T434LLfR4CB6x0ZggmU7kzhO6f2YiCNMM2UjKgRJqUV3O1gxcCj7FZ+qV
         kkKjGDFB5d3F85+Ir3WJINxT0Gx88Mtrz4BV09ZAPTzYJUD/CLUdruzuCLr6GubapbKk
         9wFgcrSTKXPVrIA1zV5VKlz/KPxJVz9D9B7pyIgHgk5oHOy5VmARkLv0OmBzBF72faaT
         Bz3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=yew1kGqLdARlc4F/0Ldfg3TeatXOLJ2yXMHgCqKdarE=;
        b=Pazvcn4ZcV+S2UPnkAaWyt65Mt3BifsUO/LVa3jSahvHplc5HPrbZmafdPLIwuGC+J
         zWffKNhVLa+CwTrABpjybYaXB7o8kZdBJPb150yhERyF+A3ngbCdaFqePK+PJgea28gP
         Sl+YoPB4KGaHnCbJqhbMk7uYTUa7X1AHl6k3lJSxkZ+Hp+wg1qpwDJe5KEqxqN8GoGcc
         GZ1NBL5b7dT1W5+36J4UlWpHfGrzNMowf569K+HTSfPBaKY75s7uM87xLIk83gzl0gOh
         bD0sdk9VrA9y3eNvjfL3jWRfgo8+CxkRlfuyih5HmYwPhdMWkpMa1bNzo/sIr90cEhQO
         xnJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HPM3WJ2i;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com. [2607:f8b0:4864:20::f41])
        by gmr-mx.google.com with ESMTPS id w140si242395qka.6.2019.11.07.14.23.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2019 14:23:19 -0800 (PST)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) client-ip=2607:f8b0:4864:20::f41;
Received: by mail-qv1-xf41.google.com with SMTP id g12so1462072qvy.12
        for <clang-built-linux@googlegroups.com>; Thu, 07 Nov 2019 14:23:19 -0800 (PST)
X-Received: by 2002:a0c:c78b:: with SMTP id k11mr6109208qvj.47.1573165398694;
        Thu, 07 Nov 2019 14:23:18 -0800 (PST)
Received: from quaco.ghostprotocols.net ([179.97.35.50])
        by smtp.gmail.com with ESMTPSA id x194sm1522035qkb.66.2019.11.07.14.23.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Nov 2019 14:23:17 -0800 (PST)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id B1800411B3; Thu,  7 Nov 2019 19:23:15 -0300 (-03)
Date: Thu, 7 Nov 2019 19:23:15 -0300
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
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
Subject: Re: [PATCH v6 00/10] Improvements to memory usage by parse events
Message-ID: <20191107222315.GA7261@kernel.org>
References: <20191030223448.12930-1-irogers@google.com>
 <20191107221428.168286-1-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191107221428.168286-1-irogers@google.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HPM3WJ2i;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::f41
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

Em Thu, Nov 07, 2019 at 02:14:18PM -0800, Ian Rogers escreveu:
> The parse events parser leaks memory for certain expressions as well
> as allowing a char* to reference stack, heap or .rodata. This series
> of patches improves the hygeine and adds free-ing operations to
> reclaim memory in the parser in error and non-error situations.
> 
> The series of patches was generated with LLVM's address sanitizer and
> libFuzzer:
> https://llvm.org/docs/LibFuzzer.html
> called on the parse_events function with randomly generated input. With
> the patches no leaks or memory corruption issues were present.
> 
> The v6 patches address a C90 compilation issue.

Please take a look at what is in my perf/core branch, to see what is
left, if something needs fixing, please send a patch on top of that,

Thanks,

- Arnaldo
 
> The v5 patches add initial error print to the set, as requested by
> Jiri Olsa. They also fix additional 2 missed frees in the patch
> 'before yyabort-ing free components' and remove a redundant new_str
> variable from the patch 'add parse events handle error' as spotted by
> Stephane Eranian.
> 
> The v4 patches address review comments from Jiri Olsa, turning a long
> error message into a single warning, fixing the data type in a list
> iterator and reordering patches.
> 
> The v3 patches address review comments from Jiri Olsa improving commit
> messages, handling ENOMEM errors from strdup better, and removing a
> printed warning if an invalid event is passed.
> 
> The v2 patches are preferable to an earlier proposed patch:
>    perf tools: avoid reading out of scope array
> 
> Ian Rogers (10):
>   perf tools: add parse events handle error
>   perf tools: move ALLOC_LIST into a function
>   perf tools: avoid a malloc for array events
>   perf tools: splice events onto evlist even on error
>   perf tools: ensure config and str in terms are unique
>   perf tools: add destructors for parse event terms
>   perf tools: before yyabort-ing free components
>   perf tools: if pmu configuration fails free terms
>   perf tools: add a deep delete for parse event terms
>   perf tools: report initial event parsing error
> 
>  tools/perf/arch/powerpc/util/kvm-stat.c |   9 +-
>  tools/perf/builtin-stat.c               |   2 +
>  tools/perf/builtin-trace.c              |  16 +-
>  tools/perf/tests/parse-events.c         |   3 +-
>  tools/perf/util/metricgroup.c           |   2 +-
>  tools/perf/util/parse-events.c          | 239 +++++++++++----
>  tools/perf/util/parse-events.h          |   7 +
>  tools/perf/util/parse-events.y          | 390 +++++++++++++++++-------
>  tools/perf/util/pmu.c                   |  32 +-
>  9 files changed, 511 insertions(+), 189 deletions(-)
> 
> -- 
> 2.24.0.432.g9d3f5f5b63-goog

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107222315.GA7261%40kernel.org.
