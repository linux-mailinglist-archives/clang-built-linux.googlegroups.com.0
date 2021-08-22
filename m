Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAEERCEQMGQEUJ73OHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 270B63F3E5E
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:51:35 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id j21-20020a25d2150000b029057ac4b4e78fsf13760401ybg.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:51:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629618689; cv=pass;
        d=google.com; s=arc-20160816;
        b=EA006pD2ok9FvBggroZusBug/MkErQoEBCV544+tSSvc6K8Zy5mNXmSsRHmEz1t1pg
         8/+koQT3gwWczUVaeCSOjR7onZ6RvIo1CcGcQEBE1qhAA/o9z0CTwK35wLhSVpkkIGsq
         EiYQzXHfn8flg5hMlny5gaPaLTJ8m0yfUktrRcqcJpA6+dxWOUKvutEzSk5R4PY1jShk
         xrveasQs4JXZuvcJxbsASvuUC3icJs1sDtXScBixmlwWwadhYdfkaUvrdcsajpTgisAu
         vkexn4tSPGYySdXIXaVE/aJl3imIKznOi6TSXqbHOOLe4hO4PVlXy5MjimccIRFAqojv
         J+Og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XVZoY/SXactjb3lHcANc2YEhX6eoUNnajx6ts0AS8yM=;
        b=BAjmQBiIawwJY25WIijOwONLrq8O3qpm15UTrmuKM7jkC89TWdX95O8sF3w3aaNHRZ
         OxysbB+cLgBnddisMvPyaJLaHajQ3pjEHiT3C32EqzF7P/R7Nmj2VrnB+KdiMfwQ5NR/
         z82iDgKTO+Rzws9gf98fhtRu9IqEdn0TcJCmVqCZ3DlG6srCW3A/yjCxyAXW5Rr+puQw
         TSQqALPMz4YHeNiTpRu66bXjZam01wmb9bMhCSZ5oMM6M7JQh0fz+raaNvvT2vUSAKmN
         F+MtBTo2CVdY+4lOobeSvaACOhlLjLQ4W6irTMgt12nGFYeL4gNS7nnJcFWHUvxrDWYY
         xhvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=A29wjJma;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XVZoY/SXactjb3lHcANc2YEhX6eoUNnajx6ts0AS8yM=;
        b=jxOZVzY05+q8IyPKaKlhzCJLnKRmgQ2+ZgTPYthRS0v67vyNu0BO34XZIBrh1ap0vD
         jxtJlr8MpOYcO0AVgdLRZ4LqlUf/WD7wlorLvYsjw+09BvXlZH9gvVd+7s7N4gdRA3vx
         LhzqtNA83xXvRasM7uH4SFBuBLe06/52afvYoKJ74kYx+GCmEwOcxF/RTi9cdkZWHxDE
         4OkN4ARLhwv9FJEBMs0K+Kcrz41zjg8V6jiTwzeQ2tuYmOtjuRGnzx2KynJLI1U12Lun
         HS79OVxKUei3PEDjI/enmlXb+lADnqGuSc7KBV4P55IRYO9Tk0qKpeYZTJCkaFNirDdq
         kb/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XVZoY/SXactjb3lHcANc2YEhX6eoUNnajx6ts0AS8yM=;
        b=ADrKt11RXuGQGbNkUSPmGzBnCaRUjnIkXueDq0A4DOo1VSZx89E76JzuKCXZZoEceY
         X7VL5NLIm+a5D7fzLpC570WZpkC07ZOWtgPHqzhLwAgl+1MpvyHXALn+q7YJivawBcCW
         XX62p3vJDloUI4V+oTkDJ0vkcquzqKzEU2jGOu6lhhsm3xDzCV2ObKINfQ2GSTL63SDE
         f4Ds05yyc1Wytub4245BKbLRcYz9oLRVeiP9mXj6YfUuhDN3SCQ7OnADXCoO+kWj2K06
         LlFLwoxFyrkP4Nojdjk+ceJKsAa8RKgyDIXtfXuBpnTvBvUQwnOznCSmZLlkLQCLFlG6
         oYSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532HtapN9jKcfSxY6/+cHdKfM3wyNUacceAtLWLNB2c1QFjIc72z
	HSkDUgAjXDaG7UptZ4EnuFg=
X-Google-Smtp-Source: ABdhPJwEnAdJrvwOcgY1aqUt8rwpkSHoA2DilUtrSr9k6AV04/C8iDy3NXVw15k//WCHNC2cPaSNeQ==
X-Received: by 2002:a25:4108:: with SMTP id o8mr438705yba.154.1629618689065;
        Sun, 22 Aug 2021 00:51:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9307:: with SMTP id f7ls2553065ybo.10.gmail; Sun, 22 Aug
 2021 00:51:28 -0700 (PDT)
X-Received: by 2002:a25:ba10:: with SMTP id t16mr35982439ybg.87.1629618688533;
        Sun, 22 Aug 2021 00:51:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629618688; cv=none;
        d=google.com; s=arc-20160816;
        b=TjffBx2M7V13XIrwIWEWrO0H/FBpB7fRyVcz++pkqh0Zc/fGpxeRtwSTVTPKA2J5iQ
         H+894yBUsa+xwVNT3A5xq1Tvx3wCsVrJAvyu5Y19IJ9eG5z4KV44DezKCzlZ8o+J9HeV
         oO3j77hi3mC1EUZqrDwBqZkuy4l7vE1VuLA+iFo2w9OqYWBePFFuYtwneExi9cIqyl+g
         rH3z39U625DjfUTL3/arHG08uQJHHvDoFii7347ldrOE2A+5GvlsaxYt2RFIkWqHYzOl
         AAfRDXy7DEKBq0mNAzNquse2nmehKhNn61d2dSsO5aBxIvqpd8ZNarXrR+pG2KAAHBNn
         sTOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=swoxKUxBx5afVLnEB5LhIDPkkheQprnH5K11Nt9R4rs=;
        b=J8bWhmfRfJ7fdJPKw/wi5M3E2Dfgzv1Q0EdkNr2ltkJy2r+TMQJDAvYkZ7I4lm1oE9
         lLZSn2z5Xyo5Yc9/43971hlofymhklUtT4xSydrACQJ8BogVLHPLSZGJ353XCR2vbgKW
         waAsBk9Ilsh23DNZKOKCSO3WLJ1jPp5htrpMt8Nq/ko2nS41jQD/RCHEf0blGmKM5rZa
         MVJbTy4QrDvx65rVf2qV88Nu09fh6xFdmjDZDrCLWsmwZMEhVkQsMD9xc0E4K+3b5Ew0
         vkWErtMknzKNrwUOM9j6xCt5D8vBgkVe+SGDnUW99NbysiNKwxKlrjJ6nTWpcEU2Ekdh
         Wl5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=A29wjJma;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id u17si724957ybc.5.2021.08.22.00.51.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:51:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Received: by mail-pl1-x62a.google.com with SMTP id a5so8380774plh.5
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:51:28 -0700 (PDT)
X-Received: by 2002:a17:90a:9205:: with SMTP id m5mr13759811pjo.172.1629618687826;
        Sun, 22 Aug 2021 00:51:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x4sm784551pjq.20.2021.08.22.00.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:51:27 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Qinglang Miao <miaoqinglang@huawei.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Hulk Robot <hulkci@huawei.com>,
	Wang Wensheng <wangwensheng4@huawei.com>,
	linuxppc-dev@lists.ozlabs.org,
	Michael Ellerman <mpe@ellerman.id.au>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 02/25] powerpc: Split memset() to avoid multi-field overflow
Date: Sun, 22 Aug 2021 00:50:59 -0700
Message-Id: <20210822075122.864511-3-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1383; h=from:subject; bh=fQWaTRNAnHwzjDX7zkAYJFkFU9dO7FLED20FxzY84uw=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH0nC39QXqUTtg73y7LwI1M2THJ6kxy1tIRNS78 0fFAH3qJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB9AAKCRCJcvTf3G3AJnv2D/ wObLbEonTkdJhW6C+/WSz4E6oGnBggzSnLMUS882u8jeYadM5HfcUGcFJ1IZoQ6kX6jFoodlo/qVnf lv6ENdcXT7oa5GLQDJd4zp1Un3jz2a3qKkKwRJJSPIvUcVqp9VUZniIeP+gfhhYaPISc6W1RDet5PU ROdHz5TDjq6eCQV5GY1zKOsKcoUcvC0OVslx6dQsCCfN8mKnM3iHXqaPAB7G5IuV403ICtdQhZvuJH FJuzCsKGcftKt80P0Zoel7L966sN/WwnqiHtjEj5Q4Ha+cpB4OZbMjB+2+M/jH0QC3oVuUo3AU3yj0 ok95VgvvkcJN0Htt9NFvC5AlZBlnB5QI8JUP8jSvS4z1ZL/G4JQLsEr1riP0klpc4IOAfStks3pI70 FKMswg8epOans0r7tNzpu4yUEjM53slyrCrPKvmlCkCQH6PZ9HpL5UeSdjvmKMkopb4mcKpOJKZpPV 2y8VLpuG0jg5g4hX+/itWAXGLAwnR7BX1ZxzgZ28P0SF6/C4DDHWrrDeF9XVdF9bcQkO4TLjui7wbi nL4Fc4wq+gL4gtVmXqAAe18gdYsilyD4H0XXHcga+xLL80dr04yJe/zWFZWwb7pCdm/o3CVYxCoA4Y oQBZ3nMgYoV4HF+OrXkF4vTxkiD1vjqS4oYPHI5RM0UIBNPZH+F7nsJ6feWg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=A29wjJma;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62a
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Instead of writing across a field boundary with memset(), move the call
to just the array, and an explicit zeroing of the prior field.

Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Qinglang Miao <miaoqinglang@huawei.com>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: Hulk Robot <hulkci@huawei.com>
Cc: Wang Wensheng <wangwensheng4@huawei.com>
Cc: linuxppc-dev@lists.ozlabs.org
Signed-off-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Michael Ellerman <mpe@ellerman.id.au>
Link: https://lore.kernel.org/lkml/87czqsnmw9.fsf@mpe.ellerman.id.au
---
 drivers/macintosh/smu.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/macintosh/smu.c b/drivers/macintosh/smu.c
index 94fb63a7b357..3e2b25ea58a3 100644
--- a/drivers/macintosh/smu.c
+++ b/drivers/macintosh/smu.c
@@ -848,7 +848,8 @@ int smu_queue_i2c(struct smu_i2c_cmd *cmd)
 	cmd->read = cmd->info.devaddr & 0x01;
 	switch(cmd->info.type) {
 	case SMU_I2C_TRANSFER_SIMPLE:
-		memset(&cmd->info.sublen, 0, 4);
+		cmd->info.sublen = 0;
+		memset(cmd->info.subaddr, 0, sizeof(cmd->info.subaddr));
 		break;
 	case SMU_I2C_TRANSFER_COMBINED:
 		cmd->info.devaddr &= 0xfe;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-3-keescook%40chromium.org.
