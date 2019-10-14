Return-Path: <clang-built-linux+bncBDEPBSN75UNRBB4ISLWQKGQE4VI3API@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 64340D64F6
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 16:19:52 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id 206sf13878144ybf.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 07:19:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571062791; cv=pass;
        d=google.com; s=arc-20160816;
        b=mRsVSsJmE4Vbdu78giJ1Kj/Zs3GTYWYa00tHBBNm+B2p1ZrrFBfHFfLUcW5n0r/4nF
         jXsabPOBcaRMLDrAiB6m0hsGVONL8FzuB9w+xuL95zLIE4nHEGT994BKNbT4Slmg6hzJ
         gqWiJ7YV4KUkGSBwEaIjN1xU9RInInZLQ2GM6Bv5LVI7RQ+abIOIxKQ9/41m9RG5IvSv
         cO6Zu0pm3QjOIMvzFVy8+KfrZ0BR0hpLH565EhzsPX3nqjRgiEHp0ERKnvbRNHVR/phT
         JKCVv7CcSakAOwJTspc4a9ixS2N/EYB8CBWdiWXEgbEqmQzJB4QAs17YiWqo4awYhqM9
         NcfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature:dkim-signature;
        bh=1DvM9/rwucWAsPy+EYvw8HGWDgnj894ExmQxz/r/WDE=;
        b=EsnGr2GDrDT0WvAx+r0ZKnXIy3K/qeezxa1+r8i7X4Pgu0k3CLxHep4+3iJo6KlXR+
         B2h051E1xfckiwK8qQ0lFRPyImy1fV5sJYmkIF6P2pFBha5lumX3VakVpsvXHg5vPNm1
         ioks1GZ/vU65LUmK+US17abtpA6E/gj31D1GWXbBBE5OTi6kA9sHchLHpi47oDOXmR4N
         CAnOxV/RA+NtwUt83DZugKN95H+LQjhJj8r297fJuCaGCt6PWVz6Nyjvn/GbNKmBjZW2
         /1XcrJAU6EpRzzXGzQi/ctmnhN9Ty9bmZ2NLyFO/FcDjCTco9FB9yyEvP/8YwXmW5e7/
         IfEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ii2SJOq4;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1DvM9/rwucWAsPy+EYvw8HGWDgnj894ExmQxz/r/WDE=;
        b=Ki7JuT3HlVMr1NnvRYdZ2sSGID2y7QJUU8pzvqFoMSoh1EKExmwwc5IauqLY3fL7ga
         FD9TE2VR/3h7rs9yIb7E90ALrACs8NdEIcsrLv/6ID83+V/b8MYH4fqbP5p6hkJl6LUt
         +f58EubJk87s3eExxhds5RTQbQxzoc9I1pXKV3QyEoQJyj4Cly7/FEmzSaZiUffoaZzx
         QhJXXQZX7n/USEpbyOMxc5TgnefHmwowug8dKyAFbAQ9uZQ0B0UFFBQbrRvFijfhYhfi
         Ni66wiSNyvw+gov+Op36j/o3pxZ3M5Mji+8JwY2vQ4a+1LVKypdkbApzQPlJT+QHibKk
         KnnA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1DvM9/rwucWAsPy+EYvw8HGWDgnj894ExmQxz/r/WDE=;
        b=hkUHY0dPB/7khnHRfOw2O6R9r1n23O0dGz0OULRzzMKlat28ydMXa3MxSuNy/OR+yq
         WJ8gxn9UoGDXoetOi5eM3Z60bePrYrLgNbLrAEflrGV8cS/cWW7EK5xDxODGBgIx9J5z
         uX9NtaBlcVzFS7jrKubTI+Vs2fpFuhH/xAUjJF6814bskwDihjTCQioy00vQGyp7ac8U
         ReS2a2mJIOmAEEoEVNiVRvfOdmIUdDz/UWvnj8cQ/ikG2UQFLqDM+0YRlKYOzGPdbMrd
         Ydtl6n1Xqo3Y4YUF2gyi9Qufc6C0Vu63iLNVk+qweq8dw33cJxmonDdSh618JIih6uo1
         7/VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1DvM9/rwucWAsPy+EYvw8HGWDgnj894ExmQxz/r/WDE=;
        b=lFri0FqzwAunZoeel1W5lWtib4/ek3EsnIzONXWHv2YeMR/R0fGQdKrBVGGdhEYWtM
         TgWnRNcCSH6JC87dWAjrkuHq5jSIqfzaomMPj6iMBXGRKyFFVUSL2mzZbqh3tZzmVyhS
         H/TDv4m0ek9MWmyfSn/SHjhdlFnslrwh/BBMXWM6MnTLNpCoQEPkE2LJGD+yWpzF5mTV
         VvaGCyfqXPVO1hS9b8eIRg6vIrvDilw/QP5rzkAjO0mEMwQ/IC08p0MyRHllUf9WkKIc
         HeRxsysZnNI1vUSKhwawBKKIzb29wgckE5ClMqIAyEIYCr/RDc5l7u2BOXPgNGBzMNkI
         p3aA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU9VD+KSMAhLxII6onexRkhxK9X/zd36DBYaQblnaKGLMs8woZY
	vYbsyTKcXw3EXwtoshOu80U=
X-Google-Smtp-Source: APXvYqzN/dNp8H64QJlPpPtZhs+/LMMf40Q3GLGY71xvRn8m0XszuRFBaLKkd9A6D1ySTVo1pkHkPQ==
X-Received: by 2002:a0d:e8d0:: with SMTP id r199mr13152402ywe.212.1571062791331;
        Mon, 14 Oct 2019 07:19:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:6ac3:: with SMTP id f186ls2013138ywc.8.gmail; Mon, 14
 Oct 2019 07:19:51 -0700 (PDT)
X-Received: by 2002:a81:4e82:: with SMTP id c124mr13544603ywb.249.1571062790986;
        Mon, 14 Oct 2019 07:19:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571062790; cv=none;
        d=google.com; s=arc-20160816;
        b=jN3h6Ub2ZBuLNTJduKKtQk2ZTBFWNNXRFXinMhBkBjMKXMV+mAmUYAxRfx2J7QpBlB
         Lx/dgfpl5psvtuu5WXCny/qY81fHXV5AFosyPluSh1ATMBZgh12hYJDsJWWwSTt2ZqNS
         sPyMHilOXtoBcJEjqYYLEKWUjpWxh16yxtUTL0+uwWEuf1t4W0OTKyuxb6eCTkhYVuzS
         MGzcS76sHNSCICKVuLqrouh/sqGnw1Gj14h4fl4E66E9ZnlnaWff3x2zm7fl0j6UYXHQ
         44TJbQEueW3k9qBcIxOXlvJTNZwzCpZ93xQt5FQ656sG0WsBI3mrNAUFd+YrV3WTe1cJ
         uY6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=CQjbModwl3zkXwdwmKJ4bMoReVeolUFu/id85D1bDew=;
        b=Fw67aR8e1CLzWuLXndoJaLrHrwKtWkNoOyKbVvPPtb0w/eIcIOmw/oPCHnWLTBgpr3
         wRNyLfgP/OFfOVCZy8r+CbFsgXJ05lLsARHrSM+1mTIuN11KQmdIvw5Ebb/MlLi6GoaV
         xLUmJkZzPgIRMWYSm/HeMYaQdPse9S6p0w68LBhm/ojjIKkun72yOsM4whoGV81MR/Tf
         T8IS3H6NDHHHYBmSi9IFiT1FnTt+F70RNUksrab342kC7do7hIlfnYVijMdLeRm+DJ4q
         HrR6LaRClis7dY7qILMk10n91D98qdRn2wdLfem5H/wex0ePmPxp44xmlGFkzo/TjGWf
         NbLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ii2SJOq4;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id a1si1202887ywh.3.2019.10.14.07.19.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2019 07:19:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id 3so25713223qta.1
        for <clang-built-linux@googlegroups.com>; Mon, 14 Oct 2019 07:19:50 -0700 (PDT)
X-Received: by 2002:aed:2462:: with SMTP id s31mr33446165qtc.40.1571062790505;
        Mon, 14 Oct 2019 07:19:50 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.35.50])
        by smtp.gmail.com with ESMTPSA id m186sm8541598qkb.88.2019.10.14.07.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2019 07:19:49 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 08CE54DD66; Mon, 14 Oct 2019 11:19:48 -0300 (-03)
Date: Mon, 14 Oct 2019 11:19:47 -0300
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Jin Yao <yao.jin@linux.intel.com>, Song Liu <songliubraving@fb.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH 3/5] perf annotate: don't pipe objdump output through grep
Message-ID: <20191014141947.GH19627@kernel.org>
References: <20191010183649.23768-1-irogers@google.com>
 <20191010183649.23768-4-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191010183649.23768-4-irogers@google.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Ii2SJOq4;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842
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

Em Thu, Oct 10, 2019 at 11:36:47AM -0700, Ian Rogers escreveu:
> Simplify the objdump command by not piping the output of objdump through
> grep. Instead, drop lines that match the grep pattern during the reading
> loop.

Thanks, applied and tested.

- Arnaldo
 
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/annotate.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
> index fc12c5cfe112..0a7a6f3c55f4 100644
> --- a/tools/perf/util/annotate.c
> +++ b/tools/perf/util/annotate.c
> @@ -1894,7 +1894,7 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
>  	err = asprintf(&command,
>  		 "%s %s%s --start-address=0x%016" PRIx64
>  		 " --stop-address=0x%016" PRIx64
> -		 " -l -d %s %s -C \"$1\" 2>/dev/null|grep -v \"$1:\"|expand",
> +		 " -l -d %s %s -C \"$1\" 2>/dev/null|expand",
>  		 opts->objdump_path ?: "objdump",
>  		 opts->disassembler_style ? "-M " : "",
>  		 opts->disassembler_style ?: "",
> @@ -1940,9 +1940,16 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
>  
>  	nline = 0;
>  	while (!feof(file)) {
> +		const char *match;
> +
>  		if (getline(&line, &line_len, file) < 0 || !line)
>  			break;
>  
> +		/* Skip lines containing "filename:" */
> +		match = strstr(line, symfs_filename);
> +		if (match && match[strlen(symfs_filename)] == ':')
> +			continue;
> +
>  		/*
>  		 * The source code line number (lineno) needs to be kept in
>  		 * across calls to symbol__parse_objdump_line(), so that it
> -- 
> 2.23.0.581.g78d2f28ef7-goog

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191014141947.GH19627%40kernel.org.
