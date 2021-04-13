Return-Path: <clang-built-linux+bncBAABBKWL22BQMGQECVWF5II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A92235E0F0
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 16:07:39 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id 12-20020aca100c0000b029010209bb851esf4884555oiq.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 07:07:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618322858; cv=pass;
        d=google.com; s=arc-20160816;
        b=aGnksLgkg1McE6qnq1JUHGpU8+uIKGegDU+ACdIMDM7S8qo3VhXuUI8L77BvQEdqN8
         1M4saemEEM3fnSwMx28JgY9jhASF+gPvXDu/qVmRMi1qocZjtANa+HM+Suj6EFLUCdEw
         1ZMZXtidGeF6Aj4BVCZjhxtmb71pJHw9wkgm2vX9wMgOj0QlK9jqCnTb95jGz6mCexip
         NDVyZFMhxlZPOtQiI4M+J0w1OfFtEr6sN6N93Y2bJ/r7gOYTbLm6gEkYzSOtgjNuzsWC
         P9RyRu6Lnt3PB01FJzd0PZIBwO++xlvCfUP/MNtw1BKcdkE8hAZa2cGGlLomIyg2nvB7
         gOTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=vLIxUp3yVjA1Pb/GNLla90YFR04eRN0EqdoFeS0s2oY=;
        b=vh64TvQOH8nKT5O1l+7BPYAkDvu4kWFY3lXFd4gs34HDhQVc37/KvExTvzpFQP0Q98
         xNsludp0e0cYkq66atYYKCxfGgtPhLPuWYZqKIrDSwj9R/aBC9ijIjX1nHssZfaNDqPm
         BiSTu9U3mB5dTpW/uifuHutKy9bKmpBVQ7Xc9Zo5voYZhGmHuMYL5IW2+Woz3c28V0rm
         L3F6+jccJ1UAE8PblOK4FK0+cO8gQBvMEyShScIs6U4WDu/y+tROEfBuj3OcZGVn8l66
         CeXY9EtzkUFlg0M/PSWD5VLROehG5BX2LFhq2ZyGxnHGaYOLZIzwhovtkDBF3lmFoTtG
         LGkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uyopM934;
       spf=pass (google.com: domain of guoren@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=guoren@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vLIxUp3yVjA1Pb/GNLla90YFR04eRN0EqdoFeS0s2oY=;
        b=Jrqw2ZMIBwkjFBV9lBgADhCjJSu7LV/H8ktkef+Y2E8QR00Klu5AYdzvNTLXH3HMSj
         vWab1EEepyLvvTThMb+8UtXgsMD0JztR6yvHdyOeoRwd0f6WPSM2VZwrQbrUun7evvS8
         Rk9pS66E6oCHJttdQnNpbKuB71LXgtxjRcSC7zIXH+7GHROJ+FNhIyCE88apWLUv5iGT
         VBGjKVkPLCO/4EMCocTfKTx21wsA96qt0U0Y4ZnVgUqHMSKf+3Pb8sZ0ehcVbbSJykya
         3gXhgLuu/rkRHt2E/1PjbuKckPljLj/FV/0Gt67O8OAcRd1tUStVlSwvGE2oa60Y8b+5
         IcGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vLIxUp3yVjA1Pb/GNLla90YFR04eRN0EqdoFeS0s2oY=;
        b=fgsA8avUoIWH3XKPge24EU58NWoLTwOZXJXv+OB6sQGZLryBjk7fMUImpWJfOB5U0w
         5cYA5pIvVWkhKdOx5+PpBWoWBhpzNZkJFiXFcGx5vhDMAIUecTY9oTE7oMFRTrb4kKPv
         r7CfD37s7NEWJHDtPSpX5dFFd49UaQtY71p9fYeg6tkeKQSEO3v0Z3c46ADTk09R/ryC
         CdYaLxJywJVbAwW6AvAR/kZOgeTu7+CO9dqrm9PsqouIDXxmKLaVycxB8TtT5aTaYTge
         4xYW+c9JaUWfi+dvfBpCQyr9zUiKKd2ca3YXL/khD6jU74KD6wxuSOtTxuo3rgD3DL52
         e0cw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wGtijXRH8tYwvtJM5PPGt6gI1H72HfXPNTAYCS+XvH3TlQlmq
	SmDOE8/mBZYuzjRcORzGeBk=
X-Google-Smtp-Source: ABdhPJzzSNUTHE5gdBMr/+QeaAfPe4ffQ6wM00gHmR6wXgtlV/3DeWKK96mGXfQUuHd8ek8wfkoP1A==
X-Received: by 2002:a9d:4e95:: with SMTP id v21mr27247255otk.361.1618322858181;
        Tue, 13 Apr 2021 07:07:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:638a:: with SMTP id w10ls37378otk.6.gmail; Tue, 13 Apr
 2021 07:07:37 -0700 (PDT)
X-Received: by 2002:a9d:4c98:: with SMTP id m24mr11212148otf.84.1618322857716;
        Tue, 13 Apr 2021 07:07:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618322857; cv=none;
        d=google.com; s=arc-20160816;
        b=WD8OV7hN/I8yvwylH1wTy8Qe5rMX65FWYW+xKE3IjPHMqSn2zNJ22auMs0NfLAyo+0
         eat9S+z8LSqg/OasBNaOXNihraqLa2f1K1SFAku80SCJtrZVidZu29wwAhEsGf0EGi5U
         sMOY8um+eOsctSZ3sh8OXKBct1MWUAeJrKV7Rz+dit83Vmow/lkJQzRBkq4kV1XoNyVZ
         ybPvIE2Af8BGsk+5GLK8Crkoxny2re+D+5iJCKciXZjmHV2XP1BIH5rtSOHwjzAZEA0L
         7YRARX7zlCDY+SZmxuyc0Ig8cigLHha/wRdy3CrhMxn30nreFB2hEn2pr88AP+/OvLiW
         RcFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5IfHtudpA7LBPmd06k0ngVD2eNcVEG8QjedX4OjPGwM=;
        b=KIM/ZjexLFkKHWu02NKdd3ImcycCNQ2b71JXIiKbmNiJBsDOEzmZG0W5NbqW3vL4Rz
         oijCFgpgTnODJw2dlBEyPwoFMvYJ0MuxeH5C0L0os1uJsFGz/5aTSGfz6XrW3F1GgmbY
         +V3xsr0OqQ70d6aaTIcaZaSV1gctf6qwK0glrWb8Bvo66pdkNQtrw+xbNmOWQQdCM4Vd
         dt/5J92PiI5hoPQzjg4n5yL7v5Vm43VgEcj/09Ei1EccQhTL4aS/zPwVtQQs4KwaI5KR
         aFzWAk525znzkSniNcWhrbozZ3DsZsClSrJ9PwxPluXoSSSAZGTpDHbAjzEirqxpuDIr
         zhVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uyopM934;
       spf=pass (google.com: domain of guoren@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=guoren@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a4si700413oiw.5.2021.04.13.07.07.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 07:07:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of guoren@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DCFC6613B7
	for <clang-built-linux@googlegroups.com>; Tue, 13 Apr 2021 14:07:36 +0000 (UTC)
Received: by mail-oi1-f179.google.com with SMTP id m13so17072265oiw.13
        for <clang-built-linux@googlegroups.com>; Tue, 13 Apr 2021 07:07:36 -0700 (PDT)
X-Received: by 2002:aca:4284:: with SMTP id p126mr142280oia.178.1618322856211;
 Tue, 13 Apr 2021 07:07:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210413115439.1011560-1-schnelle@linux.ibm.com>
 <CAK8P3a1WTZOYpJ2TSjnbytQJWgtfwkQ8bXXdnqCnOn6ugJqN_w@mail.gmail.com>
 <84ab737edbe13d390373850bf317920b3a486b87.camel@linux.ibm.com>
 <CAK8P3a2NR2nhEffFQJdMq2Do_g2ji-7p3+iWyzw+aXD6gov05w@mail.gmail.com>
 <11ead5c2c73c42cbbeef32966bc7e5c2@AcuMS.aculab.com> <CAK8P3a3PK9zyeP4ymELtc2ZYnymECoACiigw9Za+pvSJpCk5=g@mail.gmail.com>
In-Reply-To: <CAK8P3a3PK9zyeP4ymELtc2ZYnymECoACiigw9Za+pvSJpCk5=g@mail.gmail.com>
From: Guo Ren <guoren@kernel.org>
Date: Tue, 13 Apr 2021 22:07:24 +0800
X-Gmail-Original-Message-ID: <CAJF2gTT53uXXF7aU8+Sr6KZ-+OYDrtESQi8G-tcFZ2c0QnJ+bw@mail.gmail.com>
Message-ID: <CAJF2gTT53uXXF7aU8+Sr6KZ-+OYDrtESQi8G-tcFZ2c0QnJ+bw@mail.gmail.com>
Subject: Re: [PATCH] asm-generic/io.h: Silence -Wnull-pointer-arithmetic
 warning on PCI_IOBASE
To: Arnd Bergmann <arnd@arndb.de>
Cc: David Laight <David.Laight@aculab.com>, Niklas Schnelle <schnelle@linux.ibm.com>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-s390 <linux-s390@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: guoren@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=uyopM934;       spf=pass
 (google.com: domain of guoren@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=guoren@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Apr 13, 2021 at 9:40 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Tue, Apr 13, 2021 at 3:06 PM David Laight <David.Laight@aculab.com> wrote:
> >
> > From: Arnd Bergmann
> > > Sent: 13 April 2021 13:58
> > ...
> > > The remaining ones (csky, m68k, sparc32) need to be inspected
> > > manually to see if they currently support PCI I/O space but in
> > > fact use address zero as the base (with large resources) or they
> > > should also turn the operations into a NOP.
> >
> > I'd expect sparc32 to use an ASI to access PCI IO space.
> > I can't quite remember whether IO space was supported at all.
>
> I see this bit in arch/sparc/kernel/leon_pci.c
>
>  * PCI Memory and Prefetchable Memory is direct-mapped. However I/O Space is
>  * accessed through a Window which is translated to low 64KB in PCI space, the
>  * first 4KB is not used so 60KB is available.
> ...
>         pci_add_resource_offset(&resources, &info->io_space,
>                                 info->io_space.start - 0x1000);
>
> which means that there is I/O space, which gets accessed through whichever
> method readb() uses. Having the offset equal to the resource means that
> the '(void *)0' start is correct.
>
> As this leaves only two others, I checked those as well:
>
> csky does not actually have a PCI host bridge driver at the moment, so
> we don't care about breaking port access on it it, and I would suggest
> leaving I/O port access disabled. (Added Guo Ren to Cc for confirmation).
Yes, we haven't reserved the PCI_IO region in the VM layout.

>
> m68k only supports PCI on coldfire M54xx, and this variant does set
> a PCI_IOBASE after all. The normal MMU based m68k have no PCI
> and do define their out inb/outb/..., so nothing changes for them.
>
> To summarize: only sparc32 needs to set PCI_IOBASE to zero, everyone
> else should just WARN_ONCE() or return 0xff/0xffff/0xffffffff.
>
>         Arnd



-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJF2gTT53uXXF7aU8%2BSr6KZ-%2BOYDrtESQi8G-tcFZ2c0QnJ%2Bbw%40mail.gmail.com.
