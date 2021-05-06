Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBOFHZ6CAMGQEQXUQ24Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1E137530D
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 13:32:10 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id p4-20020a1709032484b02900e6aa6adc54sf2227717plw.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 04:32:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620300729; cv=pass;
        d=google.com; s=arc-20160816;
        b=aORujSEyYJMdUoxvYG06E6eXkA9nkwtWdr1JswKq5K98STr7uaDOYu1/EIV8TJp5uf
         UxuuitvhkwY2HmzFSpvsAX++mvx7JNCbFTm7mI4qlkWnsZ0BdQBAVXUPQyb60Gi0yPL3
         rL6k/V66oYDup9fvutJbXh0WRHeJo+7p+a1+jrXE1BiHCvaVYjaR9lxw2k2cQicU8N49
         ErCCfrytqxC7slMaKWCchcq9KPNM7CSI28EbYHPZiN2cIYwme6L60NWFA0cCD6jVwcJy
         0zDlBt1PzM4ubSnRl/hQ++Kk8R02uSfjJ+R5lZkpw1FcB9O2jXVFjLU+V0Pycmm2rM6+
         aNKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dZuO+W5IzefhGA+eOTLQptSQdpCFPswGjLPuC30jEWA=;
        b=eR0MjhCmQEHC2rOO5FMZlaNzkjRkfzU3BVcg50BcvK9vMGnsxeCbv7y9VKri5J/pcQ
         ilOrCVJVR3dqRWpW6hab9yANZlRKRD0gR8HfpIC/Jf+Ux9ii5vSkD/tEAQvoDPAPcu37
         ogyGIDN9rIkCYYnCbUAzTL2q4/0kaKNKoleZsI403B+PfjgVdZFKWC49TvzXtpb8yZrK
         Hu/kXj4+/bRD0SzSq1f4G81IJ4xNada+gra6fWgK+jfeC4LTrcOpHIBQnUUVXpCnnYCH
         RK4i5cYZPPZ9dzCb2kWaIuMOvZs1y5I8qnAEohyKBj0ZKb7RRriIKbm9n639g3z/A/xZ
         jAxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=vCuhHrvu;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dZuO+W5IzefhGA+eOTLQptSQdpCFPswGjLPuC30jEWA=;
        b=By/aunbb8/uq5OPAKowFdtg30HXwb9LGAoZj7wwmZOsorOM0rrFl//ZOQTCqbdM5Sl
         gc8DlWryQGqs4x2jqTVRjV0kXIOTaRGlaP7WJethFuY55LTHOZG3WZqGusZb332HIK3Z
         S9UMGkzi2ycgH2G33mq2GJR2C1JB2UR1BfjwfgHY4lEUn4kScL2RLZGHmOYLmOcbSlJu
         uHLmUXHDTZ4s+IHTBzYpvIiOjVznwMsRfD4CAHysJloDhYDvS5LgSbOGBLxsdY7sHeNq
         btSUyh6SoQ74UhcQOnV1z3GChLbnBl+7XQ2rxRPqlCvf7ilEVvjodttLGMe2lQSPg/Gd
         L8+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dZuO+W5IzefhGA+eOTLQptSQdpCFPswGjLPuC30jEWA=;
        b=pApLDB2fesg8T5fWXhTRkeuir0dhP5LKGDv4Co6bni2BgTWjHiVwrX0UIWyoGiK/+M
         aOGmTTpUyMSoLvDoAK8fMgsl3KEk4GpK5Ntcd89vqvvfplzSnbxGen2pvJPdjTP93l35
         Cbx253WdJazDlHBn4iMAtJg7fC9l14bMGy+HRJZ+IW/qUWvI5dzNoqG6B7cP5B6gQQIX
         eKt4Yi4JiMrKgevKH3HB+aRrqt4v/lnUUsCGNXHdA1JsF/QyhqAvQ0VGgZUe7rBV7Kvy
         tCQAm6PQZVrF7h0AIvofo3uHReUFq++qRchrQfGRAM/axQAyVybavThrMwS7WOJwFml2
         16aQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rAFNylgqf+ZqSo8d4qyGgxqvU2YpFWGqoYSp2ihKRZljIhqrH
	2s0TQN7vaE0ULvJ7K/DcD1o=
X-Google-Smtp-Source: ABdhPJx3w2MhI9JJJkLbuS8k228Py0whfgPcq7ZbMoTKHLc54MDRAkY/LgFL4RRwxyL7RdqxjdpABg==
X-Received: by 2002:a17:903:3046:b029:ee:f24a:7517 with SMTP id u6-20020a1709033046b02900eef24a7517mr3983456pla.17.1620300728940;
        Thu, 06 May 2021 04:32:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7208:: with SMTP id ba8ls1388174plb.10.gmail; Thu,
 06 May 2021 04:32:08 -0700 (PDT)
X-Received: by 2002:a17:90a:c297:: with SMTP id f23mr4020363pjt.197.1620300728323;
        Thu, 06 May 2021 04:32:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620300728; cv=none;
        d=google.com; s=arc-20160816;
        b=iVsyTDFvVUPOXK7IvY4HFSNsnu+3M2a5V9vJ2rkX1siDQJed4KAcJezxnRHx7Z7Ee4
         06uORDDgmI/StipqN1wnteUS/MnO+J9wTgNPpNg/ZoDyuV+vixWyTbU3TDpf7/91//Jc
         b3wfyKUXzHjq7THayS6nM3m2hxgdkY3EY8Lu1grhJ0rBUKO1FJ43LNVipKxQPR3+hREw
         1fF/PpSO2H9m26ZAobFHHCZiZSdW6LXS5JEfxnjN4VwxrlWP/tExVBpV2E7UrOgWUCVU
         YGJc+7YksTdAac1XJwOX0dMnYVR+Mlq76O2tUiX4/Z9lmLzxwHMZtZlBWqPlve530zHx
         +m4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GkHS3tM2P3pdBS/mThwr3JryPyXafqq6LHkEQ5YqKuE=;
        b=RWYZSULX0QzRXXhuCu3UfmE/+zlTW1FdIROL3PEgR/1n1LyPL+EwW7935dJfeYVHS/
         zOcyvnOeoYcgahqCoRMviDIPnpmrfXTPIpMjuiteWlgme/avoB2j96F9VJPZXI2rCDRv
         7P5jrQWlLTFoFdAR98lioe9klS1KW1xuieIPKzG+lrVy6UfEUAbyOIFq0j8se3s6m7JV
         BmaQ4KJIEmgiPf7vuDDKaFcvXI5FnF624UEumZhYhEKgVnwHatJRIrsymstXkIa95xmo
         UcjxuzRR4dDo/rYrFLf/jug1MGiOXva2WHx22KELz+dmzEbb/ckC2JN6DlS2mzZAOOkn
         r+6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=vCuhHrvu;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id hk5si753565pjb.1.2021.05.06.04.32.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 May 2021 04:32:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1D6F9613D9;
	Thu,  6 May 2021 11:32:06 +0000 (UTC)
Date: Thu, 6 May 2021 14:32:03 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: dledford@redhat.com, jgg@ziepe.ca, nathan@kernel.org,
	ndesaulniers@google.com, linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] RDMA/mlx5: Remove redundant assignment to ret
Message-ID: <YJPTs9Znjz/XBxae@unreal>
References: <1620296001-120406-1-git-send-email-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1620296001-120406-1-git-send-email-yang.lee@linux.alibaba.com>
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=vCuhHrvu;       spf=pass
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

On Thu, May 06, 2021 at 06:13:21PM +0800, Yang Li wrote:
> Variable 'ret' is set to the rerurn value of function
> mlx5_mr_cache_alloc() but this value is never read as it is
> overwritten with a new value later on, hence it is a redundant
> assignment and can be removed
> 
> Clean up the following clang-analyzer warning:
> 
> drivers/infiniband/hw/mlx5/odp.c:421:2: warning: Value stored to 'ret'
> is never read [clang-analyzer-deadcode.DeadStores]
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  drivers/infiniband/hw/mlx5/odp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Fixes: e6fb246ccafb ("RDMA/mlx5: Consolidate MR destruction to mlx5_ib_dereg_mr()")

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJPTs9Znjz/XBxae%40unreal.
