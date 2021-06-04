Return-Path: <clang-built-linux+bncBDB77PFGVUPBBIMK5GCQMGQEKKXKZGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3712039BBAF
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 17:22:10 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id q15-20020adfc50f0000b0290111f48b865csf4074664wrf.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 08:22:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622820130; cv=pass;
        d=google.com; s=arc-20160816;
        b=VsJ3rVKeXH/42SgibSRsiacwPcjobYR93Mui8b6vK+gTGhiplAMLwnz2cA3G5+ae3G
         4x57V09w6y8WGkyqOO4QOlXUMkTrxRhjVGDYFpqTNNVkNr+E6ADV9JK3gWivAtnYzumU
         M+uJq6rdTTTVRs5k+8PxoMVSKtKF7OZ5gBf9kfHfzYrq77YXLfEgRZa0WrsH7LLRwLMy
         08WWBpmkQmxkg1dDz0y3kEpXXvWYACtajZcnjQ61G4lISdr5xu2UF7xsK2EE++Y1iaQp
         X7fZr+GFBQzexH+TuKdxHmEB08S9uEBFCtYUojeqhN+91IxHvwaMR14aJLBE1cVDMGix
         M5gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Z3FX4QyI8NgKv4xEnsQ5FO0dVCeoASBichAbDEn6XOc=;
        b=uK3thR6xlxXVh1eWeYhuenrNAaMCNjWVHy6U0gSMqlEpoQIjAEeYdcdtuOqvDfRIGz
         UW2b1MoQLbei+Aryr8nvzzq70UsD3ejAqtJKhpGOl92qHoM0eU9BsbgkakFA+acXXeee
         +9VbDqVwcywCaXXLZu43U1yAd3NfVvi1XsQ83VYUDSZ0s7WDYknf7Ru9D7/Fk9RF/Atc
         8xsTbQKLB6nsvksDDRWRCsAGNPaEjitNhjDPPuShPraSK/u6jDGp42Khu5E7ReXx2mPY
         +SGDk7llSte2fSgy5O6RsvkHl9h3ElV2Cf4gj2VUssPdkcF/MsJFoN2R4WgQGSTVrx1I
         QQEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of joro@8bytes.org designates 81.169.241.247 as permitted sender) smtp.mailfrom=joro@8bytes.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=8bytes.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z3FX4QyI8NgKv4xEnsQ5FO0dVCeoASBichAbDEn6XOc=;
        b=tAmiQDvj9gY2ra9RY5tdJ3zWqPHnyAm9tDD7rCZjt/qjALQ12Y0dug1aUOi2FrucuS
         J7lScMuxROfk98i8dFo+wYqG3Z68B9jrIxveiR48fPQ20jV5fLgSTIXGHZc9Lyc+lLGi
         r55fvEVXBdmuQJSjlK+0dKhzpRwkZF9tzsysuQLfnD0KSZIBsmMqGAEVheQFtInfL8ku
         Bv2av0AN0WTs03V0Zqb0RqE6nZpVSHZvlk38iMWiBYdue4qq2wQvyUXj00txlJ+1qquD
         dHqhbf5Iz0KG6dt6erHx7xh5Wlc0LLD6RXtgu4vVF1/5dsgO2o0fUbjOsEKdnk3TdC3J
         e7dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Z3FX4QyI8NgKv4xEnsQ5FO0dVCeoASBichAbDEn6XOc=;
        b=mW38MmGROmpErVUe4QtIRA2OuB7RYSFAojZlRenwQ35tBsD7559sFwA/fbZRPn68iZ
         +I8p+IDOKcyljNtAbivr4jlIpwgnVqhKMKM6+rz6GyBpo/Tis4YFkGHyVlnk0pPAE9ZH
         FJ2UvDIy8svOEYS0jh8/vtpQOELQ+to6eHf3mXBn1KihrQ/saoPfO8DJngU+8KPyFv/z
         V0G01im/X9jiBRsOqu9MYjBismL/ovn0BB+E6T51jFhE6BKx9ibScaqLd+FAMvs/SzIL
         E4FD+1eLHOk1T29wEHnO+jyuMySg3JtxxehHLpQ3CEb0KaEsPpqDYZ5oj2qhuK+8A82p
         pjkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532VeqolgThks3AqknGHUw305WbXTYuS/bj8koj+tYPBJm+BA7iU
	wDxDcwCVRnteMuZi0dhEukM=
X-Google-Smtp-Source: ABdhPJx1YrWtJ8j/PqBDsSrFPXz47yGSSJCBwv2tN1+VoeoqGAS5VMTmLR8B5W/80ir6daN7L5DwFQ==
X-Received: by 2002:adf:9c93:: with SMTP id d19mr4479778wre.17.1622820129871;
        Fri, 04 Jun 2021 08:22:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:64c3:: with SMTP id f3ls824399wri.1.gmail; Fri, 04 Jun
 2021 08:22:09 -0700 (PDT)
X-Received: by 2002:a5d:6dce:: with SMTP id d14mr4535891wrz.236.1622820129049;
        Fri, 04 Jun 2021 08:22:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622820129; cv=none;
        d=google.com; s=arc-20160816;
        b=puezJ6b7IfFxTiNynxUehNy6KwEfi25X0velcnizrhLE50h+0RfnLMVLWq1E4ZYUMx
         bNS/zCHG+oi3MECVh2TLeulRsviwIZtStGzZV7lxftk4mEFITeI3wMGv/0Srzc5RMhOn
         ecUOEIqNVxsZDaq4/Osrqkj2LHoYBuB9VWMRGuBxkEboORTvaipIPhjjFjSb34x8fY6k
         8EHTSgvlATVypetVO0FphWIiNPovH1fgnMtwTyc2f7NLX64tG4d7PtGNq548XhF0BPPM
         jzG7tRtZqDCNy7jopHXbsoOx0kaesZqF2izxRAhmOMkV7LmaiI3J9IS1GPROZbMYMpu9
         eLjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=lyluyq2I3aOfbAT1d+OFgDThhx1Odx5544Z3ZL8Snys=;
        b=VhXFH4SgCGav+81a76VYrkulML8d018BSzXOmzHU9hRb5b1YgEZkTgXX3QNlg7lYSP
         0rs2oJL6nuIvdcXjyOedLlk95SdDmLY8TolJEebzNqXvBoNVWzvb8WZIDmS2UdIXdrsQ
         e+/VEB23U54HNt7m2fS7cltNtTggurCtH9V42WgLProuesJZ/3ZeLK7kdviFLi0HgSrQ
         o2qmwTgRu6+AfqpAqvhGraZ1GAbDYk7O8Xhp72SWhL7J9mfPXi3eCETQ3FaLOpecerlN
         gXYOv1YbnU6KbINW+qUlL4pBsmGT0olab59rTKIuP8uX+XEGgkspFtMX68S6SuwkNxyL
         oakw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of joro@8bytes.org designates 81.169.241.247 as permitted sender) smtp.mailfrom=joro@8bytes.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=8bytes.org
Received: from theia.8bytes.org (8bytes.org. [81.169.241.247])
        by gmr-mx.google.com with ESMTPS id z70si129171wmc.0.2021.06.04.08.22.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 08:22:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of joro@8bytes.org designates 81.169.241.247 as permitted sender) client-ip=81.169.241.247;
Received: by theia.8bytes.org (Postfix, from userid 1000)
	id 983AC3A9; Fri,  4 Jun 2021 17:22:08 +0200 (CEST)
Date: Fri, 4 Jun 2021 17:22:07 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc: kernel test robot <lkp@intel.com>, rjw@rjwysocki.net, lenb@kernel.org,
	mst@redhat.com, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, will@kernel.org,
	catalin.marinas@arm.com, baolu.lu@linux.intel.com,
	dwmw2@infradead.org, linux-acpi@vger.kernel.org,
	iommu@lists.linux-foundation.org
Subject: Re: [PATCH v3 2/6] ACPI: Move IOMMU setup code out of IORT
Message-ID: <YLpFHwGPuWsB3AgV@8bytes.org>
References: <20210602154444.1077006-3-jean-philippe@linaro.org>
 <202106030417.97asL7dA-lkp@intel.com>
 <YLiELyo+KLuYqA24@myrica>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YLiELyo+KLuYqA24@myrica>
X-Original-Sender: joro@8bytes.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of joro@8bytes.org designates 81.169.241.247 as permitted
 sender) smtp.mailfrom=joro@8bytes.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=8bytes.org
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

On Thu, Jun 03, 2021 at 09:26:39AM +0200, Jean-Philippe Brucker wrote:
> These are only defined when CONFIG_IOMMU_API is set. IORT uses them inside
> an #ifdef, I can do the same. Maybe moving these two functions to a new
> drivers/acpi/iommu.c would be nicer, though.

Not sure what the ACPI maintainers and reviewers prefer, but I would
just #ifdef the functions and provide stubs in the #else path if
necessary.

Regards,

	Joerg

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YLpFHwGPuWsB3AgV%408bytes.org.
