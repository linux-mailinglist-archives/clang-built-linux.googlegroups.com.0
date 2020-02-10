Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBMXZQPZAKGQE3MCDHIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5E3156FAD
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 07:48:18 +0100 (CET)
Received: by mail-wm1-x340.google.com with SMTP id u11sf2789986wmb.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 09 Feb 2020 22:48:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581317298; cv=pass;
        d=google.com; s=arc-20160816;
        b=xWn0wNEO/c7f+s1DfQBTAsVrYp6QRgKtaUAFxJRyxWFEw59mOTavdy+ArnqmJMTxaY
         9jLF8uVkLFKFJR88WbeNaFX2CbOz6Jg/vCa+bKQfW4WiPR5agdyVNXo7xOh/FsACEIby
         NA0E8NGNC0SuEL8BNLalweeKf7QoG9FO01VrCBXG1bEXm0z4OdEypxWWURqpXRJtVTWk
         tdvP2xal5G15VXVUBqg2KXSMjdpDSag87pXdOW0qPgYRyL4ya2Duei+hFsR1LcWz4vuJ
         yqAGK42TB8IT6TXovT3OzNyjrfg7HCFtAm3cmOu7Ehz2+BHdTCoMZ5KtcwYLnvuWD+ha
         35Gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=im1hXDNw28oZNYTPFXWHGPdFKoCvPZPVzkOVTo/CWvs=;
        b=hThDvp1DZsboMakRmgyR8OG7dLYKf+J0CediDzt99hJNTlFE7XIa0cU+TrEsolmwnz
         /jUMdVLnmT6J4DrzhKDmS0+IOXQH6DF+TuJe+lcqtJl5Q4uukU87XSG2WM7uym5fR3wZ
         HaiEACOaYxnQNqD2OOITPc5Qi2a+f/CEcWQLiq2t0klshz59UwJGTUVrgLMvG6gCTgN9
         Qo+uJb7GgsxJnhTT3FwhUhiRAZj3L9mvY/lFbNEShYJsr6dVRZrVt8hFvmGBzBThGc3O
         UyJBy21S4pQki5DYg4NmqmByjmjNc0jR0l6KRdUAzYRTg0PUoadRtZLuW+1/0uuutjax
         1m3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=zvybZJj9;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=im1hXDNw28oZNYTPFXWHGPdFKoCvPZPVzkOVTo/CWvs=;
        b=fYRQrke5hOkawLC4O3HJO5Qn1ytktd4+Fh3lS5LcYwIOZp4NRhHWQD5LQ0Usr+VsOg
         3b0lyXIxpX8PIiJaEfV9KsD3kqeg/ImnGzZ1u9vNRbfKAxM3GzKxUAe5OoF2hTGYUV7S
         tEN7u1RHHDReSdq+pG4qZX0WuOwL3/8x1aSaPrZVaYeXsVRZHmGvp1ikTKV7ayxHl/gp
         wLM0Pwnf02RziEF+GOl69IaAJBfWCteyTNwbnKb7gMJMf4g8RJUDJS35eSzwXkt0I8nF
         SKx2zQhjE8tglep8E6cRrWm0mikgp0ErqIjfOsGYkZjO6d0C7YmIO/Y6p+F1ffyfbO3R
         1BBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=im1hXDNw28oZNYTPFXWHGPdFKoCvPZPVzkOVTo/CWvs=;
        b=cOeNgqENAmn3W3u83dgCu/rNONJ9elOEey6B2Rmb2HmFJKRMoe38eSHZ8fYUsDvij/
         04vRHcPY4Y4vOZW8QNJkkhOSqYE5eCnEItqWFWdMMkdp/YYcSJtHjSPOv4pHC9nglGJ6
         nQpb2Dtc7j6SU6X/Lyem1B/Hrtwuesambdji8+t/ibd3k/MlVjhSdmXAT/NP1uVNGjL8
         2QffwfdB6GVTpdxxSNpQYsGkMT9kDYTK27tyn9ZTDoND70p5rIgoD1w4zUathWY+0khq
         hP7YAGjK+Jcr4MGNKDvR2cQxDxQGjsyXu6QRrvOnVSegkEYZjXz1YFptQIK1stezvTUc
         xmzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUglzKRYKvcQySPcXk4Sw2qwmc0pfohdWw/D2we6o7WP0pPrQsO
	POgPkMWes1tr2eSEtzYvDnQ=
X-Google-Smtp-Source: APXvYqzcUPsh/XZwm8c5GxEXgn9zCBUK17Nav/LTn0f3RbYh9iexR89/Zf8QBJ8/nAtxSlUI1blK0A==
X-Received: by 2002:a1c:7717:: with SMTP id t23mr14110857wmi.17.1581317298270;
        Sun, 09 Feb 2020 22:48:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:247:: with SMTP id 7ls14203756wmj.3.canary-gmail;
 Sun, 09 Feb 2020 22:48:17 -0800 (PST)
X-Received: by 2002:aa7:c619:: with SMTP id h25mr8940676edq.204.1581317297719;
        Sun, 09 Feb 2020 22:48:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581317297; cv=none;
        d=google.com; s=arc-20160816;
        b=PWTSzk0B7c1/ZUbY4/HPmvMaTqxI+V97rESHJE3IGAla7FQatwdOCC6lkIZjNoHAhf
         I1bMTPfUB/THnaKVrjr3u1FuTatClASizT1R8rz9S/UUhdOHz5LcjqQXDfGcnnk5SZrb
         Jc4+p538w7cBBRQCi394h3Fg3lZ1eb2SghdGDJa/zMpI+3GFVRjh4tvDWmg+e9H+LGmx
         hBxTsnaaymZvtMxTruAnIXlTWgOjjRjcieYAAGlxX7v1NB99KI//A9yeK7xWYuw+FrQG
         NLV1swzmimQ+pJ7HVy9asTAs9DJbTgCJ7D5vxe75NTS3dAjnetz+NRbflsp20+TEulxq
         3rxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=0J+I9U4YG1aNQeYk1x7JTYvLLqGnAot+Sd7raAHyXU4=;
        b=WyJ6QukU69z38JySLJzOXofpn+86NuKvtQxbMmSWLBVF9Kt7GzPhRRxMd2YUwqzs+w
         cROmnvUf1++PjcwjUcUD3G3G2txEUZpmsIZD8X5NSpUe6oCEMUxlwcwtGmo6ivcVv6TA
         KRxelxpzzoV0wLedBJJswGoMbn0rXOvw94QeNdGgWoUAhZo6RyJD2pspA2jL4Q/5sPtD
         OUsCeHa1p7ltJDMscGhI17mWbVTWO2Ob9ce3aBWgx5jgX97f4Mfvkn+kRvjJdRzUDe5e
         5FzdbWS0/09xxeQJ1TKTWqjLRcJsjD+sF6AMj6K79rvmr5/ft8r/PlbznqMzsg5zxUTa
         Nf1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=zvybZJj9;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id z20si394979ejx.1.2020.02.09.22.48.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Feb 2020 22:48:17 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Received: by mail-wr1-x431.google.com with SMTP id w15so6075080wru.4
        for <clang-built-linux@googlegroups.com>; Sun, 09 Feb 2020 22:48:17 -0800 (PST)
X-Received: by 2002:adf:e746:: with SMTP id c6mr14562878wrn.323.1581317297377;
        Sun, 09 Feb 2020 22:48:17 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id b11sm15144146wrx.89.2020.02.09.22.48.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 09 Feb 2020 22:48:16 -0800 (PST)
From: ci_notify@linaro.org
Date: Mon, 10 Feb 2020 06:48:16 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <226923253.394.1581317296836.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allyesconfig - Build # 55 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_393_137127228.1581317296158"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=zvybZJj9;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::431
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

------=_Part_393_137127228.1581317296158
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.

First few errors in logs of bad:
00:26:49 make: *** [vmlinux] Error 1
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="6dff1565d69c518e49afb00f2c5c3214c554e0e9"

Results regressed to (for bad == 2981de746b18227892dfbda7b70c099077c4580d)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18459

from (for baseline_rev == 1a2a76c2685a29e46d7b37e752ccea7b15aa8e24)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18460

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/55/artifact/artifacts/build-2981de746b18227892dfbda7b70c099077c4580d/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/55/artifact/artifacts/build-1a2a76c2685a29e46d7b37e752ccea7b15aa8e24/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/55/

Reproduce builds:
<cut>
mkdir investigate-linux-2981de746b18227892dfbda7b70c099077c4580d
cd investigate-linux-2981de746b18227892dfbda7b70c099077c4580d

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/55/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/55/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/55/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce bad build
git checkout --detach 2981de746b18227892dfbda7b70c099077c4580d
../artifacts/test.sh

# Reproduce baseline_rev build
git checkout --detach 1a2a76c2685a29e46d7b37e752ccea7b15aa8e24
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/55/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/55/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/226923253.394.1581317296836.JavaMail.javamailuser%40localhost.

------=_Part_393_137127228.1581317296158--
