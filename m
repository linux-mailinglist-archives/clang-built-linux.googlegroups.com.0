Return-Path: <clang-built-linux+bncBDB77PFGVUPBBQXA6OEAMGQEZPYVOZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 070B83F02CB
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 13:34:27 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id e13-20020a05651c112db02901b29ccfa84fsf918070ljo.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 04:34:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629286466; cv=pass;
        d=google.com; s=arc-20160816;
        b=hw6ZdxSi9tWKzJQYIGxa4pLaLkqFBCNcC6KRTsfujI9usnO1RTNjsNbVPttpLUPvAu
         Q2U92Vlk+3MmMS1zRoK3A8M7d29MLcv2liyiD18KAnPZAG43A1l15eSh9uFdEe3o6Xkd
         E8+wAWJJLafvmj9K0ApbgxImBYXMww5UIpjeGCvuilNEos0M7ZbPUOrQroCefzXtliTq
         4JimMmvSy4cbVwa7nf64cNBDvUBqoUcHWZOjAi5Kz08C4foclxQyfPPUzsyhZxmNmhmQ
         uWVDNQG63t58WMjYgmFNTDTXz2kxH8LoPnQiMjx4RNdDDo7/Z9oZftIz6grVyAHp7oSG
         jPng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lI4QCYlI8LwDVxQGuJuKgcv6JP0e+dqpnYPI4782Y/U=;
        b=0hgm1+WdasbWkzegJmwHjEqbiYC+gyHKApEnxoyj7gx0WAM4fsnfQN4WM8HLCaRIlG
         5Yq9y6pQLvXpmnsc39JP0qDriDubuxherDQNp1Z5pSM9yGc9h6XbpX3UbcyVHch5jT4k
         N3Rn91J0ibF1d+quHo6ZGBL1mHAAlgTCpfISE2+KwY6rDVXrypt+uxxWe8z4Lx2Kx8uD
         boKI63eqV3EUDGNw1L4g7OqLFITLJCLZ5OIZPtc0/tS9DJzdWE8Sf0CS7Yac6Wtp8EC6
         tMM70PZg6IS9khD/M4NvIKsA0Jf+bIK/SYGaJX9X5Nq1fc8oyk4PKblpVZdgjHhbb6ps
         Gf7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of joro@8bytes.org designates 2a01:238:4383:600:38bc:a715:4b6d:a889 as permitted sender) smtp.mailfrom=joro@8bytes.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=8bytes.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lI4QCYlI8LwDVxQGuJuKgcv6JP0e+dqpnYPI4782Y/U=;
        b=nHQeUjJvgTR8CBxLMGdZxeTqbOgV3cURgPa6u3rmUlaFwSiQwurPeH/oWbwmHFl6jD
         gu3PfH9msRPPUS2qCi2gksIHWWmkDtWitMqqy/MaoGtYBCrUnkeknTb1gRjB0W9Mhn2/
         8V7xGOJQXNwg8XRqGD/ChUQ9FmYmMXpWy6MC5aEP+oPDJh4zsT1+QoOQV579C5Cn+hJ1
         I7Wu17OrGKH5GEcxpqo7YCZOobLs82Q1aUgHbXOU0/14Gtb8LeK/cqaAgh5BqebpsrYj
         Q1XWYzrBTifsF3ckGENbaS5NKIBsWjFkfnDx1H/GfXhnPiiemt2CRo8SA3UAgeF+/9tl
         uGuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lI4QCYlI8LwDVxQGuJuKgcv6JP0e+dqpnYPI4782Y/U=;
        b=kMP2Hwoz09yDt/EjFP+yhTy2Mx/4GRJ86EN6NeK8geO8i39KWtZHZ9XCpQfLSG5oQM
         d52YO0leMP+ly6IUAxFmqWEOfkJUkFIGI+rL3dd7ffEtndXFHNTCYDamdZfyW+ZRuQio
         TyAXgA4cnuOvRLhdiK03OXMllf30rCoqv16qBbo/Du1oViBii/1SHqY7IUJeBctPLrTV
         EoU6ValUXfuOVIwa2jQyirhTCyfkuuE+FcaaMnFbPfwoTKuMdBeIvLLn6UlukjkUXj/v
         qSzLqeZii/3V4q1MQEv2jxn6FEqgBGNQXLJnSiD7YDK1aYVImG2D2sDgfdMzRGCD2OTB
         DWvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532vPNF2AZ7Ai+J8qBEEAde6OuofdCNaGXZvpM0sNrVpNsCmj1Fn
	lnMe0V/toIO1zplRKa5qF00=
X-Google-Smtp-Source: ABdhPJzusKMahoaRkATQTYfKcSLERzIl+/AvQvRRf54A5VZbtJbHh3vxTl2Jo1QbA91ntSXD1GjY1w==
X-Received: by 2002:a2e:98d3:: with SMTP id s19mr7566378ljj.179.1629286466591;
        Wed, 18 Aug 2021 04:34:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:c13:: with SMTP id z19ls1125855lfu.0.gmail; Wed, 18
 Aug 2021 04:34:25 -0700 (PDT)
X-Received: by 2002:a05:6512:358d:: with SMTP id m13mr5926387lfr.565.1629286465434;
        Wed, 18 Aug 2021 04:34:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629286465; cv=none;
        d=google.com; s=arc-20160816;
        b=vZEt1JLkpjIwDCvo2VIO01ckt5WYzWAXh/vEuUqpPtIIeGDTQqDQtptDe6k4pfdzgc
         vChkODjPh+uNlCv7isHjOXrFnJqpRVqZvYk0vdPfgKCG7SqCGhiSCZdUgfkRSjXTli/s
         YArCPeBGw+rn+RaJtyu4/ohfRaqTxl2an3+1Y8xRzHh0041AdIYjw3ZusaLTIoaFtPe9
         02nZfY3ujuul+cPqXJYg5ufH6ZgU8ElkaZ02mYesp7Pqr6u/h5FTAm1CUcpYy7hMmmje
         Aonq3CZA8VIZVa7cgob713Vkv8iZta2tBN//Goll6f4PSZK/oj1fk9Gdr98oMqRzXIHE
         a9ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=kbeh2Zv8kwAjXBynwvmq/3SeE/IUehhjAviY3HwBvAI=;
        b=mF2ROiVq0RpXjAmliIAk/9XNUTuO1jmuzth+cSstKU/F+KAha12ESJwBEefxlwAnJH
         BZuYFbYt8SNrgqZCklCrVrpHBZ4YfDoxXZ/OyJFXv10gdKhpO0HsrdssehgPvtlu0Rqd
         6dopXF2waK8ZZP6YESsFpkKaH0rf91ju1j3i+T0qm2BK41jHRsopDQ5Y8Nd8seWoqVZN
         A91TvXJm0Dl2ncd5PS1z8UZC9O+7NbRZgh8N6jddrJjyhVvSbXYv9eziko6Dg7D4g+it
         caQVEgJwj4jYw5Yo+zcc9yf9cnJ4vJDuHEN8CYyJYLx+aLkTUm09FVzRWx3iXgktNMOn
         jgMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of joro@8bytes.org designates 2a01:238:4383:600:38bc:a715:4b6d:a889 as permitted sender) smtp.mailfrom=joro@8bytes.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=8bytes.org
Received: from theia.8bytes.org (8bytes.org. [2a01:238:4383:600:38bc:a715:4b6d:a889])
        by gmr-mx.google.com with ESMTPS id h20si221157lfv.7.2021.08.18.04.34.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 04:34:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of joro@8bytes.org designates 2a01:238:4383:600:38bc:a715:4b6d:a889 as permitted sender) client-ip=2a01:238:4383:600:38bc:a715:4b6d:a889;
Received: by theia.8bytes.org (Postfix, from userid 1000)
	id 759B924A; Wed, 18 Aug 2021 13:34:24 +0200 (CEST)
Date: Wed, 18 Aug 2021 13:34:23 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Will Deacon <will@kernel.org>,
	iommu@lists.linux-foundation.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 13/63] iommu/amd: Use struct_group() for memcpy()
 region
Message-ID: <YRzwP4cuyONqm9CH@8bytes.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-14-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210818060533.3569517-14-keescook@chromium.org>
X-Original-Sender: joro@8bytes.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of joro@8bytes.org designates 2a01:238:4383:600:38bc:a715:4b6d:a889
 as permitted sender) smtp.mailfrom=joro@8bytes.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=8bytes.org
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

On Tue, Aug 17, 2021 at 11:04:43PM -0700, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memcpy(), memmove(), and memset(), avoid
> intentionally writing across neighboring fields.
> 
> Use struct_group() in struct ivhd_entry around members ext and hidh, so
> they can be referenced together. This will allow memcpy() and sizeof()
> to more easily reason about sizes, improve readability, and avoid future
> warnings about writing beyond the end of ext.
> 
> "pahole" shows no size nor member offset changes to struct ivhd_entry.
> "objdump -d" shows no object code changes.
> 
> Cc: Joerg Roedel <joro@8bytes.org>
> Cc: Will Deacon <will@kernel.org>
> Cc: iommu@lists.linux-foundation.org
> Signed-off-by: Kees Cook <keescook@chromium.org>

Acked-by: Joerg Roedel <jroedel@suse.de>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YRzwP4cuyONqm9CH%408bytes.org.
