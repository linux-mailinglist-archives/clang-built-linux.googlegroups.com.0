Return-Path: <clang-built-linux+bncBDM6PI5M4IFRB6VU53ZQKGQEW2XYOIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id AC72D192FE3
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 18:52:58 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id 144sf1146310lfj.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 10:52:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585158778; cv=pass;
        d=google.com; s=arc-20160816;
        b=K7crSj+PlXDjPQBE4FJP2XD4f5GSE3cL+YfTzkaxCaXmFN7s5uNLu2L+PjB770HliA
         7DgbVi1TypFWFRr37h4p1lfXC+AHUh5FEuXkaTWHs4NoFsn1OZAjLxHmZpcV3wrosZgR
         O1Wflta8NkJTyeLE83S7jw+atDJ+E7e0f/zJn9lj8mg+n2qo4Yu1Z3NEA8mQjN4SY/rx
         VSFi4CQzsgcJhq4JdkHZ47qQu/5Wb5g3hub4z9sY7hYqaV+xafZkU5ePV9D68trLdDw9
         UkJwajFyzanJge6c4vgxS+BfuTrVGviHet9/9cm+6WgHj+fvNoPsW4xk8leGFYvnDNnX
         Aa1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=sRGjjNNKeMvYSpzMmTxEZfvqvhKoyW+bYRhbIRAg0Xg=;
        b=oFOyeNx7R8gqJFJUFSppZ2MwH+gmpVUVWnihYwGPKKEHxLdbKMBxf6Ibq3Fl9ZHRia
         v7jtdAIXO+AXyvw0QY5dpbKDVMYKLL4I+z7XpLEAee+RZMohOwjKr94k+0+hJtYRulKd
         7Pnf0w4L9n6DfChk2ETQWMlA0HJysjA8DRuL+VGgVboXGiDp1tHT9ai/h93MvUI2lC/q
         Yo1rtFKMvJRh9Z3MIDScN9DWjIHkoBnb5BLelMTCn8Nd8plejTiTYmtGwj3vRiCcl14O
         2bN2cZF4pO0uqOxEdczEuiVPcyu2QrL9eYfRrMikbP08AIp16XUTUmGvmczT979BReBn
         58FQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=VYf2HlU1;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32d as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sRGjjNNKeMvYSpzMmTxEZfvqvhKoyW+bYRhbIRAg0Xg=;
        b=IvLSqjRvJ6z5SLB7vDbc7/Dent1sbhfg0u5VCqnbSeScoK6kl3dTA/gIed9jfJecsa
         6VqPEpaQULSLCeLSVU5Oi7q7KNUsNC+yoKLt7aTac3k5Gk7LJkYFbnZFbWpB8VKSzZ7y
         4LKD8K5DkoDbvJH15a+SBaGln58OZu5F0WYwt1iXfBBo2d31KxLgx4YB4EvnFkXpl1VF
         HqDlgxeLebKg0siO2VPQsLTfnvyV/wjWzgC0ZU/4FXCwjxcmM4OEsT6/2sJvY7H1nsKd
         rRbyvFockvH4x7LBhJ2vhh5Shix0DlvPK0IATSlaTLhPGuGqwCUMCaY2qFrmRHlYBhSx
         FSBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sRGjjNNKeMvYSpzMmTxEZfvqvhKoyW+bYRhbIRAg0Xg=;
        b=hArQAzUi7sLbD+hEME9vA3kkJ/7hn1COunc69ZxWcsFAlZsLcAn7eTJJTvH2p+hsqN
         tFPO98vVuN8S8JKvtRgvx6BmnNUfEsFR8b/41nauzj4oUXAhCgS4KjvGP7adn11zpisv
         FXc6jVXRi75gJrninSnVD/6QmuD/hXW2gZapr+Lo8q16kUW+xspa+pVDkcDUmCuPzX6h
         uw14PxztBfKs4gf665KrmJsU0qXSel+l1e6MjK4IGeqttIw+tBaiW39Zi5no1jWts2nQ
         zKWYZKOl1zfICSIT0hvHJO6BkvhWKFKgIrTn5yIeE5aZZ8CpDhyULIegOetn5SxB9Xx9
         vhcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2YnNjg8zo38rWQfxzZCRbPb5/0JI4yuLf8kdQD5ViW/pI5P+ia
	58TqwUMPcJx5yqWbswasacw=
X-Google-Smtp-Source: APiQypKT/M5zA90inVjaeutXA1+wbm6AROrAMzGlS8q4URldlAiH17a3vHTNKfk+FlSwHBWNxJQcHw==
X-Received: by 2002:a2e:83cf:: with SMTP id s15mr2625132ljh.36.1585158778222;
        Wed, 25 Mar 2020 10:52:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8941:: with SMTP id b1ls567823ljk.8.gmail; Wed, 25 Mar
 2020 10:52:57 -0700 (PDT)
X-Received: by 2002:a2e:9d11:: with SMTP id t17mr2728357lji.169.1585158777594;
        Wed, 25 Mar 2020 10:52:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585158777; cv=none;
        d=google.com; s=arc-20160816;
        b=NvD8W7l9oNYDccCbmQDbGNLB7e72HWy1gcT9CyGaaX20wJsThz9fiYnxu7MaL/qkhB
         cLngwcmK1j8cUIHOBXbyd4EHEqENxNAvFDYnaICXvabTa6cEENa0pl4v3Pjp8hwOvLSA
         c3E4vxEpZGaD3shwWltKLDTP3yfClpBxKLGwHHxtuIAb19yuJYl1UQHtlM9MkBoETin1
         XedhHulenHENly0Oj51UMKVlsc3Z6qKsy0PS4ePAhfRWV9FKDuK4fM6KE0OCgVCNr5fk
         Adyw68gK1Eeh/hwJfy0p+QA1dvawTJqllcgcJ5+a0VMO/qGywDFD0AU4f9Lnt0z9jsrG
         qFIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=Ooj2odFsJONLKawfUs3WrmSULVEkTGH/2wegIidI4kM=;
        b=rimgmtDQcv+vffQn/KghmFPSQS8AOUod3HRZ9DcXBC2+C14hrhHiNkLFZhZGIYkgdy
         JfT0ZvtiDS6ZwW5ksNusbGUnWNmNOwkQSBwcHzFzuPunKdjjv+aTs3QN4XcGGKho5s5d
         67PBfzonlOX/H/eGWSKPHnh/pVvb6ch+8ZWOgYeO4l/NZPj+hYnv7QK329lrTP5bMdQB
         JCHLnevQWRzKyJdu1XSJX3UNumVOuXKU01ekdbz8cLNPpZxDfalPALt0Va+4ocr5E3l2
         Zb8/4gG5tT19p4a5GfYq5btcVv3UOXYVmNNJIymXtUkOsseofEN9QDFgXdoVCofwXgQj
         mRSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=VYf2HlU1;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32d as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com. [2a00:1450:4864:20::32d])
        by gmr-mx.google.com with ESMTPS id q17si1022629lfe.4.2020.03.25.10.52.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 10:52:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32d as permitted sender) client-ip=2a00:1450:4864:20::32d;
Received: by mail-wm1-x32d.google.com with SMTP id z5so3473624wml.5
        for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 10:52:57 -0700 (PDT)
X-Received: by 2002:a1c:44b:: with SMTP id 72mr4702134wme.116.1585158777181;
        Wed, 25 Mar 2020 10:52:57 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id w9sm13264373wrk.18.2020.03.25.10.52.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Mar 2020 10:52:56 -0700 (PDT)
From: ci_notify@linaro.org
Date: Wed, 25 Mar 2020 17:52:56 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <884638130.11728.1585158776734.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allyesconfig - Build # 62 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_11727_1688095864.1585158776167"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=VYf2HlU1;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::32d
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

------=_Part_11727_1688095864.1585158776167
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.

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
# 00:33:37 make: *** [vmlinux] Error 1

from (for baseline_rev == 76ccd234269bd05debdbc12c96eafe62dd9a6180)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18587

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/62/artifact/artifacts/build-bfd7a248502373da8b1c8eb0e811fdb19cc3f8b6/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/62/artifact/artifacts/build-76ccd234269bd05debdbc12c96eafe62dd9a6180/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/62/

Reproduce builds:
<cut>
mkdir investigate-linux-bfd7a248502373da8b1c8eb0e811fdb19cc3f8b6
cd investigate-linux-bfd7a248502373da8b1c8eb0e811fdb19cc3f8b6

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/62/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/62/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/62/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/62/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/62/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/884638130.11728.1585158776734.JavaMail.javamailuser%40localhost.

------=_Part_11727_1688095864.1585158776167--
