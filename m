Return-Path: <clang-built-linux+bncBCT6537ZTEKRBBH7ZD5QKGQEONFKNXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B3C27B5BF
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 21:54:46 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id 125sf1313927qkh.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 12:54:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601322885; cv=pass;
        d=google.com; s=arc-20160816;
        b=CkmII+lkO7uzYxVa/lfROUCa1K78XODYatxyzSacP63dhdPrtxsVMLaPreTCgGeDEU
         fRfJPg3xkXQVk05TBjtktyOlzOgBw4saEsJSGbKYiQ1U0u7ZQnkP33gbvNJh8amE4ast
         q26aj8ylTa6l4+QfzHmxPQc6WEYsV7F60P4XMLpZPu0/k/js54RD6roPOYPwDEXJr1gj
         kbc0dQPGFAr0dpA/qDM3NiJA0JFBSAL2jXu9mp2kLMoXRQWNrBCw5NbH840apHwMtWXB
         fAAxzcf8OLywLbV3DUvM9njRn1dg7jsGkm5bmBHQ+/zxbaauScwkMD6mGTuGNiiN9zNC
         Jsxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=zwQ9fqFJEj4ZxIEzD8u/zAzvk5xxsXx3c+GNzG9UTbQ=;
        b=rq439s6s6/xRmi8v+GcCjiPLrD9H5/Mxd10xrtDm+kRv3/MFug5nT9E/Srr4W2ulyP
         nVLguNO6Npt3ZFR2WO1AX4ptHrm/2FV+MrgpMchV48Pv2az78OzowGChIuQgVcCiCYZx
         MI28YIGktUTg95LpdDXkpEOPefh0vQjRCh1qXD1D+iEnhaqBnkyfN+Ky4syI+VuCLc7Q
         frdzdkTtW14rAqbWWpvoUMFYTxDo5XU2lxukV0IqUln3jy+kqMq0gV3sF4+x1eNF6Sgz
         MSfKWGiHEaBdcHpKPRyjYkwKsZ5c8VbtIg2ZAb+QnVkg/X0c9g160BFam5u1F6A9sP4f
         +e6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=GyPa84B2;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zwQ9fqFJEj4ZxIEzD8u/zAzvk5xxsXx3c+GNzG9UTbQ=;
        b=K5hLHxMqXHNPQKMiD7nmKoUwW+Lh1j3btxEsQTUCeCDl7YdVOhjhb52xmf+oTFzU5f
         02YM6mytzGtk+1CChrVrFHx4UDKJJ6pYp7F3+rhhfWSj0+M84XhOBK8VbkrGpRFgDjn9
         qtNr3wM6z272UH6GM9lUYnA0Hkptq5VA9llnVgSGeklzyOSsd6n3YFyBo2ntwKtL3vwy
         Q8rASJug/2P21IqkqZDDpaaEo/WfzFzwDqIn27u1n4lVrjpFJ4LcV/ejsY48JdbVzOJO
         HBs0heHzoO35K+Jw7p+afh6D5tZIHZDmTVe6UcAENOt+Fz9likrfODUTRDf4E5eoPRx4
         ZQ9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zwQ9fqFJEj4ZxIEzD8u/zAzvk5xxsXx3c+GNzG9UTbQ=;
        b=G4EQfPfX2F4c8jyGRVhD1QJ6PigGb8yv++8WHGoKGMypOg8JcGXwnA82NZLYFefFWc
         MK//lozj130cqvW92iPoZGbVUsVc4wjFG16K98wGwioiLVrjd7sZ7CdaR2VRYVPXUQjQ
         UfvlOSAvHNjmVq0BbmpI7Ew5aSVT/lhQyJDaPJuVgyqGK/2bN7TWwZMWpL0ThRihngUR
         kgvl+TNBFVtfi9YvsNAzZlaW9bmA0trV0SpdXh4t6Vp+eEtfOkKl88OubHCO+HapkMUy
         KA4TbIAJRRwj336X7pNT7yIXYBusYjSM+OCEYsP9QKu56mBkL8HioQqd9nYkmykHtLsR
         4EUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Kg3ecXbjTrOMwZ9XkNn0dPrrOf/21uxT2MvrznFSdE2gX4d//
	zfGEjJ1WZ3I7PP+lSRzIa+0=
X-Google-Smtp-Source: ABdhPJwAg0Gks8IIRO4ZnFqv3M95orFo94MupR69vOXs3OUiO/24fmGC9jNO/Mob6qPYVK6neqS/9Q==
X-Received: by 2002:a37:9d86:: with SMTP id g128mr1132468qke.26.1601322884807;
        Mon, 28 Sep 2020 12:54:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e881:: with SMTP id a123ls1721077qkg.7.gmail; Mon, 28
 Sep 2020 12:54:44 -0700 (PDT)
X-Received: by 2002:ae9:e70c:: with SMTP id m12mr1079960qka.91.1601322884298;
        Mon, 28 Sep 2020 12:54:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601322884; cv=none;
        d=google.com; s=arc-20160816;
        b=UuSLv/IXcepHjazG7iyyNI1HAKOL4t40M+LYM2k8siG3pidf4dgUyjVdTQBE+qPVuV
         AXjT3s2BwDiMrnZMzkVmUhAF0w53kmh2R02WD39TcHXUdwmNOzxsQkKof/7XndAXytiX
         utAYOxXUT8azI8ZGTYtvxaCMlCPstlwZ3+WtRm4bwb2ssa1/NUf1/SFuiUvd6ZsV29s8
         lwHxla+3FLqDfbq3IVMAq/yApyedV0BjDQDE3W0zqLB/ZLggNnw2jfUjI+/vaTEpqOae
         VKt7GsolaZKzvShNpM5V13AjcgSkVol2vyf4BlBLKDBQbUwLrBizKoBQZMedQG/mzspu
         Ywtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iNpDShrVH0G/yhVSSFMZRjI6zLZIrWDL5WcnPUrYGzk=;
        b=s3Y483siZs01+Dov/AA++NqC6tmxvCeN2CHTdYh/TI7Vol58PFrhoGCBMT5ZqjhKTM
         xn2WFZMABW8KAmTzAdCzkng1pS6AaaL0dMXfuuqJ+LkhQHCkHgdEux7NIjRN2lHCYqbl
         12FhsKYCYlhtLR36I+V9AYEUj7bTmmKRLSqOV69LU95lP5+xu+KJ89yVC3mxM7eoPbrs
         o/RyzHYJTQc5BYptXT5ZjfhBfR/sDLFxhxk3hUVRTpoahfW3m6KHPj4ZxjWL55pvNntH
         u5UBmdW4Jmr0R9yJICGBhD52wWx1jwMj0Aa+8z2u4M09+V33xoVql0s7mH7tWYSPIrX9
         l4Lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=GyPa84B2;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id z6si107170qkj.6.2020.09.28.12.54.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 12:54:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Received: by mail-vs1-xe42.google.com with SMTP id z193so1523483vsz.10
        for <clang-built-linux@googlegroups.com>; Mon, 28 Sep 2020 12:54:44 -0700 (PDT)
X-Received: by 2002:a67:bd12:: with SMTP id y18mr893885vsq.45.1601322883397;
 Mon, 28 Sep 2020 12:54:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200918021220.2066485-1-sashal@kernel.org> <20200918021220.2066485-112-sashal@kernel.org>
In-Reply-To: <20200918021220.2066485-112-sashal@kernel.org>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Tue, 29 Sep 2020 01:24:32 +0530
Message-ID: <CA+G9fYteKZxdLVtQzXyh36hhaj6W5e17U_emsXwZdjPoeyj+OQ@mail.gmail.com>
Subject: Re: [PATCH AUTOSEL 4.14 112/127] perf parse-events: Fix incorrect
 conversion of 'if () free()' to 'zfree()'
To: Sasha Levin <sashal@kernel.org>, linux- stable <stable@vger.kernel.org>, 
	Arnaldo Carvalho de Melo <acme@redhat.com>
Cc: open list <linux-kernel@vger.kernel.org>, Ian Rogers <irogers@google.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Andi Kleen <ak@linux.intel.com>, 
	clang-built-linux@googlegroups.com, Jiri Olsa <jolsa@kernel.org>, 
	Leo Yan <leo.yan@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Stephane Eranian <eranian@google.com>, lkft-triage@lists.linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=GyPa84B2;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Fri, 18 Sep 2020 at 08:00, Sasha Levin <sashal@kernel.org> wrote:
>
> From: Arnaldo Carvalho de Melo <acme@redhat.com>
>
> [ Upstream commit 7fcdccd4237724931d9773d1e3039bfe053a6f52 ]
>
> When applying a patch by Ian I incorrectly converted to zfree() an
> expression that involved testing some other struct member, not the one
> being freed, which lead to bugs reproduceable by:
>
>   $ perf stat -e i/bs,tsc,L2/o sleep 1
>   WARNING: multiple event parsing errors
>   Segmentation fault (core dumped)
>   $
>
> Fix it by restoring the test for pos->free_str before freeing
> pos->val.str, but continue using zfree(&pos->val.str) to set that member
> to NULL after freeing it.
>
> Reported-by: Ian Rogers <irogers@google.com>
> Fixes: e8dfb81838b1 ("perf parse-events: Fix memory leaks found on parse_events")
> Cc: Adrian Hunter <adrian.hunter@intel.com>
> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
> Cc: Andi Kleen <ak@linux.intel.com>
> Cc: clang-built-linux@googlegroups.com
> Cc: Jiri Olsa <jolsa@kernel.org>
> Cc: Leo Yan <leo.yan@linaro.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Namhyung Kim <namhyung@kernel.org>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Stephane Eranian <eranian@google.com>
> Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
> Signed-off-by: Sasha Levin <sashal@kernel.org>

stable rc 4.14 perf build broken.

> ---
>  tools/perf/util/parse-events.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> index 2733cdfdf04c6..ba973bdfaa657 100644
> --- a/tools/perf/util/parse-events.c
> +++ b/tools/perf/util/parse-events.c
> @@ -1258,7 +1258,8 @@ static int __parse_events_add_pmu(struct parse_events_state *parse_state,
>
>                 list_for_each_entry_safe(pos, tmp, &config_terms, list) {
>                         list_del_init(&pos->list);
> -                       zfree(&pos->val.str);
> +                       if (pos->free_str)
> +                               zfree(&pos->val.str);
>                         free(pos);
>                 }
>                 return -EINVAL;


util/parse-events.c: In function '__parse_events_add_pmu':
util/parse-events.c:1261:11: error: 'struct perf_evsel_config_term'
has no member named 'free_str'
    if (pos->free_str)
           ^~
In file included from util/evlist.h:14:0,
                 from util/parse-events.c:10:
util/parse-events.c:1262:20: error: 'union <anonymous>' has no member
named 'str'
     zfree(&pos->val.str);
                    ^
util/util.h:27:29: note: in definition of macro 'zfree'
 #define zfree(ptr) ({ free(*ptr); *ptr = NULL; })
                             ^~~
util/parse-events.c:1262:20: error: 'union <anonymous>' has no member
named 'str'
     zfree(&pos->val.str);
                    ^
util/util.h:27:36: note: in definition of macro 'zfree'
 #define zfree(ptr) ({ free(*ptr); *ptr = NULL; })
                                    ^~~

Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>

full build link,
https://ci.linaro.org/view/lkft/job/openembedded-lkft-linux-stable-rc-4.14/DISTRO=lkft,MACHINE=intel-corei7-64,label=docker-lkft/938/consoleText


-- 
Linaro LKFT
https://lkft.linaro.org

> --
> 2.25.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYteKZxdLVtQzXyh36hhaj6W5e17U_emsXwZdjPoeyj%2BOQ%40mail.gmail.com.
