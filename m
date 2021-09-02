Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBNGW5OEQMGQERSAVISQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BFE4066AC
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Sep 2021 07:20:53 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id m6-20020ac807c6000000b0029994381c5fsf3970603qth.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 22:20:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631251252; cv=pass;
        d=google.com; s=arc-20160816;
        b=FLnzhOqzRpW83N8ay8Vv0LUqRtOAdmsU7Ym7umn8p+Pti+a/6RP1jhLxNKDLAM+7/T
         I+qSRENQztIsrv7Wssokw/bxpEZvYFmGxuMHOfRyggOgF+sej/BUZk3waJmkM4Q0a1lG
         7dKfD8GUgTPpYufnQ2t70MRQcu4Q4zTdTjxxy779VGublCl4SmzdrdEuVr1uNfcZ92xf
         lW+kYzACIlx35fvvKQCczuM8cSAUpEJB1MpnveC/+UyAapR/mIN//+qAO9sK0fbN1DCd
         bdRgTK8ADdVwyooQjyZY2IW8/UugMWC2y8q8TLy3Ch3fZ/Y+6dXzKppycZdFsRpb/CKA
         p8ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=z6ZwVHgs3a/Q7S5FYO3nswdzn2b7WPeeOmqw/mgu3iQ=;
        b=QQN/mpg98vQUadaD+opmPnIKFfuKPWIIza8TfwloPJPE2gRlhuJf4J5O7Snx/PTCVM
         +PRu6uQ6WlH/PBcCa3bWo87dUe3CWaFzJFagxAfBvo7LSLKiw+2FQvfYE/jOasNRWVN7
         Nf7DpFJVDETJ4aSXO0Rwnyy4yN12k12UU3jCpHNSy3/AtaTUx4c4PPGkqx1FEZrsp955
         MBmJGnHglwSq7QXVsJ6Tql1Jpi/i9TsxJGUu5B08/W1ZVGnuRgue+yGWuCTemHEDZo5h
         xO0slj2Kw8dadSE2F+MyZ7yT8L4LW43XahjSdzvwXAJIx2yAFHDE7tnIpjS9Fwl/F8UT
         PDKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kvJ0Kv9e;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z6ZwVHgs3a/Q7S5FYO3nswdzn2b7WPeeOmqw/mgu3iQ=;
        b=lZdlsrW3HC/kiGBkezQe3gKa1g9HvJu54ZVO5MuZqVzJKOEEzrYBB+AwDx66272M7s
         Uz6PdkfVu4v6TakETKFSVGz4uOxonwXKKEnPdFSzBcNT7vQEJmhW1P7DI2aIMP+ilFS8
         /aOpSbgXauHZ7oeLaxI4j2AJdY9HDQIJOdrxW1aStcx91YwSXAZGf41/cHB7WvHLd8K9
         EO8yaVn3KTMTMhyNPOvMd/3nox8NZ8Q/oPpvoVNLaRdwh1+MNceUlGRZ4PD2Fe5SHS0Z
         Gt3e7F++V4USWP1fkDIXArY7lMj+1hmuGq3+VnRbdwjOQfGLWCQ7JnawKoEpHVPSOaWe
         2dXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z6ZwVHgs3a/Q7S5FYO3nswdzn2b7WPeeOmqw/mgu3iQ=;
        b=MvUgD5ujJrOQGC+J0vZT0nnlkllnyX614rOmt2xCNURanbKZR7JRj0HFLCBrB4upEF
         bHb/tjVBeJda3A5h7fFwL2YuAb+JIDcFPONuvvHZ9JJtq8CbF3wG0wsjmR6hY/5Mlnq8
         SBb5wYsh3HsKghQWTSdAmdolINt3hg0j9zHMJAUAOi0lSKPYwabzP8RPK3NbXpTMN2jb
         sEmt3mOVPKmgZfx43aEsBhAxMxDuTlgpISS+jzBm/+TlX03sapxOWv/AJiCTppvFtlIc
         7E7iJwnZOSJvTb/9yhuAQnkJ6kF/akGN++UUVt22jwEgHHClaYfiCEPwCZZYiy209T9E
         Qqww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531aA7R4rGa99aMpjzqFUpcBsXIzIL3KwchbT7M3B2FLHS/6azFv
	98ma6bifEM1/Xpz2VDg+UJI=
X-Google-Smtp-Source: ABdhPJyOnJmnBgkcNPj8ejJXWTT3wTq0Cn24Oc5M7Fj+7MFzFtDgZ6ycmYlt1r++76osfzDS2nZvWQ==
X-Received: by 2002:a05:6214:490:: with SMTP id ay16mr2041906qvb.25.1631251252598;
        Thu, 09 Sep 2021 22:20:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1a13:: with SMTP id bk19ls2949270qkb.3.gmail; Thu,
 09 Sep 2021 22:20:52 -0700 (PDT)
X-Received: by 2002:a37:43cf:: with SMTP id q198mr6216831qka.470.1631251252240;
        Thu, 09 Sep 2021 22:20:52 -0700 (PDT)
Received: by 2002:a37:4643:0:b0:3fc:63ed:ee86 with SMTP id af79cd13be357-42890cfe985ms85a;
        Thu, 2 Sep 2021 09:51:45 -0700 (PDT)
X-Received: by 2002:a19:480c:: with SMTP id v12mr3326945lfa.60.1630601504627;
        Thu, 02 Sep 2021 09:51:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630601504; cv=none;
        d=google.com; s=arc-20160816;
        b=AkCAKJMO+r7C9/hf7QOaDX3lqwWKPEs64Q6/+DkFd8szQY+QvkSfBDFQ1nBJRgRGbu
         eiP7CTsBj0WfE3jpJrtMd5CofibcjRYPLpL5XlwsPpA+qgQ3aSPIBmEpASSKCB7rnKhJ
         2MXUPUH934HPwBVnF2o9fWMx0kdb7QifH4RPpIfOKsNc1MvOOFPFQOhBkAHIH8WluqSV
         kVV0nVgE+GTTtW/DuCrpm4h9fkZXMgIOvEASvuiYAoY2/LF5V4j8q921HgoIsrRddeLW
         Y8oaCD4RsSONQLmisOdcNoTbJAwm8YUjGPh5oA4QXwWegUhFjXeUQIKYZDlavOwZVaNN
         ZXiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=fV7R9vME1VS0uWu+LKoQtM+5ZFBmWfq6dIYJB3UERAo=;
        b=cQv9rpsKVlbgHhnwdscRLH1XRkvmQwfA0uUBUYQNKe+JyBoGiRtKdLUSRSyEjL60KI
         ZdkS+kSJ54flM99orG/6FYhkEz6l9s6sPyJOehxBVOSNV26plt+z0wyKjcUPFdrJeELs
         57ZsNEgXb7V5B/58qer23QNpERIS9sV18EcuQbcXPzVwKogn7HGMJbSyD+g9+Vn7kfrm
         90arDYXK2tL+9gcxcib6T38cl4Wx68Hwy5nQNjXgcuQlTF3figRkm/oHRK1RL9Qr1++0
         z1l5lGDmoiQ+77ZZnQFQh0CLySN4jZDSKzKkuilxL9lIvTQ0Ua/fM2OW2q7/hY7VCaJ1
         BEBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kvJ0Kv9e;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com. [2a00:1450:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id e17si111643ljo.2.2021.09.02.09.51.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Sep 2021 09:51:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42d as permitted sender) client-ip=2a00:1450:4864:20::42d;
Received: by mail-wr1-x42d.google.com with SMTP id n5so3979133wro.12
        for <clang-built-linux@googlegroups.com>; Thu, 02 Sep 2021 09:51:44 -0700 (PDT)
X-Received: by 2002:adf:b781:: with SMTP id s1mr4781866wre.319.1630601504028;
        Thu, 02 Sep 2021 09:51:44 -0700 (PDT)
Received: from 172.17.0.5 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id y21sm2192336wmc.11.2021.09.02.09.51.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Sep 2021 09:51:42 -0700 (PDT)
From: ci_notify@linaro.org
Date: Thu, 2 Sep 2021 16:51:41 +0000 (UTC)
To: tcwg-validation@linaro.org, Slark Xiao <slark_xiao@163.com>,
	linaro-toolchain@lists.linaro.org,
	clang-built-linux@googlegroups.com, arnd@linaro.org
Message-ID: <1723771714.8049.1630601502888@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig - Build # 10 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_8048_166150212.1630601501973"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=kvJ0Kv9e;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42d
 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

------=_Part_8048_166150212.1630601501973
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig

Culprit:
<cut>
commit c3496da580b0fc10fdeba8f6a5e6aef4c78b5598
Author: Slark Xiao <slark_xiao@163.com>
Date:   Tue Aug 31 10:40:25 2021 +0800

    net: Add depends on OF_NET for LiteX's LiteETH
    
    Current settings may produce a build error when
    CONFIG_OF_NET is disabled. The CONFIG_OF_NET controls
    a headfile <linux/of.h> and some functions
     in <linux/of_net.h>.
    
    Signed-off-by: Slark Xiao <slark_xiao@163.com>
    Signed-off-by: Jakub Kicinski <kuba@kernel.org>
</cut>

Results regressed to (for first_bad == c3496da580b0fc10fdeba8f6a5e6aef4c78b5598)
# reset_artifacts:
-10
# build_abe binutils:
-9
# build_llvm:
-5
# build_abe qemu:
-2
# linux_n_obj:
29873
# linux build successful:
all
# First few build errors in logs:

from (for last_good == a9e7c3cedc2914f63cd135b75832b9bf850af782)
# reset_artifacts:
-10
# build_abe binutils:
-9
# build_llvm:
-5
# build_abe qemu:
-2
# linux_n_obj:
29873
# linux build successful:
all
# linux boot successful:
boot

Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/build-a9e7c3cedc2914f63cd135b75832b9bf850af782/
Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/build-c3496da580b0fc10fdeba8f6a5e6aef4c78b5598/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/

Configuration details:


Reproduce builds:
<cut>
mkdir investigate-linux-c3496da580b0fc10fdeba8f6a5e6aef4c78b5598
cd investigate-linux-c3496da580b0fc10fdeba8f6a5e6aef4c78b5598

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

# Save baseline build state (which is then restored in artifacts/test.sh)
mkdir -p ./bisect
rsync -a --del --delete-excluded --exclude /bisect/ --exclude /artifacts/ --exclude /linux/ ./ ./bisect/baseline/

cd linux

# Reproduce first_bad build
git checkout --detach c3496da580b0fc10fdeba8f6a5e6aef4c78b5598
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach a9e7c3cedc2914f63cd135b75832b9bf850af782
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/consoleText

Full commit (up to 1000 lines):
<cut>
commit c3496da580b0fc10fdeba8f6a5e6aef4c78b5598
Author: Slark Xiao <slark_xiao@163.com>
Date:   Tue Aug 31 10:40:25 2021 +0800

    net: Add depends on OF_NET for LiteX's LiteETH
    
    Current settings may produce a build error when
    CONFIG_OF_NET is disabled. The CONFIG_OF_NET controls
    a headfile <linux/of.h> and some functions
     in <linux/of_net.h>.
    
    Signed-off-by: Slark Xiao <slark_xiao@163.com>
    Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
 drivers/net/ethernet/litex/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/litex/Kconfig b/drivers/net/ethernet/litex/Kconfig
index 265dba414b41..63bf01d28f0c 100644
--- a/drivers/net/ethernet/litex/Kconfig
+++ b/drivers/net/ethernet/litex/Kconfig
@@ -17,6 +17,7 @@ if NET_VENDOR_LITEX
 
 config LITEX_LITEETH
 	tristate "LiteX Ethernet support"
+	depends on OF_NET
 	help
 	  If you wish to compile a kernel for hardware with a LiteX LiteEth
 	  device then you should answer Y to this.
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1723771714.8049.1630601502888%40localhost.

------=_Part_8048_166150212.1630601501973--
