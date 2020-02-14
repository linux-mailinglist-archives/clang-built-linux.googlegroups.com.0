Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBF4NTPZAKGQE4EAZRFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id BA87115DFC0
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:11:04 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id o5sf7924847ilg.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:11:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696663; cv=pass;
        d=google.com; s=arc-20160816;
        b=HlyNKfcsQC3OX5I6/hYfIc0W2o7ZxAeATuxISzZ5Cv6Fl/LCOxYBuzzFVxnPNEk+W3
         DEsodjlAIAPkv+ufKFjozrnK8X2LTMzrpAgaD97Gdh+KjeifBPE81YvKiWjGaN2Tk4ki
         kSYL0D5tLQIBnNKX7sEZtoVuAzhRZ2v18OZuwkjCcrwNZaFbGDrGR/deYpCkRkqTT1oU
         b1AMeH+Dmft6yeWdl6ersaka5pejfA+ZIjx8uPbT7TJ1yoGbrQIiO38OM3xI4MeojVCp
         ZYF/TGHiVJHokG1k9hGxZ0ja77m/ttgsNcWEny0KULLR/R6IQiEPhem1yCcB1KbotVkl
         CIsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xPAH4ttdkdKQFxy+mRC0IN78qXo7pqnBT6tCBpdMzzQ=;
        b=lDFQyGXIqXTqUiplJ6JU7x9ST5tflUf/4vqScFPcJIFrWAoGvXi40JviVbSStDLiTW
         Rw9FA2JqQQyK9Ngn0VJgG2sZmdG0LHwlXEfkIGLDpstnVuGCqN4KNruNIwp/rgU0qN/I
         zQuy0OSsHq49oBzGkDZTSwVsLxki0YfGnIA3HyGPyjFo4c2ze2nYc3Fhy8S0Ju11WOLN
         t/ypRqxMsd7tSH4OloBuVqlzsjXOhaEsXaXHyvyMFUW2QIe/ANhqlNhr2ga6q+WZ9Vv2
         aK8/LdAxcIiUZcpWduD2dF4CpgmWmLfXMeH93OIo6I8Z69yPz9B7v5nZcyuZHy8VfVnU
         RzeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lGcv8C3f;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xPAH4ttdkdKQFxy+mRC0IN78qXo7pqnBT6tCBpdMzzQ=;
        b=PL3Axoi/GGH7118o1ZnIOx2/+b183lHl4tZ5OFCaCLoSnbmmeWwx6OP8KgGUxk9G2M
         tc1RzyfYOOBpul0HaI0Rdxp/Jf1Kg7XPbidWPJ4qoFfOe/b7wh6Li+OKYpyIY7sdixbH
         bgX8RI6kAdReP/vE1GOfqL4etu+6RCt2ynkkI4AWP2HCjJp7rY/qwyY1hiiezz7InAr9
         f1gcsysOIlrrHXJ8mVIJzNcuVjDIBGO032Jetl+igkkCTTSbUmuy8ICaYzWIOXquCVUO
         2lbu0wJU8/tLtcYKJ3ZJt0Y0WM2TYi6Y4f2GuzQY/931uynh2wtkeJNIagd5C2cr0cY/
         1M1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xPAH4ttdkdKQFxy+mRC0IN78qXo7pqnBT6tCBpdMzzQ=;
        b=UVxKBJyu/oLUfcjBqzIEn0mEjy484+prm5amahV9dm/TgXOVtM13MRDdtymWy16xMb
         lxmWwi0R0o696Nwbc2Fmlry/hj3d/F+4kOEYHI34YwXKONnxMPOswBZGCzRdWVRUlt/J
         NGQjR478mI8TBHSxwzf++DXmmMRkcP2DvTLtPyNddijm9Urt81J9U4bq5lOImbI4QAn1
         v68zhJxjqFMQX/jIvCDdqBXczboHzt9l0hfDqi9rz0K2A8nhpTjYFFiHbUmbH+z6aF3t
         RZald4K+ies2dY5sLNW6pE9eM218dir1Or8GXo8SidpdMlv7bJVqQHvopo2NlyeiPEQg
         ku4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVndjovWw0chlzGtMOnGnF0TIlxUEPEsWDyFM1xYJqHJySvujEn
	3LjYZC1GjJuIXv8bZgkyEMY=
X-Google-Smtp-Source: APXvYqymRwAtW/UgsBRocOVQYTLjkvPSLOZWZvwOv9v1bS60jclCyXdmYbs/INx9KxAezqtLmH4MFw==
X-Received: by 2002:a05:6e02:c8d:: with SMTP id b13mr3796557ile.42.1581696663758;
        Fri, 14 Feb 2020 08:11:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:db04:: with SMTP id b4ls581735iln.5.gmail; Fri, 14 Feb
 2020 08:11:03 -0800 (PST)
X-Received: by 2002:a92:8d88:: with SMTP id w8mr3701353ill.71.1581696663351;
        Fri, 14 Feb 2020 08:11:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696663; cv=none;
        d=google.com; s=arc-20160816;
        b=gA+E9aovfV+dt5Y3kgJL1XMONeZtR1YwJoNxtEE6e2D1NUndgwXbMvxpBDhmo0aFc0
         CdarIm6q9U1ImgtMGeh3CeqiyMBivKllMwxoqi1GZ3FEa3Q6FmM0XN6HJVQAWxn9cQeu
         7VOi6JD9jPXd4TYPOco2ZVYdiznWQiVRFgVsSp9UkR9dBtdcurqj193aFz60np2d19ae
         Grn84ZAujKbqxZJphpObBvE/iTAwWvTWyre05QJaFAHibHkY9BpQNJNj0W42Su3upbFH
         fWJ+lZ4Dg3eY3MfFOnFvHbr7T1XLfoDjPJsFY8ti3OJVymirXUNIAE0cDZJDJOuOdICo
         Z85w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=m7f7u4WlRDHp66b1aLH5fygdeiEuiTO5CajP6koMv7M=;
        b=Ys8tV9a1zc1Kc/kZybM5pL3t9kkQu6cnimigXAV5tnXTNCVmiUjxVLucCwyQkYKzCF
         TO5H73eX6FJpgh0joGvI9Xugvj/vXAfrDgfWwW2wuqICdPSszP6wsDPvCsY0LKCR3Obr
         eAgtbpxGpqJdvqfrcIWjL5JILTk2kXKkWl+7SPTrtKotuHR4FJsQBeXDk0yx1Izp4rcK
         pX2yS8NBHcuMVSolreKVbUBG9mi31OjGaQBpth+or6oDYsxQ9XLKQRG/H1Hf37WE4SOB
         ED/izweKh9OUxY7EUm4aMUsrcNlwogvtxmwYcVLkOQZr/0Tnz7zc2eElskWxl4VbIXf7
         cg/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lGcv8C3f;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f85si369471ilg.2.2020.02.14.08.11.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:11:03 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D9EC0246A0;
	Fri, 14 Feb 2020 16:11:01 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 434/459] lib/scatterlist.c: adjust indentation in __sg_alloc_table
Date: Fri, 14 Feb 2020 11:01:24 -0500
Message-Id: <20200214160149.11681-434-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=lGcv8C3f;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 4e456fee215677584cafa7f67298a76917e89c64 ]

Clang warns:

  ../lib/scatterlist.c:314:5: warning: misleading indentation; statement
  is not part of the previous 'if' [-Wmisleading-indentation]
                          return -ENOMEM;
                          ^
  ../lib/scatterlist.c:311:4: note: previous statement is here
                          if (prv)
                          ^
  1 warning generated.

This warning occurs because there is a space before the tab on this
line.  Remove it so that the indentation is consistent with the Linux
kernel coding style and clang no longer warns.

Link: http://lkml.kernel.org/r/20191218033606.11942-1-natechancellor@gmail.com
Link: https://github.com/ClangBuiltLinux/linux/issues/830
Fixes: edce6820a9fd ("scatterlist: prevent invalid free when alloc fails")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 lib/scatterlist.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/scatterlist.c b/lib/scatterlist.c
index c2cf2c311b7db..5813072bc5895 100644
--- a/lib/scatterlist.c
+++ b/lib/scatterlist.c
@@ -311,7 +311,7 @@ int __sg_alloc_table(struct sg_table *table, unsigned int nents,
 			if (prv)
 				table->nents = ++table->orig_nents;
 
- 			return -ENOMEM;
+			return -ENOMEM;
 		}
 
 		sg_init_table(sg, alloc_size);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214160149.11681-434-sashal%40kernel.org.
