Return-Path: <clang-built-linux+bncBCFOP6V7UIIRBW7O62BAMGQESQMEMPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 624EF34A584
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 11:28:44 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id a22sf4560689ljq.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 03:28:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616754523; cv=pass;
        d=google.com; s=arc-20160816;
        b=PBQbsrnaT1+nkSBZwYLwjY+GmpKOhCmr4M+vzSaf6xN3ZpR9PF7nC2Whllyqe3sMH5
         Db7L7feiPhjXNKeC9GXc2m//dQBKl5fQCX5t6uZH5ydVmFSi8Os630gQen+/tzX2EO0p
         DrmN8tjXtj3jsZn1aZBCEB1GHPyTxTcWi3tilkj3Rqvm6ueBVGoAqAYRPe46H3SpCHDU
         dcIv6/D9B64moaWI122ISHmXPO7i/J/Zaz0NNKVi3umbHdnrJAz6fiqIQHU5360o+mbN
         /AK/1aQuBKeSRIwwoTdnlYfd4+S/L2PoDJFk7kp/20+jGleyWqewwRqN0JIRQxB2C3fp
         l2Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=whj9vfyJyAZc+d3n3cW8AGOabcQiCrzvmD7lclQrIUk=;
        b=lJAUPi2znELvebxfHNg+EGKausAS9pEt9RgKHJFiiMX7R6Vju40zZfUnCf3z2YqUo/
         +UUwpbNCWUT95ZaX9oDyiikS+kY3By+roI7iShriVf1WZ/5xEgZ+F5LeVDPLkj8ly+B2
         /gs+yPYgVPHpSr8jsYV3N62DuRcdNsteshQd5AzOMRDQLp1FAKrnAuVl/xCVuZTvVPzp
         8OAv2Ef2lN3fhOfKmSeYzdxiVdD9zKNAHUbcAFVv8FIeao0iEvb6DQmVFjW87X3blFLN
         O+qZn6fGo56zqEL5oA8uVc7XlvppgUpldt9sHCvQ+HCeB2y/NBR4z9GlKUjaFlY/PHkP
         ttwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of steffen.klassert@secunet.com designates 62.96.220.36 as permitted sender) smtp.mailfrom=Steffen.Klassert@secunet.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=whj9vfyJyAZc+d3n3cW8AGOabcQiCrzvmD7lclQrIUk=;
        b=Wywsd5nRpBDZSPHRfnyZyMjmKvOmX6KsAi+2RkDgHQ81iRs9Cx5WSf7JJkTvbcIDwl
         CNhm0zjI3OeDNmSWUqyWR7MsQN0G6S0iqEMhI9wfx/SatqAk4wwKJqszsGnR7W9A4/WJ
         Ee8x8Mo8GT4bN9cXy0OKJ6akL39BHEMi62wZqNQchVuMnp/nc6gTYoT/g7gP1OxdA/mf
         dY5pQKlmzl+Z2QXgDn//umsYLphWik6kVT4RFR44AMgN3zuRdU+URw/jI5kBpntnzk5P
         eDFEKmiLr7nJ9gLcrQ2plSLV8av6mMLUQYfa+I8/4WE/y/x6uh+36Wg3SyPMv9RFpnZU
         IZVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=whj9vfyJyAZc+d3n3cW8AGOabcQiCrzvmD7lclQrIUk=;
        b=Y8BovWryZA6bDxsYcFJqnYdj5k6cofLCK+Ry5w3Rqn0eMjCCoSrgV7LS4OL2kY3Z7C
         lKpmoyjXb1HatnbHYBxqEptrTzyHedlC8EtrGXVYJvHOUUvMdPTAkUIV6SAVt0sb8uQA
         28/7bGPQTUeXIBOXL3Kl51cdvMkiR8NHqdPGgc9BUAfm+Expbj8olPdOkJ235PZxnwAB
         WjPOgRFDTszww4tT0MJtJeJMYFyHxnUI3lZ3YAXzcfHoSgwSQlXZoHeQtPpipR50aAl7
         fu2hhAKx1KLHmT68smPBDSXfLGgkHyrrXH7qV/ng+hGYhcodS/jf97nSwGaFPPtBv0XV
         YRig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316IE9eoBPYgHIMURhrSckLv3kRgNU/VV1aS/j6boT6JelytF7X
	HUqxs1Oqhr5uUF9hLwUOh2w=
X-Google-Smtp-Source: ABdhPJwuGv36JAZuwe7ZHf/iL6auZwcQsQBKINRHWrVOSEBjbfCknocVQrbE74BtSQ5sF99JafLAaw==
X-Received: by 2002:a05:6512:1102:: with SMTP id l2mr186002lfg.501.1616754523657;
        Fri, 26 Mar 2021 03:28:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8915:: with SMTP id d21ls1907577lji.1.gmail; Fri, 26 Mar
 2021 03:28:42 -0700 (PDT)
X-Received: by 2002:a2e:a40f:: with SMTP id p15mr8481186ljn.440.1616754522628;
        Fri, 26 Mar 2021 03:28:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616754522; cv=none;
        d=google.com; s=arc-20160816;
        b=ZqwTu4pJvAep02dgidHHpWwGMTl8GNlFEU1DYAZEPC9ve7mD/Hbhw3teijKNDhTvUE
         9xzWIZDGc8SINWeONrvv0JFtmKr12VKmWProQvVdyeaaXAWZoJkUbJ4l4V/VAQAceS6J
         Uu0zo22zpMJhFIcKKwZpOltZeo6lGxjDF9I2/8RhROmB5IuyC365P4vNEWaN1gJcibPF
         KYiCoa4r+2JN+7ZnHaLymKc869qFUIhU9X5BwNW5GSj7RYlulWj26X4lpEGzYYbso2wy
         cC89A6+vtDysM+gaI5B9YD3W9wWgpx/zvRWxlkbKey6FsvlwtFLtLMHUf1RO81KQoWWo
         chFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=Vo5iYrzqAVwD0ftnJcNS6Tk8fjUEFpVW310k0kRUZFQ=;
        b=ul6TYn60oZ/2jh20iR4atZXAto8DK56gUc2A56ldxjmEKBh0Imbtz/RVUIkRYM2GmQ
         1zV99ye+zdimWm6bgZnzOuBGsukx3E5N/FkjrsUYyOJgY0H3kr2P+/oWTBKswjKrytNh
         lyi2gvIHO12CGg0ghM+ktgaXjGbPKIM7UlNGo2K90yPoEXX7FzC2WmuavJr8/IjXRnGg
         a4RvGcymFA13plMGQE6skSiOdYghbHd5J0ywqQa3VBUL8F+eGmg5xAIcDDFq+BDLHXzG
         6SUc9wtMBN7VHtk1KyGHZjyhrvTutJlzaKR2RTa92liksGaUglM4VrAHDIdOGgXDvfxa
         Fjrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of steffen.klassert@secunet.com designates 62.96.220.36 as permitted sender) smtp.mailfrom=Steffen.Klassert@secunet.com
Received: from a.mx.secunet.com (a.mx.secunet.com. [62.96.220.36])
        by gmr-mx.google.com with ESMTPS id f21si364379ljg.6.2021.03.26.03.28.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Mar 2021 03:28:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of steffen.klassert@secunet.com designates 62.96.220.36 as permitted sender) client-ip=62.96.220.36;
Received: from localhost (localhost [127.0.0.1])
	by a.mx.secunet.com (Postfix) with ESMTP id 5F37A20185;
	Fri, 26 Mar 2021 11:28:41 +0100 (CET)
X-Virus-Scanned: by secunet
Received: from a.mx.secunet.com ([127.0.0.1])
	by localhost (a.mx.secunet.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nlpR4qj043xz; Fri, 26 Mar 2021 11:28:36 +0100 (CET)
Received: from cas-essen-02.secunet.de (unknown [10.53.40.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by a.mx.secunet.com (Postfix) with ESMTPS id 190E720569;
	Fri, 26 Mar 2021 11:28:36 +0100 (CET)
Received: from mbx-essen-01.secunet.de (10.53.40.197) by
 cas-essen-02.secunet.de (10.53.40.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 26 Mar 2021 11:28:35 +0100
Received: from gauss2.secunet.de (10.182.7.193) by mbx-essen-01.secunet.de
 (10.53.40.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Fri, 26 Mar
 2021 11:28:35 +0100
Received: by gauss2.secunet.de (Postfix, from userid 1000)
	id 156863180307; Fri, 26 Mar 2021 11:28:35 +0100 (CET)
Date: Fri, 26 Mar 2021 11:28:35 +0100
From: Steffen Klassert <steffen.klassert@secunet.com>
To: Arnd Bergmann <arnd@kernel.org>
CC: <netdev@vger.kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>, "David
 S. Miller" <davem@davemloft.net>, Hideaki YOSHIFUJI
	<yoshfuji@linux-ipv6.org>, David Ahern <dsahern@kernel.org>, Jakub Kicinski
	<kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor
	<nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, "Zhang
 Changzhong" <zhangchangzhong@huawei.com>, Sabrina Dubroca
	<sd@queasysnail.net>, Willem de Bruijn <willemb@google.com>, Jiapeng Chong
	<jiapeng.chong@linux.alibaba.com>, <linux-kernel@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>
Subject: Re: [PATCH net-next] ipv6: fix clang Wformat warning
Message-ID: <20210326102835.GB62598@gauss3.secunet.de>
References: <20210322115701.4035289-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210322115701.4035289-1-arnd@kernel.org>
X-ClientProxiedBy: cas-essen-02.secunet.de (10.53.40.202) To
 mbx-essen-01.secunet.de (10.53.40.197)
X-EXCLAIMER-MD-CONFIG: 2c86f778-e09b-4440-8b15-867914633a10
X-Original-Sender: steffen.klassert@secunet.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of steffen.klassert@secunet.com designates 62.96.220.36
 as permitted sender) smtp.mailfrom=Steffen.Klassert@secunet.com
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

On Mon, Mar 22, 2021 at 12:56:49PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> When building with 'make W=1', clang warns about a mismatched
> format string:
> 
> net/ipv6/ah6.c:710:4: error: format specifies type 'unsigned short' but the argument has type 'int' [-Werror,-Wformat]
>                         aalg_desc->uinfo.auth.icv_fullbits/8);
>                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> include/linux/printk.h:375:34: note: expanded from macro 'pr_info'
>         printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
>                                 ~~~     ^~~~~~~~~~~
> net/ipv6/esp6.c:1153:5: error: format specifies type 'unsigned short' but the argument has type 'int' [-Werror,-Wformat]
>                                 aalg_desc->uinfo.auth.icv_fullbits / 8);
>                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> include/linux/printk.h:375:34: note: expanded from macro 'pr_info'
>         printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
>                                 ~~~     ^~~~~~~~~~~
> 
> Here, the result of dividing a 16-bit number by a 32-bit number
> produces a 32-bit result, which is printed as a 16-bit integer.
> 
> Change the %hu format to the normal %u, which has the same effect
> but avoids the warning.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied to ipsec-next, thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210326102835.GB62598%40gauss3.secunet.de.
