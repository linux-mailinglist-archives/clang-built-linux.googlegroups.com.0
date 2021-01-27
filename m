Return-Path: <clang-built-linux+bncBD53FBNV6ACRBJVUY6AAMGQEOOGWECI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4B63065E7
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 22:24:55 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id f7sf2339353qvr.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 13:24:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611782694; cv=pass;
        d=google.com; s=arc-20160816;
        b=J48MGqMNtWfowE3ZK7ilyz+Ffrg8Q4yYRrsRqm9/7gg+vRB4MVVOxBUWgRXHUvHUPW
         66hTtKyDEKT+aAulIifvIxbz1SDddl6R56Nhv0MNA6r7bNDkPzdU1jwx+HzSMjjaFdxz
         PxKIPr8mrU3ZdnwdG4UEgbpZFn3ybI4WKOQKBOb3jOdGtGJnBMDLU28MDGS2nYV+TBTe
         9uZ2ayEfxza2mfZnxEmiNorymf/bJxqpe1L6Jp1+707XWVKCZcKULgxHM73sb6ENPv25
         zesjSPXBFL7fZkY02v+tI4sQBkcLq2zUdE9Fu8EhhB9Ks8FdUpmG4CI8RurZBtjkRmxj
         PkBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=Lf9pfJut7onVASrCqxd4kfZvh1a6ccJ8aJBr0iSUEUo=;
        b=QL2dh15MqbXl7EUInLZtZvlJI5kzhwRCmR730OAUVq4xCm/Oiqsz6nF3UjdXB3O0vK
         5c6n3N0cwKp4du5W0RdC8LAXGdddkvqQhhmBmWtfrIYikUqTdVmuSq0FPtVb+h6GysgJ
         js39JYmRyxmoJqgfXXaM8eifzqln4t4mRbmbcqEa57JrDdhnWHV2/u5ba/fGT+WB0z0K
         t413KEc/iV/47IrhNTLJTthEZTY4swePvR0qpOEB7TlucPhcnsRbRyZ+i/EkEDP0vJkW
         Z4T06lJZa15DE5yDPH0dwdfmYmAmagF5tJTXCgarHvvJmFgG7F40CuIkBHkJacWQe4ST
         FuOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=OZ2osQSi;
       spf=pass (google.com: domain of rasibley@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=rasibley@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lf9pfJut7onVASrCqxd4kfZvh1a6ccJ8aJBr0iSUEUo=;
        b=euwqxO4Yr+nKHyizWChHh/fN+Fh9p6cvbJMiYG0QJD3Bs2JP80OHOsT99y8zGGDKSc
         Ay8ZRe5nn/nInvBTz7Mka6nxPCTH75T0mcy7u1jBz2ENl6UlDDhXkflYBbe9c1ZULM1Q
         kD+bUKKpK5fP2Gmt7Jx8GTmNx8CrkeGlDtmo+rEVenu1YJsaRRCxUKN70jhleJCORL1I
         s5KVLzh94o4hSSdlZK22LImq/peqUtDK1r/TMEP0ckKEsIkRwnR0Zj8WMAv1HDZiZrD6
         WPAGyteDi101IrI42o23wFzv7lG4+c31S5n+oKFWYLmRsLQcQ4svnnHc/dFhSfv0OYrS
         ZNUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lf9pfJut7onVASrCqxd4kfZvh1a6ccJ8aJBr0iSUEUo=;
        b=GmWzcfF/ZI2ooHFRVsx6h+iPmb/upcBhFSOPBwdEC/w6rY92c8cxZWKkkid9ZoozOM
         tBbUJtsNgAMFWb5MlLrqvWVsmjZLpvzJkvLJW7+Xr8B00V6c5t5Wi30Up3JOZHtaYN/q
         PcEFJ+4vFv6Ap+uHtRztAPcPCMMf+UZ+zyQWDBjob3dnE4GeJHAIoL/Nb6+KmbZ3LmOF
         ImPVPUm06Dcz5xSM5rD4K+g3/1M+mLFUfqmJc42VcLaBV5si7/tEVD+K0aIy2mZAtUe6
         ASZ03L3E5EPFVPnkjxAWHfkOOSRL7aIaFbXEC8JKanQ4oPNVqHKNtTEdfriIwrasM9I/
         FfYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532REww/Jd36vI+IwGa/cJ5NUOGDW1ViY+0p3ViE9BRnxpqPhRpX
	drBs/zQ1BxFrLqrvBEi2lI0=
X-Google-Smtp-Source: ABdhPJzOAFbv0V96KmUkW97RyZSi+PymUGlKJCFrQDDwFqyljrAsJCcCE2syDBDM/ZFdqnZl3H8jvg==
X-Received: by 2002:a05:622a:115:: with SMTP id u21mr11672075qtw.35.1611782694270;
        Wed, 27 Jan 2021 13:24:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:d2:: with SMTP id p18ls1231619qtw.3.gmail; Wed, 27
 Jan 2021 13:24:53 -0800 (PST)
X-Received: by 2002:ac8:6b90:: with SMTP id z16mr11613443qts.245.1611782693899;
        Wed, 27 Jan 2021 13:24:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611782693; cv=none;
        d=google.com; s=arc-20160816;
        b=fQMR9umJWesw0lI11DTNMdCRj1mzGvJ/9I5LlMljuRcwUHaG1cC7rmLbFqB72EgWZe
         vYYNaZsqZMKVDGnV6XHonWHn95y0PYnORUCcf5wIxBQV/23JdlyWqd+cJDRRJaMASfzX
         azsATL/g1rwklqycf+S1QYv0NyI/appSQ5n5FRCSbgRV0Jlyh8ZsY5q0IV6VOeOdgIMG
         RPm0Zr5+pT0HbAK3Rmkx/IwUVeWm7IiDOzZ1iJfpgLd+OjT2CWYkZ9AFwg67t9txnRGe
         p9LTLjQ75aFAr00c4MIYA8pafU9y7MXK5Us9wLOty8KeQXb12q2YF9je5R4mZvAKpE9B
         Mi5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=5gcrlFtbfZ7j4zXkJqaBt8XA7ht42qzt2cP49HQ50Lc=;
        b=bFh08/yaoy1LkKBdtftYp7AauJJsgaWqgzGpJIKFcmJSireK0w3viiLd18cjF2Y+Zb
         cnZvznrR6AMzmMEPUsEL1iP/uj8v23D8TLxKPyn7f71PSMDjXgAl0ZhlXGtE+QWbAsKj
         HjmhVVEVBvVfV0HplG8RUkjsyUPb+YbAEIyJkWW+AJjxkDxLPB5fQ0mBENKVc8aOm8zZ
         L523RWHDqOsXyxLpACl/pMfX4trnUm8vDjzZCtB7tPn87kHV1hNyt2n9GyrrdTbiob68
         jB5nFkUHbYrnUnSfqEU5MS28jb87VTPM5ROwT/vUoNmPUq7WEJj3CAT0Y7pSl056IMeN
         wTmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=OZ2osQSi;
       spf=pass (google.com: domain of rasibley@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=rasibley@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id q66si127908qkd.3.2021.01.27.13.24.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Jan 2021 13:24:53 -0800 (PST)
Received-SPF: pass (google.com: domain of rasibley@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-426-PrUXV7SVNzSWvKZoTlFw8A-1; Wed, 27 Jan 2021 16:24:51 -0500
X-MC-Unique: PrUXV7SVNzSWvKZoTlFw8A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 514908066E9;
	Wed, 27 Jan 2021 21:24:50 +0000 (UTC)
Received: from localhost.localdomain (ovpn-118-198.rdu2.redhat.com [10.10.118.198])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1BBCD5D9C6;
	Wed, 27 Jan 2021 21:24:40 +0000 (UTC)
Subject: =?UTF-8?Q?Re=3a_=f0=9f=92=a5_PANICKED=3a_Test_report_for_kernel_5?=
 =?UTF-8?Q?=2e11=2e0-rc5_=28mainline=2ekernel=2eorg-clang=29?=
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 CKI Project <cki-project@redhat.com>, skt-results-master@redhat.com,
 clang-built-linux@googlegroups.com, Milos Malik <mmalik@redhat.com>,
 Ondrej Mosnacek <omosnace@redhat.com>, Erico Nunes <ernunes@redhat.com>,
 Memory Management <mm-qe@redhat.com>, Jan Stancek <jstancek@redhat.com>,
 David Arcari <darcari@redhat.com>, Xiong Zhou <xzhou@redhat.com>
References: <cki.205997F8B4.SUXMQTXAEJ@redhat.com>
 <20210126173431.GA602636@ubuntu-m3-large-x86>
 <0334f736-204c-2e17-d8f4-876fbc146fc6@redhat.com>
 <20210127015550.GA2783458@ubuntu-m3-large-x86>
From: Rachel Sibley <rasibley@redhat.com>
Message-ID: <dd432d39-86ee-bb40-359f-7b914d2c246f@redhat.com>
Date: Wed, 27 Jan 2021 16:24:39 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210127015550.GA2783458@ubuntu-m3-large-x86>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rasibley@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=OZ2osQSi;
       spf=pass (google.com: domain of rasibley@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=rasibley@redhat.com;
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



On 1/26/21 8:55 PM, Nathan Chancellor wrote:
> On Tue, Jan 26, 2021 at 06:29:03PM -0500, Rachel Sibley wrote:
>>
>>
>> On 1/26/21 12:34 PM, Nathan Chancellor wrote:
>>> On Tue, Jan 26, 2021 at 04:45:08PM -0000, CKI Project wrote:
>>>>
>>>> Hello,
>>>>
>>>> We ran automated tests on a recent commit from this kernel tree:
>>>>
>>>>          Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/=
torvalds/linux.git
>>>>               Commit: f8ad8187c3b5 - fs/pipe: allow sendfile() to pipe=
 again
>>>>
>>>> The results of these automated tests are provided below.
>>>>
>>>>       Overall result: FAILED (see details below)
>>>>                Merge: OK
>>>>              Compile: OK
>>>>    Selftests compile: FAILED
>>>>                Tests: PANICKED
>>>>
>>>> All kernel binaries, config files, and logs are available for download=
 here:
>>>>
>>>>     https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.h=
tml?prefix=3Ddatawarehouse-public/2021/01/25/622152
>>>>
>>>> One or more kernel tests failed:
>>>>
>>>>       aarch64:
>>>>        =E2=9D=8C selinux-policy: serge-testsuite
>>>>
>>>>       x86_64:
>>>>        =F0=9F=92=A5 LTP
>>>
>>> This mentions that LTP panicked but looking through the dmesg logs unde=
r
>>> tests/ and the log files in tests/LTP/, I cannot see a clear panic. Am =
I
>>> missing something?
>>
>> Hi Nathan, you can find the panic in the console.log, looks like it was =
triggered with the
>> LTP proc01 test, I'm attempting to reproduce it, will keep you posted:
>> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse=
-public/2021/01/25/622152/build_x86_64_redhat%3A1082893/tests/9463951_x86_6=
4_1_console.log
>>
>>
>> [10040.073391] Oops: 0000 [#1] SMP PTI
>> [10040.074061] CPU: 0 PID: 772677 Comm: proc01 Not tainted 5.11.0-rc5 #1
>> [10040.075266] Hardware name: Red Hat KVM, BIOS 0.5.1 01/01/2011
>> [10040.076339] RIP: 0010:kpagecount_read+0x121/0x1e0
>> [10040.077232] Code: 01 00 75 15 4a f7 44 30 08 01 00 00 00 75 0a 42 8b =
44
>> 30 30 83 c0 01 eb 05 e8 6b 68 e7 ff 48 63 d8 eb 18 48 83 c1 ff 48 89 ca =
<48>
>> f7 02 00 02 00 00 74 bf 66 0f 1f 44 00 00 31 db 48 c7 c7 59 2b
>> [10040.080703] RSP: 0018:ffffab78c3a2fe10 EFLAGS: 00010293
>> [10040.081691] RAX: fffff92900000000 RBX: fffffffffffffff2 RCX: ffffffff=
fffffffe
>> [10040.083029] RDX: fffffffffffffffe RSI: 0000000000000001 RDI: fffff929=
08a14000
>> [10040.084365] RBP: 0000000000000400 R08: 0000000000000001 R09: ffff96f1=
158b5e78
>> [10040.085703] R10: 0000000000000000 R11: ffffffffa1536bb0 R12: 00000000=
00000000
>> [10040.087042] R13: 0000000000228500 R14: 0000000008a14000 R15: 00000000=
0044c820
>> [10040.088376] FS:  00007f7056512740(0000) GS:ffff96f160600000(0000) knl=
GS:0000000000000000
>> [10040.089887] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>> [10040.090977] CR2: fffffffffffffffe CR3: 000000013abea006 CR4: 00000000=
007706f0
>> [10040.092311] DR0: 0000000000423830 DR1: 0000000000000000 DR2: 00000000=
00000000
>> [10040.093642] DR3: 0000000000000000 DR6: 00000000ffff0ff0 DR7: 00000000=
00000600
>> [10040.094974] PKRU: 55555554
>> [10040.095489] Call Trace:
>> [10040.095971]  proc_reg_read+0x47/0xa0
>> [10040.096652]  vfs_read+0x100/0x340
>> [10040.097292]  ? lapic_next_deadline+0x22/0x30
>> [10040.098102]  ? clockevents_program_event+0x82/0xe0
>> [10040.099007]  ? syscall_enter_from_user_mode+0x2e/0x1c0
>> [10040.099983]  ksys_read+0x5f/0xb0
>> [10040.100600]  do_syscall_64+0x33/0x40
>> [10040.101284]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
>> [10040.102238] RIP: 0033:0x7f7056624f6d
>>
>=20
> Hi Rachel,
>=20
> Thank you for the help pointing this out! I was able to reproduce this
> in QEMU with a Debian rootfs and the provided configuration. As it turns
> out, this is not a clang specific issue, I see this with GCC as well. It
> is a v5.11-rc5 regression:
>=20
> $ git bisect log
> # bad: [6ee1d745b7c9fd573fba142a2efdad76a9f1cb04] Linux 5.11-rc5
> # good: [19c329f6808995b142b3966301f217c831e7cf31] Linux 5.11-rc4
> git bisect start 'v5.11-rc5' 'v5.11-rc4'
> # good: [faba877b3bccb5af79f0cd8c6af93392030e6e41] Merge tag 'perf-tools-=
fixes-v5.11-2-2021-01-22' of git://git.kernel.org/pub/scm/linux/kernel/git/=
acme/linux
> git bisect good faba877b3bccb5af79f0cd8c6af93392030e6e41
> # good: [8f3bfd2181ecb920e5f51e2a16c1ef65d6f50a5f] Merge tag 'usb-5.11-rc=
5' of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb
> git bisect good 8f3bfd2181ecb920e5f51e2a16c1ef65d6f50a5f
> # good: [fdbc80bdc4365078a0f7d65631171cb80e3ffd6e] Merge tag 'char-misc-5=
.11-rc5' of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc
> git bisect good fdbc80bdc4365078a0f7d65631171cb80e3ffd6e
> # bad: [a692a610d7ed632cab31b61d6c350db68a10e574] Merge tag 'block-5.11-2=
021-01-24' of git://git.kernel.dk/linux-block
> git bisect bad a692a610d7ed632cab31b61d6c350db68a10e574
> # bad: [8c0d5d78f3596e203e9cd27563a8380649c03ad0] mips/mm/highmem: use se=
t_pte() for kmap_local()
> git bisect bad 8c0d5d78f3596e203e9cd27563a8380649c03ad0
> # bad: [5dabd1712cd056814f9ab15f1d68157ceb04e741] kasan: fix incorrect ar=
guments passing in kasan_add_zero_shadow
> git bisect bad 5dabd1712cd056814f9ab15f1d68157ceb04e741
> # bad: [3de7d4f25a7438f09fef4e71ef111f1805cd8e7c] mm: memcg/slab: optimiz=
e objcg stock draining
> git bisect bad 3de7d4f25a7438f09fef4e71ef111f1805cd8e7c
> # bad: [d3921cb8be29ce5668c64e23ffdaeec5f8c69399] mm: fix initialization =
of struct page for holes in memory layout
> git bisect bad d3921cb8be29ce5668c64e23ffdaeec5f8c69399
> # good: [bde9cfa3afe4324ec251e4af80ebf9b7afaf7afe] x86/setup: don't remov=
e E820_TYPE_RAM for pfn 0
> git bisect good bde9cfa3afe4324ec251e4af80ebf9b7afaf7afe
> # first bad commit: [d3921cb8be29ce5668c64e23ffdaeec5f8c69399] mm: fix in=
itialization of struct page for holes in memory layout
>=20
> As it turns out, that commit has other issues and has been reverted in
> mainline:
>=20
> https://git.kernel.org/linus/377bf660d07a47269510435d11f3b65d53edca20
>=20
> It looks like we are all good here, I can confirm that everything seems
> okay with that particular test case as of 2ab38c17aac1 ("mailmap: remove
> the "repo-abbrev" comment").

Great ! I also noticed it was happening in regular mainline and block tree,=
 thank you for following up, to keep us updated.

>=20
> Cheers,
> Nathan
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/dd432d39-86ee-bb40-359f-7b914d2c246f%40redhat.com.
