Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBYHWU2HAMGQEL5ZAIAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 529D147FD41
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Dec 2021 14:10:57 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id g27-20020a2e391b000000b0022d8f41fa9asf4520628lja.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Dec 2021 05:10:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640610656; cv=pass;
        d=google.com; s=arc-20160816;
        b=w3eBxZuPSEcf5fqVRPVuAmPOvKRVhQXbywdQPbCbDZwqF0qkM2cZLyShDnMGbr+C10
         fCG4DQkIgn4ORZNfBHQ2W+bENB0tixN6o6KubwfnM6bgh+irL5OcUD9EpOHfEA2V32Q5
         74kxmdYkxmWWVWmC7rRXeeEKe7h9A9/aFIDYQYetzZ4XDzXVSkMCmxREcI6VVwElXqWR
         tBTZsWzcnqssilM1bqA6a0Fu+fdY26b4nnIicXZVgrN9nAXcvVcWek8RkqShtCVBA/ty
         g7tQiEa6cYR+qp+DmLF2Qf0qwOs4zeYSn9oxayfJ9gW93VLBLGYOZvr3qz1i34mL9j3m
         ARxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=nadEuXRZXduuV/fFZZ6vuBU8pFHGfC9vYWMtK/L9f6w=;
        b=QkMyQWjZ41EjmjJ0xjJ6S/W8VsUZzW+bt5jtEHOXBlrdx1ikoFPlFeOnxMSc8a+t2V
         kf6TSSXn69iI13aE8dK9dQhwcm2of8p/zEIb8xaza8/D/AFNsRYGRH3Ljxn1x0gziu4u
         TzxTm7qH90l1Bz9CyTUKuU4FwgE4aX3PItCsiOhZXun7jgxThQuBUHBYhACffs96NBMZ
         oEbxd9ZaN4hVLU//oBKsmjAs3NkmKI29cJXDS+csCATMaHwKaAOsLGcdUBIOJd/rYBQa
         sQUxc+tE0g8Uvvg4FMO5N2yWYHC4asZJLuG/r6T7Qcfnm5M1GCt0ioTb+Suck7Y3oIRD
         DyhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=YAtG05kr;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nadEuXRZXduuV/fFZZ6vuBU8pFHGfC9vYWMtK/L9f6w=;
        b=snUE0IgLR6lQv3kEcxqNZkad1vNt+ds53KEtyOz3KMnPhsOcA4QnV+L0H5ri8sUDYA
         BWcvgSp29MVQnmgtEcDCdPaHbRD4fplNrUlnfuT+8RbOHA4GLkXzBdDBSWnvEyWKEjSs
         +SzPbZiUY+i32gLpDwMHZkp/s7Uyo4dmbLUs3z1La4JoG6fHtm2FRNuWZyf12UTBpwJg
         Ed7iglQ3Avd0dunL00b0D3UiXq6PuzB9uLokOPCEhBQedudJ5eoCYa5jVEoejqTWpzc/
         kLb94AHDSy+rBA+d9warTfNoZTVXJ6mWqiTqmesAT5fGr7+/mGz/g/qiFHN2yb8aAtab
         UmFg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nadEuXRZXduuV/fFZZ6vuBU8pFHGfC9vYWMtK/L9f6w=;
        b=g5hPiRvOgtd2hFdGNMJi7ft3MQhshiLhKcF6Efamu39b6uuGAZJMguAxecN5mIrl8l
         YM11UdWGN0TGhuZVgXDwksBqlCCAKzIbZzLLkkVu9ZOLuK6RMKACQGMoUu6hem8CjYEf
         vOba7ajxHj0m1Z6c0YZcJmwl5eUSGpr81SVFZdGfvh3TsH4Tq65DpJcuY55MiRiV+qy7
         PQk44yGP9EsmI57i+InZHNv2/4Wzv2DeuCSZJzc1qQJfmqVT8rJNmNQQG0Asoig+ZuCg
         juGDPGWWFKIYw4pSK1TC8570DrbSxmTsQSIMUhg3k/2jWeo/je4LBVtKvsme9KNBIe4v
         MkGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nadEuXRZXduuV/fFZZ6vuBU8pFHGfC9vYWMtK/L9f6w=;
        b=Fk2++P4Ag9Dl6SaMAA3VTU9sTtj0B4AoJh/Ppr7XVBCl1KCuKAgJjmbptEyGOjXI/R
         vFUeZGYidwa3yZnshEDt6XiMHr6IG5/cQSdG+ROm5xbWlIUT/JxzfEjOpOhTzl/Jd5Jg
         /RP1DNCH6sbMNG8d/eEYoKDotE2qwFF5ECjDvp0ldy6yC7w/fUJrfEaErhpKueFGI7v+
         uD/DSYlxrDyiifkHE25aBqefIztgRERYm2e5kcnYh8cQlrvEHJUsDPKMSNPA1Qv4BEfV
         Lz24GCZwB7yiXFcHNB29xXE/ppV43Nh7nyCuz18LNZ1/i2UQ+Ly3YwVHLJsqTeQH2/Nm
         Yajg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YMBkbuQIYrdi9W0E2KyG1uXtaystrr7xeI361RHw5oRrnEqmV
	TJ7Xp+mcAMsnTHKwiJUr0mI=
X-Google-Smtp-Source: ABdhPJwzLCdBwJJwuUIPZu3hKKE59BBCNMVkux7JaHWg9djncdABu18/9UoAxLeQwexYsc1ZgDLcBg==
X-Received: by 2002:a19:490f:: with SMTP id w15mr14980283lfa.278.1640610656706;
        Mon, 27 Dec 2021 05:10:56 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3d2a:: with SMTP id d42ls322163lfv.0.gmail; Mon, 27
 Dec 2021 05:10:55 -0800 (PST)
X-Received: by 2002:a05:6512:78d:: with SMTP id x13mr14926818lfr.183.1640610655610;
        Mon, 27 Dec 2021 05:10:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640610655; cv=none;
        d=google.com; s=arc-20160816;
        b=fAovUswbLVuIj/Zp2w2IZvYfDqd67KPlZBNbDz5M8xSc20Cy0HiqCUBZjrsvryOjHI
         5udG4fAr2TBo9m+Box1LDW3hgQPBEwjfsPsn8401isqkACaxOinGM8Nn8y0BCLxPhcoz
         f31bsA9UdcbbKDun51Ptb7oY/rJrAZ2WEfoCGrzu+GeiTClgACZNCgnY45Mi4hvchWgR
         WSAWjEtiI6n8LMz04MHj1oopy8uJfuUgHrIu16fB0eAQasI8+CxoGbPN2HSWavIDcjQR
         OpQZxUzg7nhE2jsU6pLzwHoUKZwKbPqjS+8NzygmuZi3DoaYwoF6OE9HrHmC2cDJPKne
         JY9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=B6EDKAnHtoumNaOqDyi3E7TX6yPK13Mj5ojCgKu08oc=;
        b=yoKEl2HpuLS0i/PGnaKpOoHv5slsRzHpaWFTMiYWhkPtlHXVQ+XRgLhQZXVqoUGH2I
         QAfSCZaW3y9WH7P1ZnBBQiGbWUZdc2ltraAE7nBaGImaB0TAoCHF/m294oTJfGhUdCrn
         ad5+8OTWOs27V4GeDHJHsURFxUzu1wEVq49cvr89n2AiKlQ4ZzonMVLaoa8r/785ONyY
         hvk1Zywhua4s004gpZvOOQ3IFmyzY0fgxfLpefsfzAJvTnNdz3Vg2YanP6sERU/6+KJU
         d6b1hOHaRR2eRRT9X0qpRoYBsam8Iofy88l2kG29u534owkVukXtxz04KKHHW1z4b4e1
         bHhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=YAtG05kr;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com. [2a00:1450:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id c14si723522lfv.13.2021.12.27.05.10.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Dec 2021 05:10:55 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) client-ip=2a00:1450:4864:20::32f;
Received: by mail-wm1-x32f.google.com with SMTP id g7-20020a7bc4c7000000b00345c4bb365aso8210352wmk.4
        for <clang-built-linux@googlegroups.com>; Mon, 27 Dec 2021 05:10:55 -0800 (PST)
X-Received: by 2002:a05:600c:c7:: with SMTP id u7mr13159108wmm.85.1640610655047;
        Mon, 27 Dec 2021 05:10:55 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:26c4:7200:610f:609b:d46a:2a08])
        by smtp.gmail.com with ESMTPSA id y13sm17170951wrd.89.2021.12.27.05.10.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 05:10:54 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Balbir Singh <bsingharora@gmail.com>
Cc: Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH RESEND] taskstats: remove unneeded dead assignment
Date: Mon, 27 Dec 2021 14:10:41 +0100
Message-Id: <20211227131041.4668-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=YAtG05kr;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::32f
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
---
applies cleanly on current master and next-20201105
Resend: still applies cleanly on next-20211224

Balbir, please pick this minor non-urgent clean-up patch.

 kernel/taskstats.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/kernel/taskstats.c b/kernel/taskstats.c
index a2802b6ff4bb..bd18a7bf5276 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211227131041.4668-1-lukas.bulwahn%40gmail.com.
