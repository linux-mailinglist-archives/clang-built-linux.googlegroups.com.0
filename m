Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBRGVRTZAKGQEOCWABRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFF5159C30
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 23:29:24 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id k6sf25282edq.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 14:29:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581460164; cv=pass;
        d=google.com; s=arc-20160816;
        b=MYKiqVW3PKs6rt5Z2T0t7neogObRDEr855BZmkpwIgQSL92JZ5yawj1DtaXRaloNdK
         zDORPJBg/rhfB3P8TSRdXbkZm6XbzYLUqIkZ3BHPzINkc0KuMEzcdxs8TKUpiLk75Upt
         /OkKY3r+HixkKT2bXa6R2VMRvxxVWwb28a/55gVZhf/+ALrC5IfKHARx/jW1FMAyQ0Ud
         Jz1AsqGGUGG8SaAdpdLHUu2QlddEAbrWPIw2uOkJqp3tfBVwZJ0RV/KXgbzYYmYL6Of8
         HULpVE29Ls2rNKlLbAWvIn6EH9biwh1j9l/j+NDgT16onkZHxImevitDYyUi3M1Mythm
         S8/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=HHdmsLkSFZ//l9VHjIphB6FWpjnSE2rTHiyaZbL5IQc=;
        b=c4uQBOWk4j2oThsY6YwMMIAR7s6yJciGkygHjMLwUIfJp/XwZUDk8lbufydHzB6K8f
         5DQoLeI6DLuG+j5d8CQhj7MhMz2S4qVVEC9RzSXEQ/oelNTk7hpacpsmwYjukURFhu/3
         MvcTwylsinSShSoKA32X40IBDsBR7mXqOjHTkD2/Ytmp7lJsy193zLMc6vd716YZ4uwf
         ctisFaCXLqZL6WkMJOSnTkyKvyLTkk9xsHyayVcY1zClP/aPNl3K2tkEPrbrlEVQ8TX7
         4vt2/iaJr1J4lKkjkmVFmi5YkEfFs5KqcBc4Q2rs34NUCwyUmKznkx8luu4t76K6hg9c
         kd/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=cUGk9I4a;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HHdmsLkSFZ//l9VHjIphB6FWpjnSE2rTHiyaZbL5IQc=;
        b=AQhv+X6FQrXLb/LKcHDOxfRZAps+nx48riFdYHeAsEAL2AALx1NK/tzw4KCdJgYUjF
         gEJaFbsJIjZ4gNkOYwZ73BKQCh/wrMlU+MAqjlPLv163ldLdef4MIxbDEVW9dCxTavIX
         jJXMLyYBeVwYHnSjtXFvad6g4owHiJACdpUTllYmYFxmR0Ce47B8dLIUNJPo7kIdzAVe
         L1PbNyhgp5EKqrVAKs6iznIi5zD/Wa/WXqCoT7dk70Lfbt9mPZt1PkhWQ1Fy7gyglnSU
         NntCR3MpkN5WBnJS8gLaBIhtpZDvAQDFg1IKOd3xaHp+PBf/iSy5XGD872PzS99hCImS
         UBYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HHdmsLkSFZ//l9VHjIphB6FWpjnSE2rTHiyaZbL5IQc=;
        b=mmYmrC6t5H3yuiZ2GjoD93Gd8snpAGM0NeXeaFi8tX47i1Qob7cAaijg1Ka+wD/UUX
         p3wUI1md+D7p5W5VTPV/DuP+CZljB4k0zo72Vbnx6pBDTX6liAoDqJNUAMojYUqaAAFK
         3yRlPisepVU1OlMjJktczN5NkX1Eu17CFGJsXlifxoI3iEXZfgDwKySrCtoWwDf7PMXL
         zjEUW/jFh7lv+uEVZQH+NVJ1I7iwOOvCEmppg4avTQPpJ7PZmIyLUoUQ1ce+5FqDDZ99
         /PWZxYw27x3yIRswHP2SOGLiDtLUAqqKUMgSYeV30nER7nCLbcKeb8+8oYbyCtr4u8j1
         4DNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV4uYtNJc578bEAl8vP1BXQqBTaQVwXC68zz+KlSE9r+ORxlvrM
	hXt9BOtm97LVxa4Efqc1ji0=
X-Google-Smtp-Source: APXvYqzm3kNBHe8Lrg2nuaatXHZkAJ24UrEtIaU5N2e71shfxeupif0d61J3IZZv+bQJh/Gg6pbP4A==
X-Received: by 2002:a17:906:2e47:: with SMTP id r7mr8352388eji.215.1581460164178;
        Tue, 11 Feb 2020 14:29:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c98d:: with SMTP id c13ls7223973edt.0.gmail; Tue, 11 Feb
 2020 14:29:23 -0800 (PST)
X-Received: by 2002:a05:6402:1595:: with SMTP id c21mr8318700edv.32.1581460163666;
        Tue, 11 Feb 2020 14:29:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581460163; cv=none;
        d=google.com; s=arc-20160816;
        b=kksxcno1jDNlxK7xybxzMSQnGsu9pBz934YZ4LC9Eag2wnOqLp/twp2cZYxFlpjs/T
         ixCxsWz4u4RHiZIKmb8SZdP/oGmm8d7zzUYE4gMtYoOdzjWwnKhfBLydBFtTWYWyP84M
         cRAPLPevp/BnDw/pkaLBQP9XeIhMt7KAw9iBeTUVKwqAl7fbclaPeUEqAfi5YWSYK4zx
         NGN6U0//MsomhePp9JQJRDrStDE9uhCWaR9UnyjtfVWtFdaI/7I+BJsoT+Ps7FOc61qE
         EaYq92y8k3MHgVrczH0H3+pVbf0ZEoRWnXpssaK2Pwpi1DHLEDdG07B/5AZwTQqmUvGz
         qinw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=R81psA0EizEl2xPYMHWz7rI+YIwk5Co8FXS40kNX7po=;
        b=c/nqVZr6CwwMMGb1j/9ETZ/2FG3FCo8dFLy1DMGKhkt5sqs3niFo7fsnUqPfcf++6O
         doNQ1918AwyiFsjaIDhKgBE8EG9nKC8MFt00So3s34k5W/oIqZY/UtWFP9bC2Gf8Dbws
         +uPDLTOhzmHoyyD+ONT5KX0+xQ1+8vlC3U0g7BdOJGCt4kQhhO5AV+Igagk89d4AtTiy
         SdIi2l26QE7HTIcUX4LwhY8eTdYVZykZRwevHHxjvfwjIS3Z66KqZcWAqdbXRd8x4cjn
         MBRajYGZIQBFnFI63eKxRq6t9ZcGHCwIUYbwsj6peQ8kzXHDmH1BGH8AWJNbCaC8pdpO
         Eipg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=cUGk9I4a;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com. [2a00:1450:4864:20::433])
        by gmr-mx.google.com with ESMTPS id z20si202059ejx.1.2020.02.11.14.29.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 14:29:23 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::433 as permitted sender) client-ip=2a00:1450:4864:20::433;
Received: by mail-wr1-x433.google.com with SMTP id t3so14566812wru.7
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 14:29:23 -0800 (PST)
X-Received: by 2002:a5d:55c1:: with SMTP id i1mr11793650wrw.347.1581460163313;
        Tue, 11 Feb 2020 14:29:23 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id b10sm7239569wrt.90.2020.02.11.14.29.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 11 Feb 2020 14:29:22 -0800 (PST)
From: ci_notify@linaro.org
Date: Tue, 11 Feb 2020 22:29:21 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <2050680015.1224.1581460162759.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allyesconfig - Build # 58 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1223_57995899.1581460161813"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=cUGk9I4a;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::433
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

------=_Part_1223_57995899.1581460161813
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.

First few errors in logs of bad:
00:56:48 make: *** [vmlinux] Error 1
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="6dff1565d69c518e49afb00f2c5c3214c554e0e9"

Results regressed to (for bad == ac431e2d7b1be81bfe58163b9f81ba79bc987dc3)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18459

from (for baseline_rev == bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18460

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/58/artifact/artifacts/build-ac431e2d7b1be81bfe58163b9f81ba79bc987dc3/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/58/artifact/artifacts/build-bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/58/

Reproduce builds:
<cut>
mkdir investigate-linux-ac431e2d7b1be81bfe58163b9f81ba79bc987dc3
cd investigate-linux-ac431e2d7b1be81bfe58163b9f81ba79bc987dc3

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/58/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/58/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/58/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce bad build
git checkout --detach ac431e2d7b1be81bfe58163b9f81ba79bc987dc3
../artifacts/test.sh

# Reproduce baseline_rev build
git checkout --detach bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/58/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/58/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2050680015.1224.1581460162759.JavaMail.javamailuser%40localhost.

------=_Part_1223_57995899.1581460161813--
