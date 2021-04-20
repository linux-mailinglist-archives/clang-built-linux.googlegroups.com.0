Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBP5Y7WBQMGQE3U6PTTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5DD366251
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 00:57:04 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id c5-20020a0ca9c50000b02901aede9b5061sf413972qvb.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 15:57:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618959423; cv=pass;
        d=google.com; s=arc-20160816;
        b=s/Ilir38CayFsXCJXWMLoos2Mr1QvVNRBMdZ8JYA9sAid+MA2ooyQfysfohzB2QkAO
         qNUCbKb0DdepxHxKnMw0tBZg/8VV6Sz0O/B2OUNDF+0CNJlkVcObFY0wcQiVrgwZO8R+
         Df126c8y5c9cUC1ND/D1W03TsTvI5Ztraq4k6H1FCCDVuIzEVGWh33pNe8lUh9Bqcyfq
         4gnunVcjPZ8ivoNpSd3hgt0FBOSFWrS3S2XHdmlAOXnYOUTRi/bkWmdK8M6GqekHLavV
         z1L3ahgi4gpgg4XmMVV6ApBFUV33e2U/AP0z47H7HYQsWBkBxdOxtArev/VK5MDxnS7C
         ZUDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yKE4foKwYawI7oMQ+yAh9htUIUIKL/j2L5pOehHPEAM=;
        b=jIDaIE7JddWcvuEjmJYb3g4pwRFot0IgzHLvEysViQAyw/NqmKDbCQFngVLtnJBJSo
         E6j4EhjYHZHtFHVy+9T2u/68aybWyBR+Muu0Y/xdDF128xNZhq2+BL0HqLygpA2SO6OZ
         PQL7Q54ojBmXD5JqAButhmyk1vWuCHZT/AyTgHn7oKhB/0oG9MI1wCjJuS0Fb/Lgunb6
         /DHbNIMjz6k+DP5MTyFVkYXbbClbkkJ3/U48zo38Jvq3KJB0yiXvHRJeY4DI+Z0yq8rZ
         HjbHGSN2fzqTcrMoLBC+R58VXhyH4O/N+JBgLusfZzF2Eq6EWn6lpyozZsXAxb4djvKx
         +IyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aGuxYAxw;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yKE4foKwYawI7oMQ+yAh9htUIUIKL/j2L5pOehHPEAM=;
        b=LwfEUxkuh994BH9etbJn1MkPjvWy+tnwEpTLUtju9Zz8++zSkNVyKLAxhKOTJVxKyt
         LaGzsgYUdue3oxFx4Po9EzIMF41ilTDvZP/tv2OOJRslc9Vi77JX07nYQCquYDYxwz43
         MYYbodUC9DhsYbbuz885tZyY1FD1LblVPrMYRR75dbbzhkqFVgQf0iAt4WPT9IeIBugI
         KOaEZmM5m3pC7ND7JsKX3cSadavEqoGb5NtnQuSppA3Bt87G1xfsNuLju3VdzM2SiU5Z
         ie6uZREZUuBg0XJEqJXC53WtOBKP12VoHrLN7wCMkzD2ntFyO3aIwVOS6uwe6VUeNzwW
         K2Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yKE4foKwYawI7oMQ+yAh9htUIUIKL/j2L5pOehHPEAM=;
        b=feD6YpsSRdFga9c76YvWoiP39btivYf+I5DRWFm36cAE/n2VAqaLa85x9aOCP6s2mk
         uz7CsbqO7yVnKYP3b+bmSC+Wph3erkIkQDpOxqi9s0FDUwQzA0RSU0yrKgYVtPT0x7V0
         Q1/zBSYf9+2tLbbMEkwsIjN8gEMPMZbkO2bawAW9zyv7h4Vo8Hy8+gCUgNKrOVTSBbVY
         Zg0NEKDHj8dbXOH4hC96QzUjYM9CYk8B4ryEILNe6uKvCge2mn516wMfjLXvpaD8vXrK
         kbyi9gVCeRPRReCB7o87wvp2dZbqlTHKe6T9adO7ntvZ9auG/PJT34T4YLGLh0c5Ftgg
         ywlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531o11q1d8AoQILskg/3yZS4eK4Z6lM2znfz7xY4PF+HzWKI2fyf
	yPrWLlhQnsh5a7CK2pGvABw=
X-Google-Smtp-Source: ABdhPJy+WEk7o3Hg2cBJHJbHUKKE+T8AlLbBU8DZsT6c64p978FZdW24T0gqzLVr0MMAHpKJ2isyIw==
X-Received: by 2002:a37:bc6:: with SMTP id 189mr13494828qkl.349.1618959423390;
        Tue, 20 Apr 2021 15:57:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:142e:: with SMTP id k14ls135087qkj.6.gmail; Tue, 20
 Apr 2021 15:57:03 -0700 (PDT)
X-Received: by 2002:a05:620a:1456:: with SMTP id i22mr13334699qkl.400.1618959423016;
        Tue, 20 Apr 2021 15:57:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618959423; cv=none;
        d=google.com; s=arc-20160816;
        b=ZEIRPT/iQ7nLqObP0/zyXRppD+RxnJZJ98458eFW/+ITDRNakNuMNaNmMwL5DBr9G8
         8MoItMIoKX0Ladq+ixEbRKwPnECJMNrMb5MhX4MRl6lOBbC3/Sc0tD4fZ5tq/C59WXK/
         XuoLhhy3K/rsftJxAxueSyid6Qob31b19PxB2jGXtRs7GIjvFGFYEMxm1g54wbl17E8w
         uOy+3wEwWuHFpQwVmo7ElEekXfucF7I1FM9TpK8SBZrLB+lvMFkjcIoDFngavf/fwebJ
         /FwpVBE9ymDDwxULAGr7LMo9dCFgQAK50Y8LuMd7B2dJ4k2tPUWea+afxjlGccxU5fLB
         OSSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LnQ53sg5fwiQMRw1Pm3HtTObLBLrjcyC95xl1vP82O8=;
        b=y+vusmBDZuArOGwB2lMJ8bhoyB1UdU4cUp6inY9mx/IFpCzwtltsAqrojIf0Rsbqc/
         qTkFm45pr8Mdoi2pjGB4SJudDfWln+Q3jsMCuhYseEEKMO5rF87hS5NdgDvd/miHyWJv
         X+6K4hXJKSSlj8sSxvSQKSCx3TDcFzz7nWsSmQmCZ1ujEO1qXv3DS3T60rJfuICsNMbJ
         3k5j96fphefAHr7Xfh3WtMR1ZxG3dOhsCvmCoNN67Bjatj3gUtkatkkwCIX63URe6ZqY
         5plXrqmetkydUGZng+EefOEeAeSJPRBp2X606n7u9Zn0WkN/6wIEfFLDOyDDYzTmNroy
         8PaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aGuxYAxw;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id s65si72423qkc.2.2021.04.20.15.57.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Apr 2021 15:57:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-477-vzBdi_YsOOSuKZd02ektjw-1; Tue, 20 Apr 2021 18:56:21 -0400
X-MC-Unique: vzBdi_YsOOSuKZd02ektjw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8A72E80D6A8;
	Tue, 20 Apr 2021 22:55:54 +0000 (UTC)
Received: from treble (ovpn-114-107.rdu2.redhat.com [10.10.114.107])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DBF9D5D9C0;
	Tue, 20 Apr 2021 22:55:52 +0000 (UTC)
Date: Tue, 20 Apr 2021 17:55:50 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 01/15] objtool: Find a destination for jumps beyond the
 section end
Message-ID: <20210420225550.szbmrpwv6awd7tp5@treble>
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-2-samitolvanen@google.com>
 <20210420181412.3g5dsyhggxnvif7k@treble>
 <CABCJKudO9Ovuih3ieQ70w8y744Cg3tPnciVBhCuuBPuhq4i3Xg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKudO9Ovuih3ieQ70w8y744Cg3tPnciVBhCuuBPuhq4i3Xg@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=aGuxYAxw;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Apr 20, 2021 at 01:25:43PM -0700, Sami Tolvanen wrote:
> On Tue, Apr 20, 2021 at 11:14 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > On Fri, Apr 16, 2021 at 01:38:30PM -0700, Sami Tolvanen wrote:
> > > With -ffunction-sections, Clang can generate a jump beyond the end of
> > > a section when the section ends in an unreachable instruction.
> >
> > Why?  Can you show an example?
> 
> Here's the warning I'm seeing when building allyesconfig + CFI:
> 
> vmlinux.o: warning: objtool:
> rockchip_spi_transfer_one.f088382d97b74759d70e27e891fe8f1c()+0x149:
> can't find jump dest instruction at
> .text.rockchip_spi_transfer_one.f088382d97b74759d70e27e891fe8f1c+0x7dc
> 
> $ objdump -d -r -j
> .text.rockchip_spi_transfer_one.f088382d97b74759d70e27e891fe8f1c
> vmlinux.o
> 0000000000000000 <rockchip_spi_transfer_one.f088382d97b74759d70e27e891fe8f1c>:
>   ...
>  149:   0f 85 8d 06 00 00       jne    7dc <.compoundliteral.4>
>   ...
>  7d7:   e8 00 00 00 00          callq  7dc <.compoundliteral.4>
>                         7d8: R_X86_64_PLT32     __stack_chk_fail-0x4

Instead of silencing the warning by faking the jump destination, I'd
rather improve the warning to something like

  "warning: rockchip_spi_transfer_one() falls through to the next function"

which is what we normally do in this type of situation.

It may be caused by UB, or a compiler bug, but either way we should
figure out the root cause.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210420225550.szbmrpwv6awd7tp5%40treble.
