Return-Path: <clang-built-linux+bncBC32535MUICBBRXD4D7QKGQE4JGMSEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC832EF08A
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 11:19:52 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id p21sf8908040qke.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 02:19:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610101191; cv=pass;
        d=google.com; s=arc-20160816;
        b=0KMhP1gthB++1d03FsKTZEwG93HIxl/d1j28/lkRDswn75U6Y4jepC4+REdmLlu5j0
         lcoyE5qNc4jtzPFK14KZPu+vzlen8ELJ/u1aA9cox/muwaH8DcVXAV3g+Mx0hqhK/fuD
         GVFcDzGMOcWv0huaiYev16nQNyp8LyZmLhnV/kbwjyP8eltm8SQeMktoolVVJU6JI7Xm
         tLVX88nk//H0if7Mg0JJZWrxNKzx3Og9Q8kLpj2lI+ntbGiRAa+1UeQzlbxNt/v5cEN+
         lvPobgSA/REBAyLrsXb9VWbv09X3vHrUUTPsWA2wGlmwphv/x7I3Qe4BPlamUuFwYIEJ
         R4Zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:organization:references:cc:to:from:subject:sender
         :dkim-signature;
        bh=oAjKkqD5q3OOl1nIoyO3hXu08gGf0raXehhYXncr2ik=;
        b=gnOyyg5a9YfHbnZu4w3/apaUobdQiJpsispeKTHhkGTwHNRjKlNj+hrQS56r9y6Vzw
         HY7+d7ACxoF0/X6u7mUNKavjA95A73pjkvrl9ZwwNHr1SpngyqjMYC6Kg4wGQHpfwgKe
         Jq9kxcGSDBalMBDuI9warJ/Zr9U5ysF9S/ZVIveCEd3snYRceZKfHZvPENNdz3IRCimY
         rb+4qtQUgpCGE6SZEjag3EP0znUZXJn/NeqUThw5LhvN1YRor1j0YMd1ezTkgNyLF2ja
         EyByLsGXkyEKMWAHmPFMiOZBQjCNUnYnHyw1ou3thAyvcK+agbbXs95gP9VTwUN+fKNf
         fcpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Qb9Wr/CX";
       spf=pass (google.com: domain of david@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oAjKkqD5q3OOl1nIoyO3hXu08gGf0raXehhYXncr2ik=;
        b=jp2f9ZNkMVq8XQ3sf8rzo59YshSos+yge9/79jY36l8y1J2AUy2JCH0gPDCM1OBSue
         RE3jCLuK2b+ZfKubYsJmWstKehxJYwmkwzfPT3j4Qv8A9WQGqHjH0c/PjO/NkTQ9b2Vk
         ovZ/nEMvZLvT6SLQ4cOxhyvNrVW1W2zkPOjnShZnjJnFa5naifj4WDsnDSGoIZTkF6cu
         vBWTBnpFo0im3XQay03TXwkhL0UnJuxyF+no8+cmXla9KWeWRooBOh6/cflRGFeTb3Yt
         cStd63aHGZeE6CEE7ljs/4M8niGu2axPke9MUCzYSYZpe6nk6TIG3SlwFOik2Oa5r9uH
         4w9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oAjKkqD5q3OOl1nIoyO3hXu08gGf0raXehhYXncr2ik=;
        b=c3He1xgoI9aw/vlycpf7RfLS6MBWodb0CizNyBtsPnxE0jgs5vFvOzN+xjPTl+mykN
         cfMuRmEC5JkpWcL4cxA1wXqj8F+5WfbkqhXjHLVoQwOfxgGTGR1BHJQElFQwF4hkrFAN
         VwVKnbCJu+2xUCYh0AW1CiJlVHlPBCqpM0iMrskhwdHdWlHd4Ge2h7cYGSDQQ5UYxW98
         74MANu6NOc4CogK3Jx7mPIM6g21l6ZjVklVNHBjXHRfv2m33Gmfn5dxjwn4dXsvWn/p7
         9RQdWY4NeN7Vi321mIZ8jVC7DAZyMRkKAOI9bcaybByfgeo0eqLl3XfePG5s+Oz7eVf5
         IWxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oZ64nOf0hTvy+EbQE3X9nc/0Vc1CgBEJPkxeqSjJQvDX02+Js
	LxZ8/UhJzSSUE6axhLXQx88=
X-Google-Smtp-Source: ABdhPJxzl2bg/UTe2gcRFmPvCCgtD+A+iOG5MjYTBEyF6TgWOWVT8d6igPKcQ3dhvh4Pdw7XkgkhjA==
X-Received: by 2002:ac8:4801:: with SMTP id g1mr2727859qtq.44.1610101190804;
        Fri, 08 Jan 2021 02:19:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3763:: with SMTP id p32ls4006283qtb.11.gmail; Fri, 08
 Jan 2021 02:19:50 -0800 (PST)
X-Received: by 2002:ac8:7382:: with SMTP id t2mr2678722qtp.261.1610101190410;
        Fri, 08 Jan 2021 02:19:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610101190; cv=none;
        d=google.com; s=arc-20160816;
        b=1H8Z5i/9HmwQhCwMuW2t1nN+CnJIYqcCcKZ3zB1THofNXF4C5pnS6z78TJ6oO3Br13
         DSDFdsHsoZOUZHvmMwSE0L390Ue9KHhnwhe8wdGWF/o5FbeVVvpK8VnRy4Vdfg+Ud2Xz
         FrmWap7WgpVgnv084LSx0axpYV9c1qB/Ewg8RD6rp4uE82kUHNrRLR0ALf6QjBKp4RqM
         Kh72v+e67snPKeM2W6YzsmN7eWvPTm5UwS9wMF8WgzgNmwcV7uvmspzNCfmWSnX/Ai0K
         pI8IPjKlXYn8ZM4AcOioF5m72vdDdWMigUlwEJU9qPT1twMPmj3d5f/Jm31V3k4ClA3/
         neUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:references:cc:to:from
         :subject:dkim-signature;
        bh=SYYUG7X0IpkyiBL6VX/4/vSf3kpATyymdleg3iSp1yo=;
        b=wxeEUeWNyS0diBLFZUL2FhrzPWg//kyOiAbBwbKYUpDJ0AoOVDLqK9/SuTUFb1Zcw9
         TEoNiYvLoXCVKn2t9OYpdbpgSugOlDK93MMJlq+OXWLgidlqFyDiVAh9EtjspIWjOl2h
         fvy8/cF2rgFrDDeLb5iCPRzJpwCXgEqqRnxdipmrnAkyZSXUkw5AxU7B96Wp4h4s5vQ4
         U9kR0HxvonTxY3G8qZFZLMgLTRAyP1FQm162L0NG1xL8vQYP5MS8p4iMD8d4MzaBScdM
         j+ZhNDxQBmJP6W/+JwsZK9tqm8rNQMwX3OHP42a3Aha1V2DbT5p7kSGqBzpLSZ/5DkKa
         5fDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Qb9Wr/CX";
       spf=pass (google.com: domain of david@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id j33si784154qtd.5.2021.01.08.02.19.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Jan 2021 02:19:50 -0800 (PST)
Received-SPF: pass (google.com: domain of david@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-215-3zu2t-9BM0idsyXLB8Qa3g-1; Fri, 08 Jan 2021 05:19:45 -0500
X-MC-Unique: 3zu2t-9BM0idsyXLB8Qa3g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F1293800D55;
	Fri,  8 Jan 2021 10:19:43 +0000 (UTC)
Received: from [10.36.114.168] (ovpn-114-168.ams2.redhat.com [10.36.114.168])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4AD9A5D9C0;
	Fri,  8 Jan 2021 10:19:41 +0000 (UTC)
Subject: Re: [PATCH v1] s390x/tcg: Fix RISBHG
From: David Hildenbrand <david@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>,
 David Hildenbrand <dhildenb@redhat.com>
Cc: qemu-devel@nongnu.org, qemu-s390x@nongnu.org,
 Thomas Huth <thuth@redhat.com>, Cornelia Huck <cohuck@redhat.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Ulrich Weigand <Ulrich.Weigand@de.ibm.com>,
 Jonas Paulsson <paulsson@linux.vnet.ibm.com>
References: <CAKwvOdmE=Z9pV4txRw-kpcv5FOSr6eEXfmGnc++R_Vzv8MnRDQ@mail.gmail.com>
 <B6050D16-4BD3-4355-878F-33E3E7C3A75D@redhat.com>
 <CAKwvOdn068fXosDhtF_o-DVY2tQs4pWj59+uJ59_=JPfOK2Hsg@mail.gmail.com>
 <bbdd5d1b-6aa9-cd2c-eb9a-cf0345dbc999@redhat.com>
Organization: Red Hat GmbH
Message-ID: <a039a6b7-11b2-1588-744a-7fe0780483d1@redhat.com>
Date: Fri, 8 Jan 2021 11:19:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <bbdd5d1b-6aa9-cd2c-eb9a-cf0345dbc999@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: david@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="Qb9Wr/CX";
       spf=pass (google.com: domain of david@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 08.01.21 10:44, David Hildenbrand wrote:
> On 08.01.21 03:20, Nick Desaulniers wrote:
>> On Thu, Jan 7, 2021 at 3:27 PM David Hildenbrand <dhildenb@redhat.com> w=
rote:
>>>
>>>
>>>> Am 08.01.2021 um 00:21 schrieb Nick Desaulniers <ndesaulniers@google.c=
om>:
>>>>
>>>> =EF=BB=BFOn Thu, Jan 7, 2021 at 3:13 PM David Hildenbrand <david@redha=
t.com> wrote:
>>>>>
>>>>> RISBHG is broken and currently hinders clang builds of upstream kerne=
ls
>>>>> from booting: the kernel crashes early, while decompressing the image=
.
>>>>>
>>>>>  [...]
>>>>>   Kernel fault: interruption code 0005 ilc:2
>>>>>   Kernel random base: 0000000000000000
>>>>>   PSW : 0000200180000000 0000000000017a1e
>>>>>         R:0 T:0 IO:0 EX:0 Key:0 M:0 W:0 P:0 AS:0 CC:2 PM:0 RI:0 EA:3
>>>>>   GPRS: 0000000000000001 0000000c00000000 00000003fffffff4 00000000ff=
fffff0
>>>>>         0000000000000000 00000000fffffff4 000000000000000c 00000000ff=
fffff0
>>>>>         00000000fffffffc 0000000000000000 00000000fffffff8 0000000000=
8e25a8
>>>>>         0000000000000009 0000000000000002 0000000000000008 0000000000=
00bce0
>>>>>
>>>>> One example of a buggy instruction is:
>>>>>
>>>>>    17dde:       ec 1e 00 9f 20 5d       risbhg  %r1,%r14,0,159,32
>>>>>
>>>>> With %r14 =3D 0x9 and %r1 =3D 0x7 should result in %r1 =3D 0x90000000=
7, however,
>>>>> results in %r1 =3D 0.
>>>>>
>>>>> Let's interpret values of i3/i4 as documented in the PoP and make
>>>>> computation of "mask" only based on i3 and i4 and use "pmask" only at=
 the
>>>>> very end to make sure wrapping is only applied to the high/low double=
word.
>>>>>
>>>>> With this patch, I can successfully boot a v5.10 kernel built with
>>>>> clang, and gcc builds keep on working.
>>>>>
>>>>> Fixes: 2d6a869833d9 ("target-s390: Implement RISBG")
>>>>> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
>>>>> Cc: Guenter Roeck <linux@roeck-us.net>
>>>>> Cc: Christian Borntraeger <borntraeger@de.ibm.com>
>>>>> Signed-off-by: David Hildenbrand <david@redhat.com>
>>>>> ---
>>>>>
>>>>> This BUG was a nightmare to debug and the code a nightmare to underst=
and.
>>>>>
>>>>> To make clang/gcc builds boot, the following fix is required as well =
on
>>>>> top of current master: "[PATCH] target/s390x: Fix ALGSI"
>>>>> https://lkml.kernel.org/r/20210107202135.52379-1-david@redhat.com
>>>>
>>>> In that case, a huge thank you!!! for this work! ++beers_owed.
>>>>
>>>
>>> :) a kernel build for z13 should work with the (default) =E2=80=9E-cpu =
qemu=E2=80=9C cpu type.
>>
>> Hmm...so I don't think clang can build a Linux kernel image with
>> CONFIG_MARCH_Z13=3Dy just yet; just defconfig.  Otherwise looks like
>> clang barfs on some of the inline asm constraints.
>>
>=20
> Ah, right. I overwrote my manual config by a temporary defconfig :)
>=20
>=20
> So, I'm on x86-64 F33.
>=20
> clang version 11.0.0 (Fedora 11.0.0-2.fc33)
> LLVM version 11.0.0
>=20
> I cannot directly use "LLVM=3D1" for cross-compilation, as I keep getting
> "error: unknown emulation: elf64_s390" from ld.lld and "error: invalid
> output format: 'elf64-s390'" from llvm-objcopy. I assume that's fixed in
> llvm12?
>=20
> 1. I patch around it (strange, I remember CC=3D .. used to work, but it n=
o
> longer does)
>=20
> ---
>=20
> index e30cf02da8b8..89c57062ed5d 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -427,13 +427,13 @@ KBUILD_HOSTLDLIBS   :=3D $(HOST_LFS_LIBS) $(HOSTLDL=
IBS)
>  CPP            =3D $(CC) -E
>  ifneq ($(LLVM),)
>  CC             =3D clang
> -LD             =3D ld.lld
> -AR             =3D llvm-ar
> -NM             =3D llvm-nm
> -OBJCOPY                =3D llvm-objcopy
> -OBJDUMP                =3D llvm-objdump
> -READELF                =3D llvm-readelf
> -STRIP          =3D llvm-strip
> +LD             =3D $(CROSS_COMPILE)ld
> +AR             =3D $(CROSS_COMPILE)ar
> +NM             =3D $(CROSS_COMPILE)nm
> +OBJCOPY                =3D $(CROSS_COMPILE)objcopy
> +OBJDUMP                =3D $(CROSS_COMPILE)objdump
> +READELF                =3D $(CROSS_COMPILE)readelf
> +STRIP          =3D $(CROSS_COMPILE)strip
>  else
>  CC             =3D $(CROSS_COMPILE)gcc
>  LD             =3D $(CROSS_COMPILE)ld
>=20
> ---
>=20
> 2. Compile using clang
>=20
>=20
> Using latest linux-next (1c925d2030afd354a02c23500386e620e662622b) +
> above patch
>=20
> ---
>=20
> #!/bin/bash
> export ARCH=3Ds390;
> export CROSS_COMPILE=3Ds390x-linux-gnu-
> export LLVM=3D1
> make distclean
> make defconfig
>=20
> # Make F32 initrd boot without inserting modules
> ./scripts/config -e CONFIG_SCSI_ISCSI_ATTRS
> ./scripts/config -e CONFIG_ISCSI_TCP
>=20
> make -j40 > /dev/null
>=20
> ---
>=20
> 3. Run it via QEMU. I boot a full Fedora 32 using the cloud-image +
> initrd from Fedora 32 (tried to stick to your cmdline where possible)
>=20
> ./build/qemu-system-s390x \
> -m 512M \
> -cpu qemu \
> -display none \
> -nodefaults \
> -kernel ../linux-cross/arch/s390/boot/bzImage \
> -append "root=3D/dev/vda1 conmode=3Dsclp console=3DttyS0" \
> -initrd ../Fedora-Cloud-Base-32-1.6.x86_64-initrd.img \
> -hda ../Fedora-Cloud-Base-32-1.6.x86_64-initrd.img \

^ -hda ../Fedora-Cloud-Base-32-1.6.x86_64.qcow2 \


--=20
Thanks,

David / dhildenb

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/a039a6b7-11b2-1588-744a-7fe0780483d1%40redhat.com.
