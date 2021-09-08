Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBW6W4OEQMGQEJTOOD6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 3002D403E08
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Sep 2021 18:57:01 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id d15-20020a0566022befb02905b2e9040807sf2423628ioy.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Sep 2021 09:57:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631120220; cv=pass;
        d=google.com; s=arc-20160816;
        b=at+/wP7Qf1QvVuySjstbDXMAZTao7jwpM27JURnlveBys1Z+obDoj4687SkdQre6R6
         HckSAHTNYByiuglsMClnkLx9aG4u+Q1IH4KkEh3jQ4LKcYqHdKFgm6ipKd7AlABCviwD
         3/RivzhgklL9H+PlcWp+wZETuX5hXHULTS3IsP4kErwRMJU2aM4cnRCvBxc0awE5FfLm
         c9+vWricVpvsP6kqc4Sbi+/k+0cZ8+4BOn6SqH+ZM3TXt+6JStmIufjEcmjWYe5BAGbt
         bv42X97SJzLayzEtSqOt+AGpJ9fejgx/hjk0x98f0ywCgu0ALoTprrz4dVew6ism/geZ
         pTgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cHHHeeUNB889JB9N7Lkfs+bguZbvkoUk2EEuxrGswZc=;
        b=a2wyC0pBtwu78PcyubYYMyeYIohRhakDyGmxMRe8Egmw6ACGGtu3Fj7To8tech/8E+
         Aisr26RQ0dtXTMfxumJ9nz6qwbctXmlDQyma1D+vqPys04hE5EtqN1xMBv544xEY2IaA
         qFgAHrNlNyoa+BTHOOPQ+6vo8Cug1dkAFJN3ZTFrAUrTTfa68U47xMSc1g5GPWyf23Hu
         Lako35PndsihZlbdm1PD2Nf9YyBs4GJvBlH4IVq/+W6EXmgf5ieJESF4S0zYhTKJ4cdI
         RnLFa48PqVAzgivLP0DEkpcO9eAFjyqUa0k7SEakq/3SsR2UKHsgbAU+74lTEF0nrtqq
         2vxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mbVliIBE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cHHHeeUNB889JB9N7Lkfs+bguZbvkoUk2EEuxrGswZc=;
        b=CPkbX3jmJThirCBt6Rf6eyWf6bAWQ7ChmcPD7UtspvbyhnrxO5NWDHDgHiNGtKE8aT
         QnOdtaQSebhDVllB+fEZ6SwKJam5pNTDagAKm9PJw9bDjd6P4/lcQaNR7I4Hwula4WQz
         n4oc4vRf+23oHS4h/Hj/uaKMDUfAGQ/LHAqti4pHhFyXFtsJcJDZi8lGScsAIAQ4f3md
         Y+om3YeVUhAqIufwQtugU5ieUi0rB/Vq7HvBpaVT44IGvhRpWMgXxEDhFfHNgdhScgtV
         7sxIcJH9Tp+fVYz3P4BDe3s4qmNGVy3829bFwI6up66LC/SOB2tybLjBc2xr/pvLu47M
         e0cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cHHHeeUNB889JB9N7Lkfs+bguZbvkoUk2EEuxrGswZc=;
        b=PyNZnHR0BWXbIiYa3+uxFQC45xI/tR9YCiF5tIPPQWUeZVSiXoRN6R3MtQGS3TUDL/
         0kpO44MbdSuTghxAtk8Z4bO5qlXMTDMBSHPM49ebJ1nFeu/jULNEyFh7w6cKrwEUbmV7
         6xwSYobop5r4omgmr9GK8Fj3gdlowXSkq/FmNcnO3lVIQiB3MYNo6K/+wrcNCfgvNJ+i
         TM0zl9ufbC6bS97hWL6dcHhrEU8C/0wI5Dz/5MLsZ1rNOyL+Eosk0l1rct4uxZJtRrBO
         5zGab9PM3NCnAg+hAJ/6leHaihLMEfguThTPAdv7ad5QUXfWqqIEg6JaOijhoqCwEWsd
         ELvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/xd3UabAlCJbo+JWkVeCezji7N1J5IEnMZyRKo79+gqoqeaq7
	addy74q00tY+rpJPhOp9PK4=
X-Google-Smtp-Source: ABdhPJyvxM6heWXo4zBltlx8Oh8FTpo9xX9BWPJ011m6O3copuAdyZ1qwmvndUd/9Ieajt9waQSXhA==
X-Received: by 2002:a05:6638:1401:: with SMTP id k1mr4697984jad.58.1631120219859;
        Wed, 08 Sep 2021 09:56:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c7d1:: with SMTP id g17ls605912ilk.3.gmail; Wed, 08 Sep
 2021 09:56:59 -0700 (PDT)
X-Received: by 2002:a05:6e02:e51:: with SMTP id l17mr596765ilk.73.1631120219383;
        Wed, 08 Sep 2021 09:56:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631120219; cv=none;
        d=google.com; s=arc-20160816;
        b=zVQZJTIVX2E+wxVKfjzhabcVgKEHs8+IF3NfsDip29ibpNp0wxbap7CVLv1FNRKlHa
         4fz02XD1HJjYxDWTRasUoPyqX33W/ipzY3Uy7nHfKmAGeQGz4yjbRkaDkpDHOfrDnPre
         3rMo0aFobQf4kbOVA9xZy3ee8StwWZrlMO+LSpIYDJhFHcBk7b0PFT6oVPNjyPZTp8Hw
         rXcDik0kS6fnf+Sb6gvnnDF4rlehDERyGTPsi5JC4SnkG3Mk6wrvzBwajYc3ac3ceust
         suv97ccAns1pkatsEMGwNpWC+hljHB7uXmq8CT/DjaRi3hLTH5KXclIvWIQH3CSYlEL2
         I3Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wyvKcuATQ7P0maMKDd+ps8TszwXRzAfy/YMMXLJm5Ok=;
        b=qM61lGiZnf/Dtry92lfksnfOT9c4IVxEKiiBLfALe0r+khASzUHVzwBUmX9DjJldc6
         j4rm6T3bNKpCgDLDkNEgG4DiE9WDADQr5aO3YEBnMQDOihQvUrfln+9630Nko8zS7Wwe
         yEMaXgkBBjOaXBF7ypunAdwHDs7ZnsySQ62dYRS4ZFTyNXSYmObcUz0q4+BKXpIQpJXu
         EMk88okV9o/OkzKTKBqqJAZxrTcAkv27rCDeUEqyxpLK+fKFsTSP6UhPcaBdVcD+46oG
         Stl2dic0U6rMUoHHajbIoMaO3HrUB+ZIEAtdVAST+a0o630H7GAyfWhMPVfbrjIeLOqM
         OK4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mbVliIBE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i29si149234ila.2.2021.09.08.09.56.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Sep 2021 09:56:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 67C8B61100;
	Wed,  8 Sep 2021 16:56:56 +0000 (UTC)
Date: Wed, 8 Sep 2021 09:56:53 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: linux-block <linux-block@vger.kernel.org>, nbd@other.debian.org,
	open list <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Josef Bacik <josef@toxicpanda.com>, Jens Axboe <axboe@kernel.dk>,
	lkft-triage@lists.linaro.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, llvm@lists.linux.dev
Subject: Re: ERROR: modpost: __mulodi4 [drivers/block/nbd.ko] undefined!
Message-ID: <YTjrVWaTIA5ZZumW@archlinux-ax161>
References: <CA+G9fYvThAuTu1-Tg+7BaFofxfBkvBuTAnycuws-U4p473MeZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYvThAuTu1-Tg+7BaFofxfBkvBuTAnycuws-U4p473MeZQ@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mbVliIBE;       spf=pass
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

Hi Naresh,

On Wed, Sep 08, 2021 at 04:58:11PM +0530, Naresh Kamboju wrote:
> Following build warnings/ errors noticed while building linux next
> master branch with clang-13 for arm architecture with following configs.
>   - footbridge_defconfig
>   - mini2440_defconfig
>   - s3c2410_defconfig
> 
> ERROR: modpost: __mulodi4 [drivers/block/nbd.ko] undefined!
> make[2]: *** [/builds/linux/scripts/Makefile.modpost:134:
> modules-only.symvers] Error 1
> make[2]: *** Deleting file 'modules-only.symvers'
> make[2]: Target '__modpost' not remade because of errors.
> make[1]: *** [/builds/linux/Makefile:1952: modules] Error 2
> make[1]: Target '__all' not remade because of errors.
> make: *** [Makefile:226: __sub-make] Error 2
> make: Target '__all' not remade because of errors.

Thanks for the report. This is a known issue that we have been tracking
and it is now resolved in LLVM 14:

https://github.com/ClangBuiltLinux/linux/issues/1438

Nick said he should have a kernel patch to work around this in the
kernel for older versions of LLVM soon.

By the way, can you use our new mailing list and my kernel.org address
for future reports (llvm@lists.linux.devi, nathan@kernel.org)? It will
make it easier to find these reports in the archives in the future and
my filters will catch this better.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YTjrVWaTIA5ZZumW%40archlinux-ax161.
