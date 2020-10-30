Return-Path: <clang-built-linux+bncBAABBIVI576AKGQEVGP2ADA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D912A006B
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 09:51:47 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id j21sf3814754iog.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 01:51:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604047906; cv=pass;
        d=google.com; s=arc-20160816;
        b=hWW6cbGI1EIN57KggcprAU35VJPC4V1CbwREGSrEl4rTWFazSDTv2pMeEtX41N4P99
         0LfSho1Cd+Qimj1WjPyNvbUKyMqa173e6S1awENXiQqBPj4Yphg30YU+gVykZoZpAC0U
         C+a+wHeqYlcYmexl4uR8T4C3Q0yvS4GZyAUotMJHLXdMwfXDIDYY8exAc/TMZBL2AN2f
         bTuS8d/YajTdA6RB+oZey5e1WcP1KkCDrfYpiN+1XffHDsDMTgpI0ZZGQT8YiuVkE22s
         WGbtA+kdC/1+2/lyiu/5K7o5CO4wezQl3408uyuGn+oeTiTExgI8rtXM4WrJhO9YN/lk
         iY3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=2p4cKpIprSLh37Uc+Ye0mXdLrQpLW9hKs1C6+dJzd6Q=;
        b=y+yM1R23JiKic7+AbBzxnHPh18v5eiX2Uex++gGryQTzT4T/B5w7NK6uie5i8KvJ0a
         XccX9F/I060lOwHwYRJM77aiqhD0yOkSsarLlD4kdlLn6e2LCGxR6SJPwce068PGPfJt
         7zYfVcWAjxZnkB6magmTJeDgQUeZoAseG2KkqX/Z0m5TvS5e+L21/WSLCFws4YtcEjqZ
         vJ1cew17W6r4ZUEr8PoQDGrjnd1Md+dZWr4xLvjG48AgYQhK3Ora7qG/pR3lA5Rpwbi6
         q52Lfa3/OM/DFaPKpwyIzjkBRuSFzXoPUlMuDTPeFfyI3bb6bOAP+47BTseJ74XSbu8Z
         aqog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="aGJ/V60/";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2p4cKpIprSLh37Uc+Ye0mXdLrQpLW9hKs1C6+dJzd6Q=;
        b=CoqGrzdz4SJIiP6vFj8VKblrwkpizPyvYiXwhnoW3j9FnV03/9xNr3FWYhDL3DVBTu
         CHvGdRF6jimTl6Sof/r6Cw1t+wL7+IJAyBL+N49q1xBuFjzki02EQgJAgtywSicGNEjC
         sznNoIcj3xtXzJ7JXRFjCsShwyQoMYLq9ZNnwITyRiqyHAx8L0qCAIpusSbvNPccCLIK
         TC3enz4UqupvauiPSSJ7g0UaBEbMQOgqCJCXffz6GriPcX5mqdITOyjesv0l7Uh4Eolu
         xoEmlXtC0yTiVhWVCpQE+ZPosS3DPawMzWlKWjMWNNo5kjKhTOnEu9W8aSvC9VwLtNb2
         085A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2p4cKpIprSLh37Uc+Ye0mXdLrQpLW9hKs1C6+dJzd6Q=;
        b=AnJancboGoMz0uzxrbEKtMKMiv8HgW5iQxjSXvnTK22+05aaYX0YTkmyp1VPQY3T4v
         fW45KRU/AUC12rlC62BtZGDGiSv3QE3wXbHh+4BWdx76CMCKIL0g9zmN/faqLRADqb0/
         F/BcPZbO9AHQL2m1l7FrL2nze318K/i2b5qViCePtAOjiOeqGrnJWpGIJVVIZRuTgDzl
         0NnCFux8wltgtJB2Tig/GuK4hIbCf7YlCwhU1x1VMXP3UdTjAivqU/xHdPbIrPHBt1a6
         pWkD4EAPFYJfAc74K3sP6QACTohyu228Wjmc0HvYj0uIHkzaUPAQRsv1OGvjd6VejRq1
         eTvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xWbTPfKujGtylecrr6KkOUoQJ7xy4U3sMAau9yC4jxS+WjUFD
	nT+mh69SoSQfgcq1NauNjag=
X-Google-Smtp-Source: ABdhPJztMqv4t7aXOeBVSLSsACwZBVzyN/Y54IXetJx3K+Svn6u3fAgFn9ENFsNBDeIi/ilQhgreHw==
X-Received: by 2002:a05:6638:97:: with SMTP id v23mr1136351jao.7.1604047906629;
        Fri, 30 Oct 2020 01:51:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2d0e:: with SMTP id c14ls832445iow.2.gmail; Fri, 30
 Oct 2020 01:51:46 -0700 (PDT)
X-Received: by 2002:a05:6602:2b03:: with SMTP id p3mr1028754iov.28.1604047906244;
        Fri, 30 Oct 2020 01:51:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604047906; cv=none;
        d=google.com; s=arc-20160816;
        b=h6a5Ec3MJ57Wg8lVsbAm2HwQX2XrTPkVP67ADMEvX0QKuUYztTpdPvVJVn6BDoqJxy
         72S802vH/IikmZFimZs7/0npQ49mLZx9EKuCJz00lbKB4NXFGkP2orCfSBj7dbK3wR1u
         YOkX3lKiP0HaWXMRyn1DVihTdTtWn03qEHTRKITGb/h7962vES/rK/TaW+UzXYQY9ITR
         Zn/kASMGiLZdl82SrLDM6NtMkk5yLwgkC+V7IWIIfRN4fS6FDOXF4cdfu1zPVkK/pWL+
         N64adT5q1jGJFlRvImbsV6bHB4N3/g4oeydKOG8ECRrrXm+AjouqnSfetrcaRjYY5XDG
         x72g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Aio3yoVgOPyEW9Fbv2T2Gbvi6fNQhxPG+Gp5TxEx0N8=;
        b=V1z5pL1P9qLjsPBrCJU/jXrUIxi2GptNoyt9T7pUe9d/j40NpNALATmxmsXSs2KdrY
         hil0B0Z6ayQVGmEsU3M7VIg9FcCJMDRCwz5JxL+UILG0+jSgfg9UJxShKCV6Dw6P/XVd
         /JHHW/i1W5pTxLWfROfIfrihY0AIarNXKzQ92CeJyoIQTHmoY94LaC/fqsbJAHcyogLc
         rzqllYkNknTHkOnaRY67VmNa78PYK7gfNZZtBuAkdZa0STywj9TF8eAMZUIOYcOsLTl3
         T6F20qgcgwk43RKDjIWk/uMGhHmifw0uHIBh6mzMyFzd3lnRB1BhismFklqu31r5F0Vh
         Y7vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="aGJ/V60/";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u15si307734ilk.1.2020.10.30.01.51.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2020 01:51:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C3CE922248
	for <clang-built-linux@googlegroups.com>; Fri, 30 Oct 2020 08:51:44 +0000 (UTC)
Received: by mail-qk1-f182.google.com with SMTP id r7so4213298qkf.3
        for <clang-built-linux@googlegroups.com>; Fri, 30 Oct 2020 01:51:44 -0700 (PDT)
X-Received: by 2002:a05:620a:b13:: with SMTP id t19mr991177qkg.3.1604047903779;
 Fri, 30 Oct 2020 01:51:43 -0700 (PDT)
MIME-Version: 1.0
References: <20201019084140.4532-1-linus.walleij@linaro.org>
 <20201030002900.GA2248731@ubuntu-m3-large-x86> <CAKwvOdntdKGN+F4r2jYNw3C-vxxZ09aCTaGR1_DtR+5tFzjLOw@mail.gmail.com>
 <20201030013228.GA2519055@ubuntu-m3-large-x86> <CAMj1kXG4VgyvZtTcCycNTQA+sddi49=Mj7uaEjZnw=Rt5mt4sg@mail.gmail.com>
 <20201030075655.GA1848109@ubuntu-m3-large-x86> <CAMj1kXH-ZJQBtPN1_ByRDcfRs16yJ2cKvM8z=Gy_LoKp-m0G8A@mail.gmail.com>
 <20201030080438.GA1849056@ubuntu-m3-large-x86> <CAMj1kXEMUrJnyTzJQaA0e15h54fAT5_Q6w5OiBFrjGmhZ10eEw@mail.gmail.com>
 <20201030084519.GA3748061@ubuntu-m3-large-x86>
In-Reply-To: <20201030084519.GA3748061@ubuntu-m3-large-x86>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 30 Oct 2020 09:51:27 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1Ckn5E0Ce+0xVFbOKVYdsyzjeRZ0Z03-OsVC8yaYFp2w@mail.gmail.com>
Message-ID: <CAK8P3a1Ckn5E0Ce+0xVFbOKVYdsyzjeRZ0Z03-OsVC8yaYFp2w@mail.gmail.com>
Subject: Re: [PATCH 0/5 v16] KASan for Arm
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Florian Fainelli <f.fainelli@gmail.com>, 
	Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>, 
	Andrey Ryabinin <aryabinin@virtuozzo.com>, Mike Rapoport <rppt@linux.ibm.com>, 
	Arnd Bergmann <arnd@arndb.de>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="aGJ/V60/";       spf=pass
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

On Fri, Oct 30, 2020 at 9:45 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
> On Fri, Oct 30, 2020 at 09:10:56AM +0100, Ard Biesheuvel wrote:
> 4043            futex_hashsize = 1UL << futex_shift;
> (gdb)
> 4045            futex_detect_cmpxchg();
> (gdb)

I can't explain it, but I'd point out that futex_detect_cmpxchg() has caused
problems in the past, with multiple patches for it proposed in the past
and none of them merged. One of the patches I had sent for it was:

commit 8232a8ffc332fa6a50296a51c4d85200a747256c
Author: Arnd Bergmann <arnd@arndb.de>
Date:   Mon Mar 4 17:33:00 2019 +0100

    [SUBMITTED 20190307] futex: mark futex_detect_cmpxchg() as 'noinline'

    On 32-bit ARM, I got a link failure in futex_init() when building
    with clang in some random configurations:

    kernel/futex.o:(.text.fixup+0x5c): relocation truncated to fit:
R_ARM_JUMP24 against `.init.text'

    As far as I can tell, the problem is that a branch is over 16MB
    apart in those configurations, but only if it branches back to
    the init text.

    Marking the futex_detect_cmpxchg() function as noinline and
    not __init avoids the problem for me.

    Signed-off-by: Arnd Bergmann <arnd@arndb.de>

diff --git a/kernel/futex.c b/kernel/futex.c
index e646661f6282..6fbbed45f51b 100644
--- a/kernel/futex.c
+++ b/kernel/futex.c
@@ -4061,7 +4061,7 @@ SYSCALL_DEFINE6(futex_time32, u32 __user *,
uaddr, int, op, u32, val,
 }
 #endif /* CONFIG_COMPAT_32BIT_TIME */

-static void __init futex_detect_cmpxchg(void)
+static noinline void futex_detect_cmpxchg(void)
 {
 #ifndef CONFIG_HAVE_FUTEX_CMPXCHG
        u32 curval;

I forgot what the problem was, but you might try that patch, or find
the previous discussions in the archive.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1Ckn5E0Ce%2B0xVFbOKVYdsyzjeRZ0Z03-OsVC8yaYFp2w%40mail.gmail.com.
