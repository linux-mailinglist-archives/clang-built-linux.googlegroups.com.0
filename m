Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBZMAW3ZAKGQEREA5TYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E98164DBE
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 19:37:26 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id d4sf582503wmd.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 10:37:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582137446; cv=pass;
        d=google.com; s=arc-20160816;
        b=LRGgS+iKUb/k4ZBwCMC0BEtrcDJrEQXIK8tBjUWOy+i4t5JuF9s9hf1l5JxAa+OBe1
         kQrdS92sjfHZ4KZQv1LoN1gfLznOw1qApUvymOccWFg7h+8V4QfVhf31xGr5T+9dspRk
         lcbWKlKbEmFq2gftL5Dju1uw58v/4WM7z0LAuQTWXup/E0D289PeSxk/pCdqKsbZUmuH
         qDcw6TjJSU2VXVv4OtzsmVlPQvmZ4Msx78sBSIPAKS59zhRWqHU2ZNBNgX62xq08ynHR
         1g8wxWo6zeKyJBf0Gyyopqah7NjQLas8Fhix05DZF1KLBZHWtEYL5mqdkrMW4k4nj2MJ
         DOXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=mIK1nkphHC0qJvVd6+nKfz5EK9/PbvlDXGDYU9Q0HXk=;
        b=mz9qUJwXU2sDTeCOe0q00MPHCfnbzTYQaMPsISTjVm4uVxOXg5fxAeCdB4l7U8FzV7
         IwnU1xSU6wVYmwKO62yYgbPMlCj4ulU0+n7Ekx9OJqiIh/kniI43z5dbg0Zuj4zkDc0d
         cmK+8LPj4nO/gqhySxfJvozurML4sCGiMeil1JVZR4Gpk2EPD2NysgDJlKTu0u2sURnt
         otBuj4weHCFjwxyUUCGyFEJ+CMiMIs/9dmmXlRvwTekSiD8oUugBZE4TFBFgZaXnXZsx
         Ltn/xcNU67Ao97LYXWrhQ7oKv8IKa/9ySA6g8Jbsag1UUpITLCUhWy2RmsCVw4y94lZ3
         XSaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ErAK2LFp;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mIK1nkphHC0qJvVd6+nKfz5EK9/PbvlDXGDYU9Q0HXk=;
        b=Lk7GLZq224ff60zqlm/5icIfR5tQ7wrPx2p3zG7DC5am+bQLdrgSZBrVke0j/4qvMR
         nKHt85fXIEvdbk0swJ/cDOdyN4btPpVQbDODaKoe9RilboizHPyNDYtKVsxzTWovm7aq
         UaK2XPpEoSW7UIPbrekMx56TuYzggfynLavWEgpdJW4As45jj58ujIZ2TPo9QlcRKcPV
         Dg4Zgfa20Af8CSGruIIHJepxP8xGRbcc3+NAEdxu0FKBpEkAIxmlos4Uva0oxFhkksho
         aqhhwNKG7aGxfBuQ9kUlcoG/puJ8CsntcR0dwGcaVRPKccQVZZAFNjTrs67nf1e45eJU
         o0jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mIK1nkphHC0qJvVd6+nKfz5EK9/PbvlDXGDYU9Q0HXk=;
        b=liL4Pcz8CtwnZpKcRbnbWwJh9SYSycHYirtGjJtLb29G7lgNwT24/VQTguQ4SYwJcK
         71mUcP0oioZxwJViwGYwWC4FmzTnK2Kj/fvFBoNF/BS8/hw3aCTsPdHXDsWiUe25crAM
         f+/FqvUzxsGq1LfU67A+V+sGeI5Mn9S+8PmgeiTAaIIWiJmrsmmKBrFMDmE1zzcaTO2I
         m+UupxqVrqMAtjnUV55HXkhQtdq23Tr/JKzpeVG8xPJjhXa3xP5EU5mwvPnA1Ee8znFb
         9JLa2FEQaV66YctaxwvrEFNDctns0E1jg4HEr/McLEN53xjh9eFcgqXpbE2lpML5JMhH
         fQwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVK0W+zSamrKpzZnA6ms174/1j2qrXHQUhwpObs82bfAsAlZF9f
	m3IXDifdBspq/+/8TTwaZc4=
X-Google-Smtp-Source: APXvYqxWhb/MXU/eUHHDTs+P3t1QpC1Dpi3bBIMm1qHaTxtmvnLwzUti1yhl/ow1xbhonFpL+nXQDg==
X-Received: by 2002:adf:e2c5:: with SMTP id d5mr36910469wrj.165.1582137445866;
        Wed, 19 Feb 2020 10:37:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4141:: with SMTP id c1ls10225008wrq.8.gmail; Wed, 19 Feb
 2020 10:37:25 -0800 (PST)
X-Received: by 2002:a05:6000:1201:: with SMTP id e1mr37869955wrx.386.1582137445332;
        Wed, 19 Feb 2020 10:37:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582137445; cv=none;
        d=google.com; s=arc-20160816;
        b=0P4a5KBbRgZFoihd82SXyOmZlC9lH39hsvjsVShmCPfSN9QKmY53/0DmBBQspVJ3Jj
         NAIAzn3QxY1Dw9FV4CELUE1GqTywSxHL05xLrhj103DlvnAN4M5BqtcIpz0SrRm0mrWJ
         cT5cwCxXRlTyzo0HDGB466j359a+BJWbd6sY7Hwsc/FP23IjzUdWrd2bic32VlS3PmJv
         RgS5dIpPq3qP6cJW3T5KHp3DyGw//bP96OjJDylVxuROk9VbaUK8GD/zk/Z4iYmLUPAF
         LW4Bo+WQ72hO4uTk/7J7xNE3xWdR6BdKa5wbypgRmMZf6gViHPxTZCboA6kRao+HsC74
         8hsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=avig6XHBdLYGDgh7tbZJuGBdTU+Bbbq/bjeHotWY3xs=;
        b=ce0cn4hJQGje+CbJBaxFNHltHf+DgTcNbD3C6rrezTlRUeVQ60SYyHJrhfLBJU3j4B
         NJXux0OH5RWq4+1C3KRUyrBjDu2yI0zRlb+YxvW6YfshCsl3a+erMeDeUssD6bM10Ls/
         8evEBY296R95gV4Iic6rkKD1WvPGuTCOheoc9QU9ULdyUpqVtPychO/7AUj8tfvWwd9w
         RMk2Rxtw2EOt0qFQi6ulI7JZ/LCWkOvAVU4uPs6QsuQRKCuXZLzTs8/PkhKamaMzUCRb
         9AMh/w71UHCAn9Vej6iesZ3LnQL+QhAVXDke57QnTaZJkQ7/Q9Ut7A/eW5McmWr/PUKS
         5Vyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ErAK2LFp;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com. [2a00:1450:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id e21si26492wme.1.2020.02.19.10.37.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 10:37:25 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42c as permitted sender) client-ip=2a00:1450:4864:20::42c;
Received: by mail-wr1-x42c.google.com with SMTP id z3so1770404wru.3
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 10:37:25 -0800 (PST)
X-Received: by 2002:a5d:6191:: with SMTP id j17mr35634544wru.427.1582137445012;
        Wed, 19 Feb 2020 10:37:25 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id w13sm808737wru.38.2020.02.19.10.37.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 19 Feb 2020 10:37:24 -0800 (PST)
From: ci_notify@linaro.org
Date: Wed, 19 Feb 2020 18:37:23 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <479216940.2727.1582137444451.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allyesconfig - Build # 61 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2726_525614844.1582137443789"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ErAK2LFp;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42c
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

------=_Part_2726_525614844.1582137443789
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.

First few errors in logs of bad:
00:40:48 make: *** [vmlinux] Error 1
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="02815e777db630e3c183718cab73752b48a5053e"

Results regressed to (for bad == 1d7f85df0f9c0456520ae86dc597bca87980d253)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18434

from (for baseline_rev == b1da3acc781ce445445d959b41064d209a27bc2d)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18437

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/61/artifact/artifacts/build-1d7f85df0f9c0456520ae86dc597bca87980d253/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/61/artifact/artifacts/build-b1da3acc781ce445445d959b41064d209a27bc2d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/61/

Reproduce builds:
<cut>
mkdir investigate-linux-1d7f85df0f9c0456520ae86dc597bca87980d253
cd investigate-linux-1d7f85df0f9c0456520ae86dc597bca87980d253

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/61/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/61/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/61/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce bad build
git checkout --detach 1d7f85df0f9c0456520ae86dc597bca87980d253
../artifacts/test.sh

# Reproduce baseline_rev build
git checkout --detach b1da3acc781ce445445d959b41064d209a27bc2d
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/61/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/61/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/479216940.2727.1582137444451.JavaMail.javamailuser%40localhost.

------=_Part_2726_525614844.1582137443789--
