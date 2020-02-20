Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBOVRXDZAKGQELD5734I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5C91656D8
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 06:27:23 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id r1sf1222839wrc.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 21:27:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582176442; cv=pass;
        d=google.com; s=arc-20160816;
        b=X2XNey4SsUNYnAyfqEr5CIUov1TNDhpuzNW1qWV3qi5uAMBN6uL+QE+Ckp7Zdmd+0U
         tAwR9LwV0jK5IgdnFk6o/p6Kt+osE0cn+KIsiqUX/VMR0iS3eR85NbEE/gQ2xbRKqmEx
         FHCPnV5P7m1IsI4fmLxxnMxyH1riMpBfeqjxFVQ11ZonBjiyxSaH24coqFNR3lNFNF5H
         g4EKL7YuBJP9m8fsS0MTDlLgk7dqnmZ5xrvcCBxOpc5IdiYQ/k7JCHgv1upBAHoiwLV+
         GjRwhNaKh72QL++qw4sCLAhMQLtP6HRvaMna8VxAYehlPuPedNx1w/+3Fi+QHFUNwTj6
         BvIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=7ANs97epW9AKI646N0Lu2TUpy4op/baxFAT4DBV8xRs=;
        b=CAmBMMvFJRTfAuxOAEXxvY82tGAk9CNO2QKm9LbM9ygsAay9YEPJ+TxFGxKutyl4S2
         6aBz1GYhHb06Jrg8S77j6pnZfquY0/YNHKKCuoe5jdG4Ds/iLvQ1Z2qtsRBv/iaov6FU
         vwdV7K9PsOo968xZ/yzEXK1BAq3+q8ikIJUpLl28D4+QgQAphPxvp5L5LeaDEevaxgOy
         Ogcnf8OrFvk0u8ZYVgwm5NV6B07Tq1Stu256+xEbwZ39g+H+dru3Mad/2NmlH8VCGXHg
         1CSGMzJgw6Hm70D49ZtMLPtefUGDqTX0hzqywOKW4LTZC3MqwnEBA51t8PH2H3Y3o1H4
         T8jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=XaaKELOb;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7ANs97epW9AKI646N0Lu2TUpy4op/baxFAT4DBV8xRs=;
        b=VcQQJzq2W3BEXAxdlrQNkXS0Z26ahDdKIlJAtK9MWUjp01O+5uQHBavYqg3WtkButl
         PXYAMJMlaBCvLe05wYdL7Uwo/jOiKlbaL9WHuFq6tce91wajUTlWpRsSKi6+y3RG9l+w
         hyTkP+o4YGzeff55Ef5ncsmUsgBQ1Jb6hkHOVGxngj4FjtPB8qx/oPULetDi7/Eqb8L+
         1rBiUYqDIhHlVmSEZlwJjdW3b2X3SCEP19w5g6OE2nfl3FiQ1Exo7R8choDkoa0qREJn
         MafHx/KFWOXc8IVZY79x9k9yCqTiNY2Dd7wVCWx6Bz3tlqodvkArYRa+hyHbnGWvAQwA
         OhLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7ANs97epW9AKI646N0Lu2TUpy4op/baxFAT4DBV8xRs=;
        b=OkfoRKsy+vuhfpgP60R8lR1AGjqvKtvBjEmyx1dBAdirbi11ubPNBG50oVZpufLMvc
         sNiRdJo092Oer8wNzyYmJuGfnv+jqZn1cZ2IOBAgYlttN6GOHxQBTQZiMQppD5VK/K66
         vQD2nU7VMPNFRBT2BQQ7S8vFXb38YJvyzfxdrpSGbCj7hgfMt6lTlw8IwWzr68SI7R/k
         LLU/dUDKih1gdyHp5MlVSkB5LlAf3oOpTfAtBUXweQu5vQGzRXztDfIvJcMHypsFhg9+
         AJHrKG8oRERA3JDzYp01NXDV+P6iHYbT7miWazfyoerjvzyu1tl1QkFF88WlomKcVuqU
         XD9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVVt2Xaj6+OSEpC2HDtndUQCyxZdyF6GwmhhxMCD5bzBLUD11ax
	ZHPUis/Efrel/tyvPGgSyB4=
X-Google-Smtp-Source: APXvYqy87TyytP0RxE5XI6yNgdAobiaX/3AIIq2cri09fOkFUxa8rxlOvi4P7dV1xvaLmO7EF8V4vQ==
X-Received: by 2002:a1c:a553:: with SMTP id o80mr1982372wme.94.1582176442663;
        Wed, 19 Feb 2020 21:27:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb4c:: with SMTP id u12ls11042416wrn.6.gmail; Wed, 19
 Feb 2020 21:27:22 -0800 (PST)
X-Received: by 2002:a5d:4c84:: with SMTP id z4mr41313389wrs.423.1582176442147;
        Wed, 19 Feb 2020 21:27:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582176442; cv=none;
        d=google.com; s=arc-20160816;
        b=0ccnH9NBugUvOVZjYG6MKhWD6p9uypi5Ka7JRJgYIU3mO0TV3IiAQzngQ4oeEmiEla
         RJyn4zleHhPPTL+/ZW7W5E2Y5TH44WbpDcAs95bWn4lRcYxOsIO2XB5GyWhjUkGhkqJE
         EI9ea6L8AJnknpsxyhH4CQjWxPcLVsoexg/B42S2OIcRdMcLEsfdwLh25y1YW/rtBJ51
         pXzJQiCTjovtGG/xJ1UghFIPa+LWywKa1nYpax+uqLR9705OwhdCXsnlYF96r8/nzM6S
         nZiXkIubQ69i7Ydpr2YBYdBNlCXCuju4SWzLsHqr1+ryfzuGPasI2aiEnVCUYdmFFy5o
         1A4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=My5h6zfEcXhndRp6TI/R/wXV795jP6SRJ1Vf22fgY8A=;
        b=AzqpPenrD1I2Tvegct9WwQ3DomwLMPtMLZQOmppZ28MU2BS1xGfnQ/bLQDgmZ61ElY
         J2zhORSRtMCCHrk6JWr6O+aukSo2yxnlibbhC/2+eO3M2zzmKvlBSgaxkhDtgK7ZzTy9
         QgPNk0rzjDT3XBXx5uqRE2HkOJjzW3zOhVXsp8CxEIxyBoiuPg/GIsnoVCeDjg7yB4t6
         fWpaKx+RhUhQYtWomfCZpQFYt12CgEw2nnNED+9XnDFY0vDsykU7nLmfxA0Rif4Ja8SR
         rPaPwidtoxOed4rwGq0i8exaUBhKr+ckXecJbWZ/fMXLssXt5Ov+6aRkrelDl8haPEfZ
         8KFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=XaaKELOb;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com. [2a00:1450:4864:20::435])
        by gmr-mx.google.com with ESMTPS id i18si98339wrn.0.2020.02.19.21.27.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 21:27:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) client-ip=2a00:1450:4864:20::435;
Received: by mail-wr1-x435.google.com with SMTP id u6so3207367wrt.0
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 21:27:22 -0800 (PST)
X-Received: by 2002:a5d:5381:: with SMTP id d1mr39390942wrv.259.1582176441717;
        Wed, 19 Feb 2020 21:27:21 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id 5sm3015997wrc.75.2020.02.19.21.27.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 19 Feb 2020 21:27:21 -0800 (PST)
From: ci_notify@linaro.org
Date: Thu, 20 Feb 2020 05:27:20 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1692792728.2838.1582176441258.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allyesconfig - Build # 58 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2837_1455412010.1582176440627"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=XaaKELOb;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::435
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

------=_Part_2837_1455412010.1582176440627
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.

First few errors in logs of bad:
00:29:58 make: *** [vmlinux] Error 1
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

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/58/artifact/artifacts/build-1d7f85df0f9c0456520ae86dc597bca87980d253/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/58/artifact/artifacts/build-b1da3acc781ce445445d959b41064d209a27bc2d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/58/

Reproduce builds:
<cut>
mkdir investigate-linux-1d7f85df0f9c0456520ae86dc597bca87980d253
cd investigate-linux-1d7f85df0f9c0456520ae86dc597bca87980d253

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/58/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/58/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/58/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/58/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/58/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1692792728.2838.1582176441258.JavaMail.javamailuser%40localhost.

------=_Part_2837_1455412010.1582176440627--
