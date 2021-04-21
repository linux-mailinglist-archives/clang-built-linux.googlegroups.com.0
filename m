Return-Path: <clang-built-linux+bncBAABBR7ZQGCAMGQEZ5MKTSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFFB36736C
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 21:28:09 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id l11-20020a67ed0b0000b02901f3823e11e0sf6149727vsp.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 12:28:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619033288; cv=pass;
        d=google.com; s=arc-20160816;
        b=xnJPVJ5NJV73BGb+Ayw8GgUCoFDc3RVDaAZFl5XPbbjJQKTTuDlgxXVnj43CXvtsv4
         IakD9A7Qib1fbGqQ+zprzgrCwV5IZQFxFjo0EuOr/04AnPbglLtm/dwbEjBgJGgpG8zN
         iztgjDJ3EZWAHIsqvvqOXMaj0PTMKCMqPow/+NW/T/dopAjtdMJt3Mr7QbG4ymYtR82B
         PB4epk52mseJ/ifIt1Y9PadM2kICJ483d18reiM4boa7Ufp6sG77iFJB3jVZPiFeAkXF
         aYveR0VgQHiA+Wgm/mgzQKyhVn6N89BxvIOWdOgakmdnp+E/JwjtS/HLvNSsw/kx4MaC
         Kq6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=atzXl30cDYQ/WExqfccvzyUXWc8C91ot4QIUAEHhRWA=;
        b=A+ib7+SRGQFf6cmzYzHz/YuJwNXWgxhZ27btXi+Y/+PEHBFIwY1PLls4pLqNSh9TVS
         EnH0XnjrwfGtKYRR4Zl9EkXw8GYjvRIjEOQZnPZXbMR/Yey2zmOdIf1ppRmZHZMQYNhF
         X9jTK/BQGwgJKDH8mCPGdVBbkEBaZ38nd2ZxXCD2/WEY5386gi5+hWVEGCJviSJ3X3yZ
         ylVFnZFMdu2X/Lo/BqHq7AjjONVvEbUYBjo2IUyHe8JqWmO4ILLvJdy+WaDfmaVc70J9
         Zn5CO+HMAuj1DazrrDoK2PRyUPsDk6nLx4xmgrMC47rvAgWfnWPhvV1JufZvZZt0zESp
         /z4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=grLY+7ts;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=atzXl30cDYQ/WExqfccvzyUXWc8C91ot4QIUAEHhRWA=;
        b=W1Bfwprc2f4pSuOfoeLV5AEhrdM+amMvZAk/BgWGadKhtSAoh/D2Aq8oD00yFkzwq3
         5unigUB0Zi1/8M9GU1DE/46ueZ9TNFHxuQqhm+hnlmxdH0ZBbF4r6NRuVCNpqZkdhLzQ
         8agwFaYiu/5NYVSiuDSPoA260IDNxlhz3+OfktQHF2phalgIE4AVLxKlyIZ+M6rhvtDQ
         mqZZ5W4wmtpbWPEyusYknRSoVxHI12cs43NByRrmtKQrxKqFlBWHVs3vo/rrH6Jb0lxr
         eeBcRR/tXSEsxT/gGhtLqsXxn0I0Y/OlE4CQKmCT0FioF3rR+1npdrYLUnIAh8lnBPX+
         QbSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=atzXl30cDYQ/WExqfccvzyUXWc8C91ot4QIUAEHhRWA=;
        b=DYI1nTHhGLddrR8irdV5syS4RtntwwtVAtD6o5sUdZODPak7t/VNU+8M6U9x10j6kG
         xgJzHe1QGxyYbFzIZFxq9zp7bcb5fgau74TaRzA7cAolWkzbymVhcpkOki+o8I71hKAo
         /eLg/yHCljgSTG69l5jOfJZ1mUT/QMkR3Mv4M8WoDoOyYxYZaX8WIWIHXrQrZ5c1dv9D
         JSgxO+X4aPsqdcWdGGQeXZVn4OF/YuFlO8BO42W2HmgH3NqL9OGN8r4kjeAyrQyDISUL
         SgR1yadQM2XvmWfloSbrnPVQ6Y+h8hoCWHUMzo1DoPbofAz2FeQ82DvdV7nshMnkUaU8
         K37g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322VX3vi9lhkTdkjOyq3jadp8VhMX6ANs91X2stTgI7nlMq1MTH
	ZdJLGhEJR6GarP7e1xEdQrQ=
X-Google-Smtp-Source: ABdhPJzaWVsKMNZ/t8wv077UZqNeCetgzSGqFOvL3XoZCuEcLtwq8+9KcRf3KIw4XmKGvu5Txibwkw==
X-Received: by 2002:a1f:c345:: with SMTP id t66mr22134740vkf.20.1619033288107;
        Wed, 21 Apr 2021 12:28:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:72c2:: with SMTP id g2ls328236uap.2.gmail; Wed, 21 Apr
 2021 12:28:07 -0700 (PDT)
X-Received: by 2002:ab0:1464:: with SMTP id c33mr20015237uae.61.1619033287558;
        Wed, 21 Apr 2021 12:28:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619033287; cv=none;
        d=google.com; s=arc-20160816;
        b=ymveJI7u9y1G1KXml4puAa6FCk7SAxmvvDRNzvd1KlCpGyV1CPn3ZxpRW4bJZN3jMv
         AJixX2mjIU/kD0JfZ5LnipM0Dtb0ZGn4qVPFrEdYtkm/YjaOeiQc5md0l9QL4wDHRGXc
         VS+v/VfilN6hmqUSMlXQWtl0YIXuCJuqsKsNzd2Fgvgku3dVEvFDdkg5IQVxtwWPwkr0
         04v9DGKAflpaYoH8HTV6ELs0OfOZxB/uv1SHk0rbNXHwRoUa8XKJzQzt4Pfwp2t7jdxJ
         z57FNeRsw9CfosoKxxuHOm1MRc/6NJf5kvtHBDJ/xj2yPp217Ih+PtpzvSQKDm79dMmV
         3wbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tB8ssLss135JhlJQLfiVwtinWJ5FkqbNbOjzvqWq+/A=;
        b=YfMwRQtiIcweuLzevBKcXuirE0P0TOxXLTbGi0Uip+pX49lf27dqWD+8KUlZUuDEkK
         yd3abYp2QqoqwBMWgy1hzmTiA/w60Bh2Z8siCAmBTBNjOBj/ILXlwFBiz+D+0wJfjYq/
         aaA+7FFdqm5mrmV32ZShNslnJg6YgX3PnZqfIcw9vB6c+7hB8sptQCpzSvA0kkk0jj5w
         uXrqlOPYdVs2U161wzb5NUAulXHTzLIGR1eZj9e0b4zYLMnodCs4TBkpxBSvfjyZVDfF
         ud/PXTwL5I06xCI7YT+qFbsJkglriLLdkjm7G2sZeorx56FU582P78AkV6x90MZYCZR3
         es5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=grLY+7ts;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h19si341567vkf.5.2021.04.21.12.28.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Apr 2021 12:28:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 82ED761458
	for <clang-built-linux@googlegroups.com>; Wed, 21 Apr 2021 19:28:06 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id w186so18280539wmg.3
        for <clang-built-linux@googlegroups.com>; Wed, 21 Apr 2021 12:28:06 -0700 (PDT)
X-Received: by 2002:a05:600c:2282:: with SMTP id 2mr11641379wmf.84.1619033285096;
 Wed, 21 Apr 2021 12:28:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210421135215.3414589-1-arnd@kernel.org> <CAKwvOdk21V0qW_xQrWqQYnrw8nEr_+KTJnVZgL0gJsJiUf2Scw@mail.gmail.com>
In-Reply-To: <CAKwvOdk21V0qW_xQrWqQYnrw8nEr_+KTJnVZgL0gJsJiUf2Scw@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 21 Apr 2021 21:27:46 +0200
X-Gmail-Original-Message-ID: <CAK8P3a23w+8Hzj0v7c32ebH1Qj0xE3+uO+WUsmnLUM3QXfyV1A@mail.gmail.com>
Message-ID: <CAK8P3a23w+8Hzj0v7c32ebH1Qj0xE3+uO+WUsmnLUM3QXfyV1A@mail.gmail.com>
Subject: Re: [PATCH] memstick: r592: ignore kfifo_out() return code again
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Maxim Levitsky <maximlevitsky@gmail.com>, Alex Dubov <oakad@yahoo.com>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Nathan Chancellor <nathan@kernel.org>, 
	Jing Xiangfeng <jingxiangfeng@huawei.com>, Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, 
	linux-mmc <linux-mmc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=grLY+7ts;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Apr 21, 2021 at 7:17 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> On Wed, Apr 21, 2021 at 6:52 AM Arnd Bergmann <arnd@kernel.org> wrote:

> > The value was never checked here, and the purpose of the function
> > is only to flush the contents, so restore the old behavior but
> > add a cast to void and a comment, which hopefully warns with neither
> > gcc nor clang now.
> >
> > If anyone has an idea for how to fix it without ignoring the return
> > code, that is probably better.
>
> Should r592_flush_fifo_write be made to return an int, then callers of
> r592_flush_fifo_write percolate up their return code?
> r592_transfer_fifo_pio() seems to only return 0, but its callers are
> doing return code checking.

I looked into that but couldn't come up with anything useful to do with
the return code in the callers. kfifo_out() itself doesn't seem to
ever return an error but only the length.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a23w%2B8Hzj0v7c32ebH1Qj0xE3%2BuO%2BWUsmnLUM3QXfyV1A%40mail.gmail.com.
