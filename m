Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBGVKTPZAKGQED5FM4UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A06C15EA3E
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 18:12:58 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id l1sf4405547wrt.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 09:12:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581700378; cv=pass;
        d=google.com; s=arc-20160816;
        b=UcVJh3IPn4be7GfpqDylNDAyPuBfE47yiv1LuNZPz/0RFi+8i1glfphVBoq2D662HF
         FsUEVN/hOgmNOJCPH7Af0DV55Evm2R2tGaascd/1atGEaZRFyXzbRSOUWHv4IdHzPBpL
         WOyrIsiDeS5NJnEGpY+wLmefhNxI9ZNyJyv+PT0ZbGqbkANiS5bz48+iD7qjyRsjWr5T
         flwyOPcrn2OunWlQWSewvP/7hah/uLy0QoM5vtyB6op0PZq8fAY51OI3F9JdDwdNrolI
         cJpuyHcGmzKLBvwmiHj8wJ5U2BJEtIYep3Lhh+J5fIeZSbD8luydEboeZBj8PSqGZVDt
         +ohA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=j+rF7nvqO0qr/NV3y659HWSvOr0j2mRFyr0rudGCbtk=;
        b=c64y49brDiLVs4M90WojbtJQGAsBV3gwm25lXW7tli8qhQtqtN5uu/xUuLVRVLXJJc
         oPZk8IJhYfzr1lcy5XOJeJ+zoiNfHECM3bx01pfmnRba5IBG4JT+2O97eRa+sHORtXq4
         11xeejSDxPEtZt5gSRnWWlpF/FdLSZlLI8flhbGt/I7T25RFPWJie8XUuLL4QltRJAtz
         5wGHo+vYbmKHsNPkHPDB3n6mPOaVGElYu8MV0SHhy7dTNxTrIPFrI6Z4WDnBRiFuuo0/
         J5K8uYs7AmLf8NJImRdnie173qaAkVnOGpqfNba65F842CSh1hzfEKJKo4ar9Y7VfHIj
         Aa5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="vk/rcwC4";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j+rF7nvqO0qr/NV3y659HWSvOr0j2mRFyr0rudGCbtk=;
        b=CfWhLO54xZCObfIc1tTnOfJO3jTDYH+IB71PScE9jICwQ1wEGiyBysokbBgHthB7rn
         t2fBXXK9L4y7C82CSCuZaRxdKLvtU0Hy9mSLM7CjYa9NMsLlEUbyOgIG6HZdRuID3zSx
         SHHfiEnVIAz3lmVm9IL4iVl7Tsz+Fl6upKrYMlHyUQAdUv2KAtQgn3p1koat4dZ9jNuY
         SZ1J3pcmgTgmsa0VVsnLcBXKBkcUnGvpZZiTblf8mFMHBKHrJ2+tAEBOgfL3H8WnTPZv
         DeUFWyWkiGOoeCpsGRBMe0H4+JxomhS5lV9wneUVhaWz7RtWHHmJceYavkVTb4iJFbTF
         2fgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j+rF7nvqO0qr/NV3y659HWSvOr0j2mRFyr0rudGCbtk=;
        b=RvfQqvNw4Sw15kPat+gheUsqx9/ciOMtycobkF81PqSOjEHSLYY4cSVkjI3rpUphtY
         WlPY8s8sDZbSNOCE08yVy7/i7gpx++svhIDVVA1iElJqhtoI6VCfk1DknqcIWs9Igbqc
         PL9rsX6ENmn0fV34txurSqtNP0SmxKKFgLCHzvvV2Dlb6/LEHgqNslzp7zPnMRRPktcx
         TwU3RlWYGVmjN4btv+QIbKyobIPaUHFnVRuN5mC8yqhWAa79w85sz23k+5A6qGzHmrW3
         Mdf3J66Nl7TOYH3ucFDUwzF/Damb3wUa6kOtdhJn8Nl5svYztNg1yjm+MUQGR8SVwJE/
         HJKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVU0MKUW+vC0dpR8V7c8sLOL8EGDjSovh9jxiYEHMogqjsUl995
	exSJLoLyWCq9s0jASJxL1nM=
X-Google-Smtp-Source: APXvYqzK3yFmwMnb7GvUBcq//Z7EGQfYmV4d4738Ui8alh2poTy8Ow58EQn+9HwH8+XsLv49r/uvxA==
X-Received: by 2002:adf:fe50:: with SMTP id m16mr5251416wrs.217.1581700378100;
        Fri, 14 Feb 2020 09:12:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:6385:: with SMTP id x127ls1154931wmb.2.gmail; Fri, 14
 Feb 2020 09:12:57 -0800 (PST)
X-Received: by 2002:a1c:ded7:: with SMTP id v206mr5913479wmg.106.1581700377573;
        Fri, 14 Feb 2020 09:12:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581700377; cv=none;
        d=google.com; s=arc-20160816;
        b=JkA/Va4bYVYSFxEdEp5LSM9Imxid91N06iv/3uW27b+7ujGfqwvvEvKPRsmiawRFxX
         ep6B8xqLKRKZAA+1JLWCfupI7sbvFVVODR1zVqj9p9Cx0eWh9vYQHqy7+TSs2HW+ovyU
         AiI2V8Ha3lCKiqlvy6NPCJrUTeRwc48oqSggGbnsmUiw9Uoh4BJmxSoueTdN1EaB7wlx
         L+JNWdTaK6/UYaYgFdFGodlwTL0iVTKDCem0cpFdmTLZq1k45C7ZsVfCcGaCft1H/cKZ
         vuvR6+EYF8YXsvDbRD118dY4dISD6D1p3dtWAelPGNQHX4tCIIUB0R1pll6Dy7g0fSXL
         tPYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=Deax+usuhkmRU7L2IhwtpepO9zORuDbAtjG9pvc89Tw=;
        b=S86OnszyMREkQ3bz/nwDGDgM7raOiqH1zsUU6GgQxpP8glKlxlI20z6kp5oFyAMYmx
         6YYAc4dnl+fgkcRVpEw3hLp7AHxGUOa5r4jj1pR/JNt2X62G4ORg8f+6pEtnQuwfekPE
         pDxFxFYF7QCqLj9kTTimbYn2S3JSJa+npt7kQIekULhWbUq8doE4bJrSjhlJViadhc++
         lFYn2SZ8+U0uNprXOiy6rmF5GMrsFxc607bVk5AbOMK9fc55zofEBy3y9EAIXU9FEIdH
         eFsWUIDCAxTp1dGhJI2xidPIeVpNF86XxaipOLLc5faeMcEOKx9+UJwQwoMBsW1kh/pg
         bpzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="vk/rcwC4";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com. [2a00:1450:4864:20::334])
        by gmr-mx.google.com with ESMTPS id e21si182572wme.1.2020.02.14.09.12.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Feb 2020 09:12:57 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::334 as permitted sender) client-ip=2a00:1450:4864:20::334;
Received: by mail-wm1-x334.google.com with SMTP id a6so11437960wme.2
        for <clang-built-linux@googlegroups.com>; Fri, 14 Feb 2020 09:12:57 -0800 (PST)
X-Received: by 2002:a1c:6209:: with SMTP id w9mr5447770wmb.183.1581700377286;
        Fri, 14 Feb 2020 09:12:57 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id a62sm8289489wmh.33.2020.02.14.09.12.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 14 Feb 2020 09:12:56 -0800 (PST)
From: ci_notify@linaro.org
Date: Fri, 14 Feb 2020 17:12:55 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <2010268003.1897.1581700376697.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allyesconfig - Build # 60 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1896_1105883656.1581700375857"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="vk/rcwC4";       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::334
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

------=_Part_1896_1105883656.1581700375857
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.

First few errors in logs of bad:
00:29:55 make: *** [vmlinux] Error 1
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="0bf999f9c5e74c7ecf9dafb527146601e5c848b9"

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
18457

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/60/artifact/artifacts/build-9f01828e9e1655836fea88d0c8225d648850b33a/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/60/artifact/artifacts/build-0bf999f9c5e74c7ecf9dafb527146601e5c848b9/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/60/

Reproduce builds:
<cut>
mkdir investigate-linux-9f01828e9e1655836fea88d0c8225d648850b33a
cd investigate-linux-9f01828e9e1655836fea88d0c8225d648850b33a

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/60/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/60/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/60/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/60/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/60/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2010268003.1897.1581700376697.JavaMail.javamailuser%40localhost.

------=_Part_1896_1105883656.1581700375857--
