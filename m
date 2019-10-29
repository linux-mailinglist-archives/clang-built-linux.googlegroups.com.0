Return-Path: <clang-built-linux+bncBDT6TV45WMPRBFFZ4DWQKGQEA3252GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DE9E8641
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 12:03:48 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id 6sf647440wmj.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 04:03:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572347028; cv=pass;
        d=google.com; s=arc-20160816;
        b=hGWmSINCSmnqbu30yTMOLzTNr5ZHZYSvt58OCuV6vdf+wfav8OjrqIK9Qr8ElSPG89
         4DvKLelWrjL9HRGM5G0LSnCenwoT97dgmZyMxfrk4lw7uw1aWD/vNRhNbqMjjYHuQSQM
         r2SrqIlKH3rc6jc1lwZXvgGAdQwfFWwN2K3P4/m8M/G+02kStlDuVBElyria27vI5MmA
         +xl3PM50uB1MmT7+OSmGaRKdWr68JiiD9yUCy7M/L+f0z22hKQlK4NKwMLSrXWHDCVHJ
         gZziuX82uwTDnnmXNAcojmHD6Z6Zee//SFsNq4TfZAnK9ewkIInsJGINFmh3eib2T/Mc
         v2SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=1Thgj+C6CUsx/00L2c6CTqW+FWrJJQZbSw44Cfwg5j0=;
        b=eTZmoLKmMqrrQP/7UeRAW95HEfeWx1C6hW9tEQtkDwQp+AHkl+IhMt5SNq02qWn/7v
         l0xQILGWDyc2k2hnG8YS5B7IgL0m1tUBTo60al4Ba4v92XkxubuJ52TKgvONbWPpJmUh
         p9vIIXWY+bSiYGYlW6yt6hX0BlgxF6xqE4GajfJjL81MCWijaNmtIBDuOtaPYWKSS/Y3
         ABzSmpmsBSNddHLJBWa5kTqXRRXTxBxH7dnGCegSNB1oceme3xLMJ41Nl8LJ3XHaGOLe
         2Dz/0sBCv+gYf5rdUr7GPEydHTuNhttn+OZD/MdWb5DScC/7gF2yPojpr5Q3eZh64Khn
         UISA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=girHG2fN;
       spf=neutral (google.com: 2a00:1450:4864:20::442 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Thgj+C6CUsx/00L2c6CTqW+FWrJJQZbSw44Cfwg5j0=;
        b=HcWZGihpdYIMouUx3UX2WqoT4wI7HCfH05fEtLZ8R9X2wsAQV+a0YBw0nB2vkOg17P
         s06kNaVSPAmhj8PFtVZqMYHI8CHrOgfMTn6bjzpNYR25bfZwHwHpMcOKAhDi42WEgmps
         yHZ+sfNh3czPi85PyQoRDBtpdO2GBbfTmfJUzvR9+cpr32qxsk6ETY0J+Eirg50iXzqk
         0Oej9xaD5/H/ElI7EvAs5OMkgoPXUuP2YA47GLoQaL6Jjd3RsxrZR5nZonnT59ptkPdF
         hGb70SQDWTe/Z4PGCJDfFy6q8QmKYAczou4HZ1Q2v2pXpQMjI+v0zL6YJyMa6sCKbVpx
         PSAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Thgj+C6CUsx/00L2c6CTqW+FWrJJQZbSw44Cfwg5j0=;
        b=lmP/6Tno7XbTHx5dPTNKMv71WGDHVyntonWoKiEuuGd+jpzLsjPFcfV3QEAAXQVnMV
         oqUdDS9yYQh+0hbOZZHMebxNEsAuP1mSq6iAP6bxqjwmN/fOnUr9o+p6Ey9zfqqTKtyo
         ewd70jM8an5g3aWvzEXshD+T0XL4mSb+FZ4pIWfwYAHX7FEonFBhJM/OygFyC2BU9mrf
         /C2te2RkO/WCpseL0yNH5PQ1tVHvvKEU67+RzssWV7u9OGkcO+F8Gdx7tGCAyW32Xn35
         UlH6LnqutpXUhFmGdvlRX6OvQR9HkVFSxd+eR514GPYi+2UtZ2OOgby/q0aSi/gpsKqX
         lTWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVADCKo1Ov1W1Tc5K7zgy3n6EjfATseRJRbJBNqTHo35UEH3iJC
	bOLzwolgwiBKt/N33qOpeBo=
X-Google-Smtp-Source: APXvYqzP7dx+x0mJIBycxIASbkFZmFMg13izJGGsom5S1XE0669ouogXxnCrLd+90iaxU4miDx89kg==
X-Received: by 2002:adf:dc07:: with SMTP id t7mr2157352wri.274.1572347028387;
        Tue, 29 Oct 2019 04:03:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1b0b:: with SMTP id b11ls2363336wmb.3.gmail; Tue, 29 Oct
 2019 04:03:47 -0700 (PDT)
X-Received: by 2002:a7b:ce0c:: with SMTP id m12mr3574435wmc.38.1572347027073;
        Tue, 29 Oct 2019 04:03:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572347027; cv=none;
        d=google.com; s=arc-20160816;
        b=h68pHrBQxQZMKQUGKOydDLe/W5bwSCaF14sFipFiqLvIcJ507ziJVdKxYcAA2bqJu+
         Dv6Bo975HpW6x6+52pCUADqRlzORq8pjgQN1fHuRkJthyVtsN3bVXK5jRbb1PLNzcUj8
         +buMrd2Q6BYIZ+FjkKK+OGk1yHyxIwwts8/xmQ5JagcYwF+J15vmgGEIEy/1nsJf1kbg
         0koCFaCuVWuD8ZSoELGQyzc2Ctdv14tLb4SaS6sKYACTdUNcFvpLg/rKJPNcwyHygqlH
         0f0Afx0UvwQJl4iGjc4nVPDgsQMANgZKuS+H5DmQ8p0COJcrh/FV1BFEjxhY/9Xuo0IZ
         3WIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=KxqQLrUEEKzC66KKV/wiH7R1iXSlfHK6ovVSfVOAt3s=;
        b=V/yqBsnwjXkFASYMsu0snknMBmEB/42981x5kqAs68XmhwDkEQQgl3Tvdn/j9vq1xs
         QmqqDSPoHm6K0OpHDXKyhqwi2q5fgnc2e/BFmtgZ/HB5lZNH96C2OVnqZk88CTU9y7fU
         20pMV4QHl9CoKh0CuYINumDlpjVtgKpa+hNIx9UlC2pIVmP2qQ2dUOTwI+RfsJZ3y9yo
         zMyVErizPBlMLOsBtIZVKVDJNmBdCeWerQ8BVPmoplTQqSzeCvzI6MM6JOCO2tKfTeSl
         Yga8e0VOHbo8RSYnlnqYt7KBO9NPVO9zirRcGW1zTw6q92S+EHcqRB8/36/uOizJMQQL
         TOmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=girHG2fN;
       spf=neutral (google.com: 2a00:1450:4864:20::442 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id y185si101600wmd.4.2019.10.29.04.03.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 04:03:47 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::442 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id s1so13159844wro.0
        for <clang-built-linux@googlegroups.com>; Tue, 29 Oct 2019 04:03:46 -0700 (PDT)
X-Received: by 2002:adf:da42:: with SMTP id r2mr18491235wrl.383.1572347024827;
        Tue, 29 Oct 2019 04:03:44 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id y3sm20745276wro.36.2019.10.29.04.03.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2019 04:03:44 -0700 (PDT)
Message-ID: <5db81c90.1c69fb81.b6d53.9468@mx.google.com>
Date: Tue, 29 Oct 2019 04:03:44 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Branch: master
X-Kernelci-Tree: next
X-Kernelci-Kernel: next-20191029
X-Kernelci-Report-Type: build
Subject: next/master build: 215 builds: 5 failed, 210 passed, 20 errors,
 230 warnings (next-20191029)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=girHG2fN;       spf=neutral (google.com: 2a00:1450:4864:20::442 is
 neither permitted nor denied by best guess record for domain of
 bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
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

next/master build: 215 builds: 5 failed, 210 passed, 20 errors, 230 warning=
s (next-20191029)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20191029/

Tree: next
Branch: master
Git Describe: next-20191029
Git Commit: c57cf3833c66cd86c9bdee7112fc992377143f74
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
Built: 7 unique architectures

Build Failures Detected:

arm:
    allmodconfig: (gcc-8) FAIL
    bcm2835_defconfig: (gcc-8) FAIL
    multi_v7_defconfig+kselftest: (gcc-8) FAIL
    qcom_defconfig: (gcc-8) FAIL

mips:
    cavium_octeon_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    allnoconfig (gcc-8): 1 warning
    axs103_defconfig (gcc-8): 2 warnings
    axs103_smp_defconfig (gcc-8): 2 warnings
    haps_hs_defconfig (gcc-8): 2 warnings
    haps_hs_smp_defconfig (gcc-8): 2 warnings
    hsdk_defconfig (gcc-8): 2 warnings
    nsimosci_hs_defconfig (gcc-8): 2 warnings
    nsimosci_hs_smp_defconfig (gcc-8): 2 warnings
    tinyconfig (gcc-8): 1 warning
    vdk_hs38_defconfig (gcc-8): 1 warning
    vdk_hs38_smp_defconfig (gcc-8): 1 warning

arm64:
    allmodconfig (gcc-8): 1 warning
    defconfig (gcc-8): 29 warnings

arm:
    allmodconfig (gcc-8): 6 errors
    bcm2835_defconfig (gcc-8): 3 errors
    eseries_pxa_defconfig (gcc-8): 1 warning
    magician_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 6 errors, 29 warnings
    qcom_defconfig (gcc-8): 1 error
    s3c2410_defconfig (gcc-8): 1 warning
    s3c6400_defconfig (gcc-8): 1 warning
    zeus_defconfig (gcc-8): 1 warning

i386:
    i386_defconfig (gcc-8): 31 warnings

mips:
    32r2el_defconfig (gcc-8): 31 warnings
    cavium_octeon_defconfig (gcc-8): 4 errors, 3 warnings
    db1xxx_defconfig (gcc-8): 1 warning
    ip27_defconfig (gcc-8): 2 warnings
    malta_qemu_32r6_defconfig (gcc-8): 1 warning
    nlm_xlp_defconfig (gcc-8): 2 warnings
    nlm_xlr_defconfig (gcc-8): 4 warnings
    rbtx49xx_defconfig (gcc-8): 1 warning

riscv:
    defconfig (gcc-8): 2 warnings
    defconfig (gcc-8): 31 warnings
    rv32_defconfig (gcc-8): 8 warnings

x86_64:
    allmodconfig (gcc-8): 1 warning
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (gcc-8): 29 warnings

Errors summary:

    1    trace_preemptirq.c:(.text+0xd14): undefined reference to `return_a=
ddress'
    1    trace_preemptirq.c:(.text+0x710): undefined reference to `return_a=
ddress'
    1    trace_preemptirq.c:(.text+0x470): undefined reference to `return_a=
ddress'
    1    trace_preemptirq.c:(.text+0x2a8): undefined reference to `return_a=
ddress'
    1    trace_irqsoff.c:(.text+0xa70): undefined reference to `return_addr=
ess'
    1    trace_irqsoff.c:(.text+0x7a8): undefined reference to `return_addr=
ess'
    1    drivers/staging/octeon/ethernet.c:516:29: error: type of formal pa=
rameter 2 is incomplete
    1    drivers/staging/octeon/ethernet.c:499:30: error: storage size of '=
link_info' isn't known
    1    drivers/staging/octeon/ethernet.c:463:30: error: storage size of '=
link_info' isn't known
    1    drivers/staging/octeon/ethernet.c:177:21: error: dereferencing poi=
nter to incomplete type 'struct cvmx_wqe'
    1    arm-linux-gnueabihf-ld: trace_preemptirq.c:(.text+0xda0): undefine=
d reference to `return_address'
    1    arm-linux-gnueabihf-ld: trace_preemptirq.c:(.text+0xb10): undefine=
d reference to `return_address'
    1    arm-linux-gnueabihf-ld: trace_preemptirq.c:(.text+0x49c): undefine=
d reference to `return_address'
    1    arm-linux-gnueabihf-ld: trace_preemptirq.c:(.text+0x2e4): undefine=
d reference to `return_address'
    1    arm-linux-gnueabihf-ld: kernel/trace/trace_irqsoff.o:trace_irqsoff=
.c:(.text+0xee4): more undefined references to `return_address' follow
    1    arm-linux-gnueabihf-ld: kernel/trace/trace_irqsoff.o:trace_irqsoff=
.c:(.text+0x27d4): more undefined references to `return_address' follow
    1    arm-linux-gnueabihf-ld: /home/buildslave/workspace/workspace/kerne=
l-build@5/linux/build/../kernel/trace/trace_sched_wakeup.c:596: undefined r=
eference to `return_address'
    1    /home/buildslave/workspace/workspace/kernel-build@5/linux/build/..=
/kernel/trace/trace_sched_wakeup.c:596: undefined reference to `return_addr=
ess'
    1    /home/buildslave/workspace/workspace/kernel-build@5/linux/build/..=
/kernel/trace/trace_sched_wakeup.c:476: undefined reference to `return_addr=
ess'
    1    /home/buildslave/workspace/kernel-build/linux/build/../drivers/the=
rmal/qcom/tsens-common.c:95: undefined reference to `__aeabi_uldivmod'

Warnings summary:

    20   <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    6    sound/soc/soc-pcm.c:1185:8: warning: unused variable 'name' [-Wunu=
sed-variable]
    6    drivers/net/ethernet/intel/e1000e/netdev.c:6405:13: warning: 'e100=
0e_s0ix_exit_flow' defined but not used [-Wunused-function]
    6    drivers/net/ethernet/intel/e1000e/netdev.c:6298:13: warning: 'e100=
0e_s0ix_entry_flow' defined but not used [-Wunused-function]
    3    include/linux/kern_levels.h:5:18: warning: format '%lu' expects ar=
gument of type 'long unsigned int', but argument 8 has type 'unsigned int' =
[-Wformat=3D]
    3    fs/btrfs/tree-checker.c:230:43: warning: format '%lu' expects argu=
ment of type 'long unsigned int', but argument 5 has type 'unsigned int' [-=
Wformat=3D]
    2    sound/soc/codecs/rt5677-spi.c:114:30: warning: unused variable 'rt=
d' [-Wunused-variable]
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    {standard input}:134: Warning: macro instruction expanded into mul=
tiple instructions
    1    sound/soc/txx9/txx9aclc.c:54:30: warning: unused variable 'rtd' [-=
Wunused-variable]
    1    drivers/staging/octeon/octeon-ethernet.h:94:12: warning: 'union cv=
mx_helper_link_info' declared inside parameter list will not be visible out=
side of this definition or declaration
    1    drivers/staging/octeon/ethernet.c:499:30: warning: unused variable=
 'link_info' [-Wunused-variable]
    1    drivers/staging/octeon/ethernet.c:463:30: warning: unused variable=
 'link_info' [-Wunused-variable]
    1    .config:1166:warning: override: UNWINDER_GUESS changes choice stat=
e
    1    ./.tmp.config.vqz98kykAD:3378:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.vqz98kykAD:3361:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.vqz98kykAD:3360:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.vqz98kykAD:3356:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.vqz98kykAD:3336:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.vqz98kykAD:3330:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.vqz98kykAD:3321:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.vqz98kykAD:3319:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.vqz98kykAD:3318:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.vqz98kykAD:3317:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.vqz98kykAD:3315:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.vqz98kykAD:3314:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.vqz98kykAD:3311:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.vqz98kykAD:3304:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.vqz98kykAD:3294:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.vqz98kykAD:3283:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.vqz98kykAD:3175:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.vqz98kykAD:3171:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.vqz98kykAD:3145:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.vqz98kykAD:3124:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.vqz98kykAD:3116:warning: override: reassigning to sy=
mbol NF_NAT
    1    ./.tmp.config.vqz98kykAD:3112:warning: override: reassigning to sy=
mbol NF_CONNTRACK
    1    ./.tmp.config.vqz98kykAD:3057:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.vqz98kykAD:3056:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.vqz98kykAD:3052:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.vqz98kykAD:3051:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.vqz98kykAD:3049:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.vqz98kykAD:3048:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.vqz98kykAD:3045:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.botROXcfHX:7984:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.botROXcfHX:7967:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.botROXcfHX:7966:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.botROXcfHX:7962:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.botROXcfHX:7942:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.botROXcfHX:7936:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.botROXcfHX:7927:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.botROXcfHX:7925:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.botROXcfHX:7924:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.botROXcfHX:7923:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.botROXcfHX:7921:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.botROXcfHX:7920:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.botROXcfHX:7917:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.botROXcfHX:7910:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.botROXcfHX:7900:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.botROXcfHX:7889:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.botROXcfHX:7781:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.botROXcfHX:7777:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.botROXcfHX:7751:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.botROXcfHX:7730:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.botROXcfHX:7722:warning: override: reassigning to sy=
mbol NF_NAT
    1    ./.tmp.config.botROXcfHX:7718:warning: override: reassigning to sy=
mbol NF_CONNTRACK
    1    ./.tmp.config.botROXcfHX:7663:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.botROXcfHX:7662:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.botROXcfHX:7658:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.botROXcfHX:7657:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.botROXcfHX:7655:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.botROXcfHX:7654:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.botROXcfHX:7651:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.IBc07XCp0M:4900:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.IBc07XCp0M:4883:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.IBc07XCp0M:4882:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.IBc07XCp0M:4878:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.IBc07XCp0M:4858:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.IBc07XCp0M:4852:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.IBc07XCp0M:4843:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.IBc07XCp0M:4841:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.IBc07XCp0M:4840:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.IBc07XCp0M:4839:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.IBc07XCp0M:4837:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.IBc07XCp0M:4836:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.IBc07XCp0M:4833:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.IBc07XCp0M:4826:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.IBc07XCp0M:4816:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.IBc07XCp0M:4805:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.IBc07XCp0M:4697:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.IBc07XCp0M:4693:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.IBc07XCp0M:4667:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.IBc07XCp0M:4646:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.IBc07XCp0M:4638:warning: override: reassigning to sy=
mbol NF_NAT
    1    ./.tmp.config.IBc07XCp0M:4634:warning: override: reassigning to sy=
mbol NF_CONNTRACK
    1    ./.tmp.config.IBc07XCp0M:4579:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.IBc07XCp0M:4578:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.IBc07XCp0M:4574:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.IBc07XCp0M:4573:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.IBc07XCp0M:4571:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.IBc07XCp0M:4570:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.IBc07XCp0M:4567:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.HM5bF5GaDL:8588:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.HM5bF5GaDL:8571:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.HM5bF5GaDL:8570:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.HM5bF5GaDL:8566:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.HM5bF5GaDL:8546:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.HM5bF5GaDL:8540:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.HM5bF5GaDL:8531:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.HM5bF5GaDL:8529:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.HM5bF5GaDL:8528:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.HM5bF5GaDL:8527:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.HM5bF5GaDL:8525:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.HM5bF5GaDL:8524:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.HM5bF5GaDL:8521:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.HM5bF5GaDL:8514:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.HM5bF5GaDL:8504:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.HM5bF5GaDL:8493:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.HM5bF5GaDL:8385:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.HM5bF5GaDL:8381:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.HM5bF5GaDL:8355:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.HM5bF5GaDL:8334:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.HM5bF5GaDL:8326:warning: override: reassigning to sy=
mbol NF_NAT
    1    ./.tmp.config.HM5bF5GaDL:8322:warning: override: reassigning to sy=
mbol NF_CONNTRACK
    1    ./.tmp.config.HM5bF5GaDL:8267:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.HM5bF5GaDL:8266:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.HM5bF5GaDL:8262:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.HM5bF5GaDL:8261:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.HM5bF5GaDL:8259:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.HM5bF5GaDL:8258:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.HM5bF5GaDL:8255:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.7f2s50a6Nn:4837:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.7f2s50a6Nn:4820:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.7f2s50a6Nn:4819:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.7f2s50a6Nn:4815:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.7f2s50a6Nn:4795:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.7f2s50a6Nn:4789:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.7f2s50a6Nn:4780:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.7f2s50a6Nn:4778:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.7f2s50a6Nn:4777:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.7f2s50a6Nn:4776:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.7f2s50a6Nn:4774:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.7f2s50a6Nn:4773:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.7f2s50a6Nn:4770:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.7f2s50a6Nn:4763:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.7f2s50a6Nn:4753:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.7f2s50a6Nn:4742:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.7f2s50a6Nn:4634:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.7f2s50a6Nn:4630:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.7f2s50a6Nn:4604:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.7f2s50a6Nn:4583:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.7f2s50a6Nn:4575:warning: override: reassigning to sy=
mbol NF_NAT
    1    ./.tmp.config.7f2s50a6Nn:4571:warning: override: reassigning to sy=
mbol NF_CONNTRACK
    1    ./.tmp.config.7f2s50a6Nn:4516:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.7f2s50a6Nn:4515:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.7f2s50a6Nn:4511:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.7f2s50a6Nn:4510:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.7f2s50a6Nn:4508:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.7f2s50a6Nn:4507:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.7f2s50a6Nn:4504:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.58h93HElDO:3996:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.58h93HElDO:3979:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.58h93HElDO:3978:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.58h93HElDO:3974:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.58h93HElDO:3954:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.58h93HElDO:3948:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.58h93HElDO:3939:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.58h93HElDO:3937:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.58h93HElDO:3936:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.58h93HElDO:3935:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.58h93HElDO:3933:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.58h93HElDO:3932:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.58h93HElDO:3929:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.58h93HElDO:3922:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.58h93HElDO:3912:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.58h93HElDO:3901:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.58h93HElDO:3793:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.58h93HElDO:3789:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.58h93HElDO:3763:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.58h93HElDO:3742:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.58h93HElDO:3734:warning: override: reassigning to sy=
mbol NF_NAT
    1    ./.tmp.config.58h93HElDO:3730:warning: override: reassigning to sy=
mbol NF_CONNTRACK
    1    ./.tmp.config.58h93HElDO:3675:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.58h93HElDO:3674:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.58h93HElDO:3670:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.58h93HElDO:3669:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.58h93HElDO:3667:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.58h93HElDO:3666:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.58h93HElDO:3663:warning: override: reassigning to sy=
mbol BPF_SYSCALL

Section mismatches summary:

    5    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    3    WARNING: vmlinux.o(.text.unlikely+0x84c): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    3    WARNING: vmlinux.o(.text.unlikely+0x840): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x7c8): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x710): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x3630): Section mismatch in ref=
erence from the function pmax_setup_memory_region() to the function .init.t=
ext:add_memory_region()
    1    WARNING: vmlinux.o(.text.unlikely+0x3320): Section mismatch in ref=
erence from the function pmax_setup_memory_region() to the function .init.t=
ext:add_memory_region()

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Detailed per-defconfig build reports:

---------------------------------------------------------------------------=
-----
32r2el_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 31 warni=
ngs, 0 section mismatches

Warnings:
    ./.tmp.config.58h93HElDO:3663:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.58h93HElDO:3666:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.58h93HElDO:3667:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.58h93HElDO:3669:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.58h93HElDO:3670:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.58h93HElDO:3674:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.58h93HElDO:3675:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.58h93HElDO:3730:warning: override: reassigning to symbol =
NF_CONNTRACK
    ./.tmp.config.58h93HElDO:3734:warning: override: reassigning to symbol =
NF_NAT
    ./.tmp.config.58h93HElDO:3742:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.58h93HElDO:3763:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.58h93HElDO:3789:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.58h93HElDO:3793:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.58h93HElDO:3901:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.58h93HElDO:3912:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.58h93HElDO:3922:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.58h93HElDO:3929:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.58h93HElDO:3932:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.58h93HElDO:3933:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.58h93HElDO:3935:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.58h93HElDO:3936:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.58h93HElDO:3937:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.58h93HElDO:3939:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.58h93HElDO:3948:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.58h93HElDO:3954:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.58h93HElDO:3974:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.58h93HElDO:3978:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.58h93HElDO:3979:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.58h93HElDO:3996:warning: override: reassigning to symbol =
USER_NS
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    fs/btrfs/tree-checker.c:230:43: warning: format '%lu' expects argument =
of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wform=
at=3D]

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 6 errors, 0 warnings, 0 section m=
ismatches

Errors:
    trace_preemptirq.c:(.text+0x710): undefined reference to `return_addres=
s'
    arm-linux-gnueabihf-ld: trace_preemptirq.c:(.text+0xb10): undefined ref=
erence to `return_address'
    trace_preemptirq.c:(.text+0xd14): undefined reference to `return_addres=
s'
    arm-linux-gnueabihf-ld: trace_preemptirq.c:(.text+0xda0): undefined ref=
erence to `return_address'
    trace_irqsoff.c:(.text+0xa70): undefined reference to `return_address'
    arm-linux-gnueabihf-ld: kernel/trace/trace_irqsoff.o:trace_irqsoff.c:(.=
text+0x27d4): more undefined references to `return_address' follow

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    sound/soc/codecs/rt5677-spi.c:114:30: warning: unused variable 'rtd' [-=
Wunused-variable]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    sound/soc/codecs/rt5677-spi.c:114:30: warning: unused variable 'rtd' [-=
Wunused-variable]

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
ath25_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x84c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 sect=
ion mismatches

Errors:
    /home/buildslave/workspace/workspace/kernel-build@5/linux/build/../kern=
el/trace/trace_sched_wakeup.c:596: undefined reference to `return_address'
    arm-linux-gnueabihf-ld: /home/buildslave/workspace/workspace/kernel-bui=
ld@5/linux/build/../kernel/trace/trace_sched_wakeup.c:596: undefined refere=
nce to `return_address'
    /home/buildslave/workspace/workspace/kernel-build@5/linux/build/../kern=
el/trace/trace_sched_wakeup.c:476: undefined reference to `return_address'

---------------------------------------------------------------------------=
-----
bcm47xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
bcm63xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 3 warnings,=
 0 section mismatches

Errors:
    drivers/staging/octeon/ethernet.c:177:21: error: dereferencing pointer =
to incomplete type 'struct cvmx_wqe'
    drivers/staging/octeon/ethernet.c:463:30: error: storage size of 'link_=
info' isn't known
    drivers/staging/octeon/ethernet.c:499:30: error: storage size of 'link_=
info' isn't known
    drivers/staging/octeon/ethernet.c:516:29: error: type of formal paramet=
er 2 is incomplete

Warnings:
    drivers/staging/octeon/octeon-ethernet.h:94:12: warning: 'union cvmx_he=
lper_link_info' declared inside parameter list will not be visible outside =
of this definition or declaration
    drivers/staging/octeon/ethernet.c:463:30: warning: unused variable 'lin=
k_info' [-Wunused-variable]
    drivers/staging/octeon/ethernet.c:499:30: warning: unused variable 'lin=
k_info' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x84c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x840): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    sound/soc/soc-pcm.c:1185:8: warning: unused variable 'name' [-Wunused-v=
ariable]

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x3630): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x3320): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section mi=
smatches

Warnings:
    drivers/net/ethernet/intel/e1000e/netdev.c:6405:13: warning: 'e1000e_s0=
ix_exit_flow' defined but not used [-Wunused-function]
    drivers/net/ethernet/intel/e1000e/netdev.c:6298:13: warning: 'e1000e_s0=
ix_entry_flow' defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 31 warnings, 0=
 section mismatches

Warnings:
    ./.tmp.config.vqz98kykAD:3045:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.vqz98kykAD:3048:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.vqz98kykAD:3049:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.vqz98kykAD:3051:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.vqz98kykAD:3052:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.vqz98kykAD:3056:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.vqz98kykAD:3057:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.vqz98kykAD:3112:warning: override: reassigning to symbol =
NF_CONNTRACK
    ./.tmp.config.vqz98kykAD:3116:warning: override: reassigning to symbol =
NF_NAT
    ./.tmp.config.vqz98kykAD:3124:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.vqz98kykAD:3145:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.vqz98kykAD:3171:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.vqz98kykAD:3175:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.vqz98kykAD:3283:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.vqz98kykAD:3294:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.vqz98kykAD:3304:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.vqz98kykAD:3311:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.vqz98kykAD:3314:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.vqz98kykAD:3315:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.vqz98kykAD:3317:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.vqz98kykAD:3318:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.vqz98kykAD:3319:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.vqz98kykAD:3321:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.vqz98kykAD:3330:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.vqz98kykAD:3336:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.vqz98kykAD:3356:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.vqz98kykAD:3360:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.vqz98kykAD:3361:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.vqz98kykAD:3378:warning: override: reassigning to symbol =
USER_NS
    drivers/net/ethernet/intel/e1000e/netdev.c:6405:13: warning: 'e1000e_s0=
ix_exit_flow' defined but not used [-Wunused-function]
    drivers/net/ethernet/intel/e1000e/netdev.c:6298:13: warning: 'e1000e_s0=
ix_entry_flow' defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 29 warnings, 0=
 section mismatches

Warnings:
    ./.tmp.config.botROXcfHX:7651:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.botROXcfHX:7654:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.botROXcfHX:7655:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.botROXcfHX:7657:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.botROXcfHX:7658:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.botROXcfHX:7662:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.botROXcfHX:7663:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.botROXcfHX:7718:warning: override: reassigning to symbol =
NF_CONNTRACK
    ./.tmp.config.botROXcfHX:7722:warning: override: reassigning to symbol =
NF_NAT
    ./.tmp.config.botROXcfHX:7730:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.botROXcfHX:7751:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.botROXcfHX:7777:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.botROXcfHX:7781:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.botROXcfHX:7889:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.botROXcfHX:7900:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.botROXcfHX:7910:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.botROXcfHX:7917:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.botROXcfHX:7920:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.botROXcfHX:7921:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.botROXcfHX:7923:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.botROXcfHX:7924:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.botROXcfHX:7925:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.botROXcfHX:7927:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.botROXcfHX:7936:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.botROXcfHX:7942:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.botROXcfHX:7962:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.botROXcfHX:7966:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.botROXcfHX:7967:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.botROXcfHX:7984:warning: override: reassigning to symbol =
USER_NS

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
e55_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
em_x270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x710): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    sound/soc/soc-pcm.c:1185:8: warning: unused variable 'name' [-Wunused-v=
ariable]

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x840): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
haps_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 31 warning=
s, 0 section mismatches

Warnings:
    ./.tmp.config.7f2s50a6Nn:4504:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.7f2s50a6Nn:4507:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.7f2s50a6Nn:4508:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.7f2s50a6Nn:4510:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.7f2s50a6Nn:4511:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.7f2s50a6Nn:4515:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.7f2s50a6Nn:4516:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.7f2s50a6Nn:4571:warning: override: reassigning to symbol =
NF_CONNTRACK
    ./.tmp.config.7f2s50a6Nn:4575:warning: override: reassigning to symbol =
NF_NAT
    ./.tmp.config.7f2s50a6Nn:4583:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.7f2s50a6Nn:4604:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.7f2s50a6Nn:4630:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.7f2s50a6Nn:4634:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.7f2s50a6Nn:4742:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.7f2s50a6Nn:4753:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.7f2s50a6Nn:4763:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.7f2s50a6Nn:4770:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.7f2s50a6Nn:4773:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.7f2s50a6Nn:4774:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.7f2s50a6Nn:4776:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.7f2s50a6Nn:4777:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.7f2s50a6Nn:4778:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.7f2s50a6Nn:4780:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.7f2s50a6Nn:4789:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.7f2s50a6Nn:4795:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.7f2s50a6Nn:4815:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.7f2s50a6Nn:4819:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.7f2s50a6Nn:4820:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.7f2s50a6Nn:4837:warning: override: reassigning to symbol =
USER_NS
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    fs/btrfs/tree-checker.c:230:43: warning: format '%lu' expects argument =
of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wform=
at=3D]

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/net/ethernet/intel/e1000e/netdev.c:6405:13: warning: 'e1000e_s0=
ix_exit_flow' defined but not used [-Wunused-function]
    drivers/net/ethernet/intel/e1000e/netdev.c:6298:13: warning: 'e1000e_s0=
ix_entry_flow' defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
ip28_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
jmr3927_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x7c8): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
lasat_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
loongson1b_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
loongson1c_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    sound/soc/soc-pcm.c:1185:8: warning: unused variable 'name' [-Wunused-v=
ariable]

---------------------------------------------------------------------------=
-----
mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches

Warnings:
    {standard input}:134: Warning: macro instruction expanded into multiple=
 instructions

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
markeins_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
msp71xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 =
warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 FAIL, 6 errors, 29 warn=
ings, 0 section mismatches

Errors:
    trace_preemptirq.c:(.text+0x2a8): undefined reference to `return_addres=
s'
    arm-linux-gnueabihf-ld: trace_preemptirq.c:(.text+0x2e4): undefined ref=
erence to `return_address'
    trace_preemptirq.c:(.text+0x470): undefined reference to `return_addres=
s'
    arm-linux-gnueabihf-ld: trace_preemptirq.c:(.text+0x49c): undefined ref=
erence to `return_address'
    trace_irqsoff.c:(.text+0x7a8): undefined reference to `return_address'
    arm-linux-gnueabihf-ld: kernel/trace/trace_irqsoff.o:trace_irqsoff.c:(.=
text+0xee4): more undefined references to `return_address' follow

Warnings:
    ./.tmp.config.HM5bF5GaDL:8255:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.HM5bF5GaDL:8258:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.HM5bF5GaDL:8259:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.HM5bF5GaDL:8261:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.HM5bF5GaDL:8262:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.HM5bF5GaDL:8266:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.HM5bF5GaDL:8267:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.HM5bF5GaDL:8322:warning: override: reassigning to symbol =
NF_CONNTRACK
    ./.tmp.config.HM5bF5GaDL:8326:warning: override: reassigning to symbol =
NF_NAT
    ./.tmp.config.HM5bF5GaDL:8334:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.HM5bF5GaDL:8355:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.HM5bF5GaDL:8381:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.HM5bF5GaDL:8385:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.HM5bF5GaDL:8493:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.HM5bF5GaDL:8504:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.HM5bF5GaDL:8514:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.HM5bF5GaDL:8521:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.HM5bF5GaDL:8524:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.HM5bF5GaDL:8525:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.HM5bF5GaDL:8527:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.HM5bF5GaDL:8528:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.HM5bF5GaDL:8529:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.HM5bF5GaDL:8531:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.HM5bF5GaDL:8540:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.HM5bF5GaDL:8546:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.HM5bF5GaDL:8566:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.HM5bF5GaDL:8570:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.HM5bF5GaDL:8571:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.HM5bF5GaDL:8588:warning: override: reassigning to symbol =
USER_NS

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/net/ethernet/intel/e1000e/netdev.c:6405:13: warning: 'e1000e_s0=
ix_exit_flow' defined but not used [-Wunused-function]
    drivers/net/ethernet/intel/e1000e/netdev.c:6298:13: warning: 'e1000e_s0=
ix_entry_flow' defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    fs/btrfs/tree-checker.c:230:43: warning: format '%lu' expects argument =
of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wform=
at=3D]
    drivers/net/ethernet/intel/e1000e/netdev.c:6405:13: warning: 'e1000e_s0=
ix_exit_flow' defined but not used [-Wunused-function]
    drivers/net/ethernet/intel/e1000e/netdev.c:6298:13: warning: 'e1000e_s0=
ix_entry_flow' defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings=
, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x840): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

---------------------------------------------------------------------------=
-----
prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section =
mismatches

Errors:
    /home/buildslave/workspace/kernel-build/linux/build/../drivers/thermal/=
qcom/tsens-common.c:95: undefined reference to `__aeabi_uldivmod'

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    sound/soc/txx9/txx9aclc.c:54:30: warning: unused variable 'rtd' [-Wunus=
ed-variable]

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
rv32_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/net/ethernet/intel/e1000e/netdev.c:6405:13: warning: 'e1000e_s0=
ix_exit_flow' defined but not used [-Wunused-function]
    drivers/net/ethernet/intel/e1000e/netdev.c:6298:13: warning: 'e1000e_s0=
ix_entry_flow' defined but not used [-Wunused-function]
    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    sound/soc/soc-pcm.c:1185:8: warning: unused variable 'name' [-Wunused-v=
ariable]

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    sound/soc/soc-pcm.c:1185:8: warning: unused variable 'name' [-Wunused-v=
ariable]

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

---------------------------------------------------------------------------=
-----
shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x84c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1166:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mism=
atches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 29 war=
nings, 0 section mismatches

Warnings:
    ./.tmp.config.IBc07XCp0M:4567:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.IBc07XCp0M:4570:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.IBc07XCp0M:4571:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.IBc07XCp0M:4573:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.IBc07XCp0M:4574:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.IBc07XCp0M:4578:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.IBc07XCp0M:4579:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.IBc07XCp0M:4634:warning: override: reassigning to symbol =
NF_CONNTRACK
    ./.tmp.config.IBc07XCp0M:4638:warning: override: reassigning to symbol =
NF_NAT
    ./.tmp.config.IBc07XCp0M:4646:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.IBc07XCp0M:4667:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.IBc07XCp0M:4693:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.IBc07XCp0M:4697:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.IBc07XCp0M:4805:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.IBc07XCp0M:4816:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.IBc07XCp0M:4826:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.IBc07XCp0M:4833:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.IBc07XCp0M:4836:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.IBc07XCp0M:4837:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.IBc07XCp0M:4839:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.IBc07XCp0M:4840:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.IBc07XCp0M:4841:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.IBc07XCp0M:4843:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.IBc07XCp0M:4852:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.IBc07XCp0M:4858:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.IBc07XCp0M:4878:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.IBc07XCp0M:4882:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.IBc07XCp0M:4883:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.IBc07XCp0M:4900:warning: override: reassigning to symbol =
USER_NS

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    sound/soc/soc-pcm.c:1185:8: warning: unused variable 'name' [-Wunused-v=
ariable]

---------------------------------------------------------------------------=
-----
zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5db81c90.1c69fb81.b6d53.9468%40mx.google.com.
