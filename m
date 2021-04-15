Return-Path: <clang-built-linux+bncBC2ORX645YPRBTWB4GBQMGQECHCWGPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE26360F63
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 17:50:39 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id z12-20020a170903018cb02900e5e0c43d00sf8944030plg.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 08:50:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618501838; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vt+eExZ3NNHifPOrPZxAvLNISjztV2rB4SXvUpahMvMrXV5vEaOFEB/iSV4oL2xuUy
         w7lQXkYlsyHIyk/4R39zfF9TVgbUH9epfEoceDIPg4eaMIivSLdHipqW/L/27GXGiMax
         oKEX8jPSOSQpRufnwSYc+zzjtN6nx5e7+ELJn7z5l8dNDaO0evv4+2mdr9qJeSJLy448
         vTGWfpHa58CfJbzw22cn/wNH36SmrJs9cNNDyErqQ2O1MgiD1RTBClljU0sEsUEpxyO2
         j+Da4n4QTIq4MDz6c9U5qEnRmAZ6JX2YHezXdyy3wYx4FFYTRWhrUo+CoLdobBE8ol1O
         WOSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PsR22lDVu+D5ADlgagp2R8LDNGecPK3849P9sjVrMM4=;
        b=McN5orOWjKx43o/1UYOseffxjt5yi2dPEPg4Nhu2E3ozcMRSqB8N1ofiEYkmoT4FEo
         cv4CgUiBK3fEC3MRxk7sai2xwiQ3sZlzpo3olcb/IfE9gU/MZbKYDZuo3yhXq3lb1iD6
         b4pUvSLtbOLXNvGmbsqODFP5pNQtWUIHzRBqirRMbcQhcc9DyNQu4QzlLLDpwJrVOcqg
         9/71PPbYpT3rsiSdcsoRgpvuMlzmCEZYA6kj4mn2FFKP8HFSTfEW1KmVkZKs+bzryEU3
         hl83JqKNhKfatar5Vlv6b5t8rIBLaYQXk/V2xfqsyPyIAJ+FLkO9OxsHK8sy+jiciEcp
         A3NQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bEB5pWOw;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PsR22lDVu+D5ADlgagp2R8LDNGecPK3849P9sjVrMM4=;
        b=sK1LOaRQuLEoXDKEfxNc62TaLN9JbHrrZz3qFOSLmjuCw95Hc4QAwRHW9pJJkFAjrc
         CP66t5FKdolosaPNKMEJ4ascmUsXxXGN/RCLxjTj7CuM7pfCGk/Cx1Ns6cLMHYIIaQtQ
         7fkzmswGw5kl4jXGKQ+/RJOMzkp+j9BLzZhwMx6J46eGEF1AhNjOPx9DpuKiP2c6oafy
         HcAkf4x9dd8AfwXYVGBz36Vjzj05Zpee5P2CzYB2w38M4sO14P5KaP5RqF8O+4NMb08e
         kDPvd61g82O8ZDCKbrygCsBg2JRFzS+ChenxKbyPx735iwHAVLrQN40ye7YsoXN5zjLm
         VWFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PsR22lDVu+D5ADlgagp2R8LDNGecPK3849P9sjVrMM4=;
        b=r8HQ+xe34l3dGPjmj7LXTzsS843/qMu39KfRJccH+gTn5UncfMbxowcR0EM6hRKvGg
         1AbxqXq3J0/m873uojW5H9uLUnQbQzMiUqE2iS4yX5fxVf2Ia4xROaLjfv0gwOfey7kf
         HK3pC5IXgnmLurxL5kqjJbQso9TEBVfNec0h3Hmtal2z4RO76HQN4SZiM2EJ1U2c7R3u
         UrPJXbG3siwS/VtzxqQzsL6q7l/wnw1hDQ0fvdCnLWBymWjrD7dWO+vH2eMnIf9kjG4Y
         tHdF7MDcYJ5Z/aymyZ5T583URyhwDRumzv24Ye8Gm7QGHp6gDAWsGIf4xm+87E1ajQLl
         saHQ==
X-Gm-Message-State: AOAM5313F3fj1kfvm1QyPu7NtN3OrEGOXZrskx97jh55QeCCSKjExYUz
	E0Sq2iDnjoUg0rFEIgHTkMg=
X-Google-Smtp-Source: ABdhPJzi86owEKSOru2w9nDmzLPTMgE7OFFvBWUKftrLN3jCrYpJStjjdWfA3deymtVN36hELwjL+Q==
X-Received: by 2002:a05:6a00:1384:b029:242:9979:b1d with SMTP id t4-20020a056a001384b029024299790b1dmr3948136pfg.63.1618501838547;
        Thu, 15 Apr 2021 08:50:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ecc2:: with SMTP id a2ls3417132plh.7.gmail; Thu, 15
 Apr 2021 08:50:38 -0700 (PDT)
X-Received: by 2002:a17:902:dac8:b029:eb:14e1:5057 with SMTP id q8-20020a170902dac8b02900eb14e15057mr4602399plx.65.1618501837937;
        Thu, 15 Apr 2021 08:50:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618501837; cv=none;
        d=google.com; s=arc-20160816;
        b=BGIXfwlyUIK4Ij7hyPotObIGoFQAcguMCpE0/hryF/Mpoi7J/UaNYQ8Y04UtRUVrT5
         GwDCcAnMKEBTIbvy3ihEhp1fQ/cjXqVUJ3uDHh1thmVU6Ja3Xmjbu3piGQf8wbD0kRlR
         1T5CrA/NM1MJtxtlZqcGtXyDCaBB1vVb+GRkk1s/WB4327c7e9EASvbgvNoSAmwufpd6
         /JD6PYrbrkasQoxD7zvNTcb9ejcmiTjexNBOVTFCj1RWhhGOjkZJ/bvakrwWmRLTOrBb
         GmPoRogz2RAXUVJcn/6vORELqjjrE2iry3Ot9zTSVJ8sBc/GJd6ItrnZXd/kROPGLvBa
         8Ltw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fYilzRCKDkKUdgOhlVcbbYfdjO7wy5E8rO0x4orHhLA=;
        b=Zk/t1mTQO1iefcWSLWeBLbSa373CLrEX3UwpD4h2Bul5QwMi9iEiOu9EOVGId4+kNS
         EU1T6FipTqF6LUI2wCkUWd+YpRZf/cp3aq5XGnWWskg7qor06bwpnZqp6EJSU8ZK5l6Z
         xwROi6ylpL8zbXNqk9P62H9BBHWF3J66cPF2HshzTyiGvDJ6hbBZQcwXAJYqGGDw3uvK
         Kz4tXScsTGEDXZ53ISJmdEKMhj6XeDBAZeY8B6bawzHaxc2km0ejMykDHnwQRtN2mcyL
         YvbAJ0CqZS88Ou3IpV1o084lw+U2r7EhjZruFURxbdslZC+UZgJTDYEyjaTKRn6zVGYZ
         p9tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bEB5pWOw;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com. [2607:f8b0:4864:20::b29])
        by gmr-mx.google.com with ESMTPS id l10si276814pjw.3.2021.04.15.08.50.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 08:50:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b29 as permitted sender) client-ip=2607:f8b0:4864:20::b29;
Received: by mail-yb1-xb29.google.com with SMTP id n12so26640549ybf.8
        for <clang-built-linux@googlegroups.com>; Thu, 15 Apr 2021 08:50:37 -0700 (PDT)
X-Received: by 2002:a5b:54a:: with SMTP id r10mr5087018ybp.476.1618501836920;
 Thu, 15 Apr 2021 08:50:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210414000803.662534-1-nathan@kernel.org> <20210415091743.GB1015@arm.com>
 <YHg+5RSG4XPLlZD8@archlinux-ax161> <20210415140224.GE1015@arm.com>
In-Reply-To: <20210415140224.GE1015@arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 15 Apr 2021 08:50:25 -0700
Message-ID: <CABCJKufDUgPSRQi1ZQRk=upNtziKDJ8rTBHgq2oQpPWS=utrvg@mail.gmail.com>
Subject: Re: [PATCH] arm64: alternatives: Move length validation in alternative_{insn,endif}
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Will Deacon <will@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jian Cai <jiancai@google.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bEB5pWOw;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b29
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

On Thu, Apr 15, 2021 at 7:02 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Thu, Apr 15, 2021 at 06:25:57AM -0700, Nathan Chancellor wrote:
> > On Thu, Apr 15, 2021 at 10:17:43AM +0100, Catalin Marinas wrote:
> > > On Tue, Apr 13, 2021 at 05:08:04PM -0700, Nathan Chancellor wrote:
> > > > After commit 2decad92f473 ("arm64: mte: Ensure TIF_MTE_ASYNC_FAULT is
> > > > set atomically"), LLVM's integrated assembler fails to build entry.S:
> > > >
> > > > <instantiation>:5:7: error: expected assembly-time absolute expression
> > > >  .org . - (664b-663b) + (662b-661b)
> > > >       ^
> > > > <instantiation>:6:7: error: expected assembly-time absolute expression
> > > >  .org . - (662b-661b) + (664b-663b)
> > > >       ^
> > >
> > > I tried the latest Linus' tree and linux-next (defconfig) with this
> > > commit in and I can't get your build error. I used both clang-10 from
> > > Debian stable and clang-11 from Debian sid. So, which clang version did
> > > you use or which kernel config options?
> >
> > Interesting, this reproduces for me with LLVM 12 or newer with just
> > defconfig.
>
> It fails for me as well with clang-12. Do you happen to know why it
> works fine with previous clang versions?

It looks like CONFIG_ARM64_AS_HAS_MTE is not set when we use the
integrated assembler with LLVM 11, and the code that breaks later
versions is gated behind CONFIG_ARM64_MTE.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufDUgPSRQi1ZQRk%3DupNtziKDJ8rTBHgq2oQpPWS%3Dutrvg%40mail.gmail.com.
