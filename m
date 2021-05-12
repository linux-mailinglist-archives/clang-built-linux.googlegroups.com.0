Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB6VQ6CCAMGQEUBUZE6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 1688237D1B2
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 20:03:41 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id s10-20020a05620a030ab02902e061a1661fsf17926006qkm.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:03:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620842620; cv=pass;
        d=google.com; s=arc-20160816;
        b=VPllGqcjZN524efgxO7T8RLe0ItgRGSy9NeZDTsG/0SvOu3XFkbygIQip87LODf921
         wp7G+I0RfTFy5Tdwj6fjl4hzmI8/Xap4rnSgIgBwDMANUT78fjqC+WV74mPUei3yy2PK
         glQ7lRwMYM8dTK8i86ZkEmeoxQAeEy1M10nH9PwuyhBF22n5leP0Q2UO86IztS7t/BRl
         +q4ZdDlOAEIgu3G+RQo3N7sFJsL9xOI8c/Lyy2oWAUclHPFYpOfqpqMULGTWoJLUO0Di
         NzhfVRtSZIWdt5wREEGioEciYp3ReiIOIBWsWpoYcLzXV1yvFbBP53rTn9r2UGdYir0l
         Sm4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=l3OfPpfXJpSD4kDwhOYt/gVTdZpjY2yZdstW2pkNgjY=;
        b=xIK7GX1KQZF/PTLNEnFtTTp9nWhBRJRDtaB0kCQSGlVsmbEVOd87XPi5G7NFxLEn7Z
         +xKu0XV8QHWUs5LiVddnvtvLZXK4yqlE1zISQrfy+xjWS5kjo4hhDsYWSXCOWPdvV2ZM
         Z8dNzuhYorL8dIl9PcvJrAya5PZfaXsZFG99Xh0kgK+bcVIbjsziCzNj9LcrJiViXJQU
         +n2czqQOP4K9wmDRcxlC8OUcEmJwPtkUTHvvi1duJdbMGSBRLMCKa39s0bLvrPCFx8hj
         sESjSeatY1rObneXZ5MqxuCM2H3cGUCuu/oG1py/fr3ZzPRuL/wV2fpv3+KJk6PlQRjD
         95BA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=p59cBW6a;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l3OfPpfXJpSD4kDwhOYt/gVTdZpjY2yZdstW2pkNgjY=;
        b=Q0qcI1ZOZWc889hVtYNzhKFsmBpK3d1HDa5Z1cRZD0tdk0urkDtlirws73iVhUSMzc
         jTz24CrDDBhUEEpCnTqv5DKUyESTjWQWBVwIT4PK068+DmkvoV7nUqU5iagxsfqn+yq/
         w7HYlszdPxr3ERWX0a2hPMyF4rJMZ5YdF/JgdFnMaeiFFgM6nVrOGin2U7KARxY5hHew
         smxXEKbS1mmVc3PFnICJcaUA4D8YvsEAE4bC5gnI+22Z4fUaUeTaJHTrfMwq0N8wvP3V
         NwlDDRV06y5aMh8c3DMi+LgpUPOHzJV1OtD15eanlqUYBmAeg4Dozzg1MZCqFN7SCAGh
         mZhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l3OfPpfXJpSD4kDwhOYt/gVTdZpjY2yZdstW2pkNgjY=;
        b=CDxEUpYhRuJ45COlbVElzS/LsxwF7iybrTvQVYeZii+EIIHDnPvsAih//wQxv6KRCL
         OnqGmZAIcRubLvoFo80ygNnV9ZP0QRI+XnYkbZ+yAsMyC6Xq/sRlBiR5puWtxyRQt+en
         PbYPGh8YT54/j+oVIU6D78mm/hpIvk2Z8v1RDefrgZsHEzIPnLCPyYdLiznYthI3lpQJ
         dl6yPmtDpfT3NsFltfJ8mHpplDO267Xayns/eTbZ9U5m5Gt+cKczUqoaggFriKMH/2mb
         BXD5RlL9SRVTXgD0qDJwYqULfdDWDrFh/cR9zXiYF5eqOC2GFZOYCXjTpJNnB5VwlzyL
         +NxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nwZIj0/cVLNhAyVADPQKrxZz34MOM1mxiQ707tiC+1YLN3Pdk
	ukNBOhVSxdWzKjieTZ32tZc=
X-Google-Smtp-Source: ABdhPJyXyaqex/Psn36m5ztbhASQqKZZ2Amg8Xw1sYJIw0pWmeYiSNxBl/3L/VBUGKBRhn0kl1k9eQ==
X-Received: by 2002:ac8:7e8c:: with SMTP id w12mr6439089qtj.384.1620842618716;
        Wed, 12 May 2021 11:03:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5810:: with SMTP id g16ls1902424qtg.11.gmail; Wed, 12
 May 2021 11:03:36 -0700 (PDT)
X-Received: by 2002:a05:622a:104f:: with SMTP id f15mr33668180qte.31.1620842616776;
        Wed, 12 May 2021 11:03:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620842616; cv=none;
        d=google.com; s=arc-20160816;
        b=0TpBHWT1cmIRrfBGsyILQdtJc+vob6WICYuWRM0zJAqZB6k1KbkQPXeAzelkX/wW3z
         Hs3Y6AARCkiVb8i+uU6DIR3RwO2q7Ytnav/Kzi/TBsnnGedBc9MCwvdb4giNH1kMYmoG
         rLpepjJiyhMJQsVNpjDJAwvTn2EsxYTEzE0eqIadwkwNVjEGttCflb1bmzNWXS96D/No
         W0U89Tz5o2QGA/aRZy6L+BNr9QKaVMc8i7vnEqlpFbQg8X0t8zjeN3jdbDq4CQeHZiDk
         HLx2/PUZPB6rkp4RTr5esluAtcH/JXIkXwqKrzPQSiv9MpcOHDG6X6yAxPAtYETdFD83
         NJxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BLIJUT6/SIA22fzxvCOoHTZ80FPxPC8vxYV5lXVlQek=;
        b=WanZXiAHj7rdd3xoSrJEpwolxSFMCMxxNsSKXCEDkuvJgyB7zkJbUtib+HX84CpVvO
         TcSqbCwP8oA0qi/iJrrVVz+Zw7P6XMQwkt3Fn8yYQuPWRJSi7ut06Z730tZSZYNtIzUJ
         u7KHP2X1kerjgTbNohJoWIo28Wx2fr3h8dKKU0tpKKzt4dkLd/gkG4pDMlL873F9QHkE
         N+VgGI7sjSPozDLzFbW3wQJVJW9e29LCxdcqlh+xjMauVY6XEdC1nY27PIVB950xqD9k
         AgKlUhCpy3Kt/+aqUina2pN2swD/XfadfPbHWWFW5eLQNuQLqPfi8Nl4yD2DXyAfAvpd
         Ov3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=p59cBW6a;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h62si58352qkc.3.2021.05.12.11.03.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 11:03:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9282461438;
	Wed, 12 May 2021 18:03:34 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <nathan@kernel.org>,
	Fangrui Song <maskray@google.com>,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.10 17/34] scripts/recordmcount.pl: Fix RISC-V regex for clang
Date: Wed, 12 May 2021 14:02:48 -0400
Message-Id: <20210512180306.664925-17-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210512180306.664925-1-sashal@kernel.org>
References: <20210512180306.664925-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=p59cBW6a;       spf=pass
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
index 0bafed857e17..857d5b70b1a9 100755
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210512180306.664925-17-sashal%40kernel.org.
