Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBNMSX7YAKGQEJVOEIHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D582B12FF02
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Jan 2020 00:07:33 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id z3sf7472580lfq.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Jan 2020 15:07:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578092853; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z9RY03/OPqQiZuFQgiKV76PArXx1uscIVNc8d1Q32hK5ovO29I5DQtIUXf25DIBWYk
         5yqiqdFpR07d83lwhhSR098+POswyTZfSLhupKKqnYDDMuGARQ7JbK2zLlSN0SU7nPgO
         QCqQLtAJQA4xenjhWDAs1mg4OWvdFISNvlkpTzUPuCmI89QF/6790GWEpFlk3bEkTsCw
         dbKeorngjmoMixrfQOExDUFdJkDugGCI6Tde1rU3USKLBHHx+mEgowWUWNf53muHkWzF
         3osqF9fK8VC0jhLpDUGlj/XJ8i/2AzhfWWLotT+r1Gb46hEVDCfFtDm7i9hzTQipKcc8
         ijjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=nRvsCJgPuxA6EZMxZWRxPfAIhj74HtuzYSh0RTGhvk8=;
        b=KklrEmiMptzHtkzLEEw04s0aXvLLdRUG6XjjW0Jxa2z2qgFdVYl8smbuM1VgfVe/N1
         F39c+vlPZKxWD5XmDJACcUNQQ6WF6IreLIfiKDF2FJjWTa+Po/r/V133QyPfvG+firFj
         zj8mX3s3C3u3Ve/bpHoLHDRRtKGJROcK4EBdUUpe55HJCTSQ4GCTBLJACV96Ls0yEnNw
         jZAl9DDEe1aOvxN+1VWxykHkdTBhiVHHSo8BPTGV4GG+LpdRG2Xl9iHj5Ot0GeOcO4Se
         SWLjSS5PxRMphyNZ9/OgvCKkEDUZzeCSGuIs1uZe57dCmTmu6vapgnlA+xEaDm8whUV7
         45AA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=E+EM4V3E;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nRvsCJgPuxA6EZMxZWRxPfAIhj74HtuzYSh0RTGhvk8=;
        b=kP3YlYmGg/bSk+q/NQEku7ZOjLHErEZ9CNk7vRLIJqyTe8ZKt+CIf+KmAGT8wkhglG
         Koq9XAAuhjPxoBIRVI9lrIqzpY0HkpaSmFbMUWkplUBdTfUjDLm1mybEu8FTI9+B36X9
         TiFGRnDMzMxsvKcPqOkiKzrL1Se6Ad9Iq3svBMJ2JZUkk5PWQY4VkSFr9OijWOha84Zc
         QtGPyCtRardFHbj7PJaXjbdV/QyPf3vta1LsMWErrs6/j2sUOBxa8Bmg8RY7mh9mLx2j
         +/3zw197plSATT3fIL8pO/1duney476Cy+lVktJzOiVowCWBT7Oq07n0ZkoFKoCDn5pO
         mh2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nRvsCJgPuxA6EZMxZWRxPfAIhj74HtuzYSh0RTGhvk8=;
        b=OUSWQHMQprAYIFRN90VvrWHonntOxPh3Qt0y1n/rzbSNxnlOok+13fnjof9h8O7hxc
         V4H02bRXe0Z9zrzWeGk0EenotJt4vlLzjca+yOSYf1x+z/zSk9IOGT4m7Ap8Sg5P73yq
         D0pxA9tP0iHePkTKCpqVIEMdhHBc5VIrd0DKVsYcUqhE2yspF/gWe3FQ0TWZ2m0lO53E
         fVWNzc6yVA15dExPge7L1zlwax8s94ATIvBc3kylDFnpz0PQ/4lSiCesd/ej/7bkEEoV
         p99I47qPabxLFBmO+uLJ/kjfa1RNt4Zz923aW0W3zOupkI4CSk+XEsM7ibl6wuceXXZZ
         VK9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU1v2AA64aVeVa5syHRVvC8zePKqNcJabgb63DbmAEsS/ULfGv2
	pe0kk+cCXUOgid3+ugF9KP0=
X-Google-Smtp-Source: APXvYqxhsZ7p47dO0IfrlSauZiIGqjPi27Tt4VEaV6OfKgR1V4kfqgzDWvzsbgG8zE/UFh8sYUd9tg==
X-Received: by 2002:ac2:5549:: with SMTP id l9mr50468113lfk.53.1578092853371;
        Fri, 03 Jan 2020 15:07:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:95c7:: with SMTP id y7ls5207096ljh.16.gmail; Fri, 03 Jan
 2020 15:07:32 -0800 (PST)
X-Received: by 2002:a2e:580c:: with SMTP id m12mr53668152ljb.150.1578092852716;
        Fri, 03 Jan 2020 15:07:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578092852; cv=none;
        d=google.com; s=arc-20160816;
        b=res76wyHBdai2nisOReTZ+xWp48cZt9Q7bbcduaadTEAu0AiVeMpR7mryJNMOeh1AE
         cRXiZYt88hZzwuVceawgcrjyUIU49Ckufx24DFsFvDFHzX7YHZwHJn1j8Hyz/kdgaG2m
         xI27Z0VFPlR/FUbE6SvicllvxZz91hSoh7ltdjMGDRnQFWhIgsYSV6F2QFIgQ6Ktifms
         iwsLopj1Uoeo9jtTLNZp44My8rpVgJKh3Bkg39tAM/a75CAzVRADU7xfpcgcX4cr7QrZ
         Glyx/pLTaDy0VQqqZ6GjwPF7UNA4HstCKjkq6n1N5hC2SgVMvq7bTkl4dGnk6vcZiIBB
         Q0ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=bQ2uiD3YqMbe64DhwsjpC/deyHky0gR2N/yEFNvpgDM=;
        b=Vb93oOFagLNIFASS8D+yNrRhR17OsiOKt9dEqdgfAQsc79oT0Qnz1cljPZNANR4Ym9
         R8PcHBXkgvu8MHk0EkX0hO59XWtZYnEF9SXMeRnFgpLIKzI9r3nvrS6H3HCmlAEVmYaU
         GQytjTN2f2dqvt6Ukqv55Vgwlr5V599xJiVHvuEGtlNAuGlNmhobtlvP2kWaBi3Zs25+
         TTHuspR9frEKCpigxP1b5l2+DpVzUZJZlsqh+uMbYKFYYp+sagB9JFk2KoLvHVk0PUD9
         +jN6XFWuVZOmAQ57YEI1RSC5Ntcvh9Xshcx5Fk90azPYlSEeAUOmn2zHOkbEU2atpI2p
         jF4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=E+EM4V3E;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id o24si2558148lji.4.2020.01.03.15.07.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jan 2020 15:07:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id b6so43865354wrq.0
        for <clang-built-linux@googlegroups.com>; Fri, 03 Jan 2020 15:07:32 -0800 (PST)
X-Received: by 2002:a5d:6151:: with SMTP id y17mr40401479wrt.110.1578092852137;
        Fri, 03 Jan 2020 15:07:32 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id z8sm60953800wrq.22.2020.01.03.15.07.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Jan 2020 15:07:31 -0800 (PST)
From: ci_notify@linaro.org
Date: Fri, 3 Jan 2020 23:07:30 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1644911950.10735.1578092851609.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig - Build # 68 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_10734_564477659.1578092850890"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=E+EM4V3E;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442
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

------=_Part_10734_564477659.1578092850890
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig

Culprit:
<cut>
commit 7ca4ad5ba886557b67d42242a80f303c3a99ded1
Merge: 90e0a47be934 1f07dcc459d5
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Thu Jan 2 17:04:43 2020 -0800

    Merge tag 'sizeof_field-v5.5-rc5' of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux
    
    Pull final sizeof_field conversion from Kees Cook:
     "Remove now unused FIELD_SIZEOF() macro (Kees Cook)"
    
    * tag 'sizeof_field-v5.5-rc5' of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux:
      kernel.h: Remove unused FIELD_SIZEOF()
</cut>

First few errors in logs of first_bad:

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[linux_branch]="fd6988496e79a6a4bdb514a4655d2920209eb85d"

Results regressed to (for first_bad == 7ca4ad5ba886557b67d42242a80f303c3a99ded1)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
26821
linux build successful:
all

from (for last_good == 90e0a47be934644944e7c6a29b8fc561be168ee1)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
26821
linux build successful:
all
linux boot successful:
boot

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/68/artifact/artifacts/build-7ca4ad5ba886557b67d42242a80f303c3a99ded1/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/68/artifact/artifacts/build-90e0a47be934644944e7c6a29b8fc561be168ee1/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/68/

Reproduce builds:
<cut>
mkdir investigate-linux-7ca4ad5ba886557b67d42242a80f303c3a99ded1
cd investigate-linux-7ca4ad5ba886557b67d42242a80f303c3a99ded1

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/68/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/68/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/68/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce first_bad build
git checkout --detach 7ca4ad5ba886557b67d42242a80f303c3a99ded1
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 90e0a47be934644944e7c6a29b8fc561be168ee1
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/68/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/68/consoleText

Full commit:
<cut>
commit 7ca4ad5ba886557b67d42242a80f303c3a99ded1
Merge: 90e0a47be934 1f07dcc459d5
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Thu Jan 2 17:04:43 2020 -0800

    Merge tag 'sizeof_field-v5.5-rc5' of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux
    
    Pull final sizeof_field conversion from Kees Cook:
     "Remove now unused FIELD_SIZEOF() macro (Kees Cook)"
    
    * tag 'sizeof_field-v5.5-rc5' of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux:
      kernel.h: Remove unused FIELD_SIZEOF()

 include/linux/kernel.h | 9 ---------
 1 file changed, 9 deletions(-)
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1644911950.10735.1578092851609.JavaMail.javamailuser%40localhost.

------=_Part_10734_564477659.1578092850890--
