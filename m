Return-Path: <clang-built-linux+bncBDEPBSN75UNRBUH6U32QKGQE4ZLWJGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B270A1BE5AB
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 19:54:25 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id f19sf808141vsr.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 10:54:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588182864; cv=pass;
        d=google.com; s=arc-20160816;
        b=GMFeKh4j7NJC3lYamei1xFoAoxhH+zN2Ush3j2KzYHBSY1AaoOcZLpojcZtDsA/5iI
         cNUuUssiBfig30YaGBL0ctkVxgqflpDcZGcLZ1u9oRUoNPhYiwMFqGrARuB/VVVjmxTy
         qw8bq8Iyd47Ggq2PQr6RfkHmlx5V4fJzTDy+l9/9ZOyUjL65cIcIucY99UMaCpfNDuBU
         QJe7n8wrr05OhMvsxdeFJg0tXX9PO+c2wuYfErJjCSIUZtsifdunqwzSSvt5srVB2PmW
         badbdHClfjkrUs8+IkZaPNKZcrcl0cCxDPqZojYzYigb5Winn5Cv/Dvms9Q7lBUs2JmC
         E4EQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=CV11gJxkkJOd2FPrSC+KAWjiBK/zqb5TMQUFvs2fq3Y=;
        b=HBoC3rjWxiDd1AFCJiF3EGHJFKL3r1CgHAsl6WJwHrCAbc1N3xS71B8qaf28czysFi
         vDIOxN16histkK7gfZGpVRHm2Qf+5dEnaE+U+ql/vYrwr58EjcLgHNHPfN0h5GXNTj3X
         Rw4CKdwe9w6GuN5HekaQSDec1sUJVrZ9wAtt+VuvhqVAo5uZ2RKLrJSly0hzQwZ0P71Z
         VyvHpEkc/f2RZ1EIlSLVxh4XOUR/Rmac7ffKK3YbyBgGQ0iBJEy3UeQ5QwOcDjlbjFDR
         DPt0hRDCofBeB8S7LEJLxjLCwHx4H6CRZFU+loKfmVY1mHew/QY7qKYzr52UiVtwYP9U
         B8Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mVsd5ru3;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CV11gJxkkJOd2FPrSC+KAWjiBK/zqb5TMQUFvs2fq3Y=;
        b=rArfzMV/R+LoVqJO5TZAxklQ5l+zlmYwGMM9vgA/gVI/88B+yUUdFV66XDyVafe338
         OZTlg9G7AZZcU2KmLdQXRh2F8EN49FE9dRqev5oPzwLWfZoZ5YzFVz2vc3Oumw2iGDOT
         9YdPGBahj79eQ/+A+QbSTFA1EwPFqeQKkBHZMryIPk+c5WKCggxk8pYliCpKZrZWCHMn
         1N/GadJAlseko8v+pkGl4CGdsBaQETCiMWv86y0SYMWQjpEtjP4K0XM/e4eokNi8T1Ud
         9q4Rghm0RRQ83h5h1Wm/upGYwL33uzT4C9ddY0EOn+HWslUaGq2bvcPPSTowvQtDnxuj
         CYzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CV11gJxkkJOd2FPrSC+KAWjiBK/zqb5TMQUFvs2fq3Y=;
        b=Ot4ZcKWOXr0Plr2m1JqKdIKRpHynWH2/IIJxv8IRRZwKcp7UcWvhAr8miBPx4yqads
         Y044Psgqr2GJCU1xmPULJgihUceA3T/K/RNr5ftkKBFfQClSnc38SRnGWHM0llkYJaUB
         X5ju5ACaU7/Wjrr3ykZH0u1uGlVRHY6RF9FnoDxcZmQjG1jnn/Nnrmn8T5HuYgu483Kj
         7lm3/QCxF+fP3xKt8HTPZqHjkgpxRc9R7YriHf0x5YJdKcH4gs0bLdJYN8PvUsFFthbG
         m41Q9kQJzIELx98kL7mmxL4V0ladNV+K+UTZrbGBlWZIKdio1i/yG0WYjxgzGwC51JYd
         472w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CV11gJxkkJOd2FPrSC+KAWjiBK/zqb5TMQUFvs2fq3Y=;
        b=XQDe6ueDjP2DDJbvFkOtgcqUzBWauUWK3slmjTnrfgIsiHd2jcnw7Qpb6vJqiJmBnO
         iKe9sQHcYwsxJ/8Wz4LpTonwmuCjrqI9xNcw0+ZMw+dZkoZBmLujSPUp7v5gf5Ph2bye
         FqFYIXUrdwlB7FW27TYEXn00Bf0J/aWMDiDz37w5OYpl/b9VqjhIGzc2jeKAv81GeMjH
         L/H6FivgR9ShssBfPamNCazbbYKvaqu0Yfy+O1V/F4aBxZB5oCqmbRBpx8mgr9rpBget
         k3uKZzZ3lCmoPdbZQHkOP/QONN8KFaPHGnFsYnms7bxfSmu3oOIxVMN7mQ1PmFHeKhss
         CbEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYhEG/cNrAnZgc0B9vpk6crlG1BAxItOjOcGzWsUpHZoBVXIy6q
	92nS8I6Hz0ZtrZeTywVqzKg=
X-Google-Smtp-Source: APiQypLLFyS/yojtPbAiSo3bkY0gaKo7kICHhSZLZKHDfOEeEYmJ6eqL3EmeCerAPHyi465HP3fa1A==
X-Received: by 2002:a67:334a:: with SMTP id z71mr4372314vsz.87.1588182864483;
        Wed, 29 Apr 2020 10:54:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2091:: with SMTP id h17ls3584145vsr.10.gmail; Wed,
 29 Apr 2020 10:54:24 -0700 (PDT)
X-Received: by 2002:a67:12c4:: with SMTP id 187mr11595090vss.100.1588182863937;
        Wed, 29 Apr 2020 10:54:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588182863; cv=none;
        d=google.com; s=arc-20160816;
        b=d9sw+3N+5hFmkWU3K8SNAWziOvNO6yL+nAK5kU7b9rO0PNowdtn1r6zi2QVuUfJL5o
         SEEL/oqJwImrqiH1zTnffU5LtjD2AbmR0lN1pn2OiPVgNy4tH7JNLYVs6OFf0Fg3L/rD
         W1ABpj4kkJ1LwWbDFuy7UOWwLYTlqVV57HkQwEe2IK/uTnUwVgMn2bQYJh46vcwJnGKF
         rQF1aXEtRrzZqWB3MQuwirqG2P1eczvXx/5b/lgM0uMFeFIJwjW6i06E9ZGxZxNQ0gSp
         JfR9DZVGDl705DjZndQiof0vvoKajG8um3tPFNg7vPej3rDNS0onG1tMNNCelPPzFzDd
         F5og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:dkim-signature;
        bh=V04cfTgPwsOaE9K2g2VsgPhrMgAixKyeveOTHytG5tM=;
        b=yTinhDkAjB3R4g/yA5g5h1EmQ8aglcwGTdrnHbXBPdsoqwUvTpXXRUzPlUMzFyhIx4
         oUM9nHN7Xe3VbNu1cz7bGIaQuh3YsUrzCCv0lEmTYuR5baAvmoxmHdTHGf69HE5kx3OB
         zW8KB3rvoGtWA+684JR/4uMQU/8ZRDOWk1SkKIFu6efCBIDHi7d8L2P0J2MQyV6XJ4IA
         FjZngM2n1wFHhXqslMTv+4TroWUMF9ASBZKw+YlULggejjHmmoxVhgP3H0Njmm+1sxy2
         gED+G3DvX9JKtSbF28PrePwj5OUee7W2JkIcw1sp3otDyxKtx1+Q5DJzGNuq7sjR7obB
         ZvGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mVsd5ru3;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id s64si184vkg.1.2020.04.29.10.54.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Apr 2020 10:54:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id k81so216026qke.5
        for <clang-built-linux@googlegroups.com>; Wed, 29 Apr 2020 10:54:23 -0700 (PDT)
X-Received: by 2002:a37:617:: with SMTP id 23mr35309683qkg.11.1588182863395;
        Wed, 29 Apr 2020 10:54:23 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
        by smtp.gmail.com with ESMTPSA id d69sm16267115qke.111.2020.04.29.10.54.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2020 10:54:22 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id A9F66409A3; Wed, 29 Apr 2020 14:54:20 -0300 (-03)
Date: Wed, 29 Apr 2020 14:54:20 -0300
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Andi Kleen <ak@linux.intel.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Leo Yan <leo.yan@linaro.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v2 1/2] perf parse-events: fix memory leaks found on
 parse_events
Message-ID: <20200429175420.GD30487@kernel.org>
References: <20200319023101.82458-1-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200319023101.82458-1-irogers@google.com>
X-Url: http://acmel.wordpress.com
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mVsd5ru3;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::741
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

Em Wed, Mar 18, 2020 at 07:31:00PM -0700, Ian Rogers escreveu:
> Memory leaks found by applying LLVM's libfuzzer on the parse_events
> function.
> 
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/parse-events.c | 2 ++
>  tools/perf/util/parse-events.y | 3 ++-
>  2 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> index 593b6b03785d..1e0bec5c0846 100644
> --- a/tools/perf/util/parse-events.c
> +++ b/tools/perf/util/parse-events.c
> @@ -1482,6 +1482,8 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
>  
>  		list_for_each_entry_safe(pos, tmp, &config_terms, list) {
>  			list_del_init(&pos->list);
> +			if (pos->free_str)
> +				free(pos->val.str);

I'm applying it but only after changing it to zfree(&pos->free_str), to
make sure that any othe rcode that may still hold a pointer to pos will
see a NULL in ->free_str and crash sooner rather than later.

>  			free(pos);
>  		}
>  		return -EINVAL;

And the following should be in a different patch

> diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> index 94f8bcd83582..8212cc771667 100644
> --- a/tools/perf/util/parse-events.y
> +++ b/tools/perf/util/parse-events.y
> @@ -44,7 +44,7 @@ static void free_list_evsel(struct list_head* list_evsel)
>  
>  	list_for_each_entry_safe(evsel, tmp, list_evsel, core.node) {
>  		list_del_init(&evsel->core.node);
> -		perf_evsel__delete(evsel);
> +		evsel__delete(evsel);
>  	}
>  	free(list_evsel);
>  }

And this one in another, I'll fix this up, but please try in the future
to provide different patches for different fixes, so that if we
eventually find out that one of the unrelated fixes is wrong, then we
can revert the patch more easily with 'git revert' instead of having to
do a patch that reverts just part of the bigger hodge-podge patch.

If you go and have a track record of doing this as piecemeal as
possible, I will in turn feel more confident of processing your patches
in a faster fashion ;-) :-)

Thanks,

- Arnaldo

> @@ -326,6 +326,7 @@ PE_NAME opt_pmu_config
>  	}
>  	parse_events_terms__delete($2);
>  	parse_events_terms__delete(orig_terms);
> +	free(pattern);
>  	free($1);
>  	$$ = list;
>  #undef CLEANUP_YYABORT
> -- 
> 2.25.1.696.g5e7596f4ac-goog
> 

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200429175420.GD30487%40kernel.org.
