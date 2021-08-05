Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBB65ZWGEAMGQEJHFGX5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6053E1E21
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 23:49:47 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id f25-20020a1c6a190000b029024fa863f6b0sf3312216wmc.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 14:49:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628200187; cv=pass;
        d=google.com; s=arc-20160816;
        b=lirFP3b9cvmr5rBdaqp935/pGj/WtOceHFWZIB85X4iEs269RexfUsnKUdlwCC9rNh
         WI4DIvdb1rfuE5ZeKaHQP1zxDCN1kRnNgGu37XubJKixwI3QzC0/rbwXM3o510lYLIIb
         ofn2YNbYBg9PapvN1QI+zCbuplgKQuhCWSoqrCJDWZecAQgxgxjO+U3qcQe2Em2kDLoP
         szrwBv9GKTpfGuiYasbdol5IOrfo6CPJ+9XXo2ts5PX2RPenn6gTGEN7+xifDhnsdv78
         YNjGRTw+JaraM7KE5TQjaN/sJz9IPFnmztgjFHqgdCz7ljAM1e79ZoWX5POIyLdHaWSM
         q79g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=JdHrhKspYiFBBmpI2fp6bOOS3OdIPy3k5H6HiB3d2EQ=;
        b=wXP5Rznun19x0wgvfF5Ckk6mcqaY09TUgODgghGPZJ+ZqVNkmCsoddk2PrgV2P7dsV
         ptZSWvoID2romHR5KzftxnmolM4NzG5YOmuWGvbzVh4Wb39U81usniDMlGfxoi+oe1P8
         lAasGmgVV1AVuKe7urHwH6gyvwBBZGr0UiSZ8zUbPrQEGGnrlZSOgI/o4/2NTua2oYpz
         rONFZw+OWRYgmXOQtbD239GGIFeZrauKj5RExIXQNOcJ6G3UcufN12pri3i+wo15c5NK
         wDFmFWJf95a951QLBGNGUhOm1LT/7dVYKP6tuetzhVcb9wK9rnKIlKrPg72FtrofUd50
         VF6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=ZF468vcG;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.184.18 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JdHrhKspYiFBBmpI2fp6bOOS3OdIPy3k5H6HiB3d2EQ=;
        b=adsbdM1XXGwNXujOK1lbAkbLrA4iKLCd8NApUL4kx333lgGtQ/NyOtn7b8VVRmpik9
         AiEbRE9McNxMONt/pjoUOaYp34Obrx6xaQX1cwQItex4xdHIHLzJ9ekAJTpxl8RSgg4s
         LgQXIsS3lrA9o8ZPeH3tUnUhEQsAzffr17shnMoqjanBn/JvbQXYnwcUd4YG1asXPRvF
         llR0RMRoBBF7NOyC4n2sIDYTHc7K68eWxWIEbw3gfEFyVdmt5Il4lC1NR+eVw7L6nT+4
         3J4JRBOFQYXqH8BSqxdEgtJLbwLMyBEH3zPJqG7lD7rj94uzZ6726n7G/8dtS17zz4ay
         aCXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JdHrhKspYiFBBmpI2fp6bOOS3OdIPy3k5H6HiB3d2EQ=;
        b=ZHOdlUnN4SXdKND7R2/+otTMgsaJx+Vl8Kd8P0SldXDuQPbJSbe7jV4XxIsXnM2dWX
         FuNMr1H6o24l1hEXWEiNOW+09VF/Z72tSLaVTia9PKLbHoyzUww022KosDbOFxaJITAB
         OeFUZf5imk9msJZTqldAKVs//P3jhqICr4KVdAmCGb4OIjX1Bf1VvUonXSxlADpac9ir
         hgU+zRQX+6jElFI77s1rv7dZUazvLZlXq2FOoVyQKC/yhF1NmiuDrhGsLmMccFyA+tio
         KfV8YkebtRmQsKg4t6B+QbSekq6h15waHEUNCXAdSkG19/fy3DQ5CBchT8IxNd9t1OUl
         m57A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cj4P6clzoaHHDyEBCZrNERTEZgoOpUg+tMx3ySARBTShXS8cY
	h3Wzkec+UuRHMhBO/5CzbdI=
X-Google-Smtp-Source: ABdhPJzP+EaVNoRdJncuntu/VohafKC0WjDGPNdLYL2UxOXG5/1Ph8mbM1Z++g6HS4Qn1AfRW5LXSg==
X-Received: by 2002:a5d:4c92:: with SMTP id z18mr7634070wrs.228.1628200187469;
        Thu, 05 Aug 2021 14:49:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:510a:: with SMTP id s10ls1653032wrt.3.gmail; Thu, 05 Aug
 2021 14:49:46 -0700 (PDT)
X-Received: by 2002:a05:6000:12c3:: with SMTP id l3mr7253816wrx.314.1628200186332;
        Thu, 05 Aug 2021 14:49:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628200186; cv=none;
        d=google.com; s=arc-20160816;
        b=mRhDxfEW7h6G7kBdkbgrix+YtVBCPp9lNJMU42bhExB5K1PaK8tIXPU8X37wb4WAWE
         goweTckCw67r8X3hzCUhRXcvEjoYRahu/65GTBtnBlPhbeF5W5E8Q8hcz66PfJCyYUd8
         ARyb/vOHjazGEiKvybOQ33YnqqBvBzdCw1UdYEIN9wNWMB/x01eGe8xuv1mnwjq4Qn4T
         ZNZkFkcQziyMkKbFEqNpRFVHhi/cDMtvOvMC6ROHmHkwrvYTsyumyHCZDF9Uen9eNGmb
         tIS0gbogK1gUrBLjyRHcUmwqvqMtEkw3XDSA3ID7P5dbdYTBTcqmwH4/MD2QnY6rIKU0
         f8VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=a4vAYZN12jXuxE4AG3Yv7D5Z+TPfpOMAcdil9c80T/g=;
        b=XhNyAgk6o1BUmBKky5xhOYgvpaehmH4ns6zx9Hjp9GSIqbj4suzmeeqxbmz6yZKaa8
         W8Bs8PHxh5OKu8NF1idUwDQbNNGPCKqBfbcD61uI1wW7apQ65aawJrDO27QPyycjNLQQ
         hd1oKf3V91lM5Y2Wxwj8QmQl/G+uV0ikxABrWM0mGK3kpohkiY9F2Fzn60V5+lEPNjfu
         cG6C6Gx2I2q3iCemuwpGFH5xkthZw30M4X5Kr8yB6NgYb4nPrQUy3paaiU47DNq8EJZ5
         LUglu3zoRT94pCGk8iVYQdCW6GVL/qqUhWepuDp/9C6NVy2ro4M8bC7hyIJ+97EL8z+3
         9dSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=ZF468vcG;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.184.18 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway36.websitewelcome.com (gateway36.websitewelcome.com. [192.185.184.18])
        by gmr-mx.google.com with ESMTPS id x5si366242wrl.1.2021.08.05.14.49.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 14:49:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.184.18 as permitted sender) client-ip=192.185.184.18;
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
	by gateway36.websitewelcome.com (Postfix) with ESMTP id 3A0474024C0C4
	for <clang-built-linux@googlegroups.com>; Thu,  5 Aug 2021 16:49:44 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id BlFImJXHcMGeEBlFImQerJ; Thu, 05 Aug 2021 16:49:44 -0500
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:47584 helo=[192.168.15.8])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <gustavo@embeddedor.com>)
	id 1mBlFH-001QJz-Rl; Thu, 05 Aug 2021 16:49:43 -0500
Subject: Re: [gustavoars-linux:for-next/clang-fallthrough 1/1] warning:
 fallthrough annotation in unreachable code/
To: Nathan Chancellor <nathan@kernel.org>, kernel test robot <lkp@intel.com>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 LKML <linux-kernel@vger.kernel.org>
References: <202108051403.tBfqfI49-lkp@intel.com>
 <YQw2P8esj8PMNRQn@Ryzen-9-3900X.localdomain>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <19cb5505-9f81-3fc2-394e-365a5b230cba@embeddedor.com>
Date: Thu, 5 Aug 2021 16:52:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YQw2P8esj8PMNRQn@Ryzen-9-3900X.localdomain>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1mBlFH-001QJz-Rl
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8]) [187.162.31.110]:47584
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 4
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=ZF468vcG;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.184.18 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
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



On 8/5/21 14:04, Nathan Chancellor wrote:
> On Thu, Aug 05, 2021 at 02:21:34PM +0800, kernel test robot wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git for-next/clang-fallthrough
>> head:   58d0d2d2e7dc1b1a4997bb9c47d6cf428f2d3a00
>> commit: 58d0d2d2e7dc1b1a4997bb9c47d6cf428f2d3a00 [1/1] Revert "Revert "Makefile: Enable -Wimplicit-fallthrough for Clang""
>> config: hexagon-randconfig-r023-20210804 (attached as .config)
>> compiler: clang version 12.0.0
>> reproduce (this is a W=1 build):
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git/commit/?id=58d0d2d2e7dc1b1a4997bb9c47d6cf428f2d3a00
>>         git remote add gustavoars-linux https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git
>>         git fetch --no-tags gustavoars-linux for-next/clang-fallthrough
>>         git checkout 58d0d2d2e7dc1b1a4997bb9c47d6cf428f2d3a00
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=hexagon 
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>>> warning: fallthrough annotation in unreachable code [-Wimplicit-fallthrough]
>>>> warning: fallthrough annotation in unreachable code [-Wimplicit-fallthrough]
>>    2 warnings generated.
> 
> With a newer version of clang that shows proper line numbers:

Yep; I've been using mainline since you told us about commit
	
	1b4800c26259 ("[clang][parser] Set source ranges for GNU-style attributes")

:)

> Which is already being tracked: https://github.com/ClangBuiltLinux/linux/issues/1429

Hopefully, this will be solved soon: https://bugs.llvm.org/show_bug.cgi?id=51094 (fingers crossed).

Thanks
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/19cb5505-9f81-3fc2-394e-365a5b230cba%40embeddedor.com.
