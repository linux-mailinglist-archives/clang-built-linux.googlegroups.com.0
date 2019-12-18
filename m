Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTFT43XQKGQEARUO46I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A85123DBE
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 04:15:25 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id b21sf182566uam.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 19:15:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576638924; cv=pass;
        d=google.com; s=arc-20160816;
        b=LTVZK2fJdfUdhGC5cSXOf6rVvHomO2jXF4t0f8FAaNK6lFFBQX0+iSbBzvfFsafQtG
         5kvjBpOo3vJCAuPc4xCDWp7POSb3r+gh/OfmGxXtXt3Pw9rQox1XjjPvbcIRdlRTDeSE
         u7xWQrMCwRvjaxVG8piI/rWyFaKylFc7c8+6mO650z+1UbWYiErukc+JWLgvb8jtNpLK
         8/sMBEpU1gCfI+qDcb8zQsevUJdPKHpUiRoDjebbs1EIOEhKlHEU2F2HLhX+dnjpPsVc
         gjMwC9TDsJ+sDNatI7tES/tyqqdRfpJEQsQExLFPBGyBQtvhf56DehdsM+QlANBSoqXt
         9OoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=3Gay2cZoa6G9yj1jabyvb1i7884JDQckp7Y8Lc6PKfk=;
        b=Byem3y6H2zg4N7PxVsG6I6NLpDrAZ0MOD2vEySbVUs6RLfU67yRFcM4KpFtm4dhCoz
         9zfJm/jFO2dKqKg/xqShjKj8BTzVdLkqopKlDxSPmSCShXYk+mkVaV6m/qy5MDQNtlVt
         bdTs/L/3k12pAZ50bkill25fOdJITdp76EKawLPHc22bTjjj9pnRpWhVKzSKsfaSZzHA
         RA1vkav80VpqtjICLlhsxl2amjdUVuYORY/BE0Z71YddnEiQJ0oF4bniLzTqqE7pdP/Z
         etggbm70RagtcM2gIlilF1+UnAKV+VG8Zga3bCLneyzXP6ICbN9Hem3hZ9NZPjQPpenv
         fXgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NX4eemyM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Gay2cZoa6G9yj1jabyvb1i7884JDQckp7Y8Lc6PKfk=;
        b=rQfzCOM/IJLYrVlZ0Yycb5STZMUEKccwcGKVNhtrur++ro2Us2cCB/mv8HwOH89cnf
         Hf8JSXzLjVVtuGX5ltnfTmaLJNOXJoqFyDTTDzvRuIC9Cqop2EeJJTR5TFDVQfkXrKWZ
         P6awAU0a4LRi18Dy7WuqxiAfJDK3kb0IOUdC/oyTJ3h0BdpvmsHadge/QCXAaj2pjsi7
         dXVOM3ybAGfzEDD9I3EUvZpZWKTTByfhjOLTRHzr/x/E9DbAMizdiCJYxGSAhc5AdIes
         6jzbknAU7cXS4p4FuUb7yldacRPorKkhm1rSwdyYYpxN0+z3hrWhrd8AF25wwDqeN2oC
         U4sA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3Gay2cZoa6G9yj1jabyvb1i7884JDQckp7Y8Lc6PKfk=;
        b=Ijar/1A9cJ77SWgEY1sr2yzz6pQDNW8aQwQWMkqslEY1/YC0ZfykLjjtGo+kUEkqss
         nWzsb24BbAXqJnJb2WFkQ6Td+oWgp6ZbUq17YFCnT9z0o6D4DN1QHgxH95oP0UGQcBkz
         EV78d450vFcRzLoGfgYWvecbRLXTpL056f1/PciY7c1QY0+MpHOX2FkyG/zn7dfwpucs
         23JtEPfFM4uQV9EpmbwYxHF6kssgzJ4Wg5+xrO9wgUqbKVZ3ftqvEmzVrTqn4atFkDzt
         hz6JzkmWGaRwqr6xfJ0g23zJt4Hvfb4EosGNP9UZd6DtP01pohI0dg30tbA+I2qi8ooF
         7wIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3Gay2cZoa6G9yj1jabyvb1i7884JDQckp7Y8Lc6PKfk=;
        b=FerukZQuysROC4ZWnQJaWLp1opGjejck1vefgj47tO+lgBOI+ayuRF2WiF4VYU91WO
         6Gm2wlzifGLxtDZlEYmuGc0bD47o8aUHFUv1IVVgV1b6E69XjPA1LT/eHMqh+utzca/Q
         jnZcfkjtxnFCQUY/E3+D+hFA00MMIBROVfbcWa2AdtlngzBPAUYIOCfg9WKZLDWt9DDx
         7/3ilZyQBf4GRijMvQ+FB0nCqLzU/8655gYFIo5f+D9hkv+LuGc1x2MagNMHEPnJTguA
         ZhBlAV+pNV+BA6v928n+20548oNq3P8FPeSK01m9h2bct3Er1sEdDynY45Tu4z5Ctcuw
         A9iA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXjSkIQN/pig4iNlIZf+ibxd2VOYfrvA+9so/yDmy1gM+gZJIlc
	24n9YcuJC4Z6oS7h315ccWM=
X-Google-Smtp-Source: APXvYqwLsIJPVbCsPerlKJPKR/7PBsT0ewHiRgZ0QzbletEUAK8riDVt+QYokMbJ23nciBl9crVHJw==
X-Received: by 2002:a05:6102:3014:: with SMTP id s20mr77342vsa.10.1576638924778;
        Tue, 17 Dec 2019 19:15:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a4d2:: with SMTP id n201ls47430vke.12.gmail; Tue, 17 Dec
 2019 19:15:24 -0800 (PST)
X-Received: by 2002:a1f:4541:: with SMTP id s62mr149677vka.59.1576638924459;
        Tue, 17 Dec 2019 19:15:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576638924; cv=none;
        d=google.com; s=arc-20160816;
        b=BDIIc5L0zbpbeEPXRru9dzYQQVCtG0HknlZ02l+UkV3Qg5SA8tCuRniT8jbsI6xTwx
         6pZASVn5ocUUc1Ng6HCwfeo1Pl5ogMTYZJ1ZkbpvxLfnxoumZb/yOx4E0JhrlAbakJh7
         2ZAU7OkTMzDJRkkX3MsYyyOvgrPd+x8Tw1u083QocwpgakpHnaIcGN484TP+TXTBbqw9
         URbahfMzny5gfTDVdrfFsTsnVYKTXSmbn+esbvUkeWw0HQEYx/p3Q2+row6fT5+k1juJ
         5N+S0M9mJgSzBk9l1F2HMmHcpNBNIbOTGUdxg4E4bvVbWtEQn3bqkbuWqxfV6PoUjPj9
         fHTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=czNP6LwPZnpp64axcSIR+6sFO5rvWfMnhX184ZSQgOY=;
        b=yZi60aDcfbIU6dPdDZjDYovzu7lnTtVAorkv/F1xkLni+7jQqTDAAxx+dEWdV/2w9D
         QiYo8uBfQDofEITU7HbyocuYVxF4pjroO0tQ83Txz+SKvn7USB/Mh2TXvCwbHlBvSUwV
         5P6Eu0xuaO5B4jEVwmBM51GltKGRtjOTU1ib2LylY3BeTJhFT4mMhrMm3fBonsGpGX6q
         DW9nrH7WJiCq979dGiWaf+b98MhZk9lm0irobS7tUa04FfkKW3JLeUf/9hiwqJSG5DDs
         NgqBauAe9igAaaAZ9qpmH3OOOnVUj1LvL4Oixt3JbmKcjfAvAz+qzRxa9QRExnu42KK6
         t2KA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NX4eemyM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id o19si33624vka.4.2019.12.17.19.15.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 19:15:24 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id 66so535746otd.9
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 19:15:24 -0800 (PST)
X-Received: by 2002:a05:6830:16c6:: with SMTP id l6mr141094otr.186.1576638923829;
        Tue, 17 Dec 2019 19:15:23 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 97sm318300otx.29.2019.12.17.19.15.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 19:15:23 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jan Kara <jack@suse.com>
Cc: linux-ext4@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] ext2: Adjust indentation in ext2_fill_super
Date: Tue, 17 Dec 2019 20:15:19 -0700
Message-Id: <20191218031519.15450-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NX4eemyM;       spf=pass
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

../fs/ext2/super.c:1076:3: warning: misleading indentation; statement is
not part of the previous 'if' [-Wmisleading-indentation]
        sbi->s_groups_count = ((le32_to_cpu(es->s_blocks_count) -
        ^
../fs/ext2/super.c:1074:2: note: previous statement is here
        if (EXT2_BLOCKS_PER_GROUP(sb) == 0)
        ^
1 warning generated.

This warning occurs because there is a space before the tab on this
line. Remove it so that the indentation is consistent with the Linux
kernel coding style and clang no longer warns.

Fixes: 41f04d852e35 ("[PATCH] ext2: fix mounts at 16T")
Link: https://github.com/ClangBuiltLinux/linux/issues/826
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 fs/ext2/super.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/ext2/super.c b/fs/ext2/super.c
index 8643f98e9578..4a4ab683250d 100644
--- a/fs/ext2/super.c
+++ b/fs/ext2/super.c
@@ -1073,9 +1073,9 @@ static int ext2_fill_super(struct super_block *sb, void *data, int silent)
 
 	if (EXT2_BLOCKS_PER_GROUP(sb) == 0)
 		goto cantfind_ext2;
- 	sbi->s_groups_count = ((le32_to_cpu(es->s_blocks_count) -
- 				le32_to_cpu(es->s_first_data_block) - 1)
- 					/ EXT2_BLOCKS_PER_GROUP(sb)) + 1;
+	sbi->s_groups_count = ((le32_to_cpu(es->s_blocks_count) -
+				le32_to_cpu(es->s_first_data_block) - 1)
+					/ EXT2_BLOCKS_PER_GROUP(sb)) + 1;
 	db_count = (sbi->s_groups_count + EXT2_DESC_PER_BLOCK(sb) - 1) /
 		   EXT2_DESC_PER_BLOCK(sb);
 	sbi->s_group_desc = kmalloc_array (db_count,
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218031519.15450-1-natechancellor%40gmail.com.
