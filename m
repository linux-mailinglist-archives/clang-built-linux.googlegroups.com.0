Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBC4RVPYQKGQECKCVTAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AF0147ECD
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 11:35:56 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id g5sf532237ljj.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 02:35:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579862155; cv=pass;
        d=google.com; s=arc-20160816;
        b=nx72VVRJX1kUwNn4NsygIVKxIfDK761Ws/7J9exrvZrcmqMsKu7l9z7eRll+nUdF2z
         gMvjnkCm76m3qGnRCzmwdtxm3AmIm+R1NRz3TKiW05GHWrMvC+DrPnFXrqtUgJtaMyjp
         Zh74VK9aqDO8sbF2jlFw7xBGfhMsG5R43OVrnUmN27MJ+AJbhUQExNIMzzISHS8/C/yV
         sRo/BXCnc1DKe9G4fY5mtvy7fPFUQjqDVZ2Etg56IBhHRdqSwzPEabCGpmlDcgXlF48E
         CKpqIQcGFiPhVDfWAd41UK99difF4EVUQV3u0jyZRcdOR7/o6oK1wjeG9xd85Rs2bpGc
         1P9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=C3pEHZ2M5M11I9MqFyYdrM94b7QHsmLIwk/YLomkbtg=;
        b=q+TxupYaX1fCAPyfR95LpEWis/PYBM8LXhg/eMEi070mv9ukQSJb9DgdXxaoa5xUM9
         +6WtCX+WfgfbkikSOtdyjGwz8P1IiRz8mHyeriI7daEP47vboU2fxlvXBXN0rvRWR2oV
         dRyp0G7fhWFJvV2OQLOHYIw/w7XmXLEL2zIWIczjiKgNZPQdmIkdV2OGFdalGORkAjWS
         05z3uVRTyfENvGPA4IQKyibLhiMmFSzUdQowGYf4OChoRzT/EusYe9uXwCJGUcJX1pbQ
         G8gOAwi0kBGHTpH9WmznXgS0C2NL704jRFVPRyYjATok4qk3vOpss2nkgsWMWsl+WxsD
         Dcbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ccXgDVZY;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C3pEHZ2M5M11I9MqFyYdrM94b7QHsmLIwk/YLomkbtg=;
        b=HZbiMtzvGWJJkas05qnv5vl65lngROveQqxEqwkqZ5QcJa+/eOT41cFMTPmtfh3Jmd
         7IETb7saUEGjN8daB7w1rFAYgkj3hEOj6DaP96f92/WDCQMPyyTuGhfiINOgSBMtH4MP
         PCeQweUhnKnL79Dq6cUarxZlMn0GodOw8oWZRaexoEeo8NkMsaGVGSL2qNUNc9A4BJSo
         Hf8j2SiNkEpUfDMMhTZrP7wuW94groOhO+cJGmhk4aLQloNSvnObzFi/5aGjLgyt96xe
         6W4Wh/hzfO8OOsz1PDRZtmdD3QAWwKRv7VTdl9VgvHHeU8F/sOrnqpwQ57Bmi4VxF+vZ
         tgMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C3pEHZ2M5M11I9MqFyYdrM94b7QHsmLIwk/YLomkbtg=;
        b=JqX7acF1GH3tXotIj1s5vA9TXW8ikF3GdMPnKfgAZEVvsa+1+56fux0/0/PIBxH8z3
         vkpbhgilaafnwFTPEkQi2MoIWuHxOsRWw2IAMoIotSGM7jN5z2C6VblfnXkkDIOCYrRB
         6aiuhI85L1OSzIC1t3hCI+e8AfC9VNFU9ZSUgnzxIeren3syuMhtn3Q9jvBi+j2ciX5h
         tJZYvkvgYg1GpiplL45/wMu2eWOYSpOKwtXlvtJs6EPDTJ508lvlMn/PdtEC+vD3q/Y5
         TOyxdHpKo6Ge1UDy572bBYefDxeeKfsQfEWxHz6C852s7n+KWUpwVWx/NGholB8ICwcc
         BPTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWN+xgHYLyhp39f1+D/wSwtQbIwr1Ucq+pbrLQgzAHn1s/JrPgK
	AuJp07AHRZqtKMjUpEPmONk=
X-Google-Smtp-Source: APXvYqz2O8CM2Sd00GKQjPMk8KwFCTWPYrCaOBrxXS2qFZtT+ESRHMXgtQCaJngC0aZ3SADyrtFIIw==
X-Received: by 2002:a2e:9918:: with SMTP id v24mr1902916lji.130.1579862155829;
        Fri, 24 Jan 2020 02:35:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:518f:: with SMTP id u15ls192326lfi.3.gmail; Fri, 24 Jan
 2020 02:35:55 -0800 (PST)
X-Received: by 2002:a05:6512:15d:: with SMTP id m29mr1101851lfo.51.1579862155035;
        Fri, 24 Jan 2020 02:35:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579862155; cv=none;
        d=google.com; s=arc-20160816;
        b=kma4vQDyLnbxDNiYbnECZjuIHrtmnQsdLPySuAUop3QpHsWc+Udkq4uITR7CXqzXJ5
         qWgP2UhBTVlC/mNXQ476q9Ksg0nWfiC9kHicuYqVYeT3AWTwbnEMB6/MqOZ0/3IbYscp
         GqW6wrIop84uHzEsUmkTCUXokrm+it75gR/6RFQVgE9sFRDw26QHnRg1leGiNTTBMhzS
         X1SpaojrXXvB2hIfH0W3DhMSo5tPdgXVdp/V7eKFbx/VWETTj0QczYqZfZwhom3KFbJN
         IgQ5y1bCAC3trFu6cltJO7RY8Gjl65TklAtQJTdp6AfnH4yRPzcKej5XKgaytqMGVV88
         DsiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=BfyGcVLrnwJuMYNE+Y6iVKTXQJuozy0ScP84BuwGoD8=;
        b=Q5CnEcyPqHdjEznR6QpqkmIsgWJ+iSyBE5W4cEE26GXHwnN7f8e4h4ofRq+ZMkN5Ey
         WpfXEyzaL7f6MNJcc0z24xdmooFV45MqvhvZgjc3puCGIZvRxtkmXVli8E8/mysTaW62
         LYKhObdwXkPGuwjUF0poRMvoIF6zBspouryd9QOZPgaEkRhAVUEvzenWLWOtz+WHlI2o
         RSoK6BkQi0qqJbSVrO32NzkxAyr1Js2ugMcsuzobniWyaDkoURPYXEcta2e52uuVQ+Ar
         LPw+GxBM98ucgIPq1dNF25RJKfjE6HGotAz2k7ntXoEBHdwpiEi5/HqW6FINSAoxZ1l8
         4yfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ccXgDVZY;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com. [2a00:1450:4864:20::332])
        by gmr-mx.google.com with ESMTPS id p20si262444lji.1.2020.01.24.02.35.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jan 2020 02:35:54 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::332 as permitted sender) client-ip=2a00:1450:4864:20::332;
Received: by mail-wm1-x332.google.com with SMTP id m24so1179983wmc.3
        for <clang-built-linux@googlegroups.com>; Fri, 24 Jan 2020 02:35:54 -0800 (PST)
X-Received: by 2002:a1c:9ed2:: with SMTP id h201mr2631976wme.114.1579862154609;
        Fri, 24 Jan 2020 02:35:54 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id d16sm7746695wrg.27.2020.01.24.02.35.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Jan 2020 02:35:54 -0800 (PST)
From: ci_notify@linaro.org
Date: Fri, 24 Jan 2020 10:35:53 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <654460252.842.1579862154104.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allyesconfig - Build # 54 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_841_1026954060.1579862153541"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ccXgDVZY;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::332
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

------=_Part_841_1026954060.1579862153541
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.

First few errors in logs of bad:
00:49:34 make: *** [vmlinux] Error 1
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
18425

from (for baseline_rev == dbab40bdb42c03ab12096d4aaf2dbef3fb55282c)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18426

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/54/artifact/artifacts/build-41539ebf9bacf9a9102322ad944990f5a38f5538/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/54/artifact/artifacts/build-dbab40bdb42c03ab12096d4aaf2dbef3fb55282c/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/54/

Reproduce builds:
<cut>
mkdir investigate-linux-41539ebf9bacf9a9102322ad944990f5a38f5538
cd investigate-linux-41539ebf9bacf9a9102322ad944990f5a38f5538

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/54/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/54/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/54/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/54/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/54/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/654460252.842.1579862154104.JavaMail.javamailuser%40localhost.

------=_Part_841_1026954060.1579862153541--
