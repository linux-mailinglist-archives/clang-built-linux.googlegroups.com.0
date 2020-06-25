Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFFD2P3QKGQERCTRWKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FFE20A2FA
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 18:32:21 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id r17sf6455839ybj.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 09:32:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593102741; cv=pass;
        d=google.com; s=arc-20160816;
        b=uQkvbLgpt0xazM75llXpPpgTcXu12tZBxpckBd1ykchHiCgjz75QDCSUktV/2D8QRO
         xCTrqRejyZuk4pdeqh6VhefPsb7zwScIeniH9vSXmLdI9X1gLiUsgbptTfxaKLrgNuP2
         IfbjZ96lPgJWddQJIXqbgveEhrKklh5SYIm2g6r2o03H/n46uPs7KLzqRwIiiVOolME/
         ua47TlQ1a06K6SH2WzL+N2vpe9BvzmXE5FhdrW7rxvq133ApeI+ihSCeWFgxo+3f0bKJ
         +64pMLulZO1CBVquvCQ4wOoTAORtm07FGSfSCpzTkpJ90aDn8q3nCf6FbXXnFUBLUecq
         TwWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=v6oyBsYpt8hr2Qr3Sa6R7QBV1Zo8Zr1H48k3pLqhiN4=;
        b=spyiHkjdB95tVWn7TfOEhJkOeleIQ6FEyh/QjN+U6wRqIlQqgpJL1uTdJ8CFe4CvbD
         WdM+gUZgnnZkTlbklrcnAwilhTRh5YO3PJAWvQqd3A0dL7bthxV5U9F2pOFFYmqfXd17
         h3X7NTgq1nbJgqC/cTjb6HKN+GndNmp6U2S03kPyhct8QiYqAYFhfUBkdmIQXoS0ssQi
         4KbFsagVoD768iW/btMhhH/oo2UUzTZX+WdJcKCJlnfebCbfQ/2o//QhTZYvJT2xPqYr
         xBEQ+ZZbXldrLDTJpAUfRrwtAqVQwkLuYOGIYbTJn8TZNbnHyXP7ToqqRDrrhWrBCoXu
         yCwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e9HsILcR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v6oyBsYpt8hr2Qr3Sa6R7QBV1Zo8Zr1H48k3pLqhiN4=;
        b=EqRz0imN/txtqsa++g/4qlmyKf+lw2ZH/AjdMPGNE6rSZtarTUhgFPJ8YBgzhw4r/O
         ca48t2n5qAphLI5ZF9atgootDcw0NwC93KOd+XsjntW7WLdLCytUw1ZQQBg1rUJGHVhZ
         QqKm/d8AKZLrpifCQKbXfY7caWCeg3mu+uHF/goHY9oPUU7Q0xiNZzWiVwTpZdLsy2ST
         mYNq4/19ElE9phUY1GcvLhCE9DhQiPK25k9ge+8WrJ0pOLAtGOIzShz0Jq7KUw69RnaS
         oitCQsequNoXGhI/NUNijW3mvfn8nBlPCns3TDoZzPcleUP7kanE7IBGnF+jelMb57yL
         sNHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v6oyBsYpt8hr2Qr3Sa6R7QBV1Zo8Zr1H48k3pLqhiN4=;
        b=SO8b3J/I3hsQ2Xc99g2VMjlc/U8qVnu4gfzPQnlkpoEZV2D3HtKddgSmKSs12r2+H4
         4YykEUsF6huBjPOSz+1Yjmt4qkrnwoiSeGcWnfbYQfp59f7F8zdUOCoLoFyfpcm41Hbm
         SyeG2s2pUUQHIqatp9JpJC2P35YDSydMo2LyzmKwiZpYvi/NXuSvvc+YFQRURfiu1bFp
         /vf5onLBTvRXZslgtcUyyIjQFBBwmjJ0QJ7uu9F3I33NpXqUPe+FNiPP7uRjlbvvaSK4
         sTyAj+41sFUZblaw30+O5rclEVm65GpGr7R+P8xhY+L4sfu7ewSIYUF0NeqsZwFPpLqC
         qUXQ==
X-Gm-Message-State: AOAM5308/9G0iU3buCwfCWpY5bhYLdCQBhNfusIn8i2qixIgnCr0xsU5
	+jYF//4+e1hUHJf+whhqvEo=
X-Google-Smtp-Source: ABdhPJzS6TRvlQQPig/IbpPWiV0yyX95wFXD78BVl8JgN39w9XL4UoE44QLoauNk11LATo5oLB4Rxw==
X-Received: by 2002:a25:a162:: with SMTP id z89mr57041562ybh.374.1593102740847;
        Thu, 25 Jun 2020 09:32:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4707:: with SMTP id u7ls2213528yba.5.gmail; Thu, 25 Jun
 2020 09:32:20 -0700 (PDT)
X-Received: by 2002:a25:8583:: with SMTP id x3mr58471402ybk.83.1593102740537;
        Thu, 25 Jun 2020 09:32:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593102740; cv=none;
        d=google.com; s=arc-20160816;
        b=YY0Xf9vhPoYeZ6zfwaNL73ClJ+A6EpHkHR5ax3HNvdgqVCQzAAQjD3pIwBd6M5cWLV
         RFvx5KsEXz53k1P/3/GcloYhKfTLcoBduz7Uz6l26tmpczGqQtC9lIqsU5OVfJ0hT/p0
         9+TBWOYKXUjOatbYW2n3VSTGQgHn0e3q9Dgcal1ElZKIra/8/yREe5OU3seADRUaIEQB
         pS8SG1est+0kH6eHQobVp988zCmjLuaNnjZFsuxKW83EX3oXKRmK0XHh1lDxLpGX2w9q
         8qDv5moCHHlTfR5xJyb897ijDc11OPnIUvdY3mTN31zNGMQYkEp3qdycz7o0s/wAp5uU
         rnkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=d+K5u9P3ZstJbh0afCn3t6yP6SQdou+jClfehHgXvl0=;
        b=g+MStY8dzYDIdxJqHVm3bEdqw/hjjPisJLrURT5fqa4Bd8t7YEohF14meo7EUapf/p
         oDmrNtnDIIFYmx1oYt2VUP37DfJ5O72HJF6U5n2ulmhRBvmbSWwSbOoV9KZ2+Q+GRXAB
         P5+AvUAFyfp18fpJBXR4qXibCuLugZc9NPtw66DLIAVZH/zkW2qUrP/Fdj5KNqD13pW4
         CXr2YPrbW/9NJFOgFKxFrfW5jVDo1GkMbWuqf1SfjbeX2tC5BGO3NdLRa65m08Mi4fQv
         gSLsuoNfW+rbJ+OpfkGNQJOEpMaxD6qSJXiAc3Tc3wLxJqq3/JO33h3GdgxRTfuTBMe3
         SHsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e9HsILcR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id v16si1936149ybe.2.2020.06.25.09.32.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 09:32:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id f2so3007532plr.8
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 09:32:20 -0700 (PDT)
X-Received: by 2002:a17:902:b698:: with SMTP id c24mr32946349pls.223.1593102739486;
 Thu, 25 Jun 2020 09:32:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200624035920.835571-1-natechancellor@gmail.com> <1bbb6956-d9de-e0c8-5b45-20b6fecc2189@infradead.org>
In-Reply-To: <1bbb6956-d9de-e0c8-5b45-20b6fecc2189@infradead.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 25 Jun 2020 09:32:07 -0700
Message-ID: <CAKwvOd=5nE6fkwp8iw0JqwQFp5KcUaC7RyEf2L6+tkbp9smsvg@mail.gmail.com>
Subject: Re: [PATCH] powerpc/boot: Use address-of operator on section symbols
To: Geoff Levand <geoff@infradead.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Joel Stanley <joel@jms.id.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=e9HsILcR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Jun 24, 2020 at 6:19 PM Geoff Levand <geoff@infradead.org> wrote:
>
> Hi Nathan,
>
> On 6/23/20 8:59 PM, Nathan Chancellor wrote:
> > These are not true arrays, they are linker defined symbols, which are
> > just addresses.  Using the address of operator silences the warning
> > and does not change the resulting assembly with either clang/ld.lld
> > or gcc/ld (tested with diff + objdump -Dr).
>
> Thanks for your patch.  I tested this patch applied to v5.8-rc2 on a
> PS3 and it seems OK.

PS3?  Folks still have ones that can boot Linux?  Those ****ers took
my Yellow Dog Linux away from me; I enjoyed depositing that settlement
check!  Hopefully by now, folks have figured out how to roll back the
system firmware?

>
> Tested-by: Geoff Levand <geoff@infradead.org>
>
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D5nE6fkwp8iw0JqwQFp5KcUaC7RyEf2L6%2Btkbp9smsvg%40mail.gmail.com.
