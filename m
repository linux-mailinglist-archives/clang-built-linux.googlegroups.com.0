Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBVWOQDYQKGQEV5ZOJUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9311C13D65D
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 10:05:27 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id d36sf11305704otb.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 01:05:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579165526; cv=pass;
        d=google.com; s=arc-20160816;
        b=DeegS9mwyNQrgGZVtfuXOW0a2ck0P+emO7q4YakCUBKCche2LTa64hRk5wlzCZ1U8v
         aB0+tTqc5TRPS1H6oVTqSCOPjxMv+OJ7Bvk8lHyRYMZggPk5aGuUVYqhYc310jOLmclG
         ajTqUP+jGl4ew0o5LPLSJE/XuVkyiyxcXygnce7otpl0M3E/GeX4S+4Hy4xkNOzs1dnu
         kB4AZI4A6noHbQmC3FSTTnVPCQXFNWkH/AzlAC2Rqqib+1JrsyFy6uKM+2R/ofDuEosa
         cDJqocqwxFg32+9VyqC8m7r39qwFFKwaF2ry8Vbgy6Axa9/NlTU1uDcsCmdbG0XkAwgX
         9MLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=7v5cLo5nzJpes57sQNf51o2NbLyE/PWSeusyEPVGJss=;
        b=SuWF4SwELHiYBsfPKKBE4+gjV9Iy5JnrMuWq97PFr87KT2HGLUv4INJuvEjCMpTB7d
         6Hw+hDaNbIfDbi456YeEbsDrn9mjvu3roiN0jJ65YxPMc4YIgypd8qgNaL1N4cZyWwrF
         A3kuFiNEOXnzCY4SqZBq3Ew7N59umolOKmR6MRSZ/1sfsrxWUvruvDzrLuB8c/BF+CnX
         N+oQcEIlYYngX2XUFFR/J7BHbQ1yG/3zYdad8/zT4pdpZFW8hTZzePawTqt4g0IJQQlC
         6VrwAWmnaVojfloGqmvd3JpivSSaTbcFtNMmk2JwGYs372kA+yF1SVM7kDVwq+FcCj5A
         cgPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gLjc4dSS;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7v5cLo5nzJpes57sQNf51o2NbLyE/PWSeusyEPVGJss=;
        b=cnuFedMCTJ0Dzhekh5ztuhwW+JEiEhoSS7dCxR2jkMM8dhJi0JYktlqnh8xem//gOA
         eBykEuahsrNwtasMrnPcy8Z1oIhqHG7u7uAFgfwqeksWfApCUNgZ+GwHbaM0PVoNtPz/
         B4robn4ON8uUi9/5s5cMXaOt/e2Ix5SNdmfzzxjcfb8lgW7TcutP/Fc7VOpyDwaSdNHh
         G9hN8CRDZ4294Igw7MWP4LTWUskQRRiJ/vYLRldOc+Qv69FQy9WPYilC6xpY+EPuNRo1
         4nzbXJxAkqqzZCYgHC19eAr+C/Fm7d1J6Gvvk+FgWUwSq5MAnJAbFruArDSMaig/lnVf
         7mug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7v5cLo5nzJpes57sQNf51o2NbLyE/PWSeusyEPVGJss=;
        b=RsQpNHNGNzrpM2YI1n6myUSCKdbIJDiUhpHNtwqKEqp9DoutwvQoRe3IYTyUu9vl92
         ASGQnqwhCWvGSn9+DIFLXMp5/mYgFJMhGi8iVgXgySfix7HNfongri6RJrpIewrP3xXS
         klMj3RPDiFFjZeITt+yGahgBdNCgsDRE4JIweaIIj0Y+pNPLcKMcSJGs7ijQKzm9qW4/
         Hv0wnK5KPksvJza1bGvSREFiB5cLvw9+UCk7RLJx1n8d7/R0Um+Xx4hBdZ0pljAitpan
         uxjIQvT5pv8P5PGRjPoay5oLxbhqlE7ZebIxNqC2Ads7Wk2N3FYmt9trZQ5ChdSRsLy+
         npDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUfbtswFcrrokIVmPx8b6/DChI+wHTQTjA0NOvUNHCJT9EGUx6U
	hNnlclg76Af2xNeuyk6wMqQ=
X-Google-Smtp-Source: APXvYqzQv5wJ5H0Lij8p7cEhY/Ec2YM4v3KOMZtg3Lsh3069XSMq108d9OZZwav1Xo2uIgcIDZDtXw==
X-Received: by 2002:a9d:3d0a:: with SMTP id a10mr1207695otc.327.1579165526443;
        Thu, 16 Jan 2020 01:05:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5753:: with SMTP id l80ls3870647oib.15.gmail; Thu, 16
 Jan 2020 01:05:26 -0800 (PST)
X-Received: by 2002:a05:6808:4cc:: with SMTP id a12mr3386924oie.115.1579165526072;
        Thu, 16 Jan 2020 01:05:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579165526; cv=none;
        d=google.com; s=arc-20160816;
        b=MwiJEErPUqXme31YWrg6fNSuEu8svvIIhGx1WVflR++x0eJvXXw9Aw8pYD3nWo4nl1
         LKuVc4Q5tFNlHZxB60Sx3iDiVpirRh+a9YaZx8oBec2oDFD3avCE3NPfKq6O72BEEWA/
         lTXQZng5/o66a5CYjpx343VRQhc/EKiYKCMu5fkOeddMyswwme7rCN57lYI2SkzYw75S
         vI3suLmFlMVkxlI0J8VNKXXi8BZHtQgqqUG2ddQ1nWiuUij6dpw9GR3PyA2g/8+5H7TM
         +D99Bwhc1GW2oVT8QM4azs8NyvgsB5Sx4cXe1fwahXJS4g1GiBGUz5xIVUaNrt9ChhYK
         p7Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=Y2sHZjFM/LF4FSRl9k3ji7wAimUlmv4VENghwEoHHns=;
        b=p8RevHby2R/fvXRuG45V0VtWxKSnIiGuYe/ao/zMNXcf1DhmQ962w2ozbECiBU5Fa3
         mRM/xgP5nPRmAeAhIezul9f8f9tVN+8czA33gme4j5s/0rq0nblFSJilDgUuqmy59Ot2
         xUt1zK2iOQcEcxqZiLI+Jv8e/S2XFTh24mRfte9+uRJ+9jfyN9CQ4FU4epALDBpSTYzD
         IgYz09LV//CNpBxwSW0Ff5ATeHymPczKc6EDJmMZC1uZpbyV+KldYSmTvB5EecrmFj22
         p5T/GsM4/PLhgSzG5U1MbGzOPRcC9jEXkhfbIg80eyvWsCHGfyEXPWFnUKKJVvjETLba
         qPdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gLjc4dSS;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id h11si1097675otk.0.2020.01.16.01.05.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 01:05:25 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-306-jZGGCeErPlWIv2O9YgWX1Q-1; Thu, 16 Jan 2020 04:05:24 -0500
Received: by mail-lj1-f198.google.com with SMTP id u9so4928840ljg.12
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 01:05:23 -0800 (PST)
X-Received: by 2002:a19:84d:: with SMTP id 74mr1827729lfi.122.1579165522743;
        Thu, 16 Jan 2020 01:05:22 -0800 (PST)
X-Received: by 2002:a19:84d:: with SMTP id 74mr1827704lfi.122.1579165522538;
        Thu, 16 Jan 2020 01:05:22 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id a14sm9871321lfh.50.2020.01.16.01.05.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 01:05:20 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 579641804D6; Thu, 16 Jan 2020 10:05:19 +0100 (CET)
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
In-Reply-To: <CAEf4BzZpGe-1S5_iwS8GBw9iiyFJmDUkOaO+2qaftRn_iy5cNA@mail.gmail.com>
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk> <157909757089.1192265.9038866294345740126.stgit@toke.dk> <CAEf4BzbqY8zivZy637Xy=iTECzBAYQ7vo=M7TvsLM2Yp12bJpg@mail.gmail.com> <87v9pctlvn.fsf@toke.dk> <CAEf4BzZpGe-1S5_iwS8GBw9iiyFJmDUkOaO+2qaftRn_iy5cNA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 16 Jan 2020 10:05:19 +0100
Message-ID: <87a76nu5yo.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: jZGGCeErPlWIv2O9YgWX1Q-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=gLjc4dSS;
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

> On Wed, Jan 15, 2020 at 2:06 PM Toke H=C3=B8iland-J=C3=B8rgensen <toke@re=
dhat.com> wrote:
>>
>> Andrii Nakryiko <andrii.nakryiko@gmail.com> writes:
>>
>> > On Wed, Jan 15, 2020 at 6:13 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke=
@redhat.com> wrote:
>> >>
>> >> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>> >>
>> >> The runqslower tool refuses to build without a file to read vmlinux B=
TF
>> >> from. The build fails with an error message to override the location =
by
>> >> setting the VMLINUX_BTF variable if autodetection fails. However, the
>> >> Makefile doesn't actually work with that override - the error message=
 is
>> >> still emitted.
>> >
>> > Do you have example command with VMLINUX_BTF override that didn't work
>> > (and what error message was emitted)?
>>
>> Before this patch:
>>
>> $ cd ~/build/linux/tools/bpf/runqslower
>> $ make
>> Makefile:18: *** "Can't detect kernel BTF, use VMLINUX_BTF to specify it=
 explicitly".  Stop.
>>
>> $ make VMLINUX_BTF=3D~/build/linux/vmlinux
>> Makefile:18: *** "Can't detect kernel BTF, use VMLINUX_BTF to specify it=
 explicitly".  Stop.
>
> Ok, so this is strange. Try make clean and run with V=3D1, it might help
> to debug this. This could happen if ~/build/linux/vmlinux doesn't
> exist, but I assume you double-checked that. It works for me just fine
> (Makefile won't do VMLINUX_BTF :=3D assignment, if it's defined through
> make invocation, so your change should be a no-op in that regard):
>
> $ make clean
> $ make VMLINUX_BTF=3D~/linux-build/default/vmlinux V=3D1
> ...
> .output/sbin/bpftool btf dump file ~/linux-build/default/vmlinux
> format c > .output/vmlinux.h
> ...
>
> Wonder what your output looks like?

$ make clean
Makefile:18: *** "Can't detect kernel BTF, use VMLINUX_BTF to specify it ex=
plicitly".  Stop.
$ make VMLINUX_BTF=3D~/build/linux/vmlinux V=3D1
Makefile:18: *** "Can't detect kernel BTF, use VMLINUX_BTF to specify it ex=
plicitly".  Stop.

Take another look at the relevant part of the makefile:

  ifneq ("$(wildcard /sys/kernel/btf/vmlinux)","")
  VMLINUX_BTF :=3D /sys/kernel/btf/vmlinux
  else ifneq ("$(wildcard /boot/vmlinux-$(KERNEL_REL))","")
  VMLINUX_BTF :=3D /boot/vmlinux-$(KERNEL_REL)
  else
  $(error "Can't detect kernel BTF, use VMLINUX_BTF to specify it explicitl=
y")
  endif

That if/else doesn't actually consider the value of VMLINUX_BTF; so the
override only works if one of the files being considered by the
auto-detection actually exists... :)

-Toke

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87a76nu5yo.fsf%40toke.dk.
