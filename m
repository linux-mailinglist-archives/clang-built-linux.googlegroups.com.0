Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4UFW33AKGQEKI25TDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BADA1E30C6
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 22:58:28 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id x132sf17520902pgx.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 13:58:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590526706; cv=pass;
        d=google.com; s=arc-20160816;
        b=GK5ffwjCAFHy73YFkpys9iQHuN2wNdj0biU1VWOsUe1/LLBpeWqz4Ve4NtGvri+z3q
         sx2EaYPuMwIbqn8jPbBOIRO/1yXqpVhTdiL801pLZHvEB4BtN86C0UhzeQn/0UGKFjrH
         ensl188/UjoxyWzAb9orTDsqmFKjPjXu1jRdWy/dR1R0QdOBFouYO7ZZara1FNac+wqd
         inCJUQ+6Q5blNFWbt84cRZH6A71Ir8GhIpJjN4kHjueD/f3v3JZM78VrhA6QvqLVyIyc
         hFUIfK7e+zwQdnNr7dleUQjSvVJB3yC+VvXukTDY5YuJyij8KdcqLpLaVVEL0yp4V4PP
         nOxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=Ll+fG8N35km9BszV8ChwMQfFJpq3AIXHcqIz71LRQgQ=;
        b=JtUhgsk+LDDGkpYRkSEA/ZQ7MK97IaLnQFEDmxtbVkJMmc83jp1Rr48Hubn/YODcat
         XTkQSnj2GVUwqFltj9vQLTwFuYk3u7t673XTaJL0OMitqNX0elk3kI7dyZ82KEtfeS23
         tFbDkkBEfB23Y2OZmnRTp71knHSwcZNjbQ4Apze8xBivsLaASaRYQOYm0AUeqyhUmK+e
         VOZYpXTLwuvYPZiEbOfNJB83CRcRRzhyuf6D8/2wcr2U7tavtPrBEpiqwlP3gyB8VDgX
         g27dCHoIkxrNRFeNWfgGdPPRqa4whrcN9glIj1KRTlo9MiL8f6Dvb+zFxKBig0NwlRCU
         972A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AXnthflo;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ll+fG8N35km9BszV8ChwMQfFJpq3AIXHcqIz71LRQgQ=;
        b=GqHWZQKccYkZznRKrzlAgzBgJkI8ErB1w5zXKvrulpJva82lCOZ5M8hoxpO9IF34j5
         HgoV4HgWQG+kSEMJcerBTbhpnslLAeT3WjVwyGKwKQ0GUNzkn7ygfGnF/eDOWRc/E9LG
         04jG6aiK+t08Lh9QJ+j5rpNU8KoScAcStkyQ/W2CvCshC+pCblHtUrgt8Wz4amFQJZH7
         hkU5lJuK9yCGZwNyceF7fa0LFq/pKXBjdjoaxCz0/M352gfZPsISL/V4Z8GG3H8BK79K
         /RKX4vo5B+qP57j5x+ZX+nL7nFd17dvdEOaWR8NKjaoaQaeHwuUvOT5UsdkIbWVL+r2E
         ObRg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ll+fG8N35km9BszV8ChwMQfFJpq3AIXHcqIz71LRQgQ=;
        b=r3ktU9x+XM6RNmmfxaFjdSfj1L3Wt62rJSCxVJM4WIGQyDeuBLFwQzTfrUc9PQ8WLC
         iuFdpPLKYaIkFWxQfmoLpXx1vrlD0z6nZzAcZNxiY54RyCcb0ZQ+gUSgOmBRUnUOM8B6
         CbXkQrJJyAtBCoiIC958BnhagjaxUs5VLmyWcA9+krtFyFOjfLojCClJB/vVhNwc3jR+
         EaV/alrHLLrQyvlz5eeWfzqM6Ebz2cPJlZY+l4HCSfRSa/cOF6DpYJwntzhiSSqxCeho
         RAOtrOzeeiTE1xlu8UV0S0buXtSSEvLaFDmXVDPfXxPMfkbAdufaVxOtaN7E0U4b/A4D
         6ueQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ll+fG8N35km9BszV8ChwMQfFJpq3AIXHcqIz71LRQgQ=;
        b=pcADEkYWW8yUzSGD84oDnjOwtcklPMwck1BmG4anHG7lNb+z4lb7gmxxtPK8oLw035
         7bkCoXK2j03Q5bzHrRtmQXY92SCYLiRbdlkRRI3QbATi3KQcpB44mL9iKMXc+4aXnqSu
         PAnSgv4fL5dinuSC1OGy8WXpvS3dhpgTtU74AA1C2tb05PIkIgjnrIubEwbzVXFmXI+b
         A65qAHoQ1idaXg7szqoyXJYeYLbmZ7pS5zEenxfDHVEkiDgVypVPDKizqV5sNLtLw25g
         FY0H9AWJEzbH4rK78J+xig1VvpKrOF/CfrKDqjfoTFEJV8l5BwQTaiQUGGpM05YHDCJ5
         BKRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+9LHC3hZ3vp2d6tbrXFLZL9POa1EpsB7ofMHcBjEWkRP+IJHO
	sZy/fZGEWqHPbtUegFD4NzY=
X-Google-Smtp-Source: ABdhPJwvdLXdSV3KPC2zTnbmg2w8hC0EngGUV1ZqwnDtHp68iigpVU9RnqOcbXEpUn/ceMbuzp+67Q==
X-Received: by 2002:a17:90a:d497:: with SMTP id s23mr1068143pju.222.1590526706693;
        Tue, 26 May 2020 13:58:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:c31a:: with SMTP id v26ls4215106pfg.2.gmail; Tue, 26 May
 2020 13:58:26 -0700 (PDT)
X-Received: by 2002:a63:eb50:: with SMTP id b16mr687594pgk.173.1590526706253;
        Tue, 26 May 2020 13:58:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590526706; cv=none;
        d=google.com; s=arc-20160816;
        b=nE2qswC3eUfMx5Qv1ez3wqYrgNhA6/pqiWHIT2YL7VZ0tFTeUVoOmnNLtUHg8Dnbpu
         S2y/raUXPc22lAePL9bBnIazSf4WSkDb1i39DSzZhvJM5uxNENVcE7khBmhliqwIZVzk
         xJ1W5wcKcjWgEIeFQnKCQw6QB03ibtWxkPOChsP98BYlda/PI0yLGNGk2DdwZZJjEz/7
         kvs0VIxbcFxG/D0ba1sX3GDme5iH1Ann+fiyTupZgWvjDTPXha6kK+fDRGeZCINyHFzf
         8HoPgGMUIDtwZe8uPHVN+ZhNkE4Bl0lQIooHt0YY+6WcvJWRXGfYWaqkepoHcpnhO1AP
         W9qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=F26zeW4GLWARSnrEORKnMOfqslBUHMfZSurQbAYAbuo=;
        b=KtZ2MkO3l1qhv3N/nxQAInFwgi/8tJ75i5ie6TQ3wQzR4fzU3kNv62tTuZXBu4tqI2
         K884rgwKNF8i5BM5wENiNNdHWwUIkFrt5z3a1HkaHruc008LVRGqWT7zYjQb4W5bNdE0
         3bVubkPJQomX9mvFIVIzOsyYglL5w7pj98k/+EIUCPfm2S/UgKV+Yic/hF5gg4/f6My9
         eZvSjHT2au8qGWKQvomOnzZnqdIqu4Lshe0+D0KFEsUpdT1DU9X0tHV4PPMqrqNtmFc9
         qHXDk2AeOqRKSJO+Zc64ItAPGSDl/BNmKymGEX6dReGedZcRutRunJ/gYl5X/pnFmnx9
         8UWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AXnthflo;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id s12si107003pfh.5.2020.05.26.13.58.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 13:58:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id nu7so352029pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 13:58:26 -0700 (PDT)
X-Received: by 2002:a17:90a:8814:: with SMTP id s20mr1174769pjn.74.1590526705804;
        Tue, 26 May 2020 13:58:25 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id i11sm383619pfq.2.2020.05.26.13.58.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2020 13:58:25 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	kbuild test robot <lkp@intel.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v2] powerpc/wii: Fix declaration made after definition
Date: Tue, 26 May 2020 13:57:57 -0700
Message-Id: <20200526205756.2952882-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200413190644.16757-1-natechancellor@gmail.com>
References: <20200413190644.16757-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AXnthflo;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

A 0day randconfig uncovered an error with clang, trimmed for brevity:

arch/powerpc/platforms/embedded6xx/wii.c:195:7: error: attribute
declaration must precede definition [-Werror,-Wignored-attributes]
        if (!machine_is(wii))
             ^

The macro machine_is declares mach_##name but define_machine actually
defines mach_##name, hence the warning.

To fix this, move define_machine after the machine_is usage.

Fixes: 5a7ee3198dfa ("powerpc: wii: platform support")
Reported-by: kbuild test robot <lkp@intel.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/989
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* s/is_machine/machine_is/ (Nick)

* Add Nick's reviewed-by tag.

 arch/powerpc/platforms/embedded6xx/wii.c | 25 ++++++++++++------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/arch/powerpc/platforms/embedded6xx/wii.c b/arch/powerpc/platforms/embedded6xx/wii.c
index 67e48b0a164e..a802ef957d63 100644
--- a/arch/powerpc/platforms/embedded6xx/wii.c
+++ b/arch/powerpc/platforms/embedded6xx/wii.c
@@ -172,19 +172,6 @@ static void wii_shutdown(void)
 	flipper_quiesce();
 }
 
-define_machine(wii) {
-	.name			= "wii",
-	.probe			= wii_probe,
-	.setup_arch		= wii_setup_arch,
-	.restart		= wii_restart,
-	.halt			= wii_halt,
-	.init_IRQ		= wii_pic_probe,
-	.get_irq		= flipper_pic_get_irq,
-	.calibrate_decr		= generic_calibrate_decr,
-	.progress		= udbg_progress,
-	.machine_shutdown	= wii_shutdown,
-};
-
 static const struct of_device_id wii_of_bus[] = {
 	{ .compatible = "nintendo,hollywood", },
 	{ },
@@ -200,3 +187,15 @@ static int __init wii_device_probe(void)
 }
 device_initcall(wii_device_probe);
 
+define_machine(wii) {
+	.name			= "wii",
+	.probe			= wii_probe,
+	.setup_arch		= wii_setup_arch,
+	.restart		= wii_restart,
+	.halt			= wii_halt,
+	.init_IRQ		= wii_pic_probe,
+	.get_irq		= flipper_pic_get_irq,
+	.calibrate_decr		= generic_calibrate_decr,
+	.progress		= udbg_progress,
+	.machine_shutdown	= wii_shutdown,
+};

base-commit: b0523c7b1c9d0edcd6c0fe6d2cb558a9ad5c60a8
-- 
2.27.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200526205756.2952882-1-natechancellor%40gmail.com.
