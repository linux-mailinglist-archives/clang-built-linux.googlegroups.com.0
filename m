Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBKHO4CBQMGQEV2WTYKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B633609D3
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 14:52:58 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id p12-20020a4adc0c0000b02901d5037841b4sf960750oov.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 05:52:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618491176; cv=pass;
        d=google.com; s=arc-20160816;
        b=HmAhL+PEeDhqHq9HoQBVd9NqqdTpnoGoB68x3JMchLA1CFHUGkpnpWRnn0FhFz9k7u
         aXWmT9pa0PoBL1NS5j2lklR4gaYEQY37o48RtiFX0kl+P8T1OMXTBLCWCZJDqN3IajYs
         ACMcfyVO140aTD+IDpLVgxPdwBtTzrm1ML+Xm9toSJ3taYiwC9WNQtXUupr6oWQRVVPg
         niTuBrJVs0WTPVzbhgp30HeSIASlrmdnnACgemXUZeOCoCxGuhYaSezVwMkFHFEkYdJr
         PNHYvjUITGa2/fcsQ7f8h1VAU8yrSGzWpTEBEA8LcfBZ+aNK3gNB6mrOcHlBgMxnP6p3
         B95A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=D+o8HLyXmSNIlzzBlABJdZ6GJI3URhmQSOBBTYbs6X4=;
        b=LNiNEdB6od9/SUQ4Lgae5dOSzoxKBtGv5Lb1WjNxV4Njhgm/TAv7edlkBtbd7gkdYD
         48RH6++ahMj400vDgbLneIfBvccRJ7V05quzeU+8aUqX1yxAnm6Zy015MkmYHIWncE3y
         Hzc1Jm4tSPhJNqXTOrKrhN9sitCgslYyVXMJjp5N7j+RlxOUrAa8csfhszRHZmMBMiKe
         5ULoi8U+RwjXiRcVXUENcmPkOPKJ92aWyeG1/RHEhVPb5847YBJqyafQQGflKQJ+ZrX2
         MU0kQp2zIFdTtlwtxwumfhtYEaUwITTd9Iw7MF3YYbJR44FlcWL2FywhCbtYip2ET3Gq
         fkgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D+o8HLyXmSNIlzzBlABJdZ6GJI3URhmQSOBBTYbs6X4=;
        b=jZxNXyVi1WerTjUgSvD1idaHOStY68oWORH4sSHyFDoU1h4523wKoQCutN6Gh+0h40
         a/bqQB8OxKqInk9lOMp3xeySFVS5bzwnFpG2GizKGcaQwnWEY7+iDhAcg3+hM+7VJv13
         jKKqAluCw3//IGRo+OGn7VqGPqPkZe143/QuRKoHMd7bMK4AvAChngNchRxwqXrg/9/l
         zG2q5qPrr0CoqnZNc5pz/EwbjdNl+kmZUVE94kLiZuej91EqqhOsKH07LbNAIPXHjxqi
         bVt6sw6YPLu5CO2pXIycYa0U6VnzXxYI9PStq1/GO3GbIWqFpV+tsg2vhXyz9emr5CTS
         XO4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D+o8HLyXmSNIlzzBlABJdZ6GJI3URhmQSOBBTYbs6X4=;
        b=inHo8INe9FY+a6vdgt+M0lNsZTJlKPbTkY7GAL5RLvRcWIH1nJ48Pb+C/Ieh7fbOoK
         CIc8pI4Lu+QYR3c9gnYXB1QKHORRpWvorUbkzh0Y1ZL8LS1xTMH9+EWjh5L0zlPPm3TM
         A6AYMDqIa00uqr+XkuXS8AXNa40w+P+qTvU3ZuspcoK6MMfPP2QfpGym9vxRhIolNm1V
         sF3mbhSKRkWUhe5wlayE7ZdJNANFsYeWY8veLAQlR8g+RJH758taGBkrGtV10NtoCFKg
         3QHL/oKW2nX4n/0PLSLKQ5TsoBr81VlAEW72LAuww9gRsmCp9+aVBeE11BY9x6aA4WZI
         zrmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531DeQ/JncwG1Z1bCd2/cuRBIrM9C3VEj+SHCZuHFI6MjFQvG6EV
	15KmXTGONI0GGkFjA105n0M=
X-Google-Smtp-Source: ABdhPJyRmgU26GheE7nLJzBrHwec8VslOuat3rGLxbjMM/4sEkXe4CEkJ7KkGAkEkLyGbeCXrrPUOA==
X-Received: by 2002:a05:6808:d50:: with SMTP id w16mr2463141oik.28.1618491176746;
        Thu, 15 Apr 2021 05:52:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:b4c2:: with SMTP id g2ls308587ooo.8.gmail; Thu, 15 Apr
 2021 05:52:56 -0700 (PDT)
X-Received: by 2002:a4a:8c0d:: with SMTP id u13mr2494696ooj.59.1618491176376;
        Thu, 15 Apr 2021 05:52:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618491176; cv=none;
        d=google.com; s=arc-20160816;
        b=Z01g2ccG2MpIJvqxIIGUa4mZJCA6JHvogBTeDJR5Vh/URKu/QEPd08fn7fNr+YFIYe
         GVwAeBRA7Tfc4uh0Sv5bltid2emaIuPnSgjMws0y1FlqWA9NNp76enOsHJkSnZpLR88N
         rqjeMhvt4oBuVfihXNn6EQzM5fFDMq5l39NIIyE77vXTgLwFeeIm/By4Lj7oSPGE0Rq2
         2INgY+s3VR8LcqjMs7597f/anLU4DN6j8e2jaO3RIOeC9gSSXDqknp2i7SekstdpORUw
         zus+MVHbpPKnDrHtZaQiQh+ARpUQQbPgKNVq60C9bMZ7GzzhdnRkaxcxS0p59bMQbu6x
         ewmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ioqvG+vf3kkCEC6AzlRUQA0S0Ka1caWWM8ITAngYSuw=;
        b=sGuNUHCDHAej95Al4tTxPIC++/cud/+utJdYHGF51F2nl8WAY7VQKqI6biAOzkS47a
         bivS+VEioXl2hVSfc7qSZzyIvpSgYVH6NoAMMatGekjSLZ6eE4lhS3NIdCooX9lh6zAL
         4PKUucwCn5H2jtPwnW68/TZg5ZMmAHzSbTlnwRHvAuIyGlk4ngyIPwlKP8lUpnuDiAFz
         9dwnrgDNnQk3aPEhlxv1nlcl+wvij4nPumgYF6JLkzqX+VcogCLhT/JUV84w3eanIseq
         yWS/KtOL1OC4Q3U5Kbt21ely3uPsBwQ9xfkJjmeYh5qdeWLOvyluqdDTx8FooRIMrRkH
         4F+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v31si140482ott.5.2021.04.15.05.52.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 05:52:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A81BF60FF1;
	Thu, 15 Apr 2021 12:52:54 +0000 (UTC)
Date: Thu, 15 Apr 2021 13:52:52 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [arm64:for-next/misc 13/14] ld.lld: error: undefined symbol:
 sve_get_vl
Message-ID: <20210415125251.GD1015@arm.com>
References: <202104150734.PulXU4BV-lkp@intel.com>
 <20210415124121.GC1015@arm.com>
 <20210415124922.GD5514@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210415124922.GD5514@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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

On Thu, Apr 15, 2021 at 01:49:22PM +0100, Mark Brown wrote:
> On Thu, Apr 15, 2021 at 01:41:22PM +0100, Catalin Marinas wrote:
> 
> > Thanks for the report. That indeed triggers if CONFIG_ARM64_SVE is
> > disabled. Proposed fix:
> 
> Yes, I sent a patch that looks very similar earlier today.

Ah, haven't got there yet. I'll apply yours. Thanks.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210415125251.GD1015%40arm.com.
