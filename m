Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBAOK5TXQKGQERQOD25A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AAE125BFA
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 08:21:38 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id w3sf2918516edt.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 23:21:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576740097; cv=pass;
        d=google.com; s=arc-20160816;
        b=1EbzNuAM0bU+iN4+i84oyeEhzsizOavVIzJMl2rrueH5CUWqICqWkG8n1sJPQOTJL0
         teVA59pZb0mpdKmKx9WAY6wsPflgxWWhlRPfdNrOHpqNbmXnH1PWwTFUa+cRvoBF6WXB
         y7aUu6S1TXXWAHEZU50CbBaJnyH0BjWVKpPmRJgUDojs8WMTXH97YJlI2kkOPPDGv2et
         8i6pMUXr4xZ0T7MOZAlKa9ikEEekRm1QHSElpTvvdS0JM7eAgfQuVMqbIioF2b1LY8mg
         kvlnN8TMxZh3yukjEKen9/7fKo6ijBPVzgyvZOcb6RIEOdYKhC1M8WPcivRFCz3n+oCP
         Oo1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=Av2TpWR8a2wkJYwDvR8zFds9FewNGeUz8ffpwP2EcHo=;
        b=H3VsI9LjYzaRErbPE6TePM68pS/VExSgsPb1rncXiZZ2nkCxcWE+l4nKtvaF3QwOhx
         7Fcb79KhvxBoSJjNhuW03j911x8rwjDpQ2T4ncvoW5fEbp95AOtGUQt2pPLp3vo3J03Y
         CWm/4AX4oUMIRzQwU4ldbZsb1wCDokyoAnuKENe6LVLFECcFFi37jSnikOW8VFEKgXB2
         +GY2DdrtK6N/9O9igzIv33dR+1GqJQU6uAO9TXmIThdLHp92EFczCtsvwkoCMW2sv7xq
         /eCuyqQ3NXE34fg2F/8qYeK37q2yg9xGQNdiAtPBPQ3gkFgWgw4ukNvROPZuA5uKbIgr
         sG+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=SB5GHTA7;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Av2TpWR8a2wkJYwDvR8zFds9FewNGeUz8ffpwP2EcHo=;
        b=c6/39kQ7JNxtDD0kM5NL9Y03t+tWiT3tgr2MTysQVFMT3lgSDhmPYtlfhECSe+xXho
         X36tGcMVoC2/bzpTk7xZkHVXD6FoOiqmUAdXiIA+NVQJmsq4KP+D5Hx4yZA4MISHmWZA
         NNo43zM5B1JvL6m73DA66wgz3gHmRybdkoEavklqTVgFTrevb+bebL9gO9ypUYnkMZrL
         brRRd/+vaTW25C4PBTFV36L7ErR7RYzVHkoQKGthe4oKNNXY/O3eqeHU+lmoqgXDbEVN
         FcC7lTiDzgi82TgONnAswTkGavvLYfmK292uQZQp/fBMuwWl8HSg645bW5A6/ht7fO3B
         1isA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Av2TpWR8a2wkJYwDvR8zFds9FewNGeUz8ffpwP2EcHo=;
        b=fFGETCGFMLOJAK9AMsjUKWzMnVWwC503ZB/b1yvlKIFLQOh3dIj6yp/KnVtKJbMOaF
         QIvJLz5AdR2ferTsqmHdyqB5NZfilbIoCp3VxIjzFfDdg6L/l5GLcl6YYWULRP4sbyus
         j0PwVJ2Oho7LE/t5q7LPQ0eLFhgKTNtoIL3V4SLQxLjTNwDOkPyIpz8KvUox2G8grwio
         zF2SqQta67TDt0Ze4+qbtVv/mqnFMbAU92uKaAdV4qCxASfgjo2AVsI9T1nRL+xDSHD1
         E6RIE3tSdSOaHIXgkTo+8NExibqRO4pNNHSQMmzqFjxsoh0czaT4H4XmmR/hLTY51Atd
         u04Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV4KJuKye/BQFB2Khv6+Qsc2+4/8ZVwBtv3dfXdggHWXQHLR18I
	/OlIhBTG4+tha+3YD6TNVg4=
X-Google-Smtp-Source: APXvYqwiipkP+2MA6uID1Xx126T+l2O6E0ORtBXuqY9bCRLWmxtXp1ttQSpeRkzklVY7oAQ6J4G81g==
X-Received: by 2002:a05:6402:1611:: with SMTP id f17mr7405858edv.266.1576740097768;
        Wed, 18 Dec 2019 23:21:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:9558:: with SMTP id v24ls1089075eda.2.gmail; Wed, 18 Dec
 2019 23:21:37 -0800 (PST)
X-Received: by 2002:a05:6402:17f2:: with SMTP id t18mr7678565edy.9.1576740097217;
        Wed, 18 Dec 2019 23:21:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576740097; cv=none;
        d=google.com; s=arc-20160816;
        b=oVnSahT9y1xueo2uFfeGw+gRFlXCPUmIyD8BqMYMZkUtWiRfMiUUBziV/kSdWSrocN
         JdGeqEyfvfUemt2bet767ihwmEl3U1bfr3xpetb/mk6NEZ9TZzv4fkGhCctyh4uslMkK
         h3Q8wZ8pmNvwFiBHE1BM1F8YE/dWEOXq/b9U63N8pavHB948rsQ5aJmAbG6/ly+qTvMK
         hofvZIHUmv7VfxwPtr+XfYdSoKQxsIkQGF2wLmLTbBdp5PI/A+6A/dn3r/pcB7McK1zZ
         zaBZBwH2W19/vrfvhgpZApnxjB98ic85IFxCSUxloC0u6e4JpAmU/5WxDX+Pv1McUJ6D
         iwKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=zLDkj+xubBhRDXZftPjdkf0btGeysowyJHLr7uoQlq8=;
        b=TRvczVHH5u9FCN3auP0Q2agG03kIx+Ef67MgHy0lqJGx2JBtrN91ij7YAeNNViyUSP
         Lma32du+QW4f+EGPXB5d/P5KwqNdxaKDnbKtmr0SeirKFavgMUgZ4Zs5hk+3bCJqApUY
         dfQvf0PTsFI8pCURK9zk+eYvWkk9/W1UzfQLn0oWnsyBoyGUdB0RAMHauK+E3eDnzlOL
         lyTjzpFGQjFCMIyQfaYzmYfXJdbFdU92h2VuFERG6tpdmCKQ4yGAAYNHwpaAfVJwDe0V
         6K2ot5J7xJf4Rry3Rveb+qJGKNs+9P7L9DubbcahHT/BIsacdWE9dosJR1zIojVk3imI
         jwWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=SB5GHTA7;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com. [2a00:1450:4864:20::32e])
        by gmr-mx.google.com with ESMTPS id ba12si170745edb.3.2019.12.18.23.21.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Dec 2019 23:21:37 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32e as permitted sender) client-ip=2a00:1450:4864:20::32e;
Received: by mail-wm1-x32e.google.com with SMTP id q9so4324399wmj.5
        for <clang-built-linux@googlegroups.com>; Wed, 18 Dec 2019 23:21:37 -0800 (PST)
X-Received: by 2002:a05:600c:224d:: with SMTP id a13mr8186994wmm.70.1576740096934;
        Wed, 18 Dec 2019 23:21:36 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id a1sm5419082wrr.80.2019.12.18.23.21.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Dec 2019 23:21:36 -0800 (PST)
From: ci_notify@linaro.org
Date: Thu, 19 Dec 2019 07:21:35 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <482888120.5748.1576740096447.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allyesconfig - Build # 53 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_5747_1704714338.1576740095870"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=SB5GHTA7;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32e
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

------=_Part_5747_1704714338.1576740095870
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.

First few errors in logs of bad:
00:37:14 make: *** [vmlinux] Error 1
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
18295

from (for baseline_rev == 9065e0636036e4f8a6f65f9c34ed384e4b776273)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18296

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/53/artifact/artifacts/build-b9c5ef25038d14f0e02d4c5077bd3edb2e577034/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/53/artifact/artifacts/build-9065e0636036e4f8a6f65f9c34ed384e4b776273/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/53/

Reproduce builds:
<cut>
mkdir investigate-linux-b9c5ef25038d14f0e02d4c5077bd3edb2e577034
cd investigate-linux-b9c5ef25038d14f0e02d4c5077bd3edb2e577034

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/53/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/53/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/53/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/53/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/53/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/482888120.5748.1576740096447.JavaMail.javamailuser%40localhost.

------=_Part_5747_1704714338.1576740095870--
