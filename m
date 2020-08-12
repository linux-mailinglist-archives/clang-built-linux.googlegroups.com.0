Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBK6T2D4QKGQEDW2H5FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 21623242E21
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 19:41:00 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id z1sf1982056qkg.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 10:41:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597254059; cv=pass;
        d=google.com; s=arc-20160816;
        b=cECb1XRQOOK/mg3FmcdaTpAP/xwyQu8A7Eb4EPSr3C3X2p+uYhNbMZ6k7sZzEbC9wD
         Tg4/6lt0diT8BFxvoEiZsD0zmIg65EZtWNmXWlRIMecGCdOu1pnkNDpWr4Fnl/KqdxCF
         P+Zctd80LHs4JjDFzXBOhf2rq1p0Q5BbP0puMA6gkI0LHNxMyVEjQT+u/9sE2qSUe5wc
         bOeKZfkXwcpS8xV0V0kinKCgqpjL3/tUDi7M+99F5jlyK3UWlV+jIlYzEFVrfCvs8/xX
         M/3ddl+erK/7CAZueu2VL6j1mnFLNXf+NE8RaSChAYU/jBX/WDcHO9RgvrneWDKd2JXv
         wq7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=zdrm4H9gBA4sR4ZMKKyQwRwV6KJqetHiLPd/bIZWfrs=;
        b=WiHtMWM2uftegcu7YwouWJeu7hMNV1EpIiQ+lRLhYSXpt2o8V6v17LQwL/mKTVqV/C
         +G+QyngdNp6i5jLTHeDXIk9sM7h741HH9m7oPMInkf8T1fdikh0G5cD2DG+Q1VlpJqDo
         1bszejVdM+eApUV86/WG+7oKoGFH95rvHwKlpcg331u/sulEj3O9uX9TpMag/Sc1Yvp5
         wEaQOEBolo6gQ2v3RZyORnLlL1TlH0Lq9pd4sFm8XzrkRLnu+CRtQFvYov/Xq3REVTUS
         9P7EAB0yHHo6gZBUH/vz/DA/xNLNdg7Al2ziWsiF+aUHyd5CxoiGRgw5o0lzzwdDC9eR
         xW4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=pcNN+mTt;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zdrm4H9gBA4sR4ZMKKyQwRwV6KJqetHiLPd/bIZWfrs=;
        b=PS3SAF4ws4ULLAillLYhNyU7MnEoyUvZ96m1gO0oLpiW4zfzHKhbuFWDYQfwcA5xTG
         NTgBvq4ygE3Za3mfEzkIlcY3eSe7O4CL53lt88hmJ35qJzHmdj1I6444ul/nEjGBy8Rt
         RGyDsB7pfQR7PcpFVuU7/EMEJcHHhqKAXCQBtOm25NJsnHPBecF3nOQlYEszGkD4Pr2k
         G5j7FqbdCjTEGuAuB1mjAdXyRGlsN1qbyJhNgbhC7W+q6n9B73EE6osp+xCysbQuaGht
         +vM9Fzao90OOMYDFDfMnDiLUCrPl4s4IcIo440cotYSqQ0i8xAI280tnXk1N7MbnXWow
         uwQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zdrm4H9gBA4sR4ZMKKyQwRwV6KJqetHiLPd/bIZWfrs=;
        b=VUIqXm80eV7QZMziJ7VPAZ/fDr+yD7ID4ESwEmyTHRypPrVTc5unylT1DhEjt4i5wi
         W/Ov83KeE/YYAs1UZJZHPXD0qL3mnf+3CMCbtb6h3uBYy3ngGtJglF0uj3uweQP+DxI1
         PhCw3V3Q22scGLKD4Twii+5k357nc/r52PxvHM6IvNqZDzoUlQHraEw1OvimgkE1uf6L
         Ll9t22AViSpia0+1hri4HUyIzN+d3Mz5L7rqAnuj9vtATB19OmRl5zKHxP7BrsDyMyow
         w7nlNAuT1XUaeMQQbr3OPNVRYkVJld+KLRBQuJnkKgz6DVe2rTfDFv5tXgwBau5i8/aw
         kALQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530l9Tr55/oi7yZaxvdZjwt7+swoegz9DoZFuifE+jVHnaET3zSy
	O9MQLUKJw9aSEvvQt2Laauo=
X-Google-Smtp-Source: ABdhPJwAz8bH/Klc1nBsKBJfrp/NBARCbCMkPmpwkcWbeiAZJvRj/Nvysz0mNAcggbM39WHSS8l85A==
X-Received: by 2002:a05:620a:214e:: with SMTP id m14mr1001524qkm.339.1597254059086;
        Wed, 12 Aug 2020 10:40:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2f66:: with SMTP id l93ls1098829qtd.8.gmail; Wed, 12 Aug
 2020 10:40:58 -0700 (PDT)
X-Received: by 2002:ac8:4cc2:: with SMTP id l2mr835367qtv.130.1597254058757;
        Wed, 12 Aug 2020 10:40:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597254058; cv=none;
        d=google.com; s=arc-20160816;
        b=iWvxN9CuRwddsQB+R5/pBbDjyRCrlaEWQXyK6ZHxcQnRnewQibBdkDPLRi26Oqut/Y
         ZbAaYS1b/Fk0A61834vRUfmfg+oCuFvuQUKHTZ/EIEtL6gIm3yHc+lqOUPCvT7oxQ4pg
         6gSIERWZIT8Q8YyALQh6adHamFHgGHrHKKtL0WMQk8hSFLa6+55PtgeNygsosyLcdqOe
         HHxWvbLoqQXPmNc3XJyYeB040JvT+9atuY/QPnKMccfq+wgfaLa/aEv9U0moZ5eOztgG
         oLdyXMkbFHSJyLKIDCaTaS3bv/GkCoeBGiSBZxVtE7Os6hrAt6N4F/eFPqloM1kRvcZq
         HQFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=NQienNgF5pVCaPBiUe0b3LOHwFrQR54gPM9kMQxhXJE=;
        b=EXfaZLajvFoh9ULGPl9II2dghvlKwvXE4VFwuLTBMWfG4il3F9E7chLBPzhDVaA9UA
         ZxcyKqfKtBcRHOnv1zjZr6wIwqcUEJBhssJfgkOBeGafLfZX3G3knvnCIZgX2B7TYKqG
         AEqxCYmFb/wttl5S4vWFJ1fj8wCZj7My85ch+jiJe+nUBifPVALtjmmAIPOCAEBPgJOx
         QNVFUV3gNAR18iTJCO882KYITtTlD54iKZ/j82cZTimnxeLFNV9fUce/PfVMGBw/oeHO
         bP0D805jQua7VzCohTfywee8Y/9Cmw+QojAq49+OZvjhtbxHMMRXs5HywBeuzcOsxdDE
         7RDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=pcNN+mTt;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id o24si197957qki.7.2020.08.12.10.40.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Aug 2020 10:40:58 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from oscar.flets-west.jp (softbank126025067101.bbtec.net [126.25.67.101]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 07CHeC4C012279;
	Thu, 13 Aug 2020 02:40:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 07CHeC4C012279
X-Nifty-SrcIP: [126.25.67.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>, Rob Herring <robh@kernel.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] kbuild: clang-tidy
Date: Thu, 13 Aug 2020 02:39:55 +0900
Message-Id: <20200812173958.2307251-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=pcNN+mTt;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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


I improved gen_compile_commands.py in the first two patches,
then rebased Nathan's v7 [1] on top of them.
To save time, I modified the Makefile part.
No change for run-clang-tools.py

I am not sure if the new directory, scripts/clang-tools/,
is worth creating only for 2 files, but I do not have
a strong opinion about it.

"make clang-tidy" should work in-tree build,
out-of-tree build (O=), and external module build (M=).
Tests and reviews are appreciated.

"make clang-tidy" worked for me.

masahiro@oscar:~/workspace/linux-kbuild$ make -j24 CC=clang clang-tidy
  DESCEND  objtool
  CALL    scripts/atomic/check-atomics.sh
  CALL    scripts/checksyscalls.sh
  CHK     include/generated/compile.h
  GEN     compile_commands.json
  CHECK   compile_commands.json

But "make clang-analyzer" just sprinkled the following error:

  Error: no checks enabled.
  USAGE: clang-tidy [options] <source0> [... <sourceN>]

I built clang-tidy from the latest source.
I had no idea how to make it work...

[1] https://patchwork.kernel.org/patch/11687833/



Masahiro Yamada (2):
  gen_compile_commands: parse only the first line of .*.cmd files
  gen_compile_commands: wire up build rule to Makefile

Nathan Huckleberry (1):
  Makefile: Add clang-tidy and static analyzer support to makefile

 MAINTAINERS                                 |   1 +
 Makefile                                    |  45 +++++-
 scripts/clang-tools/gen_compile_commands.py | 117 +++++++++++++++
 scripts/clang-tools/run-clang-tools.py      |  74 ++++++++++
 scripts/gen_compile_commands.py             | 151 --------------------
 5 files changed, 233 insertions(+), 155 deletions(-)
 create mode 100755 scripts/clang-tools/gen_compile_commands.py
 create mode 100755 scripts/clang-tools/run-clang-tools.py
 delete mode 100755 scripts/gen_compile_commands.py

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200812173958.2307251-1-masahiroy%40kernel.org.
