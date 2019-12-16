Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBZFG4DXQKGQEG2X7BSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 04456121EF2
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 00:29:41 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id d14sf2570031ljg.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Dec 2019 15:29:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576538980; cv=pass;
        d=google.com; s=arc-20160816;
        b=mGZgGDHTVyRyAO40waqT91Tpl1l6YCn6kigWx5GCBX5A9HPbKeCFWfn2Xrj3QavBGI
         x6DkPkuNMpU7jRmRGBvCeg+CFOBOc5/+qwARfM/e/hSeoQv9JcE3KgODIvcYPNSZThmN
         TaJyPDW4B/Z8gRL0eq3nlviQ1/l8POvk/u9z4/Ppn3Zxq9/GN1jjQ1xPCauAQEaQ53l8
         MLvJC9gW51MoEGtHfGUJz54TvUihtmmWz60IbHTT5MxZwqhu4M+FUfrD1IQ9Dx2VsqZA
         Ca+Eu665PSkDh2IX1ayhcumRMUz30jhalYA8AaqF6VJm7Tc4ffukKtsZVt4VRp9nf6Y+
         yfMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:references
         :in-reply-to:message-id:to:date:from:sender:dkim-signature;
        bh=e/hbFfpeYEds/VLrI18b4na+RFaLnzHJFXw7WX3OkIc=;
        b=RNdqLxBdTDY6JHoz8wUuyzkwJHjzQOHm4Q1xdXKVf+AHpGunawszRDxu8uI5diA3v2
         0Z17etRkcF+Ofq1rhcmLqJ8Ixe6nsZrAoHsuuZ1iXbLPdTFkGWjOTmLmbVYF89voKIOw
         qm62UBWRUQSxAFTGoshW26Ji/NSjFURtoBF66/bFEFw2CzGEaCKgYj/LRv6xtbr78Klc
         Yza9vOWnbQhNFcaPpZi/uOUXne5SOQcFWAMoF/AmAfTNc+fQ9Tfi7dzsOdzegAgnJjhE
         ZFXSCJcKzNIdak0wN0O7pyNBrWwzmelHvmxXXxCPpyeeXv2Q9xl5U0n5Dp1Wsy9Q/Jo1
         38og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="Lu5p/tL0";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e/hbFfpeYEds/VLrI18b4na+RFaLnzHJFXw7WX3OkIc=;
        b=Ft7VcHoDBdoFS96GvIjbd6k4qydSlsgvnyEx5N64c4PIztwQSf/0cjs8uoZJ6theEP
         sjsx+6SNZ6rbs6w2CcMg7ldB+MZ38ya0rKRw4zrUcNDkaZhtpGporK1B+EfLF/dtqNoE
         ElOCZsr77xeBdIZrwmDvgrkHBtk3yOa+XSuC6D1qkF50yb6mUEEdq8vctguxRylfYKq7
         oJAg/Wt3l/+Px4yX1kFYMwDD9XPSP0/1t/SH77Kl4nrICerTa+us3yr7zWxuu0wSpoTB
         C/M/cNyrVdjDtpPRbx3DLzIFEXGWi8OUBgI+W0K1NwYACFNA8YMkhnNWzgS9gCLX9coF
         1upw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e/hbFfpeYEds/VLrI18b4na+RFaLnzHJFXw7WX3OkIc=;
        b=dLDy4vrUTqQVfDjsioGjN2Fcm2TGUy6BP9dnK/SDzx+m0L5YdwUkaYU3RFy5zjD3/T
         y0cKsiKrg3924GKbsGCTXhDuXPNY/VHZFMN2I6aPFPWBpZVPQu/nvSnvfSOyf/tTT+/f
         LhE47j8XcgzVPn3MmB++nDwknvGgwlAwCmmf5HnaaXhz6lMyApcYUiZNkv0O2VSmEO4Y
         sQEczi8fGubgecP3aNfHalk3I39Rkf7kts+k6HZhtkMlUZyVvg8xH69GvaVNFtrsg37V
         fDuLwF1KUcj3vQj5XFkwEy4VQBv4JyDEYAsVl8owEgOidBxVP9ncT0KEHtDxBM/kyUSY
         m3rQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWADBHgpuZlbSPIOgHgpekfj79k66u6qG7Ing+LPGMhVqmPQutY
	USiWphkkFC7ycFQi5l8Z+20=
X-Google-Smtp-Source: APXvYqzlFnNVGKvP6L6JYP1vp5UC5DZfG/eIhVD0x2mKgNv3mgPJg4lecoDI43o9yDug8UUWSc0ceg==
X-Received: by 2002:a05:651c:c4:: with SMTP id 4mr1124980ljr.131.1576538980506;
        Mon, 16 Dec 2019 15:29:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:6a05:: with SMTP id f5ls2497058ljc.2.gmail; Mon, 16 Dec
 2019 15:29:39 -0800 (PST)
X-Received: by 2002:a2e:9e03:: with SMTP id e3mr1158849ljk.186.1576538979932;
        Mon, 16 Dec 2019 15:29:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576538979; cv=none;
        d=google.com; s=arc-20160816;
        b=pbbgYWRs0zHHd+QFv0E+M3t+iULwIPMh5kxJtQ0OQ2HZCV2fNS/WVJiW2zAkLh3891
         cNDMMqTQllUvrDiyyiwZ1wM7xezN5Xtgoq4vZXtCJbM4rI/mN3LC6mEkj8ChE7BNwQlV
         YMpBV9gTAqDTSEeDJTAvC2YJ3CgK4RAnMk2zm7CEYIVSk81bu6GEOyF+cvmRiDpIeO99
         jLfnQMzDPWkXojaa9oUo9QWzamEHNpeJRT9fo2ELvXFPF+9fmZ5LiNE0z8yjCdXkpIwH
         i7zKTAh0qP7jn/gyoJ7Ft9NU+k2oCpCDMAAFm3/ZGBCdTDlfi5kumjDxF2EtuuumjD7s
         7J3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:references:in-reply-to:message-id:to:date:from
         :dkim-signature;
        bh=e8GSLSEI1prykhkk5OxLiT6G+cJRWnDRw1Y+OrCnksk=;
        b=MFB9nv/jJGEA8VtQXko/ddjCUf4rFr5tme0FubY+h2aQuiH49uG/lViuQhBEfLdwUY
         o3x9BlBlNxj319BLm/d9yBVuvi5TbxOSNkT34fOBA1ZVREcc6w/CY2fxQ/n7pEx3KkNQ
         xK2Pgc4tnJF/GM9vUY7lyhUcQ0mR54C4tdRoW8c6Vj6VOzdA9wjdSuqcU1uzAcvQ6AWp
         JGVPEsw2ecI+Xki2H5HMysfL/AONs5UxXDf2U8D8B5+++43d7uMI5g5AmTqMf/FC9aXB
         SSk5gCuE4F+m4HbP73ZBgEWQ51uQzJR69vJgwqcSc2A/YVW0l2jlf5G4FsmpzpIgdomp
         FHZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="Lu5p/tL0";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id o24si1099748lji.4.2019.12.16.15.29.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Dec 2019 15:29:39 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id d73so1097611wmd.1
        for <clang-built-linux@googlegroups.com>; Mon, 16 Dec 2019 15:29:39 -0800 (PST)
X-Received: by 2002:a1c:a382:: with SMTP id m124mr1710755wme.90.1576538979126;
        Mon, 16 Dec 2019 15:29:39 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id c17sm22974003wrr.87.2019.12.16.15.29.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 16 Dec 2019 15:29:38 -0800 (PST)
From: ci_notify@linaro.org
Date: Mon, 16 Dec 2019 23:29:37 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <839644533.5197.1576538978441.JavaMail.javamailuser@localhost>
In-Reply-To: <1635571390.4902.1576431326173.JavaMail.javamailuser@localhost>
References: <1635571390.4902.1576431326173.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-mainline-allyesconfig - Build # 20 - Fixed!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_5196_1693828897.1576538977607"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-mainline-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="Lu5p/tL0";       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344
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

------=_Part_5196_1693828897.1576538977607
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-mainline-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-master-aarch64-mainline-allmodconfig
 - tcwg_kernel/gnu-master-aarch64-mainline-allyesconfig
 - tcwg_kernel/gnu-master-arm-mainline-allmodconfig
 - tcwg_kernel/gnu-master-arm-mainline-allyesconfig
 - tcwg_kernel/llvm-master-arm-mainline-allyesconfig
 - tcwg_kernel/llvm-release-arm-mainline-allyesconfig

Culprit:
<cut>
commit 7d42b7961b9198efc75ee5192eab7d03e691d692
Author: Guenter Roeck <linux@roeck-us.net>

    staging/octeon: Mark Ethernet driver as BROKEN
</cut>

First few errors in logs of first_bad:
00:13:28 make: *** [vmlinux] Error 1
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[linux_branch]="e31736d9fae841e8a1612f263136454af10f476a"

Results regressed to (for first_bad == 7d42b7961b9198efc75ee5192eab7d03e691d692)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18251

from (for last_good == 7347f09a198a045d5f6ea5e9c8fcc1db98e5a854)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18259

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/20/artifact/artifacts/build-7d42b7961b9198efc75ee5192eab7d03e691d692/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/20/artifact/artifacts/build-7347f09a198a045d5f6ea5e9c8fcc1db98e5a854/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/20/

Reproduce builds:
<cut>
mkdir investigate-linux-7d42b7961b9198efc75ee5192eab7d03e691d692
cd investigate-linux-7d42b7961b9198efc75ee5192eab7d03e691d692

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/20/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/20/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/20/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce first_bad build
git checkout --detach 7d42b7961b9198efc75ee5192eab7d03e691d692
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 7347f09a198a045d5f6ea5e9c8fcc1db98e5a854
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-mainline-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/20/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/20/consoleText

Full commit:
<cut>
commit 7d42b7961b9198efc75ee5192eab7d03e691d692
Author: Guenter Roeck <linux@roeck-us.net>
Date:   Mon Dec 2 06:18:36 2019 -0800

    staging/octeon: Mark Ethernet driver as BROKEN
    
    The code doesn't compile due to incompatible pointer errors such as
    
    drivers/staging/octeon/ethernet-tx.c:649:50: error:
            passing argument 1 of 'cvmx_wqe_get_grp' from incompatible pointer type
    
    This is due to mixing, for example, cvmx_wqe_t with 'struct cvmx_wqe'.
    
    Unfortunately, one can not just revert the primary offending commit, as doing so
    results in secondary errors. This is made worse by the fact that the "removed"
    typedefs still exist and are used widely outside the staging directory,
    making the entire set of "remove typedef" changes pointless and wrong.
    
    Reflect reality and mark the driver as BROKEN.
    
    Fixes: ef1fe6b7369a ("staging: octeon: remove typedef declaration for cvmx_wqe")
    Fixes: 73aef0c9d2c6 ("staging: octeon: remove typedef declaration for cvmx_helper_link_info")
    Cc: Wambui Karuga <wambui.karugax@gmail.com>
    Cc: Julia Lawall <julia.lawall@lip6.fr>
    Signed-off-by: Guenter Roeck <linux@roeck-us.net>
    Link: https://lore.kernel.org/r/20191202141836.9363-1-linux@roeck-us.net
    Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/octeon/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/octeon/Kconfig b/drivers/staging/octeon/Kconfig
index 5319909eb2f6..e7f4ddcc1361 100644
--- a/drivers/staging/octeon/Kconfig
+++ b/drivers/staging/octeon/Kconfig
@@ -3,6 +3,7 @@ config OCTEON_ETHERNET
 	tristate "Cavium Networks Octeon Ethernet support"
 	depends on CAVIUM_OCTEON_SOC || COMPILE_TEST
 	depends on NETDEVICES
+	depends on BROKEN
 	select PHYLIB
 	select MDIO_OCTEON
 	help
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/839644533.5197.1576538978441.JavaMail.javamailuser%40localhost.

------=_Part_5196_1693828897.1576538977607--
