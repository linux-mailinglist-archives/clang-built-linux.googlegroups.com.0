Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBM7S6CAAMGQEC55KWUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E6230FAE3
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 19:13:08 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id p20sf3219542qtn.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 10:13:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612462388; cv=pass;
        d=google.com; s=arc-20160816;
        b=uRDa02zGIBhZvT8mUuO1BEbIOkE0Lvp1V83kExwxkcY8BHqOMgigB7iv4zVU0Zhh3g
         ixN6uG//ySE1Vvoa1oxWwiFOOTwf1MK4ZF1W6TVOqq34yJy2gOnmN163YM+dS2QoVElT
         tL2BGJTBlvJdkx+LIqGK5tPF12odY1KgeQDFzuiut1IpA7Kkbt2m1rcxq39JEJGvjN6j
         pil7k/DLUqE+KPkl0OzNntBAnoOTKvIVfMhXYnch2NTgE4bmEWhgV9+nsUUeLcSR8U+h
         YsnLt3SCjbZsgUDiV1M+JAWI7vfucgj/YQGtOGPghb8YbtQxWHeC7A69y6UdwXtPleNl
         T3sQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=i1a/pud4ZRAQt/6xWdfO5vmK7ts2DkAttwyytVFYbVA=;
        b=KqnKVjr1B2+k+l+qYSLfuZnm7F3UDSEIE/pPesTr54Md9ocD6n85yv+JVKDdxVmm5J
         +MmXAi3RBy0SrB5qwS+x3xrI5tZxU6DW5aOmzTHaorN7UgxOq/LBcvNlB/vxi1xNWBZX
         QZ2wz2n+jGWSp7KYyZoXxmBtZCxQQ0h7mPjJf6qdKytftM39QnbPEwy2/4+aqEpMKexW
         rtDbnmTKm+cMhgRdTxyxIegXVBKeet5BHR7m4Y+0apeZrqCOrpOWKcj1R8m5/noQTqgI
         how6TutBbXxds0lLJYCCJOLDcXOhoEWmpUqLEWqrnGgH6PVL3ZAOe+ctazM5RIBfWIxI
         aY0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s5R+NnYR;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i1a/pud4ZRAQt/6xWdfO5vmK7ts2DkAttwyytVFYbVA=;
        b=WdkvHMIDRZAOTExjov1j03GRiiu8y7MfydOK/PxmdK15HH85h+4UcE8sQ5RERia4B0
         dP8Folh69tLZKJtW0YNzCdq9ht1o0ymFupMpZBz1smk/MQzpXFbUoXJ487HJbpnEkLt3
         QtBcannOmHpvwatpl527VAKb3qkVzzlevh6o0m5eUToTZ472m+hyN4yQOndVOqGvFCc5
         fOcf+8RtObKwGCMbidwUR0Tu0O61DWYcJe3IoBhMwA+gvK2/meq8L5j4OHwcGsXr3cGP
         nBib8AQL0l+enJJIPeANRr+HEv1hDquzxnRb0zEkYqogB43RSanJoDDWxC6pkcRyxTSk
         aLzA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i1a/pud4ZRAQt/6xWdfO5vmK7ts2DkAttwyytVFYbVA=;
        b=LYMzap+wl2uMeHE7AhMpH3oFJJxyYe4alc/0Zmo/HgatTOqDrrxmUMipLMySnPYOZE
         TMdOsd1lL0pHhFephl9vmqTRG3I/M22ASpmecD16iRwg15I3WTQM7IFGj+0wMlK7kW8H
         SCRb2DyMDPx5Jp27mfYfm1jHr9a7kHKBWYqBrcC25l+R58gfODkRhKLtyIaZg2CPA5AJ
         v1Wdy1QbI6E75/O2LJ1yd7yXe91vwEaJsJ3DSahEPx92NM18MQKy5kOrCfz3INjpN/1y
         DthuGzkvieCChdcrQHMoB5GlnF+XlO1gccsuINuyQSZwluw3DXrfKiubzr7CC9d4X6oz
         u4gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i1a/pud4ZRAQt/6xWdfO5vmK7ts2DkAttwyytVFYbVA=;
        b=ot4g/l8/ND3FoiHD4HdZtBYDxTfoCI19EZ/bNqMvkR2rs3Cd3mUGk07y+g61ZdoJW6
         v1CN40ra1TjmkZWaOh0Gbwc+QNW5WjkMG1tyH2VgFeKSP6LCueN5lw5M8jqrp2BDq729
         EVe/clfYjRVtHFIi2uGgUDYAhsPRmk9Mk3GTdHJMpDcmHqmW8NO09GRVDmwRDqyxCSEt
         z8PSvlN/1OWY+xzJ8yYRJmgrAkmoGxNHFvIIicLyiAQor1ShNtTH7oq6H1MWIa/Rqsj4
         ravr/ed9JwsYetTEu3JUph47RKnPv1qsqwe2NTeinsZtzfU9cLasZtFyjaQU+gWEkX+M
         X/3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531u4+i9Bcs9HQtVIGrBomiWrogdaHocY0WCoX0FHB5Ge9OBJx05
	rmz0yMuaJRobXJPNfzbsPbE=
X-Google-Smtp-Source: ABdhPJxoxajEnekL+29mlF1bf9k7vDxc114tBEQc0zXZpo/bRyvcumVGheF54w/2NUcMfXl4pU2Xog==
X-Received: by 2002:a37:9f4a:: with SMTP id i71mr421282qke.66.1612462387954;
        Thu, 04 Feb 2021 10:13:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:efc4:: with SMTP id d187ls1416996qkg.4.gmail; Thu, 04
 Feb 2021 10:13:07 -0800 (PST)
X-Received: by 2002:a05:620a:f96:: with SMTP id b22mr344600qkn.295.1612462387433;
        Thu, 04 Feb 2021 10:13:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612462387; cv=none;
        d=google.com; s=arc-20160816;
        b=ZvfYbilURtm3LxShFgprpXPUAuUUB+qePhCh4Qia42OOyGB0AES59/TfksYBfyWND/
         BVMPKT9Ca9Hcf3KMNgIKcDNOkiT4hJ9ea1pVbZHo8pITCMpha/q824GCL+Ly5JC/c1Ks
         Z4DG9hXd+yjBA4A378VXR+XvtrjhEu8ZapjkeRMb1MRrWYwVXHk9mBKnwJhaIc9OH4qa
         wai1P67Oc1j+YoYcBBJkIj1eYX8O0h24Y24Q+WWxNFMrej/E0EI3Y7sVMORuWg1hHFj7
         e0fU/vS1vHjLLqhG05cLPrCWFsS+dcpIkSbrumgriK7I297yjUCYJ5/4XaxbXVsQLOKz
         ER1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IVP/jBNsdCo8DnlduQNCiGunaGGJdb/hIkxnrNplS74=;
        b=gJENihumn41E/gI84m4GgS4G4KSVqmWINbM/ONzv+fd3g0VF5Xo72UBEq2g7XozN+6
         wMxCPGMHmvyV0RbLBiCBSkdagLpkaieF+SWGbD8xtJYfcMP/9vwjBAGLSOKTsroBoYXA
         04lO38XmJIE5RZYYemc29s3Ml5RbmUHUC3Z7p1UfgF11Wj/c/XoHRmU0XEmxI/vOrf6q
         +pmVbMFu3xNlljMRV/KAc70+hvvGqCj4gxf5zFMg4Qp33Vh7IpuyR6gz9UL08jsNQbtl
         1BO+FxiJhWx05yrnuE2l7GxVZrK51zRdpepdAtQip99bwtn69Pw7s3H/WGBMB9u4JhdY
         WYwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s5R+NnYR;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com. [2607:f8b0:4864:20::d29])
        by gmr-mx.google.com with ESMTPS id j40si595086qtk.2.2021.02.04.10.13.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 10:13:07 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) client-ip=2607:f8b0:4864:20::d29;
Received: by mail-io1-xd29.google.com with SMTP id f67so2421626ioa.1
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 10:13:07 -0800 (PST)
X-Received: by 2002:a05:6638:2694:: with SMTP id o20mr789039jat.132.1612462387161;
 Thu, 04 Feb 2021 10:13:07 -0800 (PST)
MIME-Version: 1.0
References: <cki.C90653A6EF.V9S14CF2MY@redhat.com> <20210203180333.GA765672@localhost>
 <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com> <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
 <20210203220612.GA1738694@localhost> <CA+icZUVjeGq0UzCrJbf9qMYtR56woJ_XtFGiAzhvHnt0zEbD7A@mail.gmail.com>
 <20210204175010.GA2988776@localhost> <CA+icZUVV3q3Jr8HEi=LmqYucOWK8b3zOEvfGsk8Mn5FS--8bnQ@mail.gmail.com>
 <20210204181117.GA2989696@localhost>
In-Reply-To: <20210204181117.GA2989696@localhost>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 4 Feb 2021 19:12:55 +0100
Message-ID: <CA+icZUV_55jZTQQ8EjeWQofFnznuXm6mT7T0ZBjkmmN6E92Mww@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IPCfkqUgUEFOSUNLRUQ6IFRlc3QgcmVwb3J0IGZvciBrZXJuZWwgNS4xMS4wLXJjNg==?=
	=?UTF-8?B?IChtYWlubGluZS5rZXJuZWwub3JnLWNsYW5nKQ==?=
To: Nathan Chancellor <nathan@kernel.org>
Cc: Rachel Sibley <rasibley@redhat.com>, CKI Project <cki-project@redhat.com>, 
	Milos Malik <mmalik@redhat.com>, Yi Zhang <yi.zhang@redhat.com>, Filip Suba <fsuba@redhat.com>, 
	Memory Management <mm-qe@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>, skt-results-master@redhat.com, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Jan Stancek <jstancek@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=s5R+NnYR;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Feb 4, 2021 at 7:11 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Thu, Feb 04, 2021 at 06:59:49PM +0100, Sedat Dilek wrote:
> > On Thu, Feb 4, 2021 at 6:50 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > >
> > > On Thu, Feb 04, 2021 at 07:07:49AM +0100, Sedat Dilek wrote:
> > > > On Wed, Feb 3, 2021 at 11:06 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > > > >
> > > > > On Wed, Feb 03, 2021 at 10:36:32PM +0100, Sedat Dilek wrote:
> > > > > > On Wed, Feb 3, 2021 at 9:45 PM Rachel Sibley <rasibley@redhat.com> wrote:
> > > > >
> > > > > [snip]
> > > > >
> > > > > > > As far as the panic, it was was triggered on our upstream LTP test, I
> > > > > > > don't have a corresponding x86_64/LTP mainline(GCC) job since there is a BPF
> > > > > > > bug which is causing our jobs to abort while updating the kernel for x86.
> > > > > > > You will see the following in the logs:
> > > > > > >
> > > > > > > 'failed to validate module [something] BTF: -22 '
> > > > > > >
> > > > > >
> > > > > > Guess this is with CONFIG_DEBUG_INFO_BTF=y and LLVM/Clang?
> > > > >
> > > > > I read that sentence as there are issues with BPF issues with GCC, not
> > > > > LLVM/Clang.
> > > > >
> > > > > CONFIG_DEBUG_INFO_BTF is already disabled for the LLVM jobs:
> > > > >
> > > > > https://gitlab.com/cki-project/pipeline-definition/-/commit/7d138e9a3aede46f7674476fa1b3ca02a391767b#90e1e97a102a5713d6a68df323738846b425341a_1358_1369
> > > > >
> > > >
> > > > OK, Thanks.
> > > >
> > > > Can you give me the link of your (above) response in the
> > > > ClangBuiltLinux mailing-list?
> > > >
> > > > - Sedat -
> > > >
> > >
> > > https://groups.google.com/g/clang-built-linux/c/de_mNh23FOc/m/oNIZyE6fBQAJ
> > >
> >
> > Thanks for the link.
> >
> > You need a Gmail-account to be able to read the mailing-list?
> > Asking for offline readers.
> >
> > - Sedat -
> >
> > [1] https://groups.google.com/g/clang-built-linux/
>
> It should not require a Gmail account. I can view that link no problem
> in incognito mode in Chrome.
>

Logged-out from Gmail and I was able to read "offline".
Thanks for confirming.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUV_55jZTQQ8EjeWQofFnznuXm6mT7T0ZBjkmmN6E92Mww%40mail.gmail.com.
