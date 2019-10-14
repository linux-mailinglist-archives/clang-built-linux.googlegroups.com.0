Return-Path: <clang-built-linux+bncBDEPBSN75UNRBKEKSLWQKGQEDR6ISEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 556ECD650E
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 16:24:41 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id o133sf17114750qke.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 07:24:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571063080; cv=pass;
        d=google.com; s=arc-20160816;
        b=M60Zmg6NqTCqLkavxr3naVM/GY8ZxYQWBEAXXt+NcssFCKByxnw4hC8tTYE6UtGyrp
         Jf6cnTxLrJIZ7+Se/NfJxhmNvIEkN4EAgTlt8cPL2Dgsp8idwTpD/hHUM28NmOO95FmN
         y9XcLO8oELDM3XC5YhW/HzlBX0J9Z6IFtUft3aOm0PryKNolfNkNYFCCSXl15dVXG1HA
         7kwySCNtjNIMnuBYo53+PJWB4aq2nickdEQDUmYArWoEQcnP8iU/JOkenOeMBFYp1yOR
         K+ed8T156wNjMJVkUD3RijEho5jI49S4dEu5SONRALdiwQ50VKccIzR8q9QmNsJ0+veY
         Ae+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature:dkim-signature;
        bh=aXZwMLAZHPI18c/gyf1CvXzAxdzonIywdWEznLdcMus=;
        b=J+wMx0u2DX9BAnE1elFJUsxVVLdz3q77naN0exK4Z1afKidU5sF7GEF4XS1Indygux
         6EEJpari0RRmRikr0W0iEETuIQ82T6RhbGZOe0/+wjsXXuAc3eRw7Jq+R7spmCXtF3ts
         Jz8IWPG9uIcXQlMhB/uo6dCEyNdrvn3RjCHevxo4b2LCA7qfuAF4cbRuod+yvN8ywEXR
         AMSJK1RvZQofXdnNQ09iS2gqTd//w9Wm0fSdKN4+c5gwpMspFzU/nUPxMh0ZhfX37wJK
         ZJGUge5bJH2Nm1EEqmjHg8UUQXSZHxBuesTK4gCotNtQl/A+g79i3/6dxnsj7MOvk7s3
         PjgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WXreJVHa;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aXZwMLAZHPI18c/gyf1CvXzAxdzonIywdWEznLdcMus=;
        b=KKQpKRaq9LJgYGSyfypTyYxnwCIO/9276SbBAocjqTbcUV6b1LDV+6g8FAA8dhqTz0
         JNIKF3VHZbMcG1YkPIjdij2h+PHtsPzveUvdV5tqdah6mVqyr0RzhBjalCfclJBzVDuI
         7Pb39b5SDP7182T1S+9ZaflhO7WR6eI6tePMJEzn2thbMB6rKe/bnijm5kVHzCIKHwia
         tA/dy+a6CrlabpsuIQNqLT8U62wnM1lkSOo6HrGFmdslD5uFOrBliXST5tmdu8UXg1Mv
         3pTjEuNKblpK+lJ52JVBd8+LY8V4vPrzBDg9AraXbu+KccS6I5aL6V9XWhe9Bj+tnc9I
         GlrQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aXZwMLAZHPI18c/gyf1CvXzAxdzonIywdWEznLdcMus=;
        b=t/3R7R3t4SS6dBiKz/BC7syLB/uJLrI1s6EoAjiGo2MzpTFnbz+Ux8eXGeiez+LFwQ
         BXsNxFRHMnHmZpbuv+2MM8wb+TbknfPeiViVWeorI/ZKmO2T9pe4Wq76oNAu83L9ZSNB
         IshnMvNOO/ftz6VTaCTMO1MGaXLKbMh4WT4sZBycWl/JIbAfN6BAFv69iUl62lCzptVw
         RflfoqbwtDi+scrP2DyR6WD/zXfhX6etHFVIjlOrJalY4fXgMIgB1GUqKPNmGU2hEufL
         GocIJnGtcDdhOlf0N2dB6WJkJp96K+boPb40lwthT/m+PSiqaM7i7tzm897WFR6UAXDp
         9vrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aXZwMLAZHPI18c/gyf1CvXzAxdzonIywdWEznLdcMus=;
        b=MLBH4w5F4Nve7uxOQ8RlBPIQSiBBIYndBtmdTfshuIK45u1pAKjz47IipSozoTHaZn
         /0d8MyO3IvA92njQxs1OVy4pUW0yKmyO8YTB4wzY8K9VLxsvCcSRve4jffVC/E/TrUi2
         6Jood3Xss1kx3Fu4LgokiPh2iN3oK8Og5EYy4MXvZlBRFbg4iZHZ7xsgmBtqt3QMMN5V
         qxhLX13cNdEOOPsrT22k3B4RdjkrJryeiFelW37bzGIJKjVCYJyKl+HuEs8KEwJqKRnB
         X9q4hjHs3VSa2K0Ui609yUH4rfazfde1y6laTrfxrkAH6c15TXwVq6pRI09s81aclQZG
         mltw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXkZTINwGJpcPdn1LAfNw18jTTV/QZrnYRo6RI3fQ/qG/ohH9FR
	i1nOCFHUWTH5oLb2HrYtP6I=
X-Google-Smtp-Source: APXvYqxomMQC5GGKpXI+/IjYK2adHNjnZgcUUk8AI74h7aa4yY0IwwRahF1LHeMYY5HUvT2zexOf2Q==
X-Received: by 2002:a0c:91a2:: with SMTP id n31mr31621676qvn.182.1571063080338;
        Mon, 14 Oct 2019 07:24:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1a73:: with SMTP id q48ls3963087qtk.14.gmail; Mon, 14
 Oct 2019 07:24:40 -0700 (PDT)
X-Received: by 2002:ac8:2d87:: with SMTP id p7mr32226786qta.198.1571063080035;
        Mon, 14 Oct 2019 07:24:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571063080; cv=none;
        d=google.com; s=arc-20160816;
        b=f1IG9lTIPfj2c3F7QZ13zxmuPojQpsO5bJApl7Hu4Lyj0A+trCpFfjHbfIbh+gze/a
         5yfVxVYCx4ntwDp6JAUjC4vZRAWlec6m4PjYXFLxIMzSR4hHxBxnS1+e3fBUkZuvUgsR
         3InrThSk4Q9JEa4C6lpQ5WVi4L7VP0kU4Q1v84aF9DXkTy1hl585AehZgU1WT3dbT7Ix
         l/cFiY1IGY4Y+pXk3OITPFqdqe0stQXD2kiNNrV7IYoV4m8jUR3chfiELgIt3xsWgwvX
         7XMuW9snwdhJ1Cpu+yAnvByrtmyy4RNdS92Ldws3TMa7qXcI50IA1UTifCnIfhMo2wXw
         7UKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=cNNmD1evnUW4Uuwpv89whDpLgyDeTyku2sEfm+LLLhM=;
        b=CZU5qNdD7rEjfGHGtX8CdRf/x6ryqcEsqF18Cxp/5pzHLuIOn8WpegwDoLrydMgUoC
         QDLwGaMLvW5tH9SynwXnDVPAsZdCAcfHGjvEhnpd4xanpDlaiwCJ7nHipetaGXWD5cJY
         QOsORlhJT7aepEllompiFNG9KWCZ6vG7VVJPD0dTSfpmXZYl5E08wni1/ZmM7zUpjX6u
         bm97a6XJ+gitzf/+J7ajHN1qzxCPUgRNWkVJxFFygsYlJOg1CPsdQbrvsSiDtGSuQEvu
         6yXCQ+xLCUpx20Tu6pnAoicnQIbxbHD7vkvYVUv/zNluD5M/3B/Ne8O1zwiotMDBp/qg
         e8kQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WXreJVHa;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id u44si1977644qtb.5.2019.10.14.07.24.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2019 07:24:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id m15so25718305qtq.2
        for <clang-built-linux@googlegroups.com>; Mon, 14 Oct 2019 07:24:40 -0700 (PDT)
X-Received: by 2002:a0c:f787:: with SMTP id s7mr31176806qvn.221.1571063079455;
        Mon, 14 Oct 2019 07:24:39 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.35.50])
        by smtp.gmail.com with ESMTPSA id d55sm11810467qta.41.2019.10.14.07.24.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2019 07:24:38 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id ADA324DD66; Mon, 14 Oct 2019 11:24:36 -0300 (-03)
Date: Mon, 14 Oct 2019 11:24:36 -0300
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Jin Yao <yao.jin@linux.intel.com>, Song Liu <songliubraving@fb.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH 4/5] perf annotate: don't pipe objdump output through
 expand
Message-ID: <20191014142436.GJ19627@kernel.org>
References: <20191010183649.23768-1-irogers@google.com>
 <20191010183649.23768-5-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191010183649.23768-5-irogers@google.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WXreJVHa;       spf=pass
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

Em Thu, Oct 10, 2019 at 11:36:48AM -0700, Ian Rogers escreveu:
> Avoiding a pipe allows objdump command failures to surface.
> Move to the caller of symbol__parse_objdump_line the call to strim
> that removes leading and trailing tabs.
> Add a new expand_tabs function that if a tab is present allocate a new
> line in which tabs are expanded.
> In symbol__parse_objdump_line the line had no leading spaces, so
> simplify the line_ip processing.

Thanks, applied.
 
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/annotate.c | 95 ++++++++++++++++++++++++++++++--------
>  1 file changed, 76 insertions(+), 19 deletions(-)
> 
> diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
> index 0a7a6f3c55f4..3d5b9236576a 100644
> --- a/tools/perf/util/annotate.c
> +++ b/tools/perf/util/annotate.c
> @@ -1488,35 +1488,24 @@ annotation_line__print(struct annotation_line *al, struct symbol *sym, u64 start
>   */
>  static int symbol__parse_objdump_line(struct symbol *sym,
>  				      struct annotate_args *args,
> -				      char *line, int *line_nr)
> +				      char *parsed_line, int *line_nr)
>  {
>  	struct map *map = args->ms.map;
>  	struct annotation *notes = symbol__annotation(sym);
>  	struct disasm_line *dl;
> -	char *parsed_line, *tmp, *tmp2;
> +	char *tmp;
>  	s64 line_ip, offset = -1;
>  	regmatch_t match[2];
>  
> -	line_ip = -1;
> -	parsed_line = strim(line);
> -
>  	/* /filename:linenr ? Save line number and ignore. */
>  	if (regexec(&file_lineno, parsed_line, 2, match, 0) == 0) {
>  		*line_nr = atoi(parsed_line + match[1].rm_so);
>  		return 0;
>  	}
>  
> -	tmp = skip_spaces(parsed_line);
> -	if (*tmp) {
> -		/*
> -		 * Parse hexa addresses followed by ':'
> -		 */
> -		line_ip = strtoull(tmp, &tmp2, 16);
> -		if (*tmp2 != ':' || tmp == tmp2 || tmp2[1] == '\0')
> -			line_ip = -1;
> -	}
> -
> -	if (line_ip != -1) {
> +	/* Process hex address followed by ':'. */
> +	line_ip = strtoull(parsed_line, &tmp, 16);
> +	if (parsed_line != tmp && tmp[0] == ':' && tmp[1] != '\0') {
>  		u64 start = map__rip_2objdump(map, sym->start),
>  		    end = map__rip_2objdump(map, sym->end);
>  
> @@ -1524,7 +1513,7 @@ static int symbol__parse_objdump_line(struct symbol *sym,
>  		if ((u64)line_ip < start || (u64)line_ip >= end)
>  			offset = -1;
>  		else
> -			parsed_line = tmp2 + 1;
> +			parsed_line = tmp + 1;
>  	}
>  
>  	args->offset  = offset;
> @@ -1833,6 +1822,67 @@ static int symbol__disassemble_bpf(struct symbol *sym __maybe_unused,
>  }
>  #endif // defined(HAVE_LIBBFD_SUPPORT) && defined(HAVE_LIBBPF_SUPPORT)
>  
> +/*
> + * Possibly create a new version of line with tabs expanded. Returns the
> + * existing or new line, storage is updated if a new line is allocated. If
> + * allocation fails then NULL is returned.
> + */
> +static char *expand_tabs(char *line, char **storage, size_t *storage_len)
> +{
> +	size_t i, src, dst, len, new_storage_len, num_tabs;
> +	char *new_line;
> +	size_t line_len = strlen(line);
> +
> +	for (num_tabs = 0, i = 0; i < line_len; i++)
> +		if (line[i] == '\t')
> +			num_tabs++;
> +
> +	if (num_tabs == 0)
> +		return line;
> +
> +	/*
> +	 * Space for the line and '\0', less the leading and trailing
> +	 * spaces. Each tab may introduce 7 additional spaces.
> +	 */
> +	new_storage_len = line_len + 1 + (num_tabs * 7);
> +
> +	new_line = malloc(new_storage_len);
> +	if (new_line == NULL) {
> +		pr_err("Failure allocating memory for tab expansion\n");
> +		return NULL;
> +	}
> +
> +	/*
> +	 * Copy regions starting at src and expand tabs. If there are two
> +	 * adjacent tabs then 'src == i', the memcpy is of size 0 and the spaces
> +	 * are inserted.
> +	 */
> +	for (i = 0, src = 0, dst = 0; i < line_len && num_tabs; i++) {
> +		if (line[i] == '\t') {
> +			len = i - src;
> +			memcpy(&new_line[dst], &line[src], len);
> +			dst += len;
> +			new_line[dst++] = ' ';
> +			while (dst % 8 != 0)
> +				new_line[dst++] = ' ';
> +			src = i + 1;
> +			num_tabs--;
> +		}
> +	}
> +
> +	/* Expand the last region. */
> +	len = line_len + 1 - src;
> +	memcpy(&new_line[dst], &line[src], len);
> +	dst += len;
> +	new_line[dst] = '\0';
> +
> +	free(*storage);
> +	*storage = new_line;
> +	*storage_len = new_storage_len;
> +	return new_line;
> +
> +}
> +
>  static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
>  {
>  	struct annotation_options *opts = args->options;
> @@ -1894,7 +1944,7 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
>  	err = asprintf(&command,
>  		 "%s %s%s --start-address=0x%016" PRIx64
>  		 " --stop-address=0x%016" PRIx64
> -		 " -l -d %s %s -C \"$1\" 2>/dev/null|expand",
> +		 " -l -d %s %s -C \"$1\" 2>/dev/null",
>  		 opts->objdump_path ?: "objdump",
>  		 opts->disassembler_style ? "-M " : "",
>  		 opts->disassembler_style ?: "",
> @@ -1941,6 +1991,7 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
>  	nline = 0;
>  	while (!feof(file)) {
>  		const char *match;
> +		char *expanded_line;
>  
>  		if (getline(&line, &line_len, file) < 0 || !line)
>  			break;
> @@ -1950,13 +2001,19 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
>  		if (match && match[strlen(symfs_filename)] == ':')
>  			continue;
>  
> +		expanded_line = strim(line);
> +		expanded_line = expand_tabs(expanded_line, &line, &line_len);
> +		if (!expanded_line)
> +			break;
> +
>  		/*
>  		 * The source code line number (lineno) needs to be kept in
>  		 * across calls to symbol__parse_objdump_line(), so that it
>  		 * can associate it with the instructions till the next one.
>  		 * See disasm_line__new() and struct disasm_line::line_nr.
>  		 */
> -		if (symbol__parse_objdump_line(sym, args, line, &lineno) < 0)
> +		if (symbol__parse_objdump_line(sym, args, expanded_line,
> +					       &lineno) < 0)
>  			break;
>  		nline++;
>  	}
> -- 
> 2.23.0.581.g78d2f28ef7-goog

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191014142436.GJ19627%40kernel.org.
