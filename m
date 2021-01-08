Return-Path: <clang-built-linux+bncBC32535MUICBBH6T4D7QKGQEOCOGGEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 646892EEFF0
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 10:45:05 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id q13sf6290050pfn.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 01:45:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610099104; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ph1Dahjlj1LSqzLK61rGTr+vHQtJp+pQuo6O4giQTCKtjEJt6FuB8TLtWqCGnktmLL
         7Xi+sjEbd1KVCNf0D5xrm6zYERoeBrQpx5+2rqLy0sk+IPLPKMh2rpBmY6vW7l3Iwpyo
         94gnxGoDfZt9LMXNyaeXX7NksBYq+pN9NBbVxDDpmhEIkBprhWUTh7j3wJicPyaA0Y/1
         1o3HziNL4s+WmImMEpuHE++TbOPxm2EcxKy5Oxo0Le1wrvjmImTvbeJ49GZQGqyhNH+p
         h+cWJFAck0a6dl4CNGrV90iUUueth+hxiI/Pec3icsaOACCt1bo4HEFsbyBRIlABDtM0
         ciXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:organization:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=SpxxOC1wIyfJsSNcIMvf2zeIYXxOvYMsEKk37EmUs4Y=;
        b=u5HlLdeB9Puh+ggWrDkYYOvrzB0ti0/jWzUCRpRdPwlF6hfp6d5JpXdGRl/ATeZKTN
         PQdy8Cg3H9vLI1eJ8lBUjl66ebuy5K1TogUdTi2g9lShBpvBz3EgjhjWX+zkjX8SChpZ
         +p1+TPVTOpDgo8+TyMY9Vp1T7QONpQl6XJl9sHkL/qTyGUlx0hV/Z1q8kV6lold8i565
         BcAiMDID/T7Kuz1g1e+8BvgSE4J4lslyGS1ZeIYOxBvI5b1NQ8SisxNs3PM5T80BUaUF
         sn+hIOeA7xuOh7ig/e4b870+3fhgoROm8kKuLqj9IPhemQTDwCrDR5krtwxiSld4a6NU
         AYug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=jDY+GF4J;
       spf=pass (google.com: domain of david@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SpxxOC1wIyfJsSNcIMvf2zeIYXxOvYMsEKk37EmUs4Y=;
        b=Lp+4HJPbGOnnPwym2nf6hNqP4iweWJubuWpdbQVmhiXtEFlvX0jcBF5CqQNO1Oux0a
         cudkCNB2KlbCRH4ZczDLOmV5vFfVZ90k5rvNm9LbqI4ysjiEkbi9SM8UA/RrInjBq3T5
         knc6f6F+tSF9kyj4fi6IJojc122t93KRmHo6UCzQnFMWmmNaKXu1UyWGI7yzUtIhl5tA
         6G5EcuO7XCn9JBC7YsoYMsIfrN1wIq3Z/VUABPVgwsigr/YqedBHp8kVsIL420FuDVZ7
         OCaHCpzNsjT25Xq11fdos/T5k9vhKuJ5sQK8WghPaHmuxBo2PdhnaBtWPP1phfG+oSUD
         iubQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SpxxOC1wIyfJsSNcIMvf2zeIYXxOvYMsEKk37EmUs4Y=;
        b=TlpQb+szFPQIpcHZ+NjY3JXVU3yH0wvSr8O4AJf84RCN4sYUYVEXO25ZTaW9o2MnkJ
         4RSPD/Dcw4HYeZVv5QV2dslokPLU9CAAo7xct25ucyab7Jqh+gM53rYVEtaDz1z2xHgB
         Yr44r93YoRr+fotFv627PRIT0yakOdd4ibHzfjbW+LBGVud+D4MvHbSdF0IS/Hebmveu
         RqJXsqWlqFJXFdPotwSbDtp21VBgM+9e4sb6DBE+BWxPeaXD1xe+Z/RF3F5roYHLG2v/
         gwqXagSW9Dp+6dJby6iqi+mzDES4vSIqA1CcBjYpN51zo/wZq/U3ml3Nuflk/rICDdu2
         vTIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326OoVH+I248ik+nND4P+z6RS9kbiAgNW+Oh80/aXvuLiHPwSuf
	//ClZZi/tsz3EQ5j55YP9gA=
X-Google-Smtp-Source: ABdhPJwuySO8i4zHhE2KDqTLinxIfx5QzyOT+msFVVGp2VY4ArVh84LzhMv1g8jjbDPrGHYa0tmiQg==
X-Received: by 2002:a63:1456:: with SMTP id 22mr6267806pgu.386.1610099103896;
        Fri, 08 Jan 2021 01:45:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d149:: with SMTP id c9ls4202244pgj.1.gmail; Fri, 08 Jan
 2021 01:45:03 -0800 (PST)
X-Received: by 2002:a63:dd17:: with SMTP id t23mr6176259pgg.320.1610099103159;
        Fri, 08 Jan 2021 01:45:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610099103; cv=none;
        d=google.com; s=arc-20160816;
        b=m929uEkCpjh2NjYctOPke7Mm13QbCm7L3lF5rVr7SUnyrNDRMkW7NzbdxNxIYgKZtC
         QKc5HOLuCfZD+1WunsBrHqAuL4Q5/6CSDq4516NJlXFVe9C/JIAms8F2rPn6kJmFO9b9
         M0YE9qq5ulwgwWmYka/bWJR5yzADG+cXP63WoyJKqCuO3TS7ylppxdNF45Fn3JziIn+s
         5gccoURaSKYcR6OYTGQuUkpNqR+okux+tRqYd79PqPNvFYY/ikPjtJ0e6TAIXxF+GUi8
         qkWwcV20dkbTT8wjWN+n1rttgrXxDzSv2pr1udDFgMdSEAwrrBFFyJRIbv4uLi2L4OdC
         uxdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=/OXYCgoWWVA1n7sPx24WxW5LdaPXzs2gQYtVcQ/wvFg=;
        b=hQNF9GGcUbCe+4AcJl1k8O89iSILYVkcRn8feW3PrACKECn+HQfgNbQaHhJLtn1L6q
         7KABf+OSQPF2cUQnWI9e8kTzSrEZ3dPyRq5YnheeXY0FUIXVUMmBPEqRy3m6pBlvbSqI
         368r+sxQWGtY5LgaQulS+GqLOhJWL2TTaMVA881tyyrWXPdxEHGxL2gMR8n/hd0MbCql
         cmUWZiCaH6zm/NUuIXQrMp4hHPbH/ObldZeXzQH7hPIxpEqZe+o+wU7zEwVaGxwHrEhy
         be2oA1dRSTS08TCrB1wEA0QV2W5yDTuWs7paeIzhTzp/XJ/IPMEQSz1au2vkPHrjPo5o
         8nLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=jDY+GF4J;
       spf=pass (google.com: domain of david@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id m63si286977pfb.3.2021.01.08.01.45.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Jan 2021 01:45:03 -0800 (PST)
Received-SPF: pass (google.com: domain of david@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-374-q5D4zIhTMBOUDeIyYa_jcA-1; Fri, 08 Jan 2021 04:45:00 -0500
X-MC-Unique: q5D4zIhTMBOUDeIyYa_jcA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3D5F918C9F40;
	Fri,  8 Jan 2021 09:44:58 +0000 (UTC)
Received: from [10.36.114.168] (ovpn-114-168.ams2.redhat.com [10.36.114.168])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5C3B610013C0;
	Fri,  8 Jan 2021 09:44:55 +0000 (UTC)
Subject: Re: [PATCH v1] s390x/tcg: Fix RISBHG
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
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <bbdd5d1b-6aa9-cd2c-eb9a-cf0345dbc999@redhat.com>
Date: Fri, 8 Jan 2021 10:44:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdn068fXosDhtF_o-DVY2tQs4pWj59+uJ59_=JPfOK2Hsg@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: david@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=jDY+GF4J;
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

On 08.01.21 03:20, Nick Desaulniers wrote:
> On Thu, Jan 7, 2021 at 3:27 PM David Hildenbrand <dhildenb@redhat.com> wr=
ote:
>>
>>
>>> Am 08.01.2021 um 00:21 schrieb Nick Desaulniers <ndesaulniers@google.co=
m>:
>>>
>>> =EF=BB=BFOn Thu, Jan 7, 2021 at 3:13 PM David Hildenbrand <david@redhat=
.com> wrote:
>>>>
>>>> RISBHG is broken and currently hinders clang builds of upstream kernel=
s
>>>> from booting: the kernel crashes early, while decompressing the image.
>>>>
>>>>  [...]
>>>>   Kernel fault: interruption code 0005 ilc:2
>>>>   Kernel random base: 0000000000000000
>>>>   PSW : 0000200180000000 0000000000017a1e
>>>>         R:0 T:0 IO:0 EX:0 Key:0 M:0 W:0 P:0 AS:0 CC:2 PM:0 RI:0 EA:3
>>>>   GPRS: 0000000000000001 0000000c00000000 00000003fffffff4 00000000fff=
ffff0
>>>>         0000000000000000 00000000fffffff4 000000000000000c 00000000fff=
ffff0
>>>>         00000000fffffffc 0000000000000000 00000000fffffff8 00000000008=
e25a8
>>>>         0000000000000009 0000000000000002 0000000000000008 00000000000=
0bce0
>>>>
>>>> One example of a buggy instruction is:
>>>>
>>>>    17dde:       ec 1e 00 9f 20 5d       risbhg  %r1,%r14,0,159,32
>>>>
>>>> With %r14 =3D 0x9 and %r1 =3D 0x7 should result in %r1 =3D 0x900000007=
, however,
>>>> results in %r1 =3D 0.
>>>>
>>>> Let's interpret values of i3/i4 as documented in the PoP and make
>>>> computation of "mask" only based on i3 and i4 and use "pmask" only at =
the
>>>> very end to make sure wrapping is only applied to the high/low doublew=
ord.
>>>>
>>>> With this patch, I can successfully boot a v5.10 kernel built with
>>>> clang, and gcc builds keep on working.
>>>>
>>>> Fixes: 2d6a869833d9 ("target-s390: Implement RISBG")
>>>> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
>>>> Cc: Guenter Roeck <linux@roeck-us.net>
>>>> Cc: Christian Borntraeger <borntraeger@de.ibm.com>
>>>> Signed-off-by: David Hildenbrand <david@redhat.com>
>>>> ---
>>>>
>>>> This BUG was a nightmare to debug and the code a nightmare to understa=
nd.
>>>>
>>>> To make clang/gcc builds boot, the following fix is required as well o=
n
>>>> top of current master: "[PATCH] target/s390x: Fix ALGSI"
>>>> https://lkml.kernel.org/r/20210107202135.52379-1-david@redhat.com
>>>
>>> In that case, a huge thank you!!! for this work! ++beers_owed.
>>>
>>
>> :) a kernel build for z13 should work with the (default) =E2=80=9E-cpu q=
emu=E2=80=9C cpu type.
>=20
> Hmm...so I don't think clang can build a Linux kernel image with
> CONFIG_MARCH_Z13=3Dy just yet; just defconfig.  Otherwise looks like
> clang barfs on some of the inline asm constraints.
>=20

Ah, right. I overwrote my manual config by a temporary defconfig :)


So, I'm on x86-64 F33.

clang version 11.0.0 (Fedora 11.0.0-2.fc33)
LLVM version 11.0.0

I cannot directly use "LLVM=3D1" for cross-compilation, as I keep getting
"error: unknown emulation: elf64_s390" from ld.lld and "error: invalid
output format: 'elf64-s390'" from llvm-objcopy. I assume that's fixed in
llvm12?

1. I patch around it (strange, I remember CC=3D .. used to work, but it no
longer does)

---

index e30cf02da8b8..89c57062ed5d 100644
--- a/Makefile
+++ b/Makefile
@@ -427,13 +427,13 @@ KBUILD_HOSTLDLIBS   :=3D $(HOST_LFS_LIBS) $(HOSTLDLIB=
S)
 CPP            =3D $(CC) -E
 ifneq ($(LLVM),)
 CC             =3D clang
-LD             =3D ld.lld
-AR             =3D llvm-ar
-NM             =3D llvm-nm
-OBJCOPY                =3D llvm-objcopy
-OBJDUMP                =3D llvm-objdump
-READELF                =3D llvm-readelf
-STRIP          =3D llvm-strip
+LD             =3D $(CROSS_COMPILE)ld
+AR             =3D $(CROSS_COMPILE)ar
+NM             =3D $(CROSS_COMPILE)nm
+OBJCOPY                =3D $(CROSS_COMPILE)objcopy
+OBJDUMP                =3D $(CROSS_COMPILE)objdump
+READELF                =3D $(CROSS_COMPILE)readelf
+STRIP          =3D $(CROSS_COMPILE)strip
 else
 CC             =3D $(CROSS_COMPILE)gcc
 LD             =3D $(CROSS_COMPILE)ld

---

2. Compile using clang


Using latest linux-next (1c925d2030afd354a02c23500386e620e662622b) +
above patch

---

#!/bin/bash
export ARCH=3Ds390;
export CROSS_COMPILE=3Ds390x-linux-gnu-
export LLVM=3D1
make distclean
make defconfig

# Make F32 initrd boot without inserting modules
./scripts/config -e CONFIG_SCSI_ISCSI_ATTRS
./scripts/config -e CONFIG_ISCSI_TCP

make -j40 > /dev/null

---

3. Run it via QEMU. I boot a full Fedora 32 using the cloud-image +
initrd from Fedora 32 (tried to stick to your cmdline where possible)

./build/qemu-system-s390x \
-m 512M \
-cpu qemu \
-display none \
-nodefaults \
-kernel ../linux-cross/arch/s390/boot/bzImage \
-append "root=3D/dev/vda1 conmode=3Dsclp console=3DttyS0" \
-initrd ../Fedora-Cloud-Base-32-1.6.x86_64-initrd.img \
-hda ../Fedora-Cloud-Base-32-1.6.x86_64-initrd.img \
-serial mon:stdio


KASLR disabled: CPU has no PRNG
[    0.408769] Linux version 5.11.0-rc2-next-20210108-dirty
(dhildenb@desktop) (clang version 11.0.0 (Fedora 11.0.0-2.fc33), GNU ld
version 2.35.1-1.fc33) #1 SMP Fri Jan 8 10:23:01 CET 2021
[    0.410266] setup: Linux is running under KVM in 64-bit mode
[    0.415840] setup: The maximum memory size is 512MB
[    0.417278] cpu: 1 configured CPUs, 0 standby CPUs

...

Fedora 32 (Cloud Edition)
Kernel 5.11.0-rc2-next-20210108-dirty on an s390x (ttysclp0)

atomic-00 login:


> It looks like with your patch applied we get further into the boot!
> I'm not seeing any output with:
> $ /android0/qemu/build/qemu-system-s390x -cpu qemu -append
> 'conmode=3Dsclp console=3DttyS0' -display none -initrd
> /<path/to>/boot-utils/images/s390/rootfs.cpio -kernel
> arch/s390/boot/bzImage -m 512m -nodefaults -serial mon:stdio
>=20
> (Based on a quick skim through
> https://www.ibm.com/support/knowledgecenter/en/linuxonibm/com.ibm.linux.z=
.ludd/ludd_r_lmtkernelparameter.html).
> Do I have all of those right?
>=20
> If I attach GDB to QEMU running that kernel image, I was able to view
> the print banner once via `lx-dmesg` gdb macro in the kernel, but it
> seems on subsequent runs control flow gets diverted unexpected post
> entry to start_kernel() always to `s390_base_pgm_handler` ...errr..at
> least when I try to single step in GDB.  Tried with linux-5.10.y,
> mainline, and linux-next.
>=20
> qemu: 470dd6bd360782f5137f7e3376af6a44658eb1d3 + your patch
> llvm: 106e66f3f555c8f887e82c5f04c3e77bdaf345e8
> linux-5.10.y: d1988041d19dc8b532579bdbb7c4a978391c0011
> linux: 71c061d2443814de15e177489d5cc00a4a253ef3
> linux-next: f87684f6470f5f02bd47d4afb900366e5d2f31b6
>=20
>=20
> (gdb) hbreak setup_arch
> Hardware assisted breakpoint 1 at 0x142229e: file
> arch/s390/kernel/setup.c, line 1091.
> (gdb) c
> Continuing.
>=20
> Program received signal SIGTRAP, Trace/breakpoint trap.
> 0x00000000014222a0 in setup_arch (cmdline_p=3D0x11d7ed8) at
> arch/s390/kernel/setup.c:1091
> 1091            if (MACHINE_IS_VM)
> (gdb) lx-dmesg
> [    0.376351] Linux version 5.11.0-rc2-00157-ga2885c701c30
> (ndesaulniers@ndesaulniers1.mtv.corp.google.com) (Nick Desaulniers
> clang version 12.0.0 (git@github.com:llvm/llvm-project.git
> e75fec2b238f0e26cfb7645f2208baebe3440d41), GNU ld (GNU Binutils for
> Debian) 2.35.1) #81 SMP Thu Jan 7 17:57:34 PST 2021

So you're using llvm 12. Maybe that makes a difference. Or we have an
issue with our arm64 backend. Or using ld.lld and friends make a
difference. Guess I'd have to custom-compile llvm12 (gah) ... maybe I
can find some rpms somewhere.

--=20
Thanks,

David / dhildenb

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/bbdd5d1b-6aa9-cd2c-eb9a-cf0345dbc999%40redhat.com.
