Return-Path: <clang-built-linux+bncBCS7XUWOUULBBFELZGDAMGQEXG7IMTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE773B0E7C
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 22:18:30 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id g14-20020a926b0e0000b02901bb2deb9d71sf266491ilc.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 13:18:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624393109; cv=pass;
        d=google.com; s=arc-20160816;
        b=m7HkDZD6kIQEfCvYtLKOgzLUYJ9MrhzTwDMcUoG1fJoLfNja2/T6p0hXT6sejL+GRi
         qNEFDMl1Np8wKtb7rmh58vU4c1aWWegVg8WrlL+BpDhSu74sxME3BNY4EkoLL99UnyA1
         xqHFO889FIdENsenpuzhpxyho25TCqsquPUzbzdX35Q3OySF1+GAEPbqOTMfgjcBf+h5
         j1wf0mimIeKzpb7oAeTOvwu9z+TOtuLLNTKON0iCn4H/yfxXueSf1umqdjYND92jYCYK
         msVsA/IuH0QZgwAbMwcWzVA9rDpup2WnRcgNHnM7WPWOHR22GXhO3ZX8yhXtjRrP34bC
         mVjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=k/7ym0DMq3vKTW97vEQ+az8i0RSwAEQ4hv+fei19/ME=;
        b=upaBIAvX5W2Bw2G/lyO2hKopWU+kWvhyWKYzjtK+PPOV5i/IRuopUvHAD47aqIzmZv
         VeyStCWwuCN6qe1wLDUWLt4cuqMTaa8i4nN2eOIjuLsm21/VtXDvrvDre80k01TYVfnl
         735ibBCVUzzWkgRhQN0dBm42SfffRsTxke+BJeBvodjVOv9srr1HgDKjVHQmwrduslta
         YTdGXMok8lIlLNNzwhW4DWw8PilhqYFZKeFXeOVhhYnYtj7eLYCDU5C43nyhc0v26e5C
         iaXGZLFwb8qaga8lcHeQDROBgU/XdZVMlqxH9J2kwM55sOhBRPU7gHep3Lur641iVQ0r
         bt0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lykzsAZU;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=k/7ym0DMq3vKTW97vEQ+az8i0RSwAEQ4hv+fei19/ME=;
        b=aPiEYQhjYAb1l3npLEcr9ot/hxBvqWyQValJwbcoxoMUMjMrC9JXSG7pa10e+qkhDj
         zUvpfEXHZ/bG2JY143ZYbixxC1xymia9Y+hcQvspYzhHgMEXUGl4L/R6BqONw0BJjenL
         HAvQJX3cRtLtq/HpICLpmdhPTEpdjokZYMIYMARS1mcwNHMONsI+cqTscutJ7E4akGTK
         9h/REtqxC2Mel2LDec1eN1IREYpOPVAIWsd/c4pjdI1ijhRJhGekoMWMRL61Z/gfSntb
         nR9nBpc05X3Ac2TP9mflZsB46bv37yvXWQP4ONWrt5NbCsu9yGTtg4L133j4KJcMgJuU
         PlYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k/7ym0DMq3vKTW97vEQ+az8i0RSwAEQ4hv+fei19/ME=;
        b=ckcsH4T+7kByFLxsghZu6exke6FTbocHrhg9is0gPtOvXhvg/rONOST0817dNoV0h2
         H7YWAGBDZWfNL4UDVGtC6k79y6ZcNADcYZdOnAXXKszHIIsAsv6iRg9WossMkCmtdluo
         CQBRXi2TbtyE5mED7CV9kx/q9I1e32GcTE0WyfWD/Cs/J8ZtOm7EPyF0qBL4nzJzqcru
         4ZbCYS6P0kUlIU+TtLg7qT1KdbWAUssFCjWETRsrd6GDWJIM4R0g/hqp/IJZUrlM8vtH
         7WDdo+E5YubP6Bg6NWYoAB6TjOq0utVztsaMi4KmaCmt9fB6yJGhSscyV6w/WY6Ow1sH
         +gNQ==
X-Gm-Message-State: AOAM530ApcM2P/9Cn34XfsGSo8Nv1ZzTGoIEKQwHXzKaKYQegH1lo0Tg
	COel5Qcv2UnSwjAXozzyoj0=
X-Google-Smtp-Source: ABdhPJwicVfJRcmwD0iPL1YvQ8wgNekhKPKdOWXqoHZiQ/kINm3cd8rBHU/DC06NPWh1gcbwYdgCSw==
X-Received: by 2002:a05:6e02:156c:: with SMTP id k12mr319208ilu.188.1624393108789;
        Tue, 22 Jun 2021 13:18:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8d02:: with SMTP id p2ls6129ioj.6.gmail; Tue, 22 Jun
 2021 13:18:28 -0700 (PDT)
X-Received: by 2002:a05:6602:2048:: with SMTP id z8mr4172620iod.91.1624393108417;
        Tue, 22 Jun 2021 13:18:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624393108; cv=none;
        d=google.com; s=arc-20160816;
        b=ERPr7ZzgiOM4dvhbWu4CRRUq4/A5EwYaozWnyOCzFNkseJCsBqx/0eTzr2abjZ1WdS
         hSCqDTchdcvuNspBCr2Vmg+M+EDVLfHIqM7VcUg7k8Ga2tvOqlMqQNtMp2pWvELBuiVQ
         b8PFIdqTm03ZrwuE8y04OZrd1vGucHt/jYu3DxJd7LS0RXgM66qoG3CJvQZpGCK4+jnF
         ZCK0WW/PxritvmAMz7bd/zkD8rnyin+0g11OqLLN6sFgafhhl/GFaxMIxnuI8VSfrRhN
         FfcY+X2LElr5HXpfqI2Qya8AB+19ODTlEcey1k1nrSosNaapJ0Ff/jkdAvaiUe5R7u7d
         gToQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HdvopMyQxXmK6HPWxf4Yo9uu2sK2aSj8ONTZ5GQmBlE=;
        b=u4ZujIFXMH6V9Eq7Xc2FBnBhS7MMu6lrIGgkkM81HteRy5cb2OVQWBAmXiyhZmtIbc
         L3eZUmvmjhFwLNagVY66ifgnGGXJifsV8hHD9cS+KZvtpV/+OXKouy1dyrjKp1U4nnH+
         6Hk+Ja4RlPHz9GVRFS8Y/TR0h9TLS5th7XBgAf7JbpD9pK7k44kIMbX29WibIrUEFqWi
         qKHpRxi5LqelWsQbH9JyDg06RPj8p1r1wCp9YNpoL2zANHBMgPulOmUKN9879Pcr/ADf
         Zs0IFmi+RWD5Tq/nqAEAxgXpg3CU/xRs1qK22EiIx7B0ebK2wGLophyyJ0/21p/mwo93
         IV7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lykzsAZU;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id x4si366301iof.3.2021.06.22.13.18.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jun 2021 13:18:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id n12so9276961pgs.13
        for <clang-built-linux@googlegroups.com>; Tue, 22 Jun 2021 13:18:28 -0700 (PDT)
X-Received: by 2002:a63:64d:: with SMTP id 74mr384039pgg.13.1624393107639;
        Tue, 22 Jun 2021 13:18:27 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:200:632e:2fa3:1554:f07c])
        by smtp.gmail.com with ESMTPSA id f5sm170927pfe.79.2021.06.22.13.18.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jun 2021 13:18:27 -0700 (PDT)
Date: Tue, 22 Jun 2021 13:18:22 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, "KE . LI" <like1@oppo.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Miroslav Benes <mbenes@suse.cz>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Stephen Boyd <swboyd@chromium.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Joe Perches <joe@perches.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kallsyms: strip LTO suffixes from static functions
Message-ID: <20210622201822.ayavok3d2fw3u2pl@google.com>
References: <20210622183858.2962637-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210622183858.2962637-1-ndesaulniers@google.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lykzsAZU;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52e
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-06-22, 'Nick Desaulniers' via Clang Built Linux wrote:
>Similar to:
>commit 8b8e6b5d3b01 ("kallsyms: strip ThinLTO hashes from static
>functions")
>
>It's very common for compilers to modify the symbol name for static
>functions as part of optimizing transformations. That makes hooking
>static functions (that weren't inlined or DCE'd) with kprobes difficult.
>
>Full LTO uses a different mangling scheme than thin LTO; full LTO
>imports all code into effectively one big translation unit. It must
>rename static functions to prevent collisions. Strip off these suffixes
>so that we can continue to hook such static functions.

See below. The message needs a change.

I can comment on the LTO side thing, but a maintainer needs to check
about the kernel side logic.

Reviewed-by: Fangrui Song <maskray@google.com>

>Reported-by: KE.LI(Lieke) <like1@oppo.com>
>Tested-by: KE.LI(Lieke) <like1@oppo.com>
>Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>---
> kernel/kallsyms.c | 18 ++++++++++++++++++
> 1 file changed, 18 insertions(+)
>
>diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
>index 4067564ec59f..14cf3a6474de 100644
>--- a/kernel/kallsyms.c
>+++ b/kernel/kallsyms.c
>@@ -188,6 +188,24 @@ static inline bool cleanup_symbol_name(char *s)
>
> 	return res != NULL;
> }
>+#elif defined(CONFIG_LTO_CLANG_FULL)
>+/*
>+ * LLVM mangles static functions for full LTO so that two static functions with
>+ * the same identifier do not collide when all code is combined into one
>+ * module. The scheme used converts references to foo into
>+ * foo.llvm.974640843467629774, for example. This can break hooking of static
>+ * functions with kprobes.
>+ */

The comment should say ThinLTO instead.

The .llvm.123 suffix is for global scope promotion for local linkage
symbols. The scheme is ThinLTO specific. This ensures that a local
linkage symbol, when imported into multiple translation units, then
compiled into different object files, during linking, the copies can be
deduplicated. This matters for code size and for correctness when the
function address is taken.

Regular LTO (sometimes called full LTO) uses the regular name.\d+
scheme.

>+static inline bool cleanup_symbol_name(char *s)
>+{
>+	char *res;
>+
>+	res = strstr(s, ".llvm.");
>+	if (res)
>+		*res = '\0';
>+
>+	return res != NULL;
>+}
> #else
> static inline bool cleanup_symbol_name(char *s) { return false; }
> #endif
>-- 
>2.32.0.288.g62a8d224e6-goog

I wonder whether it makes sense to strip all `.something` suffixes.
For example, the recent -funique-internal-linkage-name (which can
improve sample profile accuracy) uses the `.__uniq.1234` scheme.

Function specialization/clones can create arbitrary `.123` suffixes.

>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210622183858.2962637-1-ndesaulniers%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210622201822.ayavok3d2fw3u2pl%40google.com.
