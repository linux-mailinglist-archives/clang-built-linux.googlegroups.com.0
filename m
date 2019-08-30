Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBZPFUHVQKGQEMTDYL4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0A5A2BB1
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 02:50:45 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id r25sf3175814edp.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 17:50:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567126245; cv=pass;
        d=google.com; s=arc-20160816;
        b=X3wTuUx9QepdBkG4CpRc1wqZaDHe61/I4A0p9zgSGKKaANQjZr/mVV6xF0K35m44nN
         8TEEY8gIvoATYxiPuxu/iie8pUDwiBiF+5sitm608FfxxRvtpHA/2WAudsv8pnBLvKnG
         GTcq/QfPqBpySCHdkCG5rUwbfFOi1FxEET+YSzMbiYxnefh/Ycdz+FbMV2ALgEsSS0GS
         2O6VGAlza6WSJ9neOyAkv2PZsWEfS8/Pm7FgnNAPAjOuwZZ20YbDMC6vw1OmHOmnex7n
         qvkUaMZvXxILjzJG8zKUAlGckaVpdepSp6NYtZ4UtbHdQ2GWACrT4WvwlPmSoP/2tGvl
         G56A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=rFMuwyadYN2MeTaqkgG1b32N8/Cg9LgMXucQLtbJfZc=;
        b=GHXj2p4oTaKe8XquNlit0bJC85Vs+qsTCFGztjgkD4Jj8o+Jmz99yT2UUYmpuIAkRf
         RtCT44mS0iM9Ev4TZ0m+seJQDogwezgMdkw9n/olcLy1tWOMUjNnurmO8HFuUWHnqp6G
         COqstt1BiCfs/fjw5ai4Va1HYBpKEdNw20lTP5EFvUh4O9BGqA76la0SXkpJRFed0pyA
         wZtzmc1KK71TxZteE0/yjn45Td8mBkidkH7O+A/hBVpMTm+2LRCW+s9h2l3SNAtz9a9I
         /kj0OSdbCQkbFgqHCC+u2pfHBnXzCRFrUQT7ZwMUI5yWsR29uZG0ApSjqner1tc92wnp
         xoog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=FCvja2RR;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rFMuwyadYN2MeTaqkgG1b32N8/Cg9LgMXucQLtbJfZc=;
        b=EGCQsXbhPA/WtT8PMJiWOI77HYCin8VQ35tZpBEmPv26XqxLVTStxhqMISbM69WRdG
         fEDlljnIRYbgxA54jZV7TEQt3Q1bwpuKe4xqyNyHC2R7EluNhABzQGa8pgRRth8/4UaX
         lc9g9SkA/Hmg3i6G/vYGj1dk0w0zI8j08hhFq3xaW/mpaGT1SoYif2yyK/9shZ1qqUzT
         AdVbN30B+Ln7Q/BEiPqJ1u8ANuhA6//zk71nFzr6M7NuXcUX5rWrMFqjm5OHoSjM3Ba9
         kWynBOCeTzUwd/wwe4yrh9gmaGAovNzLNsIAeIPhio+Y09uieN37Vm66m8ZknSythXeB
         75kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rFMuwyadYN2MeTaqkgG1b32N8/Cg9LgMXucQLtbJfZc=;
        b=nIJu1XkWBPvGV6HQsN7YFzPNpcDxAnmwMc2V/VpzJntVmJ4OIGGuPUwfvat3Yu3S1l
         ESEINIIn3YLpea4MzEkXM7nc17Xzal3VCeWx4jXKSf9JgWLl1ti47tNTnYbH6pd+3aY8
         penkQBIlmKie6lGNHHPSWQHfY2Sr5ZgQP+WixUZvCeeM/WaY7XzFI7jV6AW0ZPHmhVDR
         YQQFZLFuI2lw/HManaY2LzDk7NaRZzPhMaMOZLyiDt0A1wVqB3vQ5JiGd8qe9IUgg+Vc
         Ol9nyJbymU7zipRyQ2L7Svu+q6ScRqTzPQbP+2/61JZKjS2bk3itaFSKLdYetDtutVsF
         EcZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVMd9vGFNYfRw/TKRE2NsfjHEUk4xs8hnzYK+Qm6sRbU8oCIDrk
	tYincfY4nhDfueaLvT545rw=
X-Google-Smtp-Source: APXvYqxD2dY7XIU5jiNVCmI3ceRP0tbGkFnXUVvs2FM8K6DluTr/0MFlGFG+nmjg5LzL9fTTFHuG0A==
X-Received: by 2002:a17:906:f187:: with SMTP id gs7mr10801050ejb.130.1567126245359;
        Thu, 29 Aug 2019 17:50:45 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:f189:: with SMTP id gs9ls1269345ejb.0.gmail; Thu, 29
 Aug 2019 17:50:44 -0700 (PDT)
X-Received: by 2002:a17:906:1911:: with SMTP id a17mr10689906eje.290.1567126244975;
        Thu, 29 Aug 2019 17:50:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567126244; cv=none;
        d=google.com; s=arc-20160816;
        b=iEmSoSVXolx+QL0JwuN9mlzGp0EO6ASvJisSKunzGffy48lNTzTHCTGGd9KiyFekrr
         ZwfTXH3nqLgYib65VoAx8DqPw65YTdV8zUIyRzxMbRNs3+WfQEgZpU6YzVTHvAbb+Brb
         5XIwonyQR5vEEM90F/+bSRzHFUfHPdNcbHx6/f6bPaitzV3/AjDg9N8UjTBtWp6MAsfd
         EcoCilx++B5L4IMethjaEfTW4dTRYXX2sC9EOYUEqcdqaQ6p1BvqXyGW6ujB+rIAuIGk
         OzXM9w3unUrpk7mkuKgAvR7i/iAh0JY+4ApBO/iocG5CeO0OepBPWNl1ptZIPLjoFvCL
         BzSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=LKaVdiULHZHeM3qmwqXGbS3W/6JSevNYH66TL2VqMJs=;
        b=mBk8ZcOFwn+OinlkOlHvhoRvkAUoXWON+34kmTwLd+Hfrql2S3/RcEnc+7UKMvrf6J
         WL0pHws2nwEdLJTYk560jB1mzAwwGMssG5lnqiwb8RpJxrP2m0AxI4KOe6NCgbJ0Vsvg
         xOVvU0jXq7fRip3rMbmJTbrCKRbRQZA8LNHqBRxA8XYGTdZW3noaBkhiydKHt+K1Twl5
         PsuIXxdt4n++00yAt2oQU/qGMOCxMXcCNM0E1lYg2dm4gDj39sNT+7TRUq94benGnhBW
         FGCBytQPxFhCm3DeWWL56eULjUV7YtIyl6gxOQHjqpRUFe58wiHAoq19nqHXXOa7CcJT
         BFIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=FCvja2RR;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id m3si289430edq.0.2019.08.29.17.50.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 17:50:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id e24so4787532ljg.11
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 17:50:44 -0700 (PDT)
X-Received: by 2002:a2e:970e:: with SMTP id r14mr6839936lji.204.1567126244471;
        Thu, 29 Aug 2019 17:50:44 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2019 17:50:43 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk,
	ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH RFC bpf-next 02/10] samples: bpf: Makefile: remove target for native build
Date: Fri, 30 Aug 2019 03:50:29 +0300
Message-Id: <20190830005037.24004-3-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
References: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=FCvja2RR;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Content-Type: text/plain; charset="UTF-8"
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

No need to set --target for native build, at least for arm, the
default target will be used anyway. In case of arm, for at least
clang 5 - 10 it causes error like:

clang: warning: unknown platform, assuming -mfloat-abi=soft
LLVM ERROR: Unsupported calling convention
make[2]: *** [/home/root/snapshot/samples/bpf/Makefile:299:
/home/root/snapshot/samples/bpf/sockex1_kern.o] Error 1

To make the platform to be known, only set to real triple helps:
--target=arm-linux-gnueabihf
or just drop the target key to use default one. Decision to just drop
it and thus default target will be used, looks better.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 2 --
 1 file changed, 2 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 61b7394b811e..a2953357927e 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -197,8 +197,6 @@ BTF_PAHOLE ?= pahole
 ifdef CROSS_COMPILE
 HOSTCC = $(CROSS_COMPILE)gcc
 CLANG_ARCH_ARGS = --target=$(notdir $(CROSS_COMPILE:%-=%))
-else
-CLANG_ARCH_ARGS = -target $(ARCH)
 endif
 
 # Don't evaluate probes and warnings if we need to run make recursively
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190830005037.24004-3-ivan.khoronzhuk%40linaro.org.
