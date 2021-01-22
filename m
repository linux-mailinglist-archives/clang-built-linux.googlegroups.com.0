Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3W7VCAAMGQEZEUUJJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id C60162FFA2D
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 02:52:47 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id i143sf6392762ioa.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 17:52:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611280366; cv=pass;
        d=google.com; s=arc-20160816;
        b=voFSTVWJxFr3aRtaqhLjRXYxW9vo2P34umOXvSmSxeJpgjxqe7T/1t+MIalVqZbieE
         5oc02Rvf7UejvobdPH3zDVtKkaB+5y35ptFpUqKDrAiOCmcbCtMv5qNHzGZ2ih7n5OWu
         AClBrTWMy+FQoJ2mdLvp4B/5pPpufTpZl+0ckQBMCgehRgq9DXYQlmqucoyYpqPq+/8n
         uPh43wb52ZyW7uB/o1aXNpydiQxbog6Kym10quHCTLKTLHBbQoW8he4E9uez2sBwDa0S
         zw+O3RiiD70KorGO9EwPxqMm2xyqHaiiWI3d/x+KbDJgB6t0Qv8BJqRy0zH1jbJLlKEF
         AotA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LVIp5Li1rENDEp8d/qSMCKQEuF3fBrmy/zKPqu04uUM=;
        b=EY1NwuSI1JOI5cOlEtXfcKA5dv2W8ZkQM+/Ia9ahVUrVYg+cnMUyTBS7xKRxTvLQAg
         ASgXwSr4iFoQ6XrS5TuME2EdNWBsjAdH4COXnanVTRTa4cdSC817vTeleDDZorSDFi78
         DGaIIkvAeJBhFyxsvM3GRJRjDBuNOOcxIWHXrvRTcmw8NFVHzg2SDqB5RGLrVhkv+L9B
         UY0sGCeumgFKQ17O8CCgYWND+fA2jTt4agMFDyn8Va0fx0l+uwMAzDemrRDiOWpqTkY+
         GZvos51sLDb3yweqtB/+KD4NI6zt3CJF0XGYBpTCsjtxzPxAn/zCj7ARzo3OLyVBzQHS
         GX+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tb5wF3uX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LVIp5Li1rENDEp8d/qSMCKQEuF3fBrmy/zKPqu04uUM=;
        b=qRyP0G0JFa3ertBJuec7c+8vSV0WtJl1c/AN5mIHKkb1t1pvw7sWmXu08ZKakUByH0
         8k+AOKomqhT7uThHcgZJrtCvSqCTsMGpVmcqYoZd9aXMFYDM1BtQEPzRkv49XiP+9+Oh
         7a1P0qAG5dqexIanI7ljuvxrgYt22iVPgpQceUk7PQkCvqTs3KKmXV/Znt+REaEjQwfZ
         OjCqvhT7p8peMQz0nGg9iIEFb0hHFCFiJ91xOah/IwKm3INl/WHZfIbs1RJkvhVYDK5J
         1omVvJqtgy+E8srKn6MCscPbMGGaQb0SIVfxwGElk5sQSHBisxSE0YAMRRC0j2rbVWvv
         Th2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LVIp5Li1rENDEp8d/qSMCKQEuF3fBrmy/zKPqu04uUM=;
        b=RNqoEi2IS+OEjgLEUnrigySyw4EWP96JVgaXezi+KEtOYKHagHYpG1u+3m+hPdxtO2
         8XHR1CthkV2ctFmRFScyyAxhoAgaFWrHMRAjX0imHAkdxnuFDNckjRCwVXuoXJOTmBhv
         zod21KNEi8guAD9Sy0TiIyIFSZZCXHKtBcSrhNZIUkDTKsIHzlNt7aQHWPa7oJUaY9DH
         tCsZMVC8ZxwbEYOk0eT0J43FGrYqvoOS7QcuXFvuEyxeYWuJvowzxx1OP33CXv6lwYcb
         kAicFYwYOVE+Ibmgn/N1v/Z6QyibuATWZBLV/MkdjwacKe4P1IRjD3FfqTMeSA/nDFVU
         hMyQ==
X-Gm-Message-State: AOAM5315mVupWGqt1AT9tPxkVHqiDa+pX44ojpAFBCoysjbrWjZ4yZG4
	fPCUwuf1c8Ap3zpP6eYlfC0=
X-Google-Smtp-Source: ABdhPJzn2OEzCJLmuNlttFCLA1TXbZ6JNLO+yh+rJ0nmQkVBx101TycnmqNJlbUGU7YK3GFKo1JyZA==
X-Received: by 2002:a05:6e02:1bec:: with SMTP id y12mr2137369ilv.214.1611280366809;
        Thu, 21 Jan 2021 17:52:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:97d8:: with SMTP id k24ls613867ios.6.gmail; Thu, 21 Jan
 2021 17:52:46 -0800 (PST)
X-Received: by 2002:a6b:da08:: with SMTP id x8mr1835839iob.22.1611280366395;
        Thu, 21 Jan 2021 17:52:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611280366; cv=none;
        d=google.com; s=arc-20160816;
        b=CsqDSSXpSGgRf8QkM+g6WPY819hSYsAF+TmLJeaapCQ0VhT7yPJZm7YbcZaKAdW0qi
         YWlXEUbvhjS49HzrJZIBZb2OQiL+jU3hAqfTA0AVXB+jQioy1L5F+D74luFlzp3yNrez
         1hFzBIwAKuUNH8hYsSo1YKJshan/It4+xmc07LVCpjD9wRlKSJQPMjFh86ED6FMh17Zs
         wi7b+ziFi5DW0HyAKNaDP8tbykUCCPYck6kl1uEZu8nPNKeq4GZChb7FJBr9VKYtgFaw
         04xfFS6nm90RJktdff0+0JC/qbcA4XY6RUNfssKVhHWqqa8HmEmbAgA6J+2Vi5XyF37S
         0fXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vf1YWMphq7IfDQQZ2byHu6e71SFyteLzACu9Oza6zmY=;
        b=ddBtmkv22cRhNP0L/31Q87cMjvrEbcAc48w9JUss4HlOOguak/cP0tQn+oDkNT+QMK
         G+/21WmCaq+Saya+ov8t7DmFjopoEV5KzZVTUWpkO1j1tN4VXnVTF+XBc4qnx6EcI739
         FHb5WgO8BZNEHWQIbgzyIwBTZFO2i3N9OTEcpZUcBG14y31VaZl28m3tXnSxN3opeKQK
         tLm05C87m2DmjSCiclJUtKOkJA2WACF1iTmzakiHTkjVsKshAgG0d0gNXjeIuTfzYOOH
         GnM5vwvkD7hj6YH2GBr8lJDfReMMH4RO5sj+VejFruIlDt6KEfnrZiUt0Dd6mKD2OEiq
         J/MA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tb5wF3uX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id s10si379231ild.2.2021.01.21.17.52.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 17:52:46 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id e6so2865738pjj.1
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 17:52:46 -0800 (PST)
X-Received: by 2002:a17:90a:9915:: with SMTP id b21mr2540454pjp.101.1611280365695;
 Thu, 21 Jan 2021 17:52:45 -0800 (PST)
MIME-Version: 1.0
References: <20210113061958.886723-1-morbo@google.com> <20210116094357.3620352-1-morbo@google.com>
 <CA+icZUUgTuD6fO_AZFs9KoRFS8FUmyhezvYeeoRX2dveG_ifDA@mail.gmail.com>
 <CAGG=3QXZTR_f9pKzAR=LrALmMzdDqsvWM_zrTXOb2PpiDGB-+A@mail.gmail.com>
 <CA+icZUWf05ek+DFsJNyBc-4cg0s6cVrn=rNJDyL4RJ6=fMO5NA@mail.gmail.com>
 <CA+icZUVD1AHaXYu4Ne8JhzmtMR5DReL4C=ZxKfA0hjLtbC79qQ@mail.gmail.com>
 <CA+icZUUTJbwmTYCDJhyRtif3BdsB_yzQ3bSdLR62EmttJf3Row@mail.gmail.com>
 <CA+icZUUfWR1v3GStn6t_6MYDmwTdJ_zDwBTe2jmQRg7aOA1Q2A@mail.gmail.com>
 <CA+icZUU-3i7Of71C6XaNmee7xD4y_DeoWJFvUHnMUyBaMN3Ywg@mail.gmail.com>
 <CA+icZUXmn15w=kSq2CZzQD5JggJw_9AEam=Sz13M0KpJ68MWZg@mail.gmail.com>
 <CA+icZUWUPCuLWCo=kuPr9YZ4-NZ3F8Fv1GzDXPbDevyWjaMrJg@mail.gmail.com>
 <CAGG=3QW+ayBzCxOusLyQ0-y5K5C_3hNXjara_pYOcxK8MseN9g@mail.gmail.com>
 <CA+icZUU1HihUFaEHzF69+01+Picg8aq6HAqHupxiRqyDGJ=Mpw@mail.gmail.com>
 <CA+icZUUuzA5JEXyVzKbVX+T3xeOdRAU6-mntbo+VwwTxqmN7LA@mail.gmail.com>
 <CAGG=3QWmOA+yM2GJF+cHUb7wUq6yiBpHasa-ry9OhAdvciDm6Q@mail.gmail.com>
 <CA+icZUVwbWDtGUzMEkitxYn2UvbZPnFTxfJyDOY46j6BTK0deQ@mail.gmail.com>
 <CA+icZUXa9wvSWe=21_gjAapoHpbgBmYzFpQjb=o_WRQgK+O4gA@mail.gmail.com>
 <CAGG=3QUcaY1wzJhBD4ZGhPSNPik-kL0PuoE1SJqkFJEM_mkGYA@mail.gmail.com>
 <CA+icZUU+OWW46CVq4Co-y7hckGjoV5bbqxS-G+HDqUDci_AzHw@mail.gmail.com>
 <CAKwvOdkOOjDo+zFFz_T63FphZn2Lg7MW8vd7qd-yS_eB_yYdmA@mail.gmail.com> <CA+icZUUWtKqEhaJSbbQomC+Mz+uRgkWu72vyxPbif0nG1Vvr3g@mail.gmail.com>
In-Reply-To: <CA+icZUUWtKqEhaJSbbQomC+Mz+uRgkWu72vyxPbif0nG1Vvr3g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 Jan 2021 17:52:34 -0800
Message-ID: <CAKwvOdmKRzE8s1zrs4ApcJSn9SzCpGhaoFqqeKsn67SpH6OVgQ@mail.gmail.com>
Subject: Re: [PATCH v5] pgo: add clang's Profile Guided Optimization infrastructure
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Bill Wendling <morbo@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tb5wF3uX;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a
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

On Thu, Jan 21, 2021 at 5:49 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Jan 22, 2021 at 2:43 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Wed, Jan 20, 2021 at 6:03 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Mon, Jan 18, 2021 at 10:56 PM Bill Wendling <morbo@google.com> wrote:
> > > >
> > > > On Mon, Jan 18, 2021 at 9:26 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > >
> > > > > On Mon, Jan 18, 2021 at 1:39 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > >
> > > > > > On Mon, Jan 18, 2021 at 3:32 AM Bill Wendling <morbo@google.com> wrote:
> > > > > > >
> > > > > > > On Sun, Jan 17, 2021 at 4:27 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > > > >
> > > > > > > > [ big snip ]
> > > > > > >
> > > > > > > [More snippage.]
> > > > > > >
> > > > > > > > [ CC Fangrui ]
> > > > > > > >
> > > > > > > > With the attached...
> > > > > > > >
> > > > > > > >    [PATCH v3] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
> > > > > > > > undefined symbols
> > > > > > > >
> > > > > > > > ...I was finally able to boot into a rebuild PGO-optimized Linux-kernel.
> > > > > > > > For details see ClangBuiltLinux issue #1250 "Unknown symbol
> > > > > > > > _GLOBAL_OFFSET_TABLE_ loading kernel modules".
> > > > > > > >
> > > > > > > Thanks for confirming that this works with the above patch.
> > > > > > >
> > > > > > > > @ Bill Nick Sami Nathan
> > > > > > > >
> > > > > > > > 1, Can you say something of the impact passing "LLVM_IAS=1" to make?
> > > > > > >
> > > > > > > The integrated assembler and this option are more-or-less orthogonal
> > > > > > > to each other. One can still use the GNU assembler with PGO. If you're
> > > > > > > having an issue, it may be related to ClangBuiltLinux issue #1250.
> > > > > > >
> > > > > > > > 2. Can you please try Nick's DWARF v5 support patchset v5 and
> > > > > > > > CONFIG_DEBUG_INFO_DWARF5=y (see attachments)?
> > > > > > > >
> > > > > > > I know Nick did several tests with PGO. He may have looked into it
> > > > > > > already, but we can check.
> > > > > > >
> > > > > >
> > > > > > Reproducible.
> > > > > >
> > > > > > LLVM_IAS=1 + DWARF5 = Not bootable
> > > > > >
> > > > > > I will try:
> > > > > >
> > > > > > LLVM_IAS=1 + DWARF4
> > > > > >
> > > > >
> > > > > I was not able to boot into such a built Linux-kernel.
> > > > >
> > > > PGO will have no effect on debugging data. If this is an issue with
> > > > DWARF, then it's likely orthogonal to the PGO patch.
> > > >
> > > > > For me worked: DWARF2 and LLVM_IAS=1 *not* set.
> > > > >
> > > > > Of course, this could be an issue with my system's LLVM/Clang.
> > > > >
> > > > > Debian clang version
> > > > > 12.0.0-++20210115111113+45ef053bd709-1~exp1~20210115101809.3724
> > > > >
> > > > Please use the official clang 11.0.1 release
> > > > (https://releases.llvm.org/download.html), modifying the
> > > > kernel/pgo/Kconfig as I suggested above. The reason we specify clang
> > > > 12 for the minimal version is because of an issue that was recently
> > > > fixed.
> > > >
> > >
> > > I downgraded to clang-11.1.0-rc1.
> > > ( See attachment. )
> > >
> > > Doing the first build with PGO enabled plus DWARF5 and LLVM_IAS=1 works.
> > >
> > > But again after generating vmlinux.profdata and doing the PGO-rebuild
> > > - the resulting Linux-kernel does NOT boot in QEMU or on bare metal.
> > > With GNU/as I can boot.
> > >
> > > So this is independent of DWARF v4 or DWARF v5 (LLVM_IAS=1 and DWARF
> > > v2 is not allowed).
> > > There is something wrong (here) with passing LLVM_IAS=1 to make when
> > > doing the PGO-rebuild.
> > >
> > > Can someone please verify and confirm that the PGO-rebuild with
> > > LLVM_IAS=1 boots or boots not?
> >
> > I was able to build+boot with LLVM_IAS=1 on my personal laptop (no
> > dwarf 5, just mainline+v5).
> >
>
> To clarify:
>
> I can build a PGO-enabled Linux-kernel and boot it.
> Afterwards generate a vmlinux.profdata.
> In a next step: A rebuild without PGO-Kconfig disabled + LLVM_IAS=1
> does not boot.

Does the rebuild produce the hash warnings previously reported?

Can you send your .config for this?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmKRzE8s1zrs4ApcJSn9SzCpGhaoFqqeKsn67SpH6OVgQ%40mail.gmail.com.
