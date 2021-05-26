Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBFMJXCCQMGQERA6VUNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 7460839122B
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 10:19:33 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id v2-20020a7bcb420000b0290146b609814dsf2924wmj.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 01:19:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622017173; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sp1BUvuu7JEWu0UwT9oAAsUzPjM6yQUAdWtZUfhEocMBdTxbPXYl2K6TIqEHozN4ij
         HHccQ50k47mC8fgfDUFgkCZPfxPmGb/uuV99NTcDWynQAQxet3fT7NYmBEtkUyhcL7vS
         ghJkmEHHGc63WHZeXaxmTguQqqtgVMnUMUhtShhNEyxIkYyLTCjTvijrEm4SnZS+J/yo
         dssQDP9GufK/unPJJMEGbrMBvHKatnmtzPHJH/ugd3wca4tc3YCQGnqjZ/n4yUBQGHp4
         D9pHpWdst3L48/XjWaMVsVGAJF60MjXv7+4yTkf2Sy7GJYK2a/tJiGb2cdtw4dZBQY6P
         IAUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=93xlhSsQYfk3BIyQYwdQ2n2DolwFNutgMRzIxA1nxiw=;
        b=puXrgpFGhBCNLBNfbtEjtZZDYsk4bSpAsqBlyh64+Waj3qwNEIGbvyqIYH4nS5/PRy
         INDC2sDz6F2HTPcF8C9Rm9mx0B+5SabS3Nhf8RVjHq4qL0cxiV2neA5f7mpC1KV4OxSf
         VCukRpypaRkCwUOMNUCQ1pUE3OYnXsY4TFFmeovMymrNUK9p0pczRO2B8Ng7QozBktM7
         O1wNoGocdF9bFknaFuK+lhoTMhRSs2sDHPL2qThM+Y50skcVuU6QtLFDjFLz2I64tTcB
         bMwWvI5Lf6BDhAoGtA7G2ruHy3MlzQOeqme7lArZZcQlfNRSzGb/MaX8R1xpmyf70Rzw
         CMgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="uNCYV7F/";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=93xlhSsQYfk3BIyQYwdQ2n2DolwFNutgMRzIxA1nxiw=;
        b=G3SOiumamwJdsqdsFfZ6MOVTa8K7rp8JWnV0rpeTmxtRXprgSz5fynRLApd7iEmvKi
         bEMgHeZaXsTGUzeF8mkPpSUQg4Qp6Ns2fcNfMLUTIXYMHj1bSvU4x4VQvFj/SxfSst5d
         75qqRJlVJ83oEL1Z8d/dqE3Qzhb3MkKJRvbfGzkES8ZQvnKDEycZgE+W5kwI//c7W9Rf
         zMpwDpiDZK5uuMCy4Lpo6E+pst3edbknK5klBNGoG9yo2cLtRFMtag6d9G3nl2qk0BNX
         fZSHj43jvRvrCbqCDyzTASwrf0jDe+7FXwVaVNlvY9vXAXOvKpL5nxCa4nb6qEW/gcwG
         zRAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=93xlhSsQYfk3BIyQYwdQ2n2DolwFNutgMRzIxA1nxiw=;
        b=T91ZIz6SmZ7pJqTMFUlayWvqjbNEYMTgcimdD+iLBGY88iGM8OwgnwcoDs+pwjkT6t
         /1kFRoKS1/+GvpCVXJedja3aAM34LxfPLSGn/7aY8MpS3OCY7L5IbfKlrmgjrobe/9Ux
         x9M6x3iGZqdoduTBX4tWI6n4MMqPlM7SzlnXWMe+2Bd3GeULVLu8KaUt8xhaRcyREGKr
         WrnFignrkZ+GvvXPIPUc5Q35k/W49EJTOgMZ/PwMWwdqW0tRwUOLamZxnCinmW43dASs
         +1Rj0O77rCdJbdgo5G6Cp6qdSX3/beMwFNNiZb1xgiTyksxdKXM17xgkFdQExYdl48nv
         u0Fw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533T70mF2tVKyFFHUXOVcChzyCQS2H/T5tfFK1AOIaxuP8q4rUma
	ZRsxq5POkGR4BiKVgw+rtqM=
X-Google-Smtp-Source: ABdhPJy0RSnNZv0Z8wNnuzZD1cic/hbJsZG9VqLjMKcZKSy5jrUScBukWstLm0Rp117yIppbwuAL8A==
X-Received: by 2002:a1c:7c0b:: with SMTP id x11mr14029712wmc.51.1622017173204;
        Wed, 26 May 2021 01:19:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db50:: with SMTP id f16ls25140wrj.2.gmail; Wed, 26 May
 2021 01:19:32 -0700 (PDT)
X-Received: by 2002:a05:6000:c2:: with SMTP id q2mr32225387wrx.288.1622017172404;
        Wed, 26 May 2021 01:19:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622017172; cv=none;
        d=google.com; s=arc-20160816;
        b=XZ5vrkmaOMVZblepu+9U3JFscHkQrx+nIg201YE76Nr/W1FBWB859WV3Ihlb8vkyC6
         Mw16620ZngQhi5yGOpqlC1GDy4y9B1/mtnaRBVXYQCxNVWuZ84fgQiGEFuqsFpXb8MUg
         b27jM2xz2Jlg/i3MJK7JTpVoxrVGr8LwzIXebohhWYQVWndTDbRYD/k4Bir9B8rl6+Ju
         UphcIm6Fq19rcOzqvJeV1jXOeIAXZ8ES+WBuDPQcPUihI1lmE3vjCOeU3gMujVgE65XW
         gGVS0flJiMyllRvQe1R290t/+vsEBdN2+em3YLmuIsqMbvB9IIgLQFpDHskNuiJIHlHA
         /KzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=aIG/lxZzNJNz2zKk7jYKdhX5Sw8rrTPiZTs6Kmx1w0A=;
        b=obU1vpC4E4BAQ4+bCGmib9LHyWhx7otZoPEFRg1WnHTD7vfJ8f5xoi+9LnRKG3zrdv
         PSh6ojJPHus5glgth8rLDe7Sez2XqxTx5XOOCod3ej8eO0gagbDC6aI289fAvFxdLd/O
         8LmHUhwoQqsU8b8sq4PzzCh6oOo5iaGTYITkvh7aF3GIpH8rHbkfkPJZBOEuOZXiXj+5
         MmYhpOm2zB9D+wJVbDnePxwLkD7JFsWRe9cwZtKN51+751axjlvONvQiuwKTZxVQUZzX
         tUDXWYuWczH9YWPhfGFhMn01Vgf5OZjwg9f5Nvq29yKV8EANoiuKrwb5tia8IUgR84Ny
         bGJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="uNCYV7F/";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id o63si262043wme.3.2021.05.26.01.19.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 May 2021 01:19:32 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lloks-004JaZ-QZ; Wed, 26 May 2021 08:19:11 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id E4DA7300242;
	Wed, 26 May 2021 10:19:04 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id C2BA8202492E9; Wed, 26 May 2021 10:19:04 +0200 (CEST)
Date: Wed, 26 May 2021 10:19:04 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Marco Elver <elver@google.com>
Cc: linux-kernel@vger.kernel.org, nathan@kernel.org,
	ndesaulniers@google.com, ojeda@kernel.org, keescook@chromium.org,
	akpm@linux-foundation.org, will@kernel.org, ardb@kernel.org,
	luc.vanoostenryck@gmail.com, nivedita@alum.mit.edu,
	masahiroy@kernel.org, samitolvanen@google.com, arnd@arndb.de,
	clang-built-linux@googlegroups.com,
	Dmitry Vyukov <dvyukov@google.com>,
	Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] kcov: add __no_sanitize_coverage to fix noinstr for all
 architectures
Message-ID: <YK4EeMhKUWQ9E92H@hirez.programming.kicks-ass.net>
References: <20210525175819.699786-1-elver@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210525175819.699786-1-elver@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b="uNCYV7F/";
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

On Tue, May 25, 2021 at 07:58:19PM +0200, Marco Elver wrote:
> Until now no compiler supported an attribute to disable coverage
> instrumentation as used by KCOV.
> 
> To work around this limitation on x86, noinstr functions have their
> coverage instrumentation turned into nops by objtool. However, this
> solution doesn't scale automatically to other architectures, such as
> arm64, which are migrating to use the generic entry code.
> 
> Clang [1] and GCC [2] have added support for the attribute recently.
> [1] https://github.com/llvm/llvm-project/commit/280333021e9550d80f5c1152a34e33e81df1e178
> [2] https://gcc.gnu.org/git/?p=gcc.git;a=commit;h=cec4d4a6782c9bd8d071839c50a239c49caca689
> 
> Add __no_sanitize_coverage for both compilers, and add it to noinstr.
> 
> Signed-off-by: Marco Elver <elver@google.com>

W00t! Thanks guys!

Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YK4EeMhKUWQ9E92H%40hirez.programming.kicks-ass.net.
