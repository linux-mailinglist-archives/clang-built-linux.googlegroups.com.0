Return-Path: <clang-built-linux+bncBAABBON63GCAMGQECKZLF2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id F38AA377116
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 May 2021 11:51:54 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id q5-20020a9f38450000b02901e7f4035131sf1388922uad.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 May 2021 02:51:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620467513; cv=pass;
        d=google.com; s=arc-20160816;
        b=mjWizBg6cZDFCDi3+/ZilbqsKuYHpcrPKNp6tkfe6PaxUfmlG++FgLIf6fDBf745aT
         YZkyVT2FfphXzTF7D7YQVBbXmv09skeunWEWYSl+wJZD9kovE3qyn/gYaYFwIqZzt3Gv
         NQS5CP1vCviHSdTRVPl6MfNFRbEzahqQc19s0DGkxqw7Bwph2ogJnFdjtney7tk1vmSV
         It3kJsTDJdpwR+HmPmOCIfmWfzYxYLBt4e06XrOfvgplcQb2mhwbnyrXIJRsNJXSs/nK
         +wBo98/km1J5zsS6tXfvk+Hvdq6I+fRaFGoFfpjp5HzU0zB8DM1tB66LG6tmOl3mQlgw
         EfLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=+zPJIi5psj9fjyw0OC6NR+lKQWABVvVVE9ZnQ99+Aa0=;
        b=NHPOKLTF27H88u7quPDfPHYGadnj19QnoHOWZ20rwE8y7A/52dKFvaIdy7a3abuCQ5
         KlyiVTar7xvkx3dpg6LFRa7lvIJXiZEhm47o7P3cIE/rbSHSkcaOVQkoPON8A2Hzx1MR
         6EwBf00i9nKCtH6m3X0Y6aLw39j/hu7rjqr8SjeHmJLToLgG6QFxbgWCuvsUWZ+/icFH
         8HyM0ytwkAci8M0F/DjFuzBj9oCiRP4MaWaM3sCXYIGt4Pfv+BsGLHwcwMVRkWMRrQm8
         86Wq6odd8zhros8P/UhbonS0m4tZ4A31neT4HXxFGzgCbF/WE0Hvj9QcmpLGB8T1XEMg
         Pmgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+zPJIi5psj9fjyw0OC6NR+lKQWABVvVVE9ZnQ99+Aa0=;
        b=E+L/8Tp0WKWpzOgNMt0C9O3ynnGT1fRpulHuxxCpFug5CnPoKcTGivRnsbLrCy2g2N
         dzXU4AmCsFJjkyRMfnOcDchvjrs8NUEc7REawkMngMUMsj5hAvaZ0MgjEtTP4WOfJOIn
         jiUMIC1m+USAa//1SiwcAHrOzhcf4sDrKnGJ1bca4AikzefAwpWKU3XixT8to0R1SL1c
         G7qFdtM5vnFdvmHPN76uvsBtuMVcijCIpiZQy8bcGsqEQFpTqphh7Z+PNsIuiL5ceG/B
         vlg0uogXBavmoyxWNC4+VM65EHuwu/K+E5uJFiCaxMN5H+4Q/BpkdSR/Q1+iH7jK88sB
         0i2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+zPJIi5psj9fjyw0OC6NR+lKQWABVvVVE9ZnQ99+Aa0=;
        b=hKiktVZf/7jrLK61Ib1uH3IRoUqkjRc9uLBVadYqolq1rA9gAPc4gnUpKunqhhWhkA
         f0BhvPvYokami4Rk3qGgKSoJuKvPP2Xyh/0Fr4eI9ENLPP8hUz3dSS52PieXCHzwVJ+q
         h2X2IZsi7Jvoo9coHSXqsFS1kU5bBSJaqQHuxaIrBYnk8oIlUQn2qxPjRGs5v7zJElum
         PkTKpU0QDT5c2s7A0/RZQNC9OWz66K4g2qT6WQX0za9I8LwmmR468iWALHyRcBbWTqXH
         XoqZ4L3eRSCdNx/1QwAkRDThcjUDIMpwjB6oGMjS0GlTrqPZlIjL/nMJ339I0NDQt8J7
         8QUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530SYMT1bvIAI277UIENyjGzTO4FUh62QZt7z+ykgf/sZkeBbNBm
	no3lizgEzpXkwiK0UrU9em8=
X-Google-Smtp-Source: ABdhPJwzi9ZWtKW7NDqFrkbnBfZfs12LJwCcKAEDB7Q4IhRo7P227jgkuGHFfn8NK07g0OCr3NbyOg==
X-Received: by 2002:a1f:2694:: with SMTP id m142mr11546882vkm.25.1620467513789;
        Sat, 08 May 2021 02:51:53 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:33c3:: with SMTP id z186ls1643660vsz.2.gmail; Sat, 08
 May 2021 02:51:53 -0700 (PDT)
X-Received: by 2002:a67:bc5:: with SMTP id 188mr11896714vsl.50.1620467513253;
        Sat, 08 May 2021 02:51:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620467513; cv=none;
        d=google.com; s=arc-20160816;
        b=log7DC/HPtDWxUHAMRIPo6CeFtJukZYKIYMePuxCLNiBjxiqj8rJ7toGKhH3MjbPl5
         zCdWxlFbsTBmQ7N5J6VM8hXJ454xA2FAe5o28WzUpBGACOSNBb5nJ5Y+WE/7BDf1hKdY
         S/jfx1/MvF2G2NUoweF7R7u/tPZuRfPjMhhnDU7xv5OzDxbFHCionIHBVB8/1zZK7mIB
         N9sd2ACTUE8VI7KJwkGyhdkmdFXjJJVQ6Wdt6uDJ2PXaJxLiXORHhT696XxMnZPphz/3
         RCDydKdFSYLER9QK7gTdBuQ2BKOs77ozW29kXkaChSx+T4846yxmhYYzIA5GviLDkBN8
         dzLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=Fu0+ywKP9knODhNjf4FlarXHI0zDRaD7uv2nywU6sPk=;
        b=l/Tx8aud0fKV1A/vjx5n0yNSnShoYNKSHB6LzU+p6koo+OioDMYNm9OJkKQKfR4ZFo
         BB0a0+FhUHLqDB+Dfug//rYiwrlN6HALzUHXPC4Qq+9ztK5y3Uc9zDSwlovdIrHTImkm
         TAl+QVxRZpWTVgJz87ghMQImw+Z42dy9LayGFlhYy5SU+t8Hr3TF/ku11bXxqeUOVYzM
         f/cfOxaOcp5lczMyC7l3nNuU5Qp1lG82RKFK0CyW8z7813qpbMKhVHLgy2KuA3Se1Qy9
         05hoaH0/LfwKKbIJGgjr2gmsee8YJIsrFZZ8TFog+2npz4xpXLuYjUcP1kLaZMZ1B2ri
         YtKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id m184si737254vkg.5.2021.05.08.02.51.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 May 2021 02:51:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R101e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=alimailimapcm10staff010182156082;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=11;SR=0;TI=SMTPD_---0UY8pXIE_1620467482;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UY8pXIE_1620467482)
          by smtp.aliyun-inc.com(127.0.0.1);
          Sat, 08 May 2021 17:51:24 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: dhowells@redhat.com
Cc: jarkko@kernel.org,
	jmorris@namei.org,
	serge@hallyn.com,
	nathan@kernel.org,
	ndesaulniers@google.com,
	keyrings@vger.kernel.org,
	linux-security-module@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] Keys: Remove redundant initialization of cred
Date: Sat,  8 May 2021 17:51:21 +0800
Message-Id: <1620467481-110575-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as
 permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Pointer cred is being initialized however this value is never
read as cred is assigned an updated value from the returned
call to get_current_cred(). Remove the redundant initialization.

Cleans up clang warning:

security/keys/request_key.c:119:21: warning: Value stored to 'cred'
during its initialization is never read
[clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Fixes: 'commit bb952bb98a7e ("CRED: Separate per-task-group keyrings from signal_struct")'
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 security/keys/request_key.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/security/keys/request_key.c b/security/keys/request_key.c
index 2da4404..873c31f 100644
--- a/security/keys/request_key.c
+++ b/security/keys/request_key.c
@@ -116,7 +116,7 @@ static int call_sbin_request_key(struct key *authkey, void *aux)
 {
 	static char const request_key[] = "/sbin/request-key";
 	struct request_key_auth *rka = get_request_key_auth(authkey);
-	const struct cred *cred = current_cred();
+	const struct cred *cred;
 	key_serial_t prkey, sskey;
 	struct key *key = rka->target_key, *keyring, *session, *user_session;
 	char *argv[9], *envp[3], uid_str[12], gid_str[12];
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1620467481-110575-1-git-send-email-yang.lee%40linux.alibaba.com.
