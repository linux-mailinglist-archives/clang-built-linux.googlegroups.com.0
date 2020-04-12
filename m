Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBKESZP2AKGQEY43IILA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id C513E1A5D5A
	for <lists+clang-built-linux@lfdr.de>; Sun, 12 Apr 2020 09:54:17 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id y23sf2469767lfg.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Apr 2020 00:54:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586678057; cv=pass;
        d=google.com; s=arc-20160816;
        b=oDoDznWPURPWPAnPHpVBX1aGKRh5gAiBs1S5b7gG+Bthh/AlHBQGdzg0nNrs/z7VY4
         MAP70LskuNX8wIuhEU8aOfXBVbEZ1IAm6D014rRBS3WZ560zWxwI3Ebu2M2STtZ1a1Y6
         FgXEyV62ZL8bfUQkWczBcBnPfqR2qg5yjR+Q4zu/sLoWhkmzBSs/Mv//qIxo11KHTvYL
         wIZ4/PeEUX30TBhUyEeCl6+KqX2XrId1L6nx5EMr7QE3EETBcDVErur/gdHG6xY0+h1s
         oAIvG+tdZLRWns/YTX6LGm36lja3+1YTrZfHxY9u5KNAlgutujmjbn9nIPUMh0OMxEmY
         97ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=Y7026XEzAb8J5JWWdEf+8Spz7ghNkSmT0hcdqGtZlh4=;
        b=ahpqbhY1pSculxYMQO4qFVGQhZZQKPBonIh4TkaEf2y0LygSfZEyF+Es7I/0GixRdr
         Rudgpd1exnFZTO9MYAo9PhB6HsER3zoR2MFklCa7tYNQ47xUS6COGB5kJgD3ry4uJEBc
         OOn6Srgo+CfwW6WWyvH5OxZOYs2pGISjPdAGvTkKP0oz3nRkk3AQBUj6JVPFCSy+owsp
         zqgEwYlRKD7JEEakzXJHaYoFaelx6j+yNy+ntjqLjh0wr6o9b+cBli19gHtWP/xYKb0D
         L48M+c3wcRAfSRTlXig/mjg2MaC35tZ0mxd8IVBkoLnUkKpWkmtB3IrPZCUTdaLfjTFl
         qh0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=OF7gKCwn;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y7026XEzAb8J5JWWdEf+8Spz7ghNkSmT0hcdqGtZlh4=;
        b=bJjRk9BIxxRKtEljrOKMR8D+EFgOWoMAO2Yst/e+rEc3Soa6YVvibYWgIb2XlTT9U4
         uGy73Qz3p7gk06hiTuyBAghxiClS9ktw+pGsIBZz6NF23Qy4k31fIb8sGhbsz7fd7U61
         CFMIW/OdK7V/aNS49S+r2GpfFE0Wzc0d0p46cKagRIcFOtEPsJbuTHPa6Z55LcwoNds2
         ZNnUVvdG3FJs/KEYibcoYE1pai6txq5arpWikTfz3RzV4W+QHqTWanwP8AufnBQXI/k0
         TIatUmPSA7C5eaSZy2NqLByfyMtZ+NNEzVw2TaY+f7VAyRad1a3b7fO2K1AN6/jkTPuy
         sl/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y7026XEzAb8J5JWWdEf+8Spz7ghNkSmT0hcdqGtZlh4=;
        b=AxtyRbBYYxV7K0eEKlqdh4BM/tD5aWSOc/yhv3950oZ7b0iIcw+w8fC2ohE8Fyfx/r
         I4KCaZM13Gkbo3cgbvvcZciCXmVvIthoWD+hE1++6cIti+yveZQjy1GhcDgDqsXd5YHU
         ZJlWjEzs6m1U2mBRSE9jQEVPjRSVbbFjNmKMFeiyC5ehNT1NjjLqi1XKxXcfrt7WeXz/
         TaTsKECd32uKbCWZ2qAIdnAjGQaimsDA15ZJqYuXjq6daEqQjFdS0KKGUtFEVioPjVyc
         ooTLb8haOspQVFvYDuOeTNqGO9ptaCgtuxR/rq0cuQs9NO8wpDzON5s+TFx67IMDCZeL
         mJoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY+1HIgPxjzkW+5cP+2pjeL5ohM3LqxsVfXrg7WTCJ/FpTzX4yB
	G+bECJupdWocQrsSqw9yYrA=
X-Google-Smtp-Source: APiQypJyHMIdSbgz55/FUMQgAaYNATDO0PNz3I9Yht4kk7VFqU7s9p2K2NLU8tgObTDw8PxgnYB+Qw==
X-Received: by 2002:a2e:9616:: with SMTP id v22mr7113844ljh.107.1586678057287;
        Sun, 12 Apr 2020 00:54:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5456:: with SMTP id d22ls2335811lfn.6.gmail; Sun, 12 Apr
 2020 00:54:16 -0700 (PDT)
X-Received: by 2002:ac2:4248:: with SMTP id m8mr2774367lfl.211.1586678056514;
        Sun, 12 Apr 2020 00:54:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586678056; cv=none;
        d=google.com; s=arc-20160816;
        b=LYlfqnvqMTPpXIFEi2cbMz5SPVyKkwcApC4oSoPa2Sir13w/qhJxBj3498hogdfv87
         YJPmsQZkVGZEn3mPzP7oavX5E87v2kxkM2qzKcljhbg3pVtmPjARBsazD9Wdq2Q8i2PR
         UKkJsOyTcakgmpVG1qea1G1rwqzBfuF8m2BIlDZP47xbvd4OTZv1+JkIxvb7wFvMkN1p
         pbK9ESNsOLLi4IVicTrCvE2L1EHQVW6fzzCUQri6rtsmIFr8rRHaqGEiWV0AMbRUeEQK
         7WwtsG8Ar45Z7zmI0e1AQkh1b+DUn/aXTOV38GbmKXenqmh1t8qUE5ZddG6VAtV3ihxo
         h5PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=TmZzCNiVPqhYdncOT93NxYIkWBJA4tzg4D5++AGQZcg=;
        b=oa3BiSwKYsfrxM3lGph4D5Tts55qlE5TpzlYppKaTb5JUybfYAWwMUR1PnZWk9RnWT
         eiuK6D1Jo9W260QGfrWqbu2HMy1Qxi4FAS44Vx1kTY7KnvQeUPnMvF35d+CBX33+ZiT7
         DGIHEpS2oJoAW5xc98yOxvLh2dJlp9lweJN2MAVT6FLNzO+2ofecd6K8uZtJ1cm4SLpj
         uH58a3Oz+T9hITcJxoEbMNcpMPVqkPc1/5+WTfZ5p/hMBCjEN0PISopXuC1jDJ/b/jFM
         d9T7k1rSSEVwxZcu8gaL+fkS7Id4Bw30lB0WmhjeV5alEL74EZuFyndjZsSZ7KYWfXDG
         yjzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=OF7gKCwn;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com. [2a00:1450:4864:20::32e])
        by gmr-mx.google.com with ESMTPS id s4si430017ljj.2.2020.04.12.00.54.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Apr 2020 00:54:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32e as permitted sender) client-ip=2a00:1450:4864:20::32e;
Received: by mail-wm1-x32e.google.com with SMTP id d77so6624519wmd.3
        for <clang-built-linux@googlegroups.com>; Sun, 12 Apr 2020 00:54:16 -0700 (PDT)
X-Received: by 2002:a1c:2c0b:: with SMTP id s11mr12605737wms.3.1586678056176;
        Sun, 12 Apr 2020 00:54:16 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id f13sm9965575wrx.56.2020.04.12.00.54.14
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Sun, 12 Apr 2020 00:54:15 -0700 (PDT)
From: ci_notify@linaro.org
Date: Sun, 12 Apr 2020 07:54:14 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1228848350.17072.1586678055502.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-mainline-allyesconfig - Build # 46 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_17071_1332030343.1586678054346"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-mainline-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=OF7gKCwn;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32e
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

------=_Part_17071_1332030343.1586678054346
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-mainline-allyesconfig.  See 'Bisect log' in the links below for bisection details.

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
# 00:31:15 make: *** [vmlinux] Error 1

from (for baseline_rev == 5b8b9d0c6d0e0f1993c6c56deaf9646942c49d94)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18626

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/46/artifact/artifacts/build-b032227c62939b5481bcd45442b36dfa263f4a7c/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/46/artifact/artifacts/build-5b8b9d0c6d0e0f1993c6c56deaf9646942c49d94/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/46/

Reproduce builds:
<cut>
mkdir investigate-linux-b032227c62939b5481bcd45442b36dfa263f4a7c
cd investigate-linux-b032227c62939b5481bcd45442b36dfa263f4a7c

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/46/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/46/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/46/artifact/artifacts/test.sh --fail
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-mainline-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/46/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/46/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1228848350.17072.1586678055502.JavaMail.javamailuser%40localhost.

------=_Part_17071_1332030343.1586678054346--
