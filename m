Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB7GX4OAAMGQE65N527Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D08430B79F
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 07:06:54 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id l51sf8517781otc.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 22:06:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612246012; cv=pass;
        d=google.com; s=arc-20160816;
        b=IqZ4Y9tEE4EGt+I2Nq5U7E9SI3wnEMqeJcgzSZpsSmOK7zrREVes+G7qGYlxo1eaKD
         fsl8dhVAy77zJ8fi7roMD5Qiegb5ggubvItntHvx6/jMQqfE//JX9mYMEFz24Jt5fylm
         fP8rD6QaiSqlCb0cPVS+y9EhOY12OsNn0y0YhuzE+Tm3iiNQiP2Ji1T6g1D2EAioSMRX
         kMmr2VaMly52u2oDDAHdXGJzKbM+HNGfFqKd7goRu5dqoytpkve4kR83FCOAxfO8sUzY
         0VCvadBvh2QAPWzrSv//2SFf/SW9taZ/xy9Oswjalrpn6/3oU+jKhwOnQrrH3HSMQmJO
         wY6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=0V17WJEwOyxkOk6i5GQ/aOE4LH+0ABApw42y7Z33Mu8=;
        b=Yx88T19Kf2E41M5+sw29SJ0lT0pJncqiurwnXZ7hC0MhmEAsNeWZ7xPBNPY20G72nZ
         wff39ki9W8MxtKI1K8MXuannR5GMZBMZBGqg4jC3L2Ng5aup/AqG5Y6mD9X6A9MPgdne
         MApYAtFYcNzPiqer6IFowVpI+g2AKj9UYOdpjFh/g/0iND/nYJEisCbLYjnDuomNC6Q7
         84T5EDBa8VgMw4WQ/qVPadaREG41lzpZmPFfbs1j5oXkDpJzxWUC2NCvu2NC4n9+zu9N
         Fo+cdIFHIaub6TGma4YMnHa+/UCUfPbtznZYMVqG3a8WfW0u8sM0MjKBmlGAM7O6DOq4
         cMoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=j8GSxflQ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0V17WJEwOyxkOk6i5GQ/aOE4LH+0ABApw42y7Z33Mu8=;
        b=lUzJ4vkrzaJwWZy4YprKcb6p8VVHUAn06o4nQjzXWOaYSh6vYCV9FFxU9jWbOse8xb
         mZzXOP50UAKgHBs8hHRjYmiAzW7FUCA5AixR/sa6+1gQgRu/ArNIF0qQNzw0ZS2Q6/3h
         QsKcpnDt3NAOK68nkyZwVEe9OWLV7QZHDPf6MldVLpZz/+cxFFXPbvUas71jpJOXFDnx
         tjmecZKuR0zvjoPNdk8XfH4OS23PPQiG6HQicX1brQxL6LpkHAKTk7Xb/4Y+BEY/ID27
         9mBRbzNn0eJ6kl2n+810tRLYG+h2ZMp6WnGiZagns0T8ZzlZYVX2tud7bJ1wtSVzMClj
         tfeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0V17WJEwOyxkOk6i5GQ/aOE4LH+0ABApw42y7Z33Mu8=;
        b=ovc3U3aY4VPH5OIcVyjRfs+ZcsixhBobLwfdhuE83GfvOot5irtWeKB/zvltIcBgbk
         NH4ZYdmSnaGD36hBHWcL/sE6D2W69zXMlx8HjMvkR/EXjfV13B8F12vtbpW261PPhZDc
         hVe9vuBpzsiG/xzKVWe8fmbCB+iwohkBAmlFznkJL4YoJ8mIbKeW+fHhYAj3nUL4tBD5
         PegQ5a0445Ktjd3dhRm60dZUscE+NupImZnGZM4bKvDMnevjqgKLM1ZOaHlYsMKeYp3H
         FpGM/7VSQEdSMCO5Hqcs54nhY4ZyPy3+wQGhCcKtdjh0yTJzq2sF5M2J05oT8/qDzmcT
         yKJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mWhQSFEwFHDeMxPwSkC/zI37UgrBbpFSbIwDGUroSH8GzQskD
	fgRSmtqdxGPbeZYaKiaX9qk=
X-Google-Smtp-Source: ABdhPJws/omikIF38pc1K94WkJC4SE8kgl20PfgbBIEUUj2Zfnvsy/IGwKXDS57enLVpKn2h7Xo5dw==
X-Received: by 2002:aca:fc84:: with SMTP id a126mr1708797oii.71.1612246012668;
        Mon, 01 Feb 2021 22:06:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b489:: with SMTP id d131ls4620549oif.10.gmail; Mon, 01
 Feb 2021 22:06:52 -0800 (PST)
X-Received: by 2002:aca:7252:: with SMTP id p79mr1696426oic.47.1612246012284;
        Mon, 01 Feb 2021 22:06:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612246012; cv=none;
        d=google.com; s=arc-20160816;
        b=rKcGUAN1/8hDcaWwm+96NMTfSraTpDESa3V1473CfFg4j9Uv8GsAAMniOkama6NzCi
         oHiyZ111KN8GwqyEuLdELODdAHz3eOvOS0waPcNjwXmo98l19c5c58owH/GSf2fsnhHe
         ZAMI+HQ8Qanyq3JPZ03NaeDahZ+t8mAtWa9nC/R6P7S4T908qMZeX1OQcMVhnim/f8vB
         OF/ql/O2r7SQXuafo+67//3xUPSVgGkxl4ilqJLLYB1Z8mw6Uy/pNLBaaZFGKjviqZ1O
         DFSFn63HdulE/Ct9CJFokSm07RlKCFUQh2NfVZoXRdGKQ+Uld4ZJkMyl0FDROJ+UuZT1
         8cLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=p254OQ8uI5RbNpSjZoC/v3UG4wb9pzgiLWVA55BEZlE=;
        b=EZb+Jf9OiO1WYCuItld91jsuaxVXSiefLdGH13FmguNi/UQwb4HP8r5AGoRTOS3P2Z
         yjXKgwLZMnOEnrbKKMAxCy5do1Nt5/S2QlmX/KiAOcoB2wd61tFonVPPf9ZLRPimQrAA
         gFOSfYK6AB/2AJR9MZojQoeQUujGM1YMZnvJtcIGRGzyG1TQAxgjJFwVUIqNA7V8V9gp
         K8WyAmP+o5FzrFHPmsDuqoGDskRQgUFIAEl2ESRu8Sfljztj3BuRgyz8C8sVXfGdk/mJ
         TO9XwfzTvBOxeaLJ4WXAKftWHOxOVYjhHvUdxFxmOw8I5VjnTnGaroAs33j1ktJBCZSj
         zFqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=j8GSxflQ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id k4si1080711oib.1.2021.02.01.22.06.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 22:06:52 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from grover.flets-west.jp (softbank126026094251.bbtec.net [126.26.94.251]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 112669xh016430;
	Tue, 2 Feb 2021 15:06:10 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 112669xh016430
X-Nifty-SrcIP: [126.26.94.251]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH v2] scripts/clang-tools: switch explicitly to Python 3
Date: Tue,  2 Feb 2021 15:06:04 +0900
Message-Id: <20210202060604.711160-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=j8GSxflQ;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

For the same reason as commit 51839e29cb59 ("scripts: switch explicitly
to Python 3"), switch some more scripts, which I tested and confirmed
working on Python 3.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Nathan Chancellor <nathan@kernel.org>
---

Changes in v2:
 - Drop the spdxcheck.py change. The same fix exists in linux-next.

 scripts/clang-tools/gen_compile_commands.py | 2 +-
 scripts/clang-tools/run-clang-tools.py      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
index 19963708bcf8..8ddb5d099029 100755
--- a/scripts/clang-tools/gen_compile_commands.py
+++ b/scripts/clang-tools/gen_compile_commands.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 # SPDX-License-Identifier: GPL-2.0
 #
 # Copyright (C) Google LLC, 2018
diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
index fa7655c7cec0..f754415af398 100755
--- a/scripts/clang-tools/run-clang-tools.py
+++ b/scripts/clang-tools/run-clang-tools.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 # SPDX-License-Identifier: GPL-2.0
 #
 # Copyright (C) Google LLC, 2020
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210202060604.711160-1-masahiroy%40kernel.org.
