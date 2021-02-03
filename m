Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZGA5SAAMGQEQNXWLCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id A405030E5E9
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 23:15:02 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id z20sf628570pgh.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 14:15:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612390501; cv=pass;
        d=google.com; s=arc-20160816;
        b=oDYjkTp2DeE3apECinTyioFP79qgjWNuAJeC7AvswIaF4Kc/GdFvfNW23BT/cx/QLL
         c9/doVmr8smj6FL8jZ1KehnYHFty0y65rGRRhbKw7QOCfjrkf2oXlgcHjKSnxzfyjPFj
         pu/5vkat2w8iLjXCobJMv4MeWQ/4xqYd6Y3vXKqu45ZlYp280qwh05tOxxLY6tPRXh3c
         uc7vtemEP/tyvyfApdQhBCoCxx0XZxFVGMA+agfc4a62ammphTJD8h14O1tfSp5u2Kw5
         5tP/KUnhvieBg5/D2BSbYMTKSH5ygn+ie7i//rIsM+UOfcL4Q6tm0KIuh9mkKRggwk3v
         IUqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=qA0SQQaBSX6DIZDrDOd4ADAohQklfzBn3oNdAAc+ARM=;
        b=oAgWPVdGVwPEX3ZK6zdjYXORlCEwnbgV9nz4e2+cfC9dlK3GALEbdM8pteHHYpngZY
         fzqFtHXHfBOFrvqownf6XFeZAOByuBjOYGdGWncc9OAgI8GTXu4C9XqaoN0jdMOP0MmD
         94RVSzK5F3qjU2rqpxH+jtrb+xuXx2+0A1O969cIts1js3aa4u+IykOut59Z8LMEYyON
         Y0gNZEVmolld6gq0JZQirXwYMJvL/EM8eSFYTuCs/EdkIhYaE5adEgB0dXC4RyDgsC1q
         BOUEAjljOeQ2KuKWXHtfDtirBM8Rfy6GvIC/BVpfsOF99+Tn6fwbycL8PGHB46euh6n4
         cECA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Hw3V8D79;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qA0SQQaBSX6DIZDrDOd4ADAohQklfzBn3oNdAAc+ARM=;
        b=TpB9Ucx6nB6BPrYPKVHjkRjRFe7WP4HPEvE4AWoeVVcUBDANNkdCLeg/gTU/KYqjm0
         KsUqxSBg3k120E5f+G9T6VvG8bqWPSoWWSgtEPswkFJX13dkcRXR6l1LwHM27BFy/cNE
         eeQBfG38RAV92X6/Je103inZPPOv38moMVtT2c0ou5gylYBUjmswcixWXe//rjR/Sqki
         6Ud/MMzNng7CW21umUEWK9+p68qMl1vjs/tLXZLNWqA/bc3ieOI3BL8wvNiI7w6GkNga
         KF2bzzHVOO80kLhXmP4x2FgW1pZ44sKLbFcfhII2lQ/zIxnyn9qebnd53y5CzAjHGACZ
         HuTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qA0SQQaBSX6DIZDrDOd4ADAohQklfzBn3oNdAAc+ARM=;
        b=n31phfk8C/uDfWgBvpkCt64Qf9oXTxrCgvh7ikCvN/Ne+j0bJ4XUcm4r0cZQe0TCMD
         KbD1YyT66znCl4W7RigZ55L1noZTPfpKs3UMiaHrUZmj0RNd1x+35tbSIMlUnUgO1jId
         aVpiJvPcyx9o9M0ZuT30t+OqEJNTDkIR0OGqsfAwBNQiDyCcNYe04RAV2gj/YOs3JUgp
         ggxymXfdYKLNK90s4qLsvtNWWZKwRZzCne8ZZOqZEN7tQcstw6YaQ8sGr9tVLk/4zpvH
         uuESTV/fgmZva7Yjs6y4AzZG7UXtLVpwj0mZcVe7PhUJDN0Xui5ZsP6tEf6IWbYAvwe+
         BKIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533DKVkLPxl/nFS4xsN9/mffoJcjbE7J1u1KsGker93Qh/PT4mTK
	5UhSCV5Y67WuV8hsTzXm54M=
X-Google-Smtp-Source: ABdhPJwJoe6Rrx8lkGOzZ1zzMIMPtvgCJ4lXUSKPi4rPQGRYERXYlHsBo5fZy928daQq7yEuN3U2LA==
X-Received: by 2002:a17:90a:1109:: with SMTP id d9mr5097806pja.94.1612390501170;
        Wed, 03 Feb 2021 14:15:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:cd09:: with SMTP id i9ls1516652pgg.10.gmail; Wed, 03 Feb
 2021 14:15:00 -0800 (PST)
X-Received: by 2002:a62:8f90:0:b029:1ca:890c:50dc with SMTP id n138-20020a628f900000b02901ca890c50dcmr4912426pfd.61.1612390500431;
        Wed, 03 Feb 2021 14:15:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612390500; cv=none;
        d=google.com; s=arc-20160816;
        b=GTnots6PEmQ0PfhzjFu/py2lfaFgANBxpi9OyLSat6/eX5druwWkxcboJGEpFXku11
         tS89JdZdjrZiRIExF065Y6gTdJDOvPOtvCUZgy9iPFr7msiCuHh3StYlrOPaXdHgi5Qd
         bYdZGxElhQbxW8tvxDflNE11u9/9zW7BMINexymy4eWhGuWsikqHkkXH80c0q3RWpgHR
         yAdydZEymYRxJ5NlKwXs0tacDnEEw5pRo7xL10kfDENNcGqzt8vOwxa/zibYHeC2JoQ7
         iKf2pU68n0pkUE9fXZABHD8XJNlERs85mjJPPtClkUD03h4esfT99HzsFXeLb1ERVB0s
         iV6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=S/p+cXuO3wHk4svMjIk1rvN6XaKIIX0iifDd9x2JISA=;
        b=qZV1kdQMTiKbU1Za8UqkoEu2ZXZvGaqkWuaxFZsr47hjqdHLDG1loJpjmSyjFBI63J
         73cjWcOAvXczg42qVedOPk15t+2Bheu8SyHB/iRPzDtcE2cuV5o/2nSFcZKk9dLqTxXQ
         YJLLI435pgBUKKsD9v+rhNrRoxPgPOUm6KW8FZgC5BJUPlN/K3yapEhmVR/gV+1beQSx
         bV5CV3Kpin2SMGDbXY3MF5GM0omJmgVRfX4J9m66OQlw87+RKhN46nC2L4PZUzyj5sl1
         FEhH83Gym1OTGTasUu3aK4y/LiDDl7CAv7ASxAF1Ft0G67SdRBbSjQK2HRYCujWom06A
         1s8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Hw3V8D79;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r1si175600pjd.2.2021.02.03.14.15.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 14:15:00 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 199B764DE7;
	Wed,  3 Feb 2021 22:14:59 +0000 (UTC)
Date: Wed, 3 Feb 2021 15:14:57 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Rachel Sibley <rasibley@redhat.com>
Cc: CKI Project <cki-project@redhat.com>, Milos Malik <mmalik@redhat.com>,
	Yi Zhang <yi.zhang@redhat.com>, Filip Suba <fsuba@redhat.com>,
	Memory Management <mm-qe@redhat.com>,
	Ondrej Mosnacek <omosnace@redhat.com>,
	skt-results-master@redhat.com, clang-built-linux@googlegroups.com,
	Jan Stancek <jstancek@redhat.com>
Subject: Re: =?utf-8?B?8J+SpSBQQU5JQ0tFRDogVGVz?= =?utf-8?Q?t?= report for
 kernel 5.11.0-rc6 (mainline.kernel.org-clang)
Message-ID: <20210203221457.GB1738694@localhost>
References: <cki.C90653A6EF.V9S14CF2MY@redhat.com>
 <20210203180333.GA765672@localhost>
 <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Hw3V8D79;       spf=pass
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

Hi Rachel,

On Wed, Feb 03, 2021 at 03:44:52PM -0500, Rachel Sibley wrote:
>=20
>=20
> On 2/3/21 1:03 PM, Nathan Chancellor wrote:
> > On Wed, Feb 03, 2021 at 01:58:32AM -0000, CKI Project wrote:
> > >=20
> > > Hello,
> > >=20
> > > We ran automated tests on a recent commit from this kernel tree:
> > >=20
> > >         Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/=
torvalds/linux.git
> > >              Commit: 3aaf0a27ffc2 - Merge tag 'clang-format-for-linux=
-v5.11-rc7' of git://github.com/ojeda/linux
> > >=20
> > > The results of these automated tests are provided below.
> > >=20
> > >      Overall result: FAILED (see details below)
> > >               Merge: OK
> > >             Compile: OK
> > >   Selftests compile: FAILED
> > >               Tests: PANICKED
> > >=20
> > > All kernel binaries, config files, and logs are available for downloa=
d here:
> > >=20
> > >    https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.h=
tml?prefix=3Ddatawarehouse-public/2021/02/02/622905
> > >=20
> > > One or more kernel tests failed:
> > >=20
> > >      aarch64:
> > >       =E2=9D=8C selinux-policy: serge-testsuite
> > >=20
> > >      x86_64:
> > >       =E2=9D=8C selinux-policy: serge-testsuite
> > >       =E2=9D=8C LTP lite
> >=20
> > These should be the failures for this particular set of tests correct?
> >=20
> > https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehous=
e-public/2021/02/02/622905/build_x86_64_redhat%3A1092370/tests/LTP_lite/950=
7327_x86_64_1_RHELKT1LITE.FILTERED.fail.log
> >=20
> > I am curious, is there any way to get a side by side comparison of the
> > test results between GCC and clang? In other words, I would like to kno=
w
> > if a test is failing with both compilers versus just clang. This would
> > help us understand if it is a compiler specific issue or something that
> > broke the kernel.
> >=20
> > >       =F0=9F=92=A5 LTP
> >=20
> > > From what I can tell:
> >=20
> > [12262.428593] general protection fault, probably for non-canonical add=
ress 0x8bc08b308b608b5: 0000 [#1] SMP PTI
> > [12262.428810] CPU: 1 PID: 465515 Comm: proc01 Not tainted 5.11.0-rc6 #=
1
> > [12262.428810] Hardware name: Red Hat KVM, BIOS 0.5.1 01/01/2007
> > [12262.428810] RIP: 0010:string+0x50/0x110
> > [12262.428810] Code: ce 48 c1 fe 30 85 f6 0f 84 be 00 00 00 31 c0 eb 15=
 66 0f 1f 84 00 00 00 00 00 48 83 c0 01 39 c6 0f 84 ac 00 00 00 4c 8d 0c 07=
 <45> 0f b6 14 00 45 84 d2 0f 84 a2 00 00 00 49 39 d1 73 dd 45 88 11
> > [12262.428810] RSP: 0018:ffffb1ea012bbc40 EFLAGS: 00010246
> > [12262.428810] RAX: 0000000000000000 RBX: ffff9ea25e9ea03e RCX: ffff0a0=
0ffffff04
> > [12262.428810] RDX: ffff9ea25e9eb000 RSI: ffffffffffffffff RDI: ffff9ea=
25e9ea03e
> > [12262.428810] RBP: ffffffff8f5c95f1 R08: 08bc08b308b608b5 R09: ffff9ea=
25e9ea03e
> > [12262.428810] R10: 0000001000000000 R11: ffffffff8e212401 R12: ffff9ea=
25e9eb000
> > [12262.428810] R13: ffffffff8f5c95f3 R14: 0000000000000002 R15: ffffb1e=
a012bbca0
> > [12262.428810] FS:  00007fab43075740(0000) GS:ffff9ea35bd00000(0000) kn=
lGS:0000000000000000
> > [12262.428810] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [12262.428810] CR2: 00005584bb6dba68 CR3: 0000000111bbe000 CR4: 0000000=
0000006e0
> > [12262.428810] DR0: 0000000000000001 DR1: 0000000000000000 DR2: 0000000=
000000000
> > [12262.428810] DR3: 0000000000000000 DR6: 00000000ffff0ff0 DR7: 0000000=
000000600
> > [12262.428810] Call Trace:
> > [12262.428810]  vsnprintf+0x570/0x710
> > [12262.428810]  seq_printf+0x6b/0x90
> > [12262.428810]  ? lock_acquire+0x27/0x280
> > [12262.428810]  ? mod_objcg_state+0xd2/0x160
> > [12262.428810]  ? vsnprintf+0x32f/0x710
> > [12262.428810]  print_name+0x46/0xc0
> > [12262.428810]  ? seq_printf+0x6b/0x90
> > [12262.428810]  ? __kmalloc_node+0xaf/0x340
> > [12262.428810]  ? lock_acquire+0x27/0x280
> > [12262.428810]  ? kvmalloc_node+0x4b/0x90
> > [12262.428810]  lc_show+0x82/0xe0
> > [12262.428810]  seq_read_iter+0x311/0x420
> > [12262.428810]  proc_reg_read_iter+0x3f/0x80
> > [12262.428810]  vfs_read+0x2c3/0x340
> > [12262.428810]  ksys_read+0x5f/0xb0
> > [12262.428810]  do_syscall_64+0x33/0x40
> > [12262.428810]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> > [12262.428810] RIP: 0033:0x7fab4318791d
> > [12262.428810] Code: 0f 1f 44 00 00 48 8b 0d 51 45 0b 00 45 31 c0 64 83=
 39 0b 75 d2 eb c0 e8 b1 fb ff ff 90 f3 0f 1e fa 48 39 ca 77 2b 31 c0 0f 05=
 <48> 3d 00 f0 ff ff 77 0b c3 66 2e 0f 1f 84 00 00 00 00 00 48 8b 15
> > [12262.428810] RSP: 002b:00007ffcaeb265b8 EFLAGS: 00000246 ORIG_RAX: 00=
00000000000000
> > [12262.428810] RAX: ffffffffffffffda RBX: 00007ffcaeb27730 RCX: 00007fa=
b4318791d
> > [12262.428810] RDX: 0000000000000400 RSI: 000000000044b820 RDI: 0000000=
000000005
> > [12262.428810] RBP: 0000000000008000 R08: 0000000000000000 R09: 00007ff=
caeb27520
> > [12262.428810] R10: 0000000000000000 R11: 0000000000000246 R12: 0000000=
000000000
> > [12262.428810] R13: 0000000000000005 R14: 0000000000000000 R15: 0000000=
000000000
> > [12262.428810] Modules linked in: snd_seq_dummy minix snd_hrtimer snd_s=
eq snd_seq_device authenc pcrypt crypto_user sha3_generic algif_hash salsa2=
0_generic binfmt_misc n_gsm pps_ldisc slcan ppp_synctty n_hdlc mkiss ax25 p=
pp_async ppp_generic slip slhc nfsv3 nfs_acl nfs nfs_ssc fscache lockd grac=
e rds tun brd overlay exfat vfat fat xfs sctp tcp_diag udp_diag inet_diag r=
fkill sunrpc snd_hda_codec_generic ledtrig_audio snd_hda_intel snd_intel_ds=
pcfg soundwire_intel soundwire_generic_allocation snd_soc_core snd_compress=
 snd_pcm_dmaengine soundwire_cadence snd_hda_codec snd_hda_core ac97_bus sn=
d_hwdep snd_pcm joydev snd_timer snd virtio_net soundcore net_failover pcsp=
kr virtio_balloon failover i2c_piix4 fuse zram ip_tables x_tables cirrus dr=
m_kms_helper cec virtio_blk drm serio_raw ata_generic pata_acpi floppy btrf=
s raid6_pq xor [last unloaded: can]
> > [12262.462039] ---[ end trace f683b95858968bee ]---
> >=20
> > I cannot reproduce this in QEMU with a Debian rootfs with the supplied
> > configuration file though, proc01 -m 128 passes for me.
>=20
> Hi Nathan,
>=20
> We recently moved the mainline tree to use Fedora Rawhide as the base dis=
tro, this helps out kdump and other tests which require
> updated user space for testing. As a result, there were a few tests that =
shouldn't have run like LTP Lite. So the log you linked
> above is not related to the panic:
> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-=
public/2021/02/02/622905/build_x86_64_redhat%3A1092370/tests/LTP_lite/95073=
27_x86_64_1_RHELKT1LITE.FILTERED.fail.log
>=20
> This is the version of LTP we run for internal RHEL kernels and therefore=
 isn't supported against upstream kernels. I'm working on a fix
> for this now and should be resolved soon, sorry about that.

Thanks for clarifying :)

> As far as the panic, it was was triggered on our upstream LTP test, I don=
't have a corresponding x86_64/LTP mainline(GCC) job since there is a BPF
> bug which is causing our jobs to abort while updating the kernel for x86.=
 You will see the following in the logs:
>=20
> 'failed to validate module [something] BTF: -22 '
>=20
> Here is a regular mainline job for reference where you can it:
> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-=
public/2021/02/02/622904/build_x86_64_redhat%3A1092352/tests/9507513_x86_64=
_1_console.log
>=20
> As far as comparing tests for mainline run with gcc vs clang, we don't em=
ail an upstream ML for regular mainline, so nothing archived.
> However, the logs are still published externally and we can always link t=
hem here for comparison.
>=20
> If you like, we could start forwarding you reports for both ? Otherwise, =
we are working on publishing our results database we use internally,
> but this will take some time.
>=20

If just adding a link to the GCC logs in the clang reports is not too
much effort for you guys, that would be mighty helpful. I do not mind
sifting through the logs to try and compare results manually (as I just
need to compare the failing clang tests to the GCC run).

If that is not possible for various reasons, please explicitly CC me on
the GCC mainline reports (nathan@kernel.org) and I can just grab the
link myself. Our list gets enough reports as it stands so we can keep
the GCC ones off of this list.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210203221457.GB1738694%40localhost.
