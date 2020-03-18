Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBW76ZDZQKGQET2TRH6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6AE189FB2
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 16:33:47 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id q4sf9519365lfp.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 08:33:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584545627; cv=pass;
        d=google.com; s=arc-20160816;
        b=EtEr2tbBEavT/f/ldc0q0uATzwLwr0s9bm5P/0f3ppOT1G/2l5JTl8t5N3VwmCmmMT
         rJ40jQSwv/7rGUE8pg+XmzzFd5aHkgF95rkRKqC/wNW8upMeF9vXSG9p+TjTiVPvKCvO
         OSC5qacM68RqF+AlUK0ocwJirjodC4veBRO+vNpiRXg8c0YdkOHO3KOvygkSHqXRPiUR
         sJZ5EG8iaXVl4Syns21803pb447Tfo5h6VthUOn9FUuK0+BQ/ZfF9nHXFqdhy2qcdqQL
         68qVOMECeYVNK8VBiOjNfEAIUxYbdXH6cOgD8M/E4jNDzAkidA2q4Q3E9FrW0CFHp7rM
         071w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=aE8WDF5uAk4ttoaxPZ/DIA3Em5ZK+ICzrXAEVuLSgiI=;
        b=HewjU0S3qMZ0QsP583IY04ZhK4vFJ+GnXG5RoRdpXnwLkRQ2fkeXteaorMYlpfkMoH
         MuBban+KDBJ5VVkuAS7KU+mv/qJUJRZqkgzExzNfj3iMKoeacBcKYqaxREs04fKSpWKg
         lP93V29h6ktDy1dCsCJZHlLEHV0GKAXW5e6BNd2Rh9wZdcX+aIdRrp/bwnCfNU+Yr48h
         y/ak74tn44WYyRBmgedSa1Q9/xQVQnhSBbgh1/DJNQuNpJf/wCi8xi7BN0nUFq6ThYSr
         LtGjVW5faKJsoqMu5ymMjzHbSOzuxqrvKarKtrWoKOHu96IzXFFBFWx8Y1g6rMv8oI23
         dtyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=OUhj+FGq;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aE8WDF5uAk4ttoaxPZ/DIA3Em5ZK+ICzrXAEVuLSgiI=;
        b=mOViBVdpiZxRxO8KBjjqXSUEhFxAsjLHNAf7COUyjWj2ELi3DzOhBdTGPXAmvhbiRf
         U5EY45HgJ8pcvyn1Zul9HtfNJCc0lQ/hzBcOm3lHBkqAb96GDGFiNJVcZyLVpHCNfrVH
         uYwIhc+D/4SwpX2pkI+Grj/m7T2v68bRHY1LyUlqV9WC7nBYYOUilglf6q37HVaDrBXq
         V8AxeJhg/kwlxWmr/UWKti+XnlzgpwImky0S0p54b0Hbe/bDSUCBhqOqoP7PmTLexu+X
         UV7Rh6QPp2CO9AIjm8cUYqu1HSNxj41AXE+FwJlfWFOyo0AW3f2/munujr3i1MdOAWRO
         lCIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aE8WDF5uAk4ttoaxPZ/DIA3Em5ZK+ICzrXAEVuLSgiI=;
        b=pm0J/M6RM9HNZGDn2tlFRpk2Pm6rgZKif40MeiVdXHhuTrxdsy84d4oCUJnn5v0esn
         ZemCmL1UZayAzDJO83Rb/Vb/YfYLEWdUhOsDM6IdGXkOarUK2i89nKYA+cbSvYW5qeqz
         M7SmJ827FsRSeEqdUCRxTFxIih/CiKM3ZykAjtSEEzE+JNR/+d9ySRRCSKzAR0Awc3Hp
         QQQ+tKsrDImHanNGRakUJ/LM10pQ5vn8fqoik4wTRqmUTUe1LKdP4iSGHPnpsV06nhps
         3lpNbtwGfEHJ6GmUvnslKGyPVb6jTgMCQIkNa089MDKuE88lK36Vh//h2+e4EYqqih76
         mW7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3ApILFGdwHyJwDe1RT8ZUCeV6cj/vk9Hg9DqR9MaqehuskRs5o
	FL5cVRQmDmaHuBMagdFybPQ=
X-Google-Smtp-Source: ADFU+vtLHjnnpcTJOn5VwgDtuhzN+KTIxuXU8CLiQgHvbaDKod4Nx3e2eK5l0JU3pHz3aYs6V32KJw==
X-Received: by 2002:a2e:9094:: with SMTP id l20mr2630658ljg.285.1584545627068;
        Wed, 18 Mar 2020 08:33:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8941:: with SMTP id b1ls3981349ljk.8.gmail; Wed, 18 Mar
 2020 08:33:46 -0700 (PDT)
X-Received: by 2002:a2e:8518:: with SMTP id j24mr2816393lji.138.1584545626368;
        Wed, 18 Mar 2020 08:33:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584545626; cv=none;
        d=google.com; s=arc-20160816;
        b=O2b4KuV0vetMIboblRnDZVVKG3e/Lymwg6rcTYlxetMySZHy3QWEo15gz/Tc1lhdi1
         wW9us1SGPBDMj+Oe43sjNpeGONEJpViKidBG1E8EFN8UWyYbyh0OTyeTAm5O2lLY4c78
         qSsaZJGUMskUnvcYaOcxOnXjU9h/IRXluJCy9tH7eip2NsfZUs+8eDIEw3L+YciVSFsK
         Ap5rmhNqS9D4ewBxb513Tr+2Vtc9mNlHNQVifNLxTTdbDHTcbkoha17gt1ZI61wMgmco
         UxcWiXGfDzDCJC8lNyJSngAwo/NhifESRCWu98v0W7cKA75fiVsaQBSaK5f1Fp7hOMql
         lPww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=f6xtafG5Ycl2CB12Wn5MBkbA19ysBaYKMfAE7hodXBA=;
        b=zpJy7DEq+3LBrpKkS/DQSHSxK0khlEmIWkXXH+frFzlnKAEs8cP+G+O2fFcwmatF62
         /AoVsSmzKHV3w4VUbFXiEcTkc0NBEenqJ5JznKHENtL/dR+7DyRYw4OHI8u8KplnBZBp
         6hOc4X4d7XxQt0brapaW1tuKhabwz884vGoj13yVdroMhw7xKyrU/p0Nrym3rdNMyHty
         8FURjY0id6ylVu4iRYsbdDl13lgV4Is/iNu3YD41eWgoxsyUxNbYsnXIM/xSmqhWd8eP
         F+31NafKZsdhvyoXCj+vUvfgIIMurItpi/KMAYuUgm8X5DxHDnM9gp3QX+Pf//AU76F0
         h+zQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=OUhj+FGq;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com. [2a00:1450:4864:20::436])
        by gmr-mx.google.com with ESMTPS id c15si298343ljn.3.2020.03.18.08.33.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 08:33:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::436 as permitted sender) client-ip=2a00:1450:4864:20::436;
Received: by mail-wr1-x436.google.com with SMTP id h6so10628415wrs.6
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 08:33:46 -0700 (PDT)
X-Received: by 2002:adf:a117:: with SMTP id o23mr6617898wro.219.1584545625962;
        Wed, 18 Mar 2020 08:33:45 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id r1sm4442652wmh.0.2020.03.18.08.33.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Mar 2020 08:33:45 -0700 (PDT)
From: ci_notify@linaro.org
Date: Wed, 18 Mar 2020 15:33:44 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1110874677.10558.1584545625391.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-next-allnoconfig - Build # 10 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_10557_138559882.1584545624662"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-next-allnoconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=OUhj+FGq;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::436
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

------=_Part_10557_138559882.1584545624662
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-next-allnoconfig.  See 'Bisect log' in the links below for bisection details.

First few build errors in logs:
00:00:30 ./include/linux/elf.h:79:19: error: redefinition of 'arch_parse_elf_property'
00:00:30 make[1]: *** [arch/arm64/kernel/asm-offsets.s] Error 1
00:00:30 make: *** [prepare0] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="ec947d0be5f959fff44d59161401515a98a837f3"

Results regressed to (for bad == 47780d7892b77e922bbe19b5dea99cde06b2f0e5)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
23

from (for baseline_rev == ac309e7744bee222df6de0122facaf2d9706fa70)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
445

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/artifact/artifacts/build-47780d7892b77e922bbe19b5dea99cde06b2f0e5/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/artifact/artifacts/build-ac309e7744bee222df6de0122facaf2d9706fa70/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/

Reproduce builds:
<cut>
mkdir investigate-linux-47780d7892b77e922bbe19b5dea99cde06b2f0e5
cd investigate-linux-47780d7892b77e922bbe19b5dea99cde06b2f0e5

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce bad build
git checkout --detach 47780d7892b77e922bbe19b5dea99cde06b2f0e5
../artifacts/test.sh

# Reproduce baseline_rev build
git checkout --detach ac309e7744bee222df6de0122facaf2d9706fa70
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-next-allnoconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1110874677.10558.1584545625391.JavaMail.javamailuser%40localhost.

------=_Part_10557_138559882.1584545624662--
