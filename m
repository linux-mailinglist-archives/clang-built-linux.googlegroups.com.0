Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBPNBZX2AKGQEFROTHHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CA61A5F8E
	for <lists+clang-built-linux@lfdr.de>; Sun, 12 Apr 2020 19:32:46 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id v14sf5325405wrq.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Apr 2020 10:32:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586712766; cv=pass;
        d=google.com; s=arc-20160816;
        b=yR17Aj/+AZ1S0qRHFlIt5Ta2n0/cJet6mbMe5UPlUuwPQNTYNOaSZ7QL8n7B0FwbTh
         L92bgk2ror1Las9zGTp+RS+IZjpEdO17eAyqi2zkncxl03plQselbBNJUe6IAEiBIkyN
         tsO6/OGyJniZR1ncVy5qQDK7p+qssjx+5pv9+5tyKfielSOGHXzF2ZASTojupY6kGv7/
         wOEahgfM8tgQZAdemvSFaypEEvJganLrSGeUvI0dcPMTbMda+7oeOt505Mvmi4G6ajvs
         9lWWvTK5SA78OKxucP2VcIb1xXYkBboXxvwfc/F51k2+vAK9PLhKR8XpxTGnkxyfXJMg
         z9ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=ERz4P5yjwvYT14ZqJ4uoEBTwNeFArDP2Rbx7OQkRSZk=;
        b=jdm27t0SUX36aigf8O8l7M9jgp05aU4XSpxkzAREZ/QkbpO3+wepaNAUU5IX1rglsL
         FBbDcgTJZ503sDf7mFBKMNxscODQisz2mu3Y48ikbU7derT10bft+ORSQOMm13p4wX79
         +HS5eDsJ7PDDXY4sdQgzHfHKg2SGotBTPupvIvOAKNaucyVvNo+him3iIgc/dhJimD+d
         dQ6KheigFZ+uMClg30WlXUTaUaAbmKPaViHHfY3UCwVmERKRNg0u9oN5sTSRFikhUzTN
         B6DBiu+20JojbsGLhB3OY1fulOG0gZ0yyDdAImFUiCsnuFK2/nHCm0Xs4+xg2+L2lJC3
         1H9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=hWEaCp3v;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ERz4P5yjwvYT14ZqJ4uoEBTwNeFArDP2Rbx7OQkRSZk=;
        b=FJ18ygoM33VAip2llZni3cmY/blqgy0lsi3K4zhDDwFU/+k0S/bF92+F1LHxet9PT1
         XdpfJWt5B9fsO7pmKiXkt5mplRIP5Om1NosIcIpS+XeZg+TwOeKADB6jRTnOhUnx9qdB
         OZCEAVw6IsbXHEQrWEBkWflrM8JJDqfesEdAScauxe3XC2WfGoQtUbyzwbaQc6Nbh5qS
         fRezCcb0bKOQ05SgxtwYSuJz80fCsjOquS1VuCSCBaYZhzDXWq2546NoDiXMs8vSanSl
         y4DFjWcTtDyWEuty42ie9tuYGsAAuXHJsoBP1lCae5AHR7nKqlh3L3/75DFrjXgCdRyY
         x6ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ERz4P5yjwvYT14ZqJ4uoEBTwNeFArDP2Rbx7OQkRSZk=;
        b=iny9Xl+SQY1G5BS6X1F2hHHZN5KlBtRwzIbVRooBdLp/GaOxjVLODGu474K4msbGmr
         YUKZZ4sqt/HtBTouYlzk+nUYjehfzf2ToZ0L1xq/bNBKjQY6QLnKJZilgYDmXYe+anfK
         ioKGMgLuYxtxEcJ6fVlZHl9Sgm+GD5j0r8u65SzfaO44PAB/jCOsl4iQl9UkPaTkwLMU
         p3DPcES4lOebacQ1CBFeVUlqRygQt/NDmV85RdLCBczdit0ocjE7xUwEHFApUN7kTpGl
         sBTEimZjAq4iByWOi/svmcoP5vJWU8iXPbuoFzLPtSbXAyJ+5D5NVkdoQSWmdlFF5s59
         +v5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua1eD41+WIRH+aeNRRsobs5My+IT61GPy/TYFCxuRgaJUhYXT7Z
	XmTQr96MThUtkbOo+lhmTlM=
X-Google-Smtp-Source: APiQypITUXEPTtFlHZNLxNQmZqLF7FCeJQ7LkKGaXYDAP5BM2W9SEEtzJ/9J3xt05LZgbk3RtTVJiw==
X-Received: by 2002:a1c:9891:: with SMTP id a139mr16101390wme.129.1586712765833;
        Sun, 12 Apr 2020 10:32:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:120d:: with SMTP id e13ls3503100wrx.0.gmail; Sun,
 12 Apr 2020 10:32:45 -0700 (PDT)
X-Received: by 2002:a5d:4ac2:: with SMTP id y2mr16271983wrs.340.1586712764974;
        Sun, 12 Apr 2020 10:32:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586712764; cv=none;
        d=google.com; s=arc-20160816;
        b=JKbIuHyhdsYQC1lwfpU08xrX68MNs4dhcw9OcKL4RS6Y9aIJ7yWVFt/vJ3OiozHJFu
         /SBYVpzAP83VvBikqxf+x/OdxXR1/WVl5OfhulQkQLiqeudLII++vNzonJLGEXV8GBTf
         221li5iiDCYx0hDgpgMou1+J6UtEtm2qq5eRrAFus6TD1ejkPLxtDhjgwN/P106yOa+p
         bDRxrW2xQlfV5CD9HUTeje0rMn9r7zdXtfry+7vXcdWlFP3zfeIBrdB1+/ZWAQvq2O0C
         k3ZE5Yu4cHCB+2Czv8HEpk/m/8Pu4y9WGXfy1UD9U/37LNWP9dSGe41YOHkiwYglHsIq
         RKwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=yk8EgGU0JKjg0f5dIPKlaLOtxHOlbRhZgay4jauq6UE=;
        b=wcZ81KdXciOiWEHTbmO4ipaMm7A65aSHzthDE/D/Gudv3sTw4D2Y+7Lk19k7BGDVT3
         Nf3qMiOwRV39z9myHNcUPphCeSwZCi4awEE95FVODw5s60jH08pUviAMSYEszM9Fqh0o
         G0/KQUC7tkwYoXStbZdmS9Lqj4WmjpM2XfswZWyOH/NFUcB7Vek6VEP79klHyFXV5XIa
         TWkdjLe8a3GTL5ALBbx/uJJRSyE2X8ffWAam7fR/PngKbkonh9BUUBrxRM1G3PJyyzL8
         7ItowJi/xV24+u7ZvwVd2RB0bhlwCoehl1Vlj0tLXPOpGOkwyio9aBAlsMeMUS/p2f9Y
         2Kkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=hWEaCp3v;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id x11si427527wmi.1.2020.04.12.10.32.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Apr 2020 10:32:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id u13so7552583wrp.3
        for <clang-built-linux@googlegroups.com>; Sun, 12 Apr 2020 10:32:44 -0700 (PDT)
X-Received: by 2002:adf:cc81:: with SMTP id p1mr6543963wrj.372.1586712764521;
        Sun, 12 Apr 2020 10:32:44 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id b15sm11545222wru.70.2020.04.12.10.32.43
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Sun, 12 Apr 2020 10:32:43 -0700 (PDT)
From: ci_notify@linaro.org
Date: Sun, 12 Apr 2020 17:32:42 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <865675428.17085.1586712763884.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-mainline-allyesconfig - Build # 32 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_17084_394771084.1586712762605"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-mainline-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=hWEaCp3v;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441
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

------=_Part_17084_394771084.1586712762605
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-mainline-allyesconfig.  See 'Bisect log' in the links below for bisection details.

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[linux_branch]="5b8b9d0c6d0e0f1993c6c56deaf9646942c49d94"

Results regressed to (for bad == b032227c62939b5481bcd45442b36dfa263f4a7c)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18624
# First few build errors in logs:
# 00:32:35 make: *** [vmlinux] Error 1

from (for baseline_rev == 5b8b9d0c6d0e0f1993c6c56deaf9646942c49d94)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18626

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/32/artifact/artifacts/build-b032227c62939b5481bcd45442b36dfa263f4a7c/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/32/artifact/artifacts/build-5b8b9d0c6d0e0f1993c6c56deaf9646942c49d94/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/32/

Reproduce builds:
<cut>
mkdir investigate-linux-b032227c62939b5481bcd45442b36dfa263f4a7c
cd investigate-linux-b032227c62939b5481bcd45442b36dfa263f4a7c

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/32/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/32/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/32/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce bad build
git checkout --detach b032227c62939b5481bcd45442b36dfa263f4a7c
../artifacts/test.sh

# Reproduce baseline_rev build
git checkout --detach 5b8b9d0c6d0e0f1993c6c56deaf9646942c49d94
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-mainline-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/32/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/32/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/865675428.17085.1586712763884.JavaMail.javamailuser%40localhost.

------=_Part_17084_394771084.1586712762605--
