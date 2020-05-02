Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5WJWP2QKGQEOA22LAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id F09611C2274
	for <lists+clang-built-linux@lfdr.de>; Sat,  2 May 2020 05:11:51 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id l16sf6964560ilf.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 May 2020 20:11:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588389110; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZQosEn+DJSvLdzqRMH9mP/DYHkt4mrOPeJVJo4maiUDThdw/kW8meDqd+gQOOO1huq
         GSmemGJCUFu+7riB1P7ni7/QTQPqnGInwet9DJucDdpPZdFP5Vr9UouMk1yfgouiP7lx
         ZsC44cRyrxF6C/7ktFoDfD9JoXzZxJIJTz0kC78i3O04xlEonoBYEvnO8Auntlz+H1i7
         NLncGUQhrtghoZ6uN19oHlvstfQHFtA2lQbmOD3ReWh62/r53RQmAvnx1sb4+u9qyguZ
         mDsX0BxC2neVIsVCK7Jkib3umeW6c6DUe+4MIyuaAixp0tQyEL9YeQaIS0lhayixPxfQ
         o8Cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=Q0fNiYnRK3iWS74saZGoZKi3ePqYzB8CGaAEtUo004Q=;
        b=V0kXTJkl5H5vPVhWDJ1Ae+VUTzGHoGsit9NLvuwzBrpBN5XFekBV/AvRjH7jPemMKr
         ERPOQw/dYkJdZ5yy+17axD6EHCRf4nQPAxkGGvCAo7xfsxg/Wv+qZjqWWIkAMFhDbt1t
         V9wQiIFIlum3OBm0+OpQOIb2dUL8eMBaEFo2Fyw4yp3Xlr+knF51oljvHfyCueT3cpYE
         Rd2MfYeDj/uNEqpiqhZ/DMIpir7Vc70RfFs8UzzCsY6I+QKiUmxJyoFDzh8U0iktjzck
         JSxRvbIvnMggh24J1z9j/S6LwpudygG4dX+3P73x5JuacJ/kygEaDmlSLoXDovohSRhv
         Ttmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RxJsTXbu;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q0fNiYnRK3iWS74saZGoZKi3ePqYzB8CGaAEtUo004Q=;
        b=Xxto8ZhzpdHING4p4NgZdAH+NN0Z5v7cD5PWb0w1wtFwtE8Gwpbb+bfM6Y2m10Qad9
         HWFp6WHWv9lnEUzlJjh3Gr0IJVbJgp6e1a/JYuiXDxEdhRQcXjuAnlaLZ7P8PoX5t0y9
         JV2Fr6CDhMRvTArmDwZLzy04pksXcwcFvt1P0q6w+VxQbA0/x1DG2KjZdf6poRE5N7iu
         ZwZqnMsjcTJKeLqMbozatLNRJCRzir038Gxe7U4bnsjkbBym41DlMUG05J3t+nNL9HVI
         3nvghg4L7OcrLlcFSElnpSTK0rV6VgUU3gZyPzZL4wbV3ca03z0zHfQ0HpdyzAYA9VFp
         dwKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q0fNiYnRK3iWS74saZGoZKi3ePqYzB8CGaAEtUo004Q=;
        b=Kkbr61+LS2tGeW3PhLq0JFQ2sFJ6B5s4gV2vCzfY1jcF2lY0X0Sqol2EfG/+VKfc9w
         LPpDPh9XlVylwAjR+XHPcfJ5luOp8fGelW+sHWwx5zoiaXEt3oFXfRYSi2uPIcx5tSqh
         Ked/ccimCOtMH4gURDoYg28v3hmcHvRhSndCwZrBuAi2ANZpbo1C6ewjvM2Fb3NPPEEA
         gReu0i4NUudOmHaZM9tnLInqmRbWDgl/YGXe6nL1Q0bn2orWL94jWMgcsKE+xTTQd2+Q
         YF0SR705tFglOdVOBDlwNlMYxiqMFVbOSdEiiabGS/rTnmYI0l7Z3IRdV8/2Pw7LSlWG
         332Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q0fNiYnRK3iWS74saZGoZKi3ePqYzB8CGaAEtUo004Q=;
        b=Yy/TwtKqEZiHkV+sCDekr2n1lA173ZkwRyL2uSWo4aJIzLq3nnjuav9kI8Cc02lFLV
         ACAswzAMmvrLH6XD7H3ovmhRqZt0ircKvsyrQQJGVV1jhzUMSejJWGjjlUQO6Hxn8TSU
         L1hYrJTgaOqkOi8gVUT5gLi91RMwPoZCNYZ8T0nwhkpbElWGMKzyRlK2kmGOv7aASle9
         TKGDCsXL+DGoigF8gLKQtXpb0LTvVs/9eAHA3wJgcu/GRH/HQJvjpuGu6fclJNggaw+k
         Z0HZwpuB40bfF2/U2oVO6aZOTZxw8opGjkFF40zMUC7ZUIryiaLzLfdf1+J+O+lpvJCM
         U+ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYTTWM6j6GG/s9ZYVikLHtpVrApUcTWAw8yevt6NdQuHFULBoBZ
	sSH5Erz50D4Y1HJf4cyYOmw=
X-Google-Smtp-Source: APiQypIp5MVnjoVxMSk32MkqCOeZCU2ad/HfXQV9FTPus4bJiuqTWVq63B4ucUdJo8rhI5VnGTqS3A==
X-Received: by 2002:a92:3c0f:: with SMTP id j15mr6213443ila.201.1588389110696;
        Fri, 01 May 2020 20:11:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:80a:: with SMTP id u10ls4045160ilm.9.gmail; Fri, 01
 May 2020 20:11:50 -0700 (PDT)
X-Received: by 2002:a92:49c7:: with SMTP id k68mr6274185ilg.252.1588389110397;
        Fri, 01 May 2020 20:11:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588389110; cv=none;
        d=google.com; s=arc-20160816;
        b=YMafncy9m4JOAD4vhdPkIh+aR5A7yirsBtprifORB98PmgUU4BBYZzoJhUbIbAgkhD
         cAihaxqOsyGO+005VSolyGkVv8X1p53haiyuHMH2kZPJuSlv9psQnCFRp1LP6kIeSkLC
         NITE2lzyjm0G3tD38WI2gGzjFw+VZT98bF+z+2k42fsfSPYd5L/ejOKM5+GwigDTDYEJ
         5XEc5crvhskva0D7YOJyH9EydwF9OHQgdC8/QDrmZQrNJQjU+5iu5t/2gqf9B1S02GOX
         5GaM5qE1HtO3+G0Z3v/C1MXTBjDpczhJFqZQsmPegJEgB+19DDb3nfJUGAKi0CAMM8fI
         +/Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=TRgN7dqYpnfJ32iv0mEp+A1meuKHRpjuIr6fo6bZQDI=;
        b=Ho8IxgJ3dukQQF04zQngd5uXHnHo1uUrCw5mN5KBTxpk8NgoAoeHjE310AmCzZXGza
         xESoYaHGj2VaLn67ppKXPLNMDIvIFV5XlcNS8FuZA8oZ5IHhq/KVFscQN0PdJXFEhUDg
         b2i+XQXDcFMBkEvAyQf94aaFfYwKsx64KtrXDNxK2j+m0fXZ1J1dVERK1PyyyCYdJVQ/
         9BVwgeFTh793lN1ZXaW56yp/sh5jtF5vbZwd4JpZjGP3QF+O3mW4Himg2fsR/RQmNgEP
         NO3QmdtIZbR9fFPwt9HQ4HCTNEDrTnYakrwc4e1lTf9HgpEJTWL7QCSHrTCKD6YaN6AI
         HEQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RxJsTXbu;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id y87si398600ilk.0.2020.05.01.20.11.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 May 2020 20:11:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id m18so4137629otq.9
        for <clang-built-linux@googlegroups.com>; Fri, 01 May 2020 20:11:50 -0700 (PDT)
X-Received: by 2002:a9d:57cb:: with SMTP id q11mr6060158oti.11.1588389110029;
        Fri, 01 May 2020 20:11:50 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id l6sm1317704otq.48.2020.05.01.20.11.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 May 2020 20:11:49 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>
Cc: amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] drm/amdgpu: Avoid integer overflow in amdgpu_device_suspend_display_audio
Date: Fri,  1 May 2020 20:11:41 -0700
Message-Id: <20200502031141.2732221-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RxJsTXbu;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When building with Clang:

drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:4160:53: warning: overflow in
expression; result is -294967296 with type 'long' [-Winteger-overflow]
                expires = ktime_get_mono_fast_ns() + NSEC_PER_SEC * 4L;
                                                                  ^
1 warning generated.

Multiplication happens first due to order of operations and both
NSEC_PER_SEC and 4 are long literals so the expression overflows. To
avoid this, make 4 an unsigned long long literal, which matches the
type of expires (u64).

Fixes: 3f12acc8d6d4 ("drm/amdgpu: put the audio codec into suspend state before gpu reset V3")
Link: https://github.com/ClangBuiltLinux/linux/issues/1017
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
index 6f93af972b0a..caa38e7d502e 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
@@ -4157,7 +4157,7 @@ static int amdgpu_device_suspend_display_audio(struct amdgpu_device *adev)
 		 * the audio controller default autosuspend delay setting.
 		 * 4S used here is guaranteed to cover that.
 		 */
-		expires = ktime_get_mono_fast_ns() + NSEC_PER_SEC * 4L;
+		expires = ktime_get_mono_fast_ns() + NSEC_PER_SEC * 4ULL;
 
 	while (!pm_runtime_status_suspended(&(p->dev))) {
 		if (!pm_runtime_suspend(&(p->dev)))

base-commit: fb9d670f57e3f6478602328bbbf71138be06ca4f
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200502031141.2732221-1-natechancellor%40gmail.com.
