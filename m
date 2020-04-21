Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBRV67L2AKGQEJBKSMQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id F10251B1FAE
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 09:22:46 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id v5sf1907762ljg.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 00:22:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587453766; cv=pass;
        d=google.com; s=arc-20160816;
        b=JDzm1vrbSmS2Xh1/Za0Fi2DIbmzbFlEP7jznVjW7TvCyTjaisz1BD87xthmZkYZsNp
         MFZ2jrtuQE81YS+3IS1DCBA+povXzFL+mwMxHQCZAv1m7gfZVE8TCfyIwDk89CjRX+aB
         JzaLfnuT6a8NaAMIQOjxECUzmPOy5IGpy5jIBsectrtK67ClpRIeVEJ3tU4YzRHgyPRY
         0c64iQin4H+pdOY5+Up4AuJ7MdwWFhhka5aX6RzCO9vGytOReHu72GJTvsLqBpREZUM0
         b6D6+n0Yh6GnuOJP9lJbAk3Ij+tvnuGNCRfGnWjUT6knN4j3jXiilMCcHV93Pwt8C+zi
         zA+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=q8WOA9NdzNqZc6GZohTWa6HPrKLU5iz9ZlopcShspZk=;
        b=adl5l0xF32q/O7yflTvyCmEbVRCSBJyCs25cKO2tRIdbPh7KGH+9FisSotVpcxCukI
         15Z3dq4yt0WWcSAkWw+WEekY28yimGmXDo0Abh8tTGYTVNnjz2DsnEktjChdykK2TdyB
         dOvz8XbcoTI0nL+OoVil/9c3RlRQ5gM/B3R1DKKCsX5EVPYjH6xy2GcSWxTzNxaIWu8O
         7v/dBj/1G2nGvFKqT0tbdH0Fx8nGDv0oKmLhnF4QkMsdnSXvDHU2toMSZ8on07t7hDo1
         3S8YPtSCc7tPyjuPo/8GZvCfriDkKsr+oniUfQuuHwZfph15WbpsTuswO+1eJXVO3USE
         JfRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=dw9jzrJK;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q8WOA9NdzNqZc6GZohTWa6HPrKLU5iz9ZlopcShspZk=;
        b=gGGlWjiXaByORpGZWDcNHtR8TaYG0RxmAH9oS9s91ChdqzTvTN1xw+H6R0msJF5mYe
         +ins/+AR8sgxS0ukvu68z7kVgCwVKpTjHKyRvnwBZhdO2jNrVcnFqvYT2VzbgBeHd+Bk
         QMOVt+Tnk/z2dBFOk4tPEhmkp4dNExWfsbmdJb0mweOAwIUkO9YubUIqjd43bkYxVdmW
         +DDjtUMwfdBOu4sUTl+5SnmhQh8sGq1gF+9kxO1mw04KN2XNY4ZOq5sxgYKVjdJWBBew
         asSlrpYnwK9s1k3RxbFPWr77RYXzDlZVCQUV2uiDzCKmsEaQFB1pf48vdMghZUEK/Tsc
         dXEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q8WOA9NdzNqZc6GZohTWa6HPrKLU5iz9ZlopcShspZk=;
        b=mgrqBBqg5v8PN1k9C1X2KTxrkE+se/QKZSzjwjSAur7lHdAyqh6wmEGWXzV0NhiMcD
         bbeASYiepocfX3oBletHQ/xw83bElIqkJLU8qsS2xCON1bWEBHV4dK5t0sh4ThqhfvAJ
         tH7SvCu4v416/oWOA9Igy9smLY9vGNEfgHxtVB3jNedWt45n8QS96/wDFVFrPQ77RSwl
         Q6AiHgA9/iJ9oE4KVTdsrNtQpPqcRLUTE30CznjHfGrN9Fd56uvDTETD8d+88NFkl2TY
         svfh4s6IONy+9u/GW0ahCmqnuEiEnHhrIELTJnGI/MoSFM33L26uTugO4va6duG7aSLV
         omsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubwnmHzi/wkWXP6Zqk0Z+ALxj9c4bUrmwXTuEFQYCEFLF1V71M5
	RpupDg8M1zzUTVRWs0QlCv8=
X-Google-Smtp-Source: APiQypJC8BuweLqkpqPPJO5FMAvp2sEY2X/EMvvQs+8lKlXa/3Zivj3BP8Eu4dlosunBDS5je0NXew==
X-Received: by 2002:a05:651c:1131:: with SMTP id e17mr11801899ljo.79.1587453766460;
        Tue, 21 Apr 2020 00:22:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:86cf:: with SMTP id n15ls2672613ljj.11.gmail; Tue, 21
 Apr 2020 00:22:45 -0700 (PDT)
X-Received: by 2002:a2e:1418:: with SMTP id u24mr12797159ljd.265.1587453765905;
        Tue, 21 Apr 2020 00:22:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587453765; cv=none;
        d=google.com; s=arc-20160816;
        b=hbt9zC+nu0VliCAKGbORh5/GOAzHIxZ6hekvb51AoILPH5fkQvG/eaD3RZjmHR57Ao
         rXXoZVDn0iN1JV+pZHmp0P85nzQcy5cxlO4hvoP/RbN69YNkig/UyjdpbAuMxnPfyFMa
         9LKP2nm6aicz1Gk6tipTdzkW8z67JZOvDSszOmwT6h1Wou0y0WcisLQgQbe6/TZwIGdr
         aA4XEUZuEPIODdW/yo8jBO8g6uYYR4twBun2DJWOMr9IwmB50g3W0KFw9WK3TKrMgjV2
         cAM+HPeD46B2Z3ROBKhFPNJtucbM2A4VYVsNqjEJGMD6ilwAHUf3dKX6V8xd+0QTRRPc
         n5Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=/neXGHzyGQmVKdwNt3wk7jAED8jLEuk7g1npIX1MmPI=;
        b=m11K+A84FyRHPi6I+C9w7HnInrSsPzYent+LjCxMQS+j2GpqeXVPLoHknLaJH5fCPq
         UqG4pXq8luKxBxxhfPcSyyNJY2xKGd8cVnaX5pKih7zQsK4ZPfBVABNO3ctheOBET7qN
         egLXo9tsMqt0Rrhmx0qDNkq4P38HZWsWb8/bMab5S3cPn3DalAQrJ8LE7nHjIt04wJ18
         5AOziuesJXOuL52Sp+SfH1DDJ2FCL81XzwW9qDpT0lKCkglNEScTxJY2MyMm+9GbWf/T
         vd5RKPGO5voWGjbWY2GsTm7L+WduxQMrcdA/LFAooSLHp4r+SxPd6DlEeRyOkc0KQXBo
         chGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=dw9jzrJK;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com. [2a00:1450:4864:20::329])
        by gmr-mx.google.com with ESMTPS id p5si117092ljj.3.2020.04.21.00.22.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Apr 2020 00:22:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::329 as permitted sender) client-ip=2a00:1450:4864:20::329;
Received: by mail-wm1-x329.google.com with SMTP id y24so2418716wma.4
        for <clang-built-linux@googlegroups.com>; Tue, 21 Apr 2020 00:22:45 -0700 (PDT)
X-Received: by 2002:a1c:44b:: with SMTP id 72mr3320761wme.58.1587453765315;
        Tue, 21 Apr 2020 00:22:45 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id k184sm2321365wmf.9.2020.04.21.00.22.43
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Tue, 21 Apr 2020 00:22:44 -0700 (PDT)
From: ci_notify@linaro.org
Date: Tue, 21 Apr 2020 07:22:43 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <329739975.18171.1587453764584.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allyesconfig - Build # 62 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_18170_311855131.1587453763307"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=dw9jzrJK;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::329
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

------=_Part_18170_311855131.1587453763307
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.

Results regressed to (for bad == 6735c84f78e41749fd09e73cca70d3e0779397aa)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18652
# First few build errors in logs:
# 00:41:35 make: *** [vmlinux] Error 1

from (for baseline_rev == ae83d0b416db002fe95601e7f97f64b59514d936)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18659

Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/62/artifact/artifacts/build-ae83d0b416db002fe95601e7f97f64b59514d936/
Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/62/artifact/artifacts/build-6735c84f78e41749fd09e73cca70d3e0779397aa/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/62/

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
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/62/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/62/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/62/artifact/artifacts/test.sh --fail
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/62/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allyesconfig/62/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/329739975.18171.1587453764584.JavaMail.javamailuser%40localhost.

------=_Part_18170_311855131.1587453763307--
