Return-Path: <clang-built-linux+bncBCINLKMVUUKRBXVTZ33QKGQEZDOLGUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id A027E207B69
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 20:22:23 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id z16sf1908480otj.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 11:22:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593022942; cv=pass;
        d=google.com; s=arc-20160816;
        b=cJotDO7RgyWbruj1Wj7nyliuENRMPzDu85yoSuyXGjNPQTFCdWXQaCsD6xwmhkiu5V
         OmIDgmpmVgt8qZJzYL5yxPAVu3ojJ3WFIHPoDz/YKSiYzusvsjU5Us1WhDCJlxS/OwCI
         rLLOs6uY+xzSkSgLEzr5kj6pEHxdcEEzRIJSkfoSyV8OeQueAUJid5jSZXUTCXWacIMS
         2Xz+zLcj/5Q5Cmzr3UpA10+V1MtOr7xbJXubFkXFj/o97Si+FSteLYmsTipnFf8c71aL
         yaw73uBxxlD4UbRs8fz34Q5+fouyarWSxgVf5e5wzKDgd1iHq3HXOU9O0bPY3XWZp4IE
         k5zQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=xm8UwOcgZ9zOcboFPQvW9Xv9Ipj5pJ7gw4BGSzaSusA=;
        b=wedPDMR5TbWOByZTtVtWuuyJT+SZwtxb3Q5kdGifeI1jrpkpe8PL31Nrb7d2ueq5ak
         x3C29kb8OaYcjVoETUjNtbTZz2ZBLC/eoHc8IjQk0WdbWzcO3YR8zitmFq7IrdcU2K2P
         LRRxzznzDUVBkJ1+E7OptHCR5+QB0d/6pdE6c/X9tc3DbJnBdrZrx04L4ga35IAWFagu
         AIEhF58BhDEtHAfv57gCHbx8q85SHSiw7VkyXYsSLs1tabkh296nFNzRZiU5K5jbXtBG
         8qkjaQ4LLVLdas/R1NsDftl0UY8z05cnSEwlbkrwcDtXtoT2dznXJoxNSiXf8uPsFKkG
         dukQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dennis.dalessandro@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=dennis.dalessandro@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xm8UwOcgZ9zOcboFPQvW9Xv9Ipj5pJ7gw4BGSzaSusA=;
        b=kUFPhIRW8vG+eYW4TQUuTnM/Oji6p74sH7r0Jaget0Ndx16PoFvhvRkv4PrD6AiJSH
         0nj0ExPuXU8XSpMAkrjGFSUGuX35+tMw5BPfj2BWrilG3egStYRGY7bGH3d+cDnHb1tT
         KtBuGR4eY2NXhQsxiDBUL9FOgsT4Nudl7bcqU3Gn/uMP7GnIa1Rvn054X9H3M3tWXjpI
         M85X81jRrLXCDG2aNcn0H8SyUxxrV1W3wazY1e85avbHLLXmoGPgU2GN3JK/z5yDb94s
         xOCKBIQSRkUXPMnHQnWFzzCntL3vJAZuaCnE3bDY+uWMvFNR7DzjuWmFJSthAw5I/ftd
         IFSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xm8UwOcgZ9zOcboFPQvW9Xv9Ipj5pJ7gw4BGSzaSusA=;
        b=fGQtuYkWINpjuT9c5xMATYJMIXWWFZd25oT29dwNrDxjrm6Hf2sMe4QtCHC4ya3LpF
         DNqOi+YGzaJCnoB6cfZNRsWTlNre+JsRiW7sbK4di2LpgNFLA+1C3Cofdc19KpXAIn6/
         YVnYgBudwGUr7HvYPaXGUS6yxXI277GEN6hLhrUJVDH3u9cLa56+KCJiSRxKm9OuuKdt
         ulsnEqJujN/UpNAuZ2qCHEieiXvXcjn24gU/2yKm1hDusjBFyGS6Occt3G/J2LxSWK1F
         PNz2AtMhH8mTOcBVtHdg9vZU9WywH5fj0QBOJxEwvN0fBXOpgIrzBl3ZDo5QeVcuItrX
         eSYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qVAGFJ+wkYpDalu5mCoXtVkDK34IewYh7yt9eXVkZszxv5sgK
	sdR5Nx9tIFxf03qwoNk3V3w=
X-Google-Smtp-Source: ABdhPJySX2XfxXR6gM8anegCE0uqwsu0o01VsPkeZAx5aCwXbCgbutRNePzDgMO2JjSvZ2gdOZzv6A==
X-Received: by 2002:aca:3050:: with SMTP id w77mr193983oiw.0.1593022942233;
        Wed, 24 Jun 2020 11:22:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:bd16:: with SMTP id n22ls181629oop.10.gmail; Wed, 24 Jun
 2020 11:22:21 -0700 (PDT)
X-Received: by 2002:a4a:3744:: with SMTP id r65mr11738682oor.82.1593022941814;
        Wed, 24 Jun 2020 11:22:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593022941; cv=none;
        d=google.com; s=arc-20160816;
        b=VMSHGLhS7vjJ4NLtN66WPACc3r7Pn70StB363rOiMCSro3V0ANbUF9JudFeXpNaBrj
         1l5Neit1x1qlD5m26pzY5WpAwmJ9XhH1G36WtPjKqM0wrsN0Uy0qmAe+WLvQo3ljhZvG
         2swSaM0Xj253pA+YZtuP4YJ9XRreIDEzteasQi7R7+4TuVRATYhKmmE8frrNUBLdbSEm
         daPwfDrRARD/AZHh2muU+wlYjyPTc1Zzgqk6mNGyOXQliyIn6tZ9Vs2Nyn85mAHfIKLN
         ef9IO/yNlZIUe3RQQ1lPJ5s8IhQMez2u3pY1VW6rGlbLbRIDKfJQ6+klJXWH9b5i4GG0
         7lFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=gWxxdeFKKAulVzAObtZrsDIaDFXdGnrnCEaRHnabQxs=;
        b=tgIrKK26qGXqeWW48D99lzjkc0EKlOLPYaugZHyFFe2c7EIuhxptcavwAI8iuw+glz
         /pLSCrMqakO9MXj0m84j6n+8m3MavRAhqvRIvf8XyMERJCKoEJ6ttaTygMkpOtLrXhJr
         KHJO11t0JL6v4t3EDLSIbX9Mte8m/CzrK2K9BzfefVJLCni8A14yPW9MQsXYYblg+JO+
         d6Z5Hrkc87auYeBiNOHlhqcVcfU9DyHD0of4onJ0f3V+vtUAahotWVF2Gw2KJeAgZaQl
         +olq64cpV9rXKlbk18xcYgrcqhsey0bGEzagPahNYIqb0flsm9MNT6FJhbxyMZ4Rs4Ax
         TAHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dennis.dalessandro@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=dennis.dalessandro@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id c26si1468443otn.4.2020.06.24.11.22.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jun 2020 11:22:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of dennis.dalessandro@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: bmcAhtKocdbAEOB/411OSfLltfIKXmTDjDXBINmWy4b8rG1/mlIKpvU3PhhmXGQeHXZ7Qb/eft
 tj2Cf2QcJNUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="206106233"
X-IronPort-AV: E=Sophos;i="5.75,276,1589266800"; 
   d="scan'208";a="206106233"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jun 2020 11:22:12 -0700
IronPort-SDR: y8XjN9L8Jlc0bMzZwbEmAZINkkyOuX0uT/0lYOcJzyHC8FVKJZtmplyNK7NDePdZVcRGZMyjKv
 pR9tQrlvVliw==
X-IronPort-AV: E=Sophos;i="5.75,276,1589266800"; 
   d="scan'208";a="452733692"
Received: from ddalessa-mobl.amr.corp.intel.com (HELO [10.254.202.60]) ([10.254.202.60])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jun 2020 11:22:11 -0700
Subject: Re: [PATCH] IB/hfi1: Add explicit cast OPA_MTU_8192 to 'enum ib_mtu'
To: Nathan Chancellor <natechancellor@gmail.com>,
 Mike Marciniszyn <mike.marciniszyn@intel.com>,
 Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>
Cc: linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20200623005224.492239-1-natechancellor@gmail.com>
From: Dennis Dalessandro <dennis.dalessandro@intel.com>
Message-ID: <5f98c547-1bac-bb05-1c75-cefb8616964a@intel.com>
Date: Wed, 24 Jun 2020 14:22:08 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200623005224.492239-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: dennis.dalessandro@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dennis.dalessandro@intel.com designates 134.134.136.31
 as permitted sender) smtp.mailfrom=dennis.dalessandro@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On 6/22/2020 8:52 PM, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/infiniband/hw/hfi1/qp.c:198:9: warning: implicit conversion from
> enumeration type 'enum opa_mtu' to different enumeration type 'enum
> ib_mtu' [-Wenum-conversion]
>                  mtu = OPA_MTU_8192;
>                      ~ ^~~~~~~~~~~~
> 1 warning generated.
> 
> enum opa_mtu extends enum ib_mtu. There are typically two ways to deal
> with this:
> 
> * Remove the expected types and just use 'int' for all parameters and
>    types.
> 
> * Explicitly cast the enums between each other.
> 
> This driver chooses to do the later so do the same thing here.
> 
> Fixes: 6d72344cf6c4 ("IB/ipoib: Increase ipoib Datagram mode MTU's upper limit")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1062
> Link: https://lore.kernel.org/linux-rdma/20200527040350.GA3118979@ubuntu-s3-xlarge-x86/
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---

Acked-by: Dennis Dalessandro <dennis.dalessandro@intel.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5f98c547-1bac-bb05-1c75-cefb8616964a%40intel.com.
