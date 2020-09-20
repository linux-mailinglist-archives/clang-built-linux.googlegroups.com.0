Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB6M7TP5QKGQETVWSECY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6A62711EF
	for <lists+clang-built-linux@lfdr.de>; Sun, 20 Sep 2020 05:43:55 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id q2sf9920908ybo.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Sep 2020 20:43:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600573434; cv=pass;
        d=google.com; s=arc-20160816;
        b=BYmph91eSr8Z2eVhkcaWlbrVGV5590UqJDYyzi6rWQEUx0ymGBKVMSOR5mDNUkgn9X
         zxYKV0oSDsDvfZcEOJnmR2BdDy4n2/PL7wjCukwiXP+M4kpvKeIXt1eBWM9j5gcXNnqf
         qDTm3IXKieA6DpV8FQotwJMy44nuvtflxww3wg8wza6VydprT8Gf1d+abBOi6FxI8sHT
         kbb3qxrg7ZvUGzNLtWOUrkqv6vaubCnDxLH8pgqvpWjWRk/GVu2Jh3nS56d6cvYs6z3D
         Be1oCGHFavGLen+QALE1u4KcB6FYyFNxFcaBDgkDvPNwzTra1J8nOQJxWBNhtwDG3kHu
         yy8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=3ptZxgp2MetWfST3waUVEQATqc8/HmAj4SyEv4POQMQ=;
        b=n2Mjp0g2nTtoLaK8k/K/YpZsOsRnNdeEE2nBWOKQ0/SzcJrnxO13L13mkYZfKujGiV
         Y0W9JJr7MhxZ8wYh57/QoFL9/cd63Um/ON9loiKjF7kHIZw2fYxC98lIUOryhDuVSYmp
         brEZI37xMWXm1+r2koBzAILu74NU+64ZBxHbwD0+taLl+ho1WxRYSpvZHca72PypIPcp
         gBgAH4k3yr2FvkxgmIwlGO8/2+cEyTf79tJLcWDnDizW/zlavFl2kMQMO57paWN64sbo
         8HhdymWUJcSVwuOfe0MTG2GXSQP2oS80m6rwdeTOaBl0LwJwqM/yFjCd9uMhWIZchAmG
         vwvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=iKUZu9un;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3ptZxgp2MetWfST3waUVEQATqc8/HmAj4SyEv4POQMQ=;
        b=ah5FaPL+O1PJE3tEHGUXkn7nj9qwQangv4P1BvXV4lCbfQ4eNsONdVRpa4HVEQ7vGs
         ojZo8XNDrhDl1JQPPtw5k9K/NPS28QdlrlON9LUinAC5t7Sw4zsvbguVtrznVB2ngAhQ
         Y/+O2rPqthmUl/uqmWdZDGy+2eeVblk8lPztgOy8T8R4HHzj8UQGVLB2FiA7inOqN8nb
         L7Q0BGGjxE9fWfM1Xk+yhSVM74MYU+1is4u6wU8EwUjiCs74d7+Egpr5y5A15z1N+GJm
         CsbXrAS5Q2qL4dwh9bKXq+mO3pAnyFRfnUknYNYBZMa4NiVR/Kxrhtbc8iDNmtaDDbO5
         foWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3ptZxgp2MetWfST3waUVEQATqc8/HmAj4SyEv4POQMQ=;
        b=kcCQ7ZlcK5XhjB9uDbENXXm8Pi+82yW0u5/xDq7utjyxsCEdR4Ak4n/71e0PMw6Gpq
         +hQGhpfj5tsdhLgB5C5GK9F109BhhBVlonLznRyAZV/CpTd2kJuitIvS33ulDTsldKBz
         NFsLe2CaK6SN48ZubQX8tYkTVxcUJmjbLPWPRBmutNJ9luJ+hsxuqsnuwIQHcXJ0q0CD
         OxOrykuZNNo4NRNgdu+auAFtYyKTpI8YPhdgyz4OUhC/9MLTqWLlDxoYum95AB4nLXD8
         wXhedfPUrfHYwmvN5j88fstNuHeBzYmNRmm9YQaywM/OXPe32k8Asq2yXqzqCjXW41lq
         U0rg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gDbY4bb9LBnstxGm/1g+MwHRInOF8bDLEtdEpxtaskL5bVDhb
	FtdN21+Ouf2rl7/E7UM+yqY=
X-Google-Smtp-Source: ABdhPJy+iM6XhL1sfZEMqZhYPfAB922azTxxQPMwd2jSJy11qSp23zR6hKCryRmGgCvAleilkewzVw==
X-Received: by 2002:a25:2e0c:: with SMTP id u12mr50378762ybu.410.1600573433764;
        Sat, 19 Sep 2020 20:43:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cd89:: with SMTP id d131ls4163244ybf.9.gmail; Sat, 19
 Sep 2020 20:43:53 -0700 (PDT)
X-Received: by 2002:a25:1ec6:: with SMTP id e189mr33981059ybe.269.1600573433275;
        Sat, 19 Sep 2020 20:43:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600573433; cv=none;
        d=google.com; s=arc-20160816;
        b=F2molrwCcU9fuSzpeAYKIrdXNT0hmJz6ADi6RfZLWA72r3m8XgzPVO7utXCkvAX5mT
         3QJRVeM5Jd5v9oRm/fClwY6/WoKsEnffGdDaaV8Ov6WGRGMgfAkUGvXbtNn8GZKwkoy5
         u6aPQ7XbqQsAEIo6NxyK1KicBHONzauKDR6qr39/x+k344gfYCEWRrQshcAyeoeg06Td
         B9HP8/yvnuoYc7eD4oUu2zZbUgFJGpE9LiYhjAoPT+leXjr9VEJHYmPe+wibKTvsBiDg
         zOTBzKL+PAeXKm3gVAiECD/BG0vM4QvRh3vnOL69XzFaQuDXrqaEAb6oTpRjPyZzpAmf
         rCHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=NthGsbldEtAMwHyc0s+2D6ye20kfWkbW0LDJXWSvK+c=;
        b=bEr/DCvGWvCP0Q+vGEBjqsgVS+vq+B432JmBzycrGptphrzyMCPHFuQNrATLPaK40C
         Vcbk7N8gdXNPBmdp4w8Q4HPPxfCds/84PjVais3aPalNcMsw+thAVxR9YZ3VoCEL/8xv
         k22AVvqCQmQKgggewgUqSeJgx+sZeZxo3tQOeCvcgMPQk4mUeen+4MPbdDPYZI8iSF4L
         3GhfRuBUKWLlAMcL4CLlipWW0ltb+cK0+sD93xvb+fNnCrY6QKCFNlLgTNzOv11xOCRm
         ODyk+3uTQtfmg19uxyq8HpRl6ckPErPNDQrqvNaMzw3IBMkl2i6Xo4ATAsAh8ArmO0KD
         AZvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=iKUZu9un;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id s69si423827ybc.4.2020.09.19.20.43.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Sep 2020 20:43:53 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 08K3hSQJ020764
	for <clang-built-linux@googlegroups.com>; Sun, 20 Sep 2020 12:43:29 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 08K3hSQJ020764
X-Nifty-SrcIP: [209.85.214.172]
Received: by mail-pl1-f172.google.com with SMTP id y6so5119190plt.9
        for <clang-built-linux@googlegroups.com>; Sat, 19 Sep 2020 20:43:29 -0700 (PDT)
X-Received: by 2002:a17:90b:208:: with SMTP id fy8mr19938997pjb.153.1600573408216;
 Sat, 19 Sep 2020 20:43:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200919190258.3673246-1-andrew@lunn.ch>
In-Reply-To: <20200919190258.3673246-1-andrew@lunn.ch>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sun, 20 Sep 2020 12:42:51 +0900
X-Gmail-Original-Message-ID: <CAK7LNASY6hTDo8cuH5H_ExciEybBPbAuB3OxsmHbUUgoES94EA@mail.gmail.com>
Message-ID: <CAK7LNASY6hTDo8cuH5H_ExciEybBPbAuB3OxsmHbUUgoES94EA@mail.gmail.com>
Subject: Re: [PATCH RFC/RFT 0/2] W=1 by default for Ethernet PHY subsystem
To: Andrew Lunn <andrew@lunn.ch>
Cc: netdev <netdev@vger.kernel.org>, David Miller <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=iKUZu9un;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sun, Sep 20, 2020 at 4:03 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
> There is a movement to make the code base compile clean with W=1. Some
> subsystems are already clean. In order to keep them clean, we need
> developers to build new code with W=1 by default in these subsystems.
>
> This patchset refactors the core Makefile warning code to allow the
> additional warnings W=1 adds available to any Makefile. The Ethernet
> PHY subsystem Makefiles then make use of this to make W=1 the default
> for this subsystem.
>
> RFT since i've only tested with x86 and arm with a modern gcc. Is the
> code really clean for older compilers? For clang?


I appreciate your efforts for keeping your subsystems
clean for W=1 builds, and I hope this work will be
extended towards upper directory level,
drivers/net/phy -> drivers/net -> drivers/.


However, when we talk about W=1, we consider not only the current
option set in W=1, but also options that might be added
by future compilers because every GCC/Clang
release adds new warning options.



Let's say, the future release, GCC 14 would
add a new option -Wfoo-bar, which is
reasonable enough to be enabled by default,
but doing so would emit a lot of warnings
in the current kernel tree.

We cannot add -Wfoo-bar to W=0 right away,
because our general consensus is that
the normal build should be warning-free.


In the current routine, we add -Wfoo-bar to W=1
with hope we can gradually fix the code and
eventually migrate it to W=0.
It is not always easy to move W=1 options to W=0
when we have lots of code fixed.
At least, 0-day bot iterates compile tests with W=1,
so new code violating -Wfoo-bar would be blocked.


With this patch series applied, where should we
add -Wfoo-bar? Adding it to W=1 would emit warnings
under drivers/net/ since W=1 is now the default
for the net subsystem.

Do we require to fix the code under driver/net/ first?
Or, should we add it to W=2 temporarily, then move it to W=1
once we fix drivers/net/?



So, another idea might be hard-coding extra warnings
like drivers/gpu/drm/i915/Makefile.

For example, your subsystem already achieved
-Wmissing-declarations free.

You can add

   subdir-ccflags-y += -Wmissing-declarations

to drivers/net/phy/Makefile.

Once you fix all net drivers, you can move it to
the parent, drivers/net/Makefile.

Then, drivers/Makefile next, and if it reaches
the top directory level, we can move it to W=0.



Some W=1 options stay there just because we cannot
fix lots of code.
So, our code should be improved with regard to W=1
warnings, but we might need some clarification
about how to do it gradually.

Comments are appreciated.







> Andrew Lunn (2):
>   scripts: Makefile.extrawarn: Add W=1 warnings to a symbol
>   net: phylib: Enable W=1 by default
>
>  drivers/net/mdio/Makefile  |  3 +++
>  drivers/net/pcs/Makefile   |  3 +++
>  drivers/net/phy/Makefile   |  3 +++
>  scripts/Makefile.extrawarn | 33 ++++++++++++++++++---------------
>  4 files changed, 27 insertions(+), 15 deletions(-)
>
> --
> 2.28.0
>


--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASY6hTDo8cuH5H_ExciEybBPbAuB3OxsmHbUUgoES94EA%40mail.gmail.com.
