Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBB2GAZ33AKGQEJINLAJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id B21551E977A
	for <lists+clang-built-linux@lfdr.de>; Sun, 31 May 2020 14:17:45 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id v186sf3649686vkv.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 31 May 2020 05:17:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590927464; cv=pass;
        d=google.com; s=arc-20160816;
        b=lW18+W0gwoZk/XvsHl4PWgz0vEme5Kb49s6wBa5axN8EblzezNKixGuoPjnjzrrXaD
         D9r/R+IRIDBLJ7KhBTlge5O6jQeuPBXSP76ofwLko77RHI14DVc1+NRQI7YhT2eUML2T
         mbjK4xJDw6KrR9UlCKGCJx9MfBRtP13ptu8JQQizjzxWAp55akYirHWzGgcburRq773H
         SS7HwTshaasprmqGBPqUpSx4HIO/dByQKCmMxzEVqWpq7BOIa/m953K7EEJoUwTFtkzT
         TNMA+h2Hk8nwHGJRw1ayRxb0LisWIdaSBr9jsYifBGGdAHcn3bjXp1XEZt2fi38dzMvv
         KVPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zkh/mIYTnLqlG1s/8NNB3Ph8xI2ZPTm3VYZlolG/ee8=;
        b=fG1Sze3iWqQ2rGvxDYTRta0AJBqfcTZHQd+c6rsmoJkAThUIuM6AX+QI57FFMW3wy4
         O4AobTWSR+G0pTeYvylpqf+JumLLr+FYyg/IrSok6dD1pUmfA/DNtb71vWku71iGkTtn
         nQjj3bXbXUaqw5MygUjgIIQ8Ho7C+gh7lSKFkkgOIjsM5Xh7/j82zyL2K0JESwnlGm4w
         6I/f5xzoaveFGQzFHQOUu4gyPYSAFJWMzk4kRGw6PPJ5l03CmyTstLYhaiCDwSMLqtVH
         l7koALa8jbgprWyNL6SBK8LcBL0UuMEhaTPIqAEmzdVCkANoIZqPL+T/nMQ0KXmb1zzi
         zDeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=l0n00xg5;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zkh/mIYTnLqlG1s/8NNB3Ph8xI2ZPTm3VYZlolG/ee8=;
        b=BilYaSafVx67VWG+W/XNnBATy/+hkrAOrhGaTshzVOZLxRe1eOVYCtd399dcASpiXZ
         lZv6Bk24recCRJiGC0h4+pnl/xKaKc+QZyi24KqErl8gSYN0qzqy+3Cx+lXz/YuEJD1Y
         CL/zkLUWRXBUiQCjnkMa5B573JLOPQzm0LAxDcKiAzaqhiRWUQ/m3OAdsNU9KmJjFYGY
         Uz6C+/g5NHGMj0yoVzOcvlqvyH+wFOElngtQfAdZBuKnaNgeJ+1i+B9gGzvRMLWO1MSc
         iPFBUlUQif2yMkoU4i5oa9qyeHEkwLx0IL4UP2+gHD18H0+OrobOMUNircHrCqyu1Yi0
         IAgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zkh/mIYTnLqlG1s/8NNB3Ph8xI2ZPTm3VYZlolG/ee8=;
        b=Qbxhe/ox9YugNLQ689XnylDBhQzD4CJSmY8aHmZTXBicO8j7XVDvVvutMA+UaYXWj5
         tR4FQ45coLSwASGu3LLlBdSsoh+5WiIMkT4ukw/2wMXeV8CPrjhTf1YvSjrGuLamnu+G
         L42i5M7X1i2v+/tOhrLZMP5zM2KHoTxRGj6MKQPBGcTuYyj6AnmLsK1lu2jnhip8bEIO
         X0iQ4CDayfgfzlDXEznUWfDeuNkjMBIelrhYZFBRxZ4gOEabVat+rbNpCdobqhkfUU/1
         hplIBZO1M3a5V6iH6oVDxn0kg38eW2ntGZyjjQfRLYrrv9gt1cTJ4j7qeZ5dg42+/b0h
         fCvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qe0JK9I6xmBjaUE+5itzhZEHeeKFLcEpw0mErXKLLnkgIEy85
	ZvNc2cFByezU1haxOXoC14o=
X-Google-Smtp-Source: ABdhPJyMuGMDAal2arVUFrlqNR8udW6Us/QhDU63oMwGAuzeY8rBbOShJMp47F1fHkrkxMw1KDGp8A==
X-Received: by 2002:a67:f1da:: with SMTP id v26mr10882535vsm.46.1590927464503;
        Sun, 31 May 2020 05:17:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:5d43:: with SMTP id r64ls1159552vsb.4.gmail; Sun, 31 May
 2020 05:17:44 -0700 (PDT)
X-Received: by 2002:a67:f356:: with SMTP id p22mr12000551vsm.130.1590927464186;
        Sun, 31 May 2020 05:17:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590927464; cv=none;
        d=google.com; s=arc-20160816;
        b=znRx5P48feg4WPcRdEnup6q3Yfo5JD2Af+Ku3To9Dg78CVc2ADxGypxsQmUdurPCZV
         tZ7LrMfT3n+g1p9IvrKUTkzUPa6tC3tv1JEF0iF3acRNc4wZGrTThd1mE2WGpEheOJvI
         Mbibaym9fX6cEu/AKtp5oGHgQz10/ROIAeZuj+Zne2gV+3u/eD7Y8ffjCtKY2aWZA/X3
         FrF0ck6bx5vycglZsBz2L9H5fsOCZCfFio9jfwMTdXI+QMEyaDQif8a1+GL9nrgcZN9s
         vHqIwQB1nksixS7+JXOTwMfG9gi73phTmkUqFJ2sS33e69oQb1dF6EXsjDfDdNtAAomA
         jBzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SelEb2W3c8G/Ykpx5L8GwwvIKHY8YvVz3P+oRnLrzms=;
        b=lOXeD0N6PY4Oo/4OK2Z6915T2EWLNJxKhXuNjt2wZOM0v4TZ6KqZHJvU1ZxsgK9HO0
         YfBK5H85rbLMURn66eeizuQkSsuICKQpfr3WLMHQ8/J+eQkcFyjWUgM7UQFstMx5o7H3
         xRadoymbqm70JC4cjpZbf6uzNNZRLU0x7jYwPz248OyKnBm6OTRRAw7mx1Bl3BAMabJX
         yUWM23BVOfY7kiCp6I4F6dVcCgU4Qfn1rmSkd7gJWL4URuR4euRzhixhb4amyewMxGQ9
         bmTnQfgFwbnyHwnPKKm3wTwcJAu75ZPPZT2fXcdwPH/so3t3zQS2VVkpq6gKTN9/gbeo
         HlDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=l0n00xg5;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s16si814115vkd.0.2020.05.31.05.17.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 May 2020 05:17:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AE701206F1;
	Sun, 31 May 2020 12:17:42 +0000 (UTC)
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id D1C8E40AFD; Sun, 31 May 2020 09:17:40 -0300 (-03)
Date: Sun, 31 May 2020 09:17:40 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Quentin Monnet <quentin@isovalent.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH 0/3] perf test: Unwind fixes
Message-ID: <20200531121740.GE31795@kernel.org>
References: <20200530082015.39162-1-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200530082015.39162-1-irogers@google.com>
X-Url: http://acmel.wordpress.com
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=l0n00xg5;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Em Sat, May 30, 2020 at 01:20:12AM -0700, Ian Rogers escreveu:
> Fix stack frame count and memory sanitizer issues when running the
> dwarf unwinding test with the elfutils/libdw unwinder (libunwind
> disabled).

Thanks, applied.
 
> Ian Rogers (3):
>   tools compiler.h: Add attribute to disable tail calls
>   perf tests: Don't tail call optimize in unwind test
>   perf test: Initialize memory in dwarf-unwind
> 
>  tools/include/linux/compiler-gcc.h       |  8 ++++++++
>  tools/include/linux/compiler.h           |  3 +++
>  tools/perf/arch/x86/tests/dwarf-unwind.c |  8 ++++++++
>  tools/perf/tests/dwarf-unwind.c          | 11 ++++++-----
>  4 files changed, 25 insertions(+), 5 deletions(-)
> 
> -- 
> 2.27.0.rc2.251.g90737beb825-goog
> 

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200531121740.GE31795%40kernel.org.
