Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBF5L3CEAMGQEWTQZLQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4133EB090
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 08:47:52 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id u7-20020a2e2e070000b02901b56dc35bf0sf2869598lju.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 23:47:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628837272; cv=pass;
        d=google.com; s=arc-20160816;
        b=jMqjLmHz10vSrYmKr8Bd7XT1jmWZT9Nqmt6p10zj6rTKnw/qiIUyAyh730paZTR9mk
         Elj4KXZ+J6Sg6kC8ll50bjljHijiHNtDa+s4Ii8a7eMRNss+vnTyQ4Tw9GFBqr5mzycn
         1RkxbtT1RLc/ZlxoJodkGKd4exfB6TLTGAlNwmfoHuOZT6sh24tb01vbk+maiy/yZ7M9
         bO9ducti+mDULQ1FU/a9LF37raOyh9k56wIUspaVjGRRxGsaIjgsKqFsNEdBkD+0MEDN
         /FMVRu29luOyQ4RTWPVZdCtHLu9d3aROAYAiQhNzJq6A9r3Zu86npiSx+WJuY9Nl4QQ3
         7bQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=jxGwGkJpHdNmxcZLS/fEaqz/1rZBZ8zHtkDt4QZfBkE=;
        b=bp+RYVSbaRjwpDI6dZ9tJ39Tv4auM6hXU65H+OfE2lSQenVTEGHCq06sjPi10P+4JP
         AC/TuvWDHztugTiO/PwHAkxvIB4K4rwflYjqODZjiQYVCCqW//+jwVWwTJS5NuFd756E
         DzFOxYPbcXuqC0LHtnTQpyX7wNTsuWto3IcM11uF29J41vr6seJipbVLSAf3fLtbiw6Q
         1YIFgXZwFW7nCMcIx3nlrnEE2yuFvdk9/O4j+s+9nD6CCI7LeqiuDDG0bwM01JU0UFKL
         Qvf1BcgfDJ+HbELLYEJOq9W9LZvGYY2Ye1Wi8GKUqXg3B6naIgxTp7spjHT60dRV55TT
         Kx1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=vQyBZgRL;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jxGwGkJpHdNmxcZLS/fEaqz/1rZBZ8zHtkDt4QZfBkE=;
        b=r00TEC8RfPqPk7FofItDVigZ/XVmrEFg6pNS0JyYs4oLeeNFZr5Atjsl1epbDJEsZs
         o8OFbTrb7FX70UlPopJJ/r72cb+FDPkIojiyVEc6Cku5XE806j+vpc6JiqJmtr2/Y/R9
         eWamSdmB8Rqz4qnSVzrn2SDQlSRNjMiB20TLiAx+ms7hl8i9AXesFig7TfHwMc5p86zp
         yP3gbtRZztsxO1GmAPGrS7em+C4IYz2lqs8cP8GL5TSkr5cioBg6da8e6L09AW1t7l/Z
         lxcaW8V+qU6DwtVm4HCeumcAT+bOg2r1R4lqIHWL25tg/AxxVMyB3frqrn2BkrPgykuV
         iRhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jxGwGkJpHdNmxcZLS/fEaqz/1rZBZ8zHtkDt4QZfBkE=;
        b=EsSFYuk3ZzWNmMNe+iGHx8l06xxLpJDq/9wJGS9426TSwzHICpHlPvEGDo+VPRZJEu
         Y5+RmNXzzxY8AuAbm1HrqIsiNNC55gBywPxxOtiiPKnU5R3TmMmCXmD3sIK1+U/iMrIr
         /YdacO3/YyQr0kP1eQpYW1GVao7wzAG+XSu+niCY9CbY9bvESYIbRQZA4Ks8nIlVtd0j
         sgyGiIfdKtK2nitg1StysXGuaQq7kyqCDhw9sl/3LNZVFFedlsONy8Ky9Dz59agvwj+U
         86rH155gv1EQxVmIi0AK3he0CkCJe4knbuEUhWVk1CHqvkV7M1W8pU1Er25uf6EHcD8K
         Ni+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cEuT4Aao3iwKnbE9vnw3EvCyVnCYeUZMNyocPRsA2JAp4rur8
	5jkZZ0SBZ4FMcMqI7AuPECM=
X-Google-Smtp-Source: ABdhPJz4jhKoXlt3RiDTzo1CZrYbGwAwlgzAAFw6v6XeO5JkMD9F9ilhv8sm8j+KfsfCRKwrB/2KCg==
X-Received: by 2002:a05:6512:3458:: with SMTP id j24mr670575lfr.366.1628837271965;
        Thu, 12 Aug 2021 23:47:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5395:: with SMTP id g21ls363456lfh.1.gmail; Thu, 12 Aug
 2021 23:47:50 -0700 (PDT)
X-Received: by 2002:a19:f20a:: with SMTP id q10mr639454lfh.513.1628837270889;
        Thu, 12 Aug 2021 23:47:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628837270; cv=none;
        d=google.com; s=arc-20160816;
        b=C9kAzA2xckktV3HksXaCk47fHx1CtAbxaUJPTMXC7cUUYcoKKMk+Cb2sRUkys6u58E
         WtTHx+k7A7iQg4twx/6az2fMw/MTM6e4krvPPqSIUq8vuRvKNAAASetkVfVcGKWnxUCL
         8uQBJniM8r3+ju7ia4YQ2fI9ndXjf6b2RcX/FlENfWxwiD60PDqIiJ3+9o8INAMP0fpz
         /2rQ4Rg0qYRXNXuo/FAknlz2QnHvHmZsUgO53FAALYsV/8wR45QvI9HPAywn5ToueH4w
         A6Arw9Q60wE7sTp0gBNGXudYBqionJxtW8Fg57cCLJLLa5UL+dhIV23NDh2XJ0BHpdUu
         /W2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=8uY9StDXsl+PSQsQEz2XF6aI8TyVsSo6DOyc1J8aC1o=;
        b=Pl6Avn/ajq/fAgYnkC8w5BofJD+0WGgXoQUepco/jIvVH4RMMjFFWdPEiEJRzGgBdy
         L9gGgy0c09pdTPAEZbYGuJTL0hq01eBu2Y+x2DP0IgXy3qkmUdwYb9IVH6rTzy/sWUWa
         N3Yziajw7p3TQjyJaI9GM5s3HtLvmf6UHrysPodv9lYtoiSydmK2sEdFLl4JsVYqvJme
         T1P7fesaghV++T4itSPg9VcDgSETElsEJvDyCIixQfcTcWXPzDec3HD1axuY70AW7r4x
         9KEV9n8JaQhXbkFHPtWQnCzpwtZueDmuy8FtJrPkQSq8A2go4BMBDDW6ohe77FMHYswW
         3e7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=vQyBZgRL;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id v15si34310lfa.6.2021.08.12.23.47.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 23:47:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Received: by mail-wr1-x434.google.com with SMTP id f5so11771060wrm.13
        for <clang-built-linux@googlegroups.com>; Thu, 12 Aug 2021 23:47:50 -0700 (PDT)
X-Received: by 2002:adf:d20c:: with SMTP id j12mr1226000wrh.74.1628837270065;
        Thu, 12 Aug 2021 23:47:50 -0700 (PDT)
Received: from 172.17.0.5 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id u15sm455237wmq.33.2021.08.12.23.47.48
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Aug 2021 23:47:49 -0700 (PDT)
From: ci_notify@linaro.org
Date: Fri, 13 Aug 2021 06:47:48 +0000 (UTC)
To: tcwg-validation@linaro.org, Eric Dumazet <edumazet@google.com>,
	linaro-toolchain@lists.linaro.org,
	clang-built-linux@googlegroups.com, arnd@linaro.org
Message-ID: <1853078127.1222.1628837269341@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allmodconfig - Build # 20 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1221_2047905149.1628837268210"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=vQyBZgRL;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::434
 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

------=_Part_1221_2047905149.1628837268210
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-arm-next-allmodconfig

Culprit:
<cut>
commit 4a2b285e7e103d4d6c6ed3e5052a0ff74a5d7f15
Author: Eric Dumazet <edumazet@google.com>
Date:   Tue Aug 10 02:45:47 2021 -0700

    net: igmp: fix data-race in igmp_ifc_timer_expire()
    
    Fix the data-race reported by syzbot [1]
    Issue here is that igmp_ifc_timer_expire() can update in_dev->mr_ifc_count
    while another change just occured from another context.
    
    in_dev->mr_ifc_count is only 8bit wide, so the race had little
    consequences.
    
    [1]
    BUG: KCSAN: data-race in igmp_ifc_event / igmp_ifc_timer_expire
    
    write to 0xffff8881051e3062 of 1 bytes by task 12547 on cpu 0:
     igmp_ifc_event+0x1d5/0x290 net/ipv4/igmp.c:821
     igmp_group_added+0x462/0x490 net/ipv4/igmp.c:1356
     ____ip_mc_inc_group+0x3ff/0x500 net/ipv4/igmp.c:1461
     __ip_mc_join_group+0x24d/0x2c0 net/ipv4/igmp.c:2199
     ip_mc_join_group_ssm+0x20/0x30 net/ipv4/igmp.c:2218
     do_ip_setsockopt net/ipv4/ip_sockglue.c:1285 [inline]
     ip_setsockopt+0x1827/0x2a80 net/ipv4/ip_sockglue.c:1423
     tcp_setsockopt+0x8c/0xa0 net/ipv4/tcp.c:3657
     sock_common_setsockopt+0x5d/0x70 net/core/sock.c:3362
     __sys_setsockopt+0x18f/0x200 net/socket.c:2159
     __do_sys_setsockopt net/socket.c:2170 [inline]
     __se_sys_setsockopt net/socket.c:2167 [inline]
     __x64_sys_setsockopt+0x62/0x70 net/socket.c:2167
     do_syscall_x64 arch/x86/entry/common.c:50 [inline]
     do_syscall_64+0x3d/0x90 arch/x86/entry/common.c:80
     entry_SYSCALL_64_after_hwframe+0x44/0xae
    
    read to 0xffff8881051e3062 of 1 bytes by interrupt on cpu 1:
     igmp_ifc_timer_expire+0x706/0xa30 net/ipv4/igmp.c:808
     call_timer_fn+0x2e/0x1d0 kernel/time/timer.c:1419
     expire_timers+0x135/0x250 kernel/time/timer.c:1464
     __run_timers+0x358/0x420 kernel/time/timer.c:1732
     run_timer_softirq+0x19/0x30 kernel/time/timer.c:1745
     __do_softirq+0x12c/0x26e kernel/softirq.c:558
     invoke_softirq kernel/softirq.c:432 [inline]
     __irq_exit_rcu+0x9a/0xb0 kernel/softirq.c:636
     sysvec_apic_timer_interrupt+0x69/0x80 arch/x86/kernel/apic/apic.c:1100
     asm_sysvec_apic_timer_interrupt+0x12/0x20 arch/x86/include/asm/idtentry.h:638
     console_unlock+0x8e8/0xb30 kernel/printk/printk.c:2646
     vprintk_emit+0x125/0x3d0 kernel/printk/printk.c:2174
     vprintk_default+0x22/0x30 kernel/printk/printk.c:2185
     vprintk+0x15a/0x170 kernel/printk/printk_safe.c:392
     printk+0x62/0x87 kernel/printk/printk.c:2216
     selinux_netlink_send+0x399/0x400 security/selinux/hooks.c:6041
     security_netlink_send+0x42/0x90 security/security.c:2070
     netlink_sendmsg+0x59e/0x7c0 net/netlink/af_netlink.c:1919
     sock_sendmsg_nosec net/socket.c:703 [inline]
     sock_sendmsg net/socket.c:723 [inline]
     ____sys_sendmsg+0x360/0x4d0 net/socket.c:2392
     ___sys_sendmsg net/socket.c:2446 [inline]
     __sys_sendmsg+0x1ed/0x270 net/socket.c:2475
     __do_sys_sendmsg net/socket.c:2484 [inline]
     __se_sys_sendmsg net/socket.c:2482 [inline]
     __x64_sys_sendmsg+0x42/0x50 net/socket.c:2482
     do_syscall_x64 arch/x86/entry/common.c:50 [inline]
     do_syscall_64+0x3d/0x90 arch/x86/entry/common.c:80
     entry_SYSCALL_64_after_hwframe+0x44/0xae
    
    value changed: 0x01 -> 0x02
    
    Reported by Kernel Concurrency Sanitizer on:
    CPU: 1 PID: 12539 Comm: syz-executor.1 Not tainted 5.14.0-rc4-syzkaller #0
    Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
    
    Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
    Signed-off-by: Eric Dumazet <edumazet@google.com>
    Reported-by: syzbot <syzkaller@googlegroups.com>
    Signed-off-by: David S. Miller <davem@davemloft.net>
</cut>

Results regressed to (for first_bad == 4a2b285e7e103d4d6c6ed3e5052a0ff74a5d7f15)
# reset_artifacts:
-10
# build_abe binutils:
-9
# build_llvm:
-5
# build_abe qemu:
-2
# linux_n_obj:
21692
# First few build errors in logs:
# 00:03:56 ld.lld: error: undefined symbol: __bad_cmpxchg
# 00:03:56 make: *** [Makefile:1176: vmlinux] Error 1

from (for last_good == 37c86c4a0bfc2faaf0ed959db9de814c85797f09)
# reset_artifacts:
-10
# build_abe binutils:
-9
# build_llvm:
-5
# build_abe qemu:
-2
# linux_n_obj:
29753
# linux build successful:
all

Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-next-allmodconfig/20/artifact/artifacts/build-37c86c4a0bfc2faaf0ed959db9de814c85797f09/
Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-next-allmodconfig/20/artifact/artifacts/build-4a2b285e7e103d4d6c6ed3e5052a0ff74a5d7f15/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-next-allmodconfig/20/

Configuration details:
rr[linux_git]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git#761c6d7ec820f123b931e7b8ef7ec7c8564e450f"

Reproduce builds:
<cut>
mkdir investigate-linux-4a2b285e7e103d4d6c6ed3e5052a0ff74a5d7f15
cd investigate-linux-4a2b285e7e103d4d6c6ed3e5052a0ff74a5d7f15

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-next-allmodconfig/20/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-next-allmodconfig/20/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-next-allmodconfig/20/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

# Save baseline build state (which is then restored in artifacts/test.sh)
mkdir -p ./bisect
rsync -a --del --delete-excluded --exclude /bisect/ --exclude /artifacts/ --exclude /linux/ ./ ./bisect/baseline/

cd linux

# Reproduce first_bad build
git checkout --detach 4a2b285e7e103d4d6c6ed3e5052a0ff74a5d7f15
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 37c86c4a0bfc2faaf0ed959db9de814c85797f09
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-next-allmodconfig/20/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-next-allmodconfig/20/consoleText

Full commit (up to 1000 lines):
<cut>
commit 4a2b285e7e103d4d6c6ed3e5052a0ff74a5d7f15
Author: Eric Dumazet <edumazet@google.com>
Date:   Tue Aug 10 02:45:47 2021 -0700

    net: igmp: fix data-race in igmp_ifc_timer_expire()
    
    Fix the data-race reported by syzbot [1]
    Issue here is that igmp_ifc_timer_expire() can update in_dev->mr_ifc_count
    while another change just occured from another context.
    
    in_dev->mr_ifc_count is only 8bit wide, so the race had little
    consequences.
    
    [1]
    BUG: KCSAN: data-race in igmp_ifc_event / igmp_ifc_timer_expire
    
    write to 0xffff8881051e3062 of 1 bytes by task 12547 on cpu 0:
     igmp_ifc_event+0x1d5/0x290 net/ipv4/igmp.c:821
     igmp_group_added+0x462/0x490 net/ipv4/igmp.c:1356
     ____ip_mc_inc_group+0x3ff/0x500 net/ipv4/igmp.c:1461
     __ip_mc_join_group+0x24d/0x2c0 net/ipv4/igmp.c:2199
     ip_mc_join_group_ssm+0x20/0x30 net/ipv4/igmp.c:2218
     do_ip_setsockopt net/ipv4/ip_sockglue.c:1285 [inline]
     ip_setsockopt+0x1827/0x2a80 net/ipv4/ip_sockglue.c:1423
     tcp_setsockopt+0x8c/0xa0 net/ipv4/tcp.c:3657
     sock_common_setsockopt+0x5d/0x70 net/core/sock.c:3362
     __sys_setsockopt+0x18f/0x200 net/socket.c:2159
     __do_sys_setsockopt net/socket.c:2170 [inline]
     __se_sys_setsockopt net/socket.c:2167 [inline]
     __x64_sys_setsockopt+0x62/0x70 net/socket.c:2167
     do_syscall_x64 arch/x86/entry/common.c:50 [inline]
     do_syscall_64+0x3d/0x90 arch/x86/entry/common.c:80
     entry_SYSCALL_64_after_hwframe+0x44/0xae
    
    read to 0xffff8881051e3062 of 1 bytes by interrupt on cpu 1:
     igmp_ifc_timer_expire+0x706/0xa30 net/ipv4/igmp.c:808
     call_timer_fn+0x2e/0x1d0 kernel/time/timer.c:1419
     expire_timers+0x135/0x250 kernel/time/timer.c:1464
     __run_timers+0x358/0x420 kernel/time/timer.c:1732
     run_timer_softirq+0x19/0x30 kernel/time/timer.c:1745
     __do_softirq+0x12c/0x26e kernel/softirq.c:558
     invoke_softirq kernel/softirq.c:432 [inline]
     __irq_exit_rcu+0x9a/0xb0 kernel/softirq.c:636
     sysvec_apic_timer_interrupt+0x69/0x80 arch/x86/kernel/apic/apic.c:1100
     asm_sysvec_apic_timer_interrupt+0x12/0x20 arch/x86/include/asm/idtentry.h:638
     console_unlock+0x8e8/0xb30 kernel/printk/printk.c:2646
     vprintk_emit+0x125/0x3d0 kernel/printk/printk.c:2174
     vprintk_default+0x22/0x30 kernel/printk/printk.c:2185
     vprintk+0x15a/0x170 kernel/printk/printk_safe.c:392
     printk+0x62/0x87 kernel/printk/printk.c:2216
     selinux_netlink_send+0x399/0x400 security/selinux/hooks.c:6041
     security_netlink_send+0x42/0x90 security/security.c:2070
     netlink_sendmsg+0x59e/0x7c0 net/netlink/af_netlink.c:1919
     sock_sendmsg_nosec net/socket.c:703 [inline]
     sock_sendmsg net/socket.c:723 [inline]
     ____sys_sendmsg+0x360/0x4d0 net/socket.c:2392
     ___sys_sendmsg net/socket.c:2446 [inline]
     __sys_sendmsg+0x1ed/0x270 net/socket.c:2475
     __do_sys_sendmsg net/socket.c:2484 [inline]
     __se_sys_sendmsg net/socket.c:2482 [inline]
     __x64_sys_sendmsg+0x42/0x50 net/socket.c:2482
     do_syscall_x64 arch/x86/entry/common.c:50 [inline]
     do_syscall_64+0x3d/0x90 arch/x86/entry/common.c:80
     entry_SYSCALL_64_after_hwframe+0x44/0xae
    
    value changed: 0x01 -> 0x02
    
    Reported by Kernel Concurrency Sanitizer on:
    CPU: 1 PID: 12539 Comm: syz-executor.1 Not tainted 5.14.0-rc4-syzkaller #0
    Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
    
    Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
    Signed-off-by: Eric Dumazet <edumazet@google.com>
    Reported-by: syzbot <syzkaller@googlegroups.com>
    Signed-off-by: David S. Miller <davem@davemloft.net>
---
 net/ipv4/igmp.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/net/ipv4/igmp.c b/net/ipv4/igmp.c
index 6b3c558a4f23..a51360087b19 100644
--- a/net/ipv4/igmp.c
+++ b/net/ipv4/igmp.c
@@ -803,10 +803,17 @@ static void igmp_gq_timer_expire(struct timer_list *t)
 static void igmp_ifc_timer_expire(struct timer_list *t)
 {
 	struct in_device *in_dev = from_timer(in_dev, t, mr_ifc_timer);
+	u8 mr_ifc_count;
 
 	igmpv3_send_cr(in_dev);
-	if (in_dev->mr_ifc_count) {
-		in_dev->mr_ifc_count--;
+restart:
+	mr_ifc_count = READ_ONCE(in_dev->mr_ifc_count);
+
+	if (mr_ifc_count) {
+		if (cmpxchg(&in_dev->mr_ifc_count,
+			    mr_ifc_count,
+			    mr_ifc_count - 1) != mr_ifc_count)
+			goto restart;
 		igmp_ifc_start_timer(in_dev,
 				     unsolicited_report_interval(in_dev));
 	}
@@ -818,7 +825,7 @@ static void igmp_ifc_event(struct in_device *in_dev)
 	struct net *net = dev_net(in_dev->dev);
 	if (IGMP_V1_SEEN(in_dev) || IGMP_V2_SEEN(in_dev))
 		return;
-	in_dev->mr_ifc_count = in_dev->mr_qrv ?: net->ipv4.sysctl_igmp_qrv;
+	WRITE_ONCE(in_dev->mr_ifc_count, in_dev->mr_qrv ?: net->ipv4.sysctl_igmp_qrv);
 	igmp_ifc_start_timer(in_dev, 1);
 }
 
@@ -957,7 +964,7 @@ static bool igmp_heard_query(struct in_device *in_dev, struct sk_buff *skb,
 				in_dev->mr_qri;
 		}
 		/* cancel the interface change timer */
-		in_dev->mr_ifc_count = 0;
+		WRITE_ONCE(in_dev->mr_ifc_count, 0);
 		if (del_timer(&in_dev->mr_ifc_timer))
 			__in_dev_put(in_dev);
 		/* clear deleted report items */
@@ -1724,7 +1731,7 @@ void ip_mc_down(struct in_device *in_dev)
 		igmp_group_dropped(pmc);
 
 #ifdef CONFIG_IP_MULTICAST
-	in_dev->mr_ifc_count = 0;
+	WRITE_ONCE(in_dev->mr_ifc_count, 0);
 	if (del_timer(&in_dev->mr_ifc_timer))
 		__in_dev_put(in_dev);
 	in_dev->mr_gq_running = 0;
@@ -1941,7 +1948,7 @@ static int ip_mc_del_src(struct in_device *in_dev, __be32 *pmca, int sfmode,
 		pmc->sfmode = MCAST_INCLUDE;
 #ifdef CONFIG_IP_MULTICAST
 		pmc->crcount = in_dev->mr_qrv ?: net->ipv4.sysctl_igmp_qrv;
-		in_dev->mr_ifc_count = pmc->crcount;
+		WRITE_ONCE(in_dev->mr_ifc_count, pmc->crcount);
 		for (psf = pmc->sources; psf; psf = psf->sf_next)
 			psf->sf_crcount = 0;
 		igmp_ifc_event(pmc->interface);
@@ -2120,7 +2127,7 @@ static int ip_mc_add_src(struct in_device *in_dev, __be32 *pmca, int sfmode,
 		/* else no filters; keep old mode for reports */
 
 		pmc->crcount = in_dev->mr_qrv ?: net->ipv4.sysctl_igmp_qrv;
-		in_dev->mr_ifc_count = pmc->crcount;
+		WRITE_ONCE(in_dev->mr_ifc_count, pmc->crcount);
 		for (psf = pmc->sources; psf; psf = psf->sf_next)
 			psf->sf_crcount = 0;
 		igmp_ifc_event(in_dev);
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1853078127.1222.1628837269341%40localhost.

------=_Part_1221_2047905149.1628837268210--
