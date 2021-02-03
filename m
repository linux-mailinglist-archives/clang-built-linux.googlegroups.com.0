Return-Path: <clang-built-linux+bncBD53FBNV6ACRBW4W5SAAMGQEPAXLT7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C4830E42A
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 21:45:16 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id l1sf520279oib.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 12:45:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612385116; cv=pass;
        d=google.com; s=arc-20160816;
        b=wVDRPARBC1w+Ex6mnqJ+0nSIM4xl0rzTkuwxD/Z6N8O+Yq0O+AKAAbMeJSv+4+QSlH
         oMUn/aPyeVO+6axDNgpsj4gwu4pQ894GAszrMRqYCJmWPVrSnCuLoExjklfk+aNFcRTW
         awjKZt9+jVaStKO5t7GXs2mUL7Kd1UG4MJnZmuV7MezlFyTYFEbRZQgHTzDAQnTjTKXZ
         PwTRJxKgHIOwVlaidY00ROsl4J0CGtgvhysKHYfqw1a4ZdWeFnXwfNrrxnFDsj3HBuJ+
         DHjW69VEnG8bls04jySEgruft/dqDqB7GHZ9AJTrAq9QfmkDozYkaYO5s6gR5dCw9ZWL
         DKDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=bxSSTIpSr6HnWVU9fwZLtrkwIf/YVkQ71eVpTCecddQ=;
        b=nnmW1r/Qg1LH4yjd+Z2eLYpRP2yXETIH66mCPpO2hQlKvN9DpjlYD3kk69v29UX4Xk
         4wRRGR3FRktEWKAxXVSELUdrZNrsE/HgAc3jcV/+1lQh+GekaLI7G5/3Abqixa7kz3Sz
         YBe+lhNVOjBlqzPh+mT1Ftxe94daBGMuk4RSRG4k8pkCoMoQ8wZ51ToI9nidZnJ1431U
         kUytiGaJt+9lbFK7Rs0MH9e1O3rYRpKV2Drl+17LKjVGethcsJQc0r+jj2+IarGz036R
         EV7UrDRjCB9nwZSGlNxMBQGDuYb2qtN4Z3J8NwFvFbXLFS5/IQxSlHAE1NMt+OHWjwxw
         cQCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Nr3M5ZNJ;
       spf=pass (google.com: domain of rasibley@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=rasibley@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bxSSTIpSr6HnWVU9fwZLtrkwIf/YVkQ71eVpTCecddQ=;
        b=B0z01kOMiIdx9eB2UDkOO/bpTXQmLoM6m9sVbeawV+Gctssy7jxgo8rVuMjE4jR4vb
         0EzeJnBbx92NtDTvpZk7X/TOzaZo+yyD32JbrUMBlv3/KZv4H64ZEYzgBUZ3U597le8t
         rucDZXRzrdCiJ/I/QTV32YZiM0XH6D9UYkIxoXw7k+U86YfB9VhHTUClBlr29+x3AcAf
         kwh64hLLvRkE/YEX9hakfd1h6bYvazF8LlInIMeGWtoAXfJvdOS24M+X2c/V9MtLDT9l
         6BaG5ZBDjGb86PE1VO08qjpypVBYp2RO37+qGH/0sCba/WXJcnavImlAOpsNs/Ir3Hca
         Q7FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bxSSTIpSr6HnWVU9fwZLtrkwIf/YVkQ71eVpTCecddQ=;
        b=VfU0rj72/o+Z7l2Mj9hlIWGHFab+T5Z6qyHID/rUWqIhqTMel1CwzGA34unWhBAjgG
         VVLxCbuGes8qbhTjP0/4LrAm/iVWVf12TWUbsGCzicKGED5iIzv9QWnM8B67KLzdrGmP
         HskEYt16W+Il6OY2tckZRuEJamKHZ0/m2t3QTeH2OmgEy7GP/qLCubnJQXHvpQyp2jXI
         7duP0nnqk7MOxJ8hjEBvlga16WyD4y27S4WdaOkhDJ/wrUiVfd/8LepYty6UAysGo+wn
         2BaWh6gnBa8MhG6J+qw7xriOVCxWGoyrwGZpmh548smQ65etqemH/nhGPN+0Ixcy/3Dh
         hvlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532VsH2eHoXhy3qo0o36PXuoXF/VIy5GtoDOwg/2f0ryO6K8Vz/I
	751ZXsWeh3NCw46DfEfjA8s=
X-Google-Smtp-Source: ABdhPJz27P5NwltvenkXYqlhcqJEiIYD1IeSqR1i5rU6S+PTqL5F/zg901VThALoiSeGcD3NF+/T6Q==
X-Received: by 2002:a4a:558e:: with SMTP id e136mr3366896oob.18.1612385115875;
        Wed, 03 Feb 2021 12:45:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:504c:: with SMTP id e73ls836935oib.9.gmail; Wed, 03 Feb
 2021 12:45:15 -0800 (PST)
X-Received: by 2002:a54:4082:: with SMTP id i2mr3158975oii.113.1612385115432;
        Wed, 03 Feb 2021 12:45:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612385115; cv=none;
        d=google.com; s=arc-20160816;
        b=Ds43rvPmR5EETpuU0KlnQZo0IPOXK2kaEKN9uC8zvNC4/Jyv6TFRNnA2hb9WnTZm8+
         XivvVgaBxcMHxHXKPLZt/yR/5ra45mgFrwJfWAO4rW/NugoeTZPqD6FpHcT0EGLhaSxl
         t+G3FSfVfMcQH7DLS0IiCg0Vrmx7UOKnb/SZlAmHxcQMWpq3GgUTx4JjWviIUhcgryki
         H0zxpe3WzVEpx6MNdas2xQODCsEgZ12gpTpiIpHvAOuw5YQYOAC5EnpZRBlfjb/9nl/k
         obykyrVgG5Eo+UQw8aMMM62iev1rC5IfBmE+VMNlVZ7Q+gxuVFqgI8d2hPNmHuZMXy15
         uzyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=QfSeyfRf7ljf3nZKE7LxTAWIVG+utpnOL2MINaLFLhE=;
        b=c+ne3Q+42XmkLtuxkonl/8FRmJvWnwMbyJ7S5ky6X0F8cck8smRISL4uXVR4Mh/PmZ
         AFnqo0gvUyMR1AvAwwHqtupIqz74Wqhbz228mE1zbPF6RCvOu2jT+sLnjgoqbgK3jB0S
         JfmpZV+mbYZ1XEOplSHUiK+xxe/gwyhq/V1uLoocuhKa23dAq0SG8a2MqTcx6XVfeWCs
         a3rg6VdhrQv0rEmF2Q9OFExO2/Ta07W/h4aCzMdKUwXXUiaSNq5JratsX9KdRZ7N0wEQ
         tyJBgabovrfKeX2y3xcAf8PozT84C4hYDsmyhqmgFHrWNUX5uRYS9L1rlMxe18HcDEa1
         9kPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Nr3M5ZNJ;
       spf=pass (google.com: domain of rasibley@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=rasibley@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id b124si208091oii.4.2021.02.03.12.45.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 12:45:15 -0800 (PST)
Received-SPF: pass (google.com: domain of rasibley@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-513-JzVyMb5JPMKBWEPZCQc0pA-1; Wed, 03 Feb 2021 15:45:09 -0500
X-MC-Unique: JzVyMb5JPMKBWEPZCQc0pA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9C9CE100A623;
	Wed,  3 Feb 2021 20:45:08 +0000 (UTC)
Received: from localhost.localdomain (ovpn-112-42.rdu2.redhat.com [10.10.112.42])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 936685C233;
	Wed,  3 Feb 2021 20:44:52 +0000 (UTC)
Subject: =?UTF-8?Q?Re=3a_=f0=9f=92=a5_PANICKED=3a_Test_report_for_kernel_5?=
 =?UTF-8?Q?=2e11=2e0-rc6_=28mainline=2ekernel=2eorg-clang=29?=
To: Nathan Chancellor <nathan@kernel.org>,
 CKI Project <cki-project@redhat.com>
Cc: Milos Malik <mmalik@redhat.com>, Yi Zhang <yi.zhang@redhat.com>,
 Filip Suba <fsuba@redhat.com>, Memory Management <mm-qe@redhat.com>,
 Ondrej Mosnacek <omosnace@redhat.com>, skt-results-master@redhat.com,
 clang-built-linux@googlegroups.com, Jan Stancek <jstancek@redhat.com>
References: <cki.C90653A6EF.V9S14CF2MY@redhat.com>
 <20210203180333.GA765672@localhost>
From: Rachel Sibley <rasibley@redhat.com>
Message-ID: <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com>
Date: Wed, 3 Feb 2021 15:44:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210203180333.GA765672@localhost>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rasibley@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Nr3M5ZNJ;
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



On 2/3/21 1:03 PM, Nathan Chancellor wrote:
> On Wed, Feb 03, 2021 at 01:58:32AM -0000, CKI Project wrote:
>>
>> Hello,
>>
>> We ran automated tests on a recent commit from this kernel tree:
>>
>>         Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/tor=
valds/linux.git
>>              Commit: 3aaf0a27ffc2 - Merge tag 'clang-format-for-linux-v5=
.11-rc7' of git://github.com/ojeda/linux
>>
>> The results of these automated tests are provided below.
>>
>>      Overall result: FAILED (see details below)
>>               Merge: OK
>>             Compile: OK
>>   Selftests compile: FAILED
>>               Tests: PANICKED
>>
>> All kernel binaries, config files, and logs are available for download h=
ere:
>>
>>    https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html=
?prefix=3Ddatawarehouse-public/2021/02/02/622905
>>
>> One or more kernel tests failed:
>>
>>      aarch64:
>>       =E2=9D=8C selinux-policy: serge-testsuite
>>
>>      x86_64:
>>       =E2=9D=8C selinux-policy: serge-testsuite
>>       =E2=9D=8C LTP lite
>=20
> These should be the failures for this particular set of tests correct?
>=20
> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-=
public/2021/02/02/622905/build_x86_64_redhat%3A1092370/tests/LTP_lite/95073=
27_x86_64_1_RHELKT1LITE.FILTERED.fail.log
>=20
> I am curious, is there any way to get a side by side comparison of the
> test results between GCC and clang? In other words, I would like to know
> if a test is failing with both compilers versus just clang. This would
> help us understand if it is a compiler specific issue or something that
> broke the kernel.
>=20
>>       =F0=9F=92=A5 LTP
>=20
>>From what I can tell:
>=20
> [12262.428593] general protection fault, probably for non-canonical addre=
ss 0x8bc08b308b608b5: 0000 [#1] SMP PTI
> [12262.428810] CPU: 1 PID: 465515 Comm: proc01 Not tainted 5.11.0-rc6 #1
> [12262.428810] Hardware name: Red Hat KVM, BIOS 0.5.1 01/01/2007
> [12262.428810] RIP: 0010:string+0x50/0x110
> [12262.428810] Code: ce 48 c1 fe 30 85 f6 0f 84 be 00 00 00 31 c0 eb 15 6=
6 0f 1f 84 00 00 00 00 00 48 83 c0 01 39 c6 0f 84 ac 00 00 00 4c 8d 0c 07 <=
45> 0f b6 14 00 45 84 d2 0f 84 a2 00 00 00 49 39 d1 73 dd 45 88 11
> [12262.428810] RSP: 0018:ffffb1ea012bbc40 EFLAGS: 00010246
> [12262.428810] RAX: 0000000000000000 RBX: ffff9ea25e9ea03e RCX: ffff0a00f=
fffff04
> [12262.428810] RDX: ffff9ea25e9eb000 RSI: ffffffffffffffff RDI: ffff9ea25=
e9ea03e
> [12262.428810] RBP: ffffffff8f5c95f1 R08: 08bc08b308b608b5 R09: ffff9ea25=
e9ea03e
> [12262.428810] R10: 0000001000000000 R11: ffffffff8e212401 R12: ffff9ea25=
e9eb000
> [12262.428810] R13: ffffffff8f5c95f3 R14: 0000000000000002 R15: ffffb1ea0=
12bbca0
> [12262.428810] FS:  00007fab43075740(0000) GS:ffff9ea35bd00000(0000) knlG=
S:0000000000000000
> [12262.428810] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [12262.428810] CR2: 00005584bb6dba68 CR3: 0000000111bbe000 CR4: 000000000=
00006e0
> [12262.428810] DR0: 0000000000000001 DR1: 0000000000000000 DR2: 000000000=
0000000
> [12262.428810] DR3: 0000000000000000 DR6: 00000000ffff0ff0 DR7: 000000000=
0000600
> [12262.428810] Call Trace:
> [12262.428810]  vsnprintf+0x570/0x710
> [12262.428810]  seq_printf+0x6b/0x90
> [12262.428810]  ? lock_acquire+0x27/0x280
> [12262.428810]  ? mod_objcg_state+0xd2/0x160
> [12262.428810]  ? vsnprintf+0x32f/0x710
> [12262.428810]  print_name+0x46/0xc0
> [12262.428810]  ? seq_printf+0x6b/0x90
> [12262.428810]  ? __kmalloc_node+0xaf/0x340
> [12262.428810]  ? lock_acquire+0x27/0x280
> [12262.428810]  ? kvmalloc_node+0x4b/0x90
> [12262.428810]  lc_show+0x82/0xe0
> [12262.428810]  seq_read_iter+0x311/0x420
> [12262.428810]  proc_reg_read_iter+0x3f/0x80
> [12262.428810]  vfs_read+0x2c3/0x340
> [12262.428810]  ksys_read+0x5f/0xb0
> [12262.428810]  do_syscall_64+0x33/0x40
> [12262.428810]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [12262.428810] RIP: 0033:0x7fab4318791d
> [12262.428810] Code: 0f 1f 44 00 00 48 8b 0d 51 45 0b 00 45 31 c0 64 83 3=
9 0b 75 d2 eb c0 e8 b1 fb ff ff 90 f3 0f 1e fa 48 39 ca 77 2b 31 c0 0f 05 <=
48> 3d 00 f0 ff ff 77 0b c3 66 2e 0f 1f 84 00 00 00 00 00 48 8b 15
> [12262.428810] RSP: 002b:00007ffcaeb265b8 EFLAGS: 00000246 ORIG_RAX: 0000=
000000000000
> [12262.428810] RAX: ffffffffffffffda RBX: 00007ffcaeb27730 RCX: 00007fab4=
318791d
> [12262.428810] RDX: 0000000000000400 RSI: 000000000044b820 RDI: 000000000=
0000005
> [12262.428810] RBP: 0000000000008000 R08: 0000000000000000 R09: 00007ffca=
eb27520
> [12262.428810] R10: 0000000000000000 R11: 0000000000000246 R12: 000000000=
0000000
> [12262.428810] R13: 0000000000000005 R14: 0000000000000000 R15: 000000000=
0000000
> [12262.428810] Modules linked in: snd_seq_dummy minix snd_hrtimer snd_seq=
 snd_seq_device authenc pcrypt crypto_user sha3_generic algif_hash salsa20_=
generic binfmt_misc n_gsm pps_ldisc slcan ppp_synctty n_hdlc mkiss ax25 ppp=
_async ppp_generic slip slhc nfsv3 nfs_acl nfs nfs_ssc fscache lockd grace =
rds tun brd overlay exfat vfat fat xfs sctp tcp_diag udp_diag inet_diag rfk=
ill sunrpc snd_hda_codec_generic ledtrig_audio snd_hda_intel snd_intel_dspc=
fg soundwire_intel soundwire_generic_allocation snd_soc_core snd_compress s=
nd_pcm_dmaengine soundwire_cadence snd_hda_codec snd_hda_core ac97_bus snd_=
hwdep snd_pcm joydev snd_timer snd virtio_net soundcore net_failover pcspkr=
 virtio_balloon failover i2c_piix4 fuse zram ip_tables x_tables cirrus drm_=
kms_helper cec virtio_blk drm serio_raw ata_generic pata_acpi floppy btrfs =
raid6_pq xor [last unloaded: can]
> [12262.462039] ---[ end trace f683b95858968bee ]---
>=20
> I cannot reproduce this in QEMU with a Debian rootfs with the supplied
> configuration file though, proc01 -m 128 passes for me.

Hi Nathan,

We recently moved the mainline tree to use Fedora Rawhide as the base distr=
o, this helps out kdump and other tests which require
updated user space for testing. As a result, there were a few tests that sh=
ouldn't have run like LTP Lite. So the log you linked
above is not related to the panic:
https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-pu=
blic/2021/02/02/622905/build_x86_64_redhat%3A1092370/tests/LTP_lite/9507327=
_x86_64_1_RHELKT1LITE.FILTERED.fail.log

This is the version of LTP we run for internal RHEL kernels and therefore i=
sn't supported against upstream kernels. I'm working on a fix
for this now and should be resolved soon, sorry about that.

As far as the panic, it was was triggered on our upstream LTP test, I don't=
 have a corresponding x86_64/LTP mainline(GCC) job since there is a BPF
bug which is causing our jobs to abort while updating the kernel for x86. Y=
ou will see the following in the logs:

'failed to validate module [something] BTF: -22 '

Here is a regular mainline job for reference where you can it:
https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-pu=
blic/2021/02/02/622904/build_x86_64_redhat%3A1092352/tests/9507513_x86_64_1=
_console.log

As far as comparing tests for mainline run with gcc vs clang, we don't emai=
l an upstream ML for regular mainline, so nothing archived.
However, the logs are still published externally and we can always link the=
m here for comparison.

If you like, we could start forwarding you reports for both ? Otherwise, we=
 are working on publishing our results database we use internally,
but this will take some time.

Thanks,
Rachel

>=20
> Cheers,
> Nathan
>=20
>> We hope that these logs can help you find the problem quickly. For the f=
ull
>> detail on our testing procedures, please scroll to the bottom of this me=
ssage.
>>
>> Please reply to this email if you have any questions about the tests tha=
t we
>> ran or if you have any suggestions on how to make future tests more effe=
ctive.
>>
>>          ,-.   ,-.
>>         ( C ) ( K )  Continuous
>>          `-',-.`-'   Kernel
>>            ( I )     Integration
>>             `-'
>> ________________________________________________________________________=
______
>>
>> Compile testing
>> ---------------
>>
>> We compiled the kernel for 3 architectures:
>>
>>      aarch64:
>>        make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pkg
>>
>>      ppc64le:
>>        make options: make CC=3Dclang -j30 INSTALL_MOD_STRIP=3D1 targz-pk=
g
>>
>>      x86_64:
>>        make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pkg
>>
>>
>> We built the following selftests:
>>
>>    x86_64:
>>        net: fail
>>        bpf: fail
>>        install and packaging: fail
>>
>> You can find the full log (build-selftests.log) in the artifact storage =
above.
>>
>>
>> Hardware testing
>> ----------------
>> We booted each kernel and ran the following tests:
>>
>>    aarch64:
>>      Host 1:
>>         =E2=9C=85 Boot test
>>         =E2=9D=8C selinux-policy: serge-testsuite
>>         =E2=9C=85 lvm thinp sanity
>>         =E2=9C=85 storage: software RAID testing
>>         =E2=9C=85 stress: stress-ng
>>         =F0=9F=9A=A7 =E2=9C=85 xfstests - ext4
>>         =F0=9F=9A=A7 =E2=9C=85 xfstests - xfs
>>         =F0=9F=9A=A7 =E2=9C=85 Storage blktests
>>         =F0=9F=9A=A7 =E2=9D=8C Storage nvme - rdma
>>         =F0=9F=9A=A7 =E2=9C=85 Storage nvme - tcp
>>         =F0=9F=9A=A7 =E2=9C=85 Storage: swraid mdadm raid_module test
>>         =F0=9F=9A=A7 =E2=9D=8C storage: iSCSI parameters
>>
>>      Host 2:
>>
>>         =E2=9A=A1 Internal infrastructure issues prevented one or more t=
ests (marked
>>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architect=
ure.
>>         This is not the fault of the kernel that was tested.
>>
>>         =E2=9C=85 Boot test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>>
>>      Host 3:
>>
>>         =E2=9A=A1 Internal infrastructure issues prevented one or more t=
ests (marked
>>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architect=
ure.
>>         This is not the fault of the kernel that was tested.
>>
>>         =E2=9C=85 Boot test
>>         =E2=9C=85 ACPI table test
>>         =E2=9C=85 LTP lite
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking MACsec: sanity
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking sctp-auth: sockopts test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: igmp conformance test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tran=
sport
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunn=
el
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Eleme=
nt test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Usex - version 1.9-29
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: SCSI VPD
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Syscalls: nrdiff
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Trinity Fuzzer - Tier1
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP: openposix test sui=
te
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: ipv6/Fujits=
u-socketapi-test
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: ba=
sic netfilter test
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite =
test
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: dm/common
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libhugetlbfs - version =
2.2.1
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot
>>
>>      Host 4:
>>
>>         =E2=9A=A1 Internal infrastructure issues prevented one or more t=
ests (marked
>>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architect=
ure.
>>         This is not the fault of the kernel that was tested.
>>
>>         =E2=9C=85 Boot test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>>
>>      Host 5:
>>
>>         =E2=9A=A1 Internal infrastructure issues prevented one or more t=
ests (marked
>>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architect=
ure.
>>         This is not the fault of the kernel that was tested.
>>
>>         =E2=9C=85 Boot test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>>
>>    ppc64le:
>>      Host 1:
>>
>>         =E2=9A=A1 Internal infrastructure issues prevented one or more t=
ests (marked
>>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architect=
ure.
>>         This is not the fault of the kernel that was tested.
>>
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>>
>>      Host 2:
>>
>>         =E2=9A=A1 Internal infrastructure issues prevented one or more t=
ests (marked
>>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architect=
ure.
>>         This is not the fault of the kernel that was tested.
>>
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP lite
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking MACsec: sanity
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking sctp-auth: sockopts test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunn=
el
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Eleme=
nt test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Usex - version 1.9-29
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Syscalls: nrdiff
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Trinity Fuzzer - Tier1
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP: openposix test sui=
te
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: ipv6/Fujits=
u-socketapi-test
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: ba=
sic netfilter test
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite =
test
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: dm/common
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libhugetlbfs - version =
2.2.1
>>
>>      Host 3:
>>
>>         =E2=9A=A1 Internal infrastructure issues prevented one or more t=
ests (marked
>>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architect=
ure.
>>         This is not the fault of the kernel that was tested.
>>
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-testsuite
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm thinp sanity
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - rdma
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm r=
aid_module test
>>
>>      Host 4:
>>
>>         =E2=9A=A1 Internal infrastructure issues prevented one or more t=
ests (marked
>>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architect=
ure.
>>         This is not the fault of the kernel that was tested.
>>
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-testsuite
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm thinp sanity
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - rdma
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm r=
aid_module test
>>
>>      Host 5:
>>
>>         =E2=9A=A1 Internal infrastructure issues prevented one or more t=
ests (marked
>>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architect=
ure.
>>         This is not the fault of the kernel that was tested.
>>
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-testsuite
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm thinp sanity
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - rdma
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm r=
aid_module test
>>
>>    x86_64:
>>      Host 1:
>>
>>         =E2=9A=A1 Internal infrastructure issues prevented one or more t=
ests (marked
>>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architect=
ure.
>>         This is not the fault of the kernel that was tested.
>>
>>         =E2=9C=85 Boot test
>>         =E2=9D=8C selinux-policy: serge-testsuite
>>         =E2=9C=85 lvm thinp sanity
>>         =E2=9C=85 storage: software RAID testing
>>         =E2=9C=85 stress: stress-ng
>>         =F0=9F=9A=A7 =E2=9C=85 xfstests - ext4
>>         =F0=9F=9A=A7 =E2=9C=85 xfstests - xfs
>>         =F0=9F=9A=A7 =E2=9C=85 Storage blktests
>>         =F0=9F=9A=A7 =E2=9D=8C Storage nvme - rdma
>>         =F0=9F=9A=A7 =E2=9D=8C Storage nvme - tcp
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvdimm ndctl te=
st suite
>>         =F0=9F=9A=A7 =E2=9C=85 Storage: swraid mdadm raid_module test
>>         =F0=9F=9A=A7 =E2=9D=8C storage: iSCSI parameters
>>
>>      Host 2:
>>         =E2=9C=85 Boot test
>>         =E2=9C=85 kdump - sysrq-c
>>         =F0=9F=9A=A7 =E2=9C=85 kdump - file-load
>>
>>      Host 3:
>>         =E2=9C=85 Boot test
>>         =E2=9C=85 ACPI table test
>>         =E2=9D=8C LTP lite
>>         =F0=9F=92=A5 LTP
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking MACsec: sanity
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking sctp-auth: sockopts test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: igmp conformance test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tran=
sport
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunn=
el
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: sanity smoke test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Eleme=
nt test
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Usex - version 1.9-29
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: SCSI VPD
>>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Syscalls: nrdiff
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Trinity Fuzzer - Tier1
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP: openposix test sui=
te
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: ipv6/Fujits=
u-socketapi-test
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: ba=
sic netfilter test
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite =
test
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: dm/common
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libhugetlbfs - version =
2.2.1
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Tracepoints: operationa=
l test
>>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot
>>
>>    Test sources: https://gitlab.com/cki-project/kernel-tests
>>      =F0=9F=92=9A Pull requests are welcome for new tests or improvement=
s to existing tests!
>>
>> Aborted tests
>> -------------
>> Tests that didn't complete running successfully are marked with =E2=9A=
=A1=E2=9A=A1=E2=9A=A1.
>> If this was caused by an infrastructure issue, we try to mark that
>> explicitly in the report.
>>
>> Waived tests
>> ------------
>> If the test run included waived tests, they are marked with =F0=9F=9A=A7=
. Such tests are
>> executed but their results are not taken into account. Tests are waived =
when
>> their results are not reliable enough, e.g. when they're just introduced=
 or are
>> being fixed.
>>
>> Testing timeout
>> ---------------
>> We aim to provide a report within reasonable timeframe. Tests that haven=
't
>> finished running yet are marked with =E2=8F=B1.
>>
>> --=20
>> You received this message because you are subscribed to the Google Group=
s "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msg=
id/clang-built-linux/cki.C90653A6EF.V9S14CF2MY%40redhat.com.
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5877bb33-ba17-6459-410c-1c51bd193481%40redhat.com.
