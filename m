Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBK7M4HYAKGQEUE4ZPJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5817E136D66
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jan 2020 14:03:40 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id r2sf858794wrp.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jan 2020 05:03:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578661420; cv=pass;
        d=google.com; s=arc-20160816;
        b=aEaTgzx2Y8p/WTB15slKauzA2Os6TL6V9BeqoAI0mJEIvg23b1pHI1ZKMZwutoZ9HR
         7uu8Y7quf6Jz2h64Xgm8GvveudXE8KKoglKIrtjbL0vmbuiobYQ08fxrCOyXRkmjMk+i
         P1pBQ7AmTLXJKK2HfbRDIlli2cllTLMFC0kTlZTyu3NeqWC2ySiCzZFYTWZzRUw7tBC8
         IHjUr0g6d/f2O+2V5gig30o9OXxEo2kYzbvbPWX0+/BK21RW7safgC/0t0JhwDREDYdZ
         01yw0JR4oQWXOifue80jkYoWmdHtEpLnbyZmWCMF1RjZcNhrfzPKDbu32jC47Vrswl8Z
         bx5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=0KXQ/2qR0lVUYWXaBeEqx6L/AhOyRZAUw+xChsIXydI=;
        b=iTU5B1RZEC+VJ4oXWHqkp1ZIaBqOyzCWLkVZeyX/4z0f2/EL0IuZS+GpZrHm3WqqgR
         +qSu1yOmT/4DRMnl9kPF1z98jIT7vJ5yUVeML1cvGK7zFwQNI5TqKFoB0zEMZk6AlahZ
         IuPKDjXLIpaYnpvJ7xKjIhxprCDSmAPZXFHRj6fASHMPKwD40Oe33B6+AethhHTcrUXx
         ULzH6uHpCta8AyrOhkBttxk9oQpespXZEQCWmzw8lqf753gYmUwbPhE8U3uML/cuywlq
         DUcv6jDbjV0OiNoVgAErAsy7CqejrJKwQHgSWifxXtK/WS/fFfVaRSH1iJktPldMGZUS
         lt8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=IAc+gphk;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0KXQ/2qR0lVUYWXaBeEqx6L/AhOyRZAUw+xChsIXydI=;
        b=LgflK14wM7MWiUfRnc5PjxscD5Gl88EHTMh67LG5zI1yuPP5Trst6H+NM+621HcNh7
         1o5KAcXmItF6DNuGQPguQqlz6DjrBS5rIpXgTZNimqUnPGgly2d5pmnv3gVeVUogIfvw
         3zBN8YljcokHZzr20SANboYylyKXsY/U6y4GR/rkXF5KZY+FHr0FNbNSxXQsC/uuUWUG
         IrmA9b8A2MGNcQHpvufK/0J7Ak3Eu7Hw/mi64BnDJPish6bAMQrGDL5/pVxgd6G1Nw7m
         3zlcrFbcCaGnt7GBfFuD9cZCLwB0qX9z8/xNBgBcFYBRugkteIYm4QyXVuwJSOKmne+G
         +yDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0KXQ/2qR0lVUYWXaBeEqx6L/AhOyRZAUw+xChsIXydI=;
        b=gat7gMvki1Pyh4Xa8QBYaiotrmUaaOuBr/iGbsQtl1a3Hd2pNhpd0T1vtz+C+cTYLn
         OrKWV2LBzDGYqr2TeOmwyaJ7uSf3vI/QBSODAU04DjQgPJW94IMB0vJKOvwMSwTkKyI6
         dL1ZamnMG6RbPDzTTZcZawoXgKWpVMnN2RE6f8T3cRNxwEDYVZHfw78VBXdGbZOLnNfX
         20mOHiTcQ7C5dwro0MbnYGHZaPveGeW5mVvO9BRUA45rfG+V0EQhucYhpoIEzL5PQRCn
         mpNhSwmr4s1ipy7omZGZ3xvDBGRB03MISzpKvQuEd4nOyHMltFFO1zcUsV448oqkKZdT
         mv1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWBlM71OVu8Q+uVve4Tq7U/eY9CzczNmP3J0VLxjkFxvuwqhe8t
	db+HQjBmkRKElGgkBdLaLzw=
X-Google-Smtp-Source: APXvYqwIVEdjdYYvHUScz6BfSMztLP/aYkYtQ+s8HWBaupKxuYq7Fkqjd1aenXpWKC1UX3naYzHVDA==
X-Received: by 2002:a1c:96c4:: with SMTP id y187mr4409165wmd.112.1578661420006;
        Fri, 10 Jan 2020 05:03:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fc89:: with SMTP id g9ls1529600wrr.5.gmail; Fri, 10 Jan
 2020 05:03:39 -0800 (PST)
X-Received: by 2002:adf:f70b:: with SMTP id r11mr3699921wrp.388.1578661419428;
        Fri, 10 Jan 2020 05:03:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578661419; cv=none;
        d=google.com; s=arc-20160816;
        b=emo8DoATL7L6W/q7IeaHeRphnQ9hv25/Tk1AaOsgC+wtCV6PqQY9W5c30CDVTDrwDm
         VEXO9cAHok3LYnUJnt58IifMaPpzqzjl4RDCP7vbPzZQp4cTOabfYrR9hwigA6DcQ1Mc
         Jp+KW/r30zdN9nj17SmfhiiWP+dHbeYFdTFUL1OIXHmS0NXmi3Y2hngnvJPAwSHnhBQ2
         ASmAOmvFplFPgAPLABGjN1nv1kbya8WW+7g1TnVm2Cflg5KZESur0mBOm8+9odUkzo/F
         Tn7QWJ8/xfy0V4YU0Unp3gOsw3tf8D1n+GR77JqB9LMaCg3b9+YM30R0VSzGqdLKBzGI
         BkIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=+JY3P9+bxZ151iX2wTw1DDAhd8KS6yfXT23whw5msfI=;
        b=Nuhbw2GgoQIXEAz+78ZPT/JXleRdHLud+EMlCM9yQb1qTNTkOKA99ey5RH2dNVa5v2
         17PbcxtVsrjtfsemLB+AsGQc2yUl8tTlLzQmI19UiJ5tBl0VGNjh5nKvmyEJmD5Yq6Yj
         07gJD+nyH20GW3RPdzLQF2ItfoyzTar99s41uzOqfOF84oTDFHMLUCmcn//oKezohdf7
         6TroQxxqGJzcXId0/sZB3jLSMHJLx96dC9qs1grvT4uJL73Uo76uqltS80KXIpXwT67K
         AnWphL2FkKls1EKL2XtvicmTKJmYsdzYOUDoK7gPY7vIm+EgUX0nm8o96//WRmXDg2Pk
         CCcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=IAc+gphk;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com. [2a00:1450:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id w11si110618wmk.0.2020.01.10.05.03.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jan 2020 05:03:39 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42d as permitted sender) client-ip=2a00:1450:4864:20::42d;
Received: by mail-wr1-x42d.google.com with SMTP id d16so1717972wre.10
        for <clang-built-linux@googlegroups.com>; Fri, 10 Jan 2020 05:03:39 -0800 (PST)
X-Received: by 2002:adf:e2cf:: with SMTP id d15mr3492298wrj.225.1578661418946;
        Fri, 10 Jan 2020 05:03:38 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id n14sm2103164wmi.26.2020.01.10.05.03.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Jan 2020 05:03:38 -0800 (PST)
From: ci_notify@linaro.org
Date: Fri, 10 Jan 2020 13:03:37 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <593489980.12316.1578661418507.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig - Build # 78 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_12315_126129596.1578661417862"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=IAc+gphk;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42d
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

------=_Part_12315_126129596.1578661417862
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig.  See 'Bisect log' in the links below for bisection details.

First few errors in logs of bad:

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[linux_branch]="ae6088216ce4b99b3a4aaaccd2eb2dd40d473d42"

Results regressed to (for bad == bef1d88263ff769f15aa0e1515cdcede84e61d15)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
26821
linux build successful:
all

from (for baseline_rev == ae6088216ce4b99b3a4aaaccd2eb2dd40d473d42)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
26821
linux build successful:
all
linux boot successful:
boot

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/78/artifact/artifacts/build-bef1d88263ff769f15aa0e1515cdcede84e61d15/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/78/artifact/artifacts/build-ae6088216ce4b99b3a4aaaccd2eb2dd40d473d42/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/78/

Reproduce builds:
<cut>
mkdir investigate-linux-bef1d88263ff769f15aa0e1515cdcede84e61d15
cd investigate-linux-bef1d88263ff769f15aa0e1515cdcede84e61d15

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/78/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/78/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/78/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce bad build
git checkout --detach bef1d88263ff769f15aa0e1515cdcede84e61d15
../artifacts/test.sh

# Reproduce baseline_rev build
git checkout --detach ae6088216ce4b99b3a4aaaccd2eb2dd40d473d42
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/78/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/78/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/593489980.12316.1578661418507.JavaMail.javamailuser%40localhost.

------=_Part_12315_126129596.1578661417862--
