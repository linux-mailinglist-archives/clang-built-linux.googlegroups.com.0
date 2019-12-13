Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBLOEZXXQKGQE3TLLM4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB6911E173
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Dec 2019 11:04:29 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id o24sf1661950wmh.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Dec 2019 02:04:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576231469; cv=pass;
        d=google.com; s=arc-20160816;
        b=Po13bpbjrhn/Y63mQUTFIgmrg+18ZpZ6JxU7enTTSbNIi0wch9bcYodPICPvB38EiL
         14SQ9lWVba1r7J+lmZZWutHMY0DaaeyPsXuoVcUIHHhS4vAN2c26b5oTBpQGzyFFgoQo
         mO+p+iFGHhNzRrZtByzszU+yDVUv6C3M0ubrvQ11/qKscRzM9pcxCoB6f8gcxWbKNr3f
         d6XU4681kWT7r9sXytIMxueSii3fWbu1KT9rEVO/zv0JrzWUHms9s0wm+x7+g5pMWNrO
         QyiSVTrlBepDnPH6qAK/nWH+wVccUfICMfcLHUlaZP7CErmY8hbHyFJfxThm6EGv/KEe
         G3nA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=FFPwg0WH/f6OS5wXjr6Qi0NIgDvP26B2mUaNZsNgSv4=;
        b=gORfO/T0VR6d8UE6JYGVMkEjZLpu+wENqTmplVMI6/ezma5CxMPF5ZyiU+Cntnnxk4
         9b1UoXUqqDsneN+kiziZTvY59wyhzaI/lOQgoKNMnZC0qO3g4CMozjZX2JjzEalpMnrO
         m0NHx+KdfxoYhFM4CeKg2KEklb3EdbJWfEce+NG8VKljnA8Ne9ESBO8sRWsGHpWAkjFk
         0jszPlDMB8f475zaszOE2OE7pZG4t3lCOsZW01yWXt6xQIH/CNemZS0bWWdTDFq4jIIX
         5qScHfIjYSOpdxHTdVdPl6UVrnrpE17eu9DHSSmNeAZa60fqBeg98L6emG6Yi04m1jmw
         WszA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=NqmWGlHU;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FFPwg0WH/f6OS5wXjr6Qi0NIgDvP26B2mUaNZsNgSv4=;
        b=T5cPYycuZKsOtY9F6F3kPDgsuNPDZ+yvg7tP0+hcFmWbEa+Tw/WAC8vZW/uGLP+GSc
         e8qKTI8G3JOCZRwy6PGsXmUIqasLeyCSP6x+kexpIcn5gcshx82dbOt6h64LSXN7FTsl
         A9x/RVg1vXt7k0650rQR03udLO4QvR3N+hBAI9Ml52exho+cz6biEYIZOzD9qBdBDQ97
         qqqg7RcfQtonM2rmav0uRHDsbp+bjbKkJ5vHoK+0mTiUTDAC8g3NriX5AM/Wj5cRinjk
         /zV8c+GXu5ecS5FwJVkFUX47MJq2TMU7ifRZEHyVG0IIn1y4DM19Jfe7dH9GFy4L7fDl
         nz2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FFPwg0WH/f6OS5wXjr6Qi0NIgDvP26B2mUaNZsNgSv4=;
        b=efZLi5merbq1FHHDY6wctE+YUmX9bBAKnIYs4RBIwxlii0Pd3x9D+YuUIGnm+0qPzA
         G9LZ2YxpcIUCv7lJxPFZSLWFi2QoysWVL93tfPaZRsabcpDz382ZoBT5JMC5mlHiaax8
         UxzJRR7XQtvE2TVsjGf00lySSUZiTYiEk7WE0HvZ4bFSLgKMQcxjCGj5wHs2Sqyz4oE+
         knSFVyVWxlvQy22KgbkX1DLFbLVEWcjqYClmbfow0A66/69cU14aFWweVE7L83Mn2ebb
         IRVy7PqZLkgjIy6JZzXw8Ko3Q2by/+GC9x82hz50V1cgArLzvZ25pn1UAAM9D5yDEaV0
         wAYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWMRQRNLWkC+bV9AusQtp+oXvHx2uQ6t7n1zB2q7bbGgQvmyRSS
	qDWcZMeJp1pQMqChix/Zfd0=
X-Google-Smtp-Source: APXvYqzB7KyttiipeVi/+0nHmMVbOfNlOuqQ85Sk63asfEj/c+V1CjaprMV231uxB1tuJROp673oYA==
X-Received: by 2002:a05:600c:1:: with SMTP id g1mr11806297wmc.131.1576231469517;
        Fri, 13 Dec 2019 02:04:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:c3d1:: with SMTP id d17ls3627595wrg.10.gmail; Fri, 13
 Dec 2019 02:04:28 -0800 (PST)
X-Received: by 2002:a5d:6692:: with SMTP id l18mr12525844wru.382.1576231468511;
        Fri, 13 Dec 2019 02:04:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576231468; cv=none;
        d=google.com; s=arc-20160816;
        b=dQprO9dk5Cc4EtcxCW+XPB4x5ZWr09Mt+lftAJ5ZwyMGEx7jqrKyCuFUfC8EUjOwtv
         WAVC5io8hQM486WlUo8NDzUoL3Ouw538FDWaASUnMW3YeDwsNhN/FQXBZ+hxcK1pyvVz
         Z0hRHoem0mbAUiyb3ViQX/7LNHEQRcoMMUPnsnJ8hcNN5dRU6LRpN9IzQwgdA9ZPPzAV
         supRO5m/57FToeJHCngVFmlW8ytqkV4ISx9OVOBCsDoE5rdWe52X+qpUxePqe8kw7ICU
         HfqihYVyuyrmtAl51zobBbcEvXDf5N4sBpJeVVerKLocXT1GgZ41jRJtTLo1yKtxpSFe
         tGGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=g2zSIZB6sH3rs7gEnp7sO1LR0kqm58N7vK80mG1AySU=;
        b=i9pPsQ+QI5ApXDEtPdcCKwXYjMvSfM1QioidUzSgHmfrXSfyp21UZ0k7TtJnSfIBKj
         XTBC2cOKt4hMcFGgmB7zp0By//pvuxJMhnOI3P12VHAVZgqz+CLAiNnWVw6lMiCCo+Me
         FVRAX66vQr2ziPrXt4ViHlsiO8QjjPG1K2D8gTQBi71e7DitUjop3NcHrg8Cl7rJmbAt
         SnmP5WMhCAovMBhNWQxx+3cl3m8LjeZ845S4K0IGgGlS4wd7WIKf0TlEwwBUqnNpUBcH
         87j1LXv0eR6fbYI/S4nbBcxuDkBZTHk+FJMvpRBquSySx9zZczOpTRbOdroUG/6Ua7Dx
         rfGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=NqmWGlHU;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com. [2a00:1450:4864:20::436])
        by gmr-mx.google.com with ESMTPS id t131si260363wmb.1.2019.12.13.02.04.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2019 02:04:28 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::436 as permitted sender) client-ip=2a00:1450:4864:20::436;
Received: by mail-wr1-x436.google.com with SMTP id b6so6024083wrq.0
        for <clang-built-linux@googlegroups.com>; Fri, 13 Dec 2019 02:04:28 -0800 (PST)
X-Received: by 2002:adf:ff8a:: with SMTP id j10mr12126886wrr.312.1576231468193;
        Fri, 13 Dec 2019 02:04:28 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id h2sm9366945wrv.66.2019.12.13.02.04.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 13 Dec 2019 02:04:27 -0800 (PST)
From: ci_notify@linaro.org
Date: Fri, 13 Dec 2019 10:04:26 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <564084701.4495.1576231467606.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allyesconfig - Build # 52 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4494_1370463330.1576231466927"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=NqmWGlHU;       spf=pass
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

------=_Part_4494_1370463330.1576231466927
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.

First few errors in logs of bad:
00:39:54 hdcp2_execution.c:(.text+0x98c): undefined reference to `__bad_udelay'
00:39:54 hdcp2_execution.c:(.text+0x1b34): undefined reference to `__bad_udelay'
00:39:54 hdcp2_execution.c:(.text+0x1b8c): undefined reference to `__bad_udelay'
00:39:54 hdcp2_execution.c:(.text+0x1bdc): undefined reference to `__bad_udelay'
00:39:54 hdcp2_execution.c:(.text+0x1c2c): undefined reference to `__bad_udelay'
00:39:56 make: *** [vmlinux] Error 1
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="938f49c85b36076b19251b316eeaa5435c50ff6e"

Results regressed to (for bad == 32b8acf85223448973ca0bf0ee8149a01410f3a0)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18283

from (for baseline_rev == 37d4e84f765bb3038ddfeebdc5d1cfd7e1ef688f)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18305

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/52/artifact/artifacts/build-32b8acf85223448973ca0bf0ee8149a01410f3a0/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/52/artifact/artifacts/build-37d4e84f765bb3038ddfeebdc5d1cfd7e1ef688f/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/52/

Reproduce builds:
<cut>
mkdir investigate-linux-32b8acf85223448973ca0bf0ee8149a01410f3a0
cd investigate-linux-32b8acf85223448973ca0bf0ee8149a01410f3a0

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/52/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/52/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/52/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce bad build
git checkout --detach 32b8acf85223448973ca0bf0ee8149a01410f3a0
../artifacts/test.sh

# Reproduce baseline_rev build
git checkout --detach 37d4e84f765bb3038ddfeebdc5d1cfd7e1ef688f
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-next-allyesconfig

Bisect log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/52/artifact/artifacts/bisect.log/*view*/
Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/52/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/52/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/564084701.4495.1576231467606.JavaMail.javamailuser%40localhost.

------=_Part_4494_1370463330.1576231466927--
