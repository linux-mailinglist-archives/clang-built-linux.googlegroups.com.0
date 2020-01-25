Return-Path: <clang-built-linux+bncBCUO3AHUWUIRBWNRWLYQKGQEIJS2OYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B75149779
	for <lists+clang-built-linux@lfdr.de>; Sat, 25 Jan 2020 20:36:59 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id i67sf4382013ilf.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 25 Jan 2020 11:36:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579981018; cv=pass;
        d=google.com; s=arc-20160816;
        b=f/IG62F1hp/R5JphdW3cZEjQvHDjFmx/L27Mj1Etnx2MjqfB3vjB1jtgZRzFYA3x2O
         DjdmuH0VRdfzB1adF1ofC5OEH6jfRx2Q059TNnkVxjZpgMaQBlhXLGLcxF5Z+VAuvUBV
         AIyGCSAsGjxlun0LAaP5UHNxABtl5FMopGUK+dqnisyQRw/6sPfJKRWz7APPCJyUkJ1d
         T4J/kL+6JhCS5tqAEqi+c4kIFtR7B3yILCvyzcqRXLwim+dmKakqUWg8DaGfMkHmQao1
         MYNDIFU8vnxWHneIdhnSm0UwBGyBfjsHm26IjWDHJWlBjUPY/M6B9WrqC4f3uIdyK8sO
         gc3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=oWEHCthS1F1/o7u/Okgxdh4RgyiMfYqNifaiN/ZU3iI=;
        b=m0nqbSzxvILAxGbzd2Qb/+DMkdG5wVzmirlIxV2TCxPmJUhNymkc4dszd8BlGXsjhq
         lboQJRlYXnkcXFuk4/DLJ/oA1KV3hkz9N4rT37BIij2v/qszT65B9ebSZwp56NHfDBk5
         HwpE7HKBX0x+KgZ72h9D24iakzrjRbwgk6TXgHgUNqFV0trkuBZSriKW7fswFM8EuQiY
         SeW0mwJXe/GXx78Hk/il9QtBVynSToWC8lFlwxr1zAtZEysW6MBkawvhxYmKk3fvvPMg
         EWpNr2anc3koWS6ZrbwgyDp7yuPExWjoCmUVyFolsbwmdU+k1v1n+v89w5lVXiO2Bzje
         MDNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=FYEqJiUL;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oWEHCthS1F1/o7u/Okgxdh4RgyiMfYqNifaiN/ZU3iI=;
        b=iErnhBFbLA3XybPacVdeeklS0BZqsqNCG4GB/QqU2VCu2kEg/XyumBLrXvVsS7m9Jd
         0AVzK5XeK+hijLSiLR0S15J1ZgsbIZbNqPAJ3z4xHO+DLx571LLysBZSISCGTijZ9cdm
         8/HPwR+AHitY6gHH0nc5TPEBUank6mY9raAx+JC4Pqlqcgbd8RSFMhZMZZIV8z8Y2GwN
         /1kg9Qw0ZaN0ltnGHKwbv4PY+LeQbwDKVKkhAi8YgmMYhXs0G4YBucezDVzOygPcOftc
         nixyqoyJev4PuBXYyfbNk9hA0qnVNS5F5fEk26bIBqFPgWpoZRNNbl0jgA3+ao3Oztjm
         AGMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oWEHCthS1F1/o7u/Okgxdh4RgyiMfYqNifaiN/ZU3iI=;
        b=DP4Xm3lr0dx8Eu4qoXADGv8hMtt+KBySUvgqL0045U5ah/Xoc1uFUVz3OTbw5S3qqo
         qgFn6zKL4CgLgcUgb/XwZIIynBSEViC82vbj4lGDaWeDCa/hmgWZsohb755PD4xyr2FO
         0mS4aHIXam/jbvN/gOFf1AGTFm0bO5y/JYiiL4Kj7wb/xNNM7T1JFXuTdW7aDge/iMaH
         KUI0A4JVYVQkW56lGMycRBD1nYrt2qzXH3wKI3K1gfVP6QdgO2nv+0G00owhJPK2uFPz
         pY3m7vKZPTTmSCKSXHznr/gVeVlRWncVukEg5kHMA0zj43S3tP8tXaC4JNvfKDv2y1b5
         pN+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVkvuNnqlLNbopsAB8cNNOVm4luF5hxpZYnPMXXpOyp2DmHuZmX
	GZyykML1rVIlNpZClOStRZU=
X-Google-Smtp-Source: APXvYqyQBd8w1GHyuvuM3UBIj00mPAjqbMolurZ4XSnRVLHdsorUCOC866NSUkclDFGmeky2WxrZ4w==
X-Received: by 2002:a5d:8497:: with SMTP id t23mr7155818iom.230.1579981017584;
        Sat, 25 Jan 2020 11:36:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:dd4a:: with SMTP id u10ls996685iop.5.gmail; Sat, 25 Jan
 2020 11:36:57 -0800 (PST)
X-Received: by 2002:a5d:9dd9:: with SMTP id 25mr7201625ioo.287.1579981017182;
        Sat, 25 Jan 2020 11:36:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579981017; cv=none;
        d=google.com; s=arc-20160816;
        b=SfTMn/v4eO8wjYeyi6QPbwb/YdMTdR0YejNFLs5hajOiZt4y8azMs0krD6gP28r/GG
         RZ6pM99lebCekFWfifNsYWCtQ0aBBFBjG6nyQ/4ZiGKvILPz77O61TCi7Zm18YAYqWX8
         B/kKsK2Quelp8iDCELWCDKW0ZxCCoRQxU1FpjDOpBbTHBvKHTDMJBD2BFTUmvZQBSiiU
         ITw6SeJ+VD+PpATXQsRvPId/YJikoiBgc3gfIGh1NnfxdZaShy68Pk3RyLZe/+fQughk
         llgjzK65kApeRhUAIP5DEzprgYQFkskZBC9Tt6UJVTWBWJRy6v1x6Zl5c4LppgfhwuIg
         nxXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/jkLNv4P9QzsHvGacFj4paH67im03/BWQoVxLJL/l4k=;
        b=BifaUjs8LbBYFeq1HM9/nhbkhQ/U+WmpsJPfZJnF2t14Srd0JuNne3XTzFg2CCJ34B
         qg/lEX6xiGv0FxM1LtQKivIeshMJ0JR/KQ0XvWXTRE7rSKOVLYHHErUwvRe7BbTyKe0k
         Aq53ssshpRwYVoDmy4aBjGUsGfjOlE8rWCwjzgN2AW8jXjzVymoFBAMeatksJnLosUuS
         4ONO9PnBCU0zb0phNSsut959tC8STe2jRfoqBWIZQ7GUGuQ/BBJDsb65+U+xc/v+zieh
         FW+L6BlBsFSjvNItwYNvoUOQWsikPbfFz8XBIt6g2Z7bzJgKnFi8YZmebbagEBUACh9d
         xt1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=FYEqJiUL;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id u22si262535ioc.3.2020.01.25.11.36.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Jan 2020 11:36:57 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Received: by mail-yb1-xb43.google.com with SMTP id w9so2852270ybs.3
        for <clang-built-linux@googlegroups.com>; Sat, 25 Jan 2020 11:36:57 -0800 (PST)
X-Received: by 2002:a25:aa43:: with SMTP id s61mr7054535ybi.407.1579981016669;
        Sat, 25 Jan 2020 11:36:56 -0800 (PST)
Received: from ziepe.ca ([199.167.24.140])
        by smtp.gmail.com with ESMTPSA id g5sm4455303ywk.46.2020.01.25.11.36.56
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 25 Jan 2020 11:36:56 -0800 (PST)
Received: from jgg by jggl.ziepe.ca with local (Exim 4.90_1)
	(envelope-from <jgg@ziepe.ca>)
	id 1ivREi-00080O-F8; Sat, 25 Jan 2020 15:36:52 -0400
Date: Sat, 25 Jan 2020 15:36:52 -0400
From: Jason <jgg@ziepe.ca>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Mike Marciniszyn <mike.marciniszyn@intel.com>,
	Dennis Dalessandro <dennis.dalessandro@intel.com>,
	Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>,
	linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] IB/hfi1: Fix logical condition in msix_request_irq
Message-ID: <20200125193652.GA30707@jggl>
References: <20200116222658.5285-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200116222658.5285-1-natechancellor@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b=FYEqJiUL;       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::b43 as
 permitted sender) smtp.mailfrom=jgg@ziepe.ca
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

On Thu, Jan 16, 2020 at 03:26:58PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/infiniband/hw/hfi1/msix.c:136:22: warning: overlapping
> comparisons always evaluate to false [-Wtautological-overlap-compare]
>         if (type < IRQ_SDMA && type >= IRQ_OTHER)
>             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~
> 1 warning generated.
> 
> It is impossible for something to be less than 0 (IRQ_SDMA) and greater
> than or equal to 3 (IRQ_OTHER) at the same time. A logical OR should
> have been used to keep the same logic as before.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/841
> Fixes: 13d2a8384bd9 ("IB/hfi1: Decouple IRQ name from type")
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Acked-by: Dennis Dalessandro <dennis.dalessandro@intel.com>
> ---
>  drivers/infiniband/hw/hfi1/msix.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to for-next, thanks

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200125193652.GA30707%40jggl.
