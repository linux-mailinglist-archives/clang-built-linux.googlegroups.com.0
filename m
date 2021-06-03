Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBO5J4SCQMGQEH4WH2UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id D93C139A96D
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 19:43:24 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id b7-20020a1709026507b0290103ee45ae76sf2975384plk.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 10:43:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622742203; cv=pass;
        d=google.com; s=arc-20160816;
        b=v7q/TaCBWpw7MQfw3125CdRe1hk8ygV7MQ4SNP/GLOOufeaaUWZ18QK4x5tG50qygF
         z857JYmX12ZiZnL48OA3d4nXv7zYdAWi2vGw8j2ZCYCzU3qhyFLUW/VZiaBeUZXpdb4C
         PBIDJL67k5B1ebsY2fBt7yK9/iLAYqRUu3Ggu7WbEVWXzby0iU6qBHujZrwJ5uksgW0M
         KjWUdmCH9XNRmnFvdjuHdD/OLEYuOyT04Whb8aZ/JddNhlI4Ha8woHUpW3/u6hKN50m6
         ZAf9oHpoxg+EbkjPz883KLNpY2bSq0dEaiCyhr3ezGmk1rY9dV283E5vqSi6PwTItqqq
         pDug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Z5MrIosM0r/66YtsuF8Q7r0+QCx6JFjkh66rAPyN1s4=;
        b=YUHd748FjaxTm23qL1Lt6U08QWZO5PrI4u220FUN1cuBYvEOHJKsjwuqz6KJJLrDOa
         VI2pw5RxR2G45WzpozetcEFP2FiIKhU1I9Bfic+Ge7+jNcl/AnJoccrEDWiLD5vl5GcH
         kZ0IbHDiJYwWq0fVNqXhz75vpl9C83+zTtWgW2rz9c/XCJq5ufefNKcrlfJJu2KDaGRZ
         aBW8Ie9ZFNuxAe73DFwEsrfCwdmfvCwLX/+ewox/UGkYJV50BJiQOwOg1g98zFrRnmK2
         GRvc2/t3rnvvswawc5zVGG6m5+N0jh9YS+ucw8568JvnLf7pVgqX00LIjtXybII5BQr9
         46Zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NkPOeYGr;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z5MrIosM0r/66YtsuF8Q7r0+QCx6JFjkh66rAPyN1s4=;
        b=dthT2tW957Job5XWGkmjsXzcloeUvQqut3jQOwmJ+IFGG71yTQnn04lqSdXOerakq5
         dUSlUTG5vuML2SMdoBG6nhMCZ0PeggAY1d6kYee3xvI3/k8sBCaIihuq204WDg52KwK3
         RCjQka5oBlrcDpxY/rXQ0huQw3j5xku5SABmadI/rDD+xJmFkEf6zmIXICgnegPxrd1A
         yEPQKfqWbzvImsNWYZZ7WyOPWtbKpXBXDyKat5QefWnPlE/HekW6UzGhxxUH+R2bqqYt
         xjzT1WR0xyYULBw/bsdrym2bGj1GGJGCzX7Fg7q8Xx9ilgW0jSDMzdoOTcescUTWWioc
         t07w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z5MrIosM0r/66YtsuF8Q7r0+QCx6JFjkh66rAPyN1s4=;
        b=KMBAwmS9mwO5VmpQiocIlWdfMgYBeaxclidfi4xQaYe1GHQZjIzthQv6cxiF5gbmsj
         nvGRIQkKF8Spi2sxeKDFqezUd2dtRgx+Mk0uTQjy+18BfoRAfnAo8iuxLmUzLkBMsJuu
         dqTtVxXQk3ZU2VSehzvw1Fxqvp2MrMB27P8fXs/pFRkhYPsIJYEtD+8LMRXL6ChsKvj/
         TWi16Spn33wThKmzDmrheB0mZ0q0D4WEzSr8PwOEfyrcjjrEEqr/RO6qEapLT15nPDzD
         c2NtG/uUcyI3od6zCNJl3vnnpfe/cpYLwLoHLv5Q1i/REjbaINB4odut5uFVkmASA6CI
         Z4fA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TzzPDHJu+945v8Tw5qWx1LSXJRE7dP1P4pf2GEwrI2E8xzNqH
	r/vygdNzxUuyQG1LD/d0Z7g=
X-Google-Smtp-Source: ABdhPJy833ZB0aoQKE367YR6UwvpelNda3F0nKbNo9JGjpC8Mhm10T8lChVaO3+1EPSZcnbLBW0cKg==
X-Received: by 2002:a17:90b:252:: with SMTP id fz18mr12612730pjb.52.1622742203294;
        Thu, 03 Jun 2021 10:43:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2848:: with SMTP id p8ls3788956pjf.0.canary-gmail;
 Thu, 03 Jun 2021 10:43:22 -0700 (PDT)
X-Received: by 2002:a17:902:7c03:b029:f0:bbde:fc1e with SMTP id x3-20020a1709027c03b02900f0bbdefc1emr276078pll.57.1622742202793;
        Thu, 03 Jun 2021 10:43:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622742202; cv=none;
        d=google.com; s=arc-20160816;
        b=MEcFUsRt8kcqNlYNLCz8X6wpf0APNekBGLVfstbl70VrBNzwE4SHjoiadrM70dNpOF
         6dxaMkZ1NpXjDBtT4OrP5/CwNCZOsC+AwxUArIet/VSPrX7lckesHfzDKNDuRv+U7mAl
         SAdTV5hIMZ9dn96tPFlbor7Omwj40dtBRu8KpdWDEZWX4RaYNvk2nRueGoGohi0gR/Qo
         KjIMKhILqEOR8Br3tKZVJR4ZrcmA2Xpp9cgcdWidtbWJ5Hj79jhsyqMV4zUR+9kAJMog
         rpmuNhDRj4+Rotn4tVRxAOn5NyGUHhTS34Va83n5CjnnlbqQIx7+Zr6Upwizxv31mNHC
         TeKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=t+4DaaYrwMJrdBhBU8EodUD0aKFXqUSVYl1XFJRKCAs=;
        b=wqf0wbPjTJ+MyGmCfnank69uLcp61s1uyZudxvfuLojfrbZFehXHoydTM3D13W5rSz
         /vKQvP7nfz6wtPriJDQWjSd1qXgC+TUliFXrnxtH/eFjVewq5rSqHdDHOsoqMMeMojgU
         pmS6iGr/eIFIxadMwKzxq7JNHv9NPx25OIu7rTJUCSUpBebCPjeXa+bmQET8zugH8a2J
         xeQTE+ns6+X0UK0cg0Pq1EcGJui8FyOrOicYULlKqn911BwedG//HjNYPmqZREUEApBx
         D8mmmOsZIUfnYzCJg99p54G0CecjAHx9E8Jq6D4ctnBzaJqOYNX9uORTHcI0kCUA22sV
         bbEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NkPOeYGr;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ce15si59169pjb.3.2021.06.03.10.43.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Jun 2021 10:43:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C0C3D610A2;
	Thu,  3 Jun 2021 17:43:20 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Chris Mason <clm@fb.com>,
	Josef Bacik <josef@toxicpanda.com>,
	David Sterba <dsterba@suse.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Nikolay Borisov <nborisov@suse.com>,
	linux-btrfs@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] btrfs: Remove total_data_size variable in btrfs_batch_insert_items()
Date: Thu,  3 Jun 2021 10:43:11 -0700
Message-Id: <20210603174311.1008645-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.rc3
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=NkPOeYGr;       spf=pass
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

clang warns:

fs/btrfs/delayed-inode.c:684:6: warning: variable 'total_data_size' set
but not used [-Wunused-but-set-variable]
        int total_data_size = 0, total_size = 0;
            ^
1 warning generated.

This variable's value has been unused since commit fc0d82e103c7 ("btrfs:
sink total_data parameter in setup_items_for_insert"). Eliminate it.

Fixes: fc0d82e103c7 ("btrfs: sink total_data parameter in setup_items_for_insert")
Link: https://github.com/ClangBuiltLinux/linux/issues/1391
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 fs/btrfs/delayed-inode.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/btrfs/delayed-inode.c b/fs/btrfs/delayed-inode.c
index 2c18ed23aa27..257c1e18abd4 100644
--- a/fs/btrfs/delayed-inode.c
+++ b/fs/btrfs/delayed-inode.c
@@ -681,7 +681,7 @@ static int btrfs_batch_insert_items(struct btrfs_root *root,
 {
 	struct btrfs_delayed_item *curr, *next;
 	int free_space;
-	int total_data_size = 0, total_size = 0;
+	int total_size = 0;
 	struct extent_buffer *leaf;
 	char *data_ptr;
 	struct btrfs_key *keys;
@@ -706,7 +706,6 @@ static int btrfs_batch_insert_items(struct btrfs_root *root,
 	 */
 	while (total_size + next->data_len + sizeof(struct btrfs_item) <=
 	       free_space) {
-		total_data_size += next->data_len;
 		total_size += next->data_len + sizeof(struct btrfs_item);
 		list_add_tail(&next->tree_list, &head);
 		nitems++;

base-commit: e1bde17d15921cc866d4ad10a16ce77487516bf7
-- 
2.32.0.rc3

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210603174311.1008645-1-nathan%40kernel.org.
