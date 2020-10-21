Return-Path: <clang-built-linux+bncBC2ORX645YPRBXU2YH6AKGQEZIAV5PA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF3D294F67
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 17:01:51 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id s11sf1799412ljh.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 08:01:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603292511; cv=pass;
        d=google.com; s=arc-20160816;
        b=qy5PCoCPsmfjziXcqrizjMFz4HRBYKdZX1wVFlT8hzqeIcBFLPu/OEhfwiSBId9AqC
         NjUPHcsXjZWHx0v1J3a8zx3fass0EVGPTsmCZNFVFylrMQO/x8k97nhdRYSlUhvLbwXf
         TTb7zSA3VyyDeDtfSFDHmO9AtopHe1W25m0kRYl8FOgH1aDXVNqAgQgOVkXiIvscwjh6
         vuz0tCIMhzOexSCyDh+PB7jlplwNz8mIwIS0jID5gB8Cj/MDJRr+/GKZfZGuLKYrL+Ma
         HULaP/D3zTJP+Pf5EXtaQTmsulp6CVznHptthXQKSgqR6t8aI61wzG7RUrZUf+gEH+5H
         EbCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=lESyBNLGhMA+G1/LAUHjVhfUrP+hFy672u8MbykwATI=;
        b=VXKv25fP6pJ+ViGsMeQx6V8eLXnA4OetNMsjM3nEy4vN6dpWSDVLZZB9plgSOroL0c
         2ejJZ1pxSXD7cmf86i2+M3e+ZW+9DHj/gYG0DNpFKHiAt4xAx04+/k1AKLEqowyjmKxG
         DMyXpK6wC+6weLmH8jIVwUkdRAINgIajJg3FcBWtlMBGZoAiP5+VugzszcfAypaxVt4F
         LAqQTcAFZcYsdYJ4Oo1jY6KLrJ5y3W8ofcFB7nZ5l6UtjD9ntso2eXJpHxIBDdqNPxdz
         I3v+BuHwGpMfnXEYKhgt7Pq1ZyP4vX7taEYYAHl3wUakP6xHk4kYyJh/hRoYm6xSh954
         X+vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tyuzf6eg;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lESyBNLGhMA+G1/LAUHjVhfUrP+hFy672u8MbykwATI=;
        b=VjEgr9At8lQDgupyonlITfo1dvkgkRIHyJ/w2VTJEs+no8kQ3CLWDcfKR0/o03u0tg
         UIz7VapOV4I6iU0oal8f6pZluk6pMLC7eMItbE8ngAfSvjq79dtEVPcPbe2EfyJXmAZR
         KiERAre5z1NjwjLQCkKONl1tOfbtECsM3BuR5UeaigMf9kV7iubizjwuNyFnBSod3WT8
         KWZRiTiy6Haaj+DM8AsW+CO4R2H0TNfbHmSwBlvFejy0arDE+IqfHsMfpm2qfrrRpOfr
         4CdHNWOA4Oge6FXFVFIVgtFt3IF76lf97EgVgG13iVCVtpDpxVMNu3UnH+Rq24ChZ+6R
         XM5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lESyBNLGhMA+G1/LAUHjVhfUrP+hFy672u8MbykwATI=;
        b=OndvxcKGjpmLdJVLDWeMTCdlXOh6H/xuduy61aAAYk4zmvFS/6KpUA76sAjgO9DZTI
         k2KsW/D+QeyMA0agG9nhbR7DseyjpyL2Jsd8wPLSuLRtEDw5XqWaS153JCafH8YAyrlt
         jGuBw+NfKcWYlVQ2O5F3nQvLWk5i7mGRP+mxa6VK4tgvkcRSLBkMmAvdkDBXgMWFJFVz
         ogSsszQua+Fb4C86QwYElI8yj/znLlow4Ktek4y7sOwZjIX/637T38htMu9z6MUegKuI
         2R+xnXQA0Jn82xg64WAtg0gy3PA2QuKUEaTirqgZovy4aNf4m3i4/Jqs8bNZ/RmxrzFs
         SIFw==
X-Gm-Message-State: AOAM533dUbY3SIp3tvMwj9HBxacq1O1BudbBhaROvsMFiz0omYO5Xvjw
	ijqVfaw11couUfKn9U/QZLA=
X-Google-Smtp-Source: ABdhPJyZFY05oFpM8NSZdYRgWpjMg1hRfah1p2/HVtBAGt339YSY7RWTxNTQDcD4gfC28FZuXDv8Bg==
X-Received: by 2002:a2e:9948:: with SMTP id r8mr1695483ljj.175.1603292511025;
        Wed, 21 Oct 2020 08:01:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5e61:: with SMTP id a1ls140614lfr.2.gmail; Wed, 21 Oct
 2020 08:01:49 -0700 (PDT)
X-Received: by 2002:a19:7018:: with SMTP id h24mr1525995lfc.252.1603292509838;
        Wed, 21 Oct 2020 08:01:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603292509; cv=none;
        d=google.com; s=arc-20160816;
        b=Nl8TWeojhI7oV+5/ijV2FtM+UigztxdaUY2Y1zHmo3EHztqL1lavenUPPEurist5Wf
         xI9LNtLdeqmb/2oSbZ8FS7oE2tVtMWppOYw7gkC0Pz8H8ge4sS9oWtZkvcK6A7h7Orfn
         WHBpDFXZYeEwyEbbYExDSOX4LcYGUOMGE/Ix1tyvN0s4CIU4xyomrmPYSbRlysT26/gR
         am04l4ZygLtSdPoyXL9Huy05eryVJqwBSE8HLcfClhV3AbRAX9BvpV7N08BnSawMZ22v
         30FpZhJzfQQfgdwcDFcIi9sKQXtEPEnQ87ZFnjwGGVgu2dnENW5r6t2dr225x8mDiE7Z
         xJfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ue8Kphmgd/J9kkCdXQ6cXg3jN2T1s1VI/S6KEmBFYtA=;
        b=whWQYMB2g7CXWC37YeHuNFhYtdoEqaeDwUisDUokwz4FjMC/y4ef+Tru/p65CdQtRt
         tGMQPe/Gw9m+XII1GS2PYkgTKlayabUIs8Bk6bFory1jzu1s6WCGIA9M6XWUJBpgETdc
         FsEjh9WMJjX11HlGy3nfoiZw9b3vEDeHQaRTNPy6KGrA/TFICTDaqTnn92mgcSU0KxMj
         o8w5cIHbJNgf1UNTMZqaSbWbxLJfl6C/c0pyjTN2qayMXCznQ1V4VAZOcYmT/cduy16J
         EfEe3fGpj/yjvQkBHA4R2CYdd8D/bRT2rZHlMJTxG1BUn9jvl3K52nfjnubJlxeGtZth
         OIRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tyuzf6eg;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id a16si77504lfr.5.2020.10.21.08.01.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 08:01:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Received: by mail-ed1-x543.google.com with SMTP id t20so2881653edr.11
        for <clang-built-linux@googlegroups.com>; Wed, 21 Oct 2020 08:01:49 -0700 (PDT)
X-Received: by 2002:a05:6402:135a:: with SMTP id y26mr1563112edw.114.1603292509011;
 Wed, 21 Oct 2020 08:01:49 -0700 (PDT)
MIME-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-23-samitolvanen@google.com> <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
 <20201015102216.GB2611@hirez.programming.kicks-ass.net> <20201015203942.f3kwcohcwwa6lagd@treble>
 <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble> <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net>
In-Reply-To: <20201021085606.GZ2628@hirez.programming.kicks-ass.net>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 21 Oct 2020 08:01:38 -0700
Message-ID: <CABCJKuewXazmBpXz5irWgy+W537x1Lws5YAsFqMgo+Yio8iyRg@mail.gmail.com>
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
To: Peter Zijlstra <peterz@infradead.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Jann Horn <jannh@google.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, kernel list <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tyuzf6eg;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Wed, Oct 21, 2020 at 1:56 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Tue, Oct 20, 2020 at 12:24:37PM -0700, Sami Tolvanen wrote:
> > > > Building allyesconfig with this series and LTO enabled, I still see
> > > > the following objtool warnings for vmlinux.o, grouped by source file:
> > > >
> > > > arch/x86/entry/entry_64.S:
> > > > __switch_to_asm()+0x0: undefined stack state
> > > > .entry.text+0xffd: sibling call from callable instruction with
> > > > modified stack frame
> > > > .entry.text+0x48: stack state mismatch: cfa1=7-8 cfa2=-1+0
> > >
> > > Not sure what this one's about, there's no OBJECT_FILES_NON_STANDARD?
> >
> > Correct, because with LTO, we won't have an ELF binary to process
> > until we compile everything into vmlinux.o, and at that point we can
> > no longer skip individual object files.
>
> I think what Josh was trying to say is; this file is subject to objtool
> on a normal build and does not generate warnings. So why would it
> generate warnings when subject to objtool as result of a vmlinux run
> (due to LTO or otherwise).

Ah, right. It also doesn't generate warnings when I build defconfig
with LTO, so clearly something confuses objtool here.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuewXazmBpXz5irWgy%2BW537x1Lws5YAsFqMgo%2BYio8iyRg%40mail.gmail.com.
