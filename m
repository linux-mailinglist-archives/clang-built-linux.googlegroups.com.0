Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBRGX66BQMGQEX3A5PLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C0D364B83
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 22:44:54 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id y16-20020a0568080610b0290183b8aab7c3sf5196440oih.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 13:44:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618865093; cv=pass;
        d=google.com; s=arc-20160816;
        b=vtVui3jlVhBcwi5kBVgP2DqEQo5tePxnJHORZqqXPRry/g0ROjASSt3J7NHMiePpnM
         +l6USbjVnMxdyNpspAi/6jA6kjZDPROJXgHf0VSXAup+A/rBf5abtWln9dzlZ9KNZIyy
         fw0v6vNqGHCUOVQaiK4jjJ1B8pG5DatYkzdBZ56wElaY/rCRlx8MsgWMEeynLXxwn50a
         /6Z4ZxqdJvQolflQW7I0VwXe0WnYu8ekGG9jT3Zt1zVxa3ONzyq+YkMYyK+HGq6hzDH+
         IR9zRvvtovAto7z84aIAJu37UgZKwTUjRHM4WOhHkoJ0jikUmHLF2YCQZLbvNoqAl6CB
         9yCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ovHT58pFsEFop9zeEr2sUURP3NAr67ehrQ+1FoeEBY8=;
        b=vhNkOdjpq8mnui6OA0Yay8kYR2kRSFmUilIgbep1AX+g/MpMA/DvbJcD1STx7Dqrz5
         r0BMR+J0tziM0v6lus6+97NIoIT6MoPzMeRXeLkKqU2ILdIDdsW4GltpJBn8CayoUnj2
         464YFQzD+oCHp6PmZdnUDhgqjS36L4OGVUayRSTp52gTpMjHwkkj3IpSRDfnBitq3BVP
         50ZIxf9Hz+5BXPnC/NneVf/hdr9UNM//uVdjxefJavY2vAfKPbp4/j5eBoxBgKjZIEFC
         teTDD3r/cnx3oc9CB1kTad6HgEsHTmSErZmLF7Ddv6fgbqTffkTjMne0fVwojtjHN/DP
         KP6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BmJ8rniH;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ovHT58pFsEFop9zeEr2sUURP3NAr67ehrQ+1FoeEBY8=;
        b=q2i1RofeHaQy/mp1BjYJ9WGqxDiSsThGnNwJHcUAJG0t5czpaQr5EvFa7ck8tsudck
         iW1uGKpgMOiUgm7YX/JL25pp6XLXeE4vQPi/iQpuy2m6AsD6MQ1LaQq0qsEKWdaANv1e
         pwW1zXdPD2EDm8E605oZLBDhI9jKI/o0JWo40swSjR5fek4edSOx/hDJWHybLs61n2wF
         bzIjvPKQosmyCQ9lY+btabBsOg32rl6WhpmQICvUOGt170777vzrkjJjrBLPPDZ08AYj
         xbItYYhlgjo7fgz0mZuX4B6L30Hq3q7VJtu4nQOhIxFcQ24u/L6KJDNPLt8PpmXknlsm
         cDIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ovHT58pFsEFop9zeEr2sUURP3NAr67ehrQ+1FoeEBY8=;
        b=ZOkaN9rzAJvVgpaud9sUgxXM78nTKDEcK8hOGZP+VU/7lZIMO3EOR8iRdJD7na7kqs
         XySj2z/n9zXoatVAJzVbbt2MdELwFIrCh332i83407qV2ewLVBHMxkQ7raICfYPBqzVX
         aIwxQ/JOcT0rKE+5GD2aa13hOR9UK2tti+KUeUDxXFkU3GFw80zfRuXG4zSFAyWnmpSG
         SRtZ3sBnrsahQwSP/bUmN/c2eYAd5MQv1bra6co+abahpTkHFXMEPpY+RpGvHFLVUe9C
         uobcW6EjE5clBxzlUN1On+jqahE9kI6eFGI9GfViFASw3myQz5uVh7pcMKq9U7qEpFG9
         qDbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530oADFkMPryqEhcyV9UDxVdtrqfe49wpOspigol+KTdgGzluaIL
	Jbkd6CZvQqNZ0/P4SYZ5IZE=
X-Google-Smtp-Source: ABdhPJxPRhLunxyatBjOutI15OBiVbgatWLXQ2EJY9NrxtyeAMfQmuQ1BYnGnW/fRYbKbyzOM7HfQA==
X-Received: by 2002:a05:6830:1094:: with SMTP id y20mr1649823oto.135.1618865093094;
        Mon, 19 Apr 2021 13:44:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7dd4:: with SMTP id k20ls4408512otn.5.gmail; Mon, 19 Apr
 2021 13:44:52 -0700 (PDT)
X-Received: by 2002:a9d:a2a:: with SMTP id 39mr16484241otg.371.1618865092717;
        Mon, 19 Apr 2021 13:44:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618865092; cv=none;
        d=google.com; s=arc-20160816;
        b=tT+iGKwZPlUbNZAFgs/Ci3vNtafIBOjP+aqCze5EpT0aPWZE449It3bq/Xd8Z79tiF
         WpAGfywwg00Du4FH1kxEoLJA3PvBFBqFXFFWHb+iTlMGLxOT3vAC8aEsz2nOzK63OhMN
         MJ459zlVHsKNjtV12BDuH/wy55zPNRyPapZWTgS6XD+dp/0KiPIUMmaOPCFWA66qGrpK
         ngQKdlpDVFcVaGj9VxcBK666sZ7Kv4I1AbC0uFv88ADYMZQy2KtVNj3EWtwu81Yuu/E3
         YrG0b+alN+khRps9k7lMsDsX66B/Cin3YD4+Sy+wyWAAId/yGoh63FdgsAta0QTyxj1+
         O7Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FfJ2kcX/cDPARvKDyRfhZ3ZbdnKordAyQTnrTIh2yOQ=;
        b=i7l9WccqhvWBy1mQv0/ZDf9HhR9+hojeyQNvrh+smOFq2peW+LJcwPvVN2Sq82DT8u
         Tqdj4IK0hG+LSdEzQyXTSYM7vVqyV9kInwrcl15/Q7CYmG8PNj4MvnTYJRleAWtWjlv+
         QWkVgCClVf9ePTT4rOV4cyli2KC24BkjadHfVLGQUXe6kmZNWrBc8QQVJ+k543PbSNGN
         ZFywXHTP/vP9HdbDOZwMW/RPBlGGdtNTiewKf6tgEJbpHuZcZYoJUzTwyYojiNGPWqdy
         uoE/OI8ZmEb5B2BXuWcuBVe1dxJukJf0bjR+sRlw+hO3RBLqaVbrzHz0zq9dmjGfJTBF
         pMBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BmJ8rniH;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x38si1291299otr.3.2021.04.19.13.44.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Apr 2021 13:44:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id F0E65613C9;
	Mon, 19 Apr 2021 20:44:50 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Johannes Berg <johannes.berg@intel.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.10 20/21] gcov: clang: fix clang-11+ build
Date: Mon, 19 Apr 2021 16:44:18 -0400
Message-Id: <20210419204420.6375-20-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210419204420.6375-1-sashal@kernel.org>
References: <20210419204420.6375-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=BmJ8rniH;       spf=pass
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

From: Johannes Berg <johannes.berg@intel.com>

[ Upstream commit 04c53de57cb6435738961dace8b1b71d3ecd3c39 ]

With clang-11+, the code is broken due to my kvmalloc() conversion
(which predated the clang-11 support code) leaving one vmalloc() in
place.  Fix that.

Link: https://lkml.kernel.org/r/20210412214210.6e1ecca9cdc5.I24459763acf0591d5e6b31c7e3a59890d802f79c@changeid
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 kernel/gcov/clang.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
index c466c7fbdece..b81f2823630d 100644
--- a/kernel/gcov/clang.c
+++ b/kernel/gcov/clang.c
@@ -369,7 +369,7 @@ static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
 	INIT_LIST_HEAD(&fn_dup->head);
 
 	cv_size = fn->num_counters * sizeof(fn->counters[0]);
-	fn_dup->counters = vmalloc(cv_size);
+	fn_dup->counters = kvmalloc(cv_size, GFP_KERNEL);
 	if (!fn_dup->counters) {
 		kfree(fn_dup);
 		return NULL;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210419204420.6375-20-sashal%40kernel.org.
