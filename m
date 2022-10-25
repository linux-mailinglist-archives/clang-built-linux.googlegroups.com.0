Return-Path: <clang-built-linux+bncBCT6537ZTEKRBWWH3WNAMGQETVC2A6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B10160C28C
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Oct 2022 06:19:39 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id z7-20020a05640235c700b0045d3841ccf2sf10967676edc.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Oct 2022 21:19:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1666671578; cv=pass;
        d=google.com; s=arc-20160816;
        b=InXgOJFJTZmydx1V1kHcaq1zQ5kUtVAwkJuqFFQgZVotxgxHbBzgQAgPsQyJqOa4ui
         9FuXM8F/aWgLqErJNdmfLpOHw5y1x/im0R21wXEDGYzITljuVRaAD+a/SkkaqhiXAnT6
         aWcNDo/eOODsH4cCQxmXQGL/giKwQDBZPUK69kFvksDlYV3UgMNY8YCIwWxyeSunWmbn
         ywKwJbFMxGZV1HHjV5Ki88IKdFH1h0zpeZ74+kHxGGsAEFmaEFkp4bb78De73Gc5yCES
         Kuz0Bj2jUiXfpMLl6maQoK12M0Mn4hoeLcdmz79CDa6RU+2S+IdKDtWVXiRCRqg16N3F
         CGsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=a+trQz8zYExtfNR8X7GaXUqIV4Bi9I78PRG4ysXhMcY=;
        b=VaFOReBwae51ZFKfMHq11TniyruauxnrreUF7m+zI1a/3FOOEhGzwdDm8SQgJMFphv
         bsLijISzbOZhhfFj90Xv8B+MYb34c9rh7KjL6g7mN0/HxueSj1on6QCB77lcIz8SFKNB
         Zv0Q4n2oAgeLtVMda90sa3BUkNVWuDJvAiTZQ84xE2oEGTOoPigS1cUaRh+L2/bWo1LP
         FCzrC70B2h2oVc1oKXbIsQMd0TPZDf6zr7nDJx3+TUx9CZ4lKA1676kLq/3zje8tfKCx
         zEen4LfNxGmzmHmD1ntdpkO3IJ5vp8rMHZQBCTAoSmXK3o3ViIhllu6qprHFe5sn/cYx
         ds5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=L5t9dACO;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=a+trQz8zYExtfNR8X7GaXUqIV4Bi9I78PRG4ysXhMcY=;
        b=OMSFTfKsKtMA1FEGuUhWNVcI0MJ1EbnMYJJIFPc6f8pVVsAYV70jsCTcFIaUDFjk4t
         pEvIm6Z0nbbdb68a8zkeAG0vuzdAv3HJsDHIelcR2JyKkS/iSPY9Njto7BoO7beP+8Xs
         k8kR+1QNq+/Wkt+aX8qWE/Y9qGqYCsTzj3UEvvjPN+N+6caAK0714qRocZaCsriDBHkt
         XCAIfJXg0lfiW37mXdNCairYdZYrBUhWlxLvEBroDMTVEboEGJcKRos8GU4pkVeTG/09
         RX6t9jvES43BCYphOET/jMdDYyoiViJNmwZRNo/T3wfto/ATt3+vixMeQZj2LE5YmOeX
         DvBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=a+trQz8zYExtfNR8X7GaXUqIV4Bi9I78PRG4ysXhMcY=;
        b=FCfxWX2WcZrMNTiVWv2ZyEPNhvvV8Be/sg2o8haV738EA5M40q8qMZgSR8zkAFpACf
         QGwAqDyGiGKFNc4V97+oDQneDfaP1sl4LaHpjjleFMUjvIIAZts1CC3JwzC4h8rEAjV/
         MnjBlll6bmWOSbHqe9AhMgG/9VNVpeOA5N1OZs6bWAKvpgA6Bbt2OwPuMWFAKGW7oanz
         ejsKxmF7j7F089TmLAmKXNq23mWHBizsXMnEQ8V5D950CCBwPtYRphXED6cZz6TIRUkC
         +G8VR348cEWsydtLKT6GWnPtEhzAjkwsHbbDciSUArUeHrexze8t1KByu8z9lQrU1JOy
         71xg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ACrzQf16ENeHqqHfE6wukyWFlGoYI1LuFTV2VziSVkk6xC4ewvRI4/y+
	L6J9hgMLFuB/M/6/unSrcuI=
X-Google-Smtp-Source: AMsMyM75Qd8cWqkKNAwtRw+SSngKFJvtvVy2mYwio/CUy4bcDe88N+sXXOwHWRk1HFtD/XwYIqsEPg==
X-Received: by 2002:a17:907:d22:b0:78e:2788:51ae with SMTP id gn34-20020a1709070d2200b0078e278851aemr29951613ejc.689.1666671578312;
        Mon, 24 Oct 2022 21:19:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:3a91:b0:776:305f:399f with SMTP id
 y17-20020a1709063a9100b00776305f399fls5665158ejd.1.-pod-prod-gmail; Mon, 24
 Oct 2022 21:19:37 -0700 (PDT)
X-Received: by 2002:a17:906:4791:b0:7ac:98e7:eda7 with SMTP id cw17-20020a170906479100b007ac98e7eda7mr271948ejc.321.1666671576715;
        Mon, 24 Oct 2022 21:19:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1666671576; cv=none;
        d=google.com; s=arc-20160816;
        b=vZtJuEkFB4ZH+j8HYLLIlMqzWxAoMDa2JlOza5LCqYU0HOHWPiQ2J6O2EOybwpve+F
         zz8nsVYG3t9MRYyGnlfhH8sjbfjHJ+wb0KhoyYFPjjWRMk1NWtCfoxdJeqhHpntfXbO2
         KbxgGaCjFnGMi43XnsQSSiZVjul6WeVpvdR9cZ71Nipz11pR6gt+8IjFOcBrut5+uZ8E
         /nYzTcX8dzgd08tf5iEC/Fg6deV5BuK6x3EKyzfMonRFanYLqXDGRKCyLa3WspJF+lMT
         0pqWOkyYtU1KMOkd4Y706UzljDM5d9wz8DwRxOthJPgcM3kDnwU9AvU4We4UXlwfZKOe
         Leng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=jE7EEHygapTbBlOi1/r0KUl4gfCfTSeyBtwcchujuS4=;
        b=gt7nHDDpRB9SKMMC5xAQeZnxBqaDvvL4bReoENqvRQnW7mBXeGZXj+98anh2oHVun5
         UShIFzawYuA1gADQom3+VLBx9HdgQFg+h/b3zl3WjtO8DFwcxjYmHlxcJn0Fk7Ven5UP
         07Nyrf2N7Yev/hTFuTEDxCYnulh9tknncOo7vfPht/r5bHAmC8rxrROduBGG6ChaDweb
         3xGhG2ugHtl5UHsV8TU8y5puzZuqr7M2ufuJwpD5WqzLorwTOJ21ZLiHJbEMcs0DPhgt
         5muGeMUcFVqJw9s3Vdwb6Dwu1+ZeFSVkGJfctTLLjgMsyVOLhDiiA77hKmGi2z7SrJbc
         VNmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=L5t9dACO;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com. [2a00:1450:4864:20::536])
        by gmr-mx.google.com with ESMTPS id t11-20020aa7d4cb000000b0045757c7cb91si50771edr.4.2022.10.24.21.19.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 21:19:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::536 as permitted sender) client-ip=2a00:1450:4864:20::536;
Received: by mail-ed1-x536.google.com with SMTP id a67so34461668edf.12
        for <clang-built-linux@googlegroups.com>; Mon, 24 Oct 2022 21:19:36 -0700 (PDT)
X-Received: by 2002:a05:6402:3c5:b0:45b:55d8:21ff with SMTP id
 t5-20020a05640203c500b0045b55d821ffmr34082611edw.253.1666671575538; Mon, 24
 Oct 2022 21:19:35 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Tue, 25 Oct 2022 09:49:24 +0530
Message-ID: <CA+G9fYvGe+fHXw8RMeZuXB-rGVDjs81m9_RwDq73R+pnVpYjEw@mail.gmail.com>
Subject: Clang Build warning detected - include/linux/memremap.h:258:9: error:
 expression which evaluates to zero treated as a null pointer constant of type
 'struct folio *' [-Werror,-Wnon-literal-null-conversion]
To: clang-built-linux <clang-built-linux@googlegroups.com>, 
	open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org
Cc: Nathan Chancellor <nathan@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=L5t9dACO;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Following build warning / errors noticed while building x86_64 with clang
on Linux next-20221025 tag.

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

## Build
* kernel: 6.1.0-rc1
* git: https://gitlab.com/Linaro/lkft/mirrors/next/linux-next
* git branch: master
* git commit: 76cf65d1377f733af1e2a55233e3353ffa577f54
* git describe: next-20221024
* test details:
https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20221024

## Test Regressions (compared to next-20221021)
* i386, build
  - clang-12-lkftconfig
  - clang-13-lkftconfig
  - clang-14-lkftconfig
  - clang-nightly-lkftconfig

* x86_64, build
  - clang-12-lkftconfig
  - clang-13-lkftconfig
  - clang-14-lkftconfig
  - clang-nightly-lkftconfig


make --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/1/build LLVM=1 LLVM_IAS=1
ARCH=x86_64 CROSS_COMPILE=x86_64-linux-gnu- HOSTCC=clang CC=clang
In file included from arch/x86/kernel/asm-offsets.c:13:
In file included from include/linux/suspend.h:5:
In file included from include/linux/swap.h:9:
In file included from include/linux/memcontrol.h:20:
In file included from include/linux/mm.h:31:
include/linux/memremap.h:258:9: error: expression which evaluates to
zero treated as a null pointer constant of type 'struct folio *'
[-Werror,-Wnon-literal-null-conversion]
        return false;
               ^~~~~
1 error generated.
make[2]: *** [scripts/Makefile.build:118: arch/x86/kernel/asm-offsets.s] Error 1


--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYvGe%2BfHXw8RMeZuXB-rGVDjs81m9_RwDq73R%2BpnVpYjEw%40mail.gmail.com.
