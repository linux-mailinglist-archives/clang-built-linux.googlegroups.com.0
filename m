Return-Path: <clang-built-linux+bncBDCIDJ4RTAOBB5N7XTXQKGQEWCMPVYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 5224B117F09
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 05:32:54 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id ca17sf10492618edb.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 20:32:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s4DUuX8DGG17F/UtAiVgTWrTJl9FZ0+ERdufiUWuBsQ=;
        b=XMsBS3h4Kt8oU/si1Ox/cZXv92KuhjJU3/jyzDXIvB54yTTG8c+LzPXqEmLWXMJrYZ
         J1hkt2hSZGFm1kbww4XS0PCQwY4xL3oFipVQL2e0jiqbI2j8mXfdmkJ6YGz+FS+wbdxn
         rj21+F54c1ig5hsZnC7jtYrSb0YSCN8/Tf8gHPYxnGIatyCrEsWwccJe3nJq4bhg/tB0
         Fc9nQXMmJgZC3LntQ5iJHEJfWxE+j8plIDtY12WAPBLC2Nm0NoH/K2g7F8KAsR3jHZGc
         iQ2QQ/KK8Gk8T1bwO72lvk5/kIpgstOp3WdOo9KpGpEepnGWItk/zUkz7j5ovCdPIY58
         SD0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=s4DUuX8DGG17F/UtAiVgTWrTJl9FZ0+ERdufiUWuBsQ=;
        b=JxVWaZSgBWV7WTdHLhkISxrb3VKQMfgdGWwKjNOnuZpHNKJuCQhFpTbUgeUDwRhOpr
         1g0eyCZCfUM326CFn9rUHXh4FgBtL3H6uSkig8f7QKqA+xF8oNM0vTI/pvYFkmOQxaIY
         wkZhRf8q4TOpduCr1+TTLkNmcMN3yL1Jv3MTx2UFUK2MWdRYYsTbxLglO0uDMhulJV+w
         F7HpcJlOuWwTXqbS6wiAM7gV8D+PT+5yACRWN/FIKixo9n30/tD/OmxxSZDnrdl/sryc
         myXeVgfVbI78hrs1elztYczVePLcbu41Hk1T+/wlDPHVc9i6x6gckNuOLm6b6IFIWWPN
         KXAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVwEEbe4VFh+ta/EGEqkfvd7gYewtlfPmCUW/T+J21F9WGEImPN
	upqWXHTIqZ4jMO154tPUIUc=
X-Google-Smtp-Source: APXvYqwHhoJjShX+M2/oNZHBuFkc0bpcQd1W7v06ILC7c/r34NF4svv45bq4zzKdTlIzeOZAIT/Xhg==
X-Received: by 2002:a17:906:f90e:: with SMTP id lc14mr1423136ejb.217.1575952373992;
        Mon, 09 Dec 2019 20:32:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:e20e:: with SMTP id gf14ls4334044ejb.10.gmail; Mon,
 09 Dec 2019 20:32:53 -0800 (PST)
X-Received: by 2002:a17:906:af66:: with SMTP id os6mr1494565ejb.87.1575952373487;
        Mon, 09 Dec 2019 20:32:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575952373; cv=none;
        d=google.com; s=arc-20160816;
        b=FBxSsHdyBkQMTvi6lDB6JM1PFUWDLkQ1E9fKgzUjfRek6dVpH1YpIvLjRpUXjmD34e
         pKHBmTSk7hLyiNq7F8qUcGREe3QOZo6V3Q5skM4+RbOSOBtpSs83Khmy9yl0dfuPibpk
         eQsweFkjWkBkwv/cZ2NqyUlM2lDJ6LzXZymLBkYGfwYpcHkkRg0yiGD3KrCMN3BqdG1O
         t+A0H9UnUDgZPhs4jDnqPCzmTixJ+uvMqVtWr6Zj1jGuctV29om+PO4YFUYRvMZBmc4n
         p5Vac0nYl2mXxT0ahpWKUMDHy9i8yEAS4i26vHmMoedNGIKNThJ3h1oaELFoDLrDFC4D
         2Mkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=s4DUuX8DGG17F/UtAiVgTWrTJl9FZ0+ERdufiUWuBsQ=;
        b=jT+iF3Ho+IDKoMn6OrB5bLi4fcM7+ZNl+Rzn9VrGqoVFABGsI0/qmhHM+MYJlADLWo
         jxNj345/5GDdg83GyYTV3k8UKGMPPGKMZEaQMs2ng9dNY7MQzwZOmsc3brQWCsAPeCZD
         kKELvyX0o5EdhsMArYYL2CUMqlsVV7sYYmzk9hVbAn0MIrhydB8ppiyBYFGrvmZ481xf
         2JVkao7UFBGku8S8VW+VghH1AwSZcr4Cbx9ELo/ADe4SV3bp8X+KJ9H+j6qZsjaW30oI
         OKVOdZIK176e7ZUePf+rAGBxU0ixZ99alrTJ+HIWA5ZQgDdmJpfpr6Itpnwac3aPuATJ
         BGkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id m13si69661edq.4.2019.12.09.20.32.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Dec 2019 20:32:53 -0800 (PST)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id F2D7D154F0CDF;
	Mon,  9 Dec 2019 20:32:51 -0800 (PST)
Date: Mon, 09 Dec 2019 20:32:51 -0800 (PST)
Message-Id: <20191209.203251.2060454946547270295.davem@davemloft.net>
To: natechancellor@gmail.com
Cc: paulus@samba.org, linux-ppp@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ppp: Adjust indentation into ppp_async_input
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191209223859.19013-1-natechancellor@gmail.com>
References: <20191209223859.19013-1-natechancellor@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Mon, 09 Dec 2019 20:32:52 -0800 (PST)
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

From: Nathan Chancellor <natechancellor@gmail.com>
Date: Mon,  9 Dec 2019 15:38:59 -0700

> Clang warns:
> 
> ../drivers/net/ppp/ppp_async.c:877:6: warning: misleading indentation;
> statement is not part of the previous 'if' [-Wmisleading-indentation]
>                                 ap->rpkt = skb;
>                                 ^
> ../drivers/net/ppp/ppp_async.c:875:5: note: previous statement is here
>                                 if (!skb)
>                                 ^
> 1 warning generated.
> 
> This warning occurs because there is a space before the tab on this
> line. Clean up this entire block's indentation so that it is consistent
> with the Linux kernel coding style and clang no longer warns.
> 
> Fixes: 6722e78c9005 ("[PPP]: handle misaligned accesses")
> Link: https://github.com/ClangBuiltLinux/linux/issues/800
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied.
