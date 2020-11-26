Return-Path: <clang-built-linux+bncBDUNBGN3R4KRBNGA776QKGQEZGUZY6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3762D2C59FB
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Nov 2020 18:04:53 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id y187sf1650947wmy.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Nov 2020 09:04:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606410293; cv=pass;
        d=google.com; s=arc-20160816;
        b=yHnVdCg8vHvF8ale5Q8rwunwdmjafkSI+60lzIYEnWPzSDELFailTqOjAOCE5rhYE+
         OnIeanVKyXtCEFb0EiaDtRWwK4oF0fdO6c0N4NHItIedDpF4JB+wS8Sew4IeSZm8CIly
         YjtLeMzxuDI2r6Os08Ax4ENHWFwHr9CAtRm7KGANlKaelO8amb0v4Aremb7oljUzAJBI
         IiFTFxHG+G5B7uAXjuth/TdelJdrRHMtBnUwhI78XTRJaJCM5njf84INARWpI4tOU868
         ic5zlz5Mk/S2CASGkwS4C5pqyK27fHb7xK9rkSdTMG3uUeqZS2HVGvvH+eSgR1R/Jcoq
         cXgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Q8EO2psFifi4liwGLloeNx2N2F0EfC8TrrCscI8fpJs=;
        b=x015EtnMZ0beDPqnnzsSgtEbb9ahXVTtX677YYgvj13sGvgGmPysQOWx0qgL7lXrXF
         mV6nxn7C1AS+VsZIS9rh5dMGtxGOMfwoDuFWAQdsAtIXb0JlWQWkMQTitiMwxr0QI2Qo
         WnNZ/G4KdsEN7jXUUcCLu+noflgVHWla8m7J5c536+C01QlKOz9s07YPtC8d4/rqXsoC
         nxcWERw0dC5aGpqh1G7iqnYOJY9tYKJy9ywh4+Z6J3CdFSeYH7N1rHSOPpn9k/ZnssLJ
         HDVbDoEbgovROR5w6zSZXj75wRQFu+Lc2PbYHihA5opVSI1iZYjU13ZOov+M14P61THf
         davw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q8EO2psFifi4liwGLloeNx2N2F0EfC8TrrCscI8fpJs=;
        b=bWQNQkfE6cWPRG6h2tFJZIxosECEYho+Boz2n3OoNfdMOFiCgrN6Th5TPJnY4/ZTTB
         HTdS0aKW4SwmNepSWVSyTBK2RuVESOBPXbIdEI+LYWbo2UpD3KkPqANBucNvyVDS3ZQa
         QZXaRYysiDLx4Uv+gocBI+mUOT4Gey9YmbrM8RUhMz3QImeIBQqgHG9G7WvLTfY4inye
         72Np0UVeFn42kjERHE7XshjFq7m6UurhsWh0t76b+PBOI/3ysR2j8B++FEpbtFuCKomi
         HLG1TcTrNg8tVkeq9/g3hDph7o/R2thBzn+zX145b5KpZ5jS3eeWMNjtAPkjvjuHeJvY
         omqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Q8EO2psFifi4liwGLloeNx2N2F0EfC8TrrCscI8fpJs=;
        b=bziQ6J9U81rB3N0z6e0iW5w4q3WK/+aX7CQ5qoG/e36vqtnwUBwnlXeQ8/dKJABkvI
         NS2oVvsLcRwpzcONFi+SWlQMgx0r9IUmNw4AHrOGko+04+zfANBu3DM3FKL+SOI0Pa1k
         QwukV21ftxdmGgpbSVrq/d3EK5L4MBKpyx7KDtDTEVPqdhXVUStwkOt+U+Y5drOHjqyE
         Gn+FPpavFyg3zkWLfCjS2HASQSUn1zCOCVaFKz6mV8a1JIsCbh7dESKe2FjWVoJkkTtU
         OVZA94AvwwPSJSgMOha2ErPQvtpmUzg4RwrVPETEC/Bp/nmKAug/I64yG5v9t7qrRM13
         JukQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328JJFUMHbjKBKwu8ZOWMHV7nfCX4irVVQXAwDt8lXUqHog7Z8G
	9rOzvd0kJ3jZz0oSsjcikqg=
X-Google-Smtp-Source: ABdhPJzI4iptDbBxpSFdYCPfMeND/fN0R3MkpBcYibNjVS5e3oZISNZFxUdqXhCj+r5HqIgsONUPYA==
X-Received: by 2002:adf:c702:: with SMTP id k2mr5223566wrg.156.1606410292958;
        Thu, 26 Nov 2020 09:04:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c354:: with SMTP id l20ls1271548wmj.0.canary-gmail; Thu,
 26 Nov 2020 09:04:52 -0800 (PST)
X-Received: by 2002:a1c:9ecf:: with SMTP id h198mr4410784wme.104.1606410292028;
        Thu, 26 Nov 2020 09:04:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606410292; cv=none;
        d=google.com; s=arc-20160816;
        b=LPAQaIuUuhBrrBwyytfLkLL9Zllbl1GIP0bciHHJVvDGju5VmMLlVAS+j3kAg+IxdE
         hPgKaAhIBgVVZkIxDOveMGRSai1+iNOvnaTv+xADyF+3uM9jYpg7sTacSPF41LmeXcQt
         FiMUESt4i8CQ40E7JwqEOuFiwIxCmU5Ar30FMkwoEDVrbUA8fF7M+lcvWrLUMS9fkRIK
         Kz/W8ZM1vLfLkWw1Vt37BO1MDzx3gmJDIrVqe/E9iyzbEVXmEOnN+ZAH7/WgaMe2pJ7Q
         Dpj9sQ7pI+szfbu555mcMpxFPCdc92IwczD8sS+BC/9wgsu0Z3xBiweaDirkCe1BROLC
         QGzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=7lXypbpZpYN3ftqh4QHTozWZAfrfLo9ltQH41CfvAIA=;
        b=1Ezo0qT0cjcm94dsxj5PGW7N7VHKVRQu72rJi2OK8fPTNrRR1LXHYOsvv2S1LRZNBS
         K/4d+bo3rfpyco67JhbfntmaI8oQgzRbcV1BVU5zH42JSpEGoNm+k5lSlZg/u6goJExA
         KmLv/8f4gELNPBVI5ez4H7Zcbmx/jJj8ZS3Tsx0KfxKoWOZ31A4Dsz6hv+gS/HUPFtUd
         F3LNfd8etU7ymbf0aw/SYCjbOFsWjCmn/GMdhUc/ZYE4LZ87+cEwpi52fbgzAmt3epDi
         apPILKHtJT+iH2B2fSUeF2yPfY4XGBhpKqdi/JdOz0cl5Yf59eaxZW+n7tuzno76ELgJ
         inqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id p3si178292wro.3.2020.11.26.09.04.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Nov 2020 09:04:51 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 9944968B05; Thu, 26 Nov 2020 18:04:50 +0100 (CET)
Date: Thu, 26 Nov 2020 18:04:50 +0100
From: Christoph Hellwig <hch@lst.de>
To: kernel test robot <lkp@intel.com>
Cc: Alexey Kardashevskiy <aik@ozlabs.ru>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, Christoph Hellwig <hch@lst.de>
Subject: Re: [hch-dma-mapping:for-next 2/6]
 arch/powerpc/kernel/dma-iommu.c:16:6: warning: no previous
 prototype for function 'arch_dma_map_page_direct'
Message-ID: <20201126170450.GA21450@lst.de>
References: <202011250556.1tx3YSaM-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202011250556.1tx3YSaM-lkp@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of hch@lst.de designates
 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

I've fixed this my moving the arch_dma_* prototypes to dma-map-ops.h.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201126170450.GA21450%40lst.de.
