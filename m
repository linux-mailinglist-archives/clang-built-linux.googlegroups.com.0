Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBGNZQ2EAMGQEIXES3JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id A51FC3D94F7
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 20:06:18 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id y25-20020ac870990000b02902536d2bea0fsf1429377qto.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 11:06:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627495577; cv=pass;
        d=google.com; s=arc-20160816;
        b=QtVsjK38jlHJtYzW0Xk68fWaPHx7sEYbdHJj9rHyRx/OHh0bP3WHriNlk3Xk7T398k
         0HH3PvcDEBFD2VuzyN0+b9kY0wxTVqOYGNRHzNY7ESuBsSAammAeMSUO3bKoWeksGx4T
         ajyzAvRS7LLmg53zcgUDqQCkXJivrVhv/DNenv4QUW/CR39n5zF3qpblRw8OygZLlFqt
         Vh1Y7PdciS4zRb9mvPSaR+T3/6jloEqAbn0p3TW2h+BJMD3pmmxOqs0xCLMDr81KeNKf
         gNVamS0+xk+glf9e/0osDV0XGYGdgVYYZVVEtj1SmbPmWTJm+kjP7Y9CfTPSlj64SI3b
         87IA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :date:from:cc:to:subject:sender:dkim-signature;
        bh=D/1NvBr47n8+5QcofaC0GdfNBJZ4S2Ju8/2gyZut9Hg=;
        b=lQXJndZMd+M+qgMsmHWrFp4K4rbOfqjxyYJPK3bNpGWlKLrIUBCviVTj252IWBWLIQ
         d82syfyHLaiu2A/X2SGXeC+OTlATHh4w/MKnpLkWvx08gvgTk4tXkwrPiTsH9v51mtnj
         Pr65RHU5wuck9juQ+Dy+bYuNtV1R4LZolRkOoW2tB+mKz7IJ97PEiFqeL3vgwhRcl6R8
         cpaBoShFVsVhr6BRqAn9X5C5uwSDqRNfktDapo6nKtVngNDdkKJo/DU3qNX/3fTlKZHp
         kOGOyrm8MqmnY6utSXDhGKYJoaimKIK36ozpeC10xf/3qaiVGzgML2BU10PbY6eHTErl
         V66g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=i9495Zuu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:from:date:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D/1NvBr47n8+5QcofaC0GdfNBJZ4S2Ju8/2gyZut9Hg=;
        b=ZFs8WW22wpw3Qop8m1krClxSc3Rb7BN1lQyMeMuE/mRRfFCcW013WvPeKVXFTHxy9n
         QF4Jz01OU0U3wF3HnqokahG85W+QOl6xQZ5SJyHQOKa7GMymlrCFB1N4ESPQVbp14Mxt
         6RoAScCi3bi4qxdKKxh/UuPE7sQDFd+2OPNuAFaL2aG0bvFYrFbWRDBsfLZ+eccxTPEg
         XxZFn8pTKasVdzuT2UWDs25oqO6orho9jv6xV6X6VDtt0M02l+VHOtuGIz9z4GAnLfFl
         ea1ZyxmLyS8mEtodKJF2dOJ2i4nebVLuJS+hxxUBcXPbNzXWmj6+w4ds8RKqGqrfzHG9
         6AcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:from:date:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D/1NvBr47n8+5QcofaC0GdfNBJZ4S2Ju8/2gyZut9Hg=;
        b=KhfUENHkP6Cn9BQlkcwnjHfvC1VfPZ7mgk79PAVjcRhOdG1MFHXJJG9lFX5EaglU8f
         +hC7zYSZfHDKAuXzFagLoIxa/ZQSl4tnz7CEO/3Dp/WLw+nT0j++CdmoPUftbpjIdWiz
         kOFBinoJxomuvXwlGzovUgMgDuWifSqVJWyYucOW14fVXRix0Qcj5f1DqsPKFKUedMUb
         WDetRA1axyT0uLx+LUANEa8Xm5XZMRp4xSGIx2WKuFNCwhEotrljtfKLrtfcjVEnRvKa
         m6jATmSgjiknzXF8afAC7IzZLBH2e4anmxgymHMgsKirNhTnXw9EU/qd7QthaAcOfMKY
         yccg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531U2aUzIxC+1EsJybzXyOgBhRWTqwtqsWi7DNRfuREjNuYDmWXU
	aRZTSnL/pSo9NS8B9obRwfI=
X-Google-Smtp-Source: ABdhPJzw7bVhswj/g0zk23TH6ZfOyd7X9k9VWVFCzmt32DWEuehY9sYHCmz4agkZZWYAJJ70+io4fQ==
X-Received: by 2002:a05:620a:1399:: with SMTP id k25mr921735qki.255.1627495577517;
        Wed, 28 Jul 2021 11:06:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:ecc1:: with SMTP id o1ls794432qvq.0.gmail; Wed, 28 Jul
 2021 11:06:17 -0700 (PDT)
X-Received: by 2002:a0c:aacd:: with SMTP id g13mr1411373qvb.20.1627495577123;
        Wed, 28 Jul 2021 11:06:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627495577; cv=none;
        d=google.com; s=arc-20160816;
        b=qXXHvEu6eifxkz0GYbBQNMQOHlHqdUcRGSykFS44gVjsxU+RT2ecuzP65zPY2sQHfu
         a/LF9We9ZbknJYyUE6z0TJ5EQxT0mey0IW3tV1wJKB1X7LCPosGNUjHszbEFfaN7cYIf
         0PuMUnioXP9FkYovcvursi/be5YOEdYGonKi2AbPJ7Ilm0TwZUFVj6mkdcdrtE7X9nNJ
         yaKh0CExO/4I7JV0dkFqE5S3JF6qYY+NwRp6ECJ7xzQIJ8D064ZhNxJNX7Gvj7cepgJa
         d+tdn3Jc9J0a9UaHP1DAEkio/a8gB81sJinWoDf/fzsuM3VCrkSBMRW54HZ9yxAdEEIY
         FkeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=baWFBGi6ZEuY5apfJ1I2nqlqam7uFiKIJabwhxK/lHQ=;
        b=OnmNFVrrE13F5NJ5ynNDw6rkJu98+nQYZ3DfuvqcjCYz++2EktSh6SsT3xgZTMibe3
         vBnQlT3iI+6FOb5TZFbns/7YRmIMzP7r66AjTwrv51LFWoIFaYptdfiLaoNoe3reH2km
         5gOfIT89JGONSoiq8eMljAdzzLgonVCZMQXrwXohIeatUd7gTRZY0mWpUfnSzhQfWf7H
         JnNHNq2R64fKUDSG2GFOi5PTuD1IkhTDsreXckvUEdF5aqntET4fO+PqO34OPcVRvW3h
         Jp1R6ePUQyzEntVp0GTA6D7iHPnSHiCpGn6UWCPA0IhEAqzI4MM9KlhAAGRS2k2N//J+
         b9NQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=i9495Zuu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 12si69423qtp.2.2021.07.28.11.06.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Jul 2021 11:06:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A35A760F91;
	Wed, 28 Jul 2021 18:06:15 +0000 (UTC)
Subject: Patch "iommu/amd: Fix backport of 140456f994195b568ecd7fc2287a34eadffef3ca" has been added to the 4.9-stable tree
To: arbn@yandex-team.com,clang-built-linux@googlegroups.com,gregkh@linuxfoundation.org,joro@8bytes.org,jroedel@suse.de,lkp@intel.com,nathan@kernel.org,sashal@kernel.org,will@kernel.org
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Wed, 28 Jul 2021 20:06:14 +0200
In-Reply-To: <20210727225650.726875-1-nathan@kernel.org>
Message-ID: <1627495574331@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=i9495Zuu;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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


This is a note to let you know that I've just added the patch titled

    iommu/amd: Fix backport of 140456f994195b568ecd7fc2287a34eadffef3ca

to the 4.9-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     iommu-amd-fix-backport-of-140456f994195b568ecd7fc2287a34eadffef3ca.patch
and it can be found in the queue-4.9 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From nathan@kernel.org  Wed Jul 28 20:03:29 2021
From: Nathan Chancellor <nathan@kernel.org>
Date: Tue, 27 Jul 2021 15:56:49 -0700
Subject: iommu/amd: Fix backport of 140456f994195b568ecd7fc2287a34eadffef3ca
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>
Cc: stable@vger.kernel.org, clang-built-linux@googlegroups.com, Nathan Chancellor <nathan@kernel.org>, Andrey Ryabinin <arbn@yandex-team.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, kernel test robot <lkp@intel.com>
Message-ID: <20210727225650.726875-1-nathan@kernel.org>

From: Nathan Chancellor <nathan@kernel.org>

Clang warns:

drivers/iommu/amd_iommu.c:1335:6: warning: variable 'flags' is used
uninitialized whenever 'if' condition is true
[-Wsometimes-uninitialized]
        if (!pte)
            ^~~~
drivers/iommu/amd_iommu.c:1352:40: note: uninitialized use occurs here
        spin_unlock_irqrestore(&domain->lock, flags);
                                              ^~~~~
drivers/iommu/amd_iommu.c:1335:2: note: remove the 'if' if its condition
is always false
        if (!pte)
        ^~~~~~~~~
drivers/iommu/amd_iommu.c:1331:21: note: initialize the variable 'flags'
to silence this warning
        unsigned long flags;
                           ^
                            = 0
1 warning generated.

The backport of commit 140456f99419 ("iommu/amd: Fix sleeping in atomic
in increase_address_space()") to 4.9 as commit 1d648460d7c5 ("iommu/amd:
Fix sleeping in atomic in increase_address_space()") failed to keep the
"return false", which in 4.9 needs to be a regular "return" due to a
lack of commit f15d9a992f90 ("iommu/amd: Remove domain->updated").

This resolves the warning and matches the 4.14-4.19 backport.

Cc: Andrey Ryabinin <arbn@yandex-team.com>
Cc: Joerg Roedel <joro@8bytes.org>
Cc: Will Deacon <will@kernel.org>
Fixes: 1d648460d7c5 ("iommu/amd: Fix sleeping in atomic in increase_address_space()")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Acked-by: Joerg Roedel <jroedel@suse.de>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/iommu/amd_iommu.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/drivers/iommu/amd_iommu.c
+++ b/drivers/iommu/amd_iommu.c
@@ -1333,7 +1333,7 @@ static void increase_address_space(struc
 
 	pte = (void *)get_zeroed_page(gfp);
 	if (!pte)
-		goto out;
+		return;
 
 	spin_lock_irqsave(&domain->lock, flags);
 


Patches currently in stable-queue which might be from nathan@kernel.org are

queue-4.9/iommu-amd-fix-backport-of-140456f994195b568ecd7fc2287a34eadffef3ca.patch
queue-4.9/tipc-fix-backport-of-b77413446408fdd256599daf00d5be72b5f3e7c6.patch

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1627495574331%40kroah.com.
