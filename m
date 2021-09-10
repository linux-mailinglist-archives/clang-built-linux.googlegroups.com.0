Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB56H5KEQMGQEVA2O2AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 99523406095
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Sep 2021 02:16:56 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id s2-20020a17090a948200b001927a323769sf167231pjo.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 17:16:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631233015; cv=pass;
        d=google.com; s=arc-20160816;
        b=f8uknl8NjwcT6mbgHLASCOIbZBxxS/i1R5WV+86QzLUPXsHMF5JdiDEpbnC+xx0c4V
         R1nXt7y2j6kMGT5PtGajiRali0ShuYMC9epwvi4ZhlW46PaozyZLsn9Y1YRE484rCARO
         Z9uE3lyURUXk1YlzusGIVzanrPLcMqeC3NW0yxcCYoh8isuySCtbixB4NoNn4MQdwIi8
         ron/tdrDSGsDHtTlnPlPV+q6sERBPHsVq90iJ+yBYzhUzcsDMvOGaduvxkliOEVhsLzV
         YW+VnERt3XHPOv6Bv5Qb6N50nwLLRT8CqKbERS0ewVawxfT2wP72bq+yzbXgEADXwetG
         uhsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ReBzsSBTLOQyF7rsBeqvNMFqAQHcdVwFMyXfiYW9hHo=;
        b=BKWaQ+0MXu56dzvJEE5jJBIzLLTHrYRZORqjUs2WWeoc62INQrOmQG1LY8qNldyemt
         C8NQZPX2u8uDXD1Ui7BxUF586eKrMHjEdXJ4jdy2+IHs8pgN3Vj7ykJl8LOW6vY5tOnT
         joPfnqvfY2uZHpAoDOhffAzI4GlPfrm+4steut/+EYu0+/o/fhBBMrG6DEICjg9fVRIU
         dfcH0+5pvtR7OuLjqNG/R1kF3lpyXwHP8OEdO57Imvhk+YYvd7zL41nOYoSFNbaZfkOT
         wq70Ps437ehupGw9tj1YBPJOeiqcy22Kj5kPlU+Y/McCqqWR7wKsd5WEdxM5i4g5n/Ey
         wkqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kxasgW6o;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ReBzsSBTLOQyF7rsBeqvNMFqAQHcdVwFMyXfiYW9hHo=;
        b=fZAD3lwF8NB+zu2GPyfQ9GppHyXVqzxIYnwwv2HfNE7QRDiQ0ahUD1n7tIY2zsqPI4
         FTmjtDrc2clQ5u5MW6T0jZieY+kx6qBkgtbUZRP20yD8Fxse/hf9f4j/7vlrPlmCgfKp
         hAKwOp6aG3R8NJiF0brDyxkh7akvzc+SGJOkBKumuVQFlZ5rPZAeKqoPylZefazfMp/X
         rkGg50hrwsULvTevKtdKswS8hKFzhcYBpV082Dt8FH/dPHMQWiJXgBqTssVzwaDt1IA/
         WU2ab4/IghX9st5McNey6JfwyDgjjnvYz34ZeErjz+GL/Lzvme1yc5BkDFRj4T9qrOaZ
         xSJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ReBzsSBTLOQyF7rsBeqvNMFqAQHcdVwFMyXfiYW9hHo=;
        b=MtZCma5nxHaG9sxCF4eYdPUU7T9zeC8e4E/hSFt1b3SKbQ+8uhF15VwbHYGyTWHS4o
         JTC5rBP0mRi/f9SZxKpy9qopvmyxk3t48QqS6ToBdy3s4nEyckVd7LpoZgMeCAEEtF8u
         9LtUi80SuwBxIXK/wuznn/hBNAZYzOC87aYzdJZoLOXfOtOzL7AO2xKCXDIxw7YQRop1
         6ZZiREfX31mLYPJXf90M2CJFAl161jcYieSEpNJCbC3rqjBVQlhGu5FR7iKXLOJx1PJm
         X/qpfPg+C1oGImwWG2od+fCRi3eY4nwdlcC4xAlgjrcHsyVfKPPnLdYOfhy0+N4aYYiE
         LyKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530P3ZtHO0itV4JSYsW2U2ia8OKnQWjapE9+yLDO4/m+pS3KnlHh
	/dAc8Q7yI7eMECkCnggt2dg=
X-Google-Smtp-Source: ABdhPJwAFfu6gjflicomGIHagf5gjFDP4EWiFse41MDLTvEQ/S9X25z/4SLm8WrjOjaK45rPDz6xFA==
X-Received: by 2002:a62:9293:0:b0:3f3:bb99:5d34 with SMTP id o141-20020a629293000000b003f3bb995d34mr5308247pfd.9.1631233015134;
        Thu, 09 Sep 2021 17:16:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b492:: with SMTP id y18ls2074559plr.11.gmail; Thu,
 09 Sep 2021 17:16:54 -0700 (PDT)
X-Received: by 2002:a17:90a:e7ca:: with SMTP id kb10mr6477221pjb.82.1631233014567;
        Thu, 09 Sep 2021 17:16:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631233014; cv=none;
        d=google.com; s=arc-20160816;
        b=tfHqqHBEUlqdROMBx+juZ94NRhSFBAARubPbS/piTMicGP4bM4UvNQZXwM7vd8KRq2
         8ufq1sM2lvMmgPMLwHWWxXJk+rWdz7YnPk4lIve69HTDZ7p2LhKarO5qjVPbBJnngzbi
         PCHLRzNjdAouNvx4W8nbaVMheWFpBDfqzcXX/myTL5GJ8PztzuhdlqnDacf0814Hdz39
         yWq/YjRVlPXdVgB3QygCAu6yw+wYW1sFTgP+r81LtQR+dUyHUULGVlTn3IXZkFTAjzrF
         wxMS4yWny0Uz02jXKxDaIyNK1xPDcplJBPrlH2mxeP1WKMrfPHQ/QjKFjf55GmjxDojv
         4XNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=MtZpOiFyNq6ebNQOMDoCUMoBXpVwflRjpvCjhXPbP6I=;
        b=sV9Qdc/SqXbeLvsUFoKi6yq7DUnUTKGqWk3mIACTu1LhZ1JLOBdwLCI40Q/Ag0c/V6
         HKXVfZVL4LmnjHmBakZUlx1NIanxoXMXqF400NjrZA0T1H1RiUKca3bGojULShJjeTRQ
         ImVcX95HR3ZEcAl9WyXnxT2xc1Sys86kyOKZ31jP28RTpg6L5gaBaJm6nTKV9oN3gS+8
         ymI/Lcn62J2P7DL7DY5UbklD1AlKImY9ErkvNdQflzBVMZychj/8IOR3GmS7GaYtL3Qi
         5/yiBtbq4x8fbpf0izSMlBrBNvG7okOczEEbDX6LdGqw7v+uZ6xL+UAkohPafzWLsbqq
         CkfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kxasgW6o;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j12si283594pgk.2.2021.09.09.17.16.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 17:16:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 87F7C611C4;
	Fri, 10 Sep 2021 00:16:53 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Theodore Ts'o <tytso@mit.edu>,
	Lukas Czerner <lczerner@redhat.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-ext4@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.14 40/99] jbd2: fix clang warning in recovery.c
Date: Thu,  9 Sep 2021 20:14:59 -0400
Message-Id: <20210910001558.173296-40-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210910001558.173296-1-sashal@kernel.org>
References: <20210910001558.173296-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=kxasgW6o;       spf=pass
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

From: Theodore Ts'o <tytso@mit.edu>

[ Upstream commit 390add0cc9f4d7fda89cf3db7651717e82cf0afc ]

Remove unused variable store which was never used.

This fix is also in e2fsprogs commit 99a2294f85f0 ("e2fsck: value
stored to err is never read").

Signed-off-by: Lukas Czerner <lczerner@redhat.com>
Signed-off-by: Theodore Ts'o <tytso@mit.edu>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jbd2/recovery.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/jbd2/recovery.c b/fs/jbd2/recovery.c
index 4c4209262437..ba979fcf1cd3 100644
--- a/fs/jbd2/recovery.c
+++ b/fs/jbd2/recovery.c
@@ -760,7 +760,6 @@ static int do_one_pass(journal_t *journal,
 				 */
 				jbd_debug(1, "JBD2: Invalid checksum ignored in transaction %u, likely stale data\n",
 					  next_commit_ID);
-				err = 0;
 				brelse(bh);
 				goto done;
 			}
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210910001558.173296-40-sashal%40kernel.org.
