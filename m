Return-Path: <clang-built-linux+bncBDF27JWI2YLRBSX4Y36QKGQESGAE65A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B9A2B3A9F
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 00:48:27 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id v3sf5267222vkn.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 15:48:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605484106; cv=pass;
        d=google.com; s=arc-20160816;
        b=z2yuUhrYDBNSF91zW1mJDsRwTxFblEAHYc4vmfGl/JJj2zZ8u9ypAX9qJ1jWx7a9gD
         L3HNxutH/b5oUOeh4Xt7rADX++UCRCn2UfupM52z9EYfuML+Els7AuTdy+G6rIBO2+ws
         tHL+k6YmILOdLvwJ0U/cQFBSmW4Ug1JkNG4VB2yUmuycxqmUWrZm89Tp2yOUkEmz6xTn
         vtSSCWke7wj0dxm3IMp/tzlbzu1wFCSe7KwBY0bYYUXKvl4GwlhjX7SyYA+cNa0zQwPK
         lGC7cbL0VmHIt9oeAykDZqKKABgDXLKXNP7jfsKAnZLwcEJOOva2Scve98sRN6I5lvCb
         V3sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:to:subject
         :cc:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=21Slm6RDddB20uk6EyuYZKeshixV7yhPPUZ69ptmxI0=;
        b=vlxIbJm0siURh+sIdZ49BsqHV7q3SF8j1bkPErtbkNTmVgqWPnbBg5mJZWaj7CNPNy
         tstqNQO8nXWGPecpjWbioxOin6JH0vwE/Yx/TnMKWWaPMaCIxfRZQqXHxaHuefXbGfad
         CB8nVRqFJeYcIYOQ4sKPKRTgVS4aaaWc190J7wTZenbvi1k0kE1J0PQiphJkSlrIUKqi
         U63FU1KABSebdkQeSx+L+99PpX5GaRYUZ5Axl1QMVa5B1Ko9agps2E4Xib0Ry9BWMPKW
         H6AkL03cg+2GrXevYno6i+R6QDGKBd2MK0o5T0X8fSMFAMa28zJp0ooiVvzZSH4+kKBm
         N+rA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of baolu.lu@linux.intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=baolu.lu@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:cc:subject:to:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=21Slm6RDddB20uk6EyuYZKeshixV7yhPPUZ69ptmxI0=;
        b=eKgt0Sa/Ur+8lm8ZHQVp7wqFFJaI1Wgl/ZgtacHCshtbn94aTYY76KRhxuC71lYVbS
         Mx4aj5ZrS85+D3kcgEBZGFNwEBFbHCMAhzTxbw/4o1SKDnSXf6+1IvQ4NRQB0qv9QcPm
         7uc8fO9yRicPM3vw8YMGbuHkG1i5pUnih11zPu/wca/o9L51b7rqDJaPgKdcy9VJPcX3
         allJizwDlNxjoeNe+it9Z6ZFdAJSBYhDvuWGibs3Xgb5oI42Bn9uUYpG35XOdwF8eCuj
         6SLnW2M9xRB57WEQMfZj0osONPbpdcHEkDqLUkbS1F8qiDJabrp+gigeAoR3megu6ehz
         R1wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:cc:subject:to
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=21Slm6RDddB20uk6EyuYZKeshixV7yhPPUZ69ptmxI0=;
        b=afvmK/ZfGs+GUJKJrzeqhg6q2terj3VDIqgiiEsye8IrxdEfBTvj/NOUUNf+3byLGq
         WGMlYG2FOpDPBEQq2t+b4CCrEggPt/q5xB62/cpzOBJKXMN0uX1fn6WodzMx4OMlhHn5
         QiqxSOr+7Vqy3ez4sGBAPWPHZlarOxxBVu4dxNKI72HWSLNGk1O+tzL5HSSit1TM/0+X
         S2YkAdzbVdcpaxOiT8MX+AAq/8H2Y1rfQddLqNQdvuUO4ahirCnakitZ46rhvcYi0FbC
         L4ZPogWlJIFMnH5+M6qVOfV5DUHYW1x0ZNhOzef0JKnIjDJMKjh3Ye0HFPNoHeOsk+Tj
         HmUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532WN/lZDfeXZgyS3cm0iUcXEKw+tBZ2nnBnbrC1P4ZHGpad54s7
	X6lSSSb1viOoPsaqnppf2vw=
X-Google-Smtp-Source: ABdhPJxiEc5RN4q8YgHHAO2pGGAviDhGlEQeEvKUdzxmIFUybrCSdHDnLgVooyaqS0Kdf0L5rCGZ8Q==
X-Received: by 2002:ab0:4244:: with SMTP id i62mr6537333uai.134.1605484106513;
        Sun, 15 Nov 2020 15:48:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:24cf:: with SMTP id 73ls820850uar.2.gmail; Sun, 15 Nov
 2020 15:48:26 -0800 (PST)
X-Received: by 2002:a9f:28a7:: with SMTP id d36mr7433447uad.37.1605484106027;
        Sun, 15 Nov 2020 15:48:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605484106; cv=none;
        d=google.com; s=arc-20160816;
        b=J/C1mpBpWKyZFWp4QivOPjwpAhhaX5x0Avt2MYU08R8u3wlD6R28NZEjL2nXa8XiAa
         jYCM34Irwl6CeVG03y+uDoHPLkZvOZXxR2jyqZxa+BuI7hm9tHPrkdmOblD62hXldCLo
         LHUMIZE8r5ua2QLtFEKvdLCbcxMX3LzgXFv0M0hZw2XsIp3oi2CQ4K/K20NwNVsFENYa
         6TEe+5XQ0jkeOiq2I7S6bhTCs4dgcvz9JKvXtmaUSXqjJvyiCrdTkCi3KiG6TKcC1jmR
         MIjJO59wsLfHgCHfe3PK/nZCU5kzj00Bt3jLHcKcjfmZGbbs1MDsBZa12nEUnkJVJ6iS
         YeNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject:cc
         :ironport-sdr:ironport-sdr;
        bh=SWPCQMdpPMEZkticlmMBewUyjFyBTaCdtPe5jyMnPkk=;
        b=FInMsUTtUgtflWzSjeYrJmXVLS/AHKAjbmDz6BW5Kxvm78FpW9kzOr9sWgLkxqGxd8
         7oGcdvQnwD79t+3nggatfIuw0gzE22XC2p3pQYnjOjY8CwAJ690KioXeik4iIt6CxBb+
         ik3Nqx8aEkg718c4G/2SwF9O9DraO5tbfgVWPT79dtlaUQuyW6JVfxF4joUiyJ5rCw4c
         FIeHxnyFWwfHnTKNPax5C2Abw7xfs8L0q8yQylRJKKlAu1MRubUUctqiT6nsVhaKFi7h
         x8znn5TYHNEQUNllL03OtbP/Ct5CWTjwjnK2T98ui4h9dwyb7dwkg590d7rbL+3dZYN2
         Gm9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of baolu.lu@linux.intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=baolu.lu@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id n1si758920vsr.2.2020.11.15.15.48.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Nov 2020 15:48:25 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of baolu.lu@linux.intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: wp/tXfZV3JpmukW+A7nptxytXJsU6i6WFjpZ1pMNSu3fLCTzJqlqrmqBHRZFxIR/8WdnmXefFY
 eVoBDniBHnSg==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="188726824"
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; 
   d="scan'208";a="188726824"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Nov 2020 15:48:24 -0800
IronPort-SDR: QFsXTK8yVJAJVshqFuARa27KZZ7lQvmrMDwIx7oqw5NiZ71abynlHnruwa681+tBsBtddcg0E6
 mVNxTG+UtNqQ==
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; 
   d="scan'208";a="358279683"
Received: from chenyudo-mobl.ccr.corp.intel.com (HELO [10.254.215.59]) ([10.254.215.59])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Nov 2020 15:48:21 -0800
Cc: baolu.lu@linux.intel.com, Arnd Bergmann <arnd@arndb.de>,
 Tom Rix <trix@redhat.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] iommu/vt-d: include conditionally on
 CONFIG_INTEL_IOMMU_SVM
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>, Liu Yi L <yi.l.liu@intel.com>,
 Jacob Pan <jacob.jun.pan@linux.intel.com>,
 David Woodhouse <dwmw2@infradead.org>, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org
References: <20201115205951.20698-1-lukas.bulwahn@gmail.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <188313a2-ec53-28ef-2349-66594e116a2e@linux.intel.com>
Date: Mon, 16 Nov 2020 07:47:55 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <20201115205951.20698-1-lukas.bulwahn@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: baolu.lu@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of baolu.lu@linux.intel.com
 designates 192.55.52.88 as permitted sender) smtp.mailfrom=baolu.lu@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On 2020/11/16 4:59, Lukas Bulwahn wrote:
> Commit 6ee1b77ba3ac ("iommu/vt-d: Add svm/sva invalidate function")
> introduced intel_iommu_sva_invalidate() when CONFIG_INTEL_IOMMU_SVM.
> This function uses the dedicated static variable inv_type_granu_table
> and functions to_vtd_granularity() and to_vtd_size().
> 
> These parts are unused when !CONFIG_INTEL_IOMMU_SVM, and hence,
> make CC=clang W=1 warns with an -Wunused-function warning.
> 
> Include these parts conditionally on CONFIG_INTEL_IOMMU_SVM.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Fixes: 6ee1b77ba3ac0 ("iommu/vt-d: Add svm/sva invalidate function")
Acked-by: Lu Baolu <baolu.lu@linux.intel.com>

Best regards,
baolu

> ---
> applies cleanly on current master and next-20201113
> 
> Liu Yi L, Jakob Pan, Lu Baolu, please ack.
> 
> Joerg, please pick this minor non-urgent clean-up patch.
> 
>   drivers/iommu/intel/iommu.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
> index c6622011d493..7b32703c0b47 100644
> --- a/drivers/iommu/intel/iommu.c
> +++ b/drivers/iommu/intel/iommu.c
> @@ -5386,6 +5386,7 @@ static void intel_iommu_aux_detach_device(struct iommu_domain *domain,
>   	aux_domain_remove_dev(to_dmar_domain(domain), dev);
>   }
>   
> +#ifdef CONFIG_INTEL_IOMMU_SVM
>   /*
>    * 2D array for converting and sanitizing IOMMU generic TLB granularity to
>    * VT-d granularity. Invalidation is typically included in the unmap operation
> @@ -5432,7 +5433,6 @@ static inline u64 to_vtd_size(u64 granu_size, u64 nr_granules)
>   	return order_base_2(nr_pages);
>   }
>   
> -#ifdef CONFIG_INTEL_IOMMU_SVM
>   static int
>   intel_iommu_sva_invalidate(struct iommu_domain *domain, struct device *dev,
>   			   struct iommu_cache_invalidate_info *inv_info)
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/188313a2-ec53-28ef-2349-66594e116a2e%40linux.intel.com.
