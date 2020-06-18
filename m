Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB34FVP3QKGQERZNRYBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBFE1FDD89
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:27:13 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id bh7sf2784572plb.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:27:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443632; cv=pass;
        d=google.com; s=arc-20160816;
        b=WXvsVxVEqtMj243gmxNCTbfeJb+kXpIkV68jwEzmU0b8Pk036GHTwkTxj3i7AUORYf
         s2YfmH6MKgnFCPMRQFjlQx6oE8U1bE4EhesdWtrjNx7wQvjJSCbqGNIbaMwbk+DdkXW1
         4LW7CEYC4FJ0S7xfzQXY6rKW8cBWu0/lglYBECFWQgU3PN9VchWlG2M9qV1Mn+ZlOM6S
         QDS9OUdANnXHJfa/Z7VNqCb6cKVYEaHO2K+yaDLTbD/nyFSYhjiKkeUUdB7udRY1plbA
         GLWKtavIaEKfCbwt0B+5U2aAi1jQP0aDhuScgrgnPvChtfeVpSUFREKSmGap8OSRBRNP
         J2UA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1qRcXo+ys7Ub7/rMP4RGAiWQeAB0k4OFD3I6IaxkNpg=;
        b=AbvJFbyPIfmCVlHub2hPiDWmAqLUfCYebrTNBG89BOU27/m8y/neEfrqY8BSZieNTS
         yPfxBS45H1AF+6Kwr3HrWThFM8U5WdcfqcAdR3BrqDGHprbL0DK4JB+0rh71FYLHyb/E
         646T4E6sidIAgdElfuY+0KL/4o95poAaubDBtiil9qanD4oSJZGr5GqD6vkj92RS90MR
         oy+A7HRhJFxsjRYaIAD2v9ycalpGD9ZRjB1aTHGtfEOJBoZSjdBkPtSoGpUwipX8U0Xz
         0C0bgqU3wwiMwQ4QNPmAeeVlgop+/4FmkirvUx9GcoitaEsNHEDF2aF4EgrvVQDatOMp
         pl5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=daTcDu4h;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1qRcXo+ys7Ub7/rMP4RGAiWQeAB0k4OFD3I6IaxkNpg=;
        b=mTrOB3u33Qc9XVDa8SHLW1zmNdgKhG+w3WkPeyaY8V00SXUEci7W8h/JaMu+Lsu0bm
         Wmz8k3HI7Qa8cxGK/Y32XNp1ja6C6AzHjUzpPYmgVc1pDwg285uZmdT2H2ht/F46/6m7
         qgCc9vTRJ4ykTZCdwa3dyRYL3LK/G95ttB7FjP2W3Ol4TT24zyZQBzz5KHIYuf5MvpHp
         GsfVG040zWT+6eIPUw75o6ucmH3PxjmJFsoMPX+H2XZGpCW4bJxQ8GwBOLDWmAo2ndXX
         bgqC6CGs/0s0Im62296YVEslIJHCHbdsFN+D9NK4jWe9HWaw443MG4aWNqezBC6FhdWa
         IasA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1qRcXo+ys7Ub7/rMP4RGAiWQeAB0k4OFD3I6IaxkNpg=;
        b=G4z1ZwtgnpCP/KQgHt9Ulr1XRivEOihfjilEelXuhZsR8cuYatxVeo91f8fVB/KzGj
         1+GhJVHYfAnonFW+aDP8/nf4Uq8M3Kif3i62Pg863CZuJsJyeW9ToM6SE/zsl6FCNBpF
         x/Ei3O47xPFo7ZXbLvaa3LTcUPGg6BovWbZ6yhIhLIPHRJm5bEjU9fF+IW/8AwgNFZM4
         fUmbljfLFgDL5LWVHAjT46UZQcqM5wvsvsEFiRsHcy/O0iQ1vzXYnqnPtDT/uLntUtEs
         zqToJWWr6q/EFP5sOJb3uCd1pfRAPdJoBZsSdG2+UQGkCTpVJyHRv/v2Ww0RLd1riJHY
         aeew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pSnSMHpXPKmIfBxoR95irKg+A3lYNDM61e32dd/NQLwOxWeud
	V8h1Jq3jpXPhmkrdkf6e/XE=
X-Google-Smtp-Source: ABdhPJzRAEaAqraiZLtfP+cnYfCfpz9xqGbSfoHilrXoFmOzSNEnC/sytvJIfciuwiyv2QPIqliJrQ==
X-Received: by 2002:a62:e81a:: with SMTP id c26mr1387609pfi.281.1592443632313;
        Wed, 17 Jun 2020 18:27:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:db18:: with SMTP id g24ls101913pjv.0.experimental-gmail;
 Wed, 17 Jun 2020 18:27:11 -0700 (PDT)
X-Received: by 2002:a17:902:222:: with SMTP id 31mr1670386plc.67.1592443631583;
        Wed, 17 Jun 2020 18:27:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443631; cv=none;
        d=google.com; s=arc-20160816;
        b=Vtfo+I7ORbuwp4yfPjiv3YzG17lHesGDvx0aW7wzpERRjv5XJZylz+fnQSib7bSmnC
         qo1X3iQYj1KiNtPPPJJuaMZl/Au4cfET/nZH5PGuf82QTG+JMYQyClk0vBDkLX6wgM4B
         rlhW3aStr9Qk5vAEaBIdbfs8PPEhsEaUTDX0dTtNIUp/rblbHWk3iwaj4cIHIC+zaHlz
         /+aVuY58v62QbDTFqDRjrnVErXaBN4PgXb+CScap0k2v63cBwoTdBnM+SwNx2k48ot7p
         M9zQmaVjid/65ctlCgrN7wB9T+cHZfOtyTQ9LC6jRX/j2lQVCWXjMU19ggg7kRI2wJ4X
         9Fnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3S5i5oTGVCWzldRrADH1Y5uamNwgqYM/VOwzFi6ZP9g=;
        b=j3r9J13bNw6MNkn3DjeVz6bwYwM+p/8giZJEOaANxvE29k30LMwnzHhyOXY8/b2GVD
         /YYd6YUexathpFYUOZZwUaXKsP5cAyJTw/3xN+jM1QM+eKa+rSS58ctFH9dKC9s+MZek
         8i7opSlOsns5mru9RU4G6kQKZnwrtVmh5Hfgg36l2rOfEC9KtZDfkuZ4rcf45/fCw+P/
         LH0J6ZYPxYR4VqW0q0HfGqDJDA0wJqum0GYAyU50YcovS4+eap/W2NMOzW0NkIcxGfv8
         l4HCigKyMJGyzpHrK4YQgf3XG+v+q+AKjjWlDeOuUFi0IUrKSPyqhNTaT7VcgqwI7LnE
         +ukA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=daTcDu4h;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q194si121500pfq.4.2020.06.17.18.27.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:27:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7E1E920776;
	Thu, 18 Jun 2020 01:27:10 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	clang-built-linux@googlegroups.com,
	David Teigland <teigland@redhat.com>,
	Sasha Levin <sashal@kernel.org>,
	cluster-devel@redhat.com
Subject: [PATCH AUTOSEL 4.14 055/108] dlm: remove BUG() before panic()
Date: Wed, 17 Jun 2020 21:25:07 -0400
Message-Id: <20200618012600.608744-55-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012600.608744-1-sashal@kernel.org>
References: <20200618012600.608744-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=daTcDu4h;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit fe204591cc9480347af7d2d6029b24a62e449486 ]

Building a kernel with clang sometimes fails with an objtool error in dlm:

fs/dlm/lock.o: warning: objtool: revert_lock_pc()+0xbd: can't find jump dest instruction at .text+0xd7fc

The problem is that BUG() never returns and the compiler knows
that anything after it is unreachable, however the panic still
emits some code that does not get fully eliminated.

Having both BUG() and panic() is really pointless as the BUG()
kills the current process and the subsequent panic() never hits.
In most cases, we probably don't really want either and should
replace the DLM_ASSERT() statements with WARN_ON(), as has
been done for some of them.

Remove the BUG() here so the user at least sees the panic message
and we can reliably build randconfig kernels.

Fixes: e7fd41792fc0 ("[DLM] The core of the DLM for GFS2/CLVM")
Cc: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: David Teigland <teigland@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/dlm/dlm_internal.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/dlm/dlm_internal.h b/fs/dlm/dlm_internal.h
index 748e8d59e611..cb287df13a7a 100644
--- a/fs/dlm/dlm_internal.h
+++ b/fs/dlm/dlm_internal.h
@@ -99,7 +99,6 @@ do { \
                __LINE__, __FILE__, #x, jiffies); \
     {do} \
     printk("\n"); \
-    BUG(); \
     panic("DLM:  Record message above and reboot.\n"); \
   } \
 }
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618012600.608744-55-sashal%40kernel.org.
