Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBAU273YAKGQEWLB5HEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 7412413CFAC
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 23:06:59 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id m198sf6482485ybf.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 14:06:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579126018; cv=pass;
        d=google.com; s=arc-20160816;
        b=nreT8zv2jw2yZVAks4x5KN0gxsCweRIa9MkmZrvrDkAPZrLhguQ7Yf1zMM6Ti0mynG
         sb5QirTZyhBEuMZiuufITtwqnhEnTt75/wkW+rwtcZCBTc+eB6yEDgnIxqMpQAjVSSw5
         niJmycMyXbzlVRU0WMA/Fgiyvt29UfBtCO9ALy6sU6KBFAICYzmapyvFiTFbGGiZA/t7
         pYJXqI0ktFZxVpwIIpZexGPGY7HVaV7xpHSg6atqu6pNhAPdy5Hf55k+tjjJdA+G0rug
         lFEjfAmmdGYPQK1Rwr9+xszwDrB6G5K035w96pbBuezS4CJQ73/j2Ew5wPGsv1qSps0o
         qRGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=jei+WaGOVB3qck1hEhhYBv3t2ByELOEbwmxpoTL1u4M=;
        b=iX3lmWzk1hfFM/37Gr+1c/PwL3QIThg/ObP62HOaNlXUjcVK/NVJYxm9Rx6ebadKIX
         S4fP3NXv+Ulh/bK1rCp1bbxa/DU+nEFT6+asOlVR2YV1ixSzKkkl5D+1gKvM7IVFVbc8
         2IEVtBDzVy3j79Fyc5RF6Y/uTyPdynac0R8Gy964VZjakI+P8lP0YNmv99J3qtWLx0M+
         5jNVQGbCoHgLitIeLRH7jkdZb+hnUeRlCHA/ifWZ3neALtzDY5jq9xig4Y6ODB3K7lDj
         irnP2SmNrvRRcHatKxQTrXJ+7oa7/MtFOGCTQQAphgXU/gFBuEtC90yyOUSqo8R7srMR
         6k6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bfW6NOKy;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jei+WaGOVB3qck1hEhhYBv3t2ByELOEbwmxpoTL1u4M=;
        b=K5+wiB9Z9K09KskTBkXHLSzjexxh9IY20alg8BhB14nEuPlX+E5l/3KITrQK7UG1ho
         sKYwmESaLlnq906SWLcfldYCpnwUDpCAEo4A9yurg30zcNYa7KlqsJrLnV5mfrOoc8ju
         qzSEWfMPB81j8rGu3KDoAGkz+WFDorDxMAu5BT3GRJ/mCV1AzZIncqqMP0zo4KmxAsp8
         9el2GkA6GVusHrTnqxddon/4BqS1n3W+6pKB+kwGpL99cD9FLZnJgB5D0/QpsHVptmxS
         6CAE3yqDo01+9QlFXCaKvMNl5AepZSDxWmXuzlml82kIbYZ87RWXY1LuWypKTDY5Ar64
         pYXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jei+WaGOVB3qck1hEhhYBv3t2ByELOEbwmxpoTL1u4M=;
        b=HabILADFhhsMnvwzNyb8G2yiB006lUMUHnloGVcY5tA3Lif71rGQd6/shM9apJcbvO
         gb/OR5qSfoLG6sgPZaUE5Tw2FCxAqZSldaqf1uAGqXWd3IgBT89l/ST8pUwMF70iqs00
         U9uWmVoN9iGUe29ZV2cf5yIHY1v5NUknz2BFckcYZJIxLzQbWWWFwWtTxTw8Y6QPZrdF
         lUvkFvpTIK4C5LzxSFpTylXI1u06wk1nIoxDibb/cMRmHPKN1MnEz979bqpQ0+eRmQNz
         Aca/8Q871Pfopr8uXFlgWs2x9i+xgPyjEI/NuKCwwynGMaoAazCXVCWgDf3m7ClxP5WF
         A0cw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXVgMFNxx3tSHnyeNgVcSSZtPcBkQwa1LCXbAt8UiS7XkRObVrq
	rX+G/wlH1AgF/GD8dL+nNxU=
X-Google-Smtp-Source: APXvYqz/Bo2l2WvVdmEvbyyhiX+1ZcutUbN/xYwS6C2fljaaR6uEeQRLZmZt8l3jlqpgws4Q4K2UOw==
X-Received: by 2002:a81:9b88:: with SMTP id s130mr24176672ywg.103.1579126018461;
        Wed, 15 Jan 2020 14:06:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d447:: with SMTP id m68ls1874576ybf.6.gmail; Wed, 15 Jan
 2020 14:06:58 -0800 (PST)
X-Received: by 2002:a25:6645:: with SMTP id z5mr7074004ybm.121.1579126018058;
        Wed, 15 Jan 2020 14:06:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579126018; cv=none;
        d=google.com; s=arc-20160816;
        b=DM89jtN8VFfwJKVbjRxBoKj/Ut0OXDhDW62xYizf9HX61N24js4+f9p6vbygFc2hV/
         0ACtp9qs2gLEbAIhpHVTWMZy1yaFyOjZnmG01IgvYsG8/l/hsYoSoAE2nGpG1lGLd2O+
         bYeAMqbZ8QS3MRIRGv8tGYTN211aI4+/PYsIGJNoQvXxcwUzRryHApTAxyeGsRbWZ/GR
         uXzofJrZE1WV5NNmRGZfx8vkhqO63tQnxOoBERjxIsOI1LS1onpfEggnKeFVX1F1YIGf
         2nFpM0UYi4moMvYZljnKP1pPRwhfVO8HSo/0ywIr1WlYazN/5TrNTnIARp2HgSQG3tQp
         xJeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=gNnAsMlAqSUn68PGsmjv/1vBDZOKWWnaBYV1iVAsSkI=;
        b=yxRYsE0m2AUdVNYrbX1eEnang7k9aejnixnEOwDY94myO2FH3rqjXvRKj6SIyOqnuL
         7z0/f0Pg95dfV4B+lqDmL1fY1rYWdKdGZ3Xmu1sv0+NrLf/Yw0AFkfcQyTAMFDVvWadJ
         V8i2Rt93leyF4Kphtj7M4LwrGZe9vNAvN0gCWzBzx5is+E8YDEl0ubrv/jVOtpDSVipH
         /jWhBMer39e2huAwD3UJH7xo9uzySMIL0KGQbUrVfiO2Qhk1tzluFxCdrAHuPAex+bgc
         QJr92wZmI4H46KAF7HOyvxr9T8G6HhP8LRG3ydzz77JOIhqeN8bhdBDUL8DPQcHDG2cz
         rV9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bfW6NOKy;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id p187si890113ywe.1.2020.01.15.14.06.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 14:06:58 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-12-gGcqzHn9PpaY0LrqslrTDg-1; Wed, 15 Jan 2020 17:06:56 -0500
Received: by mail-lj1-f199.google.com with SMTP id r14so4449635ljc.18
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 14:06:56 -0800 (PST)
X-Received: by 2002:a2e:3e03:: with SMTP id l3mr298578lja.237.1579126014882;
        Wed, 15 Jan 2020 14:06:54 -0800 (PST)
X-Received: by 2002:a2e:3e03:: with SMTP id l3mr298563lja.237.1579126014662;
        Wed, 15 Jan 2020 14:06:54 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id k5sm9561045lfd.86.2020.01.15.14.06.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 14:06:53 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id BEFA11804D6; Wed, 15 Jan 2020 23:06:52 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu
 <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko
 <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe
 <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski
 <jakub.kicinski@netronome.com>, Jesper Dangaard Brouer
 <brouer@redhat.com>, John Fastabend <john.fastabend@gmail.com>, Peter
 Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Arnaldo
 Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa
 <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>, Shuah Khan
 <shuah@kernel.org>, Networking <netdev@vger.kernel.org>, bpf
 <bpf@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 linux-rdma@vger.kernel.org, "open list\:KERNEL SELFTEST FRAMEWORK"
 <linux-kselftest@vger.kernel.org>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next v2 02/10] tools/bpf/runqslower: Fix override option for VMLINUX_BTF
In-Reply-To: <CAEf4BzbqY8zivZy637Xy=iTECzBAYQ7vo=M7TvsLM2Yp12bJpg@mail.gmail.com>
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk> <157909757089.1192265.9038866294345740126.stgit@toke.dk> <CAEf4BzbqY8zivZy637Xy=iTECzBAYQ7vo=M7TvsLM2Yp12bJpg@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 15 Jan 2020 23:06:52 +0100
Message-ID: <87v9pctlvn.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: gGcqzHn9PpaY0LrqslrTDg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=bfW6NOKy;
       spf=pass (google.com: domain of toke@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
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

Andrii Nakryiko <andrii.nakryiko@gmail.com> writes:

> On Wed, Jan 15, 2020 at 6:13 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@re=
dhat.com> wrote:
>>
>> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>>
>> The runqslower tool refuses to build without a file to read vmlinux BTF
>> from. The build fails with an error message to override the location by
>> setting the VMLINUX_BTF variable if autodetection fails. However, the
>> Makefile doesn't actually work with that override - the error message is
>> still emitted.
>
> Do you have example command with VMLINUX_BTF override that didn't work
> (and what error message was emitted)?

Before this patch:

$ cd ~/build/linux/tools/bpf/runqslower
$ make
Makefile:18: *** "Can't detect kernel BTF, use VMLINUX_BTF to specify it ex=
plicitly".  Stop.

$ make VMLINUX_BTF=3D~/build/linux/vmlinux
Makefile:18: *** "Can't detect kernel BTF, use VMLINUX_BTF to specify it ex=
plicitly".  Stop.

>> Fix this by only doing auto-detection if no override is set. And while
>> we're at it, also look for a vmlinux file in the current kernel build di=
r
>> if none if found on the running kernel.
>>
>> Fixes: 9c01546d26d2 ("tools/bpf: Add runqslower tool to tools/bpf")
>> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>> ---
>>  tools/bpf/runqslower/Makefile |   16 ++++++++++------
>>  1 file changed, 10 insertions(+), 6 deletions(-)
>>
>> diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefi=
le
>> index cff2fbcd29a8..fb93ce2bf2fe 100644
>> --- a/tools/bpf/runqslower/Makefile
>> +++ b/tools/bpf/runqslower/Makefile
>> @@ -10,12 +10,16 @@ CFLAGS :=3D -g -Wall
>>
>>  # Try to detect best kernel BTF source
>>  KERNEL_REL :=3D $(shell uname -r)
>> -ifneq ("$(wildcard /sys/kernel/btf/vmlinux)","")
>> -VMLINUX_BTF :=3D /sys/kernel/btf/vmlinux
>> -else ifneq ("$(wildcard /boot/vmlinux-$(KERNEL_REL))","")
>> -VMLINUX_BTF :=3D /boot/vmlinux-$(KERNEL_REL)
>> -else
>> -$(error "Can't detect kernel BTF, use VMLINUX_BTF to specify it explici=
tly")
>> +ifeq ("$(VMLINUX_BTF)","")
>> +  ifneq ("$(wildcard /sys/kernel/btf/vmlinux)","")
>> +  VMLINUX_BTF :=3D /sys/kernel/btf/vmlinux
>> +  else ifneq ("$(wildcard /boot/vmlinux-$(KERNEL_REL))","")
>> +  VMLINUX_BTF :=3D /boot/vmlinux-$(KERNEL_REL)
>> +  else ifneq ("$(wildcard $(abspath ../../../vmlinux))","")
>> +  VMLINUX_BTF :=3D $(abspath ../../../vmlinux)
>
> I'm planning to mirror runqslower into libbpf Github repo and this
> ../../../vmlinux piece will be completely out of place in that
> context. Also it only will help when building kernel in-tree. So I'd
> rather not add this.

Well building the kernel in-tree is something people sometimes want to do ;=
)

Specifically, the selftests depend on this, so we should at least fix
those; but I guess it could work to just pass in VMLINUX_BTF as part of
the make -C from the selftests dir? I'll try that...

-Toke

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87v9pctlvn.fsf%40toke.dk.
