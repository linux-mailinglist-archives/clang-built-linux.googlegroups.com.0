Return-Path: <clang-built-linux+bncBDH2DCX6QMORB67ZXL6QKGQEWAHMSNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B45D2B217A
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 18:06:05 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id d206sf4186036oig.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 09:06:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605287164; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZhIsKSKJ8ZOXos3mKuTrnA4MAxNRTSyESG6G526FnoNwsdJzc56hLSvR84UhNymNXe
         3z6iglgMnct9Td0n7sPp7iGl7jyRKr9WyNPrVrjCuxiRWrg+yGVZk0/JaTpy/h84WTAG
         maN/+Q33lfmrqmDMPeaki2/Y/eQne3oBe7TWfU5B6Hdfrc+jrEJR7I2wKlHzw2SHvXd0
         M64b1TrCBxO9qq3/cz3nSsFfVghgwrtJDAzHZ/wYorrIUVolRRFwRb4Al5mH1d56v/7g
         uOU7HOc/h65W+0zYhRo1R+D5cy4qkEfTimd5QOXiyGfj+J7onEQ0FPPNoomMBdoLWPlf
         /Mpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=0CHMjdmfjHARDTQQm/rYsNslcWExJF4BFapq/T/T2KY=;
        b=ODZCnmgJKd56WjQuv1EELTX54IPu5fPCYsrUZSBtQZVkN2wVMX/BudRnz2YyB0bRj1
         qle2IOOgJeDs1b26LQTzcqukVk4iLIKTls9T9XDGiFZ9gtbUNpaOQjEszpn3uio03Hg8
         +UsU5E2nvFv/hGDWo67tiZv769B7fycf0s7MMtL/895o5eGXRLtj+QK5QuIwTgcC50fX
         u1bbdxBsKK+hcpC+4K2nqhbrmurkDvx2yD0vLXpYFkXbrQrR+stw4fbjLWe/NKmN0NNH
         Ny9ykoa5T0gksP8e52POtnMC/eTmDI+TTtApMTbXgESb8QVDLvPyer69Kxe0bofrkWW1
         haOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="N/rEvcJc";
       spf=pass (google.com: domain of dsahern@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=dsahern@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0CHMjdmfjHARDTQQm/rYsNslcWExJF4BFapq/T/T2KY=;
        b=I6W8SJzBs0+LOPLLph1PEFfiJBCld21NVq5mO/a8m1tr9lF8k8EaRQRWr1SMvynkkl
         W9vwFnGZqyqC2FJecLVW4m5bUGj3OpQ0FGNVGelyNKJb8Ika9X6AHbIWgafC3cl47fZy
         cNbxfVmvdzCPNqu6hoyQesXvMq/7HMZAsY87foj6rFuM1rjQj6+gGO8w1jd//dIZlOAg
         W/nVehkFy3e/eMhGDYlYvSYEggUF5tw0AJ/Uging/a8iiLssUVboaAvOBL0TRO1ZChlG
         R/H7413gghTAPxIdJACg8FdtOcwOuu2mWjyMMq8/1Ni0Z6Bsj1s+9NHQLq9FfqN1thBu
         A/FQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0CHMjdmfjHARDTQQm/rYsNslcWExJF4BFapq/T/T2KY=;
        b=NFuOCnoyG8/3S2zK8Kv/HJs9vzYOOJBvl14tkdRaNctS0mYcOvpCoItyb3OKLAx7WE
         YOTdsGeQaTqi9KBh3J6wWCYuq+KqOR8WHElzoJP7LGmu/jXcv6CWG+zNY+1vDxzW5vwV
         Hv3GBgz+CVodIzfDkAoufqPgkpaY6gLbHp12OuR71WaI+crhWhFasu3Qmx5eqERVVrf+
         tr4zZtdmp6s4e206ZxGVW9ylQlASnhJ/dQw3lQjAR4RfY2Y7ak9dIoEaXknOlDbX1x5M
         ZJruWBiTgcLiyuhiGnjbYMdxbsrNzUlWIuO/JUfjcw7UadEfmLx3eRHqXX2RW0Aw5B0E
         iFbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0CHMjdmfjHARDTQQm/rYsNslcWExJF4BFapq/T/T2KY=;
        b=dSZy/LoOElA8QxGj8nMbTVh3jvctCcoF7RKFGZ2XTCrdcOLBq8Yw2AmkbW5AZ2AR9J
         UXJTFoIHQ2dxPk6RQKKRazmvBxLxPa4Q0wy1qdNrFhb4s3O3SjvKhqnqLwEmgbQyF56E
         mBgt9v/U4TBgxC85npQ6FWKJrhh5LcUdn+wsPL/C9RYywWkleHg0Z354o4m02spYyZSb
         Llr3AQcUfbv5Wn9AxBNMZC9TTNhtt1JanRBrD23HGUEzvDB9V88fAwJ//3rxvH1YVvpu
         wOL/skEB3ZCrzjkMR/l6nkFPl+ARfNG+E9gjbRLRT1zTbkhTQeiQ3R/V4F3XtLpDof3q
         kiAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZrzK6R0Rq+uecgO4vagkPBbc1Nq5j92PLxctJJTuOu9+8CSEx
	Yjc1leAKnIDrE421z0j+epQ=
X-Google-Smtp-Source: ABdhPJzrqDdh+gBvzCFLZNwWHOJHua7MPiNFWigPFpjQLnN51VE/nwffLkK0YakILpQsFoBSqFtmBw==
X-Received: by 2002:a54:4614:: with SMTP id p20mr1993710oip.131.1605287163884;
        Fri, 13 Nov 2020 09:06:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:bb2:: with SMTP id 47ls1705598oth.9.gmail; Fri, 13 Nov
 2020 09:06:03 -0800 (PST)
X-Received: by 2002:a9d:590e:: with SMTP id t14mr2416349oth.230.1605287163398;
        Fri, 13 Nov 2020 09:06:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605287163; cv=none;
        d=google.com; s=arc-20160816;
        b=sSJ0uwVVPOUjUJeopqhdb7mTqBLvi1k77UkmXLLTiEmluqZnl/4JB2y7LQ1zVoWL2G
         wbD/0o6Hsyhw0leeWI6DAlVODr09KyA297dE94hqVcnAviInphcx092KaDA6viVoBNna
         a1nPKKMIS4a8nYKjDS+pE/5nzFW8XZ5ArIPrXOhpFpMuP8EWGGmPpIlFxdIRGNEE+K3r
         Ry3IWfDPnu4ehk3ygJz+yk6VT278F0sysfC52n3o4dxEmwr7yGq4pTFHhyFY4lcKVB/3
         N8qU7nm4PB0Y8a/EXPxL/r5FMTh6OT5jL5fk/ZpryDvEw66LdHSpo5Awn0HWO3DW8CVz
         uMcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=ZzkYhypxoa0I35MEZMu6CatIuch2sLYMY75i1GLDhAk=;
        b=NJ/nj+Xs2d/3X+5hiNGWkMGgZjHnW3aWezx+8gqax/YvbABBXfk1OOcMh6X3SZ8hHJ
         aA7K1ssPP+taM13dTJJwMUCsB5SPE5G8AI5CH51JHTts0Ww/Oe5+Kl8qrAXkQIsyBp2e
         qAY6/Th/FSzO1w5ElX86tu63O7pB12cNo3rFjx5WkxLfwCTr8gwwjK24segEsPLykzH7
         vEHdB2vLOHS20wRwJHSL4DJiaDRpo33OyYxpQ+KxPpsbbDCKJHpENn2h1czBT8TTk+gK
         0yTB/RQ1eQdrxm0MqcbidD77/PPGgcl0akWcmUgySxVsuzf/z/y1YpeCjkTpv4xe5BnC
         D/jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="N/rEvcJc";
       spf=pass (google.com: domain of dsahern@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=dsahern@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com. [2607:f8b0:4864:20::d2f])
        by gmr-mx.google.com with ESMTPS id d20si934744oti.1.2020.11.13.09.06.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 09:06:03 -0800 (PST)
Received-SPF: pass (google.com: domain of dsahern@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) client-ip=2607:f8b0:4864:20::d2f;
Received: by mail-io1-xd2f.google.com with SMTP id m13so10449546ioq.9
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 09:06:03 -0800 (PST)
X-Received: by 2002:a5d:91cf:: with SMTP id k15mr529700ior.161.1605287158333;
        Fri, 13 Nov 2020 09:05:58 -0800 (PST)
Received: from Davids-MacBook-Pro.local ([2601:282:800:dc80:99e7:10e8:ee93:9a3d])
        by smtp.googlemail.com with ESMTPSA id y19sm4773095iol.9.2020.11.13.09.05.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 09:05:57 -0800 (PST)
Subject: Re: [net-next,v2,4/5] seg6: add support for the SRv6 End.DT4 behavior
To: Jakub Kicinski <kuba@kernel.org>, kernel test robot <lkp@intel.com>
Cc: Andrea Mayer <andrea.mayer@uniroma2.it>,
 "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Shuah Khan <skhan@linuxfoundation.org>,
 Shrijeet Mukherjee <shrijeet@gmail.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 netdev@vger.kernel.org
References: <20201107153139.3552-5-andrea.mayer@uniroma2.it>
 <202011131747.puABQV5A-lkp@intel.com>
 <20201113085730.5f3c850a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: David Ahern <dsahern@gmail.com>
Message-ID: <c7623978-5586-5757-71aa-d12ee046a338@gmail.com>
Date: Fri, 13 Nov 2020 10:05:56 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201113085730.5f3c850a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: dsahern@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="N/rEvcJc";       spf=pass
 (google.com: domain of dsahern@gmail.com designates 2607:f8b0:4864:20::d2f as
 permitted sender) smtp.mailfrom=dsahern@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 11/13/20 9:57 AM, Jakub Kicinski wrote:
> Good people of build bot, 
> 
> would you mind shedding some light on this one? It was also reported on
> v1, and Andrea said it's impossible to repro. Strange that build bot
> would make the same mistake twice, tho.
> 

I kicked off a build this morning using Andrea's patches and the config
from the build bot; builds fine as long as the first 3 patches are applied.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c7623978-5586-5757-71aa-d12ee046a338%40gmail.com.
