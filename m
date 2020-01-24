Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBCW5VPYQKGQEZEYOKPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E041485D0
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 14:18:02 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id p5sf664406wmc.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 05:18:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579871882; cv=pass;
        d=google.com; s=arc-20160816;
        b=P6JAKLXaASIkad+g5wyXDkD51RQED5uEDy5l5b5AZcTVVJ7Hp+tU1xjSrjc2mKrGzt
         easXfLypIiduPjO0pfhC6EqVA/p6ABRvSAza8qIxk//CfqyoiWfIz8bNx12y741wKPmj
         UZgTPQQ4+gXT675fB1m6wboiQ5TEMVCcUymjKv3ubx4sCMo22aF0l4Zuivdjd9FwEGyq
         YMMhAwqKUp2gU2TCd4hnx7VXg80Q1i6v7lSGHvg48Yd7NcaSLeho7Zx9FViSr92l2pf2
         Qv7zf/+iLSy/7uXB639BElnOJpPhtIXSwzkVOILQP0V4DK3XXJ5HR64gcX91KEb7JNo5
         MmGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=xXgwUp3MkI+sgEZ75CDe7o45M4mo13RcCtBFx1YARf8=;
        b=fYCSusIH/ZKaD7V+nOERkN70GgJ1lcr/kOIWZgGSDcnU+7hW1qXhdBZH7dIHoDvFuQ
         C/+jK6h3g2MIHccDaUMTfLFGnKriUMAblE8Rg/OWtoW6gEj7dlSinUTp5mmEnL8K8/30
         KfuGoE9kdsx8rs24Ivpn0j/PC3LRJH3ED12rK0M4Di5RNSk1dGKeySigQ9k/aMCYH+CX
         eLPLUgKT0cagW6fGEE6XKxx0ffFCp9StDwRSN58qxT//StU60I5YeTqg/2Edle5Rr38L
         ayk6BT/zyqtTB+r/R7gvzFJEWrvZhYlbkqpueJKhPRn4vH+g6eV3SUZpW5bntW596PSq
         YeAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=DwuqCqxB;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xXgwUp3MkI+sgEZ75CDe7o45M4mo13RcCtBFx1YARf8=;
        b=DN1LkLbJWxjUpQ9aTo3loUH4cU9cLiGhmQ8cCHg8DI38/wfdmf7HEjQQ4vvBw+dEj1
         3TOabYUE9eTkEQ9tkrA+VpSkm8dhpXJZ6MXLtft/dqmeZxbjlJhUvwuKBfCBinHVu8FR
         PACFhkkiCMJVthxDwZ5ym+Jb0sIPv1F+u4Qy7Bv8X9J98BXB53AJlPkj6F/obFwc0L1C
         gRWVkvflmRybgemGaDekKlR0/ztgPM4ECKoaOfQDFZptuyosMDR15uqyBwdqyQcoOCY9
         TOSAHe69MwdIMVXtdt+Z/2NAu11Peta/A6bJnSm0SiEOjVRMYCvsVYXJ9wDgF4P2jnIx
         Y47g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xXgwUp3MkI+sgEZ75CDe7o45M4mo13RcCtBFx1YARf8=;
        b=oticICNxEn8I/zDOAh3dghehFlFn6JcAZ51WcxBVodLoxGn+dbSDNZy7a64f3Wid6G
         RfvBifhL8M+7l3wDsDaTVvneUJ5pWfQgvp/PrqfOU++48Ebd34/cj/5UTeTkdEcs37PG
         fCEAY/liqJ1T/Y5QTZccPg3+HHWmOwkE2hs/syj1WH9RxwEg3EsMPUYHW5017RrwnnGZ
         cG30/6U8qyyLRvbJt/aExFk9/RA+OElfiK0ExaCjkC/jE5ffWq8HfI0SrU9Ont8q10Pe
         cFR+Bm1oeTuB0U2+QkcHtZ3yU0CwgEYeMQwZ05TlrOOBKR4uNtSknZm/F12eepffyGDY
         0+vQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX1z45ukSAHHnm1vgEgnmJV1KmM4OWq66/TNtf6OAjtRvRT/sAm
	kyzY4E3sYHqhWWG2B5phOrU=
X-Google-Smtp-Source: APXvYqwDto4EEH8li13OQw/4oeDyHU8xCu9qKjHxpKe6muVO7gpHbpToKfOCgLnss8wloKZOp8PR1A==
X-Received: by 2002:adf:d0c1:: with SMTP id z1mr4589704wrh.371.1579871882445;
        Fri, 24 Jan 2020 05:18:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cf15:: with SMTP id l21ls1712048wmg.0.canary-gmail; Fri,
 24 Jan 2020 05:18:01 -0800 (PST)
X-Received: by 2002:a7b:c622:: with SMTP id p2mr3273759wmk.94.1579871881913;
        Fri, 24 Jan 2020 05:18:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579871881; cv=none;
        d=google.com; s=arc-20160816;
        b=bIp7bYfxdIp0oKVCyf+2cgGcQf0f+yjTgZLvx//JS6awejCXAqFBl+/+psYENMgdCT
         9SDwA8sWDOE0qeT0uXoJ+X/xTHbzph3LGvrXD26QkrPqO6Eh2JqCJ8bLtKC7w34d6cl3
         795uoTiTGGdmnFesxncwt2LuQKoCPDzkbt7k61JDbD802KFUMiQ5VltjneH6bPrGtAil
         6SfDXxYxKe6WoWEyMy8HMBwhMngxpKSix2e+kOKvwU3OYYW1KuQf47JIJDJ4qYQP8pUo
         3kHytIfoAVBU2XH8OgJk9G0TXhhTzqa2vf55dknFFuK5loq/oSUaX5oJJluKEosZo333
         0gqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=zT92G8i5OMvdx5tXhwzKbeB7xG1s4H9dh47tYio/gKc=;
        b=J/efzGizRosJd886IUvkxBbINGbHYcCXfLbpd8xim+5vSQQqVfKSqCYxdyEKlXJHNP
         B1hEEXpEtd1TN76KuoAmIONS/E2fl3p6lEpuytOYDauYLecIn8LyhJpEelJxgk412asU
         lfJo5kI45hsFLTWCxJ3JVzTKngClgk/jm9EzHDO2IS9wpnhcx3Av0Gu2afjtbztlRAJt
         YpOCfZH5xeYgTmLCmprFS9e2K6PyvHuZtrKPIEa/oELAdv6r56+KwNGFe9VsY5ARO1fU
         zeflee0suw0edV0voPa9GZj3b2xazOzazu08rK4uZPJITjKRtvDBvQtwq6kKpIShykxE
         mTqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=DwuqCqxB;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com. [2a00:1450:4864:20::436])
        by gmr-mx.google.com with ESMTPS id g3si263411wrw.5.2020.01.24.05.18.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jan 2020 05:18:01 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::436 as permitted sender) client-ip=2a00:1450:4864:20::436;
Received: by mail-wr1-x436.google.com with SMTP id t2so1954325wrr.1
        for <clang-built-linux@googlegroups.com>; Fri, 24 Jan 2020 05:18:01 -0800 (PST)
X-Received: by 2002:adf:f803:: with SMTP id s3mr4301243wrp.7.1579871881654;
        Fri, 24 Jan 2020 05:18:01 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id a22sm3399259wmd.20.2020.01.24.05.18.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Jan 2020 05:18:01 -0800 (PST)
From: ci_notify@linaro.org
Date: Fri, 24 Jan 2020 13:18:00 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1956346896.870.1579871881084.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allmodconfig - Build # 55 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_869_1818171958.1579871880523"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=DwuqCqxB;       spf=pass
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

------=_Part_869_1818171958.1579871880523
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-next-allmodconfig.  See 'Bisect log' in the links below for bisection details.

First few errors in logs of bad:
00:01:19 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:01:19 make[2]: *** [mm/kasan/quarantine.o] Error 255
00:01:19 make[1]: *** [mm/kasan] Error 2
00:01:57 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:01:57 make[1]: *** [mm/slab_common.o] Error 255
00:03:27 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:03:27 make[1]: *** [mm/slub.o] Error 255
00:04:22 make: *** [mm] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="ba0b4dfd6466b7e2984dbe52242686e0dd184bf1"

Results regressed to (for bad == 41539ebf9bacf9a9102322ad944990f5a38f5538)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
19891

from (for baseline_rev == dbab40bdb42c03ab12096d4aaf2dbef3fb55282c)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
19893

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/55/artifact/artifacts/build-41539ebf9bacf9a9102322ad944990f5a38f5538/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/55/artifact/artifacts/build-dbab40bdb42c03ab12096d4aaf2dbef3fb55282c/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/55/

Reproduce builds:
<cut>
mkdir investigate-linux-41539ebf9bacf9a9102322ad944990f5a38f5538
cd investigate-linux-41539ebf9bacf9a9102322ad944990f5a38f5538

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/55/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/55/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/55/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce bad build
git checkout --detach 41539ebf9bacf9a9102322ad944990f5a38f5538
../artifacts/test.sh

# Reproduce baseline_rev build
git checkout --detach dbab40bdb42c03ab12096d4aaf2dbef3fb55282c
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/55/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/55/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1956346896.870.1579871881084.JavaMail.javamailuser%40localhost.

------=_Part_869_1818171958.1579871880523--
