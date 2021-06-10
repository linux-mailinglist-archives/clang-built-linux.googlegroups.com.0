Return-Path: <clang-built-linux+bncBDA67XESXUKBBRH5Q2DAMGQEW7QINJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EFF3A2571
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 09:27:01 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id r4-20020a7bc0840000b02901b7cb5713ecsf982929wmh.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 00:27:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623310021; cv=pass;
        d=google.com; s=arc-20160816;
        b=pVRnV/zU+wgI5UHnR2vaTuN5HLia/TLHewg0obAI1sBs3CyhJRE4aKoGeUtqultqmj
         fXk+X8GjQD5AndzFUmuThkQ6FIbXT1bZOezu1NyvumXbXyAQOYa9fGRKWEdX7D0JEaj9
         P9wNoePfcWOQnK7y2L+APIq9ehr7viYT7nv3oxqhQscVRLaFGIW2fL62zA2kCD8h4ZeB
         yvwG2zAk4jOw2qVuDud3r7Eg3LGnxi+GbfLXEw7ADKolEtSBMmYXIOOWpnc0lddplNgk
         YhwOrFZK+x+ATF2xz1YGnL+D2i5dwBwKzRGJTqDRlv3e5qAN2mXWCMhclqai3HjKFrgn
         gcaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XVIQkB1kkqMTWciYSJvvLvc2nSahvvRka7PP+hTmnsk=;
        b=jSxF5a5dzMHheiv+ViqdVLZlj+CfQ5gbklWrJng+vOshqlvy0qQJQmhpVUpzumd4A2
         q7bsZxwj6y2iRNYv5g+k6vPKJWAhjPaI4u5ltperGUBC8HRmq6n8bwmzVqeHPLBMUiKX
         Dix4CKH+Yj03mOIgfD9jcRSRWub/kNPapQKN/q8mm03j9VvGRUIYv03nql1jouAFhQGb
         iM6q7jNFKYJFI80k/7DnSTd7IOJhC9p+6Iz+Gm4eG0ok6Ksg4DQplZdQN0xxNc8AOGO/
         95jl2gUbohYKCPWqRDkxcfUIJvqfneZ6ndBRC8cirMTrckZgU7SVOxXLRK+Z/HhidbHi
         Az8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=VRc2QaSA;
       spf=pass (google.com: domain of jean-philippe@linaro.org designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=jean-philippe@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XVIQkB1kkqMTWciYSJvvLvc2nSahvvRka7PP+hTmnsk=;
        b=Lpxvxml1zMNBosLUVvggbsxWXYhBZtvya40gQx1meGaH8Av/XruViKY8BllSpB2rfc
         E/0jXuyycnnOijexsCy4VvtK7dUZKjmHqpdkXd0bOGY69QuvVZGSbq7DE8S5IJUGIaKU
         pHRcqjfMkgyrPEslK2DDCq6UaY8KbwJQokLN/kNzBErb8xOch/AM6qCj833+z0qliAf6
         iTDXPrmIUFbR0b8XBZryKchXmJnkUaHXFzU9iD4m+uVxhHXBhcQQW3ZBmZ+UA70Q7xyO
         bwsgQ4y5+f351Rg9Xo8s3jmQZceAsSV4a6C9EmwypmBcv8ESquo6aed4WJZsPP7qiZ4n
         /BHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XVIQkB1kkqMTWciYSJvvLvc2nSahvvRka7PP+hTmnsk=;
        b=sPmSLIXZQVwNGPuBoG7Z6K2tw6Eskqv60xkLqBaBba7HzkBC666MDyQyanqY/ZHLUN
         145SAtGBkiymWt2/tqUX5DZZXY1667/jBE+UjNFQOY5BpBp8jl70maN0cVxIhdVumupp
         q6Gbl7Jwkdrc9JVsKPYYtnUDfFGAOtJbVxGaEO9t2AInMKPXOTBBOrP6idfR4oCn/h3V
         zt9CiBzbSVOYRVEv7AE5ZKgp/IUr+VpBwc7TI1JZR/QxNi1SoKXv6l/WuNmsDy6ANtv3
         vDiquKfgdpv2Qpd5TRXPlIYD6gyl5rstZb2WVNoJlQKj79kKOF1M8vYOAGT/9VOT2Rze
         ibRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RHXG3xj4fQrBodkOrW8NG4da9V1o6cJBh1pfjgMc44oojidEN
	cCg8p65FPB0Xq+xGOBaRdSk=
X-Google-Smtp-Source: ABdhPJxIYmBd01aFMp/C4JCFv9nPMHyuP7MJv1GZSJqcbBbxSq+umbAl8otr18Fqipfd5Qwmzv1mzQ==
X-Received: by 2002:a1c:dd09:: with SMTP id u9mr3605751wmg.58.1623310021035;
        Thu, 10 Jun 2021 00:27:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ded0:: with SMTP id i16ls1626810wrn.1.gmail; Thu, 10 Jun
 2021 00:27:00 -0700 (PDT)
X-Received: by 2002:a5d:4351:: with SMTP id u17mr3661760wrr.47.1623310020254;
        Thu, 10 Jun 2021 00:27:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623310020; cv=none;
        d=google.com; s=arc-20160816;
        b=pCswmyaW1o8xxsD9yxs1kyM10Ck+rViP9hrHo6jWjgJGXy3GbC1+Du/TRPjJcrZhNP
         taHjOAfkE5d54cY75wdzj6KZKmQS2/wAxS5V+X9Pbvn3TiY6ZQrNinJ5oiowODD858GW
         7xodTbPLRmkU4E7RadnsheTnDi0LVN+wkUZg6WMHnGQKn1y2k584rWeAVsHv/kxOYOYe
         kb5rmuUiC7cvKGRjmO0QU1xw2kBT0vdK5n5Vge0SlNrogWtNdizCaNtm2lIC11mvYmRY
         OAeNipp7snHmwdknBaxAKeFNjL9akBpQa0l1XXkFEELVqze030Kci/P496uKy4lwkIA7
         +KTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=avXVNANZtbNtwGIzbu5/mOfsXzmuN+oN/aMUmryqr0Q=;
        b=UnEzLKeCw6VE5N9G/ycqBNIiEzD9F4ITe1TGs04ZtVYCAgAtqdlUHvtTdbQMgRRzBz
         WNxk5f6wvOlQt2lR/T47UOrDT9vNzAB8WZgAP2rywC+iZXhkn/cfEMP6aMQLnYYU/9Hw
         9fp58+F8VG1eS7pBz+VhfZWDLklyb/UHavk/SCB5MulOh7AMlAE5gSpep7Dy9wvE9X6q
         c6dyuyKZfElhql4GQdEHBbBy0I8Ni6IMpkB0mnotZadQbc0Y7PAEH0sV9RxO9LLhnaJI
         M9/Imnp2WqGBPQKaWsKZaSGkZwoU3JtPeC4Fz20+hcGnyGmIXX+XgBtBFIQpk+g7iCdJ
         6VYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=VRc2QaSA;
       spf=pass (google.com: domain of jean-philippe@linaro.org designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=jean-philippe@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id g17si296964wmq.4.2021.06.10.00.27.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 00:27:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of jean-philippe@linaro.org designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Received: by mail-wm1-x336.google.com with SMTP id h22-20020a05600c3516b02901a826f84095so5733442wmq.5
        for <clang-built-linux@googlegroups.com>; Thu, 10 Jun 2021 00:27:00 -0700 (PDT)
X-Received: by 2002:a05:600c:410c:: with SMTP id j12mr3466501wmi.117.1623310020028;
        Thu, 10 Jun 2021 00:27:00 -0700 (PDT)
Received: from myrica (adsl-84-226-111-173.adslplus.ch. [84.226.111.173])
        by smtp.gmail.com with ESMTPSA id l16sm8809890wmj.47.2021.06.10.00.26.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 00:26:58 -0700 (PDT)
Date: Thu, 10 Jun 2021 09:26:41 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Joerg Roedel <joro@8bytes.org>
Cc: kernel test robot <lkp@intel.com>, rjw@rjwysocki.net, lenb@kernel.org,
	mst@redhat.com, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, will@kernel.org,
	catalin.marinas@arm.com, baolu.lu@linux.intel.com,
	dwmw2@infradead.org, linux-acpi@vger.kernel.org,
	iommu@lists.linux-foundation.org
Subject: Re: [PATCH v3 2/6] ACPI: Move IOMMU setup code out of IORT
Message-ID: <YMG+sdvQ9/BkeBCe@myrica>
References: <20210602154444.1077006-3-jean-philippe@linaro.org>
 <202106030417.97asL7dA-lkp@intel.com>
 <YLiELyo+KLuYqA24@myrica>
 <YLpFHwGPuWsB3AgV@8bytes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YLpFHwGPuWsB3AgV@8bytes.org>
X-Original-Sender: jean-philippe@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=VRc2QaSA;       spf=pass
 (google.com: domain of jean-philippe@linaro.org designates
 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=jean-philippe@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Fri, Jun 04, 2021 at 05:22:07PM +0200, Joerg Roedel wrote:
> On Thu, Jun 03, 2021 at 09:26:39AM +0200, Jean-Philippe Brucker wrote:
> > These are only defined when CONFIG_IOMMU_API is set. IORT uses them inside
> > an #ifdef, I can do the same. Maybe moving these two functions to a new
> > drivers/acpi/iommu.c would be nicer, though.
> 
> Not sure what the ACPI maintainers and reviewers prefer, but I would
> just #ifdef the functions and provide stubs in the #else path if
> necessary.

Yes, I'll resend with that

Thanks,
Jean

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMG%2BsdvQ9/BkeBCe%40myrica.
