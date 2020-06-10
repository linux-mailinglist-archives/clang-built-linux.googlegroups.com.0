Return-Path: <clang-built-linux+bncBCO4HLFLUAOBB25OQP3QKGQE5WI2UHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8C41F5530
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 14:51:56 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id a20sf330707lji.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 05:51:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591793516; cv=pass;
        d=google.com; s=arc-20160816;
        b=G2PyxAwPBTGU/e9bkZV2ujjPMYl8Ovv63bug8QiXAeZDebzRrmj42eRl8d72uGDhxB
         +r7gl6xm7kzbRrOeQRmlCye1jN1b2KACEHP2UtKyuK2auPCFsh+en65qiZNE7eWzOfmp
         sZi6mTnJV9pjDs74xoUpw4d9lqfsjXvws/5kKLWdprDOU8oozTFD9BNQ7Vl3NEOa/s5o
         YcLOPqA+VUCWIEMQVJ1nuevf6UkntF/6moWOF3zAte4ZXLwhCczUjOhB3VPJhIB/j5+t
         UvzWWBeG6xVM/xh1siPiOsEOxvOmK+SoQB2oi7/+y1WyluoTmvT2ca6GVmYhhccEExSK
         lw+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=KEgV6er3xRlK5pV42g7ultnRH6bhSeyYKCZ48IWYqKI=;
        b=gzg2fG8yrlHK07UOAzc/sFhLwkj+JZSXOscgKC1sbjZBhMkfGTBjIVycHCEjtLj2tO
         kuSznc2VqrKO6PqoLoZo8bCu8d0ctd7A8fJBNrwEmEBrvKFMfNdx8L4DGCG/XOwALP0k
         HsX9QmZRkj+MVz4wY9u+1LDeuQRGHbgHHLLuF04BTY2U3IF+G65O+2G2c3uyEuqsvXGH
         d37PYt+vGxK8EJfIL0GQR8Zo9HwglvYMSgDOX1bPICNZDBP8jKA4U4Jp+UoOAj/j+Ksf
         6fOLEUK0EdxtA9GNAQlOpfrzh5+ycULVQyFW6WztJF+ay2NxWY0wHdDk8YW1iUPsdnFj
         NavQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KEgV6er3xRlK5pV42g7ultnRH6bhSeyYKCZ48IWYqKI=;
        b=cCaPojZNPyrAvBTRgpwLpdpXYbNn0V1yFno/GrvAhiTPoCSSLueyuAlnjkhrHIrAgo
         84BIqeGObMERoWXMHQhzxlCIPoJOlODbqRg2WtAlJ9MBIJowScMB7G58MiLHB9wb9/Er
         wr5Y7hQBHhNagh1uzGoa9NyrUflWI3kDu2ilcj8CNJ1GFoBGs+s1NoQmrtDBgvQ1mctW
         96GOL0lsytKR/VTh2JQKbWtIoUm95jqIMzY1gKrGbR4FzfE7Cr7u987IzaZNzb3kUBcT
         AQ6WWFSx61SSTZt8JdeqbDJljNCf1xmFviUPYcnwefXAzqvuifFchTAeoj6aBvWqTGUf
         DH3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KEgV6er3xRlK5pV42g7ultnRH6bhSeyYKCZ48IWYqKI=;
        b=E51E66Pb2ShU1DrXkhpBd8/f635AHq5IU99m1/OXmw7KbCyqNCiQcLH0o2rkjvX62M
         XhdRTQREPqnRPu/GVQN+4k+kHHcxqjj6IMoOll56eb7BlnlVAE0YswTyWAacC76H4qw1
         kQZ2ee7a90msuawa1nxwjPs0ak/jghqP6S85FI6yp2Vx4hKsorH8XSd4CU1RjPiBWfMw
         V/rCHxii6LZ/nvWmEB/jxoeoPZzCQNX1VHfNLVRYRyk5q4f6hBsbwXkoIe2znbqKItXu
         +2cpQb3uY3Xs7a+ZUtSFCQYzLQwm0PqGJgW8Mioln9jI9Ql/RfBWWKtO0NYlqn9eq5yd
         fjHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532jfAVKj8cIDnQcdd6V/D2XTKRPqQaA5c8kSHTEBTfKRb8yL1tH
	VpHF2gthzCxWZLACpSt62z8=
X-Google-Smtp-Source: ABdhPJyiWonGCrJYvyfdeCaTS44lS1RsNatS3OoAYdfjxwK0Du557Bq4/zUjktgTbCPKbX8rbd8kdA==
X-Received: by 2002:a05:6512:60f:: with SMTP id b15mr1648242lfe.159.1591793516029;
        Wed, 10 Jun 2020 05:51:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:30c:: with SMTP id a12ls1867132ljp.9.gmail; Wed, 10
 Jun 2020 05:51:55 -0700 (PDT)
X-Received: by 2002:a2e:8754:: with SMTP id q20mr1803652ljj.270.1591793515434;
        Wed, 10 Jun 2020 05:51:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591793515; cv=none;
        d=google.com; s=arc-20160816;
        b=EtiwjHbLDIuASBPVfbD5aKXiOQ1TR0trt/70pnXvzF8wOIrG8ty2APewoVKUoWUPhA
         BpODxVy1SvDAVt6CDgeZjO+ldXT3lyxGCOTMV98iwF9ZcHjw/2DLk22T++WUuyg6o97y
         r13znH/ev4QThttFJKroH7Z27M+ROh/qy/nPU0zY6USWtrE1CVxYJgMGzGKCG32Kyz1B
         eap2xzZImh72WxHlQUZy394eZ8fjbZEEyJiUsPxV+YmA2Ran/O7ZSiwgUoB6eqjnScOQ
         Odkvr+0B1IRK4fq2bP2bwq349MSci7R3MFNZetOLE/oNSOP9YKFwicazZti7ouXlFT6N
         Rtpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=bxP70s6UCyoXMRYMOAq+qYIWNI/yMo6cyA0vBu3/5mA=;
        b=WnESuF839geY8RXiU9P4EsBmG1nlDyv+3tAIGoSw/aEhEYOoD6KKWwyAvZJWjb61lC
         yJ4X8hlEqxoBpuo5x3zWdY2NG9/xvvQlToY9mJ42+u2PZE5rZqOswTy6XVHZVRwd1upm
         UYSYGDcrRVDzSJ77B202yx2rvQd6sYJTUVi7irCgLlyILU8pHxJ30G8NykUhbHOkpo1y
         WqlB9V4Oa2wLyd9qRAilp/QY9yVQB15a/5zl6KjOgaNXP1Rz/T1prpYB9u4Llal/4/zi
         HENQjDjD4ako1MBUk6nWM5vJGVzsoytpVOeUR+ZBAIvAGvn/X+yW7C4nMk8XXGU+LNqF
         0aUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id f16si1093831lfm.0.2020.06.10.05.51.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Jun 2020 05:51:55 -0700 (PDT)
Received-SPF: neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) client-ip=91.189.89.112;
Received: from ip5f5af183.dynamic.kabel-deutschland.de ([95.90.241.131] helo=wittgenstein.fritz.box)
	by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.86_2)
	(envelope-from <christian.brauner@ubuntu.com>)
	id 1jj0Cv-0004Xc-VX; Wed, 10 Jun 2020 12:51:54 +0000
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Christian Brauner <christian.brauner@ubuntu.com>
Subject: [PATCH] .clang-format: update column limit
Date: Wed, 10 Jun 2020 14:51:47 +0200
Message-Id: <20200610125147.2782142-1-christian.brauner@ubuntu.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: christian.brauner@ubuntu.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 91.189.89.112 is neither permitted nor denied by best guess
 record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
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

The provided clang-format file wraps at 80 chars. If noone minds I'd like
to adjust this limit to 100 similar to what checkpatch (cf. [1]) uses now.

[1]: commit bdc48fa11e46 ("checkpatch/coding-style: deprecate 80-column warning")
Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
---
 .clang-format | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/.clang-format b/.clang-format
index a0a96088c74f..2b314a14a658 100644
--- a/.clang-format
+++ b/.clang-format
@@ -52,7 +52,7 @@ BreakConstructorInitializersBeforeComma: false
 #BreakConstructorInitializers: BeforeComma # Unknown to clang-format-4.0
 BreakAfterJavaFieldAnnotations: false
 BreakStringLiterals: false
-ColumnLimit: 80
+ColumnLimit: 100
 CommentPragmas: '^ IWYU pragma:'
 #CompactNamespaces: false # Unknown to clang-format-4.0
 ConstructorInitializerAllOnOneLineOrOnePerLine: false

base-commit: abfbb29297c27e3f101f348dc9e467b0fe70f919
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200610125147.2782142-1-christian.brauner%40ubuntu.com.
