Return-Path: <clang-built-linux+bncBD66FMGZA4ILRI4F7MCRUBBSN2IYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BCE26B569
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 01:43:54 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id s12sf2766839pfu.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 16:43:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600213433; cv=pass;
        d=google.com; s=arc-20160816;
        b=aWcuII5rIx+gHTW3mT3gBSV60/GEawAX1YZ+41J0q2dARyhjXC7rObtlY/Uw5yKB+a
         QNyYBC2L3kSP4oec2XYcYshbM2x/Vlh7qCfWh4h+tYwNdrZh/S8bTTh5MqwEXG4rlNm5
         oU6LI3/ySyoDYW2O1jHofO7JzU137ZHYKQLBgWJJs0jVu8zm/QiuH5u+XSl2xzYIRRZF
         K21AiRwFtxACI5GWGr40/krDNgSnsIxgFqPYqMBYGJJPY3jHC1EeAaMEgoBh13IVKYJx
         7OUQFIUqoRIrcTbqczhnlGWrbXdRSLNk5D60vCpAXZELm+L0Q9lRH3k9NvLC9fiuO7Dz
         pWBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=O685xLbrsmq0mVvAeEPTaYWR8JaCQ5qsmcrjR0Avo5o=;
        b=dzVCizNs/cMaUzBA4AW7W1W1Wl/SKqTPP81CnfhvflQd9lDHjEYi5an3r224myiQEY
         ekJCLa9NNzitQzgDHepcm+8VUHH9Oxa4SFLhHtrmWBwN0F/Iu1LrNpvVrTerbUl+Uj0w
         F8Qug06pivgaMDvpKfXOJVAxFoONno17uIJ4URwyBX8S+J+9JaJh4oj36SwETRxGyu9c
         FdfXYSSqFg6kRLvuBQTDZcuWVJzXYVvj+TroNCzH4wm+EehLL00TIingeaXoAZwuOrRi
         DHrCLeIH98GCbpxHUlx0Ki+rr1QROYD4acorkItGBZr8m6vW7HodSGCOMASsGZZyD8iy
         5dUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TgmvDqGe;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=O685xLbrsmq0mVvAeEPTaYWR8JaCQ5qsmcrjR0Avo5o=;
        b=N0/BBtSPYaIs7C4C4e3HKoAv36nibMz22MrbM/awyJtvclzI59XjWKJWPk5Mq8eOue
         Zb5LXI09p8Q9r9zhSE8TMeuD++GNtrCTbBDiIP85wXxLCNVfIrvhjYgSyvZkfylP9nsc
         pWyPJi1nh9mLnical1v90f9YnQe0KLpERxMPJPZI4fDKmciAA90pTyFLYwyGeRPC6/Gf
         WgEF+kE7YWdntMruzZMCOLqPDTN8FA/ASiKaU4glYfRV4aJG2HUi51PVA2oOuOkiyy2a
         OOmi9cEGInuCFbd6/HLZ2PGIRNVirhWoEaYWXCT3K665zeJZ1ymm2W2Rl4xl46GB1cL6
         LKsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O685xLbrsmq0mVvAeEPTaYWR8JaCQ5qsmcrjR0Avo5o=;
        b=oF6FMugh9Th3tNjn6LXFT1i24srUkVd5MXjiqh2NYi5Uj8Exoc0cNWbsU0JrmzLHTq
         IWt8aT8WrLw7iPMVKlbHdc0Gxp6GvKa4y3inu2R3SxWoDui3AZqv2x0FKCCv88WzGwWp
         TaM2h1WneqkmydKbYzvsTRxYS2xC1Ei4ZllTzCAo1RkdpvbUQbyvsW8VyZSRXvGq+8uv
         VeRgbCWTeSZ17712qm1GGdmf01mnDEW8jrjPJRwhiPG0pBtcBtguw/TR8uwlqvO/jj6W
         Qi5AX8EgLHMbrDKADQqCcuIPJJOClK4ikgMHwii7GaGut6X7JqfVS8sc3Ux5Vzz5jetm
         j5+A==
X-Gm-Message-State: AOAM5309+O1pI593ad23muEHPqaxgPXlbQcxGpYIbRoCt3Rl+B8JkOaE
	HlZe//Mo7QwWlK9AMa8uByk=
X-Google-Smtp-Source: ABdhPJxxXkbj9LV0MtLkH6Y8QhetuG3lAi1HpporQzxXG+W/fsdHo7V1Kx1uFCKpj6gDaOeheGvHrA==
X-Received: by 2002:a65:68c8:: with SMTP id k8mr395284pgt.0.1600213432831;
        Tue, 15 Sep 2020 16:43:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b20f:: with SMTP id t15ls113980plr.1.gmail; Tue, 15
 Sep 2020 16:43:52 -0700 (PDT)
X-Received: by 2002:a17:90a:1905:: with SMTP id 5mr1465438pjg.169.1600213432229;
        Tue, 15 Sep 2020 16:43:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600213432; cv=none;
        d=google.com; s=arc-20160816;
        b=vhctfQva9mrUSdltlM4QRk9DIzFW3UTb4HLZOrU4K9kUABgZ2+KZfDSl/9lQFRHGji
         ffI8/Wsse16OBqIt8ujOdZhAfEcRm288v1jx2jtV2hFZQZQS2lZkbj+VOKr0tJd5KBnY
         LQwyHuG2/pwJXAav7ix5MHv5QhkPVzZ2AshFdndAoe4KcVdKnHqjT2tEwfQOO70ciuN2
         GtknZacMEzlRjwvqhI2Oc/dfAbEcVinV0x8CyMwXi0r645e8tqKqa/iZYVtyiSVqavSe
         JmTLMYTfK0bqgXgyw1UC6Ht9ei9viocDypGCvxcgRXIl9ANc6s4ienYY+MOKFa5uMQzR
         IxUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1DPRkUZDl392dX2kwtfz30F6Ge2UvEVr5Xwbj157Pec=;
        b=iQmIF9/h5xE1xT5MUXW/CtjHZao4LP4Yjs5pWE4VNrIXIe66ds7jeOpHprGMETY/Ou
         SQ2KPZ83w2qs02GHZK18/PUuhW1ohZdnCC5woNTe2MMOMoPurGn5vgcK9RUUGkF3ThJP
         1YBwRb0eiLFgD43R8avarVrGw31dJ8M+YZG7EgZGHdatB42RNkCmiDmvajgHOLRmc5Tt
         iXjlAdlz+M5jZ+HdS4bAZcgqfou4GhQiWS1Zi32PXDN3dAsevd1LCWGvq2rxKQHBv/ue
         zv45d5N9tUS+HyrOYK/WnSGeNbSFVHS+xJl6sJRxOfolhVRrHRv6P1ciMHkBIBE15udF
         4xhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TgmvDqGe;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id q125si1158880pfc.2.2020.09.15.16.43.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 16:43:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Received: by mail-vs1-xe42.google.com with SMTP id j3so2971488vsm.0
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 16:43:52 -0700 (PDT)
X-Received: by 2002:a67:f7cb:: with SMTP id a11mr3011158vsp.58.1600213431006;
 Tue, 15 Sep 2020 16:43:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnjHbyamsW71FJ=Cd36YfVppp55ftcE_eSDO_z+KE9zeQ@mail.gmail.com>
 <441AA771-A859-4145-9425-E9D041580FE4@amacapital.net> <7233f4cf-5b1d-0fca-0880-f1cf2e6e765b@citrix.com>
In-Reply-To: <7233f4cf-5b1d-0fca-0880-f1cf2e6e765b@citrix.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 16:43:39 -0700
Message-ID: <CAGG=3QUUgqLFdKMtJQuvASdD2JiGuiM4BcYrUrpLto+jmB6ohw@mail.gmail.com>
Subject: Re: [PATCH] x86/smap: Fix the smap_save() asm
To: Andrew Cooper <andrew.cooper3@citrix.com>
Cc: Andy Lutomirski <luto@amacapital.net>, Nick Desaulniers <ndesaulniers@google.com>, 
	Andy Lutomirski <luto@kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Greg Thelen <gthelen@google.com>, John Sperbeck <jsperbeck@google.com>, 
	"# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TgmvDqGe;       spf=pass
 (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e42 as
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

On Tue, Sep 15, 2020 at 4:40 PM Andrew Cooper <andrew.cooper3@citrix.com> w=
rote:
>
> On 16/09/2020 00:11, Andy Lutomirski wrote:
> >> On Sep 15, 2020, at 2:24 PM, Nick Desaulniers <ndesaulniers@google.com=
> wrote:
> >>
> >> =EF=BB=BFOn Tue, Sep 15, 2020 at 1:56 PM Andy Lutomirski <luto@kernel.=
org> wrote:
> >>> The old smap_save() code was:
> >>>
> >>>  pushf
> >>>  pop %0
> >>>
> >>> with %0 defined by an "=3Drm" constraint.  This is fine if the
> >>> compiler picked the register option, but it was incorrect with an
> >>> %rsp-relative memory operand.
> >> It is incorrect because ... (I think mentioning the point about the
> >> red zone would be good, unless there were additional concerns?)
> > This isn=E2=80=99t a red zone issue =E2=80=94 it=E2=80=99s a just-plain=
-wrong issue.  The popf is storing the result in the wrong place in memory =
=E2=80=94 it=E2=80=99s RSP-relative, but RSP is whatever the compiler think=
s it should be minus 8, because the compiler doesn=E2=80=99t know that push=
fq changed RSP.
>
> It's worse than that.  Even when stating that %rsp is modified in the
> asm, the generated code sequence is still buggy, for recent Clang and GCC=
.
>
> https://godbolt.org/z/ccz9v7
>
> It's clearly not safe to ever use memory operands with pushf/popf asm
> fragments.
>
Would this apply to native_save_fl() and native_restore_fl in
arch/x86/include/asm/irqflags.h? It was like that two revisions ago,
but it was changed (back) to "=3Drm" with a comment about it being safe.

> >> This is something we should fix.  Bill, James, and I are discussing
> >> this internally.  Thank you for filing a bug; I owe you a beer just
> >> for that.
> > I=E2=80=99m looking forward to the day that beers can be exchanged in p=
erson again :)
>
> +1 to that.
>
+100

-bw

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAGG%3D3QUUgqLFdKMtJQuvASdD2JiGuiM4BcYrUrpLto%2BjmB6ohw%4=
0mail.gmail.com.
