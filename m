Return-Path: <clang-built-linux+bncBC2IHDWB7MHRBR6HR6BQMGQEP5JL6NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6318734F6FC
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 04:51:52 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id g9sf703456ybc.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 19:51:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617159111; cv=pass;
        d=google.com; s=arc-20160816;
        b=fPYLZoUrDED7Q6jS3CxF2O2P4tARxcPqX+EkzHMcsKk1uGL1j3BDrgHzlP2V01nsSM
         PZ6AijYWCsnwR73fQbN7N7Zq9HBriPKC79m2UjQwc9/MxoTT44YNIxhCrtcBlNb2GxKW
         7pqN/1d9vFsPrB8oTwS6h22vixNxuxJ5kqpuJOdlLOQBYHjQ8m6uXo8PMpB9ShJVpKUA
         0YcWWw1lmcKXQGIxS23laztrl7yqx5c2M2mvTgVNuRHAVfNQ43yvbK2VRSafTfs0xQtT
         Y24duIcDFFxPIxsrUHCWajL4GBnf8nZmi2Z5mmZdcsMvfzUBDhAxuKe6KDtGyTFPaGGU
         OzCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=49JwQq059Jq0svQuXZRug4bK3irXH8Pu5JwimeS/28k=;
        b=j/wPM6/myYs3DW/PyJ1Q9AC0Ex/FnYR81z/3KymLojHatCHZBc8KMePt7PntOMNG87
         KWmhrpGgwKVWqLyMWiZSogAvve+pUTYzS10gP/Ue0Sw5o2E3OBdYG6ZaC9+rvy8byq3w
         +YnBkWFPv+P2TlWPCoZ5/ErI1r3Pqnb2NDndNnkE0RdKxtIgl9tjyragiamVCQrNK0w3
         ibqm5gOrhZ4HZFouliVa04wmrXvrHHjCwfncG1qNSHusDZsN6YiDXq4950zmR3pIpe4j
         vbeWLlc3clEIuTf8CTYA7f+6VB7kXH2v44k6ETa/tgb71g+gmVRUOs5m59qUsTR590Lv
         S4Cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yqe1HVmN;
       spf=pass (google.com: domain of dblaikie@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=dblaikie@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=49JwQq059Jq0svQuXZRug4bK3irXH8Pu5JwimeS/28k=;
        b=UFD9H0voHfoA67qUEVe2QlLcXh2uM196c0NT8fofLjQ5UCVT2Z3nYuuGoTsddP24Z1
         f53J9CSY4DTv0l8cvV1Zov5uTB/EBxaXxK06jDv3NCANBZAdezgloKFGZbbChv7CgqvJ
         qrvEFVwUeb7xWcXM8ZWfCkESJrJggggmwojgwcIYkZosTbHjJvTLrEycPfrV2a+HZhzg
         7DqeM2w87emlBVe5aEinf4EqVzKKMZfXn6PQsN2S4Rw5WMOv4N5UQtxi1/kafuM3dRzM
         Lnr6nMDRi5IpyRA+rv3Fkp/2w1CIc/72wN3ln/uSX3hz4AkIA/wHxJLK+6bFs7d5DRF5
         eKkA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=49JwQq059Jq0svQuXZRug4bK3irXH8Pu5JwimeS/28k=;
        b=l40f3BgPO8TEJ7Vn64K66TUj80kMFCFvfXpMdprh90hgQabSYjzLZxHUYLPTEAYW53
         lvm5fS/8Q0A5FRpz3JGDPUsENrhl2Vke/NEzy1LtztynQHuNOJA0qMFvTdRtImzlU/FW
         k27ASbVoXpm2NjUdj6NaX11dZLu2P4Vi2d1Toea3VD/DL4ulQjQ6G62AbStxLL60zvhD
         cJntQuD4ZpgKTzsYSdcmZHYQW/i/wrBkazq/2K+1G8ZXqlgmwq7d5tm9g6kPivCLgmiD
         TBpHuNMqNCOm0xv7EHzX0IhQEZf0KGEdZyEJL6p5nK6Kyb79gtHcqpHCl+CStNPKvZwG
         FPcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=49JwQq059Jq0svQuXZRug4bK3irXH8Pu5JwimeS/28k=;
        b=nTO0RbXvn+vlHhzkZgRu687+OiMKHjSJpEqHAdyQHpQ0YZqXtZiUYK4buwXojVIbm+
         oNPMzFajYPMYXiQ6BTfhoKt5bHcSjsuLZmjMO9Vy6K9PuhcaezrM4c7Zw1jlPNa/NANq
         5PJD6LpScLX6m5hHGcoyxMWq1tll9lJF63zK0c1B9RbLIQOgzuqB9g602PcAm8ACfF02
         kws7b8fMisZbBGEHLNy1sT1BNxO3wMsZsaJBbbw3tl70vM3lYr9XrcJojARrjRqhu770
         WjEn2d+WGaXWg8P4sLHomVhBUliwG8lqBOP8nql10Es5c+eTeQuHhji5st1xZ/BBAIhP
         oZGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533G6s+NMu8zBohzUGqXO3DieMEbYew1H/iPQU0uOHhq57iDyNht
	gzKSmifKHPgK93tsRq++AFU=
X-Google-Smtp-Source: ABdhPJyQHk5kJrpTUV1BJAyNBjg49wJcEu87eXzm3DbrFI/zfr7aAujP79ePmlzegpOq9YLg8Ei90Q==
X-Received: by 2002:a05:6902:693:: with SMTP id i19mr1642996ybt.191.1617159111193;
        Tue, 30 Mar 2021 19:51:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ec02:: with SMTP id j2ls349444ybh.2.gmail; Tue, 30 Mar
 2021 19:51:50 -0700 (PDT)
X-Received: by 2002:a25:74d2:: with SMTP id p201mr1819600ybc.406.1617159110745;
        Tue, 30 Mar 2021 19:51:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617159110; cv=none;
        d=google.com; s=arc-20160816;
        b=oub0nEkZH2w4ARs8pe2NTQ6AWDj3QWTN6Xgh0R916PfIpjbSG1UtBDLYFZ446f/+kL
         VH57P90oexaCZIu0Lc1+09CnrJGK6MuVdFLOLzy/av2whEq30TN5R+s7qVzQmDnFOfNf
         tquhEoH8+gJKal/fTL8XiPzRjp4242iqbYwhYP831hUYbOcKgMSe+O4BqoMNxepcZQ/K
         7lClBTYbMSPir7SjRszhGcDwkMUv4nXJE9djicpM8rOs/oXFRNPLn5N9inBgvYz2c0I9
         NHfuBwvzXgRN0NPkeL5QN36dem7meN1VocgBre8KTUtczpCVarPd6c9clulOXHVOprH/
         sTBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wcqpDQK97dsfA3EbdumC6QR8llGHLFb5JyZPdcyEhT0=;
        b=Nwrj9kUN3EW+aytr3sQrlUfV+PA3fJkhkKOVNhezTqGmozbRY2UOEp9FGFxivTWLHk
         VAhGut3ZjWBN4OYty8lChgYRtlfYZtqSb6eaFSU2t2eVWwNs7W2JsKciujYPU9ERvmVR
         zjtURgSgK/WqdZT1F+emsIPYrbLIG4i8Xi7Rr3ioKkRw7Q3ZAcICTrjYHhIUq5ocu5vW
         dFM21ZBj9TQoK7zz3oKuC97l61YPOO7gJH+Q7q2NugXd9MFk14VFgcv3sK22RIOiliu1
         M5ZrN8fDGWqO9qz5Fgd8QqC24YSsIaQU98XUh35CFG3ZY75Tx78INpSLUJtWCCqoKu4b
         NT1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yqe1HVmN;
       spf=pass (google.com: domain of dblaikie@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=dblaikie@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id k6si62169ybf.3.2021.03.30.19.51.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 19:51:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of dblaikie@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id f17so7166229plr.0
        for <clang-built-linux@googlegroups.com>; Tue, 30 Mar 2021 19:51:50 -0700 (PDT)
X-Received: by 2002:a17:90a:c289:: with SMTP id f9mr1306686pjt.105.1617159109993;
 Tue, 30 Mar 2021 19:51:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210328064121.2062927-1-yhs@fb.com> <20210329225235.1845295-1-ndesaulniers@google.com>
 <0b8d17be-e015-83c3-88d8-7c218cd01536@fb.com> <20210331002507.xv4sxe27dqirmxih@google.com>
 <79f231f2-2d14-0900-332e-cba42f770d9e@fb.com> <CAFP8O3JjU26pNKhFE2AniP-k=8-G09G2ZXc6BXndK9hugX-0ag@mail.gmail.com>
In-Reply-To: <CAFP8O3JjU26pNKhFE2AniP-k=8-G09G2ZXc6BXndK9hugX-0ag@mail.gmail.com>
From: David Blaikie <dblaikie@gmail.com>
Date: Tue, 30 Mar 2021 19:51:39 -0700
Message-ID: <CAENS6EuKv9iWLy24Gp=7dyA0RHNo9sjORASAph4UWLXvDWB+oQ@mail.gmail.com>
Subject: Re: [PATCH kbuild] kbuild: add -grecord-gcc-switches to clang build
To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Yonghong Song <yhs@fb.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, Alexei Starovoitov <ast@kernel.org>, bpf <bpf@vger.kernel.org>, 
	kernel-team@fb.com, Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: dblaikie@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Yqe1HVmN;       spf=pass
 (google.com: domain of dblaikie@gmail.com designates 2607:f8b0:4864:20::631
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

On Tue, Mar 30, 2021 at 7:39 PM F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@googl=
e.com> wrote:
>
> On Tue, Mar 30, 2021 at 6:48 PM Yonghong Song <yhs@fb.com> wrote:
> >
> >
> >
> > On 3/30/21 5:25 PM, Fangrui Song wrote:
> > > On 2021-03-30, 'Yonghong Song' via Clang Built Linux wrote:
> > >>
> > >>
> > >> On 3/29/21 3:52 PM, Nick Desaulniers wrote:
> > >>> (replying to
> > >>> https://lore.kernel.org/bpf/20210328064121.2062927-1-yhs@fb.com/)
> > >>>
> > >>> Thanks for the patch!
> > >>>
> > >>>> +# gcc emits compilation flags in dwarf DW_AT_producer by default
> > >>>> +# while clang needs explicit flag. Add this flag explicitly.
> > >>>> +ifdef CONFIG_CC_IS_CLANG
> > >>>> +DEBUG_CFLAGS    +=3D -grecord-gcc-switches
> > >>>> +endif
> > >>>> +
> > >
> > > Yes, gcc defaults to -grecord-gcc-switches. Clang doesn't.
> >
> > Could you know why? dwarf size concern?
> >
> > >
> > >>> This adds ~5MB/1% to vmlinux of an x86_64 defconfig built with clan=
g.
> > >>> Do we
> > >>> want to add additional guards for CONFIG_DEBUG_INFO_BTF, so that we
> > >>> don't have
> > >>> to pay that cost if that config is not set?
> > >>
> > >> Since this patch is mostly motivated to detect whether the kernel is
> > >> built with clang lto or not. Let me add the flag only if lto is
> > >> enabled. My measurement shows 0.5% increase to thinlto-vmlinux.
> > >> The smaller percentage is due to larger .debug_info section
> > >> (almost double) for thinlto vs. no lto.
> > >>
> > >> ifdef CONFIG_LTO_CLANG
> > >> DEBUG_CFLAGS   +=3D -grecord-gcc-switches
> > >> endif
> > >>
> > >> This will make pahole with any clang built kernels, lto or non-lto.
> > >
> > > I share the same concern about sizes. Can't pahole know it is clang L=
TO
> > > via other means? If pahole just needs to know the one-bit information
> > > (clang LTO vs not), having every compile option seems unnecessary....
> >
> > This is v2 of the patch
> >    https://lore.kernel.org/bpf/20210331001623.2778934-1-yhs@fb.com/
> > The flag will be guarded with CONFIG_LTO_CLANG.
> >
> > As mentioned in commit message of v2, the alternative is
> > to go through every cu to find out whether DW_FORM_ref_addr is used
> > or not. In other words, check every possible cross-cu references
> > to find whether cross-cu reference actually happens or not. This
> > is quite heavy for pahole...
> >
> > What we really want to know is whether cross-cu reference happens
> > or not? If there is an easy way to get it, that will be great.
>
> +David Blaikie

Yep, that shouldn't be too hard to test for more directly - scanning
.debug_abbrev for DW_FORM_ref_addr should be what you need. Would that
be workable rather than relying on detecting clang/lto from command
line parameters? (GCC can produce these cross-CU references too, when
using lto - so this approach would help make the solution generalize
over GCC's behavior too)

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAENS6EuKv9iWLy24Gp%3D7dyA0RHNo9sjORASAph4UWLXvDWB%2BoQ%4=
0mail.gmail.com.
