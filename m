Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBC5CYXXQKGQE4DYUCRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id E197511BDD2
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Dec 2019 21:26:51 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id 140sf2374947ljj.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Dec 2019 12:26:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576096011; cv=pass;
        d=google.com; s=arc-20160816;
        b=g7uzSjTUnqPzkBFk5xdck/G2cqPfUAHZJDJEwB8c3OCQNiiatmE4cTU9mxM3M0M322
         y3UL4HydorGm53MpiDoce/vg09k1LcZee310PU8jlLbbZidHiPt6/a/CGhHIUkWuzBXi
         jSZbGPzLvQTZ4y1SCtKTJ0jVIwl8urXqGZPuNtKHzMZGylcGOz/kEnbD2++2O2nGs2Yb
         2igNWIJtCRIrgNAoSj3LRIn8Y0NBdq9NBoH7blWLKM8DjNgS91bbcPvK1IUZdbGzx4N8
         NAH5zeVuPOrS8upYfpt5GXMOO9E1SRXJfVwGCiXWlbT7Rfnf2hcdw2YS/sVkl6lVdQjQ
         NWPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=iaZIxRrjJBFkkMqo2cYZPlVXaF3uy6tRBa/xnFr+aeU=;
        b=K34nACGX7DQlnYxR+a8alImZ1npZ/Qg7Tpx5ZYmC0uOCvfJqgH/nvUXKu6V+g+R1Fb
         Op2jPvVRNuWnn/pubaokFO8q+B9lo/aZgDS5jFNs9S8UeUS7WrADLNNYBtM1b1HIWfz1
         5wr19qMSEyNHqBt3rVaq/GDDzhPxP11d3gtiUFvHKhnDqsMzRPwaRjDOWPcrUIVRMMjV
         a7+GwuIBG/w97eke0DA2W9xCAiHyO9zQHnkLulsypqLGQnCFVwWqN0NzNZVwMY0WrGPt
         IM4MDxKvV4tGWHA9A3DS3pPgXJcEFLDUScaufUWrxsZJw9KKlFqFTjNhjygtxmJXELbl
         +ywQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LMEYgqiY;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iaZIxRrjJBFkkMqo2cYZPlVXaF3uy6tRBa/xnFr+aeU=;
        b=ExlAuZy+rklI+9fbkKRevCXIsnpl33nDRuWDTIdWFhj49sg0OozyoUyiyMwM1QFclo
         l64pSP+wqq71477KS3OzhNTpJ3eMD0DRdUPwdSjOsjHXcDBCsVWF4qtRJtmgdg+g4hrl
         Y4K5XxgTOFD5JYAHbpNjanAd6kBnOAauuclKejJw7Jw/8hqtCY/2QUKQES77i5kujdgc
         sLiW0sksbbhwHq4QEOKTlzTT9moVvS+kt6tPPWIh+6/TYU7Ug5d7ugkqPQ3udWhjKxGJ
         LhfeFcycYeCtELhB5b23zwHiatrgxjTf+K2Qrwy1/0FYvSvy5ND4QsuKqk9CK8dSGtgi
         mICg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iaZIxRrjJBFkkMqo2cYZPlVXaF3uy6tRBa/xnFr+aeU=;
        b=gIVUGiISW+N3AynLK+b4TX0ery2f+GuQ7yh2A3Ap9Nsj7lAACrRVslYEbkE/DZtYtr
         NA9wN3eVJVB38LPXlNwKf5ODBrjXT3PgYxW9Wkub/u8cLPwVko5u7hZ611FEV9C4GJUj
         ExHFUjMhVeSu11U1iIHQK/+V8RavI9ffEA0JC09+L1rRilC0o4AHEkifnjt+4nFRQRTj
         FjhVBiF6TXav1MhoHH5SjehiEXBkB8LKV5kvlv5xDOY8z9w2nKkVdyUbn/F7xzlQADXk
         BiB7a/u6QdZoJ8caAh5hUX2g2qrDHxr2qXv1NmN/erf1DgB4NW1uRpYVLsYmmr3p1140
         c1Pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXgYVAadf5n+2XarMitxgjoZ+YSey2/Ysbls2mUtSuLr1H/JDNV
	/hz68XumuiSw0TumgmQDuHY=
X-Google-Smtp-Source: APXvYqyyh//9sgaUi87chKg/o6Q7poRIty76ej/e8DNnue1oqG7pJmmSISHVNeWsXaxFMAqXSiSZYw==
X-Received: by 2002:a19:5e16:: with SMTP id s22mr3513354lfb.33.1576096011497;
        Wed, 11 Dec 2019 12:26:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:3f0b:: with SMTP id m11ls316311lfa.0.gmail; Wed, 11 Dec
 2019 12:26:50 -0800 (PST)
X-Received: by 2002:a19:3f16:: with SMTP id m22mr3398938lfa.116.1576096010416;
        Wed, 11 Dec 2019 12:26:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576096010; cv=none;
        d=google.com; s=arc-20160816;
        b=QBRGPu3U0QIGS2WzzUyxmLi9j9TCAPJlsfBz5wnynQsOWgEOlW3oEesOyFUMEVoSBp
         aEpyfOBlr2RKwBv93nTVD0qfSUHMPr0CLr540P5mBbh+eAYSdE+xby2zXPQXH5Cf3G8C
         +YWQgltbXfcJD12iN2MJxRg7ftO4YSxs4+tIUlyj9cOZRRe6obWXlZXGoImsRyt0Z1Y+
         0pqJgg1lScBfBkc+98auw1gnb0zCKH/RK6ofyo1oxh7UApLyUnGCWGustarhMHT2OXso
         2Kmge/wICHznWet0RpXwKqpY+7b7M/2Y1QiMfPywxMNFTzITxFcJFSwHdOoCJvDwfawO
         I/2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=k97kCYywSeVesPDWZOgy3X7PWP0CRvrTmemUyz87lV0=;
        b=PR6iSAEeX1f1XyweRq4f4GIONUtXn5R1M3s2tOM5U6A3+i5p8KPjgJ6jihVZO7URZW
         VAQc1A3eHF59JnImIwC9a2PyfQoZtAdzHmW2SP6p5yR2ow8twAIB65iSmYolyHBP3UAc
         ZrNHWtwo60Zt1QRbo6GwWhRLkOHbEwUKUNUPID7dkaOe25q/xIYt8qAo4b9iqqHZ/539
         sHtd57H+pY7qi3u4LaOZaqp5w2OYWDlaehk7Lm/UeY9suaNDxY4QUSSFLhMcaaNIwmrw
         pEhwfrUWjKp3KynA1+6FCHlze5DM/qUxGaqBlr9rFvF8p2tmC0VCsrzBJc0P6PlyY2A1
         zxpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LMEYgqiY;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com. [2a00:1450:4864:20::435])
        by gmr-mx.google.com with ESMTPS id o24si182822lji.4.2019.12.11.12.26.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2019 12:26:50 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) client-ip=2a00:1450:4864:20::435;
Received: by mail-wr1-x435.google.com with SMTP id t2so132403wrr.1
        for <clang-built-linux@googlegroups.com>; Wed, 11 Dec 2019 12:26:50 -0800 (PST)
X-Received: by 2002:a5d:5283:: with SMTP id c3mr1909970wrv.148.1576096010034;
        Wed, 11 Dec 2019 12:26:50 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id a1sm3479150wrr.80.2019.12.11.12.26.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Dec 2019 12:26:49 -0800 (PST)
From: ci_notify@linaro.org
Date: Wed, 11 Dec 2019 20:26:48 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <592917797.4347.1576096009245.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig - Build # 49 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4346_1930196582.1576096008242"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=LMEYgqiY;       spf=pass
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

------=_Part_4346_1930196582.1576096008242
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig.  See 'Bisect log' in the links below for bisection details.

First few errors in logs of bad:

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[linux_branch]="76bb8b05960c3d1668e6bee7624ed886cbd135ba"

Results regressed to (for bad == 6794862a16ef41f753abd75c03a152836e4c8028)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
26831
linux build successful:
all

from (for baseline_rev == 76bb8b05960c3d1668e6bee7624ed886cbd135ba)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
26812
linux build successful:
all
linux boot successful:
boot

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/49/artifact/artifacts/build-6794862a16ef41f753abd75c03a152836e4c8028/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/49/artifact/artifacts/build-76bb8b05960c3d1668e6bee7624ed886cbd135ba/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/49/

Reproduce builds:
<cut>
mkdir investigate-linux-6794862a16ef41f753abd75c03a152836e4c8028
cd investigate-linux-6794862a16ef41f753abd75c03a152836e4c8028

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/49/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/49/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/49/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce bad build
git checkout --detach 6794862a16ef41f753abd75c03a152836e4c8028
../artifacts/test.sh

# Reproduce baseline_rev build
git checkout --detach 76bb8b05960c3d1668e6bee7624ed886cbd135ba
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig

Bisect log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/49/artifact/artifacts/bisect.log/*view*/
Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/49/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/49/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/592917797.4347.1576096009245.JavaMail.javamailuser%40localhost.

------=_Part_4346_1930196582.1576096008242--
