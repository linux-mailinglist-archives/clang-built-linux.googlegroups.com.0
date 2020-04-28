Return-Path: <clang-built-linux+bncBDCIDJ4RTAOBBWOBUL2QKGQEJJEVZMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFAD1BCEB6
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 23:32:09 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id u11sf1348045wmc.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 14:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nPlryx4dYIh9UVeJAvBoj/iPnoxnC69cJoaY1e2M2bM=;
        b=VYVUL7/3yKyX0I9WpbR3M7RSduFzpxETZ18EWWQZGW9rasv25ALnnwREAomKoJdu43
         1dLaNwRm2fB3bcl1eXDkPBP8YmcNZHkBDIbNchBmkJWmfKIFqO+IABrIw/rqLo0vu/fZ
         XwxrvdgSMwzUcEXosXj/BxpTlLwOY0bwA7aIst3cCRL4doQ7+cAcw6XiEE0DPSj75FGu
         rkyhCFqZLkfl7qSgjERSW7Mfa2X77oB9Q4NsLk7cYZEbZQ5sgM+2UiljQM17f42LpFb6
         HWUFz673jl2Y6Z0PZk4v90DHK7dsu0RSE7b6OTzUXNQ5iOAs4RFWgPq/+hXHeEKRlPE1
         KFJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nPlryx4dYIh9UVeJAvBoj/iPnoxnC69cJoaY1e2M2bM=;
        b=IcVh7+cIh5uFFKhbUYUFQCXn6XFtw5u+ziLof0DVaETpNXXu46KXQ+ltdRp6JsJLTj
         LX1fsRPJLy6YgfpEFKHqxfRk1DWtePMGW89pjKWXw+eZIJA9lxCQgf0yCarS57AjKlsN
         M3frZ9x+7XxrkAx5D0HHruvANWJcleyWjC6RlCk+WLSnynswushzhXegjxduWBrJoF5t
         a7a7R5L2QfKqa58R5DHunhbHd06PiSkMCLAciLMBkmR/R90Dwuc0w4irQeogZdp7ydEX
         Ij6njRFSztUphbHMOMKsHE9ilzjzJ2voH5mix00Yy/05pLCQuEqSUTS0Ug+dQ/AdIHQI
         N7Ew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaotanaJU82tnUEKuTznNrewAuS7r/2jzBXaXYf8xGF6X7rXs5Y
	OW+ucUfZ3Mj+EC1tz8sErnQ=
X-Google-Smtp-Source: APiQypJJSj0Vc9oYm/MlOd7VpHXlf8xMokdKofh9Vtf8NAUfnK2xspzD3ojQjFXsGsMAOGcsIpXSZQ==
X-Received: by 2002:a1c:e187:: with SMTP id y129mr7146438wmg.133.1588109529385;
        Tue, 28 Apr 2020 14:32:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:618f:: with SMTP id j15ls29345901wru.3.gmail; Tue, 28
 Apr 2020 14:32:08 -0700 (PDT)
X-Received: by 2002:adf:8b8e:: with SMTP id o14mr37882088wra.392.1588109528680;
        Tue, 28 Apr 2020 14:32:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588109528; cv=none;
        d=google.com; s=arc-20160816;
        b=OIHVhiTD82ZhHnrsCnZ1gz5Nw4Ratb09guOwR53Ou3St8lMs4VrVZOYSjQBo/OVxVO
         ykl6O3ZIPV/nOYyHK09te6UWvu0zlaFNhSOb6g+tS5RtAamlXsyF5hARtD7yXWunPtvO
         QfgkqAwaBipFSl+X3Fp29V1JOIOg3N+0HYx9jeqjT9qt3dMxhph/kN0tA0S+WOf+3aJ5
         YRdZCvdoXW75uhxpDD8u7SEzA1ClJxf1x7YBNf+bHtf1sYBKIaP6NDaWlBqkhSTO4IY2
         wIRQh66ReUucReftT03yaa/vTYmD5Is+IGHks/Mzepa4zYiJxAUKCwAcgHT1mJpegfyK
         Majw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=nPlryx4dYIh9UVeJAvBoj/iPnoxnC69cJoaY1e2M2bM=;
        b=nqee39SRzSDWwXoDRsFEYVXhbkaYm+fAxpuf7cKXtM4dFDF/In1IkXSGYQtmFxAFMu
         fW/LnfaRwhskqbzomdcfW1cBpPzcRG4XlBiMFqos8Y2ZlzhtlA/ozVrdNVIVAUbyoY7i
         jW8KajZf0C08qfHtK0nj2qkal5cqpUnY2O/HNc7GbSM8AE8x5CbeESKFhnTVzN2gQBVb
         lpMfdaH6mDpBdsRXgRb8bhQEGdnKTL8tIJ+fhHxK6TjThKfJfYGcYBAgu/u5LC5Duwxb
         yfWyPQ0/r5JI81UXZ5+ZlliItr0u4qngoorxs3mgnpNzOKCqDlAHy98CFLH0f27Ai2Kz
         RF4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id u15si1031677wru.2.2020.04.28.14.32.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Apr 2020 14:32:08 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 989C81210A3FB;
	Tue, 28 Apr 2020 14:32:06 -0700 (PDT)
Date: Tue, 28 Apr 2020 14:32:05 -0700 (PDT)
Message-Id: <20200428.143205.1990723843043287086.davem@davemloft.net>
To: ndesaulniers@google.com
Cc: natechancellor@gmail.com, ioana.ciornei@nxp.com,
 ruxandra.radulescu@nxp.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] dpaa2-eth: Use proper division helper in
 dpaa2_dbg_ch_show
From: David Miller <davem@davemloft.net>
In-Reply-To: <CAKwvOd=cb-dyWGeMoCE4+zdgA1R=t=QPkzU9EGiCtgdzXke_cw@mail.gmail.com>
References: <20200428174221.2040849-1-natechancellor@gmail.com>
	<CAKwvOd=cb-dyWGeMoCE4+zdgA1R=t=QPkzU9EGiCtgdzXke_cw@mail.gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Tue, 28 Apr 2020 14:32:06 -0700 (PDT)
X-Original-Sender: davem@davemloft.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess
 record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
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

From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 28 Apr 2020 11:34:11 -0700

> On Tue, Apr 28, 2020 at 10:43 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
>>
>> When building arm32 allmodconfig:
>>
>> ERROR: modpost: "__aeabi_uldivmod"
>> [drivers/net/ethernet/freescale/dpaa2/fsl-dpaa2-eth.ko] undefined!
>>
>> frames and cdan are both of type __u64 (unsigned long long) so we need
>> to use div64_u64 to avoid this issues.
>>
>> Fixes: 460fd830dd9d ("dpaa2-eth: add channel stat to debugfs")
>> Link: https://github.com/ClangBuiltLinux/linux/issues/1012
>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> Don't forget reported by tags to show some love to our bots! Thanks
> for the patch.
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Applied to net-next, thanks.
