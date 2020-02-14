Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBMEUTPZAKGQEE4THIDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id A969915E2FF
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:26:25 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id z13sf5393188otp.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:26:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697584; cv=pass;
        d=google.com; s=arc-20160816;
        b=A0JNAdyuOYfPbsrA+naRImtEX4tPka8KlqBlx36DIeLMOuPdAsz3CuyEl/8mDX3+Jz
         DaQPvoSHywStjU8cJ5V+8TU6/ljwIWJd8wE2XXd7KnQzss4Nu2C7qwDKXO7jP6FobsS1
         uFurz+uJlbZuBU2OP4k5yqAYNO8KRqrho8l5aJkHbHoDZNXsIKTd412FkHLCEAaevkWl
         GL8VEgjWi+DRtcwCJLV6F7KIFZ1BG0ZdzOrMvCMAZkBDjZVzFMKiXYp9/NFh7JZYUS5m
         Ngx31DiMosndqL1llkB9fAgwY+c/i1RTLGJdDtUAJ1JBMDrzMiw36AwnGbQihmpPMlwo
         2Qlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KU4eAKlRmCYSEp06poMltGlPuYiKRx5gErDqw8b+ncA=;
        b=IL2VbFmCvwoJz/0rP8O7MNsPTX30c7Lnf9eZLA3Vq5PmyZAcBlPJVTONE1/q3yxtBk
         dN4PXg6uVuofpYwxrgn/ZCeJzCC00DCeT+ikxofkDLo7+z8gfL8XQfhZMYpbyZ7p8RBW
         vCTXY7tnoyxhP31ehDwEm+YeV2bUafFNZKIFh00BEppJyqQfvEeIdGCHxD+25zbj2nFh
         zF7vNKuTGQ5GSd5HYmGszNASUKp7aaZzIwUvtz+k+LTK0L54axJ/hk2i9ZB9f//8UJ5b
         m87BSuYmZE++sumauS5MCCNOS8rAZdI48KcF86pUn+iQkJEpkEKC6gK91kXb52mz5b63
         dXcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="mTRT9hz/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KU4eAKlRmCYSEp06poMltGlPuYiKRx5gErDqw8b+ncA=;
        b=emWgnFnilRu1e23gVV1LuSUxB7VoO6usK6N/txYPq2STMucRZoz9LQRbiCnx87+oZ5
         MiucdU78lySW9A5j7tQUH59M1e3hHymrMf7/wpx3FptBT2IY+IV3KLr390EFQCWEKEWf
         ghUHEOE0jSl9Y63jzMgdsmqcS+FnUceKszx55LkqPf2K/BY3hGk41M+SXlq84We6AOyb
         Ae2R2Rx+2/MDYw5ePvKwNdNiABLTgPthWFvn63aCoSXX7aOX4NSLWWoCxp9Kfpyq5bto
         wcMHkoPkywKZGl+2EWzpfSfcPkyzWk52Ddmb9vsPllYimjcEAGH4YWthtN4mcSSgpAUJ
         Y+Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KU4eAKlRmCYSEp06poMltGlPuYiKRx5gErDqw8b+ncA=;
        b=i6Zr4HXEG4tWNxJ18b6z4aTg7bLwRkgj5115q4E46AAbMQ51uTc5foniKjYhwgBtPq
         upvpKPvdSSCwgFOlzih0sSlOxEDZjPNB0gmqwIR6dV6t+huqEuGhWhI1zR0OkvP1uADe
         7+q7uGKhOBebCl936hu7pEQJctHI/SHbWf8+F1D12P06/bonSuQST+24Kayo4eYraRHq
         WEGibGeLRUNStCQ+yd/x1/VX1JMHLYS1xO0CInL3wi595YXFANcswYjhY4QmjLYDe1BZ
         ZnRNHMmXJCnTyYabF2nbXF1Jqh89KxzkzVo3zQVLeAYyEYeFrYeBeZ7+SB62IXsBoYd7
         8yDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXgqaxpV48AHmCCOWrqJWLwe8p1qg1eFCnl7EfUE1alkPjSW7Fq
	ls6RjMjDS470ME4nLvSJE4Q=
X-Google-Smtp-Source: APXvYqza2dY8OG82TIDZHfr3fZZzXBJi7rF3Vb6opTo00UKCDrnUQYqYSvMPtVETJW+EDTKYy2/2KQ==
X-Received: by 2002:a9d:6e98:: with SMTP id a24mr2823772otr.53.1581697584596;
        Fri, 14 Feb 2020 08:26:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:534e:: with SMTP id h75ls663689oib.9.gmail; Fri, 14 Feb
 2020 08:26:24 -0800 (PST)
X-Received: by 2002:a54:458d:: with SMTP id z13mr2481805oib.32.1581697584249;
        Fri, 14 Feb 2020 08:26:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697584; cv=none;
        d=google.com; s=arc-20160816;
        b=Uoa0Gm6HWwLr9IHsyfenPzV4tXS8VOGqHX1uCuaK1CbSXBxZxn4lclUTazzMXwNjGt
         zomThs/MVAZRBTAEwURPpX6qpPgUWT+dyN4ppStgbdKjXHo+OpgUWcNHpFF7nBlxCG4s
         q1O95GCBr8rQ0JCTEQn1BNbFrmv+TIXABB5B01X9Pyexg6Sw53ZohjWHMyYttix8Sttq
         8sLgnsWz7IXUzMaqSUa0kTZ/r6/uTBWV033jrIyIKHuBqgBJ3ocmAmbHpUAAet6wJGnL
         UWBWUw4/VQV9XLl4qtqoKzr+nCvi7Ycy1rtz/DiFc0FT6cpiOHKEgc8sR7LN3kMf/bVO
         x5WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4hkBrg5IKQ9DxXV6SU86lCDlD5oEMauBaeavPuZe/fA=;
        b=je3H95c0DuKsNFWagJv+ac7XJNXH7ojCQM26wFuh+36yaumdAyIzzYqETehmOeN5NC
         olrrpQpH8ed3q6/BBS7DgLGl0GJVGP/8qUOtJRqqQ9S/IG+y7Y+z3hWH+ab2nwyK7wFS
         UnBFvnqq4STTZQedPzo2zyreVHMGM2LxnGlcyvErHaaU/DLLdDtTzEG8bZDSA5U+ynSz
         Egvv+6GvJ7I5Z+/nDltM1TAOJ3XyxJY1l3YRsqZmOxoLCyNJtPRD7dVm79eLVKHQjXfS
         Z5t23qnXNthnsBJ7zszKVRUbTgvyK/KlBo88CHcIt6HhG3xjhfww07NcOEQGDR2PERqo
         hJHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="mTRT9hz/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r12si367390ota.4.2020.02.14.08.26.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:26:24 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B006A246FB;
	Fri, 14 Feb 2020 16:26:22 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 095/100] lib/scatterlist.c: adjust indentation in __sg_alloc_table
Date: Fri, 14 Feb 2020 11:24:19 -0500
Message-Id: <20200214162425.21071-95-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214162425.21071-1-sashal@kernel.org>
References: <20200214162425.21071-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="mTRT9hz/";       spf=pass
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
index 0b86b7992f931..1875c09eede91 100644
--- a/lib/scatterlist.c
+++ b/lib/scatterlist.c
@@ -317,7 +317,7 @@ int __sg_alloc_table(struct sg_table *table, unsigned int nents,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214162425.21071-95-sashal%40kernel.org.
