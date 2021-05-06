Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBR5IZ6CAMGQE7RIZZ4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7B4375315
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 13:34:32 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id p1-20020a4aa2410000b02901b73bdc1ce3sf2714240ool.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 04:34:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620300871; cv=pass;
        d=google.com; s=arc-20160816;
        b=H6gZzfgj/fduhqXafnlRn+6+6doTS7OdRuEfCan1U0BHyK1WwkZTMBuWcBIT3cYffn
         fvwD9ZaXKcrYa/YHBIXN/VS0ihsTqlGfLt5kBPTb1PRl5G2YFoqIQCFOfKo+iWx4y42o
         smD+bB+zJWVwlHGF4Eti75vNgQHYguwNS7Xi0cS8rpRByOp3dnWgJMhImefSXYg6e5My
         HJYjobyjsAz31xa1oVVO1241ELKVQwjlx3J36k8z6lwdrkbdiJEegQ6CpJpdCQ2kIz08
         49Oo7Y4dWA+wkZ/iR499lsso0TO2LHH6NB88BOkxFqEPmlcvL0b8Rd0bYqTYs8ZDNB7C
         7piA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ydn2YUTUvpckcWAkodj8Z9vavdgdvc9a5/Om78tER4A=;
        b=bp9gYMgBj/5Y5vIVjCj7OvFoZ92rpe7+4CAzhXwc0UrT7iOpjiu388wUY0G5RUJmTq
         MzKCNbcXHnMg8wxCQ/4MPt9pFFun2ewh1oauaeJIr7hVebbzVA8X7wX7CcW771CBiCD/
         iT9fim2DBN9xzjapHN3Wz+H7o1ccYEltJTw0s6kEPLwvKDyPD/pMJWdXOz9dgrwIiaSj
         bIkLtDXRAgqSwm0gQQbj6S2I1ZlJlGsvcBQRInl+HiNzhLrIWjqHQE15mceisK2gJ5mC
         vot65epoagBVSu6WrmGsezVB4GUOFLbm4kIbebrQgMGPb/WKVgxHBpletitfm/py1OoJ
         lbbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=N8F9gJR4;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ydn2YUTUvpckcWAkodj8Z9vavdgdvc9a5/Om78tER4A=;
        b=QXmTzemn3hvjMn7FyOP+BVgcYYV4fWllRhnzqsPIr7gGBXZgnDBn1Q1RO/75qMIhj0
         Q53gpyE1+guJ5gTcCZ7EymX3v1LQP1osPXF/am8fsGtKJ3R8civIQqZlb8blsI3bSBM7
         CkgMF5htWAhtnOYg1jqmYdXYZJIx+9OVd0KQXgvhAu3A5ao2ddhDnyOzl0BiixNDilgQ
         5pTRZUJiDL/jLy1MgCGDHzSR7iqtTDVUoFB3PVk9opkSjSWdx0zEHOpPeL69lv3KICLL
         F2W7jBjfnCbAAhEAi03qMjYrKn+vXbVNwrexMcTctOKpKuWLUax7DMa5XvgumprN0d8n
         67jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ydn2YUTUvpckcWAkodj8Z9vavdgdvc9a5/Om78tER4A=;
        b=gsBr+64XXzyKGNBsRKH8wIxi/ubqH0HS5G7wzaqjywWfSFAWkF5R/1YBuCoURM3hpK
         bPjx7XUJyMTx/PPuO1FfkyikcdcPO4aqXbNxjPOMPCrp1XVkLywnKcTFTta7a4jQRitQ
         Gwz2lJTSiZV0cL4ax/h3MUFYYH5S33PoY5tfTyITFaERXH2UeOKN8tib+Gx7+06rK56R
         q5oNanalxRcLwA9cg3eVZIVkLxWASps710sqj2CVMUu7EGe3MMakfLTqbNRWz6rwP+zN
         gTanfLg2cwRBCZrfNxYiHWXBwZlIW9ougjGge1iqkg2Yg2u5soNfV+DaPTdla+2lfQVM
         ZiuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307Q9RXlgsVfnQhsDXpXYRdelzKB/LLFPJSMSUXZF1LglPBvOrv
	dMoV6HPKG7h53Owf4aj0/xg=
X-Google-Smtp-Source: ABdhPJzInu5ypmaVqS87NWCXjmqZOrNPIqz+tFsBndYawMufAMRJdIOna0A9hFM4D4QR0Kxuaw4k/Q==
X-Received: by 2002:a9d:2212:: with SMTP id o18mr3288385ota.91.1620300871804;
        Thu, 06 May 2021 04:34:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:a6f:: with SMTP id 102ls652953otg.8.gmail; Thu, 06 May
 2021 04:34:31 -0700 (PDT)
X-Received: by 2002:a05:6830:1f12:: with SMTP id u18mr3276375otg.132.1620300871405;
        Thu, 06 May 2021 04:34:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620300871; cv=none;
        d=google.com; s=arc-20160816;
        b=tei6KjKAtsKzC2gb4lu6aQFkbIrVVflOeLbZWCBD7VUv8yQhDGvDWj1WSp9ch5iYg2
         t2Sq9bIADBNPRfj1NfNH66JbfDO9PsjMD6wgMXjOSpAXBu6NnRpz2T98q01s5yyx9qoC
         gIDxnH8mCY9SbRUwnGQ5NxU5Q1/qUopFdtZ8onog8HRDxQeJVE1H7zv907j6EXD4TXGM
         11AHfByIdrJU/yiS0u+6C/pG3j+FpTGwJm0sptv/G2yK/rWN2eX6jmzyoR3aUKt4eZsW
         jd88JGLm9AmE9jDHSJq6kFnQkiz9+9Dv5072BM7M0q1rAJwSTY1tB57oXJt/kx0FGelp
         znXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=DFmbax4y9IzWoN/+ll3PqZArDK71jo3wwCexRT9IW9g=;
        b=TSobuP0tHL6eyKY/sMoblr5WvrmkmlSDkvQzYn+sNNAQRW9E5kP3I6FFFaEfL9O8Nn
         0GIOOIzGHd+H30yk1nRb//+sP229kEvODbcr3pX2wCltzvK/mp0i2MvnSndmWjPHqrA0
         6yGCnyaT+/YjM5a79Tbyx06wW1/jdXfQd6YS8YSTnIFyXtdFEvvT+7Y39nP1Z5ykZgaA
         ToiFyIHx7JNUGQVVAzC49WSQu8+bYg6xMvAFLgLaftLBUSMS7abOGHVzaP8bL+02tBXm
         SB6B/rlkmXnLrNmHAtUvRgtVgU14dgkof4msmI+mu0FguYUIQt39yZwKgtvDQzWv2k8c
         d1qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=N8F9gJR4;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b17si191550ooq.2.2021.05.06.04.34.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 May 2021 04:34:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A241E61157;
	Thu,  6 May 2021 11:34:29 +0000 (UTC)
Date: Thu, 6 May 2021 14:34:26 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: bvanassche@acm.org, dledford@redhat.com, jgg@ziepe.ca,
	nathan@kernel.org, ndesaulniers@google.com,
	linux-rdma@vger.kernel.org, target-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ib_srpt: Remove redundant assignment to ret
Message-ID: <YJPUQkQCS86mS9gw@unreal>
References: <1620296105-121964-1-git-send-email-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1620296105-121964-1-git-send-email-yang.lee@linux.alibaba.com>
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=N8F9gJR4;       spf=pass
 (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=leon@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, May 06, 2021 at 06:15:05PM +0800, Yang Li wrote:
> Variable 'ret' is set to -ENOMEM but this value is never read as it is
> overwritten with a new value later on, hence it is a redundant
> assignment and can be removed
> 
> In 'commit b79fafac70fc ("target: make queue_tm_rsp() return void")'
> srpt_queue_response() has been changed to return void, so after "goto
> out", there is no need to return ret.
> 
> Clean up the following clang-analyzer warning:
> 
> drivers/infiniband/ulp/srpt/ib_srpt.c:2860:3: warning: Value stored to
> 'ret' is never read [clang-analyzer-deadcode.DeadStores]
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  drivers/infiniband/ulp/srpt/ib_srpt.c | 1 -
>  1 file changed, 1 deletion(-)
> 

Fixes: b99f8e4d7bcd ("IB/srpt: convert to the generic RDMA READ/WRITE API") 

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJPUQkQCS86mS9gw%40unreal.
