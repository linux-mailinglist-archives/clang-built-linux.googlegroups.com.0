Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBRGE4X6AKGQEKVXK6FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF5029CFE3
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 13:21:25 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id m11sf2200607ljp.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 05:21:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603887684; cv=pass;
        d=google.com; s=arc-20160816;
        b=QbD2ifzCuBtwN8l0deTqnVoyv4H8AADbtvrJ8RoN6VvNmiUa9qW/zFXCXZqrfH+CpK
         TlWux3iXvhmObxQHVgOHr64ISFytnaOXkU1ixx05CBjyzcDZWBDlcKBetFmrhW8N/aDP
         k++3Z2BeW2Ajilwu9ipME/rNB31JWA3BIyqBrJtXolQ0n2YDPlIzEtwa3dezYxHbacEZ
         VN3atDX8vtp5DXbk9baCVWkZRALbpdb5eQjl2NrQdUBTXrO7o85I9eozriU2KOg9LVmd
         p29MwgP3mx8OJMgd4ckupK2oQaLQ+GYJnO54ZTCp/VWiQKN0pMpeC/qqLRnTDxn+46uL
         T1aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=63tM0fA08ankaWKYRAsN9wvtuoiF5VYL3bIqcUjE1HM=;
        b=vBYNVPJvjClJScfwyDaL7XOYz5pTCeB5nZslJU8JZ1EK0tCa9rLToDoXJcDCAIpGPW
         wjbmv8zpaj42LlmfB84kRdcYtyVdjy/hbmuaE0cCinmt9+PldaKPf0EGtUFC5qTkoqnJ
         twVv4XHv+jbRDYh4nMx9WIGvwvqCwXGyAVRftyk1zF+XPG52J9V0ZnNey0tvU9YY2a/a
         u3mUBZT20Q2T4lZr1aklPS19mfF9x3efvN8c/zvNRdqDeGJmqd+ET2uBEqWyzhwOARha
         rUsM+WtAqTD0rnMdf3/EWFzBLcv83+hM7Z0kk0ibObiOnKWVgSwkC0brvQxXfhTKuTr1
         uwtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z2ndfn5j;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=63tM0fA08ankaWKYRAsN9wvtuoiF5VYL3bIqcUjE1HM=;
        b=mg5olqLKuhjhxVp8E8jOE5r+6M2PKgj5B3NR2jZT6oCbLV/imsRQhx3z0XA/fsAiso
         7dUxBQXnkvyV4SMzfWPSL3kGdfbi1uUBE45AZ3Dp6P6b9LOxI1RMxVBpCF/0cWDmXyjr
         hSqn/L30AdiYm0rrSv6JE99swLgcRQd9OwoOwikZAS5bC+jy6LGfTFEHXjdmZBnipwhf
         lCp6SqnZfuOFMmVK7sH/vB9Jmx+6BhhMBIUvdb442y9ZH67JWnkKJJ4zqz+lF3OChGOW
         0iinPEaQ62vnFe939XB6NHxkfOZP4e2pZdozM5meYRLllH5lt+k2z7C3ngQnLC09WE6y
         JP5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=63tM0fA08ankaWKYRAsN9wvtuoiF5VYL3bIqcUjE1HM=;
        b=brUTI951FwfQ4HPLt/3dcqNAGHDf9sSgV0Xklr9iOSE8nR0gFENfSnXdI5gI5nPnin
         3kmHFHM5M9a2xGKk9dvYnTvYyuhMwSmTrF3ocYQfqdI99TR4ePP01b9UH9V9hmhsB2nO
         vgQodiNKs2ibBtXZU7TyvZAjB2vFOYOKkqDBZ7BQuVnp+WV5wOSCcob5mtXYLSuc/Nce
         +9ZJ+weBe6/qQtnpVeiSZGI7nI5pX6+Q7ZhHFhEXoHXsC+pnUpAlOkp69R0tF8xfszog
         yNOrKveu5l58dUG7vg3Ne9++9WQMmoZPCte7frVg//RBa83iRDM6KM3ptnZK1nAddSEA
         QjQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=63tM0fA08ankaWKYRAsN9wvtuoiF5VYL3bIqcUjE1HM=;
        b=k40UMAO8g0u3UDTcQjSScsRB1MKq3kfwlpVVWmMmeBMvuWfCNfib1TOijiirJwZol1
         L25vqCAhwdoJpm8XsuVSmp/p6+wa9BstmnoQCNFocb6BjfXSTngg/j0Bn5VZ90Ywb33x
         /wTol3GqUQHN2bRi864hoQ1kUzWVU9ayrBkLJHObSaVeT48dHbPg+7MJz8ogbSRqi7KG
         lYjvIHwBHPYx5yRnJzGPGHS5Aot2+sG6ZSb/lHGT8sSvKUo6AQiNnlbf2fsATLJ1804C
         CNnZ/spDdvB+0IpBn8+rurCaj1xgDi1rMTR0aaZ++XsRTgeP3XEO2zl9CMJCaODPa4jS
         FC3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TeAia+d/s+LsAzHknt3aTkqZo4DCe6E0tW1mfajgLO81IWY5q
	bdPHWxwz7fP95zwK5v4vmkg=
X-Google-Smtp-Source: ABdhPJz22KK8gqFEvBUX/jO86NvvdQHwR80l7ATFOlErq8DRlMu2K6hXro2u4UYWQUx7oKqFZk4kaQ==
X-Received: by 2002:a05:6512:249:: with SMTP id b9mr2680444lfo.453.1603887684618;
        Wed, 28 Oct 2020 05:21:24 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7a0e:: with SMTP id v14ls940012ljc.7.gmail; Wed, 28 Oct
 2020 05:21:23 -0700 (PDT)
X-Received: by 2002:a2e:9f49:: with SMTP id v9mr3327964ljk.369.1603887683396;
        Wed, 28 Oct 2020 05:21:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603887683; cv=none;
        d=google.com; s=arc-20160816;
        b=tQUqR9OuNeM1Tuiq6Ck+ALeN7hfU5BSH1UTSsREv/uu0T1lFBMBS7lC0t6udDiy1B8
         Yxl8SEIa+sGHN1ZTLPaFQYBaapX1wSv9XIW3Z0WWxWh70BiFQVkKaOfSFoY2gJLKd78d
         JJkJcEH8SdpMBW30K84W0SkiyQgwVN/w5Gb+fRFuY/mPFHLK4pqGZc4/1yIy9LT7Juzc
         nafaIxmiSpUdjYv3EHF6I3CLbeTlP/XzY47BBqEXhC2YI21XMjjjqMJdY0+vTxP3JBxF
         mzT/WOZ8OHAYJCzpOyBKawUUBpNbmfx0nU5cbU/yDYBfajSs5RCPw0sfTa7QGfmwYe5a
         fDYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=A0oVWK/PD/2SiJZrfVFOxqFlp4+JetaKuHdDt62eT5Y=;
        b=gYvd/CGxNoBvymNKQ6SMSOaFcjJOW2spLn9DNsrrnleHYnHF7L/T/HoKIGz/lAUgvy
         2gOJtJn/PL0gLpNr+1zSdMmOuzMN9KzoRMaAFYkoKtdJZDzwPLgznjqqcA/Nqd82/p0l
         SVsBvu9AZG+CE+41gldFFxuiE7GWpV/2LhrzaGdksiDS34jUGVIiovDr/eQPy73SHkTZ
         eoIAwCEi6KBdqd6haOHQThyVXJPmhYUGAkSM4PwUoKtsJizyGLLkGGZpKMHlQMWS99VG
         bBBF8z/4djDndsXRDJGAUf+VvC0vOo6dicuC5sV0YbanTcorXqC+X5LaEX6q2SqHmTXk
         Js4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z2ndfn5j;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id i16si145811ljj.3.2020.10.28.05.21.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2020 05:21:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id a72so4336637wme.5
        for <clang-built-linux@googlegroups.com>; Wed, 28 Oct 2020 05:21:23 -0700 (PDT)
X-Received: by 2002:a1c:bdc4:: with SMTP id n187mr8303423wmf.185.1603887682784;
        Wed, 28 Oct 2020 05:21:22 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2d7a:200:a915:6596:e9b0:4f60])
        by smtp.gmail.com with ESMTPSA id c1sm6783945wru.49.2020.10.28.05.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 05:21:22 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	x86@kernel.org
Cc: "H . Peter Anvin" <hpa@zytor.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] x86/unwind: remove unneeded initialization
Date: Wed, 28 Oct 2020 13:21:02 +0100
Message-Id: <20201028122102.24202-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Z2ndfn5j;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::342
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

  arch/x86/kernel/unwind_orc.c:38:7: warning: Value stored to 'mid' during
  its initialization is never read [clang-analyzer-deadcode.DeadStores]
          int *mid = first, *found = first;
               ^

Commit ee9f8fce9964 ("x86/unwind: Add the ORC unwinder") introduced
__orc_find() with this unneeded dead-store initialization.

Put the variable in local scope and initialize only once the value is
needed to make clang-analyzer happy.

As compilers will detect this unneeded assignment and optimize this
anyway, the resulting object code is effectively identical before and
after this change.

No functional change. Effectively, no change to object code.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20201028

Josh, please ack.
Ingo, Borislav, please pick this minor non-urgent clean-up patch.

 arch/x86/kernel/unwind_orc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/x86/kernel/unwind_orc.c b/arch/x86/kernel/unwind_orc.c
index 6a339ce328e0..5c64eed08257 100644
--- a/arch/x86/kernel/unwind_orc.c
+++ b/arch/x86/kernel/unwind_orc.c
@@ -35,7 +35,7 @@ static struct orc_entry *__orc_find(int *ip_table, struct orc_entry *u_table,
 {
 	int *first = ip_table;
 	int *last = ip_table + num_entries - 1;
-	int *mid = first, *found = first;
+	int *found = first;
 
 	if (!num_entries)
 		return NULL;
@@ -47,7 +47,7 @@ static struct orc_entry *__orc_find(int *ip_table, struct orc_entry *u_table,
 	 * ignored when they conflict with a real entry.
 	 */
 	while (first <= last) {
-		mid = first + ((last - first) / 2);
+		int *mid = first + ((last - first) / 2);
 
 		if (orc_ip(mid) <= ip) {
 			found = mid;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201028122102.24202-1-lukas.bulwahn%40gmail.com.
