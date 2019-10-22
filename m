Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSHHXTWQKGQEG2ZACQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3E1E09B7
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 18:52:31 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id g15sf20758999ioc.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 09:52:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571763150; cv=pass;
        d=google.com; s=arc-20160816;
        b=WTpdTHJs09U/Ijz8yGV6k7+KXGnt4xKT5N/FbDxXB8VCSExstsNm49jgHKF7GnwGxQ
         SjtWMOeE2KjMFW3eZwDXHYTdZpkDwDWA0HUTuLUxcBJu4BtLnixkKyCCCH0nIlgmpHKL
         fxDBxCmF35gOcPNDV+CBF9U5ZHVxv2eoF7VSKx5poiLHqkBUcVdfSry5+IayuxmPuQzy
         apk+uGW3coV5XIOOlA67YaabW4Pqb4kR5QZ9gayqB0A+Rq8r6tK30qGOS6yW1EwURPCL
         UXsJCCktyEQN08EOs3X8aGPktuM+YCJz8+vE8EjS+IQErrMdliDayW1fKgGRW9uUNrR4
         NzJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=EFaWHEPwYdTAL9iQ7LpCUdCvq1orViYdWJW+fILC6Dg=;
        b=XIKu2vqXzFv/ENPyJqZvJFCk7XImlEAIUrmHXpRpBqLPzl5lMQ+nC2jnMPKUuKEaJt
         QWyQRn0YtRW5MHj92jshMU6JTLVLjzcIoHwItg4up9e/TjEr2Kdfe3PYvGxFCnp2Ban3
         Z3R4c6A/bnHyB4E08zLQsEX7MMGijcris57TSnc3Qxnjz3k7xVJX3cn2bZ3WRiLRGefr
         6ui327PckhMe1UqSHJpssrnDphMZzkBEcyjuQmfFI3Ovlcz+UmCjb5k/7gabrVl5i1+I
         MiMtutXBmCoobKi0JNEWUGogROjeaYm3Q/GiZMH1Gmv1FcwqPr1W2HF6o7XugFA3eRJA
         SlQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hp8pOtAj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EFaWHEPwYdTAL9iQ7LpCUdCvq1orViYdWJW+fILC6Dg=;
        b=ikUoD9tCOz68ALhVhlIz+99qea0Tpvuj3p3HsESxgHrBfa/MlomGlnE0GYdBWQuiae
         3jlHubn++oesoNEI//s8bMi43+HmEt1AKnljNelrPUTqkUQdwyJuJttifqxnpl81K0Rr
         jABZ81oSeNhYzQPQZC/FU6K8fYOdHuw6OZtD36W5vEQWJ56hqFj6w/yav9UlAMsl57f7
         uHEj1LxgC2+24GvWws3oep5BTggBFOd08kSKU9WGH35/rkJg+uH6ED+jIN8eBwbcO7GV
         pWrKJgM9j9YZmEYXcpBlDYOVY1EA0vNhG2xvqTdf5/ZV+AApvi46sXmeglykTne4pYY0
         Ur4A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EFaWHEPwYdTAL9iQ7LpCUdCvq1orViYdWJW+fILC6Dg=;
        b=SYQGruw3o+PGkUOY3dI1Y2h5Ehx1RxmYDw8gR2d3zo7tlF36B6L/UnF0gW0T7TREAc
         WN1WFb99kyJa82L6IORbJmn4mWn5ve2cA4IlTYhMpiFI/uhTdV1I9r3PmRsK7puHb2Gc
         HNZ243N7Muxx5TWIzoLg9My2Q5hWdtUOy9Pq2xC0938kPR53iJqTtvFxmjixsJWYJDO5
         /t3yRZQRbydxxTwDClfX5JSqDHYuCZYLnfbWvtkoe8s/2R/v580EgS/FWa1jU6QyyWky
         2of2RsfHG+kSyc3uN9VQvtZGYJ7fu9ASPbMuD+9YMQulh2QNjb8g4OqakQP+OBkO7CLu
         KVGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EFaWHEPwYdTAL9iQ7LpCUdCvq1orViYdWJW+fILC6Dg=;
        b=Mli32oZOXAU6a7HD+pZZjIOqE+2Rm+CEJstHsX2HLD2y5dWIwHWQI7BEtCZV+4EmMQ
         DWaESB1qUgG4okH1JHTV+K02Dm0FChy1CI/lJvbjp2uZmkbg4hzz4/RBEKPn1J2bwIjM
         tNkeI9quhs4S7exDVKTouPj88F9FpiOE3AfxrZTMoWnR3+XW9v5+6vSDlW3K6kT/SM+7
         oxhmfzzhCO3T7LZ979FKkZiYlts79Wo2rNUMx1Ur7rNlyJFfy1EYAeCxZebcUidwb0+p
         gGmU2qIRD0l0Cf2e16Z5RatEPYvqmiKmeNzuRjnRGvZeSwEHpUEaxaTALLv+Z5tFvlzj
         EdmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXd3Z3ClTmkPlU2qo4uOJGaCGouBeQ26SkJl6i0tGYJ9l3FSkO2
	wMRnu/h80bpxI3tWPm2qTCk=
X-Google-Smtp-Source: APXvYqxgmLgoD/c0QqEGyNlJRjK4cQiQ9XA9E0MdQx4i1vZKVtgsjPy7pi4EdE1Lllzz2g8U/9IO+g==
X-Received: by 2002:a02:715e:: with SMTP id n30mr4809691jaf.120.1571763145078;
        Tue, 22 Oct 2019 09:52:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:aa09:: with SMTP id s9ls1315795ioe.5.gmail; Tue, 22 Oct
 2019 09:52:24 -0700 (PDT)
X-Received: by 2002:a5d:8242:: with SMTP id n2mr4969067ioo.139.1571763144729;
        Tue, 22 Oct 2019 09:52:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571763144; cv=none;
        d=google.com; s=arc-20160816;
        b=q7WGQJ36qg5j1iRSlM/KytHYe8auILVVDp5RNHnqTet5Xlz0hoK2yTM5D51oR+Bz5z
         K7KeLwJL/7ckB7h4vzNxOKa6HouMfkX8AA+RFI6Rfuv4sN/lR7pO0+eSCs9t73QkhUKB
         +Zet1HlsNTRGR/Xr+dgXWZcaFvruuIgSx7CsCtQ11E4Dqd3uzCHPBw6XJSIHuLNntf77
         OrBc+milyaWL+l2cefmmZgcbyQ1Vy/ptuNXGN16rd7kiv0mHangaKB56pmGmC9tiAtGk
         s6JXxrf5/ye0Yu1jtO0l5Wt5swaPATVPrP3EgyaUc1v9aGGVCXKUEe5T9U/vwJc0YEYb
         NF1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Vxt2BZlQ+53rWMwmVviD+TwDtnO3WTo/KugRQtRT0Hk=;
        b=UU0sO9IlCMzIoPDCRrU8V2MRl5XW3NgDA8L6DVoeXe3ZHJU/hCUrs2vuOJoeamkVGZ
         INI58vnSCq37f4+SI1Clev78vvsY5OW5wZvGxIGImTlEjeFBIaercW1OyDGiXBwMpuXV
         VzsHpvUDpVN4h+yeAkifc71t3+vJGKdZmymrSyrrI/za20wYD4UdLhBrbUKQ+SaXo0XN
         08VhWYjVL6FcG4yqskrQsqV+wuNd62cghEfnuI315qsdLK9kvvKpLnwb8NOacDkJgRh6
         R/dgunEoGV69IzU2c6TeqRlB0jOFhPVaj09wN0G4mWAl8eyoTw1ni11iQ9QNn/CWJPRV
         lEqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hp8pOtAj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id b12si1165950ile.2.2019.10.22.09.52.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 09:52:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id k25so14749602oiw.13
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 09:52:24 -0700 (PDT)
X-Received: by 2002:aca:f005:: with SMTP id o5mr3744584oih.36.1571763144136;
        Tue, 22 Oct 2019 09:52:24 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id z24sm613884oib.21.2019.10.22.09.52.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2019 09:52:23 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: =?UTF-8?q?Emilio=20L=C3=B3pez?= <emilio@elopez.com.ar>,
	Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] clk: sunxi: Fix operator precedence in sunxi_divs_clk_setup
Date: Tue, 22 Oct 2019 09:50:54 -0700
Message-Id: <20191022165054.48302-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hp8pOtAj;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

r375326 in Clang exposes an issue with operator precedence in
sunxi_div_clk_setup:

drivers/clk/sunxi/clk-sunxi.c:1083:30: warning: operator '?:' has lower
precedence than '|'; '|' will be evaluated first
[-Wbitwise-conditional-parentheses]
                                                 data->div[i].critical ?
                                                 ~~~~~~~~~~~~~~~~~~~~~ ^
drivers/clk/sunxi/clk-sunxi.c:1083:30: note: place parentheses around
the '|' expression to silence this warning
                                                 data->div[i].critical ?
                                                                       ^
                                                                      )
drivers/clk/sunxi/clk-sunxi.c:1083:30: note: place parentheses around
the '?:' expression to evaluate it first
                                                 data->div[i].critical ?
                                                                       ^
                                                 (
1 warning generated.

It appears that the intention was for ?: to be evaluated first so that
CLK_IS_CRITICAL could be added to clkflags if the critical boolean was
set; right now, | is being evaluated first. Add parentheses around the
?: block to have it be evaluated first.

Fixes: 9919d44ff297 ("clk: sunxi: Use CLK_IS_CRITICAL flag for critical clks")
Link: https://github.com/ClangBuiltLinux/linux/issues/745
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/clk/sunxi/clk-sunxi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/sunxi/clk-sunxi.c b/drivers/clk/sunxi/clk-sunxi.c
index d3a43381a792..27201fd26e44 100644
--- a/drivers/clk/sunxi/clk-sunxi.c
+++ b/drivers/clk/sunxi/clk-sunxi.c
@@ -1080,8 +1080,8 @@ static struct clk ** __init sunxi_divs_clk_setup(struct device_node *node,
 						 rate_hw, rate_ops,
 						 gate_hw, &clk_gate_ops,
 						 clkflags |
-						 data->div[i].critical ?
-							CLK_IS_CRITICAL : 0);
+						 (data->div[i].critical ?
+							CLK_IS_CRITICAL : 0));
 
 		WARN_ON(IS_ERR(clk_data->clks[i]));
 	}
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191022165054.48302-1-natechancellor%40gmail.com.
