Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBO4HZ73QKGQESP47QEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEDE207E63
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 23:21:00 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id i14sf4177792wru.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 14:21:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593033659; cv=pass;
        d=google.com; s=arc-20160816;
        b=cNpwvajQO/wJSSTIuDv7pZsG8DV0RVNXsa/sZzNmqv8EmKAO+zgZFb0ZTYbtnblGkJ
         L2wv6SZPtqlCIemn3Upyq7NgXqj1CeZ3w9sGhZa5fk9axsAYfbtbKsKy2ZpCuxpayaEm
         O2PPjjesFodmIXnId4SgcnAVuiVDI/+rT5A/DSBPiY7Xn/geV9qL21L7DAzwfKIPbtBK
         FFDWqmOyG9khVIIJN8zeeE1/Xv/rNJSttFKxcnthbaPjvTvhK5WZnT767E4TCZkzZzY/
         GlR/MJK2BcGbqD975nMXGu+9KlwG/NntzoH6jPQ1Y/FJzouuAJNRzAdvJmF7J069zD8G
         IrLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=abvftPaniStskYke+wRSVW08DJTV+nBLoyCsezp941s=;
        b=iCIzz0zvxj7jr4rVLUXDZC5uG4v++gmO2R/365tcMUljuKD5K3wyTr4zeSmnNmglsA
         UGBB57bHvB9OLSMgAUkqeueZvXY7Re4HyeLf+RnQ3pajNWoI5FprXChGRemZ+/7CyDmt
         lho+w4mtXC+hGT23Yiv8yEakInOYSpZXwgfx2iWD+NDU9fDqD8pRbXXpBf04C5O5Nrke
         bfPvWy4otzTsxsmtaVaYR4MPF7XpLFtT5dxX+WplkwAq20yep8TAedL9PSceoFR2YLMX
         Aq2OAhKyVktL2c6o+iHgRaqlBklYSEw7IWScYjUBcrK90yeInucIsrf88GF1/G92ahWD
         AUAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="tCg/wFYt";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=abvftPaniStskYke+wRSVW08DJTV+nBLoyCsezp941s=;
        b=af3YyozWw9ua+/wXlV8qy3nuDzBUU89vLvq9ipf5kwhx1rQG8nqvJzyAAbaOmStGxM
         VpxqGHec3egKcppMo0fJJw4Im0pBBa2MzEkhOkqvwTCYcy4OA0y0h5GE11pAiaw2KS1n
         phjAR2okZA0L3zSJDTf97PGl3jPOXQAqBEJSqHfekTT+4T66nT7oFEjRiaYi9vQ/XBAy
         pN4AAtxmvmUPfJbrj0odiKRL0oDsJ7Mq9hOReI6Nfdhaqg8mJWzmyh22IZ7aLcSGQB29
         NDmIntQdjb+JINyF+CYPLBliXdVvY+U7B9hNYkrugD9vfs+HsYgT0G8QCao2B9Qm+NpX
         vLLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=abvftPaniStskYke+wRSVW08DJTV+nBLoyCsezp941s=;
        b=DxZsTKg0jNdwMuhP3HrJrgI0+GrxDjJ5xdPKTIPRlKJvUgwFQt1KsIJ3d/UPd03eHh
         5FJ5QbGpc2qW4AC5kwWbDS994hTOj9yaS1qCrx1CWTersf3gO3KOs1rcGI9IiVc262jV
         d6LpcUZLLfxCgCWrEW9rVxuoqu+b9jWrCz9FPr+KNyGC+crPyFmVq88FYFLb5qLUXW7Q
         EQqiFrqJwmeihYTiAsDg+YYKj8EhkcHtm6jrYVE2M3R787ftiV6e6ICEfEx4y0b/3LA3
         CxioRSiBgd9D1x+iI6v6jIiQVuFu1AFYBwhytNjQPseG3b5QG4CUWWi3YW9E5V0LKsSZ
         +N5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XPlQG9EkV++gtmvWVdRUO6bCDfXWyccZx/4IZLOv9Lsg6TVnG
	40bstqsD6Hq5KpCHrvr7tSI=
X-Google-Smtp-Source: ABdhPJwKuY0M+GTfqtueGUf7K7ov+R0GHwxV9f+S0cOC7yLVVDeTnZ340iT90/QjDtF2tyAGH2wosQ==
X-Received: by 2002:adf:fa81:: with SMTP id h1mr9135653wrr.288.1593033659790;
        Wed, 24 Jun 2020 14:20:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:13:: with SMTP id 19ls1748994wma.0.gmail; Wed, 24 Jun
 2020 14:20:59 -0700 (PDT)
X-Received: by 2002:a05:600c:2182:: with SMTP id e2mr16105866wme.186.1593033659264;
        Wed, 24 Jun 2020 14:20:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593033659; cv=none;
        d=google.com; s=arc-20160816;
        b=QfxWmNUfUdNpPScSPD2UBOTuTnlIZ4E5jFhhdFhBqZgZ+IstZ2CrAMnx+9l9gQ8d28
         lAoE4C2kM3PyLPTp1sV18Cw64nCRkTOEkRFcBUN90S0gtRmQXPT0nwU2zhMBWWezwTLT
         pfEIZNRGdib8yH6lcGSlqc09IMk0oAbki+JODweie5mIOYRx49ziohy+/PesNLLgpsmP
         Z9jWV/N/6u+NTvuXB4GlEEvQ5iNpcWfSMHK3RDGZWvTiu+CoW2k8bL89+Rm1WuAoNY/l
         mFAmVqxcMWpM7LXF5T2NnpNywaDcAxE2ouKvWj6wJ5pWz4kDHifG3rQbdmNGm1Qmhd0R
         1ilA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jL5/nBQ2OUP0iahePtvie+O7JpbFb9Sg2cWrP7q25CU=;
        b=DoXSc0dXDshXew8nAvA2auGzkHYiRfvPrzNDBxJgYspmGyo4Cebfv2xIbTk/mKHP50
         Vom3+yHqERUN/OQcuPio+/JKgh+o4UTRAJIQ88ctLBydHpWA37RviODTTAKHEKKd9gec
         98LxpeSo2YrUsbGGNNWjzJZxrmNepNL1K040sJVJJWrPv7wE0PTzsiXXdxhbyaMLRCEF
         aNuPFyjpfnvtH7+QtfPqNlKXddp3BmSTSHBmjIdTe3Hz7/kLGdHK+M7+oEf19NVcEINR
         SDG+hWjQoK/kJz3whT0L5Gh/0uL9b29RRkPvwBwuCPh+sg7tpN94OmT0U3/rExi3TGIZ
         lSkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="tCg/wFYt";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id s207si408210wme.4.2020.06.24.14.20.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 14:20:59 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1joCpE-0004cG-FE; Wed, 24 Jun 2020 21:20:57 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 0B4FC301A7A;
	Wed, 24 Jun 2020 23:20:56 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id ED0F1203CDC50; Wed, 24 Jun 2020 23:20:55 +0200 (CEST)
Date: Wed, 24 Jun 2020 23:20:55 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org, George Burgess IV <gbiv@google.com>
Subject: Re: [PATCH 06/22] kbuild: lto: limit inlining
Message-ID: <20200624212055.GU4817@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-7-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624203200.78870-7-samitolvanen@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b="tCg/wFYt";
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Jun 24, 2020 at 01:31:44PM -0700, Sami Tolvanen wrote:
> This change limits function inlining across translation unit
> boundaries in order to reduce the binary size with LTO.
> 
> The -import-instr-limit flag defines a size limit, as the number
> of LLVM IR instructions, for importing functions from other TUs.
> The default value is 100, and decreasing it to 5 reduces the size
> of a stripped arm64 defconfig vmlinux by 11%.

Is that also the right number for x86? What about the effect on
performance? What did 6 do? or 4?

> Suggested-by: George Burgess IV <gbiv@google.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  Makefile | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Makefile b/Makefile
> index 3a7e5e5c17b9..ee66513a5b66 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -894,6 +894,10 @@ else
>  CC_FLAGS_LTO_CLANG := -flto
>  endif
>  CC_FLAGS_LTO_CLANG += -fvisibility=default
> +
> +# Limit inlining across translation units to reduce binary size
> +LD_FLAGS_LTO_CLANG := -mllvm -import-instr-limit=5
> +KBUILD_LDFLAGS += $(LD_FLAGS_LTO_CLANG)
>  endif
>  
>  ifdef CONFIG_LTO
> -- 
> 2.27.0.212.ge8ba1cc988-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624212055.GU4817%40hirez.programming.kicks-ass.net.
