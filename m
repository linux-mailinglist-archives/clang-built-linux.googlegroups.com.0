Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYXITDZAKGQET7ONXUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A6E15D1BF
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 06:47:15 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id dr18sf5050441qvb.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 21:47:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581659234; cv=pass;
        d=google.com; s=arc-20160816;
        b=caZ0PQfY+SyJM4vi2yb1INn+ezFnARLv+UBWSdSfW3k7NEtM3r7uS29OAccGuH76Bl
         h5unl32E4F3DN3ZypB+mI4oIYTY3BqjjANPIAF7kmDGexjx86cGjXnl+Hy4mydW4pI4e
         82SK4TNT1ZLCx+1oyuCaAMcmxDh4K3snHPYqB+8z5COF0qSeyaJ32kpkn7XFKNPx8ZFb
         R/X09DY1BgPM5pElKQ1a8Nsq4kTDDg8s/nWRD3/o7A/7V9qX94E/I7mHpkkS131IqUCu
         oIm51mf8X2rDGMb1jGFs9PkY+lxN8ekvXEuRBWc16Krj/EDy0lLvoEW1FuPqLOW7Yj64
         WCUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:sender
         :dkim-signature:dkim-signature;
        bh=gqpZxjgmuQI67VXcrTmHpsWafeN7JgXi9nKygWgJcBA=;
        b=nEgkKPprmKdcaIiLUAW6d3WDWKxE+JzU++A5vjt+JXZgW9uND9IUcySns0HkRdlt+v
         K2YSAUqriejxrVqI+zUZax6zw8yAQTXTSTPahsNO4yk5Yt2s5lBHAPMA4rZ30dUoUOzh
         RZCzMvMTqTSoXhUP4VRR6hBU+3mqLrIYP+xGvJEQmMCwUs1CWrfRz8d5KZDlr/LEOlPh
         vKrnLNVGbQmdHUonE+rFSHeuXJ0+6RUr6PbXsqHOrjvXRoddv8YOwnLuja+/0GglWyi5
         wJR87qcCQvYw0JFYbAiC07NHY7MMMYUkHzZHdcHp1wSMdFR60ju8kaS6ipbHOgAp7DLI
         VkRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=el9uNpAF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gqpZxjgmuQI67VXcrTmHpsWafeN7JgXi9nKygWgJcBA=;
        b=Ty+hjlUD+r9AzFxuF4/KmP+NHq3E4bn4UySMpsWGvKjNdNiorq8xLjouwtpkhABNIL
         qfIj4ehfzC4HxlUxd8+VHz9NVsnx5H9jRngXdoXx6ZDW1l/jmWJKYarnXDZOr20rOxNW
         LCD8P7h2RwW8Xu+rIlBka3P1iczsFDvEdDL5SNNM16U2m/GItGVIXcUbrfA3Lu5qwJkv
         5jqJ3n9BZAPrcVihuZp+P2AH5JVdyVzNLIp3Xa87amLsWJ4ASooU6RWXr7K2sQl1Bduv
         csttbfCvugeb8kI7N8SGEP2+wsVLb64/Fp7jFvCMyBt3S3A6mXBfOJtZEz32mKuAFNuf
         UJ8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gqpZxjgmuQI67VXcrTmHpsWafeN7JgXi9nKygWgJcBA=;
        b=aAD5LXu2QB5U4KuohEHDs+pCYMqB1NvqMSz/UaRWFt2ujDHddEKcCqjbXt7lL4TPOw
         nBJm67vIJ6glxUOMJF14jUIxneMKj1gxcGV6sgFAKjxTJZT65xsMROCN5PfpgTsflhaW
         ENdVIFJ6vkhQQ3fCW8+D+0fIa9f8HC2Msyf5/gpbXdwk9XlbGz5Z4AQEUJjjEW1ZOX/7
         XxELptBPKT7d0EflYw5o66psPpC9jWrg6arodGfXIkTKzMjgFDYS+8KjsuBsrD3JaYjT
         xCnvZaHmok2GC/L5g377NYGu4AmGc0Et8EeQ5IvVl4pogqF5vzCXhmbCNTEWIBZPFWxx
         pthA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gqpZxjgmuQI67VXcrTmHpsWafeN7JgXi9nKygWgJcBA=;
        b=qBKQjiY63AFfMRvqd2m333irlx9hI4kc/OEl5MCDT3ScmTUELLvUaHSsTOHjZuLcIa
         SsvQHMsoKVyN5ghAN10i8CZps6KFVZCOPBh9DCMr0iJSOjxOhN/l9x1S9MFdvuDpHoPF
         X/l08NrtMfo38wlujGNInkx/SKDjxyf/RfdpR+SO7254LOXvgeNhy9AFPmGrgWtehU3y
         UOwgtuIcAR3kBVk/6JEwcdSvTJIY7RgQn2ahQf9Iq7M/qc5MSWCiUMyEEijxatEE6uFX
         9Z6GPfybWewyT60lgZosnUmITm6/qpzTzAEYH9BREAFjY1gprTB1RITtoBhgyWusQLwG
         8O9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVwmsx2Jt6L9t5Bk4UPOkMpXTMopxRokHxnfsJPxajmuYPuE0ev
	YOta+9uLAwCHLSprSZmM08c=
X-Google-Smtp-Source: APXvYqw2yD9Lscup2yBLeG3Ysz+idvehZsMjbnUowTzOqreHrd0kYrs6L5q3QTWe14jpD8JOk7krXg==
X-Received: by 2002:a0c:f8c6:: with SMTP id h6mr808339qvo.239.1581659234340;
        Thu, 13 Feb 2020 21:47:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:c30e:: with SMTP id n14ls407821qkg.3.gmail; Thu, 13 Feb
 2020 21:47:14 -0800 (PST)
X-Received: by 2002:a05:620a:9cc:: with SMTP id y12mr996906qky.446.1581659234031;
        Thu, 13 Feb 2020 21:47:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581659234; cv=none;
        d=google.com; s=arc-20160816;
        b=ebINZp42CQkXfrsw+okbIQo+ffAlOGa99wUJjM84tJtb28jdGWHH8AsbDYufaWSbRQ
         qmidUzZuupdCnV4cS13ZSIzXLlhh+ch27HTxrovCg+nrPDKpAInSFT2skiWFZmxiGHJB
         FWfhNDzf4Iy4glKX7xYQg5Ea5AZL/+APHE38A9BYMGkT31lRZxFPQuqCILN/77eP0w7D
         tHz+C1nS/TaSUoO0niH78hp4oJkXmqYOPA4xrlkvRglCi2pAIRPlRZS4ado8/LV41FAt
         YS1oEdQCGKqWpHUmCch5kpb88IlL6wp8lEaz2simnhYa2XHfNl6Z5mQKDNT9Xh/FOtcC
         aUiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Z2iYSLYDGYaGS4KoVmwUDz00gZO0krvmf/FASHSxL8U=;
        b=XK6EwfjMWYQuWO0U/Rwjx71LvHZbZwKwIaDQleGHb/y/zEiPGmMc205xDOYD72UyB2
         RG5DCDlrU7rHn8OjQeY+H0z6vtEQYSXY9VkFOYGLMyRYsFNUQBgZPTQY+2EQNfc7+CTW
         AeHvKv+maKwrBAnCTaCfzul837srke3zO4VPSDaYcat0nPQgusceU9OWilX6g5f4TYh8
         6dQP5ZkxSpb+CZwgEPGTuHWC27ERS88gYUJkKD1NCBcNBM6eEla8fhG6m6sFyksalFJM
         M41GCe07Q7TJ1V9M9tHVFrAt2rXmlWiMpHjM37OePLf1P/ha94ewgOpha6DBW2RcU7i2
         SEdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=el9uNpAF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id m18si254938qkm.0.2020.02.13.21.47.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2020 21:47:14 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id 66so8046272otd.9
        for <clang-built-linux@googlegroups.com>; Thu, 13 Feb 2020 21:47:14 -0800 (PST)
X-Received: by 2002:a9d:7342:: with SMTP id l2mr974746otk.98.1581659233352;
        Thu, 13 Feb 2020 21:47:13 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id j5sm1631830otl.71.2020.02.13.21.47.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2020 21:47:12 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	=?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>
Subject: [PATCH] drm/i915: Cast remain to unsigned long in eb_relocate_vma
Date: Thu, 13 Feb 2020 22:47:07 -0700
Message-Id: <20200214054706.33870-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Patchwork-Bot: notify
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=el9uNpAF;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

A recent commit in clang added -Wtautological-compare to -Wall, which is
enabled for i915 after -Wtautological-compare is disabled for the rest
of the kernel so we see the following warning on x86_64:

 ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1433:22: warning:
 result of comparison of constant 576460752303423487 with expression of
 type 'unsigned int' is always false
 [-Wtautological-constant-out-of-range-compare]
         if (unlikely(remain > N_RELOC(ULONG_MAX)))
            ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
 ../include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
 # define unlikely(x)    __builtin_expect(!!(x), 0)
                                            ^
 1 warning generated.

It is not wrong in the case where ULONG_MAX > UINT_MAX but it does not
account for the case where this file is built for 32-bit x86, where
ULONG_MAX =3D=3D UINT_MAX and this check is still relevant.

Cast remain to unsigned long, which keeps the generated code the same
(verified with clang-11 on x86_64 and GCC 9.2.0 on x86 and x86_64) and
the warning is silenced so we can catch more potential issues in the
future.

Link: https://github.com/ClangBuiltLinux/linux/issues/778
Suggested-by: Michel D=C3=A4nzer <michel@daenzer.net>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

Round 3 :)

Previous threads/patches:

https://lore.kernel.org/lkml/20191123195321.41305-1-natechancellor@gmail.co=
m/
https://lore.kernel.org/lkml/20200211050808.29463-1-natechancellor@gmail.co=
m/

 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/d=
rm/i915/gem/i915_gem_execbuffer.c
index 60c984e10c4a..47f4d8ab281e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1430,7 +1430,7 @@ static int eb_relocate_vma(struct i915_execbuffer *eb=
, struct i915_vma *vma)
=20
 	urelocs =3D u64_to_user_ptr(entry->relocs_ptr);
 	remain =3D entry->relocation_count;
-	if (unlikely(remain > N_RELOC(ULONG_MAX)))
+	if (unlikely((unsigned long)remain > N_RELOC(ULONG_MAX)))
 		return -EINVAL;
=20
 	/*
--=20
2.25.0

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200214054706.33870-1-natechancellor%40gmail.com.
