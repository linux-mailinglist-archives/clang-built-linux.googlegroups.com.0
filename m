Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNXK2X3QKGQEDD24I4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2BC20AB19
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 06:10:32 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id nh9sf5746124pjb.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 21:10:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593144630; cv=pass;
        d=google.com; s=arc-20160816;
        b=nkH31JTASzS+pBd6db6iXOBulGq8NQyq4xwQgK4Mo9YE4S1CrCKRZw+xO+YVkcC0HQ
         s+HddhD1O8Ro5BPs7OXtqNa3OVeUAPGueQUuGx0kXF3FOay0LpwagqSfRraWJ+PbiinB
         t/pl5MLuLzrlZyBIf/qK6UuyMccsdqtoPNaJsqXjRqLNO0By8uWX1vD/EUk2fYyqsLTz
         rhp0fWviDmWCnWjzlDdWn1tmREcQEicZ1VztDtaLKffQcmDf3U2UJ0/1SydL2lAY6hT3
         KlhssTupQwFbik8+ApkkbF0NttoBZPdbnA4aOYq1qM8i0SM89iRQnI1qIOtpK39Coyeh
         t+Ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=l0aAFNqcEifn+NkrXNLQGvPUupBF+4si9xW47DDbKGo=;
        b=Ort1YmJuMKsICkR3qmSo+OIb7AIsFfV/Z1ry40Ki6l7vBPuMyCGBwb76VyvmNg+xHL
         ywEy0ke0xFrx3b1tiWUrfdYrv6Zm/pr1wKeblwXJG8TZSu2nrwMb+hDVhoAsDeRJuPfd
         VLZo76M6uiB4gdFjIzrMJqpHyWv/D6/p+VjshbkxLR+kSTJWTn5HLzX/ohHna9wsmDem
         A0UMjcUN5fA3w8gSgUFEch77bLpO1xjJkBWaFoOvltaT3waFk1pdNibFm3daMLgpQ1on
         T7cxmpPO/9Prhi30VFuxVVKX6yhTEU6h6162fP1qKSNMSws9QakAejLKSLnXgQ+Zmtlo
         F39A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NAUUdhfO;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l0aAFNqcEifn+NkrXNLQGvPUupBF+4si9xW47DDbKGo=;
        b=igDOODPoV1s7mIfQl9BsilQAIXlx8mVGQs1JEJhh3A4uMHpsfeYzVmC0dRv8nfiUN4
         nT7losItN6ZdLSthrv9a2hKiSOBIzHpTlo+measx5FbqK0o52yXkVaGsEspNgNvO5Sf3
         ihsuqEYXl3qAqtqiTgjqR2YdSKt6MyhH5LM8USxBfUhSCfIQITo3eFzuTQLG0tLEcoLE
         e705j9WJQ3Jrg9iyHaCGTZtxODngudqgl158KrSq70briE3h7euxlk/k5ptI2jyTbs/n
         teGJNmAENIWOSYKNkNFe/6rLPZrsZ5mM+SfToG1tQ1QgTAE2mDQf9SmUgm26jTuO1NJM
         DCSQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l0aAFNqcEifn+NkrXNLQGvPUupBF+4si9xW47DDbKGo=;
        b=dmm1TgjMMLEgmEHPeUAYVNgHacldvp+ItI5uDwlnP3lvovZPjh0JlMv/K4fCHQ4h32
         O8LdItB+u/D1x8Meq1KkWXnLY0nbxxxZFtvi5YzbiiTiBsO2E/TPldWwwFOyPgpb5Wca
         wxrO627o4cbtsqgTjSTiMnsc+XJ0U6jyJAZPtItvx6nvv2P2Ll6G/wy6ah524sglsDjz
         Ow8S/Ndsw+ytwGEn6xI+diEgxMK+QTGSSv+KLU/i1xV5ltORxH4PByxD8g7JTc4f2wVl
         5ppLHNhXbtoz5Ivep0Xp1Im+O3h3ghNL2u0mpG/VzZArXRn0VT/veF6iZJuLacBlfkry
         Di7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l0aAFNqcEifn+NkrXNLQGvPUupBF+4si9xW47DDbKGo=;
        b=j9JPZoKeBx7J0lsiyCIvtxgt23UDmryGTpNuastaJmEbc6dBmEpLyRv1hfCEunpMnC
         xnM0kS6VGDDkQNl49bg305CjvmOFlPCvKXyrqTEvB8/LWZxHZxg3B6Yrf++KCIkIOPch
         EVG63McdKtF9b5Zq867cvSgn5nESbQRdtMwGnrkw+UChLR8r0fLItOrRgmdqD9dvQfDP
         X8lRK/b7nfoECFlHR3AWjvqzaWt77c8or8WMXVTBB9W509AJz720FcNqRgcxJ7Hi+qbR
         JQzoyvJ+GITCO4knsZV0Wdm3Tbow8upIAVJyB+fGYr+VtfG6AvPoYAQ+KsOtMlG84AAQ
         s0dg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530RFKaDLW6VxavYGfD91Lq56NckwDQHpydWah9mjvZ28ilNzEnO
	camrt91gIHcl+n0K/GRIfNQ=
X-Google-Smtp-Source: ABdhPJwWZgkzIohdQMuI0vLsDAtzl7soXPVynP9zTm1lVrt68sVeDDlthZvLRxJBqHJOSEhgYj8wAA==
X-Received: by 2002:a17:90a:4fc7:: with SMTP id q65mr1273804pjh.25.1593144630647;
        Thu, 25 Jun 2020 21:10:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9007:: with SMTP id a7ls3048636plp.3.gmail; Thu, 25
 Jun 2020 21:10:30 -0700 (PDT)
X-Received: by 2002:a17:90a:e283:: with SMTP id d3mr1388630pjz.170.1593144630216;
        Thu, 25 Jun 2020 21:10:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593144630; cv=none;
        d=google.com; s=arc-20160816;
        b=XZug79+3+FrBmQj/5MqE7iIGxkbUX8LfduLiQ5H6x2AI3Ovo51VEFB+c3gJsG2AubZ
         Fq5m0F7wvMUOAh/Xn4ptJDSjqB3J8EVFMaZM1F1IpJUuDGXXN2KpvUT/ESjDf3HxIsfU
         UrtXXuZBanlE/MXh7wMIqDsJBSX7nleiDBiKmipNa3xr6pjPpP7bQJfHu7HCz7ZZ60IW
         bODz58Wt/1YBWgZW+ZwwBtCIQQ18KWZyptfiYfFJAGd0wUeJNhghAMRnGLmXGoEDAKpB
         29gJj9gSZAjOhwsIWSWkm0nAv5o1bV+kEgw/NaZBx5PBsEY6hSzUNti7CnCpz2Sb1/6I
         w9aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=yiGoscDyaEFK2a4Hhbr5oo8EKClzH7wIyqZRrKV4JjQ=;
        b=iCikgBJ2E5iM7SaElataGkk+LA0ZAv/qPl2xNHZdFjz6aetsfp6vwzTPiOm1nq/umA
         HoIDZrtmBH11t2fEtF4ILKTs0uMRj0YDrU1tqgDX4JH/J/dyEDc8HOFB5a7/MHLGeRNj
         T5hXoPLqVfnxjoI4FxBhe1FcynF7aWfnQSwK+vhl5Wd+/A0GLODiBRrQycOggvGJ3q2N
         IUXgguIDv/mEtvNef5EJQvaQeIpdq0DRq5riwbCBLcu+W0TVG8pxq/Vva95N5xAx26eG
         sYktwu+59l9ehyJbvyxBKoz5ljjQ3c5A7l1USixtRGLHiGqx3WQy9+FJTmwwmVFoBRjp
         w1aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NAUUdhfO;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id j3si488162pjy.1.2020.06.25.21.10.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 21:10:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id k15so7398286otp.8
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 21:10:30 -0700 (PDT)
X-Received: by 2002:a4a:a8cc:: with SMTP id r12mr785952oom.86.1593144629354;
        Thu, 25 Jun 2020 21:10:29 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id h22sm4165908oos.48.2020.06.25.21.10.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 21:10:28 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: "David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>
Cc: Jay Vosburgh <j.vosburgh@gmail.com>,
	Veaceslav Falico <vfalico@gmail.com>,
	Andy Gospodarek <andy@greyhouse.net>,
	Jarod Wilson <jarod@redhat.com>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH net-next] bonding: Remove extraneous parentheses in bond_setup
Date: Thu, 25 Jun 2020 21:10:02 -0700
Message-Id: <20200626041001.1194928-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NAUUdhfO;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

drivers/net/bonding/bond_main.c:4657:23: warning: equality comparison
with extraneous parentheses [-Wparentheses-equality]
        if ((BOND_MODE(bond) == BOND_MODE_ACTIVEBACKUP))
             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~

drivers/net/bonding/bond_main.c:4681:23: warning: equality comparison
with extraneous parentheses [-Wparentheses-equality]
        if ((BOND_MODE(bond) == BOND_MODE_ACTIVEBACKUP))
             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~

This warning occurs when a comparision has two sets of parentheses,
which is usually the convention for doing an assignment within an
if statement. Since equality comparisons do not need a second set of
parentheses, remove them to fix the warning.

Fixes: 18cb261afd7b ("bonding: support hardware encryption offload to slaves")
Link: https://github.com/ClangBuiltLinux/linux/issues/1066
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/bonding/bond_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
index 4ef99efc37f6..b3479584cc16 100644
--- a/drivers/net/bonding/bond_main.c
+++ b/drivers/net/bonding/bond_main.c
@@ -4654,7 +4654,7 @@ void bond_setup(struct net_device *bond_dev)
 
 #ifdef CONFIG_XFRM_OFFLOAD
 	/* set up xfrm device ops (only supported in active-backup right now) */
-	if ((BOND_MODE(bond) == BOND_MODE_ACTIVEBACKUP))
+	if (BOND_MODE(bond) == BOND_MODE_ACTIVEBACKUP)
 		bond_dev->xfrmdev_ops = &bond_xfrmdev_ops;
 	bond->xs = NULL;
 #endif /* CONFIG_XFRM_OFFLOAD */
@@ -4678,7 +4678,7 @@ void bond_setup(struct net_device *bond_dev)
 
 	bond_dev->hw_features |= NETIF_F_GSO_ENCAP_ALL | NETIF_F_GSO_UDP_L4;
 #ifdef CONFIG_XFRM_OFFLOAD
-	if ((BOND_MODE(bond) == BOND_MODE_ACTIVEBACKUP))
+	if (BOND_MODE(bond) == BOND_MODE_ACTIVEBACKUP)
 		bond_dev->hw_features |= BOND_XFRM_FEATURES;
 #endif /* CONFIG_XFRM_OFFLOAD */
 	bond_dev->features |= bond_dev->hw_features;

base-commit: 7bed14551659875e1cd23a7c0266394a29a773b3
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200626041001.1194928-1-natechancellor%40gmail.com.
