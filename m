Return-Path: <clang-built-linux+bncBDM6PI5M4IFRB56RXXXQKGQECIIX3MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 331CF1183DD
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 10:44:24 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id y15sf3790133lji.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 01:44:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575971063; cv=pass;
        d=google.com; s=arc-20160816;
        b=si2B6fFxjp30ELHU+ESmBmyqur/p4dYDQRT17S0f5LsStn23I6Y3zJC/bmSebywfYs
         zkhdkpk44CyaKPpm4VqaErBLbS8z1fLrUgzYPHR2HUmkUi4OYmF8ZuP3h/CW1tZ/k2hN
         OSUC/TdQxC619ecEota8CqBEuMMCQeSrV7TriEKh/gi1+LJxxJPD+yfk11nXK5QO6Ll6
         zTsYXIZ7/XJGi8KfCKGRhEv7e0+HFWmE/3zpshjEc/EhKvwPEYP+MEzPOOf8VtujVAV9
         ALGieFa7UxsmqY+cy7ELN0gh1ChfJuvxz+PBppktaE+19h+pdoLe4RrGpg4wQMvZ/+ch
         tGwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=ljOfaYm2NBevPZn9NYQHhyi+NkY+mPJ+1QohBt1KrHg=;
        b=qJJA9ozE8LMuauuIIDdGjWRFW4/2W2B92RjzYvQcLxfdwzaRpsnswIS1RhJupiLjtg
         6QS5LGzg1luP26AEBIP+bW+5KNQgUC+vp/YEEK4KkP1cQWXtVPNhRRpUDIUa5JzmEOA9
         UEQnljxTnT7dtxMtPsg4k3w07+OYjjmm1/YCUNtF0tid8/ptRedhcwNWCwiFMo8JXK2m
         eU0mJ8QXeOzIfmD6XEupALsTtRvdOdjZHEmPQ6ZnYiarbeR5VG7ElD2X1P8hHjFpNQtv
         rKppAriqj5ml3aU2S7al+qP36IFZMiY7vbVt+6evO/tht/5RslstKQNbURd+eSzMjm9z
         gwWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=uLzyUdvO;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ljOfaYm2NBevPZn9NYQHhyi+NkY+mPJ+1QohBt1KrHg=;
        b=Ln8wTpUyE6dUGz+9ISPUwTnaYIiLZOmi/glqGOUrv/ovyFmqb+aVlEkmrV7oYPC9N2
         xF/WvkUZUJm8fv6FvP2GWVwGM5T+hylXmsGwSkRMF02wjKNnYer+E2Hcl66zX32KSnjG
         /Uwp+XnOYnh2GRvB4b8DLUEdrkQSZYJzaA9UI9od/wzXMBRaf56XHR7SGVVgJblEsENB
         lHCVGh+n14YQF7gJE8dTCrA/9VZt4XMJjJWkgB9onb2M4USK3/5hT4cdcX3gQ4kwi/fW
         MLv7ps9Dfj9ou41MxKjeNsu/4Thy3cPBl/W/Vz1KEE8LqxWgoIaQZt6SbiOsEdptWyuv
         GVdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ljOfaYm2NBevPZn9NYQHhyi+NkY+mPJ+1QohBt1KrHg=;
        b=s3dLzIAMDfvkqM9bnLUjFt+NBsBgS5cJxNU0jT4EO/SybtSSW4TZDt9vFzpU7OuIIJ
         up8b2PzvqutXZcNWOCJbZEPeZza/rOLJpo/FQw1xojl0DBHddRQu3slKc8aN451wFW6/
         FH1cJi5HymmPPwgGNTncSoJqzIsh5D5QI2PyvoVMx7dmwG2hAcFGiblI+toZeeJVI8XP
         w+/05qSEY53zXGIzYb/Iq4PJZTfAkqk9TSiB3XZIhkIVtI9xfbPGP/J1nz4S72MOKZu7
         kES5DPLMrCUknaMs6Dvgei8kn3WOlaqLtPlkD2TJ3n+eMivDL79b0k26I1wLfnUD/HDj
         T74Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWV+H+0UYhJQhwCj13hlqIv790f6uuR1iWWQqcxkR7zbLWg021v
	NmJXUGxKm0nLuL0aHQaOxtI=
X-Google-Smtp-Source: APXvYqxROIWO5One5+QrNTa+zcuxNMDowhFF1/LUSg2gVI1XwlCRo7yg/m8dkO5CeKGZOBzAccdOIw==
X-Received: by 2002:a2e:91cb:: with SMTP id u11mr17724570ljg.82.1575971063656;
        Tue, 10 Dec 2019 01:44:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:82cb:: with SMTP id n11ls749024ljh.11.gmail; Tue, 10 Dec
 2019 01:44:22 -0800 (PST)
X-Received: by 2002:a2e:144b:: with SMTP id 11mr19747084lju.216.1575971062906;
        Tue, 10 Dec 2019 01:44:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575971062; cv=none;
        d=google.com; s=arc-20160816;
        b=WLc602wGKyViDTOem9043TckMaa7VagNmAvb/QUeBAXycLbFP9DoWcAR0EeaaUFfuf
         1s8o24XKxLMgWCf6/whRBbS0ksSV5WgXM6ryYKtkOUo/JZtnn3W3NOXZPo2TxhkX75zk
         CKZRxreaMMx1nynccB69UG9GSqvyYBTvEn7Ab9WwMt9FIiMrc2jqjqQZMNmePuVcoDsA
         tsLJGy4aC1xeVP/siaREgr80yy2nHn1SpBUG8UgWJWDAM7AxWFU+kLMOE8BDxQHTtvMZ
         oBI+YcP6ho8zzmvFwy+bZJbDJz4PsKZxIvWFk+k470tLCLxBLu+sWevEtrWk46PWlT6h
         1XAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=p/RKzb+a6gDGINd8uj0+u9qz72FaAPXIWkZit3SeCmU=;
        b=zxLAlOgOJDZnYoLC3GelrPS43piEiuM+Fg/GDG1HOuAmxUpbfGIt0ofI6i3R/KmwSn
         qUj0/OC/FNKJjBdMDxevyVUoesDG2EhUKhbh8orx9fm0GSX4m98CO7+I3Akcu8AL163S
         RAMHclfQXcOJ2UUk2iTOvtOmPFpgeLknIS/TpA1/qIgu/Rqx2ySrUJjyIPMie8fbyZEz
         GY6QNo1pEpj+u0+NEXJboE39sJTzlmJ/N6kmNHiY5+3tLnH9fgqgsJQ2/62p6qFa/ZHr
         CKPjRYAZfa77PqJ/RMZ3xT4AzBSUclEMWFBI4gJ6Aj+Ilc7IUknoJuwXiOKf0jN1cWX8
         oPGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=uLzyUdvO;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id 68si67700lfi.3.2019.12.10.01.44.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2019 01:44:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id c14so19214937wrn.7
        for <clang-built-linux@googlegroups.com>; Tue, 10 Dec 2019 01:44:22 -0800 (PST)
X-Received: by 2002:adf:b602:: with SMTP id f2mr1999083wre.99.1575971061427;
        Tue, 10 Dec 2019 01:44:21 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id w17sm2565252wrt.89.2019.12.10.01.44.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 10 Dec 2019 01:44:20 -0800 (PST)
From: ci_notify@linaro.org
Date: Tue, 10 Dec 2019 09:44:20 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1501223615.4160.1575971060834.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allyesconfig - Build # 42 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4159_1631300442.1575971060299"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=uLzyUdvO;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442
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

------=_Part_4159_1631300442.1575971060299
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Successfully identified regression in *linux* in CI configuration tcwg_kern=
el/llvm-release-aarch64-next-allyesconfig.  So far, this commit has regress=
ed CI configurations:
 - tcwg_kernel/gnu-master-aarch64-next-allmodconfig
 - tcwg_kernel/gnu-master-aarch64-next-allyesconfig
 - tcwg_kernel/gnu-release-aarch64-next-allmodconfig
 - tcwg_kernel/gnu-release-aarch64-next-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
 - tcwg_kernel/llvm-release-aarch64-next-allmodconfig
 - tcwg_kernel/llvm-release-aarch64-next-allyesconfig

Culprit:
<cut>
commit cad75ce11002e9880daf3dc9d2d9ded8f9a7e706
Author: Michael S. Tsirkin <mst@redhat.com>

    netdev: pass the stuck queue to the timeout handler
</cut>

First few errors in logs of first_bad:
00:12:33 drivers/net/ethernet/freescale/dpaa/dpaa_eth.c:2622:20: error: inc=
ompatible pointer types initializing 'void (*)(struct net_device *, unsigne=
d int)' with an expression of type 'void (struct net_device *, int)' [-Werr=
or,-Wincompatible-pointer-types]
00:12:33 make[5]: *** [drivers/net/ethernet/freescale/dpaa/dpaa_eth.o] Erro=
r 1
00:12:41 make[4]: *** [drivers/net/ethernet/freescale/dpaa] Error 2
00:13:47 make[3]: *** [drivers/net/ethernet/freescale] Error 2
00:19:36 make[2]: *** [drivers/net/ethernet] Error 2
00:19:36 make[1]: *** [drivers/net] Error 2
00:19:36 make: *** [drivers] Error 2
Configuration details:
rr[llvm_url]=3D"https://github.com/llvm/llvm-project.git"
rr[linux_url]=3D"https://git.kernel.org/pub/scm/linux/kernel/git/next/linux=
-next.git"
rr[linux_branch]=3D"c7c32c43e831640996f86998452681ff54d17dfb"

Results regressed to (for first_bad =3D=3D cad75ce11002e9880daf3dc9d2d9ded8=
f9a7e706)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
17306

from (for last_good =3D=3D d72eb1b4f0b22ebfeb66e86f1289c1706d7d4174)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
17379
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-=
llvm-release-aarch64-next-allyesconfig/42/artifact/artifacts/build-cad75ce1=
1002e9880daf3dc9d2d9ded8f9a7e706/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-=
llvm-release-aarch64-next-allyesconfig/42/artifact/artifacts/build-d72eb1b4=
f0b22ebfeb66e86f1289c1706d7d4174/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-rele=
ase-aarch64-next-allyesconfig/42/

Reproduce builds:
<cut>
mkdir investigate-linux-cad75ce11002e9880daf3dc9d2d9ded8f9a7e706
cd investigate-linux-cad75ce11002e9880daf3dc9d2d9ded8f9a7e706

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcw=
g_kernel-bisect-llvm-release-aarch64-next-allyesconfig/42/artifact/artifact=
s/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/t=
cwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/42/artifact/artifa=
cts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm=
-release-aarch64-next-allyesconfig/42/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baselin=
e.sh

cd linux

# Reproduce first_bad build
git checkout --detach cad75ce11002e9880daf3dc9d2d9ded8f9a7e706
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach d72eb1b4f0b22ebfeb66e86f1289c1706d7d4174
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchai=
n/ci/base-artifacts.git/log/?h=3Dlinaro-local/ci/tcwg_kernel/llvm-release-a=
arch64-next-allyesconfig

Bisect log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch=
64-next-allyesconfig/42/artifact/artifacts/bisect.log/*view*/
Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch6=
4-next-allyesconfig/42/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch6=
4-next-allyesconfig/42/consoleText

Full commit:
<cut>
commit cad75ce11002e9880daf3dc9d2d9ded8f9a7e706
Author: Michael S. Tsirkin <mst@redhat.com>
Date:   Mon Nov 25 03:27:53 2019 -0500

    netdev: pass the stuck queue to the timeout handler
   =20
    This allows incrementing the correct timeout statistic without any mess=
.
    Down the road, devices can learn to reset just the specific queue.
   =20
    The patch was generated with the following script:
   =20
    use strict;
    use warnings;
   =20
    our $^I =3D '.bak';
   =20
    my @work =3D (
    ["arch/m68k/emu/nfeth.c", "nfeth_tx_timeout"],
    ["arch/um/drivers/net_kern.c", "uml_net_tx_timeout"],
    ["arch/um/drivers/vector_kern.c", "vector_net_tx_timeout"],
    ["arch/xtensa/platforms/iss/network.c", "iss_net_tx_timeout"],
    ["drivers/char/pcmcia/synclink_cs.c", "hdlcdev_tx_timeout"],
    ["drivers/infiniband/ulp/ipoib/ipoib_main.c", "ipoib_timeout"],
    ["drivers/infiniband/ulp/ipoib/ipoib_main.c", "ipoib_timeout"],
    ["drivers/message/fusion/mptlan.c", "mpt_lan_tx_timeout"],
    ["drivers/misc/sgi-xp/xpnet.c", "xpnet_dev_tx_timeout"],
    ["drivers/net/appletalk/cops.c", "cops_timeout"],
    ["drivers/net/arcnet/arcdevice.h", "arcnet_timeout"],
    ["drivers/net/arcnet/arcnet.c", "arcnet_timeout"],
    ["drivers/net/arcnet/com20020.c", "arcnet_timeout"],
    ["drivers/net/ethernet/3com/3c509.c", "el3_tx_timeout"],
    ["drivers/net/ethernet/3com/3c515.c", "corkscrew_timeout"],
    ["drivers/net/ethernet/3com/3c574_cs.c", "el3_tx_timeout"],
    ["drivers/net/ethernet/3com/3c589_cs.c", "el3_tx_timeout"],
    ["drivers/net/ethernet/3com/3c59x.c", "vortex_tx_timeout"],
    ["drivers/net/ethernet/3com/3c59x.c", "vortex_tx_timeout"],
    ["drivers/net/ethernet/3com/typhoon.c", "typhoon_tx_timeout"],
    ["drivers/net/ethernet/8390/8390.h", "ei_tx_timeout"],
    ["drivers/net/ethernet/8390/8390.c", "ei_tx_timeout"],
    ["drivers/net/ethernet/8390/8390p.c", "eip_tx_timeout"],
    ["drivers/net/ethernet/8390/ax88796.c", "ax_ei_tx_timeout"],
    ["drivers/net/ethernet/8390/axnet_cs.c", "axnet_tx_timeout"],
    ["drivers/net/ethernet/8390/etherh.c", "__ei_tx_timeout"],
    ["drivers/net/ethernet/8390/hydra.c", "__ei_tx_timeout"],
    ["drivers/net/ethernet/8390/mac8390.c", "__ei_tx_timeout"],
    ["drivers/net/ethernet/8390/mcf8390.c", "__ei_tx_timeout"],
    ["drivers/net/ethernet/8390/lib8390.c", "__ei_tx_timeout"],
    ["drivers/net/ethernet/8390/ne2k-pci.c", "ei_tx_timeout"],
    ["drivers/net/ethernet/8390/pcnet_cs.c", "ei_tx_timeout"],
    ["drivers/net/ethernet/8390/smc-ultra.c", "ei_tx_timeout"],
    ["drivers/net/ethernet/8390/wd.c", "ei_tx_timeout"],
    ["drivers/net/ethernet/8390/zorro8390.c", "__ei_tx_timeout"],
    ["drivers/net/ethernet/adaptec/starfire.c", "tx_timeout"],
    ["drivers/net/ethernet/agere/et131x.c", "et131x_tx_timeout"],
    ["drivers/net/ethernet/allwinner/sun4i-emac.c", "emac_timeout"],
    ["drivers/net/ethernet/alteon/acenic.c", "ace_watchdog"],
    ["drivers/net/ethernet/amazon/ena/ena_netdev.c", "ena_tx_timeout"],
    ["drivers/net/ethernet/amd/7990.h", "lance_tx_timeout"],
    ["drivers/net/ethernet/amd/7990.c", "lance_tx_timeout"],
    ["drivers/net/ethernet/amd/a2065.c", "lance_tx_timeout"],
    ["drivers/net/ethernet/amd/am79c961a.c", "am79c961_timeout"],
    ["drivers/net/ethernet/amd/amd8111e.c", "amd8111e_tx_timeout"],
    ["drivers/net/ethernet/amd/ariadne.c", "ariadne_tx_timeout"],
    ["drivers/net/ethernet/amd/atarilance.c", "lance_tx_timeout"],
    ["drivers/net/ethernet/amd/au1000_eth.c", "au1000_tx_timeout"],
    ["drivers/net/ethernet/amd/declance.c", "lance_tx_timeout"],
    ["drivers/net/ethernet/amd/lance.c", "lance_tx_timeout"],
    ["drivers/net/ethernet/amd/mvme147.c", "lance_tx_timeout"],
    ["drivers/net/ethernet/amd/ni65.c", "ni65_timeout"],
    ["drivers/net/ethernet/amd/nmclan_cs.c", "mace_tx_timeout"],
    ["drivers/net/ethernet/amd/pcnet32.c", "pcnet32_tx_timeout"],
    ["drivers/net/ethernet/amd/sunlance.c", "lance_tx_timeout"],
    ["drivers/net/ethernet/amd/xgbe/xgbe-drv.c", "xgbe_tx_timeout"],
    ["drivers/net/ethernet/apm/xgene-v2/main.c", "xge_timeout"],
    ["drivers/net/ethernet/apm/xgene/xgene_enet_main.c", "xgene_enet_timeou=
t"],
    ["drivers/net/ethernet/apple/macmace.c", "mace_tx_timeout"],
    ["drivers/net/ethernet/atheros/ag71xx.c", "ag71xx_tx_timeout"],
    ["drivers/net/ethernet/atheros/alx/main.c", "alx_tx_timeout"],
    ["drivers/net/ethernet/atheros/atl1c/atl1c_main.c", "atl1c_tx_timeout"]=
,
    ["drivers/net/ethernet/atheros/atl1e/atl1e_main.c", "atl1e_tx_timeout"]=
,
    ["drivers/net/ethernet/atheros/atlx/atlx.c", "atlx_tx_timeout"],
    ["drivers/net/ethernet/atheros/atlx/atl1.c", "atlx_tx_timeout"],
    ["drivers/net/ethernet/atheros/atlx/atl2.c", "atl2_tx_timeout"],
    ["drivers/net/ethernet/broadcom/b44.c", "b44_tx_timeout"],
    ["drivers/net/ethernet/broadcom/bcmsysport.c", "bcm_sysport_tx_timeout"=
],
    ["drivers/net/ethernet/broadcom/bnx2.c", "bnx2_tx_timeout"],
    ["drivers/net/ethernet/broadcom/bnx2x/bnx2x_cmn.h", "bnx2x_tx_timeout"]=
,
    ["drivers/net/ethernet/broadcom/bnx2x/bnx2x_cmn.c", "bnx2x_tx_timeout"]=
,
    ["drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c", "bnx2x_tx_timeout"=
],
    ["drivers/net/ethernet/broadcom/bnxt/bnxt.c", "bnxt_tx_timeout"],
    ["drivers/net/ethernet/broadcom/genet/bcmgenet.c", "bcmgenet_timeout"],
    ["drivers/net/ethernet/broadcom/sb1250-mac.c", "sbmac_tx_timeout"],
    ["drivers/net/ethernet/broadcom/tg3.c", "tg3_tx_timeout"],
    ["drivers/net/ethernet/calxeda/xgmac.c", "xgmac_tx_timeout"],
    ["drivers/net/ethernet/cavium/liquidio/lio_main.c", "liquidio_tx_timeou=
t"],
    ["drivers/net/ethernet/cavium/liquidio/lio_vf_main.c", "liquidio_tx_tim=
eout"],
    ["drivers/net/ethernet/cavium/liquidio/lio_vf_rep.c", "lio_vf_rep_tx_ti=
meout"],
    ["drivers/net/ethernet/cavium/thunder/nicvf_main.c", "nicvf_tx_timeout"=
],
    ["drivers/net/ethernet/cirrus/cs89x0.c", "net_timeout"],
    ["drivers/net/ethernet/cisco/enic/enic_main.c", "enic_tx_timeout"],
    ["drivers/net/ethernet/cisco/enic/enic_main.c", "enic_tx_timeout"],
    ["drivers/net/ethernet/cortina/gemini.c", "gmac_tx_timeout"],
    ["drivers/net/ethernet/davicom/dm9000.c", "dm9000_timeout"],
    ["drivers/net/ethernet/dec/tulip/de2104x.c", "de_tx_timeout"],
    ["drivers/net/ethernet/dec/tulip/tulip_core.c", "tulip_tx_timeout"],
    ["drivers/net/ethernet/dec/tulip/winbond-840.c", "tx_timeout"],
    ["drivers/net/ethernet/dlink/dl2k.c", "rio_tx_timeout"],
    ["drivers/net/ethernet/dlink/sundance.c", "tx_timeout"],
    ["drivers/net/ethernet/emulex/benet/be_main.c", "be_tx_timeout"],
    ["drivers/net/ethernet/ethoc.c", "ethoc_tx_timeout"],
    ["drivers/net/ethernet/faraday/ftgmac100.c", "ftgmac100_tx_timeout"],
    ["drivers/net/ethernet/fealnx.c", "fealnx_tx_timeout"],
    ["drivers/net/ethernet/freescale/dpaa/dpaa_eth.c", "dpaa_tx_timeout"],
    ["drivers/net/ethernet/freescale/fec_main.c", "fec_timeout"],
    ["drivers/net/ethernet/freescale/fec_mpc52xx.c", "mpc52xx_fec_tx_timeou=
t"],
    ["drivers/net/ethernet/freescale/fs_enet/fs_enet-main.c", "fs_timeout"]=
,
    ["drivers/net/ethernet/freescale/gianfar.c", "gfar_timeout"],
    ["drivers/net/ethernet/freescale/ucc_geth.c", "ucc_geth_timeout"],
    ["drivers/net/ethernet/fujitsu/fmvj18x_cs.c", "fjn_tx_timeout"],
    ["drivers/net/ethernet/google/gve/gve_main.c", "gve_tx_timeout"],
    ["drivers/net/ethernet/hisilicon/hip04_eth.c", "hip04_timeout"],
    ["drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", "hix5hd2_net_timeout"=
],
    ["drivers/net/ethernet/hisilicon/hns/hns_enet.c", "hns_nic_net_timeout"=
],
    ["drivers/net/ethernet/hisilicon/hns3/hns3_enet.c", "hns3_nic_net_timeo=
ut"],
    ["drivers/net/ethernet/huawei/hinic/hinic_main.c", "hinic_tx_timeout"],
    ["drivers/net/ethernet/i825xx/82596.c", "i596_tx_timeout"],
    ["drivers/net/ethernet/i825xx/ether1.c", "ether1_timeout"],
    ["drivers/net/ethernet/i825xx/lib82596.c", "i596_tx_timeout"],
    ["drivers/net/ethernet/i825xx/sun3_82586.c", "sun3_82586_timeout"],
    ["drivers/net/ethernet/ibm/ehea/ehea_main.c", "ehea_tx_watchdog"],
    ["drivers/net/ethernet/ibm/emac/core.c", "emac_tx_timeout"],
    ["drivers/net/ethernet/ibm/emac/core.c", "emac_tx_timeout"],
    ["drivers/net/ethernet/ibm/ibmvnic.c", "ibmvnic_tx_timeout"],
    ["drivers/net/ethernet/intel/e100.c", "e100_tx_timeout"],
    ["drivers/net/ethernet/intel/e1000/e1000_main.c", "e1000_tx_timeout"],
    ["drivers/net/ethernet/intel/e1000e/netdev.c", "e1000_tx_timeout"],
    ["drivers/net/ethernet/intel/fm10k/fm10k_netdev.c", "fm10k_tx_timeout"]=
,
    ["drivers/net/ethernet/intel/i40e/i40e_main.c", "i40e_tx_timeout"],
    ["drivers/net/ethernet/intel/iavf/iavf_main.c", "iavf_tx_timeout"],
    ["drivers/net/ethernet/intel/ice/ice_main.c", "ice_tx_timeout"],
    ["drivers/net/ethernet/intel/ice/ice_main.c", "ice_tx_timeout"],
    ["drivers/net/ethernet/intel/igb/igb_main.c", "igb_tx_timeout"],
    ["drivers/net/ethernet/intel/igbvf/netdev.c", "igbvf_tx_timeout"],
    ["drivers/net/ethernet/intel/ixgb/ixgb_main.c", "ixgb_tx_timeout"],
    ["drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", "adapter->netdev->=
netdev_ops->ndo_tx_timeout(adapter->netdev);"],
    ["drivers/net/ethernet/intel/ixgbe/ixgbe_main.c", "ixgbe_tx_timeout"],
    ["drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c", "ixgbevf_tx_timeo=
ut"],
    ["drivers/net/ethernet/jme.c", "jme_tx_timeout"],
    ["drivers/net/ethernet/korina.c", "korina_tx_timeout"],
    ["drivers/net/ethernet/lantiq_etop.c", "ltq_etop_tx_timeout"],
    ["drivers/net/ethernet/marvell/mv643xx_eth.c", "mv643xx_eth_tx_timeout"=
],
    ["drivers/net/ethernet/marvell/pxa168_eth.c", "pxa168_eth_tx_timeout"],
    ["drivers/net/ethernet/marvell/skge.c", "skge_tx_timeout"],
    ["drivers/net/ethernet/marvell/sky2.c", "sky2_tx_timeout"],
    ["drivers/net/ethernet/marvell/sky2.c", "sky2_tx_timeout"],
    ["drivers/net/ethernet/mediatek/mtk_eth_soc.c", "mtk_tx_timeout"],
    ["drivers/net/ethernet/mellanox/mlx4/en_netdev.c", "mlx4_en_tx_timeout"=
],
    ["drivers/net/ethernet/mellanox/mlx4/en_netdev.c", "mlx4_en_tx_timeout"=
],
    ["drivers/net/ethernet/mellanox/mlx5/core/en_main.c", "mlx5e_tx_timeout=
"],
    ["drivers/net/ethernet/micrel/ks8842.c", "ks8842_tx_timeout"],
    ["drivers/net/ethernet/micrel/ksz884x.c", "netdev_tx_timeout"],
    ["drivers/net/ethernet/microchip/enc28j60.c", "enc28j60_tx_timeout"],
    ["drivers/net/ethernet/microchip/encx24j600.c", "encx24j600_tx_timeout"=
],
    ["drivers/net/ethernet/natsemi/sonic.h", "sonic_tx_timeout"],
    ["drivers/net/ethernet/natsemi/sonic.c", "sonic_tx_timeout"],
    ["drivers/net/ethernet/natsemi/jazzsonic.c", "sonic_tx_timeout"],
    ["drivers/net/ethernet/natsemi/macsonic.c", "sonic_tx_timeout"],
    ["drivers/net/ethernet/natsemi/natsemi.c", "ns_tx_timeout"],
    ["drivers/net/ethernet/natsemi/ns83820.c", "ns83820_tx_timeout"],
    ["drivers/net/ethernet/natsemi/xtsonic.c", "sonic_tx_timeout"],
    ["drivers/net/ethernet/neterion/s2io.h", "s2io_tx_watchdog"],
    ["drivers/net/ethernet/neterion/s2io.c", "s2io_tx_watchdog"],
    ["drivers/net/ethernet/neterion/vxge/vxge-main.c", "vxge_tx_watchdog"],
    ["drivers/net/ethernet/netronome/nfp/nfp_net_common.c", "nfp_net_tx_tim=
eout"],
    ["drivers/net/ethernet/nvidia/forcedeth.c", "nv_tx_timeout"],
    ["drivers/net/ethernet/nvidia/forcedeth.c", "nv_tx_timeout"],
    ["drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", "pch_gbe_tx_ti=
meout"],
    ["drivers/net/ethernet/packetengines/hamachi.c", "hamachi_tx_timeout"],
    ["drivers/net/ethernet/packetengines/yellowfin.c", "yellowfin_tx_timeou=
t"],
    ["drivers/net/ethernet/pensando/ionic/ionic_lif.c", "ionic_tx_timeout"]=
,
    ["drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", "netxen_tx_tim=
eout"],
    ["drivers/net/ethernet/qlogic/qla3xxx.c", "ql3xxx_tx_timeout"],
    ["drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c", "qlcnic_tx_timeout=
"],
    ["drivers/net/ethernet/qualcomm/emac/emac.c", "emac_tx_timeout"],
    ["drivers/net/ethernet/qualcomm/qca_spi.c", "qcaspi_netdev_tx_timeout"]=
,
    ["drivers/net/ethernet/qualcomm/qca_uart.c", "qcauart_netdev_tx_timeout=
"],
    ["drivers/net/ethernet/rdc/r6040.c", "r6040_tx_timeout"],
    ["drivers/net/ethernet/realtek/8139cp.c", "cp_tx_timeout"],
    ["drivers/net/ethernet/realtek/8139too.c", "rtl8139_tx_timeout"],
    ["drivers/net/ethernet/realtek/atp.c", "tx_timeout"],
    ["drivers/net/ethernet/realtek/r8169_main.c", "rtl8169_tx_timeout"],
    ["drivers/net/ethernet/renesas/ravb_main.c", "ravb_tx_timeout"],
    ["drivers/net/ethernet/renesas/sh_eth.c", "sh_eth_tx_timeout"],
    ["drivers/net/ethernet/renesas/sh_eth.c", "sh_eth_tx_timeout"],
    ["drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", "sxgbe_tx_timeout"]=
,
    ["drivers/net/ethernet/seeq/ether3.c", "ether3_timeout"],
    ["drivers/net/ethernet/seeq/sgiseeq.c", "timeout"],
    ["drivers/net/ethernet/sfc/efx.c", "efx_watchdog"],
    ["drivers/net/ethernet/sfc/falcon/efx.c", "ef4_watchdog"],
    ["drivers/net/ethernet/sgi/ioc3-eth.c", "ioc3_timeout"],
    ["drivers/net/ethernet/sgi/meth.c", "meth_tx_timeout"],
    ["drivers/net/ethernet/silan/sc92031.c", "sc92031_tx_timeout"],
    ["drivers/net/ethernet/sis/sis190.c", "sis190_tx_timeout"],
    ["drivers/net/ethernet/sis/sis900.c", "sis900_tx_timeout"],
    ["drivers/net/ethernet/smsc/epic100.c", "epic_tx_timeout"],
    ["drivers/net/ethernet/smsc/smc911x.c", "smc911x_timeout"],
    ["drivers/net/ethernet/smsc/smc9194.c", "smc_timeout"],
    ["drivers/net/ethernet/smsc/smc91c92_cs.c", "smc_tx_timeout"],
    ["drivers/net/ethernet/smsc/smc91x.c", "smc_timeout"],
    ["drivers/net/ethernet/stmicro/stmmac/stmmac_main.c", "stmmac_tx_timeou=
t"],
    ["drivers/net/ethernet/sun/cassini.c", "cas_tx_timeout"],
    ["drivers/net/ethernet/sun/ldmvsw.c", "sunvnet_tx_timeout_common"],
    ["drivers/net/ethernet/sun/niu.c", "niu_tx_timeout"],
    ["drivers/net/ethernet/sun/sunbmac.c", "bigmac_tx_timeout"],
    ["drivers/net/ethernet/sun/sungem.c", "gem_tx_timeout"],
    ["drivers/net/ethernet/sun/sunhme.c", "happy_meal_tx_timeout"],
    ["drivers/net/ethernet/sun/sunqe.c", "qe_tx_timeout"],
    ["drivers/net/ethernet/sun/sunvnet.c", "sunvnet_tx_timeout_common"],
    ["drivers/net/ethernet/sun/sunvnet_common.c", "sunvnet_tx_timeout_commo=
n"],
    ["drivers/net/ethernet/sun/sunvnet_common.h", "sunvnet_tx_timeout_commo=
n"],
    ["drivers/net/ethernet/synopsys/dwc-xlgmac-net.c", "xlgmac_tx_timeout"]=
,
    ["drivers/net/ethernet/ti/cpmac.c", "cpmac_tx_timeout"],
    ["drivers/net/ethernet/ti/cpsw.c", "cpsw_ndo_tx_timeout"],
    ["drivers/net/ethernet/ti/davinci_emac.c", "emac_dev_tx_timeout"],
    ["drivers/net/ethernet/ti/netcp_core.c", "netcp_ndo_tx_timeout"],
    ["drivers/net/ethernet/ti/tlan.c", "tlan_tx_timeout"],
    ["drivers/net/ethernet/toshiba/ps3_gelic_net.h", "gelic_net_tx_timeout"=
],
    ["drivers/net/ethernet/toshiba/ps3_gelic_net.c", "gelic_net_tx_timeout"=
],
    ["drivers/net/ethernet/toshiba/ps3_gelic_wireless.c", "gelic_net_tx_tim=
eout"],
    ["drivers/net/ethernet/toshiba/spider_net.c", "spider_net_tx_timeout"],
    ["drivers/net/ethernet/toshiba/tc35815.c", "tc35815_tx_timeout"],
    ["drivers/net/ethernet/via/via-rhine.c", "rhine_tx_timeout"],
    ["drivers/net/ethernet/wiznet/w5100.c", "w5100_tx_timeout"],
    ["drivers/net/ethernet/wiznet/w5300.c", "w5300_tx_timeout"],
    ["drivers/net/ethernet/xilinx/xilinx_emaclite.c", "xemaclite_tx_timeout=
"],
    ["drivers/net/ethernet/xircom/xirc2ps_cs.c", "xirc_tx_timeout"],
    ["drivers/net/fjes/fjes_main.c", "fjes_tx_retry"],
    ["drivers/net/slip/slip.c", "sl_tx_timeout"],
    ["include/linux/usb/usbnet.h", "usbnet_tx_timeout"],
    ["drivers/net/usb/aqc111.c", "usbnet_tx_timeout"],
    ["drivers/net/usb/asix_devices.c", "usbnet_tx_timeout"],
    ["drivers/net/usb/asix_devices.c", "usbnet_tx_timeout"],
    ["drivers/net/usb/asix_devices.c", "usbnet_tx_timeout"],
    ["drivers/net/usb/ax88172a.c", "usbnet_tx_timeout"],
    ["drivers/net/usb/ax88179_178a.c", "usbnet_tx_timeout"],
    ["drivers/net/usb/catc.c", "catc_tx_timeout"],
    ["drivers/net/usb/cdc_mbim.c", "usbnet_tx_timeout"],
    ["drivers/net/usb/cdc_ncm.c", "usbnet_tx_timeout"],
    ["drivers/net/usb/dm9601.c", "usbnet_tx_timeout"],
    ["drivers/net/usb/hso.c", "hso_net_tx_timeout"],
    ["drivers/net/usb/int51x1.c", "usbnet_tx_timeout"],
    ["drivers/net/usb/ipheth.c", "ipheth_tx_timeout"],
    ["drivers/net/usb/kaweth.c", "kaweth_tx_timeout"],
    ["drivers/net/usb/lan78xx.c", "lan78xx_tx_timeout"],
    ["drivers/net/usb/mcs7830.c", "usbnet_tx_timeout"],
    ["drivers/net/usb/pegasus.c", "pegasus_tx_timeout"],
    ["drivers/net/usb/qmi_wwan.c", "usbnet_tx_timeout"],
    ["drivers/net/usb/r8152.c", "rtl8152_tx_timeout"],
    ["drivers/net/usb/rndis_host.c", "usbnet_tx_timeout"],
    ["drivers/net/usb/rtl8150.c", "rtl8150_tx_timeout"],
    ["drivers/net/usb/sierra_net.c", "usbnet_tx_timeout"],
    ["drivers/net/usb/smsc75xx.c", "usbnet_tx_timeout"],
    ["drivers/net/usb/smsc95xx.c", "usbnet_tx_timeout"],
    ["drivers/net/usb/sr9700.c", "usbnet_tx_timeout"],
    ["drivers/net/usb/sr9800.c", "usbnet_tx_timeout"],
    ["drivers/net/usb/usbnet.c", "usbnet_tx_timeout"],
    ["drivers/net/vmxnet3/vmxnet3_drv.c", "vmxnet3_tx_timeout"],
    ["drivers/net/wan/cosa.c", "cosa_net_timeout"],
    ["drivers/net/wan/farsync.c", "fst_tx_timeout"],
    ["drivers/net/wan/fsl_ucc_hdlc.c", "uhdlc_tx_timeout"],
    ["drivers/net/wan/lmc/lmc_main.c", "lmc_driver_timeout"],
    ["drivers/net/wan/x25_asy.c", "x25_asy_timeout"],
    ["drivers/net/wimax/i2400m/netdev.c", "i2400m_tx_timeout"],
    ["drivers/net/wireless/intel/ipw2x00/ipw2100.c", "ipw2100_tx_timeout"],
    ["drivers/net/wireless/intersil/hostap/hostap_main.c", "prism2_tx_timeo=
ut"],
    ["drivers/net/wireless/intersil/hostap/hostap_main.c", "prism2_tx_timeo=
ut"],
    ["drivers/net/wireless/intersil/hostap/hostap_main.c", "prism2_tx_timeo=
ut"],
    ["drivers/net/wireless/intersil/orinoco/main.c", "orinoco_tx_timeout"],
    ["drivers/net/wireless/intersil/orinoco/orinoco_usb.c", "orinoco_tx_tim=
eout"],
    ["drivers/net/wireless/intersil/orinoco/orinoco.h", "orinoco_tx_timeout=
"],
    ["drivers/net/wireless/intersil/prism54/islpci_dev.c", "islpci_eth_tx_t=
imeout"],
    ["drivers/net/wireless/intersil/prism54/islpci_eth.c", "islpci_eth_tx_t=
imeout"],
    ["drivers/net/wireless/intersil/prism54/islpci_eth.h", "islpci_eth_tx_t=
imeout"],
    ["drivers/net/wireless/marvell/mwifiex/main.c", "mwifiex_tx_timeout"],
    ["drivers/net/wireless/quantenna/qtnfmac/core.c", "qtnf_netdev_tx_timeo=
ut"],
    ["drivers/net/wireless/quantenna/qtnfmac/core.h", "qtnf_netdev_tx_timeo=
ut"],
    ["drivers/net/wireless/rndis_wlan.c", "usbnet_tx_timeout"],
    ["drivers/net/wireless/wl3501_cs.c", "wl3501_tx_timeout"],
    ["drivers/net/wireless/zydas/zd1201.c", "zd1201_tx_timeout"],
    ["drivers/s390/net/qeth_core.h", "qeth_tx_timeout"],
    ["drivers/s390/net/qeth_core_main.c", "qeth_tx_timeout"],
    ["drivers/s390/net/qeth_l2_main.c", "qeth_tx_timeout"],
    ["drivers/s390/net/qeth_l2_main.c", "qeth_tx_timeout"],
    ["drivers/s390/net/qeth_l3_main.c", "qeth_tx_timeout"],
    ["drivers/s390/net/qeth_l3_main.c", "qeth_tx_timeout"],
    ["drivers/staging/ks7010/ks_wlan_net.c", "ks_wlan_tx_timeout"],
    ["drivers/staging/qlge/qlge_main.c", "qlge_tx_timeout"],
    ["drivers/staging/rtl8192e/rtl8192e/rtl_core.c", "_rtl92e_tx_timeout"],
    ["drivers/staging/rtl8192u/r8192U_core.c", "tx_timeout"],
    ["drivers/staging/unisys/visornic/visornic_main.c", "visornic_xmit_time=
out"],
    ["drivers/staging/wlan-ng/p80211netdev.c", "p80211knetdev_tx_timeout"],
    ["drivers/tty/n_gsm.c", "gsm_mux_net_tx_timeout"],
    ["drivers/tty/synclink.c", "hdlcdev_tx_timeout"],
    ["drivers/tty/synclink_gt.c", "hdlcdev_tx_timeout"],
    ["drivers/tty/synclinkmp.c", "hdlcdev_tx_timeout"],
    ["net/atm/lec.c", "lec_tx_timeout"],
    ["net/bluetooth/bnep/netdev.c", "bnep_net_timeout"]
    );
   =20
    for my $p (@work) {
            my @pair =3D @$p;
            my $file =3D $pair[0];
            my $func =3D $pair[1];
            print STDERR $file , ": ", $func,"\n";
            our @ARGV =3D ($file);
            while (<ARGV>) {
                    if (m/($func\s*\(struct\s+net_device\s+\*[A-Za-z_]?[A-Z=
a-z-0-9_]*)(\))/) {
                            print STDERR "found $1+$2 in $file\n";
                    }
                    if (s/($func\s*\(struct\s+net_device\s+\*[A-Za-z_]?[A-Z=
a-z-0-9_]*)(\))/$1, int txqueue$2/) {
                            print STDERR "$func found in $file\n";
                    }
                    print;
            }
    }
   =20
    where the list of files and functions is simply from:
   =20
    git grep ndo_tx_timeout, with manual addition of headers
    in the rare cases where the function is from a header,
    then manually changing the few places which actually
    call ndo_tx_timeout.
   =20
    Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
    Acked-by: Heiner Kallweit <hkallweit1@gmail.com>
    Acked-by: Jakub Kicinski <jakub.kicinski@netronome.com>
    Acked-by: Shannon Nelson <snelson@pensando.io>
    Reviewed-by: Martin Habets <mhabets@solarflare.com>
   =20
    changes from v8:
            fix up more direct calls to timeout handlers in natsemi,ti,atl
    changes from v7:
            fixup leftovers from v3 change
    changes from v6:
            fix typo in rtl driver
    changes from v5:
            add missing files (allow any net device argument name)
    changes from v4:
            add a missing driver header
    changes from v3:
            change queue # to unsigned
    Changes from v2:
            added headers
    Changes from v1:
            Fix errors found by kbuild:
            generalize the pattern a bit, to pick up
            a couple of instances missed by the previous
            version.
---
 arch/m68k/emu/nfeth.c                                 | 2 +-
 arch/um/drivers/net_kern.c                            | 2 +-
 arch/um/drivers/vector_kern.c                         | 2 +-
 arch/xtensa/platforms/iss/network.c                   | 2 +-
 drivers/char/pcmcia/synclink_cs.c                     | 2 +-
 drivers/infiniband/ulp/ipoib/ipoib_main.c             | 2 +-
 drivers/message/fusion/mptlan.c                       | 2 +-
 drivers/misc/sgi-xp/xpnet.c                           | 2 +-
 drivers/net/appletalk/cops.c                          | 4 ++--
 drivers/net/arcnet/arcdevice.h                        | 2 +-
 drivers/net/arcnet/arcnet.c                           | 2 +-
 drivers/net/ethernet/3com/3c509.c                     | 4 ++--
 drivers/net/ethernet/3com/3c515.c                     | 4 ++--
 drivers/net/ethernet/3com/3c574_cs.c                  | 4 ++--
 drivers/net/ethernet/3com/3c589_cs.c                  | 4 ++--
 drivers/net/ethernet/3com/3c59x.c                     | 4 ++--
 drivers/net/ethernet/3com/typhoon.c                   | 2 +-
 drivers/net/ethernet/8390/8390.c                      | 4 ++--
 drivers/net/ethernet/8390/8390.h                      | 2 +-
 drivers/net/ethernet/8390/8390p.c                     | 4 ++--
 drivers/net/ethernet/8390/axnet_cs.c                  | 4 ++--
 drivers/net/ethernet/8390/lib8390.c                   | 2 +-
 drivers/net/ethernet/adaptec/starfire.c               | 4 ++--
 drivers/net/ethernet/agere/et131x.c                   | 2 +-
 drivers/net/ethernet/allwinner/sun4i-emac.c           | 2 +-
 drivers/net/ethernet/alteon/acenic.c                  | 4 ++--
 drivers/net/ethernet/amazon/ena/ena_netdev.c          | 2 +-
 drivers/net/ethernet/amd/7990.c                       | 2 +-
 drivers/net/ethernet/amd/7990.h                       | 2 +-
 drivers/net/ethernet/amd/a2065.c                      | 2 +-
 drivers/net/ethernet/amd/am79c961a.c                  | 2 +-
 drivers/net/ethernet/amd/amd8111e.c                   | 2 +-
 drivers/net/ethernet/amd/ariadne.c                    | 2 +-
 drivers/net/ethernet/amd/atarilance.c                 | 4 ++--
 drivers/net/ethernet/amd/au1000_eth.c                 | 2 +-
 drivers/net/ethernet/amd/declance.c                   | 2 +-
 drivers/net/ethernet/amd/lance.c                      | 4 ++--
 drivers/net/ethernet/amd/ni65.c                       | 4 ++--
 drivers/net/ethernet/amd/nmclan_cs.c                  | 4 ++--
 drivers/net/ethernet/amd/pcnet32.c                    | 4 ++--
 drivers/net/ethernet/amd/sunlance.c                   | 2 +-
 drivers/net/ethernet/amd/xgbe/xgbe-drv.c              | 2 +-
 drivers/net/ethernet/apm/xgene-v2/main.c              | 2 +-
 drivers/net/ethernet/apm/xgene/xgene_enet_main.c      | 2 +-
 drivers/net/ethernet/apple/macmace.c                  | 4 ++--
 drivers/net/ethernet/atheros/ag71xx.c                 | 2 +-
 drivers/net/ethernet/atheros/alx/main.c               | 2 +-
 drivers/net/ethernet/atheros/atl1c/atl1c_main.c       | 2 +-
 drivers/net/ethernet/atheros/atl1e/atl1e_main.c       | 2 +-
 drivers/net/ethernet/atheros/atlx/atl2.c              | 2 +-
 drivers/net/ethernet/atheros/atlx/atlx.c              | 2 +-
 drivers/net/ethernet/broadcom/b44.c                   | 2 +-
 drivers/net/ethernet/broadcom/bcmsysport.c            | 2 +-
 drivers/net/ethernet/broadcom/bnx2.c                  | 2 +-
 drivers/net/ethernet/broadcom/bnx2x/bnx2x_cmn.c       | 2 +-
 drivers/net/ethernet/broadcom/bnx2x/bnx2x_cmn.h       | 2 +-
 drivers/net/ethernet/broadcom/bnxt/bnxt.c             | 2 +-
 drivers/net/ethernet/broadcom/genet/bcmgenet.c        | 2 +-
 drivers/net/ethernet/broadcom/sb1250-mac.c            | 4 ++--
 drivers/net/ethernet/broadcom/tg3.c                   | 2 +-
 drivers/net/ethernet/calxeda/xgmac.c                  | 2 +-
 drivers/net/ethernet/cavium/liquidio/lio_main.c       | 2 +-
 drivers/net/ethernet/cavium/liquidio/lio_vf_main.c    | 2 +-
 drivers/net/ethernet/cavium/liquidio/lio_vf_rep.c     | 4 ++--
 drivers/net/ethernet/cavium/thunder/nicvf_main.c      | 2 +-
 drivers/net/ethernet/cirrus/cs89x0.c                  | 2 +-
 drivers/net/ethernet/cisco/enic/enic_main.c           | 2 +-
 drivers/net/ethernet/cortina/gemini.c                 | 2 +-
 drivers/net/ethernet/davicom/dm9000.c                 | 2 +-
 drivers/net/ethernet/dec/tulip/de2104x.c              | 2 +-
 drivers/net/ethernet/dec/tulip/tulip_core.c           | 4 ++--
 drivers/net/ethernet/dec/tulip/winbond-840.c          | 4 ++--
 drivers/net/ethernet/dlink/dl2k.c                     | 4 ++--
 drivers/net/ethernet/dlink/sundance.c                 | 4 ++--
 drivers/net/ethernet/emulex/benet/be_main.c           | 2 +-
 drivers/net/ethernet/ethoc.c                          | 2 +-
 drivers/net/ethernet/faraday/ftgmac100.c              | 2 +-
 drivers/net/ethernet/fealnx.c                         | 4 ++--
 drivers/net/ethernet/freescale/dpaa/dpaa_eth.c        | 2 +-
 drivers/net/ethernet/freescale/fec_main.c             | 2 +-
 drivers/net/ethernet/freescale/fec_mpc52xx.c          | 2 +-
 drivers/net/ethernet/freescale/fs_enet/fs_enet-main.c | 2 +-
 drivers/net/ethernet/freescale/gianfar.c              | 2 +-
 drivers/net/ethernet/freescale/ucc_geth.c             | 2 +-
 drivers/net/ethernet/fujitsu/fmvj18x_cs.c             | 4 ++--
 drivers/net/ethernet/google/gve/gve_main.c            | 2 +-
 drivers/net/ethernet/hisilicon/hip04_eth.c            | 2 +-
 drivers/net/ethernet/hisilicon/hix5hd2_gmac.c         | 2 +-
 drivers/net/ethernet/hisilicon/hns/hns_enet.c         | 2 +-
 drivers/net/ethernet/hisilicon/hns3/hns3_enet.c       | 2 +-
 drivers/net/ethernet/huawei/hinic/hinic_main.c        | 2 +-
 drivers/net/ethernet/i825xx/82596.c                   | 4 ++--
 drivers/net/ethernet/i825xx/ether1.c                  | 4 ++--
 drivers/net/ethernet/i825xx/lib82596.c                | 4 ++--
 drivers/net/ethernet/i825xx/sun3_82586.c              | 4 ++--
 drivers/net/ethernet/ibm/ehea/ehea_main.c             | 2 +-
 drivers/net/ethernet/ibm/emac/core.c                  | 2 +-
 drivers/net/ethernet/ibm/ibmvnic.c                    | 2 +-
 drivers/net/ethernet/intel/e100.c                     | 2 +-
 drivers/net/ethernet/intel/e1000/e1000_main.c         | 4 ++--
 drivers/net/ethernet/intel/e1000e/netdev.c            | 2 +-
 drivers/net/ethernet/intel/fm10k/fm10k_netdev.c       | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c           | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c           | 2 +-
 drivers/net/ethernet/intel/ice/ice_main.c             | 2 +-
 drivers/net/ethernet/intel/igb/igb_main.c             | 4 ++--
 drivers/net/ethernet/intel/igbvf/netdev.c             | 2 +-
 drivers/net/ethernet/intel/ixgb/ixgb_main.c           | 4 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c      | 4 +++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c         | 2 +-
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c     | 2 +-
 drivers/net/ethernet/jme.c                            | 2 +-
 drivers/net/ethernet/korina.c                         | 2 +-
 drivers/net/ethernet/lantiq_etop.c                    | 2 +-
 drivers/net/ethernet/marvell/mv643xx_eth.c            | 2 +-
 drivers/net/ethernet/marvell/pxa168_eth.c             | 2 +-
 drivers/net/ethernet/marvell/skge.c                   | 2 +-
 drivers/net/ethernet/marvell/sky2.c                   | 2 +-
 drivers/net/ethernet/mediatek/mtk_eth_soc.c           | 2 +-
 drivers/net/ethernet/mellanox/mlx4/en_netdev.c        | 2 +-
 drivers/net/ethernet/mellanox/mlx5/core/en_main.c     | 2 +-
 drivers/net/ethernet/micrel/ks8842.c                  | 2 +-
 drivers/net/ethernet/micrel/ksz884x.c                 | 2 +-
 drivers/net/ethernet/microchip/enc28j60.c             | 2 +-
 drivers/net/ethernet/microchip/encx24j600.c           | 2 +-
 drivers/net/ethernet/natsemi/natsemi.c                | 4 ++--
 drivers/net/ethernet/natsemi/ns83820.c                | 4 ++--
 drivers/net/ethernet/natsemi/sonic.c                  | 2 +-
 drivers/net/ethernet/natsemi/sonic.h                  | 2 +-
 drivers/net/ethernet/neterion/s2io.c                  | 2 +-
 drivers/net/ethernet/neterion/s2io.h                  | 2 +-
 drivers/net/ethernet/neterion/vxge/vxge-main.c        | 2 +-
 drivers/net/ethernet/netronome/nfp/nfp_net_common.c   | 2 +-
 drivers/net/ethernet/nvidia/forcedeth.c               | 2 +-
 drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c  | 2 +-
 drivers/net/ethernet/packetengines/hamachi.c          | 4 ++--
 drivers/net/ethernet/packetengines/yellowfin.c        | 4 ++--
 drivers/net/ethernet/pensando/ionic/ionic_lif.c       | 2 +-
 drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c  | 4 ++--
 drivers/net/ethernet/qlogic/qla3xxx.c                 | 2 +-
 drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c      | 4 ++--
 drivers/net/ethernet/qualcomm/emac/emac.c             | 2 +-
 drivers/net/ethernet/qualcomm/qca_spi.c               | 2 +-
 drivers/net/ethernet/qualcomm/qca_uart.c              | 2 +-
 drivers/net/ethernet/rdc/r6040.c                      | 2 +-
 drivers/net/ethernet/realtek/8139cp.c                 | 2 +-
 drivers/net/ethernet/realtek/8139too.c                | 4 ++--
 drivers/net/ethernet/realtek/atp.c                    | 4 ++--
 drivers/net/ethernet/realtek/r8169_main.c             | 2 +-
 drivers/net/ethernet/renesas/ravb_main.c              | 2 +-
 drivers/net/ethernet/renesas/sh_eth.c                 | 2 +-
 drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c       | 2 +-
 drivers/net/ethernet/seeq/ether3.c                    | 4 ++--
 drivers/net/ethernet/seeq/sgiseeq.c                   | 2 +-
 drivers/net/ethernet/sfc/efx.c                        | 2 +-
 drivers/net/ethernet/sfc/falcon/efx.c                 | 2 +-
 drivers/net/ethernet/sgi/ioc3-eth.c                   | 4 ++--
 drivers/net/ethernet/sgi/meth.c                       | 4 ++--
 drivers/net/ethernet/silan/sc92031.c                  | 2 +-
 drivers/net/ethernet/sis/sis190.c                     | 2 +-
 drivers/net/ethernet/sis/sis900.c                     | 4 ++--
 drivers/net/ethernet/smsc/epic100.c                   | 4 ++--
 drivers/net/ethernet/smsc/smc911x.c                   | 2 +-
 drivers/net/ethernet/smsc/smc9194.c                   | 4 ++--
 drivers/net/ethernet/smsc/smc91c92_cs.c               | 4 ++--
 drivers/net/ethernet/smsc/smc91x.c                    | 2 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c     | 2 +-
 drivers/net/ethernet/sun/cassini.c                    | 2 +-
 drivers/net/ethernet/sun/niu.c                        | 2 +-
 drivers/net/ethernet/sun/sunbmac.c                    | 2 +-
 drivers/net/ethernet/sun/sungem.c                     | 2 +-
 drivers/net/ethernet/sun/sunhme.c                     | 2 +-
 drivers/net/ethernet/sun/sunqe.c                      | 2 +-
 drivers/net/ethernet/sun/sunvnet_common.c             | 2 +-
 drivers/net/ethernet/sun/sunvnet_common.h             | 2 +-
 drivers/net/ethernet/synopsys/dwc-xlgmac-net.c        | 2 +-
 drivers/net/ethernet/ti/cpmac.c                       | 2 +-
 drivers/net/ethernet/ti/cpsw.c                        | 2 +-
 drivers/net/ethernet/ti/davinci_emac.c                | 2 +-
 drivers/net/ethernet/ti/netcp_core.c                  | 2 +-
 drivers/net/ethernet/ti/tlan.c                        | 6 +++---
 drivers/net/ethernet/toshiba/ps3_gelic_net.c          | 2 +-
 drivers/net/ethernet/toshiba/ps3_gelic_net.h          | 2 +-
 drivers/net/ethernet/toshiba/spider_net.c             | 2 +-
 drivers/net/ethernet/toshiba/tc35815.c                | 4 ++--
 drivers/net/ethernet/via/via-rhine.c                  | 4 ++--
 drivers/net/ethernet/wiznet/w5100.c                   | 2 +-
 drivers/net/ethernet/wiznet/w5300.c                   | 2 +-
 drivers/net/ethernet/xilinx/xilinx_emaclite.c         | 2 +-
 drivers/net/ethernet/xircom/xirc2ps_cs.c              | 4 ++--
 drivers/net/fjes/fjes_main.c                          | 4 ++--
 drivers/net/slip/slip.c                               | 2 +-
 drivers/net/usb/catc.c                                | 2 +-
 drivers/net/usb/hso.c                                 | 2 +-
 drivers/net/usb/ipheth.c                              | 2 +-
 drivers/net/usb/kaweth.c                              | 2 +-
 drivers/net/usb/lan78xx.c                             | 2 +-
 drivers/net/usb/pegasus.c                             | 2 +-
 drivers/net/usb/r8152.c                               | 2 +-
 drivers/net/usb/rtl8150.c                             | 2 +-
 drivers/net/usb/usbnet.c                              | 2 +-
 drivers/net/vmxnet3/vmxnet3_drv.c                     | 2 +-
 drivers/net/wan/cosa.c                                | 4 ++--
 drivers/net/wan/farsync.c                             | 2 +-
 drivers/net/wan/fsl_ucc_hdlc.c                        | 2 +-
 drivers/net/wan/lmc/lmc_main.c                        | 4 ++--
 drivers/net/wan/x25_asy.c                             | 2 +-
 drivers/net/wimax/i2400m/netdev.c                     | 2 +-
 drivers/net/wireless/intel/ipw2x00/ipw2100.c          | 2 +-
 drivers/net/wireless/intersil/hostap/hostap_main.c    | 2 +-
 drivers/net/wireless/intersil/orinoco/main.c          | 2 +-
 drivers/net/wireless/intersil/orinoco/orinoco.h       | 2 +-
 drivers/net/wireless/intersil/prism54/islpci_eth.c    | 2 +-
 drivers/net/wireless/intersil/prism54/islpci_eth.h    | 2 +-
 drivers/net/wireless/marvell/mwifiex/main.c           | 2 +-
 drivers/net/wireless/quantenna/qtnfmac/core.c         | 2 +-
 drivers/net/wireless/wl3501_cs.c                      | 2 +-
 drivers/net/wireless/zydas/zd1201.c                   | 2 +-
 drivers/s390/net/qeth_core.h                          | 2 +-
 drivers/s390/net/qeth_core_main.c                     | 2 +-
 drivers/staging/ks7010/ks_wlan_net.c                  | 4 ++--
 drivers/staging/qlge/qlge_main.c                      | 2 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c          | 2 +-
 drivers/staging/rtl8192u/r8192U_core.c                | 2 +-
 drivers/staging/unisys/visornic/visornic_main.c       | 2 +-
 drivers/staging/wlan-ng/p80211netdev.c                | 4 ++--
 drivers/tty/n_gsm.c                                   | 2 +-
 drivers/tty/synclink.c                                | 2 +-
 drivers/tty/synclink_gt.c                             | 2 +-
 drivers/tty/synclinkmp.c                              | 2 +-
 include/linux/netdevice.h                             | 5 +++--
 include/linux/usb/usbnet.h                            | 2 +-
 net/atm/lec.c                                         | 2 +-
 net/bluetooth/bnep/netdev.c                           | 2 +-
 net/sched/sch_generic.c                               | 2 +-
 235 files changed, 296 insertions(+), 293 deletions(-)

diff --git a/arch/m68k/emu/nfeth.c b/arch/m68k/emu/nfeth.c
index a4ebd2445eda..d2875e32abfc 100644
--- a/arch/m68k/emu/nfeth.c
+++ b/arch/m68k/emu/nfeth.c
@@ -167,7 +167,7 @@ static int nfeth_xmit(struct sk_buff *skb, struct net_d=
evice *dev)
 	return 0;
 }
=20
-static void nfeth_tx_timeout(struct net_device *dev)
+static void nfeth_tx_timeout(struct net_device *dev, unsigned int txqueue)
 {
 	dev->stats.tx_errors++;
 	netif_wake_queue(dev);
diff --git a/arch/um/drivers/net_kern.c b/arch/um/drivers/net_kern.c
index 327b728f7244..35ebeebfc1a8 100644
--- a/arch/um/drivers/net_kern.c
+++ b/arch/um/drivers/net_kern.c
@@ -247,7 +247,7 @@ static void uml_net_set_multicast_list(struct net_devic=
e *dev)
 	return;
 }
=20
-static void uml_net_tx_timeout(struct net_device *dev)
+static void uml_net_tx_timeout(struct net_device *dev, unsigned int txqueu=
e)
 {
 	netif_trans_update(dev);
 	netif_wake_queue(dev);
diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
index 769ffbd9e9a6..ae930f0bfd51 100644
--- a/arch/um/drivers/vector_kern.c
+++ b/arch/um/drivers/vector_kern.c
@@ -1298,7 +1298,7 @@ static void vector_net_set_multicast_list(struct net_=
device *dev)
 	return;
 }
=20
-static void vector_net_tx_timeout(struct net_device *dev)
+static void vector_net_tx_timeout(struct net_device *dev, unsigned int txq=
ueue)
 {
 	struct vector_private *vp =3D netdev_priv(dev);
=20
diff --git a/arch/xtensa/platforms/iss/network.c b/arch/xtensa/platforms/is=
s/network.c
index fa9f3893b002..4986226a5ab2 100644
--- a/arch/xtensa/platforms/iss/network.c
+++ b/arch/xtensa/platforms/iss/network.c
@@ -455,7 +455,7 @@ static void iss_net_set_multicast_list(struct net_devic=
e *dev)
 {
 }
=20
-static void iss_net_tx_timeout(struct net_device *dev)
+static void iss_net_tx_timeout(struct net_device *dev, unsigned int txqueu=
e)
 {
 }
=20
diff --git a/drivers/char/pcmcia/synclink_cs.c b/drivers/char/pcmcia/syncli=
nk_cs.c
index 82f9a6a814ae..e342daa73d1b 100644
--- a/drivers/char/pcmcia/synclink_cs.c
+++ b/drivers/char/pcmcia/synclink_cs.c
@@ -4169,7 +4169,7 @@ static int hdlcdev_ioctl(struct net_device *dev, stru=
ct ifreq *ifr, int cmd)
  *
  * dev  pointer to network device structure
  */
-static void hdlcdev_tx_timeout(struct net_device *dev)
+static void hdlcdev_tx_timeout(struct net_device *dev, unsigned int txqueu=
e)
 {
 	MGSLPC_INFO *info =3D dev_to_port(dev);
 	unsigned long flags;
diff --git a/drivers/infiniband/ulp/ipoib/ipoib_main.c b/drivers/infiniband=
/ulp/ipoib/ipoib_main.c
index ac0583ff280d..b86dbdc37b83 100644
--- a/drivers/infiniband/ulp/ipoib/ipoib_main.c
+++ b/drivers/infiniband/ulp/ipoib/ipoib_main.c
@@ -1182,7 +1182,7 @@ static netdev_tx_t ipoib_start_xmit(struct sk_buff *s=
kb, struct net_device *dev)
 	return NETDEV_TX_OK;
 }
=20
-static void ipoib_timeout(struct net_device *dev)
+static void ipoib_timeout(struct net_device *dev, unsigned int txqueue)
 {
 	struct ipoib_dev_priv *priv =3D ipoib_priv(dev);
=20
diff --git a/drivers/message/fusion/mptlan.c b/drivers/message/fusion/mptla=
n.c
index ebc00d47abf5..7d3784aa20e5 100644
--- a/drivers/message/fusion/mptlan.c
+++ b/drivers/message/fusion/mptlan.c
@@ -552,7 +552,7 @@ mpt_lan_close(struct net_device *dev)
 /*=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=
=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D*/
 /* Tx timeout handler. */
 static void
-mpt_lan_tx_timeout(struct net_device *dev)
+mpt_lan_tx_timeout(struct net_device *dev, unsigned int txqueue)
 {
 	struct mpt_lan_priv *priv =3D netdev_priv(dev);
 	MPT_ADAPTER *mpt_dev =3D priv->mpt_dev;
diff --git a/drivers/misc/sgi-xp/xpnet.c b/drivers/misc/sgi-xp/xpnet.c
index f7d610a22347..ada94e6a3c91 100644
--- a/drivers/misc/sgi-xp/xpnet.c
+++ b/drivers/misc/sgi-xp/xpnet.c
@@ -496,7 +496,7 @@ xpnet_dev_hard_start_xmit(struct sk_buff *skb, struct n=
et_device *dev)
  * Deal with transmit timeouts coming from the network layer.
  */
 static void
-xpnet_dev_tx_timeout(struct net_device *dev)
+xpnet_dev_tx_timeout(struct net_device *dev, unsigned int txqueue)
 {
 	dev->stats.tx_errors++;
 }
diff --git a/drivers/net/appletalk/cops.c b/drivers/net/appletalk/cops.c
index b3c63d2f16aa..18428e104445 100644
--- a/drivers/net/appletalk/cops.c
+++ b/drivers/net/appletalk/cops.c
@@ -189,7 +189,7 @@ static int  cops_nodeid (struct net_device *dev, int no=
deid);
=20
 static irqreturn_t cops_interrupt (int irq, void *dev_id);
 static void cops_poll(struct timer_list *t);
-static void cops_timeout(struct net_device *dev);
+static void cops_timeout(struct net_device *dev, unsigned int txqueue);
 static void cops_rx (struct net_device *dev);
 static netdev_tx_t  cops_send_packet (struct sk_buff *skb,
 					    struct net_device *dev);
@@ -844,7 +844,7 @@ static void cops_rx(struct net_device *dev)
         netif_rx(skb);
 }
=20
-static void cops_timeout(struct net_device *dev)
+static void cops_timeout(struct net_device *dev, unsigned int txqueue)
 {
         struct cops_local *lp =3D netdev_priv(dev);
         int ioaddr =3D dev->base_addr;
diff --git a/drivers/net/arcnet/arcdevice.h b/drivers/net/arcnet/arcdevice.=
h
index b0f5bc07aef5..22a49c6d7ae6 100644
--- a/drivers/net/arcnet/arcdevice.h
+++ b/drivers/net/arcnet/arcdevice.h
@@ -356,7 +356,7 @@ int arcnet_open(struct net_device *dev);
 int arcnet_close(struct net_device *dev);
 netdev_tx_t arcnet_send_packet(struct sk_buff *skb,
 			       struct net_device *dev);
-void arcnet_timeout(struct net_device *dev);
+void arcnet_timeout(struct net_device *dev, unsigned int txqueue);
=20
 /* I/O equivalents */
=20
diff --git a/drivers/net/arcnet/arcnet.c b/drivers/net/arcnet/arcnet.c
index 553776cc1d29..e04efc0a5c97 100644
--- a/drivers/net/arcnet/arcnet.c
+++ b/drivers/net/arcnet/arcnet.c
@@ -763,7 +763,7 @@ static int go_tx(struct net_device *dev)
 }
=20
 /* Called by the kernel when transmit times out */
-void arcnet_timeout(struct net_device *dev)
+void arcnet_timeout(struct net_device *dev, unsigned int txqueue)
 {
 	unsigned long flags;
 	struct arcnet_local *lp =3D netdev_priv(dev);
diff --git a/drivers/net/ethernet/3com/3c509.c b/drivers/net/ethernet/3com/=
3c509.c
index 3da97996bdf3..8cafd06ff0c4 100644
--- a/drivers/net/ethernet/3com/3c509.c
+++ b/drivers/net/ethernet/3com/3c509.c
@@ -196,7 +196,7 @@ static struct net_device_stats *el3_get_stats(struct ne=
t_device *dev);
 static int el3_rx(struct net_device *dev);
 static int el3_close(struct net_device *dev);
 static void set_multicast_list(struct net_device *dev);
-static void el3_tx_timeout (struct net_device *dev);
+static void el3_tx_timeout (struct net_device *dev, unsigned int txqueue);
 static void el3_down(struct net_device *dev);
 static void el3_up(struct net_device *dev);
 static const struct ethtool_ops ethtool_ops;
@@ -689,7 +689,7 @@ el3_open(struct net_device *dev)
 }
=20
 static void
-el3_tx_timeout (struct net_device *dev)
+el3_tx_timeout (struct net_device *dev, unsigned int txqueue)
 {
 	int ioaddr =3D dev->base_addr;
=20
diff --git a/drivers/net/ethernet/3com/3c515.c b/drivers/net/ethernet/3com/=
3c515.c
index b15752267c8d..1e233e2f0a5a 100644
--- a/drivers/net/ethernet/3com/3c515.c
+++ b/drivers/net/ethernet/3com/3c515.c
@@ -371,7 +371,7 @@ static void corkscrew_timer(struct timer_list *t);
 static netdev_tx_t corkscrew_start_xmit(struct sk_buff *skb,
 					struct net_device *dev);
 static int corkscrew_rx(struct net_device *dev);
-static void corkscrew_timeout(struct net_device *dev);
+static void corkscrew_timeout(struct net_device *dev, unsigned int txqueue=
);
 static int boomerang_rx(struct net_device *dev);
 static irqreturn_t corkscrew_interrupt(int irq, void *dev_id);
 static int corkscrew_close(struct net_device *dev);
@@ -961,7 +961,7 @@ static void corkscrew_timer(struct timer_list *t)
 #endif				/* AUTOMEDIA */
 }
=20
-static void corkscrew_timeout(struct net_device *dev)
+static void corkscrew_timeout(struct net_device *dev, unsigned int txqueue=
)
 {
 	int i;
 	struct corkscrew_private *vp =3D netdev_priv(dev);
diff --git a/drivers/net/ethernet/3com/3c574_cs.c b/drivers/net/ethernet/3c=
om/3c574_cs.c
index 3044a6f35f04..ef1c3151fbb2 100644
--- a/drivers/net/ethernet/3com/3c574_cs.c
+++ b/drivers/net/ethernet/3com/3c574_cs.c
@@ -234,7 +234,7 @@ static void update_stats(struct net_device *dev);
 static struct net_device_stats *el3_get_stats(struct net_device *dev);
 static int el3_rx(struct net_device *dev, int worklimit);
 static int el3_close(struct net_device *dev);
-static void el3_tx_timeout(struct net_device *dev);
+static void el3_tx_timeout(struct net_device *dev, unsigned int txqueue);
 static int el3_ioctl(struct net_device *dev, struct ifreq *rq, int cmd);
 static void set_rx_mode(struct net_device *dev);
 static void set_multicast_list(struct net_device *dev);
@@ -690,7 +690,7 @@ static int el3_open(struct net_device *dev)
 	return 0;
 }
=20
-static void el3_tx_timeout(struct net_device *dev)
+static void el3_tx_timeout(struct net_device *dev, unsigned int txqueue)
 {
 	unsigned int ioaddr =3D dev->base_addr;
 =09
diff --git a/drivers/net/ethernet/3com/3c589_cs.c b/drivers/net/ethernet/3c=
om/3c589_cs.c
index 2b2695311bda..d47cde6c5f08 100644
--- a/drivers/net/ethernet/3com/3c589_cs.c
+++ b/drivers/net/ethernet/3com/3c589_cs.c
@@ -173,7 +173,7 @@ static void update_stats(struct net_device *dev);
 static struct net_device_stats *el3_get_stats(struct net_device *dev);
 static int el3_rx(struct net_device *dev);
 static int el3_close(struct net_device *dev);
-static void el3_tx_timeout(struct net_device *dev);
+static void el3_tx_timeout(struct net_device *dev, unsigned int txqueue);
 static void set_rx_mode(struct net_device *dev);
 static void set_multicast_list(struct net_device *dev);
 static const struct ethtool_ops netdev_ethtool_ops;
@@ -526,7 +526,7 @@ static int el3_open(struct net_device *dev)
 	return 0;
 }
=20
-static void el3_tx_timeout(struct net_device *dev)
+static void el3_tx_timeout(struct net_device *dev, unsigned int txqueue)
 {
 	unsigned int ioaddr =3D dev->base_addr;
=20
diff --git a/drivers/net/ethernet/3com/3c59x.c b/drivers/net/ethernet/3com/=
3c59x.c
index 8785c2ff3825..fc046797c0ea 100644
--- a/drivers/net/ethernet/3com/3c59x.c
+++ b/drivers/net/ethernet/3com/3c59x.c
@@ -776,7 +776,7 @@ static void set_rx_mode(struct net_device *dev);
 #ifdef CONFIG_PCI
 static int vortex_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)=
;
 #endif
-static void vortex_tx_timeout(struct net_device *dev);
+static void vortex_tx_timeout(struct net_device *dev, unsigned int txqueue=
);
 static void acpi_set_WOL(struct net_device *dev);
 static const struct ethtool_ops vortex_ethtool_ops;
 static void set_8021q_mode(struct net_device *dev, int enable);
@@ -1877,7 +1877,7 @@ vortex_timer(struct timer_list *t)
 		iowrite16(FakeIntr, ioaddr + EL3_CMD);
 }
=20
-static void vortex_tx_timeout(struct net_device *dev)
+static void vortex_tx_timeout(struct net_device *dev, unsigned int txqueue=
)
 {
 	struct vortex_private *vp =3D netdev_priv(dev);
 	void __iomem *ioaddr =3D vp->ioaddr;
diff --git a/drivers/net/ethernet/3com/typhoon.c b/drivers/net/ethernet/3co=
m/typhoon.c
index be823c186517..14fce6658106 100644
--- a/drivers/net/ethernet/3com/typhoon.c
+++ b/drivers/net/ethernet/3com/typhoon.c
@@ -2013,7 +2013,7 @@ typhoon_stop_runtime(struct typhoon *tp, int wait_typ=
e)
 }
=20
 static void
-typhoon_tx_timeout(struct net_device *dev)
+typhoon_tx_timeout(struct net_device *dev, unsigned int txqueue)
 {
 	struct typhoon *tp =3D netdev_priv(dev);
=20
diff --git a/drivers/net/ethernet/8390/8390.c b/drivers/net/ethernet/8390/8=
390.c
index 78f3e532c600..0e0aa4016858 100644
--- a/drivers/net/ethernet/8390/8390.c
+++ b/drivers/net/ethernet/8390/8390.c
@@ -36,9 +36,9 @@ void ei_set_multicast_list(struct net_device *dev)
 }
 EXPORT_SYMBOL(ei_set_multicast_list);
=20
-void ei_tx_timeout(struct net_device *dev)
+void ei_tx_timeout(struct net_device *dev, unsigned int txqueue)
 {
-	__ei_tx_timeout(dev);
+	__ei_tx_timeout(dev, txqueue);
 }
 EXPORT_SYMBOL(ei_tx_timeout);
=20
diff --git a/drivers/net/ethernet/8390/8390.h b/drivers/net/ethernet/8390/8=
390.h
index 3e2f2c2e7b58..6d55015fa361 100644
--- a/drivers/net/ethernet/8390/8390.h
+++ b/drivers/net/ethernet/8390/8390.h
@@ -32,7 +32,7 @@ void NS8390_init(struct net_device *dev, int startp);
 int ei_open(struct net_device *dev);
 int ei_close(struct net_device *dev);
 irqreturn_t ei_interrupt(int irq, void *dev_id);
-void ei_tx_timeout(struct net_device *dev);
+void ei_tx_timeout(struct net_device *dev, unsigned int txqueue);
 netdev_tx_t ei_start_xmit(struct sk_buff *skb, struct net_device *dev);
 void ei_set_multicast_list(struct net_device *dev);
 struct net_device_stats *ei_get_stats(struct net_device *dev);
diff --git a/drivers/net/ethernet/8390/8390p.c b/drivers/net/ethernet/8390/=
8390p.c
index 6cf36992a2c6..6834742057b3 100644
--- a/drivers/net/ethernet/8390/8390p.c
+++ b/drivers/net/ethernet/8390/8390p.c
@@ -41,9 +41,9 @@ void eip_set_multicast_list(struct net_device *dev)
 }
 EXPORT_SYMBOL(eip_set_multicast_list);
=20
-void eip_tx_timeout(struct net_device *dev)
+void eip_tx_timeout(struct net_device *dev, unsigned int txqueue)
 {
-	__ei_tx_timeout(dev);
+	__ei_tx_timeout(dev, txqueue);
 }
 EXPORT_SYMBOL(eip_tx_timeout);
=20
diff --git a/drivers/net/ethernet/8390/axnet_cs.c b/drivers/net/ethernet/83=
90/axnet_cs.c
index 0b6bbf63f7ca..aeae7966a082 100644
--- a/drivers/net/ethernet/8390/axnet_cs.c
+++ b/drivers/net/ethernet/8390/axnet_cs.c
@@ -83,7 +83,7 @@ static netdev_tx_t axnet_start_xmit(struct sk_buff *skb,
 					  struct net_device *dev);
 static struct net_device_stats *get_stats(struct net_device *dev);
 static void set_multicast_list(struct net_device *dev);
-static void axnet_tx_timeout(struct net_device *dev);
+static void axnet_tx_timeout(struct net_device *dev, unsigned int txqueue)=
;
 static irqreturn_t ei_irq_wrapper(int irq, void *dev_id);
 static void ei_watchdog(struct timer_list *t);
 static void axnet_reset_8390(struct net_device *dev);
@@ -903,7 +903,7 @@ static int ax_close(struct net_device *dev)
  * completed (or failed) - i.e. never posted a Tx related interrupt.
  */
=20
-static void axnet_tx_timeout(struct net_device *dev)
+static void axnet_tx_timeout(struct net_device *dev, unsigned int txqueue)
 {
 	long e8390_base =3D dev->base_addr;
 	struct ei_device *ei_local =3D netdev_priv(dev);
diff --git a/drivers/net/ethernet/8390/lib8390.c b/drivers/net/ethernet/839=
0/lib8390.c
index c9c55c9eab9f..babc92e2692e 100644
--- a/drivers/net/ethernet/8390/lib8390.c
+++ b/drivers/net/ethernet/8390/lib8390.c
@@ -251,7 +251,7 @@ static int __ei_close(struct net_device *dev)
  * completed (or failed) - i.e. never posted a Tx related interrupt.
  */
=20
-static void __ei_tx_timeout(struct net_device *dev)
+static void __ei_tx_timeout(struct net_device *dev, unsigned int txqueue)
 {
 	unsigned long e8390_base =3D dev->base_addr;
 	struct ei_device *ei_local =3D netdev_priv(dev);
diff --git a/drivers/net/ethernet/adaptec/starfire.c b/drivers/net/ethernet=
/adaptec/starfire.c
index 816540e6beac..165d18405b0c 100644
--- a/drivers/net/ethernet/adaptec/starfire.c
+++ b/drivers/net/ethernet/adaptec/starfire.c
@@ -576,7 +576,7 @@ static int	mdio_read(struct net_device *dev, int phy_id=
, int location);
 static void	mdio_write(struct net_device *dev, int phy_id, int location, i=
nt value);
 static int	netdev_open(struct net_device *dev);
 static void	check_duplex(struct net_device *dev);
-static void	tx_timeout(struct net_device *dev);
+static void	tx_timeout(struct net_device *dev, unsigned int txqueue);
 static void	init_ring(struct net_device *dev);
 static netdev_tx_t start_tx(struct sk_buff *skb, struct net_device *dev);
 static irqreturn_t intr_handler(int irq, void *dev_instance);
@@ -1105,7 +1105,7 @@ static void check_duplex(struct net_device *dev)
 }
=20
=20
-static void tx_timeout(struct net_device *dev)
+static void tx_timeout(struct net_device *dev, unsigned int txqueue)
 {
 	struct netdev_private *np =3D netdev_priv(dev);
 	void __iomem *ioaddr =3D np->base;
diff --git a/drivers/net/ethernet/agere/et131x.c b/drivers/net/ethernet/age=
re/et131x.c
index 174344c450af..3c51d8c502ed 100644
--- a/drivers/net/ethernet/agere/et131x.c
+++ b/drivers/net/ethernet/agere/et131x.c
@@ -3811,7 +3811,7 @@ static netdev_tx_t et131x_tx(struct sk_buff *skb, str=
uct net_device *netdev)
  * specified by the 'tx_timeo" element in the net_device structure (see
  * et131x_alloc_device() to see how this value is set).
  */
-static void et131x_tx_timeout(struct net_device *netdev)
+static void et131x_tx_timeout(struct net_device *netdev, unsigned int txqu=
eue)
 {
 	struct et131x_adapter *adapter =3D netdev_priv(netdev);
 	struct tx_ring *tx_ring =3D &adapter->tx_ring;
diff --git a/drivers/net/ethernet/allwinner/sun4i-emac.c b/drivers/net/ethe=
rnet/allwinner/sun4i-emac.c
index 0537df06a9b5..5ea806423e4c 100644
--- a/drivers/net/ethernet/allwinner/sun4i-emac.c
+++ b/drivers/net/ethernet/allwinner/sun4i-emac.c
@@ -407,7 +407,7 @@ static void emac_init_device(struct net_device *dev)
 }
=20
 /* Our watchdog timed out. Called by the networking layer */
-static void emac_timeout(struct net_device *dev)
+static void emac_timeout(struct net_device *dev, unsigned int txqueue)
 {
 	struct emac_board_info *db =3D netdev_priv(dev);
 	unsigned long flags;
diff --git a/drivers/net/ethernet/alteon/acenic.c b/drivers/net/ethernet/al=
teon/acenic.c
</cut>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1501223615.4160.1575971060834.JavaMail.javamailuser%40loc=
alhost.

------=_Part_4159_1631300442.1575971060299--
