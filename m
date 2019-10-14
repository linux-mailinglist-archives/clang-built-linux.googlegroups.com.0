Return-Path: <clang-built-linux+bncBDEPBSN75UNRBG4KSLWQKGQELR5RKXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 338B2D650C
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 16:24:29 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id f80sf9862573oig.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 07:24:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571063068; cv=pass;
        d=google.com; s=arc-20160816;
        b=1Lyka7SpU/Sjn0Ev36/pLrJmS8rTm1uaNGk8BX854KFYlPsypDfqrrc78LcDoDq2hu
         puwonXtiFCDRgLgH9hDS2DCEyfmnfkPDaqwkH+4sBV89Xz1486xX6h6qpvZ2vCxJPd+/
         xvmZSJ8jjEPY82NlR9T0CFRF0hoIQ4p85zTalWoB2NuODZCde4wcQkeeIOE/RQ/T2+lB
         54GE0m8jv2FCbWa+/wctp+DrTno2Mlqt0rkWj0A2zquWaIlm1EUuMzwMb0AqdiwWm3IH
         aWU//rPwN+HY55yP8gGvy15loBSuCj19vLZ1AYS0IjLEhHJbypqut/NaGxVsqGxeeqX+
         27Iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature:dkim-signature;
        bh=fULDSJvJc2/0MnQDtDzpXu+p2DPkIiZJVof3hKAY1rg=;
        b=mxzaEIyYhb1Qk9Yozl9D1ZAh4ARMh2m0DhD4ayXAtMlCrLXBQUdsXm/xFRzeco94WE
         2euinePVr1LPZuagRXEW8ZRh4jlVpyRjTxkq/aXcWEpZrlTiVXhbCM8maCgrNTvF1YPw
         ciZFQu6IfeTuQBIyAYit2lNpeYudIaIVLFz9Z+VbnI0vWpuEZDnqpdp9m1RfQv0xmV1b
         Y8LeP3LJgySAhA2kkAEP9RbWtEL9i74EBRzwDZdxDa/DWsbFkYxHLUhu6+8T2fEoGAm1
         ei3E8kkvHL88oToqE2jDEngY5OQ4Gbjn7NUKZ1i7Ml1W6bVSK+y4jslj5xPacBh5EC6z
         wgkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NLlkrh08;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fULDSJvJc2/0MnQDtDzpXu+p2DPkIiZJVof3hKAY1rg=;
        b=iZnp+mSq79SomjBLYaRcvXNDxTMREILotEa1xaDtKqPXzDpduko/MXRekeXkuq5qVn
         4aaBHx3ECoaR60vzyCRtm8QG8mBjYl4M+Kfiz3oyLXRR/zkqrx8/nXh3w+G39ceuapDD
         x/Jgf7AHr60CAEBezAgQuwe+6YfxQz0we9ndACnmSvvk/DkYy7P+KGR9aZAJ5Vln69GI
         iP3JzqVrAiavNxxi9tCJexLwrTIDxgthKWFo1LbxJMnVJmza7vMFmkGe1L7mcWRfuuX3
         WCLnkfR4GtbRlDyHgD2voBlV432GwnMP0MtaJDQ3MUdvnLBzfO1RnHKX9lNY4mRt5H+P
         9QMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fULDSJvJc2/0MnQDtDzpXu+p2DPkIiZJVof3hKAY1rg=;
        b=GM7/vwQhFEbe5E5lziSURA3+zKYfTlr28UBSz8utnUocNNbD2Cu/4b0DFP15mxMar9
         pj1sile0D48BjU68rvLXnbMWqrxCmjPRJQ5e9YUAxZoKaaYLB9hCLqBsSrUoQczWaRBu
         lrXn5ILsv/CnCtI38OKdtuXd49A8ep7DnwiIrM8k01MO3aBu/VYr2KIyNWFRk1bwW5aR
         gJWyX5+BC5QCgvJUVVdIuhrKoJ790epRP/V91d7HwBe4A78Qn3xeyyfIZL8nypnhPi51
         8Lbrq4wdt7A7F2NuINjIfg2Mk26851yqLsNj4VKRXmOX6YrOgWjCimhBFsguOEi6J1Vs
         cvEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fULDSJvJc2/0MnQDtDzpXu+p2DPkIiZJVof3hKAY1rg=;
        b=pLxqoanSEFJCpy/KYbkv3Xz0DSmKM053zbr6dL+Re6U7YLh464FdGw+OmcE4AcGbCs
         HqsM7fJnw1n4jXT27zv9aedGmf/dZcmnH0itELIhi87PL/e+PfV+s9itWrVmocrORK/t
         0qBI5cU1CKKxy8O3tHtmyKwYy8RBG0AjD5iJLg2hXm4X5H+cumbsXL35T8LMYuv9Eub9
         c20HU1EGG151Sz54egP4SKDr0nGcPhwuJZVAgy471344IGOzLtQiI4DJwKqQp91c/lyJ
         xfjetW+4HbhzxM63cnCUFl9X8c/D4NPh7EVy8cUsNA8uftiTd05USouQTUa7A8YmOT4g
         mLMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUUAz3Cfc95VHTEtxss/d08pGSoSRytq8kMnl3jK/Iixj4Xz+VH
	JVwmvT0TEEirnYVl2PPiv6c=
X-Google-Smtp-Source: APXvYqx92/wkTbUIR5vhV2HEHb1edcvyObawIs1GLm3U6z3F41RoKOZXxB3wh7eL35VXotTAYbb3rQ==
X-Received: by 2002:a9d:6e87:: with SMTP id a7mr11671464otr.322.1571063067919;
        Mon, 14 Oct 2019 07:24:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1d1:: with SMTP id e75ls2673232ote.15.gmail; Mon, 14 Oct
 2019 07:24:27 -0700 (PDT)
X-Received: by 2002:a9d:7345:: with SMTP id l5mr15348455otk.39.1571063067589;
        Mon, 14 Oct 2019 07:24:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571063067; cv=none;
        d=google.com; s=arc-20160816;
        b=ZONKuPDKeCVcfxOtfUeZi6EBTEA2yrF2ybtC2GlxKHLeEq1C/4mPt0Wab//jEttURL
         Bw2sl6qQDhVNq2QLvdMYBvtcgAnySEWvwyaX4pWZRNlQnmDVw9YUnb2ElX6JBGOg2M9S
         9kboGOfPacRTFnJtY9CJsF7GzpJIBSJITLio0I8KEtZo3OTZZCMnUsKtSYWp3/SvWfAX
         G5eiPnlvLhmMJU2mN17h9v2ub09F2gCC+2cqbAt7PVMEAvYnDwWH8IlzpBZrQ1w3Qgyk
         NWNl0Qfb1kIS843L/htlLbC9YjftNVj+zG8vVk7u7ynjAWh28aOrCYkDdyS/BzGRc1Q8
         uX4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=cOYG38CUdckNFnwHJHo++ePElnN1zXnfHM/vkk4ZyI0=;
        b=Puga6GSVs03/9lPR31+OjnQQwoohcm1bjEcvQODvhhUGW4KSOPs49bpW4P9p0Iz5Y3
         ErCpIoYs5PjxDzJkNoEzOj6C6IVIvdvh4+aTK5M/Nvo+Kxc3odRk1NKH4YqzulqqAmD1
         kPR9ulFcfLErU+A8pFEQrqjcAlHbcGTGK8RZLEKxJ+AF9GxGJ8spFQEwmA2N3VnmVypK
         WuO42spUQskxS4Ht0oJFFg6yj//QMGbV4+241u3rRQHAKc2RR9BTWJseztWSCaoYzD1b
         7gBaHJAVam+3nZAeo3cFAyycetyDGvWuv7EYw4CsNTpPsM+Mwv8Y9vp1Waqm9r/+sjQC
         NENw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NLlkrh08;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id n63si600730oib.3.2019.10.14.07.24.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2019 07:24:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id p10so16027117qkg.8
        for <clang-built-linux@googlegroups.com>; Mon, 14 Oct 2019 07:24:27 -0700 (PDT)
X-Received: by 2002:a05:620a:2193:: with SMTP id g19mr30845981qka.184.1571063067173;
        Mon, 14 Oct 2019 07:24:27 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.35.50])
        by smtp.gmail.com with ESMTPSA id v85sm6725977qkb.25.2019.10.14.07.24.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2019 07:24:26 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 6145F4DD66; Mon, 14 Oct 2019 11:24:24 -0300 (-03)
Date: Mon, 14 Oct 2019 11:24:24 -0300
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Jin Yao <yao.jin@linux.intel.com>, Song Liu <songliubraving@fb.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH 5/5] perf annotate: fix objdump --no-show-raw-insn flag
Message-ID: <20191014142424.GI19627@kernel.org>
References: <20191010183649.23768-1-irogers@google.com>
 <20191010183649.23768-6-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191010183649.23768-6-irogers@google.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NLlkrh08;       spf=pass
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

Em Thu, Oct 10, 2019 at 11:36:49AM -0700, Ian Rogers escreveu:
> Remove redirection of objdump's stderr to /dev/null to help diagnose
> failures.
> Fix the '--no-show-raw' flag to be '--no-show-raw-insn' which binutils
> is permissive and allows, but fails with LLVM objdump.

Thanks, applied.

- Arnaldo
 
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/annotate.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
> index 3d5b9236576a..2a71c90a4921 100644
> --- a/tools/perf/util/annotate.c
> +++ b/tools/perf/util/annotate.c
> @@ -1944,13 +1944,13 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
>  	err = asprintf(&command,
>  		 "%s %s%s --start-address=0x%016" PRIx64
>  		 " --stop-address=0x%016" PRIx64
> -		 " -l -d %s %s -C \"$1\" 2>/dev/null",
> +		 " -l -d %s %s -C \"$1\"",
>  		 opts->objdump_path ?: "objdump",
>  		 opts->disassembler_style ? "-M " : "",
>  		 opts->disassembler_style ?: "",
>  		 map__rip_2objdump(map, sym->start),
>  		 map__rip_2objdump(map, sym->end),
> -		 opts->show_asm_raw ? "" : "--no-show-raw",
> +		 opts->show_asm_raw ? "" : "--no-show-raw-insn",
>  		 opts->annotate_src ? "-S" : "");
>  
>  	if (err < 0) {
> -- 
> 2.23.0.581.g78d2f28ef7-goog

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191014142424.GI19627%40kernel.org.
