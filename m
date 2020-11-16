Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBB5HNZL6QKGQEJ5EWT6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3032B4CCE
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 18:29:25 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id 36sf7795112otu.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 09:29:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605547765; cv=pass;
        d=google.com; s=arc-20160816;
        b=HDnuOde3cq8ph+VRzbzkVvqbzshdQnaC/FYAR7C16EjQccNedM37l9h99g9X4neS1u
         dTnEy5Xd0K1c1BmlRs6Tie0njpWg+gRbL4sP29ln1uVzyQdS46l5FxB5q9ychzMCJW/N
         eR0JcbiROl6Z6cpxExCwQ7fvCgSVnd/mnUcXlsbtnPGl5aNvkySNnihiAm8g8mKvpnLs
         jntH7rnGOTmBDSdbDPjwlk0Uxvg9HZEF+2GyyQiD3UMoiNYbonKgXp493SqwBK1xuJ63
         vBUEiSk/3lGy6giq5NvMIZf50Pj3eUoJj0DygDUjC4yRfbuaKey3KdNIButxsY5bD3Yw
         abmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=WOId7dkFSshqwdIzizLGREnAsuktqB+StmUOREHZnds=;
        b=YzJHiuGGhOA3ru4eidk7YndC3dxIx6hu9WLpKZHsoswACktNhpI2nV/hSaadZ9UUeb
         M+E04wNz9oCHzwwugqG0+/6AgOYamc/VB97tC+lV2Y9odYJG1vGvuMAfwJfTiVVqD2Hf
         4vY43c6MLfJV+sAmORv6d3BTtMD4k1pAxHrapvAwoHSPNN0Sk9hs0OyaVFk5AtMzlIy2
         tbKb0YMWGrHqWe+5XEC2lpbMS4KqF4ScqR0K44b22LVhqHMHIz4lRXgFiZbT1jD4tjmu
         Zqozhp4GnHLqOq4ngB90FvVQzN8/FrHqcbV57N8S1brXwQcSRgHclmObbbhURBE0iU0v
         x3tA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tPhJ636O;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WOId7dkFSshqwdIzizLGREnAsuktqB+StmUOREHZnds=;
        b=V1jGdZVgY7hUmiuxFzkC4AhvtYgLcRtHR7J6Fxru7GM6Ij12CPf73V0p7wOHfBI5IH
         +YFP4IVpJTg03VhYpPTFiPAVlmtXzkn2HhUF9utgDYnXXYgzFyg9UpPqGR23mowBsbAs
         Y0RWXKlIsVyScsH6ca0H1Pej0sAPdYX66XAjSRspj+g7DGjd2PqZKOxWHiOaxMzYOKt9
         BKB4QPYGfEGIsGFfjnxw0W9lQ2nlw9fUYhk/hd3T+lcvLspeFVrnNzWSDlCzwBdw0gQi
         z44mn0du1lHUZbHCHi3R4VswBOUBbCesUe259wmE7lD3hUpT+kB9T7YHpJPzJ7TKcndw
         vq5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WOId7dkFSshqwdIzizLGREnAsuktqB+StmUOREHZnds=;
        b=kzMAIeoAxR2lY5NxofMKO8A1wYqj4c+ragrVAPw9ktia+AiG1bN46w5vtsHbLSpsBJ
         231mIdUjglG7zSM3qomRsfHlEe2GtZIF0tsWD5r/eUcfqsBplVwr6Rco4+GnYqPsxBt8
         cDxbdhkFK+aR2864614KkhIU6QKxM8VszEdnvI/+e5ItZrSguHxmnx9RHOCF3Hfu872E
         imfb3Qg55rPu/6M6lratcLlEGkImTxvuF6lKuSGNGqLit9DudY4NRA/33v2qfMwr+gEu
         YQy9uINxMZGZ2F6pQc0JGjG6DwKLqG7cjRT8+Ag76juc8Ko2w679ANGfga3sNmGIAKx/
         0QCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xsBqSBonncAxdOmo0Gp9MB1YT5DG0BgVaJsBpasNkHiI5GlTm
	/FXOneqkt8gqD+wUJKx9zfQ=
X-Google-Smtp-Source: ABdhPJz+2rFQwry7dEd3vxQ7mLURkeZNenR7RNsCK6l9WMOyfUrCTVr3Q03Mdx7rktIhdOnESljEIg==
X-Received: by 2002:a9d:6f91:: with SMTP id h17mr270381otq.224.1605547764970;
        Mon, 16 Nov 2020 09:29:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1917:: with SMTP id l23ls3361080oii.1.gmail; Mon, 16 Nov
 2020 09:29:24 -0800 (PST)
X-Received: by 2002:aca:ef03:: with SMTP id n3mr379171oih.75.1605547764637;
        Mon, 16 Nov 2020 09:29:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605547764; cv=none;
        d=google.com; s=arc-20160816;
        b=QAqc/6Z/GkxYtjKRW1oefGuA475qbnso4hVa88pMiVEJPhLAa7C6Q78wMEmzzkHk3R
         6uiFtQungINMBfEK1Lpd7vJbQhABIZvK830saIev0fjyC73hUW5dH1dOsQ4HT3a2enge
         6lvKLaGIOGMnSCThoYEbjHVLQAYO9zci1rbcMLxo8y7dhQaHLHwHi/C0nRQmbIKLM1fU
         xwz6cTOy9VEPc/AAM9bxcnxpG/AMzA1DJ4Pd46Gl2wA3mx6CkABXdcClfEuhRjY9mNkV
         ZUMBT9E9uLMI6e6sck7NnRHE0/MP8HL1Os0gGZGtxf/zsndrBzjMe0AfR5qQQlRZh9F1
         xG7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sMyrEFe8Be069e3M409Wuj647PPa/khYdaWdZ0Zam2g=;
        b=o1O1dN19wbwnE8VxcegKH+KdTHusDJvYxRkL/XGWgMDwP7UZrLQEAAyZ0ihFVcFcRj
         VkQMHGFUQrmqRlXKATw25MQUOvHfkO+motBIM+l+rNIVnrB6D4oI4pjrNeCCV8/Ocb+7
         Se0tpMOGRhgXwDFd6KVuziXVpNvnNR8p8Ur6Lx97ZuuTYvR+oVhKJs47gublRtH43wgp
         +UmVg08h/QiTmVQBvtNRwojpMOHBYSe/B+GUIJbcPglyyEfOK0AP4Y6nwh5AnDi00NAb
         zyJW5NqMyEiJbauz0WukBlkAeFzukyIJUhOJ91p77KBCLm94b7mXiNBYAaOIpUD3h0+F
         FPfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tPhJ636O;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w26si1196549oih.1.2020.11.16.09.29.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 09:29:24 -0800 (PST)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9EC7E2225E;
	Mon, 16 Nov 2020 17:29:23 +0000 (UTC)
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 95D6940E29; Mon, 16 Nov 2020 14:29:20 -0300 (-03)
Date: Mon, 16 Nov 2020 14:29:20 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>,
	Sandeep Dasgupta <sdasgup@google.com>
Subject: Re: [PATCH] perf test: Avoid an msan warning in a copied stack.
Message-ID: <20201116172920.GI509215@kernel.org>
References: <20201113182053.754625-1-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201113182053.754625-1-irogers@google.com>
X-Url: http://acmel.wordpress.com
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=tPhJ636O;       spf=pass
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

Em Fri, Nov 13, 2020 at 10:20:53AM -0800, Ian Rogers escreveu:
> This fix is for a failure that occurred in the DWARF unwind perf test.
> Stack unwinders may probe memory when looking for frames. Memory
> sanitizer will poison and track uninitialized memory on the stack, and
> on the heap if the value is copied to the heap. This can lead to false
> memory sanitizer failures for the use of an uninitialized value. Avoid
> this problem by removing the poison on the copied stack.
> 
> The full msan failure with track origins looks like:



Thanks, applied.

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201116172920.GI509215%40kernel.org.
