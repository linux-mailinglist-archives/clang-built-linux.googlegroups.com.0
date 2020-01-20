Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBMUSS3YQKGQETXGOCOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0151428BF
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 12:04:19 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id m18sf17769193otp.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 03:04:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579518258; cv=pass;
        d=google.com; s=arc-20160816;
        b=odVnv6xhrwo+G4JGc+d3LuZVEkMRpim89cjefYiYL/+sIiBF1NzDtN76EixH7UgCVo
         5k+WeRcv91hm28+vec4yMN4OKEKydB/3KZA+tZy+/KUgm4h0ZnAkgy85Gj6v+D7HiclN
         7JZdYeV68zLHtavrXq8E/IUlbKQ0z+YKMmXqhX6k5k0HmLdit8NhPGv8vjTtM19zWum9
         Cbgehspups769LpmGSt5MEwZ0t0CRggpISDCPRG54EgtVe5kOpbbwToUH9tKi1wz2Icu
         DO3kNNMYpLo8LwPCbqrm1PjqAUdCqXSA81mAaUqnkE45ak1/Zxr9moBEBe3PdeHxWviC
         vm3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=PzdK9w7egdUNlY7jSYmYvPA/wPUswOizDrOQCscrdMM=;
        b=j5yGY//gjeZpqytudhaOoYgQzUDsRBl+PGUi061+h34WnnZHd8dubrs+KcIBP+Vr02
         +6dmclwOzF6JroETA3iVU9U0Y5pWDlRy9qhYJXt9SNOpytbIFOhc6zIlpt5wQq6XmwVU
         rnhJW1wMOQ9/MMGfPAMxJ7G1pdufibtud/2RkQyQkuQlHSF3NSEfRXmmsrJXm4UkZPyB
         QZSxoXY3ydOxF1jeNfGeEiForO+WMACsyE4/pZ37dgtH6dWclRbpwv41igEfXZrA/E5W
         yJiVkacYIOFsbSjgY5hR0iGgyw7FrI6MrNkKoqwnFGSG21ZHbXVe8RQFlqiGBDW17LhQ
         JhbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="gnk2cm/Z";
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PzdK9w7egdUNlY7jSYmYvPA/wPUswOizDrOQCscrdMM=;
        b=PUYR/fUzqGLb5xpMdN9L2SR91BpMmWncavhTMWLQnw6uejzBGonN4LIrfO1u99uDZ8
         6QXwDmLouVOCHHY8mXekQRbXkhjUIqfUqDV1z83YxXzTzib9K61ZrKcbc35zT12U8V6R
         D5TTr7hD0OpWZ1cwipaJrV0Ct4SdInTDElj0txY8XIcMrEEo3koSk5e7uKp29S3Pyc+e
         AJWQ/Ji/AkEo/4McKz1IxbxpsPbDM0xIM0dl7vYLfDCrLQl08eHvf+X6aGD6qlan0qaX
         M0i3y9KE8hOUtYq10yfKPPYVbrQees6lOY04zdnCUcRSFTBUzqoa8ZiPxDuMHcNkBUIE
         nTtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PzdK9w7egdUNlY7jSYmYvPA/wPUswOizDrOQCscrdMM=;
        b=ZCz2j0XfxqgJ8NFvXw8394VshwhZZTM7p2yOW8P791UMJani7dLmWf18rT5xt6IOMf
         XJUe3QlOTNLtNIkQBFwEMYaOYob4bAnkGSiN6PWewOj2GxD8NKJpSHvSfMDoieZqL1If
         5UbBgguw1RV1YdieZeEb9kHWTUxvaf7JjSZkPZalEKhqKFw0Xn7m5PSU85ureM1VmBvb
         PUd88Gu7j6fdCwz65mdjDnwxTjkq2o6rauYzOSwyAKweygDayhkIryVOnQv79eRdAPRD
         MVlOJqiDr2kQqhVpN5KrVNAx1YmPcgnkfxQK3s8dDVfSFvI7RPc/cNWnW5wVLN41X14d
         linw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVJMhv2EuIFriblYIA5gBbEIobjTRzqX6calC6OYsZvWYqYfNM1
	UZlQPVndQHarpaKv1KkTmV8=
X-Google-Smtp-Source: APXvYqz9GTIsew50ZzhAqIoW+6RPmJUsvudTN0km2jp3RVtXe2i/mMZJJg1BgHSEZcQrx1VLTV7yFA==
X-Received: by 2002:aca:6289:: with SMTP id w131mr2259722oib.61.1579518258166;
        Mon, 20 Jan 2020 03:04:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:534e:: with SMTP id h75ls5710766oib.9.gmail; Mon, 20 Jan
 2020 03:04:17 -0800 (PST)
X-Received: by 2002:aca:a9c5:: with SMTP id s188mr12657226oie.154.1579518257713;
        Mon, 20 Jan 2020 03:04:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579518257; cv=none;
        d=google.com; s=arc-20160816;
        b=Hv2g3DKk6BPL4fmoU82UfNDzGJzAsxxt02B7yM2Ob+A9DLIj7b1CuhP7fTJQHP8DmO
         Ecicej/WE42MbIkgnc1zw+1GoLRH/Hd4v57BKICZMfjUV/m4wmRW5JtfoPXkrqDwLGQP
         Uo6Q2IJAN+JnxTA4xURtAd/RuXhmE1JobjihpGivjyr2AoJRMMfrlId0QMzufkOFWfdE
         jzVl3GzfGXcatc6byO9np3XBM/10XizH+YY5aVPGdARf8o43l+rly/7ejeMDmje2a8OG
         Qj2SUeTJrl7hWHiM09y7+F+JaomVFbwHY35QsJ/d9lDET7S9BjNv8Q3HlOvogdyC2d/c
         BqOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=xB1babenPYkc71r+76r8qjNA3jIOinGhQUXnQRKHB8A=;
        b=KxbPLKg8VisrDoscUBO1ddK726xu/DQowAGPBQBTxjfCJbmdLKSGaz6jBzMLfnm8SV
         255LsmMIUQaZ/hXJ9uEfwp5strEhf4r00ndTiIguJemmHw1okLu/xqP56AkcuF2jFEvk
         GfGTW6a0kaUvjkXHkaJ1dJSk6SG4oHnNl18lcUMmXp44sd5H7fKutQDyrSMYaSvr4OxL
         PpCAYB8/TN9qax1A/YBoPzHSFWvSFUihItwcpe1vvcBqkMYGEaZUPSyVY5eut8POxZWx
         q3ar4COs8NH2g4fKR28ZpJwjNH+VuiplH83Nl847mKJCN1nPgZF5yYRm9Bki8l2rB9OA
         lkeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="gnk2cm/Z";
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id 14si479140oty.3.2020.01.20.03.04.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jan 2020 03:04:17 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-350-hKWd4sW8PXGAUsbSRkdapA-1; Mon, 20 Jan 2020 06:04:14 -0500
Received: by mail-lf1-f71.google.com with SMTP id y4so6191323lfg.1
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jan 2020 03:04:13 -0800 (PST)
X-Received: by 2002:a2e:2c16:: with SMTP id s22mr13113856ljs.248.1579518252311;
        Mon, 20 Jan 2020 03:04:12 -0800 (PST)
X-Received: by 2002:a2e:2c16:: with SMTP id s22mr13113829ljs.248.1579518251933;
        Mon, 20 Jan 2020 03:04:11 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([85.204.121.218])
        by smtp.gmail.com with ESMTPSA id z5sm16616586lji.40.2020.01.20.03.04.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2020 03:04:11 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 50B871804D6; Mon, 20 Jan 2020 12:04:09 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <brouer@redhat.com>, John Fastabend <john.fastabend@gmail.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, linux-rdma@vger.kernel.org, "open list\:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next v4 02/10] tools/bpf/runqslower: Fix override option for VMLINUX_BTF
In-Reply-To: <CAEf4BzY3RM3LS3bvU4dHY+8U27RaezeaC9rfuW1YLAcFQEQKEA@mail.gmail.com>
References: <157926819690.1555735.10756593211671752826.stgit@toke.dk> <157926819920.1555735.13051810516683828343.stgit@toke.dk> <CAEf4BzY3RM3LS3bvU4dHY+8U27RaezeaC9rfuW1YLAcFQEQKEA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 20 Jan 2020 12:04:09 +0100
Message-ID: <87blqypexi.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: hKWd4sW8PXGAUsbSRkdapA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="gnk2cm/Z";
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

> On Fri, Jan 17, 2020 at 5:37 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@re=
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
>
> approach looks good, thanks, few nits below
>
>>  tools/bpf/runqslower/Makefile |   18 +++++++++---------
>>  1 file changed, 9 insertions(+), 9 deletions(-)
>>
>> diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefi=
le
>> index cff2fbcd29a8..b62fc9646c39 100644
>> --- a/tools/bpf/runqslower/Makefile
>> +++ b/tools/bpf/runqslower/Makefile
>> @@ -10,13 +10,9 @@ CFLAGS :=3D -g -Wall
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
>> -endif
>> +VMLINUX_BTF_PATHS :=3D /sys/kernel/btf/vmlinux /boot/vmlinux-$(KERNEL_R=
EL)
>> +VMLINUX_BTF_PATH :=3D $(abspath $(or $(VMLINUX_BTF),$(firstword \
>> +       $(wildcard $(VMLINUX_BTF_PATHS)))))
>
> you can drop abspath, relative path for VMLINUX_BTF would work just fine

OK.

>>
>>  abs_out :=3D $(abspath $(OUTPUT))
>>  ifeq ($(V),1)
>> @@ -67,9 +63,13 @@ $(OUTPUT):
>>         $(call msg,MKDIR,$@)
>>         $(Q)mkdir -p $(OUTPUT)
>>
>> -$(OUTPUT)/vmlinux.h: $(VMLINUX_BTF) | $(OUTPUT) $(BPFTOOL)
>> +$(OUTPUT)/vmlinux.h: $(VMLINUX_BTF_PATH) | $(OUTPUT) $(BPFTOOL)
>>         $(call msg,GEN,$@)
>> -       $(Q)$(BPFTOOL) btf dump file $(VMLINUX_BTF) format c > $@
>> +       @if [ ! -e "$(VMLINUX_BTF_PATH)" ] ; then \
>
> $(Q), not @

This was actually deliberate, since I was replacing an $(error) (which
doesn't show up in V=3D1 output). But OK, I guess we can output the whole
if statement as well on verbose builds...

>> +               echo "Couldn't find kernel BTF; set VMLINUX_BTF to speci=
fy its location."; \
>> +               exit 1;\
>
> nit: please align \'s (same above for VMLONUX_BTF_PATH) at the right
> edge as it's done everywhere in this Makefile

Right, I'll try to fix those up (for the whole series). My emacs is
being a bit weird with displaying tabstops, so some of these look
aligned when I'm editing. I'll see if I can figure out how to fix this
so it becomes obvious while I'm making changes...

-Toke

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87blqypexi.fsf%40toke.dk.
