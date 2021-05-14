Return-Path: <clang-built-linux+bncBAABBGVQ7OCAMGQEJDF6D3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A1238115B
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 22:05:47 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id f12-20020a056e0204ccb02901613aa15edfsf755137ils.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 13:05:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621022746; cv=pass;
        d=google.com; s=arc-20160816;
        b=HNrQqnvxOFpULw/RCZisir4Y1q2iiSSy7VP+fFDHIO8Vhp1D7dw6NC2T0uvW40wbo+
         dBqZ1goN1qBdE2+HD7Km7+Ia/5CDseK8l10dr7e+wpPssE/DB8x9N7yMAqpscnusOEs7
         NDfNKblXx1T+I5qrrPPvkNYTDfHamtIvJibD2bgfHjcMyUwwccHZ5NF3wj23M8jmktK+
         0a1SEAAbbuhnhTIvPEaSdYkq3/klQ79lkcYi/ogGDWncZcUGkSF16zZobYPUy+DOsfwW
         QrZ2HJ+JshUkQ5HwNVevkYEbauat1t4ZUaAthNY6oCS/qRTR71vqNKnWtvQFaFsblMXt
         jzyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Q6p53BDI1Qu98WFh09pIInjxnzDJBzVLcUxcyYHZvME=;
        b=HueEOUwrWBJW6GU6ElYnFkiIvbDwjqioWhD8JjklEReIYkGzDkcLBrjLnxysGYbew4
         KZ4ANvb52tXJxsO7FGozGJxA939k1xi3y/7ktgDX2ReyehvhY73i2Xiu/TIZlkV2hhng
         Sd/CyfOkbQS5xP65wWMY1aaMA14Pla0Az/9GQL/rw+1nqVQMLHtNJ8UYS0vC8GOpR5nc
         jmsaJ6Vojff0ISIDbryqkXGm1f4DlbNLgH5ujsOgMsaWJbxsJ7ocU1cDA6V5+pd0D4fh
         hjfVY8yXfCZvemvfAHhHcPol4LyuRL4iwzIASRBYbVdZKedMlpmSWuLlG+TkmaV3D8yq
         OVGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lmmWfaUO;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q6p53BDI1Qu98WFh09pIInjxnzDJBzVLcUxcyYHZvME=;
        b=skKSbtkIrLEA+kce2teLQEnQKTDBZ2Z2iV25pI60tsMnQf8q7WTbsqJuvpSsqIMeQo
         KEYkbeWeS7s0vcxAYNAAGrbhOSj8DhhuoRNCRnhIpSNNicgdjCKb9HCL5t5PJRt1pO+K
         RD8Geqdb6ruQv5b/SL9w2BnzA4duTgPQdtilqY3QT8ZHuShbhOCL8fJJg/9Qq2Hw1DO6
         t/3o6rb6m9AYhdkgHXH3PdsDxiF4Sh5c+A1tfNHNc0AhCfJy/VZzPObm8UogO058PWlV
         Ys8cKTT3Lj9FLwrE56xCGUNm970pGxQmqmOJoc/HhZduDq9OxQRcPXjubhJp1AacwQD1
         nQdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q6p53BDI1Qu98WFh09pIInjxnzDJBzVLcUxcyYHZvME=;
        b=MfzB2q706EMjQXKtnsRkgcUEMpQn8M9cEzCCd51za8KnqEWRhR7N1+66suHtEaKMty
         kmLkudKIumvevy7bjqGXWj/W1uWx3GZ3cWvw7YPXsoQXhAKJXNmw9XDeqdBjYGoQIVsN
         R5k1rz1eVAjlOLmaYX6oI3PhGk6IcZL0SLLx80RpUCecoCJ5yiJ/3kd9EnJQujbnDHYF
         qdT+OtVi/WLn8vdbuil9LwwdUQ6fnmGmVgCN5t9KhUwOy+eAIxN87qHS+pyQKDOH1TbE
         zxXYB6vSHdqnCGf91XptXnzJfhZgde6HT8VcNH3d8kwJxaEpZoqh9CHD4+yIlQhfivoN
         aqQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311KUhJ4MSdFXbvFchhvSQOPuHqTJWERSSjm2Izjf4SQ+qRNQBw
	uJQ69wz8ptlTra93t5sFchQ=
X-Google-Smtp-Source: ABdhPJzPlPwf39xsh4k9RlZ6U1tk6IfwwcalHDfKqcrZHvkU/S8OEMmphTMuW6gQ7xiWjns+fB55HQ==
X-Received: by 2002:a92:cccb:: with SMTP id u11mr38099040ilq.36.1621022746183;
        Fri, 14 May 2021 13:05:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:444e:: with SMTP id a14ls2524316ilm.2.gmail; Fri, 14 May
 2021 13:05:45 -0700 (PDT)
X-Received: by 2002:a05:6e02:194b:: with SMTP id x11mr43483578ilu.213.1621022745716;
        Fri, 14 May 2021 13:05:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621022745; cv=none;
        d=google.com; s=arc-20160816;
        b=N2BZfVjQv8L70tF8xhJh6firLHzqzFBroYY+0/utMix6CGJb7FMxphA5MBERrcjn9O
         siq/Pve8kQJuWCs4XDcV0abkctADNqF/lY3qGGiy5OodhtPw7seModnMSu+IBslpfMdt
         SgPqxjEczvIclt8MRNvYV4tDIcSP765BHnP+8HIWBNV2Hv3Ky8Cq14AAYh7b8pm1Oa+/
         wRiTks5XoT5P8+6NJoCdMtQ4btr4Rj4f6Za6sJLhyrPRq7RfmIeGnfGc1oP9zSsCF3o7
         tG4Hz+n6PNW4lTv3gNdTwaQ8RqcEV8wFRDxqgeChXLNFu3hMbOHj3UCsHJpqdm/zlZjc
         271w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=bV95c3iMgL3NAEjWtLQf0+CS54N+jJNScFPUWDdcbrk=;
        b=yMcxl6qdEHyQF38zWwS3cBdFmLKeEXhebzigqR7fOM0W+NryM4ILjpnF0heXDjArLR
         yhlZelDQXSBXWlY1A9GLXIhR22qyB8CxvUGmvXqwMeJYsb2zK935mWELvdAgiMrPNdjx
         KXw8Z8jSs+5RuDfOj+tKcYdNY4EkjDSoNwsEkq8ZkypRlddc92lRqRMqCJwJE8bslSId
         Pw7AJjOsdxB42+3VBrTzhev/W7R2fdUeTHytLT4j9E2Lv8wTU4Hj15dDW60NrRBnFoLQ
         am/8MXGpfza1bRrmXqUXwM4hyGPEu/lFSNYZqOkxvyKnC6JD7OluuTVZG6T88i/5pqse
         goHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lmmWfaUO;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r20si302848ilj.3.2021.05.14.13.05.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 13:05:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7C1C16134F;
	Fri, 14 May 2021 20:05:43 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Maximilian Luz <luzmaximilian@gmail.com>,
	Hans de Goede <hdegoede@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	platform-driver-x86@vger.kernel.org,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] [v2] platform/surface: aggregator: avoid clang -Wconstant-conversion warning
Date: Fri, 14 May 2021 22:04:36 +0200
Message-Id: <20210514200453.1542978-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=lmmWfaUO;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

Clang complains about the assignment of SSAM_ANY_IID to
ssam_device_uid->instance:

drivers/platform/surface/surface_aggregator_registry.c:478:25: error: implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes value from 65535 to 255 [-Werror,-Wconstant-conversion]
        { SSAM_VDEV(HUB, 0x02, SSAM_ANY_IID, 0x00) },
        ~                      ^~~~~~~~~~~~
include/linux/surface_aggregator/device.h:71:23: note: expanded from macro 'SSAM_ANY_IID'
 #define SSAM_ANY_IID            0xffff
                                ^~~~~~
include/linux/surface_aggregator/device.h:126:63: note: expanded from macro 'SSAM_VDEV'
        SSAM_DEVICE(SSAM_DOMAIN_VIRTUAL, SSAM_VIRTUAL_TC_##cat, tid, iid, fun)
                                                                     ^~~
include/linux/surface_aggregator/device.h:102:41: note: expanded from macro 'SSAM_DEVICE'
        .instance = ((iid) != SSAM_ANY_IID) ? (iid) : 0,                        \
                                               ^~~

The assignment doesn't actually happen, but clang checks the type limits
before checking whether this assignment is reached. Replace the ?:
operator with a __builtin_choose_expr() invocation that avoids the
warning for the untaken part.

Fixes: eb0e90a82098 ("platform/surface: aggregator: Add dedicated bus and device type")
Cc: platform-driver-x86@vger.kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2: use __builtin_choose_expr() instead of a cast to shut up the warning
---
 include/linux/surface_aggregator/device.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/linux/surface_aggregator/device.h b/include/linux/surface_aggregator/device.h
index 4441ad667c3f..6ff9c58b3e17 100644
--- a/include/linux/surface_aggregator/device.h
+++ b/include/linux/surface_aggregator/device.h
@@ -98,9 +98,9 @@ struct ssam_device_uid {
 		     | (((fun) != SSAM_ANY_FUN) ? SSAM_MATCH_FUNCTION : 0),	\
 	.domain   = d,								\
 	.category = cat,							\
-	.target   = ((tid) != SSAM_ANY_TID) ? (tid) : 0,			\
-	.instance = ((iid) != SSAM_ANY_IID) ? (iid) : 0,			\
-	.function = ((fun) != SSAM_ANY_FUN) ? (fun) : 0				\
+	.target   = __builtin_choose_expr((tid) != SSAM_ANY_TID, (tid), 0),	\
+	.instance = __builtin_choose_expr((iid) != SSAM_ANY_IID, (iid), 0),	\
+	.function = __builtin_choose_expr((fun) != SSAM_ANY_FUN, (fun), 0)
 
 /**
  * SSAM_VDEV() - Initialize a &struct ssam_device_id as virtual device with
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210514200453.1542978-1-arnd%40kernel.org.
