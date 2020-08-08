Return-Path: <clang-built-linux+bncBAABBQOWZD4QKGQEWMS5L4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C842415EF
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Aug 2020 07:23:14 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id r62sf6837221oif.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 22:23:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597123393; cv=pass;
        d=google.com; s=arc-20160816;
        b=0mLB6ZSzka5x0XIyvXGoQWFjGMa2kyzVKNdqndnWTQdF4tvpSMdzgDfK+/DSur94p7
         DBNrr4yjjUPj3L4dvd1czC57jN0LSrt3SmrPJQuNqQ5WMjvGBZ0HxubFCzA3JQuSbGDW
         g37w/zqlEHcQQ0wB9ANto7M7gbcwmhORCPlyefQPZBuiAVAjeeIWzD+PCD7uxNoPWUBk
         o/I/5OcqaExyogcOokY4UqhkkQ9jD9Y5MNoOUA5mEVA0uKcTMde6d1S6WLbtCWoqUHQn
         I+ug2h8UP5xbpRueVlaozloev2iLM1VtNEfqhC+D3g9xyIAoxM2MbHVqlzaPJb7Xxy/4
         4l2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=FjVjnwfcFQUjpfOp4AmMFenlNiQSlVjL6iz3LIwdSAE=;
        b=IQyH4ypGIs+2JBufhbMBzGy6de9cypHS+6VgIJlIeEo3G56NtMr5H65f0iOyTpn6X+
         C0NEPZ5TPM2U/afG6djHb8Gn/nRKvfBTC1np9tnUxyMHLXJ/DOYhm3OY1IGXyCm+wKbm
         MWW0CqPsaw57ZZEEXYDY56o91o0k4zOrLoJJiimXFZOhArrqHbQQSpqoI8mrlmO3CPfO
         FzXO4VA9OkwhNd9l22hs90UIVGVL3s/GQYAVKC6FOLXq+5uWU43/XIc0k5xJ++nl5Fdw
         uKrAfk+kkJd4YEn/93QFVxuqIf0su+mVn+poU0tCSeetzKrDOsizt/XCdZ9BJTJU8WO4
         3OlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=WppCPe6B;
       spf=pass (google.com: domain of xianting_tian@126.com designates 220.181.15.112 as permitted sender) smtp.mailfrom=xianting_tian@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FjVjnwfcFQUjpfOp4AmMFenlNiQSlVjL6iz3LIwdSAE=;
        b=Gn3WczbUVNsqBD2cpsgOzPlirfPFM8Q6SkAdzPXu9rjK8u8+1ySrFsJjgbi8RR8zgu
         UBsfV/g/XfnmmBcvSfezM6vhhgO5k1y5bgoHsWLShRc1NTvEkGH1ogaEg8nkQEVZGCAx
         +zQAl3JlWoVDBnkj6Yf3mBg6jXyN/X0zIT/a1eOGISMusjXMJrRFn0WCClxkOZrxIqxw
         epPcvNvp5Yr/BzzLD+K1MIU9khqEXaZu2W2yllTd2VrYt2647uGwxbemX5Vi7B4Yyb/f
         DDeA81Oo63LG3FY+3h1T+28ryedtH7pzciMYLCG9ehPMvrKjrW3JEjXp86cVPjqf0/cj
         a4nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FjVjnwfcFQUjpfOp4AmMFenlNiQSlVjL6iz3LIwdSAE=;
        b=I+7iKXh6aW/Ua1F88Cba8HvvVxMIxisRpJXibiCrMdLocPUj+WYYSzxdAX7coqyRgh
         apPeV/f8d91aByXoZrUNVMTcRP6USpNssppXgBDXIXE9t6L6UGZp3S/mA/rFCpQZNHYE
         gjZldS5nwThX+LV9wRJYAB0/zo83sJA346KNeIY021KvStK5qnYeLiObtQ6sAMWogUgP
         QtKhlYu4cZe4RbYaiojpoGKwly+o353dVgjdfMx06UgRB+9P6LXjpoLLxur3nwrGg5EY
         Tt5/USE+itxHUFdXMg3SXaqWl6BnrgH9cS0pDrfM9xWq+VejMLCILtBmoNQFGFHmljb/
         zozw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ydiaCkU+pfLTpkH1SMhWjsW+o26XGjwReD0u/2XTY14wPWFkG
	vP1YAb436X3y1DAycevdUF0=
X-Google-Smtp-Source: ABdhPJxdcwtbE7L5KSnP9D+376BF6aGcuwQuGLLHxoCUnaYn8W0Wbt/Oa//xpdzhYlwNqGPT4x975w==
X-Received: by 2002:a05:6808:311:: with SMTP id i17mr2332475oie.72.1597123393601;
        Mon, 10 Aug 2020 22:23:13 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:310d:: with SMTP id b13ls4243057ots.0.gmail; Mon,
 10 Aug 2020 22:23:13 -0700 (PDT)
X-Received: by 2002:a9d:3e49:: with SMTP id h9mr3470623otg.87.1597123393409;
        Mon, 10 Aug 2020 22:23:13 -0700 (PDT)
Received: by 2002:aca:c6d3:0:b029:c9:d61a:6c2a with SMTP id w202-20020acac6d30000b02900c9d61a6c2amsoif;
        Sat, 8 Aug 2020 06:46:40 -0700 (PDT)
X-Received: by 2002:a17:90a:c394:: with SMTP id h20mr19424601pjt.22.1596894400514;
        Sat, 08 Aug 2020 06:46:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596894400; cv=none;
        d=google.com; s=arc-20160816;
        b=c2joNqra5s523uWdyioVIYNttl2ndH1RGXf6qWuPB15Grix4yjzvyqcDMeG64ba7to
         Kv/Z9kpXWtXEhgDeL/sLyxGezehTUG6GHfXqCnSSlN7tfBBb1QM3BP/mGlfPHaKFqBoz
         yC+e3WPcEM1I+6IfCgH8TvwINkj2VJmh35x/VHpvDuVir28fW+Td2Hmrz11BMhkhIaMK
         gOUYD8S0Fltlv9Hmp96MR/Uy5t53EGyudcFp0tGK3M3nJyy/oUcx+/K8ixmJsabJ5kQy
         ZcrEABXKEiz7WCjCNjWMHxkptehtrdTt5Yedpfy9hb2YthlhLYGk5JGbRoWLzwodWXFJ
         J3ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=WHXhFzIbKFdevwIdD+ipgUf5p6qP87QN0gbQI3/2iqo=;
        b=tZFB83NNyNKsdqMDxohLDRNCOcyRLDq0/VYdieS5gT/GVQMrH5UNgJjIeJj6UJG98l
         HLtl7y/bNoE9wi/gYpbI6uDY6nBwVq8STIEniBbDV6h0ppz6XZZYZwr1jJ+CalJ91fEJ
         xJHkN5OEimIRm2T9aTHF9pihiyOlONhczRifMBbt/tu2e3azfcMCm+ADJ4zuhOo9h9Qq
         h6lcEr9COvmDHC8be9ZgePnOIRPsblKJhc4LcYsyDi2zkeRh835Tb7hUco/VpoAyz96W
         B1/KSjdYyRIziaY6Q3v7+7Y7tWBBEJItCU4AQ+cvuTAxAIyVHvAoWMlHvmX5uo8oD9Y8
         K2qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=WppCPe6B;
       spf=pass (google.com: domain of xianting_tian@126.com designates 220.181.15.112 as permitted sender) smtp.mailfrom=xianting_tian@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
Received: from m15112.mail.126.com (m15112.mail.126.com. [220.181.15.112])
        by gmr-mx.google.com with ESMTPS id nl1si849771pjb.1.2020.08.08.06.46.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2020 06:46:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of xianting_tian@126.com designates 220.181.15.112 as permitted sender) client-ip=220.181.15.112;
Received: from 192.168.137.133 (unknown [112.10.84.202])
	by smtp2 (Coremail) with SMTP id DMmowABHzSGArC5fXMmZGA--.43065S3;
	Sat, 08 Aug 2020 21:45:38 +0800 (CST)
From: Xianting Tian <xianting_tian@126.com>
To: tytso@mit.edu,
	adilger.kernel@dilger.ca
Cc: linux-ext4@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] ext4: use kmemdup_nul() instead of kstrndup()
Date: Sat,  8 Aug 2020 09:45:36 -0400
Message-Id: <1596894336-49052-1-git-send-email-xianting_tian@126.com>
X-Mailer: git-send-email 1.8.3.1
X-CM-TRANSID: DMmowABHzSGArC5fXMmZGA--.43065S3
X-Coremail-Antispam: 1Uf129KBjvdXoW7JryrZFy5Kw4DWrW3WryfZwb_yoW3uFX_XF
	WxJF4DWryftr4IkF1Fkay5tFsYkrs2vr13Xan3Ary5Xw1qq3WYgw1DZry7XF98Wr43JFZ8
	u34kJrnFqrn2vjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8G2NJUUUUU==
X-Originating-IP: [112.10.84.202]
X-CM-SenderInfo: h0ld03plqjs3xldqqiyswou0bp/1tbi3AJ6pFpD-WPjfAAAsY
X-Original-Sender: xianting_tian@126.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@126.com header.s=s110527 header.b=WppCPe6B;       spf=pass
 (google.com: domain of xianting_tian@126.com designates 220.181.15.112 as
 permitted sender) smtp.mailfrom=xianting_tian@126.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=126.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

kmemdup_nul() is more efficient than kmemdup_nul() if
the size is known exactly.

The description of kstrndup() already suggested:
Note: Use kmemdup_nul() instead if the size is known exactly.

Signed-off-by: Xianting Tian <xianting_tian@126.com>
---
 fs/ext4/super.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ext4/super.c b/fs/ext4/super.c
index 330957e..be37556 100644
--- a/fs/ext4/super.c
+++ b/fs/ext4/super.c
@@ -4016,7 +4016,7 @@ static int ext4_fill_super(struct super_block *sb, void *data, int silent)
 	}
 
 	if (sbi->s_es->s_mount_opts[0]) {
-		char *s_mount_opts = kstrndup(sbi->s_es->s_mount_opts,
+		char *s_mount_opts = kmemdup_nul(sbi->s_es->s_mount_opts,
 					      sizeof(sbi->s_es->s_mount_opts),
 					      GFP_KERNEL);
 		if (!s_mount_opts)
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1596894336-49052-1-git-send-email-xianting_tian%40126.com.
