Return-Path: <clang-built-linux+bncBDUNBGN3R4KRBHXQ27VQKGQEHXMU4DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D192AD350
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Sep 2019 08:58:39 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id r21sf4063541wme.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Sep 2019 23:58:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568012318; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ar9hMP3Fp1/9x9D1SJapXfzgsLSv/majMUzck9mU4vtfHP9TIs6JFxOWbvkbwwW/4S
         gfOYj6qSixcSfPz0h3TxS3WA5X54dhda+0uUH+OBMGZUFxX8uT/ArlhZ3Nhho2VoYML7
         Ntjr11t1YGIlLrozPLBkv9tZ46eue2vbB9wGtL2cyMzKPYapFa92rHNx3EKzSvQtigFz
         F+i5a/ReWtQwdieZOyDhkCJ0xcrDUYUA8hMSDLAmgqBNfjS87Tbhg/brVROM+5zInu83
         m6kjDSyS2UtuPlpAqd+bwv9yjtYoyLzof4C30a1xjurFEcXiuJ869tYVpN1xZtF0A/pk
         yrfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=41KL013ZVaXRI8/ldJrL1zH+mAr9FzUAHCZdc7uSJXE=;
        b=Vqcc+ivoRtzj9uuWrlt5SdVMlwT4jysVE62JR3ki1C1zmD+xvIO+nrQqf5FnbCkSBW
         J2EDPRw14L+R7WV04qKBy6JQg8l1CeQlzNt6ZTp9lM7mp/Lxnzc5IeoKRBDlyPbb4zj1
         JiNN49TVdOzdKJofR6SMSpw1Yp/BH7chwj/d+a3g1wd/L1Ldim0uyqSG73ARg0CqGIDG
         OB3SMFWyH55djtpjZL6a9CTuFadiKBuYzw6mx9WozjScAPfaG6OgPdPgjpqaQkAHTxS9
         34pVuluuPCe62o5piaoFaM2udGD5n8jaEVrcrSE/4xfU1wOvgmsSi4Ybn4PnrGwsdHTN
         LvHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=41KL013ZVaXRI8/ldJrL1zH+mAr9FzUAHCZdc7uSJXE=;
        b=i5oAhxcGorB7W/a11dV/MQpvBKuK4za0gVHGvldPeJw7GPMF0uhiHIKG505y7ZSAvJ
         vNJA1iPMv+sug67gyRkJGa9UjNVg/a3kinlRUwKWTyAXt6fySR4xL3j0rzGk1QxVcDJb
         +Ir5FyRThXsxhtHO/vczJwuysA8qlCy1AmjEn/XjFUvGy3tO6smc2nMlWLJlqjMA9D4D
         OyoRyXWRrl3YDDHRPO2g9bRfMcmZFuoj2GW7rw84JnXEsYI2jH4DeNvKE9O8btSwjK/h
         ebQdx5RVxsag5AkHgLy5pk6tHn01a4enmhDOC+Qzi518qJzKe4wQL+lzY7GdmWclCIgU
         tOaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=41KL013ZVaXRI8/ldJrL1zH+mAr9FzUAHCZdc7uSJXE=;
        b=p0GyN07RZqLQ1pRL8vXN6xTTOsZ3kyFim6ykVRktwWJfCzaLiiXnm5A9JkwsHXPUDj
         nrr3FoNgXLE5iNJCIEbHuL004YCZuWiXKudaYnkJvGZ00qchnoxroiQ6KexlfeDQTrhU
         tC4J0dHwuoL182iKhEJqSlI4DseKmpTmoIBuinf9L9ZY9CsjK9z7xeHczib5EieJd/w/
         CdNYAWAEuCkUPufB5++qdFGksIhCdCupmVGXLVjjGePVUD+mhr7Tt3jH6z3Ixy5O3LuX
         SZ1UQEbANQUZx5MBL0VT/GlgLKF45hy5abGjfhQ+fHYYgFxJM216G7r/i0ThanBPZwFN
         TcFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVTLAXnpgLdORIPLTWAgbYk+7/CAhykadLBdk1ocvrkxqAwAtI1
	jMgDdY1czuRGjFcItQi4gZ0=
X-Google-Smtp-Source: APXvYqyOE62tXDW+HxmSHqtMM+2YVWyG7xaBvd1bAn9qvU0tmqblRkpmI/65EngR1QGuUrQAmTkgOA==
X-Received: by 2002:adf:e986:: with SMTP id h6mr17777373wrm.59.1568012318901;
        Sun, 08 Sep 2019 23:58:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5302:: with SMTP id e2ls3520444wrv.0.gmail; Sun, 08 Sep
 2019 23:58:38 -0700 (PDT)
X-Received: by 2002:adf:dfc2:: with SMTP id q2mr18743095wrn.307.1568012318428;
        Sun, 08 Sep 2019 23:58:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568012318; cv=none;
        d=google.com; s=arc-20160816;
        b=xL2a1pXN9mqipFxNR/5PnJCS1xiVAotH0yqLT8DpwFLPstqlAz9vKAhtCO3G9Ef/gd
         AXBKPi3d5mb+WhSvlTYFuHwXkD/zViJ5EuNaU/8R032puG+yvvBoD67VAGzWiaoIsiur
         pRGc8UMH6Ik/okh4AdTyhAF3iBGR+hdaApkESENbn+JSzL5RxXm9VvHuGuRp+dCzz15L
         eZ4MhHyjYLIeIfZUpWAMC/gBAcm3Gk7QVN/PpqDHgFBy67CZKTzsoEJCj7SbE5CMCiTq
         nHBlBvwGSnZXFq9CVa9EMlzdrpDOhHfFGqcvmzSMPej0n3oY/2Gr1ftUtaWsOQcQig4M
         gxCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=T1wkiWBA1tdcZtsGv/OCOYFoMTnw6nbZRq/BckGMCDc=;
        b=TUXksIKygj2tBONj4k2iXEmfYTWTjNWHWh89W6PYCFSTuIaVOe6uxaorrAJhsy8jeB
         Rx1Ow2i/BF5vx67G8BtEDS5CM18C5rxdJqscFDG2uC/FPjoweRcND+jKdrcGYA7QJuwf
         5T5+BNQPLvTSBWL0UBZaeSbzsMfdLiSNYKwSr5pj7S+9wN+91gr5KZiWAbrkbuZBAJA8
         ZIfyH8HNLgetTwESArUzuo0LUIvAHrtm8a68juvnwxFOzD0jhQKDPG5dCVf4/zQo6yfI
         vWjlfgHvnVl/LcY0tWEWnaczb8lzr3y0M6+VlSXZa4IEzACYzOzBcHonpgdKSVOWeos9
         xH9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id m18si777310wmi.1.2019.09.08.23.58.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Sep 2019 23:58:38 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id C676D68B02; Mon,  9 Sep 2019 08:58:35 +0200 (CEST)
Date: Mon, 9 Sep 2019 08:58:35 +0200
From: Christoph Hellwig <hch@lst.de>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Christoph Hellwig <hch@lst.de>, kbuild@01.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [hch-misc:dma-mmap-improvements 43/43]
 kernel/dma/mapping.c:272:1: warning: all paths through this
 function will call itself
Message-ID: <20190909065835.GA11077@lst.de>
References: <201909060153.fUJWrF1F%lkp@intel.com> <20190907050044.GA14449@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190907050044.GA14449@archlinux-threadripper>
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

On Fri, Sep 06, 2019 at 10:00:44PM -0700, Nathan Chancellor wrote:
> >    278		return dma_mmap_prepare(dev, vma, cpu_addr, dma_addr, size, attrs);
> 
> I assume this should be __dma_mmap_prepare?

Yes, thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190909065835.GA11077%40lst.de.
