Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBSFHSTWQKGQEGXOXFOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id DC25CD6C7D
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 02:33:13 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id h186sf7641081vkg.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 17:33:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571099592; cv=pass;
        d=google.com; s=arc-20160816;
        b=fYWWydTf45X5rNok1thd+o+l8Sv/xWkHfKvyFmHa3oczsWb14Qdo/5ZVyNFsIsAT7h
         LDt7VaYIRiD2yDx04NpoJ4Vn36+NFP+lhMm+juL5K3mgiwRgxadKTb9lbF6o2VkuIxIt
         XROKpPSSCViadylWZpfgEMvCO+fAMl2CKOM+vcFM+3pkCCdX6fj/csr9L59yvnrZDku9
         8Ui+iitgtZ68DGKIXnvUuehr/PjjHh7bnzYVN3+1gjVvw1lLcK09fc8m3u66Oc+2pc82
         MgGd0aqoSzoMIA9c8jQ2iiY8BScuMe68Fet/lBovglEkGc7IedqzV0e3xavlA4CK37Cn
         2xGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=PLK9nBBMxd7/R//RMjya9mSy3LR0qQwZuwx3hjHTGOA=;
        b=UnQgi+0v6yEbeNWESTlnF9actQx4FzugynlxTRT6Z/wR1jnBKCeatO7FZaQGIkANfs
         WY0kqXM4a/B5cjDTmxghhNKbw5Z8NmqD701Ez0PtM4uRWwDDewkwoSzKV62m3wZCZH91
         A5fT4KGQsvPMtuGch6ot8BeUVoubdgRLqA/NlRSbKMaEsTlnBxwYIPh9jImVnibcVX8U
         vDzGICVNJMG6Y8OJc0oMcK/PPk2AwUKrH/Qy7ijBWEAZpK/BbXVyM65izDnfODI5DeLl
         a9Yqn/nwO1akW7iy++I7Tm5wbp2U2V1m3p9tUDxcgAsdpY4rtR50yjHwcaz4jGeWheua
         uihA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ysPml0GT;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PLK9nBBMxd7/R//RMjya9mSy3LR0qQwZuwx3hjHTGOA=;
        b=PrHxhWURNbv0XzFfY4255iZbjmW+m2IUV1oSZmL80Ah9mJTNQKlFq63teldRDrUhUH
         AIiVKcUR5QFW+ONTSvKdQCT18xq3sqEtWydIrPg3FEE6mtFDiQPiJ0oab4lIP/FLIihl
         0klqqBNQVXSrSn7jYWMXFKhMYu2eU8kUkcObHKO6SIrp+f3gbCrV3EIgy+KX1zCyEP9H
         ufb17tUisGHK6x0TnyX3dPmUBNs3DyNK7pxRU/EdQCOR/1T2cRi5NBxNB7dOW01KfY6X
         oghcoxI7t+6uzbnqbNhe7/tfQt9DgWn4OqoP/s6GECC0eiX3lK0TgiuSnHrIk+GP3xOO
         5xhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PLK9nBBMxd7/R//RMjya9mSy3LR0qQwZuwx3hjHTGOA=;
        b=Y2MLwWnewh1Sv9HAzqZcVUemuxBgCXyhKfhtGOXpECcI26fobqEBDM3V/SpoKZaifB
         +an+AyVEp5j9kIE+05eCM2BHA3tNQaM+jzhx4DM7uUDnCPoafTFyAsxv9lsFJgOwveE7
         l4d+SCO51LvD4/+tIYFqhy2Zfk44Ecg1n8A7c1CNqIsk4ewI+nXCDf41HkCGAOmKkLm5
         pLKIgSso3SKiYrwtyD7m9M0yPAlqVEmUvnJKF2uFWqWvQsxNJ85Y5dGt7v8mjTKiSIof
         7/uM+6pElvWUZR43cZU+QqqBk06H3Qoe3W2r9OxBf8joNdNsP0RwpACHHwsxmW9vFFgr
         lb8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWlaRSNE97+eGa/WooZzojPK0vbW3Ype40gFlhZMaJuZqNdayEw
	IHuZY54eE7UeBsWpzZYHg10=
X-Google-Smtp-Source: APXvYqziY3rQnRlVjOoSOF4knuUV0IJHMA5V1fVdkFKdpIKGmCzdFTQ50G5eBLEVCNnZCsnyEOHesw==
X-Received: by 2002:ab0:438:: with SMTP id 53mr17057495uav.121.1571099592550;
        Mon, 14 Oct 2019 17:33:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:4546:: with SMTP id s67ls582122vka.3.gmail; Mon, 14 Oct
 2019 17:33:12 -0700 (PDT)
X-Received: by 2002:a1f:7f14:: with SMTP id o20mr17783142vki.100.1571099592204;
        Mon, 14 Oct 2019 17:33:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571099592; cv=none;
        d=google.com; s=arc-20160816;
        b=Tv5gYeYryHAF0SW+Gx50qqHdT1nUpExVCSahpEf0Xxcs7gvO8EbfGKEbtx6HLCAvAA
         Kaavi+2Z5rEE2pAMWhqt5GjVW9OIiyiqrhfCJ84Yu355o7xTRk9Jw5TwfTcU7oN+aedc
         8oehLDMNmOuSj/8NzRPY+dPcye2duGTZ6q8PqwYQvsOQ6FGmfXBwcxx+Wawu19eT2t5j
         yVcKXC/xlW3dcqMlMFauIGuTPY1BGqiWs40uG6IWvHBQwmfPTbueRfHKkdIgMylOtkV5
         xR2rU3CHaTM7Pcqlw3jZqeN6vfse9nzJClqgKL4tvOqwLYN9MsDFxbF/15FNEiekB2Ir
         VEtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Hxi7XXyiuXPasyBNl2Tq1Z1jsze09myrINpEKWOeyjc=;
        b=B7PKvQy+lDE/q3pq414BnoEi+VWSGmYNuJAjSe5c4Rr3TFYu66yNbteh41/VjppawY
         oiuI6nwdwW52cozXV0VSQ5Zk5ttYvArdWMplNJmZLMrXxkNQD+1MLlMAk6/Ip5GLm//j
         cUaOg/vEsTcwbGIm0OflPzaALwwwHJqHNtyryfx3CCA4zb+wzzpsfAxWIq1S9NT9emaw
         0FbnAGRQX63GRBEgTXW56JIcoc0wg3q9fr0HranyeOz5E09zZQFLGHpU+bEr4GfL/tpv
         8e8kcyKhWr5WdKraB6PJQ8XihnPlmiY+xy55Fbl/WsDeHLfuwoTfQ8olS54rmxroyW7S
         nU9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ysPml0GT;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u65si412105vsb.0.2019.10.14.17.33.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Oct 2019 17:33:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 938B5217F9;
	Tue, 15 Oct 2019 00:33:09 +0000 (UTC)
Date: Tue, 15 Oct 2019 01:33:06 +0100
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Andrew Murray <andrew.murray@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
Message-ID: <20191015003306.gdmnu2qdte32guc5@willie-the-truck>
References: <20191007201452.208067-1-samitolvanen@google.com>
 <20191008212730.185532-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191008212730.185532-1-samitolvanen@google.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ysPml0GT;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Tue, Oct 08, 2019 at 02:27:30PM -0700, Sami Tolvanen wrote:
> Unlike gcc, clang considers each inline assembly block to be independent
> and therefore, when using the integrated assembler for inline assembly,
> any preambles that enable features must be repeated in each block.
> 
> This change defines __LSE_PREAMBLE and adds it to each inline assembly
> block that has LSE instructions, which allows them to be compiled also
> with clang's assembler.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/671
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
> v2:
>  - Add a preamble to inline assembly blocks that use LSE instead
>    of allowing the compiler to emit LSE instructions everywhere.
> 
> ---
>  arch/arm64/include/asm/atomic_lse.h | 19 +++++++++++++++++++
>  arch/arm64/include/asm/lse.h        |  6 +++---
>  2 files changed, 22 insertions(+), 3 deletions(-)

One thing I've always wanted from binutils is the ability to pass a flag to
the assembler which means that it accepts all of the instructions that it
knows about for a given major architecture (a bit like the '-cpu max' option
to qemu). Even better would be the ability to supply a file at build time
specifying the encodings, so that we could ship that with the kernel and
avoid some of the mess we have in places like sysreg.h were we end up
fighting against the assembler when trying to define new system register
accessors.

The latter suggestion is a bit "pie in the sky", but do you think there is
any scope for the former with clang?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191015003306.gdmnu2qdte32guc5%40willie-the-truck.
