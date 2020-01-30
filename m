Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZXAZDYQKGQEMWUOHZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE4214D4F5
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 02:24:56 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id j142sf729901oib.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jan 2020 17:24:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580347495; cv=pass;
        d=google.com; s=arc-20160816;
        b=c/VerKBJM9PMOg4T5JojaPlh6O+WMl0BxIpMfcPognavve1HXxIohfhyZNWj0uToEL
         WiY3o+75thq6eH4eM0tevI9sdcA9en2k61MrvIahNJbNaozY4wReVVdxFt+8Yqn8h9D8
         RfziJoeHE9GDJ6Q4S2VgVAINH8coVVz7qiEmC3Tz3qdy8llVft5PmBBP+z41GaAsid4u
         ZA/NUHTvhbngEZlH8YhYYZtB6hiMRSok92hLhFJK8lDuvlaMXnYOZbWuP3LHr8qXXISy
         qBnQvB142mTdiwyyB8o/ifziNczCd1SxpzImufg5ReIABqY4qQhKUd6EvJ9t+aoE6UV/
         mfUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=nAtZh+zAqKWEPDpA8/EJa9Am2yhTxDUq0iTRjFQHDtU=;
        b=gtrQ8JHIHRjugYeGgdQmduOH+rYFYph3DtR9x3XKnV5OaalkQwxdZZGgs7tv6IxN/r
         HYus36OsnbxNspnc4ReP+/U51nk0Rf9IkIBOUQbq7OOXgR3rbHV7QnNiiY2FOcxJCucP
         iwqsmeH+WBlvKh7icFU1zYeH4kIKjfk4bMcIMgtNzOcu1Ld52j3c2e1qY9lvr0tv5S26
         OBTy/i3CoGsvQMAYLeXJ/T8Lo1ivK/SoiPhJGKG1yHpBivpc4nvvIRwCufLVcdbe8RX0
         scMignU50O0a4795D58I5j/7eVm1fS44Vb1jnBK63Ph3C4vdmtiNh6VNHTXyXi0M5y32
         kIag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SmLK3Ae8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nAtZh+zAqKWEPDpA8/EJa9Am2yhTxDUq0iTRjFQHDtU=;
        b=nPfQfQ5cpw5+fYu3C8Pn14kkUvrbtP1wkBezW38Ae6fUV7sSsKD1z8YznXt0BxJisd
         3+8WFRn5oPWOMXcAEAcKfNXiNJIxVZFjF//jIKFC2b2vaOi45zi0w/KfGipaSJCeqN7+
         RF6R52noXGWhj5aCHsVzXDJQz2r9OKf6xa5HR+baJu1hQBX7GUabV0fA3Q4upIWkKVTO
         3d7Ly0x+M3kXw9aK7zuFITDBfksBcUBpmcYq/zLdgHOgCX1usDhs3IMmg39A/mKPCAGX
         W2Cv+CMVYEpYiQRyf5hOxWv+5rkE6asWCrLgseiCKgkZn6rgMW4oqEd4iUA0HmwJ5dNq
         1Jlw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nAtZh+zAqKWEPDpA8/EJa9Am2yhTxDUq0iTRjFQHDtU=;
        b=tarp7FCqTgL33CADAEOqqhxJMqaOrcwwS+yPGmYWgNKJZko3+l4m/CrjlowHuGMjAM
         bHuN3Si0+/XYb8y09FA3X5kAHohrFAsLOFacJrlX2VqF55eKt6Ovd4u8E5RYSJF22YPf
         j6edBlSJukHTTUjBv1UXXlR2uaWHVxzUU0QsxHEJrGAn/pB1UBsj5zeblM6h75xIXnYc
         bcTHuq4DQc9mGoq7d2faXeIytNLMQWSRA4rXGxF4G4P9rCEneSHtP1dBFbIsogoub4u/
         5Eqsyzs8FgI/AdIK6N40k1I7b+QusZWQ3J4NI6oLetzZMNNRTSWhudTCeuG9IcN/JyYZ
         Y1HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nAtZh+zAqKWEPDpA8/EJa9Am2yhTxDUq0iTRjFQHDtU=;
        b=qTbl8Uy93z5l3T+8UQvU90dL0IOwvtg6s2G15yycrV2C3/vFKRRKvV/BZ3ZhOxzu16
         U/quMs6MCnCN2DimzFnWcgxMASCUIJBe7IWCe4bDZhfTvlub9XdCOWcviSvFrw9Mxs+g
         MbBkMmWLlGBya6tVlmHn8iMlmwgCv7Stz3WAKivgZU3hrFz49jwN3M7hQElVmaD0B9V3
         /QUBvc730oj/n3eR7rEczx/VJKWjTdMXRjkREaYLMPrHN9qvzAovOwEtcYgJ14F3vg0d
         sqSHmkAjYg9q+v/IG4eV2rT3suinr/jtkevZXr9VvR6JH8vyApjUzyYJejJfLwuGWh99
         nXrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWlxOwGDL3RngAiW1JiVCYbKWw6dd3ZqZIZ6h9/VVC9Q2cuHlDB
	2mg/eG596OOdzXYV2YigWlQ=
X-Google-Smtp-Source: APXvYqwt/+utaGxXc0A6ZZ0X9SfUHxiBgG9X1SSQ8fGojb5HOln8hvVaiHZyOtkaQc6w7iLU30WQcA==
X-Received: by 2002:aca:c493:: with SMTP id u141mr1320163oif.62.1580347494785;
        Wed, 29 Jan 2020 17:24:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c694:: with SMTP id w142ls378540oif.6.gmail; Wed, 29 Jan
 2020 17:24:54 -0800 (PST)
X-Received: by 2002:aca:32c3:: with SMTP id y186mr1334937oiy.114.1580347494454;
        Wed, 29 Jan 2020 17:24:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580347494; cv=none;
        d=google.com; s=arc-20160816;
        b=uePXsI4zBr+1bnC5oq/L8ZRc3wMeGnn0c+EPFPWyk4SbNHEUwp7oiYhNjLM74gq5v2
         vQ1x6gDH5sZ0NgwYAf7wcFPwHGvtavj9RXI/LRhuWC8i4/g1xaRaIKUuWmXW8cR1vOV/
         2CkCCEMzNW57IlQBLK6+A3WWHOSRgMG9KWqFxDRqKnNAkGXr1PvACQUWCuLa/lIeYPPp
         tIctwn/OpaYd5B9w7+42GteOpTj9qs+WcBIbTzCQiuqoxB8OrhhzNVPf6UMZu4V6aoqx
         93T9ACOXcFzGY6xVLysU2/2ImPZq1LXLhA7fP32DSejZwlsCgsBWd10HWkMWR7oGCMsu
         GCVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=m24GYwzOSVWU+XgAxv5NZs3essGtF+Xv5GVsT6y+oQ0=;
        b=fG89gnu8VNrdSQ6RJJLVlaGa8hTisc2Q6sVgnA0ISMuq9s+RMMjvsrnNfS/NWMBoAf
         /+p+/dymWaMThlbnx+RhwzKjwxDFe6BBz6TppkTNdO8P/IWvp1n3mFLiQTPFa+0VYaZ4
         vr2mRJXd6a6paiBz05nEvc9RHNUZL9UQQKPIBKP+gSLpA4Y95oBHCDhCAOszUDss8eG2
         hkzGDyBKtHtrRsAMaq2nyyPSghCWESwFl/6plAPIYg8FgwR8Pe1stDAhafOV9CpEpjMI
         t9tW6EnX99YSpMfoiQGTB37WcKYMmKATwWTsgi3+dULe883IwRNZLp4tRIWr0n6KeCt9
         VZxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SmLK3Ae8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id a17si191669otr.1.2020.01.29.17.24.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2020 17:24:54 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id d3so1604434otp.4
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jan 2020 17:24:54 -0800 (PST)
X-Received: by 2002:a05:6830:15d7:: with SMTP id j23mr1517474otr.357.1580347494042;
        Wed, 29 Jan 2020 17:24:54 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id v10sm930917oic.32.2020.01.29.17.24.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2020 17:24:53 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>
Cc: amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] drm/amdgpu: Fix implicit enum conversion in gfx_v9_4_ras_error_inject
Date: Wed, 29 Jan 2020 18:24:35 -0700
Message-Id: <20200130012435.49822-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SmLK3Ae8;       spf=pass
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

Clang warns:

../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c:967:35: warning: implicit
conversion from enumeration type 'enum amdgpu_ras_block' to different
enumeration type 'enum ta_ras_block' [-Wenum-conversion]
        block_info.block_id = info->head.block;
                            ~ ~~~~~~~~~~~^~~~~
1 warning generated.

Use the function added in commit 828cfa29093f ("drm/amdgpu: Fix amdgpu
ras to ta enums conversion") that handles this conversion explicitly.

Fixes: 4c461d89db4f ("drm/amdgpu: add RAS support for the gfx block of Arcturus")
Link: https://github.com/ClangBuiltLinux/linux/issues/849
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c b/drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c
index e19d275f3f7d..f099f13d7f1e 100644
--- a/drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c
+++ b/drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c
@@ -964,7 +964,7 @@ int gfx_v9_4_ras_error_inject(struct amdgpu_device *adev, void *inject_if)
 	if (!amdgpu_ras_is_supported(adev, AMDGPU_RAS_BLOCK__GFX))
 		return -EINVAL;
 
-	block_info.block_id = info->head.block;
+	block_info.block_id = amdgpu_ras_block_to_ta(info->head.block);
 	block_info.sub_block_index = info->head.sub_block_index;
 	block_info.inject_error_type = amdgpu_ras_error_to_ta(info->head.type);
 	block_info.address = info->address;
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200130012435.49822-1-natechancellor%40gmail.com.
