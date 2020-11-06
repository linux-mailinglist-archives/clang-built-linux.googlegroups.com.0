Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBHOXSP6QKGQEM7OFNHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9735B2A8F68
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 07:22:21 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id t201sf39366wmt.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 22:22:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604643741; cv=pass;
        d=google.com; s=arc-20160816;
        b=iAA6Xqdb1GM7u1lvbPiwHQg1Qd1tPks/Ye8NJOwumWGR1/+1YGx1B1Arg8NiiCdVIB
         qhbmH22MJqfVUHUiWuPxxP+ypw0UfkwKZ7E6Ws407SVSPO9UgAIalJMftXBQbCQL62+d
         +ombloGDV1AYwXJwU7YmCjooW9ecIXr2bYqWj+Q6M+/Xz8K7PbzQ8uB0/IJKOlGPOnWy
         cqn8j/hSOt81tLXcptLPMPq1lDu68RwKo0tmC6r/CVHTfzMcfZ2F0O7rW1nyZIFFbiZ3
         5cKBc1E3NJsIq4bkpO5v0VXzQ8WGJ7mbiVSnI6PppYmnYEMz4jfXVTVdVQIT4VgW39iW
         FFjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=AedKm1ToIuYmbVZ2XXNGrhyJZJ3IbiswnqELdYOg2+c=;
        b=bqO3ruQ4PS+kP0OtDVe5Is35yz3IA9z7OSArMkkKR5/cVpO7yn1IfcYwdNHAy5YIrL
         sm/a/AFi+tgOOwWAf057L1VyeIVsNqHQefWv3A6c77eiT347c4e0ERH16/nW94NqU434
         Hka2L4oBv88g1STOoSPKwHsNX73gyjfg+gStMOg2/2SJDrdZ1PxONQ0IVttP7eSZ3sjR
         UmUX0VfvmNNnhePWmJbDuRRHX+Brejvs8EnqBWs7VyAcTw4Z5da/UhXL4slgOlDHR8c0
         vZA27SU4tuCJOg1X0PN+ZVvsP5pRdpO8wYyRkHMXUvoAxCiEKBLFc6S1EA1RqONwNu9g
         wsDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eXFlA98X;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AedKm1ToIuYmbVZ2XXNGrhyJZJ3IbiswnqELdYOg2+c=;
        b=EmUsU9sL7mnnK8r73IFdDbjUJ8NWzN3sB2k/G+STdg7jfxR76ZbiKQ1qmSHnX+ofRe
         GwyfX19N843yzWcl5g6761NrMhY7Woux8iJ5HaRk5x8dSu8NvLLVcOVSye+NJ5G7ebUt
         RfyeYS5wp7ZPJM+pAMFne7J7tzeqvxmyJZkDcknTWScoUFI3h7Kifxg37Prb55Iu6OdH
         cA325hsbnruPp8dmiKQFB2bRugMazb0Nc24gsbft6+8GpNn/fbkYd88FdrsalKvjc9K/
         EehKCT82dN6QD+eOPctKLu4XLSJlDffvQ+zqVok5upuglQur+yx+y9t0Zz7EhL3dihMl
         s5Fw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AedKm1ToIuYmbVZ2XXNGrhyJZJ3IbiswnqELdYOg2+c=;
        b=b7HqAK2a1PcNDnRMR94ISbOFduRiBkrJS2/LBfCRZwhzzOJgJ72CwI8uEA6RhteYng
         VCAU4NoshuGxWINbPPV4FbSzMAmskM2IIO32YUzkUkFnzfRC+zF2Z6imJ8MLgIDI4qIY
         +Ddz6PULheWJuIEZLW0iBFPuAUyKqDuNnshOUh/CWaL1rYqYzUQSZuMKrsjIecqCrfl5
         dPFFmU3r8e1M3JYMrtiBZqXCJUThbusz+kHzVtVYNg9ROLVeL3sfekdCemZ3pdVrKuDv
         gI5sjlOG/BhfRb+w+cCtZb7T2l1rANXgVp4QhmfWtSlhj5RiFagMY3JSxcP85cVSwJxQ
         tsOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AedKm1ToIuYmbVZ2XXNGrhyJZJ3IbiswnqELdYOg2+c=;
        b=VdbrkAzCUfoVdFEJtJnjli1zeq9T9YfWZjr2FdY/fCFskGE9UyAelm7+ahl3PC63Sy
         jY02qDCrzx7QejIRHL6cIX82xQFBVFBjL+LH1HZpnT/2KMlmDAHFL7X9yTZebXJxx2a/
         MbxXS/Xa407ipuowJVgRJYGGKdt8GJBJ8v1Ew3HzsUImehhtguktVeTXFNQ4RHPpNAbm
         q+zjgz2nU6qPxAo91ST5vb8oydy/X6gFuszt+DUivFNebDAwytZY8ZYnONl/uXxOSdMD
         4VCbR1xsSz89M3qorkEXzX8kwLJO58Uc+ePloycaAhcVocav1LfO2gt6eJPbWC3hV65f
         bfAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Z0CnthZrW9/G5BUbnS0qeueo1oQvQ/XDL6TA80VQU5hmLcuBy
	w0UC6Z8JnMNcbWCSxP5KHHQ=
X-Google-Smtp-Source: ABdhPJx39FSyEtLTcHTaPHXvN7WwmkE7f9YeL9xjdGYx7n2vnWGHWnPPG7wyqNSjY8Qhy5dEZTUcCw==
X-Received: by 2002:a5d:5048:: with SMTP id h8mr789070wrt.135.1604643741329;
        Thu, 05 Nov 2020 22:22:21 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:cd8c:: with SMTP id q12ls240068wrj.0.gmail; Thu, 05 Nov
 2020 22:22:20 -0800 (PST)
X-Received: by 2002:adf:914c:: with SMTP id j70mr842774wrj.170.1604643740346;
        Thu, 05 Nov 2020 22:22:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604643740; cv=none;
        d=google.com; s=arc-20160816;
        b=zZkVRLOpDsMIfR0rl64KZKyiCIu/dTP+DRYUpTDVWwHeSYQWgzfz7LPfzg8eDwiHyu
         K3NXuN1XcI9yS4vNI8D+eTjCl5JAL03wdlbqtehDYGivRvHuiwX6/vaXBLSLe5jIUS1F
         2yzgAu1rwUafhB8anNIq71FoKkMgAVrg+lmI0x8GqchidOHT4KhDi3w9eSLOCPYDWMQU
         kTELSdFM1h5TDlhgcXDvUvFDySkhaovOZhfqG4WXo9mQSfZIe+ouiHf5s/gYyk315Z9e
         /RCqWny29LLTnti6d2IR1tKmPYFIxrp1z70GtAi0cNoYk20KYCw9oplByXHu1vfVBIgO
         bURQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=s5ZmG5HziDA6IddsEwKpYTRZvML0z6aMnCT2nnV/iGw=;
        b=0sYu/A4CeaFj6a3kMhP4gegOq/8A91RxRhzQwysENNM2BK6gZo6M8NnKHTDSo01Ovo
         6jG2prlaqgqnU09vi9xBw/RE1PK9EQmUBpo2OZzGBWuMDtWtkwajsoTnBf3oAc6y45vz
         VoP5REXWM3HmteWCVt6u/kp+Y7YdSQh4S5UECp5EEzgKp3LrwWtTuUFDOCcYM2nagwEw
         0dPOLCCrwhPeMGClZA18UaD8YKP5vEjKkyWWsR5uKTReh6gocDMKcYwFKykOCUxIMJZd
         vk8MrDgydcNZ6ogTfgVzACtw8EYTjbVcDBtm/4sx+VA+ygTFKS4pJ1b56kQQzwh+FnXH
         HAmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eXFlA98X;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id y187si9845wmd.1.2020.11.05.22.22.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 22:22:20 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id h2so270317wmm.0
        for <clang-built-linux@googlegroups.com>; Thu, 05 Nov 2020 22:22:20 -0800 (PST)
X-Received: by 2002:a1c:a503:: with SMTP id o3mr613462wme.21.1604643739995;
        Thu, 05 Nov 2020 22:22:19 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2d20:9d00:b87b:b644:61a3:6870])
        by smtp.gmail.com with ESMTPSA id h81sm612401wmf.44.2020.11.05.22.22.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2020 22:22:19 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Balbir Singh <bsingharora@gmail.com>
Cc: Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] taskstats: remove unneeded dead assignment
Date: Fri,  6 Nov 2020 07:22:10 +0100
Message-Id: <20201106062210.27920-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eXFlA98X;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::344
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106062210.27920-1-lukas.bulwahn%40gmail.com.
