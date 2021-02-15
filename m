Return-Path: <clang-built-linux+bncBD53FBNV6ACRB65XVOAQMGQECZ4TU6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2DC31C312
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Feb 2021 21:39:24 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id o2sf3202426pfd.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Feb 2021 12:39:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613421563; cv=pass;
        d=google.com; s=arc-20160816;
        b=qiA97uryLtJJIA9glUzRuHilED0sHDPoxMKPCRsogOSNQP1MNGlvCnGIfMMRnGhYvI
         bNjlUjALUX5xCHfk7IbtcghzmvSgTguoDzQqMZHej3MmnK9zw/WUdLzmPDeSro/2F4Yl
         Ruklt3BnDcNBZxvue4WB9SSeFk+g146EPD91ePtLNWJ++mxiR2JZN2TsMvqCzhqQmwWc
         3SMbSWk2wQ2axZ63s44Wgr1rhhhun1ge+sVbaCGrGPq75RAEZL5FpMOoJscZ8vNF88aN
         vM9QLbf336ZW8+x1Ob0ciLH2BMOZwz0gSXwCd6hUUyEnuHtnN8Rkp4MiWSL7w/Gdt/an
         UQUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=HPq4VPir4OUBhvkEQ0Yu+RJDBXpnb9XBvICcFPUeBuU=;
        b=oZ2L9nrAZDnXulUhlPC9O62n8fFxLw0DhS+8yd7vnJfeeNYgPFY2RPC0EjVSveqmyW
         QZpmT2/cHL7u77dHqDI6MukBW64fXm9gQlp4YdGQqGZEatMwnp35yubmnaE3tfMTLVO0
         P1BsGetdlELokzjV5cZv1PeeQSrjZX6/Uo3N/2x32yenr1XXd5w2f31OPqE+9GU2DeM2
         +cp/iPTxwa73zmlSaHnaeLRKCLqYk+2i6P43Pz5kDAxGHSRgPNNAopd6RcW+M2q92cPZ
         KfJ7MhuuUvSdE7K+4tEcAwuXi9mNNHS+X8+ALysZZFpuFkdrWTuCYFtAw6+bw+m+KVhK
         Z6oQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=amHD67MZ;
       spf=pass (google.com: domain of rasibley@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=rasibley@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HPq4VPir4OUBhvkEQ0Yu+RJDBXpnb9XBvICcFPUeBuU=;
        b=PZeXXFJlShCPQFb+7JsMb0bbcMdqJ7TCfs8rgmuCSV4kI6kpigywnJOq1B4hzgwggD
         yP2dornwTmT44ezpHh4vCgv7WgGLEepfLFLxveGiYAjNpBuMwBbxE9EYZ4I5cNuFBBlR
         +tOySAbdHtYZgB4tr7GSyuvAL8JxXDGSJEOCyaybvkqRCKOXNjDxPD8KeZvrAvpQ+Pre
         Gk8J75H9Rjy2BirmE2m7mDGzDMzw5OHyTPL/IQ5nzj6AtatqipiJUYKXZR759nKOKtXk
         k2DEQx9a8rwdxyVzPgi6Qv9QGtoyAargo8W+Cr0zJ3HxS3Y7r0gU1VqbLVej93q2/FLB
         qYOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HPq4VPir4OUBhvkEQ0Yu+RJDBXpnb9XBvICcFPUeBuU=;
        b=BS9j0rR1IKH6aAl7ffQlCls8HEbpLsvmJDbcJBbWSuoIpHJTbmuIQrZkIh3MbHI5I+
         cZJSiIPM/XG6usZhYqdswwlM7Ue2D+cuElX7Fj4G7aKFXkAHHK4qncioQXFrp2Dnv+Ns
         xUSzNEphv8iVNQu4rKdDKR6TtJnRXlF15kL/01u7nBW7gPx8pp53Vse9787gZMRwT/O9
         GB0goalcn96UfNwNsEQEg01O5BnwCF9ZaXrTeguN7lucAph0Ype5RB719q8OwoMSdCCP
         32g+KXt0wKfq7B/bxWvEfnOriLtNsRDpESDic3WTGqsSJEkBVWiGK1Me+tktvSSUtjHb
         xlBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532fnmhC2Zs1AZnkJoOczcGqgv92i/owuj9Yk8nudqi1qGTni+Eh
	yLoiZyOKTf5IkLFERPbIbdY=
X-Google-Smtp-Source: ABdhPJzoaObcyrZFNdAoHIpukig52WDPL4KRuMe1lQq94eBGRplmq05BwTKeIRnnlZsItydZjTOqgA==
X-Received: by 2002:aa7:888a:0:b029:1d8:49a3:563b with SMTP id z10-20020aa7888a0000b02901d849a3563bmr16733426pfe.74.1613421563396;
        Mon, 15 Feb 2021 12:39:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7541:: with SMTP id f1ls6000314pgn.10.gmail; Mon, 15 Feb
 2021 12:39:22 -0800 (PST)
X-Received: by 2002:a63:d242:: with SMTP id t2mr16107860pgi.431.1613421562709;
        Mon, 15 Feb 2021 12:39:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613421562; cv=none;
        d=google.com; s=arc-20160816;
        b=LhPuAjIgCNzwDfQcmdrsR9lXjDUDFhvD3EuLU8TYrZPY62pFyFWgQAb7Kfg0m4LHmv
         3462OuhUpO2iKMXO3MVB33wxRQidnFnbUWbHpCWvsZ2y+6OYb3u72lXp13qdFAlkgtUv
         pnqYoRi2hKX9DnQa/8A/ntRfcy6/V00GWyQrUeSxxUtiOT5W+7XOghVdYbwbQoHsnbiw
         JiGt+cqtLYabC6IxvWFfiHKQQeivr7tMqyjm5cik2yCS7cRi1JTrJVhfbp918q1O36Mk
         6QJBzZpkT/08X1PzUMzh3lywDdJk6E0XCPhbhF1zMtJVhVJwgMNerCHAvEuz8Wtuk+f4
         JXjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=o+VysZtFbwwZxk6WrN17MW2ASVWsx0Ytc2NqYThbU64=;
        b=THDFn6tbbRwra0W4DvDmji86JwhmZ8YSxOA7FkMdMSnY5CrJMYocWpr9tfBOG/Mr5R
         96k9fUPWY1XcIDlaYDzljYs9E1V+A+jQIWQBpLOaRLYytdx4Kamwkbw01WGZYCAxLAC2
         9UE7FVBC01CNZHynabgTnRDqAprdbwIWn67qwWepcyqZDKSwfQv6zBaIQjVDEAI4d7Vx
         PjNeh0/o7gfplgA48nUCYf8yGfJlIGPQlmmNHM76zLOIYPWEDgW10J6J8o4cX4SrEkXJ
         Qx7+pXV+NxeAadMqBcYfGDoR/mC0mhS/V+Ng0JIdJTk9ifMF4HfGCS8H1aGlTN+TSeN1
         Bmww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=amHD67MZ;
       spf=pass (google.com: domain of rasibley@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=rasibley@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id i23si25475pjl.3.2021.02.15.12.39.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2021 12:39:22 -0800 (PST)
Received-SPF: pass (google.com: domain of rasibley@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-265-9dNqOTQSNbG8w3pD8z6dJA-1; Mon, 15 Feb 2021 15:39:18 -0500
X-MC-Unique: 9dNqOTQSNbG8w3pD8z6dJA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CCDBB107ACE3;
	Mon, 15 Feb 2021 20:39:17 +0000 (UTC)
Received: from localhost.localdomain (ovpn-118-33.rdu2.redhat.com [10.10.118.33])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 348745D9C0;
	Mon, 15 Feb 2021 20:39:06 +0000 (UTC)
Subject: =?UTF-8?Q?Re=3a_=e2=9d=8c_FAIL=3a_Test_report_for_kernel_5=2e11=2e0?=
 =?UTF-8?Q?-rc7_=28mainline=2ekernel=2eorg-clang=29?=
To: Jan Stancek <jstancek@redhat.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Milos Malik <mmalik@redhat.com>,
 Baoquan He <bhe@redhat.com>, David Arcari <darcari@redhat.com>,
 Memory Management <mm-qe@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 skt-results-master@redhat.com, clang-built-linux@googlegroups.com,
 Yi Zhang <yizhan@redhat.com>, Xiaowu Wu <xiawu@redhat.com>,
 CKI Project <cki-project@redhat.com>
References: <cki.F92FFE8E6D.9IW1XQCYQ7@redhat.com>
 <20210211183744.GA4084774@ubuntu-m3-large-x86>
 <bc4c35cf-bd79-e4c0-2fed-41f7c0b1ae3b@redhat.com>
 <1646106856.36620418.1613381237840.JavaMail.zimbra@redhat.com>
From: Rachel Sibley <rasibley@redhat.com>
Message-ID: <55762630-347c-bb7f-6131-eb742ca831c7@redhat.com>
Date: Mon, 15 Feb 2021 15:39:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <1646106856.36620418.1613381237840.JavaMail.zimbra@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rasibley@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=amHD67MZ;
       spf=pass (google.com: domain of rasibley@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=rasibley@redhat.com;
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



On 2/15/21 4:27 AM, Jan Stancek wrote:
>=20
> ----- Original Message -----
>>
>>
>> On 2/11/21 1:37 PM, Nathan Chancellor wrote:
>>> On Thu, Feb 11, 2021 at 05:11:07PM -0000, CKI Project wrote:
>>>>
>>>> Hello,
>>>>
>>>> We ran automated tests on a recent commit from this kernel tree:
>>>>
>>>>          Kernel repo:
>>>>          https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linu=
x.git
>>>>               Commit: 291009f656e8 - Merge tag 'pm-5.11-rc8' of
>>>>               git://git.kernel.org/pub/scm/linux/kernel/git/rafael/lin=
ux-pm
>>>>
>>>> The results of these automated tests are provided below.
>>>>
>>>>       Overall result: FAILED (see details below)
>>>>                Merge: OK
>>>>              Compile: OK
>>>>    Selftests compile: FAILED
>>>>                Tests: FAILED
>>>>
>>>> All kernel binaries, config files, and logs are available for download
>>>> here:
>>>>
>>>>     https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.h=
tml?prefix=3Ddatawarehouse-public/2021/02/10/623699
>>>>
>>>> One or more kernel tests failed:
>>>>
>>>>       aarch64:
>>>>        =E2=9D=8C LTP
>>>>
>>>>       x86_64:
>>>>        =E2=9D=8C LTP
>>>>
>>>
>>> It seems like we are very close to getting a passing result... From wha=
t
>>> I can tell, the failing tests are logged in these two files:
>>>
>>> 9548629_aarch64_1_commands.fail.log
>>> 9548632_x86_64_1_commands.fail.log
>>>
>>> which shows only one test failing: ld01.sh
>>>
>>> which appears to be this one:
>>>
>>> https://github.com/linux-test-project/ltp/blob/c5004bf071bf8ca96a01f03b=
de873e9292f7f83b/testcases/commands/ld/ld01.sh
>>>
>>> I do not understand how cc.out could have ld in it, when CC is clearly
>>> gcc from the log... it passes in my testing. Has the test been modified
>>> on your end?
>>
>> We haven't updated recently, we just wrap around the upstream test suite=
 and
>> I don't see any recent change to the ld01 test ?
>> I also see it fail the same way on the gcc mainline kernels:
>>
>> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse=
-public/2021/02/10/623698/build_x86_64_redhat%3A1101938/tests/LTP/9548639_x=
86_64_1_commands.fail.log
>> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse=
-public/2021/02/10/623698/build_aarch64_redhat%3A1101939/tests/LTP/9548637_=
aarch64_1_commands.fail.log
>>
>> Jan do you know anything about this failure ?
>=20
> I haven't seen this before and don't see it localy. Is it specific to Fed=
ora Rawhide?

Yes it looks like it's specific to rawhide, at least I can't reproduce it o=
n Fedora 33 with the same kernel.

>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/55762630-347c-bb7f-6131-eb742ca831c7%40redhat.com.
