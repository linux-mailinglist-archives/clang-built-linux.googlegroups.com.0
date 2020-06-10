Return-Path: <clang-built-linux+bncBD63HSEZTUIBBEOHQL3QKGQE6AHNLAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7351F50F4
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 11:10:42 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id p9sf1242635qtn.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 02:10:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591780241; cv=pass;
        d=google.com; s=arc-20160816;
        b=DFmi+pP+u+GHcomCfUUZjsbsXblSfUczuVOY2lKYDZXKUNUcr+sUuXCANiG/5Uof/I
         Cp+/v/s6d8yJkzzJcFuXY3fN5TYPtdkcgYlBmizgzGAptJ+0Tz/C34cRjTZ4AH4SeYVq
         QnvpNANumPv1JNlgaC2TPZ+UaTPosTEXeR9eAjezUjdcUhL1hSays4hMAc0V8YcZuZ4x
         W35F0Uwp97r4M/3iypEsFwiFG43kwfSwOl60AUYJOtC+QNTBoCS8fAvFRo5Mgm6faue6
         XcDU4J73F+tEYgVzI2osh0MBeC3PRyKvDElWRqmj3SK+8qSMVkESwZkFlD08x1bvSYIC
         IJBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=9YcsBmH8V/8nXMbrloKdxLLq+XMVMKh0AuhxR3d5Xpg=;
        b=X54oEUQdUANF+87FmfqbTt6dD+isuuKHNP1kfIh14RG/pAdPAQocuSgBEOH7Oue+dM
         0gSxZwAavL/1N33UdPZfvRUxQkYEw+ap9cVYDFucEN9RfALHxE+5iEdBcgJW+kh93m1p
         5aiNoQcYBnhgkevjICyxzAzsVXXnggSJnhyReJLJgyoS3/I4t+F2q63CuXKx3qWSgfgc
         QSNUktwbuJS5V+P78AhCDXrBkPnq7B55GIW1M/yO+d6h4EgV48xw4JjoIqIrzZlQ2/pA
         P/BVS9UwSlUNbiSttHazwicwTSMOb3SIe2hkIWWcKzQ06JP4nMFDGw/KPPvFmyjZkOoU
         ifew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ysqkV0tr;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9YcsBmH8V/8nXMbrloKdxLLq+XMVMKh0AuhxR3d5Xpg=;
        b=I6GXbPfwh6aXf49LqOa/D0ydulOBOvrt7czvRjhXy7ADGcS3NZb/iTqUv8lrPNI+iC
         soiRhz3uKOPHkZsgpXLvb2N+8tzLjsgpeEtENUG5FMaa0t2DvAd1r77COBTtj7N0LVif
         zlZGwh0PXklIeYf1Jid3wZt878tUBNPQUwKogk5pch/HDLbPWtjIWngouf2nG4lw7jqV
         nXmLZUREDoO3P5dK3cX6FaI6yvpORL8mXkXS7IK5C1J3C1uCWD8UVpYlbOYem9/b8hGS
         de2VrSeojJb2ruIk88e4ge62d7Tu30mowT6pU2hOyslci62JtUj0sAs8Fhziqd+N93ox
         YVJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9YcsBmH8V/8nXMbrloKdxLLq+XMVMKh0AuhxR3d5Xpg=;
        b=bcnCQoN6vHFuSS1nVAERPxDxYjyHGladYkbkhSU7iwYXD/iaDKabOgynW4XRsx0PUo
         v7QqR2+AbAezqLjNHb7igl93FBtuiLNXjgsfpQHqxgVD+1nedgIBpRr9g9mUUVzuOfQ0
         sFo4Oh+vLLWTxy820K40jlAZQV8dmX/aWz1Zv62j7Hbg9WSYaz0PsyuWpzCQSKAV9v/N
         i6pPzI9EFpiRNPtmewMiaXeePu7ai9YcG5MY4ZPgl3c7r1ZobzVwsUYiDgyqZvBQA69n
         skWV8tk2kXimWOKmk3i7p6f/9mKHcaY4PHGXyppT/B4vxC2oIztADYaVYEdi4UNzwVsm
         420Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531omBUJuYBLUoskDGLpEoU2ECyvr6wyyByeX0zV90RsxV+ESzB8
	mDSjwYPmNMevtthARhuBFI8=
X-Google-Smtp-Source: ABdhPJzjlauuND/UcGsITnJUvrtqLV3qvJhR+bLxhaBxjdaSr2obRzoY+ylU9BagAObL6XecsCI/Wg==
X-Received: by 2002:a37:2744:: with SMTP id n65mr1947252qkn.253.1591780241364;
        Wed, 10 Jun 2020 02:10:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:21d0:: with SMTP id m16ls8934553qtc.11.gmail; Wed, 10
 Jun 2020 02:10:41 -0700 (PDT)
X-Received: by 2002:ac8:263b:: with SMTP id u56mr2106632qtu.388.1591780241036;
        Wed, 10 Jun 2020 02:10:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591780241; cv=none;
        d=google.com; s=arc-20160816;
        b=bRqb8pHQsJpS++pjhB6cWzBmTtHq0Kr/F0LN4hxHh5ajU6kjkgl8kZZ+79J14A7gRj
         NpE/7SsxP0dx1ieRCigOptCxFjMq+/CReW5/7rdfSy7aU1rfLnfqkhfIX5OEsyoTmcsF
         3zmgh7iU+t32BDKKrIl3bDvPTJzu0Q2yciS+SawAcNF2kUblW9kCrYBqlG5r3bbuPFT3
         X4/UK/jD9DvRcsM254Lcq4VDaTLo83Y75iwyKMcoygCy9p5yNgmQdPsCd5609hUxOwDs
         Xpxz8qA9LWxdGnTQGeXfBROwBCVCJGnwiebasPckTBr5FKNZh7ou75eTiTGocNnnKd+v
         6i3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=V4jDV454p1t4nAkXiZt9FvqQmGhOXSdiMNcTwsqH9k0=;
        b=WOhu3AtOfqFebnKOVQjU3YxaDaL4Haa8eKAqbwTEdzk4JmZoRiwBfF+6G8UbbvJXFq
         7wdZdX59mtYQl5j/28ueoS7ybCVWl16J8hM8I6GKFOWCw9VTJS1ZaYAhrEo83yBFQl9O
         UA6Sx4k5gvx/vPD9lrzNN+dOtkpIUjHUSmVQQi48ZaXbGqV1d5nvi19NcK8/PU+tsHGh
         rfXxFEV45qEG8YY0CBzEIFcr5Q/jt0QUQdNsQLWVrp/3IzrTqlVxg4FHict/QXY4nITT
         JTO4CKG4HQgOzXHgq+V0DE1yCHI3vSDpLmH0S08NgjX25uCSCyewY1jxvt+sBFRZ3uU+
         cahg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ysqkV0tr;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f23si725788qtm.4.2020.06.10.02.10.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Jun 2020 02:10:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BEA1520812
	for <clang-built-linux@googlegroups.com>; Wed, 10 Jun 2020 09:10:39 +0000 (UTC)
Received: by mail-ot1-f50.google.com with SMTP id g5so1143146otg.6
        for <clang-built-linux@googlegroups.com>; Wed, 10 Jun 2020 02:10:39 -0700 (PDT)
X-Received: by 2002:a9d:42e:: with SMTP id 43mr1845458otc.108.1591780238955;
 Wed, 10 Jun 2020 02:10:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200610071446.3737-1-zhenzhong.duan@gmail.com> <20200610085932.GA461993@ubuntu-n2-xlarge-x86>
In-Reply-To: <20200610085932.GA461993@ubuntu-n2-xlarge-x86>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 10 Jun 2020 11:10:27 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHun8-SS4L03ccp=pt1oyPSfpuPezju294NnJoKLtcvcA@mail.gmail.com>
Message-ID: <CAMj1kXHun8-SS4L03ccp=pt1oyPSfpuPezju294NnJoKLtcvcA@mail.gmail.com>
Subject: Re: [PATCH] efi/libstub: Fix build error with libstub
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Zhenzhong Duan <zhenzhong.duan@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Kees Cook <keescook@chromium.org>, 
	Ingo Molnar <mingo@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ysqkV0tr;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Wed, 10 Jun 2020 at 10:59, Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Wed, Jun 10, 2020 at 03:14:46PM +0800, Zhenzhong Duan wrote:
> > Got below error during build:
> >
> >   In file included from drivers/firmware/efi/libstub/efi-stub-helper.c:=
16:0:
> >   drivers/firmware/efi/libstub/efi-stub-helper.c: In function =E2=80=98=
efi_char16_puts=E2=80=99:
> >   arch/x86/include/asm/efi.h:355:3: sorry, unimplemented: ms_abi attrib=
ute requires -maccumulate-outgoing-args or subtarget optimization implying =
it
> >      : __efi64_thunk_map(inst, func, inst, ##__VA_ARGS__))
> >      ^
> >   drivers/firmware/efi/libstub/efi-stub-helper.c:37:2: note: in expansi=
on of macro =E2=80=98efi_call_proto=E2=80=99
> >     efi_call_proto(efi_table_attr(efi_system_table, con_out),
> >     ^
> >   drivers/firmware/efi/libstub/efi-stub-helper.c:37: confused by earlie=
r errors, bailing out
> >
> > Fix it by adding -maccumulate-outgoing-args for efi libstub build
> > as suggested by gcc.
> >
> > Signed-off-by: Zhenzhong Duan <zhenzhong.duan@gmail.com>
> > ---
> >  drivers/firmware/efi/libstub/Makefile | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/e=
fi/libstub/Makefile
> > index cce4a74..25e5d02 100644
> > --- a/drivers/firmware/efi/libstub/Makefile
> > +++ b/drivers/firmware/efi/libstub/Makefile
> > @@ -6,7 +6,7 @@
> >  # enabled, even if doing so doesn't break the build.
> >  #
> >  cflags-$(CONFIG_X86_32)              :=3D -march=3Di386
> > -cflags-$(CONFIG_X86_64)              :=3D -mcmodel=3Dsmall
> > +cflags-$(CONFIG_X86_64)              :=3D -mcmodel=3Dsmall -maccumulat=
e-outgoing-args
>
> This will need a cc-option call if this patch is necessary because clang
> does not support this flag.
>
> clang-11: error: unknown argument: '-maccumulate-outgoing-args'
>

A fix was already sent for this

https://lore.kernel.org/bpf/20200605150638.1011637-1-nivedita@alum.mit.edu/

which does the right thing here.

> >  cflags-$(CONFIG_X86)         +=3D -m$(BITS) -D__KERNEL__ \
> >                                  -fPIC -fno-strict-aliasing -mno-red-zo=
ne \
> >                                  -mno-mmx -mno-sse -fshort-wchar \
> > --
> > 1.8.3.1
> >
>
> Cheers,
> Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXHun8-SS4L03ccp%3Dpt1oyPSfpuPezju294NnJoKLtcvcA%40m=
ail.gmail.com.
