Return-Path: <clang-built-linux+bncBD66FMGZA4IML74URUDBUBBVU2B7K@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7B04622C2
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Nov 2021 22:01:57 +0100 (CET)
Received: by mail-wm1-x340.google.com with SMTP id i131-20020a1c3b89000000b00337f92384e0sf12512310wma.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Nov 2021 13:01:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638219717; cv=pass;
        d=google.com; s=arc-20160816;
        b=OyKAF1tSaPJ+39KMxURdsWAGHJ4eyysLYd07LDYKHdJ+Pi6PTjKbLnkAMjSyPNdwuT
         6p751i9VuFyinjIfqgAIipcCEwpbKdk6DjVuaUkBo2HB8StsRPIhceAYb0n+hRdD6mkJ
         l1Cl/yhQhCNgiDaNV+fbkcnFnrhm9Jnuae+YiIM7stvtRBqiNJBE1PS/OZ8wCHWZ9nUz
         TtiMv5mhMBFdAb/aiQzzvYaF0cYJXyHZwFmSrB49GD+NdGzr8IfVqJi8BxF3/bzDXNaF
         LBq74n7wShbIsKz4UsgDUsNJhzrZxVILpnDpXp4zfgPUJVyv+2d/wa/1TD6VO8myD2Vr
         8e2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bqdtw56HNztibVB2sbQe6ifiNj5WIEgvzReHGS74RhE=;
        b=i1bgkOj30PunULmmf2ynDmJbsD6CxvGvf/V2mY+gwusXW7OLC1/oVsLuY3Tb64TIj8
         qye3AZ7zSBKN4otj4huSgF363TxeToY99Kr+P9kOgxg5kHjFiq4yCucrqbSzCjqQarg1
         paBasPpZGP7Y+3seUvNE8ec5R5aWKN9JLdhLg9IMbMFk2zNy/DhqYhWwv28S5kjPGpk3
         xUbFPu+83Rfd/9vMJ4lUZN1a9m6g2n7BwBPvcfhuc1/2p8/71bxzarKDTY3NnMclV/MG
         ZwJybPZmqtkh4eRV7rOgZ97S72k4OblvVZbperXWWgk+HAySn5eldC3StCzaUTlKITTm
         esjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="GFEH3I0/";
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bqdtw56HNztibVB2sbQe6ifiNj5WIEgvzReHGS74RhE=;
        b=TcPRlBJonK8AmidcNEe5pl4xiuyE3cmzR+zPCbWR9iMmR8dqLUTU+H61BNhzQCvojK
         JpKyXpN1Jst8+SfmLyFrLhNphX1upU6hebJ+BC+m1EzM+Ci8wwbefh4aLGKfRCFYBK2H
         vAGuAkFLZYHiUjst6V3UB1SYoRmFYI2ItCOqgXReVKtQk+RE9Fm45SLkuxZvB+LC6D7V
         1VCgB9CNobMJRSdC3Z3n5naUv0RHVoKX1nWDknWpkndvC+JNShaK8ZwpAk3Iu95sN4VW
         rbZQp31OV/ZtCNZ/nwGK9+5vL1XiPltHwOdwUQKbjKKzGsaUwpsmr1tc/8ADF3kWnVJz
         jDiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bqdtw56HNztibVB2sbQe6ifiNj5WIEgvzReHGS74RhE=;
        b=Zt+8RNWR3tpLGq2UGi1JNWFhXR3uzji+3cqRfYK+CJUpDS1lh85Hw8MT4ZkaZCADhq
         2zdPUuqoHuslOAHfqmOmz4uYbQ3uPxUa3GU0K9KRFlaluWmONm9Gz74mkU8MeiCIVlU0
         Y1NyLYaiDCe7yRfb8KshZSzRrcmIBOYnHx7SrBmr3MEVI84idmyjIL3/bRgI0Rk7bfhF
         DKT6XBxhLwJ14XZ7RsHQBA8LCUhT0pfj0Rs6o0s+oE+5xu+q028smvhdmKGJqF/7BvY7
         XlfcRgSTvGaR0/ukjn2ZeL/KuGdPLYdHrXWmf5b7MjREN5qeDGBiCx3h+LLGCGSeadKX
         iGZQ==
X-Gm-Message-State: AOAM531GGu+KvJBcp/opWCyNAjMBnA2dfw3cOzuSBYtCiu/0ZdxKSh02
	PYP81PKD1CSq2UNoeaGIqj8=
X-Google-Smtp-Source: ABdhPJw7H45FHJ0YDxL4PdJWMapVnmgl3sFRUlShyvNfuCeXzmpErLlj6mGL2XVVF+liqGQa1YWP2Q==
X-Received: by 2002:a1c:6a0e:: with SMTP id f14mr440670wmc.58.1638219717421;
        Mon, 29 Nov 2021 13:01:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4092:: with SMTP id o18ls10164832wrp.1.gmail; Mon, 29
 Nov 2021 13:01:56 -0800 (PST)
X-Received: by 2002:adf:f911:: with SMTP id b17mr37114815wrr.611.1638219716595;
        Mon, 29 Nov 2021 13:01:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638219716; cv=none;
        d=google.com; s=arc-20160816;
        b=AAGrGuumhkesx6HpwMPMrRNyiR4regQ+0TFfsOfEpQlzaa/U1HhZRR4jvhbofXpgRB
         G1Fo8IB+/io613rg4SYPaSKJDN1TZeFEkX6sN0MZmQ14y4vr7/bXVbmM7X9Bp20flM+N
         cuWvA+3y/i1zAmaDoNWWAIGR7s97die6/zJHiTSM+NiXRim2Rz/oQZ8LUFK5Hn1sscLH
         iFlaUDKA24/tRsgkMJsO3DATbOjdYbF3e36JcMzhuUXM7aJcOzb1Dk5TMA/esd5DqiyS
         jEYbn7zrKIo1NIKdP62LvYI4APkzOsvJwUDpnJGtTZTePiqB8O0BBupYMnfWztLOE6l9
         7fZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sQugdq/TMFcqQ3+N8PCqeVbxEyg2ylqUfRRbE9IxdVg=;
        b=1G7p9aRfIdNxEgdkodJmCgLq3R5FvheQ0QSrOGtaNHCptcWNm9Mn5A1TCaJFS1cA92
         vo8Y/7HZytj8EMU/1+J70Mla7ZPFeAAHtnYs9kUQ2I6U04UhXlkAgaFUxfYmdUHoMG1d
         u4U27kCWLoypHq2Ht1wmg9G934kCCkXv9FY1en6+KTZeVtdZPMNMMy3cR9nUaDEOuxxV
         1PsVoRTfiyrI43yRiFiIBx8FensRxdqgFSqZfrEw6RhjMVPfmcjs3OyaNaFqTX/uOavF
         W54e3KBoF/N9FotbAQP4KT4p3jASNEXGeCo+m0YGkS8gDTin2JTKc8g1cDAE+uZ9AFeY
         TanQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="GFEH3I0/";
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com. [2a00:1450:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id 125si34177wmc.1.2021.11.29.13.01.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Nov 2021 13:01:56 -0800 (PST)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52f as permitted sender) client-ip=2a00:1450:4864:20::52f;
Received: by mail-ed1-x52f.google.com with SMTP id t5so77811636edd.0
        for <clang-built-linux@googlegroups.com>; Mon, 29 Nov 2021 13:01:56 -0800 (PST)
X-Received: by 2002:a05:6402:1d48:: with SMTP id dz8mr77404259edb.100.1638219716097;
 Mon, 29 Nov 2021 13:01:56 -0800 (PST)
MIME-Version: 1.0
References: <CAGG=3QXA5eEYcQEUJc3yhKXoWr05JhFFSmSZZrYb+2wTJprdVg@mail.gmail.com>
 <CAKwvOdmC6C6qXVUu_bUTdc8dSdCj+CVaJ+qJQLoDX0BzxCTFgg@mail.gmail.com>
In-Reply-To: <CAKwvOdmC6C6qXVUu_bUTdc8dSdCj+CVaJ+qJQLoDX0BzxCTFgg@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Nov 2021 13:01:44 -0800
Message-ID: <CAGG=3QXdPWuiRxqJbzzOD_XLR1AMkQpWbr9+Dik3z8c_EKP4pw@mail.gmail.com>
Subject: Re: Backporting KVM patch
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b="GFEH3I0/";       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52f as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

commit 3d5e7a28b1ea2d603dea478e58e37ce75b9597ab
Author: Paolo Bonzini <pbonzini@redhat.com>
Date:   Fri Oct 15 04:50:01 2021 -0400

    KVM: x86: avoid warning with -Wbitwise-instead-of-logical

    This is a new warning in clang top-of-tree (will be clang 14):

    In file included from arch/x86/kvm/mmu/mmu.c:27:
    arch/x86/kvm/mmu/spte.h:318:9: error: use of bitwise '|' with
boolean operands [-Werror,-Wbitwise-instead-of-logical]
            return __is_bad_mt_xwr(rsvd_check, spte) |
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                                     ||
    arch/x86/kvm/mmu/spte.h:318:9: note: cast one or both operands to
int to silence this warning

    The code is fine, but change it anyway to shut up this clever clogs
    of a compiler.

    Reported-by: torvic9@mailbox.org
    Signed-off-by: Paolo Bonzini <pbonzini@redhat.com>

On Mon, Nov 29, 2021 at 12:54 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> what's the upstream sha?
>
> On Mon, Nov 29, 2021 at 12:51 PM 'Bill Wendling' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > Who do I ask to backport a KVM patch to the 5.10 LTS branch?
> >
> > -bw
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QXA5eEYcQEUJc3yhKXoWr05JhFFSmSZZrYb%2B2wTJprdVg%40mail.gmail.com.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QXdPWuiRxqJbzzOD_XLR1AMkQpWbr9%2BDik3z8c_EKP4pw%40mail.gmail.com.
