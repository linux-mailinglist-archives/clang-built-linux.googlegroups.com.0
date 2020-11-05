Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBME3RX6QKGQEAQNWGEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id D39ED2A7419
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 01:56:17 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id b4sf37579ioa.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 16:56:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604537777; cv=pass;
        d=google.com; s=arc-20160816;
        b=bkXu51ehy9eWCHOQua5lTKUP4pdaKpNKORcurNiuNtCR6FoA5tq31SHhBuQeN9AZVv
         TVmi0QBIcfVq6a/5OPWoEEgmU45pR6zYkA0pgfzdrZWk2D+LL3uHoQBjAqzvLnnTu4oe
         ttHOXF5ZSSOnf9Goy1crl5aTOjX7/2rGRpGdDXQMskptYYB8gW4lCcMweeofA5EtrckZ
         mh8gi3F3Rg0Pcj16F+uY14+VZ6bXowGND+I+ifkrmolbNmrUbdT1Ixx/vn4vvpphnEX8
         mUQuo5e4Hkk26zuHwYYBqrhHha2HoVSbMciJxysugvNNxoPvdCtQnRppRRdiH2ndGmha
         iQ7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=RypS3DQkIc2KaqelzCs88uZF7gQj8H3q94XwuikXIqw=;
        b=emCkzSnjhipPcaC3IQYxzxIF2UXUXxH3Ii+teWByvZdSEZRMp4kBOnfu/TnjgnNBNV
         EhN3+oC5o0gWmnUeCLSiTbN/qtnBXUwxbHKeQ3C5yl+JWr3p6ox5QdtU1fxSEsQAENQH
         4z8WUmdLAxFLmFRvvPh4l593HCfSUvw4bw3cAIK+yHf4h1b/ONTcfvpX+0rIp1uZ505W
         M9cdWj9rp9dAECiknRGOhCNMTIGq1GaGwDpC+g/9q9u2lghGarn6plbmK0jZ0ApyvKbe
         KR69y6i0dBy0KN4akYiVPZuIo+o7ZALUYynbxia4IjgUOdSzcmtXtzJSGL/vHyldSGcS
         B9ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cCzrPQyE;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RypS3DQkIc2KaqelzCs88uZF7gQj8H3q94XwuikXIqw=;
        b=rljtFAKrUqV1LQhmPTPXuMQgEqTrZx4yjmvqNX+7jPQT9bg7ZcSnnsUuNeG+M7Sr4F
         Oxyp0YrRY8a+Jr3xGUsqjF0vv8bIFlcw30V+Imyt5tX3hMPqbSuNfWEV52fJxRjFKQ9M
         ZfO7NYeUh5Y5kEAdeOr3F/Ec836PzzmbTJ42AGH+xN1S+WhPRJ4UBeDTscDUR0Nuwc0c
         HLmQk9wCoo/nzhY++UaEezEPs4hPNFZYzt8UlGz5pIhp6Iwk3jg4x6Igd0aAf2RxYrtM
         N/wPzuPY2IQeRRrcG6Fzyfi6qdJ8TAZ/1e7PQ6GYHa5R/uWU5PKcGQ31LWBxz9PX81+6
         x8sA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RypS3DQkIc2KaqelzCs88uZF7gQj8H3q94XwuikXIqw=;
        b=u7y/lx0GLmigfKCCIW0T6bwbwnfAs24OB6S9VWSwfG/ht/N4BfRnYp49RdtQBLTDFc
         29IIrp/O/P8miNcFELBQn7M1eLjd/9lMMq4w7T6XQzW4cLM1SlkXNOBhuWWmYl91RtOU
         3MKTQhogjpYdt8YRVm7p6zYF58PVp26rJddkSul7Kt7/L9HegZk56osf1XOwuMVA8Qft
         LxPTO9fNiwQ6wrTzXsl2WmrgcVTPg/aPh37HSWgjSSysbky7a+RPNXFkuvrdt8Enffz6
         hJ1OqyoEk++9riznpxFSkbI/HFyI8qqs86FL5zaCXXFmGWkrH3mECY8oG8Ybkotlutrt
         ItJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RypS3DQkIc2KaqelzCs88uZF7gQj8H3q94XwuikXIqw=;
        b=j8/DQ94TV3tH0eTILc/SClKBjqPU7u5J4B+7a7T57Bfen9hNFONemAuyDE+HvalvHU
         vLvtKmaeWCzoXuM7JDuJLx3sTjpeBIfKJ1/XmQugFTthkMuP++Zj+iILOKgk75IkBgL/
         WdKCzAkbAweO8Q8IOr3oZ9XuafR2IHjzt5SyWLz0GSwxyBN4LIrw2o7dITv6F/PTLVce
         IILkXzG2cCp/13JKgFlkZ6pIxLl0eUSGkZMba/ntC8vLIBuQZZYLui7bNNR347hPF/Mz
         uZ6OfEc7QA/b/SEGKR/+1HtPTaykhVkOI91gHDczuTIQ66jlqKHVbnZ4GEdnTGZb+0eu
         pajw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533uBOzvM26eG8EEjv8YklgUTqxaBfPakrLi5gQTVTSC9ntDAIML
	l9Ax52SBOgSpNUzR6kvILt0=
X-Google-Smtp-Source: ABdhPJxz7ynZOVilSY+jbczyUXyHok3D25Vouu8q0cqkuXjDx9zuLPNiZe1opCTDhEqdYgC18icG4Q==
X-Received: by 2002:a02:a68b:: with SMTP id j11mr175010jam.32.1604537776905;
        Wed, 04 Nov 2020 16:56:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9a87:: with SMTP id c7ls599190iom.6.gmail; Wed, 04 Nov
 2020 16:56:16 -0800 (PST)
X-Received: by 2002:a05:6602:38c:: with SMTP id f12mr76266iov.40.1604537776510;
        Wed, 04 Nov 2020 16:56:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604537776; cv=none;
        d=google.com; s=arc-20160816;
        b=S3xr+r/C5PBGKBtfQVzpH62CK3U3ZPvi8cTYaWAFdtLr1u7+q0DNL14ujd9QMmZUta
         wS+yBkyvmolDftLH96hRJLlX6gpBmGWs+AAriJnGhn7py0HJR7xhbJHwMrdTg/S2z/aQ
         o9kkWRAy30ae072TYBamdPTg5cT4xMgkX0hUJmkPBWDv1TpAORO/qLne6ed7+3WHoUNv
         XT6VV9SU+C4lJb/NDWTs+cx0OhjFLIdw4MEcPO9BYS0zt53gLfUeSpx2h/b5QvaP/LnB
         3+GyfN9NXpcepOLdSyCdK+fXqQtXJMI2sDDKdApkV62ajlbkxl0hRcVdIAuTV+1wp82Q
         bV5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=76+46/j8d+HhUpqLdqtrqj06kMZC9lIAszaftzrzrbA=;
        b=hHhbmVISdMgbR8swrfU5UENbRmUbJWIiNpmhUx/ge0vnQWyuDujd3aFYorqB78F1ga
         hIKy/dEkwAw7oHVkIP0xfxrbpgHHAASI77pmatIrk5m6MqnZb797ul2v+9tSLNr0W8Xx
         IRBen8MZCwI1o9SY4rqcWc4IiyUdapw/Yy0hAfqYWKkbyHg8MOMOy82OyzekRzf94616
         SsdNLZ2ZZpi1GFBvkFAuMWTXOrhHdRqdvVZtr7bvGG11ZEx/SZ2fa3kTQOSP/7vdGP9E
         hIwLDN1pOkAuYsGEWsMGL+8h1ppiVqubKqVBYe/+mpWjjau9PtlCqnxTi7v2dkViaDCc
         6kyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cCzrPQyE;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id l1si2762ili.0.2020.11.04.16.56.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 16:56:16 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id l2so362714qkf.0
        for <clang-built-linux@googlegroups.com>; Wed, 04 Nov 2020 16:56:16 -0800 (PST)
X-Received: by 2002:a37:e0e:: with SMTP id 14mr859793qko.455.1604537775951;
        Wed, 04 Nov 2020 16:56:15 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id n3sm1403764qta.10.2020.11.04.16.56.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2020 16:56:15 -0800 (PST)
Date: Wed, 4 Nov 2020 17:56:13 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, stable@vger.kernel.org,
	Chen Yu <yu.chen.surf@gmail.com>,
	Jarkko Sakkinen <jarkko@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andrii@kernel.org>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@chromium.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Randy Dunlap <rdunlap@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ingo Molnar <mingo@kernel.org>, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] compiler-clang: remove version check for BPF Tracing
Message-ID: <20201105005613.GA1840301@ubuntu-m3-large-x86>
References: <20201104191052.390657-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201104191052.390657-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cCzrPQyE;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Nov 04, 2020 at 11:10:51AM -0800, Nick Desaulniers wrote:
> bpftrace parses the kernel headers and uses Clang under the hood. Remove
> the version check when __BPF_TRACING__ is defined (as bpftrace does) so
> that this tool can continue to parse kernel headers, even with older
> clang sources.
> 
> Cc: <stable@vger.kernel.org>
> Fixes: commit 1f7a44f63e6c ("compiler-clang: add build check for clang 10.0.1")
> Reported-by: Chen Yu <yu.chen.surf@gmail.com>
> Reported-by: Jarkko Sakkinen <jarkko@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Acked-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  include/linux/compiler-clang.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index dd7233c48bf3..98cff1b4b088 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -8,8 +8,10 @@
>  		     + __clang_patchlevel__)
>  
>  #if CLANG_VERSION < 100001
> +#ifndef __BPF_TRACING__
>  # error Sorry, your version of Clang is too old - please use 10.0.1 or newer.
>  #endif
> +#endif
>  
>  /* Compiler specific definitions for Clang compiler */
>  
> -- 
> 2.29.1.341.ge80a0c044ae-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201105005613.GA1840301%40ubuntu-m3-large-x86.
