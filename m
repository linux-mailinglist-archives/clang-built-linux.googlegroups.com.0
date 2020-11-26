Return-Path: <clang-built-linux+bncBCT6537ZTEKRBR7F7T6QKGQENNHZB3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9665E2C4E0E
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Nov 2020 05:44:56 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id e6sf468640wrx.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 20:44:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606365896; cv=pass;
        d=google.com; s=arc-20160816;
        b=u7N8LvCZz8b9MBAugAPW/6il3Sh5bDlv5mLckNhsj5J/CGy7ckjaZWkpi9z5bkXhYr
         QXU+gQshqPuQQdyFHEXHDO5nfiyo+IguCfLL7H4umqzOk1mA42CsgIxiLf6EeSdhyVIg
         EVI8ytHikDXJprbbd0My1ne+vbd4muEWu7EUy9ZkeXWy+FMk12Ke4IMjYd7KtMPt7/La
         dy8nVLf+ImjKSjryC+S85OFoPvdotIroy+NjYJtK5/lgvlXM+e3QnJocT7FPZaOruW7w
         sTZ0vyCU9swDjH/r97d3REh5GjX3f7Nx2w36CesqWmZWgSrJzyk/YMq4VQxmAKfMsnQp
         0p/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=u0B4ksPDdJN5zf1BQC9bSm9dYs49x4rlAlkFkIms6VA=;
        b=v3Cav6TMtP+i+yvBBinGzGUFkvezRngaBfbqcWEAQxvVMFv+cujMmK/Bzn9Yz2/7lF
         6nn9d/Rjmnjn9TlmYvrxN+2b1fA+28FWDsnUAhodej81kcqHBKs/N5FL/FqTKF4n7MCm
         EzcLw96I6/Viiz59DuaCQVhAP0kQuvVOeyJlERNe0wT9+lmKMVZfNNYxR1Fz36XiZWVC
         eWldI62ZntkssjvwZNLtXTmkKfRcsow5uA7DilXxJUwTVmqeZvaXsBf/XAlAEm8qJWri
         pazHBnphvZCQ0g8Odk/ZxOKRwhevx+lejfx61aOM+sA18xKrEXtAVeRbBbcv0Clje7Kh
         i81Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=rHAcqdKB;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u0B4ksPDdJN5zf1BQC9bSm9dYs49x4rlAlkFkIms6VA=;
        b=PSXCUvWUyRDM9D4zTbb3CsA0S1U+CPd9ugv3NE3tQVSwFrsfoHsc6i7RNt/caZ6/Zs
         H1ro4ejFyxsV4jTv6R7x8UoNDLNi5L/JkJnXu7P4R95V1jbm25Z4eMnRTUSj5KUiJPlF
         SQNsJm/79qN4w+oDmGO0EuOHL/8MGndsYiCyGwauPm8K+FlziCnOh56hJmPJJOslqU6r
         93rPDiKMCod9UrHZ27girh9MUBjIdrM5EGgV45LLFWPYH3q60rw9ya5mdd4fUtiGq9sc
         glaU5cCS8LS4PnlNtssdnJk2YEQGpYxlfoXDs7Qj89RJFoS9o8iPrBJ7aWaMvSmlZLdn
         tywQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u0B4ksPDdJN5zf1BQC9bSm9dYs49x4rlAlkFkIms6VA=;
        b=ADYppjWqknAZiSODRzWjOuLNJfXTC1NqNLJMsKBgaoSKU26Hk93iE8NcBer1gUgyia
         ud+3vv13V+rD5ffWQuldhKH8GAtXgCA489UPCnCJnSXZfabQZs4yWtFewPp9q35Ba1w8
         +of88gcIhWrP6iolrf8D6PQ61xP+QfDQoVbU9R6wP2m60oLU+a3qsLs+35g3hRpCTHcf
         8nqXXCEZjypApL5i98qdX2hzXm8jyeMZB3VuaPi/gubKsbHKtJblqNcoW4evE/yAOUSN
         okngMj0UISIGPPpilksh/b9K6ZA6+x/bI4wXvt0vGDk/wg7j8HYuQGOj9fwDXa8u2fFR
         ZYnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533u1vll9vkYzopLrROOS9A9fTMJ1GPn7nogxyKo8l8EYCMsC0oQ
	zzOvniA0PLa7EKQWzxbLXhw=
X-Google-Smtp-Source: ABdhPJxiMcA9PYQEEEMyAM4iMEnfbmGnVWJbb06PgG3bgpHwqNstvu++0+6JxGLk1QnlOeqWdg/erQ==
X-Received: by 2002:a7b:cb84:: with SMTP id m4mr1063356wmi.157.1606365896173;
        Wed, 25 Nov 2020 20:44:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2348:: with SMTP id j69ls270155wmj.0.gmail; Wed, 25 Nov
 2020 20:44:55 -0800 (PST)
X-Received: by 2002:a05:600c:2209:: with SMTP id z9mr1122438wml.72.1606365895294;
        Wed, 25 Nov 2020 20:44:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606365895; cv=none;
        d=google.com; s=arc-20160816;
        b=Ox2kxe3vpVY5CNE8HUQXFTrJTrz86RlM8x/iTE/KEMn0S3uJWLJ3lnFhbkGbfdVvvP
         WcceH3TmGdNhDt1+14YJGRvNoXhKt6UKxVtGl+3IcR/IsAWJtSNuObQrQGR/qZ5BUzuB
         1QksDetfQ0M66wIpk/otgwCwWgScbzdQ7D4D9cdUHEohOGYNaitjhvebOvyJyXCATNwX
         kG5/ZWAAn28BpRGe84hGlaUKwXc/jL5A2aDtNyVTnSTjKdHW3CGsU1JRXjhcPzTN5G7f
         HDUtYx7ky0f1knLEMke0MaLvxYHqnwvjqwpv4el1cR3AUvc5hm0c2nGs/MtZQ3LiBAtQ
         xYOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=m4GPv/KrxL/EKHDV5VuB3uSSYTmTjv1zYqG7ehiPM7Y=;
        b=vLYWf1CEy58dWjKmcZaJJ2oSIJ5C/BbcMvHhSVkV5qaoiJWhS/TQwFUDOooNVnjYhU
         L03ccf7cJoyj73LfH3tREwq7PE/EBV8DLxJiHT5i7DqugGdepVX4e0DztOVw0OMs2VY2
         tjMGeZ/+GFvLRaFidsKVLPDIxyo/PslT8PgKvwhNfVICho/eQu54GUtBaOEhXWeVBLDR
         xLU0nRv9mOX498egR8QDWMEweGSFURlBfxMFCDJhPMPYsk0Tv968ctlRi+09XdVl/bJx
         5QRUpMDEU3KSD6aHL2WcXEAPpwdI4UIlPd1rFdGFGtaFh/skcHz+t0JtZbmBN3+QOCPM
         OIcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=rHAcqdKB;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id o187si163236wma.2.2020.11.25.20.44.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2020 20:44:55 -0800 (PST)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62c as permitted sender) client-ip=2a00:1450:4864:20::62c;
Received: by mail-ej1-x62c.google.com with SMTP id o9so1027166ejg.1
        for <clang-built-linux@googlegroups.com>; Wed, 25 Nov 2020 20:44:55 -0800 (PST)
X-Received: by 2002:a17:906:bd2:: with SMTP id y18mr1040957ejg.503.1606365894859;
 Wed, 25 Nov 2020 20:44:54 -0800 (PST)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Thu, 26 Nov 2020 10:14:43 +0530
Message-ID: <CA+G9fYt0qHxUty2qt7_9_YTOZamdtknhddbsi5gc3PDy0PvZ5A@mail.gmail.com>
Subject: [stable 4.9] PANIC: double fault, error_code: 0x0 - clang boot failed
 on x86_64
To: linux-stable <stable@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	lkft-triage@lists.linaro.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, x86@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=rHAcqdKB;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Linaro recently started building and testing with stable branches with clang.
Stable 4.9 branch kernel built with clang 10 boot crashed on x86 and qemu_x86.
We do not have base line results to compare with.

steps to build and boot:
# build kernel with tuxmake
# sudo pip3 install -U tuxmake
# tuxmake --runtime docker --target-arch x86 --toolchain clang-10
--kconfig defconfig --kconfig-add
https://builds.tuxbuild.com/1kgtX7QEDmhvj6OfbZBdlGaEple/config
# boot qemu_x86_64
# /usr/bin/qemu-system-x86_64 -cpu host -enable-kvm -nographic -net
nic,model=virtio,macaddr=DE:AD:BE:EF:66:14 -net tap -m 1024 -monitor
none -kernel kernel/bzImage --append "root=/dev/sda  rootwait
console=ttyS0,115200" -hda
rootfs/rpb-console-image-lkft-intel-corei7-64-20201022181159-3085.rootfs.ext4
-m 4096 -smp 4 -nographic

Crash log:
---------------
[   14.121499] Freeing unused kernel memory: 1896K
[   14.126962] random: fast init done
[   14.206005] PANIC: double fault, error_code: 0x0
[   14.210633] CPU: 1 PID: 1 Comm: systemd Not tainted 4.9.246-rc1 #2
[   14.216809] Hardware name: Supermicro SYS-5019S-ML/X11SSH-F, BIOS
2.2 05/23/2018
[   14.224196] task: ffff88026e2c0000 task.stack: ffffc90000020000
[   14.230105] RIP: 0010:[<ffffffff8117ec2b>]  [<ffffffff8117ec2b>]
proc_dostring+0x13b/0x1e0
[   14.238374] RSP: 0018:000000000000000c  EFLAGS: 00010297
[   14.243676] RAX: 00005638939fb850 RBX: 000000000000000c RCX: 00005638939fb850
[   14.250799] RDX: 000000000000000c RSI: 0000000000000000 RDI: 000000000000007f
[   14.257925] RBP: ffffc90000023d98 R08: ffffc90000023ef8 R09: 00005638939fb850
[   14.265049] R10: 0000000000000000 R11: ffffffff8117f9e0 R12: ffffffff82479cf0
[   14.272171] R13: ffffc90000023ef8 R14: ffffc90000023dd8 R15: 000000000000007f
[   14.279298] FS:  00007f57fbce8840(0000) GS:ffff880277880000(0000)
knlGS:0000000000000000
[   14.287384] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   14.293120] CR2: fffffffffffffff8 CR3: 000000026d58a000 CR4: 0000000000360670
[   14.300243] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[   14.307368] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[   14.314491] Stack:
[   14.316504] Call Trace:
[   14.318955] Code: c3 49 8b 10 31 f6 48 01 da 49 89 10 49 83 3e 00
74 49 41 83 c7 ff 49 63 ff 4c 89 c9 0f 1f 40 00 48 39 fe 73 36 48 89
c8 48 89 dc <e8> b0 9d 3a 00 85 c0 0f 85 8c 00 00 00 84 d2 74 1f 80 fa
0a 74
[   14.338906] Kernel panic - not syncing: Machine halted.
[   14.344123] CPU: 1 PID: 1 Comm: systemd Not tainted 4.9.246-rc1 #2
[   14.350291] Hardware name: Supermicro SYS-5019S-ML/X11SSH-F, BIOS
2.2 05/23/2018
[   14.357677]  ffff880277888e80 ffffffff81518ae9 ffff880277888e98
ffffffff82971a10
[   14.365129]  000000000000000f 0000000000000000 0000000000000086
ffffffff820c5d57
[   14.372584]  ffff880277888f08 ffffffff81175736 0000003000000008
ffff880277888f18
[   14.380038] Call Trace:
[   14.382481]  <#DF> [   14.384406]  [<ffffffff81518ae9>] dump_stack+0xa9/0x100
[   14.389641]  [<ffffffff81175736>] panic+0xe6/0x2a0
[   14.394432]  [<ffffffff810c9911>] df_debug+0x31/0x40
[   14.399389]  [<ffffffff81096312>] do_double_fault+0x102/0x140
[   14.405128]  [<ffffffff81ccc987>] double_fault+0x27/0x30
[   14.410440]  [<ffffffff8117f9e0>] ? proc_put_long+0xc0/0xc0
[   14.416004]  [<ffffffff8117ec2b>] ? proc_dostring+0x13b/0x1e0
[   14.421739]  <EOE> [   14.423703] Kernel Offset: disabled
[   14.427209] ---[ end Kernel panic - not syncing: Machine halted.

Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>

full test log,
https://lkft.validation.linaro.org/scheduler/job/1978901#L916
https://lkft.validation.linaro.org/scheduler/job/1980839#L578

-- 
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYt0qHxUty2qt7_9_YTOZamdtknhddbsi5gc3PDy0PvZ5A%40mail.gmail.com.
