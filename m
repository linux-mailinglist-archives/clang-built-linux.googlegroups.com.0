Return-Path: <clang-built-linux+bncBDEPBSN75UNRBN7A53ZQKGQEBKPUBCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CBB193114
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 20:25:45 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id c130sf2642752qke.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 12:25:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585164343; cv=pass;
        d=google.com; s=arc-20160816;
        b=gsMdTEvcn2G/NHdQxDw+9syOUqp8/7iOhNmkj+XCzCmtA14LBnDw6laauBqFR5tm0/
         sfeVTBoD8H/Do4bdDdUJ90gRGMHNSnL8MPsZe5IsLRVpght8DKpVROwVe7UmGFGiEVkU
         2iOl++BqXL7mdkSW7eA4FidUpoWnq4AxkLAEpLO/VQb6zQ4bSIZuIsCgJ6//AnHqM5Ju
         hL/RrfNSZ3SuWgWlyfsQ3tAp/E9wxyOy6iX+59FafjP3S1daYy0h6bv2J2H/o1tyhDiD
         npBr4ZR7KeO8dfcNhOVnL1aTCUfJNc1WC5kr2F21lNokpXIUEDMkEw+XdTPiDNd2ZQLi
         PWXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=MxkO70yk8hR+IQAKzrjNMjXwiVfdeR8yBMxHowFX3Gs=;
        b=B4iLKwmaMtTSl55CW1wqmr2JL5OPsOoZ+ovGxhcCmhNb+Rq04TG3dnRWl2V/K+We4J
         qC1jSiU+x8jdn/q5jjZervdBOeD1LJjB4wIXw0fGBN/rpzRRk2rHTuUMjZ9clOtBCs8N
         7HG45nQZ/HdreayPyAJLaTHlxJryPlWNU18hfjj1O5O8pwXYLOZviUWWTxwhIauwRAJA
         seK6hoVNYygtpIRV3mPmCliJyiO2DFONumo5VAtvgNlEx5lOZE1o9WkHOMuUodh7QTTC
         48yIiPqeyayUXBDQM0+Vqc2jMSNyG1RW7wY4/BzJh7pgfpsdJw6uAktjD/W4hhIDNhsJ
         1JrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M9nO1NB9;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MxkO70yk8hR+IQAKzrjNMjXwiVfdeR8yBMxHowFX3Gs=;
        b=T9iCufXtZ9ZuGddW3TaiwB8chw2pp0gmNyYgZbPEMhIJzwbtyXEWki6TbtKBtR7nUm
         R+2UoJtXHpxpvM0/t9xAJPLYu/cS06aSUPoKf0nQ3LDBY+3rag7bHLjqfDnEP0miJIiQ
         E+yYMSl4EJrao8YG5nyeYDINI/VP8KNxQ2Iw7c9ydhMgvxRJQXKb75wjAlnlordCweNo
         ba3y5MuN8/+pvneUjU2OrC/R6vyejNRXPt+/GJPSAJkYYVMhzJ3kjvbaQKId1PbkB7Ae
         WDNtEebwV/YDTB7SyhCuJEZiV96q4cCwonxAol3RE+2XBt3TOLliXpA4XZaXffNmE2YY
         0/Lw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MxkO70yk8hR+IQAKzrjNMjXwiVfdeR8yBMxHowFX3Gs=;
        b=DAktKsllqrnbuL0sHdZAdBq1Q73E1wfBYTtwymwgpzjrI+xTmnVVnqLEeYkxehijxs
         9RSQxB4eqgrbUL4JqFiZRyLzmKL9NXLZnlscvSs2aN6Egp19M3/Y9YiNema7XQzWQvmp
         wMkP5gBmk/MSjIPSAbbf3jf50zgVNPsVtS+76vawMF7xAnPkn1YkngxiC4SliSZdWUUX
         pUYuX2eWNavXSi0RuvIwT8YY+a8gpvuiunIwhnACe9gVKnoRYaD6iZGOVgIvAoFt7l+4
         iwICekyBwxgKLWJPVudqJkQQ2c4hF3Saw1iwPEe5iReD44BzfR8G/RQyUg9MMBQjIfhJ
         JQEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MxkO70yk8hR+IQAKzrjNMjXwiVfdeR8yBMxHowFX3Gs=;
        b=mouL5L5fdbnFfl9sSNVq6+t/2PY3LNZv1Jy+MeCdxe2bssfPjDJ1ZTtYBw//RWyztC
         05OvkfxoOJvx/wGH4CQRJVNBKHvBfkN0lBugrCd6gopL/A8DzMkD7btjxMl6Q3CagiYi
         hxSGvvfeVEPkbYRDyetQWzsic9EhoD8TOg9Am6BCt8L8DgbhUuZgjT0MzakKkMrXLDrv
         M1k/3+aB3l1Xv4DKE359NmVP5n3HlfBNTPq0SIcZs6q2gJ07wKjYR3L3MiMX2WK8b8mI
         xbcwHZ6DkgRCAJVPfx1x/EEY2Pyc4uR8T2De6Mb9PxAaqVRiXxZfm57TA2czoyuzFOH6
         koQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1YDOd/cwJOuHMhE50PfxubkNWPw8APipCOuQqsizv5Bnzyp9sO
	EulIy48YFV0+QstH6AJciaU=
X-Google-Smtp-Source: ADFU+vuOOkwoRvjUDfIZyLe4WJpgfuKid6ao4Yl+NLLzw14RsxK6Fzpm6Sl6wttP05/ryIw4teKhHg==
X-Received: by 2002:ac8:4982:: with SMTP id f2mr4745491qtq.38.1585164343108;
        Wed, 25 Mar 2020 12:25:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b7c4:: with SMTP id h187ls1402461qkf.1.gmail; Wed, 25
 Mar 2020 12:25:42 -0700 (PDT)
X-Received: by 2002:a37:b2c5:: with SMTP id b188mr4338287qkf.98.1585164342739;
        Wed, 25 Mar 2020 12:25:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585164342; cv=none;
        d=google.com; s=arc-20160816;
        b=I5XwDfGA3L/1mGD0LkyxpLP/1icvg1vyl7sYeHjFqrYrvtLxJaK0+DjoybyBQrwSRp
         EH+DUDt3gjzwk93pRF3b4bu/nOxJSfAjF/KXQcH8BY/jMEEjwauWuUvuOyHuviPWO49W
         x7zOW+DMamPKjiTh/g2SPi9mopDwK8SqJo+8NiNF94fKDFYCm26s+Ld+iVKt0vl4EJVi
         wWb83Ux3GnmFPn/4LaKNAGy5gdqHz2bOyev0Zzr1tzGh8DC9/TIoaHphXUZnH2P2yfCy
         558VNFnHsXdLhnDVyoXeeRpyCSRVlVMoIK6ZCI/bgwW+fLbtL0ShU/0p6D1NV9PHtdrS
         QhlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:dkim-signature;
        bh=sPcjbSNBesC/NdOsDtyVCyVgM7ZVzEXz0TUVmUnVG4c=;
        b=fJTTtzm1sgH3cNjFihU8rRLA7+Cxo9A62SbIWGvoXv9b5LD9GB/HEbp2mS3CE50oY4
         nyIl6cCupEYMycrKlDuX4y7+HxsY4nTo1gmuaM9me8G03Pv5g0MVQ8aDYsvddgzdCOPU
         y0Nnplj4lhBnz0O8+e8e9y/vxytE2nSIbzF3pRQUVqTyd1zQgJbmPxFbrgMCqVGbldjP
         c3SKJQXPbx12M/e+Rf4aXp2qQLVKBOiQ4SHQqPR2SFm6zpAmU4tyymloXz+lveJL7N0g
         JuMSuY3u4FwwuTIFzW/keDH2PhjGlVC6RAf65wOXJu1C73USU5kz4kphdVmNDgCUgZHV
         w3aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M9nO1NB9;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id x11si1336604qka.4.2020.03.25.12.25.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 12:25:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id h14so3885453qke.5
        for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 12:25:42 -0700 (PDT)
X-Received: by 2002:a37:8645:: with SMTP id i66mr4441647qkd.91.1585164342411;
        Wed, 25 Mar 2020 12:25:42 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
        by smtp.gmail.com with ESMTPSA id d185sm16747255qkf.46.2020.03.25.12.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 12:25:41 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id C8BD640F77; Wed, 25 Mar 2020 16:25:39 -0300 (-03)
Date: Wed, 25 Mar 2020 16:25:39 -0300
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	John Garry <john.garry@huawei.com>,
	Jin Yao <yao.jin@linux.intel.com>, Andi Kleen <ak@linux.intel.com>,
	Kan Liang <kan.liang@linux.intel.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH] perf parse-events: add defensive null check
Message-ID: <20200325192539.GH14102@kernel.org>
References: <20200325164022.41385-1-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200325164022.41385-1-irogers@google.com>
X-Url: http://acmel.wordpress.com
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=M9nO1NB9;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::744
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

Em Wed, Mar 25, 2020 at 09:40:22AM -0700, Ian Rogers escreveu:
> Terms may have a null config in which case a strcmp will segv. This can
> be reproduced with:
>   perf stat -e '*/event=?,nr/' sleep 1
> Add a null check to avoid this. This was caught by LLVM's libfuzzer.

Adding the NULL check doesn't hurt, I guess, but I coudln't repro it:

  [root@seventh ~]# perf stat -e '*/event=?,nr/' sleep 1
  WARNING: multiple event parsing errors
  event syntax error: '*/event=?,nr/'
                      \___ 'nr' is not usable in 'perf stat'
  
  Initial error:
  event syntax error: '*/event=?,nr/'
                       \___ Cannot find PMU `*'. Missing kernel support?
  Run 'perf list' for a list of valid events
  
   Usage: perf stat [<options>] [<command>]
  
      -e, --event <event>   event selector. use 'perf list' to list available events
  [root@seventh ~]#

Does this take place only when libfuzzer is being used?

- Arnaldo
 
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/pmu.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
> index 616fbda7c3fc..ef6a63f3d386 100644
> --- a/tools/perf/util/pmu.c
> +++ b/tools/perf/util/pmu.c
> @@ -984,12 +984,11 @@ static int pmu_resolve_param_term(struct parse_events_term *term,
>  	struct parse_events_term *t;
>  
>  	list_for_each_entry(t, head_terms, list) {
> -		if (t->type_val == PARSE_EVENTS__TERM_TYPE_NUM) {
> -			if (!strcmp(t->config, term->config)) {
> -				t->used = true;
> -				*value = t->val.num;
> -				return 0;
> -			}
> +		if (t->type_val == PARSE_EVENTS__TERM_TYPE_NUM &&
> +		    t->config && !strcmp(t->config, term->config)) {
> +			t->used = true;
> +			*value = t->val.num;
> +			return 0;
>  		}
>  	}
>  
> -- 
> 2.25.1.696.g5e7596f4ac-goog
> 

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200325192539.GH14102%40kernel.org.
