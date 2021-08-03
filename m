Return-Path: <clang-built-linux+bncBDWPPHX24QLBBYVSU2EAMGQEXEYVMGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 369503DF5B3
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 21:30:44 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id z17-20020a2e8e910000b029015d8fce4f1bsf4453153ljk.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 12:30:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628019043; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZxFmHqyw5gxsEuAQ1ooIBeMKMHiZ7TCKLL7nuj4FGCvnNT1xB59mhLJKyzQL1FgEV9
         ybnqzGN7q7kRrVG0wC7BjWInEJEdZDpVMoaiB1oDuwCzhVtkARkkzxYoa9cujLBZ2p0V
         TU/SZ0P3zFaRmMj1ltSitmasff6BIAkpo9DH96QZtoWaahEl4ndJ0VexK5MJJwZtoFwm
         9rLFhANUu3+8t1jy3apQG31kx/FiwbhDtIRA+x23l6mTUpp/ajRj8tUqlpU5W608tmVT
         qO4JdplA02WJ6wSlXbSvIw6G2kjyav3beQNcq9Le4I8/ycrODenXEQrDDoWOEnHKvy5V
         NrEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=xIi16Y0g5WCEIiD+GUjGJ8SDfe/e9BimYsyiOEgIoEY=;
        b=WN7TwUxZ/q5w+V33KpfbIUQ14lQbRe0Ah0Jhs+mM/GrUzINEaLuzkVrNj5zuM6o0zX
         /AyradaSIj3L403lmglIZrfOMGzUZ4ogxdNqVkxiFqAtWuxXsID8PC4FnS5h+DBcWTuw
         oK34Ik4Zv5wspMPvrcQaZpvk6E5UDhC/2Cl3iw7kPB6N1h7wLItLaPl339m86e/ivla1
         1SRqc7oNrRt3dNpisW5UWFs4OOyqSy1BTrtHY460RIeo36M+RNl2QZjkJf9rEYITiryp
         vIvf9lGsaEE0sajtpywchMEHWZulSJhjXjQuhijhvVRBUV05VhuDTa0oZFxGBGC9/tzR
         svUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of kadlec@netfilter.org designates 148.6.0.48 as permitted sender) smtp.mailfrom=kadlec@netfilter.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xIi16Y0g5WCEIiD+GUjGJ8SDfe/e9BimYsyiOEgIoEY=;
        b=fKcxnT322FmHqeoo2P5fOOkatZKns/V3Znf+K4HzufZaiYNSbI3RHXWbLC+5t/5UtT
         2JETViAyDHh71LSM6zlzbTS1ypD6ui7ZAJWfWTTqwS0Hizn7w2dkkzZ719S0vM+NLGOe
         WCShVYwbidqtMsJs0H6ecOpRndA777eTFzw08ZHZpZQnryQP+FV+UhWkHb/im6mZdgCz
         Ss6Y4m/ygDnDYzUd2hNyodwGRJV7a3X0ffkPKrDleGQELWCGLg2ZwSoRRz1cZp8k+g2q
         fa29raJ17VfpaeZ9izpniMo8LVwKYo7fC89QMJHXSQPX7tKbMjDlGWCgVHJGbtfcG//8
         LSYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xIi16Y0g5WCEIiD+GUjGJ8SDfe/e9BimYsyiOEgIoEY=;
        b=hRK9m/eLwTJCOPtaLSMbU/Ch5l3kUPEQ2PAZetZozvMz7lGIkt61Jie3QdXlQ5JdlY
         vMQuHxrTsH/Ykg+9ukJycO8xP8kbouTBEoqw/3MhwXDko1Cr4WWcEFjej802r+Qn071I
         nt9HUrURJLt5muzj4u8ConKXmgSMgqbiqk8AbwKKRHmdlBt9k7UwRXCJDcox3L8hoBnQ
         WaTpcyOePPdrs4+pxCidRg87nyJ4Bl1M0/KVReMCrc2xnvhG2B3rn4MRmYQVo0PqKcrt
         x7qEQ+g6myOJVvdAK7y/Ot2kcIJbJjBz5dSCQ29CdKzAVxWos7SHHNKsrROe6rYqt9AE
         eKsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530e0eKuZz9OOeaCPrhwexx3RpursrPQq2YwXyFwsxuBqDieT4X8
	2alNpKM3Be4LoSHy5t54gqk=
X-Google-Smtp-Source: ABdhPJzUTxg4YYzTDC8DGL/Ptew8MCW8Fl5Grqw6GUTXEdjl7pVzmL1z4yZFoNgXz46Op2o7C3MPEg==
X-Received: by 2002:ac2:50c5:: with SMTP id h5mr16931094lfm.642.1628019042735;
        Tue, 03 Aug 2021 12:30:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:160f:: with SMTP id f15ls2342341ljq.3.gmail; Tue,
 03 Aug 2021 12:30:41 -0700 (PDT)
X-Received: by 2002:a05:651c:4cb:: with SMTP id e11mr15274500lji.79.1628019041648;
        Tue, 03 Aug 2021 12:30:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628019041; cv=none;
        d=google.com; s=arc-20160816;
        b=IeInyZwMZT1f3AYXuPU0Vq+VNthdwwIlv/WvYNtjj1Zh6jUaUMaQPQsTetcAJZvbkP
         b7xjr9pWorahe7jN/5d/Uk0KUGrmvKcdCHNCsOJqR+NV2o+ZfZJnTDceiySMbKhYbwJ1
         99X4fz9ousmaP0HglLuOf87ngCEz1W0h+BkUr5OJVEzYy8T4RJU5feYRJi7/oK6dmeDd
         PF41IfjrdITgqf05DhVZKT11qC4tGTV/JGxnpeocl3YYja9wntHoJoWe0mHT4gJclioI
         Bl9ym0M8Agf90bkNPBwvYYVJ4dTFsLiTpA/nvpaVG0X+QVCTe/85vkBvhvoodCtSLY6k
         548Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date;
        bh=ZHThKTdP9i2PjaJRcdsiu/5K+FphL3LGV0w2PIpMMc8=;
        b=ihA0bITXR61JZ9MX3e1ZncDytI8M3LQ9cOAUhEoXC6xOMZvFfJdYED0zfMJnzGOLcj
         KJXOtIVZcVbXUuvy8W3yl6S9lmeV2gDdn7MQnaz50Gu8AFlOcHDGfyElzyHywlUfKAe0
         fT/RapNrKFixKyAaboKX39Td0fsZIE9ABcNbAc2JmahebUdMYcy7szHRiCzw/9yclOWT
         qNi/0YZLBKt+DJON5hsSzq/QDE/9rCEZeDbHa0mYR626iC4PpnJ0gk7IcI4gqNmQ+Guc
         5q7bgGaHlNTDwoFDckQGbfMWm/289v3MIpwmIMWQyVbbNOv4KCM/DgAwq7RdNGtayst6
         D41w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of kadlec@netfilter.org designates 148.6.0.48 as permitted sender) smtp.mailfrom=kadlec@netfilter.org
Received: from smtp-out.kfki.hu (smtp-out.kfki.hu. [148.6.0.48])
        by gmr-mx.google.com with ESMTPS id h20si705630lfv.7.2021.08.03.12.30.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 12:30:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of kadlec@netfilter.org designates 148.6.0.48 as permitted sender) client-ip=148.6.0.48;
Received: from localhost (localhost [127.0.0.1])
	by smtp2.kfki.hu (Postfix) with ESMTP id 613E7CC0101;
	Tue,  3 Aug 2021 21:30:39 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at smtp2.kfki.hu
Received: from smtp2.kfki.hu ([127.0.0.1])
	by localhost (smtp2.kfki.hu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP; Tue,  3 Aug 2021 21:30:37 +0200 (CEST)
Received: from blackhole.kfki.hu (blackhole.szhk.kfki.hu [148.6.240.2])
	by smtp2.kfki.hu (Postfix) with ESMTP id E13B9CC00FC;
	Tue,  3 Aug 2021 21:30:36 +0200 (CEST)
Received: by blackhole.kfki.hu (Postfix, from userid 1000)
	id D08AB340D60; Tue,  3 Aug 2021 21:30:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by blackhole.kfki.hu (Postfix) with ESMTP id CBB7B340D5D;
	Tue,  3 Aug 2021 21:30:36 +0200 (CEST)
Date: Tue, 3 Aug 2021 21:30:36 +0200 (CEST)
From: Jozsef Kadlecsik <kadlec@netfilter.org>
To: Nathan Chancellor <nathan@kernel.org>
cc: Pablo Neira Ayuso <pablo@netfilter.org>, Florian Westphal <fw@strlen.de>, 
    netfilter-devel@vger.kernel.org, coreteam@netfilter.org, 
    netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
    clang-built-linux@googlegroups.com, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] netfilter: ipset: Fix maximal range check in
 hash_ipportnet4_uadt()
In-Reply-To: <20210803191813.282980-1-nathan@kernel.org>
Message-ID: <df715f3-9a2a-5a88-5ab4-1f176ede79ed@netfilter.org>
References: <20210803191813.282980-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kadlec@netfilter.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of kadlec@netfilter.org designates 148.6.0.48 as
 permitted sender) smtp.mailfrom=kadlec@netfilter.org
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

Hi,

On Tue, 3 Aug 2021, Nathan Chancellor wrote:

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
> 
> Fixes: 7fb6c63025ff ("netfilter: ipset: Limit the maximal range of consecutive elements to add/delete")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Yes, good catch!

Acked-by: Jozsef Kadlecsik <kadlec@netfilter.org>

Best regards,
Jozsef
> ---
>  net/netfilter/ipset/ip_set_hash_ipportnet.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/net/netfilter/ipset/ip_set_hash_ipportnet.c b/net/netfilter/ipset/ip_set_hash_ipportnet.c
> index b293aa1ff258..7df94f437f60 100644
> --- a/net/netfilter/ipset/ip_set_hash_ipportnet.c
> +++ b/net/netfilter/ipset/ip_set_hash_ipportnet.c
> @@ -246,9 +246,6 @@ hash_ipportnet4_uadt(struct ip_set *set, struct nlattr *tb[],
>  		ip_set_mask_from_to(ip, ip_to, cidr);
>  	}
>  
> -	if (((u64)ip_to - ip + 1)*(port_to - port + 1) > IPSET_MAX_RANGE)
> -		return -ERANGE;
> -
>  	port_to = port = ntohs(e.port);
>  	if (tb[IPSET_ATTR_PORT_TO]) {
>  		port_to = ip_set_get_h16(tb[IPSET_ATTR_PORT_TO]);
> @@ -256,6 +253,9 @@ hash_ipportnet4_uadt(struct ip_set *set, struct nlattr *tb[],
>  			swap(port, port_to);
>  	}
>  
> +	if (((u64)ip_to - ip + 1)*(port_to - port + 1) > IPSET_MAX_RANGE)
> +		return -ERANGE;
> +
>  	ip2_to = ip2_from;
>  	if (tb[IPSET_ATTR_IP2_TO]) {
>  		ret = ip_set_get_hostipaddr4(tb[IPSET_ATTR_IP2_TO], &ip2_to);
> 
> base-commit: 4d3fc8ead710a06c98d36f382777c6a843a83b7c
> -- 
> 2.33.0.rc0
> 
> 

-
E-mail  : kadlec@blackhole.kfki.hu, kadlecsik.jozsef@wigner.hu
PGP key : https://wigner.hu/~kadlec/pgp_public_key.txt
Address : Wigner Research Centre for Physics
          H-1525 Budapest 114, POB. 49, Hungary

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/df715f3-9a2a-5a88-5ab4-1f176ede79ed%40netfilter.org.
