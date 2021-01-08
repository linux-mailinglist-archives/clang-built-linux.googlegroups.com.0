Return-Path: <clang-built-linux+bncBC32535MUICBBHHL4D7QKGQE462ERUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 741C42EF0C2
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 11:36:15 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id 189sf8951940qko.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 02:36:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610102174; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yqiphe23IE8kEBJ4oZCa7RAEyahcNxgkQN7uPYIGVNI4z3wT4C7B+bxSA/ys0G2vLV
         TZmC4gyLrtEpfOrwOElf2vRDh7CpmJKf5p9Efjvf+TeARpVDozY6FSy562Cp+pIRPzs+
         7pTOkID5nlae17vz8X45jAOJcHF5E0oJSP3Rd4MVzw/QNRFikgE+VgZFpYo/lrznLYYV
         yc9BxMKNumBKhFno5UPMRE868Rw9mfi+QQlzdLmpBIWaT47f/Q0L42H5D+76uQc5wAny
         Bes6n+bA5Pq2UnataK+jEZ2dedVFnbeIciJE6bIyjJfryoYou/DlHmCn0BlKTeno2T/l
         b9Cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:organization:references:cc:to:from:subject:sender
         :dkim-signature;
        bh=IgK/1lWajrCooBpVgqmNDg3VER3TiZwSX7vDxMtxMCI=;
        b=JJYrEWYXpLPIpEG3F6/s2aVdO+0gMnK6Km2y//C/Ww7sWqPwXNU7D3+iEhboSl/9pZ
         j8QbQYrHqdS4k8GATNzODEyI/0s0iFAAiCVNbaVzxvncPdB/aQI477meAzQdvGU9V4Ji
         yUTu9jx5lMUocmjBw1GzraNej5VIduG4z3t84YpPKEFI1dNXmXVdSiyAzTIOZKF6qaVL
         PZWFWaFoGnX9rqEUMtthhP76vwFWin3K3iLMThsYDUalbnKNwbK1vHDkP4pPn49bO5ox
         C0MbBNxYRAoVyGKhW+p92iCvCvitKcL82iq/u9u1QnEncx8OIOOSf2KyFPn2SRxqfTe4
         gY6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gt8uySs6;
       spf=pass (google.com: domain of david@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IgK/1lWajrCooBpVgqmNDg3VER3TiZwSX7vDxMtxMCI=;
        b=pI6WXFFsroASpvYsEYrdEFg8CRMvGCxws3W1f+6EGSFIVWvsa3PW/PyBMaEQ3dbRPw
         PzIU71m6Df3Qp6mwSA38QDw4XSIT5Un56796n67OTMnUT1/nLsbhO1SMHW+YBEByJrRk
         wZBimkx3zHOlDKpxuyRL5fygXEGIgriZHM6sQGYlUCGcHWW5q7TIGI49Y4Ti1U3xNlhA
         whlopywXaXfBrRjvhL1RIHdBCh5sN0WfMsu13fg8cLJ8NAhPfP1twEbQGO7sD0miqmvb
         OIXdWsZMYFzzVBNWiiOYV4o/t6Mt7H7OaZsoRScdx6niWJ6d21B8CEWAfICKcP0BoLx/
         1e5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IgK/1lWajrCooBpVgqmNDg3VER3TiZwSX7vDxMtxMCI=;
        b=KK6WOfLgtC1b4Dxq1EEdTm2Idu4qs4dMooK7ZfkLJOokuOcfck7pevOPlS0DQfyDJJ
         IxZdFSouN+wmJwFR6zOUX7o7oMuIrcrzXivn0MsZr/zq8GnXPkZbETye8P2preDEI/Xc
         sjkDwc4ZVLtI2NPqjDRznj7KeSu8g10+HdNn/AA6MLntYM/T7SJYro/98swP+zrI2Gl1
         NK9lHZ1bk/rnOPNbjWXrvp+T80tIQMTjh02Goe+1ObK8cHOfPB340hvteWlzWXXpcbQL
         1Vd22r/RLLPyTBa5Vu6IAMnxnAAx7uuHP6Pn1AsPRiQ4G1kZNxXbn0/zNQ9vVLAkNBXS
         dUhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jXKHDmRcJysXJ8NupZHjia0fG0qwUgyPI1XCPPkpG71k7fzs/
	gH1l7rfKh/b4GelMZjIRFq4=
X-Google-Smtp-Source: ABdhPJzbSZv2aXhru7p4ZN+inbNqCYbfzz2NpFAy/8Q0kJw6qDurRTuPpJKqO8HbIBS19cWAyBcjPA==
X-Received: by 2002:aed:3129:: with SMTP id 38mr2818048qtg.268.1610102172964;
        Fri, 08 Jan 2021 02:36:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:242:: with SMTP id q2ls5417316qkn.9.gmail; Fri, 08
 Jan 2021 02:36:12 -0800 (PST)
X-Received: by 2002:a37:a14a:: with SMTP id k71mr3127472qke.33.1610102172574;
        Fri, 08 Jan 2021 02:36:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610102172; cv=none;
        d=google.com; s=arc-20160816;
        b=uESN4/QB0Drf7E7g8eH5rFV3+1xuRJPsy2DwLEYiFeOEs3BzQSEJrUO1mDzgWsvhe7
         M+gTvywZWNDtcODrKCd/bHPiqrDcOAnGDxs1/RFWPO/CUuKC+/BSgA/qv8XvfWskn2mA
         +vrk58ePpnbOi8UR8wMkNlJutpjlV1WlqSY4ouFLfyWQV0oa5P2GFi5y1femtxFdm0/e
         pahUECpslqz/6dqNBv9Us+ZMv/SOOXAkGgI7i6Izn/db58ML8ClRLLO2OSbPet8Teq0L
         LNUbTv+EtErLgB5pjGgF75Aw7R0XXVNKuGxLB/boYO3QycFK3/I39BO56AbvbrlKDHMD
         HHdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:references:cc:to:from
         :subject:dkim-signature;
        bh=8fJ9jFB3S8QUrQ9mVhHSO23ic7tetd0vHnRUvARgb3E=;
        b=ucYeSZSLlv8CUS8ihcr3Dtk+b3qP6XVMCiYQwgTlo6KkU5S1lpdg4l/LBoD+bOXC+X
         tfUnX0GyBC3+szaT3xiI+p4d/FrE0im6hAGKYQ92JNXvTc0aprN+DH5Yr2j6jtQ+xk9C
         cItAm+FTDKhTzzfLyKG0m5LZvhOASLhR72E6rCGI9kEZS9ZIbbOUGG9YEVznCPvXuKYo
         Kwo9OHz/kw/NioNA6yTvcXKY8cpgpGL8o/zMI97QeQ3iC4tmq5nXPsBNWbaUbodOmikW
         jrqhEDowi51voqhmnh5U0I8mkbxfFCk7RfiYTr2s9TL0YEu+bqW2/NWBe4cXdJyYABwR
         7qCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gt8uySs6;
       spf=pass (google.com: domain of david@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id i2si711962qkg.4.2021.01.08.02.36.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Jan 2021 02:36:12 -0800 (PST)
Received-SPF: pass (google.com: domain of david@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-576-0HZOwGKKMO6Qrgh4xdQ7sA-1; Fri, 08 Jan 2021 05:36:10 -0500
X-MC-Unique: 0HZOwGKKMO6Qrgh4xdQ7sA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6D3968042B5;
	Fri,  8 Jan 2021 10:36:08 +0000 (UTC)
Received: from [10.36.114.168] (ovpn-114-168.ams2.redhat.com [10.36.114.168])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B0E795D9C0;
	Fri,  8 Jan 2021 10:36:02 +0000 (UTC)
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
 <a039a6b7-11b2-1588-744a-7fe0780483d1@redhat.com>
Organization: Red Hat GmbH
Message-ID: <97447294-2a91-6e32-548b-d438525a2a9f@redhat.com>
Date: Fri, 8 Jan 2021 11:36:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <a039a6b7-11b2-1588-744a-7fe0780483d1@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: david@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=gt8uySs6;
       spf=pass (google.com: domain of david@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=david@redhat.com;
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

On 08.01.21 11:19, David Hildenbrand wrote:
> On 08.01.21 10:44, David Hildenbrand wrote:
>> On 08.01.21 03:20, Nick Desaulniers wrote:
>>> On Thu, Jan 7, 2021 at 3:27 PM David Hildenbrand <dhildenb@redhat.com> =
wrote:
>>>>
>>>>
>>>>> Am 08.01.2021 um 00:21 schrieb Nick Desaulniers <ndesaulniers@google.=
com>:
>>>>>
>>>>> =EF=BB=BFOn Thu, Jan 7, 2021 at 3:13 PM David Hildenbrand <david@redh=
at.com> wrote:
>>>>>>
>>>>>> RISBHG is broken and currently hinders clang builds of upstream kern=
els
>>>>>> from booting: the kernel crashes early, while decompressing the imag=
e.
>>>>>>
>>>>>>  [...]
>>>>>>   Kernel fault: interruption code 0005 ilc:2
>>>>>>   Kernel random base: 0000000000000000
>>>>>>   PSW : 0000200180000000 0000000000017a1e
>>>>>>         R:0 T:0 IO:0 EX:0 Key:0 M:0 W:0 P:0 AS:0 CC:2 PM:0 RI:0 EA:3
>>>>>>   GPRS: 0000000000000001 0000000c00000000 00000003fffffff4 00000000f=
ffffff0
>>>>>>         0000000000000000 00000000fffffff4 000000000000000c 00000000f=
ffffff0
>>>>>>         00000000fffffffc 0000000000000000 00000000fffffff8 000000000=
08e25a8
>>>>>>         0000000000000009 0000000000000002 0000000000000008 000000000=
000bce0
>>>>>>
>>>>>> One example of a buggy instruction is:
>>>>>>
>>>>>>    17dde:       ec 1e 00 9f 20 5d       risbhg  %r1,%r14,0,159,32
>>>>>>
>>>>>> With %r14 =3D 0x9 and %r1 =3D 0x7 should result in %r1 =3D 0x9000000=
07, however,
>>>>>> results in %r1 =3D 0.
>>>>>>
>>>>>> Let's interpret values of i3/i4 as documented in the PoP and make
>>>>>> computation of "mask" only based on i3 and i4 and use "pmask" only a=
t the
>>>>>> very end to make sure wrapping is only applied to the high/low doubl=
eword.
>>>>>>
>>>>>> With this patch, I can successfully boot a v5.10 kernel built with
>>>>>> clang, and gcc builds keep on working.
>>>>>>
>>>>>> Fixes: 2d6a869833d9 ("target-s390: Implement RISBG")
>>>>>> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
>>>>>> Cc: Guenter Roeck <linux@roeck-us.net>
>>>>>> Cc: Christian Borntraeger <borntraeger@de.ibm.com>
>>>>>> Signed-off-by: David Hildenbrand <david@redhat.com>
>>>>>> ---
>>>>>>
>>>>>> This BUG was a nightmare to debug and the code a nightmare to unders=
tand.
>>>>>>
>>>>>> To make clang/gcc builds boot, the following fix is required as well=
 on
>>>>>> top of current master: "[PATCH] target/s390x: Fix ALGSI"
>>>>>> https://lkml.kernel.org/r/20210107202135.52379-1-david@redhat.com
>>>>>
>>>>> In that case, a huge thank you!!! for this work! ++beers_owed.
>>>>>
>>>>
>>>> :) a kernel build for z13 should work with the (default) =E2=80=9E-cpu=
 qemu=E2=80=9C cpu type.
>>>
>>> Hmm...so I don't think clang can build a Linux kernel image with
>>> CONFIG_MARCH_Z13=3Dy just yet; just defconfig.  Otherwise looks like
>>> clang barfs on some of the inline asm constraints.
>>>
>>
>> Ah, right. I overwrote my manual config by a temporary defconfig :)
>>
>>
>> So, I'm on x86-64 F33.
>>
>> clang version 11.0.0 (Fedora 11.0.0-2.fc33)
>> LLVM version 11.0.0
>>
>> I cannot directly use "LLVM=3D1" for cross-compilation, as I keep gettin=
g
>> "error: unknown emulation: elf64_s390" from ld.lld and "error: invalid
>> output format: 'elf64-s390'" from llvm-objcopy. I assume that's fixed in
>> llvm12?
>>
>> 1. I patch around it (strange, I remember CC=3D .. used to work, but it =
no
>> longer does)
>>
>> ---
>>
>> index e30cf02da8b8..89c57062ed5d 100644
>> --- a/Makefile
>> +++ b/Makefile
>> @@ -427,13 +427,13 @@ KBUILD_HOSTLDLIBS   :=3D $(HOST_LFS_LIBS) $(HOSTLD=
LIBS)
>>  CPP            =3D $(CC) -E
>>  ifneq ($(LLVM),)
>>  CC             =3D clang
>> -LD             =3D ld.lld
>> -AR             =3D llvm-ar
>> -NM             =3D llvm-nm
>> -OBJCOPY                =3D llvm-objcopy
>> -OBJDUMP                =3D llvm-objdump
>> -READELF                =3D llvm-readelf
>> -STRIP          =3D llvm-strip
>> +LD             =3D $(CROSS_COMPILE)ld
>> +AR             =3D $(CROSS_COMPILE)ar
>> +NM             =3D $(CROSS_COMPILE)nm
>> +OBJCOPY                =3D $(CROSS_COMPILE)objcopy
>> +OBJDUMP                =3D $(CROSS_COMPILE)objdump
>> +READELF                =3D $(CROSS_COMPILE)readelf
>> +STRIP          =3D $(CROSS_COMPILE)strip
>>  else
>>  CC             =3D $(CROSS_COMPILE)gcc
>>  LD             =3D $(CROSS_COMPILE)ld
>>
>> ---
>>
>> 2. Compile using clang
>>
>>
>> Using latest linux-next (1c925d2030afd354a02c23500386e620e662622b) +
>> above patch
>>
>> ---
>>
>> #!/bin/bash
>> export ARCH=3Ds390;
>> export CROSS_COMPILE=3Ds390x-linux-gnu-
>> export LLVM=3D1
>> make distclean
>> make defconfig
>>
>> # Make F32 initrd boot without inserting modules
>> ./scripts/config -e CONFIG_SCSI_ISCSI_ATTRS
>> ./scripts/config -e CONFIG_ISCSI_TCP
>>
>> make -j40 > /dev/null
>>
>> ---
>>
>> 3. Run it via QEMU. I boot a full Fedora 32 using the cloud-image +
>> initrd from Fedora 32 (tried to stick to your cmdline where possible)
>>
>> ./build/qemu-system-s390x \
>> -m 512M \
>> -cpu qemu \
>> -display none \
>> -nodefaults \
>> -kernel ../linux-cross/arch/s390/boot/bzImage \
>> -append "root=3D/dev/vda1 conmode=3Dsclp console=3DttyS0" \
>> -initrd ../Fedora-Cloud-Base-32-1.6.x86_64-initrd.img \
>> -hda ../Fedora-Cloud-Base-32-1.6.x86_64-initrd.img \
>=20
> ^ -hda ../Fedora-Cloud-Base-32-1.6.x86_64.qcow2 \
>=20
>=20

Using homebrew llvm-12/clang-12 results in a kernel that is indeed stuck
is in an endless program exception loop, seeming to try printing a
backtrace over and over again. Yet, no output besides

"KASLR disabled: CPU has no PRNG"

Kernel runs under KVM, so more debugging to do to get clang-12 builds
running as well.

--=20
Thanks,

David / dhildenb

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/97447294-2a91-6e32-548b-d438525a2a9f%40redhat.com.
