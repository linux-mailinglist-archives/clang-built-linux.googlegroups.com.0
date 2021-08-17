Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNHA56EAMGQE3S2UOAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF5E3EF0D2
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 19:21:57 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id m4-20020a2ea8840000b029018ba0baeb6esf2935ljq.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 10:21:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629220916; cv=pass;
        d=google.com; s=arc-20160816;
        b=RBs46+0hhr/BvOkPb7AGq/0t6/ejOu/HvlKhdid8fIGd9hNRUxT8rfTlCYzpz5A+L+
         oG0rPMGdrUH1d5inM7ZduYF86wfDgdMJRZkAFBiR0R+4BiIUXVABaGHXuq1sULGsJSjY
         7cDRAYsu/OXlU2MXoQXE7rDgsuCGYWD8JVRXOCY/Ob9s64TYyfbcee3QRc0hBD6a3Hl4
         Gi6DGX+Vk4LY+9mKtNz5hAZVLJXAnRKcqb1f2SzEmGCeX/Fs6pxTei6kE3d1MbSwq9Ak
         uuVUtH0laMKkQ+AO0ujIB0KhNtUOT/irlxdFVZmRSZuO+r/qCx1gjOub6cnDk4qthWwa
         yN6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OMjLYTmkl6588D5Jh0TjFP4GMpTs/ktBHiWRWXricf0=;
        b=ebUZ2J5BgbsfNdK2eXHj6ow2F46CDdyT3FqSWp3koVuZaQ7p/+HWztpA4ZjDhJvk5n
         guAwKdAhbTjsKxWL/DzDebjagcmAn2HtkuJeukuiYY7mR+buXTldwz2toSvZHPN6k9Y0
         +Y+mw0jNgvSnXzhN3gg6Wpxx41Fng7bMbDXnHXa1okMy5XgsbMlzyiM3Wk1Ind94EB82
         ceUnuCcWrPd2C1Uurx0HF1ueqULvpkAFL8Nx6aMvfaDIyVdDyYKDD9pkqJWeeC6qq+3Z
         clv+Q15VqbTM3ezz9sNl0Qk9hOEuuA6+LlpAq3mw7oB4hD5Sgjkofm5lemZqqBwPqECj
         nlYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mdRUn6x1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OMjLYTmkl6588D5Jh0TjFP4GMpTs/ktBHiWRWXricf0=;
        b=MM2oOm9BuHnR6i3+rS9FqIwFx3BgUihqODBcGsJnBRl7avRQVDOf9r7mWhhntt+ONS
         b4Sr2idiCySyANN0BfGfVYZRhVdqQKmjn7xdQPcxXj5GrZCaVAmqcplJB4GAY8jpeww7
         DFJFpH0seOpecS4xIzWb8cXDc6YQKzQggE7axhN/YJ8eg8HDpZhL9jIa5Av7s8BIs4+o
         O8ZD5hrnw4mWXcuTBZrMtqEnQiaGy3DLGFFu0J6WHe0xTN80IgVer7fxB6asJ+BPlptR
         NdR7buVB5iz9BzW3kLVwFik9bJUjSfwb8PnbdixpfmC9g2c4OMTNfp3utEcPQlxbLYAF
         hXJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OMjLYTmkl6588D5Jh0TjFP4GMpTs/ktBHiWRWXricf0=;
        b=tWnKRoLTlxDwpQgCj44VQQO5+F7Y0n8xEk7/jcrWtGHgqoz7TEpp49BVQDp/6REhgd
         qG4JIU5wtK37hGGxR/KahhCOSK8u6ur5U0B2c5/xFW31IXFqnUJtAd266xeXZU/9uAYp
         LvNuK0713QIU+r4BQiDz8SSWxwiHVT2Acv5DTv3L8nJI8P+uqGGE6ifgiTfETI66zzmv
         H+vuYIgD8y4a+4L76Ewyv/WGJw736nvAuFStstpJDsyyXQrnZU2Rmb5Qi7eEmmFQB9M+
         W5YS60fbxj5yQF/w5o3UwqkXfG27OT2Jj5q/J0zX9D5fJYxP1lD0rql6KOR4y//psEPh
         K+Hw==
X-Gm-Message-State: AOAM530E+Vb4yZraZl5AxEozRqVER7ZxjzcRiDYa54LlkIbxvI+sEDsV
	MyR9H0cf4uOy2fK0GBpbS6o=
X-Google-Smtp-Source: ABdhPJz/4JBCNXEsmS2Vu9V3csv0dp92kzTRH0yXBgpWEA64++7frJaaMcaxas8ZAvm6O9IB85nBaQ==
X-Received: by 2002:a2e:9881:: with SMTP id b1mr4171523ljj.53.1629220916850;
        Tue, 17 Aug 2021 10:21:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:597:: with SMTP id 145ls663663ljf.7.gmail; Tue, 17 Aug
 2021 10:21:55 -0700 (PDT)
X-Received: by 2002:a05:651c:10a2:: with SMTP id k2mr4282877ljn.262.1629220915736;
        Tue, 17 Aug 2021 10:21:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629220915; cv=none;
        d=google.com; s=arc-20160816;
        b=XTNtAOtqTZapXXi90fXIxZVu+Jyj067kX1DLnxuTpmmafW4XFH9vhamFZLpL1r2LCT
         SwWqEmWZST3rywJ+sBTZN6ry+xiAgoVMaVC3HaEZL6vmz4gD6hjtwZG5j1tqpuOj4VJf
         UWScYlOS1oiR6w3BpK9fNZtPnSyjHg1j2HIuT6cy5XJ6ycUBzwdn2EmcCvQiCtbUE+S7
         u4voaqEEdIMxz9sE+NYwDERRjFGE6e4Mtkc2iojzrQWurZSKQ7wMu4LXZbs0c4ea26VD
         hZZGWBBZDzigM3tI/4FEGloZjSoI3ttmog6SyymJ5rg1CgeLlgWoy/pHamhE7lhRd24a
         7G9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3X1BC7PPR91AzkZVPY079D24jTBNxGREHh/LUtkplj0=;
        b=R0UO+XS4Xxytejm3q35Jzx/jZFUPs++bGxZXx8MYuNjpj7910BOTAeBrB/hDADqXiH
         u5+rzibgnJNfm7Q2DzlAiTFnEJlAhtcahDS1o+NXAdPnAmiRElbd+Fjk2oVq75W19ON5
         xcWAcjcU3Cneku4sDukecICy8sYQTGYlgWQvSC4pc0FhIayaDhEUa68cqxTY4T9Psyt+
         x98XqJU+kA/2RJyViB+AgJSQHBhH6y5cM48BEtD9b5H0btivhKMneWsuLR7j4jimrMg/
         5QaFQKBu9rs5rFECvRoqjFrJ9fHeAx2i+s33ejKR6Tf3bF5oNBgO927qFP4HvspR0prc
         OEKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mdRUn6x1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com. [2a00:1450:4864:20::236])
        by gmr-mx.google.com with ESMTPS id x17si126584ljp.0.2021.08.17.10.21.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 10:21:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) client-ip=2a00:1450:4864:20::236;
Received: by mail-lj1-x236.google.com with SMTP id c12so116ljr.5
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 10:21:55 -0700 (PDT)
X-Received: by 2002:a2e:8109:: with SMTP id d9mr4196864ljg.495.1629220915132;
 Tue, 17 Aug 2021 10:21:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=8w_nnQpbY2Yyg35oY8j+K0yL6K32Cd9wYLp2VTvQjXw@mail.gmail.com>
 <CAAt6xTsbC5m6XDkW0DG-ECrhTPHVKiixvb7_3De9=eGENHHKhw@mail.gmail.com>
In-Reply-To: <CAAt6xTsbC5m6XDkW0DG-ECrhTPHVKiixvb7_3De9=eGENHHKhw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Aug 2021 10:21:43 -0700
Message-ID: <CAKwvOdnc3pGLUiKRdHMKUADkqb8OxeL8sKfFKxP5CM0xOb1A4w@mail.gmail.com>
Subject: Re: painful llvm x86 bugs
To: Aaron Ballman <aaron@aaronballman.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, Bill Wendling <morbo@google.com>, 
	craig.topper@sifive.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mdRUn6x1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236
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

On Tue, Aug 17, 2021 at 3:29 AM Aaron Ballman <aaron@aaronballman.com> wrote:
>
> On Mon, Aug 16, 2021 at 6:56 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> >  I was doing a bug scrub of
> > some of the missing features used by the Linux kernel that GCC
> > supports but LLVM doesn't.  Is there any chance that you can have some
> > folks on Intel's LLVM team take a look at some of the more x86
> > specific ones?
>
> Sure, I can pass these along to folks internally. No guarantees on any
> action on them, but I can at least prod folks. Thanks for getting in
> touch about them!
>

Totally; we meet with ARM every other week.  I wish we had that
relationship with Intel.  Once we get a build up of bugs that are very
architecture-specific I try to reach out to some of the folks working
on those backends.  Next up is for me to reach out to Ulrich and
Nemanja at IBM about some s390 and PPC bugs.

>
> > * -mno-fp-ret-in-387: https://bugs.llvm.org/show_bug.cgi?id=51498
> > * -mskip-rax-setup: https://bugs.llvm.org/show_bug.cgi?id=23258
> > * -maccumulate-outgoing-args: https://bugs.llvm.org/show_bug.cgi?id=28145
> > * __builtin_ia32_readeflags_u64() unnecessarily forces a frame
> > pointer: https://bugs.llvm.org/show_bug.cgi?id=47531
> > * Inline asm constraint alternatives ignored:
> > https://bugs.llvm.org/show_bug.cgi?id=20197
> >
> > The last two in particular hurt virtualization; reading/writing eflags
> > is significant overhead in virtualization on x86 and with LLVM due to
> > those last 2 links we don't have a way to read/write them as
> > efficiently as possible (as GCC).
> >
> > --
> > Thanks,
> > ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnc3pGLUiKRdHMKUADkqb8OxeL8sKfFKxP5CM0xOb1A4w%40mail.gmail.com.
