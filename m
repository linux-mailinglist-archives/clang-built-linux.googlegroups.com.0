Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBXGX66BQMGQE5SYTBOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E228364B85
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 22:45:32 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id o129-20020a6292870000b0290241fe341603sf7136438pfd.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 13:45:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618865130; cv=pass;
        d=google.com; s=arc-20160816;
        b=ttupGBLQX2X55x33ipI7mwjXTBGDVJpL7WFP/QmnPyCd/x5tOgjlWvNjDuMet9VId5
         zTpkzWZs9nTzrq41IewxrUewluc0cetrWgbXMZT6DLfzi+kGW1wSeZjbuybrFD1m4rGt
         27g6Ke7lbzB24GeR5wuvO1TsclbrD6Wdke1t/pP13hz6oqE4k4d8Y+2Gyk+itp9DeMlN
         bzPu01JdVLa1xJ5RuQ0gIXEawlf84dWByuveUWk3xoUXqxMr4w/UiIRlVdxcIbS8Gwy6
         75rEmt4G6wYOWbcOHOnityrNdMx/Ku8Cqm56mC3PoTRj4VPlwW98eJpokuSXHlpypsxh
         rbhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=sgDdyjC9IIXQu125g/CrkulV5sBh4HmFTPPf5uCqqNo=;
        b=xN7mR6348ziOaWxmASpozr+1r+F+xDM2QykB7bb1NLwj4kZpdgbYHHwLcOKHRhGSfY
         p+IXeNwr1L1oWCIceE4mhYFWioOJqsf6q3WnrnWnI5UcNKC46yE1bJhZenzwbuqvUpwd
         bfnjieih+p/oxmflW7EPaPUFQaaTxTGjyuMF/tWJEAyeBZXKDApoXpGSCkIB97UhwIgC
         ZV4shwsaEjFCyKQVsVla4CwHCdaiKvt/QJKpnWhxpg0sxWPx7DZ1H5+YBWWZLoaB6o9Y
         1POvzSgC/EPLjFJMyH2rstUn6vmG1zvb0XuGsqmDDhUdr8h0XraZWWLv4JteI7xIkLkx
         0aYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BKzwuMOf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sgDdyjC9IIXQu125g/CrkulV5sBh4HmFTPPf5uCqqNo=;
        b=rugDX3ffsatmNSNjtOCntz0ApnrmeWhMleVMKQ8EvUSbd5RV5jBQXwyt6bc8MWuRJ8
         /R/zx6jiscaUjOczxIy+5hNq0y7yA8ropFpRrQYk4jrufGUnodZlQqr33IDc5U4eL0qt
         n1SVfHHyXbUGkWgVuhxlGqAAtDdaccjU54hrjm9d1YQ7cpuDYZntOFKGd+4KBZgOwuH0
         rE690Ow7VeLzaopwO1jY+WzvrMqKc0G4NGKont2rN4hEOlsZNFKS4oD448jYY6zVy57Z
         1zjLWDON9BANm8N9V3tSAQEQEhFxu6k7bG/Q1S2fnPoGxf9WOCqy6AS0fXNUtpbG4iJd
         Fr6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sgDdyjC9IIXQu125g/CrkulV5sBh4HmFTPPf5uCqqNo=;
        b=oEhigoYabEgWKaiT6BCkteuWvpy7YulBQtUd1iZ1DkNqNQqOIV4vuN7Vz0XXkOWm8J
         hN5gTgrIwWkbFyZy9WavtEKzyiGJKame615qlFyJg+iD33qxoBjJFnYj/JnZK5fquzBM
         brj6On6dDB7Sxwg3Ju+X8goe5Xfd0i1Qd1BQy3Vp31rBFhpGNyEq7wbnTyaCXxIaFlAT
         BZYQza8JGm3pRFJvgsZLWJIx5N0Jjkt03T/XrjTZGfNlYLUShcPHVU4TD7P9+gOX3k2P
         C7oWjOBwWoIqY3d7VA0MYncJuIyeQP0+lAPHzkHdeHpSmI4S5POL3WiVJ8Dk0DfiDTW8
         eMYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531WsdLxibGWHlWm2dcBHynhBKnV78YKkk1yee07G/XTFgB4kdB+
	V4bz8j61Zv6Epa6qoiJ+V50=
X-Google-Smtp-Source: ABdhPJwirMxtU3M86PGrJIkDwUxOC7SLu9fA07pWK/vf38icOGqIvrKWais3WI0U7tZASmCxQSEKlA==
X-Received: by 2002:a62:6202:0:b029:208:f11c:2143 with SMTP id w2-20020a6262020000b0290208f11c2143mr21768784pfb.32.1618865116258;
        Mon, 19 Apr 2021 13:45:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2cc5:: with SMTP id s188ls6996871pfs.5.gmail; Mon, 19
 Apr 2021 13:45:15 -0700 (PDT)
X-Received: by 2002:a63:a47:: with SMTP id z7mr13346045pgk.350.1618865115513;
        Mon, 19 Apr 2021 13:45:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618865115; cv=none;
        d=google.com; s=arc-20160816;
        b=Z/VphkgURFNjDncI4MfNZU1hubYdu1nxGUo3BcavSl4MbbbTV8wmgPalejvo16+CZX
         21kVbJ2Q1vGTnLVH0SVuIueCcYlVc0ALiZzZOYxPDA9wIUs0czKdActrQHpeXrO9k6FA
         udmrQ/65iDTedRzgqoAxrcAeKRPflIyL/Asvphh0c4KvbhlagENmVxJ58bisrBrobmkn
         99mktNOVzmDUgMHhSPOJkAHEmcNhV5LkpChc92eZfSMxmkkG44y5IR9AJLNdQUdpRIdx
         2R1Q/uOxvMvRm8R4FD6Mtryu1eeGUZkemgC+RNMs/2MDuxZLnJhRC5sQpzQOuqQt7THJ
         bnlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FfJ2kcX/cDPARvKDyRfhZ3ZbdnKordAyQTnrTIh2yOQ=;
        b=Cbpc0urEymLkbvuARk+xpY6S44wYyI87ULBWcOIqyob64oI8mD2Mhy6dzhsLn3FQnL
         HTtl7Ic8KdkwgaYw02Onf3RPbAIcZpHwTpMGykcafy9RM+TblbJw3r3L8LkO9Gpai/eB
         QV5AfzJLxSi2UxMIGfDq2KLBnJayCfdvhwl5HMuNXOXJLwmSeXWOxLCIBNXaG1eGkGD9
         3TDSb2p3snYtK8S9VeiW+Z5K9DyOX4GkKHtfqFDySBSB2rSFgNCmC7PHUIvLnxw6W8m+
         g+da1y46RaZuZLc7d404zwdTdArUiLlIg6LVjLw0Zf9cOJ/8fImBtNwmPVxy+24VJJSA
         N+hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BKzwuMOf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s20si182188pfw.6.2021.04.19.13.45.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Apr 2021 13:45:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 259D1613DD;
	Mon, 19 Apr 2021 20:45:14 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Johannes Berg <johannes.berg@intel.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 13/14] gcov: clang: fix clang-11+ build
Date: Mon, 19 Apr 2021 16:44:53 -0400
Message-Id: <20210419204454.6601-13-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210419204454.6601-1-sashal@kernel.org>
References: <20210419204454.6601-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=BKzwuMOf;       spf=pass
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

From: Johannes Berg <johannes.berg@intel.com>

[ Upstream commit 04c53de57cb6435738961dace8b1b71d3ecd3c39 ]

With clang-11+, the code is broken due to my kvmalloc() conversion
(which predated the clang-11 support code) leaving one vmalloc() in
place.  Fix that.

Link: https://lkml.kernel.org/r/20210412214210.6e1ecca9cdc5.I24459763acf0591d5e6b31c7e3a59890d802f79c@changeid
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 kernel/gcov/clang.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
index c466c7fbdece..b81f2823630d 100644
--- a/kernel/gcov/clang.c
+++ b/kernel/gcov/clang.c
@@ -369,7 +369,7 @@ static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
 	INIT_LIST_HEAD(&fn_dup->head);
 
 	cv_size = fn->num_counters * sizeof(fn->counters[0]);
-	fn_dup->counters = vmalloc(cv_size);
+	fn_dup->counters = kvmalloc(cv_size, GFP_KERNEL);
 	if (!fn_dup->counters) {
 		kfree(fn_dup);
 		return NULL;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210419204454.6601-13-sashal%40kernel.org.
