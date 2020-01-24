Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBR4GVLYQKGQESXQSO4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CD0147838
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 06:40:23 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id y24sf257801ljc.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 21:40:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579844423; cv=pass;
        d=google.com; s=arc-20160816;
        b=aDW34TpJJfsxq/PVFaENNp2RpGhxHAkNDC5gWCW1Ilfia6hFRHn2Uk+IEAQeu9gaUm
         p7/vWyWygss8FwX5SZl2GqI3thTtDY354ViXY4c+hi9Wcff9EXer+2xiXUpg2sCJTuGz
         Yn7K2DMyyEaDIwYeXPYRUQqYLIJBdbcMwdcvtcYMrRMH49zmm7NhZzGxeNgPf0y/i6KY
         KnEaaLywUBeBKaft/wXaj6eghfwdZsQoA8N2V7PIL+HS/5Y9HHjavmEqt/QfN9jDhck9
         gNPUHwCYWQiwWxYM7kRBW23YqNi3wvgrUPuPPiiInjCSzFVUBx/z+ZHUew3xrHBR2wnZ
         1cVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=5gqPfwiy69RaVJH/jPPzd/O8rawLrZ+5KJSowNCg1iE=;
        b=tkrCF3MjN3YyoVLc93TgPRUTL877aYU+ROKg5Lw9LpV36gjRYyckWVzOf7soJb1UWB
         qwVeNtW6gRzx+FkM6CfbulRe+0Kyhj8vhrkMMG46vmVvWJ3CiZ7C1HTt9/RDAp43cUsC
         ZWITe8yz8bSW4h1y0P6CrZ2lighfw2ir7/frjFNR/2UCkvneCUu97rw2cLiLg8YiE+tr
         RIm0EnO27vWnsyhgJinxT846aCzOcfbZa+Rte5QbMERiFbOy/TruRHriL+iH635Zs3fr
         uTgh7lsjPEDd/Do/32a0vgURHJoyhJmWsAzm5fQsFar00Hy1SvjcH5BqKuQ+KKdtbdoY
         iWyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ly3Iiuci;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5gqPfwiy69RaVJH/jPPzd/O8rawLrZ+5KJSowNCg1iE=;
        b=o9a61++p10oVMWRk4U57bZyx+9SpKaRWGaZ8iWDwPJQcxbRCibQ5spCZOFzjzXP4Qr
         kbhv+zZgToFghHT54jM3ZzWLTAKs5Qt8hga+zsonZakAYUNuFH7tkV3Orj4hg2+27FID
         mYuuaguXq7qX1qJrHDMoXunTUZdumaq/dpjkXYRXZtGw3GOklfRsKvLvgcaitme91rNX
         0k+T9lD4PDgolzfIxLVCjy4bgA6ejEy4aO8As/8YP8hVv3/gTsGbk8qnryFTYTt9PJfm
         wpJwMPcRI265hO5co3iQbHdLgOyDiEntM9rrkokLrrrtNDA1nHAZ61qKUuX3gXoRNoK3
         L84A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5gqPfwiy69RaVJH/jPPzd/O8rawLrZ+5KJSowNCg1iE=;
        b=VkG/qFD4aK+oABhb+b0YTjMI7sHYlesvIB7E5WchY7rtwumEQtacjsxyUIzReCt5gO
         K3hWFlZxvKrGiyk++WUD3EgBMHqLJaWBdH22vA5YsxWBJEK0YN8SiSPijjwx88S0HOwx
         ZMNH9JQLJzTvGRpLfRk32FTCYr1ShxPl5CtBf4LS3AOGSTG2WVEl1ruYs4qjevfx1x4L
         VpozcQflsP4eRRz83DCIpXmHMjX/zXjUJ1tQOohTcfWmEB8qTlvG8Mn+ao3gyALwhAD9
         0sDg7j7fT7THgkqGQzlqNtXoTrEHpscTd3OGFsXxeDa91v/F5a6LqOv1Rkb5RRewQzCl
         fsbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUWC0UMim2+EBSp50xcsHhvGJDgTg9+HLlxzHQH8Jr2CKPV8I6F
	fmGgFKjGz+z0z3nIHRhSxVM=
X-Google-Smtp-Source: APXvYqyNiwI1SC8mNJhIMfQBuDrc9TLeZ8aCcaZCPfXwLzw/ZnkL//HbnWGze4Bh0jJ/e3G0frFn2A==
X-Received: by 2002:a2e:93c9:: with SMTP id p9mr1151518ljh.136.1579844423242;
        Thu, 23 Jan 2020 21:40:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8790:: with SMTP id n16ls193105lji.7.gmail; Thu, 23 Jan
 2020 21:40:22 -0800 (PST)
X-Received: by 2002:a2e:9716:: with SMTP id r22mr1187976lji.224.1579844422675;
        Thu, 23 Jan 2020 21:40:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579844422; cv=none;
        d=google.com; s=arc-20160816;
        b=Zaat5U9AaXalSIMW6UJ6J8lfGHA26H6CHq1cwOZEH+X7Eo/yIXAPMOX6EOI/sTmDYY
         sKZpw/HjO8A+Mlnvnsm/eAFaTNfGBDYnhuLnl/0RWscex4gb0q9L+h36LCZdK9nt0x3p
         d2l0GlcW5wuk73grciAUFdosceaL61sYB5id2Tnv+QD3dzt6qeIpQFCAfFYqNpg0dAqc
         z5883enlS+Uei007PkQhzGLZ3A4csWM6RvR+Pfn1FcEVmFgqNCJWF18+wODwdBMGVk+D
         KhNltmBdjWm4nslmftUlc47+HeDN4SK+wLa94XGEbmadceKE+3k9+CtcYdZ1GCQGVPbz
         QcpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=+14y/UiquG0fq50Jx8s2mOEFV8wYhJGHIU+8gDHMCpg=;
        b=TTfflevH/cqk7JZAGDa9eMBmeGAW0FCy1axWgiYnlfVGNiL0omBeVzKfavb/L31EBg
         XpsgjCvRc+51T8DJbGgeoxs0fy1mb9SvMW3e309C+y/QkKHteW62hEG3rTOPZCCEzreO
         wvGeHxWuy7BEgpqvPNxmjQqMJWW9pWHV80htJjnEgEbInSQAaF57S7Cq3wKfKO23SAXG
         Xk4/4a7IJzwzS4Jc28mU4ZRA3Q8gBwJdatmxm30c3jAakA8nu1q7szrLl8BNcFGU+zU5
         0VOHc3r91qxHOFuyYuSVRS7yUarZ4Ccm1Ti9Lp/qGWkb3xtNi0C3k+8rued9HsAFXnXa
         ik/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ly3Iiuci;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id j30si235542lfp.5.2020.01.23.21.40.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2020 21:40:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id t2so525111wrr.1
        for <clang-built-linux@googlegroups.com>; Thu, 23 Jan 2020 21:40:22 -0800 (PST)
X-Received: by 2002:a5d:4b4e:: with SMTP id w14mr2076688wrs.187.1579844421983;
        Thu, 23 Jan 2020 21:40:21 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id c17sm5820820wrr.87.2020.01.23.21.40.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Jan 2020 21:40:21 -0800 (PST)
From: ci_notify@linaro.org
Date: Fri, 24 Jan 2020 05:40:20 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <27278355.794.1579844421380.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allyesconfig - Build # 48 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_793_1179588198.1579844420491"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ly3Iiuci;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444
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

------=_Part_793_1179588198.1579844420491
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.

First few errors in logs of bad:
00:01:08 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:01:08 make[2]: *** [mm/kasan/quarantine.o] Error 255
00:01:09 make[1]: *** [mm/kasan] Error 2
00:01:42 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:01:42 make[1]: *** [mm/slab_common.o] Error 255
00:03:09 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:03:09 make[1]: *** [mm/slub.o] Error 255
00:05:04 make: *** [mm] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="ba0b4dfd6466b7e2984dbe52242686e0dd184bf1"

Results regressed to (for bad == 41539ebf9bacf9a9102322ad944990f5a38f5538)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18214

from (for baseline_rev == dbab40bdb42c03ab12096d4aaf2dbef3fb55282c)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18216

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/48/artifact/artifacts/build-41539ebf9bacf9a9102322ad944990f5a38f5538/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/48/artifact/artifacts/build-dbab40bdb42c03ab12096d4aaf2dbef3fb55282c/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/48/

Reproduce builds:
<cut>
mkdir investigate-linux-41539ebf9bacf9a9102322ad944990f5a38f5538
cd investigate-linux-41539ebf9bacf9a9102322ad944990f5a38f5538

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/48/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/48/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/48/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce bad build
git checkout --detach 41539ebf9bacf9a9102322ad944990f5a38f5538
../artifacts/test.sh

# Reproduce baseline_rev build
git checkout --detach dbab40bdb42c03ab12096d4aaf2dbef3fb55282c
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/48/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/48/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/27278355.794.1579844421380.JavaMail.javamailuser%40localhost.

------=_Part_793_1179588198.1579844420491--
