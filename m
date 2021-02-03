Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6WK5OAAMGQEG7YLDXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D29230E1BF
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 19:03:40 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id f3sf351294plg.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 10:03:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612375418; cv=pass;
        d=google.com; s=arc-20160816;
        b=L6lKH63NqnCX0pH1ago6WheLGn6osS6pipJVmFWUnQQytA/S24Trs5RoZDt1wmjrYk
         e8lQlbuu1PBw0rFSV+CHnzBAnw21BLyhsUcfF6hz8Hp0CMLoYt+xXMccv2dYQLU/gBeZ
         yfp5417yeyxEHQuTqrc5X5rXqIf3Ww5ddjqVuF/aeuSG3HvuZ/8t7H0vlVModps528FH
         OzejUyzhu8PpkKvUPqWmJoLSY6X1jllT9pRIMfOgp7iM/Q9LD1GLUg5wm3Ff10FPYFXY
         sJOSn0uDb+RDcmgYXRvEWTakVFtjTuYlti0Kutttvb/B7aqqELQRyK+bIEo6h1ZGVPVj
         ShzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=I517AZTLqee1TNcCdt4arD9IQOrOvg+Z+yVHHol/7Kk=;
        b=rW5R2/Drbg75BZpzD7XW1cJ5ihfqr0pP+/E7NlDj+lgvlCU7HIhmmoGm/1OavKUxsc
         e5+USobMDx33Zm6+HGJN9Sm5oI2SrfIIFShpK4ep9vBtEM4Mz0c7hVnkvapcEOaKLw87
         0SdkJEyMflJqqMDy5muyT9vz6TrhY/fXwqe8TdjDLc4djzv/6nEw1ksa5rMffIIfE5h0
         E80kFE0A7uunsF7uEnRznqDK0UEhTrXp3QH0xQZW+Jo/NbqLVeF6SyxtO/rY6DnFthKD
         SejA0CWMmfbTtM+5JSNGQ96VcbQCuGesoA0J2MZrK+n+BrfX86Kb0kaR9m5XFcLvaa7o
         Ea1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Gk8/+RJV";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I517AZTLqee1TNcCdt4arD9IQOrOvg+Z+yVHHol/7Kk=;
        b=CKC0MZivmclDBppU9GSX0aNC+1H1PVBpUnN6fzJVlULyQOT62vLbaL1bUjvGphgVUV
         xHLYXHcy6fbrGVZT1VxC0fMLaGqyEMjvyho/pHx2NDM32Hs5eEr8HTD+76mOfHExFrsf
         1qT9Q/waXCj3tWFEhpCqOFTJ3azcSKS+M/JfihiPVU6KLqk6/Kg4WpjOUckFb9wySA5c
         48lGbBvJH9vcp33IYtH7mCAnyNoFzDMXXvWikBYBkWadJ0JopJrz+xhuW7GTAgdkNBzc
         3c0D1COA2DawxOV3XsVO5J+aZerCqQPVXHj4inuLcXCDqtmVjxIytsSLmDKCXeO4BsZR
         V6tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I517AZTLqee1TNcCdt4arD9IQOrOvg+Z+yVHHol/7Kk=;
        b=ZGymXqgcTcq3/myYeATysi6aJhQlMLU5/Z28CrB+aPRnpSa2VUXoK+Qa2lmnXCMMrn
         OrBrl5CQR9aZ7RME2SMP6ELW7hfT4/nQ3cyuKfM+qEmz/dl6qxynd0SbiJ1gus3766nK
         AfNSlr5h4yMdJLCjiHx1+df6OdFkH4bZq8VMX2nwNd5fmpP313Xr+FMcVju7OOkTjf9f
         CysPzZiL4ZanUVuyhQ4+DP/Z4tl7GuqXx7/PC2SGLnzRcI7VXfuZRWw6I6mg4BoltKyS
         7Gux1qxHpL+dfXFEpJ6JrGGC2Ribyb6B7lHTEIZLvoaMtTkLQr020tn8GKL+JEVvEpxJ
         +Ezg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GrHtT+KDoKGBgHW2aEwR0z8wDrWX7aqv7ycMiU7Ck6MdyDBqB
	/ulQbGT3Objp6WAJvfYPASY=
X-Google-Smtp-Source: ABdhPJy5aUgQxthnm8epUgktNHpqR9QQdB+b3IUcRjoKp84vhwrlYk+V/9n1HUyX8izq9XJbfMKZJg==
X-Received: by 2002:a65:5903:: with SMTP id f3mr5064692pgu.28.1612375418729;
        Wed, 03 Feb 2021 10:03:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:778c:: with SMTP id s134ls1314622pgc.0.gmail; Wed, 03
 Feb 2021 10:03:38 -0800 (PST)
X-Received: by 2002:a63:1a48:: with SMTP id a8mr4961370pgm.257.1612375417926;
        Wed, 03 Feb 2021 10:03:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612375417; cv=none;
        d=google.com; s=arc-20160816;
        b=bpZajcsA2WgfmpF8Pkf3giUZhda8yusDpMXtDL/MVr6mWwTTDNBrVXUMLgRz2chOXI
         gcFSzlnmoYingXFDBFNEBJzAo3fakgWV9lm7kEy+pT7MPrEj6vxYQ0DRFS8+6v8CAkD7
         qfVnJPLIrknVat+4zMI8Zp9wT9/0HVwh8TuwhZakXW6sNcu/EoVI7oJW9rFBYoyKcoR2
         bcb7kM/f6rLswAamuiJryjkUaktBWjTX/SSL+rbmg9ymXNnh8RtflHD8H1h81YeikSq+
         Y32m92zv61SweLeM4t7vvcMxjeQp5O2uZBNLxHYztr/UYNYpH0yLlXMLN1j8ikyq/Xbp
         rvvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=hqshD1HYZwdQCOxfHIFGbuhV92R9h7HJ+i00vSLsEto=;
        b=tXmSqQwJDV59sYaBk6Zkdmyrhn3POUFXDcaR9kMpUKuPlIAXGImXuojneN64vD+CUF
         K9IpfR8wGdE+FV/vUxGZxtUaeJrQtXESYIRZBOopRULHrzwDdrkj92Go669kiQySmwpU
         TQqLGRpneh79Gm9Mq2mH5tUcibvpeW2EJWnwjyPvVNxCxohh+nCREY4gjP+10IsXmTUs
         BRLcB45aOqEytZzeM5QYaTdnoblSCZSAPxZiH4s1uT6nwiPo1l6nGqzGqbkJtMHf94NQ
         tawwDuuS23jSnVHTdwUtxmZ9SrRjKo+U9Dovibi9hQ07LwU4Q2jUdNYN+LDgOBXinMf8
         0NRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Gk8/+RJV";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f11si116660plo.4.2021.02.03.10.03.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 10:03:37 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0D71964F51;
	Wed,  3 Feb 2021 18:03:35 +0000 (UTC)
Date: Wed, 3 Feb 2021 11:03:33 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: CKI Project <cki-project@redhat.com>
Cc: skt-results-master@redhat.com, clang-built-linux@googlegroups.com,
	Milos Malik <mmalik@redhat.com>,
	Ondrej Mosnacek <omosnace@redhat.com>,
	Yi Zhang <yi.zhang@redhat.com>, Filip Suba <fsuba@redhat.com>,
	Memory Management <mm-qe@redhat.com>,
	Jan Stancek <jstancek@redhat.com>
Subject: Re: =?utf-8?B?8J+SpSBQQU5JQ0tFRDogVGVz?= =?utf-8?Q?t?= report for
 kernel 5.11.0-rc6 (mainline.kernel.org-clang)
Message-ID: <20210203180333.GA765672@localhost>
References: <cki.C90653A6EF.V9S14CF2MY@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <cki.C90653A6EF.V9S14CF2MY@redhat.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="Gk8/+RJV";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Feb 03, 2021 at 01:58:32AM -0000, CKI Project wrote:
>=20
> Hello,
>=20
> We ran automated tests on a recent commit from this kernel tree:
>=20
>        Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torva=
lds/linux.git
>             Commit: 3aaf0a27ffc2 - Merge tag 'clang-format-for-linux-v5.1=
1-rc7' of git://github.com/ojeda/linux
>=20
> The results of these automated tests are provided below.
>=20
>     Overall result: FAILED (see details below)
>              Merge: OK
>            Compile: OK
>  Selftests compile: FAILED
>              Tests: PANICKED
>=20
> All kernel binaries, config files, and logs are available for download he=
re:
>=20
>   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?p=
refix=3Ddatawarehouse-public/2021/02/02/622905
>=20
> One or more kernel tests failed:
>=20
>     aarch64:
>      =E2=9D=8C selinux-policy: serge-testsuite
>=20
>     x86_64:
>      =E2=9D=8C selinux-policy: serge-testsuite
>      =E2=9D=8C LTP lite

These should be the failures for this particular set of tests correct?

https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-pu=
blic/2021/02/02/622905/build_x86_64_redhat%3A1092370/tests/LTP_lite/9507327=
_x86_64_1_RHELKT1LITE.FILTERED.fail.log

I am curious, is there any way to get a side by side comparison of the
test results between GCC and clang? In other words, I would like to know
if a test is failing with both compilers versus just clang. This would
help us understand if it is a compiler specific issue or something that
broke the kernel.

>      =F0=9F=92=A5 LTP

From what I can tell:

[12262.428593] general protection fault, probably for non-canonical address=
 0x8bc08b308b608b5: 0000 [#1] SMP PTI=20
[12262.428810] CPU: 1 PID: 465515 Comm: proc01 Not tainted 5.11.0-rc6 #1=20
[12262.428810] Hardware name: Red Hat KVM, BIOS 0.5.1 01/01/2007=20
[12262.428810] RIP: 0010:string+0x50/0x110=20
[12262.428810] Code: ce 48 c1 fe 30 85 f6 0f 84 be 00 00 00 31 c0 eb 15 66 =
0f 1f 84 00 00 00 00 00 48 83 c0 01 39 c6 0f 84 ac 00 00 00 4c 8d 0c 07 <45=
> 0f b6 14 00 45 84 d2 0f 84 a2 00 00 00 49 39 d1 73 dd 45 88 11=20
[12262.428810] RSP: 0018:ffffb1ea012bbc40 EFLAGS: 00010246=20
[12262.428810] RAX: 0000000000000000 RBX: ffff9ea25e9ea03e RCX: ffff0a00fff=
fff04=20
[12262.428810] RDX: ffff9ea25e9eb000 RSI: ffffffffffffffff RDI: ffff9ea25e9=
ea03e=20
[12262.428810] RBP: ffffffff8f5c95f1 R08: 08bc08b308b608b5 R09: ffff9ea25e9=
ea03e=20
[12262.428810] R10: 0000001000000000 R11: ffffffff8e212401 R12: ffff9ea25e9=
eb000=20
[12262.428810] R13: ffffffff8f5c95f3 R14: 0000000000000002 R15: ffffb1ea012=
bbca0=20
[12262.428810] FS:  00007fab43075740(0000) GS:ffff9ea35bd00000(0000) knlGS:=
0000000000000000=20
[12262.428810] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033=20
[12262.428810] CR2: 00005584bb6dba68 CR3: 0000000111bbe000 CR4: 00000000000=
006e0=20
[12262.428810] DR0: 0000000000000001 DR1: 0000000000000000 DR2: 00000000000=
00000=20
[12262.428810] DR3: 0000000000000000 DR6: 00000000ffff0ff0 DR7: 00000000000=
00600=20
[12262.428810] Call Trace:=20
[12262.428810]  vsnprintf+0x570/0x710=20
[12262.428810]  seq_printf+0x6b/0x90=20
[12262.428810]  ? lock_acquire+0x27/0x280=20
[12262.428810]  ? mod_objcg_state+0xd2/0x160=20
[12262.428810]  ? vsnprintf+0x32f/0x710=20
[12262.428810]  print_name+0x46/0xc0=20
[12262.428810]  ? seq_printf+0x6b/0x90=20
[12262.428810]  ? __kmalloc_node+0xaf/0x340=20
[12262.428810]  ? lock_acquire+0x27/0x280=20
[12262.428810]  ? kvmalloc_node+0x4b/0x90=20
[12262.428810]  lc_show+0x82/0xe0=20
[12262.428810]  seq_read_iter+0x311/0x420=20
[12262.428810]  proc_reg_read_iter+0x3f/0x80=20
[12262.428810]  vfs_read+0x2c3/0x340=20
[12262.428810]  ksys_read+0x5f/0xb0=20
[12262.428810]  do_syscall_64+0x33/0x40=20
[12262.428810]  entry_SYSCALL_64_after_hwframe+0x44/0xa9=20
[12262.428810] RIP: 0033:0x7fab4318791d=20
[12262.428810] Code: 0f 1f 44 00 00 48 8b 0d 51 45 0b 00 45 31 c0 64 83 39 =
0b 75 d2 eb c0 e8 b1 fb ff ff 90 f3 0f 1e fa 48 39 ca 77 2b 31 c0 0f 05 <48=
> 3d 00 f0 ff ff 77 0b c3 66 2e 0f 1f 84 00 00 00 00 00 48 8b 15=20
[12262.428810] RSP: 002b:00007ffcaeb265b8 EFLAGS: 00000246 ORIG_RAX: 000000=
0000000000=20
[12262.428810] RAX: ffffffffffffffda RBX: 00007ffcaeb27730 RCX: 00007fab431=
8791d=20
[12262.428810] RDX: 0000000000000400 RSI: 000000000044b820 RDI: 00000000000=
00005=20
[12262.428810] RBP: 0000000000008000 R08: 0000000000000000 R09: 00007ffcaeb=
27520=20
[12262.428810] R10: 0000000000000000 R11: 0000000000000246 R12: 00000000000=
00000=20
[12262.428810] R13: 0000000000000005 R14: 0000000000000000 R15: 00000000000=
00000=20
[12262.428810] Modules linked in: snd_seq_dummy minix snd_hrtimer snd_seq s=
nd_seq_device authenc pcrypt crypto_user sha3_generic algif_hash salsa20_ge=
neric binfmt_misc n_gsm pps_ldisc slcan ppp_synctty n_hdlc mkiss ax25 ppp_a=
sync ppp_generic slip slhc nfsv3 nfs_acl nfs nfs_ssc fscache lockd grace rd=
s tun brd overlay exfat vfat fat xfs sctp tcp_diag udp_diag inet_diag rfkil=
l sunrpc snd_hda_codec_generic ledtrig_audio snd_hda_intel snd_intel_dspcfg=
 soundwire_intel soundwire_generic_allocation snd_soc_core snd_compress snd=
_pcm_dmaengine soundwire_cadence snd_hda_codec snd_hda_core ac97_bus snd_hw=
dep snd_pcm joydev snd_timer snd virtio_net soundcore net_failover pcspkr v=
irtio_balloon failover i2c_piix4 fuse zram ip_tables x_tables cirrus drm_km=
s_helper cec virtio_blk drm serio_raw ata_generic pata_acpi floppy btrfs ra=
id6_pq xor [last unloaded: can]=20
[12262.462039] ---[ end trace f683b95858968bee ]---=20

I cannot reproduce this in QEMU with a Debian rootfs with the supplied
configuration file though, proc01 -m 128 passes for me.

Cheers,
Nathan

> We hope that these logs can help you find the problem quickly. For the fu=
ll
> detail on our testing procedures, please scroll to the bottom of this mes=
sage.
>=20
> Please reply to this email if you have any questions about the tests that=
 we
> ran or if you have any suggestions on how to make future tests more effec=
tive.
>=20
>         ,-.   ,-.
>        ( C ) ( K )  Continuous
>         `-',-.`-'   Kernel
>           ( I )     Integration
>            `-'
> _________________________________________________________________________=
_____
>=20
> Compile testing
> ---------------
>=20
> We compiled the kernel for 3 architectures:
>=20
>     aarch64:
>       make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pkg
>=20
>     ppc64le:
>       make options: make CC=3Dclang -j30 INSTALL_MOD_STRIP=3D1 targz-pkg
>=20
>     x86_64:
>       make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pkg
>=20
>=20
> We built the following selftests:
>=20
>   x86_64:
>       net: fail
>       bpf: fail
>       install and packaging: fail
>=20
> You can find the full log (build-selftests.log) in the artifact storage a=
bove.
>=20
>=20
> Hardware testing
> ----------------
> We booted each kernel and ran the following tests:
>=20
>   aarch64:
>     Host 1:
>        =E2=9C=85 Boot test
>        =E2=9D=8C selinux-policy: serge-testsuite
>        =E2=9C=85 lvm thinp sanity
>        =E2=9C=85 storage: software RAID testing
>        =E2=9C=85 stress: stress-ng
>        =F0=9F=9A=A7 =E2=9C=85 xfstests - ext4
>        =F0=9F=9A=A7 =E2=9C=85 xfstests - xfs
>        =F0=9F=9A=A7 =E2=9C=85 Storage blktests
>        =F0=9F=9A=A7 =E2=9D=8C Storage nvme - rdma
>        =F0=9F=9A=A7 =E2=9C=85 Storage nvme - tcp
>        =F0=9F=9A=A7 =E2=9C=85 Storage: swraid mdadm raid_module test
>        =F0=9F=9A=A7 =E2=9D=8C storage: iSCSI parameters
>=20
>     Host 2:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9C=85 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>=20
>     Host 3:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9C=85 Boot test
>        =E2=9C=85 ACPI table test
>        =E2=9C=85 LTP lite
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking MACsec: sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking sctp-auth: sockopts test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: igmp conformance test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - transp=
ort
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunnel
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Element=
 test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Usex - version 1.9-29
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: SCSI VPD
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Syscalls: nrdiff
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Trinity Fuzzer - Tier1
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP: openposix test suite
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: ipv6/Fujitsu-=
socketapi-test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: basi=
c netfilter test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite te=
st
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: dm/common
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libhugetlbfs - version 2.=
2.1
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot
>=20
>     Host 4:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9C=85 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>=20
>     Host 5:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9C=85 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>=20
>   ppc64le:
>     Host 1:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>=20
>     Host 2:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP lite
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking MACsec: sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking sctp-auth: sockopts test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunnel
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Element=
 test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Usex - version 1.9-29
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Syscalls: nrdiff
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Trinity Fuzzer - Tier1
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP: openposix test suite
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: ipv6/Fujitsu-=
socketapi-test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: basi=
c netfilter test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite te=
st
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: dm/common
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libhugetlbfs - version 2.=
2.1
>=20
>     Host 3:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-testsuite
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm thinp sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - rdma
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm rai=
d_module test
>=20
>     Host 4:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-testsuite
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm thinp sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - rdma
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm rai=
d_module test
>=20
>     Host 5:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-testsuite
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm thinp sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - rdma
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm rai=
d_module test
>=20
>   x86_64:
>     Host 1:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9C=85 Boot test
>        =E2=9D=8C selinux-policy: serge-testsuite
>        =E2=9C=85 lvm thinp sanity
>        =E2=9C=85 storage: software RAID testing
>        =E2=9C=85 stress: stress-ng
>        =F0=9F=9A=A7 =E2=9C=85 xfstests - ext4
>        =F0=9F=9A=A7 =E2=9C=85 xfstests - xfs
>        =F0=9F=9A=A7 =E2=9C=85 Storage blktests
>        =F0=9F=9A=A7 =E2=9D=8C Storage nvme - rdma
>        =F0=9F=9A=A7 =E2=9D=8C Storage nvme - tcp
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvdimm ndctl test=
 suite
>        =F0=9F=9A=A7 =E2=9C=85 Storage: swraid mdadm raid_module test
>        =F0=9F=9A=A7 =E2=9D=8C storage: iSCSI parameters
>=20
>     Host 2:
>        =E2=9C=85 Boot test
>        =E2=9C=85 kdump - sysrq-c
>        =F0=9F=9A=A7 =E2=9C=85 kdump - file-load
>=20
>     Host 3:
>        =E2=9C=85 Boot test
>        =E2=9C=85 ACPI table test
>        =E2=9D=8C LTP lite
>        =F0=9F=92=A5 LTP
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking MACsec: sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking sctp-auth: sockopts test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: igmp conformance test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - transp=
ort
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunnel
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: sanity smoke test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Element=
 test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Usex - version 1.9-29
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: SCSI VPD
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Syscalls: nrdiff
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Trinity Fuzzer - Tier1
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP: openposix test suite
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: ipv6/Fujitsu-=
socketapi-test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: basi=
c netfilter test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite te=
st
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: dm/common
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libhugetlbfs - version 2.=
2.1
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Tracepoints: operational =
test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot
>=20
>   Test sources: https://gitlab.com/cki-project/kernel-tests
>     =F0=9F=92=9A Pull requests are welcome for new tests or improvements =
to existing tests!
>=20
> Aborted tests
> -------------
> Tests that didn't complete running successfully are marked with =E2=9A=A1=
=E2=9A=A1=E2=9A=A1.
> If this was caused by an infrastructure issue, we try to mark that
> explicitly in the report.
>=20
> Waived tests
> ------------
> If the test run included waived tests, they are marked with =F0=9F=9A=A7.=
 Such tests are
> executed but their results are not taken into account. Tests are waived w=
hen
> their results are not reliable enough, e.g. when they're just introduced =
or are
> being fixed.
>=20
> Testing timeout
> ---------------
> We aim to provide a report within reasonable timeframe. Tests that haven'=
t
> finished running yet are marked with =E2=8F=B1.
>=20
> --=20
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/cki.C90653A6EF.V9S14CF2MY%40redhat.com.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210203180333.GA765672%40localhost.
