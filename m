Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBHMEQ3YQKGQEMYHGIOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A2EB41406AD
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 10:45:02 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id e13sf14674346iob.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 01:45:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579254301; cv=pass;
        d=google.com; s=arc-20160816;
        b=SvkEtne9pxqmzlVt/6ctAKRg4DmB7dllDRz7Ko1qamO4E47X2w5nytxMHwtCAeS6ws
         d0X+3QWRZ4K9TDOozaBrLg5PWTjIEyyxWgvGrfxmIw0T9dmmyZk0Wg7eFrPk75MKeyV6
         3sVOn3iUeLFIRaioGsS82iPPP5yDY/mey24t1Q8HSSg+pDZP6mh9vGLnXCNW9iw8xs0R
         HDHhitcHyu/Ix4ogMxi2UpsArwhx9QrrU+FiI4vjiWxqsewDYA+02RqYhHyv8VI2sW/6
         UT4iWgxLIJScSl19M3mYO8ErYuey5E6qx4U8JxBVh4BT/PXner7ac7WmbptzlJavBNMQ
         cXiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=vpf9wLJI6c6Om4S/kuqWYac7k5RHO/skmzwzBT6wpHo=;
        b=N3iZ9BhpKgcxZgxF/L8a0Vxig0+qHI4QVGtxMbXnOroTCjwKDMsVo0v4uJWe4lkcRs
         ydcayhMCTCF4rUTix5/bAbY5v53CpgL3yTWAhx847J0UM2sl5brJ2IAGbO2pwSYfDyU0
         KrrMNvkIn/XH34ysGHdeHDof9AnnvdY9CpaxzQDHmPgGfCq7Y+bpMiRwtT/bPMCfeabj
         ykNP2GpUH//esfeAyPe1b62EheHU/5r/xnuW6IOhkRWF3ltkh6Z80jjdzB2g7bvYf/3V
         Kfj0rEs99g4LMKpJzTjjU1VPYbDXKySF6V3NqbFMVaNjsu28HFHBlEI42X1NKJSLkUpQ
         rGeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Yxaon/uq";
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vpf9wLJI6c6Om4S/kuqWYac7k5RHO/skmzwzBT6wpHo=;
        b=lxkEEqjcOWStMCuLVNqQPRpoEFrbR+eJof92+IDwATVHtEoTxvMQlkXNK7cN64gkAx
         RY66jL1J8DJ+hBy8ouk3rNevwdWKKDo37U7T2Vv1U797gc1RtnJ2CEtlNHwxNG4LRcnr
         W9JeWd35uQSq+lskyn6y9GvixijjtnDOxJev0bAA84m0z/cn1Tc67Uim4Mc7R1U/ITbD
         tFR3nuYiQKHdLcaXKwwX3HWACS08/WYa0p9mgKy5vg0aEml4IzEhJZC+Bhth7VRpj0G1
         gIorAV1zfQl9ZXYZPiKIM0NnwO281B9PrHLIPNOwFRNk7Qj9i3lDnye0LfZZlMdNW5xJ
         MRrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vpf9wLJI6c6Om4S/kuqWYac7k5RHO/skmzwzBT6wpHo=;
        b=kHEjxKVTGy/VE1ymhoNiqVhFZNmt0KCRGJ9d4LPTGRmJxoF/Xo720Ima5CfM2hGRMp
         eomXJcnlr9OQzLh7JIn+v0IkM+ztEkdzonnzHfC57fXKoyJFw5hRs5li+Vg21ZnhFMhl
         WxEtmq+nihhFdICXe6sMmCQvtqr9o+C0hUVioDP+6A3DGrFn6HklxJFxG+bU9yVxbCrP
         PV2Fx3+ZE22IIznsYqo4y7tiH+5AQJPHaouLSNJes9yO0WJUNHiyth/y7TANktrJa63q
         AE4kgXqbPxm+95/3awoEpWiBt9yhrliiZtSfBpdrH55ck73W3afWojLOiskrbMAggIBK
         K98Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXIe3vag8Y9naX+gjgqWp4RACckXEfU5F3sWByOe4h+HNask+5E
	lsNo7UVNcqxRJedoDH1STpE=
X-Google-Smtp-Source: APXvYqz8NrNvzysV6eg8RdEiVdNe6i+31xphZT7aOgSZlceUUbVX17148j2X+0v9h/tKmMdpVd1xFA==
X-Received: by 2002:a5d:840a:: with SMTP id i10mr30869691ion.225.1579254301191;
        Fri, 17 Jan 2020 01:45:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:35d9:: with SMTP id c86ls4435823ilf.6.gmail; Fri, 17 Jan
 2020 01:45:00 -0800 (PST)
X-Received: by 2002:a92:3a95:: with SMTP id i21mr2225925ilf.249.1579254300803;
        Fri, 17 Jan 2020 01:45:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579254300; cv=none;
        d=google.com; s=arc-20160816;
        b=WhVmOJgPLXUcKVR11iZpUEUTh5NHh74ahdNug9ygNGm/q2G9iAGGi/YbmOY+QEaN8/
         oDy+tJFXKmlLspQ/XQvABu8t4X75p1lR2NVnC4e4vRWbGNp5reoIXuZ+QAKkYT6G84XG
         cEYiNoKIb1YQvYLkZbChDdhaRahVvb4B/c2jM2ambxos8cX0v07GgR/674PDbXSFtEHN
         Ago1kTDcQUc/IC5oB6aBPpI1mRFTr6EreRL8njUyhGb5eYGaHUldKWYAIhmupysg1rVW
         3qlfoN8qgwbbVxHv4ZjfLRccFp4AzAn6wQS6RjRYZBcG091fncgu/J6KBpPeGsIlZK1t
         j8NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=d3NzGAgJlD6eHnuWj5IIwMqjE133ujCVEgyVGy3OocE=;
        b=grImuP/mALoGoPImtBzH2cnIJUHjxSqdFc3SkFSygcsXVmfiAdz0nriCOMdGUqQEkk
         jj+vxdt74AEUh3wHdHi4PLPiRSYL6GeI4d30XeONj82Rc9qwneY5xhWRdOTw1L43yvFW
         AIKZiDH4552QNDGAxM0T8931RghcIF2clxOT7KgIQdvofON5YXI6gn78v7HetHhLTqR7
         FYR+xfZfjCp+xyaCgH9tC/HxkmAl2WWTLsUqEwz5D6ZSTogL/sn0dHt5nNsH8Y3FGrnJ
         rqH1D8SHzj4INaEQzszzwzRXXut4VJ+oF0jPU0ijk2vJgreHgBwHIyMdMQ+5e2ZO2m/Y
         eELA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Yxaon/uq";
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id z6si983170iof.2.2020.01.17.01.45.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jan 2020 01:45:00 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-426-rizHXusRPLygu6hdrfU01A-1; Fri, 17 Jan 2020 04:44:55 -0500
Received: by mail-lj1-f200.google.com with SMTP id u9so6037518ljg.12
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jan 2020 01:44:55 -0800 (PST)
X-Received: by 2002:a2e:87ca:: with SMTP id v10mr5158821ljj.253.1579254294384;
        Fri, 17 Jan 2020 01:44:54 -0800 (PST)
X-Received: by 2002:a2e:87ca:: with SMTP id v10mr5158794ljj.253.1579254294206;
        Fri, 17 Jan 2020 01:44:54 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id z13sm12089623ljh.21.2020.01.17.01.44.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2020 01:44:53 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id E29BD1804D6; Fri, 17 Jan 2020 10:44:52 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <brouer@redhat.com>, John Fastabend <john.fastabend@gmail.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, linux-rdma@vger.kernel.org, "open list\:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next v3 02/11] tools/bpf/runqslower: Fix override option for VMLINUX_BTF
In-Reply-To: <CAEf4Bzbz47nFh4tPBn2PTi3+YiYpMDxymgf36P=ZjbuBPoCrZg@mail.gmail.com>
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk> <157918093389.1357254.10041649215380772130.stgit@toke.dk> <CAEf4Bzbz47nFh4tPBn2PTi3+YiYpMDxymgf36P=ZjbuBPoCrZg@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 17 Jan 2020 10:44:52 +0100
Message-ID: <87wo9qquwb.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: rizHXusRPLygu6hdrfU01A-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="Yxaon/uq";
       spf=pass (google.com: domain of toke@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
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

> On Thu, Jan 16, 2020 at 5:23 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@re=
dhat.com> wrote:
>>
>> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>>
>> The runqslower tool refuses to build without a file to read vmlinux BTF
>> from. The build fails with an error message to override the location by
>> setting the VMLINUX_BTF variable if autodetection fails. However, the
>> Makefile doesn't actually work with that override - the error message is
>> still emitted.
>>
>> Fix this by including the value of VMLINUX_BTF in the expansion, and onl=
y
>> emitting the error message if the *result* is empty. Also permit running
>> 'make clean' even though no VMLINUX_BTF is set.
>>
>> Fixes: 9c01546d26d2 ("tools/bpf: Add runqslower tool to tools/bpf")
>> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>> ---
>>  tools/bpf/runqslower/Makefile |   18 ++++++++++--------
>>  1 file changed, 10 insertions(+), 8 deletions(-)
>>
>> diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefi=
le
>> index cff2fbcd29a8..89fb7cd30f1a 100644
>> --- a/tools/bpf/runqslower/Makefile
>> +++ b/tools/bpf/runqslower/Makefile
>> @@ -10,12 +10,14 @@ CFLAGS :=3D -g -Wall
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
>> +VMLINUX_BTF_PATHS :=3D $(VMLINUX_BTF) /sys/kernel/btf/vmlinux /boot/vml=
inux-$(KERNEL_REL)
>> +VMLINUX_BTF_PATH :=3D $(firstword $(wildcard $(VMLINUX_BTF_PATHS)))
>
> If user specifies VMLINUX_BTF pointing to non-existing file, but the
> system has /sys/kernel/btf/vmlinux, the latter will still be used,
> which is a very surprising behavior.

Hmm, yeah, good point.

> Also MAKECMDGOALS feels like a fragile hack to me. How about we move
> this VMLINUX_BTF guessing (without $(error)) into vmlinux.h rule
> itself and use shell if conditional after it to check for file
> existance and print nice error. That way we'll be checking VMLINUX_BTF
> only when it's really needed.

OK, sure, can do.

-Toke

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87wo9qquwb.fsf%40toke.dk.
