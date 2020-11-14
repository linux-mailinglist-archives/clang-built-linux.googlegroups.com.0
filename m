Return-Path: <clang-built-linux+bncBDH2DCX6QMORB3FBXX6QKGQEWVFBYQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2162B2B1B
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 04:37:17 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id s6sf1312399uag.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 19:37:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605325036; cv=pass;
        d=google.com; s=arc-20160816;
        b=yKnqkZiNr4aIreW5gT3Ie8WWXI6sPo+HIGrYKLHoJ/iKiyrhSMyXWC5jCR0ilSdKic
         wtrBTF6WeAA4nbVkgdYLnCpAYookP+FUQiiByBbHhHE6BwVPixQ6GV/Z/B5GiIERJsBq
         IDejNmJ9l3x/KRwBUVbUvQIag/c/js8Vms0UpuH/QsqY/AlXVYBf67+nXz4e9SEAf2wu
         Nbd8Msp1amFcDJGOuE7FXLuNsdJGjeGBQttJPNVgFEpkJMnKPW76VvTih2u2ntiKqOXF
         EPOhMwyj0viTpaEF3Lz8/g2eHlHl7GJBXY45e6ri4BazdAOXUE6bXwXy7PIzcQ7XU+Mq
         qgwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=bTIoPcue3kicIDPlmyG2hnP0syrrMwi7L8d9ShNtH2k=;
        b=HxBel1nRp12ERo2K2XkE6QPmqTkWw2k3ngIaeR9B7Lp5iUE3YhQDePhkpKpl1AhD7/
         tHUy1OUlCgXRp5k/F1viYGEPIfxQmbH1hRjzVOQqA5UaA7LGrKeaMUI50xPWUhp98K5f
         pVIqqYC9Ia/pqiu13o3w4iC5/ekusQ31T7ytEHWWsLy65fHdXWkJ1zAKZH3UtMIoExOY
         0VzudZ5Ksnp7q2fR6gGeb3NM8RHiRA7Yqj7rqKkutj0JcA7sIF7FUs3/w3ItDuaPNrID
         6ASbDk/S4wrtaX4Sc8lf8wHGWi2lA5bIY7KKiTGq53oLIrTQGsLv5jiRXl7dX26aArdr
         KHrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TH5Mo8P4;
       spf=pass (google.com: domain of dsahern@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=dsahern@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bTIoPcue3kicIDPlmyG2hnP0syrrMwi7L8d9ShNtH2k=;
        b=bG1OULBN18OY07Bw6PO+y1S6QB92x+yowoqEWdj8cDw1b0o6250+7tYOOJ+kmCLU9O
         c5dOmlXziK7tYN+JOaihEUm/5pvuAPQ/lOJxmhLKkVJ67iRKO0dWGj5Va5e8I6TzG1rL
         LJNI7kmF5zJSgZa8XJbDkRmWoh+Au3VveqbrlIQFqiTep+cQBaYU2KUL0zYF/zaYsJGo
         O/nK4G6FIYK08/kgY+uSYaBL2nQCMdJs9+nNDBSo/XMqzuJcWTegCIJweL8NmLsQk5dF
         9pg+a/3E+vt5NSJJxW0T0GqDkhJrWNf7lLJ38222U4OUXDh7/ALxeW41VR4DiyK7JSmk
         5qZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bTIoPcue3kicIDPlmyG2hnP0syrrMwi7L8d9ShNtH2k=;
        b=SFT8pSrbtOoE0uAv6rX4krlRwCOonqAXaQ9NKj6DUAVIfvMir/KYd5TTeCd97qrBIk
         apqMJujas6S+oqBDorE1zb60jLDGdEeOv7FwmxiJ613KJUaLZb0UKkG37Rbt+FXuZKc9
         ljy3L6JsVLLrctrpU+ROJbfi3zyhxIYcE6fRYiFWIQj+bf27PRkSIDl+799y+W+m2Nsh
         T4Gs8cyJoXafzn/Ji7BcDckZFpQvUn+EU/rCllkp/UbDO+erhoqHdfg9iYHHoBj/Ff+0
         xWGXvQkaAqL7ZgdJ8nTeF0bg/xkLgKaQq5HGj53EwvLiSMGC1EyowfDIeKOz3ZLTXJ6G
         gSdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bTIoPcue3kicIDPlmyG2hnP0syrrMwi7L8d9ShNtH2k=;
        b=hxGE2J8su7rIuxTxq5oQcFTjUJIBHgogbZSp6iQYu2ybKJEnxQyEp8UDBuHah/sBSN
         5V/zKQ0qMr/uFqD1Lz9OsLOfnYtutfdEqjkjd+lD/bNg+hB7C27rcCSynmRGbRST8+Km
         pe+OTJOf5/DlXQ91P2YUI1ktSV4Z33WP8g+vB9hphbizoZSqRgJGtpqPsKdsDBURwdWJ
         Afdqs/6y4DtPMcNhu8BmW+MchrPEP9QP7/sG+vTr+k1Paa/9QwKWc7JQJzt/XaOOk/Ip
         1L0LXFaP36AHSX3TiQoHdDyygSiwjUP0ojdfUZ5rmwLw39S65CWuPxMXhXbxUFq7pnW5
         GYPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hZu1+OK9SR+4Fy9cx/xy0D1HD7raYJW+8pod6rb++cFZaLZTo
	b7kxdsI8FYKgxdiSZOkWu1s=
X-Google-Smtp-Source: ABdhPJxoLbKshMMKAgvJQRYP2GhGX+09Yp9Q5E/Ar44VZgQrlbRkv+bqVpr/ca3wqD9GXqnVxvVvYQ==
X-Received: by 2002:a05:6102:1173:: with SMTP id k19mr3445994vsg.51.1605325036650;
        Fri, 13 Nov 2020 19:37:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e985:: with SMTP id b5ls1137940vso.11.gmail; Fri, 13 Nov
 2020 19:37:16 -0800 (PST)
X-Received: by 2002:a67:fb52:: with SMTP id e18mr3489776vsr.30.1605325036229;
        Fri, 13 Nov 2020 19:37:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605325036; cv=none;
        d=google.com; s=arc-20160816;
        b=XGPvEHeXrnOjQygUz5rEoNTUIb3KOpNrDU8izZu05cSHWEtMZqtA8w8uYhYzS9W80N
         OwwGq4FP88vmHWgBv4M1ud91mSXTu4yuAl8eHhnxin5mP6GIo6lLCYMpw1u5MipDf/GF
         oqoLkmpxsm7gQsQD02A8eYlJTuXZ3feEgeSzlSrIpe+Yy3AVE81tAu9q1aSpzvAks2me
         nZv8eFIKednjOL1gSCgAG6CkXBOAXU7ZEMEscLht/i1soBxZbbRQkieSgjgBpWXGzZdw
         9dpaeP2mk9wJPix/GfYbc8K+9qBVsM/msZvXIJZ8izBpuGCpm/Kd2SErGO35cKDSGNgi
         80cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=mHB76bFBVb+Daza5fzEkrTLKypseZA4q9TCyNHg751w=;
        b=e9s/KJzlI/kAOtH78meXDQV6LQcvQPzr77ZcEDSQLnzzUEc5kbceocVRzVxEeZJVRX
         A4/OVuVy9dVsNJe7hT4WKMPUNHH1uWap8kd7QF5ZQMCVP38rLEsM1c2IvnO1j1fmYvSc
         KxXNdb/qPO305Hf2xFRe3+kky+Qb0ZCQC9XJMSAHFuCT78+soCtmwr4H6ID0dsNr7Dkw
         JX25oPwvnhkhHFBr45UkT30EolWlLnbjcgoKfcN46XUNVWxsWYcBgDHGDuDn7Yr+wjfr
         MlBoGv5NFzrTjZLLJaIsd17EKv4hfWeOlIcaNssS/nk/Hl/Z1hCxYNk0B/vutpQw/y1I
         tlSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TH5Mo8P4;
       spf=pass (google.com: domain of dsahern@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=dsahern@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id b16si884389vkn.5.2020.11.13.19.37.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 19:37:16 -0800 (PST)
Received-SPF: pass (google.com: domain of dsahern@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id i18so10377047ioa.3
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 19:37:16 -0800 (PST)
X-Received: by 2002:a05:6602:124b:: with SMTP id o11mr2045005iou.181.1605325035764;
        Fri, 13 Nov 2020 19:37:15 -0800 (PST)
Received: from Davids-MacBook-Pro.local ([2601:282:800:dc80:99e7:10e8:ee93:9a3d])
        by smtp.googlemail.com with ESMTPSA id v9sm5937069ilh.6.2020.11.13.19.37.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 19:37:15 -0800 (PST)
Subject: Re: [net-next,v2,4/5] seg6: add support for the SRv6 End.DT4 behavior
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Jakub Kicinski <kuba@kernel.org>, kernel test robot <lkp@intel.com>,
 Andrea Mayer <andrea.mayer@uniroma2.it>,
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
 <c7623978-5586-5757-71aa-d12ee046a338@gmail.com>
 <20201113190045.GA1463790@ubuntu-m3-large-x86>
From: David Ahern <dsahern@gmail.com>
Message-ID: <7f73993c-cff9-042c-9b52-2c724f6d1bc4@gmail.com>
Date: Fri, 13 Nov 2020 20:37:10 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <20201113190045.GA1463790@ubuntu-m3-large-x86>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: dsahern@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TH5Mo8P4;       spf=pass
 (google.com: domain of dsahern@gmail.com designates 2607:f8b0:4864:20::d42 as
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

On 11/13/20 12:00 PM, Nathan Chancellor wrote:
> On Fri, Nov 13, 2020 at 10:05:56AM -0700, David Ahern wrote:
>> On 11/13/20 9:57 AM, Jakub Kicinski wrote:
>>> Good people of build bot, 
>>>
>>> would you mind shedding some light on this one? It was also reported on
>>> v1, and Andrea said it's impossible to repro. Strange that build bot
>>> would make the same mistake twice, tho.
>>>
>>
>> I kicked off a build this morning using Andrea's patches and the config
>> from the build bot; builds fine as long as the first 3 patches are applied.
>>
> 
> I can confirm this as well with clang; if I applied the first three
> patches then this one, there is no error but if you just apply this one,
> there will be. If you open the GitHub URL, it shows just this patch
> applied, not the first three, which explains it.
> 
> For what it's worth, b4 chokes over this series:

Thanks, Nathan. I'll forward to Konstantin.

> 
> $ b4 am -o - 20201107153139.3552-1-andrea.mayer@uniroma2.it | git am
> Looking up https://lore.kernel.org/r/20201107153139.3552-1-andrea.mayer%40uniroma2.it
> Grabbing thread from lore.kernel.org/linux-kselftest
> Analyzing 18 messages in the thread
> ---
> Writing /tmp/tmp8425by7fb4-am-stdout
>   [net-next,v2,3/5] seg6: add callbacks for customizing the creation/destruction of a behavior
> ---
> Total patches: 1
> ---
>  Link: https://lore.kernel.org/r/20201107153139.3552-1-andrea.mayer@uniroma2.it
>  Base: not found
> ---
> Applying: seg6: add callbacks for customizing the creation/destruction of a behavior
> error: patch failed: net/ipv6/seg6_local.c:1015
> error: net/ipv6/seg6_local.c: patch does not apply
> Patch failed at 0001 seg6: add callbacks for customizing the creation/destruction of a behavior
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
> 
> Even if I grab the mbox from lore.kernel.org, it tries to do the same
> thing and apply the 3rd patch first, which might explain why the 0day
> bot got confused.
> 
> Cheers,
> Nathan
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7f73993c-cff9-042c-9b52-2c724f6d1bc4%40gmail.com.
