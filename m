Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBENR33XQKGQEPIUNBSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 613281208D2
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Dec 2019 15:45:38 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id z15sf3858669wrw.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Dec 2019 06:45:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576507538; cv=pass;
        d=google.com; s=arc-20160816;
        b=u7wfWsKiglrg7qsrUMCJHo8NBrHpmFWbVVoCBVBwxmeTBtVRSud0DXkMWGKSEq+c1Z
         F7tPNTbswwY9KwGBh/i0Hd3xJEBVV0sO47gmwqn8DQ70+keAJzLbeysNu8Tf+QLUfCFm
         FBRmNgxB8nV43u+tVThFsto5P+g8HgSzXAEfEIunz53G0xiv3E93pdMghcfhd5P/0iDE
         HyTJzgDshAhoO3+knY93gdmktt4X6m9pVmEkWMkXN1oWYiN+l3/W1c+QHVwtpP7u71bO
         E57RuV/KJwUhsgc5+AIVHLZilNM4+fqkqc4wilhCOZXkgyAhRem+XF2mvkX5eNqSui5X
         f6bQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:references
         :in-reply-to:message-id:to:date:from:sender:dkim-signature;
        bh=9Pxnw4KDIqD3rVxyweUSAFKfawFrRWIW5AD+TjI8pes=;
        b=rZacJ6PJLjPXPgX44QnmYg+7x2QBx88Xg5EwuKQ/fEu9IjJ1Z9MI1thGqYtl7h5MEF
         VMhNr1vdhd1Pomf7OyCWgxWLHM5boo68vf84ETQKco+aoq3daVlBlOltsR8m6VngrwIm
         CGvMPb7ufH9x3N75ltcN6oqRW+xPYtJ4hpnrJ4kEAqY5Bj5NvGZIDzQ/QH8fXG4Qojjs
         n9BpBw8RFxdAuf1u7yU9aLg2VHcTPgOnbOv2LrQDxx6mwGaB6MCFLgZVDXqlz7aoDmpp
         Gz3j5NeBGIwncR6vaMtHopZ78Ge0qumT24YNqtRbGfcFog+KVL7Gl1NIQ6CIiHS8jDy6
         2MmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=eJOjvJtJ;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Pxnw4KDIqD3rVxyweUSAFKfawFrRWIW5AD+TjI8pes=;
        b=dAMqb3//cyZt2z+62xJiyatOauScVDuY97YhekPxh5kYBSRi3WloX9yOLZDW0eoamG
         xRCXZwXu605u13GA3wVV8/vi2PgE7oACkR6Gs40jsjLOuyBq3KQiyAjSFHVU3dIyiob4
         yZyoDe2avarSX06dMfOczBLx4b267Sid6ewfv+e2oGF9CdX7QTvBdRTweYGEobPSKbYV
         SWY5qMcMoImMi+JfBcBS67TxlcPERjF99dhBGRok+jZ4sBF1SqX+c0/bAK9zCJfBpA6N
         kzu1PUKJ1I9Z4UNmgwc5JAGWbklfIK0W6YObXTd+cMH9lPZVp+2tmiH2zdpxWcw1445b
         1dQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Pxnw4KDIqD3rVxyweUSAFKfawFrRWIW5AD+TjI8pes=;
        b=jI8TnXicI0LlKbZs9D85BTkG92O9ReVHfSQSsRCer/DvmASz6E5HIjxspOajV4thhN
         J4GoBSxFITsFdly/A7NIts7p00dA18WCzacmMNKLEpZXxJEMA5GxLiLXIjwjk+eXkmNj
         PzOoGjw6ZqbpKT9mIiKixrqvEq/l5Y20TLhR5pIgGmasS+ePCFsR6ojSivFXHvibTF2Y
         MV+cy/mW8D8lrATAPgxcD8UJMr42Med7yEB54dA/9I0FshhXy2Fy/c9+dxHRfAOOMYlV
         NqGvHUgfmnfiT46n+mOgirr3VZ8ZgWHvd1Y1ms8ZFATGHgOZNfLQZI+I31lm8XbBeOdz
         ppbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXNATL3awXDG7f/2kc3esEjgPycYYl8+Da0tW1soTAoD5PW9Dpx
	XTE72agHVyVQkEfPH9Ia91Y=
X-Google-Smtp-Source: APXvYqwFSwyrhUSwuPzGcNzHFUtUU1w6jMGKnmeCimIAIchZ5tdxc49mvKrJQn5hrAPF/L0vgigpNQ==
X-Received: by 2002:adf:fd07:: with SMTP id e7mr30166729wrr.21.1576507537988;
        Mon, 16 Dec 2019 06:45:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6912:: with SMTP id t18ls6494601wru.7.gmail; Mon, 16 Dec
 2019 06:45:37 -0800 (PST)
X-Received: by 2002:a5d:4a91:: with SMTP id o17mr32717270wrq.232.1576507537421;
        Mon, 16 Dec 2019 06:45:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576507537; cv=none;
        d=google.com; s=arc-20160816;
        b=cdRxgqANIBM5toPikpG9SIT12GQ4Z6NoqfSqQEJQxwVNVc7WwID3ZU5LnPD05DKQVB
         CmBL8mKmC8/1XXeUZkMDFSlIn7N8RKU0udV2tioQHcSKbNs9BXNPCgU3RP2swpR0MtUv
         xiHKMB5x+or0fOHrPOmQLrIZZOTqRKiteS6BbtfUyngudT9a//7X+HcX7TVqMDgojvje
         yacykrhdsbtuqeCtMHHHdE7gH8dnYh2h80YVqFHUCbIJXOa4ZIu/mmYoKVTKyF0j6t8A
         PhTIDWxgWnOZIZykE8FfwtHHr3/GXe+EDUl3AYkHPoBTiiEiaV7DJtckIQ22t76XtFfS
         cV9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:references:in-reply-to:message-id:to:date:from
         :dkim-signature;
        bh=zDYi574UelJe8WN0Kvl7JUoSBiuClLLAWzwNoIEyF/M=;
        b=SGglq/8T2517MSQOj8Z4gZOPVgqNWDE1tHZstirZmuZ5R+b0RDm6KbRDTt1FeN1nI3
         hYazbyrF6hNyNjcdVPrWQDOwhLgSZ9MVR9ZmgLlmQ/JnVqQHRNbMKMFCqwCsnZ74gttm
         N6SRuoHRbV1fFvkHQykpleUdayt0dhrI/pZc1h6/CDKW+RWcGCiOeb1b35vUwMQNl7GP
         cqV0xqwxUhkDdOdaYtLF84bCcR0OpK4WXkReDiDBwdrU15wNtfgahPqT5fMwcBPePKdP
         GmzOzP39HNYe4O7nlUbhDNLBYj7eJTFmCcm6MKSYh1Ds7VNLDTvicHT05HPgOb/mBYM7
         No7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=eJOjvJtJ;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id y13si661444wrs.0.2019.12.16.06.45.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Dec 2019 06:45:37 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id g17so7585178wro.2
        for <clang-built-linux@googlegroups.com>; Mon, 16 Dec 2019 06:45:37 -0800 (PST)
X-Received: by 2002:adf:cf0a:: with SMTP id o10mr29467012wrj.325.1576507537029;
        Mon, 16 Dec 2019 06:45:37 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id x10sm21964302wrv.60.2019.12.16.06.45.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 16 Dec 2019 06:45:36 -0800 (PST)
From: ci_notify@linaro.org
Date: Mon, 16 Dec 2019 14:45:35 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <690305774.5019.1576507536528.JavaMail.javamailuser@localhost>
In-Reply-To: <589843567.4850.1576390378503.JavaMail.javamailuser@localhost>
References: <589843567.4850.1576390378503.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-mainline-allyesconfig - Build # 43 - Fixed!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_5018_687953409.1576507535954"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-mainline-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=eJOjvJtJ;       spf=pass
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

------=_Part_5018_687953409.1576507535954
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-mainline-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-master-aarch64-mainline-allyesconfig
 - tcwg_kernel/gnu-master-arm-mainline-allyesconfig
 - tcwg_kernel/llvm-release-arm-mainline-allyesconfig

Culprit:
<cut>
commit 7d42b7961b9198efc75ee5192eab7d03e691d692
Author: Guenter Roeck <linux@roeck-us.net>

    staging/octeon: Mark Ethernet driver as BROKEN
</cut>

First few errors in logs of first_bad:
00:14:23 make: *** [vmlinux] Error 1
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
18242

from (for last_good == 7347f09a198a045d5f6ea5e9c8fcc1db98e5a854)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18250

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/43/artifact/artifacts/build-7d42b7961b9198efc75ee5192eab7d03e691d692/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/43/artifact/artifacts/build-7347f09a198a045d5f6ea5e9c8fcc1db98e5a854/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/43/

Reproduce builds:
<cut>
mkdir investigate-linux-7d42b7961b9198efc75ee5192eab7d03e691d692
cd investigate-linux-7d42b7961b9198efc75ee5192eab7d03e691d692

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/43/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/43/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/43/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-mainline-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/43/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/43/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/690305774.5019.1576507536528.JavaMail.javamailuser%40localhost.

------=_Part_5018_687953409.1576507535954--
