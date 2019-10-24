Return-Path: <clang-built-linux+bncBDPPFIEASMFBBCPLY7WQKGQEYKXHCVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 532FCE3BB9
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 21:03:38 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id p20sf9365695eda.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 12:03:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571943818; cv=pass;
        d=google.com; s=arc-20160816;
        b=jQcW3T5a98WzRykQZy9XsCC63q5HD1zLzW9ukFeVJIYj0FN1/uoJcozEAr/Gq1P/WH
         cy6GFJoSDIwbiRReKK+Hr21HpLQH1k21xYMmx58Xo+4BjzU3cFlTIXClxY4XWWYhzpC+
         FW5QwDUnXds3+05YJVU7P/wEHqfF8HI7dZQaAWvXecYzLQb6aCH70EeU+w74kEEFQmmZ
         krz5dBFHE3njUM+a4ZK9LdRQFHJrz3e1UPuNFpsv6i+dPSs8gKIqk6Mi+s/AoUK6waqG
         a8mPRNxWBytG2hUgGtsPwA/mxcRb7cXef8FjuLlak3mt2UKLCnTgkXAIZxgDu8nA/O54
         zioQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vhJcIY6J/kcrHI8A5K8+88kU1LWf5rNWf+BQ4ao9cAs=;
        b=J3OUeES/j8HcJ1umLMdyZwVNAjcJBZyT8PdBrwJrx4MB1Lnl9ltznfsepfpos+Vcbd
         XhEcBgpBSYxU9t3iOvKI+Boh9UVr07jThGoKR9SrI2EWB3yv/s19RyS1vXQk5YGphGc1
         IuzIkVe9xR2fktNSO5mxZLOloGnZ/ArVvTMEQeyg/EGResKaZddpPeoGXxrtOCGSWSiA
         sVz9KWTghqQgSJdo22opDXa9mtgoduDN7Wi8rviO0VfNLM7Cu0WdgjS1i0/II+dUktzS
         jpnLaEr8kFkkoOyvr9AxWpLdWDip5Dt9ZqlUJkdqdwGJVdZ9PP4W9E/3i68kAi0IbqAJ
         mfNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T0qtov6j;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=vhJcIY6J/kcrHI8A5K8+88kU1LWf5rNWf+BQ4ao9cAs=;
        b=cKC9mkoZYTWV7yyENNePtuFSQT2fRu6O5vT5V2QmbuJOguzvs2z7VLFhOeCj5nnX/v
         pUgowgLKfk+xL2HaJhvWCCqVdgYlmFKqrznZ6r2+joiE+tGT1TZalYvEtZJslizSmeL7
         CzvmWtEXWGm9WCgZJEf9ozT3ZxIXLx+0uXV5mypJ2i8obYoN1n7KwGdDV/AjjdVrpv02
         yFPuT7CS2hqSUbht5rRGo/oF+sieqyglLcshc2h8ltl450apF6gBiMRTQNezc7nPFqXl
         aFSwCjz4hSU3h9cJmk4jd42c2n1XGJtbHNINanfjqFgkOTDm8CyGQqiEPsVizmGALhYF
         CNxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vhJcIY6J/kcrHI8A5K8+88kU1LWf5rNWf+BQ4ao9cAs=;
        b=Pn7kRG6tF6QoQEnhNzRcKwg1SA11IvzMDtXcvlWOPbbrx6mDR3ZdPgcONM7XQNEOGh
         crhfOWs1MRPdhE+NLzma0/eMjJOb0n/LBUIIhEuNmoo958qi9rkBWQMRFr6ypUbqlvoZ
         fM1rD3xoppvPnK1GSVdYWFNhlU7lfHG3Q9WsjVc9XpbrxBMGSxA9MA+yTmGqH6caICJS
         yraBY9nPURGwQaJxqztxc9c6+y823giZlwY6Ga5HruXl9X2mg/4HgnNdbXkD41RZpJYj
         hgTUxIHJlRU2C+ouz2aL94JJrYNc+pAcylc22D9qNg9vpVAa96FJ5q7HAfYAEFEJuXBX
         e6jw==
X-Gm-Message-State: APjAAAU3fNDtLra+r/+Sbn3/4vrn6JjO8XJXJD3fJgUFTaeUrt5dqYAu
	GBT8dmxsVahyDHkFkfgay7I=
X-Google-Smtp-Source: APXvYqyebbA4dbkpx78Wnxpr/XHr04SDSNvP3eODMaQG9GhH/X5opSG7I6cNEHhoTlQSZxelVetXwg==
X-Received: by 2002:a50:8969:: with SMTP id f38mr22016710edf.211.1571943818058;
        Thu, 24 Oct 2019 12:03:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:a956:: with SMTP id hh22ls1536590ejb.6.gmail; Thu,
 24 Oct 2019 12:03:37 -0700 (PDT)
X-Received: by 2002:a17:906:69cc:: with SMTP id g12mr39283418ejs.235.1571943817534;
        Thu, 24 Oct 2019 12:03:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571943817; cv=none;
        d=google.com; s=arc-20160816;
        b=Smn5hLrulwpXilDCXxlpeKrDieFsDPTRgOWz/TzBvXvgXernhTFormX+1Rj5ImNuE3
         KBrYM2Rr/8mohgF3AgImmF9rExsmJsdmn52wylPcYc97Iwf0mV8uFyYiP2PxfRUeyH6F
         JfEbm7y7v5vtltsOeqRZm+gkzdQXi7wKftO5TFCF3XJ63+2e9vE45GdRbxV8JkFXVeKt
         ETVzoxCfMBmsxzaKyrjC5RynDRYVfWnhDtl7O0yXrpGMNzmkHm4R8/6Qqs42rKo+K1A7
         OZ96wIVOnC8b94QpqnBr+wZWyAbrGp9j/RlIsd/c1nJKdCxFBFUnMT+G9Yr7cfAuZk3L
         yvKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=sOlMPkHiIzj/1B8Xdw7OYCh86kzsC/Xbe8Wte/5yW6Q=;
        b=urP296QJjKLDecHbhHEGKfzB4kWCxK/fNTxFs+cTghpgmhjyUNX9YR6FssmZqe09Ys
         N+smnWI8sMKt6SQWRJKbEpTcSoiQUcg8xrobGEYtbewaBhxmE1YJ+Z8awdaf6473fhOd
         mPzGNkavkzjrh3qGECPIS1a3WwmZ6OEM9HA++I7+6ffmSk2UjWDHnqoVnePYTMmdZdoS
         bw5+wtqYJipEetjj0U2bftNfmgPQZ56OXbNQg8OioVSBNlvnC5224h+X9s5AljpK3W8t
         B8z1OQ4VS1DDX+Fg21xmcfuV02T0KN9AYzOyQqoRcCSY1mykJLxzWNvm4jzJHJKZ1Jea
         7GFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T0qtov6j;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id d11si1251540edh.3.2019.10.24.12.03.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 12:03:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id w9so2477205wmm.5
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 12:03:37 -0700 (PDT)
X-Received: by 2002:a7b:c74a:: with SMTP id w10mr6252770wmk.30.1571943816673;
 Thu, 24 Oct 2019 12:03:36 -0700 (PDT)
MIME-Version: 1.0
References: <20191017170531.171244-1-irogers@google.com> <20191023005337.196160-1-irogers@google.com>
 <20191023005337.196160-7-irogers@google.com> <20191023090131.GH22919@krava>
In-Reply-To: <20191023090131.GH22919@krava>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 24 Oct 2019 12:03:25 -0700
Message-ID: <CAP-5=fV4=0D=71Ea_ViHMo0opqME2JX2oGsTLPix3hbfdeV7MA@mail.gmail.com>
Subject: Re: [PATCH v2 6/9] perf tools: add destructors for parse event terms
To: Jiri Olsa <jolsa@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Namhyung Kim <namhyung@kernel.org>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andi Kleen <ak@linux.intel.com>, 
	Jin Yao <yao.jin@linux.intel.com>, Adrian Hunter <adrian.hunter@intel.com>, 
	Kan Liang <kan.liang@linux.intel.com>, John Garry <john.garry@huawei.com>, 
	LKML <linux-kernel@vger.kernel.org>, netdev@vger.kernel.org, bpf@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Stephane Eranian <eranian@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=T0qtov6j;       spf=pass
 (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::344
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

Sorry, the intent here is that patch v2 be used in preference to the
1st patch, it looks like you've applied both. The first patch split
apart tracepoint_name to avoid accessing out of scope stack memory,
the second patch allocates heap memory that is correctly destructed
(and consequently needs 1 fewer struct tracepoint_name member). Please
disregard the 1st patch and just apply the second series.

Thanks,
Ian


On Wed, Oct 23, 2019 at 2:01 AM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Tue, Oct 22, 2019 at 05:53:34PM -0700, Ian Rogers wrote:
> > If parsing fails then destructors are ran to clean the up the stack.
> > Rename the head union member to make the term and evlist use cases more
> > distinct, this simplifies matching the correct destructor.
>
> I'm getting compilation fail:
>
>   CC       util/parse-events-bison.o
> util/parse-events.y: In function =E2=80=98yydestruct=E2=80=99:
> util/parse-events.y:125:45: error: =E2=80=98struct tracepoint_name=E2=80=
=99 has no member named =E2=80=98sys=E2=80=99; did you mean =E2=80=98sys1=
=E2=80=99?
>   125 | %destructor { free ($$.sys); free ($$.event); } <tracepoint_name>
>
> jirka
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAP-5%3DfV4%3D0D%3D71Ea_ViHMo0opqME2JX2oGsTLPix3hbfdeV7MA=
%40mail.gmail.com.
