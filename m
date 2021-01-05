Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBUS2P7QKGQEK67NFHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E84B42EB3FC
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 21:16:07 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id 67sf579862otg.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 12:16:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609877767; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lwz/ZITGKs6lDAzcKE5HMS4dhKb8c69bzYe4fSGOPQ/VQU4zPRmpMao3H8NxOlTUy1
         3QS57VtY0sNvrniFsmFCf+O9z296aNcYVxvvcoxcycn5Osc1xSzIvM3pfx5GOVGOXaGr
         EZjRWb6ppGi8A+KrVrqacroLjyuqGclzW61bR5S0Jkdf6yCj3uWnmLGTgaS06tGtSJoJ
         Q6W4fcWMKJD/9pbOCFLTQxdulsfTv/+bl52Ss/xxY2PkOF5M/KZN16vwwqGBRm/ZeAZE
         /ztP+aspf2+VFx8YgHH2yP+GHms4tDbCL5+lhBWDCzXW9hPtiZPIyUW0I1ahHwjdPwqZ
         2i0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=9N0ChHwLaMRCI0vJaoc2y+iv3Gz2305z1a4QBQTLerA=;
        b=0UxQU6TbGgzrM+HPSkyfmbULzl4lU7aw4g+29BYEVUbVjtvxMcFSMV7KpsNeHcHpB3
         fKmsI/dnuG4MjabF3lg8Mj5jLCACM05x98O0/4JGLXBoPW2GfrRsY6QKPuu/eqVigMw9
         uWk3cK3wfQotFD4RLYsFrY+dtP3fUV3LKkfFYQdHuvoWQUDsRNoVcjpjUH+QjVCqEJxy
         2y0h7g1iAkE6UZfMYgWt6u4S/dYYUiqtQzygx5h1xKMbW6naFPUO8R2NwdS0C4kzvp0/
         hxoH5WisEOk16ncqoIPxJnFkiklyfr5uNRvf95LEBBLFsCvHpMSmrKZv5GySvrb1omT+
         5ZFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NjUIqFeh;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::836 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9N0ChHwLaMRCI0vJaoc2y+iv3Gz2305z1a4QBQTLerA=;
        b=F31ABxFFR4Hl9FatckDevJBahnALSHEBMiG6aX1PTxM6McA1ViacjxVO8mLLbD+l1J
         a1g2gQyR2xOPtzD7E3ExCQyGZT6fQ5FJ4aEPAixLlbE/96vSMv+FwQIWPTLqMzbSa6sv
         XhqnnbejXu8PH4aAt3jZtFztSjrRe2rC01nhSSxHhk4I92GcutfCxq9cabJ8qcu8YBoe
         0Ba8KEaIFU/a+3NUmSyetVZG6VKCTMiUT0Szn12TlTzoWDE2f7DcQtE61KP206gS2alQ
         IbZUvLXybmyI/R3531OxV4BnS1b4/6orfG1vj7Qe9oxHQW7sYKkM+831iZOpzU1HIs8s
         O0fQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9N0ChHwLaMRCI0vJaoc2y+iv3Gz2305z1a4QBQTLerA=;
        b=oy360IcCduqFRGpoD3PH8Y1MsaWt7FeriVCyGM4BREslwMr7PVm2NXdRQ0pse61Fp+
         qcgq/pjo3C18mQF+uSrQOVvNKN8MM8tb8NTyFLhO5kfOsDgq7sGucOx3A+QqzwMFmvdm
         /C3aRPqWFgsOE3v9cTZe9Qk/AvsuxaDJplpscmKdxHYAmaj6mo4GUYQNt1wGSNTOD10B
         DNG3ybXuTkT04v2jlxdBxzuLXFccDblKNmBZSSPgpHOpD5BXPDyX+OwZnko/UmMRFsXJ
         0KLGANXZ4jHlIYrSvAmG9OfeJ7ayb70vPbEy9ghX8K0xUP6sw5MUiqDPFhR0VX0/UrUA
         Hg9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9N0ChHwLaMRCI0vJaoc2y+iv3Gz2305z1a4QBQTLerA=;
        b=MU6Z4xHojlvqpITI8vBtN1ZGtpThaBgIJeI0trtIg2YO3K4Dm45W8ZDgonBZNd6rrM
         0M3o9LnCTSsMkjoKbuoXO1uINZ91tF7MiFSJ8iezkvw8ZSh1juuUL2tDqo2NrAJHcM9+
         jquIWjAo36Stlja+bNEryh5hO1EGv3QQ6K0skSwhSqK1OTLqu/FJ63+b8i+f9haycW5u
         b7cKCHrTQbKsSrxDUxrLkI25ToXjSa8bsN1M86H90k3GOYMLxlmF5fI/suBJja/M6Tz/
         FD60TfCCZhqEb0vlQF7RwDfHspF54m1kAtRqKSgtPGaPdHHFNvvuAjAx901Yasl3acyi
         BG6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532E8oblPLOXusEOpSgilVBgM16xTyLuJuWI+mzAOuJ8e57leIn7
	gR7TUUfaUl9HEFlWHZcNcE0=
X-Google-Smtp-Source: ABdhPJwUACw7Xqj0OoRcK0i62MmSMEB0qDQgAvlcprK7LEtYqi4NZg2zAyDCWzoSDfV59uaFeZlnEA==
X-Received: by 2002:a05:6830:22d3:: with SMTP id q19mr887231otc.115.1609877766974;
        Tue, 05 Jan 2021 12:16:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4694:: with SMTP id k20ls131521oic.0.gmail; Tue, 05 Jan
 2021 12:16:06 -0800 (PST)
X-Received: by 2002:aca:540e:: with SMTP id i14mr970722oib.57.1609877766620;
        Tue, 05 Jan 2021 12:16:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609877766; cv=none;
        d=google.com; s=arc-20160816;
        b=rnk9IzBeUDDPIqmERFgokKgj9co/y0gl2ySqxo+udtKA5/oDuV/gDy6Aj47XGaQ/N3
         yUoG0H22TgskgjVE6ofgrMc2vb4NVV0ODr2QzfPxqD2NEzFdaMg1yqEJCtzA6fDP1wSi
         sJfM+t/UuTWZVLQ/NPPxm2yLHXuoxO9hrWE33qS+qa8I1mYfBOk92ZSkQckPa47y4Kzb
         yjAJtCoUusVokTptgGFTetAHwxxvIzw5J9owmQyLYv/0uwUiM+qeRUQVVYL4QibvaOxw
         /Sj/agIWWbcVGOWyno0/dNjUf0DlOpLCr+l9x/Jjl6RSwRRWj1hvllRERzv5FXt8rt/Q
         WNgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=+HK9s/29ASBwdsRk66LeB+PVLzLRMTM0MqUqNfbGHfA=;
        b=kUArkk5NGM3ygvvhBb8jF4H+XHa7aJ16AiAVhgencbcsRj47wFGXx84AfRKroacSY1
         OE6054+vE92wl4qQLAvePDYzakaXbTuXymTYp+EFxmd3ZcCGv7skLClvSjqDkfGFkkXg
         R9bb1ldcEsZZGK4ZsX3Yk9cAewP+/O5aFCj7yHWWbpOwzL4HYiJk7uG4JimzhSHFz7fS
         PUA49/SYGip9HT7jxgvxpO1fkpHwt5d2vYe7kB93cCJDHyA9EtNp2fe5+OWU6irARW84
         76uR4xtVqYPASYg0/7cN9BtkuBy+yWz5wQ9UmCvYDYzLfqkJNCL0U0ir08XMlKDp8Bp2
         m5hQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NjUIqFeh;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::836 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com. [2607:f8b0:4864:20::836])
        by gmr-mx.google.com with ESMTPS id x20si28999oot.1.2021.01.05.12.16.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 12:16:06 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::836 as permitted sender) client-ip=2607:f8b0:4864:20::836;
Received: by mail-qt1-x836.google.com with SMTP id 2so611481qtt.10
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 12:16:06 -0800 (PST)
X-Received: by 2002:ac8:5ed5:: with SMTP id s21mr1207318qtx.114.1609877766236;
        Tue, 05 Jan 2021 12:16:06 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id y22sm186640qkj.129.2021.01.05.12.16.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jan 2021 12:16:05 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: John Crispin <john@phrozen.org>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Dmitry Golovin <dima@golovin.in>
Subject: [PATCH] MIPS: lantiq: Explicitly compare LTQ_EBU_PCC_ISTAT against 0
Date: Tue,  5 Jan 2021 13:15:48 -0700
Message-Id: <20210105201548.50920-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NjUIqFeh;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::836 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

When building xway_defconfig with clang:

arch/mips/lantiq/irq.c:305:48: error: use of logical '&&' with constant
operand [-Werror,-Wconstant-logical-operand]
        if ((irq == LTQ_ICU_EBU_IRQ) && (module == 0) && LTQ_EBU_PCC_ISTAT)
                                                      ^ ~~~~~~~~~~~~~~~~~
arch/mips/lantiq/irq.c:305:48: note: use '&' for a bitwise operation
        if ((irq == LTQ_ICU_EBU_IRQ) && (module == 0) && LTQ_EBU_PCC_ISTAT)
                                                      ^~
                                                      &
arch/mips/lantiq/irq.c:305:48: note: remove constant to silence this
warning
        if ((irq == LTQ_ICU_EBU_IRQ) && (module == 0) && LTQ_EBU_PCC_ISTAT)
                                                     ~^~~~~~~~~~~~~~~~~~~~
1 error generated.

Explicitly compare the constant LTQ_EBU_PCC_ISTAT against 0 to fix the
warning. Additionally, remove the unnecessary parentheses as this is a
simple conditional statement and shorthand '== 0' to '!'.

Fixes: 3645da0276ae ("OF: MIPS: lantiq: implement irq_domain support")
Link: https://github.com/ClangBuiltLinux/linux/issues/807
Reported-by: Dmitry Golovin <dima@golovin.in>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/mips/lantiq/irq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/lantiq/irq.c b/arch/mips/lantiq/irq.c
index df8eed3875f6..43c2f271e6ab 100644
--- a/arch/mips/lantiq/irq.c
+++ b/arch/mips/lantiq/irq.c
@@ -302,7 +302,7 @@ static void ltq_hw_irq_handler(struct irq_desc *desc)
 	generic_handle_irq(irq_linear_revmap(ltq_domain, hwirq));
 
 	/* if this is a EBU irq, we need to ack it or get a deadlock */
-	if ((irq == LTQ_ICU_EBU_IRQ) && (module == 0) && LTQ_EBU_PCC_ISTAT)
+	if (irq == LTQ_ICU_EBU_IRQ && !module && LTQ_EBU_PCC_ISTAT != 0)
 		ltq_ebu_w32(ltq_ebu_r32(LTQ_EBU_PCC_ISTAT) | 0x10,
 			LTQ_EBU_PCC_ISTAT);
 }

base-commit: 36bbbd0e234d817938bdc52121a0f5473b3e58f5
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210105201548.50920-1-natechancellor%40gmail.com.
