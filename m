Return-Path: <clang-built-linux+bncBDJI5MPT4AIBBWFGVGEAMGQEU6JXZAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 2415B3DFD32
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 10:44:09 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id n6-20020a5d67c60000b0290153b1422916sf542737wrw.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Aug 2021 01:44:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628066649; cv=pass;
        d=google.com; s=arc-20160816;
        b=aHrWb990jZNsv9VX6H/IBabEx5WIPVxF/h7gHkHJc6mPgqXFcSp7gqthT72COliCcG
         wNeVRXODXcPwT4yXi8p6wt+6D+LdIi6cqW0rjrOmGRh5S9nEu9ZoltocOSk2nRpDCB9r
         o8uff+1ypiDDggKqegUyGpkGyxjCukdZbixGTXrP8GyuM1yobbgSfF7SiltPzRMT4x7R
         iFwEc+RG2ioV/Pp3U0isx5Q236RPX6VHv14KcOqRP3B7aRxsui5Zm5D9uXJs/oUXapEy
         /Z5iIAGZe/89Ghg/wqG0krFvvrZi3Dkl13VT0lq4Uwcq0Gxe6/i9JbhxJ6IRPeBOIth3
         lz/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=7TQR9vkN+nosfPPdVRKzykhBVbD7Ee0D+Wc1gpNdFXU=;
        b=dDXx6aLAZc7o23Xh7KGjAdBSzK9V+jU/zPxHZM7B4wjj7VBIsQ7o7pnXVgRqlnAQTk
         ovFm/xHHZYI7LIXyPJqCcwfhc/vxiGacwy759xDOkxB3qqlDCaUtTCUVGKLTytbfJYEO
         8PXcQjjjmQh0GZ2b2+rdB0+H/RiS65csV2m/ZasS8OnlYR63S4uT+hhDyNjH/JruuyGq
         OfQ8IIQzyCC0KWg/YM8zdTeYMoQ0UERZHeAopa0qbNYfHRU0SJEsogHDBmaOB27vREw0
         j8FxzxGIDCfWxdZXi09UZAiM2nKOLgZPqm4Nd2Dnh/tUKCY1peaQWzgxaeB2Ad1rvnDu
         FeUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@netfilter.org designates 217.70.188.207 as permitted sender) smtp.mailfrom=pablo@netfilter.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7TQR9vkN+nosfPPdVRKzykhBVbD7Ee0D+Wc1gpNdFXU=;
        b=IxwhyK7ChsepGn5mL9lbvUSq69OCA8WB7umL+Hj1tQZLP5Y1LYoY7ysD/Cl5GAjDqx
         KuNa9Bv8fZqEHyPBRgpwLezVSz4py5MQf+4l6ebBAADDew7xWq2zEDW/6z0h86Ov97Hg
         O3k62gJ/Hq9eRBz/yTILkTSaGDcRNkuWwVJK3To3b/+cPx869KXQ0MKb9mwHwrOiZTg9
         ucZJoHjHXekPHz2o7LIgQPDbcV+CrRx0gzwX9V/V6o5XImp+aCRQJ9I2SiDojSffRdrm
         VkJXw3FDhOeLnvauRvFII5C7nRAAh0uYjrnbZDBjCcpozYPH5X7SPgb4h+nNvvYiLgUr
         15/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7TQR9vkN+nosfPPdVRKzykhBVbD7Ee0D+Wc1gpNdFXU=;
        b=iH03YxdFwRxIbosUsVSp3BsBp78Jgzh09JW5NDmOyD8zbEmgyA6MEWIP5fmup7VKAA
         oUf5dhwxf6tKr+N4oBKhG6SXe2szccVGr8fKia6s4Aw1lIhi8yr0NZOyKMMNZeoMbmrE
         VwNhVJCqQNXTdGJ3a8ABzJ5kzP/Fdm2JGHKpqI7UHgPwagqNw+F/37HFsB9BgHScAjip
         44q4ng6tvZwC98ML727PnPrOutrLEsd1UcxFSkxzBjZgR32zHHgIaDRSxOOGZ6Oz5pYu
         kiY14Yr+3r5tXPdiSFeTAiNj31jzWoBnoMVOJTLzzJxYawZo7eOFEiYp8X0A/uUinnM3
         8Jkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337nUAxMZBcefHsPvoGuJahxBA1qpPKL+azgwiqdSXrhCxp9sCI
	DIYTkGz0+3ICVv9yTQZW0pc=
X-Google-Smtp-Source: ABdhPJyCdWlUD4sU7IY2Z2UCWRJ6jc+wm7kK87xnsdhqehvWoWgbHEB97nxBeDSMafyHZkA8Bbmgtg==
X-Received: by 2002:a5d:4a44:: with SMTP id v4mr26990572wrs.219.1628066648836;
        Wed, 04 Aug 2021 01:44:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c4c3:: with SMTP id g3ls761614wmk.0.gmail; Wed, 04 Aug
 2021 01:44:07 -0700 (PDT)
X-Received: by 2002:a1c:ed13:: with SMTP id l19mr8665627wmh.48.1628066647824;
        Wed, 04 Aug 2021 01:44:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628066647; cv=none;
        d=google.com; s=arc-20160816;
        b=xoj1gvQD544A3cD+SImQWP5LZ+kQbZuwq3gXMBgr6n4JZ7Pv5iVI3ZyNAa8R/33WWp
         gXJMBlskyraupQ0SJO85M6dThT8ZsCdopFT+WXLAzf8lVBcWzgPoKUuJsiXTda8x+B3N
         3aP9+F7O1GQAfEhNtPWkMKE9j6m7gr3S67KbBwh83liFLRQe+gB7qrxZV2pNjGn1o41P
         kuDDT6geB8nygPMsVdtGe6/feyLmf4iWnHtSqxoRzARPj25rhZLmTxxUJD4eoPmuD5LD
         3K/X1L2sqFgrTt+I7Q8yCv05VejOAwjs32HfQvwqcw8eO0KFEkPHmXp/TpuONnhwwSTt
         YzQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=yOwyXSmuLim7zfXkTxHvVfFu2Hh1/E3cXGVtNedDq3s=;
        b=XeRfSnQZAteQG3Q8xtrGOeYtKWbp9usLbaExsKISkvreLg6rzlK+5rZMcCAeWssuu6
         Nu9gsYKX81MwvSZLMPhMQ0MvImPZU3XjmfgYTZrPeC9nCkdkcIMFPQp8TguqY4iJD7E8
         bKmVe7FmYiwVdeb+nBn/cS3Me3oI/PQs1PyOLarIiW5fIBmbmq0exxkfLKbQmDiUHOX4
         CDywxjBOAVO9WMV6rjlfhH+2Ot101E5YVHt54XtIr1GgBu+FnLc+IskwnaXFMK2ci+uT
         NPJPEecfYzqDJ1o1M0L/XHfdL3L60UyqzLArZMEK7YmMGgnFRNIMtpKbZMuVW3w5ITFZ
         urNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@netfilter.org designates 217.70.188.207 as permitted sender) smtp.mailfrom=pablo@netfilter.org
Received: from mail.netfilter.org (mail.netfilter.org. [217.70.188.207])
        by gmr-mx.google.com with ESMTP id c26si278119wml.0.2021.08.04.01.44.07
        for <clang-built-linux@googlegroups.com>;
        Wed, 04 Aug 2021 01:44:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of pablo@netfilter.org designates 217.70.188.207 as permitted sender) client-ip=217.70.188.207;
Received: from netfilter.org (bl11-146-165.dsl.telepac.pt [85.244.146.165])
	by mail.netfilter.org (Postfix) with ESMTPSA id 8E16D60043;
	Wed,  4 Aug 2021 10:43:29 +0200 (CEST)
Date: Wed, 4 Aug 2021 10:43:55 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Jozsef Kadlecsik <kadlec@netfilter.org>,
	Florian Westphal <fw@strlen.de>, netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] netfilter: ipset: Fix maximal range check in
 hash_ipportnet4_uadt()
Message-ID: <20210804084355.GA1483@salvia>
References: <20210803191813.282980-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210803191813.282980-1-nathan@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: pablo@netfilter.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of pablo@netfilter.org designates 217.70.188.207 as
 permitted sender) smtp.mailfrom=pablo@netfilter.org
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

On Tue, Aug 03, 2021 at 12:18:13PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> net/netfilter/ipset/ip_set_hash_ipportnet.c:249:29: warning: variable
> 'port_to' is uninitialized when used here [-Wuninitialized]
>         if (((u64)ip_to - ip + 1)*(port_to - port + 1) > IPSET_MAX_RANGE)
>                                    ^~~~~~~
> net/netfilter/ipset/ip_set_hash_ipportnet.c:167:45: note: initialize the
> variable 'port_to' to silence this warning
>         u32 ip = 0, ip_to = 0, p = 0, port, port_to;
>                                                    ^
>                                                     = 0
> net/netfilter/ipset/ip_set_hash_ipportnet.c:249:39: warning: variable
> 'port' is uninitialized when used here [-Wuninitialized]
>         if (((u64)ip_to - ip + 1)*(port_to - port + 1) > IPSET_MAX_RANGE)
>                                              ^~~~
> net/netfilter/ipset/ip_set_hash_ipportnet.c:167:36: note: initialize the
> variable 'port' to silence this warning
>         u32 ip = 0, ip_to = 0, p = 0, port, port_to;
>                                           ^
>                                            = 0
> 2 warnings generated.
> 
> The range check was added before port and port_to are initialized.
> Shuffle the check after the initialization so that the check works
> properly.

For the record: I have squashed this fix into the original patch in
nf.git to make it easier to pass it on to -stable.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210804084355.GA1483%40salvia.
