Return-Path: <clang-built-linux+bncBDDL3KWR4EBRB37WRL4QKGQEEHRW3FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 914462331EE
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 14:22:08 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id r62sf14071174oif.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 05:22:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596111727; cv=pass;
        d=google.com; s=arc-20160816;
        b=l1CYwTmUDjKLu0t9yCVUPfJk3ZIKuc5OUOf52aOeq7Tjes0RN4GFhvsbmPgEuI2WTs
         pnACek/rq9Q1OwdOJ5lUJ/tTDMgNiXvj3OqZXweVunrd89uO9N1Y3S5+/XpN/Vropt/b
         oc1lg3Hn+8VVYzaOFh5+qgAfi+9i2lu4b+hwthmAfcuRNG3vm51vsJogxKWNc2Y1t/Ye
         GSVdcOiSNoxcVkM7ok8ZbtShwBoBjcTcJss8CXSiegb9C86YN1rH/37Udmwtjj6nxi5J
         l3eH4zOgqwkyaJIuX/d2vMVu8lBMY+HvmQUVzjrDhwpQhGi10Q8kKSPhAZqaowEpnLco
         +BNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=niJLtx9VqdpHoQovQCs/pWTIpzKBoGNQ4wr19AAyU4w=;
        b=hF1P84/bE9SayFKfFc7O6wXqwDQHKWBqoj1lk50dCGImqYnWfInySTRzSrmhBRy31t
         ADxnGVUNXgvrl2HC9JssTuw+fUGS3OxHt8aeyvcyfNtrnK5b8r2SKwB10fYFeNAMyYaX
         o4eFtEBQihO3bSDUyaQv6dm8xoEyLJh7Hxvs0bgBul9A7UsQLXI8Ue1SsWkmvGAjwLdD
         gbcTc6COuJfvvzS11i7REAGpcqdmpMEK5QiTwhBbE/JWAkFOcXuxplhuvuZW1G5r89vH
         v0LajVizKz17WT5aixI/zuLKtizzYwfxT0/9z9+8U7OQufGeYhHtsnNesleTgBmdNU//
         CAgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=niJLtx9VqdpHoQovQCs/pWTIpzKBoGNQ4wr19AAyU4w=;
        b=jb6TeddwYG71dForMUW6JfhSBwqMC1qmobvj9k/m/zcSKkjcwqRCViuBYIypoWBecX
         KC3tJCRyhoVdwJQar6mObzhG+Id3rtAWFwV9pRyIxsGrOcym3MEop8RRW4JxyMR7lwC7
         xl3cxYXftjfRPGrrpgN+Sf6WWIR+EUv0nBEDucRNlWlD4wK5hgwWKmpdFebisLWVnHxN
         VJZc5awhNwbBpHFmkyqz8fS1OIaOTid6+8/dyshsg4Gmf4GLV64fewfWpzudLc2loGur
         1wDQfTrrClytNMvpPrbG6naXScgOSuIeojSm8YyPUnAXOux/tqVxB2P3vBIOFo+KtW6D
         /jCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=niJLtx9VqdpHoQovQCs/pWTIpzKBoGNQ4wr19AAyU4w=;
        b=L/nVLWm5SlZMBoZwu5U4YeAex1f9ooyv91Q+NgbLwAAaoKeHCYQDnSArNqw9S/3ut9
         rTHTiiVCwFNPVkBpffV8FNJ+NlzQomhuqXdLPHncdNDAypF/yNU8IdI+gQeWkdl422yY
         7u7SvklXOb3G1d4IL3sKY1lUG2JHmDWQxajVu5COXlXm8ntTcGF3D3kgZAujTQjIo593
         3Rw/IqmBVJUEyaLfw7doUXcMV+0eFgKxAAgBLeDYjwXJuPa7S5AJl2xfOI7tuAh46JUW
         xsrrF9SwIsmLyY7/8uNlZPomfIl6CisB4Ub3nzxzpHk6wBczhPw4UuUK2WuwzsTWmFLB
         KzKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320fjCLb0UQ8x59jERiQOHURDSf8kdW8rgXRkuUawvYdOX2sVuv
	EcyNJOs9xb74VJnjh7LJIcs=
X-Google-Smtp-Source: ABdhPJxHvXsxSiYAaLJgG/bi6hi8nPJoo4Z47gp0tlrikR4rk9Q+2uu+ZwfPd9pN/EN0cFQFWeS04A==
X-Received: by 2002:a05:6830:1e71:: with SMTP id m17mr2199687otr.188.1596111727167;
        Thu, 30 Jul 2020 05:22:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2408:: with SMTP id n8ls1113115oic.3.gmail; Thu, 30 Jul
 2020 05:22:06 -0700 (PDT)
X-Received: by 2002:aca:b884:: with SMTP id i126mr11719622oif.57.1596111726730;
        Thu, 30 Jul 2020 05:22:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596111726; cv=none;
        d=google.com; s=arc-20160816;
        b=TtSkcU+VPRW/SS4/3f0YxA0snPP0WWfDjSUJ8JRTmVLtku6C80Zqg1+wlypqKrNGGR
         sCacbq0a7s7ILJKTvvEU5aZOBS11vN67fASvxoXZ1joJpdZTFyraWd4kE5tkS6++a9T9
         C7daDNZWfqDzI6cogxdtWnL37D+fPXAMDjnJHUuk0LqNRUBbry1XvQaKo9UYYD7ns5rr
         fezMx7XzymCm1w0xvD374x44MlzT8A39BXsL3+glGh+j6GFLkMTbZxxsuoRBThCwZ3ql
         DohdPU8LI7KYYh+tUbLmVe46+fUvYK55A93ciudGIkzkajOMlR97KvIQa4Tjq2AxOVHR
         2xrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Of/CcRIRHiXzI+FDIiD8ZQ5hjM3WlzztOGpVy/jJ1zU=;
        b=a0DckFgis7+OcC+RAlhkx54CcJI/AqtCtTtZ7NHobryyIZXrCyz9ckL62ZlgghZDOz
         ASaCs6cHwyVp5xXuaAXSbtftU2SlI3RdkpicEp4l5GZDHT1gzSxbuGWRW7m1+PlrrQ8T
         dR4JWLTetqXFDpjTUxLvDT3yP3/LKvj0sIFOjb+e5+mhVKRKeoDC036zaAOG6DsfGPT6
         g3+OWEFJzVbGQ14n1zfg8fwHNPnzS/oDZiTYZtAEugUfEOCIDB73AVr9JWTVFwzreEar
         dTXLrSn+6jD9FzrU38y6WnfzMBDqHQ2NwR1IFzYZ8Y6e0jBRMU2YmEWZHBRNlQcLvzp7
         xtBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r64si216188oor.2.2020.07.30.05.22.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jul 2020 05:22:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gaia (unknown [95.146.230.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 61F592082E;
	Thu, 30 Jul 2020 12:22:04 +0000 (UTC)
Date: Thu, 30 Jul 2020 13:22:01 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org
Subject: Re: [PATCH] arm64/alternatives: move length validation inside the
 subsection
Message-ID: <20200730122201.GM25149@gaia>
References: <20200729215152.662225-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200729215152.662225-1-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org
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

On Wed, Jul 29, 2020 at 02:51:52PM -0700, Sami Tolvanen wrote:
> Commit f7b93d42945c ("arm64/alternatives: use subsections for replacement
> sequences") breaks LLVM's integrated assembler, because due to its
> one-pass design, it cannot compute instruction sequence lengths before the
> layout for the subsection has been finalized. This change fixes the build
> by moving the .org directives inside the subsection, so they are processed
> after the subsection layout is known.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1078
> Cc: <stable@vger.kernel.org> # 4.14+

Commit f7b93d42945c went in 5.8-rc4. Why is this cc stable from 4.14? If
Will picks it up for 5.8, it doesn't even need a cc stable.

Please add a Fixes: tag as well.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200730122201.GM25149%40gaia.
