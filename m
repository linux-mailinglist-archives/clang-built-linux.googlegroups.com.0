Return-Path: <clang-built-linux+bncBDYM7YMH7QKBB74T6D4QKGQEBHJDZVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA4D248C5E
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 19:03:59 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id c124sf6350712wme.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 10:03:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597770239; cv=pass;
        d=google.com; s=arc-20160816;
        b=vxzaHD3nZvyrvOR8Cxv20dro/Xh4Sz7hD8Fi8PBcWN5K/QkjkTtTgCQwGscWNJrcsZ
         SkeUUqfyutG6PTdwA023YbwkLgaTUVJOLI2qnCB0LtmIt/4s3p5mfLp5iuyGh4i4beUW
         1p0//5K1JuLBS1/fH1tZ/4Cp+c+vKHWkNBViJzZmRH2hxIbwGdNDIASKNBZ9WaoCwhfz
         mZ0aDF93Fke7XsBtjH4gVLEhlJEFcvwqKm7NzwYECR9cZTOMEH61HXjexm27a9pj/o9b
         C4bdzuHbyx2UK6iKut6Pstu/JONXu0v6djSdIZ19hVTpqK1JCAA5Eg+E/b6lg1eylHHR
         Mc/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=zwcPCOgIme2EC+Q/jOBGqjxbEkTqdcnK5JqljS8HFBg=;
        b=NrAza4NvJ4Y+QiuSPsV1wc4kCBdUCN8HE0PeFm6FeasKePPWWuCcyZDuA70pwDAcTX
         bkk/0mWaDaLrgxQnyvnRt5JhIGrVbqMjua4qHnQobcIDfRCViwUSWKWyL8zd5kDo+fWb
         QZMCXnh6q4qxDNdS0TlL0a7oxLPmW0ROs+vjugOaFQbyXR5u8dgavuyh89pHdu+34yp7
         P1lGVjhExgNz+DoiAr2XOJwoZkkIc7V2BdKDdIyJS5OZAANUaXu7HQ743pLNxEBDnJ0Z
         mn7Z2FyBGpHFxPimVNDzJCJCmo9NG9J3BDMgLhfy4xLeQTGC0zGCaPbyZIywMRk09y87
         lsqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fyaXfJJY;
       spf=pass (google.com: domain of alex.dewar90@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=alex.dewar90@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zwcPCOgIme2EC+Q/jOBGqjxbEkTqdcnK5JqljS8HFBg=;
        b=SoZt+LQLX5Yka4NboTLb+Z9Mjkd8LgDBogIpdj6GHbNsrxQIY4JlGjgCYzsUeex+ic
         zxNuhEyTsaLXVrM0k+Qk7C0rzHXpNFkAKzBw1l5GXc3fOcv6i1GNFn5YfY5yRHaxl5p0
         ytfQJWwxhSfeszUgu7P+su+vUenGxGA3k6yiUj+ok62NrfeIL+sgyaYjpnFB99WqcuAB
         DH8yJJCq3IMjQqgqD6eCRjfVTXwcst6oqxphnvhG68WVZZySwN7VyZHWMfq09fmI6lp9
         2Y2TkPYhwEA0xg6gumngXhIM9yevkeQikZ1qlL9rzPAo9GzS2wmVUyJpqIL4u35EnLbA
         Vi8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zwcPCOgIme2EC+Q/jOBGqjxbEkTqdcnK5JqljS8HFBg=;
        b=mUGab4GRBsMEN7DmPL/nQUpz0+qcC5i9EOPUfRfn8tpLHetCIbeLaa9ajQEWClUfsC
         xcB8gLdnTjX4+PTXuNSD5F4L3J6rbs5yWjh1qb6IllLx26en5p9CRyu51MYQshlcwfqi
         onULQ9NyIgxcNTC+E2jwY55R0SAuBpIofjDnnx3jLg5/OSf1/jaGqtpnCNvGSV/PBPXp
         kFQfhjFLHANpDWV/3bO1IOBUPGh5DY5GI7PVs29uO9MA3GfMAmiMtdtOZPi7Wj/9Ifpj
         pYJsHfzsIksQhBP2pmC2UfvJX8Pac9Y0kbsMQSgW9DiYHa9MLqtIuB4yrpbr26T04ffr
         Irhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zwcPCOgIme2EC+Q/jOBGqjxbEkTqdcnK5JqljS8HFBg=;
        b=S9FkgJdlddNXui+7xJQbzDMEDXzS/bhYxk6+Smn0vq8cRTyS4UMLp8xy2hoY+yp1so
         sq3LWDHNIrZmXI1ejvRlI1STusc0mHFFbvHxVTztVWzcSIfAnRchrOqP7vhUIaqZXoNb
         1JzVM+7taFcUK4LGit1KSvoy6xahFu6BGboc71omiWDmDfZIuqo97EjRVbVUQa90zuIz
         mNRAvGQXd73QMFF782nWRgkDYXkP0l8z6jrKKcKUwwHwdUYSXaOB1sapfuswdv2SXz1P
         p3AZMcQSJVnCLoSh1a9AiHsIAq1QPK5vADKwyh/FKfOKNekjK7NSWltR92w6P42nQT8J
         4pgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533t077rGogZqMPha7QpixVIAPHpfFN6m2WF0DFURWGflQAaJoRu
	Vu0VFjmEByUk81qQikKJ6Yo=
X-Google-Smtp-Source: ABdhPJyad7jlAZU21Hunp+HXSyuBPJTLg3zKiA45PfBK2SiSQ9o8802LeGtTLyilNojHBadn42vXsQ==
X-Received: by 2002:a1c:678b:: with SMTP id b133mr855278wmc.117.1597770239639;
        Tue, 18 Aug 2020 10:03:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:3802:: with SMTP id f2ls353623wma.0.canary-gmail; Tue,
 18 Aug 2020 10:03:58 -0700 (PDT)
X-Received: by 2002:a1c:2e07:: with SMTP id u7mr889896wmu.52.1597770238930;
        Tue, 18 Aug 2020 10:03:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597770238; cv=none;
        d=google.com; s=arc-20160816;
        b=SGeNU33BV/kOuiVezkWUKTMbtf9Dh5ucH4C2eOnOKWhKHnHr/i53ODnbkAnYInqTfM
         9W7kkhJeYgfeYP4XBxPLrSFifXdT08gnxIO9qHfp4ylijvm87lIPqGK7g3j8S8taxTNz
         nF7OALuexEcy6h2CefJOXplVtFZNIjU6D65QJfIuRPBhgXF+0qoFITRiyNvaCtqFn092
         pEH9oFPQofIvxXdzWQC5qEvaPWL/fMgtyB4wRm85rtnDtUDRe2qhUZktQpyUgR/NzM4r
         Sr+0fLV8g/XW+M/Rx5c2YSZBikbBVNRFIoas0T+eJgJWdy1jhgSppEnJJEWyvfwrA75a
         vVsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=cHhaJZL4omWMEhSsDlpfu6kH5HHdc261F7armVnM+tk=;
        b=VomY4sT5v7dU5uFsruHSeQKumEkgl2AaDNXvqVp3N2I5ROTFzeio2N5iTRRtzXRTQj
         K0fLIysqzqz+l6uw7EngER8XYdVd75LufVWGynVgd6VNoOnN0oFugFS2W6HPjciSqN/8
         QCdnwix42WGSTruDjurWPWhaVtha82TF7B9yOsuAvYy2MRQcLAOrkkjBO4DqpzLRNSHN
         iBnsV5ShbHrUmn/eNx7K/QuGmeuHyBYanCgcA/rWEilCPXSRTHacVMtMiGwtkLUEx4d4
         wzQhqCy340+zzeX5UdvklQ1aOFcTRBZFec8gS5iCBxlwh66tlVqGL3X2UqlJNB1C2aTh
         VUTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fyaXfJJY;
       spf=pass (google.com: domain of alex.dewar90@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=alex.dewar90@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id w6si31980wmk.2.2020.08.18.10.03.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 10:03:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of alex.dewar90@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id 9so16897248wmj.5
        for <clang-built-linux@googlegroups.com>; Tue, 18 Aug 2020 10:03:58 -0700 (PDT)
X-Received: by 2002:a1c:4b18:: with SMTP id y24mr842213wma.95.1597770238467;
        Tue, 18 Aug 2020 10:03:58 -0700 (PDT)
Received: from localhost.localdomain (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
        by smtp.gmail.com with ESMTPSA id c14sm34833420wrw.85.2020.08.18.10.03.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2020 10:03:57 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ben Segall <bsegall@google.com>,
	Mel Gorman <mgorman@suse.de>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Alex Dewar <alex.dewar90@gmail.com>
Subject: [PATCH] sched/cputime: Mark function as __maybe_unused
Date: Tue, 18 Aug 2020 18:03:36 +0100
Message-Id: <20200818170337.805624-1-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Original-Sender: alex.dewar90@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fyaXfJJY;       spf=pass
 (google.com: domain of alex.dewar90@gmail.com designates 2a00:1450:4864:20::343
 as permitted sender) smtp.mailfrom=alex.dewar90@gmail.com;       dmarc=pass
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

Depending on config options, account_other_time() may not be called
anywhere. Add __maybe_unused flag to fix clang warning.

Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
 kernel/sched/cputime.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/sched/cputime.c b/kernel/sched/cputime.c
index 5a55d2300452..43ede0d6661c 100644
--- a/kernel/sched/cputime.c
+++ b/kernel/sched/cputime.c
@@ -252,7 +252,7 @@ static __always_inline u64 steal_account_process_time(u64 maxtime)
 /*
  * Account how much elapsed time was spent in steal, irq, or softirq time.
  */
-static inline u64 account_other_time(u64 max)
+static inline u64 __maybe_unused account_other_time(u64 max)
 {
 	u64 accounted;
 
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818170337.805624-1-alex.dewar90%40gmail.com.
