Return-Path: <clang-built-linux+bncBDPPFIEASMFBB47CS3XAKGQE75HB5FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF84F5364
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Nov 2019 19:18:27 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id g17sf3741244wru.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Nov 2019 10:18:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573237107; cv=pass;
        d=google.com; s=arc-20160816;
        b=zfyrSYb+cu4X5Tfi1T/iVt3aFfZCZ2yg3HAyKhYJ88hnhjK19TGMZX8qqMlkl6Hip4
         QxP2/87QcwVEnyQ1AKBrhzkCtQ2edSbTDlzpI3/gbDo/2oroWyvbUaunnUnY47PCe8/R
         l+brvxpGjXkKWk9JmicfD42nm06fZXA08dN0ukrvGYKdLudDaRNIYeJG9HAYPz9Krgnt
         rFjcuOMFSOkY09iUZbj95eIAimXZmsHKk40otmZtdPQ+j2chQF3+vy7RTbD/uK2DAzeP
         81oSGgSK0wQxcMuw6orSxPWZ2UgVeek9+0fYTokBwrO3v9q3iYLhEf9J8qrhfLf1zE5r
         /oyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fTR7ne7ZyGGLQ5blTtyVyMPD+KyedJ066U0uhuytxFM=;
        b=mH3bCutC9hQTBY2C0Fbup90oPArmT63cdj5TAHpdHuDFZkOXwGc+Fa0nesvLa0zkpA
         TwhXfeVtWMQ1oNoEyRGI4iKjOVB9p3/WksXwFAga28ZCJoUbrznKUh7y/9j4PM8VIFtQ
         lLber8XimSrv7Sr6rTeXU01H66TpQ9sCsFNhU9zrGOvMc+wP8XVEa2IiyhdTvrFCTCis
         aMrW5KWpoOwxfkupQvjITITFQ6zNWrTdIzr4EOBMpDyi+ElsnI19BWXcRP6H5nQGLftz
         HIarpVJAzwOCs4kuW1ujjoSRiwA8V/ix9AukQjxQTq7+saApN0hsoj7xFDBQYbLwXAC8
         ZyoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=odPKyS18;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fTR7ne7ZyGGLQ5blTtyVyMPD+KyedJ066U0uhuytxFM=;
        b=A6DEvg2OScEbMfVEN3IJfa3GvntRdYBuyfTWkQ47kz49rCux2BtUmUOw05tekEG6Li
         flvleL3VwIUGYSVAwGQcFebqnqk2Yh/MDjSMMvAJsz5eNlY3mMM1grIGiaWkRR7GNh7c
         bRtYSj1YI5sVdllnac6ZHjfxD6DxDvVqrtWQnk4MRc2rIGmaKG6r7e7viNzX9YjgnfDF
         WuD5B3+aNnx8OY72g9MfN84/SbsVhGy6cqUULARuvbmoSY0hLMXTWTEvVQ/+dMOnAPcQ
         M9uRBHBCtePpvlNV0RVo1m2jxn1WGsikt9iweFSu0OFdC2vIDgVjfNFoZDdwPxXWAysQ
         XCBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fTR7ne7ZyGGLQ5blTtyVyMPD+KyedJ066U0uhuytxFM=;
        b=rV3Pe33tgdHc8WxbgSnA2AjFN0KBb7Izee9u/AaSi5sK6kd4nT52cnuSqdgZnbHzu3
         xoO3tN4cYtKWewT+X2RkrPw8JsCb+jlrcL2T8TyOlbjJyW5d4FuGYfR1WKu822bV6y9V
         EuTDC+hAhK76Lj9LRtlVt1bvIB9+vmt99lkJMfpfQnXHdB1hYYc8ne2igcuPnzkIPMht
         hSXky//lolmQGZCDP2BBDG9RYqT/HMiVqdEe+fsAYYdGPbih5MKbInk5pw909NSklVoK
         B+rDe4cJQrtS9CKiojn9+eAOvF4stEUe7FP1+rpmWLJde7fq7kwTswe/f0zK61dke4SQ
         1g6g==
X-Gm-Message-State: APjAAAXLmO18fSmFWHhT7elzHqOBU/UUTX0EUhhNnGyWkQAK5r7E3cxp
	YesCFR+bdBacwqCej17KCIc=
X-Google-Smtp-Source: APXvYqzZtdJioZtPXBttE4IKpgKlqKHkF4Xl13td9TRIU5cg+l6wiG4wfbb5P5up28cOWQBZ4zXT0Q==
X-Received: by 2002:a1c:e40b:: with SMTP id b11mr9410546wmh.152.1573237107086;
        Fri, 08 Nov 2019 10:18:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5284:: with SMTP id c4ls7022208wrv.15.gmail; Fri, 08 Nov
 2019 10:18:26 -0800 (PST)
X-Received: by 2002:a5d:4645:: with SMTP id j5mr1308303wrs.329.1573237106587;
        Fri, 08 Nov 2019 10:18:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573237106; cv=none;
        d=google.com; s=arc-20160816;
        b=Sd7ZIja+R3QqHnBicDA79btffaWbPsRr1IFpR/5gCkRF/qm+xVZKLP9bmgnT0sQ64y
         YMFTTUA3hMiqa9mPiyW8hXX8pkYIuV9vx7wr+msGSCSVuvH4/CeBX3KE4Gng6MGEnoxX
         GzjeoVbj1Bsp2gZR41qmVoscUhMmrXHnNIsYU72SuxsIuzZtdMmz6iCj/ZG8ViZEdyPe
         6YhtmtNZrdztHtXLK/qe6G+1XvuaVqyS7ilH/GofmJJ4Te85FxoJVsU8jhapknVFWgL7
         3jdpUUUer7m3ZrAe/wq4DH9cdkNdiGjaXnnGfg5pOzuyGeSpVDL5ZBuGZv/XVLP9DFXa
         pVWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YFWgg2ppFdsSmvg1LO5Op3wVrU8obP4yfGKEavUKWnE=;
        b=eTRDxpm6w+Kf3zctde+kwHRolPB5qanmmhGclB/9zcKw/d4jsjrZ78M7nK2HUGXndf
         rnCx55JfmEAlGq1G5u1a0A6avxyn/GZPm4qMV+eewfw/uq7bhcjOkkHxSbWc4Gr7lWMa
         P4Xg89V1eacLkFrD94B4ju7iizfmAhjF0UpBGePe5pQqrCpQsrZ/HL65tRJ2bJPIw4/Q
         MwhCJb6xnCeypUVt8VGpwDglK6fipT3OK83oWkXA7BgseIOe6t+n3Rzxp55eZEffQq+J
         n7D+rb4NzbvEdXDDf9OVwPVK+kbJs2q80vVI+TKvl91QGqJQos77uvUHTN5BupuTLZt1
         OI2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=odPKyS18;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id q22si482619wme.2.2019.11.08.10.18.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Nov 2019 10:18:26 -0800 (PST)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id l17so6330180wmh.0
        for <clang-built-linux@googlegroups.com>; Fri, 08 Nov 2019 10:18:26 -0800 (PST)
X-Received: by 2002:a1c:a791:: with SMTP id q139mr9275963wme.155.1573237105658;
 Fri, 08 Nov 2019 10:18:25 -0800 (PST)
MIME-Version: 1.0
References: <20191030223448.12930-1-irogers@google.com> <20191107221428.168286-1-irogers@google.com>
 <20191107222315.GA7261@kernel.org>
In-Reply-To: <20191107222315.GA7261@kernel.org>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 8 Nov 2019 10:18:14 -0800
Message-ID: <CAP-5=fVNYbZoEmFzxMj850eorOtRJAouzvCFObxZRZT2G7YOCg@mail.gmail.com>
Subject: Re: [PATCH v6 00/10] Improvements to memory usage by parse events
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, Andi Kleen <ak@linux.intel.com>, Jin Yao <yao.jin@linux.intel.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, Kan Liang <kan.liang@linux.intel.com>, 
	John Garry <john.garry@huawei.com>, LKML <linux-kernel@vger.kernel.org>, 
	netdev@vger.kernel.org, bpf@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Stephane Eranian <eranian@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=odPKyS18;       spf=pass
 (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::341
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

On Thu, Nov 7, 2019 at 2:23 PM Arnaldo Carvalho de Melo
<arnaldo.melo@gmail.com> wrote:
>
> Em Thu, Nov 07, 2019 at 02:14:18PM -0800, Ian Rogers escreveu:
> > The parse events parser leaks memory for certain expressions as well
> > as allowing a char* to reference stack, heap or .rodata. This series
> > of patches improves the hygeine and adds free-ing operations to
> > reclaim memory in the parser in error and non-error situations.
> >
> > The series of patches was generated with LLVM's address sanitizer and
> > libFuzzer:
> > https://llvm.org/docs/LibFuzzer.html
> > called on the parse_events function with randomly generated input. With
> > the patches no leaks or memory corruption issues were present.
> >
> > The v6 patches address a C90 compilation issue.
>
> Please take a look at what is in my perf/core branch, to see what is
> left, if something needs fixing, please send a patch on top of that,

Thanks, just the last patch remaining. I resent it rebased on your
perf/core branch:
https://lkml.org/lkml/2019/11/8/1103
https://git.kernel.org/pub/scm/linux/kernel/git/acme/linux.git/log/?h=perf/core

Thanks,
Ian

> Thanks,
>
> - Arnaldo
>
> > The v5 patches add initial error print to the set, as requested by
> > Jiri Olsa. They also fix additional 2 missed frees in the patch
> > 'before yyabort-ing free components' and remove a redundant new_str
> > variable from the patch 'add parse events handle error' as spotted by
> > Stephane Eranian.
> >
> > The v4 patches address review comments from Jiri Olsa, turning a long
> > error message into a single warning, fixing the data type in a list
> > iterator and reordering patches.
> >
> > The v3 patches address review comments from Jiri Olsa improving commit
> > messages, handling ENOMEM errors from strdup better, and removing a
> > printed warning if an invalid event is passed.
> >
> > The v2 patches are preferable to an earlier proposed patch:
> >    perf tools: avoid reading out of scope array
> >
> > Ian Rogers (10):
> >   perf tools: add parse events handle error
> >   perf tools: move ALLOC_LIST into a function
> >   perf tools: avoid a malloc for array events
> >   perf tools: splice events onto evlist even on error
> >   perf tools: ensure config and str in terms are unique
> >   perf tools: add destructors for parse event terms
> >   perf tools: before yyabort-ing free components
> >   perf tools: if pmu configuration fails free terms
> >   perf tools: add a deep delete for parse event terms
> >   perf tools: report initial event parsing error
> >
> >  tools/perf/arch/powerpc/util/kvm-stat.c |   9 +-
> >  tools/perf/builtin-stat.c               |   2 +
> >  tools/perf/builtin-trace.c              |  16 +-
> >  tools/perf/tests/parse-events.c         |   3 +-
> >  tools/perf/util/metricgroup.c           |   2 +-
> >  tools/perf/util/parse-events.c          | 239 +++++++++++----
> >  tools/perf/util/parse-events.h          |   7 +
> >  tools/perf/util/parse-events.y          | 390 +++++++++++++++++-------
> >  tools/perf/util/pmu.c                   |  32 +-
> >  9 files changed, 511 insertions(+), 189 deletions(-)
> >
> > --
> > 2.24.0.432.g9d3f5f5b63-goog
>
> --
>
> - Arnaldo
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107222315.GA7261%40kernel.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfVNYbZoEmFzxMj850eorOtRJAouzvCFObxZRZT2G7YOCg%40mail.gmail.com.
