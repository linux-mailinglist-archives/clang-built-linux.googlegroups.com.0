Return-Path: <clang-built-linux+bncBAABBO7UVP6QKGQENGVFBGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id D56482AE0CC
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 21:38:20 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id t10sf10250624pfh.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 12:38:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605040699; cv=pass;
        d=google.com; s=arc-20160816;
        b=VkYcwE4BKxmIOP97gcyHubtAMzuXXVhpAtu6bsfHeSAk0jGvgYfG+XeSdRsZUPuITS
         1MxBsFgb/1D979qcyql0bP5slAJpBZimojsk7JZkIg9xn5tS6glA/Yg3HVSlF7dzKbym
         kl/dqqmXPR0IypJ4quj+dZOf0+PfQFKZM7NDH+Tqk/XtkmYASF601ARZRZy0jFRzqezh
         bwbwDvTorhJMnYjycIW1zt8tVxXaRpDbTd2HY8noKJUrq4eaPt9egtA7ptPFzvqUbwMG
         3iKIXwGvQ0/Mjojamt+ke1rVTKZAgg92hxkL656dknRXL/4PcI25oFIFuxz+OH4g8s5V
         9ufw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=6b2c24pXmqPPHLgmr98AisGcYXwKKnAKZUvqliOmC2A=;
        b=y1hAsFPAeslQ3KZ36aQuQYbhrfLywXJJPwDUL4hNfUuS8hSKT2cHxvke7X+MVO3st+
         czlNw6VLnknkspelxA/v5kY4Oh2kCsSryWqNPQ88sL0MLa2Vc/uGhXryPOEWeNAlHuRC
         9cRWJH0NUcEvrhv51StSXqGKrWaJJ/hEylrUZqyfNqS2TkN92XkusCoVBpB+fnvdh99U
         XlK1l4yAEUajA8golQTO/RYjaGB1ocT1rkqcW+bckEXgaKuevqJTEUCZFBVV5ijq6xXW
         sw2MOrLB38qisZUQxHmYj0M3LMk1XTJe1zA0bnN52zkzwhpGkSENg1LE4OhiIFY1DMIv
         ApmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="ydR4/Eir";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6b2c24pXmqPPHLgmr98AisGcYXwKKnAKZUvqliOmC2A=;
        b=ZwLZ+IyXnCtj2ArD+Z4FEDvZiE9O2ql/MLBj+QW5/AjeV3QqQpb9XjtTx7M88j8f0U
         dKBM2qBk1tnbNrjWRlbKFEmhn3QWpSRdpjP+nbJ3toFECf9p/g+dQhOuFgbf5tCXEHLf
         Ofx/hR5+8fKnxqB07aPv3uGOsOmc/WePN/hbuJ5sDPF7klGvjCPxnjiUWA2QmYp+4+mT
         U6wm319UdTxr8DCYY7oltylsg+Zr1VBhZzYbbdb9hoSIG6P5ajr27m8FDYRtkp0Z3+6q
         CQQAhpyTcBOMzGZTfYlev15JnNmVwcWpC5qSLhrg3onMJuWIDuCDiwM6ErKRXc9qtKe2
         REmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6b2c24pXmqPPHLgmr98AisGcYXwKKnAKZUvqliOmC2A=;
        b=ckjr4C8KSbUQOqFd8ZGH28YAeMXJzszCsMiKnR3Nd3jJtlo6ntA2ZBTPUnjloGQQeh
         932ZjX66bFqRFl2p84T4PtPvXdNXkTEiMr+62ljhivuB+V0cohPumaV7L8++lLJwGbt7
         zD38zdSb4YRC2opCiwFe+yjjQZ7hvUEm8wA5rtj/PlNvqAgzJTuV4SgNjc9POrdjeyZe
         wA7unWNcWBvnttNdV2xgngr3kMhuiU3473nqK24sA1SFGYLRlAuhPCcwdD09pEBhtCUg
         LFMi9TOUdkj6T582zYbxz40AnlKBME3TJyam0+k84o2iddvFjAnv77PwETjRJDTOA+tG
         gbtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ekk6PCVoYAh6iciCCBM0/bK7hTcbqNgJzDQk8xN0Aj1joX1Rb
	QfG8B/1liIykHBjT5aFMvXc=
X-Google-Smtp-Source: ABdhPJwldAhtmmlSfUq/NruOJk4kjqA3MbnRElSncNoM1Blp1QcgSuenvvezHoPlWnSLIu5h/5ejuA==
X-Received: by 2002:a17:90b:4ad2:: with SMTP id mh18mr1054050pjb.0.1605040699641;
        Tue, 10 Nov 2020 12:38:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:483:: with SMTP id 125ls5097670pfe.6.gmail; Tue, 10 Nov
 2020 12:38:19 -0800 (PST)
X-Received: by 2002:a63:221d:: with SMTP id i29mr18618745pgi.69.1605040699103;
        Tue, 10 Nov 2020 12:38:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605040699; cv=none;
        d=google.com; s=arc-20160816;
        b=PXP1Zky9rkpIIMYB9eb14QyA+i3ot9HKvkTLl4XALaCa1D6kPz8OKCofFZK4Q67aUv
         HG68fQPJ4cs1/2mkwESJiA6CStA4VJ8NxubHoUmXoute31ke2+2+ba0lSRMa4HIDkiLO
         Ty1Y97BqIpFmVEHeFJTo6pS7N8eX49WOdkdVMcgQffeViM1cgsqUacwNvqRWGKJHDj7i
         wbfKxHNL6TRWunHs7veJBiXXlWfgvfdC6DbS3aaBy1TQPSpAXCQ8qrJAnQNvXAy3RzrF
         q27hQLUPGok+TvEwkrNEKjVwXBc7J8o5LbwOYy55genAZ+/gNOl6V6dhnAdMrNMwOn9q
         SV2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Tc80kAlvCvxRjD4UTOSL0n5lZnU+jppDrwgI3Wd9vUg=;
        b=Nn+3qCS10RiHe3IKDKp3GYzsl5D78v9xBAQm+SmwK7FEbO+BxZA5S236mExs0q8xG/
         zya+/OnR7ucle44Qjn+GM4tgyoziCRBCh/LFURZf3HoDLL90imI8PVMGpbfGSgUV97wj
         WBx1Co1p0f/i8tnW6Jk1XwpU/sXK1owbtoCvaETtgtWFCnOMSaOnuXOq9Kc0mWn+2Ut0
         MDN5zk9H/t4CGAt4sO7m8K8mHZvacwQVMFgE+ODcvEfALaAo4rJRROp9e6ICWeFbR1bP
         qS4iZgwSyhaWZQJIO8OOf1+ZBWfrO5KcpkBAfO545j+MmajMKlyeudtbvfRU2jQNKCGQ
         XlCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="ydR4/Eir";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x6si417687plv.3.2020.11.10.12.38.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Nov 2020 12:38:19 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7657B2074B
	for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 20:38:18 +0000 (UTC)
Received: by mail-ot1-f42.google.com with SMTP id n11so18133ota.2
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 12:38:18 -0800 (PST)
X-Received: by 2002:a05:6830:22d2:: with SMTP id q18mr13918918otc.305.1605040697642;
 Tue, 10 Nov 2020 12:38:17 -0800 (PST)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <20201107001056.225807-1-jiancai@google.com>
 <CAMj1kXG+qb267Hig6zoO=y6_BVsKsqHikvbJ83YsBD8SBaZ1xw@mail.gmail.com>
 <CAKwvOd=pHgT3LsjYH10eXQjLPtiOKDj-8nJwjQ=NMSFLTG1xAg@mail.gmail.com>
 <CAMj1kXHDzj3Q-sCv1szseUC7g2bWRFeVP6WME-sMqDf+0wyU8Q@mail.gmail.com>
 <CAKwvOdkXz5wOwKQDsi5jt21ov3xETSByAqxGLQ=7U6Gsp46zcQ@mail.gmail.com>
 <CA+SOCLJSSR62VfWhKx9R1cxT-CHXD7RN08eJBYxUH8zzyWos9Q@mail.gmail.com> <CAKwvOdkpHdQF9Ko8FbP_SN=QfDiMq8ra5TSj_KHGRCbJdyYm6w@mail.gmail.com>
In-Reply-To: <CAKwvOdkpHdQF9Ko8FbP_SN=QfDiMq8ra5TSj_KHGRCbJdyYm6w@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 10 Nov 2020 21:38:01 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1tU8g4HfsoYH4qa6C4Kv8QE3nv=UPSyH7824GXCYwUDQ@mail.gmail.com>
Message-ID: <CAK8P3a1tU8g4HfsoYH4qa6C4Kv8QE3nv=UPSyH7824GXCYwUDQ@mail.gmail.com>
Subject: Re: [PATCH v2] Make iwmmxt.S support Clang's integrated assembler
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jian Cai <jiancai@google.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Russell King <linux@armlinux.org.uk>, 
	Nathan Chancellor <natechancellor@gmail.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="ydR4/Eir";       spf=pass
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

On Tue, Nov 10, 2020 at 9:11 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Tue, Nov 10, 2020 at 12:10 PM Jian Cai <jiancai@google.com> wrote:
> >
> > I tried to verify with ixp4xx_defconfig, and I noticed it also used CONFIG_CPU_BIG_ENDIAN=y to enable big endianness as follows,
> >
> > linux$ grep ENDIAN arch/arm/configs/ixp4xx_defconfig
> > CONFIG_CPU_BIG_ENDIAN=y
> >
> > Also it appeared arch/arm/kernel/iwmmxt.o was not built with ixp4xx_defconfig. The commands I used
> >
> > linux$ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang ixp4xx_defconfig
> > linux$ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make -j32 CC=clang
> > linux$ ls arch/arm/kernel/iwmmxt.o
> > ls: cannot access 'arch/arm/kernel/iwmmxt.o': No such file or directory
> >
> > Did I miss any steps?
>
> Yes, you need to manually enable CONFIG_IWMMXT in menuconfig or via
> `scripts/configs -e`.

To clarify: ixp4xx and pxa3xx were two platforms based on the XScale core.
ixp4xx was commonly used in big-endian mode but lacked iWMMXt. pxa3xx
had iWMMXt but doesn't allow enabling big-endian mode because of a Kconfig
dependency, meaning that nobody has ever tried it, and it's likely broken.

Later 'mvebu' parts (Armada 510) do have iWMMXt and allow big-endian
mode, but those are BE8, with non-reversed byteorder for the instructions.

So none of this matters in practice, but it's very satifiying to know
it is finally
all working with the integrated assembler in all those combinations, at
least in theory!

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1tU8g4HfsoYH4qa6C4Kv8QE3nv%3DUPSyH7824GXCYwUDQ%40mail.gmail.com.
