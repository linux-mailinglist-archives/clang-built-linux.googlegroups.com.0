Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB456732QKGQEOD6RQFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7031D5F8A
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 May 2020 10:08:20 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id e43sf5230247qtc.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 May 2020 01:08:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589616499; cv=pass;
        d=google.com; s=arc-20160816;
        b=JGz7ek0pZFpcf3sO9TQfbuFb/fvjylpBiCzAWZRJTXdeETUexl2s31znN6Zcktm0cN
         Eoshf2xQ984wYQSr0HnvIF79FFRyM1DeCuupOD+7UuJe5u8QLlgJj1SjQkBRtR9xVFea
         R1KouBl9AivR/tq2f1Re+8GJPOCAfLUpTFiigy5PSJCupd0ITHXUPLcswTc13QFG7fMl
         hU4rIvt+B2OJZ79J+8YuskJqjzfhIsbjBPUWvbRdW05GZIepnAx6nB63ZEGrT01it4EW
         vqFxgdi5X6Wn6ZodsYrya7a75BpltS3/NGZQKznKx6IvxhPLCwLv7GkGP0HcrHnjsf/r
         TtRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=USPQDfBKnDqnzJby0wRmFrjc97IOeIjDm4KIdvHmwmI=;
        b=ABuiA21putN2WKKSzVBum6OII0+QvRMi81nLGJ/7ex0Ps1Df4FcLujU2+o8R8HVxcw
         Tj7oKoBFBe/542WtC8S9ahKWb2nPgO8r/NheAitomTf0kqDdtU4P3fqvkfK2QmKTLWLp
         qcEKES+xCPMGIbd6bKELR999a7iH/VfHqMcTPchcB2tfSD0CyqDjk2ws+rj5fzFo2n45
         BYBfyc7Oyo+ltaPRPRhuzoerHaD+FBkuJSwXlUF9p0osQQroxSVKfKP8jlOYM05UIY3v
         SuPKZ5f0iA0OxfZvur2kIHSIjdoZnoHcEh8h40Cg5He+4ZnPhItcNm8mfse0WguuW+/H
         VrlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FjZJlPba;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=USPQDfBKnDqnzJby0wRmFrjc97IOeIjDm4KIdvHmwmI=;
        b=R6pCh9THMmihtiUquthOeH7BNZG23bp6AoOkMrbKueI1/LZTGTVIFkcSgAHUoLEwIe
         MA91ymgFCJ/fGQNrYRJ/bLGvsTbOEiwBP2rM8l2D2wIvVB22aFC1n05bzjZlVxp97DJ0
         GKXrwvHSW6vMbJ7ZgQLqH5ThKXPfnalhoVOV2d0HqPC1txDclnFUjmGIkDrX5Ler1Rhz
         8n0Nk4INTZasDeQfYzBWnjFH8v8rTn+K9z0AZU8GyZwbTKGmCCSOZDC25Wgc8F6yUQt8
         itWaNbCDl5QOBIcGJj6SQ7SbqspMIOFEPxezHh2bz9qZoNJyzdZcN0DDsG0ud3zSaZCW
         mjKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=USPQDfBKnDqnzJby0wRmFrjc97IOeIjDm4KIdvHmwmI=;
        b=Y6Vm4Z95m7E0VcObftHQmd18V3O9yqaf+GSZM2j6SlCqY1iosIorbuCagvKun/HC9y
         hnUbuDlO4axLW3/DBE3V9VnPnpdrSb1IXfFOy+w2onDY5kS3cu+GsFVur4loBRda2w63
         0Hy8MHfpKukz+87b+qI+PyLyerSqe7jIq5iscnY4Kk735xFrOlShUe+JernYMDo15zBC
         MmXiNA8zYFzUYCCyumdAvYubyGv02cvrL7QZACMiajtTCeWJPD4ypqIAjQ1Zj2Na8+YS
         dhxeAnAiFjMDPXKgcKlL8VVe9irtRFPw18WUegWh5cnNaDqntrne/6V/6BnDp6QznEK2
         p/Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=USPQDfBKnDqnzJby0wRmFrjc97IOeIjDm4KIdvHmwmI=;
        b=Ozt1NxMqtczGM4DQwatK+6begwx4bsMfIuHbu3Uv+sVuMaaxjc6BOeKAhSo10NEqsZ
         31OEhhb+Wyby/zLnc0ApD6ud171WOgdh7ECFDGzPvF5RXlKWjb1g7kGsGLzPUMzf8cJ3
         U5PZuvReYRk1pZbUkqw/UraC5oKg3qIUpZAW1Re+Y+rk1WDrh8KzI1qWb7rp5VRdEOp8
         pnlGUDxs3MV74MBKdh+oN7QYTMwOxANl0twgBKPBvzJG4Frxgh3hP9pcr+979Nb2fXsd
         aVQnk6NugnTDROcmBu3EjT7nnnVkYkJJlZ/DKrvEoEVmCAqN4E/IxdTQULVvUjC7NMup
         /zrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530453XsiiJKQvR/TRaGJUFUagTgRWdxRk9Py+SrlTgsC4FA2VNM
	QTkqcf2brXt3PmPXiAi5zKo=
X-Google-Smtp-Source: ABdhPJyii5fTbnE/WnsmYkmAZU8zRgrThrYaEXqva8MvZl0fcD0dCW5zmvgOzN8rl2y/RlAXuSgv/w==
X-Received: by 2002:a05:620a:759:: with SMTP id i25mr2943343qki.118.1589616499707;
        Sat, 16 May 2020 01:08:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4b53:: with SMTP id e19ls1879335qts.5.gmail; Sat, 16 May
 2020 01:08:19 -0700 (PDT)
X-Received: by 2002:aed:27ca:: with SMTP id m10mr7335365qtg.115.1589616499456;
        Sat, 16 May 2020 01:08:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589616499; cv=none;
        d=google.com; s=arc-20160816;
        b=WfoIzTIN0/Yq4G8aKRJ8tMqPcPmNgHNOS5LlbPqtH2O+1ewcMU2QACLL6TYPshRo2w
         B3dlUAMRNfG0zGOeSZFmGK5MlvdUBxEfQi/z0ifKBxSgUoc+nR8qxRzwCmsuKtxkPYOb
         zKtH5U/jnG0e3Q65rjb3E5R+h9MBgX118kJd9j8wwoaTeb8YwEA+tlZiDAL/L/y5bckk
         0PmzXaknhPQtu/qCYtJHj6dI5Mb/atpIvZdGHUuOjPBWMqB84KF/eElBXCSeL/OJ1iWk
         HQcRrpChg8OYmRRMRKE8Ry+ToGYoXXlRmnmnWL9F8CEHHdXmDzaR2sW35Qp20l1eLWGQ
         fnmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=O65I1zmNTEDkuvl7Blq3pU8Ri7LhEzDZZNS97q+Lxi8=;
        b=E8mhgSOIPkkbxfkeSmiqh05UKkNAADRx7HT5PSz5F/rrj4kZYh0xXba8mh4uIQxhKx
         /y5Mn4c6FIRrUSsYk1I0zbtJfQPFn0LfgzdKY70nMVfD3HewVnFHuOGZnK2D+pCVg+4D
         YimVyyS6P5fyCd2s4zmj9pIG3cHEsML0jrjWkpmklP8FnTZRme/zmv2iBbKf1i0aMzZf
         INIQaO5oWQDBnjGPIQqGGt0hQ5V6XaNWhmY6UHRncXEdWdHZseH4LFgTMWWRy38+YMYM
         rJocUzX1DVYOg64WDcFgv9JTW38qUo6I5KNYSB3cdoVIMEsmhiEnul6Zaa+Aq108lZyD
         qhBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FjZJlPba;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id w66si349826qka.6.2020.05.16.01.08.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 May 2020 01:08:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id 72so3920854otu.1
        for <clang-built-linux@googlegroups.com>; Sat, 16 May 2020 01:08:19 -0700 (PDT)
X-Received: by 2002:a9d:7dd9:: with SMTP id k25mr5079985otn.328.1589616499102;
        Sat, 16 May 2020 01:08:19 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id n11sm1321064oij.21.2020.05.16.01.08.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 May 2020 01:08:18 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
	linux-clk@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sami Tolvanen <samitolvanen@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 1/2] clk: bcm2835: Fix return type of bcm2835_register_gate
Date: Sat, 16 May 2020 01:08:06 -0700
Message-Id: <20200516080806.1459784-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FjZJlPba;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

bcm2835_register_gate is used as a callback for the clk_register member
of bcm2835_clk_desc, which expects a struct clk_hw * return type but
bcm2835_register_gate returns a struct clk *.

This discrepancy is hidden by the fact that bcm2835_register_gate is
cast to the typedef bcm2835_clk_register by the _REGISTER macro. This
turns out to be a control flow integrity violation, which is how this
was noticed.

Change the return type of bcm2835_register_gate to be struct clk_hw *
and use clk_hw_register_gate to do so. This should be a non-functional
change as clk_register_gate calls clk_hw_register_gate anyways but this
is needed to avoid issues with further changes.

Fixes: b19f009d4510 ("clk: bcm2835: Migrate to clk_hw based registration and OF APIs")
Link: https://github.com/ClangBuiltLinux/linux/issues/1028
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/clk/bcm/clk-bcm2835.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index ded13ccf768e..7c845c293af0 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -1448,13 +1448,13 @@ static struct clk_hw *bcm2835_register_clock(struct bcm2835_cprman *cprman,
 	return &clock->hw;
 }
 
-static struct clk *bcm2835_register_gate(struct bcm2835_cprman *cprman,
+static struct clk_hw *bcm2835_register_gate(struct bcm2835_cprman *cprman,
 					 const struct bcm2835_gate_data *data)
 {
-	return clk_register_gate(cprman->dev, data->name, data->parent,
-				 CLK_IGNORE_UNUSED | CLK_SET_RATE_GATE,
-				 cprman->regs + data->ctl_reg,
-				 CM_GATE_BIT, 0, &cprman->regs_lock);
+	return clk_hw_register_gate(cprman->dev, data->name, data->parent,
+				    CLK_IGNORE_UNUSED | CLK_SET_RATE_GATE,
+				    cprman->regs + data->ctl_reg,
+				    CM_GATE_BIT, 0, &cprman->regs_lock);
 }
 
 typedef struct clk_hw *(*bcm2835_clk_register)(struct bcm2835_cprman *cprman,

base-commit: bdecf38f228bcca73b31ada98b5b7ba1215eb9c9
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200516080806.1459784-1-natechancellor%40gmail.com.
