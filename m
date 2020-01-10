Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBI7L4PYAKGQE7D6ETDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 72273137940
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jan 2020 23:07:32 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id j16sf2118941qkk.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jan 2020 14:07:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578694051; cv=pass;
        d=google.com; s=arc-20160816;
        b=YwiNQ9nxw6riULSH98kpyGOe8zcrAwHndj8BRtWLGEbV84n18YVSwUK+t/C2EILX5L
         HaCaWdxFW0hXjT6dcq0EnfU+FB7/uDoKB4bGYtQmxvE8XY3YqfZnrvCkamRxugcysi/b
         u7eP6uZ8YqATZnsrQ3ojPJ4kGF1JREjT2UB64LsZMI7b9o+Rowbs0Lpd9AQ2DNLlN8TJ
         8O/Ls/2s7RJFU22m4TB3c5mKSPDowEW2vTTimGuhi3+At0F/OAP41nubHd7aHlxQD2xY
         EZ0Fy8YE2WiOVUSl4FHYJo0NkL4U0Huq9A2FRibpIc/KjWkLlm3lZwbLRllkEsGNSZ+f
         tUug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wQGYriNfqEi2rFTtnl+R4kXBKLguTJbEeLYMYo4YcaM=;
        b=DbapATpHYF76QgEXX87g8LlhsazE2iUm7V0xFSDLUBvEnQyw25AEgAjkd43v1vxgJE
         yPlNBslv1xmVt9l8SfdUqU5l9Ab/+FLf1wfXF39hMuiScVxoWN4oXhvHj+qogb9y3huJ
         o01XtHpsmUKGeLAKyXytkNAcyiqDziWDPtqTcl2iWMBBYGZuQQDXqgdeEu507rw3TP2l
         ztfypyr7Pm4lVTXLYJFoYq9+sIs5sjFbNcL7Vzt0uvPB3NFFNZeH50oynPvjJaLxuPEw
         Z9Bq88EKWgdKBmBTQ1xX2Jx6pxu1KMYSUGFcsLZGYhbFl1fDz6vIdqPWP9eZtIH7g2Fw
         u4WQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=d91tNQdv;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wQGYriNfqEi2rFTtnl+R4kXBKLguTJbEeLYMYo4YcaM=;
        b=Qkrv35qw+SMbmQQzS2ncBakOWJIVPTbLb6bL3/rg/NvDGo+C0XZyyefgBA+4OP4WhE
         U4WOdokubE9Z35OsYkCzD21hnNs+drpYcXTeXlf8OFVvjC0QgMJAw3fAJkE0Zc/sGrJA
         Wzyz5BHeknxbScerU3wuwxhEJ+BPaJavz7tsuwBJbxwAj1sVyOMogagNHpGR7cnwi24y
         YrQaKZFQe+WQlj7eOdQwCZIvz4KlqMvLH0zE8uB/UOFdVcz9MDPgqOScpU8LKuDcTwcA
         mXXrKrhhhHkhqiCbB4r1VT0hSPgRIbgPeQr/6M/K8WkSpQ1ezMbRV4miOXLtJXzhPxfh
         hgkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wQGYriNfqEi2rFTtnl+R4kXBKLguTJbEeLYMYo4YcaM=;
        b=hTrmXBioZDGTkTmatgTR6AVix7Cvr3++TUeLdpALfLOyMg4uwHsZXtDnQs0HktEG6o
         HqkUHaGDXLj+S36gOUCIWhJ0OJe3rMF+NweViklPR4+fkUB7dcPwolh997uL1ClNmgMD
         9EUuYU51A86NjvAk+ia3yLbYIHbUOuZDQbtoHQgjvgH8AechCn3qDyiCmyI+xnDr3Imp
         1tm4+ziyLm/zeWZlspsxag+8r/mtFgcajirsFN5jhUss5awMOzuj8dK/eZyuyNG6AoUi
         9a5yoahg35tovYQcW8p8G1OD8FnAlGTIoDQZ0LGEtmL8VhKVQeDRoJIx49HWs4+/j0hZ
         owCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUQVgeJ5nhDwnrONmSNujyEVkbbKIBs0GzmiYgHBUM2HgIgx+fQ
	0nlrWHwhrSohEmYM28OLqLk=
X-Google-Smtp-Source: APXvYqyBoyg6TC0N8lTeavLv73jt6XZJl4DvwKsCS1FUaHUwt5Ds96eVJ94ifejTxS/vCThlu2yQsw==
X-Received: by 2002:ae9:f205:: with SMTP id m5mr5554358qkg.152.1578694051376;
        Fri, 10 Jan 2020 14:07:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:f507:: with SMTP id l7ls2641013qkk.0.gmail; Fri, 10 Jan
 2020 14:07:31 -0800 (PST)
X-Received: by 2002:a37:88c2:: with SMTP id k185mr791896qkd.317.1578694050943;
        Fri, 10 Jan 2020 14:07:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578694050; cv=none;
        d=google.com; s=arc-20160816;
        b=cwZHLdjHIO/eN052eSXF2aSfelWBOUP3HK6tEDxXNnfnvYF98OxwSXWsBQnUVLibH0
         ulY/fgrKkb6mmO0y7cJx37XnQON1FI4YBQeNaReQbOm4uHWMbU5kLyQWumkr3fOxJQQD
         Mm26d5mmdHfS0Gu1JWDExEhOdioMAig3zVT0YzKHtOAtgGWu8pjv7roZXin8CsJa9LWq
         4jpACF67yQK4LHwrHnnIDgXs692ByFfcKaVHpxl0cxkXaLuCexy6ApkvIt/i4wr9qAC0
         1zFRH+nlPkxxqZnwp5Wy28dF3nHDPe4khic/BFrNvKmFnwFE47+hSzvu//aB812LEFfp
         mBDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lk1jbEQxqT7kG+zPSA3cWD24Wp/yT+mOK7T3eBfJs5g=;
        b=bKW2yS/rRsEnsghXod60Ourzd6/fMzBCV4b1532if01darU81jrCPFzrtvB11wm1oa
         ZncfXNnyeJZnj8tQM+nVZsTysIemPy7zH39WTQbdWOTLZEoOBvDiihGD4IgVDNj0tdX+
         0r/KOyfalCNq9FZ35VpU/1ptI2ea3NZWYULtZpUpHc0Rv17feSd+Yc4ayBCDrse9kcdp
         UDC/fZYAMg4DcxqdGlgHnRf6gsEqKFlDf3jfyTqr0pJLMlZM3SlkLgyzvp37ddkRqGDp
         AkqiJKuSsKz8m8Mr+Ec3W0U2xzX2p2GiLQUa8DvK4+Jrzo9ycddlCXhiTeMw7L5BLyPG
         CoZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=d91tNQdv;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h17si192582qtm.0.2020.01.10.14.07.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jan 2020 14:07:30 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BC20A2087F;
	Fri, 10 Jan 2020 22:07:28 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Sid Manning <sidneym@quicinc.com>,
	Brian Cain <bcain@codeaurora.org>,
	Allison Randal <allison@lohutok.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Richard Fontana <rfontana@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-hexagon@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 5/6] hexagon: work around compiler crash
Date: Fri, 10 Jan 2020 17:07:20 -0500
Message-Id: <20200110220721.28780-5-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200110220721.28780-1-sashal@kernel.org>
References: <20200110220721.28780-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=d91tNQdv;       spf=pass
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

From: Nick Desaulniers <ndesaulniers@google.com>

[ Upstream commit 63e80314ab7cf4783526d2e44ee57a90514911c9 ]

Clang cannot translate the string "r30" into a valid register yet.

Link: https://github.com/ClangBuiltLinux/linux/issues/755
Link: http://lkml.kernel.org/r/20191028155722.23419-1-ndesaulniers@google.com
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Suggested-by: Sid Manning <sidneym@quicinc.com>
Reviewed-by: Brian Cain <bcain@codeaurora.org>
Cc: Allison Randal <allison@lohutok.net>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Richard Fontana <rfontana@redhat.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/hexagon/kernel/stacktrace.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/hexagon/kernel/stacktrace.c b/arch/hexagon/kernel/stacktrace.c
index f94918b449a8..03a0e10ecdcc 100644
--- a/arch/hexagon/kernel/stacktrace.c
+++ b/arch/hexagon/kernel/stacktrace.c
@@ -23,8 +23,6 @@
 #include <linux/thread_info.h>
 #include <linux/module.h>
 
-register unsigned long current_frame_pointer asm("r30");
-
 struct stackframe {
 	unsigned long fp;
 	unsigned long rets;
@@ -42,7 +40,7 @@ void save_stack_trace(struct stack_trace *trace)
 
 	low = (unsigned long)task_stack_page(current);
 	high = low + THREAD_SIZE;
-	fp = current_frame_pointer;
+	fp = (unsigned long)__builtin_frame_address(0);
 
 	while (fp >= low && fp <= (high - sizeof(*frame))) {
 		frame = (struct stackframe *)fp;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200110220721.28780-5-sashal%40kernel.org.
