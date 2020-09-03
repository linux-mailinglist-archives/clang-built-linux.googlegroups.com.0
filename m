Return-Path: <clang-built-linux+bncBC27X66SWQMBBSUFYT5AKGQESQQEBMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBB025C362
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 16:50:52 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id v16sf1679548qka.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 07:50:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599144651; cv=pass;
        d=google.com; s=arc-20160816;
        b=nKByZHM+CiM9bDLCikZ+ZqMwS46vO5IC2ZbfbUQ2KMkEeZw93wXx7A5ECjS+m8FMtd
         8lGeI6681yqIWnA2/gZpdtcZhB6CWiQ52DFU70FC8zvPdU3a47SVjSWQ6LewZItHKSfN
         Vk1hybYWwk3FYnd99koDbyW0KWIJn33mwf7V9UJk2ZDI34UGrx3NbjgYjZs0sHnx9Ezt
         MvHk5QPMmGdJ5eq3Ilo0BWf6qRzePdb8iQEw7q5f5u3g0BTMPysT+hAqgyIXRVJGw4dS
         leQp7pb2mjDSq6vadEoSBrS3wL0EHXrpK6tmC0tle3BbECJUWfVwcWoB3IBmbz9JLlth
         pK0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=wtjtsveCkKvmklt9TpF+cGMX5qPmBWDgEg/7og3zY5s=;
        b=eakHwpS4qJXXJ9W4ycp1vUjlAfQKvhBqT9ZzsVme1HXxojRk0zYNLJ2s9a0KT0qaeg
         5q1mkkTOPuHEsjgblb+IwG+uEaxc8a14MixBQHbTb8nVf/xoAx4Rj3ef1cWatrRx/LXk
         prjAJJu5A5z8CLVXr/t/jHXTDU6pOqEHWYJR+5pvwYp6OaS4PnzPRdx6Mjske8KdHrj6
         YYZVBYL/tjIEbd1bxuGhd4MBR9tfA2HZU9yEP+jnjylo85Kn6ZymBVf5gZMPs0c2Z6Js
         wc4pLmFenxDPg4ffml0QUBBHaJhM97Q3UJl4t1ZehHB7cwgmzc7E9XBiOS+6SPyaGuh8
         kVRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=K6RXmuav;
       spf=pass (google.com: domain of trix@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wtjtsveCkKvmklt9TpF+cGMX5qPmBWDgEg/7og3zY5s=;
        b=kZA3nYDSMoBYQKgaY2dDJdYp7r7CXaNuojG6HoX2N29TW3Kb6s2aP4Be66CjVF6y8k
         0/trULq+ZsG/4xBDFeDteradIiC1a9eWDkQONKLzzI+j4lQih4GyrG06nBKCtriqpUAV
         42pn1ESoa199KoVROLeVMrHXev2b8XLIzuodC8wE22sH9qcO8/mS7uJyksYWCp6pmKko
         o67RveQQGvcih7lCK3OqvX80LsSkrVD+mE5N959l4SaG7x50n4jh5jNFOygQSWIF+rD3
         gnhnpNd47czQDfqv1wpz+43hnhtaziHbahDaFBDOc47b+Ylfc0uEAL2ceMI4gQ8QIsW/
         jqtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wtjtsveCkKvmklt9TpF+cGMX5qPmBWDgEg/7og3zY5s=;
        b=KlldVC+qp22bntG4plLarmnQoc1fO18qfAyZz4l0g4JnhxI7hL1lufjqzZMXTffegd
         GVUwx8oB7HnB8SBUZjWvLWuu85JNMivPRWg7Mdp3KvUNGtIIHL2nYUGM4e0TUiPPqccI
         WcMx6mlx0N/oWffRxosT4sVNGGvTwd+64/b03SA7eN4BtC8MH2OeV6ykclXefbGLU9rC
         sNmYNu1MnP/vdBLmq/PCDmBD8tTtlcNy6dK6QVF4Apsl7NL9AeTroBvLZhp/E0miUDD4
         IBXAJrE7eeBaOvXffnyuASYcs5lzmJRwplz5sIIwwNRCLbtuc9E6fOE+V/T24m14B5m0
         dYqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gv946l1NMfhuItBIokh1hy6idVKrzBl+qLeAyPWGlYE3B+h9z
	iUzE2M5iz3c0y3NpxAMtvSY=
X-Google-Smtp-Source: ABdhPJwfVK5Ncpcv58F/mECDu6SkaDddg1V5a3gremSyqZYUt7a7jV6WFaiuMSMrCh+jO9VP5FvNTA==
X-Received: by 2002:a0c:8b5d:: with SMTP id d29mr3373785qvc.172.1599144651123;
        Thu, 03 Sep 2020 07:50:51 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:146b:: with SMTP id j11ls2536152qkl.0.gmail; Thu,
 03 Sep 2020 07:50:50 -0700 (PDT)
X-Received: by 2002:a37:67c1:: with SMTP id b184mr3515889qkc.199.1599144650705;
        Thu, 03 Sep 2020 07:50:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599144650; cv=none;
        d=google.com; s=arc-20160816;
        b=nezM4Cfe6icYCCXlaXP/+l7TwpFkSFjWPUhHcDWSXGmkN9Pp0UEnWa+kKtE5wb8cBO
         2BbfQIt3uokz+4qPYKUhsiFh0wMVpsImfS+4gSc7aonyNyqw8yMmmXh2W15HPFC7iRxa
         9EVqdCfPouxqfTK9FxOs6PtX6awmq8ciAxcbYN0XeUHjE+4shzoJGzVy6D7L+fdh1pSx
         TGCZzHnarOqxaAVN+ckj9kXY5HIfVrIuo2LV1UZ9ZYXhv/BDQV5R4PHB9B2e6vG+S/tN
         g204DXwX3qaIFPeGPTOHjpKYAuGd478ikVxuiyEy8EgygzHMHQk0ejIcKGCYa5jYKvTE
         gWag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=1FPRhJoWjqG8+gQHE9bU9UzjjoLvgSrA9NVzRzJ0CRg=;
        b=TPKx97OmFjaNCZhAkzpsfr1B/ZSffmA3MxtgGtXhC6FoDzRHzwW0GiP4rX9a3YsuPc
         5ke8YiECWH1PAoNKCtZiZWRLGQSaEsu1n0k2fAsst0Z0osypz8dVRl0cn4qIVhRCYAx9
         LISVY4pGpp9p0s5Mww4EDsRNltfRPUhYVv0N35qS+ycfw1YSt+1w4Ca2w0j7eoAOXqlj
         8D35RJhyw5NzwyKJT+Vr3FFm43XjSTBYVq0S6oQ1P79DCBfRxfXf5ffhhCuPw1IHMxcW
         kpWsHOSU/VP+PkO8xj6ED0hM7eM4bmWpXu1ERYTN/F5L6sUq/1B+sJh2Yggsc9EE6rGi
         s9pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=K6RXmuav;
       spf=pass (google.com: domain of trix@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id k6si228736qkg.6.2020.09.03.07.50.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Sep 2020 07:50:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-271-dxRC54rSPl2ZvWGwlNmpeA-1; Thu, 03 Sep 2020 10:50:48 -0400
X-MC-Unique: dxRC54rSPl2ZvWGwlNmpeA-1
Received: by mail-io1-f69.google.com with SMTP id m4so2179784iov.19
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 07:50:48 -0700 (PDT)
X-Received: by 2002:a5d:8042:: with SMTP id b2mr3475467ior.60.1599144648122;
        Thu, 03 Sep 2020 07:50:48 -0700 (PDT)
X-Received: by 2002:a5d:8042:: with SMTP id b2mr3475460ior.60.1599144647939;
        Thu, 03 Sep 2020 07:50:47 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id c7sm1515541ilk.49.2020.09.03.07.50.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 07:50:47 -0700 (PDT)
From: trix@redhat.com
To: mchehab@kernel.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	brad@nextdimension.cc,
	mkrufky@linuxtv.org
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] media: em28xx: fix function pointer check
Date: Thu,  3 Sep 2020 07:50:38 -0700
Message-Id: <20200903145038.20076-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=K6RXmuav;
       spf=pass (google.com: domain of trix@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Tom Rix <trix@redhat.com>

clang static analyzer reports this problem

em28xx-core.c:1162:4: warning: Called function pointer
  is null (null dereference)
        ops->suspend(dev->dev_next);
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~

This is the problem block

	if (ops->suspend)
		ops->suspend(dev);
	if (dev->dev_next)
		ops->suspend(dev->dev_next);

The check for ops->suspend only covers one statement.
So fix the check consistent with other similar in
the file.

Change a similar check in em28xx_resume_extension()
to use consistent logic as its siblings.

Fixes: be7fd3c3a8c5 ("media: em28xx: Hauppauge DualHD second tuner functionality")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/media/usb/em28xx/em28xx-core.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/media/usb/em28xx/em28xx-core.c b/drivers/media/usb/em28xx/em28xx-core.c
index e6088b5d1b80..d60f4c2a661d 100644
--- a/drivers/media/usb/em28xx/em28xx-core.c
+++ b/drivers/media/usb/em28xx/em28xx-core.c
@@ -1156,10 +1156,11 @@ int em28xx_suspend_extension(struct em28xx *dev)
 	dev_info(&dev->intf->dev, "Suspending extensions\n");
 	mutex_lock(&em28xx_devlist_mutex);
 	list_for_each_entry(ops, &em28xx_extension_devlist, next) {
-		if (ops->suspend)
+		if (ops->suspend) {
 			ops->suspend(dev);
-		if (dev->dev_next)
-			ops->suspend(dev->dev_next);
+			if (dev->dev_next)
+				ops->suspend(dev->dev_next);
+		}
 	}
 	mutex_unlock(&em28xx_devlist_mutex);
 	return 0;
@@ -1172,11 +1173,11 @@ int em28xx_resume_extension(struct em28xx *dev)
 	dev_info(&dev->intf->dev, "Resuming extensions\n");
 	mutex_lock(&em28xx_devlist_mutex);
 	list_for_each_entry(ops, &em28xx_extension_devlist, next) {
-		if (!ops->resume)
-			continue;
-		ops->resume(dev);
-		if (dev->dev_next)
-			ops->resume(dev->dev_next);
+		if (ops->resume) {
+			ops->resume(dev);
+			if (dev->dev_next)
+				ops->resume(dev->dev_next);
+		}
 	}
 	mutex_unlock(&em28xx_devlist_mutex);
 	return 0;
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903145038.20076-1-trix%40redhat.com.
