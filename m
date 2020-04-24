Return-Path: <clang-built-linux+bncBCXKBPVPXAFRBCNURP2QKGQEGHTUAYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-f190.google.com (mail-lj1-f190.google.com [209.85.208.190])
	by mail.lfdr.de (Postfix) with ESMTPS id 672321B73C7
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 14:22:34 +0200 (CEST)
Received: by mail-lj1-f190.google.com with SMTP id e18sf1736992ljg.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 05:22:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587730954; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZiyZwnutbeROKcUneD35vMNCdx6psbLoM+BDquKOJaPNAiNaGLPIgXAcFrRC79MQc9
         oYlDJNgC4OC/RGa0+bdp1W+o5S2PSMuDSl65NjQneJIoWVGCT1pBBkcW2yAhHGZNaBDB
         GcITqTvgevJqspanml8p6RjDHNxJNFgt3+1H6hiKwlBlpxsoVyy4ulAjhev0nPGpeupc
         ATCKQwpPc3LbjP6i7zY130M1f7ffAijlXZQnyiA3Pyt0zdMPIScVORXg1a83zTyiPuND
         ksHTtuXUBtb6lXdkeOCIe8Sat2aI32nvy5N7tzIsSPxfHoCiul+iFAdJ1VXXl5OEd7SE
         OUjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:sender:date;
        bh=om6nD17oPXNaZbSbAKxMsw6dZK4KiliMe3pEWULiOw0=;
        b=Pn09bHiIQ2m+yPlQ1jGhUhQ2DBVyQcbazjNqxMRA8j2wLzqcv/WTpuAIFEHD2ttCwQ
         rdIG8Ktq9NoQ3Kabgf3weKEDn/hfm/nu7gliAl6E0zqpGypvZD4cyzHv53/mNYqLaMje
         ZeEc6ZyLaVpBCpyoCTCH72PyaLRGCrDLhcB5y3ws3YCSlvHvSH46qfRe41b7qWqTMCK1
         /e+P1JX2H7mBW+VklQfBoZZGBwDh7XbRtfUyAFhD5/LTdPFdQAHXdjF4xfpqMCPu9RTS
         kPZmsPcpRKNTInYW1wKfVQ3HE+G2LIVaaruBDRhtUQU8s+CNZGeL/fa0GmSzCIRX2Y2J
         Bk+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:sender:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=om6nD17oPXNaZbSbAKxMsw6dZK4KiliMe3pEWULiOw0=;
        b=VwZeOqdzAsqwIORY6CPQCXO5+IgeK4LQKwwnPCd9sJyXRo8M+mSBhRnjebSuH9wP73
         oPl9z6zcZmpLhbhXMhKXt1lOnXfwKYhvn7RLdi0azL2OoE8CgeicZry2NvjLB5kU4V0i
         1OO55/wvqocV8xZZIqSw8/ONzYKF0E32bSaYaoR9arhihHUcl37/nHUne+ASKDQfmPfb
         i30JHsKz230RqCHFTa/96fbwqxb1HGRL22r28pfaj/yXvBtTtUqomtgmz4smdBR4LvCU
         b3DUMRXXEwrUh+B4UMFn3VuUVuHro1U3b+oUuOUykpGu1sMQLDFhtf7wlXT+5YMjIZUj
         Vr4g==
X-Gm-Message-State: AGi0Pua/vLd29NKSbRRCjrgs8DWeXmvyTG2Wmkg5E1Ob6A353FcGwAhW
	G313NLwLfvVsyFeGhYQcnLs=
X-Google-Smtp-Source: APiQypKDd/xFve/gFlFuulxYVUnn7hWJ4OEHfbKNml/ZQBiCGPb5OdSohV47uxI5maCcJjMJpaSG1Q==
X-Received: by 2002:ac2:4213:: with SMTP id y19mr5716103lfh.99.1587730953870;
        Fri, 24 Apr 2020 05:22:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:107c:: with SMTP id y28ls2759760ljm.10.gmail; Fri,
 24 Apr 2020 05:22:33 -0700 (PDT)
X-Received: by 2002:a2e:b4f1:: with SMTP id s17mr5698418ljm.283.1587730953184;
        Fri, 24 Apr 2020 05:22:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587730953; cv=none;
        d=google.com; s=arc-20160816;
        b=VUcnQXIGHSWenKRlI/V29YK2ZrQD0w1XYN6lz/I9vzXzEG7Y06nogvD1OPLCf6j3jQ
         LhVSqVa+x70xYjpf+8PMoxgrYB6yOv3/EoMJTyC+SrVno2fidFUmwI7U2RvP6DGZvTcF
         t6NYdzeopa8xbbeU1yPX4FPIxyMQYCGanzBc0yPSG1WucUeAI7IuDXPKJtKX721uPDuG
         qC0WKzIYAXy1SQLtQQ23KT+R4QEustQRLEOmJRPFQeW6ytppkKHskPeYU52EeOcc09RU
         QerMzct4TR0wvp0U2h48reZGguFW/UVh7QqaXsFKXeiTHzRoODhDwLPayILydVuw7zpz
         yCkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :sender:date;
        bh=Vsetmwf7qWC6eYwxiNYg2hArbfl1lgYFgdn6z4HzEKg=;
        b=Fd0gCTAiOPW/HVH89z5lQsCBEF7NacPZz2HFO9vkSSWwFr8g1u11F1fwdWrTk2EwAK
         AfCuNL/x5dg7220+nOEhYgfP6xxHdG8AFN/Ae/5BMxQlP9ZoOfue01LSNfT0phJzdE5H
         J0XtzjvIck6shrn/K55M61oXMsZ8UJvAXRpspayByPoMcYPVcfDrlMk9rWmiJQSDeyJG
         tCtvUku9U8jEsz1zVzVxG0ikuRLuHHGwwPwbBOkAXyJ/3J6NTsp7XucnU5quwf/LWXfa
         J50ehdebA/UCyK3QoGn2aqlFZuY1+CG2M57/D9YvL+heQ7/lorS7mY52QDXEkaasFAtn
         2EYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
Received: from cvs.linux-mips.org (eddie.linux-mips.org. [148.251.95.138])
        by gmr-mx.google.com with ESMTP id f25si289027lfc.3.2020.04.24.05.22.33
        for <clang-built-linux@googlegroups.com>;
        Fri, 24 Apr 2020 05:22:33 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) client-ip=148.251.95.138;
Received: (from localhost user: 'macro', uid#1010) by eddie.linux-mips.org
        with ESMTP id S23990698AbgDXMWaCgK9A (ORCPT
        <rfc822;clang-built-linux@googlegroups.com>);
        Fri, 24 Apr 2020 14:22:30 +0200
Date: Fri, 24 Apr 2020 13:22:30 +0100 (BST)
Sender: "Maciej W. Rozycki" <macro@linux-mips.org>
From: "Maciej W. Rozycki" <macro@linux-mips.org>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
cc: linux-mips@vger.kernel.org, clang-built-linux@googlegroups.com,
        Fangrui Song <maskray@google.com>,
        Kees Cook <keescook@chromium.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Paul Burton <paulburton@kernel.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Jouni Hogander <jouni.hogander@unikie.com>,
        Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
        Borislav Petkov <bp@suse.de>,
        Heiko Carstens <heiko.carstens@de.ibm.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5] MIPS: Truncate link address into 32bit for 32bit
 kernel
In-Reply-To: <B307BFAC-9973-4444-B69A-40B054210E84@flygoat.com>
Message-ID: <alpine.LFD.2.21.2004241316360.851719@eddie.linux-mips.org>
References: <20200413062651.3992652-1-jiaxun.yang@flygoat.com> <20200422143258.1250960-1-jiaxun.yang@flygoat.com> <alpine.LFD.2.21.2004230036480.851719@eddie.linux-mips.org> <B307BFAC-9973-4444-B69A-40B054210E84@flygoat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@linux-mips.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@linux-mips.org designates
 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
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

On Thu, 23 Apr 2020, Jiaxun Yang wrote:

> > Alternatively, have you made any attempt to verify if actually replacing 
> >the setting for VMLINUX_LOAD_ADDRESS would be safe?  Glancing over its use 
> >there do not appear to be many places.
> 
> Limited experiments showed it should be fine...
> 
> But MIPS kernel has some design I'm not really familiar with like SYM32 for
> 64-bit kernel and special address space design for Trap-and-emul KVM.

 This only affects CONFIG_32BIT kernels, so SYM32 does not apply; I can't 
comment on KVM.  There's still that bunch of:

$(shell expr $(...) \< 0xffffffff80000000)

constructs I mentioned before, so let's leave your change as it stands at 
this time.  Please do rename the variable as I suggested though, I hope 
that's not a big deal.

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.2004241316360.851719%40eddie.linux-mips.org.
