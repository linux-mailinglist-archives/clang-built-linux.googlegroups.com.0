Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBFE6Z7YQKGQEEAXHC5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C23A14E8F7
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jan 2020 07:54:13 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id u2sf1117459lfk.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 22:54:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580453652; cv=pass;
        d=google.com; s=arc-20160816;
        b=m7g2r3Lb9NZIg+J30rLFfv2eqAbgw+HbCPB0z1E2eQocnD+rP25lb9GhA4dux+7/Gv
         5btx5peMz1VcdVWvKvjol7DBEenmSM4XC+RN3TB2oH4lwqzSwkwy2KpWu0WBCDRjXPd9
         Z2UvLR0hnsUOPhgUfayZGjen0TkgeYe7sQgc6TbYy/7tA7MoVCsSr/xvUfo3FVIEFzVY
         n+OuF/YYwSy2TZ4IybF+391EbwDLfnRnaMO9pgsWz7u42wIbPNCRPVHeNGK+Uo28oLyc
         3auk9KQfb1L9f9fb4NM+q1tMA2Qyqv1/RtMC3mVuqyWQoEhrry60ZyNdMwws7RPgUFpr
         9B0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=Kz+2u+nTN9IZWvmrzjy+luXTJpbT2rVK32O8YYkIlso=;
        b=uQ2Wi4mnZ9bdMC0Gk5FVsDmT1Zc25s0bd6iwGDcVfprX//m17ywaMWofnB2QUNbGE9
         pDZ1x9FZbyFI9nySJp1An4UDDz1zTvxyMEGsNPld1r0Auk2U6ASTuVVFedjeVbn5FGpT
         b3quZlbvvqgTQECVa/CA1cNQg0RyScp6wvFWOQyt/7ZsgYWBwohMaf53ANzt+xljl+Va
         Y7booU0qv9+hIyeFfTaoTRhUV1p2qGcFmer9sQMdU4vtWFUM7A0T2it83dLC4ez5Q2uK
         yC4rKK3RKIBfsjJlf9WKV4kYQ/aDyBnPyj949eQmmBkN1DnfUxsSlLTiXa3Li/Hm1Lz9
         7WOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=tPr6JolJ;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kz+2u+nTN9IZWvmrzjy+luXTJpbT2rVK32O8YYkIlso=;
        b=ojKboLSXBRhWxf33Ym9b0G5L8Hq/8dthzmVpY35DZfsU7zeyDe+nfVyY726hVe1/88
         WYN5eA1Xql5YMw+IfeT0oMoC4h3oHYVLB7HWzpXkpQr2chwOc3Qid/ywTnNhl5DXQC6t
         bh6Q7LjoN27PTpDcpQkEpzoBsxcvcVSxfH7vQpzrVZ/r555KscjnQjtW1RRlJd1xIcwI
         3ZsfdndrlpDeqS4Omvvy2Xey3B32y4Ht8L2k4zKD0uXS+x8u8cJ4Sg9dKsE5GxDtg5CS
         iGb9GqRA4SYyrCi+8NQKM/y9N68YbaF+7mwXXt7Qo0SfqQIMs2jVu7km956dKzLz7lGo
         KdHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Kz+2u+nTN9IZWvmrzjy+luXTJpbT2rVK32O8YYkIlso=;
        b=JqhOwkAFYNaWHp3Elh7HY8WgGkemp9KfgVz2MaUWZx2Bw2Gkbw26ZI6R58NrBK/M3x
         0eObZWRHl7+3ZlXV9O+s+cryLD0DyCgVIsSCJFt7yXOJOJn2lZN3+8iUYkMUl1TZUO7i
         TMN/vZYy0IoBf/PbnL0MYlM4lmDjxaTfISg8ToSw7jU4FstiAClrzTFsibN/Cq6NGdab
         psf5Do9GVc4OAbzrlk+2AEMbTgMiDH3WPoh9rsFVlQ12CWdEIbMAJ+5nDeRR+GFMc5tF
         xhxMYZhlmCJQSOb01J+yq/dJ2K6BBiFXh6VDd9bouqx5K2axpXWX4jMyik7CirL5ee50
         o+/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW3PnGS7yXfMk1B/m4d910XX/k7fuc4k4ZanvuhF7IEy8fLN5Sp
	7lv96m2syJqWDCGbE8sDH6w=
X-Google-Smtp-Source: APXvYqwU31w/pNixtUJV/L5rdR/G+AQ1SleTnLpaEPHdg+X0bkJlSOgJJdev9xzGM0Eh1BsxeoDg5Q==
X-Received: by 2002:a2e:5056:: with SMTP id v22mr5070939ljd.164.1580453652490;
        Thu, 30 Jan 2020 22:54:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ec09:: with SMTP id b9ls877964lfa.6.gmail; Thu, 30 Jan
 2020 22:54:11 -0800 (PST)
X-Received: by 2002:ac2:54b5:: with SMTP id w21mr4709096lfk.175.1580453651824;
        Thu, 30 Jan 2020 22:54:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580453651; cv=none;
        d=google.com; s=arc-20160816;
        b=RbXjEfjlOZzKaWqjnzJU9QlF8/m6tgCxNf65Vyh4ds9hfYjHJMsE338ADDESizXeFU
         qh9EbXVc+xi5s+v+OdQ6zuGj8OTmiDqyo3PKBBGFlvYmn4kZEIhY1mJutE/XVF+0DfXx
         dtHzHS41xRuEoxRUWyZLNFJp7oJ6JULF8rI0AENGu84/O9K98oW6UeINI0u6Dbb620od
         8x36WhDXPEEfcp8ATjrj1rg0HztqZf2STF5xvscE0JlNdEfHxrny5QsUh3ME2TO/C18e
         4Mn1+WL8FL2UQZxezhSjsdmk6cuvkNVH2Z6grdT7IXgWbwJ+q9Qd49SNr2FYKBEb7Hi4
         ka7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=14BBt4yNYW/pdDMhRaoYWw25RoIa4nAaPxtSbzm+0Es=;
        b=SBJThqOlQHDz/S7Vtx/Hn42SN4OBWJprs55nmCf9jg7QNAj4s6DhB5mwJnmNurJ3p7
         0jM/mOJ4EcgrlvWgVxx6IUagw1iATedbTAgeRDP6NouVyu1XjyAHelXJfkeYAqTjHa6/
         9bISDV1N6EnZMpbfyj9GX8azQA4ZRheKq9UBwkeB6JSlfnlkbPhl44l6ljUNNjw8jOhg
         ljwN0rYeqaFwl2MtL4AzXTbxjqx7yCiNwm6NlJmmSN0shquZLXCDUcql4LYhS0c9zNRp
         lAf6MZfyJaqZM+VNwRkH1ppO9WIgGHVHeeNjBHJQRkjPyAoc3EFruGTYNAV5tEoJOPY5
         YuLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=tPr6JolJ;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id e3si338549ljg.2.2020.01.30.22.54.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jan 2020 22:54:11 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id m16so7260607wrx.11
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jan 2020 22:54:11 -0800 (PST)
X-Received: by 2002:adf:ca07:: with SMTP id o7mr9927643wrh.49.1580453651158;
        Thu, 30 Jan 2020 22:54:11 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id r5sm10549450wrt.43.2020.01.30.22.54.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 30 Jan 2020 22:54:10 -0800 (PST)
From: ci_notify@linaro.org
Date: Fri, 31 Jan 2020 06:54:09 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1259238625.194.1580453650602.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-mainline-allyesconfig - Build # 23 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_193_675264113.1580453649669"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-mainline-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=tPr6JolJ;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443
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

------=_Part_193_675264113.1580453649669
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-mainline-allyesconfig.  See 'Bisect log' in the links below for bisection details.

First few errors in logs of bad:
01:09:37 spectrum_qdisc.c:(.text+0x1984): undefined reference to `__aeabi_uldivmod'
01:09:37 spectrum_qdisc.c:(.text+0x1a4c): undefined reference to `__aeabi_uldivmod'
01:09:41 make: *** [vmlinux] Error 1
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[linux_branch]="b3a6082223369203d7e7db7e81253ac761377644"

Results regressed to (for bad == 39bed42de2e7d74686a2d5a45638d6a5d7e7d473)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18363

from (for baseline_rev == b3a6082223369203d7e7db7e81253ac761377644)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18369

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/23/artifact/artifacts/build-39bed42de2e7d74686a2d5a45638d6a5d7e7d473/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/23/artifact/artifacts/build-b3a6082223369203d7e7db7e81253ac761377644/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/23/

Reproduce builds:
<cut>
mkdir investigate-linux-39bed42de2e7d74686a2d5a45638d6a5d7e7d473
cd investigate-linux-39bed42de2e7d74686a2d5a45638d6a5d7e7d473

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/23/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/23/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/23/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce bad build
git checkout --detach 39bed42de2e7d74686a2d5a45638d6a5d7e7d473
../artifacts/test.sh

# Reproduce baseline_rev build
git checkout --detach b3a6082223369203d7e7db7e81253ac761377644
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-mainline-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/23/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allyesconfig/23/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1259238625.194.1580453650602.JavaMail.javamailuser%40localhost.

------=_Part_193_675264113.1580453649669--
