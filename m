Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGEZ6P5QKGQER6Y33EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EF02852C1
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Oct 2020 21:59:21 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id r6sf6261ooo.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Oct 2020 12:59:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602014360; cv=pass;
        d=google.com; s=arc-20160816;
        b=KR5BSyn6BzEDiMdst1YCNcUXqtOL7CEZnHGLSPI98ryHGK3h+athCkgELBC2If+ddh
         QLSDp7Xcs1LA4x5j9108zOXqbvXOrjkrcNccMCoAYXXNOeGCf2L0Q+JnxB/hGLngtc1l
         e1OfpEJ0EsvYduI6VIlNI9p72zLnsb+Q/E79AeuwOj9I6KnqnGrQ9F+/UaKoXxJ0h+Is
         WwGavOEQyumPozwMb26EW3hdLImJ3Lc13O7CzTtQoTcwPfJQP35mfDVqQ5s0l79171YP
         5neBbFDh79W9uemAEErLWIGe5xkagHOPtLBPXKLD2e6Rdz1hF5yoro49QAlArnQEUjoS
         hQsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=m2B6XxTY6a9zCCmG9S4iKJbpa5DL+7K425E+hRQPmZc=;
        b=sP4/fpvhM9x9XtE0ix4UrykvA3ECgIUz6OjQ1liOzay8S+K2kYxsvz9X5D+as9id0e
         cI2nZxA9RBE4y5NZ3TFlplSSM3/YlA+fA+2sD0C84s91cSDydQdY56O8kVDB9J9dfwBT
         7z+uzIY19mO7x76bCextMhNfXTjXDi+60/zDGNnexrUXLUsqBgrjLLcmE9JZ8SXb0WEH
         00yrOGh5U9HWAwR2ZqYsOXGr8oDF7EibHlXaLS45bHvzmB1n9FxoZOvdxbkxO3cjGRzf
         XsF03vclqCXePqCxc5NN9J2h3DUUmYFOVsJ6gc0TZxZyMgrUh89IIUNRppt8mRhlU7sa
         ZafA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i3iGk2ZX;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m2B6XxTY6a9zCCmG9S4iKJbpa5DL+7K425E+hRQPmZc=;
        b=hdy0eXD1suEd1OvlQYrg4uezXDdcMelpnQ677Qlify9S/Wzw0Fv3cmIYg3Umb8hkQV
         NNR/sVFVVyRPrHQBPYTLS4uSdByEwnpHEhEqCCk7PVP/DrJiRnKYtGngeyp3opYZbjYD
         DGINp2bIaEPn1pm5djnYijoPeNSkOCXSc9U9soYnt8OzkBR6hDqwT6p7Aqg/S83tBKzI
         FZb59YQlQfxmbGHAINHuiAerJ2lf/BPC2gq/b8JSlkU6jWEW2kXWhQ6bs3xEc1J1zG++
         4w0IUO89CG9aV38TLXrUjQAh0w7Fes+abtuw9zi832g1hQLdOcUQtcCM3DOwzn7OJTai
         qRgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m2B6XxTY6a9zCCmG9S4iKJbpa5DL+7K425E+hRQPmZc=;
        b=YhY4P3HjD8/kf8TtYwFElBmhWlZ6wyIniA+h60pMkV1N6xYqnR8lZKKKVlngI/n1Bt
         4zu16nlfQg1FZG2QsKKKCntMecLx/3zHXzO4zS9bMryzRQMXKUsaUVk2HiFCH5y9g4WW
         tV+o2S6kRoJuIXePus7/6aolTqxFWKkSJDcE1PljezJMy6Ye7itpO8AE6WcjpTb+IB2B
         A85Da/zWDvmiuaFVz8+bkZIat99dLIONEHwDw9St21lx8OtzDZ7DnCkNqKJN+oEXIIRx
         8dzZNC2MHLT8IAfVchYpYdhkApj5wF1Dh6MD9V/6clpOiuWGahEet5/yCoUr5OGgzAjo
         JgTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m2B6XxTY6a9zCCmG9S4iKJbpa5DL+7K425E+hRQPmZc=;
        b=QhIa59QqZB5VbN6IABVvSdRwiWdM8RzrPoKhAR2FZKqTEzCFR61S3jxjTI9KHNItp7
         +VbL6raVTEtL/wwx4EdtUYKGHRZBnS3l1d7MqssZ63y8JuQYPUkX1gqvEs11LsMgj4cU
         gaN2wqxKj45RBM/aeJXsu9Q5CePEcK5EMsMulP6P7vaCgYbxIFnqjy9k8slrzGIoZvOE
         xWT7qKBvxsOujO+++GuiHSzo1jgKWiIy+JQ3g7PcQfMES/6fg/RVQ7cVnn+PlRKECg4J
         2iGjwCplgdNUtU4fF7HYgJSQoHJdXkAW27n17xonHTT3tg5ncOC2JBui4yUR3EqiTbLG
         T8Yw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BHOTKHQD2WNxXPLtMPW/1Ig2sMh/8oH54n225MSV0NcOJTloB
	nhIgGMULykbG1i7PAEZQN1o=
X-Google-Smtp-Source: ABdhPJxTKLMHp8rtteQ+MNHE1WOhTmOyyLqZ/VhuwXId+79F5Ekk60ud7JdtzLkCZHsuQKenwZJ37A==
X-Received: by 2002:a05:6830:2096:: with SMTP id y22mr4035805otq.158.1602014360398;
        Tue, 06 Oct 2020 12:59:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4011:: with SMTP id h17ls3487372ots.5.gmail; Tue,
 06 Oct 2020 12:59:20 -0700 (PDT)
X-Received: by 2002:a9d:360b:: with SMTP id w11mr4246637otb.203.1602014359941;
        Tue, 06 Oct 2020 12:59:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602014359; cv=none;
        d=google.com; s=arc-20160816;
        b=P9zFn1XSK8NcxF7A93NBEONjD7PoRGq4Xb+5SAeh+HixZutCqc+Q2rc7bdx5OnTSUt
         TgReiNdHuZdghQGn4rdPFveGEu/0yI9WXwiAnMH3k27mSF2nq6ip4Eh8SeXsru8Ln0q5
         tUpNTHFBV/jR0cTT7sFBkmYD+3E3O5xfDFV3JXKF3a5xMFNkFKTTglD4LADBqMGUe3gz
         in6YG8FgVywPd5lPpjSSSWJBcqwEquIj+oJ+FszQsKQ5mUOoc1upJxNXAhe2SvCyDJCs
         k5j759U02l4ntaWDpntJ6engs/5dTCrWWuEa9rPVXCXf+pyEmRI4Ay6N3WuBIQG9guvg
         L8eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ZYjJmEzfZrC6Hihw3ID6mMFuzIxUBipJdm+pO3rrqoY=;
        b=Ky0dw8FUMV4jbzoFQr9caCfizozrdmbrPr2D6QwHN9TWfYNg2/4faySAvpZVP7DUGH
         Xsl6EF/PHqLQUTyP7XaFBWY6H29F9LSXkqaECimXHXPX6UUFWnMcotpsxX+p2ZIV4k88
         KKC4nVy3GxbBGBD3YDVj7q+q6LjF7W24qO6ukbwYVW6VzQ6FCM2+cDz3DXjpfD8QLEI8
         ILJ89upoYH600xDWS28TnyEw94efkUPgpb6amgQSDk8/KVkL9wNax7Vj5OzXudKZNVo9
         0YeI5zsEq8JsgeZtwT+oOPmLUUXGWZfdZ9AcePjKja5vYbAyOIFpMl82XyFtCGL5OwGy
         lTQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i3iGk2ZX;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id d1si275773oom.0.2020.10.06.12.59.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Oct 2020 12:59:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id f19so1436110pfj.11
        for <clang-built-linux@googlegroups.com>; Tue, 06 Oct 2020 12:59:19 -0700 (PDT)
X-Received: by 2002:a63:1542:: with SMTP id 2mr2204654pgv.248.1602014359196;
        Tue, 06 Oct 2020 12:59:19 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45e1:2200::1])
        by smtp.gmail.com with ESMTPSA id t10sm1901423pjr.37.2020.10.06.12.59.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2020 12:59:18 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Ard Biesheuvel <ardb@kernel.org>
Cc: Douglas Anderson <dianders@chromium.org>,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] crypto: xor - Remove unused variable count in do_xor_speed
Date: Tue,  6 Oct 2020 12:58:48 -0700
Message-Id: <20201006195848.707504-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.29.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=i3iGk2ZX;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

crypto/xor.c:101:4: warning: variable 'count' is uninitialized when used
here [-Wuninitialized]
                        count++;
                        ^~~~~
crypto/xor.c:86:17: note: initialize the variable 'count' to silence
this warning
        int i, j, count;
                       ^
                        = 0
1 warning generated.

After the refactoring to use ktime that happened in this function, count
is only assigned, never read. Just remove the variable to get rid of the
warning.

Fixes: c055e3eae0f1 ("crypto: xor - use ktime for template benchmarking")
Link: https://github.com/ClangBuiltLinux/linux/issues/1171
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 crypto/xor.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/crypto/xor.c b/crypto/xor.c
index a0badbc03577..eacbf4f93990 100644
--- a/crypto/xor.c
+++ b/crypto/xor.c
@@ -83,7 +83,7 @@ static void __init
 do_xor_speed(struct xor_block_template *tmpl, void *b1, void *b2)
 {
 	int speed;
-	int i, j, count;
+	int i, j;
 	ktime_t min, start, diff;
 
 	tmpl->next = template_list;
@@ -98,8 +98,6 @@ do_xor_speed(struct xor_block_template *tmpl, void *b1, void *b2)
 			mb(); /* prevent loop optimzation */
 			tmpl->do_2(BENCH_SIZE, b1, b2);
 			mb();
-			count++;
-			mb();
 		}
 		diff = ktime_sub(ktime_get(), start);
 		if (diff < min)

base-commit: ed4424f2fb02497b0ea92bf58c533c598c0da1d3
-- 
2.29.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201006195848.707504-1-natechancellor%40gmail.com.
