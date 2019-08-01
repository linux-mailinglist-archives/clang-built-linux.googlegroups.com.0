Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBA5LRPVAKGQEHLG7I2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8113F7DADE
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Aug 2019 14:05:24 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id h3sf18621545vsr.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Aug 2019 05:05:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564661123; cv=pass;
        d=google.com; s=arc-20160816;
        b=GrP7CcYmfYjJxpZt/7xLOn5qbQasQRzYGZfoQA2bew70DN8rbv0KYS/50t1ADGxdDu
         Ont7GHoMEHqhASt7bh7eEXDne4hqgnQ5WYlCL3flNEeGzmRXIN44XqZsFoJgyyBE2QpT
         Ieu4Rb33lbJzTiyV6XmUKDvrfSXgYJGHKzXHTeqO6gA4f/+HezljNwgiPuxWnmPP6RUk
         Zvv2YpV9yVmd0p6nB4alzCu9+u5OQ8i+ePk3wwiJUlQlsHTOeudZt7RdfL3LuuYqiq/7
         u0VCEyidGvTu76QG1ekaOIFLIRtofPf5mFclSKxHFHYlJNuJk4AtkZYU8HeQ59r3f33H
         ABig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=l1Ji8H8V0NCdaPfGuJNn+Tcu/qdp9s/zX+uHRUJkPFk=;
        b=JTCA7iq3CMPnrDTGvL0HQF6cgyaiDEbT+56jbavhMCrOmlEuuGyKJwJ2E1KcKaZSPA
         wLSAABhNKx37ypgkXDgq0r4m8VMlESSDHiGPTl5l7fl1mL1Reo41MPhTNbSMbpoFnKxq
         K1dmE42Ng9qgg90DBZ7+/4cKzfAKDu+pWswSMpjKUOjo6bfMvMQkD63bJ2zuegXFYXdC
         8+yxVisuvT+5YLormXPI0oY7RGEClf1SsrdmrdntJBwIyH3VS4+dwZNpRfzNQSjbc+fD
         GKvAddEhndicioqZsY+b5zqZIQzZqR6z2PjMSLN1nw9UBGgOCI10l2pB2tzXVU+GEP4k
         fl/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="GwbL0bM/";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l1Ji8H8V0NCdaPfGuJNn+Tcu/qdp9s/zX+uHRUJkPFk=;
        b=W/hFAiSQDqSqlJW0rz+YRHyhgQAQy8XCJlYLFg6h9lrOXqR3o+CFP60JfF7x1hOdgv
         fmRlEq7O9gWmO3SGovigXoBqXnl8qD4zJFt+Nai8gc8cYTuLxX9ar6uV80SmJJIvnMxa
         6NA9d7uxSFDzVt0lLCd85H2TefVc/oIhqgi+4NCeLgWuT4k/G960V2CKMgzb3jKrUgLU
         el8eNQhoBG/fWawG/PmGPDJzbumXoIKo//uwsF6fKWLjJNlh82hWzbvk5F7YLYdXL8x6
         okMibNBKXLmzN0kkbWOTDipvd5QNx2UFa0s+RBY7bM0F/kwd9YobUhyuglOXFb8NV6yv
         BZ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=l1Ji8H8V0NCdaPfGuJNn+Tcu/qdp9s/zX+uHRUJkPFk=;
        b=s80CxsEPGdEF9pqswuHlPN7BvYlzK4RIKaHO6FDAboTRNIvjcszXUZY/Zs4mXHOzpo
         5bHgZsGfrocfuth8iWXo66wOlJy6eSwaFwSoYcgTlY6i8+zUtkHt0ZMusP/LwN5wEzyD
         mTdx4hThulOtyzvHCvLTHwVzBWihr4D2ON+WN5w02jQN5dHrGXcJJN47TJrQVz/rIjZk
         2M6LcvI+TbJz2GAjWwCVred4F3626kFjvJHx4cmLTMjrl0EIkB48Pl/W+Y6dmv9ZXEAk
         U7O6tAnRiLf6sdacUXmTykyd/v8u3Vl8hZC3JmIWMxv7TBHyg/yNW3KiNMMRj1IQL9tj
         CshQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUez0VrPDj7XTHIC4dIm913pf/oZvsci786al0Dxzdd2o8MrIAp
	4zf4IB6Zqb4SQQd5vzGKe50=
X-Google-Smtp-Source: APXvYqwZjhJk9DGPagldJASVKc+TxNTisJYbgVTkEXTmg558a4FxX17PhKrMbFvJTgZQUBCPOxm5GA==
X-Received: by 2002:a67:fe5a:: with SMTP id m26mr55485568vsr.230.1564661123640;
        Thu, 01 Aug 2019 05:05:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6844:: with SMTP id d65ls9489822vsc.9.gmail; Thu, 01 Aug
 2019 05:05:23 -0700 (PDT)
X-Received: by 2002:a67:f713:: with SMTP id m19mr39037626vso.183.1564661123374;
        Thu, 01 Aug 2019 05:05:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564661123; cv=none;
        d=google.com; s=arc-20160816;
        b=Z4FG9F2BdCthPJ2DEdS1VprbDtR61IDvM6L3bmflhXs9OAnqmEzoMReCFElX0nAZ3F
         XH0lnohXgh7ypL68rmi9a2uUlqTlU5pi9X1GkECqkH/SGxzCpD8q3PyzuwuSOkkPSM/G
         nUb1IYAlVgpeDGXQxt/hxt/us+JKtq1YxbIfh9u3MZPZ7p1KBzwE+JgGs/UmEd0fhrRV
         tDRvgLIzHCFoJbGae/pUrSORC6D6Lsdreyq8SbHIVp3qmMt3OI9yWLdCNztJD1IRfYfM
         rqjZqtYcfejP7XkAf1Sv7X0jIZmrfu5LkaIqtokewXglL5jS+OYTCsqfUc0G4YoBk7/y
         kk3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Wt1ln7svjcjz0nSp09omKfQskmEcKkd5A1j8n2C2qeM=;
        b=qvWySFAmsW6IhmAe3r9FAZthV9CK6ZjMLWGO5s1JisVHFVJeyoipH6iQ4HfQdSpT2D
         s3MCeVO63Npp44isPcTAjgOoN7ANFL5bhzJfJEadFoff3IsS2wyp+OHLIzEPuyF0rACl
         UtTq34Oeb9G/+r/7cVV/yxMIirNqj6MxSmEk4Zt/phM+lNYq1TEgNlx1DXEyNEwLQBd3
         zfWMCsx/DQb85mlsW7Vk9T99VtXXvw6gJNHw3Bttwll81RF3ah+v9XDRtw7rK9SBKnRZ
         hw3IqnAWQUywgMDXpn2meMqLcfXdL2E90i4xi0fViZRU/T/AcS6qfCESoSBV1GiPTGKS
         i0iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="GwbL0bM/";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e126si3853370vkg.5.2019.08.01.05.05.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Aug 2019 05:05:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CBD6120644;
	Thu,  1 Aug 2019 12:05:19 +0000 (UTC)
Date: Thu, 1 Aug 2019 13:05:17 +0100
From: Will Deacon <will@kernel.org>
To: Peter Collingbourne <pcc@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v3] arm64: Add support for relocating the kernel with
 RELR relocations
Message-ID: <20190801120516.pe6vzl2bmko6hhk6@willie-the-truck>
References: <20190712193846.174893-1-pcc@google.com>
 <20190801011842.199786-1-pcc@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190801011842.199786-1-pcc@google.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="GwbL0bM/";       spf=pass
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

On Wed, Jul 31, 2019 at 06:18:42PM -0700, Peter Collingbourne wrote:
> RELR is a relocation packing format for relative relocations.
> The format is described in a generic-abi proposal:
> https://groups.google.com/d/topic/generic-abi/bX460iggiKg/discussion
> 
> The LLD linker can be instructed to pack relocations in the RELR
> format by passing the flag --pack-dyn-relocs=relr.
> 
> This patch adds a new config option, CONFIG_RELR. Enabling this option
> instructs the linker to pack vmlinux's relative relocations in the RELR
> format, and causes the kernel to apply the relocations at startup along
> with the RELA relocations. RELA relocations still need to be applied
> because the linker will emit RELA relative relocations if they are
> unrepresentable in the RELR format (i.e. address not a multiple of 2).
> 
> Enabling CONFIG_RELR reduces the size of a defconfig kernel image
> with CONFIG_RANDOMIZE_BASE by 3.5MB/16% uncompressed, or 550KB/5%
> compressed (lz4).
> 
> Signed-off-by: Peter Collingbourne <pcc@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> 
> Notes:
>     Changes in v3:
>     - Move Kconfig/Makefile logic to arch-independent location
>     - Tweak CONFIG_RELR documentation to remove "currently"

Excellent, thanks. Queued for 5.4.

One more question: is there any benefit to supporting this for loadable
modules as well?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190801120516.pe6vzl2bmko6hhk6%40willie-the-truck.
