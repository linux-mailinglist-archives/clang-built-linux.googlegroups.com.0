Return-Path: <clang-built-linux+bncBDEPBSN75UNRB24FSLWQKGQE3HTTACA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E34CD64DC
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 16:15:08 +0200 (CEST)
Received: by mail-yw1-xc3c.google.com with SMTP id o14sf13693956ywa.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 07:15:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571062507; cv=pass;
        d=google.com; s=arc-20160816;
        b=tC5Gq+AVLDpLnGNES5oqv4aKduEp/Vyq4F6Iq9PMXuoNOWrUK0ImNZ1fFFD/i47EOz
         JJjMHxdOEup3uYgHwSsmcY/ksNUwqSVgJayelfXtWswlra9NchucjNfTRSalarQPbMbk
         L4vN+p0ei4xmPjszaly15uCQjN3wCunduhnBaKGMWRZwAf8abgsw9V2CKjgz1l+AVtXu
         lJwDf43S7YcQX5cCBI6NQ3ZuaU6LPFJrCxnuOu/vn6qRPobpvJjYlaDttW9wSwrynJED
         L6N/DTwINbVKlSSDdqQ7p+g75ovvnNX7Z1K060SNpAixlKbSGKP6AkVNqUZGuUOvFeJL
         HNUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature:dkim-signature;
        bh=eQIj1kJK5zezrRfbO1IqeRlHkNkpZuK7Nxk4yM0An8w=;
        b=yrGfIloSuNeDZrl7rC6Tx19fGrF80OL+Zr92edRWxb3KGSrsQ/g7W5zvgriuC3wACw
         txRGY8ps2ZEwhTQZvtc7/r2ToEA4L6osQ8Vp53m5eEcouWDfkP52jQfEsU1Bl7V3a7KI
         uzK0W3GqLy+5I15X3hfx1VzkmWcQ2C+XYbBqqdPEY/nD6nBQSPlVCdiqTQegImMzEouA
         bEGXihnfHtRKJ2ylJalq4z+2CG5fk4LEfRq+rGID9LBmTUERtN4z3UPlwhp3eaeeT9eQ
         uCkZC3HYiw3vVZFoJmheRrnOEj+XPQAmfvlpR43OtQZIbGjeVB7J7WWvLadZFsKpKxYl
         PzXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="cJEZ1P4/";
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eQIj1kJK5zezrRfbO1IqeRlHkNkpZuK7Nxk4yM0An8w=;
        b=YrCUFvPWKsFYGJHd/7hOwSaTBETDvhBhLgEOmeysIjuPXHBcxYpEjFvxEnfHo+J35x
         zzUM2VOxWRF/yN5+7dw2ak99360u/+2Q+keVxavKCzJt9AGE0ovNWwIF7E0DlMocOtVp
         59ohDp5mPxdzvt+SMH0WgNyn8EdC+w+mgPeeBfRuWGlmfFv5G+k5BntNXMRJV6M5aBki
         sZkh7WUeULo2UkmVd5IK8jR7g8KQvRpcY8IBO+uJCin1YzBQpKaYyN4JBKwbFZQCZl3e
         a/J6ykflJillN2DXfHOwNcm9OKjNcKX8SqCG0JMonUhwPZog0mDvgoE0XenHEMuXkttu
         NP7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eQIj1kJK5zezrRfbO1IqeRlHkNkpZuK7Nxk4yM0An8w=;
        b=t309NZSAIxqilU+oO0XFzfILQZSK/6D8huwDmkayzAt520FFYR7Ou87lTjF+XyXHbA
         StAYptbo/+Ximjt8vZl9eIQMPbkJaa0CjrR+L6zmlQtY7ymqgsaHCk+xnTcTmpfY0Ld2
         6BX47Pg7/TdVUF3gfv5Z82xTIqhFO4nYF3pqmfrHuFmHTb7HpyjZhWvjMHkjY2PKxdmS
         /L8hsCSNYjnDy5lcvO0f46mO1RTcrbHtqvFdtRz2VwgDSShVqEYmBZ0V6RDem55m2K0E
         Aris7vUviDPlU4r3LCjs7fo2GrG+6xHDei0/RDwAHzaUEy6kKs6Ys2LSKimiwDwLDZjs
         YIsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eQIj1kJK5zezrRfbO1IqeRlHkNkpZuK7Nxk4yM0An8w=;
        b=kOGMYo2a7/Qg7Brwjil3ZqttCMrW1810CenQaLx2rg8HCDmuFP5JpBw+aokMLIy3tH
         HmP62c7LsP9c3pvnEvnmi9lCFQHFB5TZ8babt1LQy7w1kH4O43WZlhdSfgy0wGtvFdVN
         Hllb8zNbIUDBqi7OeBnlkVqkOsn4owPt8wzfQceDRVcWkzJ03jqxSoR7kndP62Hd3PmE
         qNL17dZ+RvQjJj0hK7emu8vDFPkUQjZ0Wwq/okifKnvrHjam03cfULfePEQsTcFbc3fg
         vg8uTaDDyjw1V7dpXpVEyIkNC3nYL30NY+z5AqW6izJa59ik8styJoprPvjDkiu7FNRD
         g4rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVmXRLxwtwXLzznjSYILM0SJ7RbbnNkz2SjyLdBZ9pvVnHFwdzu
	0yAroP/EKl7vqncsY//vkwU=
X-Google-Smtp-Source: APXvYqxdIUXjYK7nSOfuzni5YEzuCzmYE+3zVufBoT300rCUwLnGQULNZQIYwAVu4W+34U8PR+HExg==
X-Received: by 2002:a25:3b51:: with SMTP id i78mr19668830yba.520.1571062507144;
        Mon, 14 Oct 2019 07:15:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d3cd:: with SMTP id e196ls2319155ybf.12.gmail; Mon, 14
 Oct 2019 07:15:06 -0700 (PDT)
X-Received: by 2002:a25:76c9:: with SMTP id r192mr16490343ybc.396.1571062506787;
        Mon, 14 Oct 2019 07:15:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571062506; cv=none;
        d=google.com; s=arc-20160816;
        b=MqOyLCuE4FA5M03o74HGsWI+diyknm3j/ZZqkz3AKZkaEj6OJIG0CuW7SSju/3VnaI
         N+cF31aKn5MVpKWz/XYXwFBQxzJzz/J2MrWGx9ttrSQT+hbtbRlxLxZbS+kQwshq0a7N
         OZOrp2viZ5XoMf2YHKS+xdGkk2N7qyj5QfrFqSrzAnXI1JdiHgTm0hiUPY0rnhRbxO2o
         XmbsAQ64R740ThnW6VIp60bnGVk8QWPCIbuADQGcudC4z1nMLV2TEh4RIht1xfZRIwU1
         /nw0XKBDB5TVimSLar0wygwalfwnSi6ZXCVTT/ILON7ulYgQgZyMC1D7p/eMGlAC7Jrd
         jrvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=RvSIS75IS1YgJC9gP4/dhSk5DagD+UPGjoBY9RJ/+OU=;
        b=0aEB+GDUZiSmto4+NCiyMwhBtHLJqOoo8bv2PEVgZoOzesXXJaTX87uaIhCgKv46MN
         vqFwIqs8cRNb08eKgJ9QULSFyZZh7iEmjlHScHRE3cuoYtjIsAsWzD+uuaZhBXyDuo6o
         o7yMlQAXIPR9v+rZU6hv+2B/Mj7A2ZudB3G9T1E+ByzrHbhzhsz0jKqx08PbMON41I/f
         dJ6JW5eCz2/21CJlZgRVH2UQudijbZLlS8OW3/MpOslhNGL9HzkvhHPC+/BD5Iwi7e+l
         PQCHnOcaVNC+gi3jhvosHVvvSY+aCEd2zLt8w4EZqQyaA19fwt7Wn7TkTnoEscjwKHrn
         u9tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="cJEZ1P4/";
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id y7si1001351ybg.5.2019.10.14.07.15.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2019 07:15:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id m61so25613906qte.7
        for <clang-built-linux@googlegroups.com>; Mon, 14 Oct 2019 07:15:06 -0700 (PDT)
X-Received: by 2002:ac8:2a5d:: with SMTP id l29mr32029160qtl.314.1571062506349;
        Mon, 14 Oct 2019 07:15:06 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.35.50])
        by smtp.gmail.com with ESMTPSA id z5sm9040492qtb.49.2019.10.14.07.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2019 07:15:05 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id B11BE4DD66; Mon, 14 Oct 2019 11:15:03 -0300 (-03)
Date: Mon, 14 Oct 2019 11:15:03 -0300
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Jin Yao <yao.jin@linux.intel.com>, Song Liu <songliubraving@fb.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH 1/5] perf annotate: avoid reallocation in objdump parsing
Message-ID: <20191014141503.GF19627@kernel.org>
References: <20191010183649.23768-1-irogers@google.com>
 <20191010183649.23768-2-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191010183649.23768-2-irogers@google.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="cJEZ1P4/";       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::844
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

Em Thu, Oct 10, 2019 at 11:36:45AM -0700, Ian Rogers escreveu:
> Objdump output is parsed using getline which allocates memory for the
> read. Getline will realloc if the memory is too small, but currently the
> line is always freed after the call.
> Simplify parse_objdump_line by performing the reading in symbol__disassemble.

Thanks, applied.

- Arnaldo
 
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/annotate.c | 26 ++++++++++++++------------
>  1 file changed, 14 insertions(+), 12 deletions(-)
> 
> diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
> index e830eadfca2a..1487849a191a 100644
> --- a/tools/perf/util/annotate.c
> +++ b/tools/perf/util/annotate.c
> @@ -1485,24 +1485,17 @@ annotation_line__print(struct annotation_line *al, struct symbol *sym, u64 start
>   * means that it's not a disassembly line so should be treated differently.
>   * The ops.raw part will be parsed further according to type of the instruction.
>   */
> -static int symbol__parse_objdump_line(struct symbol *sym, FILE *file,
> +static int symbol__parse_objdump_line(struct symbol *sym,
>  				      struct annotate_args *args,
> -				      int *line_nr)
> +				      char *line, int *line_nr)
>  {
>  	struct map *map = args->ms.map;
>  	struct annotation *notes = symbol__annotation(sym);
>  	struct disasm_line *dl;
> -	char *line = NULL, *parsed_line, *tmp, *tmp2;
> -	size_t line_len;
> +	char *parsed_line, *tmp, *tmp2;
>  	s64 line_ip, offset = -1;
>  	regmatch_t match[2];
>  
> -	if (getline(&line, &line_len, file) < 0)
> -		return -1;
> -
> -	if (!line)
> -		return -1;
> -
>  	line_ip = -1;
>  	parsed_line = strim(line);
>  
> @@ -1539,7 +1532,6 @@ static int symbol__parse_objdump_line(struct symbol *sym, FILE *file,
>  	args->ms.sym  = sym;
>  
>  	dl = disasm_line__new(args);
> -	free(line);
>  	(*line_nr)++;
>  
>  	if (dl == NULL)
> @@ -1855,6 +1847,8 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
>  	int lineno = 0;
>  	int nline;
>  	pid_t pid;
> +	char *line;
> +	size_t line_len;
>  	int err = dso__disassemble_filename(dso, symfs_filename, sizeof(symfs_filename));
>  
>  	if (err)
> @@ -1943,18 +1937,26 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
>  		goto out_free_command;
>  	}
>  
> +	/* Storage for getline. */
> +	line = NULL;
> +	line_len = 0;
> +
>  	nline = 0;
>  	while (!feof(file)) {
> +		if (getline(&line, &line_len, file) < 0 || !line)
> +			break;
> +
>  		/*
>  		 * The source code line number (lineno) needs to be kept in
>  		 * across calls to symbol__parse_objdump_line(), so that it
>  		 * can associate it with the instructions till the next one.
>  		 * See disasm_line__new() and struct disasm_line::line_nr.
>  		 */
> -		if (symbol__parse_objdump_line(sym, file, args, &lineno) < 0)
> +		if (symbol__parse_objdump_line(sym, args, line, &lineno) < 0)
>  			break;
>  		nline++;
>  	}
> +	free(line);
>  
>  	if (nline == 0)
>  		pr_err("No output from %s\n", command);
> -- 
> 2.23.0.581.g78d2f28ef7-goog

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191014141503.GF19627%40kernel.org.
