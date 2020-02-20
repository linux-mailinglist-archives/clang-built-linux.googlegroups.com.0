Return-Path: <clang-built-linux+bncBDT6TV45WMPRB36LXDZAKGQECSDRYJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C544165788
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 07:23:44 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id t17sf1655948ply.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 22:23:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582179823; cv=pass;
        d=google.com; s=arc-20160816;
        b=BwhVO5KIR7k0m6sE4oGX8MtfRYW9I1Z62y9/IptQWs31ca//xl02ue9VRK+O2YylJw
         Lbn5hpK6YrPD8TxNIctdra/wrimoyAL2be4U4NE62p126n5eW9eBYLKoZbdupAgT81AP
         lg+ypzrwQEMGrGTOstmxBaA5huUrkNt2xhDMjUXFedxLUSm9/z3AFnyXjVI6QxglZRBy
         5mw4MDL+vioPERGTGYLsDZAKh48cC4ZdPoPPbnA2FKFP/bLb0V3RbiuGp9S/1Xe9axCv
         Vp3uLQwxs7KmPPRhFLvxz3fcHOcjSWm8yL7cafMVXrrWofZr+GEB27ShwD6BszsGlDeg
         khSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=E6YSek8RJiT8F+JKllEsera8rmiDxqwJOzjfnNyvlXI=;
        b=xCo9NR0UMs3Xt13ytpJWhMcXDeNpIuIVSrUixeCNXWYLhEgWKZPOHULJkdcARvgyJy
         6x//SOQoEmUvX/NFQLFRC3mf/Oijc7yRx8Il8B3uMaXzgIsqxwMbzec76fRf2gc/UbYL
         4uxzZsw+vSB7kg1DEl/z+aA9hipqG6agJgUbXnOqPo7VSbUKHI4OLE2j5BuGbDo9/4zG
         84IWf7qKSFSwGJnBKKwZf9xfmfeRlbkvTIoUufq/acsJIpD3MxrNgtLZu4wOjZ3Y3AQZ
         +pvC6jmT2XZSLx2YvZVt4j7KdK22Ed+Yqkyz5rqa9sGH/lGOQ1hmTWYe3htWsrR4B9Q0
         fJXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=Y96gcdGY;
       spf=neutral (google.com: 2607:f8b0:4864:20::441 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E6YSek8RJiT8F+JKllEsera8rmiDxqwJOzjfnNyvlXI=;
        b=BFDqqdovlnjc1jcsb6ruJ4oUx2jPhmGP9mrc/IPsdKyu3/4xuPFU2Ilj/93fadJ1DP
         3XoETq/hZ9CW5IDxLyDDeX6bMj9D9mc5llb6zMAiaF5k4rRpEbitaAYl1Zq2R6IrP1hO
         r0hnUfEJBZlUvYDmPy8ahHTPyxPBGceRyi4LRQl9pit5CwUxMlLo0UgG7z+41eoZWIr3
         RTndz7azMoluo3XiUdWvdrjB65fIFiP1PtydmYxtbuMglx7Nu0ztUcDcj9ID5xe+EpoF
         L4LHfbeHt7C/Zl60Zag/Ij0C6xjuAGjLE0YuAlaVDL3sJJ+bol+YW0+vImFY5KsBOZBf
         xTMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E6YSek8RJiT8F+JKllEsera8rmiDxqwJOzjfnNyvlXI=;
        b=gPMt2UafnTfKi2fuOhn7OKLUn2DgLxKDVh+YATGw2HpsX/H/IpvguxoTFvur7cUyEN
         NFo4tC9yGIB/AwpXuvgayMwpYCrk4UcZ/raAcmyqfalG+EaEZQYhstVRM4Hl0Fl/nfQQ
         Cehyu/6xerG8zerfg2R+kZsHQL5c3Uddn9onyFLoUzx1gBEoZeXrh4e1CNrn+a44moJW
         jIsrXzBrTIwfX8qEBwU25s37Ij8PpzALd1caiShCZB0k+OFwpQ7XAzurISHh9stsIdox
         VdLhmVN1SidCxanGjV0k6G5JnxrQ5BE3VV+lWZ6H79AMTXkAgRPWxRYvKrDhmZ0vOGew
         b0xg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX10xDhDhCAqzQS06t9/5ktUbWPqDyjYzV6hy8UTEqJyFDxyWrw
	ME7YEGVlhrtvcgNkmd+v35I=
X-Google-Smtp-Source: APXvYqzclcHXXUAJktBy1rsUucoYKEH1YbduJ5IrBWOtJU/SBVI50K1qGG8sKZcByrL/IsinOVJwrQ==
X-Received: by 2002:a63:5826:: with SMTP id m38mr32492182pgb.191.1582179823277;
        Wed, 19 Feb 2020 22:23:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7281:: with SMTP id d1ls8516010pll.1.gmail; Wed, 19
 Feb 2020 22:23:42 -0800 (PST)
X-Received: by 2002:a17:902:868d:: with SMTP id g13mr31088769plo.36.1582179822771;
        Wed, 19 Feb 2020 22:23:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582179822; cv=none;
        d=google.com; s=arc-20160816;
        b=LCVWWc9WJyT4bDO8XGQMvA5HZKE3vxihCRm2V4vdve8LzFzRcrBVLadseS9+XRzKew
         kxhC75sskUN1rGdFH59VEXMSXXwtUTYxzICu0GnZm4sHeq4Ej04I7vH5IfCpR8P45y9j
         xAynu3c8rhmCiYldGnnYkhwpdTw+c0mha6zdaVGBAjq48+AAMfgJnZp8hjBJBGttBndo
         GfgTMywqOOgvkDAQrkKtcLNflpzTuK7NZX40XCjE0jhDw5dYmfh1sHha3YgcALkYzQGf
         B6mmCTo3xqxA2nXR0GL6/doCGruatE57pKE2njTeoptEFQUTTum9hRfwNpCLq1phmJwK
         /Rnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=Hi6mGCAtsWQJ8S48n1SaSpH6Tfvw6RoqXNj1VL4Z/N4=;
        b=q1Y+xRlTNW9jIacJOJcoCyw5z5RAzOQCSJosYdGFOTHXTL1epqDp1h5FAxrOfzUKXR
         +DVY+wKsB7VZO2V5LiK256Ss9NU3eU6au49fGOAy2icAdOKcIfExHxZ2xIkfauLIGLP3
         vkrXzpQIntUMriF3ol5YxxzD/p6pXtTOwdeVGYG4orfhtDjyMoac/j3ZKd21AupzLUk2
         ZIsW61j9zsjXexTAAuevBVDXdLb5L1wFS45PmegpKXYUZCoRt7HoIQxYcjmLL4bqZQ2U
         vDo67678+EEj6cB422R1E8/IU2RgUOGCGe5skkqUEwagLLKy3ztKlBz+2BGZd1oNvVAL
         t5Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=Y96gcdGY;
       spf=neutral (google.com: 2607:f8b0:4864:20::441 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id a4si44464pje.1.2020.02.19.22.23.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 22:23:42 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::441 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id 84so1389046pfy.6
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 22:23:42 -0800 (PST)
X-Received: by 2002:a63:480f:: with SMTP id v15mr30796411pga.201.1582179821099;
        Wed, 19 Feb 2020 22:23:41 -0800 (PST)
Received: from [10.0.9.4] ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id d73sm1773937pfd.109.2020.02.19.22.23.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2020 22:23:40 -0800 (PST)
Message-ID: <5e4e25ec.1c69fb81.f486.6367@mx.google.com>
Date: Wed, 19 Feb 2020 22:23:40 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Kernel: next-20200220
X-Kernelci-Report-Type: build
X-Kernelci-Tree: next
X-Kernelci-Branch: master
Subject: next/master build: 41 builds: 0 failed, 41 passed,
 145 warnings (next-20200220)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=Y96gcdGY;       spf=neutral (google.com: 2607:f8b0:4864:20::441 is
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

next/master build: 41 builds: 0 failed, 41 passed, 145 warnings (next-20200=
220)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20200220/

Tree: next
Branch: master
Git Describe: next-20200220
Git Commit: f4aba10148cd290bbbf4d0efae0e9789a13c2778
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
Built: 7 unique architectures

Warnings Detected:

arc:

arm64:
    allmodconfig (clang-8): 87 warnings
    allmodconfig (gcc-8): 2 warnings
    defconfig (clang-8): 26 warnings
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning

arm:
    allmodconfig (gcc-8): 22 warnings

i386:

mips:

riscv:
    defconfig (gcc-8): 1 warning

x86_64:
    allmodconfig (gcc-8): 3 warnings


Warnings summary:

    40   1 warning generated.
    14   drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warni=
ng: '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define=
 of a different macro [-Wheader-guard]
    9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    8    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=
=80=98write_one_page=E2=80=99, declared with attribute warn_unused_result [=
-Wunused-result]
    7    2 warnings generated.
    5    WARNING: modpost: missing MODULE_LICENSE() in drivers/mmc/host/mmc=
_hsq.o
    4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    4    drivers/gpu/drm/drm_dp_mst_topology.c:5400:30: warning: suggest br=
aces around initialization of subobject [-Wmissing-braces]
    2    net/bluetooth/smp.c:2185:8: warning: variable 'passkey' is uniniti=
alized when used here [-Wuninitialized]
    2    net/bluetooth/smp.c:2119:13: note: initialize the variable 'passke=
y' to silence this warning
    2    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of funct=
ion declared with 'warn_unused_result' attribute [-Wunused-result]
    2    fs/btrfs/backref.c:394:30: warning: suggest braces around initiali=
zation of subobject [-Wmissing-braces]
    2    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:722:36: warning: suggest br=
aces around initialization of subobject [-Wmissing-braces]
    2    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2675:80=
: warning: suggest braces around initialization of subobject [-Wmissing-bra=
ces]
    2    3 warnings generated.
    1    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is =
uninitialized when used within its own initialization [-Wuninitialized]
    1    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
    1    mm/shmem.c:2742:35: warning: variable 'shmem_falloc_waitq' is unin=
itialized when used within its own initialization [-Wuninitialized]
    1    fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    1    fs/proc/base.c:1985:35: warning: variable 'wq' is uninitialized wh=
en used within its own initialization [-Wuninitialized]
    1    fs/nfs/dir.c:464:34: warning: variable 'wq' is uninitialized when =
used within its own initialization [-Wuninitialized]
    1    fs/nfs/dir.c:1638:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
    1    fs/namei.c:3213:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1    fs/namei.c:1736:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1    fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized =
when used within its own initialization [-Wuninitialized]
    1    fs/cifs/readdir.c:84:34: warning: variable 'wq' is uninitialized w=
hen used within its own initialization [-Wuninitialized]
    1    fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/lpfc/lpfc_sli.c:11910:34: warning: variable 'done_q' =
is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/lpfc/lpfc_scsi.c:4728:34: warning: variable 'waitq' i=
s uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:185:7: warning: vari=
able 'rate_idx' is used uninitialized whenever 'if' condition is false [-Ws=
ometimes-uninitialized]
    1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:184:13: warning: var=
iable 'rate_idx' is used uninitialized whenever 'if' condition is false [-W=
sometimes-uninitialized]
    1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:175:7: warning: vari=
able 'rate_idx' is used uninitialized whenever 'if' condition is false [-Ws=
ometimes-uninitialized]
    1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:139:13: note: initia=
lize the variable 'rate_idx' to silence this warning
    1    drivers/net/usb/lan78xx.c:2659:34: warning: variable 'unlink_wakeu=
p' is uninitialized when used within its own initialization [-Wuninitialize=
d]
    1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to =
integer of different size [-Wpointer-to-int-cast]
    1    drivers/net/ethernet/amazon/ena/ena_netdev.c:313:38: warning: sugg=
est braces around initialization of subobject [-Wmissing-braces]
    1    drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake'=
 is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake'=
 is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/infiniband/core/security.c:351:41: warning: use of logical=
 '||' with constant operand [-Wconstant-logical-operand]
    1    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is unin=
itialized when used within its own initialization [-Wuninitialized]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2673:53=
: warning: suggest braces around initialization of subobject [-Wmissing-bra=
ces]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:342=
:53: warning: suggest braces around initialization of subobject [-Wmissing-=
braces]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:116=
:62: warning: suggest braces around initialization of subobject [-Wmissing-=
braces]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:297:4=
1: warning: suggest braces around initialization of subobject [-Wmissing-br=
aces]
    1    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8540:4=
3: warning: suggest braces around initialization of subobject [-Wmissing-br=
aces]
    1    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is =
uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/android/binderfs.c:657:41: warning: suggest braces around =
initialization of subobject [-Wmissing-braces]
    1    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C addr=
ess must be less than 10-bits, got "0x40000010"
    1    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: =
Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus =
unit address format error, expected "40000010"
    1    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C addr=
ess must be less than 10-bits, got "0x40000010"
    1    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: =
Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus =
unit address format error, expected "40000010"
    1    /tmp/cc0w8BtA.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/cc0w8BtA.s:18119: Warning: using r15 results in unpredictable=
 behaviour

Section mismatches summary:

    1    WARNING: vmlinux.o(.text.unlikely+0x3684): Section mismatch in ref=
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
allmodconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 87 warnings, 0 sect=
ion mismatches

Warnings:
    fs/proc/base.c:1985:35: warning: variable 'wq' is uninitialized when us=
ed within its own initialization [-Wuninitialized]
    1 warning generated.
    mm/shmem.c:2742:35: warning: variable 'shmem_falloc_waitq' is uninitial=
ized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitialized w=
hen used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/namei.c:1736:34: warning: variable 'wq' is uninitialized when used w=
ithin its own initialization [-Wuninitialized]
    fs/namei.c:3213:34: warning: variable 'wq' is uninitialized when used w=
ithin its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/android/binderfs.c:657:41: warning: suggest braces around initi=
alization of subobject [-Wmissing-braces]
    1 warning generated.
    fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    net/bluetooth/smp.c:2185:8: warning: variable 'passkey' is uninitialize=
d when used here [-Wuninitialized]
    net/bluetooth/smp.c:2119:13: note: initialize the variable 'passkey' to=
 silence this warning
    1 warning generated.
    fs/cifs/readdir.c:84:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of function d=
eclared with 'warn_unused_result' attribute [-Wunused-result]
    1 warning generated.
    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is uninitial=
ized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized when =
used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/btrfs/backref.c:394:30: warning: suggest braces around initializatio=
n of subobject [-Wmissing-braces]
    1 warning generated.
    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
    1 warning generated.
    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/nfs/dir.c:464:34: warning: variable 'wq' is uninitialized when used =
within its own initialization [-Wuninitialized]
    fs/nfs/dir.c:1638:34: warning: variable 'wq' is uninitialized when used=
 within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/infiniband/core/security.c:351:41: warning: use of logical '||'=
 with constant operand [-Wconstant-logical-operand]
    1 warning generated.
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:722:36: warning: suggest braces =
around initialization of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake' is u=
ninitialized when used within its own initialization [-Wuninitialized]
    drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake' is u=
ninitialized when used within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/net/ethernet/amazon/ena/ena_netdev.c:313:38: warning: suggest b=
races around initialization of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/net/usb/lan78xx.c:2659:34: warning: variable 'unlink_wakeup' is=
 uninitialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/gpu/drm/drm_dp_mst_topology.c:5400:30: warning: suggest braces =
around initialization of subobject [-Wmissing-braces]
    drivers/gpu/drm/drm_dp_mst_topology.c:5400:30: warning: suggest braces =
around initialization of subobject [-Wmissing-braces]
    2 warnings generated.
    drivers/net/wireless/ath/ath11k/debugfs_sta.c:185:7: warning: variable =
'rate_idx' is used uninitialized whenever 'if' condition is false [-Wsometi=
mes-uninitialized]
    drivers/net/wireless/ath/ath11k/debugfs_sta.c:184:13: warning: variable=
 'rate_idx' is used uninitialized whenever 'if' condition is false [-Wsomet=
imes-uninitialized]
    drivers/net/wireless/ath/ath11k/debugfs_sta.c:175:7: warning: variable =
'rate_idx' is used uninitialized whenever 'if' condition is false [-Wsometi=
mes-uninitialized]
    drivers/net/wireless/ath/ath11k/debugfs_sta.c:139:13: note: initialize =
the variable 'rate_idx' to silence this warning
    3 warnings generated.
    drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/scsi/lpfc/lpfc_sli.c:11910:34: warning: variable 'done_q' is un=
initialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/scsi/lpfc/lpfc_scsi.c:4728:34: warning: variable 'waitq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8540:43: wa=
rning: suggest braces around initialization of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:116:62: =
warning: suggest braces around initialization of subobject [-Wmissing-brace=
s]
    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:342:53: =
warning: suggest braces around initialization of subobject [-Wmissing-brace=
s]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:297:41: wa=
rning: suggest braces around initialization of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2673:53: war=
ning: suggest braces around initialization of subobject [-Wmissing-braces]
    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2675:80: war=
ning: suggest braces around initialization of subobject [-Wmissing-braces]
    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2675:80: war=
ning: suggest braces around initialization of subobject [-Wmissing-braces]
    3 warnings generated.
    WARNING: modpost: missing MODULE_LICENSE() in drivers/mmc/host/mmc_hsq.=
o

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 22 warnings, 0 section =
mismatches

Warnings:
    /tmp/cc0w8BtA.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/cc0w8BtA.s:18191: Warning: using r15 results in unpredictable beha=
viour
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=80=98w=
rite_one_page=E2=80=99, declared with attribute warn_unused_result [-Wunuse=
d-result]
    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to integ=
er of different size [-Wpointer-to-int-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    WARNING: modpost: missing MODULE_LICENSE() in drivers/mmc/host/mmc_hsq.=
o
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: Warni=
ng (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning (=
i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: Warni=
ng (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning (=
i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=80=98w=
rite_one_page=E2=80=99, declared with attribute warn_unused_result [-Wunuse=
d-result]
    WARNING: modpost: missing MODULE_LICENSE() in drivers/mmc/host/mmc_hsq.=
o

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=80=98w=
rite_one_page=E2=80=99, declared with attribute warn_unused_result [-Wunuse=
d-result]
    WARNING: modpost: missing MODULE_LICENSE() in drivers/mmc/host/mmc_hsq.=
o
    WARNING: modpost: missing MODULE_LICENSE() in drivers/mmc/host/mmc_hsq.=
o

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

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
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x3684): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 26 warnings, 0 section=
 mismatches

Warnings:
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of function d=
eclared with 'warn_unused_result' attribute [-Wunused-result]
    1 warning generated.
    net/bluetooth/smp.c:2185:8: warning: variable 'passkey' is uninitialize=
d when used here [-Wuninitialized]
    net/bluetooth/smp.c:2119:13: note: initialize the variable 'passkey' to=
 silence this warning
    1 warning generated.
    fs/btrfs/backref.c:394:30: warning: suggest braces around initializatio=
n of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:722:36: warning: suggest braces =
around initialization of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/gpu/drm/drm_dp_mst_topology.c:5400:30: warning: suggest braces =
around initialization of subobject [-Wmissing-braces]
    drivers/gpu/drm/drm_dp_mst_topology.c:5400:30: warning: suggest braces =
around initialization of subobject [-Wmissing-braces]
    2 warnings generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=80=98w=
rite_one_page=E2=80=99, declared with attribute warn_unused_result [-Wunuse=
d-result]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 1 warning, 0 section mismatches

Warnings:
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=80=98w=
rite_one_page=E2=80=99, declared with attribute warn_unused_result [-Wunuse=
d-result]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 1 warning, 0 section mismatches

Warnings:
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=80=98w=
rite_one_page=E2=80=99, declared with attribute warn_unused_result [-Wunuse=
d-result]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=80=98w=
rite_one_page=E2=80=99, declared with attribute warn_unused_result [-Wunuse=
d-result]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/btrfs/volumes.c:7338:3: warning: ignoring return value of =E2=80=98w=
rite_one_page=E2=80=99, declared with attribute warn_unused_result [-Wunuse=
d-result]

---------------------------------------------------------------------------=
-----
ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
lasat_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
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
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5e4e25ec.1c69fb81.f486.6367%40mx.google.com.
