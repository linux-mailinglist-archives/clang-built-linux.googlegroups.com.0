Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTNV43XQKGQEX6LU6BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A6A123DC3
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 04:19:42 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id 7sf449914ybc.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 19:19:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576639181; cv=pass;
        d=google.com; s=arc-20160816;
        b=q3lJGxQiTj1Zwx0SYfUpK1n3ewyIEFQ5nWN6ZWlx7Kr4cJ+jiquyTmpQYhgvTKUYC7
         A4tl5pTHLoHi2YSNnYooW/JrzhxS+Msm0BzHibh+vQqTM+EW8pRULEdlm3Quh+sbfd23
         ZGb1P4OWWMyl9XxhDIqqiJMOPzkVA43I/WOW9Rn8O5gXVkl98QAgMN0CM2GTsNglLNXw
         eF7lnryjZmda8RAfQBy5eGEC12qG1vDSLwmfT0GKUG8E3mfuEQXw2iVeZowR9TqySmH7
         8Khtb6J83Gzka0sd95bkWefvF1a3VV9/kFR12Q8d0Pj+xJ6ER81YxrClc/vE7DEAWraj
         Geug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=9PA5T84ztqfhPRw6eoJgNHyEd3BNpN9fd7NM/QiLOHE=;
        b=Qc+6CYBNDA06rKIYRgthEiO10yDR9Gm62A6FEigce2fzGEEC+uFrgWvFZR/qDruevR
         asxubNcIsIAFVuJUDpf5Mvb30bappOGhsalawIg7Fe0Ck9Ug/ySVC4jA6hloU7kE0XU3
         v8HdHLQ32iM0JprwCTgHTm0GAu8sfK9nVMA1n4F5XsBJONnHLksTITRHaFqGmMB/EHZz
         da1+vWttlDhTrql7M9DoSjBi5lvBQwve01hhE3MEH9C0XKwGPOTum06dVCfhfbujSTm8
         a38HjoP1H0zCP7aia4yO+dZR3/8QwvX9M9I5Ap+Rw4SBE9LcTGOgzrbBlOss8bUc4E3U
         pwNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O5ww+RZk;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9PA5T84ztqfhPRw6eoJgNHyEd3BNpN9fd7NM/QiLOHE=;
        b=aqjTS06vPalMv+6XoIE/RWsnAF6pcP1xxZU5OYDz+OxpMIP3H7yUxHqWQepYr2BoZn
         HDiQ9SifoZhuOH+8qoZ8DqooVtwhhPTyDuOLu8FELMWlx7lkyqFl6259jh6VhLSCJACP
         nEPIUEdO971liOl8DWtLIDyacL3k2A6FKwHypDBLfXN+WME8O2smok+eQ3Wv2AziH26R
         m+bgOd+07va7IO/dsVA+DUR/HTyZpPQF5ysEe+Mrqau68soDWLRuAEh0ViAX+bf6ZxLj
         pdMsC1fUrsolEg+C54OGjwYWS1wkyDZOVYGz6XqNsSrgymnXHP1t1gFafNhuZXAwl7YF
         5Cxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9PA5T84ztqfhPRw6eoJgNHyEd3BNpN9fd7NM/QiLOHE=;
        b=ZCtnL/96YZxTn02lcT6xmU2WGj1ijtsodpIDEvGryBpP1EDWO0X2329zjEJxJWYve6
         PWO13UeEgkm9/bhMneT/hePJShONzSVD6nvJnm7j9IdvBX5nXd9OtErQldtdf2K2Qxdi
         6gyAvn4dfVSX0I200X1Xa1tBgfH5w5TS3WunXjlp96qUzNBMtQ8GLPOPnSLwn4ynttIK
         qRt3dG/qlQ3o+j+Q+vZY0MTbhREWkm3ZeLZB9ZYrPN85Vidb0GzIGewz5y1aJBjuQQ5j
         DxkQLKo/qgN4/hyzFTHYnPyj9KMiaIfsSOH+44gvv4GfNgjSTR4qMjJZlN0D3lUElLkG
         JYTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9PA5T84ztqfhPRw6eoJgNHyEd3BNpN9fd7NM/QiLOHE=;
        b=SnbTg07xzTu9RLgOG/Zt4OYDFdw8akjNVi7jYdXJQC3+7EED4qj1r4OHsFQhS1RhXK
         4f6bGbSwvTc9Mb4Op3yQ0th9/M6RQydhN33Wij4l6krBOngQctAq5ylraR0DqStjU4IC
         XWaOp5zjjGYaVeTYkGUxlceWDJPTxVjrtGPlJL3dYOhyMk8MeORkK/XPnvbKtkZKf7Fg
         ESIVYu1kCf/UzPlssOKFJap2yKiu+ZUz8YZfHilFV34kHsvMbSaObZo8sKYo73mxw5TK
         LTynmWo/XL6kk5JxdMepgq4c8wSOAbJpHCnfUm2qwCcsKA1O7ATWz+rd3k8D6mXS+akd
         //Gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUs96LkdqVqDAgNRV+AK90Qk/Zz3A94BqxLxZ9H/2VsA3VxTscS
	MuDAVvv5aY6dOPSXtIj07ZQ=
X-Google-Smtp-Source: APXvYqxTqzTsjmJdfq2smqH8xwuJXY9AJyF0gvYB/q4ZyDuP6y3mrr7TbXyrh6q0JsigiCkl6kNTbQ==
X-Received: by 2002:a0d:f501:: with SMTP id e1mr350650ywf.448.1576639181234;
        Tue, 17 Dec 2019 19:19:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:8644:: with SMTP id w65ls121146ywf.3.gmail; Tue, 17 Dec
 2019 19:19:40 -0800 (PST)
X-Received: by 2002:a0d:cc55:: with SMTP id o82mr365601ywd.426.1576639180805;
        Tue, 17 Dec 2019 19:19:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576639180; cv=none;
        d=google.com; s=arc-20160816;
        b=jiadV4l+UpSyMPf08uubb9IyTZd66ZbDLItTfYccaKnFQVEyZe3TFCja1NF7DmvVth
         n5lrHWPCIY9OvXajNudjodX8BbkkuPIo4QgXVQlyQysloBaRPvaIy33aQVLNKfpS3Lym
         Ohp1YAjLyfHyVLTz0Y3f8I6i6yRkMScW9lgvJk6cmNgHCsET+8u9dCS49XyTy038MFkw
         0PmEccOwrd+xOB6pt2zyu5J7GmuSB4ott/VKqiPmTFfRU4u1GA3b0o4OGzAIrGHWYC1P
         Dnzh5S/34pNgIpz68a7/d8hC8vz2mB8I8ID+hvBTOsLPlBfpauT+v+5mTULjNqrdaxC6
         8qAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0NidlF/CBLeinh3cp0FnzdKgnGEjo9SYU3o+e1k4btg=;
        b=ZvA8Y55RSVz6O26/WZW6otfwcPz/r/VKgDhFHx6MHJVxwRkcCuxLwLh92VH4cBipqB
         3gYwP9pzxG1N+eCvo8RctGjsobDjTCnR4csIzk0E0oMdwT93IZpCKJdm38oECGp2d1eC
         NG/KJHtsdqor8xRz8Sl8pjwLYQ1tkhwMZ0dOC51fty09opbeQaL9+4tVEhip5CGLUnF9
         4gPRfIXfl9tteL/PuLVuxOHuxKoCCb8PpfQnF8Hmf7iu4jC+QE+Am83ADjYOfIxTJpj9
         84q6VflZZQLEzXELKH8YchnL10cIgnLgJhr+KVn61fhJStA0zsDA0Fyr/n/mO5DFdxkA
         NxbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O5ww+RZk;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id r1si63523ybr.3.2019.12.17.19.19.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 19:19:40 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id i15so555881oto.7
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 19:19:40 -0800 (PST)
X-Received: by 2002:a9d:73ca:: with SMTP id m10mr97183otk.289.1576639180067;
        Tue, 17 Dec 2019 19:19:40 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id t196sm111515oie.11.2019.12.17.19.19.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 19:19:39 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jan Kara <jack@suse.com>
Cc: linux-ext4@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v2] ext2: Adjust indentation in ext2_fill_super
Date: Tue, 17 Dec 2019 20:19:31 -0700
Message-Id: <20191218031930.31393-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218031519.15450-1-natechancellor@gmail.com>
References: <20191218031519.15450-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=O5ww+RZk;       spf=pass
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
Link: https://github.com/ClangBuiltLinux/linux/issues/827
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Adjust link to point to the right issue.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218031930.31393-1-natechancellor%40gmail.com.
