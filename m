Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBZGG5LXQKGQEZTBPV6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6CF12564B
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 23:08:37 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id f11sf2195723edy.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 14:08:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576706916; cv=pass;
        d=google.com; s=arc-20160816;
        b=eoW7NmTg47U30LcIeX6Ti3m9OTd0Q5F2ddjCgsEFRuZpRB3hxKEZLQao7jIzkFHYd7
         q3Tpop6t0xLDT0iemDpknV6yDRlQkTzy2UCYxR0dc62YQ3WqjMuvC/11PFAebveTa0Yl
         SBjRXdhEyZI91vm8MEeFRN3W9APLE4AbrjpfoBchRSxq5c15j/hAfUkcy+DPis09nOt7
         J5f6p4svY6R+Mc2/3svqHgTQB/0simhpAKijDC39WOY5+68tCNNmakFM1h+q7OQ3fl2x
         HWcZghYvUrOiiWGoc1gvrCmqKBTGM9IqPw/ccnuN2iql4n8TLTZqNtlYlD4bmrwYCtH9
         8npw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=ThiEXJCGmsKUXqWmFP3/4tGMKhnioKVoL/te8NNZm28=;
        b=CWMl8bD1/d6hNELo/8/ktllm63imn7bRL7EC1bZCspn/P0Jz2rZ0Y7U2w3/qisKj4r
         X4JPEM7Z1HmSbTYxNlpCzr0t5F9z2HPYXisfvi3YR3ldA9bK0igJqOR5MTjGBiy+jgGg
         mTwHMLHps9wzJ9tV7AkJeaXAyI6NzleJSMCInIgDfaEcrHoUAr41On5i8VKirGyOv0le
         R6BlBExN0dvg4vg0oUG+ObpRzCrLlzV8HnzeLEOCpIMpB1XD6JKYNccr593YA4lSb5k6
         myS6OZrGPjZzCZFBLuX/jQO6O9a0JwpcxYQQ4l9JWk4Uzr0Qmbw/JmKxDqiyIpNzKRU5
         z5Rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=IiJbiH1E;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ThiEXJCGmsKUXqWmFP3/4tGMKhnioKVoL/te8NNZm28=;
        b=XICeYkthL6ujl8Ze0RskAIyzyy4WrOJfxUSTh7tb9IEms+76Ta71roztaTT7IVW8xH
         30FYLyusIVSS0hDWqef4ZH135mL0HRlzp3WH48YES6DDJAgE0hJYmczji/GkxCDAGC7H
         eeifvsSmiRzNqCK418yScK8OW/NGbmdgzKLZFFARZJH0o7gKqXvzeJ5cikQSE4gYg4fU
         C70TQD3Uu957ahqWhWOJvpbuZtbJStvY+rhws2+grOXs6BwJFG6t7uDNx7zu1UhDTEDv
         oyJx2S6T6qhSef9CCWZUas1c++fUbzShS2kH825einIwscjzQVf/Ivdzvh8O/PQBXqgJ
         x4Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ThiEXJCGmsKUXqWmFP3/4tGMKhnioKVoL/te8NNZm28=;
        b=V2VR7+Lt100NFfjteu+oLA0ZvcYp3W+eal8B/L4b5I7xiR9WSmvUv1PKSymc6VJXJ7
         +mfIfTnDF/rifZYViYqUsnCUR08EIFcZeVemuZCshzCR9NPXE3WG5Zf3wk1q/iNxR4BR
         SMbCKYl9XTgBjV7WIwsKyj7plaFyp9kSnaz0h0KsftT2KvQ+pKvicUvgtnnAkM6s457o
         S9rJKlbHDhqpRnGVsabqsrE9kpPW/bxtYFuzKByWerJ7F4rVHM2gDz65aFlsAbLo8Nb0
         fSWpsR+yz0TTg9Vla8MSfhI8P19m5oQrF+X0xY4kDP8fFYkSq7u60mnqdL3XAwvL11aB
         eiug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUjvMsH/TQO3KCdQ/Rwg8df2XR9EHzsPobRaIbXl1dtq6BkLrkD
	2PE+shJNYs7MN98AKmexZ7A=
X-Google-Smtp-Source: APXvYqzLbQnr8mDfbgXmZLH8XAO2ErQ5akIWRAZVF2TUKkXaa+U3e8PJ8gLgwl4yfOFFJcytZBtraQ==
X-Received: by 2002:a50:b876:: with SMTP id k51mr5291819ede.4.1576706916800;
        Wed, 18 Dec 2019 14:08:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:355a:: with SMTP id s26ls912045eja.15.gmail; Wed, 18
 Dec 2019 14:08:36 -0800 (PST)
X-Received: by 2002:a17:906:2359:: with SMTP id m25mr5437468eja.22.1576706916251;
        Wed, 18 Dec 2019 14:08:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576706916; cv=none;
        d=google.com; s=arc-20160816;
        b=fsucRPz/+ZCa74e9RLVwVcSM+GN8rkE1ThEAaVhBVHrcoLbTB+YZMICXPODwblJyYB
         IaUZIVuw7YOrepZ7bFMuDv4Pop1Wb24ZbkOTnMpL/OZyAWtS8RUD45IaJiXhMUmVcDVC
         mitD5tak3ttXM3WpYzC9K2SNl6PSnQyR8V4r8z3esjU0tKcgs0lOP5NeTEO/01FSuBZm
         TQ77RShFcY1Y9BF3pNql/XHrlTwufAWJeKgH190/PSuXbM0SL8ZVoYOZDwCjLbLMcQqu
         wdGa4DfKFmn6JazGB+6u2qj7Lpk7DPeiVJ9D5WuPuK/8hfiSDdevIyLzOf8homeJpufU
         vw1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=ss/5mNs9mw1+OAt/Z8XsSeuBfLd1VVXG02+48MDIRyY=;
        b=mC1e9Zfn4cau0nF0CfqIlSa+7CQ8gUywZW3R2jx15GWeDVQB1RIUuMHnlehY2etYlI
         U4488AniYQUmbsreoqBbLnJVqqmzxVPuBKcOXMfqX7c903M+Zv0XPj+0HTp03ypFeIQH
         pXIcDtMqJBolpdDmsYeaGFl5HIi5qFzfxsUSDDtIBLvj6NxZF7ai+DLdt+9NOoj8Tt/j
         zuA0C+AdNxL0oEUuKLsz0byW/1IBU+6bO/cX7T7X+xUganYkh5q9nJf+iAj/CIZv4w9c
         DzztUe/+vIJK8HTqge/tNaJrkj7fTOSJT0SNPw+AiPc/6tHmLBZsoHGDvTf0KWgyiqp8
         ohpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=IiJbiH1E;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com. [2a00:1450:4864:20::433])
        by gmr-mx.google.com with ESMTPS id z20si133374ejx.1.2019.12.18.14.08.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Dec 2019 14:08:36 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::433 as permitted sender) client-ip=2a00:1450:4864:20::433;
Received: by mail-wr1-x433.google.com with SMTP id y11so3939599wrt.6
        for <clang-built-linux@googlegroups.com>; Wed, 18 Dec 2019 14:08:36 -0800 (PST)
X-Received: by 2002:a5d:53c1:: with SMTP id a1mr5055306wrw.373.1576706915946;
        Wed, 18 Dec 2019 14:08:35 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id f1sm4186044wrp.93.2019.12.18.14.08.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Dec 2019 14:08:35 -0800 (PST)
From: ci_notify@linaro.org
Date: Wed, 18 Dec 2019 22:08:34 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1495406693.5628.1576706915426.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allyesconfig - Build # 55 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_5627_13575332.1576706914597"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=IiJbiH1E;       spf=pass
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

------=_Part_5627_13575332.1576706914597
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.

First few errors in logs of bad:
00:38:00 make: *** [vmlinux] Error 1
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="fca4fe890ea0352f7e9e4bf33ffed287946ff59e"

Results regressed to (for bad == b9c5ef25038d14f0e02d4c5077bd3edb2e577034)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18304

from (for baseline_rev == 9065e0636036e4f8a6f65f9c34ed384e4b776273)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18305

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/55/artifact/artifacts/build-b9c5ef25038d14f0e02d4c5077bd3edb2e577034/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/55/artifact/artifacts/build-9065e0636036e4f8a6f65f9c34ed384e4b776273/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/55/

Reproduce builds:
<cut>
mkdir investigate-linux-b9c5ef25038d14f0e02d4c5077bd3edb2e577034
cd investigate-linux-b9c5ef25038d14f0e02d4c5077bd3edb2e577034

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/55/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/55/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/55/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce bad build
git checkout --detach b9c5ef25038d14f0e02d4c5077bd3edb2e577034
../artifacts/test.sh

# Reproduce baseline_rev build
git checkout --detach 9065e0636036e4f8a6f65f9c34ed384e4b776273
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/55/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/55/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1495406693.5628.1576706915426.JavaMail.javamailuser%40localhost.

------=_Part_5627_13575332.1576706914597--
