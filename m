Return-Path: <clang-built-linux+bncBDT6TV45WMPRB6EN3D3QKGQEI55LE4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 59EFA20B39C
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 16:32:25 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id ee9sf4148308qvb.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 07:32:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593181944; cv=pass;
        d=google.com; s=arc-20160816;
        b=vYfnN4V8yp/1jWB+4Tmgo4KUqGpP2ijcIb95J5naz1Tl0N72BbZsQCIaVGghTv2Nka
         eeW+oSLKZhFxYhronzEY0+zVYVRByscL98lEy6d3EsQO77dd5nQerko6/6rpQCZcS9es
         DIvOnR33e7ecpWomhD9C3rWke7WISz31Zbx81X/5vGyFaNQhnLGIWsn4qrNLifBxhO1K
         oqkSKNK1oxwM/+FvXUBggf6ubrj4LhAdx4zPTr31KwHGGlssAARNhC3M7+UEpfjMfajt
         /qqjZqp/l6N/FDvutHowDOXRiZMELORd4FLsRwUhljfgSSbhRBqibSc1PqF66+xefBmo
         qq4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=5ISeguXFz6qPUowDYZ5uV2WlI2H9DG5mCjDxcS7hR/4=;
        b=nTeTE3Lfu9OkQDYABJj4wvASQaMupIf9jx5FCtPurDIisfDzKMJLaUNCfjU3zUA8sb
         NqFc2eBh3L5e248GQHShDXkrmU+wl+Zegi0kd1mbCkpglsaxc4a8mXEdaqUhw19bTgo/
         k5ttPN4SM6WsjtvPsomOv0BvWd9Ly+7L88rFnCYM52eGJAJzeRz5CuvK+UqwwV0pS6vP
         CVZ6EZjGz2QFwkamp8YlxKq4R9Mp4FbWSvu4Qo438VA9H3M2CES1GHnwZ2woub7t9AsJ
         9rbKUkrhYfp/HZ2QM2xorTW7Rg0YV1LGyV3Zcw0FwWelUOYRpsKNjnHp7VG2ql/axRL/
         HfbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=JcGrK0Nh;
       spf=neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5ISeguXFz6qPUowDYZ5uV2WlI2H9DG5mCjDxcS7hR/4=;
        b=DCfauaVRC8wbafKBmFNLNxyyOi+/ts6fSijYZarT5NeMAicJThGRzWIL0MpPpMooPc
         zpC9n/FchWecKK7vhFuIwPDvmF/3fmypMomJ8bK0euLap612IDFPRPFVm0GNNdR4SUT4
         Iu6Ca1ecQ4Jo6vAS6Xay4+/PbIJA2bD4RwOb3KyJi2iOIACueO8XzYjVcvvh/3IStCfm
         faRm6yq1zTNpvies7Tj6lejKfTL+ESyoNHi2pch5RtmyaX/uW7tQIP343rCbqU2aCH5j
         rH8jApLJOC/KBoPvCAexcGwYRx8w8iWLLT2aWJuPYAcgIII2UYkeFcDLtKQjQwyCqHBb
         oerA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5ISeguXFz6qPUowDYZ5uV2WlI2H9DG5mCjDxcS7hR/4=;
        b=ilVMNutW2GDHRnQ6IvF1OGcuuAbDWmh3Aea+M5u2nXyKFqPPTV9SHJ47EJWdkZhXrG
         /6SiZGUta5nO9ehRU8UIMF3JzFbFnXxq0xdZtefG+slFwvEKXAjFfUN72WLL9WT8ZytX
         Q8jEhRqaNDC4WbGLkzmR7cvChY0n+bvlastvygr1ShC3XJPpeNJGVgw/A+R5tgs867s8
         k7RfE3m1iWOXDNryvBLkA8JPftQjjpX3VfACCkWgFMTEoXh0QMWxhUtDkeu9sd5YdLS1
         I188aQQDuSah+cxMXfVau3c2ziitNKal83GyOq36X5Kzk8LTp1oMGyV+aUpaxZhXjYrz
         qZwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZqvQFtpbIau24TXPiYT06sEjXY7FnUC4CvKFn6Wk7+BYN+8jt
	z8dkbNXh8eWgYxYlpwCw6V8=
X-Google-Smtp-Source: ABdhPJzXkFzpfDLmk9N5ninXRw0LH/I4Ddb9/G9/KWgzqU7TOVtd0JNgMQwGMSBVZH54nDGby9pufg==
X-Received: by 2002:ac8:5486:: with SMTP id h6mr3013967qtq.255.1593181944241;
        Fri, 26 Jun 2020 07:32:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1ac1:: with SMTP id h1ls3790934qtk.4.gmail; Fri, 26 Jun
 2020 07:32:23 -0700 (PDT)
X-Received: by 2002:ac8:2f7b:: with SMTP id k56mr2153786qta.239.1593181943656;
        Fri, 26 Jun 2020 07:32:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593181943; cv=none;
        d=google.com; s=arc-20160816;
        b=LUu1rb57bqYKsUjoMbGFLQ4t4wR39FOdQqjIBfJmebM/oQ8uhH1fnRytMQ3M50u94h
         5z4PmitDDQCeQ061SEzBuGnYmhqHY8rD6gS0DXt+CBV0V+Afa+Diej3Gg+Re7NsSYCe6
         AfFcqKHJoROhYVPY2ot1FW0VWBX4LvybSjwUSSjvY1KraQGAE0pzKFMSv7N2CJAh4HPM
         GS+3OEWcFI0A314IvYhT6YARpMTO5iri9UHxPGoAuJMlQk+G8BGKqIKsejiI7uHzA0C1
         mP/Nqbrr9y/MkTb8RxUC7l5LsA5cJxY3j3vt1/zwx1/SKh7ARwicy9twPghMLFwkz/cK
         WFbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=Z+Bw5TqDj7jYvd36kaBz+fRerd5A9KswHn7yvxM2Ibw=;
        b=iakKkVbAU6Sl8mdNXM88foI2tl7/hAEzhfgmPXztK9+fiopV/0iyRjXLiqPZkqk6Xx
         G7XiHEw8CsN50nZ/ffHnWHXNrY9H/jPNVJR73xMQ50UHIIx9OHaPnTPiuOcqQfMKhe9Z
         LzwXjsPfCZ2hEl16+IrJ4vhNSS/WygQwCNakYrm6OVTuWAFQbVXXFYYD4yXZkXTccEE8
         Ucj3Rz7ufSWp2QPtScOVCc/HLx+fp96dOl78aF+NCUpuwcYXbtNwdYJDRbWYasMq8uLJ
         qLDJTcFoLxC01inPOyA4rhDa6Os3e0UIKnKnoriBKPG8FmZlXvhkHxoYQHuiGNhXNNsj
         4+sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=JcGrK0Nh;
       spf=neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id q14si594630qtn.4.2020.06.26.07.32.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jun 2020 07:32:23 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 207so4534877pfu.3
        for <clang-built-linux@googlegroups.com>; Fri, 26 Jun 2020 07:32:23 -0700 (PDT)
X-Received: by 2002:a62:78cb:: with SMTP id t194mr3113507pfc.46.1593181940292;
        Fri, 26 Jun 2020 07:32:20 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id hv15sm11414973pjb.17.2020.06.26.07.32.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2020 07:32:19 -0700 (PDT)
Message-ID: <5ef606f3.1c69fb81.ef286.11be@mx.google.com>
Date: Fri, 26 Jun 2020 07:32:19 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Kernel: next-20200626
X-Kernelci-Report-Type: build
X-Kernelci-Tree: next
X-Kernelci-Branch: master
Subject: next/master build: 147 builds: 21 failed, 126 passed, 102 errors,
 149 warnings (next-20200626)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=JcGrK0Nh;       spf=neutral (google.com: 2607:f8b0:4864:20::443 is
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

next/master build: 147 builds: 21 failed, 126 passed, 102 errors, 149 warni=
ngs (next-20200626)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20200626/

Tree: next
Branch: master
Git Describe: next-20200626
Git Commit: 36e3135df4d426612fc77db26a312c2531108603
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arm64:
    defconfig: (clang-10) FAIL
    defconfig: (clang-9) FAIL
    defconfig: (gcc-8) FAIL
    defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy: (gcc-8) FAIL
    defconfig+CONFIG_RANDOMIZE_BASE=3Dy: (gcc-8) FAIL
    defconfig+kselftest: (gcc-8) FAIL

arm:
    allmodconfig: (gcc-8) FAIL
    milbeaut_m10v_defconfig: (gcc-8) FAIL
    multi_v4t_defconfig: (gcc-8) FAIL
    prima2_defconfig: (gcc-8) FAIL
    s3c6400_defconfig: (gcc-8) FAIL
    spear3xx_defconfig: (gcc-8) FAIL
    spear6xx_defconfig: (gcc-8) FAIL
    stm32_defconfig: (gcc-8) FAIL
    u8500_defconfig: (gcc-8) FAIL
    vf610m4_defconfig: (gcc-8) FAIL

mips:
    32r2el_defconfig: (gcc-8) FAIL
    db1xxx_defconfig: (gcc-8) FAIL
    e55_defconfig: (gcc-8) FAIL
    ip22_defconfig: (gcc-8) FAIL
    malta_kvm_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:

arm64:
    allmodconfig (gcc-8): 9 warnings
    defconfig (clang-9): 3 errors
    defconfig (clang-10): 3 errors, 4 warnings
    defconfig (gcc-8): 1 error, 1 warning
    defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 1 error, 1 warning
    defconfig+CONFIG_RANDOMIZE_BASE=3Dy (gcc-8): 1 error, 1 warning
    defconfig+kselftest (gcc-8): 1 error, 1 warning

arm:
    allmodconfig (gcc-8): 1 error
    aspeed_g4_defconfig (gcc-8): 13 warnings
    milbeaut_m10v_defconfig (gcc-8): 6 errors
    multi_v4t_defconfig (gcc-8): 6 errors
    multi_v5_defconfig (clang-9): 12 warnings
    multi_v7_defconfig (gcc-8): 12 warnings
    multi_v7_defconfig (clang-10): 12 warnings
    multi_v7_defconfig (clang-9): 12 warnings
    multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 12 warnings
    multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (gcc-8): 12 warni=
ngs
    multi_v7_defconfig+CONFIG_SMP=3Dn (gcc-8): 12 warnings
    prima2_defconfig (gcc-8): 6 errors
    s3c6400_defconfig (gcc-8): 6 errors
    spear3xx_defconfig (gcc-8): 2 errors
    spear6xx_defconfig (gcc-8): 2 errors
    stm32_defconfig (gcc-8): 6 errors
    u8500_defconfig (gcc-8): 14 errors, 6 warnings
    vf610m4_defconfig (gcc-8): 6 errors

i386:

mips:
    32r2el_defconfig (gcc-8): 8 errors
    db1xxx_defconfig (gcc-8): 10 errors
    e55_defconfig (gcc-8): 6 errors
    ip22_defconfig (gcc-8): 5 errors
    loongson3_defconfig (gcc-8): 1 warning
    malta_defconfig (gcc-8): 2 warnings
    malta_kvm_defconfig (gcc-8): 8 errors, 1 warning
    malta_qemu_32r6_defconfig (gcc-8): 1 warning
    maltaup_defconfig (gcc-8): 2 warnings
    maltaup_xpa_defconfig (gcc-8): 2 warnings

riscv:
    rv32_defconfig (gcc-8): 6 warnings

x86_64:
    allmodconfig (clang-9): 13 warnings
    tinyconfig (gcc-8): 1 warning

Errors summary:

    10   mm/slab.c:3285:1: error: inlining failed in call to always_inline =
=E2=80=98slab_alloc.constprop=E2=80=99: recursive inlining
    8    mm/slub.c:2902:30: error: inlining failed in call to always_inline=
 =E2=80=98slab_alloc.constprop=E2=80=99: recursive inlining
    7    fs/io_uring.c:5518:9: error: too many arguments to function =E2=80=
=98io_connect=E2=80=99
    7    fs/io_uring.c:5510:9: error: too many arguments to function =E2=80=
=98io_accept=E2=80=99
    7    fs/io_uring.c:5486:10: error: too many arguments to function =E2=
=80=98io_recv=E2=80=99
    7    fs/io_uring.c:5484:10: error: too many arguments to function =E2=
=80=98io_recvmsg=E2=80=99
    7    fs/io_uring.c:5474:10: error: too many arguments to function =E2=
=80=98io_send=E2=80=99
    7    fs/io_uring.c:5472:10: error: too many arguments to function =E2=
=80=98io_sendmsg=E2=80=99
    4    mm/memory-failure.c:1827:3: error: implicit declaration of functio=
n =E2=80=98page_handle_poison=E2=80=99; did you mean =E2=80=98page_init_poi=
son=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    4    include/linux/hashtable.h:52:30: error: void value not ignored as =
it ought to be
    4    include/linux/build_bug.h:16:51: error: negative width in bit-fiel=
d =E2=80=98<anonymous>=E2=80=99
    2    mm/memory-failure.c:1870:7: error: implicit declaration of functio=
n 'page_handle_poison' [-Werror,-Wimplicit-function-declaration]
    2    mm/memory-failure.c:1837:9: error: implicit declaration of functio=
n 'page_handle_poison' [-Werror,-Wimplicit-function-declaration]
    2    mm/memory-failure.c:1827:3: error: implicit declaration of functio=
n 'page_handle_poison' [-Werror,-Wimplicit-function-declaration]
    1    include/linux/hashtable.h:27:25: error: expected declaration speci=
fiers or =E2=80=98...=E2=80=99 before =E2=80=98(=E2=80=99 token
    1    drivers/video/console/newport_con.c:598:15: error: =E2=80=98struct=
 vc_data=E2=80=99 has no member named =E2=80=98vc_color=E2=80=99; did you m=
ean =E2=80=98vc_cols=E2=80=99?
    1    drivers/video/console/newport_con.c:594:15: error: =E2=80=98struct=
 vc_data=E2=80=99 has no member named =E2=80=98vc_color=E2=80=99; did you m=
ean =E2=80=98vc_cols=E2=80=99?
    1    drivers/video/console/newport_con.c:370:15: error: =E2=80=98struct=
 vc_data=E2=80=99 has no member named =E2=80=98vc_color=E2=80=99; did you m=
ean =E2=80=98vc_cols=E2=80=99?
    1    drivers/video/console/newport_con.c:368:15: error: =E2=80=98struct=
 vc_data=E2=80=99 has no member named =E2=80=98vc_color=E2=80=99; did you m=
ean =E2=80=98vc_cols=E2=80=99?
    1    drivers/video/console/newport_con.c:365:15: error: =E2=80=98struct=
 vc_data=E2=80=99 has no member named =E2=80=98vc_color=E2=80=99; did you m=
ean =E2=80=98vc_cols=E2=80=99?
    1    drivers/crypto/ux500/hash/hash_core.c:1518:12: error: =E2=80=98has=
h_init=E2=80=99 undeclared here (not in a function); did you mean =E2=80=98=
sha1_init=E2=80=99?
    1    drivers/crypto/ux500/hash/hash_core.c:1441:19: error: passing argu=
ment 1 of =E2=80=98__hash_init=E2=80=99 from incompatible pointer type [-We=
rror=3Dincompatible-pointer-types]
    1    drivers/crypto/ux500/hash/hash_core.c:1428:19: error: passing argu=
ment 1 of =E2=80=98__hash_init=E2=80=99 from incompatible pointer type [-We=
rror=3Dincompatible-pointer-types]
    1    drivers/crypto/ux500/hash/hash_core.c:1375:19: error: passing argu=
ment 1 of =E2=80=98__hash_init=E2=80=99 from incompatible pointer type [-We=
rror=3Dincompatible-pointer-types]
    1    drivers/crypto/ux500/hash/hash_core.c:1362:19: error: passing argu=
ment 1 of =E2=80=98__hash_init=E2=80=99 from incompatible pointer type [-We=
rror=3Dincompatible-pointer-types]
    1    arch/mips/kvm/emulate.c:1808:27: error: left shift count >=3D widt=
h of type [-Werror=3Dshift-count-overflow]
    1    arch/mips/kvm/emulate.c:1804:27: error: left shift count >=3D widt=
h of type [-Werror=3Dshift-count-overflow]
    1    arch/mips/kvm/emulate.c:1800:27: error: left shift count >=3D widt=
h of type [-Werror=3Dshift-count-overflow]
    1    arch/mips/kvm/emulate.c:1796:27: error: left shift count >=3D widt=
h of type [-Werror=3Dshift-count-overflow]
    1    arch/mips/kvm/emulate.c:1746:28: error: right shift count >=3D wid=
th of type [-Werror=3Dshift-count-overflow]
    1    arch/mips/kvm/emulate.c:1742:28: error: right shift count >=3D wid=
th of type [-Werror=3Dshift-count-overflow]
    1    arch/mips/kvm/emulate.c:1738:28: error: right shift count >=3D wid=
th of type [-Werror=3Dshift-count-overflow]
    1    arch/mips/kvm/emulate.c:1734:28: error: right shift count >=3D wid=
th of type [-Werror=3Dshift-count-overflow]
    1    ap-cpu-clk.c:(.text+0x648): undefined reference to `ap_cp_unique_n=
ame'
    1    /mnt/resource/workspace/workspace/kernel-build@2/linux/build/../ne=
t/core/filter.c:9351: undefined reference to `tcp_prot'
    1    /mnt/resource/workspace/workspace/kernel-build@2/linux/build/../ne=
t/core/filter.c:9329: undefined reference to `tcp_prot'
    1    /home/buildslave/workspace/kernel-build/linux/build/../net/core/fi=
lter.c:9351: undefined reference to `tcp_prot'
    1    /home/buildslave/workspace/kernel-build/linux/build/../net/core/fi=
lter.c:9329: undefined reference to `tcp_prot'

Warnings summary:

    8    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C add=
ress must be less than 10-bits, got "0x40000010"
    8    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4:=
 Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bus=
 unit address format error, expected "40000010"
    8    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C add=
ress must be less than 10-bits, got "0x40000010"
    8    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4:=
 Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bus=
 unit address format error, expected "40000010"
    8    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C add=
ress must be less than 10-bits, got "0x40000010"
    8    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4:=
 Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bus=
 unit address format error, expected "40000010"
    8    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C addr=
ess must be less than 10-bits, got "0x40000010"
    8    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4:=
 Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus =
unit address format error, expected "40000010"
    8    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C addr=
ess must be less than 10-bits, got "0x40000010"
    8    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: =
Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus =
unit address format error, expected "40000010"
    8    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C addr=
ess must be less than 10-bits, got "0x40000010"
    8    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: =
Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus =
unit address format error, expected "40000010"
    5    cc1: some warnings being treated as errors
    4    include/linux/kernel.h:47:38: warning: division =E2=80=98sizeof (s=
truct ahash_request *) / sizeof (struct ahash_request)=E2=80=99 does not co=
mpute the number of array elements [-Wsizeof-pointer-div]
    3    drivers/net/ethernet/amd/pcnet32.c:2928:12: warning: =E2=80=98pcne=
t32_pm_resume=E2=80=99 defined but not used [-Wunused-function]
    3    drivers/net/ethernet/amd/pcnet32.c:2916:12: warning: =E2=80=98pcne=
t32_pm_suspend=E2=80=99 defined but not used [-Wunused-function]
    3    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Wa=
rning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but=
 its #size-cells (1) differs from / (2)
    3    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Wa=
rning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but=
 its #address-cells (1) differs from / (2)
    2    WARNING: modpost: missing MODULE_LICENSE() in drivers/scsi/ufs/ufs=
-exynos.o
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    2    1 warning generated.
    1    {standard input}:141: Warning: macro instruction expanded into mul=
tiple instructions
    1    sound/soc/intel/keembay/kmb_platform.h:9:9: warning: 'KMB_PLATFORM=
_H_' is used as a header guard here, followed by #define of a different mac=
ro [-Wheader-guard]
    1    kernel/rcu/tasks.h:593:13: warning: =E2=80=98show_rcu_tasks_classi=
c_gp_kthread=E2=80=99 defined but not used [-Wunused-function]
    1    drivers/net/bonding/bond_main.c:4681:23: warning: equality compari=
son with extraneous parentheses [-Wparentheses-equality]
    1    drivers/net/bonding/bond_main.c:4681:23: note: remove extraneous p=
arentheses around the comparison to silence this warning
    1    drivers/net/bonding/bond_main.c:4657:23: warning: equality compari=
son with extraneous parentheses [-Wparentheses-equality]
    1    drivers/net/bonding/bond_main.c:4657:23: note: remove extraneous p=
arentheses around the comparison to silence this warning
    1    drivers/media/tuners/mxl5005s.c:3953:1: warning: the frame size of=
 1120 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    1    drivers/infiniband/hw/hfi1/qp.c:198:9: warning: implicit conversio=
n from enumeration type 'enum opa_mtu' to different enumeration type 'enum =
ib_mtu' [-Wenum-conversion]
    1    drivers/crypto/ux500/hash/hash_core.c:531:13: warning: =E2=80=98ha=
sh_dma_valid_data=E2=80=99 defined but not used [-Wunused-function]
    1    cc1: all warnings being treated as errors
    1    arch/x86/kernel/signal.o: warning: objtool: x32_setup_rt_frame()+0=
x1f2: call to memset() with UACCESS enabled
    1    arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x1=
cb: call to memset() with UACCESS enabled
    1    arch/x86/ia32/ia32_signal.o: warning: objtool: ia32_setup_rt_frame=
()+0x1fa: call to memset() with UACCESS enabled
    1    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_range=
s_format): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells=
 (1) differs from / (2)
    1    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_range=
s_format): /soc:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (1) differs from / (2)
    1    aarch64-linux-gnu-strip: warning: drivers/firmware/efi/libstub/lib=
-ctype.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-objdump: warning: drivers/firmware/efi/libstub/l=
ib-ctype.stub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-objcopy: warning: drivers/firmware/efi/libstub/l=
ib-ctype.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ar: warning: drivers/firmware/efi/libstub/lib-ct=
ype.stub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    2 warnings generated.
    1    .config:1173:warning: override: UNWINDER_GUESS changes choice stat=
e

Section mismatches summary:

    1    WARNING: modpost: vmlinux.o(.text.unlikely+0x2910): Section mismat=
ch in reference from the function pmax_setup_memory_region() to the functio=
n .init.text:add_memory_region()

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Detailed per-defconfig build reports:

---------------------------------------------------------------------------=
-----
32r2el_defconfig (mips, gcc-8) =E2=80=94 FAIL, 8 errors, 0 warnings, 0 sect=
ion mismatches

Errors:
    mm/slub.c:2902:30: error: inlining failed in call to always_inline =E2=
=80=98slab_alloc.constprop=E2=80=99: recursive inlining
    mm/slub.c:2902:30: error: inlining failed in call to always_inline =E2=
=80=98slab_alloc.constprop=E2=80=99: recursive inlining
    mm/slub.c:2902:30: error: inlining failed in call to always_inline =E2=
=80=98slab_alloc.constprop=E2=80=99: recursive inlining
    mm/slub.c:2902:30: error: inlining failed in call to always_inline =E2=
=80=98slab_alloc.constprop=E2=80=99: recursive inlining
    mm/slub.c:2902:30: error: inlining failed in call to always_inline =E2=
=80=98slab_alloc.constprop=E2=80=99: recursive inlining
    mm/slub.c:2902:30: error: inlining failed in call to always_inline =E2=
=80=98slab_alloc.constprop=E2=80=99: recursive inlining
    mm/slub.c:2902:30: error: inlining failed in call to always_inline =E2=
=80=98slab_alloc.constprop=E2=80=99: recursive inlining
    mm/slub.c:2902:30: error: inlining failed in call to always_inline =E2=
=80=98slab_alloc.constprop=E2=80=99: recursive inlining

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnin=
gs, 0 section mismatches

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section mi=
smatches

Errors:
    ap-cpu-clk.c:(.text+0x648): undefined reference to `ap_cp_unique_name'

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, clang-9) =E2=80=94 PASS, 0 errors, 13 warnings, 0 sec=
tion mismatches

Warnings:
    arch/x86/ia32/ia32_signal.o: warning: objtool: ia32_setup_rt_frame()+0x=
1fa: call to memset() with UACCESS enabled
    arch/x86/kernel/signal.o: warning: objtool: x32_setup_rt_frame()+0x1f2:=
 call to memset() with UACCESS enabled
    arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x1cb: c=
all to memset() with UACCESS enabled
    sound/soc/intel/keembay/kmb_platform.h:9:9: warning: 'KMB_PLATFORM_H_' =
is used as a header guard here, followed by #define of a different macro [-=
Wheader-guard]
    1 warning generated.
    drivers/net/bonding/bond_main.c:4657:23: warning: equality comparison w=
ith extraneous parentheses [-Wparentheses-equality]
    drivers/net/bonding/bond_main.c:4657:23: note: remove extraneous parent=
heses around the comparison to silence this warning
    drivers/net/bonding/bond_main.c:4681:23: warning: equality comparison w=
ith extraneous parentheses [-Wparentheses-equality]
    drivers/net/bonding/bond_main.c:4681:23: note: remove extraneous parent=
heses around the comparison to silence this warning
    2 warnings generated.
    drivers/infiniband/hw/hfi1/qp.c:198:9: warning: implicit conversion fro=
m enumeration type 'enum opa_mtu' to different enumeration type 'enum ib_mt=
u' [-Wenum-conversion]
    1 warning generated.
    WARNING: modpost: missing MODULE_LICENSE() in drivers/scsi/ufs/ufs-exyn=
os.o

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings, 0 section=
 mismatches

Warnings:
    WARNING: modpost: missing MODULE_LICENSE() in drivers/scsi/ufs/ufs-exyn=
os.o
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#address-cells (1) differs from / (2)
    arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warning=
 (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but its =
#size-cells (1) differs from / (2)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #address-cells (=
1) differs from / (2)
    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_for=
mat): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells (1) =
differs from / (2)

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 13 warnings, 0 s=
ection mismatches

Warnings:
    kernel/rcu/tasks.h:593:13: warning: =E2=80=98show_rcu_tasks_classic_gp_=
kthread=E2=80=99 defined but not used [-Wunused-function]
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
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"

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
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
bcm63xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

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
db1xxx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 10 errors, 0 warnings, 0 sec=
tion mismatches

Errors:
    mm/slab.c:3285:1: error: inlining failed in call to always_inline =E2=
=80=98slab_alloc.constprop=E2=80=99: recursive inlining
    mm/slab.c:3285:1: error: inlining failed in call to always_inline =E2=
=80=98slab_alloc.constprop=E2=80=99: recursive inlining
    mm/slab.c:3285:1: error: inlining failed in call to always_inline =E2=
=80=98slab_alloc.constprop=E2=80=99: recursive inlining
    mm/slab.c:3285:1: error: inlining failed in call to always_inline =E2=
=80=98slab_alloc.constprop=E2=80=99: recursive inlining
    mm/slab.c:3285:1: error: inlining failed in call to always_inline =E2=
=80=98slab_alloc.constprop=E2=80=99: recursive inlining
    mm/slab.c:3285:1: error: inlining failed in call to always_inline =E2=
=80=98slab_alloc.constprop=E2=80=99: recursive inlining
    mm/slab.c:3285:1: error: inlining failed in call to always_inline =E2=
=80=98slab_alloc.constprop=E2=80=99: recursive inlining
    mm/slab.c:3285:1: error: inlining failed in call to always_inline =E2=
=80=98slab_alloc.constprop=E2=80=99: recursive inlining
    mm/slab.c:3285:1: error: inlining failed in call to always_inline =E2=
=80=98slab_alloc.constprop=E2=80=99: recursive inlining
    mm/slab.c:3285:1: error: inlining failed in call to always_inline =E2=
=80=98slab_alloc.constprop=E2=80=99: recursive inlining

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

Section mismatches:
    WARNING: modpost: vmlinux.o(.text.unlikely+0x2910): Section mismatch in=
 reference from the function pmax_setup_memory_region() to the function .in=
it.text:add_memory_region()

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-9) =E2=80=94 FAIL, 3 errors, 0 warnings, 0 section =
mismatches

Errors:
    mm/memory-failure.c:1827:3: error: implicit declaration of function 'pa=
ge_handle_poison' [-Werror,-Wimplicit-function-declaration]
    mm/memory-failure.c:1837:9: error: implicit declaration of function 'pa=
ge_handle_poison' [-Werror,-Wimplicit-function-declaration]
    mm/memory-failure.c:1870:7: error: implicit declaration of function 'pa=
ge_handle_poison' [-Werror,-Wimplicit-function-declaration]

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-10) =E2=80=94 FAIL, 3 errors, 4 warnings, 0 section=
 mismatches

Errors:
    mm/memory-failure.c:1827:3: error: implicit declaration of function 'pa=
ge_handle_poison' [-Werror,-Wimplicit-function-declaration]
    mm/memory-failure.c:1837:9: error: implicit declaration of function 'pa=
ge_handle_poison' [-Werror,-Wimplicit-function-declaration]
    mm/memory-failure.c:1870:7: error: implicit declaration of function 'pa=
ge_handle_poison' [-Werror,-Wimplicit-function-declaration]

Warnings:
    aarch64-linux-gnu-strip: warning: drivers/firmware/efi/libstub/lib-ctyp=
e.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objdump: warning: drivers/firmware/efi/libstub/lib-ct=
ype.stub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: drivers/firmware/efi/libstub/lib-ct=
ype.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ar: warning: drivers/firmware/efi/libstub/lib-ctype.s=
tub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section mism=
atches

Errors:
    mm/memory-failure.c:1827:3: error: implicit declaration of function =E2=
=80=98page_handle_poison=E2=80=99; did you mean =E2=80=98page_init_poison=
=E2=80=99? [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 FAIL, 1 error,=
 1 warning, 0 section mismatches

Errors:
    mm/memory-failure.c:1827:3: error: implicit declaration of function =E2=
=80=98page_handle_poison=E2=80=99; did you mean =E2=80=98page_init_poison=
=E2=80=99? [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 FAIL, 1 error,=
 1 warning, 0 section mismatches

Errors:
    mm/memory-failure.c:1827:3: error: implicit declaration of function =E2=
=80=98page_handle_poison=E2=80=99; did you mean =E2=80=98page_init_poison=
=E2=80=99? [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches

Errors:
    mm/memory-failure.c:1827:3: error: implicit declaration of function =E2=
=80=98page_handle_poison=E2=80=99; did you mean =E2=80=98page_init_poison=
=E2=80=99? [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
e55_defconfig (mips, gcc-8) =E2=80=94 FAIL, 6 errors, 0 warnings, 0 section=
 mismatches

Errors:
    fs/io_uring.c:5472:10: error: too many arguments to function =E2=80=98i=
o_sendmsg=E2=80=99
    fs/io_uring.c:5474:10: error: too many arguments to function =E2=80=98i=
o_send=E2=80=99
    fs/io_uring.c:5484:10: error: too many arguments to function =E2=80=98i=
o_recvmsg=E2=80=99
    fs/io_uring.c:5486:10: error: too many arguments to function =E2=80=98i=
o_recv=E2=80=99
    fs/io_uring.c:5510:9: error: too many arguments to function =E2=80=98io=
_accept=E2=80=99
    fs/io_uring.c:5518:9: error: too many arguments to function =E2=80=98io=
_connect=E2=80=99

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
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

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

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig+kselftest (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 wa=
rnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

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
ip22_defconfig (mips, gcc-8) =E2=80=94 FAIL, 5 errors, 0 warnings, 0 sectio=
n mismatches

Errors:
    drivers/video/console/newport_con.c:365:15: error: =E2=80=98struct vc_d=
ata=E2=80=99 has no member named =E2=80=98vc_color=E2=80=99; did you mean =
=E2=80=98vc_cols=E2=80=99?
    drivers/video/console/newport_con.c:368:15: error: =E2=80=98struct vc_d=
ata=E2=80=99 has no member named =E2=80=98vc_color=E2=80=99; did you mean =
=E2=80=98vc_cols=E2=80=99?
    drivers/video/console/newport_con.c:370:15: error: =E2=80=98struct vc_d=
ata=E2=80=99 has no member named =E2=80=98vc_color=E2=80=99; did you mean =
=E2=80=98vc_cols=E2=80=99?
    drivers/video/console/newport_con.c:594:15: error: =E2=80=98struct vc_d=
ata=E2=80=99 has no member named =E2=80=98vc_color=E2=80=99; did you mean =
=E2=80=98vc_cols=E2=80=99?
    drivers/video/console/newport_con.c:598:15: error: =E2=80=98struct vc_d=
ata=E2=80=99 has no member named =E2=80=98vc_color=E2=80=99; did you mean =
=E2=80=98vc_cols=E2=80=99?

---------------------------------------------------------------------------=
-----
ip28_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
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
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    drivers/media/tuners/mxl5005s.c:3953:1: warning: the frame size of 1120=
 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
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
mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/net/ethernet/amd/pcnet32.c:2928:12: warning: =E2=80=98pcnet32_p=
m_resume=E2=80=99 defined but not used [-Wunused-function]
    drivers/net/ethernet/amd/pcnet32.c:2916:12: warning: =E2=80=98pcnet32_p=
m_suspend=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 FAIL, 8 errors, 1 warning, 0 se=
ction mismatches

Errors:
    arch/mips/kvm/emulate.c:1734:28: error: right shift count >=3D width of=
 type [-Werror=3Dshift-count-overflow]
    arch/mips/kvm/emulate.c:1738:28: error: right shift count >=3D width of=
 type [-Werror=3Dshift-count-overflow]
    arch/mips/kvm/emulate.c:1742:28: error: right shift count >=3D width of=
 type [-Werror=3Dshift-count-overflow]
    arch/mips/kvm/emulate.c:1746:28: error: right shift count >=3D width of=
 type [-Werror=3Dshift-count-overflow]
    arch/mips/kvm/emulate.c:1796:27: error: left shift count >=3D width of =
type [-Werror=3Dshift-count-overflow]
    arch/mips/kvm/emulate.c:1800:27: error: left shift count >=3D width of =
type [-Werror=3Dshift-count-overflow]
    arch/mips/kvm/emulate.c:1804:27: error: left shift count >=3D width of =
type [-Werror=3Dshift-count-overflow]
    arch/mips/kvm/emulate.c:1808:27: error: left shift count >=3D width of =
type [-Werror=3Dshift-count-overflow]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches

Warnings:
    {standard input}:141: Warning: macro instruction expanded into multiple=
 instructions

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
maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/net/ethernet/amd/pcnet32.c:2928:12: warning: =E2=80=98pcnet32_p=
m_resume=E2=80=99 defined but not used [-Wunused-function]
    drivers/net/ethernet/amd/pcnet32.c:2916:12: warning: =E2=80=98pcnet32_p=
m_suspend=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    drivers/net/ethernet/amd/pcnet32.c:2928:12: warning: =E2=80=98pcnet32_p=
m_resume=E2=80=99 defined but not used [-Wunused-function]
    drivers/net/ethernet/amd/pcnet32.c:2916:12: warning: =E2=80=98pcnet32_p=
m_suspend=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 FAIL, 6 errors, 0 warnings, =
0 section mismatches

Errors:
    fs/io_uring.c:5472:10: error: too many arguments to function =E2=80=98i=
o_sendmsg=E2=80=99
    fs/io_uring.c:5474:10: error: too many arguments to function =E2=80=98i=
o_send=E2=80=99
    fs/io_uring.c:5484:10: error: too many arguments to function =E2=80=98i=
o_recvmsg=E2=80=99
    fs/io_uring.c:5486:10: error: too many arguments to function =E2=80=98i=
o_recv=E2=80=99
    fs/io_uring.c:5510:9: error: too many arguments to function =E2=80=98io=
_accept=E2=80=99
    fs/io_uring.c:5518:9: error: too many arguments to function =E2=80=98io=
_connect=E2=80=99

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 FAIL, 6 errors, 0 warnings, 0 se=
ction mismatches

Errors:
    fs/io_uring.c:5472:10: error: too many arguments to function =E2=80=98i=
o_sendmsg=E2=80=99
    fs/io_uring.c:5474:10: error: too many arguments to function =E2=80=98i=
o_send=E2=80=99
    fs/io_uring.c:5484:10: error: too many arguments to function =E2=80=98i=
o_recvmsg=E2=80=99
    fs/io_uring.c:5486:10: error: too many arguments to function =E2=80=98i=
o_recv=E2=80=99
    fs/io_uring.c:5510:9: error: too many arguments to function =E2=80=98io=
_accept=E2=80=99
    fs/io_uring.c:5518:9: error: too many arguments to function =E2=80=98io=
_connect=E2=80=99

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 12 warnings, 0 =
section mismatches

Warnings:
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
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 12 warnings, 0 se=
ction mismatches

Warnings:
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
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 12 warnings, 0=
 section mismatches

Warnings:
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
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 12 warnings, 0 =
section mismatches

Warnings:
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
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 12 warnings, 0 section mismatches

Warnings:
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
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 12 warnings, 0 section mismatches

Warnings:
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
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 12=
 warnings, 0 section mismatches

Warnings:
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
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"

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
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

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
palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

---------------------------------------------------------------------------=
-----
prima2_defconfig (arm, gcc-8) =E2=80=94 FAIL, 6 errors, 0 warnings, 0 secti=
on mismatches

Errors:
    fs/io_uring.c:5472:10: error: too many arguments to function =E2=80=98i=
o_sendmsg=E2=80=99
    fs/io_uring.c:5474:10: error: too many arguments to function =E2=80=98i=
o_send=E2=80=99
    fs/io_uring.c:5484:10: error: too many arguments to function =E2=80=98i=
o_recvmsg=E2=80=99
    fs/io_uring.c:5486:10: error: too many arguments to function =E2=80=98i=
o_recv=E2=80=99
    fs/io_uring.c:5510:9: error: too many arguments to function =E2=80=98io=
_accept=E2=80=99
    fs/io_uring.c:5518:9: error: too many arguments to function =E2=80=98io=
_connect=E2=80=99

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
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
rv32_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 FAIL, 6 errors, 0 warnings, 0 sect=
ion mismatches

Errors:
    fs/io_uring.c:5472:10: error: too many arguments to function =E2=80=98i=
o_sendmsg=E2=80=99
    fs/io_uring.c:5474:10: error: too many arguments to function =E2=80=98i=
o_send=E2=80=99
    fs/io_uring.c:5484:10: error: too many arguments to function =E2=80=98i=
o_recvmsg=E2=80=99
    fs/io_uring.c:5486:10: error: too many arguments to function =E2=80=98i=
o_recv=E2=80=99
    fs/io_uring.c:5510:9: error: too many arguments to function =E2=80=98io=
_accept=E2=80=99
    fs/io_uring.c:5518:9: error: too many arguments to function =E2=80=98io=
_connect=E2=80=99

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
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 sec=
tion mismatches

Errors:
    /home/buildslave/workspace/kernel-build/linux/build/../net/core/filter.=
c:9329: undefined reference to `tcp_prot'
    /home/buildslave/workspace/kernel-build/linux/build/../net/core/filter.=
c:9351: undefined reference to `tcp_prot'

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 FAIL, 2 errors, 0 warnings, 0 sec=
tion mismatches

Errors:
    /mnt/resource/workspace/workspace/kernel-build@2/linux/build/../net/cor=
e/filter.c:9329: undefined reference to `tcp_prot'
    /mnt/resource/workspace/workspace/kernel-build@2/linux/build/../net/cor=
e/filter.c:9351: undefined reference to `tcp_prot'

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 FAIL, 6 errors, 0 warnings, 0 sectio=
n mismatches

Errors:
    fs/io_uring.c:5472:10: error: too many arguments to function =E2=80=98i=
o_sendmsg=E2=80=99
    fs/io_uring.c:5474:10: error: too many arguments to function =E2=80=98i=
o_send=E2=80=99
    fs/io_uring.c:5484:10: error: too many arguments to function =E2=80=98i=
o_recvmsg=E2=80=99
    fs/io_uring.c:5486:10: error: too many arguments to function =E2=80=98i=
o_recv=E2=80=99
    fs/io_uring.c:5510:9: error: too many arguments to function =E2=80=98io=
_accept=E2=80=99
    fs/io_uring.c:5518:9: error: too many arguments to function =E2=80=98io=
_connect=E2=80=99

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
tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1173:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 FAIL, 14 errors, 6 warnings, 0 secti=
on mismatches

Errors:
    include/linux/hashtable.h:27:25: error: expected declaration specifiers=
 or =E2=80=98...=E2=80=99 before =E2=80=98(=E2=80=99 token
    include/linux/build_bug.h:16:51: error: negative width in bit-field =E2=
=80=98<anonymous>=E2=80=99
    drivers/crypto/ux500/hash/hash_core.c:1362:19: error: passing argument =
1 of =E2=80=98__hash_init=E2=80=99 from incompatible pointer type [-Werror=
=3Dincompatible-pointer-types]
    include/linux/hashtable.h:52:30: error: void value not ignored as it ou=
ght to be
    include/linux/build_bug.h:16:51: error: negative width in bit-field =E2=
=80=98<anonymous>=E2=80=99
    drivers/crypto/ux500/hash/hash_core.c:1375:19: error: passing argument =
1 of =E2=80=98__hash_init=E2=80=99 from incompatible pointer type [-Werror=
=3Dincompatible-pointer-types]
    include/linux/hashtable.h:52:30: error: void value not ignored as it ou=
ght to be
    include/linux/build_bug.h:16:51: error: negative width in bit-field =E2=
=80=98<anonymous>=E2=80=99
    drivers/crypto/ux500/hash/hash_core.c:1428:19: error: passing argument =
1 of =E2=80=98__hash_init=E2=80=99 from incompatible pointer type [-Werror=
=3Dincompatible-pointer-types]
    include/linux/hashtable.h:52:30: error: void value not ignored as it ou=
ght to be
    include/linux/build_bug.h:16:51: error: negative width in bit-field =E2=
=80=98<anonymous>=E2=80=99
    drivers/crypto/ux500/hash/hash_core.c:1441:19: error: passing argument =
1 of =E2=80=98__hash_init=E2=80=99 from incompatible pointer type [-Werror=
=3Dincompatible-pointer-types]
    include/linux/hashtable.h:52:30: error: void value not ignored as it ou=
ght to be
    drivers/crypto/ux500/hash/hash_core.c:1518:12: error: =E2=80=98hash_ini=
t=E2=80=99 undeclared here (not in a function); did you mean =E2=80=98sha1_=
init=E2=80=99?

Warnings:
    include/linux/kernel.h:47:38: warning: division =E2=80=98sizeof (struct=
 ahash_request *) / sizeof (struct ahash_request)=E2=80=99 does not compute=
 the number of array elements [-Wsizeof-pointer-div]
    include/linux/kernel.h:47:38: warning: division =E2=80=98sizeof (struct=
 ahash_request *) / sizeof (struct ahash_request)=E2=80=99 does not compute=
 the number of array elements [-Wsizeof-pointer-div]
    include/linux/kernel.h:47:38: warning: division =E2=80=98sizeof (struct=
 ahash_request *) / sizeof (struct ahash_request)=E2=80=99 does not compute=
 the number of array elements [-Wsizeof-pointer-div]
    include/linux/kernel.h:47:38: warning: division =E2=80=98sizeof (struct=
 ahash_request *) / sizeof (struct ahash_request)=E2=80=99 does not compute=
 the number of array elements [-Wsizeof-pointer-div]
    drivers/crypto/ux500/hash/hash_core.c:531:13: warning: =E2=80=98hash_dm=
a_valid_data=E2=80=99 defined but not used [-Wunused-function]
    cc1: some warnings being treated as errors

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
vf610m4_defconfig (arm, gcc-8) =E2=80=94 FAIL, 6 errors, 0 warnings, 0 sect=
ion mismatches

Errors:
    fs/io_uring.c:5472:10: error: too many arguments to function =E2=80=98i=
o_sendmsg=E2=80=99
    fs/io_uring.c:5474:10: error: too many arguments to function =E2=80=98i=
o_send=E2=80=99
    fs/io_uring.c:5484:10: error: too many arguments to function =E2=80=98i=
o_recvmsg=E2=80=99
    fs/io_uring.c:5486:10: error: too many arguments to function =E2=80=98i=
o_recv=E2=80=99
    fs/io_uring.c:5510:9: error: too many arguments to function =E2=80=98io=
_accept=E2=80=99
    fs/io_uring.c:5518:9: error: too many arguments to function =E2=80=98io=
_connect=E2=80=99

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

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
x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5ef606f3.1c69fb81.ef286.11be%40mx.google.com.
