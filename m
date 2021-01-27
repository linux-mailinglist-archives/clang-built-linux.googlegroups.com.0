Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKMQYOAAMGQEGMJQ7PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5117C304F16
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 02:55:55 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id r7sf192542pjq.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 17:55:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611712554; cv=pass;
        d=google.com; s=arc-20160816;
        b=cqjHywURc3hxl1OpS7wYpTa7PDBiVNmeLdc3O/A7JYsOtOVxW+JsYug9fhfv3Qoqe0
         CTaEbzXVO+4TMU8EeKrEG1zrHoruA/aHF93N5vXxkuCcNEMZZGy0BXnYpd5F5kkj7GQi
         5LTmQ3ufeZq7s+9Cf15AV/ZJJD8tK6+fQRsGIx/oRqEXtSeXO/p1TY3v9mZ6eqrNwZqs
         aj+JiHPFnQPi7ijKeAD/BPfBWT4OWJzz10r0TVnXyYW48tOCruuzNI11LNTDk11s/zfN
         +3wzDCh1J/MHQ39AzEsqvVX7PHkHo4U7D3go/AbIjIWbWYe6nYzZcn5ykHrLRxEiLE0C
         JWCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=3OxE9xKhogC8VbkFjGs9HTQdrB28YXnvnPVfx9FN34M=;
        b=DpZ8kz80gLkteYim414/LKbLKunQsOISp3Whm+zOzj0GaeiE9q6By12JL09JX4J28G
         MJGFDKgRwX67TsbMAAExO6Bbc26Py10XD4Ggw7gtwq6cB1aEzPWkPfHbiGrsEWHyu7s4
         djCeuFDW2VzHSrLsOvBkaHTmkYY9XSaiWUkKWgcB1dIkclpJJAsZ4un49d7Vu/088umg
         MPscM2EX4Galm6N6Dn1kFBXSgw+RJlOXBlvBT2WxqfKc+0GbDCDbvgE4mjvhhd2nhOt9
         8byOyyRNv7vMJ0V+kQs69rbdU3iosHYMfP4ECZQVehXR3fZe1qvCKALg5TmlVm4fk57B
         Z1iQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KP7FMcts;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3OxE9xKhogC8VbkFjGs9HTQdrB28YXnvnPVfx9FN34M=;
        b=SzajEJaKUbMNJPVy/Oow3OnNgYvohgwkw+ETk1sSxAhAGDIVzyz9RHqLSRi9X9UWFQ
         +ZqHEgF7WKRNSXxmBDbp1I5HVMv0O+3i+0npmtJYgCkP/ASHE6Dia9rI3wJAudtAVRiF
         d7FPw9lBs9GE71tT9UyHNzTDKWctaBry0TwRrUmxXQ3bkojIxy7JfK+SML/9qsEER1u4
         egcg1mQNrKVXFoCtLu57011VF8P9pzZFQw6MulbotRdCNhhiVxnXUeRk9XRYPymBaQYX
         2QBvK83Y7p8YihWs0mXZzOHXipFUB8YjRyVYusEGxzv1almGlty/NQsdc84eaw+IQmnk
         0PNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3OxE9xKhogC8VbkFjGs9HTQdrB28YXnvnPVfx9FN34M=;
        b=JTLakXO4h1IzDRrWQsxkbs6CYHU18iv3jllJ8/vl7ywy8brDzvf5Ydc0bwSBvBouFn
         YNNENNUFwP7S0pxPxQ3qVpxE3VOE5sCw2VEa+PX4brynw3OE46Acs+tcypqEK5kDPsm8
         G/wbyFWZ4qtQWCzHqQtScBiycaZB+lCySnu8zcAXpNmmbcIdf4KVJScwEuLNrCx3dlmB
         8BOKNqPzyREEsOVhiexrHZTVmbZCVqZFH73gOEqYCQfIRztuAYWv5r9FDEa/aku1LeeE
         oxu9Ijpc6cr62XVQTzx9TuDvvnMF9dWJpEwU2X1awNoU1XX29QRAeO1TNgfkvnbHZ5jY
         cmHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Mlw8SS+xnzT5pUjjB3BZiHWD+Nn7s1KfLZILJ6lifLq0DRvey
	n2wbS3OujZA3VrpnqSBRLOI=
X-Google-Smtp-Source: ABdhPJzSsV0riZEvLTgDeaCKvtkYwIx+BNeG5bpfI0pKujRr4DCYcaHUEXlCSH1PctsBCUobYJa5xw==
X-Received: by 2002:a62:1dd7:0:b029:1be:ef0d:9507 with SMTP id d206-20020a621dd70000b02901beef0d9507mr8071371pfd.62.1611712554021;
        Tue, 26 Jan 2021 17:55:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab83:: with SMTP id f3ls227028plr.9.gmail; Tue, 26
 Jan 2021 17:55:53 -0800 (PST)
X-Received: by 2002:a17:902:ed93:b029:de:84d2:9ce1 with SMTP id e19-20020a170902ed93b02900de84d29ce1mr8653788plj.47.1611712553378;
        Tue, 26 Jan 2021 17:55:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611712553; cv=none;
        d=google.com; s=arc-20160816;
        b=xCRHXYHGKkoGuqu8p3Dkn2xltZBF+b4ek1Zkzl4+5y6CKsb0JUu1IP5eVLgd2B1pli
         uNDmCwlPWQuk9pq+r8OB/lfZqbYhlGHnLLkdnWPHqS7LwMOPIzZgf5ygAI7von05l5zP
         ubyJE2DWH3t0w4dCWNdsuSGJuVU7GuUSS02LJvSOCF6BKx6h/7ymZixjtug6JYscLdIu
         pW4xtvt86/OnYxTyUjUeEYtUi9P1KvN5QTQXPAqM+9Lb65YiDxr5IBMANKpiBjjv7O7m
         OlM+h29AXtrqwFoiCpG2OgxXa8WhxjiSW7J/ZJY2saILdb/vzpllFtkrSDEFaE5oBE2S
         IhOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=blyEytwTuhc/PYKjoKYuHpnpyAJbFfhHcSfUT36WB/M=;
        b=THso1UCYZFRCNny1yQt/Wt2hMErrhInSgFwRa9rlpHVyPGVNBOZr53Cv7GKUWhP0kl
         j5eV0UtTLR+v/eUuIxooNQ3fHz52Z3E9/Rw91Gh3fMl9g1YHxMUYBJZv/GF6q20NV8OZ
         G/IHKMTzXe4frPcGHedDVsDbnzcS4+d2beQUgELGqnyuM4+x7iZXTjr6gkIY2DqohhBR
         d6FrkQY59QbImKki1YfuxNTbziSJNy1cK0qlSg5LlWkraIOQPdoG6jY2A84LGEK/IM72
         LBTGg9EAE/cH0gClbprfVUcDeIAuGn5/xPSBR8u7E1HHjOfWTzR+kWUAv0xv8MppfASi
         wC9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KP7FMcts;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 26si29847pgm.1.2021.01.26.17.55.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Jan 2021 17:55:53 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2AB092065D;
	Wed, 27 Jan 2021 01:55:52 +0000 (UTC)
Date: Tue, 26 Jan 2021 18:55:50 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Rachel Sibley <rasibley@redhat.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	CKI Project <cki-project@redhat.com>, skt-results-master@redhat.com,
	clang-built-linux@googlegroups.com, Milos Malik <mmalik@redhat.com>,
	Ondrej Mosnacek <omosnace@redhat.com>,
	Erico Nunes <ernunes@redhat.com>,
	Memory Management <mm-qe@redhat.com>,
	Jan Stancek <jstancek@redhat.com>,
	David Arcari <darcari@redhat.com>, Xiong Zhou <xzhou@redhat.com>
Subject: Re: =?utf-8?B?8J+SpSBQQU5JQ0tFRDogVGVz?= =?utf-8?Q?t?= report for
 kernel 5.11.0-rc5 (mainline.kernel.org-clang)
Message-ID: <20210127015550.GA2783458@ubuntu-m3-large-x86>
References: <cki.205997F8B4.SUXMQTXAEJ@redhat.com>
 <20210126173431.GA602636@ubuntu-m3-large-x86>
 <0334f736-204c-2e17-d8f4-876fbc146fc6@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <0334f736-204c-2e17-d8f4-876fbc146fc6@redhat.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=KP7FMcts;       spf=pass
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

On Tue, Jan 26, 2021 at 06:29:03PM -0500, Rachel Sibley wrote:
>=20
>=20
> On 1/26/21 12:34 PM, Nathan Chancellor wrote:
> > On Tue, Jan 26, 2021 at 04:45:08PM -0000, CKI Project wrote:
> > >=20
> > > Hello,
> > >=20
> > > We ran automated tests on a recent commit from this kernel tree:
> > >=20
> > >         Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/=
torvalds/linux.git
> > >              Commit: f8ad8187c3b5 - fs/pipe: allow sendfile() to pipe=
 again
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
tml?prefix=3Ddatawarehouse-public/2021/01/25/622152
> > >=20
> > > One or more kernel tests failed:
> > >=20
> > >      aarch64:
> > >       =E2=9D=8C selinux-policy: serge-testsuite
> > >=20
> > >      x86_64:
> > >       =F0=9F=92=A5 LTP
> >=20
> > This mentions that LTP panicked but looking through the dmesg logs unde=
r
> > tests/ and the log files in tests/LTP/, I cannot see a clear panic. Am =
I
> > missing something?
>=20
> Hi Nathan, you can find the panic in the console.log, looks like it was t=
riggered with the
> LTP proc01 test, I'm attempting to reproduce it, will keep you posted:
> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-=
public/2021/01/25/622152/build_x86_64_redhat%3A1082893/tests/9463951_x86_64=
_1_console.log
>=20
>=20
> [10040.073391] Oops: 0000 [#1] SMP PTI
> [10040.074061] CPU: 0 PID: 772677 Comm: proc01 Not tainted 5.11.0-rc5 #1
> [10040.075266] Hardware name: Red Hat KVM, BIOS 0.5.1 01/01/2011
> [10040.076339] RIP: 0010:kpagecount_read+0x121/0x1e0
> [10040.077232] Code: 01 00 75 15 4a f7 44 30 08 01 00 00 00 75 0a 42 8b 4=
4
> 30 30 83 c0 01 eb 05 e8 6b 68 e7 ff 48 63 d8 eb 18 48 83 c1 ff 48 89 ca <=
48>
> f7 02 00 02 00 00 74 bf 66 0f 1f 44 00 00 31 db 48 c7 c7 59 2b
> [10040.080703] RSP: 0018:ffffab78c3a2fe10 EFLAGS: 00010293
> [10040.081691] RAX: fffff92900000000 RBX: fffffffffffffff2 RCX: fffffffff=
ffffffe
> [10040.083029] RDX: fffffffffffffffe RSI: 0000000000000001 RDI: fffff9290=
8a14000
> [10040.084365] RBP: 0000000000000400 R08: 0000000000000001 R09: ffff96f11=
58b5e78
> [10040.085703] R10: 0000000000000000 R11: ffffffffa1536bb0 R12: 000000000=
0000000
> [10040.087042] R13: 0000000000228500 R14: 0000000008a14000 R15: 000000000=
044c820
> [10040.088376] FS:  00007f7056512740(0000) GS:ffff96f160600000(0000) knlG=
S:0000000000000000
> [10040.089887] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [10040.090977] CR2: fffffffffffffffe CR3: 000000013abea006 CR4: 000000000=
07706f0
> [10040.092311] DR0: 0000000000423830 DR1: 0000000000000000 DR2: 000000000=
0000000
> [10040.093642] DR3: 0000000000000000 DR6: 00000000ffff0ff0 DR7: 000000000=
0000600
> [10040.094974] PKRU: 55555554
> [10040.095489] Call Trace:
> [10040.095971]  proc_reg_read+0x47/0xa0
> [10040.096652]  vfs_read+0x100/0x340
> [10040.097292]  ? lapic_next_deadline+0x22/0x30
> [10040.098102]  ? clockevents_program_event+0x82/0xe0
> [10040.099007]  ? syscall_enter_from_user_mode+0x2e/0x1c0
> [10040.099983]  ksys_read+0x5f/0xb0
> [10040.100600]  do_syscall_64+0x33/0x40
> [10040.101284]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [10040.102238] RIP: 0033:0x7f7056624f6d
>=20

Hi Rachel,

Thank you for the help pointing this out! I was able to reproduce this
in QEMU with a Debian rootfs and the provided configuration. As it turns
out, this is not a clang specific issue, I see this with GCC as well. It
is a v5.11-rc5 regression:

$ git bisect log
# bad: [6ee1d745b7c9fd573fba142a2efdad76a9f1cb04] Linux 5.11-rc5
# good: [19c329f6808995b142b3966301f217c831e7cf31] Linux 5.11-rc4
git bisect start 'v5.11-rc5' 'v5.11-rc4'
# good: [faba877b3bccb5af79f0cd8c6af93392030e6e41] Merge tag 'perf-tools-fi=
xes-v5.11-2-2021-01-22' of git://git.kernel.org/pub/scm/linux/kernel/git/ac=
me/linux
git bisect good faba877b3bccb5af79f0cd8c6af93392030e6e41
# good: [8f3bfd2181ecb920e5f51e2a16c1ef65d6f50a5f] Merge tag 'usb-5.11-rc5'=
 of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb
git bisect good 8f3bfd2181ecb920e5f51e2a16c1ef65d6f50a5f
# good: [fdbc80bdc4365078a0f7d65631171cb80e3ffd6e] Merge tag 'char-misc-5.1=
1-rc5' of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc
git bisect good fdbc80bdc4365078a0f7d65631171cb80e3ffd6e
# bad: [a692a610d7ed632cab31b61d6c350db68a10e574] Merge tag 'block-5.11-202=
1-01-24' of git://git.kernel.dk/linux-block
git bisect bad a692a610d7ed632cab31b61d6c350db68a10e574
# bad: [8c0d5d78f3596e203e9cd27563a8380649c03ad0] mips/mm/highmem: use set_=
pte() for kmap_local()
git bisect bad 8c0d5d78f3596e203e9cd27563a8380649c03ad0
# bad: [5dabd1712cd056814f9ab15f1d68157ceb04e741] kasan: fix incorrect argu=
ments passing in kasan_add_zero_shadow
git bisect bad 5dabd1712cd056814f9ab15f1d68157ceb04e741
# bad: [3de7d4f25a7438f09fef4e71ef111f1805cd8e7c] mm: memcg/slab: optimize =
objcg stock draining
git bisect bad 3de7d4f25a7438f09fef4e71ef111f1805cd8e7c
# bad: [d3921cb8be29ce5668c64e23ffdaeec5f8c69399] mm: fix initialization of=
 struct page for holes in memory layout
git bisect bad d3921cb8be29ce5668c64e23ffdaeec5f8c69399
# good: [bde9cfa3afe4324ec251e4af80ebf9b7afaf7afe] x86/setup: don't remove =
E820_TYPE_RAM for pfn 0
git bisect good bde9cfa3afe4324ec251e4af80ebf9b7afaf7afe
# first bad commit: [d3921cb8be29ce5668c64e23ffdaeec5f8c69399] mm: fix init=
ialization of struct page for holes in memory layout

As it turns out, that commit has other issues and has been reverted in
mainline:

https://git.kernel.org/linus/377bf660d07a47269510435d11f3b65d53edca20

It looks like we are all good here, I can confirm that everything seems
okay with that particular test case as of 2ab38c17aac1 ("mailmap: remove
the "repo-abbrev" comment").

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210127015550.GA2783458%40ubuntu-m3-large-x86.
