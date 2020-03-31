Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBXOXR32AKGQEP3HPKKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F41619A00A
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 22:45:17 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id t25sf11133929wrb.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 13:45:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585687517; cv=pass;
        d=google.com; s=arc-20160816;
        b=K0E36hJhAPxy9QJLxz5nh7YMp0p12yeGDZcwm74+gYwMd+hsIrTGdbrw5ASbUMYBng
         kVQO8oaF2sFBdBgxysX+MvxjXLVektvTaAcEByFoXFDd0j7rgXB48YVoTUhv/Jpx7loH
         /eL8jEMGg7SkgG4h8DO6sm0FFl0L2xRUjSK3fr2GAjbbqASHwLhXEvndxqe/qpzhi7p7
         dllv1g6+ZY1oZjpi6D9YmJsR71hKsPWXCeOa7alu7pVzEAJqceViwKJtk1X+WrChy1XY
         pFdfO3PxD0fLZyCnhVlznvlRz1ZJj/IEY5Qb+ny53ow6QYoE05JnDVZOD5Er+dcryUYG
         VLRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=VV5PAXvxjetcgUqOLhR7LPWeFWuLU5jc9Dl+fuHpXv8=;
        b=KurNebO2F2DiiQHMDjA9M4HGd9e+6dEQKkVkrA55wHchFbaSjdgp2TFM49ql1AFWgs
         qDEb3vHa8gvueVPc/3hTxJbVZ5kZZAtYEt/2IkgYCPTWelgjwA9Mk8Tz3oQN4IIpP0/C
         lIxf30YhoCZZJYokTUBiV0h1weNtVcS4a6oXgsuCmquGAY/cydF4ahXJKAqwQcsBClG2
         0xO3SulytMqSK1BV/97519vFPqjaUDOkAwLEnM7MJHw9+cPluYNQyfTfANElxqFmeAuy
         ctWrKZ1rAM96DcoEKeXY2KC9aa0L1Qc+nIJshceqr/CRMuLvrwGA2SjsYpKqj2G+CBC8
         Kk8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=zg6bXQwo;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VV5PAXvxjetcgUqOLhR7LPWeFWuLU5jc9Dl+fuHpXv8=;
        b=N5dMIMcLz73kBYLAAkiszWFPO86K5/dH81CzQNI3qOO+kbk+ZVI6SOBFTBrBGGS+rS
         xqQX4nDeP26uGNJqEX3QUmJcYsiLG4TMkeMU851TJq+9sy6kxC3ONs7gU1gy4/CkmwWA
         xYk+PT2SYmf3cWpvluOyNHqKXAmH9Eqx1ufsQN4nkLOjjEwC1MzyiQPAwRDxkplgyzCa
         b+dLlPQYNELlWfKSx1PqAdswwQ8Nj2qUb9QRINxO/wy45KqcDNTJ9fpRKvnV/yOeFaAI
         O7QxXuQzu3GUBWiSYg6b8/amm1xUr6J3oZNHIVHpenmJwD6T17Sj6NJsJ4elVSq45stq
         9WHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VV5PAXvxjetcgUqOLhR7LPWeFWuLU5jc9Dl+fuHpXv8=;
        b=i+2PCFwkxZPNOe1HQ/EpqBLBzm5KcYmSDVeMIHDdMklLcbq3rX4GyiDZuO0SuteS0O
         5J4IvdWdThfygvaNp/plFj0z1Q5hK+5P/rdtt/RrPqCIylcTYpM0izTldvF2qwc/ascA
         uh5hjGjVHYLhhRHrv/w7ZvI/Ji6tEk39j+d2BkeFGoGImFj+xDOWeD8r1ngtLUITo9Kj
         rO44bn+2s9qzCpzWfrw4QwQ6xzRmDmyVoI/x9zXwEmNx9mCxf2hSGooK1F4mhvWmVr7c
         FirB8J2e+dWDmEBh/Hzp22MS02XuDbD+Fcy9+VjLsxmfsq17m3LV7exILXFvmnRdODlx
         B7ow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY0NqOqwWo6MSax+qs3OYX7pj3gHEoXgFk7Pp71qFBN6obbFrkW
	3pPA4OSDeE7zP5et1j0xSs4=
X-Google-Smtp-Source: APiQypI7HoYUGk3pqJDBKjsmgbyJEvdFedMX2Y8hygdK7/xD5Re1/HFNRxv8yzhS7XJQmV7YjEAV1A==
X-Received: by 2002:a7b:c2a1:: with SMTP id c1mr678998wmk.138.1585687517181;
        Tue, 31 Mar 2020 13:45:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f2cf:: with SMTP id d15ls2322982wrp.8.gmail; Tue, 31 Mar
 2020 13:45:16 -0700 (PDT)
X-Received: by 2002:adf:de90:: with SMTP id w16mr23747609wrl.292.1585687516680;
        Tue, 31 Mar 2020 13:45:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585687516; cv=none;
        d=google.com; s=arc-20160816;
        b=zGmIatWog1rcjUfcEQfixJjll7wCnFxdU4IH4l8cKhWCHsIFCiHXq4bwXQYP74g2XJ
         HRaip7W3a6guOhRv/ocE3zA4l5ThunWrYK6df7BLhmnIAd2WW08RHrv7lz6+D4HfHRGn
         iZIkfr2ljC/W+yglZEYoEHOMyIwlqgK+jdQuZ7sCedbkz+o+0iHs5FCl+hE2RP4VWdVT
         yW1+uS161AEh2wDMCOxvKETUVt3/UjYG96a0FGixYf83XQOc01JPIeqHCY6SLGLvn/4F
         oK4OispjJbBFEVSfbrE7B3KRI2G7YX17oycqXzHOhAVqUc1PA8Y6ckh07L0huQHuhYHz
         VXVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=jehvJQ8OGVq6YbfvU2IIgj/ZNKH2zuQjLKkZRufdjcg=;
        b=Ya/b8l9nYksq1zZo1zWrygvXVkqdj8Z5aGPdBooQEUDqP1Yf44d5z7ftGjFIeCdKpq
         lI0P2mnM67bouOtfi3zAmyZFk4NvoEVsA+tLgVHSxmG2zjdjAQMoh8l/QUdjyHmkTGKG
         pk+i3QkP0ZBDdjGJeiRpmKSRKu2lQ88HzJHANqi7zPZNhBK8ZU6GRR6oDMHUfBgO8NG7
         E0Vmc4dXKSm+1xxUeTOPVctoXsEeY2qLRHYJf+Ahaj1NWJgJhLJA8Rbn0U0iLGJtRmVa
         s00EPG2fKJkjoqKLEPmCAxv794hYdhP5qIOIE73ynbOpIHN1SGrxrBSWtYU2+sUZXTvG
         qAxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=zg6bXQwo;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id l16si262191wmg.1.2020.03.31.13.45.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 13:45:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id t128so4095675wma.0
        for <clang-built-linux@googlegroups.com>; Tue, 31 Mar 2020 13:45:16 -0700 (PDT)
X-Received: by 2002:a7b:c205:: with SMTP id x5mr694884wmi.189.1585687516322;
        Tue, 31 Mar 2020 13:45:16 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id r17sm27962420wrx.46.2020.03.31.13.45.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 31 Mar 2020 13:45:15 -0700 (PDT)
From: ci_notify@linaro.org
Date: Tue, 31 Mar 2020 20:45:14 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <376089351.13393.1585687515653.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-mainline-allyesconfig - Build # 29 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_13392_1786747624.1585687515047"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-mainline-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=zg6bXQwo;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341
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

------=_Part_13392_1786747624.1585687515047
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-mainline-allyesconfig.  See 'Bisect log' in the links below for bisection details.

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[linux_branch]="e595dd94515ed6bc5ba38fce0f9598db8c0ee9a9"

Results regressed to (for bad == 458ef2a25e0cbdc216012aa2b9cf549d64133b08)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18452
# First few build errors in logs:
# 00:41:08 make: *** [vmlinux] Error 1

from (for baseline_rev == e595dd94515ed6bc5ba38fce0f9598db8c0ee9a9)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18458

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/29/artifact/artifacts/build-458ef2a25e0cbdc216012aa2b9cf549d64133b08/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/29/artifact/artifacts/build-e595dd94515ed6bc5ba38fce0f9598db8c0ee9a9/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/29/

Reproduce builds:
<cut>
mkdir investigate-linux-458ef2a25e0cbdc216012aa2b9cf549d64133b08
cd investigate-linux-458ef2a25e0cbdc216012aa2b9cf549d64133b08

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/29/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/29/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/29/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce bad build
git checkout --detach 458ef2a25e0cbdc216012aa2b9cf549d64133b08
../artifacts/test.sh

# Reproduce baseline_rev build
git checkout --detach e595dd94515ed6bc5ba38fce0f9598db8c0ee9a9
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-mainline-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/29/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/29/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/376089351.13393.1585687515653.JavaMail.javamailuser%40localhost.

------=_Part_13392_1786747624.1585687515047--
