Return-Path: <clang-built-linux+bncBDEPBSN75UNRBFGH3LXAKGQEC26PIXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4191054D1
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Nov 2019 15:47:49 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id i124sf1418636vkc.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Nov 2019 06:47:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574347668; cv=pass;
        d=google.com; s=arc-20160816;
        b=yKP5X5r7s4AxHuqG2BCfDDctDZgSGvm7QdWtx1QGN9vbNLjqVYvRKLDV8hMqjUvhCU
         YBh4VJoOeo4kaOGV002gPQ+O6yYo+5mBFrwTrpahlLuHvnBrK/gKU4knOwBvBq/tImcH
         5QT6d53Ia/4SA5WN1K31xswrsFjijTVdN25FK2otxOBf/xvAvImzVnUQWaVbY1/ujtnG
         uStXcyx0ldarmzvYKX+sXR+hL8eHohV7nKImdfhiWNRfrAUUY6H/Hd0bzekWvN6/ABJV
         y5zzpvmPN99uzC+fyemp8okLrvLdevpJvCyp9zdqpU34sMoKDe1KhZ3kk+tt6We/VBgA
         POFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature:dkim-signature;
        bh=9U4V30oEgAOCb1I4eubKJNzemXWNe9TbDBUu733Aesw=;
        b=jdYUf3hO434gOcToUBS1ABoUSjX6O9GaCZEwka60kEBCV2MaKE3xhzAy+ONjC8h/C9
         X8/lEufhwiIQ3GoC84g6F+8IyhSAolxfgAb8u1wMlyQxYca4tbFUmrs40IbL++BI2OVO
         PIJPTe1f7tcoyHawZqXwpGnPC//lPEog88Dgw2/EzKhgQd21IHM+illLA6nIitqAG0kl
         Duy8ig4t/K/9ETGNg8kF0Nabs3GCTzWa01AuxhzjQirVOzFbejxPtcXRwge0kszIAR1y
         W2zhNAKfNmV/izozr8bHyRfmFTD71/bKoC2YBax9Z6g6EXG6UBnmKxDSaUuapijqlQ3X
         nLtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mjvLZw7a;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9U4V30oEgAOCb1I4eubKJNzemXWNe9TbDBUu733Aesw=;
        b=rV8rM/X3MAIe8MGXNUGo+bfFsGPWiQnjt/8AuQaINRYMg5koINkb3YlpFmx4pbk86D
         s/dAnvRRfQGdWvaJCcVtuxM433hDtS3gCjIx7VTE2j0cBJY1v1vk5PCW/9Yo/A4xVorl
         FHqtJ8RjNKKiZ8eE9ZalLS9qclsN71HdIbdzoGGIY6+PN5UWzaYD2jck1XjpSDmfnnzv
         p5fVp0tph3mgGl8bfx79nyr8mfbTIYzgk2XzZP+1o4iaeIsxriBA3h4jCSKq1O8Kpy+8
         i87ddLX4Q411RPEZuGU965fT+VSXcaMOrN+xYjWDzhr1lojdyLK+yOPA3tgRmxqeAFNU
         rKPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9U4V30oEgAOCb1I4eubKJNzemXWNe9TbDBUu733Aesw=;
        b=WbVQerQ9tmj9Nkro3JGOVDxYsSOenvpgiGFRaONoNd96kJJ3KQ0x0AosWiqPycXF2+
         u8HIKUcqMasupfANhdHU2bG9IdBbRZkheDy9Ab4xjnDQzMLjXwD0vTSdsh9+3AqyKiP6
         lYGUgZ4ZKed8c7IPXXK2KJXmwmaZUtnjl4xqimSXQKJufr4U/prfT2QL2IRGuMaFzfdE
         WRuR3LIJlzfcsM3rocTnCWvao0L6VcSq7iufvh/Z0tIyNjXcSspxcANsDxpkdEs7fh23
         NSp78KHATbBjp6Ux/j6CdUpUllZEscBh+daVJaec4vToFk8XI2VOi6sJMfvVnv1Yp3hg
         ZZeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9U4V30oEgAOCb1I4eubKJNzemXWNe9TbDBUu733Aesw=;
        b=aAJVyKCMeDJbBBxi81HafEQvgPlX/675QIFRlMEwRCxhBaYOChW8lBtJJkhhCUsmyw
         gADWOunvbNjQlCLCjOSlP1nSWNSYszMpsNnC/+2MWD6h6Qb6N084hyVyOiNBekj4YtTE
         5y+AfGafpOKQacBFO9b0SH6FHtSydQqhajteG324MjXwFOqMKIqDvr9+4e7VReaEoq+a
         tbjNeF42Q6lRRsCDEgWzhvyRdWZ39rqygSQUr7tVXb7RuoKjPPmHs8i20H5EGD185a7g
         GAV/QB/MrQjRfgPU32BQk51390k+smiYfo7BRbduHidxWjyY1e3c92YaMPmpt51zS2FA
         +HBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUiHO6CWO+FpkSgzHSYm1bwStNq4oUOtklgGplYzBRbmhF4R3dL
	5+fUvfYAvafQhPC9A62U0OE=
X-Google-Smtp-Source: APXvYqxcgdvVkMFpHeFx4pSrqyYTSPADLigMOEE6sDo9f7TMSZfC4a5gUFQKMTRBE7RDrh48Tm8h7A==
X-Received: by 2002:a1f:e4c7:: with SMTP id b190mr393006vkh.96.1574347668486;
        Thu, 21 Nov 2019 06:47:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cdc7:: with SMTP id u7ls329205vkn.13.gmail; Thu, 21 Nov
 2019 06:47:48 -0800 (PST)
X-Received: by 2002:a1f:a752:: with SMTP id q79mr5836261vke.67.1574347668002;
        Thu, 21 Nov 2019 06:47:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574347667; cv=none;
        d=google.com; s=arc-20160816;
        b=VWS6jRHGobwxj4pcZOEQ1k9daKJ1gGLasB0ZTvRu2AsTtO3wob+Z9lhndHpTAR7IkB
         1q0dKgLhF/0b+z+hSzcZV4+RACKt/auwfW1CkmWtn2ThUTZhyacgri/C2z6OWOdvvBmE
         D4IPj0O2ddo34+SXTIYdo+PYs6I2mC4JRLuaZQJJLL6xUjrGnL/F3SB+kqD0uJhuVFF+
         vPKx3sSy4NsAT9gXFwN/EW83UfykoQY1LrShx3OLARyiwOG9XXQA3UPhrjWUxZe0uDeZ
         6be+POLiyc3TWs+JaKQk4NG3uE4Yz2hn+hFr56aZ7o1h4y/efVpp2LbXpBfUvSGKBwen
         WivA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=9vdcmn1+3xWMnRDagEegM970Sjr+dGziiJdK5fsuiiM=;
        b=KYBSvJwq08KPZw9aijmUgj26PYgy85GBPiGX7jLVmKHCOtUfpgxG1rlvjoNHeVcmeO
         kPEBEcad97XWkuwAJ9Z8hlgWNbl44cco6EiYPK3RA+4Ort3Ub8Apr9RIBycmHatst76d
         usAG44/kXjU9E8rrzoopNrR6oy/x89ZmuK1yAqADM72hrX6OxP6NmrRcZdoObG2XPvrA
         U7q1Ho40xcX4AYsH9e+8GuL/dPbKaTJpSSK9rlJKIP3eusFPrmiEszWB37NbN2T+l1Oe
         xq/G9ZIy3jyfmlqdo04gQppmvgmvlkNK0RF5mTpmkaWvQA9B2jazZNWmwJleEaURC/6W
         yzEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mjvLZw7a;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id p21si149109vsf.2.2019.11.21.06.47.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Nov 2019 06:47:47 -0800 (PST)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id p14so3217961qkm.10
        for <clang-built-linux@googlegroups.com>; Thu, 21 Nov 2019 06:47:47 -0800 (PST)
X-Received: by 2002:a37:f915:: with SMTP id l21mr716881qkj.209.1574347667475;
        Thu, 21 Nov 2019 06:47:47 -0800 (PST)
Received: from quaco.ghostprotocols.net ([179.97.35.50])
        by smtp.gmail.com with ESMTPSA id z6sm1012802qkz.101.2019.11.21.06.47.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2019 06:47:46 -0800 (PST)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 6937840D3E; Thu, 21 Nov 2019 11:47:44 -0300 (-03)
Date: Thu, 21 Nov 2019 11:47:44 -0300
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Andi Kleen <ak@linux.intel.com>, Jin Yao <yao.jin@linux.intel.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH] perf tools: fix potential memory leak
Message-ID: <20191121144744.GI5078@kernel.org>
References: <20191120180925.21787-1-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191120180925.21787-1-irogers@google.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mjvLZw7a;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::743
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

Em Wed, Nov 20, 2019 at 10:09:25AM -0800, Ian Rogers escreveu:
> An error may be in place when tracepoint_error is called, use
> parse_events__handle_error to avoid a memory leak and to capture the
> first and last error. Error detected by LLVM's libFuzzer using the
> following event:
> 
> $ perf stat -e 'msr/event/,f:e'
> event syntax error: 'msr/event/,f:e'
>                      \___ can't access trace events
> 
> Error:  No permissions to read /sys/kernel/debug/tracing/events/f/e
> Hint:   Try 'sudo mount -o remount,mode=755 /sys/kernel/debug/tracing/'
> 
> Initial error:
> event syntax error: 'msr/event/,f:e'
>                                 \___ no value assigned for term
> Run 'perf list' for a list of valid events
> 
>  Usage: perf stat [<options>] [<command>]
> 
>     -e, --event <event>   event selector. use 'perf list' to list available events

Thanks, applied.

- Arnaldo
 
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/parse-events.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> index 6bae9d6edc12..ecef5b8037b4 100644
> --- a/tools/perf/util/parse-events.c
> +++ b/tools/perf/util/parse-events.c
> @@ -511,6 +511,7 @@ int parse_events_add_cache(struct list_head *list, int *idx,
>  static void tracepoint_error(struct parse_events_error *e, int err,
>  			     const char *sys, const char *name)
>  {
> +	const char *str;
>  	char help[BUFSIZ];
>  
>  	if (!e)
> @@ -524,18 +525,18 @@ static void tracepoint_error(struct parse_events_error *e, int err,
>  
>  	switch (err) {
>  	case EACCES:
> -		e->str = strdup("can't access trace events");
> +		str = "can't access trace events";
>  		break;
>  	case ENOENT:
> -		e->str = strdup("unknown tracepoint");
> +		str = "unknown tracepoint";
>  		break;
>  	default:
> -		e->str = strdup("failed to add tracepoint");
> +		str = "failed to add tracepoint";
>  		break;
>  	}
>  
>  	tracing_path__strerror_open_tp(err, help, sizeof(help), sys, name);
> -	e->help = strdup(help);
> +	parse_events__handle_error(e, 0, strdup(str), strdup(help));
>  }
>  
>  static int add_tracepoint(struct list_head *list, int *idx,
> -- 
> 2.24.0.432.g9d3f5f5b63-goog

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191121144744.GI5078%40kernel.org.
