Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBOE53D4AKGQEA4PTKUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 96614227073
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 23:38:01 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id a24sf8445574oos.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 14:38:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595281080; cv=pass;
        d=google.com; s=arc-20160816;
        b=GD/g8cPRnuG+H0kZvhoptUunw09yYJjnlCnbvemv33M8Bg+tDmzbJh5wAY+OYrlchg
         zmIFZ5+XIMdAq9uS1xtJ/A/UMkK4ySl0zdft/NYSH+fhDYNxTklNecm/zDSibcv34d/L
         WvMwaXWVvJAB3WGVOtJe7ehBQf6UjYbqLTIwSdmeLIsjYlDdDvGiA9pkXZd2hsmYlVfV
         URwCGoqmKvXdC6/0mQrvsx86SpbAj/4lIsAOEJbnVEhVM8+QI5uRICv7QwEFB+OrJWZL
         M9j10+AGNrsE1jnLYba2ub86krSq0mhZvyIJtSI91W+Mrwd61tFNc3449X96IlcLoGoG
         0v4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=a8xknfIgpSFaEE7bpKSqstMJozG46JDNg6LeFDGoyLk=;
        b=D9PJ6USaDx277BNtoMd8WJlEYxErhPfdTKJRfs5TfqvNwwZXgJ4UjHtTMg5uGSwGkc
         8zap7RwdcJ0fqXEdfiWBiFnnI0tB6t0YNlL24N+d0TgzLg9CTLV7U9CmZ/eSFhmIC5Jb
         Tsq7H46wtODJ0E01++OT9XFM0AgiumHr5TEalmiZjSlFs61VqzdP949dndCWSJsxCkLD
         7Fc+LVmHflwpC7/yFwMKFLqTp+IBS+KQQQHggMAUL09RW+kaKJDtHpx6csaChikgNoae
         er7Bb01QmUXHDHx5ukaJv8tdMysot7bJXqVEcJu4uNJfklcgSG12ufgSdOHIYyJNiBDr
         lKXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jFEXa1OS;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a8xknfIgpSFaEE7bpKSqstMJozG46JDNg6LeFDGoyLk=;
        b=F1WPyb4Rz+coBcHbrVTvaNj7QtqNt5+Y4MkfyK3mZOlgaOMwXkIzyEkYT/yK1TMVWW
         eXTvbaXPONkxVvKLxYrnEoBJMopxTrlL6XVSEABMs9gG6O2/koiHPDI2MsERHiiEvgQs
         XzShGK0xvC75za5epsgtAJAQ7tU7jwxq6Q0CIIzgc1dbb8kzGjhcxKoh6FFlQ86r60d5
         eUO7ykutPJcjyMpnp+XANERxqIvxT3LdHBODBIe3KhlCJ58HqkpwWNK8OCAOWg/i3smy
         fTEPQuCvbJQ67a6zayY6r8i57jhJD+3duIIJmzGbIVWV26SIxlnqy8CRfL8jvHGRdGdD
         gxew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a8xknfIgpSFaEE7bpKSqstMJozG46JDNg6LeFDGoyLk=;
        b=hP63iDMxbwob0d9DJ52HAxlMSramWHJPiiDfPH4rsmcHtn+pQSpU6CNmQUpIh5w7Xp
         lsDsyFSyZK/8KnwATjWU/ShUuTnGGRlNV3PdQ4Tzf5gN3K00dOg+BK3LVz+uD/IYOgrP
         b3N2SPE7MuJPex519lKs57CUydilbfguXfTJZd749LpBUboiHhfW6TI0GiG+tzQl3nUp
         T8txPd4vSyPuLa2AW7DlAYQyMPss/SqNudQ42hbzZ58/wiaUPuztJHEWWQQAmFkHX2WS
         KqoVnaizyH1FlyzzHQfUXxcnWMk2/BY61xGaOlijv+PWvgIdeDi56XmquO6zTnpHYMIS
         udUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mDOT5aL0eqKPJRTb8nibiGep5ARpDlU4wQ0/nYOg4Wpxa5JdN
	8CMD9lbffoObGV6R7ANYSRQ=
X-Google-Smtp-Source: ABdhPJxZMvomu0k30dOCh+GAqCjDhWBJKd1+nx8ZCScmFRKyQT3sdDR/H11Y4cGnsQmJes9OnAIJCw==
X-Received: by 2002:aca:af95:: with SMTP id y143mr1016314oie.52.1595281080132;
        Mon, 20 Jul 2020 14:38:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4684:: with SMTP id z4ls3466112ote.1.gmail; Mon, 20 Jul
 2020 14:37:59 -0700 (PDT)
X-Received: by 2002:a9d:6341:: with SMTP id y1mr22416265otk.338.1595281079797;
        Mon, 20 Jul 2020 14:37:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595281079; cv=none;
        d=google.com; s=arc-20160816;
        b=o+ZWJT6/jnt7vO5Of1Y/Q0OFJxvsbhxmqBq49Obw4g8wbAemxiEtk6OBaJURCXaGsA
         BFV5CXsVZ77gOG/G/QzBXl/ZBDZnyFmPZ/b2CNnu77xqDGdhfxCudosyQXY0SeXh8A6M
         IkQPp8CPaWcuvOrOYkOIc4T8y+XtnCtEpjTJMyduPWezf3oencrWsAqth360tg5+nwGt
         KSqSwO44hgCwQstwEYboEunVCjJRP871hRLEIeOf5hdTRuJv/RKOTJR/vw2pxy36Nz4L
         btExd/lrBCudorI9E7Am+5KBZirMwiJ+yM+7rbniOtHhWCoGNeEM5TzaprZxcEkIEJV+
         ELmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=IE+So64SJGedld+OHyXUmvcHJ/s2utmpXyJBUxCxI/A=;
        b=GpYePmkouQce3q6bAasRA7pFAK6EzVVYg//9i0x1QepqYpmm+V1TM2GZu8cetRFBc/
         H/s+1UGiyewNzMez7rjTJ79wZ0aNm9gYjv/d88RQxQNFiePeC9ndVQ618bvX74BPqlRX
         j5Q+OJa6Fr4Wr2VJK26Jr5NEdI+d6c04XVTAuIRUnzBomovKVrkLdjfnJWnTYuuarhqW
         mQdP6iRhDD5LHeBjvd1tLalso7rw0tuQQ809gTbQz+uBwE1HfYpbHksuMBz30970tqgx
         ZpePS2yiDz/8JQO9A+YYS8LyzLk6EYJkQtN27mdudVk4HXI76fteOwLU/WeYne4TQKKa
         3otw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jFEXa1OS;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m21si1333651oih.4.2020.07.20.14.37.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jul 2020 14:37:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3BF8122D06;
	Mon, 20 Jul 2020 21:37:58 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 35/40] x86: math-emu: Fix up 'cmp' insn for clang ias
Date: Mon, 20 Jul 2020 17:37:10 -0400
Message-Id: <20200720213715.406997-35-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200720213715.406997-1-sashal@kernel.org>
References: <20200720213715.406997-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=jFEXa1OS;       spf=pass
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

[ Upstream commit 81e96851ea32deb2c921c870eecabf335f598aeb ]

The clang integrated assembler requires the 'cmp' instruction to
have a length prefix here:

arch/x86/math-emu/wm_sqrt.S:212:2: error: ambiguous instructions require an explicit suffix (could be 'cmpb', 'cmpw', or 'cmpl')
 cmp $0xffffffff,-24(%ebp)
 ^

Make this a 32-bit comparison, which it was clearly meant to be.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://lkml.kernel.org/r/20200527135352.1198078-1-arnd@arndb.de
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/math-emu/wm_sqrt.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/math-emu/wm_sqrt.S b/arch/x86/math-emu/wm_sqrt.S
index 3b2b58164ec18..40526dd85137b 100644
--- a/arch/x86/math-emu/wm_sqrt.S
+++ b/arch/x86/math-emu/wm_sqrt.S
@@ -209,7 +209,7 @@ sqrt_stage_2_finish:
 
 #ifdef PARANOID
 /* It should be possible to get here only if the arg is ffff....ffff */
-	cmp	$0xffffffff,FPU_fsqrt_arg_1
+	cmpl	$0xffffffff,FPU_fsqrt_arg_1
 	jnz	sqrt_stage_2_error
 #endif /* PARANOID */
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720213715.406997-35-sashal%40kernel.org.
