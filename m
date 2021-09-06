Return-Path: <clang-built-linux+bncBCT6537ZTEKRBKNW26EQMGQEVXS62UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 5205840189F
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Sep 2021 11:11:06 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id e6-20020a056402088600b003c73100e376sf3238467edy.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Sep 2021 02:11:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630919466; cv=pass;
        d=google.com; s=arc-20160816;
        b=X/WmghQw9sXituFCL5RgeBnhZQQV3w+fmPmeHZmldaNIr02RZ6u7c6yjKnp4JXZwx+
         ULE3EswJa0os4I8hbboe660Mhzw+D+myEanUtksDsPAFsxdreElLvU5QSu1jQo/0qKTm
         vKubcVKQp81jRaxuT6sisofc5gXC9NUx7pY00GsGthefC4zLFV5FmlpxSSu3cMyc4AMX
         Es+tN4Sp1IoVBgKpA2NY1IcpEfwV83lINIcXNj6m3w6KSmjh984WI1A80eL9ifBUyVtb
         Iojm8v9PBy9z0v9OmV5EKG0veYOgEGI3Pc3cXiw8Un9PeI9Aog+ZEcsLZhvlfit5Nq4c
         OnGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=FUAY0jkEpXXglA3hMlBAKuzyRY+8UfR1Hpiv5UtJICU=;
        b=Vyl+IcnFaIMKAv2mMAK8jD8VR1o4pqgcXm5lupfdfYKg17u1+Xjdcoj1vl5BH3487h
         6f95C4ezgYclX8SDrCqG9f8kc7KDCbrOX8ly/f5GkBRBZFXQZhRTuOrVHQvfS/W1OXKW
         CxNRH7ChG42Nanhnhg1E07Q6hMwUa5zvZ/6N5Er0vtAuOPmatKyTeK0MxJuaboMlOJJu
         PrKjNlx6xQVJyDVM8msPATsEManUSna2ui572Bbz1An4sdZgFxdbcEzKhvAu9WqpZUBD
         dvbnMQN60RvHDcWQ7iCOZuTgGwHGM/Ux7PquZtfcmbI4i5HpK0m49QKOER/rKl0Do3o7
         S1zA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=WCBQOTgY;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FUAY0jkEpXXglA3hMlBAKuzyRY+8UfR1Hpiv5UtJICU=;
        b=seBGfl4al+UuDV+VJ1XjO+Yd0SEoiYB04XFrt5oEEQjX8OxfO28z1I6X58H3lRhjnf
         cOGmjvWpOtmgXWD0m8PYNpTAz19Q4yWNaXf2Na6/2o1VwXav8Ogm3rYtCf9frZzc9vNN
         fOwtfCvzLm4ig3JusXGmF0UasCWgDTZk6zriyM3gyVW1VySfOBwOBYhbk/4NRkC8BMAz
         XfYC44GpZMP2S30lYwEtCOETbi9uAVpPKGFVeGho6KOjJ3zk4MyLXjQ5zs+ssLJKQcqr
         esadJUDpXWuviiYga7UuX5ALWdTm3MGtB7mYEA5jw9nhFSK0dSXu7S3s6VljLlyq9bj3
         I61Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FUAY0jkEpXXglA3hMlBAKuzyRY+8UfR1Hpiv5UtJICU=;
        b=P0gM8BH/mHVAB4xuFROFX7mrFYYjSzwVHompj8pPDWDwNnoZ46TnhAAQwSFHQs027z
         ZdksPTJ5dOn7gda+vK8HUwU0qSOtevf5kpwEiNc0hzcqWpYwZytkbp5ylELIEsoYsgMu
         8KKnLHezJ4O23b+cwIR+CJbdnUPE2bRsuA/mUdE48CUL12XLvuazQ3/LbFy2QFetHdub
         S/mJPox2E0AszyEn6p/78eD6bJwZPyzw2MzmseMM3eIqpMVdfDp7cktkdCEQdmSIXNqz
         Y+bcq7S+pzZt8YJ/AemCT/nsddBqYPENdsMLzjbQ0hK+QdYjz7YaYi4wG0gGz+n/H6Hu
         7vng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HX0QoLGHG3V9zIVVYoCnP3E8C3B99Yv56x6T/TNUR7nRG5Ipg
	YX/MOs/kWobm0fN/fkarwAc=
X-Google-Smtp-Source: ABdhPJwhcmNYXn0wy512xTPx9FhGae8/ofSb5jbnKNp6WVto0BUo5aDXWKi2V6lXSyRyb7iqMz9eVw==
X-Received: by 2002:aa7:c4d0:: with SMTP id p16mr12144110edr.263.1630919466038;
        Mon, 06 Sep 2021 02:11:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:361:: with SMTP id rs1ls2786084ejb.4.gmail; Mon, 06
 Sep 2021 02:11:05 -0700 (PDT)
X-Received: by 2002:a17:906:2dcf:: with SMTP id h15mr12507889eji.320.1630919465139;
        Mon, 06 Sep 2021 02:11:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630919465; cv=none;
        d=google.com; s=arc-20160816;
        b=Yi2suIKI6DxC1e3QNcrhddykno2di2eibiUq8n0PneGjTHbdQKR/kR+UOubwCEunqR
         nM8iTIVVBo0gNXy+HIErVtf4TtlT2nk5jF4xsploxamFlqueAs3lpy/gerDJmLzDmBeM
         kMES1AuEXgRVinp8LYcxqqBtIayjXP93I1x2WLIT/dCWFIhk46eYFTclXJyR7DK8Ro46
         Uq7mhQONw7gVMUqgJmj9DvlLg24FmB6rdTUv3AcqOk5Y7R5h2OBAF5xMpiMtiHqbZSge
         aivTLxQP64urvWx9fodRSWO09mVTbz6gLK/EC3f8qSjvoAcbjU1aDvEVLu3X/ZYMLlrj
         pLIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Hi4k8mC8CL14+JpmMfxB3pX6Pa/j8Ek3zliWtRdRWbY=;
        b=JQbgZ4H2G/PqYAHJuZZRj4dHC9bY1ZoqjlYOBW83IHns5XTAf1QDwZ3Aq9btu35aUk
         dBWDHOB+I3qV81qn3drOSXifTfCNF6tGfxbTH9tVkSD+73wNraaX2Jmteq7tSG5rCo45
         BhEngHIO1PQOa86Fmrb4MVBRQ1wZ+QR7jMXgxJQ5vC/6IXBUs1JiApOL8sd51LzmDeB8
         trfb5gu9SZowjVm4WZaVxna5OgABgO5H9NovhDDklw2WHf/PZ10pRhjKTopdh3zVeBU5
         KG0GpMYT+X3fhU87k1hf+8PyyRzv569akACNXwT/wtLNABkY3eSk0FpwNCn4IlJXS4mL
         Jt6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=WCBQOTgY;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com. [2a00:1450:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id dy22si324072edb.2.2021.09.06.02.11.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 02:11:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52f as permitted sender) client-ip=2a00:1450:4864:20::52f;
Received: by mail-ed1-x52f.google.com with SMTP id g21so8626208edw.4
        for <clang-built-linux@googlegroups.com>; Mon, 06 Sep 2021 02:11:05 -0700 (PDT)
X-Received: by 2002:aa7:db10:: with SMTP id t16mr12313802eds.357.1630919464755;
 Mon, 06 Sep 2021 02:11:04 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Mon, 6 Sep 2021 14:40:53 +0530
Message-ID: <CA+G9fYsV7sTfaefGj3bpkvVdRQUeiWCVRiu6ovjtM=qri-HJ8g@mail.gmail.com>
Subject: bridge.c:157:11: error: variable 'err' is used uninitialized whenever
 'if' condition is false
To: open list <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, lkft-triage@lists.linaro.org, 
	Netdev <netdev@vger.kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	"David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=WCBQOTgY;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

[Please ignore if it is already reported]

Following build warnings/ errors noticed while building linux mainline
master branch
with clang-nightly, clang-13, clang-12, clang-11 and clang-10 for
arm64 architecture.
Whereas gcc-11 build pass.

# to reproduce this build locally: tuxmake --target-arch=arm64
--kconfig=defconfig --toolchain=clang-nightly --wrapper=none
--environment=KBUILD_BUILD_TIMESTAMP=@1630870764
--environment=KBUILD_BUILD_USER=tuxmake
--environment=KBUILD_BUILD_HOST=tuxmake --runtime=podman
--image=855116176053.dkr.ecr.us-east-1.amazonaws.com/tuxmake/arm64_clang-nightly
config default kernel xipkernel modules dtbs dtbs-legacy debugkernel
headers
make --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=arm64
CROSS_COMPILE=aarch64-linux-gnu- HOSTCC=clang CC=clang defconfig
make --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=arm64
CROSS_COMPILE=aarch64-linux-gnu- HOSTCC=clang CC=clang
scripts/dtc/include-prefixes/arm/bcm2711-rpi-4-b.dts:220.10-231.4:
Warning (pci_device_reg): /scb/pcie@7d500000/pci@1,0: PCI unit address
format error, expected 0,0
scripts/dtc/include-prefixes/arm/bcm2711-rpi-4-b.dts:220.10-231.4:
Warning (pci_device_reg): /scb/pcie@7d500000/pci@1,0: PCI unit address
format error, expected 0,0
arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi:464.3-52: Warning
(pci_device_reg): /pcie@f8000000/pcie@0,0:reg: PCI reg address is not
configuration space
arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi:464.3-52: Warning
(pci_device_reg): /pcie@f8000000/pcie@0,0:reg: PCI reg address is not
configuration space
arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi:464.3-52: Warning
(pci_device_reg): /pcie@f8000000/pcie@0,0:reg: PCI reg address is not
configuration space
arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi:464.3-52: Warning
(pci_device_reg): /pcie@f8000000/pcie@0,0:reg: PCI reg address is not
configuration space
arch/arm64/kvm/hyp/nvhe/Makefile:58: FORCE prerequisite is missing
drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:157:11: error:
variable 'err' is used uninitialized whenever 'if' condition is false
[-Werror,-Wsometimes-uninitialized]
        else if (mlx5_esw_bridge_dev_same_hw(rep, esw))
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:164:9: note:
uninitialized use occurs here
        return err;
               ^~~
drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:157:7: note:
remove the 'if' if its condition is always true
        else if (mlx5_esw_bridge_dev_same_hw(rep, esw))
             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:140:9: note:
initialize the variable 'err' to silence this warning
        int err;
               ^
                = 0
drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:262:7: error:
variable 'err' is used uninitialized whenever switch case is taken
[-Werror,-Wsometimes-uninitialized]
        case SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS:
             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:276:9: note:
uninitialized use occurs here
        return err;
               ^~~
drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:257:7: error:
variable 'err' is used uninitialized whenever 'if' condition is false
[-Werror,-Wsometimes-uninitialized]
                if (attr->u.brport_flags.mask & ~(BR_LEARNING |
BR_FLOOD | BR_MCAST_FLOOD)) {

^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:276:9: note:
uninitialized use occurs here
        return err;
               ^~~
drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:257:3: note:
remove the 'if' if its condition is always true
                if (attr->u.brport_flags.mask & ~(BR_LEARNING |
BR_FLOOD | BR_MCAST_FLOOD)) {

^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c:247:9: note:
initialize the variable 'err' to silence this warning
        int err;
               ^
                = 0
3 errors generated.
make[6]: *** [scripts/Makefile.build:277:
drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.o] Error 1
make[6]: Target '__build' not remade because of errors.
make[5]: *** [scripts/Makefile.build:540:
drivers/net/ethernet/mellanox/mlx5/core] Error 2
make[5]: Target '__build' not remade because of errors.
make[4]: *** [scripts/Makefile.build:540: drivers/net/ethernet/mellanox] Error 2
make[4]: Target '__build' not remade because of errors.
make[3]: *** [scripts/Makefile.build:540: drivers/net/ethernet] Error 2
make[3]: Target '__build' not remade because of errors.
make[2]: *** [scripts/Makefile.build:540: drivers/net] Error 2
make[2]: Target '__build' not remade because of errors.
make[1]: *** [Makefile:1872: drivers] Error 2
make[1]: Target '__all' not remade because of errors.
make: *** [Makefile:219: __sub-make] Error 2
make: Target '__all' not remade because of errors.

Build config:
https://builds.tuxbuild.com/1xjZrnXEZfc3qYzziclNRaugAaN/config

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

meta data:
-----------
    git_describe: v5.14-9687-g27151f177827
    git_repo: https://gitlab.com/Linaro/lkft/mirrors/torvalds/linux-mainline
    git_sha: 27151f177827d478508e756c7657273261aaf8a9
    git_short_log: 27151f177827 (\Merge tag
'perf-tools-for-v5.15-2021-09-04' of
git://git.kernel.org/pub/scm/linux/kernel/git/acme/linux\)
    kconfig: [
        defconfig
    ],
    kernel_version: 5.14.0
    status_message: failure while building tuxmake target(s): default
    target_arch: arm64
    toolchain: clang-nightly, clang-13, clang-12, clang-11 and clang-10

steps to reproduce:
https://builds.tuxbuild.com/1xjZrnXEZfc3qYzziclNRaugAaN/tuxmake_reproducer.sh

--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYsV7sTfaefGj3bpkvVdRQUeiWCVRiu6ovjtM%3Dqri-HJ8g%40mail.gmail.com.
