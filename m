Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXWV5D6AKGQES5LMSFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1580929E2BB
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 03:37:20 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id e6sf947921pld.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 19:37:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603939038; cv=pass;
        d=google.com; s=arc-20160816;
        b=qvMXA2423oiv331a4fwSWOMPnyMPMb18LKEDm4bmoRdoh5PcUPrNZp9bAtyvzyYJag
         SxzumSXqrNti4G3Kd5aBNo7iIIr2YvTzW2vJr9QiFiLyKSP7E8LNHkD5bPOctgZnyft9
         0r4LVHOyRtPsjQCSK5N7n3Kbuqqff8/hIpPjj5OImZYCTNe60tO1L9bNDust+aPegKgM
         Ydv8Df0OrgAGBf+GP5mC7pKPlyEEYZKLShfKDHGIt/2fcNx9+k6/slq4h43lJuoNdjwT
         C/OQjLwUX/FMHwOmkgNV8HyPqXQkZl04TTz2VtrZPibbtBVZ8V/rGbsduuMH0ba4uTVK
         x7Qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=UpRgY7plHZSAKKsjw3gagntHgfqublSKQdv7h99vqJE=;
        b=ldrCqQJQ5VmomUATB7uIN30K5jWFAxyYLHbh4cQkBuNpbqh6Wm1QbQRkstajopJnxO
         fxSlp4b0RU7RcydIwbS+CsxtDN6vxs9pV4wfaBEyZ+9c0Ah2OMwE+wP59cseOLaI9KRK
         +Ey1d8MvRdH+PBwujhUKFUvEWahbo69HG+plof81p12X2+bpQhTKY8LW4xB0piM17jev
         PB1LEnrHW7oH/gBnj5y4ck+6yhnw3DPv4ILmES2jwsOTDmkv04yTLDMcXw8/7/F1GeXU
         ATpRlt180AZCMcpmdNN8Pv92Af0/nPi0JQZMUCPSZD5aCvOmW8WVvI4jpI4TbW/ZJFmK
         4UzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HuHr7lUi;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UpRgY7plHZSAKKsjw3gagntHgfqublSKQdv7h99vqJE=;
        b=DrdkxBSH12IEAn6AnncJ0Gb03fnO3OwJxKCj20dtADKtxSzGnSDTEaNBpBV17pGSoH
         6kZalKmtooVmHBdS8UYkEn3l3h53pMZY6bJ/+C5buumZZKsI0URL7ZsLI8jIRrWqwQ/S
         yrAkwlb7GU7SpOcZh+8fe8U5HRzJRWiDPtmDGKXk4F/PWa0i6ai2rwbDoBdKdEBmeyvX
         3l9S0t/W1JNruIJvnDn7j65KHv5V7HeZEV9pjstN87YCPgqo34lEgUZhyUE6i2UyBTtg
         NjK4bxa3WiswoHP1c+vZvDaACQdRpPga7LgKWp4yk518OZeaZd9mBpkg/OZvPoJd8fji
         4hOg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UpRgY7plHZSAKKsjw3gagntHgfqublSKQdv7h99vqJE=;
        b=hgux6bUH3op1yg0Qx2J4+F5wZ3gE1tc7slEgD2a2SMYYvl+M6okSezKwkI/eP2tDDx
         PDBFKcLEd5msvEDl9p6iGqE/b9VVWBTD9MQw4WWuqMkFHIPxDQEuPV/cq+AUePZiBbwl
         nkiAd5gz6g1mpcNEkTGKKydlvIj6JL7kwPU+T7ZXZwuhHzvABtCcG1iHMySK6rfYYQGQ
         4SxgQEigp3d6iW63y+ri+lmQZ+SqeAuYH058saz3dzqy5sBJmKMF6Kh87pShHu+PfApr
         ItbdCipit0/ZNw0zoJQhql1R/7f6TvUgdUoUE2Z16C8LbO0pAs+OuRcAL4JKFhlDv4gc
         yHZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UpRgY7plHZSAKKsjw3gagntHgfqublSKQdv7h99vqJE=;
        b=Vo0Xh61liFPtzCjhWjLx72EZ8V681CmSi4sfU70H+xVdzMjK79ZtezYf6jCQzTmb26
         AKsxPHFIY5N8pyQEsI7zgEPKnrYJ/oAnxFzqk1HCKtWqZu6FsbxCPZ35d2MtNX4y3H2n
         BNJSggGpKYduaosw8PD+SilhcsvWVCkgl7FVNruJvA+qiAGnFJwr0H4vGlnHGkj2J8aE
         49TBxd2ox1API3rfQ+V+gFv2MfWqJomU8Au2p6m8F4XJoy7qou2L9VBmMNpKBlufDLXg
         pFAocdn+DgNOaa6/T4G0a4oCcS9vzG/yqiIhNwX4PSlJFHWxuGP+HEhGNM0qqpvvun+K
         KTsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532aSIJ4yqCfrKDmmkeHJiaZ1uFsE+pNeDIjvnyuyettU0n8IUNv
	m3Jsr3HJPCTyPwJZsXppmjY=
X-Google-Smtp-Source: ABdhPJzPzVrD55vb6iqv9pr/a+wJP48fmWP6IuFg/De9CZyaQj0EF2QXRXuoa9EwLpq/q0r/IsKn4w==
X-Received: by 2002:a17:90a:c68c:: with SMTP id n12mr1931078pjt.98.1603939038839;
        Wed, 28 Oct 2020 19:37:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7c43:: with SMTP id x64ls502228pfc.1.gmail; Wed, 28 Oct
 2020 19:37:18 -0700 (PDT)
X-Received: by 2002:a63:1b54:: with SMTP id b20mr2215095pgm.161.1603939038279;
        Wed, 28 Oct 2020 19:37:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603939038; cv=none;
        d=google.com; s=arc-20160816;
        b=d4Ja8I2rqd73HQA9PxBBN1W+D2+bNvtWd+lTVGOoEuzRNpkTS7ZL8+ROVGEIB8Uxvd
         ymkNOQkMeRlz1+RJ9kh+AFMb9o7Sp3M8IwoFgzBLBe6HTJP/iX/DqVP82zd4b5e9uWfo
         Aiq72d8tHVga6PpyAOHQC747Z3shoXdK78mCnwK5DQFsza67xaKToc483rMxsBONbhrB
         1J/LJcU2kjmaSz5t/9IRUIMoGY7txBMJAozHUAePWxaSGJX3ckUpE6ktU9ztpP8X0lem
         k543rZ3NXpMdDvPwhR1l/O4zd49bUmr4yckm6S6VWntx7HrNKAoMz5RN9eOjUmnX6lGP
         0lrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6XRUpzLiGuEo7PmpLXwl6+IIfCCFqx3XPv+eOFg52rM=;
        b=CyCA1v397vsCyZwNmXCWU0P5cQH+yZ2R6zhC8ClquuwDM4QzmTBOSBWDSZzzicq1eg
         UVJ1rgLD+l7khxKSmIat0wuAk/yGK6/eXaHx4X+yniVF/luej1I/vcCHHIZ7wUnCDbxQ
         NPE0qD/B6qTu82gGa88/8EyQ0FOzuiKouA82XpN3nc5ISD0Q5NQWuGkxEIRmz2ScZMTe
         0A+zIhfZMm3TEDwUEO69SxVFznf2YWUJuqyU5BaeL9RlUZvRFxDNdRKA3keQvLM+bvjS
         Yj/+e9Jq6AIv0IJ0k9k3RAwiVzg1AL2kFjzofMkV/GIKintExIM5+pvyOHYDlSnC9lz3
         tdgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HuHr7lUi;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id bd7si78703plb.0.2020.10.28.19.37.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2020 19:37:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id a200so1093402pfa.10
        for <clang-built-linux@googlegroups.com>; Wed, 28 Oct 2020 19:37:18 -0700 (PDT)
X-Received: by 2002:a65:689a:: with SMTP id e26mr2046138pgt.136.1603939037979;
        Wed, 28 Oct 2020 19:37:17 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain (ip68-98-75-144.ph.ph.cox.net. [68.98.75.144])
        by smtp.gmail.com with ESMTPSA id f71sm895705pfa.155.2020.10.28.19.37.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 19:37:17 -0700 (PDT)
Date: Wed, 28 Oct 2020 19:37:16 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: David Airlie <airlied@linux.ie>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tom Rix <trix@redhat.com>, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech
Subject: Re: [PATCH] agp: amd64: remove unneeded initialization
Message-ID: <20201029023716.GB2316@Ryzen-9-3900X.localdomain>
References: <20201028133106.5420-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201028133106.5420-1-lukas.bulwahn@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HuHr7lUi;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Oct 28, 2020 at 02:31:06PM +0100, Lukas Bulwahn wrote:
> make clang-analyzer on x86_64 defconfig caught my attention with:
> 
>   drivers/char/agp/amd64-agp.c:336:2: warning: \
>   Value stored to 'i' is never read [clang-analyzer-deadcode.DeadStores]
>           i = 0;
>           ^
> 
> Remove this unneeded initialization to make clang-analyzer happy.
> 
> Commit a32073bffc65 ("x86_64: Clean and enhance up K8 northbridge access
> code") refactored cache_nbs() and introduced this unneeded dead-store
> initialization.
> 
> As compilers will detect this unneeded assignment and optimize this anyway,
> the resulting binary is identical before and after this change.
> 
> No functional change. No change in binary code.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Seems obvious :)

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> applies cleanly on current master and next-20201028
> 
> David, please pick this minor non-urgent clean-up patch.
> 
>  drivers/char/agp/amd64-agp.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/char/agp/amd64-agp.c b/drivers/char/agp/amd64-agp.c
> index b40edae32817..0413b3136541 100644
> --- a/drivers/char/agp/amd64-agp.c
> +++ b/drivers/char/agp/amd64-agp.c
> @@ -333,7 +333,6 @@ static int cache_nbs(struct pci_dev *pdev, u32 cap_ptr)
>  	if (!amd_nb_has_feature(AMD_NB_GART))
>  		return -ENODEV;
>  
> -	i = 0;
>  	for (i = 0; i < amd_nb_num(); i++) {
>  		struct pci_dev *dev = node_to_amd_nb(i)->misc;
>  		if (fix_northbridge(dev, pdev, cap_ptr) < 0) {
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201029023716.GB2316%40Ryzen-9-3900X.localdomain.
