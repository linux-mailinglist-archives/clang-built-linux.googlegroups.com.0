Return-Path: <clang-built-linux+bncBCQPF57GUQHBB35TSWDQMGQEIYRERMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB673BE3B9
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Jul 2021 09:38:24 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id x192-20020a677cc90000b0290289c309d3b2sf666984vsc.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 00:38:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625643503; cv=pass;
        d=google.com; s=arc-20160816;
        b=KrYQ73ujQrEETq4suYykgDqxHFT+6fHkx6FAGr302a/omeP7+jYHEVPFyaULfQ0Uzn
         j5hPmGCQ8ij6WfdtXJsO8isypoe7Ap2d2Rvl9lMmSp8bamAhcOKlnjgiXmdgxVBN1aTB
         YyqkYOqGEuv3mDTQOHoCu2IAq/5yEu6YsBzUBo/B4AU8a44mtseZjH9Y6c+OmrKpDbFE
         mOo1AwvR/CL57hjBKezgTw4hANVrKXl6dSGDR7Q/zxIEtO2D/2xzLb/QtoQThWVsa/ET
         j2K7KG+AdvXFuaSsWhyTrYqHhLwKUS6cDT9WW+KgBsbp9/Eoxbv20B/qF0aJH+I5ZLrW
         WS5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=Vv5htOuRPRtEfh7eRMlF/Ngqq/zbKv2x/jPjAkAF7q8=;
        b=GWU3XPdvbL4jSlZRS+US+MhSdpHGICkZv9cxx21CLbd9QcFSPcDN0arnao1BzKvV3/
         H9G0SiGPmC1WCC3G8rtvUHIIXAZeQ0VGi7Wi5mgx1TDsUJCJXm/6Iput93+H639fGw5Q
         2cftYgV1F39IuBh9EGSll4mGB3vTfLhJq9kMebdUAENApjyeRdp885m8NTtadj/2VG7I
         6EWHU9nx3w9CW9K3n9/Mbtf5aZhGL/GavrOO2CIsN0F6skMM7KrnZyZ1TOZ7Ml/6xQN/
         dvRPPcGREdbFR0Q1ylgn6v/RZ17Lg5IUZYXMSgdnNcAbQLZE6P3OAsiIhR9L67qVlwkF
         HjRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 37lnlyakbaeuz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) smtp.mailfrom=37lnlYAkbAEUz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vv5htOuRPRtEfh7eRMlF/Ngqq/zbKv2x/jPjAkAF7q8=;
        b=OT1Dtp6yg3zZnLkPYtMSH9k7Zjo1cFVl6cLJHxQCNZrFq49Rlq42Je2nM/pg6tgnFC
         xDGd+dfa+rcwWFTJ2aPVvp/BrruD9+7bbJolyvMKy8oYceyuXdWvA87B+SZo27BaHCyN
         BUrdIVX8NyDrVHNO+7XwjKep1Qm+duZluSsoxjl87/bue4P8Mn5nyvMXk7A74Z9CiSv0
         0g4RSq5cFzx8LJ3r/tjeHIokusxI7rSoTlbO2iX71IVmC/hygPOCpD0FUKZrnZMnqbkY
         Etl2/kROduDhcUj5oUT3LwAth8Tuk38MTDSxXFO2t+lWm02xoufNkGRdvbG9BXrbBinr
         Jb0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Vv5htOuRPRtEfh7eRMlF/Ngqq/zbKv2x/jPjAkAF7q8=;
        b=l0gFHsAf5yF06EwuY5zm2Dk65EOUYK4lARgAGCcoh5/UDvKhfIbvFek6JS2zotSwff
         zmrZctyI+FmNyuTGAjmSo+7thhRQZIYtHT1eiPsbclsk60Lj6pMhLAOmML1k8m0eNE0s
         ktAdQTcLDZyBvQ6UNJAzFuVsTlaXlhbOHVob60gmwqx0/mJ+v/sa9VSPHxgmtDS9Hasm
         gzXfw3CAaVMFc+1U/r1ynE6QaL3PyCxbS2SbeOKobmN5KPoqokBbl/3CFCyBju2587NG
         jG6myvwDOYpjgBa8gYRzkKsaGvEKG0wtREdAoX8uM+DxqHN772+asYiZSqubfI99wqsP
         QOpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318aHtFjZO0mZ+OBQKICQw7n1uGhMF+ZNl+jmQZJd9mRVTQ7O05
	RNdZXPPmg+fo5EjRyDnYzVE=
X-Google-Smtp-Source: ABdhPJyWlxNMEH7mr6cBTusyPVFJAtErDdMXZh4wtl8sURWzASOG7964GB4olXrV0R+vBGNhH7/+TQ==
X-Received: by 2002:ab0:3382:: with SMTP id y2mr20938351uap.105.1625643503636;
        Wed, 07 Jul 2021 00:38:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6a86:: with SMTP id f128ls3211811vsc.3.gmail; Wed, 07
 Jul 2021 00:38:23 -0700 (PDT)
X-Received: by 2002:a67:f855:: with SMTP id b21mr19809908vsp.32.1625643503006;
        Wed, 07 Jul 2021 00:38:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625643503; cv=none;
        d=google.com; s=arc-20160816;
        b=oY0dzro1LgaNK49Hlzawd8Plrei8XFy/RejxtWnh+TW1nFwGyp3b8+OnVdIMLzY/zn
         r6frkBd92if7sWEvo+XPD+4jdDBpsRjIQh6tq+HRpRHl2nhrs3dz0H5nXOEP0V/c2kw5
         1K7nXfV9BPbgNrPRP35ym288uB+002jY/PAYholwfAHDMRyCaQOPy77i1QEYPiwNk9Ah
         s6BaUt8By98tpQeFNohdV4+xsqglDpTmbKYtZnALB94vFv0ekTQo5AJPSY9uFswp5Rt4
         JxPXVToHKgZ6hVPuQACQ1qHapZiE2SYvDHd5xa5Qd7zmvSZcMYqPaCkYbB8BMbDv37lU
         +sLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=N76+dUNYg3Sb1xMk1YpvkXeWO0CUvzwTYDLa3sStP8k=;
        b=leVtNPQEzv2SJy5xKwKN6dCsEyDrdwZAt0mW38l8goKPdAK91GBODBEOiVDsXdPfRa
         1OjTGH5xu2mLqLNvW++fznQjqkd1rcaUMZ4UeI6qdmRej0872m3MQujSlQPGB4oonNAq
         //umlDt5k7STFqDn2k7QEo7erx8Sy6988/DgCHiZjrtG/R2sHaUJxuIUH1Snjtz3RVi0
         JXfIcn6RR3d2cHEZSRPiS2PDs91LhciokdY+Pxx4cyKKzDLak95HwSy7qtFXpYjR5Ggl
         nY1otLDNN8DCTJUTaoPh5IiT6Yd43LSu4f+kR4mT/rug71gSD4bA/bEdGglNQdHnKYHc
         bmrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 37lnlyakbaeuz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) smtp.mailfrom=37lnlYAkbAEUz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com. [209.85.166.69])
        by gmr-mx.google.com with ESMTPS id l6si2159320vkg.0.2021.07.07.00.38.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 00:38:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of 37lnlyakbaeuz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) client-ip=209.85.166.69;
Received: by mail-io1-f69.google.com with SMTP id v21-20020a5d90550000b0290439ea50822eso1073247ioq.9
        for <clang-built-linux@googlegroups.com>; Wed, 07 Jul 2021 00:38:22 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a92:dacd:: with SMTP id o13mr12951378ilq.67.1625643502437;
 Wed, 07 Jul 2021 00:38:22 -0700 (PDT)
Date: Wed, 07 Jul 2021 00:38:22 -0700
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <0000000000007e902b05c6839f15@google.com>
Subject: [syzbot] upstream boot error: possible deadlock in __fs_reclaim_acquire
From: syzbot <syzbot+011a6877b040ed380193@syzkaller.appspotmail.com>
To: akpm@linux-foundation.org, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org, linux-mm@kvack.org, 
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 37lnlyakbaeuz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.69 as permitted sender) smtp.mailfrom=37lnlYAkbAEUz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
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

Hello,

syzbot found the following issue on:

HEAD commit:    79160a60 Merge tag 'usb-5.14-rc1' of git://git.kernel.org/..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=11e4978c300000
kernel config:  https://syzkaller.appspot.com/x/.config?x=644a2e484726c217
dashboard link: https://syzkaller.appspot.com/bug?extid=011a6877b040ed380193
compiler:       Debian clang version 11.0.1-2

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+011a6877b040ed380193@syzkaller.appspotmail.com

usbcore: registered new interface driver spca505
usbcore: registered new interface driver spca506
usbcore: registered new interface driver spca508
usbcore: registered new interface driver spca561
usbcore: registered new interface driver spca1528
usbcore: registered new interface driver sq905
usbcore: registered new interface driver sq905c
usbcore: registered new interface driver sq930x
usbcore: registered new interface driver sunplus
usbcore: registered new interface driver stk014
usbcore: registered new interface driver stk1135
usbcore: registered new interface driver stv0680
usbcore: registered new interface driver t613
usbcore: registered new interface driver gspca_topro
usbcore: registered new interface driver touptek
usbcore: registered new interface driver tv8532
usbcore: registered new interface driver vc032x
usbcore: registered new interface driver vicam
usbcore: registered new interface driver xirlink-cit
usbcore: registered new interface driver gspca_zc3xx
usbcore: registered new interface driver ALi m5602
usbcore: registered new interface driver STV06xx
usbcore: registered new interface driver gspca_gl860
usbcore: registered new interface driver Philips webcam
usbcore: registered new interface driver airspy
usbcore: registered new interface driver hackrf
usbcore: registered new interface driver msi2500
cpia2: V4L-Driver for Vision CPiA2 based cameras v3.0.1
usbcore: registered new interface driver cpia2
au0828: au0828 driver loaded
usbcore: registered new interface driver au0828
usbcore: registered new interface driver hdpvr
usbcore: registered new interface driver pvrusb2
pvrusb2: V4L in-tree version:Hauppauge WinTV-PVR-USB2 MPEG2 Encoder/Tuner
pvrusb2: Debug mask is 31 (0x1f)
usbcore: registered new interface driver stk1160
usbcore: registered new interface driver cx231xx
usbcore: registered new interface driver tm6000
usbcore: registered new interface driver em28xx
em28xx: Registered (Em28xx v4l2 Extension) extension
em28xx: Registered (Em28xx Audio Extension) extension
em28xx: Registered (Em28xx dvb Extension) extension
em28xx: Registered (Em28xx Input Extension) extension
usbcore: registered new interface driver usbtv
usbcore: registered new interface driver go7007
usbcore: registered new interface driver go7007-loader
usbcore: registered new interface driver Abilis Systems as10x usb driver
vivid-000: using single planar format API

======================================================
WARNING: possible circular locking dependency detected
5.13.0-syzkaller #0 Not tainted
------------------------------------------------------
swapper/0/1 is trying to acquire lock:
ffffffff8c7d6ea0 (fs_reclaim){+.+.}-{0:0}, at: __fs_reclaim_acquire+0x0/0x30 mm/page_alloc.c:4221

but task is already holding lock:
ffff8880b9c4d0c8 (lock#2){-.-.}-{2:2}, at: local_lock_acquire+0x7/0x130 include/linux/local_lock_internal.h:41

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #2 (lock#2){-.-.}-{2:2}:
       lock_acquire+0x182/0x4a0 kernel/locking/lockdep.c:5625
       local_lock_acquire+0x23/0x130 include/linux/local_lock_internal.h:42
       rmqueue_pcplist+0x10c/0x4d0 mm/page_alloc.c:3674
       rmqueue+0x1eb4/0x22e0 mm/page_alloc.c:3712
       get_page_from_freelist+0x4b3/0xa30 mm/page_alloc.c:4174
       __alloc_pages+0x26c/0x5f0 mm/page_alloc.c:5385
       alloc_page_interleave+0x22/0x1c0 mm/mempolicy.c:2119
       stack_depot_save+0x361/0x490 lib/stackdepot.c:303
       kasan_save_stack+0x3e/0x50 mm/kasan/common.c:40
       kasan_record_aux_stack+0xee/0x120 mm/kasan/generic.c:348
       insert_work+0x54/0x400 kernel/workqueue.c:1332
       __queue_work+0x928/0xc60 kernel/workqueue.c:1498
       queue_delayed_work_on+0x11b/0x200 kernel/workqueue.c:1681
       queue_delayed_work include/linux/workqueue.h:522 [inline]
       hub_activate+0x4d4/0x1c10 drivers/usb/core/hub.c:1081
       hub_configure+0x1a7e/0x26a0 drivers/usb/core/hub.c:1683
       hub_probe+0x84a/0x9d0 drivers/usb/core/hub.c:1885
       usb_probe_interface+0x633/0xb40 drivers/usb/core/driver.c:396
       call_driver_probe+0x96/0x250 drivers/base/dd.c:517
       really_probe+0x223/0x9c0 drivers/base/dd.c:595
       __driver_probe_device+0x1f8/0x3e0 drivers/base/dd.c:747
       driver_probe_device+0x50/0x240 drivers/base/dd.c:777
       __device_attach_driver+0x1e1/0x3b0 drivers/base/dd.c:894
       bus_for_each_drv+0x16a/0x1f0 drivers/base/bus.c:427
       __device_attach+0x301/0x560 drivers/base/dd.c:965
       bus_probe_device+0xb8/0x1f0 drivers/base/bus.c:487
       device_add+0x1295/0x1790 drivers/base/core.c:3352
       usb_set_configuration+0x1a86/0x2100 drivers/usb/core/message.c:2170
       usb_generic_driver_probe+0x83/0x140 drivers/usb/core/generic.c:238
       usb_probe_device+0x13a/0x260 drivers/usb/core/driver.c:293
       call_driver_probe+0x96/0x250 drivers/base/dd.c:517
       really_probe+0x223/0x9c0 drivers/base/dd.c:595
       __driver_probe_device+0x1f8/0x3e0 drivers/base/dd.c:747
       driver_probe_device+0x50/0x240 drivers/base/dd.c:777
       __device_attach_driver+0x1e1/0x3b0 drivers/base/dd.c:894
       bus_for_each_drv+0x16a/0x1f0 drivers/base/bus.c:427
       __device_attach+0x301/0x560 drivers/base/dd.c:965
       bus_probe_device+0xb8/0x1f0 drivers/base/bus.c:487
       device_add+0x1295/0x1790 drivers/base/core.c:3352
       usb_new_device+0x108a/0x1940 drivers/usb/core/hub.c:2559
       register_root_hub+0x214/0x550 drivers/usb/core/hcd.c:1010
       usb_add_hcd+0xa24/0x1490 drivers/usb/core/hcd.c:2939
       dummy_hcd_probe+0x155/0x2b0 drivers/usb/gadget/udc/dummy_hcd.c:2675
       platform_probe+0x130/0x1b0 drivers/base/platform.c:1427
       call_driver_probe+0x96/0x250 drivers/base/dd.c:517
       really_probe+0x223/0x9c0 drivers/base/dd.c:595
       __driver_probe_device+0x1f8/0x3e0 drivers/base/dd.c:747
       driver_probe_device+0x50/0x240 drivers/base/dd.c:777
       __device_attach_driver+0x1e1/0x3b0 drivers/base/dd.c:894
       bus_for_each_drv+0x16a/0x1f0 drivers/base/bus.c:427
       __device_attach+0x301/0x560 drivers/base/dd.c:965
       bus_probe_device+0xb8/0x1f0 drivers/base/bus.c:487
       device_add+0x1295/0x1790 drivers/base/core.c:3352
       platform_device_add+0x601/0x7f0 drivers/base/platform.c:728
       constant_test_bit arch/x86/include/asm/bitops.h:207 [inline]
       test_bit include/asm-generic/bitops/instrumented-non-atomic.h:135 [inline]
       init+0x8a7/0x106a arch/x86/crypto/camellia_aesni_avx_glue.c:107
       do_one_initcall+0x1a7/0x400 init/main.c:1280
       do_initcall_level+0x14a/0x1f5 init/main.c:1353
       do_initcalls+0x4b/0x8c init/main.c:1369
       kernel_init_freeable+0x3f1/0x57e init/main.c:1591
       kernel_init+0x19/0x2a0 init/main.c:1483
       ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:295

-> #1 (&pool->lock){-.-.}-{2:2}:
       lock_acquire+0x182/0x4a0 kernel/locking/lockdep.c:5625
       __raw_spin_lock include/linux/spinlock_api_smp.h:142 [inline]
       _raw_spin_lock+0x2a/0x40 kernel/locking/spinlock.c:151
       __queue_work+0x593/0xc60 kernel/workqueue.c:1451
       queue_work_on+0x111/0x200 kernel/workqueue.c:1525
       free_thread_stack kernel/fork.c:292 [inline]
       release_task_stack+0x195/0x260 kernel/fork.c:432
       finish_task_switch+0x27f/0x630 kernel/sched/core.c:4595
       context_switch kernel/sched/core.c:4686 [inline]
       __schedule+0xc0f/0x11f0 kernel/sched/core.c:5940
       preempt_schedule_irq+0xe3/0x190 kernel/sched/core.c:6328
       irqentry_exit+0x56/0x90 kernel/entry/common.c:427
       asm_sysvec_apic_timer_interrupt+0x12/0x20 arch/x86/include/asm/idtentry.h:638
       lock_release+0x543/0x7b0 kernel/locking/lockdep.c:5649
       might_alloc include/linux/sched/mm.h:198 [inline]
       slab_pre_alloc_hook mm/slab.h:485 [inline]
       slab_alloc_node mm/slub.c:2891 [inline]
       slab_alloc mm/slub.c:2978 [inline]
       kmem_cache_alloc+0x3a/0x340 mm/slub.c:2983
       kmem_cache_zalloc include/linux/slab.h:711 [inline]
       __kernfs_new_node+0xdb/0x720 fs/kernfs/dir.c:583
       kernfs_new_node+0x95/0x160 fs/kernfs/dir.c:645
       __kernfs_create_file+0x45/0x2e0 fs/kernfs/file.c:985
       sysfs_add_file_mode_ns+0x2fe/0x3c0 fs/sysfs/file.c:317
       create_files fs/sysfs/group.c:64 [inline]
       internal_create_group+0x4d7/0xd20 fs/sysfs/group.c:149
       kernel_add_sysfs_param+0xe8/0x126 kernel/params.c:796
       param_sysfs_builtin+0x145/0x1b9 kernel/params.c:833
       param_sysfs_init+0x68/0x6c kernel/params.c:952
       do_one_initcall+0x1a7/0x400 init/main.c:1280
       do_initcall_level+0x14a/0x1f5 init/main.c:1353
       do_initcalls+0x4b/0x8c init/main.c:1369
       kernel_init_freeable+0x3f1/0x57e init/main.c:1591
       kernel_init+0x19/0x2a0 init/main.c:1483
       ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:295

-> #0 (fs_reclaim){+.+.}-{0:0}:
       check_prev_add kernel/locking/lockdep.c:3051 [inline]
       check_prevs_add+0x4f9/0x5b30 kernel/locking/lockdep.c:3174
       validate_chain kernel/locking/lockdep.c:3789 [inline]
       __lock_acquire+0x4476/0x6100 kernel/locking/lockdep.c:5015
       lock_acquire+0x182/0x4a0 kernel/locking/lockdep.c:5625
       __fs_reclaim_acquire+0x20/0x30 mm/page_alloc.c:4563
       fs_reclaim_acquire+0x59/0xf0 mm/page_alloc.c:4577
       prepare_alloc_pages+0x151/0x5a0 mm/page_alloc.c:5175
       __alloc_pages+0x14d/0x5f0 mm/page_alloc.c:5374
       alloc_page_interleave+0x22/0x1c0 mm/mempolicy.c:2119
       stack_depot_save+0x361/0x490 lib/stackdepot.c:303
       save_stack+0xf9/0x1f0 mm/page_owner.c:120
       __set_page_owner+0x42/0x2f0 mm/page_owner.c:181
       prep_new_page mm/page_alloc.c:2444 [inline]
       __alloc_pages_bulk+0x9f2/0x1090 mm/page_alloc.c:5312
       alloc_pages_bulk_array_node include/linux/gfp.h:557 [inline]
       vm_area_alloc_pages mm/vmalloc.c:2793 [inline]
       __vmalloc_area_node mm/vmalloc.c:2863 [inline]
       __vmalloc_node_range+0x3ad/0x7f0 mm/vmalloc.c:2966
       __vmalloc_node mm/vmalloc.c:3015 [inline]
       vzalloc+0x75/0x80 mm/vmalloc.c:3085
       tpg_alloc+0x194/0x770 drivers/media/common/v4l2-tpg/v4l2-tpg-core.c:129
       vivid_create_instance+0x2035/0xac90 drivers/media/test-drivers/vivid/vivid-core.c:1770
       vivid_probe+0x9a/0x140 drivers/media/test-drivers/vivid/vivid-core.c:2001
       platform_probe+0x130/0x1b0 drivers/base/platform.c:1427
       call_driver_probe+0x96/0x250 drivers/base/dd.c:517
       really_probe+0x223/0x9c0 drivers/base/dd.c:595
       __driver_probe_device+0x1f8/0x3e0 drivers/base/dd.c:747
       driver_probe_device+0x50/0x240 drivers/base/dd.c:777
       __driver_attach+0x2ba/0x520 drivers/base/dd.c:1136
       bus_for_each_dev+0x168/0x1d0 drivers/base/bus.c:301
       bus_add_driver+0x324/0x5e0 drivers/base/bus.c:618
       driver_register+0x2e9/0x3e0 drivers/base/driver.c:171
       vivid_init+0x39/0x67 drivers/media/test-drivers/vivid/vivid-core.c:2131
       do_one_initcall+0x1a7/0x400 init/main.c:1280
       do_initcall_level+0x14a/0x1f5 init/main.c:1353
       do_initcalls+0x4b/0x8c init/main.c:1369
       kernel_init_freeable+0x3f1/0x57e init/main.c:1591
       kernel_init+0x19/0x2a0 init/main.c:1483
       ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:295

other info that might help us debug this:

Chain exists of:
  fs_reclaim --> &pool->lock --> lock#2

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(lock#2);
                               lock(&pool->lock);
                               lock(lock#2);
  lock(fs_reclaim);

 *** DEADLOCK ***

2 locks held by swapper/0/1:
 #0: ffffffff8d449f88 (&dev->mutex){....}-{3:3}, at: device_lock include/linux/device.h:754 [inline]
 #0: ffffffff8d449f88 (&dev->mutex){....}-{3:3}, at: __device_driver_lock drivers/base/dd.c:1028 [inline]
 #0: ffffffff8d449f88 (&dev->mutex){....}-{3:3}, at: __driver_attach+0x2ae/0x520 drivers/base/dd.c:1135
 #1: ffff8880b9c4d0c8 (lock#2){-.-.}-{2:2}, at: local_lock_acquire+0x7/0x130 include/linux/local_lock_internal.h:41

stack backtrace:
CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.13.0-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:79 [inline]
 dump_stack_lvl+0x1ae/0x29f lib/dump_stack.c:96
 print_circular_bug+0xb17/0xdc0 kernel/locking/lockdep.c:2009
 check_noncircular+0x2cc/0x390 kernel/locking/lockdep.c:2131
 check_prev_add kernel/locking/lockdep.c:3051 [inline]
 check_prevs_add+0x4f9/0x5b30 kernel/locking/lockdep.c:3174
 validate_chain kernel/locking/lockdep.c:3789 [inline]
 __lock_acquire+0x4476/0x6100 kernel/locking/lockdep.c:5015
 lock_acquire+0x182/0x4a0 kernel/locking/lockdep.c:5625
 __fs_reclaim_acquire+0x20/0x30 mm/page_alloc.c:4563
 fs_reclaim_acquire+0x59/0xf0 mm/page_alloc.c:4577
 prepare_alloc_pages+0x151/0x5a0 mm/page_alloc.c:5175
 __alloc_pages+0x14d/0x5f0 mm/page_alloc.c:5374
 alloc_page_interleave+0x22/0x1c0 mm/mempolicy.c:2119
 stack_depot_save+0x361/0x490 lib/stackdepot.c:303
 save_stack+0xf9/0x1f0 mm/page_owner.c:120
 __set_page_owner+0x42/0x2f0 mm/page_owner.c:181
 prep_new_page mm/page_alloc.c:2444 [inline]
 __alloc_pages_bulk+0x9f2/0x1090 mm/page_alloc.c:5312
 alloc_pages_bulk_array_node include/linux/gfp.h:557 [inline]
 vm_area_alloc_pages mm/vmalloc.c:2793 [inline]
 __vmalloc_area_node mm/vmalloc.c:2863 [inline]
 __vmalloc_node_range+0x3ad/0x7f0 mm/vmalloc.c:2966
 __vmalloc_node mm/vmalloc.c:3015 [inline]
 vzalloc+0x75/0x80 mm/vmalloc.c:3085
 tpg_alloc+0x194/0x770 drivers/media/common/v4l2-tpg/v4l2-tpg-core.c:129
 vivid_create_instance+0x2035/0xac90 drivers/media/test-drivers/vivid/vivid-core.c:1770
 vivid_probe+0x9a/0x140 drivers/media/test-drivers/vivid/vivid-core.c:2001
 platform_probe+0x130/0x1b0 drivers/base/platform.c:1427
 call_driver_probe+0x96/0x250 drivers/base/dd.c:517
 really_probe+0x223/0x9c0 drivers/base/dd.c:595
 __driver_probe_device+0x1f8/0x3e0 drivers/base/dd.c:747
 driver_probe_device+0x50/0x240 drivers/base/dd.c:777
 __driver_attach+0x2ba/0x520 drivers/base/dd.c:1136
 bus_for_each_dev+0x168/0x1d0 drivers/base/bus.c:301
 bus_add_driver+0x324/0x5e0 drivers/base/bus.c:618
 driver_register+0x2e9/0x3e0 drivers/base/driver.c:171
 vivid_init+0x39/0x67 drivers/media/test-drivers/vivid/vivid-core.c:2131
 do_one_initcall+0x1a7/0x400 init/main.c:1280
 do_initcall_level+0x14a/0x1f5 init/main.c:1353
 do_initcalls+0x4b/0x8c init/main.c:1369
 kernel_init_freeable+0x3f1/0x57e init/main.c:1591
 kernel_init+0x19/0x2a0 init/main.c:1483
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:295
BUG: sleeping function called from invalid context at mm/page_alloc.c:5178
in_atomic(): 0, irqs_disabled(): 1, non_block: 0, pid: 1, name: swapper/0
INFO: lockdep is turned off.
irq event stamp: 876048
hardirqs last  enabled at (876047): [<ffffffff89d9a17b>] __raw_spin_unlock_irqrestore include/linux/spinlock_api_smp.h:160 [inline]
hardirqs last  enabled at (876047): [<ffffffff89d9a17b>] _raw_spin_unlock_irqrestore+0x8b/0x120 kernel/locking/spinlock.c:191
hardirqs last disabled at (876048): [<ffffffff81be9b21>] __alloc_pages_bulk+0x801/0x1090 mm/page_alloc.c:5290
softirqs last  enabled at (875610): [<ffffffff814d647b>] invoke_softirq kernel/softirq.c:432 [inline]
softirqs last  enabled at (875610): [<ffffffff814d647b>] __irq_exit_rcu+0x21b/0x260 kernel/softirq.c:636
softirqs last disabled at (875603): [<ffffffff814d647b>] invoke_softirq kernel/softirq.c:432 [inline]
softirqs last disabled at (875603): [<ffffffff814d647b>] __irq_exit_rcu+0x21b/0x260 kernel/softirq.c:636
CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.13.0-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:79 [inline]
 dump_stack_lvl+0x1ae/0x29f lib/dump_stack.c:96
 ___might_sleep+0x4e5/0x6b0 kernel/sched/core.c:9153
 prepare_alloc_pages+0x1c0/0x5a0 mm/page_alloc.c:5178
 __alloc_pages+0x14d/0x5f0 mm/page_alloc.c:5374
 alloc_page_interleave+0x22/0x1c0 mm/mempolicy.c:2119
 stack_depot_save+0x361/0x490 lib/stackdepot.c:303
 save_stack+0xf9/0x1f0 mm/page_owner.c:120
 __set_page_owner+0x42/0x2f0 mm/page_owner.c:181
 prep_new_page mm/page_alloc.c:2444 [inline]
 __alloc_pages_bulk+0x9f2/0x1090 mm/page_alloc.c:5312
 alloc_pages_bulk_array_node include/linux/gfp.h:557 [inline]
 vm_area_alloc_pages mm/vmalloc.c:2793 [inline]
 __vmalloc_area_node mm/vmalloc.c:2863 [inline]
 __vmalloc_node_range+0x3ad/0x7f0 mm/vmalloc.c:2966
 __vmalloc_node mm/vmalloc.c:3015 [inline]
 vzalloc+0x75/0x80 mm/vmalloc.c:3085
 tpg_alloc+0x194/0x770 drivers/media/common/v4l2-tpg/v4l2-tpg-core.c:129
 vivid_create_instance+0x2035/0xac90 drivers/media/test-drivers/vivid/vivid-core.c:1770
 vivid_probe+0x9a/0x140 drivers/media/test-drivers/vivid/vivid-core.c:2001
 platform_probe+0x130/0x1b0 drivers/base/platform.c:1427
 call_driver_probe+0x96/0x250 drivers/base/dd.c:517
 really_probe+0x223/0x9c0 drivers/base/dd.c:595
 __driver_probe_device+0x1f8/0x3e0 drivers/base/dd.c:747
 driver_probe_device+0x50/0x240 drivers/base/dd.c:777
 __driver_attach+0x2ba/0x520 drivers/base/dd.c:1136
 bus_for_each_dev+0x168/0x1d0 drivers/base/bus.c:301
 bus_add_driver+0x324/0x5e0 drivers/base/bus.c:618
 driver_register+0x2e9/0x3e0 drivers/base/driver.c:171
 vivid_init+0x39/0x67 drivers/media/test-drivers/vivid/vivid-core.c:2131
 do_one_initcall+0x1a7/0x400 init/main.c:1280
 do_initcall_level+0x14a/0x1f5 init/main.c:1353
 do_initcalls+0x4b/0x8c init/main.c:1369
 kernel_init_freeable+0x3f1/0x57e init/main.c:1591
 kernel_init+0x19/0x2a0 init/main.c:1483
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:295
vivid-000: CEC adapter cec0 registered for HDMI input 0
vivid-000: V4L2 capture device registered as video3
vivid-000: CEC adapter cec1 registered for HDMI output 0
vivid-000: V4L2 output device registered as video4
vivid-000: V4L2 capture device registered as vbi0, supports raw and sliced VBI
vivid-000: V4L2 output device registered as vbi1, supports raw and sliced VBI
vivid-000: V4L2 capture device registered as swradio0
vivid-000: V4L2 receiver device registered as radio0
vivid-000: V4L2 transmitter device registered as radio1
vivid-000: V4L2 metadata capture device registered as video5
vivid-000: V4L2 metadata output device registered as video6
vivid-000: V4L2 touch capture device registered as v4l-touch0
vivid-001: using multiplanar format API
vivid-001: CEC adapter cec2 registered for HDMI input 0
vivid-001: V4L2 capture device registered as video7
vivid-001: CEC adapter cec3 registered for HDMI output 0
vivid-001: V4L2 output device registered as video8
vivid-001: V4L2 capture device registered as vbi2, supports raw and sliced VBI
vivid-001: V4L2 output device registered as vbi3, supports raw and sliced VBI
vivid-001: V4L2 capture device registered as swradio1
vivid-001: V4L2 receiver device registered as radio2
vivid-001: V4L2 transmitter device registered as radio3
vivid-001: V4L2 metadata capture device registered as video9
vivid-001: V4L2 metadata output device registered as video10
vivid-001: V4L2 touch capture device registered as v4l-touch1
vivid-002: using single planar format API
vivid-002: CEC adapter cec4 registered for HDMI input 0
vivid-002: V4L2 capture device registered as video11
vivid-002: CEC adapter cec5 registered for HDMI output 0
vivid-002: V4L2 output device registered as video12
vivid-002: V4L2 capture device registered as vbi4, supports raw and sliced VBI
vivid-002: V4L2 output device registered as vbi5, supports raw and sliced VBI
vivid-002: V4L2 capture device registered as swradio2
vivid-002: V4L2 receiver device registered as radio4
vivid-002: V4L2 transmitter device registered as radio5
vivid-002: V4L2 metadata capture device registered as video13
vivid-002: V4L2 metadata output device registered as video14
vivid-002: V4L2 touch capture device registered as v4l-touch2
vivid-003: using multiplanar format API
vivid-003: CEC adapter cec6 registered for HDMI input 0
vivid-003: V4L2 capture device registered as video15
vivid-003: CEC adapter cec7 registered for HDMI output 0
vivid-003: V4L2 output device registered as video16
vivid-003: V4L2 capture device registered as vbi6, supports raw and sliced VBI
vivid-003: V4L2 output device registered as vbi7, supports raw and sliced VBI
vivid-003: V4L2 capture device registered as swradio3
vivid-003: V4L2 receiver device registered as radio6
vivid-003: V4L2 transmitter device registered as radio7
vivid-003: V4L2 metadata capture device registered as video17
vivid-003: V4L2 metadata output device registered as video18
vivid-003: V4L2 touch capture device registered as v4l-touch3
vivid-004: using single planar format API
vivid-004: CEC adapter cec8 registered for HDMI input 0
vivid-004: V4L2 capture device registered as video19
vivid-004: CEC adapter cec9 registered for HDMI output 0
vivid-004: V4L2 output device registered as video20
vivid-004: V4L2 capture device registered as vbi8, supports raw and sliced VBI
vivid-004: V4L2 output device registered as vbi9, supports raw and sliced VBI
vivid-004: V4L2 capture device registered as swradio4
vivid-004: V4L2 receiver device registered as radio8
vivid-004: V4L2 transmitter device registered as radio9
vivid-004: V4L2 metadata capture device registered as video21
vivid-004: V4L2 metadata output device registered as video22
vivid-004: V4L2 touch capture device registered as v4l-touch4
vivid-005: using multiplanar format API
vivid-005: CEC adapter cec10 registered for HDMI input 0
vivid-005: V4L2 capture device registered as video23
vivid-005: CEC adapter cec11 registered for HDMI output 0
vivid-005: V4L2 output device registered as video24
vivid-005: V4L2 capture device registered as vbi10, supports raw and sliced VBI
vivid-005: V4L2 output device registered as vbi11, supports raw and sliced VBI
vivid-005: V4L2 capture device registered as swradio5
vivid-005: V4L2 receiver device registered as radio10
vivid-005: V4L2 transmitter device registered as radio11
vivid-005: V4L2 metadata capture device registered as video25
vivid-005: V4L2 metadata output device registered as video26
vivid-005: V4L2 touch capture device registered as v4l-touch5
vivid-006: using single planar format API
vivid-006: CEC adapter cec12 registered for HDMI input 0
vivid-006: V4L2 capture device registered as video27
vivid-006: CEC adapter cec13 registered for HDMI output 0
vivid-006: V4L2 output device registered as video28
vivid-006: V4L2 capture device registered as vbi12, supports raw and sliced VBI
vivid-006: V4L2 output device registered as vbi13, supports raw and sliced VBI
vivid-006: V4L2 capture device registered as swradio6
vivid-006: V4L2 receiver device registered as radio12
vivid-006: V4L2 transmitter device registered as radio13
vivid-006: V4L2 metadata capture device registered as video29
vivid-006: V4L2 metadata output device registered as video30
vivid-006: V4L2 touch capture device registered as v4l-touch6
vivid-007: using multiplanar format API
vivid-007: CEC adapter cec14 registered for HDMI input 0
vivid-007: V4L2 capture device registered as video31
vivid-007: CEC adapter cec15 registered for HDMI output 0
vivid-007: V4L2 output device registered as video32
vivid-007: V4L2 capture device registered as vbi14, supports raw and sliced VBI
vivid-007: V4L2 output device registered as vbi15, supports raw and sliced VBI
vivid-007: V4L2 capture device registered as swradio7
vivid-007: V4L2 receiver device registered as radio14
vivid-007: V4L2 transmitter device registered as radio15
vivid-007: V4L2 metadata capture device registered as video33
vivid-007: V4L2 metadata output device registered as video34
vivid-007: V4L2 touch capture device registered as v4l-touch7
vivid-008: using single planar format API
vivid-008: CEC adapter cec16 registered for HDMI input 0
vivid-008: V4L2 capture device registered as video35
vivid-008: CEC adapter cec17 registered for HDMI output 0
vivid-008: V4L2 output device registered as video36
vivid-008: V4L2 capture device registered as vbi16, supports raw and sliced VBI
vivid-008: V4L2 output device registered as vbi17, supports raw and sliced VBI
vivid-008: V4L2 capture device registered as swradio8
vivid-008: V4L2 receiver device registered as radio16
vivid-008: V4L2 transmitter device registered as radio17
vivid-008: V4L2 metadata capture device registered as video37
vivid-008: V4L2 metadata output device registered as video38
vivid-008: V4L2 touch capture device registered as v4l-touch8
vivid-009: using multiplanar format API
vivid-009: CEC adapter cec18 registered for HDMI input 0
vivid-009: V4L2 capture device registered as video39
vivid-009: CEC adapter cec19 registered for HDMI output 0
vivid-009: V4L2 output device registered as video40
vivid-009: V4L2 capture device registered as vbi18, supports raw and sliced VBI
vivid-009: V4L2 output device registered as vbi19, supports raw and sliced VBI
vivid-009: V4L2 capture device registered as swradio9
vivid-009: V4L2 receiver device registered as radio18
vivid-009: V4L2 transmitter device registered as radio19
vivid-009: V4L2 metadata capture device registered as video41
vivid-009: V4L2 metadata output device registered as video42
vivid-009: V4L2 touch capture device registered as v4l-touch9
vivid-010: using single planar format API
vivid-010: CEC adapter cec20 registered for HDMI input 0
vivid-010: V4L2 capture device registered as video43
vivid-010: CEC adapter cec21 registered for HDMI output 0
vivid-010: V4L2 output device registered as video44
vivid-010: V4L2 capture device registered as vbi20, supports raw and sliced VBI
vivid-010: V4L2 output device registered as vbi21, supports raw and sliced VBI
vivid-010: V4L2 capture device registered as swradio10
vivid-010: V4L2 receiver device registered as radio20
vivid-010: V4L2 transmitter device registered as radio21
vivid-010: V4L2 metadata capture device registered as video45
vivid-010: V4L2 metadata output device registered as video46
vivid-010: V4L2 touch capture device registered as v4l-touch10
vivid-011: using multiplanar format API
vivid-011: CEC adapter cec22 registered for HDMI input 0
vivid-011: V4L2 capture device registered as video47
vivid-011: CEC adapter cec23 registered for HDMI output 0
vivid-011: V4L2 output device registered as video48
vivid-011: V4L2 capture device registered as vbi22, supports raw and sliced VBI
vivid-011: V4L2 output device registered as vbi23, supports raw and sliced VBI
vivid-011: V4L2 capture device registered as swradio11
vivid-011: V4L2 receiver device registered as radio22
vivid-011: V4L2 transmitter device registered as radio23
vivid-011: V4L2 metadata capture device registered as video49
vivid-011: V4L2 metadata output device registered as video50
vivid-011: V4L2 touch capture device registered as v4l-touch11
vivid-012: using single planar format API
vivid-012: CEC adapter cec24 registered for HDMI input 0
vivid-012: V4L2 capture device registered as video51
vivid-012: CEC adapter cec25 registered for HDMI output 0
vivid-012: V4L2 output device registered as video52
vivid-012: V4L2 capture device registered as vbi24, supports raw and sliced VBI
vivid-012: V4L2 output device registered as vbi25, supports raw and sliced VBI
vivid-012: V4L2 capture device registered as swradio12
vivid-012: V4L2 receiver device registered as radio24
vivid-012: V4L2 transmitter device registered as radio25
vivid-012: V4L2 metadata capture device registered as video53
vivid-012: V4L2 metadata output device registered as video54
vivid-012: V4L2 touch capture device registered as v4l-touch12
vivid-013: using multiplanar format API
vivid-013: CEC adapter cec26 registered for HDMI input 0
vivid-013: V4L2 capture device registered as video55
vivid-013: CEC adapter cec27 registered for HDMI output 0
vivid-013: V4L2 output device registered as video56
vivid-013: V4L2 capture device registered as vbi26, supports raw and sliced VBI
vivid-013: V4L2 output device registered as vbi27, supports raw and sliced VBI
vivid-013: V4L2 capture device registered as swradio13
vivid-013: V4L2 receiver device registered as radio26
vivid-013: V4L2 transmitter device registered as radio27
vivid-013: V4L2 metadata capture device registered as video57
vivid-013: V4L2 metadata output device registered as video58
vivid-013: V4L2 touch capture device registered as v4l-touch13
vivid-014: using single planar format API
vivid-014: CEC adapter cec28 registered for HDMI input 0
vivid-014: V4L2 capture device registered as video59
vivid-014: CEC adapter cec29 registered for HDMI output 0
vivid-014: V4L2 output device registered as video60
vivid-014: V4L2 capture device registered as vbi28, supports raw and sliced VBI
vivid-014: V4L2 output device registered as vbi29, supports raw and sliced VBI
vivid-014: V4L2 capture device registered as swradio14
vivid-014: V4L2 receiver device registered as radio28
vivid-014: V4L2 transmitter device registered as radio29
vivid-014: V4L2 metadata capture device registered as video61
vivid-014: V4L2 metadata output device registered as video62
vivid-014: V4L2 touch capture device registered as v4l-touch14
vivid-015: using multiplanar format API
vivid-015: CEC adapter cec30 registered for HDMI input 0
vivid-015: V4L2 capture device registered as video63
vivid-015: CEC adapter cec31 registered for HDMI output 0
vivid-015: V4L2 output device registered as video64
vivid-015: V4L2 capture device registered as vbi30, supports raw and sliced VBI
vivid-015: V4L2 output device registered as vbi31, supports raw and sliced VBI
vivid-015: V4L2 capture device registered as swradio15
vivid-015: V4L2 receiver device registered as radio30
vivid-015: V4L2 transmitter device registered as radio31
vivid-015: V4L2 metadata capture device registered as video65
vivid-015: V4L2 metadata output device registered as video66
vivid-015: V4L2 touch capture device registered as v4l-touch15
vim2m vim2m.0: Device registered as /dev/video0
vicodec vicodec.0: Device 'stateful-encoder' registered as /dev/video68
vicodec vicodec.0: Device 'stateful-decoder' registered as /dev/video69
vicodec vicodec.0: Device 'stateless-decoder' registered as /dev/video70
dvbdev: DVB: registering new adapter (dvb_vidtv_bridge)
i2c i2c-0: DVB: registering adapter 0 frontend 0 (Dummy demod for DVB-T/T2/C/S/S2)...
dvbdev: dvb_create_media_entity: media entity 'Dummy demod for DVB-T/T2/C/S/S2' registered.
BUG: sleeping function called from invalid context at mm/page_alloc.c:5178
in_atomic(): 0, irqs_disabled(): 1, non_block: 0, pid: 1, name: swapper/0
INFO: lockdep is turned off.
irq event stamp: 876048
hardirqs last  enabled at (876047): [<ffffffff89d9a17b>] __raw_spin_unlock_irqrestore include/linux/spinlock_api_smp.h:160 [inline]
hardirqs last  enabled at (876047): [<ffffffff89d9a17b>] _raw_spin_unlock_irqrestore+0x8b/0x120 kernel/locking/spinlock.c:191
hardirqs last disabled at (876048): [<ffffffff81be9b21>] __alloc_pages_bulk+0x801/0x1090 mm/page_alloc.c:5290
softirqs last  enabled at (875610): [<ffffffff814d647b>] invoke_softirq kernel/softirq.c:432 [inline]
softirqs last  enabled at (875610): [<ffffffff814d647b>] __irq_exit_rcu+0x21b/0x260 kernel/softirq.c:636
softirqs last disabled at (875603): [<ffffffff814d647b>] invoke_softirq kernel/softirq.c:432 [inline]
softirqs last disabled at (875603): [<ffffffff814d647b>] __irq_exit_rcu+0x21b/0x260 kernel/softirq.c:636
CPU: 0 PID: 1 Comm: swapper/0 Tainted: G        W         5.13.0-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:79 [inline]
 dump_stack_lvl+0x1ae/0x29f lib/dump_stack.c:96
 ___might_sleep+0x4e5/0x6b0 kernel/sched/core.c:9153
 prepare_alloc_pages+0x1c0/0x5a0 mm/page_alloc.c:5178
 __alloc_pages+0x14d/0x5f0 mm/page_alloc.c:5374
 alloc_page_interleave+0x22/0x1c0 mm/mempolicy.c:2119
 stack_depot_save+0x361/0x490 lib/stackdepot.c:303
 save_stack+0xf9/0x1f0 mm/page_owner.c:120
 __set_page_owner+0x42/0x2f0 mm/page_owner.c:181
 prep_new_page mm/page_alloc.c:2444 [inline]
 __alloc_pages_bulk+0x9f2/0x1090 mm/page_alloc.c:5312
 alloc_pages_bulk_array_node include/linux/gfp.h:557 [inline]
 vm_area_alloc_pages mm/vmalloc.c:2793 [inline]
 __vmalloc_area_node mm/vmalloc.c:2863 [inline]
 __vmalloc_node_range+0x3ad/0x7f0 mm/vmalloc.c:2966
 __vmalloc_node mm/vmalloc.c:3015 [inline]
 vmalloc+0x75/0x80 mm/vmalloc.c:3048
 dvb_dmxdev_init+0xac/0x3b0 drivers/media/dvb-core/dmxdev.c:1421
 vidtv_bridge_dmxdev_init drivers/media/test-drivers/vidtv/vidtv_bridge.c:337 [inline]
 vidtv_bridge_dvb_init drivers/media/test-drivers/vidtv/vidtv_bridge.c:439 [inline]
 vidtv_bridge_probe+0xdd7/0x13a0 drivers/media/test-drivers/vidtv/vidtv_bridge.c:508
 platform_probe+0x130/0x1b0 drivers/base/platform.c:1427
 call_driver_probe+0x96/0x250 drivers/base/dd.c:517
 really_probe+0x223/0x9c0 drivers/base/dd.c:595
 __driver_probe_device+0x1f8/0x3e0 drivers/base/dd.c:747
 driver_probe_device+0x50/0x240 drivers/base/dd.c:777
 __driver_attach+0x2ba/0x520 drivers/base/dd.c:1136
 bus_for_each_dev+0x168/0x1d0 drivers/base/bus.c:301
 bus_add_driver+0x324/0x5e0 drivers/base/bus.c:618
 driver_register+0x2e9/0x3e0 drivers/base/driver.c:171
 vidtv_bridge_init+0x39/0x67 drivers/media/test-drivers/vidtv/vidtv_bridge.c:596
 do_one_initcall+0x1a7/0x400 init/main.c:1280
 do_initcall_level+0x14a/0x1f5 init/main.c:1353
 do_initcalls+0x4b/0x8c init/main.c:1369
 kernel_init_freeable+0x3f1/0x57e init/main.c:1591
 kernel_init+0x19/0x2a0 init/main.c:1483
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:295
dvbdev: dvb_create_media_entity: media entity 'dvb-demux' registered.
vidtv vidtv.0: Successfully initialized vidtv!
usbcore: registered new interface driver radioshark
usbcore: registered new interface driver radioshark2
usbcore: registered new interface driver dsbr100
usbcore: registered new interface driver radio-si470x
usbcore: registered new interface driver radio-usb-si4713
usbcore: registered new interface driver radio-mr800
usbcore: registered new interface driver radio-keene
usbcore: registered new interface driver radio-ma901
usbcore: registered new interface driver radio-raremono
usbcore: registered new interface driver pcwd_usb
device-mapper: uevent: version 1.0.3
device-mapper: ioctl: 4.45.0-ioctl (2021-03-22) initialised: dm-devel@redhat.com
device-mapper: multipath round-robin: version 1.2.0 loaded
device-mapper: multipath queue-length: version 0.2.0 loaded
device-mapper: multipath service-time: version 0.3.0 loaded
device-mapper: raid: Loading target version 1.15.1
Bluetooth: HCI UART driver ver 2.3
Bluetooth: HCI UART protocol H4 registered
Bluetooth: HCI UART protocol BCSP registered
Bluetooth: HCI UART protocol LL registered
Bluetooth: HCI UART protocol Three-wire (H5) registered
Bluetooth: HCI UART protocol QCA registered
Bluetooth: HCI UART protocol AG6XX registered
Bluetooth: HCI UART protocol Marvell registered
usbcore: registered new interface driver bcm203x
usbcore: registered new interface driver bpa10x
usbcore: registered new interface driver bfusb
usbcore: registered new interface driver btusb
usbcore: registered new interface driver ath3k
CAPI 2.0 started up with major 68 (middleware)
Modular ISDN core version 1.1.29
NET: Registered PF_ISDN protocol family
DSP module 2.0
mISDN_dsp: DSP clocks every 80 samples. This equals 1 jiffies.
mISDN: Layer-1-over-IP driver Rev. 2.00
0 virtual devices registered
usbcore: registered new interface driver HFC-S_USB
intel_pstate: CPU model not supported
VUB300 Driver rom wait states = 1C irqpoll timeout = 0400
usbcore: registered new interface driver vub300
usbcore: registered new interface driver ushc
iscsi: registered transport (iser)
SoftiWARP attached
Driver 'framebuffer' was unable to register with bus_type 'coreboot' because the bus was not initialized.
Driver 'memconsole' was unable to register with bus_type 'coreboot' because the bus was not initialized.
Driver 'vpd' was unable to register with bus_type 'coreboot' because the bus was not initialized.
hid: raw HID events driver (C) Jiri Kosina
usbcore: registered new interface driver usbhid
usbhid: USB HID core driver
usbcore: registered new interface driver es2_ap_driver
comedi: version 0.7.76 - http://www.comedi.org
usbcore: registered new interface driver dt9812
usbcore: registered new interface driver ni6501
usbcore: registered new interface driver usbdux
usbcore: registered new interface driver usbduxfast
usbcore: registered new interface driver usbduxsigma
usbcore: registered new interface driver vmk80xx
usbcore: registered new interface driver prism2_usb
usbcore: registered new interface driver r8712u
ashmem: initialized
greybus: registered new driver hid
greybus: registered new driver gbphy
gb_gbphy: registered new driver usb
asus_wmi: ASUS WMI generic driver loaded
usbcore: registered new interface driver snd-usb-audio
usbcore: registered new interface driver snd-ua101
usbcore: registered new interface driver snd-usb-usx2y
usbcore: registered new interface driver snd-usb-us122l
usbcore: registered new interface driver snd-usb-caiaq
usbcore: registered new interface driver snd-usb-6fire
usbcore: registered new interface driver snd-usb-hiface
usbcore: registered new interface driver snd-bcd2000
usbcore: registered new interface driver snd_usb_pod
usbcore: registered new interface driver snd_usb_podhd
usbcore: registered new interface driver snd_usb_toneport
usbcore: registered new interface driver snd_usb_variax
drop_monitor: Initializing network drop monitor service
NET: Registered PF_LLC protocol family
GACT probability on
Mirror/redirect action on
Simple TC action Loaded
netem: version 1.3
u32 classifier
    Performance counters on
    input device check on
    Actions configured
nf_conntrack_irc: failed to register helpers
nf_conntrack_sane: failed to register helpers
nf_conntrack_sip: failed to register helpers
xt_time: kernel timezone is -0000
IPVS: Registered protocols (TCP, UDP, SCTP, AH, ESP)
IPVS: Connection hash table configured (size=4096, memory=64Kbytes)
IPVS: ipvs loaded.
IPVS: [rr] scheduler registered.
IPVS: [wrr] scheduler registered.
IPVS: [lc] scheduler registered.
IPVS: [wlc] scheduler registered.
IPVS: [fo] scheduler registered.
IPVS: [ovf] scheduler registered.
IPVS: [lblc] scheduler registered.
IPVS: [lblcr] scheduler registered.
IPVS: [dh] scheduler registered.
IPVS: [sh] scheduler registered.
IPVS: [mh] scheduler registered.
IPVS: [sed] scheduler registered.
IPVS: [nq] scheduler registered.
IPVS: [twos] scheduler registered.
IPVS: [sip] pe registered.
ipip: IPv4 and MPLS over IPv4 tunneling driver
gre: GRE over IPv4 demultiplexor driver
ip_gre: GRE over IPv4 tunneling driver
IPv4 over IPsec tunneling driver
ipt_CLUSTERIP: ClusterIP Version 0.8 loaded successfully
Initializing XFRM netlink socket
IPsec XFRM device driver
NET: Registered PF_INET6 protocol family
Segment Routing with IPv6
RPL Segment Routing with IPv6
mip6: Mobile IPv6
sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
ip6_gre: GRE over IPv6 tunneling driver
NET: Registered PF_PACKET protocol family
NET: Registered PF_KEY protocol family
Bridge firewalling registered
NET: Registered PF_X25 protocol family
X25: Linux Version 0.2
NET: Registered PF_NETROM protocol family
NET: Registered PF_ROSE protocol family
NET: Registered PF_AX25 protocol family
can: controller area network core
NET: Registered PF_CAN protocol family
can: raw protocol
can: broadcast manager protocol
can: netlink gateway - max_hops=1
can: SAE J1939
can: isotp protocol
Bluetooth: RFCOMM TTY layer initialized
Bluetooth: RFCOMM socket layer initialized
Bluetooth: RFCOMM ver 1.11
Bluetooth: BNEP (Ethernet Emulation) ver 1.3
Bluetooth: BNEP filters: protocol multicast
Bluetooth: BNEP socket layer initialized
Bluetooth: CMTP (CAPI Emulation) ver 1.0
Bluetooth: CMTP socket layer initialized
Bluetooth: HIDP (Human Interface Emulation) ver 1.2
Bluetooth: HIDP socket layer initialized
NET: Registered PF_RXRPC protocol family
Key type rxrpc registered
Key type rxrpc_s registered
NET: Registered PF_KCM protocol family
lec:lane_module_init: lec.c: initialized
mpoa:atm_mpoa_init: mpc.c: initialized
l2tp_core: L2TP core driver, V2.0
l2tp_ppp: PPPoL2TP kernel driver, V2.0
l2tp_ip: L2TP IP encapsulation support (L2TPv3)
l2tp_netlink: L2TP netlink interface
l2tp_eth: L2TP ethernet pseudowire support (L2TPv3)
l2tp_ip6: L2TP IP encapsulation support for IPv6 (L2TPv3)
NET: Registered PF_PHONET protocol family
8021q: 802.1Q VLAN Support v1.8
DCCP: Activated CCID 2 (TCP-like)
DCCP: Activated CCID 3 (TCP-Friendly Rate Control)
sctp: Hash tables configured (bind 32/56)
NET: Registered PF_RDS protocol family
Registered RDS/infiniband transport
Registered RDS/tcp transport
tipc: Activated (version 2.0.0)
NET: Registered PF_TIPC protocol family
tipc: Started in single node mode
NET: Registered PF_SMC protocol family
9pnet: Installing 9P2000 support
NET: Registered PF_CAIF protocol family
NET: Registered PF_IEEE802154 protocol family
Key type dns_resolver registered
Key type ceph registered
libceph: loaded (mon/osd proto 15/24)
batman_adv: B.A.T.M.A.N. advanced 2021.2 (compatibility version 15) loaded
openvswitch: Open vSwitch switching datapath
NET: Registered PF_VSOCK protocol family
mpls_gso: MPLS GSO support
IPI shorthand broadcast: enabled
AVX2 version of gcm_enc/dec engaged.
AES CTR mode by8 optimization enabled
sched_clock: Marking stable (14258082201, 34311258)->(14301959313, -9565854)
registered taskstats version 1
Loading compiled-in X.509 certificates
Loaded X.509 cert 'Build time autogenerated kernel key: f850c787ad998c396ae089c083b940ff0a9abb77'
zswap: loaded using pool lzo/zbud
debug_vm_pgtable: [debug_vm_pgtable         ]: Validating architecture page table helpers
Key type ._fscrypt registered
Key type .fscrypt registered
Key type fscrypt-provisioning registered
kAFS: Red Hat AFS client v0.1 registering.
FS-Cache: Netfs 'afs' registered for caching
Btrfs loaded, crc32c=crc32c-intel, assert=on, zoned=yes
Key type big_key registered
Key type encrypted registered
ima: No TPM chip found, activating TPM-bypass!
Loading compiled-in module X.509 certificates
Loaded X.509 cert 'Build time autogenerated kernel key: f850c787ad998c396ae089c083b940ff0a9abb77'
ima: Allocated hash algorithm: sha256
ima: No architecture policies found
evm: Initialising EVM extended attributes:
evm: security.selinux (disabled)
evm: security.SMACK64
evm: security.SMACK64EXEC
evm: security.SMACK64TRANSMUTE
evm: security.SMACK64MMAP
evm: security.apparmor (disabled)
evm: security.ima
evm: security.capability
evm: HMAC attrs: 0x1
PM:   Magic number: 13:292:493
printk: console [netcon0] enabled
netconsole: network logging started
gtp: GTP module loaded (pdp ctx size 104 bytes)
rdma_rxe: loaded
cfg80211: Loading compiled-in X.509 certificates for regulatory database
cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
ALSA device list:
  #0: Dummy 1
  #1: Loopback 1
  #2: Virtual MIDI Card 1
md: Waiting for all devices to be available before autodetect
md: If you don't use raid, use raid=noautodetect
md: Autodetecting RAID arrays.
md: autorun ...
md: ... autorun DONE.
VFS: Cannot open root device "sda1" or unknown-block(0,0): error -6
Please append a correct "root=" boot option; here are the available partitions:
0100            4096 ram0 
 (driver?)
0101            4096 ram1 
 (driver?)
0102            4096 ram2 
 (driver?)
0103            4096 ram3 
 (driver?)
0104            4096 ram4 
 (driver?)
0105            4096 ram5 
 (driver?)
0106            4096 ram6 
 (driver?)
0107            4096 ram7 
 (driver?)
0108            4096 ram8 
 (driver?)
0109            4096 ram9 
 (driver?)
010a            4096 ram10 
 (driver?)
010b            4096 ram11 
 (driver?)
010c            4096 ram12 
 (driver?)
010d            4096 ram13 
 (driver?)
010e            4096 ram14 
 (driver?)
010f            4096 ram15 
 (driver?)
1f00             128 mtdblock0 
 (driver?)


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0000000000007e902b05c6839f15%40google.com.
