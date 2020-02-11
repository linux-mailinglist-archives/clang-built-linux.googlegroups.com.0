Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNP3RHZAKGQEJHE7XDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A41E158C6D
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 11:11:03 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id z201sf6564556iof.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 02:11:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581415862; cv=pass;
        d=google.com; s=arc-20160816;
        b=0kpjqy+RcEJP1cxh/UAyVFIM4wWc3V2PJ5NPR0TQegHgwwzyA/oM4Km15yo34N4Shl
         /PVvkOivuuhS/reIFWhSPJb1mSfcndGq8L5syBCg6CUSnPgu8Mxx5uCK4p7XDPWgrnx/
         v27T2lNgtFPYRPQVxl5QYcbOdsNWo3majSXs6tCOcu0yfWCpqjjjQ0dBuFnMvScgQd80
         wnmJ5cis8MvRyUOJk874Szc/om5R140ABbVLzGrnzFvT+q7KgSN8hUe39QDCTiJgizB3
         wVOq9js6k4hBH5efDbrywqB2sDZ40vbMzICkROh9IZFHGEYnfPsnP3Lv9u3lX0+F4Q/a
         jEUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=3OkgMJhhh7Tyx5LnEf/B+HMn6CuQ71YYYSTW47cgMnA=;
        b=aoHG+fcAeNztuHBG4DPze6HDYcvIM8uCkCGsLf9Y+oHDCoGZujoNERJW5vo5C/pduW
         POVWt2RpIsoSVLr6xY/6XvOivVsjh4WHOEbAFE3FJrSjPYUoCMXASFRMqxHKYqcFi79f
         miI5dG6ooN1BIR3L2JE+Z/e4X/orl/WsearyLqxLRjhe7dOsQhBpoc8wGyl5xPtw0oRu
         CmSaHwlDB1XKohYsZXojlBEVzfuPnzktd2STAlw7+yl8v6B+qgsACKTqiZz2/kmUw+6F
         8bJRwI5Mw5pTnhdoZHxiLJVpcB2wBq7/rYr7WaZ6RsjfDujjOgda/mZiuyi39NXzI3Qd
         GPNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jeKzX2pj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3OkgMJhhh7Tyx5LnEf/B+HMn6CuQ71YYYSTW47cgMnA=;
        b=goLp6JdGagu82STGpU+szgz7b2mTHOAF6XFsEG7ZFySaTCJtovWSYcI/i12PgJLBx1
         cnjTB+0MNJkhcNURDSoXQblG43RXPyEH3BdbwLGfit2V73dLvufS1nizqLzDGG9gsx6k
         oPr7nB6KdgEea3HjG5OVoXlekjHWNaoU6XZQbCOxfatiluU+RGVzFZDEMffRUSDuK4Qm
         PoPGwC65UUaJ5q6DvWfhGCgg62HRdizB92uZacKAPwDBhXIzmfi04uMb6oKwLShk43YU
         Sa0mgotESDyjAdjXAKeqhK2TUqFVEwoM5z1qp7vA74UClPmHFMTNUix8Td+kUaMmO6KP
         jVTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3OkgMJhhh7Tyx5LnEf/B+HMn6CuQ71YYYSTW47cgMnA=;
        b=rmgHmHLvcflGfuydV1xaHKIlUHCleEOh5Qw6V+F53u5b8WOV4bFWM+Jv9W0CuqEjRR
         pTAF0MT+6U2M4f+2yAflvygcw5VLvwZzCViE82F1jAMBDiB4Ph5EgcNdHqO8nj8LUGvn
         ksepfI+PMA4zSqZJz7AGOZ+Y2KpScXo7z44C0Bn46ruobFiz2XG/vVSFCmuvZfNHTFfZ
         imIozBYg1wY9eq253wAardKvbwMZwdUsqvL4lnvN7FdTPSkJCqDCbQWtbsvqkG+9lruS
         TbZYWOU/0C17cyLofuWe7jPR5YdGpG5lY20AzCooFScO0o3Algn6bVdShIA2gb+qiA0g
         wdxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3OkgMJhhh7Tyx5LnEf/B+HMn6CuQ71YYYSTW47cgMnA=;
        b=IKGNOAA2Yh2Gn3mgyuxgMLXQOi93zpmq9UkptgPfp+xOddQQAUOizh56lTLSDqADek
         WhRMAm5Wzz+6dXPCYN/73BgwJwHUiRZiLF6h93NuP/q7m+Cq32wb5NZv/X0nK/kUWlc/
         JjwImKyfy0aMX9Db0TLP33HOj6i3Upg1flYnO0tZ+c9ZVD1hXZY8Bjtjl6sVNBefBQdG
         TEiZdje2U0uAbAlRpJZmdprbJ2KxROETM68bo9WKVQyfBeFR0t+4feN7N8Lg6kwsKZm0
         6jST03i2+uRGQq1/yQAgbICV6Ij7jrSDh0OPg1xu7+LbzWl4okHWeMOHnUcXN6ZzRjwy
         JbVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVkJROtJ+RHYqdj+7DQ4jHveIL2mFHaxeI5Bo5rkYQF3a6gTFJC
	KP2F0WLNdV3jf3aOhYNzl+o=
X-Google-Smtp-Source: APXvYqxQELEpZIlIWyE6xam7yeDUgh3ZwowmAPuJO7zO8UL1JzuvwxdtcYQJ37ZI3sLdiv2Nvto4Qg==
X-Received: by 2002:a92:7301:: with SMTP id o1mr5570982ilc.272.1581415861900;
        Tue, 11 Feb 2020 02:11:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:1107:: with SMTP id 7ls1126534jaf.4.gmail; Tue, 11 Feb
 2020 02:11:01 -0800 (PST)
X-Received: by 2002:a17:90a:5285:: with SMTP id w5mr2797865pjh.77.1581415861505;
        Tue, 11 Feb 2020 02:11:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581415861; cv=none;
        d=google.com; s=arc-20160816;
        b=UARSKXHjBAl817VToXOHN9gkrLsRh7rOGrs+l6qgWa/+DNwPpYUDOv8xqYmkUa3m/u
         p9vMHQ4Z2Mw8fS8HZq86erp2u2vs4PHZ3JH+Fix+R4o90oxP4UG6O07CV/QdA/nViLu+
         xkLXs4bLMIjw3b6DQHOs8WuraofFGtCUEQAXTqEu+QU1ePHkXrB1rrxpbmXDuCxwRK5F
         h4WL127WYsqlIKz3fC71oTxzpZmIblXLvl34+Fmwl20IYh+z+ylQ2T8C2DAJfvzuPj6U
         edPe2Lal3eiFIHODXn78db4SEhNnHnhcR5wkQjkv8G0ti7ZzQ1OzTKfS1N8Hzp3RNZX1
         /1eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Iq4jf8D4BlGwMwfYwEa5PDekOb8/7AG+Xkp6yi0y1jE=;
        b=jjCuoLWJG8FoQkizF6dhH4to3dRatxN+lT+E1nfgtx7KyN3kA7E0NC+9EzijxyKNGR
         PBiw3k81WBE1ElPHZGPFNNVJ2mfoL7SVYbfcdzyrzkFKBxfOfXp8rGUqGMvMjQsEWbyL
         1ow/lSpqQ0sWxI3fICTMS2aq7jj4DW/7mTjTJq8MnXCLVIZ575ujmq6QrNmSWGMMafem
         yysvYH57Dsp9SpYsGgQ6VGxaE66oHQCbqOn/+KJX3stk+fN13ZovSUW+u3yINPZGcgEr
         OATsI7WrC5iEYcEJQXOQ41WJzMVCkaPyTuum0O+wNF9sSbifOOuQ57QZW5RVE7y8Qra8
         S0pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jeKzX2pj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id f3si49142pjw.0.2020.02.11.02.11.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 02:11:01 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id u131so5453338pgc.10
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 02:11:01 -0800 (PST)
X-Received: by 2002:a63:5f17:: with SMTP id t23mr6204352pgb.91.1581415860788;
        Tue, 11 Feb 2020 02:11:00 -0800 (PST)
Received: from Ryzen-7-3700X.localdomain ([192.200.24.85])
        by smtp.gmail.com with ESMTPSA id v9sm2429853pja.26.2020.02.11.02.10.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2020 02:11:00 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: clang-built-linux@googlegroups.com
Cc: Dmitry Vyukov <dvyukov@google.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH RFC 2/6] kernel/extable: Wrap section comparison in sort_main_extable with COMPARE_SECTIONS
Date: Tue, 11 Feb 2020 03:10:39 -0700
Message-Id: <20200211101043.3910-3-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200211101043.3910-1-natechancellor@gmail.com>
References: <20200211101043.3910-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jeKzX2pj;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

../kernel/extable.c:37:52: warning: array comparison always evaluates to
a constant [-Wtautological-compare]
        if (main_extable_sort_needed && __stop___ex_table > __start___ex_table) {
                                                          ^
1 warning generated.

These are not true arrays, they are linker defined symbols, which are
just addresses so there is not a real issue here. Use the
COMPARE_SECTIONS macro to silence this warning by casting the linker
defined symbols to unsigned long, which keeps the logic the same.

Link: https://github.com/ClangBuiltLinux/linux/issues/765
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 kernel/extable.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/kernel/extable.c b/kernel/extable.c
index a0024f27d3a1..17bf4ccb9de9 100644
--- a/kernel/extable.c
+++ b/kernel/extable.c
@@ -34,7 +34,8 @@ u32 __initdata __visible main_extable_sort_needed = 1;
 /* Sort the kernel's built-in exception table */
 void __init sort_main_extable(void)
 {
-	if (main_extable_sort_needed && __stop___ex_table > __start___ex_table) {
+	if (main_extable_sort_needed &&
+	    COMPARE_SECTIONS(__stop___ex_table, >, __start___ex_table)) {
 		pr_notice("Sorting __ex_table...\n");
 		sort_extable(__start___ex_table, __stop___ex_table);
 	}
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200211101043.3910-3-natechancellor%40gmail.com.
