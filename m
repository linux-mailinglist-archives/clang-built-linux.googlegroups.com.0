Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBKMTTPZAKGQED2JBFJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF6615E286
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:24:11 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id m18sf6383310pgn.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:24:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697450; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZR/M/YRvoyYW4wsbRIiYfk/wwHjTkkTjdNdjhaVnkXRcryaQOnJ+/1ClcH8RUmsOIC
         uaru7Gfd1+U8oO84pwba1gZGhZ4EatkCIW+BDLbRdMBnfpM40FYetA7sBIAD89NW5S4A
         e/4xJaTc9iHeobqY0hupdo1o/Fj6qeiam2gXEXr32XM6pwurwfbdS/JuMc4xo3XhI5Nl
         uskWIhjgGTxSXdaDghbIL/eXSngVeZm94GZibG/QACpXEYaJxGiwKYl8iUi+S9yk5nwa
         G3m6tJuCe7mhdJ/8JTVQUhqJEWIgxlfozSWig0hp/3VEPOarOCNi+9MkEwgRbH/lrR4n
         kNUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wojtqgBpnUAYK1uulcnSoMkryRN3j9+unGhY0sLUsjk=;
        b=VR2EmvkrNQV4eH1bwvcv8j28pgYBz57McmrUvi7HSdeJr10RBnLL012dVoNioLW+NN
         TgCc7m82uRKL5dB2YVJ4mStAJeJ8omHr5znfWB9n/qBMmCty6YTGJ3oOSYAe0Nho+ZSA
         9esjzvf4LhPdHP0l9mNdrzYqkxJTMnTqLdC+QEH7deqxZiANcTeLnXE+4Fl/y7MwJZPw
         nas0/T/qX4RrqIS8k4EdfA8+a+qJu2OL8jeR1ZZNuN9/ta9ZfdjPEe+nqvHIoNVnSeno
         lIH5Kb7EADlgtucFC/4771QwqQ1aqO7q3mMKAIkgNG2zKj3bUiqd83gMXXH4NV0KZR6A
         +Qbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vNqlZqRj;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wojtqgBpnUAYK1uulcnSoMkryRN3j9+unGhY0sLUsjk=;
        b=b3/uNuMgO/sT/pFvTU/OZeeXiLU+xviA/UFWSgGcd3WKtF8kfecC33XzLhxjd+Pzri
         4sRxwF9LVQoLdkGXkkjJUcmEthhVqaprzScB9MiSjr7OCW6PHidD0Bm/Vy22F/5robUF
         nAJu1ySgcIe3pRujE2UssWccVnmyTLFP3DD7eBNKKgk3j/9YbBk/PnulXzNFhjbbH+mV
         Xo9f/aKhpEW6P7vSqIlmuxszoWW+dwTgkFcaAj+xP9JnrgYZnHbQve9ZpIkmyQL7ZaF3
         LXl9Rz+VY0sVdU7BB+VYcur8HdaTXr/ntAnFyMAWr6rzsgYqZcfpWfZOkVwzavexeIC7
         /IJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wojtqgBpnUAYK1uulcnSoMkryRN3j9+unGhY0sLUsjk=;
        b=cBFdpMFiAfbTy86b3NrqhYKnonvhWHWJApfMIgfn70QgaRejJFvuhcLCd+zvkIOxQZ
         DFpImkdan9j/o1Z517llv2G3v23eYbpGrFBGAKXuB7RzHcuCiLGUdTEWxmDw2uSsMLGy
         EU3ecScC6G1twPYwiS9SVyD4wKcE7ollCSSKRZR2M8JYW4jXr9xiRnykqxcCusKqV9nA
         lHtec3rWSbaIuyqT9r3Q7esiWrpeOWlHX14SG2/UgnpRR6RshrVnzoQP/0X3WKTq5BAh
         68rM0ces9PB4M9UqcKIGDH7LDnhgW13NIUY4GnYrp2pzDCNYURR1TXAS6t9tsL1/kh/I
         ZBVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXjPeiBVwSBQx2YLBXv6Oc9qflIcGmcLEFLWD8Y2T/5bs6O3Wrt
	HF7U7i7dcf+rUMdz27JR/RA=
X-Google-Smtp-Source: APXvYqyADO6fFi3TK20fojiN7G2e/VdvYvLidnN441b9l+nvshmRUCRTk2znnh8FRfQXvI5Gziee7g==
X-Received: by 2002:a63:5b59:: with SMTP id l25mr4503989pgm.382.1581697449994;
        Fri, 14 Feb 2020 08:24:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:b26:: with SMTP id 35ls2218383pjq.1.gmail; Fri, 14
 Feb 2020 08:24:09 -0800 (PST)
X-Received: by 2002:a17:90a:6:: with SMTP id 6mr4691932pja.71.1581697449480;
        Fri, 14 Feb 2020 08:24:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697449; cv=none;
        d=google.com; s=arc-20160816;
        b=G9udDpBIlJD7LfJgBzeNW0RfL8KrQDJr59sklLsFHmvnh+bfXXlkT6cWaGT7d0CDGn
         xypbQ9kGOWNpVehzLWpH9KPbtiRN0EXCZnixOz7w5eAmSHMVNgSnbN1pvd/xtIdwFPsg
         lnh6+M6oNKlxwNQXTBvUaED9jVe6fGHenIzK3vsk6dBO1+mthM+Q96pr9wwRa5HWjNiD
         GYKu47hggEB1A6Eq3WetWa9hti0SLdoaWc5X7HO3gMe3QytdK3/e0cCyg18YpkfZBCoi
         At59MpZVHUrc0+1XAUdQYuC+2IzZV3LKSbOzSV2QSGCsnhRWXhct1iplthY0EtSN3tdd
         zS6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bC6NgE0YHKj3BusJvNxCi9isKoZf8odFNveCqdWYfTg=;
        b=N9lrwTQio/zSxbPig6vIdyzJKkUT897Kz3KrDxt2bJja02csmxf2ZI5L7n3T/bPnkj
         NnqZAbgEqrZGrU8ERl4V2xxS6SIvDAVU5uBzgIoosncSuV+kmHCrA/xrv2Sixi4R0yCt
         RVtwIcDOaAIKa6JGPy5E0v1SUljVIeLrWIih/USYYuKJQja80zLyyydiOjy8daGm8cbl
         bSAdO9P4RWiW34KIi0AODQaRB9REA2d8z9hdNPn65CPwhIQaPl/M/OiKP6shiwt3O/GW
         Ebi4XYdau5t1ezbRmOrNmH01+2r66Q/96Aqq8+GP3hcRrtl5KlNzl/pQCNteL/AkUlyM
         kSGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vNqlZqRj;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x78si232622pgx.5.2020.02.14.08.24.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:24:09 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6CDCD24793;
	Fri, 14 Feb 2020 16:24:08 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 133/141] lib/scatterlist.c: adjust indentation in __sg_alloc_table
Date: Fri, 14 Feb 2020 11:21:13 -0500
Message-Id: <20200214162122.19794-133-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214162122.19794-1-sashal@kernel.org>
References: <20200214162122.19794-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=vNqlZqRj;       spf=pass
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
index a854cc39f084f..ef8c14a56d0a7 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214162122.19794-133-sashal%40kernel.org.
