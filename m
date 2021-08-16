Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4XZ5KEAMGQETSKRQUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1AA3EDDE7
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 21:30:59 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id n64-20020ab044c60000b02902ab5cf38d51sf4229920uan.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 12:30:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629142258; cv=pass;
        d=google.com; s=arc-20160816;
        b=xDC1fqowv1Ry/n7g9EZPBkDvIi8v7tx6Sw2k0GO+FKNcQkMaLS0722eNxzgyO8tO8L
         fUMaxZVu/MLvdjKxsSs8y+b3tJLAAU4+7ua9gl9nWHsP9u3sFdicO49a/2wvPDl75faD
         +p+JM26xOUg7+Zc7kQig/uRkQ7lqkhkyXG/2V4IDLcmo7oq1hK2Q+Szb5FdRoZcQ0cwe
         9EPfOJyfx963XGgBUR8VXxSMdS2ICN45kGEpSeurJxpaLfhn+TwpDfEDHc84kc68NAt8
         SMbtWDHTooge2sSfRel+HhwpyOcLW3N5D1Dgsx+niy+uW2PIiyT4eoui1LN+ruUlbida
         ri5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=/+2CArqK5irzaZknQIrErh5q7oiU4qPvTu6Q8Pjma5E=;
        b=gUDqzss+PEvT3JaQi+g6a0rzttbFema3mqbZ63suYZDhzU/348Z8ZFy37ne9gM8KBW
         AD2ZFHrIQIJ2FNsmAxPzsYsMf8fUdEy+Jdv7NM3TeinJU3tSDXv8hDk3eodlv9/spRP1
         vHThmdGaHyBRVanhaI13XSLrAGp4cmyu1KNhrEKnUob4+PwH0cYrJV5qgIeYAbNMVGRJ
         CxOPq1i4CnlETlZw+3lTnz+SG7uU2IPv0Fxx7VbnNN9yiwx0x9e3KddE8Oi4qtpgrf9I
         105ysiU8lzgwNJgzdkRtS03bmNrDhORRnI2L4DJ7YQ8H/iR9pqGYxgqEOyNTc9ox3Ve9
         g+Kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UXl9WFuG;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/+2CArqK5irzaZknQIrErh5q7oiU4qPvTu6Q8Pjma5E=;
        b=P9dUupguVZYdKfCKsnNuJD++FaFJ4PgHCJqtaf/6VdduYIxsF1qYwtlcHGl+zvbpSW
         CGV2rgzYBQbK4aM34SV5hoM8hDhe62nsbkekNxjFNZjHF6hfK03/5mJysC7xj1JtKy0B
         Ng+vt/zdaikwnVRcuzDKbW/HT3GxTlnaxcn0pXv6z8YSkmC9UmbNanXWDkpFBdag2Q+Z
         l2xAhC36igUJWjv7ylgYsrGVAQKF+4Yb8xu/Ki6N2xNmyf42f2di4fJ2FvuWK3SMsk7n
         RUrsoDdJOP4hGuq1JXLkFA9vnQrbYEvRwDrvCuuxRHpEgTDrZr9AobKtCwK+Ls0AkKy7
         tvww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/+2CArqK5irzaZknQIrErh5q7oiU4qPvTu6Q8Pjma5E=;
        b=NgM84mK6SQhS8ZCPOfkX8OhHW8ynOTEs7jxFdjD2hLLx3uSt5K188Yh2aDO/UOOEF4
         6966jUka+xbCThSaE+pYUS2nCcobLFR0cK9JOa+78nGFJJNNSH7vrvScTj4JHWqmLilG
         1hHRRTXb5DS8kC8Ok1QOnq3Tq+vMxHVdZl6lrjLdczXYxMlYYiuWmb+CVb6xABLIrSr7
         4xsM1Um8SYem7EG1f71Tdd22mSy0O89+ncw1zZzCAgfp3PsKIpev/1gJGSlgLPulWssf
         sY8EEHKRd1Xptn0d3TH1tQcX67VS1vTJD2EEBQD312sF5RhGN0ZnoQOkfHhGTmMRNb/A
         mqMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bCVLTmxJrPGqeBBh/E7RiIjr7lZO0q8KlqFarcrZaIc3ImOmn
	uiPcmv6sv3FiKzSkrFKuup8=
X-Google-Smtp-Source: ABdhPJz5hpv973G4VvJyd5kxMB8vLJPUko8emqD1lB2iZpOMijw35WEZpaukuYi4xBTV2hvIwFNbkg==
X-Received: by 2002:a9f:264b:: with SMTP id 69mr329422uag.112.1629142258470;
        Mon, 16 Aug 2021 12:30:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ac0b:: with SMTP id v11ls1646779vse.6.gmail; Mon, 16 Aug
 2021 12:30:58 -0700 (PDT)
X-Received: by 2002:a05:6102:21cc:: with SMTP id r12mr531553vsg.51.1629142257983;
        Mon, 16 Aug 2021 12:30:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629142257; cv=none;
        d=google.com; s=arc-20160816;
        b=jmXqpsAcjw9KXW6LohjUgIdYtF13zDPihFnxSzC8fUfli3f3jRJ9bJU1etN9+weKmM
         6AsjhL+rrgEP98yn2+YG/53PlUxKqaHfW+uwESSIcV0IS8o3sBGuDh1eeIY19YSi8YRR
         uNCOIMM/2JrvWFE7V/G1vfh8ll9Ucg7Eb3jq+Wi/oNeRxCJ7Q1XwDmiDgRZZgLLX+VIy
         5dUvQyAsokMOGis8+rwiZG0uASTwQVYzcLd5BHlkw+CCWkRygvMps/Dw6SJ61ga3VutW
         bUxbnxijTEPg/tEuvIqKYIhzbZgamVbN7Bqv33QWPo+qUMS2BrRxoSQZBRUNTrvzMKV1
         PMhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=F873VE9rM0D5d9wI6+Uj1t2sNVyR/u5Ytk7yCDLIhTo=;
        b=mPDw3XC7kHv3SjC1qIMgPdJ+z3eHLKSmd/R8fbhON9oANxG6sBgvbvSzHKWSDDpPtu
         +AxBh2ljjuOxP9lRPMhSAGKXI5Jod0I0cuILRtD3ZhiWye5xYf+ioEmDVnjtLMSqbzBx
         5aN1946u/lbuvlDt72rhEGzc6YJxJHsdouthEdDB8p9XA4CmRwgfm4XWAWFdRWjuLS2v
         CBaHCc5KJdtvAoLutoZjqxn2ZQgnNmI0j0mZIHrifjy0cNOfRSgKu/ywcQlT+0e5vjdq
         uO6EDA0+UmJld2hYVPP0jeuJy0VQpD3rhgAwwJJoynRN9TEcXRRHxXDHhgYKqB1RggT8
         m4Bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UXl9WFuG;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q21si13733vso.0.2021.08.16.12.30.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 12:30:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C6E5F601FA;
	Mon, 16 Aug 2021 19:30:55 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Cc: ntfs3@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] fs/ntfs3: Remove unused variable cnt in ntfs_security_init()
Date: Mon, 16 Aug 2021 12:30:41 -0700
Message-Id: <20210816193041.1164125-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=UXl9WFuG;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

Clang warns:

fs/ntfs3/fsntfs.c:1874:9: warning: variable 'cnt' set but not used
[-Wunused-but-set-variable]
        size_t cnt, off;
               ^
1 warning generated.

It is indeed unused so remove it.

Fixes: 82cae269cfa9 ("fs/ntfs3: Add initialization of super block")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 fs/ntfs3/fsntfs.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/fs/ntfs3/fsntfs.c b/fs/ntfs3/fsntfs.c
index 92140050fb6c..c6599c514acf 100644
--- a/fs/ntfs3/fsntfs.c
+++ b/fs/ntfs3/fsntfs.c
@@ -1871,7 +1871,7 @@ int ntfs_security_init(struct ntfs_sb_info *sbi)
 	struct ATTRIB *attr;
 	struct ATTR_LIST_ENTRY *le;
 	u64 sds_size;
-	size_t cnt, off;
+	size_t off;
 	struct NTFS_DE *ne;
 	struct NTFS_DE_SII *sii_e;
 	struct ntfs_fnd *fnd_sii = NULL;
@@ -1946,7 +1946,6 @@ int ntfs_security_init(struct ntfs_sb_info *sbi)
 	sbi->security.next_off =
 		Quad2Align(sds_size - SecurityDescriptorsBlockSize);
 
-	cnt = 0;
 	off = 0;
 	ne = NULL;
 
@@ -1964,8 +1963,6 @@ int ntfs_security_init(struct ntfs_sb_info *sbi)
 		next_id = le32_to_cpu(sii_e->sec_id) + 1;
 		if (next_id >= sbi->security.next_id)
 			sbi->security.next_id = next_id;
-
-		cnt += 1;
 	}
 
 	sbi->security.ni = ni;

base-commit: 96b18047a7172037ff4206720f4e889670030b41
-- 
2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210816193041.1164125-1-nathan%40kernel.org.
