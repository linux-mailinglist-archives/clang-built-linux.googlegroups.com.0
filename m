Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBG7CTKEQMGQEEXVZLIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 970673F7D7B
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 23:07:40 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id k6-20020a6b3c060000b0290568c2302268sf326962iob.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 14:07:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629925659; cv=pass;
        d=google.com; s=arc-20160816;
        b=gYsaDzMaVi/Qn+2oeeunWEqGaiEw8Trs7HaJttaLNmaOpahW80R+Jf/by4Ipj9yKaw
         MHxxumy8yxBg1efuZuAUYLYOm7m2GF9+4LFvuOL1aasWq/TgzAuaKDPwU/9EQZ1272q+
         ynL/E3I2pkXAxA1QJZAECVBwij/kwSngVozB7xGAVSJLkgWJmNfPvmuUi0GY/teW3LO8
         h4ogqOQrdEQo6w5MeNjLhKTglWE4t3hl0guBXqjNojr0AP3Oq5AGmFyfUrkiSbz7zgVI
         eAj8G5hzmz0x0Rn3XQyvR09l+Sp+V+wJcgMHleLdpfoVuYoFPJcJeVeucH9tUiHI1qCo
         DPXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:subject:from:to:sender:dkim-signature;
        bh=JCMWwTHp3Ulw0lfH9jR4epSvkv6BZNt1jbzbPK6Ho/A=;
        b=Ps/8vPybn6kYIAXSFNGUY4g72mft0uz2SDXq0KY5Zy3DGeU1NGepBPWpD4IPmKuvu9
         R1l0TU9Qjlt2fv937HZNU5tHmCQoHyjgqZlXvcqy4IFAk6pzae9NjsAB3rM4zk3cxYdB
         FYtNMW08ovi2afKxS6U/H7c5nXJGcolhxrXvYz2mWLz5KiDE4HIVwebMczJgRvZCZimT
         kDiKahesVPUS1nFmXt92Vi7G69N/qkOls8e/MH8Fj48bYHUw2NgcJKYMBMBzNHv9wmB3
         XXmhMSXxaMpeWlGzUHdMEpwjjhrBaSIpv7wTWHKAokGpFePWQSRvGZQ/n+Bs/upx55NI
         B3Mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=r+4Urdh7;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:to:from:subject:message-id:date:user-agent:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JCMWwTHp3Ulw0lfH9jR4epSvkv6BZNt1jbzbPK6Ho/A=;
        b=P8v10C/+TGxCsYtnb02Pm5urFbTgLlt1C/cRXV0YBJ9t1lZ3+fOC4MWnFeYMWL8PiF
         PyTjULVxaJeHEGRwtlsqLLJHroE/1IP3C0d17uFR9/4JFZsY6Pzvq1NCIvzvLUTifUTX
         mBST/lggsOtYfmsboL/EwN4yHAyPA0cDGHaUEsjZzky+ynEu27fzCUGZHWw4zRNVonKv
         SuGS+GefHwlFE55O3c6JsVaOonLkFbfS8BbCBZPOWR5V+oS95BBcZod1PDlfw/ziOAUP
         s1fkzFhAB0gZra6FPO+HFPiIGOFaZCYsDRnSwuDK746YVW20rCv4SktJDPqI/32OWPBp
         BWEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:from:subject:message-id:date
         :user-agent:mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JCMWwTHp3Ulw0lfH9jR4epSvkv6BZNt1jbzbPK6Ho/A=;
        b=cumCEe/xUPZrzcd18WtknnYmfewjzX+7D9XvrDbFQoatyitAD/kNe4kPMcBGY9PmWo
         TIVGcYqzOhx+JZKQ3Txiz8HEwTXPADYHU0v18gXjrqZCEK1XvUgArW3dy0OMMv2a5cfw
         y0Zv38izrIv5sAP2Z172O4Yg7g65/6RhPZcv++E+xNb5eTGGYXIx6W6UjgGDYIZ96tg7
         sSrwI9D3brMesSeb2DvlZo79yXtnSzzKumpKPn5YiniYTLqP5sPVPHpWroM7Fv2qXzBA
         8GCwSXRKqBn5ZNu6JYM9TS/ZkQGKu07sglVFneUJOufoW5pvhMKah7Kt7PKHr2bavsbG
         dloA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303jNDmd9Aj/Jjs33zQt4kV9GHFBF3afDXY1g84Gg7fK4OKYqmF
	Sl2vU1hI/frmUFxDWObMaLk=
X-Google-Smtp-Source: ABdhPJz5kz0Rny9IqYFcph8kWVc7tPyOk8kVwZXnTHIZoKO1Iscz7kgKFKglPQOLUBx6gLOm50Z71w==
X-Received: by 2002:a05:6638:29a:: with SMTP id c26mr396080jaq.58.1629925659610;
        Wed, 25 Aug 2021 14:07:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:3781:: with SMTP id w1ls332731jal.8.gmail; Wed, 25
 Aug 2021 14:07:39 -0700 (PDT)
X-Received: by 2002:a02:ce37:: with SMTP id v23mr360647jar.81.1629925659234;
        Wed, 25 Aug 2021 14:07:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629925659; cv=none;
        d=google.com; s=arc-20160816;
        b=mPqRuDQszUgvoMO/6HYMY8v//tHDWMTO3xgB/W9ez3ZKwqydu/GolB3QgGmxBaGmt2
         jFkYEb8Jg/PxtOK9Dwdj2ZzsaTo6aLThcLqfPKUH7/y7urnRsqSOb/Aw9mvLF6vvTOpM
         FOJEvwH7MQn44nwEUmeUxnzRDuLlRGpzhrj6LMprIdELD8Jy3L862ETTaGCEDdLKP+g/
         c8H4XGYG9HDvCbEltVgkZpiMv0DylYBWQxAowSlnAVx/URzPnW2lnk0uJXCQr+pA5TZo
         Z7nmDNvDPmAn1murN//dzlH1do4CFHo15zodA5yGoS+PyXOlSjOt318mJXFOIqHOo/2P
         qfDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:subject:from:to:dkim-signature;
        bh=O3vkaul48h4Ey2Ui9gLGO65YBlJ1rpB3UesHZClBPa4=;
        b=DAhy3wWWh/cOpkZj7VBCc5VqtgkJXB6gJPAJL+pITpJ36DUtcVYPmvPPgrDyzjqf8U
         ZqC1ehZVrLJ6AUA6+/wowErmGklOKb8X93LbS/P1UGoKS4IYjXicY4tLe7vlkR4r28ZU
         1qwYayyFeFQcG+KJzjUbgfeJZFtOlUs9vYv1mfCvzZxv1uqOr4KTai7LCGqB8+7yc7N8
         0DzEs4v34Dkh3Sx7qjgHf9H9k/mxIVDTwGNP3RcbcuTetMOeboCp4ESFobHcS8MbwOh2
         fahmV0XRcSg+yVXJVmaENtnMZAznmfEHVdap+CvE3t6+hC2N83r5/a5JRi/O5SdbpZif
         1t4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=r+4Urdh7;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i29si68861ila.2.2021.08.25.14.07.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Aug 2021 14:07:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1A4E060E77;
	Wed, 25 Aug 2021 21:07:38 +0000 (UTC)
To: clang-built-linux@googlegroups.com, Philip Li <philip.li@intel.com>,
 Veronika Kabatova <vkabatov@redhat.com>, kernelci@groups.io,
 linaro-toolchain@lists.linaro.org
From: Nathan Chancellor <nathan@kernel.org>
Subject: Moving to llvm@lists.linux.dev
Message-ID: <24524023-b139-10ee-43e3-bc2fcb2f7d27@kernel.org>
Date: Wed, 25 Aug 2021 14:07:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=r+4Urdh7;       spf=pass
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

Hi everyone,

We are shifting the ClangBuiltLinux mailing list from 
clang-built-linux@googlegroups.com to llvm@lists.linux.dev. Google 
Groups has served us well but moving to lists.linux.dev allows for 
easier archival (as we will be on lore.kernel.org automatically) and 
allows for people to subscribe to us easier, as they only need an email 
address, rather than a Google account.

Please follow these directions to subscribe to the new mailing list:

https://subspace.kernel.org/index.html#subscribing

Some more information about lists.linux.dev:

https://www.kernel.org/lists-linux-dev.html
https://subspace.kernel.org/lists.linux.dev.html

I have added CI maintainers/mailing lists that send us regular reports 
to this announcement. Please continue to send us emails about build 
results, just switch the email from clang-built-linux@googlegroups.com 
to llvm@lists.linux.dev so that they get archived as a part of lore and 
can be easily searched, especially with the upcoming 
https://x-lore.kernel.org/all/.

I will send a patch shortly to update MAINTAINERS.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/24524023-b139-10ee-43e3-bc2fcb2f7d27%40kernel.org.
