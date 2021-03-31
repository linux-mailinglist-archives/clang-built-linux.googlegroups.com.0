Return-Path: <clang-built-linux+bncBC2IHDWB7MHRBKGTR6BQMGQEYHHAHLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C3B34F74C
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 05:16:57 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id r3sf557657iol.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 20:16:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617160616; cv=pass;
        d=google.com; s=arc-20160816;
        b=R6afxqOUFX8ZBJ5hfwHHtrkAIzv2M5ezhfsVmwa8xlxumjVFoE73i9311VRfJ0Npkb
         8NwVOA+BjqSOi9HwFk4E9190txX8n5PTXzhpLWC3cnJZCEpu9jmm5abd9vAyXcE53fIG
         NUHqHVu54x3rX9QoEmuJG+RQaVTQTgkWTCOdws3cY25BrGn+OopGbJ1/E9daFiiR1J99
         gLo8b4YxrtR2iUBBrl6p6hkScsxYM6DE0VtR8jipPhcd6IQX2bcMuNi4AAaA+0qS2SBz
         prxND1DXGLETwpkAc54T2cd3+xRKNDNs6lwZSwtXJrEGpLcj6llZg1WCNmkAe6jbzCid
         +E0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=4mv+UvsLyl0UvrKXMEJ+0c/XndppzFhxuYCrtV3vk4A=;
        b=Ws2LBM6RA0JINXdEuZ0LaiRCt5shynoLncRs9VLQ1Z2OeP3sVxWWIEobylWx7qTbEF
         3bDko3wt7vXGdoecX6C1ZoJrZq7LaLezSt8fTLJUO/o66n0/EmT7fqcZFpLLx3dIqRsA
         z/DoeGK8ZDcnbr3wdxXoTk/SQ8LRQ9lNN0NKbrxjU34HwPI98g68gkLhFvRia48AXhEL
         5EYlJXhibyKr+GyzgfPph/jnvHKh2JfmRMLX2D8gGm3fnD7NzicamJoD3/PmuIfr26mX
         gX/zN7UQ5RuUzz6lRf7QdYIwd/I5T8a29KRPTj+ho1psop6QAzUnS9AQ7I/UoAJrbFPY
         x9yQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ddjguVU9;
       spf=pass (google.com: domain of dblaikie@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=dblaikie@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4mv+UvsLyl0UvrKXMEJ+0c/XndppzFhxuYCrtV3vk4A=;
        b=PfK92mlQbRodn1aDupgya0ljAy9WElVA+l6ApWa0P74YR3mYdb59TGhloSpl7rKBUa
         5zIRtITOgpNxZtHNUbNErIVz/aFX8f/+qdpMJuR7kEv+uDCtbva5YnWwECg1GI3cFg1f
         A5cEX4yCesZFp5Emv59BGjWrDQ+2rc8KVt32LxwUzaWhKbv9jlvi3/qbMxDO00ZjGWBK
         5dSsckb6hJSVLUK4zEYYtyxcYO7ONUI5zQZgpJvOh6PBzb7PWcllvivjdOzPGZXjNXG0
         sYoFiE2kpzHYb/Ru1rrtsU4NrOcZsr6ethAyZ9ssN0UML2Vmvua6xluNEYW8+2Z6iQ9D
         y5RA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4mv+UvsLyl0UvrKXMEJ+0c/XndppzFhxuYCrtV3vk4A=;
        b=HG1q9dqEshyLMyNj8Lh8wcI3HI9dxgjFGjPe0u86PXekKsaND21kKemV2ZADWZT89d
         N5Nstswa4JL3sotxJKjDlLZ4P9w1UVZNK5GYUP96fEnCy+vwt1L6nA7vLfztR16RvEvi
         nVQHcJnmYiN5toraRl2gAX/RIm9/+lm44BdzzRYaod9VR5GSERd2rOcjeMj7PnLoumXz
         3iGfxk9E+CO+0ZqlIPEd69i4GwKhBV69vekf6BNn+4YMSc/ptvc4DB9L+dasWNswyojF
         m9Yrv+fCOzoUN0equ5R40fLzaRfLQW7gXQ5v0IBuOiH5pEO4yLwz/g9qChmgOJZ4msKB
         O28w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4mv+UvsLyl0UvrKXMEJ+0c/XndppzFhxuYCrtV3vk4A=;
        b=rhfXGf+tsJtWQ2uKlzWLPpO97b3oxk07JvudhmsYNc73Go3djVL0hJ7tPxY/KWS3Nr
         nJTfvBqL6I2jmBGzywn+nuzOiy6K/FXi3pqev6ADvTXrEksR3Gk8iil8nrNc3bCzbdql
         X8L+CxBONvVJYnSGbB3EpIYjB2Jv4HR6ytOj6FICmvXI5MPWZAsocG+L+a6PFz5xFOs8
         ELZnkj/itUgWYTcJ2/+kyrrRIKribwaX2myRq3KBhL/RyOwO2G2bkMDj2u/t0MEenuhL
         JZToRL5dH8BX8h6zV/iol/pILQz15wb0W3sgkCaJhJ75a+sOBRFXwiJLkixxUhK/U0B4
         MEKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532j1vIE90Zi3tlWQvgW0fYGDGKdzSaeLge5v0sXYec+vHiQ4y3T
	AajhmMYDD5geTFlPrTFF1MM=
X-Google-Smtp-Source: ABdhPJx1sMYGveyjWsJtYjbqD4oe45V2k6VIkIliuCJkj2HZ5zu7/7V+46OeFDUU/JPiGhvp2NXgEQ==
X-Received: by 2002:a02:ca13:: with SMTP id i19mr1140696jak.47.1617160616218;
        Tue, 30 Mar 2021 20:16:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:907:: with SMTP id y7ls171825ilg.4.gmail; Tue, 30 Mar
 2021 20:16:56 -0700 (PDT)
X-Received: by 2002:a05:6e02:128e:: with SMTP id y14mr993112ilq.239.1617160615935;
        Tue, 30 Mar 2021 20:16:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617160615; cv=none;
        d=google.com; s=arc-20160816;
        b=A0HblFd5kdVVoOE1pZpdoQLI5U+Qk80+ANdMPDYaJuGwJUdfe/uEkh44dWMoVgFPa3
         2SBRQMzptgoKnvMd7XhXFjJ7NkVagbWAEjwjVeFXZZ6ZjCsDoB6ib+sm5XlmSQtD0JbO
         WpckhHeByqeZFWu+YufYXF8WKaFKaROjZAvWr9RbyuSpHtX0Z0rHK/dj/qvpaq+7kgGP
         LLJkXz5kZb6gH6KF800S8aJDCqSwXkDfXRk57y1SA0/+ekzBee9CBkxQBKpo8pIiCk1L
         jyPvSXV8q95OW9kjPFZswmZ+nm9Xq9MaUpE8aAYzNn57/1ihRQzpdpC4ydqY3DaBO6gh
         VZCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wCq5vB6nRa7iBw/LoHkKmtXlXNSByG8GYyz4XsDrmt0=;
        b=l9RkhPVFzR6P+6wqfzKzjDZJbghXPHks3DB4fA27dyFnIcnbcCyGGo8hsHlaYtbFPE
         D328dWolSq0FCrfvJEvN/3ToHBWsKwVs0mR5mSWGJ2gJUb3Pzk8rTqT7L2xE5fanFb3H
         4iwtTsYyZU72r4OV+nz6n1Cf+IlzSMWvnMVlB+Hp9KZT/hkeM4C9RZUJ5s2Fki61e7+y
         7MYddWadr0cIlLRj6KTp0gjyJt+7c0b43A0kwTqSsYvYrEE4pGSCmw8u1zIQxeSegaSL
         Hydvi4w5nwZa9eFWRopROGvIGeKGMiU/ff7iXWA3RRKwStp37B4UDMXq7cSZ77sHZgT4
         gy7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ddjguVU9;
       spf=pass (google.com: domain of dblaikie@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=dblaikie@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com. [2607:f8b0:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id r19si37482iov.3.2021.03.30.20.16.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 20:16:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of dblaikie@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) client-ip=2607:f8b0:4864:20::42f;
Received: by mail-pf1-x42f.google.com with SMTP id l123so13530955pfl.8
        for <clang-built-linux@googlegroups.com>; Tue, 30 Mar 2021 20:16:55 -0700 (PDT)
X-Received: by 2002:a63:d7:: with SMTP id 206mr1191324pga.30.1617160615386;
 Tue, 30 Mar 2021 20:16:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210328064121.2062927-1-yhs@fb.com> <20210329225235.1845295-1-ndesaulniers@google.com>
 <0b8d17be-e015-83c3-88d8-7c218cd01536@fb.com> <20210331002507.xv4sxe27dqirmxih@google.com>
 <79f231f2-2d14-0900-332e-cba42f770d9e@fb.com> <CAFP8O3JjU26pNKhFE2AniP-k=8-G09G2ZXc6BXndK9hugX-0ag@mail.gmail.com>
 <CAENS6EuKv9iWLy24Gp=7dyA0RHNo9sjORASAph4UWLXvDWB+oQ@mail.gmail.com> <d34a3d62-bae8-3a30-26b6-4e5e8efcd0af@fb.com>
In-Reply-To: <d34a3d62-bae8-3a30-26b6-4e5e8efcd0af@fb.com>
From: David Blaikie <dblaikie@gmail.com>
Date: Tue, 30 Mar 2021 20:16:44 -0700
Message-ID: <CAENS6EuGOHcBURjR2ee2tPz3VdEu3EssCM3rFcyQqAM5MjeyQg@mail.gmail.com>
Subject: Re: [PATCH kbuild] kbuild: add -grecord-gcc-switches to clang build
To: Yonghong Song <yhs@fb.com>
Cc: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, 
	Alexei Starovoitov <ast@kernel.org>, bpf <bpf@vger.kernel.org>, kernel-team@fb.com, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: dblaikie@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ddjguVU9;       spf=pass
 (google.com: domain of dblaikie@gmail.com designates 2607:f8b0:4864:20::42f
 as permitted sender) smtp.mailfrom=dblaikie@gmail.com;       dmarc=pass
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

On Tue, Mar 30, 2021 at 8:13 PM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 3/30/21 7:51 PM, David Blaikie wrote:
> > On Tue, Mar 30, 2021 at 7:39 PM F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@g=
oogle.com> wrote:
> >>
> >> On Tue, Mar 30, 2021 at 6:48 PM Yonghong Song <yhs@fb.com> wrote:
> >>>
> >>>
> >>>
> >>> On 3/30/21 5:25 PM, Fangrui Song wrote:
> >>>> On 2021-03-30, 'Yonghong Song' via Clang Built Linux wrote:
> >>>>>
> >>>>>
> >>>>> On 3/29/21 3:52 PM, Nick Desaulniers wrote:
> >>>>>> (replying to
> >>>>>> https://lore.kernel.org/bpf/20210328064121.2062927-1-yhs@fb.com/)
> >>>>>>
> >>>>>> Thanks for the patch!
> >>>>>>
> >>>>>>> +# gcc emits compilation flags in dwarf DW_AT_producer by default
> >>>>>>> +# while clang needs explicit flag. Add this flag explicitly.
> >>>>>>> +ifdef CONFIG_CC_IS_CLANG
> >>>>>>> +DEBUG_CFLAGS    +=3D -grecord-gcc-switches
> >>>>>>> +endif
> >>>>>>> +
> >>>>
> >>>> Yes, gcc defaults to -grecord-gcc-switches. Clang doesn't.
> >>>
> >>> Could you know why? dwarf size concern?
> >>>
> >>>>
> >>>>>> This adds ~5MB/1% to vmlinux of an x86_64 defconfig built with cla=
ng.
> >>>>>> Do we
> >>>>>> want to add additional guards for CONFIG_DEBUG_INFO_BTF, so that w=
e
> >>>>>> don't have
> >>>>>> to pay that cost if that config is not set?
> >>>>>
> >>>>> Since this patch is mostly motivated to detect whether the kernel i=
s
> >>>>> built with clang lto or not. Let me add the flag only if lto is
> >>>>> enabled. My measurement shows 0.5% increase to thinlto-vmlinux.
> >>>>> The smaller percentage is due to larger .debug_info section
> >>>>> (almost double) for thinlto vs. no lto.
> >>>>>
> >>>>> ifdef CONFIG_LTO_CLANG
> >>>>> DEBUG_CFLAGS   +=3D -grecord-gcc-switches
> >>>>> endif
> >>>>>
> >>>>> This will make pahole with any clang built kernels, lto or non-lto.
> >>>>
> >>>> I share the same concern about sizes. Can't pahole know it is clang =
LTO
> >>>> via other means? If pahole just needs to know the one-bit informatio=
n
> >>>> (clang LTO vs not), having every compile option seems unnecessary...=
.
> >>>
> >>> This is v2 of the patch
> >>>     https://lore.kernel.org/bpf/20210331001623.2778934-1-yhs@fb.com/
> >>> The flag will be guarded with CONFIG_LTO_CLANG.
> >>>
> >>> As mentioned in commit message of v2, the alternative is
> >>> to go through every cu to find out whether DW_FORM_ref_addr is used
> >>> or not. In other words, check every possible cross-cu references
> >>> to find whether cross-cu reference actually happens or not. This
> >>> is quite heavy for pahole...
> >>>
> >>> What we really want to know is whether cross-cu reference happens
> >>> or not? If there is an easy way to get it, that will be great.
> >>
> >> +David Blaikie
> >
> > Yep, that shouldn't be too hard to test for more directly - scanning
> > .debug_abbrev for DW_FORM_ref_addr should be what you need. Would that
> > be workable rather than relying on detecting clang/lto from command
> > line parameters? (GCC can produce these cross-CU references too, when
> > using lto - so this approach would help make the solution generalize
> > over GCC's behavior too)
>
> Thanks, David. This should be better. I tried with a non-lto vmlinux.
> Did "llvm-dwarfdump --debug-abbrev vmlinux > log" and then
> "grep "DW_CHILDREN_no" log | wc -l" and get 231676 records.

What conclusions are you drawing from this number/data? (I'm not
following how DW_CHILDREN_no relates to the topic - perhaps I'm
missing something)

> I will try this approach. If the time is a very small fraction of
> actual dwarf cu processing time, we should be fine. This definitely
> better than visit all die's in cu trying to detect cross-cu reference.

*fingers crossed*

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAENS6EuGOHcBURjR2ee2tPz3VdEu3EssCM3rFcyQqAM5MjeyQg%40mai=
l.gmail.com.
