Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBVEH5TUQKGQEZZ3FMAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F01B76874
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 15:44:53 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id b124sf21106629oii.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 06:44:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564148692; cv=pass;
        d=google.com; s=arc-20160816;
        b=T65PP1oxIkxN7hhFf9uuwpGc49V9K0fMqZ5lHi0Za+RnfLiM0lq+c05htQiIwAn0YH
         zp/LaFHzYGNzm5csfC4IBh+dvCsowLsHOf/82F02Wm/y89jEuJKxxq+6OpVIiAdbQKMq
         EpNNpa3MEke/oXsgndgSXOOPlcT7OQ56XKiCo9DF35bOxfiRuYJxVHD8ik1AlxGszc2D
         OHWge8GSeVLtqkCy+hvXQ2kcE4nKnkDqO/usK+3BP1HnAAeFYRYuEPtQpg1w+zmFqsoV
         RsFcXe/cBEcNzVue5S3Z0e6ulqy+vy7eREBUC5o3hRygxYwpoHA3EGnuH0pYR3gp8HhG
         +I5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=JGVTzoyD0a/Uv1zQDHomvEhSrw1pfPHvuLXDyDAOGXU=;
        b=OWbMdgNKMJTA+T+FesP/kwmeoZl+bSQ7BrtaMfITSFDNYCwZGGYr/wkrRDuECjGYJD
         tniQt0/YU7TLY6V6HkkV8EaAV1G+sqsQdUN6NWagJj42UHq6ntN1U6VuqMRq/AnGIlWP
         595lO3zbzbrzCu1QiuUjZshqQwEVdrkKPkUuCeOWebaXQglRM2fYGku5cKA4IGtAyy7E
         mmwPTk51b7uG5aJ3SXvDx1EHac/2Krg0svGT15ZRD/mqXeUu00Bv+FKZKED/fe9euirQ
         n64aCWQBBCSuT8530wfFNu7WATdAWxmalZeB1kaALySfnPG+CB+vhAsFHZJMYyadszbc
         wxNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="b/1gT6wS";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JGVTzoyD0a/Uv1zQDHomvEhSrw1pfPHvuLXDyDAOGXU=;
        b=Xcxx+T21jhLXSuZwz+wBhLuG07kQoCi28T6aAkFrZyH8DliPjSUyRZ81uisvJK7KtS
         AGZGWPVXDfQf9DKcwxm9vBkCj2q+T+KZ4uBInJptFRsNFw088nYNITFemyvX+MNF9qxD
         pNpqHu0eDlhcWIqUeteuj2FJvDyzrZUA//ekth1GyXFDtCsjRYPMm3r711oCz7++vdQc
         OEIkyB6it32NZnMBLJQb7Z+N3EjPALiHlUtsUT4QvLOMfzAxpk3pbYAuaMP99ackVVmg
         seq2BvuHnXvlMoUSwPpj/l2f5//gI0bmO1bENtu1lgxcFMqf+pNJt4k+l3r5nDd6cizv
         uEhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JGVTzoyD0a/Uv1zQDHomvEhSrw1pfPHvuLXDyDAOGXU=;
        b=B6oNjEK7PJXGdF5rU9D/Aw6tyjSUhQIKou7EStQdK0B1hBj89pZ2b+qM/A9z9JftKM
         rp3MWDRS5FWm9tfMjpWF9pc3koe9BQyTr1OH3iV3Pe4CgN92+4NV2UzI+SZXi5tBs1eN
         X6xVAtkLSY8zmL79hSOKg9a/+sYkMTUfYEWrLbaf8oDoFmdG/xbNoGx0MkC7OUGt872J
         GmM1XbYFxuNBPMLD1aVEdzRTj5lJs5Elmi98Sjm8KRF3jEhIPU1tOdqelrPMTfcoVV1O
         5FW8ydZSgeetRb9esYYEqVpG2H7YX0Ci/OLjy9i15ekuREafAREvZ7A8ps+F/z5mIwfO
         wcug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWMeEni5Wcy+i+DH94wPuryMOx5AnOJQshNeA5VY/f3FPEWP3lL
	FBUFJsQbbKmz+iGaV8pDdSY=
X-Google-Smtp-Source: APXvYqyEItbxRBAMG0/DUAVBcndEXSlWw+LQrKdsYXG/aNOfuAflUks9sxtP+eK+FuZe6DL1B/X1sA==
X-Received: by 2002:aca:90d:: with SMTP id 13mr49125746oij.126.1564148692419;
        Fri, 26 Jul 2019 06:44:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5015:: with SMTP id e21ls7402811oib.16.gmail; Fri, 26
 Jul 2019 06:44:52 -0700 (PDT)
X-Received: by 2002:aca:b06:: with SMTP id 6mr47858291oil.175.1564148691985;
        Fri, 26 Jul 2019 06:44:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564148691; cv=none;
        d=google.com; s=arc-20160816;
        b=dBp2kDLxWdr+JcqAd9b/C9rMSGYfnsVf5qWTYusGfDsaP9q212rp68AuCbarYyMWRj
         XlWLrH7oYjQQysTXPV6wfO8b49Zlnmo9hyMT7SghV25dg+gOEAAXJA27Tz4IPUVGuC/5
         WMp63675Lmq/Svs+FfSrJ2WcKOBJvFb08WfM0FxsfLT0g3FHmjyGRoTXXVwFTzvu+XUo
         il1sH9/epZppvNCx+4xSqU1FnJvEnTf2+rpEmKNhoJ5u9Tig7kDY5IqxM1TpQiJof2X0
         22+AT4cQTwELrSi79mOGTH8L6r8231oNQia+xTtz0GHMHbu5y/y/RsMEGl8CoGYXb0da
         8/xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FaYj+FLdZwu+IGKLY764FD40eFLETTR5jx6ZS+Eas/g=;
        b=Geups9oEQu0hTaoS/yVl4CpctEHdTWEiNRwkLbr5VFkILOoUYfu24LHcJOPkU7oq2M
         31sHUD8lYvqqMht1y4i9tDAmH1VP+wrqG9zEIn+euno7mbFQdDndpxj5ClhKz0byKERN
         7PQKZT/PE5jubYP8PpwMb7ciS5vDw2JltIme6unYXkiODU6s24rvDtX4sE0RjbWDW7TL
         2RqPlrRssY/zm+KFGFfaSP329wJ7NyaY2AZl0lRv4P3pXFBnzSj0XTJcQhPbUWScMXmi
         1Fwk4F8zvoFhmzUURbTN0RDp4ql115U83mJRJk9BnNJusIKAYTILn0jkuqSyghCXOakN
         LU8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="b/1gT6wS";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n27si2584461otj.1.2019.07.26.06.44.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 06:44:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 55C2122CD7;
	Fri, 26 Jul 2019 13:44:50 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-acpi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 14/30] ACPI: fix false-positive -Wuninitialized warning
Date: Fri, 26 Jul 2019 09:44:16 -0400
Message-Id: <20190726134432.12993-14-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726134432.12993-1-sashal@kernel.org>
References: <20190726134432.12993-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="b/1gT6wS";       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

[ Upstream commit dfd6f9ad36368b8dbd5f5a2b2f0a4705ae69a323 ]

clang gets confused by an uninitialized variable in what looks
to it like a never executed code path:

arch/x86/kernel/acpi/boot.c:618:13: error: variable 'polarity' is uninitialized when used here [-Werror,-Wuninitialized]
        polarity = polarity ? ACPI_ACTIVE_LOW : ACPI_ACTIVE_HIGH;
                   ^~~~~~~~
arch/x86/kernel/acpi/boot.c:606:32: note: initialize the variable 'polarity' to silence this warning
        int rc, irq, trigger, polarity;
                                      ^
                                       = 0
arch/x86/kernel/acpi/boot.c:617:12: error: variable 'trigger' is uninitialized when used here [-Werror,-Wuninitialized]
        trigger = trigger ? ACPI_LEVEL_SENSITIVE : ACPI_EDGE_SENSITIVE;
                  ^~~~~~~
arch/x86/kernel/acpi/boot.c:606:22: note: initialize the variable 'trigger' to silence this warning
        int rc, irq, trigger, polarity;
                            ^
                             = 0

This is unfortunately a design decision in clang and won't be fixed.

Changing the acpi_get_override_irq() macro to an inline function
reliably avoids the issue.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/linux/acpi.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/linux/acpi.h b/include/linux/acpi.h
index ca2b4c4aec42..719eb97217a3 100644
--- a/include/linux/acpi.h
+++ b/include/linux/acpi.h
@@ -309,7 +309,10 @@ void acpi_set_irq_model(enum acpi_irq_model_id model,
 #ifdef CONFIG_X86_IO_APIC
 extern int acpi_get_override_irq(u32 gsi, int *trigger, int *polarity);
 #else
-#define acpi_get_override_irq(gsi, trigger, polarity) (-1)
+static inline int acpi_get_override_irq(u32 gsi, int *trigger, int *polarity)
+{
+	return -1;
+}
 #endif
 /*
  * This function undoes the effect of one call to acpi_register_gsi().
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190726134432.12993-14-sashal%40kernel.org.
