Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBUXS66DAMGQEBWYBSNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id C70223B9560
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Jul 2021 19:20:19 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id 7-20020aca0f070000b029023d769dcb9bsf3572249oip.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 10:20:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625160018; cv=pass;
        d=google.com; s=arc-20160816;
        b=MxOu1Z8AbLjKAqPvYoUdUS5Y+EEJMIGFyQxxGPLtvzU9lOWi4942a6pBbptdwI4NSJ
         bxEcct3vk9pm5vG6x0R5eD5ZHwiIFdHw5sUI5aQYA7OalcFvfeo/k2blvt2yH3keIv94
         bBmjQYuWNvMKC3fkY0lNLzYg1dSFAec4Hb1SpkUQ7aoQwzocaE/m5e7OYX+NUE4ivOuu
         dDuuEZ+40ftRwWxjqCBC2GK3cD3O8Uk21OlGv/XrFIg7YQ+wrnhhxgF2nYOs6kn3gDYA
         plPPj2rldMOcWB2FnJJVBfrgSumZtE0tbC56UPBMlrPuevK3v3jnaWahjj2gueA5hDoI
         YlQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ydyK/gJCHB9BICemwgfu+lAeSADeHA9F9dBCwhj+uQk=;
        b=NX1jsksvAaxzedaZoqsHSO0iqJjzT0NmUr2wsZm+N0EU2TsgEz++WyBCAU2a0om5/I
         6Og9a9Xpp/mukEAC0/PgjPE5AXl83r5HKQisU8Lo94oCtttkUDoigg2S0sGh7Oeponeh
         Pf4bxvranhaQvl5PURJTrkeYXSeWTv3qtIbkKX7eE8lqgj6BoimFBUyjYFZTH93fJg0u
         wiUiDUkMp0ZBNDKbm1w11zH883YLXHGuYbtHBw1pHJUbuKVsyAZeLw/SGaQ1TfaFU3Bd
         RcImDVKAtWjqig6XfjBxrIyg7N9uV07vVfRRQWon6Tf9j/xnanb+A5ZRJ3RYsSYS1tZo
         qQQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=P94t7cQA;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ydyK/gJCHB9BICemwgfu+lAeSADeHA9F9dBCwhj+uQk=;
        b=I2/06ZETVyEb3rMS9LKkf1paYsCNeRa+Drsez75cTzkxQB2sLNpekOdROWfa1M/0AC
         rJDthOU6kpwiAqpi/Galfud+pypmFd0+ydw+h7STW06dFeHqL8k4HV6oaPfQyqYEtGYp
         eX7MGtp+BO23+AdiybxoGrYBJWIFqib2RFsphPVR7Y86m/jQSQte57AT7ae88NQy6CIz
         KXOWG0IoLY5jSwbsjkEZAvAW0XzKcf2TD3aEe4AMxMbWUwHUz6RmwaHyQCuztI+d5rhm
         abQ6E7fYH8pv5DHLwq1vGLOxcRqId6N69L2L8wF4BJauROQYkI5KwPs6UyvNx5CmKFXy
         q+4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ydyK/gJCHB9BICemwgfu+lAeSADeHA9F9dBCwhj+uQk=;
        b=TNzgh+/QwsXhyt3FyYD8ORvONzIVupXmWFS2Ui/6vIYaeY4fyWvN/FffJmvTSbPXtM
         ISb1pNCzS12sEysW4VQGyvH1F3XDzpFTliKQ5h6fnXf8J3EziizMdRqSLk20BcPI/SfS
         Q9UePBYTDVEuVeuNYwEvPPqUWpHOpIDicEvLPEGEqhHH6k/CLMTq91II8XZUSvo93xmv
         kfbtBVzvDThWe9Q7d2YdXY5OoWmIW/uNwWI4c2rfllyfC8MsUEx9eawnRYdVWqngmGUA
         rROAfTqtp4pIvUhd2Gr/XqOY/jQ5vYZQo2XCFSTN5pyN1zUmxCB5szOaTBEDt7TDaIRP
         vJcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MuEUqIukT4huuX5Ib/jfgtLBP86P0DlTlfWxRLdaCiTUwi5qd
	JUAsYOdgkFMMxv8DEjaZokw=
X-Google-Smtp-Source: ABdhPJzP/QdDyINl9ihBosFHLY3EtTxF1zuZlGPYKqZ5SqtjvcqCl8f898Mi/jbJlyPx9Y6ZfTVchw==
X-Received: by 2002:a9d:634d:: with SMTP id y13mr895396otk.294.1625160018717;
        Thu, 01 Jul 2021 10:20:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f24:: with SMTP id e4ls2418832oth.4.gmail; Thu, 01
 Jul 2021 10:20:18 -0700 (PDT)
X-Received: by 2002:a9d:2606:: with SMTP id a6mr841513otb.134.1625160018377;
        Thu, 01 Jul 2021 10:20:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625160018; cv=none;
        d=google.com; s=arc-20160816;
        b=B+bRZxXiG3tOo/i8ENcn4CBrJNuJJsnD8ox8YONOjrHf6CCJ7uGgNzw/ILhiaP+hA5
         Z4F0Vz6ty4s/dYmW4sv01K5FL7abi8+D1dyiq7koQaqXdJBng0lBH0Q4TXIpMAFLUtj6
         01lBRx2ONad6kKUdUNF8lWLpSsK4Wf+RDiGp1DGeahMQTNeB0QqKRqk6YSXyoaaMsrUI
         KHpogx8C7nAtOdzZu6cYiWUmUYW5J0+ZzkWD9Z4oSRCF09SDzaDbr+8fpeo3TxB0R3Hq
         Vpllg+InNYkRuQIkePJweGPIuEo1rSJXKqVN2a3xM/uJ1cePBinkO/sJ3AI7jludjB+U
         q78g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kFFDNil+DlmV9EwYlwD7CpD0MKPgyhI7aLbBNbME5H8=;
        b=jqaoESd/1HNyCNNZGz0N276T1e4+npuNPU/HkhZFsYMNH6U4hsujtKgJ8p4lW/d9RX
         oRJlm597PLVCxHB8/9F16AQGsYfAPQRdEKfb+N3dd/3F0JqoSgE5gqrqnN/0Blkr7knp
         hnYPDGWCaGF6W/FG4PUM7bQRJZQvRp0hNHm8XZH+8v9D3AKkLlTmjIivc5xdAuFXlbgm
         6gImMr3amapnjkIOOgroi6TTFigVTnDxF9xRU/iCnrVmFt1QnlYjsSHWfxY+BvFTbKWy
         A7RQutMNZFousl0efZaNkJItM2ZVVH19/+GhQuHhAUA5harX9uOm8ZWfTwAjY0B4j+tY
         lQlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=P94t7cQA;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u79si90260oia.0.2021.07.01.10.20.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Jul 2021 10:20:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5CBA961406;
	Thu,  1 Jul 2021 17:20:17 +0000 (UTC)
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 56B4C40B1A; Thu,  1 Jul 2021 14:20:13 -0300 (-03)
Date: Thu, 1 Jul 2021 14:20:13 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Zhihao Cheng <chengzhihao1@huawei.com>
Cc: peterz@infradead.org, mingo@redhat.com, jolsa@redhat.com,
	ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org,
	nathan@kernel.org, ndesaulniers@google.com,
	linux-perf-users@vger.kernel.org, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com, yukuai3@huawei.com
Subject: Re: [PATCH] perf llvm: Fix error return code in llvm__compile_bpf()
Message-ID: <YN35TYxboEdM5iHc@kernel.org>
References: <20210609115945.2193194-1-chengzhihao1@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210609115945.2193194-1-chengzhihao1@huawei.com>
X-Url: http://acmel.wordpress.com
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=P94t7cQA;       spf=pass
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

Em Wed, Jun 09, 2021 at 07:59:45PM +0800, Zhihao Cheng escreveu:
> Fix to return a negative error code from the error handling
> case instead of 0, as done elsewhere in this function.

I checked and llvm__compile_bpf() returns -errno, so I'll change this to
instead set err to -ENOMEM just before the if (asprintf)(), ok?

- Arnaldo
 
> Fixes: cb76371441d098 ("perf llvm: Allow passing options to llc ...")
> Fixes: 5eab5a7ee032ac ("perf llvm: Display eBPF compiling command ...")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Zhihao Cheng <chengzhihao1@huawei.com>
> ---
>  tools/perf/util/llvm-utils.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/tools/perf/util/llvm-utils.c b/tools/perf/util/llvm-utils.c
> index 3ceaf7ef3301..2de02639fb67 100644
> --- a/tools/perf/util/llvm-utils.c
> +++ b/tools/perf/util/llvm-utils.c
> @@ -504,8 +504,9 @@ int llvm__compile_bpf(const char *path, void **p_obj_buf,
>  			goto errout;
>  		}
>  
> -		if (asprintf(&pipe_template, "%s -emit-llvm | %s -march=bpf %s -filetype=obj -o -",
> -			      template, llc_path, opts) < 0) {
> +		err = asprintf(&pipe_template, "%s -emit-llvm | %s -march=bpf %s -filetype=obj -o -",
> +			       template, llc_path, opts);
> +		if (err < 0) {
>  			pr_err("ERROR:\tnot enough memory to setup command line\n");
>  			goto errout;
>  		}
> @@ -524,7 +525,8 @@ int llvm__compile_bpf(const char *path, void **p_obj_buf,
>  
>  	pr_debug("llvm compiling command template: %s\n", template);
>  
> -	if (asprintf(&command_echo, "echo -n \"%s\"", template) < 0)
> +	err = asprintf(&command_echo, "echo -n \"%s\"", template);
> +	if (err < 0)
>  		goto errout;
>  
>  	err = read_from_pipe(command_echo, (void **) &command_out, NULL);
> -- 
> 2.31.1
> 

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YN35TYxboEdM5iHc%40kernel.org.
