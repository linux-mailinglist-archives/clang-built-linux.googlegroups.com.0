Return-Path: <clang-built-linux+bncBAABB66V3SDQMGQEOYYMP2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD773D026C
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 21:58:53 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id s3-20020a17090a5d03b02901762367797bsf279882pji.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 12:58:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626811132; cv=pass;
        d=google.com; s=arc-20160816;
        b=MLIG+aBFON+sZVf/Jf1wq9prhr0/9uREOQiECbe46c5ixdf3hNzyYwawObSx3oKCX6
         R0kmvtNL835zDq4EF3/QFOPqQQj0P59bn7LK6g/DWzEkdHAZjpq8/tMhe4i0VU29SUmV
         uhT2ptjKqwvb/Ttv8grY6Xu8uXcNSGa/PVPmya9hAEdcKtllBmTgfmTzn+rvvdY1P3YL
         OPeiMOvMbB9wsSJLoT5e83O0qvG3RcSJ2FSryVHrZgYwhMnhs8yiLMKxRBinFBLFBZnQ
         sbchyDSbaTYZDu3SxmQo2N6Ki3VD4EkyqC2mOIKRvzhioLK7tYGCNg1LkLRZn3WaGODS
         f3eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=S/TJmVuBWx4ejOPqZ9UEzOz+E9GudW/M195ZHoQWn3o=;
        b=0oRzc8j2DGSaB3aL4usxYDqFrmMQXKlO40PDYChhCtHaGJaJKYimC1CfCcA9Z7tx54
         JeCEkNi/5wMIcJNhrCCjvifNB5S4KUgWOFqNY7dn67e3/GL/wCwut3XgFD4+UtncOVkf
         D3B/db/QRUBHcZQaoRenQ+vTjcqnaaJDIcQN20pHSyzvhkAjsl90zDOjlp5I44Jsmt78
         ek5rzV3YmIJ37hsdFXwd7+yr3AM8cj1hQz9wT4wNbVm2CZA/1G46DVXdnCu3iSTopXsq
         y6/HW+yVD41AN8+G7iqOl8gMT9SqEUPnsT881HuSFHdLe/jQKPhP28HHSmfY3TYTCsZy
         BF7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MVTeDBI5;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S/TJmVuBWx4ejOPqZ9UEzOz+E9GudW/M195ZHoQWn3o=;
        b=HqhhJ1SKTywZqyepxx+oPjvw74lvk3pdqK8aUYdZCFf8Yb+aXXg6bPlkieo4Cqi50f
         ajqet7NC9wex68sD8+8DfM1ZQzxMlL0pjSKoyZJW26dhoNUyWxIu9XcsimgvHpDw2IEs
         VkeSGCrfUrgOqISbg5c53wndsI2Pyi0xjFD5llclpZ1GksASWUjAgiD8q6WSVyfzBP5e
         6niQe27/OrchPZ8EXb27CrfUjfmURqQj/p3W7PHq6mh81n48lK3aaijzbFPxNAHSCMVK
         7o+Fe1c079vGAHvkG65YVaPLMnpRP/z1lxO8rqj5tfqThWv529mb3B2Gl6Lbil3QczSo
         UAsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S/TJmVuBWx4ejOPqZ9UEzOz+E9GudW/M195ZHoQWn3o=;
        b=qiw8B9cpe8iy5UtXMh4e1A7qLcHQiLAHBBxKXWumbkArRdex5ePWuexvVC7dZH5Dno
         LUbZtOUtfFPrx6H7a/Jcljdgk/lF2iGmM2vOni1W4uKpPJzipe3ULIlQZM4qL9u9fp6w
         8vniin/cDlFm2dt1rW3vvKCHgjhGsUNSQEJVS3iqmaG/AmyKt8xmK0Og/2VgvItxz0xO
         X9vxEzYY2/efhwCN5J+aXPjWbVrEE7Scy7pO1ALXGQapJGeklVUDzeFN7Sz9u4K82w9k
         z1WNLEcyN1JBocMKtV9RMDO6WQ++lHeFodzxIgkWT66a+61K4/zJMJ8BIk4rEilmEFz1
         omxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533DgScGiqh2mOV3MYKQxVK/WfDGcRD0RHSd6TYiQQW12fhzJlbi
	lQFaCjxkBd0G7pp1Ew94ue0=
X-Google-Smtp-Source: ABdhPJzSRAFCYU7r9SRRFu2GkoqRO+9VLDvj9QgiLROM1/mX/C6DEflhg3D/qh7DRlO4389rcZgrcw==
X-Received: by 2002:a17:90b:46cc:: with SMTP id jx12mr104769pjb.26.1626811131969;
        Tue, 20 Jul 2021 12:58:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:20cc:: with SMTP id i12ls2877782plb.8.gmail; Tue, 20
 Jul 2021 12:58:51 -0700 (PDT)
X-Received: by 2002:a17:90a:da05:: with SMTP id e5mr84454pjv.176.1626811131465;
        Tue, 20 Jul 2021 12:58:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626811131; cv=none;
        d=google.com; s=arc-20160816;
        b=OME+eJl+gwfTqw0QMQ0nKqGdLA8ciOPaWj80T9YrxaM855wqomdR3/hz5MyfKEuFJW
         I/ALiUBlx6xKY8POVo1b4uUZHZDT291PswLBqTfEz1FEDgRur1pH7DfQdwneJ6Ee7h6g
         MEMndgogp2SoojuXcite+FarvbNOpHNtScYyGJ4pYNS0hsTzcr14Q3PmnEZtY+hTHdg1
         jVMi6xmXuZq7qK2ZloYGZHBDRiz5XsS1xNGMqhMeZRaDt2/UgtegLdxQYKXo5XGw7KlY
         hU3yMHmBUhVe2bk6ihwyjua4s6xK1VB8bS/F2VKIghQouiy/zFpAo32ysX/cVlSlnLjH
         O63A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1NAK6ReYdddIOpKLpri57J2o7TSWeKUSgE8SLOuORyc=;
        b=SuuQUIqaZw0gGOv45LlhTzTcR8c9CDZN8k7yPRLNUMsGz4MYoBBLp6y40b8FbHcPF+
         piJmIPJ8Q1oC/WXC3DaPw+en0JQVmw4J9hJB0Pd0/ANGSfC7KnSCIWmmum0n3WvRMO7x
         3QIK1Th5JlSZkJOCZsxG0DId18/Kl3YMaaXIkQtlIhs1TJDO5vJh/AcHK+gDskY4z41Y
         ZYBdknQhkIAu8Uxcvww0KUUJOicROQBkrWuG1IvwXXNBqf0YvY8SlwFjXJc0Ua3Nee/c
         17eY0etk93ji/NiBMGdh9j3znPxCHDDbziEx5xg+8IP+YxVvhXZ+K2xwgYVq2n3G011N
         4ooA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MVTeDBI5;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 136si734103pfz.2.2021.07.20.12.58.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Jul 2021 12:58:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2D4E2611CE
	for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 19:58:51 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id a23-20020a05600c2257b0290236ec98bebaso237785wmm.1
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 12:58:51 -0700 (PDT)
X-Received: by 2002:a1c:c90f:: with SMTP id f15mr123895wmb.142.1626811129717;
 Tue, 20 Jul 2021 12:58:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
In-Reply-To: <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 20 Jul 2021 21:58:32 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3=JBQow-Ws6tt81k93aw+OCV5C2CtSWxASkv=iQZPGUw@mail.gmail.com>
Message-ID: <CAK8P3a3=JBQow-Ws6tt81k93aw+OCV5C2CtSWxASkv=iQZPGUw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=MVTeDBI5;       spf=pass
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

On Tue, Jul 20, 2021 at 7:43 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Tue, Jul 20, 2021 at 1:05 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> We do most of the other heavy lifting in this area in Kconfig anyway,
> why not add that compiler choice?
>
> Obviously it would be gated by the tests to see which compilers are
> _installed_ (and that they are valid versions), so that it doesn't ask
> stupid things ("do you want gcc or clang" when only one of them is
> installed and/or viable).

I don't see a good way of making Kconfig options both select the
compiler and defining variables based on the compiler, since that
would mean teaching Kconfig about re-evaluating all compiler
dependent settings whenever the first option changes.

I do have another idea that I think would work though.

> Hmm? So then any "LLVM=1" thing would be about the "make config"
> stage, not the actual build stage.
>
> (It has annoyed me for years that if you want to cross-compile, you
> first have to do "make ARCH=xyz config" and then remember to do "make
> ARCH=xyz" for the build too, but I cross-compile so seldom that I've
> never really cared).

The best thing that I have come up with is a pre-configure step, where
an object tree gets seeded with a makefile fragment that gets included
for any 'make' invocation. This would set 'ARCH=', 'CROSS_COMPILE',
'CC=' and possibly any other option that gets passed to 'make' as
a variable and has to exist before calling 'make *config'.

This is probably the easiest part here, and it lets you set up multiple
object directories in which you can then do

make O=obj-x86 defconfig vmlinux modules -skj32
make O=obj-x86-clang
make O=obj-arm64 randconfig
...

without ever having to type the additional CC/CROSS_COMPILE/LLVM
variables again.

One step further is the script that automatically finds a working toolchain
for a given architecture and sets up that object directory accordingly,
or even downloads a working cross-toolchain from kernel.org when
asked to do that.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3%3DJBQow-Ws6tt81k93aw%2BOCV5C2CtSWxASkv%3DiQZPGUw%40mail.gmail.com.
