Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBVNR6CCAMGQEWNFBVAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9940A37D1C8
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 20:05:10 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id pc17-20020a17090b3b91b029015b064cea0asf13884344pjb.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:05:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620842709; cv=pass;
        d=google.com; s=arc-20160816;
        b=x16aCH4NUo9mvqYggDBMzl6OVOsk2biwkvCkCXhxO9AjlRpkrCLCyU5HywKAJaQIPZ
         TJFBYpipFOHBrQ9HxVIRuAB7X16Svyd15K77k8F7ct8mc+cpw+4wWLX8Gz/RQ3C6LUbK
         3x2nLeD3cugQx09CNTDvMgsaZGUy7TpTs8zbmobNYdFfUPK+1lMm3hTwM0sTlDDNMlFA
         Kj+foYHbFjXqkQMyDFz+RiT/jHovuY5N3PJroQkxThT/LrPK/xocFkvYsA5AI7TSx/AL
         00xC2pshezFWWWSe1/lSc3b5KOM37PARdDLlzXDm21dXN4XBveruoKBm2gFNSIKZ/TwU
         Vt1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=A25VsVUPWIuRxRBuL46rAOS16yj1qggxegtmQy/vw+Y=;
        b=0UDCL+Q/1grKcqktRugMzYM8gye5RSbhRjdvs9yC8KKRAQO/ji1fYv+XhFlk8ZP358
         kBY3v8jjd9O1228AAD8/eAVl2WJBeLEVRV/hLfco0Q2WPHXRK6A0SC6WOAbI96T0c7Gj
         PGKg5scV6prranoCKn6hFWTzGwlZFe9b4sILw6a2Y5wgQJGRQb1mtltwHa4loTDFB0pc
         Pn1xZUX2S87ieTpkOwqHAE1JF88ooZkdMzFSJyxbv2jy90E0v1GgM4D0MVsZpLxmpxes
         Q8be4QLSH66LrqduiCivD51NAd3ImCWzWPgT6tnnkTl36x/Ud41ctkDzS+6J0pXLJ1DL
         iU/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ipYDArbL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A25VsVUPWIuRxRBuL46rAOS16yj1qggxegtmQy/vw+Y=;
        b=Twvu/gcWNENRRVBvHuVIgi/KCvoYMaEcqcruEWCYBopNrfLypWkoRzlQ7y3cBO8zoD
         yzfB446eiveVD3VXp1jbPd2ybXo2p7+O08wowhMYT2UyKH48fe3dyVumfm+R9SdEH3JK
         ReisUiLq9cWW4SdoQCuNuI/+q2WP+u1odjMtG8a4M0D4xP7z3qiULcj8Vdtn4XywWwfp
         +mxgv+Jdc2sZ2CF9HFm+06v16zpXZE9J+5gNNcfStGxX7FPV9WT1l8EeEZte4NjeowYY
         HnG5w75pjXXAaHHPkvb5xLSV1focEQgzD4opH9oZtCE1TG6j96+CfIl7ivl2wo5vR+KS
         0cAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A25VsVUPWIuRxRBuL46rAOS16yj1qggxegtmQy/vw+Y=;
        b=TpImS5oVjMsSxmx0urVrat4/hHSwam0gFiZQayL+lAdFb+SRCXTQuMlcdwfP9yAv7H
         /nIloH3e4/nvTj3NR8XKT56l54S2wlXywvAsBh+d8dw3QRoD4HDev9xlr5EJcGyDu/fc
         /LvxBL4BhpynrPZJCZ2gcoHJYbL1g8fasjpK8JFzE53lTUSb7BeAzu9TpQwYwHNHjZun
         UZU+CS/loUJR/CBqE4Jk+Fhw8vPQhbdebQdqtSa5jVhd16BMqEGv6cD9qTfQO9e/IogG
         EU7U4tEsZKxSBPutscrZmZdIB3Dd6lRQPLqSIPTL/bkV5LaTXM/AyzcKo2QFraKeY0x0
         oUxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533r9IM/lkAu0UfR59TQrkcBC71uReRtjbOuZl2Ob6GjjNrqnOHT
	k5bSBxCsZGESVM0E0AB9PmI=
X-Google-Smtp-Source: ABdhPJyhnzDdjvnkxXk9TlsOQHbJjVWsuaHi/waBsjMfyTDZGs0w9eG2wGnaQQtCho/Bwl32JEAu2w==
X-Received: by 2002:a17:90a:7896:: with SMTP id x22mr12227914pjk.11.1620842709307;
        Wed, 12 May 2021 11:05:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:fb0e:: with SMTP id x14ls1374526pfm.10.gmail; Wed, 12
 May 2021 11:05:08 -0700 (PDT)
X-Received: by 2002:a63:7056:: with SMTP id a22mr24054001pgn.292.1620842708706;
        Wed, 12 May 2021 11:05:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620842708; cv=none;
        d=google.com; s=arc-20160816;
        b=uHcUEm2G+JXYmaXHG1iRXMxsDw8O5wo5vOnfIeoiIwnx9SbTAtFsJyJRkv9kukejMM
         ojSVWPwLshblQ092+6Rl0AdoCKSTq+s13kLizNHe8Tyd2Wx1lSoq5749ZCdIJHmZr2+2
         w8VnVAK7687PUxfF9z5quwUlBBit4+++dVt8JtvjTLOQ0oYPXQ5bFknvorTue1UVAeHi
         uvGChA9kDsLwds7PEqDLXU0WlHXpXZ88EYfre3z2HbpZDINDsGWEjR0leLzA9wBStkGZ
         zuXtkj4NsjdhQllL8Uq2x5mGWIppv7NofIwG2uYpVIuWnounDsai1SO22xlOiDe5Oa8A
         RbRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=spYGmTTmBf9035Ffm+wCSeMh9V1vLUjJWunfi3cE00o=;
        b=JY/4T2QiVqb3cd8BnB2mnj3975jayO6Aj7bBWKst2faPKBcZAJ9EsFwHcM9jYBv7wz
         Sp3ptR8uoXw8cBiDEllxNv2KmhJHymNSl721AS46jXb6C0Wg2nFUk/fpbNrbA+Y2X2Dx
         i7sb/C7By7FzJ6bIKjemfXXynMNX/nFAC/IOQU569vVhLKQp39rtc0PgGgiAs6y8yap2
         FDyTQB3xyNEkCvTs0tDjF2Hd+5PlCDftiRam3ShXRD/BF3Vef/wRt7ghUX/QC3FOzWVR
         pzjHahsUiU6AfEXBsxgeqXfeh/CNaItEeDikZKy324k9tdgg4717KB1Ukwu/i6OsfxOa
         NcUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ipYDArbL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b9si111175pfd.3.2021.05.12.11.05.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 11:05:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 397B0617C9;
	Wed, 12 May 2021 18:05:07 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <nathan@kernel.org>,
	Fangrui Song <maskray@google.com>,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 10/18] scripts/recordmcount.pl: Fix RISC-V regex for clang
Date: Wed, 12 May 2021 14:04:41 -0400
Message-Id: <20210512180450.665586-10-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210512180450.665586-1-sashal@kernel.org>
References: <20210512180450.665586-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ipYDArbL;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nathan Chancellor <nathan@kernel.org>

[ Upstream commit 2f095504f4b9cf75856d6a9cf90299cf75aa46c5 ]

Clang can generate R_RISCV_CALL_PLT relocations to _mcount:

$ llvm-objdump -dr build/riscv/init/main.o | rg mcount
                000000000000000e:  R_RISCV_CALL_PLT     _mcount
                000000000000004e:  R_RISCV_CALL_PLT     _mcount

After this, the __start_mcount_loc section is properly generated and
function tracing still works.

Link: https://github.com/ClangBuiltLinux/linux/issues/1331
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 scripts/recordmcount.pl | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/recordmcount.pl b/scripts/recordmcount.pl
index 9a8fe8ea6b03..bc12e12e4b3a 100755
--- a/scripts/recordmcount.pl
+++ b/scripts/recordmcount.pl
@@ -395,7 +395,7 @@ if ($arch eq "x86_64") {
     $mcount_regex = "^\\s*([0-9a-fA-F]+):.*\\s_mcount\$";
 } elsif ($arch eq "riscv") {
     $function_regex = "^([0-9a-fA-F]+)\\s+<([^.0-9][0-9a-zA-Z_\\.]+)>:";
-    $mcount_regex = "^\\s*([0-9a-fA-F]+):\\sR_RISCV_CALL\\s_mcount\$";
+    $mcount_regex = "^\\s*([0-9a-fA-F]+):\\sR_RISCV_CALL(_PLT)?\\s_mcount\$";
     $type = ".quad";
     $alignment = 2;
 } elsif ($arch eq "nds32") {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210512180450.665586-10-sashal%40kernel.org.
