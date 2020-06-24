Return-Path: <clang-built-linux+bncBDYJPJO25UGBBREMZ73QKGQEUOCEI6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 82AC2207E99
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 23:31:50 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id v16sf2307237pfm.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 14:31:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593034309; cv=pass;
        d=google.com; s=arc-20160816;
        b=uDyg/8XVD57HL3r44n6ukwjln3MBf8QEVNpVJsLDy/5hD7qPYWcEZS/L9mo9D6WBn1
         OpEyXGF8mUlMO8h5M98xNS23a2UZizcNYdVgNjYIh5T4BnCgpg6F77P9CXfhRqo4T32Z
         zCMbjZ/IiUiywESj8P995tZXC8VdE+qzVyl4RfaSQfgzLS4y+7pJuE8DD1RiqduPDogp
         qma1JgEHw1aIedccZ/ghmYw51UR2YHn9H4Jb4Bgb6h2KjiKRIQuMzlchHDhkLqt7eqfc
         D/QbOhRigS3jaKkBgP/WGhBnZhVqRcTofQ9uJKHUpW3zyeARN/OXxnuqS9THbp5FUvMn
         Lp8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=RmPVn5mkvvtF3m2StKQwZkni329NsM6AAMT/t0AKv1M=;
        b=ph7NRqTqDyQa/+Zb2Vf7ll3dXc6+ysg8bLQ5PbK5b93lujfLyiYfiID7lu9IAM9T8H
         pDOfl5xBKHSzgu+rnY6aFi8IHtbT+7SigzD19D0Aj7Vn3I5GXf3eKdcYbuKVqtStCEfA
         GBUTAdGVFwV31ZaNxLP9WUwitcPOUAzV+8LFIy1wb2bunrbfTzCauSFiNAQ21PMO+eTx
         qt3qQ6anWC1DZrbIdnSH+6fw72Qu6+gXs3Y0IsTnsPoGMzXKnqyPEXLsA/dH2fOOBDTV
         Nvt0eXf1cuVGs/qGxqjgCBrJMp2nwUBi9aKP21Wth55c3ts+RsDIFp50u1xOmJqTCYub
         C5PQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YLhBzo5t;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RmPVn5mkvvtF3m2StKQwZkni329NsM6AAMT/t0AKv1M=;
        b=HyD7MHXZ1F4/5y1rzhfDwLpdsTK6wLqPXtozg0+U3lLyZ3WyJNV1F9mINu1sksAgO/
         zq9OMVamgOVIXEAvI1bUvl57X+ryoD2qSYmcjPm0XrYq4LVNaPE23c9K92PoU8sSour7
         zZtSEvbdbj82IGw1B2OI9S3yY9rDQYF5pKGyOAd1V7t1KBt9nmgxRqfFZ4eud8YeG344
         bGv5EtlwRG5kUp5btG86Nb5XPGzRDJr/QkgwkyhOVOjDqgbQmlAX532MUWLnsT4wYGwU
         Q3om1L1b3AIk0o3ej67jifgxOyxVNjTiJvNiZbxrafeoqF8g2ZHaKBWGqCEvPDJ6V+TH
         PRXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RmPVn5mkvvtF3m2StKQwZkni329NsM6AAMT/t0AKv1M=;
        b=REvcSrWBo7pL6b7xJcxVVVdhgFTdF4OFVJn3r47IsVPBI4s3X+iiDyg5fAt1FdydKu
         y6jB6J1lUB7tQkjgiPiew1fAUp9OzYFQ1qIeclgtmSBDN6c8WXI+UusVp6sfflpzTgXM
         j5OFc/Ji5frZ+eseukXVqurqdsXy6CPoAOrANupIZA8kwiL9yPxJFRniw1708Jbl/EyV
         TVq49nOW9Fax0TgxanXJz/4+G4hCsOuwgipEEujuBTdD+vgM+MG8WzHOChWrFLhpr9sU
         T38AFncRy4JZ8AU3wzlZuS9vbCQeQ1u9L50dNQwOzqmgevdKYJyuKoMioNMoXAxfoXOh
         m4zg==
X-Gm-Message-State: AOAM532iAuQGLyPIPvI4cpwQ2TPz/SMeBXSXzzSrFOOdAS+Bebjy01Pq
	Scmc8QPv100RehAiqaimU/w=
X-Google-Smtp-Source: ABdhPJzh7uZcx8Bp+koB2VLczTbNQqs9+94aWtYOyDLbP9tGdcZ8XruKtrTK3toS9vZZ9F7GcSarkA==
X-Received: by 2002:a17:90a:c257:: with SMTP id d23mr30253971pjx.103.1593034308997;
        Wed, 24 Jun 2020 14:31:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b91:: with SMTP id w17ls1368643pll.10.gmail; Wed,
 24 Jun 2020 14:31:48 -0700 (PDT)
X-Received: by 2002:a17:90a:e283:: with SMTP id d3mr9696973pjz.170.1593034308601;
        Wed, 24 Jun 2020 14:31:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593034308; cv=none;
        d=google.com; s=arc-20160816;
        b=n112llxhk0tECqOfr8Z40UDHxL1I7/FpeUxd7/+QQxlu41Eu7ErtVbIUDEQBsTB479
         bF2hNvH3OQE07ApZdXlYLb8O1Oy7wAjLZoJxD+5j3fKaX6ACVj6wqMnwKi4iYYaBbTGf
         rfPDFv3h2j83IscDO2mVy3QLVAfBLqbxlWXbk4LzpbjvjSWJCnY619nbt+mOjyrlFqW1
         iuChV7pJFOwvlpCbjgax/mVDdPhTz2JCo/euISYpx/htrBGMQcmMgV2C+79Fsy5wIL2X
         /yRnq7DbQTjvLgmz0XC/y0yAVcg4Wo3FARIwc/kup/A/eajjW2BjaUvI8knssK0z2Y3k
         hTmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oeZYP2K14l8wy15C+mHJ7IGJGj+bMsdiaVhcvV254wo=;
        b=mfEpRhUvQP4RxUr6xhSQqc9TL43pswW3ZPSSOD1lP1uIqbRwcTN/brpOcylDgVTJ84
         WcDtSTeQ1EurFUBX6W3/xILLrHNM3XIdhFxX0CaopMPXf+ojJ3N7BvlXRE++AyT0vPG3
         Bzk3Zzg42MVlXLsM1ckXbd3nF4U5RkEoXprxboJtjoXyBZMQA2Dal0x3Vh0w/sNX5iLp
         q/3zRszSuiKR688lI0zcDQWRPewK8rVm+Q4a1w/IeJ9yf0lfd3tLF0eJ9Znmhgz7LAnQ
         qnpMrqqVPhb6GaQXvPIWNBO4n5mJ4XLjMjpn6viWgdR0aBR6pwVaI6g3w7MIxaqXqJgs
         ZruA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YLhBzo5t;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id p9si1040913plr.1.2020.06.24.14.31.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 14:31:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id k6so1653894pll.9
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 14:31:48 -0700 (PDT)
X-Received: by 2002:a17:90a:1e:: with SMTP id 30mr28248270pja.25.1593034308056;
 Wed, 24 Jun 2020 14:31:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200624211540.GS4817@hirez.programming.kicks-ass.net>
In-Reply-To: <20200624211540.GS4817@hirez.programming.kicks-ass.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Jun 2020 14:31:36 -0700
Message-ID: <CAKwvOdmxz91c-M8egR9GdR1uOjeZv7-qoTP=pQ55nU8TCpkK6g@mail.gmail.com>
Subject: Re: [PATCH 00/22] add support for Clang LTO
To: Peter Zijlstra <peterz@infradead.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YLhBzo5t;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Wed, Jun 24, 2020 at 2:15 PM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Wed, Jun 24, 2020 at 01:31:38PM -0700, Sami Tolvanen wrote:
> > This patch series adds support for building x86_64 and arm64 kernels
> > with Clang's Link Time Optimization (LTO).
> >
> > In addition to performance, the primary motivation for LTO is to allow
> > Clang's Control-Flow Integrity (CFI) to be used in the kernel. Google's
> > Pixel devices have shipped with LTO+CFI kernels since 2018.
> >
> > Most of the patches are build system changes for handling LLVM bitcode,
> > which Clang produces with LTO instead of ELF object files, postponing
> > ELF processing until a later stage, and ensuring initcall ordering.
> >
> > Note that first objtool patch in the series is already in linux-next,
> > but as it's needed with LTO, I'm including it also here to make testing
> > easier.
>
> I'm very sad that yet again, memory ordering isn't addressed. LTO vastly
> increases the range of the optimizer to wreck things.

Hi Peter, could you expand on the issue for the folks on the thread?
I'm happy to try to hack something up in LLVM if we check that X does
or does not happen; maybe we can even come up with some concrete test
cases that can be added to LLVM's codebase?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmxz91c-M8egR9GdR1uOjeZv7-qoTP%3DpQ55nU8TCpkK6g%40mail.gmail.com.
