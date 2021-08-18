Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBANS6KEAMGQELQPJWWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8213EF9FC
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 07:22:10 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id k11-20020ac257cb000000b003ce6a4383f3sf325378lfo.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 22:22:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629264130; cv=pass;
        d=google.com; s=arc-20160816;
        b=UNUS7+Jj3SRfI/aS5D27PJ6up8Gubj+YU1z8qhDin973tVtNy7K98sAQ4rm7OE4Z7t
         IknzabjgQdvNN74wZX53++kvYJLTLlsFoAZlAITtw4CgEWuulWgjZryvwq1oFlvSEa5u
         TXgY7TNOTL4mfUR+77A611yreT/26KaeJTVTOWwc7h2Dad97e8+xdYsE6rtIK5BSgGCk
         IFrm3LRIGAh6l1Quecrhc0sUNfSmqXdH/5Ys0mr5HY/ISDmVaQvvOn1gvhOwtn930Y+s
         be3SpsqRedrZwKc/9JfllispCohAHXIifA8+EliXxGpk8Nm28aOyE8rEaxuSI9Pbr6b6
         RR+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=x11iy1jUQ7zkgcFNCw1dywkOmFuQib9TTjxQsj0+0c4=;
        b=r26WHJyN+Kqr9liYNRrvHZ781aTkXPpYwRj2RAv6Ge+8yK6iCK9n4Hh+C02nDL0/XR
         ljuqVM9Kp7LmisyzIylZY76dW0mRk8DydDvv9IXFFwWrtet5S7U8GO4WgJz3yfNKyiIP
         gosB8AoKlrE/H7CFaqSwy12Z1u1t6WA3qPS4VxhhAsIvVUOkmhhxnip3puTuHzPfumwO
         Vgi3/Knzr6T7x/pi9Nut/SRzLiST0ZTHEq/wQVm5Hovq2p3ni0pWLuoemJHcXRvEqMNn
         grGKfldV7osSUljQaeHHprers4inVWOKmD7c3e2Yegnel+Cs3/EqcLzzQmaK6OybYIL8
         exnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=BKmKZHzY;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x11iy1jUQ7zkgcFNCw1dywkOmFuQib9TTjxQsj0+0c4=;
        b=tcNhLYMzzIKRddQ4QQHFgPJJe9FC88mWSmP6mTIduAhQoK/rF69KSJISJRFCF+YYWe
         Hnyr9eom5RshTwHskeuDmQ+lhhvqsuVBPOLGSgEnqH4Qm2IogK81BYYOhj2+DNx6Lwvq
         RpgsSwc7qOyEYyYwk/Jafa+pA7xuOsRaaZMt61X1WeTBblD6PyQGdXG6ROWuS8DLR/Ni
         YcmGfZm5N8W+hiLGZ4iSYo8Nmqij4Bhyz+mVO0KLXV1wUqfKn9iRR3RABL869oLByNYg
         4qQGDkH0qzwtFKXJlQeRoPqd6dNOlnGxHtKg47nGPpLL73ulIoBDq3eS8x2xojW7O2KM
         MYEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x11iy1jUQ7zkgcFNCw1dywkOmFuQib9TTjxQsj0+0c4=;
        b=fukr7tpgDon2/qH/PrqZ57i0ULiztyem0MMWXwq8NTFcOS389bY+ue4Z5SWM5rXL5G
         ScMmnsfZ3dxOi4aGymMoh7qSUxuZ94bFQ9BxXT6y7ACx65KpDQbfWbqP0tEZ5OCBlxu8
         gkNCid883Wu5Y/9ht//O1tKIxocpntzoXSZKRG6PHi9wMomw6vzpz41dfcT30ph8dr52
         t9ySJQB+Mp8xQBEC3SrMs9XzHhBZf/UixxDwgQY2+jERPzAjzGFFaIHuFgC2qr4Sh7Nb
         Od5x3Zf1BjpjEVlpVNBheQgM636qxhCq9TZ/Sfk0tMyrYcXrigE7LcXufNClRxs4T+UK
         oSIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NqvUe8sQrPmdauwGuDWdDN0CLvJNFsIRu1F/g0v0ky6KgkLyz
	hqwDVub4zYjkczA+Am0Lcyg=
X-Google-Smtp-Source: ABdhPJzmMzt++oZ4HmqBfktql8JUNo+yOca6NEC21LzLBYmDJNGvms4hr19mi7hjgD7bAAGLPbX5xg==
X-Received: by 2002:a05:6512:b27:: with SMTP id w39mr5139440lfu.129.1629264130190;
        Tue, 17 Aug 2021 22:22:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:15a3:: with SMTP id bp35ls516943lfb.1.gmail; Tue,
 17 Aug 2021 22:22:09 -0700 (PDT)
X-Received: by 2002:ac2:4350:: with SMTP id o16mr5299492lfl.184.1629264129014;
        Tue, 17 Aug 2021 22:22:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629264129; cv=none;
        d=google.com; s=arc-20160816;
        b=tTXG33t3zXLv+pnayNXLzjQS2WEXjeJBIWYXAGeO7L/cdp4XsrKxUOpExRiuSOgbq1
         4E3Ua8tZZ68g/v5k6EXqS1QphbzHx9Pb+fDF1PvL186UjU33A1muayFrXNeqI1S+6U4B
         EF/MHbcQ2x+LnGuhtcezYn95hTYGu1h1ziyGpKy2hRnMbXBXfvOiA8f5ysRPWPf7zG2L
         ass6DOfibdEgk9F0JORBKV4yAQW7bJcScH1tKHGx22QO+1fOl2FQzgbsUPRtnxVbzmr8
         ZWZzG98ex+zbO2MoZLHySQPccKLZigiDYAG5TXDC3hB1475y0DB6KAAtIqyZM8+faHlg
         /yBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=7F0db05D5HakcbzQa7Uztc1dYwH+PZC+bJTXAK+rOKA=;
        b=KmTNdDXmmWTM3MJxhrMkt+BBo7MtR+yvQw0Ma210oncLvvFFNsEYIFzJcYfqpB0jDd
         P2UU0VCJTMY/W/t7/FT7j5E5jaMq3KNwndcaRVlwUfwAhl8hVzqa/8GOe1YRTfcu0z9I
         Qr61nsAAG9tjRlmlu01zBI7nw4ZqttFqFYB0syrQYKklR/kpF30HwAkK1XKUlX2PT/yL
         oHXHq5e77y52XAPzv/P9LLTqsQw+MLG4baiMD6UmdbLMNke0rbxL23whe0CX4CqxHqeX
         x0aagDg1z9S1pFsAxZ30+WGwbAv/T59U2s7QO+FNFtYcVKzWLT8vGvEBMCb2DylrTdae
         BGtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=BKmKZHzY;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com. [2a00:1450:4864:20::334])
        by gmr-mx.google.com with ESMTPS id j7si276670ljc.1.2021.08.17.22.22.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 22:22:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::334 as permitted sender) client-ip=2a00:1450:4864:20::334;
Received: by mail-wm1-x334.google.com with SMTP id q11-20020a7bce8b0000b02902e6880d0accso3534877wmj.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 22:22:08 -0700 (PDT)
X-Received: by 2002:a05:600c:22c2:: with SMTP id 2mr6557333wmg.3.1629264128419;
        Tue, 17 Aug 2021 22:22:08 -0700 (PDT)
Received: from 172.17.0.5 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id s14sm3951447wmc.25.2021.08.17.22.22.07
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 22:22:07 -0700 (PDT)
From: ci_notify@linaro.org
Date: Wed, 18 Aug 2021 05:22:07 +0000 (UTC)
To: tcwg-validation@linaro.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linaro-toolchain@lists.linaro.org,
	clang-built-linux@googlegroups.com, arnd@linaro.org
Message-ID: <2088047326.3857.1629264127981@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-lts-allmodconfig - Build # 6 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3856_841047430.1629264127110"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=BKmKZHzY;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::334
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

------=_Part_3856_841047430.1629264127110
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-lts-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allmodconfig

Culprit:
<cut>
commit 132a8267adabd645476b542b3b132c1b91988fe8
Author: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date:   Thu Aug 12 13:22:21 2021 +0200

    Linux 5.10.58
    
    Link: https://lore.kernel.org/r/20210810172955.660225700@linuxfoundation.org
    Tested-by: Fox Chen <foxhlchen@gmail.com>
    Tested-by: Hulk Robot <hulkrobot@huawei.com>
    Tested-by: Sudip Mukherjee <sudip.mukherjee@codethink.co.uk>
    Tested-by: Linux Kernel Functional Testing <lkft@linaro.org>
    Tested-by: Guenter Roeck <linux@roeck-us.net>
    Tested-by: Shuah Khan <skhan@linuxfoundation.org>
    Tested-by: Aakash Hemadri <aakashhemadri123@gmail.com>
    Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
</cut>

Results regressed to (for first_bad == 132a8267adabd645476b542b3b132c1b91988fe8)
# reset_artifacts:
-10
# build_abe binutils:
-9
# build_llvm:
-5
# build_abe qemu:
-2
# linux_n_obj:
28702
# linux build successful:
all
# First few build errors in logs:

from (for last_good == 3d7d1b0f5f41d66a2d177f9fdcdb32e23a4b2513)
# reset_artifacts:
-10
# build_abe binutils:
-9
# build_llvm:
-5
# build_abe qemu:
-2
# linux_n_obj:
28702
# linux build successful:
all
# linux boot successful:
boot

Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-lts-allmodconfig/6/artifact/artifacts/build-3d7d1b0f5f41d66a2d177f9fdcdb32e23a4b2513/
Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-lts-allmodconfig/6/artifact/artifacts/build-132a8267adabd645476b542b3b132c1b91988fe8/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-lts-allmodconfig/6/

Configuration details:


Reproduce builds:
<cut>
mkdir investigate-linux-132a8267adabd645476b542b3b132c1b91988fe8
cd investigate-linux-132a8267adabd645476b542b3b132c1b91988fe8

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-lts-allmodconfig/6/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-lts-allmodconfig/6/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-lts-allmodconfig/6/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

# Save baseline build state (which is then restored in artifacts/test.sh)
mkdir -p ./bisect
rsync -a --del --delete-excluded --exclude /bisect/ --exclude /artifacts/ --exclude /linux/ ./ ./bisect/baseline/

cd linux

# Reproduce first_bad build
git checkout --detach 132a8267adabd645476b542b3b132c1b91988fe8
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 3d7d1b0f5f41d66a2d177f9fdcdb32e23a4b2513
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-lts-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-lts-allmodconfig/6/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-lts-allmodconfig/6/consoleText

Full commit (up to 1000 lines):
<cut>
commit 132a8267adabd645476b542b3b132c1b91988fe8
Author: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date:   Thu Aug 12 13:22:21 2021 +0200

    Linux 5.10.58
    
    Link: https://lore.kernel.org/r/20210810172955.660225700@linuxfoundation.org
    Tested-by: Fox Chen <foxhlchen@gmail.com>
    Tested-by: Hulk Robot <hulkrobot@huawei.com>
    Tested-by: Sudip Mukherjee <sudip.mukherjee@codethink.co.uk>
    Tested-by: Linux Kernel Functional Testing <lkft@linaro.org>
    Tested-by: Guenter Roeck <linux@roeck-us.net>
    Tested-by: Shuah Khan <skhan@linuxfoundation.org>
    Tested-by: Aakash Hemadri <aakashhemadri123@gmail.com>
    Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index e9621a90e752..232dee1140c1 100644
--- a/Makefile
+++ b/Makefile
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 VERSION = 5
 PATCHLEVEL = 10
-SUBLEVEL = 57
+SUBLEVEL = 58
 EXTRAVERSION =
 NAME = Dare mighty things
 
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2088047326.3857.1629264127981%40localhost.

------=_Part_3856_841047430.1629264127110--
