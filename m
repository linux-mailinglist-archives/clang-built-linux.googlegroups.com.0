Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBMTZSAAMGQE4HM54CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D60E307E82
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 19:59:18 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id z20sf4507625pgh.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 10:59:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611860357; cv=pass;
        d=google.com; s=arc-20160816;
        b=Iu7S0HBN2LAWb/QAot2dfIKW0PPeWlxacw1SCy8FO0ZpiyDA2AK+u0nF5+CMtr4pNB
         mmk+kZ6aSahrN5JHClxroFYcam8vxeI8g2xoq3q0XRwfPFkTMw0N9grYi4SD+RStt/aX
         gIHCryFoH1or9a28IOF6ZihiHVBtHQ2DX8zLzE28mtSQh72+DqEeruvZkQy2fohlWEd6
         NfI6T0DRgcEyLUz3XfB7FLardTcxYWtB+2Mnnn22YxmuvW7n2ztqzOveRrE+n3BywbiG
         4YO78+1DAMixdx35i5eumHxi51teEeeMzFb49P4Hmen4MxiVqnF8G5rgdoMbsh5GqH7e
         KZug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AAw4JuQn+udIbOY0Mg/ks51se64sQQ6vC2lJgn0SLKY=;
        b=zrScZmBKarOYw+L1dXIjEET0eejb4jw+B8/xNwLmFYi6GFgoNX6bEI1nD0+m50wbxp
         OCNIrAeTVYMIFah7lAHEnokbqsW5wFA336IIIuQsGVNaVG0D40xLFPpdxZjLvkFIn9W+
         QQx8LoGVy0GexYtuHZoMp4T/wM27bkLJmkFUD42wHflZ2d+rKqi9Z3cVeIOYRxdg88PN
         xmV5VFgw7kAntq4bpY0DM9uSHvG+HGwijQMf3pjF00KV9IkGhAMULfazohyHn9O/gDxv
         bXFHrUZ8tvgUOzycxCIw5UoZ4UcUlN5tLL/BzhV1PF/bs3tFQ69O3z3qG51Nq6p7TRle
         3RCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XL6sjjvN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AAw4JuQn+udIbOY0Mg/ks51se64sQQ6vC2lJgn0SLKY=;
        b=HqcZVbHO8K3vOCnTklq0DPtkVQpJ88AystlbLQ4o5ruAYFXe/ts4NKK+Chs7HlHnR7
         pSAA24gggY4o4x5nEQRf3FLgUuMJ1Fv6zc832kTqBhYURLvijYnlyU13t9fFYja7667n
         j4WaAYoaO0Q5WbkSV/azlESIOTePWCNUqOxAsO5HIpZT680ZbvO4qv/3bqHkdPQvk3uC
         ljH0Vil/FRXRBWA9kBFEGjvnANhjAqSdjjQ5VJt+gk9ARJjfL7BSgOF3K9Zma0acXkAG
         RydL+N1rGdE5O2bGmIHVYes7KCdvnL1EuklHTh5oynFqJkOE9IdvcdJq6igqoElBH2HZ
         kjNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AAw4JuQn+udIbOY0Mg/ks51se64sQQ6vC2lJgn0SLKY=;
        b=l+XeacodVhbRIVDcOZSzxHBtAQkSoHus0QjmQrAVSilwZQkxtbe845ygFyc2RqTM0b
         H4f77wUjelk64mzPwzEbBCyS3fMY4u5NMx2SmylXmo5fwYWu2Be7eQlnUwPCDpFJX/PN
         LbIscJG3UUyzqfILXm1L64ZBR/hx88GBeD7gS/qjdws/qKqtM1kzVRYkw2R1LHkU9EKG
         Thmir0M7cMqJw4sm/APvazjkuQZCBwRkCs6gpekyzOpd2MEZhDy3no7AdoI1DM00jXlT
         JUWhd9rPGKlcfMx5Ckmd1HbfxKOb36cNnG6pPeleMxm/ZVLnYn55go+6cR7+AZopbPIU
         2Vtw==
X-Gm-Message-State: AOAM532PxOKR1O5d9o5hxBregV5mHIr8MMCy0XVFcrxsm6j8qNlA2NkF
	1wpPvUHIyXIF5TftXSDLFPY=
X-Google-Smtp-Source: ABdhPJwXLenBnpondLm5sItPddpoNwUK7tVFvTQ0xi9UI1RNskeCkl3FsWBMculkpqpgLQpf2MU/9g==
X-Received: by 2002:a17:902:6543:b029:e1:1758:649f with SMTP id d3-20020a1709026543b02900e11758649fmr895840pln.38.1611860357256;
        Thu, 28 Jan 2021 10:59:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ce54:: with SMTP id r20ls2520887pgi.2.gmail; Thu, 28 Jan
 2021 10:59:16 -0800 (PST)
X-Received: by 2002:a63:dd17:: with SMTP id t23mr872900pgg.320.1611860356669;
        Thu, 28 Jan 2021 10:59:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611860356; cv=none;
        d=google.com; s=arc-20160816;
        b=g/8IHyDC16YH6yrKuwYqg/GGWqSUFA+hRZXxwPR9jLWstCbVe8oslMCduIba60pvmW
         WxF50GqEvVxbj3Z1i5Zeqpav7/AziCqApcOTscUc7NBUsplJWL+m/8WYYnw5eE051Xlz
         Se03/U1qs1EIXj2w9MwXVpolrqWUj6Tq5KAJYDOoin8eHaKi0CaTApGRARQNWH5BKe1s
         IqvU2y8semf68i/nTWXWk0IlLgTj3w7h9tTRlJZBqEFC0tG0Wm4nlx5TP25Ygi8Eeii2
         Se7aqOlVpuz4XObo0Y6dP/5UL66OIRmAQcJngPL64Dd9NLlh+V4DQna0GfroqO8iMAf0
         WFBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jjSXs+FCSZ4k0Esl52QXVJHzbGTPt05ZJ1TYO+nt1PI=;
        b=PeQsrmVTibW+Q+vFRMKlKstSOeG8qlAgp3ayyBa15+NmejqC7QMcXAJWnU/T1ZI7EJ
         k71VSnb2K8W0tTpGmyxJb+KGH4x20YkAdZ6jdR+GQdhOYeBKhShdVbH0fzzYoQWJI3Yf
         OX6yvfWflhH9oOOl47QI0/I6Jpve5oESXsamY7lOrbKe1F5rOU47EbHBGcd8D4/LhddG
         vzadZiNewIfh/njLn9HV3LDbO5we94xuFhj57Ufx0JjDxX9VsTp/riDMUKxUjI6GzrGE
         jQTmUbphnwTvaL3Fo4wx30r3H+Ao1A/hnPBIPjAvvx5lZDKY1pnAkS5k/DPDikBrit4A
         u7sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XL6sjjvN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id m63si341411pfb.3.2021.01.28.10.59.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jan 2021 10:59:16 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Received: by mail-pf1-x42c.google.com with SMTP id e19so4599244pfh.6
        for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 10:59:16 -0800 (PST)
X-Received: by 2002:a65:4201:: with SMTP id c1mr867900pgq.10.1611860356233;
 Thu, 28 Jan 2021 10:59:16 -0800 (PST)
MIME-Version: 1.0
References: <20210128044356.38419-1-ndesaulniers@google.com> <CAK8P3a0MbxMC9iLe0NGR0ttLY7sZDjsrgKvfRZOXVJLjzDNKmA@mail.gmail.com>
In-Reply-To: <CAK8P3a0MbxMC9iLe0NGR0ttLY7sZDjsrgKvfRZOXVJLjzDNKmA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 28 Jan 2021 10:59:05 -0800
Message-ID: <CAKwvOd=ORiCsvv_XQ8By8ZUe0QnzH3T6pFEwnRy65tmUsQ2yQg@mail.gmail.com>
Subject: Re: [PATCH] ARM: kprobes: rewrite in UAL
To: Arnd Bergmann <arnd@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, 
	Ard Biesheuvel <ardb@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XL6sjjvN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c
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

On Thu, Jan 28, 2021 at 8:15 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Thu, Jan 28, 2021 at 5:44 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > Clang's integrated assembler only accepts UAL syntax, rewrite the
> > instructions that were changed by RVCTv2.1.
> >
> > The document "Assembly language changes after RVCTv2.1" was very
> > helpful.
> >
> > This exposed a bug in Clang's integrated assembler, which hopefully will
> > land in clang-12, but is required to test this patch with LLVM_IAS=1.
> >
> > Link: https://developer.arm.com/documentation/dui0473/c/writing-arm-assembly-language/assembly-language-changes-after-rvctv2-1
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1271
> > Link: https://reviews.llvm.org/D95586
> > Reported-by: Arnd Bergmann <arnd@arndb.de>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  arch/arm/probes/kprobes/test-arm.c | 288 ++++++++++++++---------------
> >  1 file changed, 144 insertions(+), 144 deletions(-)
>
> This mostly works, but I see one extra case in some configurations:
>
>
> <inline asm>:20:5: note: instantiated into assembly here
>         1:      swpvsb  r0, r1, [sp]
>                 ^~~~~~

Thanks, I was able to repro with at91_dt_defconfig + Kprobes.

> Plus a lot of extra errors when building with CONFIG_THUMB2_KERNEL,
> as that uses tests in arch/arm/probes/kprobes/test-thumb.c.

Technically, that's a distinctly separate issue;
arch/arm/probes/kprobes/test-arm.c is not built with
CONFIG_THUMB2_KERNEL=y.  This patch doesn't introduce those warnings;
that file has the same issue but it is separate from test-arm.c.

Would you prefer to see a v2 with the swpvsb fix contain fixes for
test-thumb.c as well, or a separate patch for that?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DORiCsvv_XQ8By8ZUe0QnzH3T6pFEwnRy65tmUsQ2yQg%40mail.gmail.com.
