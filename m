Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBI4LSP6QKGQEYRWKLCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 512372A8D9F
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 04:40:20 +0100 (CET)
Received: by mail-ed1-x53f.google.com with SMTP id c24sf14804edx.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 19:40:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604634020; cv=pass;
        d=google.com; s=arc-20160816;
        b=egEv7xdURX/u1vuPQo7ueLmBbL1Y9XgNDU76o0lK/lMm51ZIrWG42LPPr4dJN2p8aC
         85zbLwb7xgK/NuGYmK0P+2ruhJ7ptVX9sl06iQmDJnm4jgftvSFQT1PDosyEPM+nygYY
         1UjJZREH8jEBR3l4e/bUlo6pkXAZqErShpEC3S1lG8YnMispgDmAFOrmDYW0CGzwvVma
         PTCsoSfxg7+BpU1FdvIVq5q3TYOGK+Ab8beFgyNrS39afjzhtAt88WD9suzuYC4RgUUj
         dQGS2RsIEvkU6jHBgDsRk5OIhaENl0Zc3jgyzV/o/37CNHpsWOj1THdYw6kuBK8S427O
         9vUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=x6N/jSa/nF/eFeXYClrJLeU0vq5VA2lz99JIKkIMz64=;
        b=P2vQp2EUN/CT12Lxvj48nRNahWjY45mcFJcR90MLZsMVKUH3e7HSgSDE+n2szGOmbJ
         JfxM1ICc1/eog4z71W/mtfWhqfJ7HsTkBQmMOw/IybYeaNlpAPE7D1e6WCrpb7H984JH
         ZFGczeTSJRkikOuW5H9dzu5uRO0zgz60usBWx7dPtQLeh8EQa0Ez1lzzmfzewOQtdmkT
         6cWadjHgXt5lHRULl+5HbdziyGMDYDrevg1uhNVvMJBiPMwy6yIiVeVtXZQ4kwwMfH10
         MOu9InAtRe6MGOB1aRnum97Jq2Ly7IfiU5CN/0gQLGsSFGX4VOc3H+LJHwtjonEYrOhs
         g4yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G2sPbaKV;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x6N/jSa/nF/eFeXYClrJLeU0vq5VA2lz99JIKkIMz64=;
        b=gjdRv2NLTLyOoY0K2dk4xI2pFqBES+So4Biv+n4ekctlX2DH+48WltByo2Vf1n6bp4
         rgVHns6HmRIVOADAkjqdZfIDrDOSA1RykvvZ+LC0RgyHx3AwkpFsIes92Gfx2Eq/Xz9r
         VbKVfUIKXmMhq3U2Wv8QOx178sgZ5boxDOftwXSPkbE0kTMIYaiD1uaUaCdIF/qu7/nm
         xf5GN+wu+NOkI6Wlb4YzW85HuvKMwfqX3ORN92OEMDlHE5NIbQBmd7mcxaI5jBVIm/z8
         iEaET8mki6mpWulT+ZBKwPugbrkpHdKSL4uPbsrer3FZXLDKHkOYEWbX/q36Xa7ZytGo
         J43g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x6N/jSa/nF/eFeXYClrJLeU0vq5VA2lz99JIKkIMz64=;
        b=e7NR36Z/WI/EFKUfTdu+MO6Hf1LtbgDN7D7zwNHbfy4QvflaDtifBeQK2oAPiNsKxe
         iu+CssyjP0VM7fUQjB1KFzBBjv7Typ7x93oihsNFewQc2ZvKPYPItXBKIrbuWjuKJf/S
         8mZli1iEEWq9g8oFhYjmE0iBfF0ngzLXPEpiML+FD4Wql3WWQ5BVOzWe6oXfchMgiwLD
         L7DCsMF8DCNwuDl2sGYXDkFpMKHcbLto0KS6aDoYC6pH2caUKhURHFj6/WUX9wFRB3G5
         ssiDAmBhkY/6jOhONoM29El7M70mz84SP0eCfNGp0UykCXo76ZIuGnyd4TQU9DBmdJfB
         vkBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x6N/jSa/nF/eFeXYClrJLeU0vq5VA2lz99JIKkIMz64=;
        b=bBfz7AOomQGiJFld3CV24YPlFtAc7kt/g7hSSJDSiD58RMWheB3evJ2LH42n+c+ek2
         lLi8sFBtJhKyejBwTBf8ncYxaXdrmjcXxmzxqrjOaW0b7Xup74f0RhLfrZJtuY6oZS0v
         x716gEF32yu7FRRwSjX5E0fSjfgC/WVJAeb9788gB3OXYcUbQQgLu/XEB7ig6ZWwzQBP
         SgmYE8vMI0rJxcS7r6cdLBZX61oNxUI8IEDxlT1bV8xIeXr5mmh1tt0D8NHLFDqB4Vkv
         iBNAjblxMXrTPQ3TpxDEib8whLzWli0ni4YGipwBzFn06Zxgpr1Y+P4vE9mnKzKhjxih
         pfmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gXddSsIsWYIQb+2gL4MpSnpT1ozzcFF6XqK/ObqyGb5W5WGEZ
	7E8PpAxnjy4EPmorJi5UYjw=
X-Google-Smtp-Source: ABdhPJyTkGFwoHbUGvX3P1s5wRaN2117m2PHsO6djUnAAZdPVkXrIxquLBwkreLo56N6mAUeZOfrgg==
X-Received: by 2002:a17:906:854b:: with SMTP id h11mr54394ejy.273.1604634020064;
        Thu, 05 Nov 2020 19:40:20 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:5591:: with SMTP id y17ls66101ejp.5.gmail; Thu, 05
 Nov 2020 19:40:19 -0800 (PST)
X-Received: by 2002:a17:906:2b8b:: with SMTP id m11mr44479ejg.457.1604634019064;
        Thu, 05 Nov 2020 19:40:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604634019; cv=none;
        d=google.com; s=arc-20160816;
        b=xu74oGM8VO76cuKWD+pX7K+GOXIBub2QFYz/6bATAHrc4IYo8UHv51r2XGvuP/kMaC
         6lOpJXy2CziNJGmaJ12V/kwI1JKVRJ0726PB5vGQUpmvFQ8Ob5ltFwSM03jU9MUxBjRm
         4jB6wzw2aX/lzhmvhpWLtz2fXTb1xgEpQyBhQjfxFurY5DWTrE8fpELIMxbHWXTYjjfF
         FyZ3cFGY0u5PVHmnHNDG02zePxfYCjyLeZM071x9tSQ4wCKUIPpM5DlAjXJ+dSxMlmYt
         4gDJL2/SYic7Kw7TfgkyNApbARYhbb2sm/y9Dny+msy8YCSEV9TV1Pm9+TOLFWbOo5TJ
         yo6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=v31c+3qUzm/Jl9mhtRELjufMUcxhfj6Qpk0Egg0rkIc=;
        b=SGorDW2F9k+KVOZwOCXfnwoXKMUiO06lMiC3o/AR2upYukyhnu65nlPjq/IxeNjIra
         HKTe4bJ5SCpibq7+azGh8z9z6IyTWpMItXPD/Hb4x0o48KPsG1GGVj8qjKmzFrbrH1of
         joEj4pROAlrGwFhST0IMXqkgw0/LMF4PzdJxpugLGC670Gfmr8IkrAH6sHU+uH6nkcat
         hojmOKGxnZdre9RmRs/tIo6LFUunQ8U1RPo+1PH6gTihQNMMQg7SrdtqaHJySIImBGHD
         1MDwOcuwOKBSzB4Hkj6MqtpsH+nXHUW714W0/Hfk622+pUkOvBboPFOXkKN0ck4FfmGG
         nqIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G2sPbaKV;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com. [2a00:1450:4864:20::643])
        by gmr-mx.google.com with ESMTPS id a11si1364edq.1.2020.11.05.19.40.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 19:40:19 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) client-ip=2a00:1450:4864:20::643;
Received: by mail-ej1-x643.google.com with SMTP id w13so5687420eju.13
        for <clang-built-linux@googlegroups.com>; Thu, 05 Nov 2020 19:40:19 -0800 (PST)
X-Received: by 2002:a17:906:6a57:: with SMTP id n23mr55277ejs.315.1604634018857;
        Thu, 05 Nov 2020 19:40:18 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2d20:9d00:b87b:b644:61a3:6870])
        by smtp.gmail.com with ESMTPSA id z23sm2103337ejb.4.2020.11.05.19.40.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2020 19:40:18 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Petr Mladek <pmladek@suse.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	John Ogness <john.ogness@linutronix.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] printk: remove unneeded dead-store assignment
Date: Fri,  6 Nov 2020 04:40:05 +0100
Message-Id: <20201106034005.18822-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=G2sPbaKV;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::643
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
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

make clang-analyzer on x86_64 defconfig caught my attention with:

  kernel/printk/printk_ringbuffer.c:885:3: warning:
  Value stored to 'desc' is never read [clang-analyzer-deadcode.DeadStores]
                desc = to_desc(desc_ring, head_id);
                ^

Commit b6cf8b3f3312 ("printk: add lockless ringbuffer") introduced
desc_reserve() with this unneeded dead-store assignment.

As discussed with John Ogness privately, this is probably just some minor
left-over from previous iterations of the ringbuffer implementation. So,
simply remove this unneeded dead assignment to make clang-analyzer happy.

As compilers will detect this unneeded assignment and optimize this anyway,
the resulting object code is identical before and after this change.

No functional change. No change to object code.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20201105

John, please ack.
Petr, please pick this minor non-urgent clean-up patch.

 kernel/printk/printk_ringbuffer.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/kernel/printk/printk_ringbuffer.c b/kernel/printk/printk_ringbuffer.c
index 6b1525685277..74e25a1704f2 100644
--- a/kernel/printk/printk_ringbuffer.c
+++ b/kernel/printk/printk_ringbuffer.c
@@ -882,8 +882,6 @@ static bool desc_reserve(struct printk_ringbuffer *rb, unsigned long *id_out)
 	head_id = atomic_long_read(&desc_ring->head_id); /* LMM(desc_reserve:A) */
 
 	do {
-		desc = to_desc(desc_ring, head_id);
-
 		id = DESC_ID(head_id + 1);
 		id_prev_wrap = DESC_ID_PREV_WRAP(desc_ring, id);
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106034005.18822-1-lukas.bulwahn%40gmail.com.
