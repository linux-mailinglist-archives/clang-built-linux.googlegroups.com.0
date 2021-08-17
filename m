Return-Path: <clang-built-linux+bncBDUNBGN3R4KRBBEB5WEAMGQEHHCNC6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F993EE5EC
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 06:52:21 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id b3-20020a1c80030000b02902e6a7296cb3sf4612857wmd.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 21:52:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629175941; cv=pass;
        d=google.com; s=arc-20160816;
        b=qZs3K4M9FNB8QrYSzR94+bXbE8JSKD4WD9sunIJeLG3Ll29AGlCqeM5YD+bgULHzG7
         i8qQjiW1avsqxI0zdCv3/NRXiIIgeKw2yXYnsS1Oouu15IATbmVSY9LLa0mP+EHBxVCD
         uKhmgtHZ6miHwBH9GYrR20QN4GhdQu9Ehy+uc7uh5vB3rUOc15lRC1acWHG7oKwWfE+/
         asUgGISCx7jhM0GV+VHpqFtXI5MOfY8ph3eNC0CglYJkOX93qUVnijxrNLM4OKm2DiLW
         frjoob7nsn5HjfS7Y558LTiFL7cQOKROw43POaSLEhhDpBLgZJcwDqk/eCOGZVhjAgDg
         /V4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=mQzSnmFFJ+B1Hl1jXZiQQv5bmpUYPfzp0kZQOup7Gxw=;
        b=e3VisjHYXmx5NuWsy4vUeIQALb1g/RT/TDLGsx+Zx0O8TxkIwSCG8Vf2y/di3ZIVOU
         CeVMypwVYKHQ5hPgVFYl/X4r+DZYl+NfJyKR/a0p3kMTWaUHipZnnibHVhlC6oIsTChg
         Li8EOs+F7/Dg2c3M2DSe25IYQrv28nTZopyIKWz0whePcInzQ/9JzYgHFiaJmWJVv+Pr
         QntzXXWqyRS8kC0tXZbmQjJcWwyRpgChQLvOmi4hvWSgFPMCWfuUiW4GmuYinADyYJww
         5IH8sdBHssF4hWmngrPUyTA1HMFYZsXDjDwTz3mpyapH5CYkEHnWLbKAqUoPDjoBHM4l
         foFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mQzSnmFFJ+B1Hl1jXZiQQv5bmpUYPfzp0kZQOup7Gxw=;
        b=forVP9PocOwH1RpNWZ9X6i+cRelCVHIS5yZQtFWH1qT/gt5/ruvuNgGAqBAqLBy8YK
         zraEasky+3DDlnsF3N54e2mrzJFMLVdSBBlI81B6hc0ZVWZfxxgeoRkQhXIql3A6nP0C
         bXz1id54HNRlya/72ewLo7ZXecReBNYzLJ6/VD5Ygc2hA7LYgm/R33SyCuP5ks3XZAY9
         FXpLCTbHxwXZsmmpzicMs7AfTpgte9ToS3kH4RtgxDumkYwuc9lo56UY/dqhPPWsxWul
         SZ+HssazF15SSAOWOzUcTkBnloMOPjP516rFOnvsmNYsVcSRypv7gaYIecEnCjbSSZec
         tLVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mQzSnmFFJ+B1Hl1jXZiQQv5bmpUYPfzp0kZQOup7Gxw=;
        b=QTdOWAq/EOf7VbXZLXRkr7yPVARytUwz1y9GK/pDp5iSqO+Jv0g2KUvJTllJXJYKYV
         sWwFReFWjyPavRF6I+GHKjZ1sijIFZPKYPuQ1QX6MA+5vTU7Qb0zKttdUPDn7u/aBtQJ
         R8C1/FVAXPPWudVMOERv31gjiiQS+nSlUJTEpqh8uZcS1uRH1OlbNnW3Nbe6WoBygIeh
         WgeOQhpaH80o7QH2E4VKU7bFMNkHpXBa/JvehUQ67VZUIhJpbay5TjPHWKXkVmOONe3g
         O6bSHOS0cekN02AQ6N/lfEBl3iDZhQh4ZepCdHPcfBAdF//BtbDbL0fgxBhJw2j5QmpF
         4Tmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307QV6VRFwk4a7K4Q6tx934J8Mcr7y0C7peCLNEQzNxYG4qVIHF
	WfBEm44bhjhGATObw/dkFKs=
X-Google-Smtp-Source: ABdhPJxRJt99Mdj/cpZh9sHaPgunPtTah6jSf+uZ9/DaIRVp98tHgDkMe+s+0Zu1Sl02lhaQqBcUtA==
X-Received: by 2002:adf:c006:: with SMTP id z6mr1553660wre.157.1629175941050;
        Mon, 16 Aug 2021 21:52:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:988b:: with SMTP id a133ls325764wme.3.gmail; Mon, 16 Aug
 2021 21:52:20 -0700 (PDT)
X-Received: by 2002:a1c:a90d:: with SMTP id s13mr1328867wme.132.1629175940073;
        Mon, 16 Aug 2021 21:52:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629175940; cv=none;
        d=google.com; s=arc-20160816;
        b=ou+IdGu5kd9z+jtiRyBV/M9m/ZALAJQDcgEoimvWOxeUwNptIteLZFsQ3BqNH2ibDL
         u19+ZAxY3x0bGthEbd1hc0gVVadVKNqko/n+QHFd++KrbRk11RicaStpeYKItNtPFf1y
         /e+WA74vP26yOOhdzEsXK5+yVVfdwWJd5Ei1QTNg8Znfj8xOBjhqW9svd3XUEWQEyo4D
         Vpsu6df12/H/73cm3c8aTz2QSOn/dL/FwPMItaG1bXqT47ya0ZOICGy405FrasjGMGaz
         EnG/F4tXfEkYdA1kSvxFJdCuifONNScMxXiRIaula8fMPFXJexTo4rJqb9jCo/HDEj+1
         Op3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=4HZ7SiBIY+vOExvEgGOadqeLCgVsplR9xI6/4IDID4Y=;
        b=FYmEGGCVAqCs+T+OddgLAUfdOXhiVXsb2KRoEOFPnl4Ixa8TJ/4kHH70tLPKneuur+
         6qwZ7tO8ETVkAilr7kCLCXZDKYRZFpDIn1QIGnV//d6QXaB6+A/3/KztyXQZaRXdstt1
         4xjN6hvz+yuFeBPgSHzooNp7NEeCeFqrfxnvVuylGO4WGoQTCgakoXbtalzRvn3j8U4E
         /S1GDIookQSg6gjAt/Q3yJoruhNRohQ4gn6XhtS2yYr1taaxP7aoDZH92K8N7KxirPtN
         4CycdoARltT/YimKLJLr+yfK6jGj+RVNT20+pX4D7pPpsJzcnPpXG6oc6PRPoGFYGSnh
         pM2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id 15si48174wma.1.2021.08.16.21.52.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 21:52:20 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id AEC7F6736F; Tue, 17 Aug 2021 06:52:18 +0200 (CEST)
Date: Tue, 17 Aug 2021 06:52:18 +0200
From: Christoph Hellwig <hch@lst.de>
To: Ming Lei <ming.lei@redhat.com>
Cc: kernel test robot <lkp@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
	Jens Axboe <axboe@kernel.dk>, clang-built-linux@googlegroups.com,
	kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
	linux-block@vger.kernel.org, Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 5/7] genirq/affinity: move group_cpus_evenly() into lib/
Message-ID: <20210817045218.GE3874@lst.de>
References: <20210814123532.229494-6-ming.lei@redhat.com> <202108150001.EBuNGcQ8-lkp@intel.com> <YRm5lXfnukXU8Ebh@T590>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YRm5lXfnukXU8Ebh@T590>
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

On Mon, Aug 16, 2021 at 09:04:21AM +0800, Ming Lei wrote:
> But the above symbol is exported via EXPORT_SYMBOL_GPL(), in current
> kernel tree, we usually keep such exported symbol as global, or is there
> some change in kernel coding style recently?

This is about prototypes.  You need to include group_cpus.h in
group_cpus.c so that the prototype is visible at the implementation site.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210817045218.GE3874%40lst.de.
