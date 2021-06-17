Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUHLV2DAMGQEYHX3KWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id D72BF3ABDB4
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 22:51:29 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id e14-20020a0568301f2eb0290405cba3beedsf4615291oth.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 13:51:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623963088; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kh5ouk88UFHT3mIHSLOKbVgBoedFM1gIgLPa50pQQhDIuIsBjN69hEvU4S3ehTAduA
         6rH2eMC3r0q4xHcSVYNho82w88yHHj9hIIuJAWcrGAsUAj6ZRMn13fvsXS2tsEGT29IJ
         ODTX5ODrDwAIa8fKDtcs13H0A7xQDjOU8W+e/rERM1R1fuv4pKQGxeL6wQHgf6Hf8KHZ
         2f8vHBsiAgIDAclxJPdBGrLhxxOqv/UQjEY4tTsfNH7fAGJogp+X6s0TRh68xJltaChZ
         AP1W4GBzvGxe46d5Yb9Q7BHOU5kythWDuz45CCNBljZqqU99ssPcXLap/9flW3L+cQdc
         lnUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=JhUoZ8W3le1MBf8zFTgLadT1M6FG5NUbvUuaOQsTu1A=;
        b=moFHXP+H/biGBZCbr5hs06fLJkcCIECXETUXq1uLVMD1zOHRZmBc8NEux0TMJ5lXVx
         A4nG1xRgXfETZlIlima3n03C0YvjwPysp4soef0p4S1wptdr9VmeqBjK9JRNgXr60RrQ
         H5/MNS4RDmWtTEex2X0WonlVJjLrQbrIOj/Oh9BFNSt3RTcpOZoAXBxVEd289TU+e3+m
         ml7FUgMWNLZOw9FIljJ7YFAN+pDUXYPVmObJwfGQVZrnGrnqAdCRCYDIIfZn88fVWcGt
         JxGxEq+0TWXr4KptrjQhnqBCCfqhlX65csizjbVRNBFyfLtOTG8sNEsXVBn0ZSJdI/wd
         cd+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=IaZG7YAL;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JhUoZ8W3le1MBf8zFTgLadT1M6FG5NUbvUuaOQsTu1A=;
        b=LL/i2152Wap99EAzX6eSSSwMyPa1KqKYCD+eh26VJ+JHyofFpa2gdk1yg6ojFWM8Ij
         HbIIQx6wkhcqRNQlveyzTBKFfHmt0goyO/l+7yMG59OJrz1l+sZngMmS5OLFCJL09Xic
         BdiBPnnqNjLGnBnSb5P3gZrniPH2UDnKtmLX2ocJrbv9I0ez2pEZWfL/rYAss3lHQXhc
         2pwX1VTUn5g09vZknuJXRfy3mnWS6ly87pPAcyQ7G7xbTjNtfHy74kB/8uzYqEd+gsEr
         A6HvlBxdf4jrUF8fg3g4j3uVCE4HjOrC8ZS1sKJW5n3LLWjd2FJUpD6bBpI9jIe1Juv5
         NuWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JhUoZ8W3le1MBf8zFTgLadT1M6FG5NUbvUuaOQsTu1A=;
        b=OabXH5G51oUwH2FrTvY0ZhsdNoPInbXnER7anml5xJ0TiBNOUSgHjXsKdTP1F7bsCN
         JAePKC4/Kd65OWdDKiluXZKt9+0nVgeChxeYN6niU6ugPIzeoanIlcLfp1Leblq+UOw9
         c+JMSempLrQ+MOHayvXTaTmXC7p4iRvmg9qgzr2DjiBIBqDJNgIjgum1McjIUvnyl+Nv
         BSHYsqgrcm685Lp1fUnK+LzMh6Ao4j8uQPsoYUJhCfnTms6hPfTznS90jtHj8V7b+yyu
         mXyf0ZtznddtmpYhjjtIqn/MaB4jAlnVjgxwotCkjGu1Nc0pXF4W+cKNjji0hrUa2tJh
         6GNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VqgJq1PkedFGMqw5lsLHo3t8VP9nt48G9/Pqb4Xinb807+v5F
	b0Z/WFmlwZVf8dkmfd/T9Io=
X-Google-Smtp-Source: ABdhPJynD5xOswj1GYbdSKKNN+KKlTda8Ed6x8zVRRxq7arho1Ant/ZMVTRcSAXykwjuWClmPtYv0g==
X-Received: by 2002:a05:6830:411c:: with SMTP id w28mr6228225ott.196.1623963088861;
        Thu, 17 Jun 2021 13:51:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:73c9:: with SMTP id m9ls3348322otk.9.gmail; Thu, 17 Jun
 2021 13:51:28 -0700 (PDT)
X-Received: by 2002:a05:6830:817:: with SMTP id r23mr6190434ots.222.1623963088516;
        Thu, 17 Jun 2021 13:51:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623963088; cv=none;
        d=google.com; s=arc-20160816;
        b=pNnlICxxJVmlWr2l3uNpmBvs84araiplVjgXMD8+s5Hg9WqEyeLOp9JUWxmjY+nLDY
         YYGpJ6bpdiYqGnfcoJ3eT9w2FeHh4lsO6cDgwp5s0/M+peL0iy6SDYTeIq1EISPntwuv
         Iw3yc3VECVXCB4g+wCMLjyaI48j/EiB53HXAMT/4RCoJbOTUpRF/kSIi8c2s4pvdgXJU
         MNEIgC9GVjl6z8Pzxq6ajyKDnkTOI7w1gWj+sxxWw7xUo8C2/70Oa97Rx+QEAoTPYgOu
         4rLIjH+eaozJVRgtww+TwVkXPxojQIq4ilb9nLGMjlJ576eGEKmZyel9UpbTPNsWIzy9
         apCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=iaqatdP1o19gWCdJpxspfGEGc/Hl0Vt4Em0UY4jUwOg=;
        b=xWp8fYSeBNNsTS3ErnEuR7fKJHfQljotLkRIy1aMVUPRuTsHzNO+/MxRfk7vGNOcdc
         yb84IFyEIoo91DtNZwmrRjnOVp54QlN7zPB92/XzkihPoV3375bAZgS743vDD7RtrCOP
         RO1HCo6j6I3nTO8hAniAIt4Jfg8lKNx0tpluEEXyyVE4kG4j8sBsF+WCQB0F5MIEEDEA
         eZ69TAPLc24AkvHGttWpekHGMKy0DPNCGQECV3S+aaNrNS+IW98qV7r9UfbUWQqMd7HY
         B1zXI57hIcs9by/9IOYh1cZm6NuPVAWEzLd2ckl2bKRa/zA0oyApWCF9JNlAibP7K2a2
         KSFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=IaZG7YAL;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w16si700541oov.0.2021.06.17.13.51.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Jun 2021 13:51:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DBBDD610A1;
	Thu, 17 Jun 2021 20:51:26 +0000 (UTC)
Subject: Re: [PATCH] iommu/vt-d: Fix W=1 clang warning in intel/perf.c
To: Joerg Roedel <jroedel@suse.de>, Nick Desaulniers <ndesaulniers@google.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>, iommu@lists.linux-foundation.org,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Lu Baolu <baolu.lu@linux.intel.com>, kernel test robot <lkp@intel.com>
References: <20210617145339.2692-1-joro@8bytes.org>
 <CAKwvOd=8jUsRFKg6+sqq2-DakbRBGR6Z6mR_smuxp+cMEmCHLw@mail.gmail.com>
 <YMuw+LtM/B1QTTJI@suse.de>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <32f14288-315a-b75d-913b-2fc6a16cd748@kernel.org>
Date: Thu, 17 Jun 2021 13:51:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YMuw+LtM/B1QTTJI@suse.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=IaZG7YAL;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 6/17/2021 1:30 PM, Joerg Roedel wrote:
> On Thu, Jun 17, 2021 at 10:16:50AM -0700, Nick Desaulniers wrote:
>> On Thu, Jun 17, 2021 at 7:54 AM Joerg Roedel <joro@8bytes.org> wrote:
>>>
>>> From: Joerg Roedel <jroedel@suse.de>
>>>
>>> Fix this warning when compiled with clang and W=1:
>>>
>>>          drivers/iommu/intel/perf.c:16: warning: Function parameter or member 'latency_lock' not described in 'DEFINE_SPINLOCK'
>>>          drivers/iommu/intel/perf.c:16: warning: expecting prototype for perf.c(). Prototype was for DEFINE_SPINLOCK() instead
>>
>> I think these warnings are actually produced by kernel-doc? (not clang)
> 
> Will kernel-doc check automatically when COMPILER=clang is set and W=1?
> Because I did not explicitly enable any kernel-doc checks.
> 
> Regards,
> 
> 	Joerg
> 

kernel-doc is run automatically with W=1, regardless of gcc versus clang.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/32f14288-315a-b75d-913b-2fc6a16cd748%40kernel.org.
