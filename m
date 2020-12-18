Return-Path: <clang-built-linux+bncBCZLRWEX3ECRBBFC6P7AKGQEE3DVW6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F13C2DE701
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 16:55:50 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id kb15sf1842866pjb.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 07:55:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608306949; cv=pass;
        d=google.com; s=arc-20160816;
        b=B8EeLq5jl2eIjTP3m72TkHJOwmJbIqsPZpd2ssbw0+T//ncIQgAHF0xwS4oZGyxk4O
         1jCoWL7sAbdunAK5xhWPR5mJWI1BMnYHou1Iwz3abZgLEjVtiG+JIZakwEYSAM6OCbUH
         XqDa8Y1lTb0QogpGTiEVhXKJ7HwiCY4sxRYugmf5H7ih27wy4MJBm/cBUELgZGHaEYVK
         hjDlED+YmPU8iEJe6HpMlYezuQGUwzxAYcwqtMQiaJjb4wLtym4cvL2dAJyQp+ASfT+m
         DNPRQcEfsncFU6BLXUe0yTYSS6KetOhm40T9LqxIS3ce1jvA+lN+SZ0XsFDxRmrYvgSn
         67Gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=ZgYg4OjVRVxGESYs72pG8Zvc+0ddsTYrtQu7+ya/4tE=;
        b=nQ9MpPwn4aiYGJhW3NjlrqZxbMrWM4P6Iv2hLbHdRul5bVc+ZmbPK251uYvGHO0xJJ
         at+Xbdx6BWj28cjPpf++gx6wBOzzHAkXxoZbb8yinZB+y7do+G4e3eVqwF3qRykg2eD1
         A5J5iJHSQH3IRL0PIo5QtkqbdKXUXpjK03j7gaxB2XtPw7raSo7eTdte8sFf1VPpm1Qa
         0ik0c/lFLRvTqhEcWS18CiwzLg1XwWngtKoXiLhv9icLWYyL5GomR5pQTxcbUBx56lLp
         VlHKfBt5ZKCHW5AhJCl+TX7+iUv0L6k0S4biBn5JUzN9+G8cWQC9NLSleygW7QmEbhwJ
         9z8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b="gG1/wrOt";
       spf=pass (google.com: domain of jonathanh@nvidia.com designates 216.228.121.143 as permitted sender) smtp.mailfrom=jonathanh@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZgYg4OjVRVxGESYs72pG8Zvc+0ddsTYrtQu7+ya/4tE=;
        b=M2+xhTxmWZRqsQK60mTtSm5j9R0EcPODhWb5cr0F5DiCaGoIAUr4/3PcHmEjV9i1Bx
         6OqKG+htfT7neGkxMt2BsfHVTnFesfLnY0c8kjJ9Ip1VuK+YA7N76/Sv9kBk/wqwlwbE
         RViouajIUdlPoxaZ6lSAV0cj+FqUBFgsmq/tDYCY6RplEVpFeDWnK2tXmdtuYDt+6qtW
         ttnR5pBRAufQTf7SI/FvGs9nWki/VAdQjHXab+JVime+Nuihv0eLG7VqCWix5uHWJfH6
         d5eD14bzzS4MhVNvz8uPbHhjsFSby3I58Z5i9FNfgVgIioJ3sSW/H0O3ThEUdScpZnxF
         bO+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZgYg4OjVRVxGESYs72pG8Zvc+0ddsTYrtQu7+ya/4tE=;
        b=fLrJzBFDTMX6k9FWY1yoWae+qomKiVI0B55sleP62v0BTsYidb3oR5jVSNvGGfMSYb
         vI7N+G8kyle9oUPksRFATRQcwh5HdcdcWIyGWEQNpss73ezFgdWiB61OPHp+v6fshzVB
         1F7fGapaA+tRu7LxrHUlWvuPnTQN2F3A9UVHcp4NksKy/oYkLHXyOizXckkiMKP2IYzc
         FlivGQAFJS4ZEYe7y7sMVEZe23dCTgW8dMHt1wzH3FO4SNMsjgRuLQ0Gd6qPMCvseP4O
         0G4kXZxkm465T0qaJYtHjulWA7gB9igBj6N4PA0K2q7zDpXUcQcJM2UbeM49dgWEtDhV
         BPOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313gI7F+c24EdUlpwoS8GYjCTDohlcjnX/Clms3xKShvuTk8126
	1aLa3CNEPEExgKfb24/myGg=
X-Google-Smtp-Source: ABdhPJwkuUTjC/RsOmSUXnX4l7fi2ZlThhPOirgfI8LF/GNclJ4aMxs32Vh2rwDnhjz/SZdXU/Jt3A==
X-Received: by 2002:a17:90a:de0f:: with SMTP id m15mr4990492pjv.207.1608306949057;
        Fri, 18 Dec 2020 07:55:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:a510:: with SMTP id v16ls7360861pfm.11.gmail; Fri, 18
 Dec 2020 07:55:48 -0800 (PST)
X-Received: by 2002:a63:3d8:: with SMTP id 207mr4562144pgd.215.1608306948484;
        Fri, 18 Dec 2020 07:55:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608306948; cv=none;
        d=google.com; s=arc-20160816;
        b=00CL52CZ+MDFgz/fuiGby+biYUF3dIcNGHae7ouIr+N0+yRi9XFJKIdDRjOjIcQYYz
         Q8R7PAIxfI5jFwo0qMYtUCULT+Egwo8PgEpqAGpaPzVe40Xx5WLGdXgkfhEnx2dmQCwL
         3Uf1UQ8eJuPj/yNDxBCeOK37iRvWlxhSpM7iYSKCQJyDVcxj2OQwN1KXausRYZX/k1Cu
         E+IdxuOUabMLl9Fi6Px1fgAUm6EbWigdrXdbV5arZrNH7Q2ZU6WzngESx7BADCvK4lO/
         8Vpy41baTtR9s9Zgz92c23DaXQa3VWWjDU+yROexkMNoX0MQvRg9Oyy7YuboA773WuGr
         NV6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:content-transfer-encoding:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject;
        bh=Vf95MzpRH15xDbnzDYz9T/qpYpIZeGHo+3utb3dK3p0=;
        b=WmMyAvaAfK8jLneTVwkrho965x717ED3ifm5T2aLOQt4fcxElKTSuYfUCwS84n7F5i
         JrXqmu4mb0qPP7BKujDrKwv4Gbk4cIkXSInUC/UTrCxAzuERim/WKoMns+DdiC6fKSI+
         ECNXkYVfINcfSY9v9sIElvtiE8iONAgcZrGLpybTRzDdN431BtId4kpK/zcEL4KpfXZJ
         iVtQt6NgygP18IIhL2+/u3rNot4o/GsqSAv/Il4AGdoJQKhRVnj1H+KNPIk5nu+yW9wr
         rwcWwTTIPA0qZ/4bgX7pp/vZ8HaEZueErkpPrpXzdYt8pjuiNFya1jXu2RG+AXilhkPt
         TxRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b="gG1/wrOt";
       spf=pass (google.com: domain of jonathanh@nvidia.com designates 216.228.121.143 as permitted sender) smtp.mailfrom=jonathanh@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqnvemgate24.nvidia.com (hqnvemgate24.nvidia.com. [216.228.121.143])
        by gmr-mx.google.com with ESMTPS id q18si864838pgv.5.2020.12.18.07.55.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Dec 2020 07:55:48 -0800 (PST)
Received-SPF: pass (google.com: domain of jonathanh@nvidia.com designates 216.228.121.143 as permitted sender) client-ip=216.228.121.143;
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate24.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
	id <B5fdcd1030000>; Fri, 18 Dec 2020 07:55:47 -0800
Received: from [10.26.73.104] (172.20.145.6) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 18 Dec
 2020 15:55:41 +0000
Subject: Re: [PATCH] gcc-plugins: simplify GCC plugin-dev capability test
To: Masahiro Yamada <masahiroy@kernel.org>
CC: Marek Szyprowski <m.szyprowski@samsung.com>, Linux Kbuild mailing list
	<linux-kbuild@vger.kernel.org>, Kees Cook <keescook@chromium.org>, "Emese
 Revfy" <re.emese@gmail.com>, <linux-hardening@vger.kernel.org>, "Linus
 Torvalds" <torvalds@linux-foundation.org>, Nathan Chancellor
	<natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>, "Linux Kernel Mailing
 List" <linux-kernel@vger.kernel.org>, linux-tegra
	<linux-tegra@vger.kernel.org>
References: <CGME20201218075758eucas1p1605768803a5c9edce4fbe54b3e3b859a@eucas1p1.samsung.com>
 <20201203125700.161354-1-masahiroy@kernel.org>
 <b9b17126-9af5-2f73-526e-91bb9fd27f71@samsung.com>
 <CAK7LNART2qQBY7Vc8rhMiXS_Fwty7qpWjwwfPrUegTb-gjy6sA@mail.gmail.com>
 <9f959875-1a30-b1a1-b626-3805e24a6df3@samsung.com>
 <e5b06d9a-9b24-2440-e0c2-8bf7095eccd9@nvidia.com>
 <25030057-86b1-5619-25fd-acfa0728b850@samsung.com>
 <4ab4f62f-8b37-01e1-f81c-270155b13a51@nvidia.com>
 <7e691a61-bf4b-0594-8d6d-36d62a5def0b@nvidia.com>
 <CAK7LNAQ6pzMGm=L9389Xtfghjfjr_wDqRntZC2XqP3JDQuhLhQ@mail.gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <c2a968fa-5a98-d9ea-3255-1e3be3e9c704@nvidia.com>
Date: Fri, 18 Dec 2020 15:55:38 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAK7LNAQ6pzMGm=L9389Xtfghjfjr_wDqRntZC2XqP3JDQuhLhQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [172.20.145.6]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-Original-Sender: jonathanh@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b="gG1/wrOt";       spf=pass
 (google.com: domain of jonathanh@nvidia.com designates 216.228.121.143 as
 permitted sender) smtp.mailfrom=jonathanh@nvidia.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
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



On 18/12/2020 15:42, Masahiro Yamada wrote:

...

>> However, if you are saying that this is a problem/bug with our builders,
>> then of course we will have to get this fixed.
>>
> 
> 
> Yes, please do so.
> 
> 
> Kconfig evaluates $(CC) capabilities, and
> hides CONFIG options it cannot support.
> 
> 
> In contrast, we do not do that for $(HOSTCC)
> capabilities because it is just a matter of some
> missing packages.
> 
> 
> For example, if you enable CONFIG_SYSTEM_TRUSTED_KEYRING
> and fail to build scripts/extrace-cert.c
> due to missing <openssl/bio.h>,
> you need to install the openssl dev package.
> 
> It is the same pattern.


OK, thanks for confirming. We will get this fixed.

Cheers Jon

-- 
nvpublic

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c2a968fa-5a98-d9ea-3255-1e3be3e9c704%40nvidia.com.
