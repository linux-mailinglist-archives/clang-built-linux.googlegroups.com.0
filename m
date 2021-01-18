Return-Path: <clang-built-linux+bncBAABBDM5SWAAMGQEVWEQ7PQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAEE2F9BA6
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 10:02:05 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id d2sf458411wmc.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 01:02:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610960525; cv=pass;
        d=google.com; s=arc-20160816;
        b=h+doStX928yoQlOkkbQ5q7cFVHOKl+2L6SXl0mwX8BlPAHUhbcZNKyjIGXq0vR4dMi
         u2jkCCeaw0jHnHHt/GCIy/PcWfakd3O00fdoK1Oejmemq1/6Ou0NRGbnGBS7V2o/BaXR
         q4qGxSPMIMoMgt2U4mT3g4zbwt+m0ruLdN+jWdttrf5UvFuYRZQ6RT8QdFqEL9FWzBEg
         qrkJIDCPB/x5tNS4Ngc+IfXo2mUiO9X5Z1nc88jqAp/Fw+bNMoA1Eo5aVGeeSPlyCe3P
         oHhitQ9qE+Thvpge4x01VPysLzFxLAkaIZaV7+UIrwC6BvAZcTm5Gq2fEUIM02ynDpDP
         sFYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=/If9aZTHCePCrTWCUBggM53H1kTeikh9gF/kRcBQmzw=;
        b=kZkv7ejGZSc6yhQlJ1iVk5OxXEGxlVTHFiwHzddC9I2np1eMd3RvJb4TV7vofBQY9r
         kWTIzfdeVKQnbwLJhfkOI2FdZdbnvh1yVjLYnHRy4eFFC302XEkYP3xzDaMp6Pn6FnLy
         Bzu//hXAh57JX7D149h5YzxxeU1AW9tUwGK4AsQtpZVs5UYZOvAUvONCeMn+TFjlyLJE
         1tU+P/AOURaUBDVzolm2sU3oQZ/au+zd6WnEYgduLLzHCWKUhns6SU0q07a8OazETR08
         Lz2xGhFCsoRsXkJCiTeLOclpsLWTKjf6xzQxlad06spvzOmrnLC4dzUpg1KTGVCTuMw2
         vT8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of roberto.sassu@huawei.com designates 185.176.79.56 as permitted sender) smtp.mailfrom=roberto.sassu@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/If9aZTHCePCrTWCUBggM53H1kTeikh9gF/kRcBQmzw=;
        b=iuWP9BwF9xQh5UVgXjdyQKD0c43Vi9mMuO76Nk03AkfufqgwFNPOP9GYxV2phK87Og
         FL+8sA5kQGlt9H3AGYVt5T8ADFbhZZnLnl0KtGMY28hzycXffqwgFhAdGsN8/nP9wVv7
         gAhJJq+G2gCIvClBKQDCz8QqsSnMrrkT68NUYEQE2RzLOA86zWPWfADkoe/Ay9fSR7P6
         cOPpv9hKrxIwB/OpolgcgSUdpL75aw9TVNP3hN4Bnpo3CAVgMRfMbVt/GQ0fka5v0tva
         K/84aHarH2WABTc/hlpJMcbGTSxZPbNyb0XWyC0hI3xfCY+KNWvrSloHLVz7fsONiT4s
         uPbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/If9aZTHCePCrTWCUBggM53H1kTeikh9gF/kRcBQmzw=;
        b=i8v/W6lhq0oVEzz27hpyJ5tgZiqU+LPYS3cOD8auGqtur7Ezk/bOZvZv9hMO4ZYunR
         hxN5gHnuOwiDwE9FiXAgypfJIXI6KrcRFCAPmSTFhO4x6Nv6ncI5B6RzlL25zM9wmXHr
         9ZtuuraN6q5hyxUFU0TpuDIn0h028D3iM+c0KcN39QiCKKVKWkUBCmSgBzdd3tDqjviM
         hMqR57lYxDJWzUSqcc1RbTpaIKxOMtkCA75EuikTm40oUk//ot9WH/8IFJAowuoNM/Du
         pA00ChR2lwBlyRchTMmTRLjtMsc2ZTgXaMyxqBbGZqvSBmuDssBp/RycENVoPP01usY/
         9bxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531d08zEr9Lp6mMjLP6R4doi4XEML5TZGUzP0Al/qIYCT46cDtjt
	BeJeFDiMDqqhl4I+7QXrMhQ=
X-Google-Smtp-Source: ABdhPJwOGwlVNQflWJMt4Dez6urOzio2mSD53eyVPwWlQf5+G9sV0pBZeR4ud4YNgcTQNv4CQ1F6+w==
X-Received: by 2002:adf:a551:: with SMTP id j17mr24368023wrb.217.1610960525238;
        Mon, 18 Jan 2021 01:02:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6812:: with SMTP id w18ls7709420wru.1.gmail; Mon, 18 Jan
 2021 01:02:04 -0800 (PST)
X-Received: by 2002:adf:d238:: with SMTP id k24mr24513582wrh.414.1610960524499;
        Mon, 18 Jan 2021 01:02:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610960524; cv=none;
        d=google.com; s=arc-20160816;
        b=dPfMBx6LzxtV/HAs8D/H/wQOFzKstq8MgJSlihZQmJz/WiLjwUjI+SxVUYUTx4MWGo
         BrgUVpAtq8E8ULel4YhdfzRJTg/OTypubOi9ZmcMhX50U2QJLyoPbWdYtDAurMQbCTho
         PwbuVx5V9ZjfPRKAMUddtjtbX/P9ro6uS1whKw193Hk4P+bbJP4Lv+MdAfU+Or7HvaNw
         3CJQWczlFIrRnHkwjhp2RAx+EfNBNuNpcF8htPRgpkZCQ0xyijzLHyWu/33HjAMdrnq/
         H0Lkbn+p9LN7McX5OzM6hCN43O84l3AybYOfk2OH4VhCI0hRbHH6vEvh2JQcjZ6AUCy0
         cmDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=qm5tE2vyoAizxQEOBCK1308uADqP+VJYjYachkrhVyY=;
        b=S/GNB17PeWSP5Ry6zpR92cKLIqSI7kqxMVYfGUIInIx6R2/4SPsO2I78D1Wx2ESiki
         +99yCzEeXaLSm5+hNzpFTLWSkdcIIXhBEYePbE/03tzH3VZDD1i+rimssP9TwcrPzGwF
         sgEkPvaE3T5JUxcHM9EHZt+mme4oJph0rHBHJO7v1zPa4v+ZWDVzNJO8thBRBxYB/jik
         p2Zhopnt2BSE3hJwN/Ebip9JGCPF85bWKo3oxgiHSlUtXYfmnLYoAnZrkME/r8B4+mOP
         gfG/Tlj63D0DIlzuXLZc9qTskxeB4wG1tltXaFMNZdy3cm+G7z0LJVhFRWdMycFMUHKX
         fBug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of roberto.sassu@huawei.com designates 185.176.79.56 as permitted sender) smtp.mailfrom=roberto.sassu@huawei.com
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com. [185.176.79.56])
        by gmr-mx.google.com with ESMTPS id b1si896309wrv.5.2021.01.18.01.02.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jan 2021 01:02:04 -0800 (PST)
Received-SPF: pass (google.com: domain of roberto.sassu@huawei.com designates 185.176.79.56 as permitted sender) client-ip=185.176.79.56;
Received: from fraeml705-chm.china.huawei.com (unknown [172.18.147.201])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4DK5LN6w6tz67dL0;
	Mon, 18 Jan 2021 16:58:52 +0800 (CST)
Received: from fraeml714-chm.china.huawei.com (10.206.15.33) by
 fraeml705-chm.china.huawei.com (10.206.15.54) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2106.2; Mon, 18 Jan 2021 10:01:58 +0100
Received: from fraeml714-chm.china.huawei.com ([10.206.15.33]) by
 fraeml714-chm.china.huawei.com ([10.206.15.33]) with mapi id 15.01.2106.006;
 Mon, 18 Jan 2021 10:01:58 +0100
From: Roberto Sassu <roberto.sassu@huawei.com>
To: kernel test robot <lkp@intel.com>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mimi Zohar
	<zohar@linux.ibm.com>, Sasha Levin <alexander.levin@microsoft.com>, "Silviu
 Vlasceanu" <Silviu.Vlasceanu@huawei.com>
Subject: RE: [linux-stable-rc:linux-4.19.y 9753/9999] WARNING:
 vmlinux.o(.text+0x2f872e): Section mismatch in reference from the function
 ima_calc_boot_aggregate_tfm() to the function .init.text:ima_pcrread()
Thread-Topic: [linux-stable-rc:linux-4.19.y 9753/9999] WARNING:
 vmlinux.o(.text+0x2f872e): Section mismatch in reference from the function
 ima_calc_boot_aggregate_tfm() to the function .init.text:ima_pcrread()
Thread-Index: AQHW7HOXhva6i7FbOkS0lhk9fgIPTaotFzWQ
Date: Mon, 18 Jan 2021 09:01:58 +0000
Message-ID: <a4867445057a4b8997c4470899dc310b@huawei.com>
References: <202101170926.7gVGRoMm-lkp@intel.com>
In-Reply-To: <202101170926.7gVGRoMm-lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.48.213.55]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Original-Sender: roberto.sassu@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of roberto.sassu@huawei.com designates 185.176.79.56 as
 permitted sender) smtp.mailfrom=roberto.sassu@huawei.com
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

> From: kernel test robot [mailto:lkp@intel.com]
> Sent: Sunday, January 17, 2021 2:53 AM
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-
> rc.git linux-4.19.y
> head:   e864f43593ccf9180c61738abdf1c1dde091367d
> commit: fcb067cb457e2326c6d759e346f5f5dfef351d50 [9753/9999] ima: Call
> ima_calc_boot_aggregate() in ima_eventdigest_init()
> config: x86_64-randconfig-a015-20210117 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project
> bfd75bdf3fd62d4f5e7028d4122f9ffa517f2a09)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-
> tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-
> rc.git/commit/?id=fcb067cb457e2326c6d759e346f5f5dfef351d50
>         git remote add linux-stable-rc
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
>         git fetch --no-tags linux-stable-rc linux-4.19.y
>         git checkout fcb067cb457e2326c6d759e346f5f5dfef351d50
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> ARCH=x86_64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

Please include commit 8b8c704d913b.

Thanks

Roberto

HUAWEI TECHNOLOGIES Duesseldorf GmbH, HRB 56063
Managing Director: Li Peng, Li Jian, Shi Yanli

> All warnings (new ones prefixed by >>):
> 
> >> WARNING: vmlinux.o(.text+0x2f872e): Section mismatch in reference
> from the function ima_calc_boot_aggregate_tfm() to the
> function .init.text:ima_pcrread()
>    The function ima_calc_boot_aggregate_tfm() references
>    the function __init ima_pcrread().
>    This is often because ima_calc_boot_aggregate_tfm lacks a __init
>    annotation or the annotation of ima_pcrread is wrong.
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a4867445057a4b8997c4470899dc310b%40huawei.com.
