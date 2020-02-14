Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBC7CTDZAKGQEFQT7AFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 484E015D1AD
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 06:33:00 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id p2sf2911461wmi.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 21:33:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581658380; cv=pass;
        d=google.com; s=arc-20160816;
        b=kEOkPUXaK+8tyQSV986v1zUCjNEFfe3raIsXB+UmXt+rfKwn3xgWu4XOTksm5E0x8R
         107g+cvFumBnxAoKAvf1QIp41Zj1rAf12957/BffkW/bke1oIbvW83+QpTisudWMyBmX
         X3QEeEKblQ0V6hM46iN/3O5PkTYQYJY+nRlXJlrZQPdKH7Wnz8TP44aB9TtN8ONylOg7
         i9FVyJ0Dqi4q+47eAJkuOGxzmQ9cAMYtKTI5bOSVGYPZ4hnbSo4dN6GHdbI01xLm3Fdj
         UGn9vwjTPXpXSz+CYkBZ5ZlhgDZn8cPj08512XsAlPxyY5QzBABFpKaI/CCKBKRounun
         Pyuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=zPEuaadQt0kTQw+Gk2oWg403XP69gJ1DxhZuhlr0pBQ=;
        b=h+vNCKtppqNMB6C0uwXTDN0hSbbQiKNi/o9PCmTPNc58MH2dn0y3f8WpGVLmRmGhSx
         mN6cGND5AwPZaYWJ7G/6rVvqEOGUKezTF6ydsr52VJExnGN1wqM/PcKMOqFewnWFAy8K
         BW+rBxwfoGO2AUd7tgGs3441ZMwMcrJRmVpd7rxcmFc/HR7g6W3lTf3PI5lEwaXeyw/g
         4SJ/IlXLKMgKOmLjnblCSj6UphpzkOFXtGzpbupLUWCZEloeNYgUUlYQt/dCjCkkbWW0
         oXHI7JCFeGt83qx9znZsf5xyDrTMJzzOF6JW7Sug6sqw47H6jPjztEJ+YyKEG1HkvnrM
         gvdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ToroVCFm;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zPEuaadQt0kTQw+Gk2oWg403XP69gJ1DxhZuhlr0pBQ=;
        b=Zl6TbXIsKz+Dnk9mM1JT5oAgW3ojo9sT3jUrllA1tIoGzbRxR5NsWgB8kU7v4m2zdl
         7fzB9UBe4350YE574oXLbq3jJiEP3OSDLzd7I7sDAbWY/mNiloe+fC520RhliZAJV45T
         +2rl/MaGRwOIBJpAuhW3VdwchxJSfLqKX14fORB5f6a+3Ohfqt0RllfSGBsmCGUidnr/
         2OMphJY/jQFD9zfQI61suVOgO8eGxkPJBgoFa05GamtwOqoQ4oNWKsVkpuiOwY6RObEY
         MbelQ/7Dfit8hgE0qBg5EJ5yXcmSRaRgPLSYpin/eJrEOdRKKaR/6E9XDoukd8MBlne8
         fNhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zPEuaadQt0kTQw+Gk2oWg403XP69gJ1DxhZuhlr0pBQ=;
        b=r3av3I/Fy5cAj6aZ3ptPyniafzvrLsURU642m8QQ8jS2cA+XxBDVsoOtMCIwaYGi3h
         D9CouSmQkTMhPX8y2Ho6uzplE9QidP4P4L6jEoZNuHnPeQ0k3emIJar+7gIiT7n4v2Uf
         PzmOS2TVut76+oMTjmbuhHwDf8D1fa6BPHiFbdSaQxspA+tdcT2/m8Um5NXLJJ6WjgSk
         NZCzf1L2BrGHM8HJdFSAsJTd0vbL8zSVb3jKJiVpoVSznqH0SJOexFlLuFYM0IKEdnHk
         tGksFSacGlbW/9aCdG3l95YdxtMq+9/dSfL400WSONaXQKfdzN0tbPOW8C82ulP2flRl
         SZYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUVU6+s/gFFphOcfJBRTaS4WUCAPqAd2hzLS3jI3zkUdMpqLpqy
	O5l0h1nGuR7d8kSyFgy6yXY=
X-Google-Smtp-Source: APXvYqyqmsAE255X7Utix8tKJqALbQIbjsfp2Yw76xEP5/he4G6jji1qBY3TXRZYoq0Cg49BdTMCdg==
X-Received: by 2002:a5d:62d1:: with SMTP id o17mr1768366wrv.9.1581658379959;
        Thu, 13 Feb 2020 21:32:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:247:: with SMTP id 7ls510950wmj.3.canary-gmail;
 Thu, 13 Feb 2020 21:32:59 -0800 (PST)
X-Received: by 2002:a7b:c19a:: with SMTP id y26mr2375725wmi.152.1581658379474;
        Thu, 13 Feb 2020 21:32:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581658379; cv=none;
        d=google.com; s=arc-20160816;
        b=loGKYg11WO/XYzT9XUzKj40J9UoNs+JfNzeUH43M9nr1EyVT+wzOPjXFarVsjr5cOO
         BF+YEWbx6edihXaUlDBRxOFJ3lviAfsQpuU/rNPN6259egXX0J/gWtKdE9fojiSI3UTc
         d/zYNIZngncqhqSK+LnIVNAzK1KDrMmwimLs1W2R36+BPVZg9SVyZSPxRe159RmtZrEw
         t2MIMsUm9+X8mDGvWHfnUb6B3KRGCYsRJtdtQ/zgSlqRot30U/w8P+0qpjKN3hK4vlnW
         GJqVgxSkK2b6ZArS5jTA8dywWkhblONlMwEWT7EzgUz0gEprtCanxsqR/TxcKx2UJ24x
         W7VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=Abl7YeXorrIzcTuKjooots6eY6ax1eTluvnd+VYdepA=;
        b=oIU1nIjWzbVxLBTIG8Wd2MkhRT7P87ln6iOqvhaWX2OdG7a6OP1arW9OblHBsOfqF8
         yKcb44WsyfJ18VijST4UEbV/yuysxnIevmvVW1TilQ3AOxTqiJO24S3y3hAQRvth73Iz
         iq229SmpSa3WlhvyRD/FAxS5GrDaxFvkfPzCSZqXEBSxjATBQKhCFoHAF/bj7qF0Usm2
         p7XK3Z7Yu2ZV/IBm5m2X8MCNK9vleaT9cx+1xHXYaCxO+j3HQTH8TmovmEPtRcrCFSMn
         07fjQTrBtN1aj7bxMjwheaxwixBqmz7CF+Dof6l1oyYlJTjglUClNy6SlULyW/aPa0ax
         9p7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ToroVCFm;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com. [2a00:1450:4864:20::330])
        by gmr-mx.google.com with ESMTPS id p23si215229wma.1.2020.02.13.21.32.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2020 21:32:59 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::330 as permitted sender) client-ip=2a00:1450:4864:20::330;
Received: by mail-wm1-x330.google.com with SMTP id p9so8661346wmc.2
        for <clang-built-linux@googlegroups.com>; Thu, 13 Feb 2020 21:32:59 -0800 (PST)
X-Received: by 2002:a05:600c:214a:: with SMTP id v10mr2376725wml.182.1581658379142;
        Thu, 13 Feb 2020 21:32:59 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id a198sm5666540wme.12.2020.02.13.21.32.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 13 Feb 2020 21:32:58 -0800 (PST)
From: ci_notify@linaro.org
Date: Fri, 14 Feb 2020 05:32:57 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <463174850.1826.1581658378539.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allyesconfig - Build # 57 - Fixed!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1825_1497536127.1581658377844"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ToroVCFm;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::330
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

------=_Part_1825_1497536127.1581658377844
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.

First few errors in logs of bad:
00:29:31 make: *** [vmlinux] Error 1
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="12975989976505c36ae24229eff0cff35dc5b61a"

Results regressed to (for bad == 9f01828e9e1655836fea88d0c8225d648850b33a)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18431

from (for baseline_rev == 0bf999f9c5e74c7ecf9dafb527146601e5c848b9)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18464

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/57/artifact/artifacts/build-9f01828e9e1655836fea88d0c8225d648850b33a/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/57/artifact/artifacts/build-0bf999f9c5e74c7ecf9dafb527146601e5c848b9/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/57/

Reproduce builds:
<cut>
mkdir investigate-linux-9f01828e9e1655836fea88d0c8225d648850b33a
cd investigate-linux-9f01828e9e1655836fea88d0c8225d648850b33a

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/57/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/57/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/57/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce bad build
git checkout --detach 9f01828e9e1655836fea88d0c8225d648850b33a
../artifacts/test.sh

# Reproduce baseline_rev build
git checkout --detach 0bf999f9c5e74c7ecf9dafb527146601e5c848b9
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/57/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/57/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/463174850.1826.1581658378539.JavaMail.javamailuser%40localhost.

------=_Part_1825_1497536127.1581658377844--
