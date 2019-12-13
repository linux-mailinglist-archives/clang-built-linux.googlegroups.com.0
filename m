Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBOFL2DXQKGQEIJ4P6NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC1311EDFE
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Dec 2019 23:50:33 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id d8sf174472wrq.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Dec 2019 14:50:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576277433; cv=pass;
        d=google.com; s=arc-20160816;
        b=KmaoyWQa8GoxDAnHwRbMRD3WdPtFdUouhW/K56UCYvuYBfsSx4BVE6DXA4y8cCXsQp
         tn12NJ2kugL9sIoqQTiEEsR1mTT16qBH1l9TZLQr3CrnizUPioN/Fy9ZKFPM9njvhP78
         c15XkCzTbUa2aF6JBs4Bgxz387VnjZ4VS0jCQWgKrocRy0snvxxVEW+lsJoeNYBp9IGR
         pEGDT2hLBmde3Ik43Vq8Cc3A5ELX1x0xnXoflvfq6sVkGsBzwGXQRRkumvshO6jRO4Nk
         YvH4vm6QaioQmLRqDFxRb61I5PtZD0IdDtD+5YviZQjuLVZ2wjwLfTwsa7vT/pKlxM2n
         +Lkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=5DKHA+bxJN+q91O9Ck66TzQG5aV6qxz4Ey2D3u1rAig=;
        b=VauJJR9zRq1PA9uHFQIRP15RsqBSIbhIjsNH4tYimH+A6OyP4pRxRMX9/xruxR9i8s
         OqZpj73+mGAeXQyo8U7dJO6LGudI2yzaHPjy7uMiNklITF6V1jW+W7jjACyoR5rZsvrb
         SuUO52tyb8BlMs3E5qFcib6/H8P+SqPh9RYeTi+WxeS3URWUaPMMyocBMHL5SateM0nK
         My02LJZ+6ub87V0rf2GkYEvQ7HVrh9gtLHxnmD8o0ETAznYk80BkGK6kxk7OyPY40kIf
         GVxOJB2VhLubuQAriC2hqgnmyQERarETK2rRHoSiZjlx4V/g3bzPp/p8uEBbp6a1if4y
         QK9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=rPx5vPgi;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5DKHA+bxJN+q91O9Ck66TzQG5aV6qxz4Ey2D3u1rAig=;
        b=LSckoo4zprLOmOi8DYBmKohIQvx6jLwIxv+yapsyJPEk901TC/3xNuLGDg9tkDs5Ca
         Vtdre6E5XS7oacOw6eLg2aHQuGNTFh6cxO5MBUFTtXAB68enCpgFigR8scOEg54AfLUn
         nEtqckq8FEwHNSB60o9S0qeQsdZGoJHE1DrwRhokZ/H+TZjoDoV8PCVBNWx8febHIngL
         87PE9MRYTI0puDs2SQ6jPPdf60Nmg4PiQQ7vMzqh/zpS21X1oZSmLmN1JzBzoKl6rYyU
         8duw/E4szBk6hd827+IeMeaqI3sw+T0CcH/OrMVfmcjhT5K4P6GtUaeui0dP8/yp4Szq
         bNMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5DKHA+bxJN+q91O9Ck66TzQG5aV6qxz4Ey2D3u1rAig=;
        b=a7ZEMWM6HUuMr+ZyEWbd7vK+F0rZLLJcmUIw/Mst8ZKw0sYca35BQ5nWPjK+664JH+
         drGxe6LSU7E4Sh07jSzcNhrwFhARLiMioTT0kp19MKQxzroDCsCYrFmR3SL5WIyuAW9+
         dQONAjisAlxrg2EyhWahtAvgw+OcqT59Y8len4RMwcEP/8gbbTJA5LdPvpK3QkS9wPrw
         x88U3gfb+itdalwTV1SyEq5X+QCejkv1tykkct8ur7De52APFiCaF+yy1f3vIJi5unOr
         NjA2yBebNzxYaH4AHQiyQSyufPSaA8u12dK3ulw0IUXjCMG9aiOjfl7zfjh+VZwhtkPh
         ++RA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWQPFX52M7HdBk6Yp2lxkFJZHdtDu38g6aUXFPwTrUOZ+qU4RRN
	TXqoeTj3h+PzjKlEQ7zk8Pc=
X-Google-Smtp-Source: APXvYqyCUSG7HtBk4OB8Q5zWrPsw0GN3wix9rZBo/BCFXAq5qRQhKcFXnpmJVlajW7vocCL7QDLBCg==
X-Received: by 2002:adf:e74f:: with SMTP id c15mr15837888wrn.274.1576277432925;
        Fri, 13 Dec 2019 14:50:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c76b:: with SMTP id x11ls5493331wmk.3.gmail; Fri, 13 Dec
 2019 14:50:32 -0800 (PST)
X-Received: by 2002:a05:600c:220e:: with SMTP id z14mr6172215wml.114.1576277432421;
        Fri, 13 Dec 2019 14:50:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576277432; cv=none;
        d=google.com; s=arc-20160816;
        b=zGakQ7ZoZ5j4YfcOLltY5DxUZ8xSGcveVyKoWd/JfWmrjed22vITA5nO7zImBN1yJB
         AKv2/knMYSLb0h83zPkWfYZOjqdhe3zjk1zKhhfoQDpFGuKGcIeZHNtj3jim5sXrl/4l
         dh5HHp5eXSOKqhJVP9S8ArxGOQzja7uq38cMXw9Sg2HaYsQSJJRPW7C4vPyc7AZzK2ZO
         /FaJroNP3188p4rlCpv9EGkIbmJjPN8sOvtitSCH7y9jZqaEBUgYy683TWlw7bQnIW1s
         bcecnKj8gNbWBM05QOQ1xcEcdCFO9j9aROCwny8yrEgVyUoz497gJreZeMqIglvkwVAy
         fgUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=g6AbRSmCrL1ObbyP3WHtMdUO+TNyoiEvHpbC6nteBnE=;
        b=U/kLIw+KnviMQ9OsKU2OQSRN0sPvfH/WC61g83o3SqbAF1RZM4Sd9lBFUvRBQ19pAj
         BmI+dR5EJMrsWQyphDav+9aVpLDBnGmClhUAhI7UNqGnYc/4b7yaeLMJjv1hMr6/+olw
         hES6qGSnRwR8meAShGokmqBaxIn9e1SmcXXCggNUmb5oIYDdKXwFV9iECQfzGqEDEcIC
         fOTlmslPF++z4Q2rkH9c6M8leYGJKyxuZfIS0UPFJsZ87YBA7VUr+RieHUnUkB1H9pfM
         fim2t7wFtwbDSZ5yshtEmzUzyQNU+OzyKftDq09MuaJbcfzpYckNjHVinlffkVn0CHR/
         ejqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=rPx5vPgi;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com. [2a00:1450:4864:20::335])
        by gmr-mx.google.com with ESMTPS id g3si429438wrw.5.2019.12.13.14.50.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2019 14:50:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::335 as permitted sender) client-ip=2a00:1450:4864:20::335;
Received: by mail-wm1-x335.google.com with SMTP id p9so446705wmc.2
        for <clang-built-linux@googlegroups.com>; Fri, 13 Dec 2019 14:50:32 -0800 (PST)
X-Received: by 2002:a7b:cb0a:: with SMTP id u10mr16844453wmj.104.1576277432031;
        Fri, 13 Dec 2019 14:50:32 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id n14sm11904598wmi.26.2019.12.13.14.50.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 13 Dec 2019 14:50:31 -0800 (PST)
From: ci_notify@linaro.org
Date: Fri, 13 Dec 2019 22:50:30 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <77801322.4576.1576277431492.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allyesconfig - Build # 54 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4575_1701068315.1576277430492"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=rPx5vPgi;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::335
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

------=_Part_4575_1701068315.1576277430492
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.

First few errors in logs of bad:
00:34:31 hdcp2_execution.c:(.text+0x9b0): undefined reference to `__bad_udelay'
00:34:31 hdcp2_execution.c:(.text+0x1bc0): undefined reference to `__bad_udelay'
00:34:31 hdcp2_execution.c:(.text+0x1c18): undefined reference to `__bad_udelay'
00:34:31 hdcp2_execution.c:(.text+0x1c68): undefined reference to `__bad_udelay'
00:34:31 hdcp2_execution.c:(.text+0x1cb8): undefined reference to `__bad_udelay'
00:34:35 make: *** [vmlinux] Error 1
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="78adcacd4edbd6795e164bbda9a4b2b7e51666a7"

Results regressed to (for bad == 32b8acf85223448973ca0bf0ee8149a01410f3a0)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18292

from (for baseline_rev == 37d4e84f765bb3038ddfeebdc5d1cfd7e1ef688f)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18317

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/54/artifact/artifacts/build-32b8acf85223448973ca0bf0ee8149a01410f3a0/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/54/artifact/artifacts/build-37d4e84f765bb3038ddfeebdc5d1cfd7e1ef688f/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/54/

Reproduce builds:
<cut>
mkdir investigate-linux-32b8acf85223448973ca0bf0ee8149a01410f3a0
cd investigate-linux-32b8acf85223448973ca0bf0ee8149a01410f3a0

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/54/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/54/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/54/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/54/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/54/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/77801322.4576.1576277431492.JavaMail.javamailuser%40localhost.

------=_Part_4575_1701068315.1576277430492--
