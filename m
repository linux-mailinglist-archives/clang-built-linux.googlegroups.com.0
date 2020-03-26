Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBYUN6HZQKGQEUGQAD5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id AF38F193856
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 07:08:34 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id l4sf4120179edw.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 23:08:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585202914; cv=pass;
        d=google.com; s=arc-20160816;
        b=v+pguHKLdw3kJn/qy56Aa/jHj4E/BMq+U0AIdAFS1AuFcBuR/nvKktPP8ytOfMqwti
         cjpqbSaccUxebh12mxdqz0YFWDFi3JvkH1JJC3O7ffXaCDPX4DE+MlimU/73tCxvQb0T
         PveLTjxTN3HPjDzuuEkj/CNA7+QatpdGylX+v/nPDSk46ScNJEzM8iyPn8eCgKmZ3EcR
         OWhWvaXKPwaNAbaSjWL+RWiha6Ok+Hp0K+aWKd8Orx/gAAsUTAZStzFCkpWCaXqAtBWy
         Xao9SwWPte9VbwD0smqEKgptWWS+uZSBEFO8SKryCC7yUm7+IbBicOrglhqpr42xaVP2
         Oj4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=SI94OKa3pHvt2L1+8F90nHrP2maspMiuIDksQ0D0OfM=;
        b=goBEYbcceab4KI/o1yqzlzWKnjcF5PAv/VQdA+I6S/AOAYH7xZbj0gzB0LmqYbEw4h
         k8No6JKq0m8Mv8ycuqwF5J4u7ESvay5S9qzgnP9CQVZGG4BEKimUKIpYnq3BOwgKH6uk
         RtTOT/eopiMWMJIRY4QM5M5HH1Bnh6go7t53C4gDewmFnZBuyCM2hLONhUk6ZiDCrUIF
         qafESLgoK2j1hAodA34RggTaOxN9GFzBMlPisYgCpkDiyH9ZDGMOkST2DMNOAxefcIIQ
         qqETI8OMha+14lq3O6T/PFZrG+4T/HWmDfmJiPnAwlEl4CsMSJYAkN5TY/9pIi7ZZqJr
         85vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="iUnCU/8H";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SI94OKa3pHvt2L1+8F90nHrP2maspMiuIDksQ0D0OfM=;
        b=rqMQr+GP7gHpA3RqrnV89Zi2GTHnvEhoCWEA6K7rsUhOIH/toy0g31dNlZtfH7ktr5
         zjBBNyTNEPmpCwxMleDAYd1j8aYhODinKLDwTWe9J5QGBM1J4YlthkQ0xm5Xi98bZhr0
         R8Ffy42Dh2FuowxT/P+SuGYyw8ngRhndNphMB3MsX/ADdOLABLFsbdaovfcsxKmmIaij
         /uopiwk8fvNi5aW2POlyfyuz/+9fIBZShVHNF23NXTVYpj/C5ryWqi9IeZ9WzSwK/G3o
         Ec0PCNFW9sTPcdlE7ZZmDU5oUi0zsUBeVruC4O+wAKVwBcAxZpMhDhLImLmv8+CH0XME
         gQgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SI94OKa3pHvt2L1+8F90nHrP2maspMiuIDksQ0D0OfM=;
        b=tAqbxkvh1b9RcywRuhYjkmkvKvieX8mLl7Wql3wbknSNfo0mEBLCPADbr+9sg12ZVQ
         UdopAWGUyJmWxTrNvswrMwkr7cLC2kgIMlGoox93hGHn8gB5CMfp/sLGun+SbZKplTVc
         zFB+L4Th2/t+YJKA2VCmLJN8htx0Ablb0o2UyRbgdMhR+pGe48r8ICS08gICHJc7lxn0
         1t3PLa1n3J4kaYbIIhiVyAhvrNNIvbMIufZAgfBBl9C0XxFoGffmeoq58kg9bGHEDEg1
         dZFYK8OG7OM95YhV93g5TiOHL2tbvxEB08W1qFm+qmkGCkvspKJPw7LaYV1rNWxVAVjc
         aabw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0gK+Xn21V13BSqAgH+7dCHmbmOTx29YIiI/tqKKV8jcErFIcQb
	PgHjaQ28RWYH5XrLHCUubrE=
X-Google-Smtp-Source: ADFU+vvyA7eiUqTuI6zlD34gByHbhyUNERRLtF3R0FhjsuqvveSlZWGmAfQDGa5K4TeImh8SS7hBWQ==
X-Received: by 2002:a50:8d84:: with SMTP id r4mr6721006edh.305.1585202914435;
        Wed, 25 Mar 2020 23:08:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:a40f:: with SMTP id u15ls3726152edb.5.gmail; Wed, 25 Mar
 2020 23:08:34 -0700 (PDT)
X-Received: by 2002:aa7:dacc:: with SMTP id x12mr518589eds.109.1585202913915;
        Wed, 25 Mar 2020 23:08:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585202913; cv=none;
        d=google.com; s=arc-20160816;
        b=n4AvaC9fFGM77IUUbtui+lBpRbQwak5DAJmB3qh517GkwMpckEvzDNqVIjAhLgQLGq
         ezk3PUBHvvUiTazQ0ZFUuYP1cnzWVr1rVV1LtwaFaV+Ab10i0idxtD4O7ugkGFAoCXZc
         UzPjdOujz85B3g49QFDT/yUrr9HGbDeWhlz/1XHidA+EQ2St9PSIv79BFWqk4c5RtQmJ
         shqWnjUsvaR+zM4IC2T0re1DVs/z9vNle6OfQi/z5YvHAwABc5yXe21O1Z220vrShdmn
         PjRBHdjEXcNj6K8OHbFW+t/ekyejyY+W1ZlS8gPBj4uTZxxqf4OWwU6Ee4pdLsVKvGov
         SPuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=V4FTOpEEDJRInOMZKXXC2z6ksv2GUjjsxTzn5Pplt7s=;
        b=yxVPrlBdW1tD1DaPIRX+/4eqMvtj+i2cDi8hZdQaMB0BlPi4ruWOAsuBosJyPOw97e
         cypA+SFk+kCRsTEC4eMDXOgERLAKqxKK95H/1GhrPTq11FvGRFZIzNdsYkSM4MdCDeRl
         VWgV8u060fX27ggoUwJ1Wsl12LP2L6UmHPZ7e4J4/v1vKrZR4IqmFgM7UmJ2mJGKao2j
         Tj6fA+r3oBMnshbClI4+qscMZXfl/YhQFXxoazPxsa3H4rjMqgj4Z/3nS9f1ncn+3R+r
         rPtXOQU80V0zapSrFUP82MI0/tg6fOArwBYXWdSahA6mai/hOKxlfB0DbqiUpdVSinKB
         kABQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="iUnCU/8H";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id k14si59541ejb.1.2020.03.25.23.08.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 23:08:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Received: by mail-wr1-x431.google.com with SMTP id w10so6307572wrm.4
        for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 23:08:33 -0700 (PDT)
X-Received: by 2002:adf:ce0d:: with SMTP id p13mr7208276wrn.8.1585202913539;
        Wed, 25 Mar 2020 23:08:33 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id r9sm2096383wma.47.2020.03.25.23.08.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Mar 2020 23:08:33 -0700 (PDT)
From: ci_notify@linaro.org
Date: Thu, 26 Mar 2020 06:08:32 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1121117314.11871.1585202913064.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allyesconfig - Build # 59 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_11870_347522699.1585202912489"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="iUnCU/8H";       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::431
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

------=_Part_11870_347522699.1585202912489
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="f15e8108f6251f3480d572bca5729c1b849edfb3"

Results regressed to (for bad == bfd7a248502373da8b1c8eb0e811fdb19cc3f8b6)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18582
# First few build errors in logs:
# 00:41:44 make: *** [vmlinux] Error 1

from (for baseline_rev == 76ccd234269bd05debdbc12c96eafe62dd9a6180)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18587

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/59/artifact/artifacts/build-bfd7a248502373da8b1c8eb0e811fdb19cc3f8b6/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/59/artifact/artifacts/build-76ccd234269bd05debdbc12c96eafe62dd9a6180/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/59/

Reproduce builds:
<cut>
mkdir investigate-linux-bfd7a248502373da8b1c8eb0e811fdb19cc3f8b6
cd investigate-linux-bfd7a248502373da8b1c8eb0e811fdb19cc3f8b6

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/59/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/59/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/59/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce bad build
git checkout --detach bfd7a248502373da8b1c8eb0e811fdb19cc3f8b6
../artifacts/test.sh

# Reproduce baseline_rev build
git checkout --detach 76ccd234269bd05debdbc12c96eafe62dd9a6180
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/59/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/59/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1121117314.11871.1585202913064.JavaMail.javamailuser%40localhost.

------=_Part_11870_347522699.1585202912489--
