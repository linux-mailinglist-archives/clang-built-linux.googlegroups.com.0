Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBKOL672AKGQEVUITCTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F301B140C
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 20:10:50 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id l5sf514741edl.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 11:10:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587406250; cv=pass;
        d=google.com; s=arc-20160816;
        b=VU+V6TpGF2Ll+XNKhOTiH96st5zuxawIii42x0bGN1wfXr2n3TAwAzz0OcghoDyXq0
         e+jTeDs5Byk0hr/i/FiPY5NuAjizMU53nsXSdSTlGugzIXX3i/qJ4vvdLopBwFmHq+E+
         p4jlLNbpjICAGQET1GZ1vAwIoaQSkSLo/08FDftFwUPVZfUZN4cxKcfDICC9Rb/sJ2VQ
         fEF/j8hEDNNp2Q9SOc4AxqK9e9iKZ0x6mKJYr13QJ1WHud6Rx0KXfnTRSyqLDhQo7g/e
         jfooseNh4SaunR/mztmSUAOOIwoayLbndwC055RZnQZFTfJXh9+EdbgwibvacS1NuKS4
         ERZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=LcKx3jppC4WQH0Zb0AL7TWiAbNuMd6fIirDQPBPm+Uw=;
        b=CHv8qCBmPCmmYK3HSGps83xToK7a2lYefPPSEcKBnPsaI5dmdqPJogqtgO4OlNjcR3
         vyJGWET91BTVctC8HBQfJLQntpzYoaqT/i7hb+L5BVRdKniwtGwk0s0m9tFdAfZRle4r
         0SlLBZ6yYO4I16ff9olxouZuX+cRfGMUHUL3uWlghjov29h+3Hb8lzkuCIDnje6WJwxg
         W4QAcZRf6tX7OvAj73e3Mc3m8Gfb0f8tcl5EUl1yieoquC40hXhk74+zktA60yCdKSEm
         nAbgMB3C8sRYa0rRhRFJeWZr9NoG/YafMJPP5MLZ9pY2OzlELrTs1bZzumiSjuaJrs1w
         WCNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ADbJ3Q2+;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LcKx3jppC4WQH0Zb0AL7TWiAbNuMd6fIirDQPBPm+Uw=;
        b=H0HL7i6LngV0cYQUsq14wo2p+owMAeUTFm+sDm5UgrOrXAHi7MFB3tz8chdx86dsAY
         4ZvgvKzCBII1wQG4+eMo8GSwnPKXQcZ+E6i8ALj5mN0NDLUXqh8INRuKBjMhAcTh1diM
         jCiAOO1bzIuS6RXtxZyH8bcOVIKRQE+u4BLrPRjN+23PHPClnF4IOgn0JdGresPqCHCA
         E49XHja5pe1FojH3LfJ10Vm5viGAlIHZk5s1m7PgRH2/m0Mut+BnExtARv0Mijqf3X84
         /B9hsr6FyOx5LuUTo7uDDO5fHK3zyHtr6B0ezQOIo3YM51BMrwWYOngn43ZMZ85a/7tn
         Crsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LcKx3jppC4WQH0Zb0AL7TWiAbNuMd6fIirDQPBPm+Uw=;
        b=Rg8h4GzM1UO10TU3zRc1ylNzJRXAgNdY7VXtaifYoZgDM63iip0bU4R6uzKUuQ6tQ7
         xuXletKHbhcgcRfvTK0euH9RmkwOIVSM0nLQ8BaaSJKQndn1PLTtMWK/g/7jpLWXpUAy
         4UfhwI5mzeJ6RM68BOft60qIjIsd14LiN7S7/P44X4l6jvggFKYoUprtgoeZoYfELNFe
         1YaX1z1jueDvZAchPoAKtLBO3q8dj0JVcvBNWZXFchla7+4Eaudxea7FBnff/seihs40
         hLDTdiw9L/A4zTg2o33G7+ukTcLMdm3R/GyYxIXLBb59bGmymT9dNvJbsd07Ti0WVIFj
         cn1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua5tMdXhGlvJGq0bbHMiOmkE3dmdwI+WFLORkCa3q6Cj+Bv4taD
	m8bzUEJ9kLkZw6tWDNrCYFI=
X-Google-Smtp-Source: APiQypKTKeYVkzs8o/4qlV4vSgAlLH1srge82AYDY3RE8bC/fXZnX13+6Xd7Ch9OLuFHjBV/7tXd2w==
X-Received: by 2002:a17:906:c44b:: with SMTP id ck11mr17583922ejb.110.1587406250027;
        Mon, 20 Apr 2020 11:10:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:8384:: with SMTP id p4ls10522924ejx.3.gmail; Mon, 20
 Apr 2020 11:10:49 -0700 (PDT)
X-Received: by 2002:a17:906:ad9a:: with SMTP id la26mr17245438ejb.128.1587406249409;
        Mon, 20 Apr 2020 11:10:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587406249; cv=none;
        d=google.com; s=arc-20160816;
        b=qfEIbzisYNrIhVpEH3Oiz0l0vJaxopUCSQjhY7pltsFw4u2ee8Z0kwGQczjEq/wVBK
         UUYTqm8FwrvkkbSEE4oTm5DGpxUEdaLm5NuLamBtPNxTMDcGr5+jGFxz7obcluer8swo
         iMxF3XtV1e8DGo+rnFxf3+X0anismwPCMa1kjH/ZXcJtmMudnIgnYBs3t1QMPlkIcKPY
         FSevR4Yjieb7WoZuaq5ZqvDK2sq1gKa5WTcfi7P+zIy6mQ3cmnJV0EpvRhOtw2nesYx5
         UmKHaItcNbm6RGhCNVvITQPNbDOrBydzsNmtLKzDjjJhhmUZeDIXz/h9u0eyvlQUy6cI
         Uf+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=bcVM6WqvN8VbiJ4LEOwP6D34YebH576Q89kY9DhH/c8=;
        b=I7Rclp0TF8ClCLdN2uEoPF8AIDUgazo/TPuRnF75mYB5rxDBdiVWThE+4eK+drMGr+
         zW8Qj6mVrpTpk3E44USCzbnygEM0o+NfX3zVc4NDuzF8Oh/n5M4mFYi/QKFXsW4oBnMm
         89hum0BQ3SZfxGPWwM01JWWNCoyQrjQ8+tBvojf6/1dzbsCc4YdmFe4Ih4pmG7riSpql
         jCc8iTcde0mQUZn9vr/AFGW/w/WIGP69mtrP8pKjN0wVg1+e94m9mvkwW6ZQ3tzY936Q
         4kNDYMEziJiIHkrbiJrlp32MiqqCLfVEcmpwEbuoA8UWCWlyzqQE/3zacnlkuzvKyqJR
         Uhsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ADbJ3Q2+;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com. [2a00:1450:4864:20::435])
        by gmr-mx.google.com with ESMTPS id i2si16056edn.2.2020.04.20.11.10.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 11:10:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) client-ip=2a00:1450:4864:20::435;
Received: by mail-wr1-x435.google.com with SMTP id s10so4220258wrr.0
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 11:10:49 -0700 (PDT)
X-Received: by 2002:a5d:5081:: with SMTP id a1mr21858384wrt.81.1587406249098;
        Mon, 20 Apr 2020 11:10:49 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id g25sm237514wmh.24.2020.04.20.11.10.48
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Mon, 20 Apr 2020 11:10:48 -0700 (PDT)
From: ci_notify@linaro.org
Date: Mon, 20 Apr 2020 18:10:47 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <821932267.18111.1587406248572.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allyesconfig - Build # 64 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_18110_2075048730.1587406248062"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ADbJ3Q2+;       spf=pass
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

------=_Part_18110_2075048730.1587406248062
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.

Results regressed to (for bad == 6735c84f78e41749fd09e73cca70d3e0779397aa)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18652
# First few build errors in logs:
# 00:42:48 make: *** [vmlinux] Error 1

from (for baseline_rev == ae83d0b416db002fe95601e7f97f64b59514d936)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18659

Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/64/artifact/artifacts/build-ae83d0b416db002fe95601e7f97f64b59514d936/
Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/64/artifact/artifacts/build-6735c84f78e41749fd09e73cca70d3e0779397aa/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/64/

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="ea16390b6f2d61f0db6fadc8c512c012c1edd1b9"

Reproduce builds:
<cut>
mkdir investigate-linux-6735c84f78e41749fd09e73cca70d3e0779397aa
cd investigate-linux-6735c84f78e41749fd09e73cca70d3e0779397aa

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/64/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/64/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/64/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce bad build
git checkout --detach 6735c84f78e41749fd09e73cca70d3e0779397aa
../artifacts/test.sh

# Reproduce baseline_rev build
git checkout --detach ae83d0b416db002fe95601e7f97f64b59514d936
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/64/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/64/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/821932267.18111.1587406248572.JavaMail.javamailuser%40localhost.

------=_Part_18110_2075048730.1587406248062--
