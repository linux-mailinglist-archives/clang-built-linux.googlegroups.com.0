Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB2PK4PYAKGQEFE24VVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF99137910
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jan 2020 23:06:34 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id g19sf2691089ybf.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jan 2020 14:06:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578693993; cv=pass;
        d=google.com; s=arc-20160816;
        b=xeq9DnZRTH+6G2IW8j8Gfa71b55ZvYGCY15xh6qwA7H1DpQaBQMYOU18AEdKMZq2OJ
         TV0gjOoFcK5Kb6q5iA/BmAboXsMeWH+Jyv5ACyiIunMAIZhBPhsGuFRN5P3yuLIIvgRq
         NmYyZxD9Ji+J59PC1rmCRHUGB5joUAfMwq2bIUfi0bzhnzmrynm3lHrd/u3EqdPjk89a
         OLa0kH0EKKhoEKQnDYi6EF3hzEA5wHtxJ24EczTiaT+/Vq7+yVW1K6OBtuiVRNM8P4c9
         dZWiJm+RPp1CIJqhYlSPn66PHGYQipNvjGXZRhR7WJ+V6I/YmbBMGO9jq05qu14EKP+p
         pdZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bfPSVuIjoJvVS1LNyh2a8DIpFb74tBUXChfwdykjcsw=;
        b=KtIAYaxFcGpwKKDmhOXbhPXTy2Rfp9d1rmd9ZyunDfrrSoHTHw8z7QaUC67RNKSp0r
         9z7lvaY+teTY7/spFyuoVh4qif2mmGmKYa9IwkEDeCFLMYkDRQnhTb95ZDvirSkph5OO
         LkUsVC2miOXhHAzeRZjFBZ9jY7Oy0SE9Jxh+2zJHx5esiR8KPZ/Hc9Av6EFwUM3bcOZD
         vRAY9HrJseIpLfmuyFgPBhflvTZ/3EqbY/AhLZpaCMyDQs4Pj9dTzECdoAzT2K50WOHC
         p1pCkk0WzbQmpIk+f9v6lSF1e9Ex1GBo8F5IOi/yyKkbbncTPSQhDrA19grdpdFOzK3M
         KXAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="LYUHHlR/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bfPSVuIjoJvVS1LNyh2a8DIpFb74tBUXChfwdykjcsw=;
        b=A/6osqifJTpq8Rtnnu20P26B9YVNYBJw7QLB1liUL8T+GhsY5QTuw+5dzneXaTyhxb
         gw/bPwzUMYTvBFVA1lKeFNS2hZ6Kg3wfYKGa0//me/IeWAYfcA9vKnkneOSOHbYbUtwJ
         3huHo78a5JgtgxeSlfGKsM56SI842QxACz6Z4qzD93QdVhvwGibg9chSK8N/DAZj9ili
         oTiYxOjkOEc8O7q272Jn9+iYKXdjQXLVeD32MsoWNkaevByh2Yxw0pmIoqvzJESsfgLL
         ozH9ym4K65raORTn+7DgR6iLJbSGXT0WxbvW18/0jIFxKpawDsVPBF3uW8JL1d3dROT3
         jniQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bfPSVuIjoJvVS1LNyh2a8DIpFb74tBUXChfwdykjcsw=;
        b=bJ7bHlMf7/TOiSpyO2wA5t47wpKQqCwBangt/dNZvIBVkoTcLsaXal20ssNujxMmAZ
         5G8487bmhIcV3QsQ5Et04ErW9MNk8Ip5QZwgKtDO7J8/Ps4Nos1YTfX65sXGsg+ou2C8
         d7DoZQSHfuDqD2x9Dn9xDubCWC7pafvyLh0qr+sFyXFrwuoYyUSE0Hb5XWegmgOJEDKF
         8Q3v4yMMfRKRN6jxangBzwo7dAJu118t/lI6wo4U7MZdkvyJbxpDCAWtSDTraSAYyvxb
         xgG2W5N97FK4LNvJEm9eKflXLNaqkT4hBO4C2+M3fGQ3OL/z59+peMb3/rsZXZuK90Zs
         dKcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVnfilqW0ZiZD7pff/5BBRNVnUl+OHrBgbl4I5261lNNwhTnGnU
	nGWVGWvNXQyNFvdcuyUDT3g=
X-Google-Smtp-Source: APXvYqwqn3NGoDM/gIw1llQ0alG6JDdFq1IXucqA0qEF1ohCpBm7uw2phWqvZ8qhTs/v8sMXxLY4PQ==
X-Received: by 2002:a25:50d3:: with SMTP id e202mr519632ybb.517.1578693993401;
        Fri, 10 Jan 2020 14:06:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d08f:: with SMTP id h137ls1050272ybg.10.gmail; Fri, 10
 Jan 2020 14:06:33 -0800 (PST)
X-Received: by 2002:a25:8551:: with SMTP id f17mr3646601ybn.477.1578693993041;
        Fri, 10 Jan 2020 14:06:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578693993; cv=none;
        d=google.com; s=arc-20160816;
        b=pk5VpB8jiDhiixu6UOnnTnizzLw9D05rxunPxF/vSjx3OLcwsrHLO5GJukzzwx8Q43
         XRpny64GONsu4jCLTx3G2eM9s/+BUso57A2mtJJK0M5ujrzIjFS+3tH1HRA/9Lga0S3V
         VvHHwRWNLOIZVHlmQhbzwSVyTH68v753Ws3v0Xmr0zptG6p46bnxRq9zObHbjyD2BMuV
         vtd2RPDCSH8UIcE26Y2TeLrk7uPwQ7Nmy8qTHUoS9CiNSHGx4zjjQQKDbeFwJhWXvV5b
         FzOQpG605NWDr3ssg6vV0XPoh8b6IJ98B7pqjF/+YgLRLHdWMWevjN65HaFmXSA0QqVc
         Uqaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=EuevyoudmkWQ8NUCvpWUJbpzYAAEZWcU96RTaWZJsnA=;
        b=VgwY+XyUIl8sNDphZZIIbW6XK6U7Etc+OQOgW3Y11GJf82ceLNmGd+YnW54riivbIz
         sBncEJ1tZxuJavC0JDXMEjtstiLnlJIvxP3+uirv0veuUkk71VDMYxacTKJHXifiyQfj
         y+giHMdB1rzN7PS6leWvPAHQFXxYKGJHXrl483mj/STPvmX8tGC1cKZnXsPt40JVRprB
         qdALyw/Gr7OINEn73Y74Z2wdlpmKt8oR+XDcVK8GMbWSuLJ0LcODPWxWP4ncJwiJnHd3
         ytfyRf9RPFhKSck67Yq0U1mSjpWsiWDtxgzc2OUi0yPfK6174ALm6dI5Ebth5qq+CBQ6
         TQfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="LYUHHlR/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j7si173616ywc.2.2020.01.10.14.06.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jan 2020 14:06:33 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D471A20880;
	Fri, 10 Jan 2020 22:06:30 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 7/8] hexagon: work around compiler crash
Date: Fri, 10 Jan 2020 17:06:20 -0500
Message-Id: <20200110220621.28651-7-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200110220621.28651-1-sashal@kernel.org>
References: <20200110220621.28651-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="LYUHHlR/";       spf=pass
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
index 41866a06adf7..ec4ef682923d 100644
--- a/arch/hexagon/kernel/stacktrace.c
+++ b/arch/hexagon/kernel/stacktrace.c
@@ -24,8 +24,6 @@
 #include <linux/thread_info.h>
 #include <linux/module.h>
 
-register unsigned long current_frame_pointer asm("r30");
-
 struct stackframe {
 	unsigned long fp;
 	unsigned long rets;
@@ -43,7 +41,7 @@ void save_stack_trace(struct stack_trace *trace)
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200110220621.28651-7-sashal%40kernel.org.
