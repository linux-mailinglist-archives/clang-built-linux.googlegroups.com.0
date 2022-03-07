Return-Path: <clang-built-linux+bncBDS5JPEL3IIRB5NFS6IQMGQEHZWBR5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A874CF676
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Mar 2022 10:40:06 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id o9-20020adfca09000000b001ea79f7edf8sf4325368wrh.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Mar 2022 01:40:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646646006; cv=pass;
        d=google.com; s=arc-20160816;
        b=SWpbcdkUTiesh+99HJKatV8IU7V5VIRyDHCz+ZkHEuVmsuooRB4WdDPMbvOv8aFGY9
         0mOEwPsBN9XFa/GMHhHHwwGO/18hqqyoTdRINXZYpnuC44BmuTc8RNc/gP87OtlZb6BA
         hd89uPLFyiJbdxu4MoU4V6MFh/M2nbK2xf6KnI0p2AqI9i1SA+1tNmIH/h1xnIYLeJGw
         c9kCSv8jm36iWBQMkE1yGNtf+gwWLcplFXj8T7yfI8IRwLUeVAWlxY4XYyLgDSQUsst4
         ETgT5b6CsYQTXD4r2wayObPzXcj7b7LAh4ECLx3CKV/3PPrZU7mvIlv7s9g/OUXA6m0i
         n5MQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=1xjgmYi+wF6wNzWhlEoM1Tis1kpGOXApw/oOMk3x1B8=;
        b=yveY9muy0B4mocR5l6/A2vhlzEZTPo7gMHkaJGG++jtXk8irqOsDL+cTyhinK8YERW
         fJ+T/Skww0L6r8OkmnQ0Krx5mNFjsPteyzgGWU8kjXJnDXZJBtXsdDMjczpJdokWJ0T7
         m/t7r76czdNWmLnmOnGmewsuZ1Bb1y6dyDMqEaERXCl4qSelKjopIlvRoUM9kTFxXH1w
         bok2To1uYn68ByM2U0Uw3+1qy4fvGeLluGEXGBR8qL2Alp7HdhGYwfL5tpk6OE6x3AUd
         iL9/rz+P5OJIhNvGghhU8bE1Lc2457oRwh8TS17ywjOWjbijcfbyfe2H684uWbZBAXtq
         R1/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZRAJsePt;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1xjgmYi+wF6wNzWhlEoM1Tis1kpGOXApw/oOMk3x1B8=;
        b=khWQJtjveuEl2BEhGdcxKSwFE/G9I8SFxSjj/KHmG4rnthnySOxovRG9FhsSyb1uGO
         7lOl/2PP9q6MtAy44PKxP0j4R2Lrz3Jsze0/PcgC5yChlu46PCO6I+MBwBkW4JqUXWoj
         4z+t0P5+S3IbAg5EINna06h/tDKNSRFXUWLL6IJJU0RWz344FmtQ4ArpVyKVWs3rpGpb
         Lm0eRxL9phYhhZH5uZ7snYNvKOp+9Vyf5vl3EsnFXFvEUUZi32apr87afBeXRZVG6C8l
         pxPiAroEH4G5q3K0/vUxvq8rwuowI6uFfXPwZF6v55Xnj9kx4ArkhZJbx0IK3GyLERFX
         yvKg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1xjgmYi+wF6wNzWhlEoM1Tis1kpGOXApw/oOMk3x1B8=;
        b=fkpuusscEUPd19jNTlBa1m5FA+9kGToYm0Ew7ydYiShwZ61/wra2TyudWS4n84mKu7
         wjYQJM5odCFfynK99R2FTEBW7qcNug5LDlNx3DQgPwpfmSfkDimxF1ZLclaUi1E6YIni
         Yrygby4YAWIhMPrU+AcHs4K/Psq3li8RLUQi770DRo9LRnbcMGmvtyGrQW8tFizBVXK3
         DZheLaQUmaL4XWEA6mgDsEVBj/PZrWDHKn9A4FFrqv76gs5SjWTp/ZDljaAoTO4Exfg5
         Mm4WEI/YW9vMOelnhFEj/Dj/WgrzeAY8ckOp913k6PVW+sMI9J/oD8fy+PHRB/9WDUMO
         jRYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1xjgmYi+wF6wNzWhlEoM1Tis1kpGOXApw/oOMk3x1B8=;
        b=i98NqU58ltmkhmrORiCaEGyboE9y8eevpD1sQCPmjDHyl5n0ZjhptG3xPAk8iLQq+p
         pqp0gqpwu7xskJm0CNf9crekFeBUiIXbkeMDMX76TYcABne27GW+i/Hf7dVgA7aIkrLO
         NgkkVuospRfvEGr1KHaYGZtTDpBsYHCUFz5ao1yalPek04EB1EMBsV3dCfHj2QuVWPkJ
         5c3lKmFdsXEjvCaJzSrrQRCyci3VUUzK8EjzAmQ6sHV/3I5sA7h1TJoKT9BZscLqqd/M
         kUIU+u8PyRaXbIDRIyEjpdWIeft8t5wwOMUljxVOs2kxaZ7qeSaAxUYYjWx6hJiiU84j
         itaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531j2Ezw00XeqiuSc2ng9srjh7vRPLoOwh+myNphK03LKeumSWCX
	K1+ZAEqeE7sEMclSTtGsTPc=
X-Google-Smtp-Source: ABdhPJwHGKMBp08Zud5KBsvYsV8ZGgwqJvf2K4S/fN2otSv/2TPB/ylCwJ6CfYk5jXHUaE6hh7DWGA==
X-Received: by 2002:adf:eb89:0:b0:1e4:b8f4:da74 with SMTP id t9-20020adfeb89000000b001e4b8f4da74mr7578178wrn.408.1646646006064;
        Mon, 07 Mar 2022 01:40:06 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:35c2:b0:381:6ed4:1b5b with SMTP id
 r2-20020a05600c35c200b003816ed41b5bls9197564wmq.1.canary-gmail; Mon, 07 Mar
 2022 01:40:05 -0800 (PST)
X-Received: by 2002:a7b:c0c1:0:b0:385:be1b:e6a with SMTP id s1-20020a7bc0c1000000b00385be1b0e6amr8404010wmh.73.1646646005096;
        Mon, 07 Mar 2022 01:40:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646646005; cv=none;
        d=google.com; s=arc-20160816;
        b=T8WPvuSh7xa7eUWWE7ZA8IywhSEOvQocNluZ/43X5kpZCgy1qNTlsb+B1N7RyLCQM3
         KdEG2RSCXqiw5Ni4Vf2uK8YuEv1x6+nHB4fTMETr70utLDdWOMnzCf+ZCGdMkwbNmLH1
         c3uiRV1HqJgWBUJg47oPa2hgAk4nUVtpUM6goRkm71l2VInBZF5cP2bslkHXDyZptPjh
         bsI4s0ET/hKv+qjwZp78kRAS4UZrvpVQBKJCFUhoXmeNyR1fLCDPzUeB5az2SNGNsh5V
         l63T6UAqS41Jd2rTAUTQE+A7VYcinJiGIRSdHgCDIuz2l7r/y3EiE39enSpXCxQ/63CA
         ij3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=02/z7rGh7wq3Rx0moWAvG5QcxZRbuVyz3BcvKrgSmHQ=;
        b=aqPaH9rtqeF8uoG3gKeuy5frWtgcxNZ3Si/cYuzp6BADqhleILkS/tdq15jcUsC7+0
         eZm9qwSo/YF1JW752o+/4YMTa2Eon20d4gxjNYqUPod3oSbXL7YmFI2e0th0UO60AZkk
         XxRdGnXgOi8A0GM/r9jCnKZ++Lafrf1bxZfWQzh3GRaV0I1ptHLYhA80Y5zKba3N1u9K
         IkfpuH0Qq5DQ4xq8T3blHHwihdKor0fWxGOXkmsOh/4gtK3Xv58lrE83ibE+qaX+qTZA
         84JsWY5HtMFkPbFQHWF7+oofOcgxKo3yZ6ZmBw197kxNACrxVNaWPTMhmJmAW2gx3zkB
         A8qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZRAJsePt;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com. [2a00:1450:4864:20::633])
        by gmr-mx.google.com with ESMTPS id a13-20020adfed0d000000b001f0626bf294si652076wro.5.2022.03.07.01.40.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Mar 2022 01:40:05 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) client-ip=2a00:1450:4864:20::633;
Received: by mail-ej1-x633.google.com with SMTP id hw13so30424337ejc.9
        for <clang-built-linux@googlegroups.com>; Mon, 07 Mar 2022 01:40:05 -0800 (PST)
X-Received: by 2002:a17:906:6a0f:b0:6d7:1021:2bd2 with SMTP id qw15-20020a1709066a0f00b006d710212bd2mr8909924ejc.395.1646646004536;
        Mon, 07 Mar 2022 01:40:04 -0800 (PST)
Received: from felia.fritz.box (200116b826f87d009c8e984acb545ab7.dip.versatel-1u1.de. [2001:16b8:26f8:7d00:9c8e:984a:cb54:5ab7])
        by smtp.gmail.com with ESMTPSA id b24-20020a170906491800b006db31196e2bsm691029ejq.218.2022.03.07.01.40.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Mar 2022 01:40:04 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Balbir Singh <bsingharora@gmail.com>,
	Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH RESEND 2] taskstats: remove unneeded dead assignment
Date: Mon,  7 Mar 2022 10:39:42 +0100
Message-Id: <20220307093942.21310-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=ZRAJsePt;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::633
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

  kernel/taskstats.c:120:2: warning: Value stored to 'rc' is never read \
  [clang-analyzer-deadcode.DeadStores]
          rc = 0;
          ^

Commit d94a041519f3 ("taskstats: free skb, avoid returns in
send_cpu_listeners") made send_cpu_listeners() not return a value and
hence, the rc variable remained only to be used within the loop where
it is always assigned before read and it does not need any other
initialisation.

So, simply remove this unneeded dead initializing assignment.

As compilers will detect this unneeded assignment and optimize this anyway,
the resulting object code is identical before and after this change.

No functional change. No change to object code.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---
added Nick's Reviewed tag from the first resend:
  https://lore.kernel.org/all/CAKwvOdk68xzVVCCGgdEDj3fSD9nwgh8=7zi6QGa-hhxweRibYQ@mail.gmail.com/

Andrew, please pick this minor non-urgent clean-up patch.

Balbir Singh, mentioned in MAINTAINERS, has not been active lately.

 kernel/taskstats.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/kernel/taskstats.c b/kernel/taskstats.c
index 2b4898b4752e..7cdf4018a9c5 100644
--- a/kernel/taskstats.c
+++ b/kernel/taskstats.c
@@ -117,7 +117,6 @@ static void send_cpu_listeners(struct sk_buff *skb,
 
 	genlmsg_end(skb, reply);
 
-	rc = 0;
 	down_read(&listeners->sem);
 	list_for_each_entry(s, &listeners->list, list) {
 		skb_next = NULL;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220307093942.21310-1-lukas.bulwahn%40gmail.com.
