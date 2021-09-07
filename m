Return-Path: <clang-built-linux+bncBDFZ7QNLWEFBBUPI3SEQMGQELJVJXQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id C058340264F
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Sep 2021 11:43:46 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id ib9-20020a0562141c8900b003671c3a1243sf14545922qvb.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Sep 2021 02:43:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631007825; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mq4lHn4mLSlTd1H+DrO+mDklB6ajucYJPlU1k6NzOm9IWy34ENFPev7UGNfXDKYNpW
         6GMVhNyS/vHndDCo0yTXPVGqvYes1XWI0XfLbaGsPb974XCmjQ0D7MyaXqAmwTZgdKxJ
         XToCmBPBawQXm2Ic0K5UPOqa0EKj2WR7TF/00DbdpFzAmzFXlaI1bkH66CqjHr/9t+88
         2Su/9gplFw5LmcgRBdAkadsaDqGoQfJlagpZhpvqVg1OzJ9O3il6BN2FnlZTAXTL4Bop
         ix0zeSzl7xrJ5xMXb6Zn4V5uTWs3CnsVMc7rVWIrhJWaVuoq2zGV+heFnscBqctaWW49
         qj4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=1N2cP6qlbGMDDGXflYJT4KJxt01yzFpUcTd69Hm4S1A=;
        b=dZ63SRUhvaIHPP8AnIxhZzozMmM7lX4GlaXaLJFMtR8A1wYm6vY1qk6MK1HeKQF1xO
         HkPbPLCkCurzmBCVtDqCyRKanYI4XJZoAUXjrM+qiDEd9TiAcP6T0bCsJkL8+40sIdAO
         UEBg+S0HjTjWA3TW+nUeOdm/nzkMSYUChp4BaTahvMjsVmRVOz5LxuwJaZdGcN/MMYqG
         rWXFJ+kUACzvfZifHLJhHivpniEG24aogLee9sq8bisC86AiqDIeMEidCDUTQZOt6DNn
         Vq7ALameBbjRENlE62fAm90gP8Sw6YOEa6MdDK/ZaFkQxK6Gnqn7+B1/Enxd17IShCt3
         8Xqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ikD1iRwa;
       spf=pass (google.com: domain of kortanzh@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=kortanzh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1N2cP6qlbGMDDGXflYJT4KJxt01yzFpUcTd69Hm4S1A=;
        b=OrzvwavgPbAcMU4jR9I+BLxCVwQHJXNJlOnwmB4mxjpgcL5ZqhD1C1bzYNOjYUqNPH
         zhSg1k1ZrqQjpk8q/Ctwcuq0j5oBQy/nO8K/01Na1LAZjOBZuvedBrSlos66N7krG4b4
         I0Tv+dPkSPHZRa7npbBGNzTmHx4vTTYB0Vek/n839z6Gcqtc1qmE2OP8cFDaUOhkiWIz
         ncra6ZPqcOrNyFmbAuXpQZdP/EiHSQ9eWTsKSwlOF1JnPm51RKHzKQPQfci7r9lYQG1m
         ggdgxJ/MgBMs/AVOM/JYu+UO1sLgSlNIjZJvIPdcWc1lOByj0bptdhW8SYSesoa9EuNC
         5gYg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1N2cP6qlbGMDDGXflYJT4KJxt01yzFpUcTd69Hm4S1A=;
        b=awtyys9ePmgwzRfheQN25LNqUjzocXhAAuC30Yf/78vbrwiNMU7dv8pkaQ7RZ1uvJq
         i9ON1OuBsnuJeAOckHYJfsIkPMkQluln0dZwrw07gm2t+S9oiVP50Fr9y9rpZRFRptkX
         FRrZoDKZlv94RcAumIgotsw/gKabp+MOiRC2jwoFOkU5WJW3WrK4TF9J2UmWFQWWd/wA
         LupQnVSDsCJwzOG1FiLzLRhz8QmXMXM0M9rlvQAFG0DWKN2m20/Adj3y9/5jEs+v1H4s
         3p2RmbMCjC2JASNzsGX1juxllRdviNZUA4LMf6TIR4Rq+w8E5JcFFuW751jrS4Puhast
         ncpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1N2cP6qlbGMDDGXflYJT4KJxt01yzFpUcTd69Hm4S1A=;
        b=NFZSm6swX4mrarVt/X+xEwOQtMB3Mx++La9cIDyekQCTaXlaUWEnSr1gYbZcJocCTA
         iAkJYksO84zQ8ABCxGxiNHt5vIyT4ZEcxrUz76NJpW6aoBjB5RXckumaqulxWBmH0AmB
         k5CHt0XyofctF2Ap++McC8D7MSxjGwFmTBt6xHG2sYe1VplgSUEQ56gBtqQokSjguJt4
         pOlxPFb3Am74TTYt/vp0Ci5IUApHbZtxiFPQtLLk6izV//upkbmluxZWImIV1byT2UdF
         4q5wlG5KFL/wn8A0rbe5xZzgAXPn1Fxw1JuEK7kE2repGjL41FaKE1ixi3GS3mqphPLj
         2OCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531gXbm827M4iTjKbFyHUS+O0XQtsL1DhteOqflTUzSymDOeB9ao
	18fvaG0CvLx8owhzUhSlGIY=
X-Google-Smtp-Source: ABdhPJxze+77ylwJsIEe8xGVeLS9bNd7U3A0adqnR0Z6xjnt8b22lXsubcqmCNYtjyxXORJWzFHtbQ==
X-Received: by 2002:ac8:40d6:: with SMTP id f22mr14842364qtm.345.1631007825628;
        Tue, 07 Sep 2021 02:43:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:e69:: with SMTP id jz9ls3136637qvb.6.gmail; Tue, 07
 Sep 2021 02:43:45 -0700 (PDT)
X-Received: by 2002:ad4:4873:: with SMTP id u19mr2264174qvy.11.1631007825218;
        Tue, 07 Sep 2021 02:43:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631007825; cv=none;
        d=google.com; s=arc-20160816;
        b=NR8cjrQ438swC/H+UtC0JmlobBZWjhIvo5I1/F76nLqGaDFt0dtH3TYN9bMMLCkOFG
         z6pbxB+kuzbp3I5R5RNsrio+mJzZHw0QGh1UYnqHdeO8eoU7LuLtCHJba2ZHRaREfZl2
         wmZl5zx7uT7IljJO/ZSJievTNINim26vYXCweZz7Ge4DoUZ69Wtfsyb1fS9z03t4ECfm
         n8P98dvu+RTcf0HyGvqXAtm190Nm9ioK1bXM69g8UZK0KWVYYNrrroP87VGiTRdA/T++
         DXndqLW1CYwVaMnHkNYhjFDSFNWyjKWux0Omi/F4cFeXX+EdHs18++CJjoPmKt3APIma
         T8cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=LI0SXYREzj4VJhXtyJ/PF21xfObSJ3KLySRI6EJ3Txs=;
        b=LCD+Dsrp1jON7B8/QLB4wPdTPoPBCd/YB+32WPEi5NJCZpH/5R0nsz/E5C7W3Avovi
         CK4OGwfZx1kmYBO6Q/ThSE0yzrDaKL5cSyJwuQDx0Bjaz0nR7fYHvaWCjOrxk5pkCdAy
         tc33mhuxuYR+bQxSdETf7BLIBPtblqc1hW/Pc/itcXQhyq2wOuHhXWADa546AwENm6ww
         MvnDay0gfNXhXrf8DzOVail15hPVvqwc0CWYOL9Sl+hwd1LCmosDyyO499KQTK5lh4Hr
         zOt8uPEUeDkF9cRKMjcqmIaCM6jPZlAWC+dKiffvKHh7bTePwJOX6ZxHtUwhmmA6+04/
         XFJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ikD1iRwa;
       spf=pass (google.com: domain of kortanzh@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=kortanzh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id w4si613187qkp.5.2021.09.07.02.43.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Sep 2021 02:43:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of kortanzh@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id d18so4355427pll.11
        for <clang-built-linux@googlegroups.com>; Tue, 07 Sep 2021 02:43:45 -0700 (PDT)
X-Received: by 2002:a17:90a:482:: with SMTP id g2mr3555665pjg.93.1631007824872;
        Tue, 07 Sep 2021 02:43:44 -0700 (PDT)
Received: from localhost ([45.76.146.157])
        by smtp.gmail.com with ESMTPSA id f8sm2007179pju.30.2021.09.07.02.43.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Sep 2021 02:43:44 -0700 (PDT)
From: Kortan <kortanzh@gmail.com>
To: nathan@kernel.org,
	ndesaulniers@google.com
Cc: clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Kortan <kortanzh@gmail.com>
Subject: [PATCH] fix missing 'sys' package
Date: Tue,  7 Sep 2021 17:43:36 +0800
Message-Id: <20210907094336.16558-1-kortanzh@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Original-Sender: kortanzh@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=ikD1iRwa;       spf=pass
 (google.com: domain of kortanzh@gmail.com designates 2607:f8b0:4864:20::62c
 as permitted sender) smtp.mailfrom=kortanzh@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Signed-off-by: Kortan <kortanzh@gmail.com>
---
 scripts/clang-tools/gen_compile_commands.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
index 0033eedce003..1d1bde1fd45e 100755
--- a/scripts/clang-tools/gen_compile_commands.py
+++ b/scripts/clang-tools/gen_compile_commands.py
@@ -13,6 +13,7 @@ import logging
 import os
 import re
 import subprocess
+import sys
 
 _DEFAULT_OUTPUT = 'compile_commands.json'
 _DEFAULT_LOG_LEVEL = 'WARNING'
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210907094336.16558-1-kortanzh%40gmail.com.
