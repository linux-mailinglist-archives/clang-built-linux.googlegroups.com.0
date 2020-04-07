Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBAXFWL2AKGQEHTD6WVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id C956F1A1266
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 19:04:02 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id a10sf2327704wra.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 10:04:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586279042; cv=pass;
        d=google.com; s=arc-20160816;
        b=y8rAPl656XzWLDB+8ssK8v1PsMXYFMZUYgoase8zdbyEuRCB6aULJ3BeuArfUjQ1vB
         NT7wjiCH0mSHZ8LvSXVPt0ktWBcmzMnTQFM/uoXYwq0JNUYm628KuoGYOyRVRqC1T1Ua
         hAHAzDfbwg1KtEQhwNmgYfAJzwfDWJV4YkMhLXRQ3goSu302RHQeBnKlvwmWpoofcUO2
         95Tixz48T7vQKvHg+46JqpCM3AHvfzRsRftYk1zpQCn3lscgmz4JraU0Nku2oC0lPsvR
         tqrRFlcJiLDO7o6NqNEPklH+2emajCKQa7z5dZj0eg+ldDTG2DgTCTwHJzwwyvN8WVPr
         2fKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=vOk6NRG3HHGNf/CPTN0Cb0Gua73dryqsXOk2wMiM8NA=;
        b=lZDUqnjkOFTAfyqZDBsNI3XqlcHw6sTJvLmwbD+E9xl8+o+ii54Vf0lbowC59jmgQO
         wUgOIOGtgDuDi1R1T2o0Gagu+9zMr2zzqidAkaD3o1yqTHsRcJbV533VVNxhH4Zb7evb
         4AJ1YDXcHmq1ZLzkeCrbdXQVKyFHs9Z4LJkYG/6IU6uOngffEJf2YtXhJ1N4xkB9eSrK
         I4xbXzG3RP/7BHA9b432v1Lk3xWGXw32zGDKgR4JgXlgokN5Hk8QDxyPbxvfJBDf4hCR
         ARF4iFWLP1Fbks/aHGQXkrTe+hfPhKcYeJmnfr/eE0Vpw6ftL3nYyYUW6ts67WUQrS/3
         loJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=bwGR9kdq;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vOk6NRG3HHGNf/CPTN0Cb0Gua73dryqsXOk2wMiM8NA=;
        b=s++8Ygbhjf4Kb5D0PHJNKOSPJfQsl6AyejiwEZcTuk5Bq7v47cubvUD4jrWkxZhVK2
         1b8BKFcWFknNzU75S+zsadlJaD6qdQcC6iinCSEzgYjYnXJHGHI1xwZPED9Xa7wI9xYL
         LV6ePrcyef9NZbFJETr+Ttk+cWm5RG14oYATbNegTaVW/b821QuraYOjt/XJ+FcwL6I7
         8DAHtsL1/8X+j2T3zmGrWSeruMJKg8Dt1A5kzs9WOiMj7KNxLTDpnnJ2d7yIKXtaQHhc
         e3vbY6P2YjZu4nDjkrwDXnX+jx/UsvYxPVo9qYd96n9C4YmiA0lPMD74u/drevolW4eX
         u5IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vOk6NRG3HHGNf/CPTN0Cb0Gua73dryqsXOk2wMiM8NA=;
        b=HbPj+vZbLYFq8DIiQUzdafpUlrQUGkv34+FdoKlLUz515L5bWbnoSJr+klA32q+jkl
         Bij4dSh84YDHLqPkPwEhz03KusT7nCHABJv1KEblXk64pFzh4pQjEmkXVIA2M6z8p/ou
         /UU8pTCC5GkPUHJrvi+nMHE62uGuSpdpCQPtA+AtCRT0MFpWdRZYahovl3yqTbZFmMds
         uT85gqnYvvvmFMXNSv5CST6ggZwRzrCmEIpVGErLo4fWhrsJQhY9vVh7e350WfvgJtcg
         6S/idrk5GAELfdjYchLtpe9iaVnv6KCrfFOXUPEKSfU8v9dxkgSE8Km5N2Z4zgWnIM6T
         XMlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYIojlvHEpPRgJiGvcLzb9DeFkSopHJmijKlUE1ArCfJBL/0BIY
	bp0AjVCW52SxnY9Nof3JHCU=
X-Google-Smtp-Source: APiQypJ6YKMH9fvuCpZ6xWifgzTlWMSTVUTPxwo2znOZtVFlYaZfwiGD1p/nD9dgct/KGapZWSnNKg==
X-Received: by 2002:a5d:5742:: with SMTP id q2mr2011672wrw.414.1586279042565;
        Tue, 07 Apr 2020 10:04:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e390:: with SMTP id e16ls3259855wrm.9.gmail; Tue, 07 Apr
 2020 10:04:02 -0700 (PDT)
X-Received: by 2002:adf:f48d:: with SMTP id l13mr3837650wro.96.1586279042080;
        Tue, 07 Apr 2020 10:04:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586279042; cv=none;
        d=google.com; s=arc-20160816;
        b=p/AVP5BfQlwTIjsGgXt3d++8wAk36gJfoQ5XERlEb/ahmWA0QFE6tn5kf2e3sNRXfu
         3nJh+AUFRQyZGiixds42lSScS7+a/s3lndgpGi3GwwTmBmeWHv0amWuZRqpSFwmQaoGW
         zg1wfO0mq3ZvUi3g0U6TOC/ocqANdnay/q/Cg+vNXi4nPilce6eR7hioW6I5m62+i53I
         FG3K9yh4oeu4Q/rWmyXnEkhbQc4TKUs11f2xGL/Oxk8Bne7f40RldQSLMYBMgla5A4s/
         zxH1OYmfHV9xA6mlI7CmLqRraTLe5frRcjiIXXNQC4fki+i8vLdj/wvwdMh9AryOUl8l
         ZyTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=KXiAyUddsgFFN67OXBDzSdIb0TR1rFvOlBHCyDIY4aU=;
        b=mPbzbNiGZLFhIsJ8KvPHbof8kPglKsv7kweXoAi9DztDr+hj6ViYHxZr1pADnDE9fv
         YW81HSv2hbWBVaAfy03fmbyunCLDNbhBsLFuUm/cOs/BlkZh/Hb4pV7QBgUCopfgTVwU
         UJu+de9p2MDoxXm58LbF2MvkTHiDUYfjGvOvIf+zXDbc/30y5YNYv+6rGF4qAxvblZYg
         PjR8J38k9FXPHnmH8PawVIKoZGjKBHZ9n35sZOWMHYrlyU13dQnJoKv4bQTQwFPrlIN+
         7yw7/zXUXrBGy0EBQuSCK7ubCnIGjaY/8TMvaW7TmgcF78zWmLFaDKFB7BMuEa6an7v4
         t13A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=bwGR9kdq;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id u25si198066wmm.3.2020.04.07.10.04.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 10:04:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Received: by mail-wm1-x336.google.com with SMTP id e26so2463473wmk.5
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 10:04:01 -0700 (PDT)
X-Received: by 2002:a1c:3b02:: with SMTP id i2mr219752wma.139.1586279041698;
        Tue, 07 Apr 2020 10:04:01 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id w11sm3082280wmi.32.2020.04.07.10.04.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Apr 2020 10:04:00 -0700 (PDT)
From: ci_notify@linaro.org
Date: Tue, 7 Apr 2020 17:03:59 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1200207249.14740.1586279040613.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allyesconfig - Build # 63 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_14739_1293987193.1586279039685"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=bwGR9kdq;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::336
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

------=_Part_14739_1293987193.1586279039685
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="b2e2a818a01717ba15c74fd355f76822b81a95f6"

Results regressed to (for bad == 5fab54423a0a88c4333e802155eeee944e82195b)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18629
# First few build errors in logs:
# 00:07:03 drivers/rpmsg/mtk_rpmsg.c:68:2: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]
# 00:07:03 drivers/rpmsg/mtk_rpmsg.c:93:9: error: implicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]
# 00:07:03 drivers/rpmsg/mtk_rpmsg.c:170:2: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]
# 00:07:03 drivers/rpmsg/mtk_rpmsg.c:204:9: error: implicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]
# 00:07:03 drivers/rpmsg/mtk_rpmsg.c:223:3: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]
# 00:07:03 drivers/rpmsg/mtk_rpmsg.c:259:9: error: implicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]
# 00:07:03 drivers/rpmsg/mtk_rpmsg.c:376:3: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]
# 00:07:03 drivers/rpmsg/mtk_rpmsg.c:387:15: error: implicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]
# 00:07:03 drivers/rpmsg/mtk_rpmsg.c:409:2: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]
# 00:07:03 make[2]: *** [drivers/rpmsg/mtk_rpmsg.o] Error 1

from (for baseline_rev == 7e63420847ae5f1036e4f7c42f0b3282e73efbc2)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18631

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/63/artifact/artifacts/build-5fab54423a0a88c4333e802155eeee944e82195b/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/63/artifact/artifacts/build-7e63420847ae5f1036e4f7c42f0b3282e73efbc2/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/63/

Reproduce builds:
<cut>
mkdir investigate-linux-5fab54423a0a88c4333e802155eeee944e82195b
cd investigate-linux-5fab54423a0a88c4333e802155eeee944e82195b

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/63/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/63/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/63/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce bad build
git checkout --detach 5fab54423a0a88c4333e802155eeee944e82195b
../artifacts/test.sh

# Reproduce baseline_rev build
git checkout --detach 7e63420847ae5f1036e4f7c42f0b3282e73efbc2
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/63/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/63/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1200207249.14740.1586279040613.JavaMail.javamailuser%40localhost.

------=_Part_14739_1293987193.1586279039685--
