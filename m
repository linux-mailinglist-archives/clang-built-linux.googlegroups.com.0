Return-Path: <clang-built-linux+bncBDZKHAFW3AGBBFNIRCDAMGQERLG7NBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC633A2D11
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 15:31:01 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id l13-20020adfe9cd0000b0290119a0645c8fsf909530wrn.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 06:31:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623331861; cv=pass;
        d=google.com; s=arc-20160816;
        b=J6CJQOKcMUF7D4hxyDqbggEropeObB7bcvMwYHFVOVku1siK5w8Rh5Yfc4E0NDZbuN
         3t2Tgo0lE9ZowcrX5L9/V2kucY3OAioppMdR2dM6wk5Hfs+7sEUJWirME8PDhPnRKf4S
         LJoXsRkZgmaHUrLYFwraKbJJ4kctIFWs7lHkMlV2/DRh6hX2F366aLr+ATV+NeDO0KcV
         vlvtMbFdc3B76JWo1PNANIH9n+hr/aGPOt54oJ1sC8vDfn80iue7m1x6WIvAabrw2J+f
         tehLh+RctarnrY4CRvwe3UgpBwWzvolP9mjnEDkcBb9ySz7sLK8lVb2/fQGmoQWNiOoz
         LP7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=cxjVRDvw0C1m2Mw15p1NA0bC+R9Q4qMTASytoJ2En/A=;
        b=wvE0QX2JtAOmC/XtZGJOlgJxyQutlqwAM3sngZoegAelrG6ntDW9hMywzPGi7oxkDh
         JpWVgMHDzfirWvT4T4xLju0+1DSIsD3hfbyUpNqYlrKrUXbYZVuABnEG0PTUEqjGrSQj
         WLMcVwihIsY8j23CQenbWAMGDw+7V3yjfeOL7SUKs/DyAEfq+EXXByrSfg1BVlSl7SvE
         6T4QNb46WKfMUBxBjdE78AFSJQ2uXPSXsXnWBc0L+rksZ8BNibFFmUHUaCBRGzb/KBHX
         TKmo0xv+kXersV6KDhjj+dLzTEHH4d4ld28/8WjomvbShVG6+HmLG1CC+kZQpY8A+pRR
         J0hQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=q0MaF8Z9;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.28 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=cxjVRDvw0C1m2Mw15p1NA0bC+R9Q4qMTASytoJ2En/A=;
        b=T4OW73GFZHKSZ8nLanuBB9KUyy2kl4khd7MCkEtnKWuDTm0BgpIBR6DHWl93P4Hcp2
         KLK5wLxregIPIfhmLtGcDJUicpRcZHcMzhYlLZsV3kpp+IBc4tO07rYD0Ysa3A+cCCuH
         AAXJ+D2VP+Q3CsalArZgwnWCnMmLNBpWNrsjGUVvHrlXV6kiCdx8qgd9T0GRroSj0QjH
         40yxjklokhKzKZQ8ZLkM8CUhfWPpzG8npHVON4trpsSm13ZpS1F7Lj1uwTYzJO9X47xE
         g23mfBE/nM5JcWsBCEX4PKzsy9e7h7BlYYA8icz6dQU8165onSGz4Q4kydOfc2CxTipO
         ZC8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cxjVRDvw0C1m2Mw15p1NA0bC+R9Q4qMTASytoJ2En/A=;
        b=DydSGCSQVMTFuT0TzkN2dhCNaXz9bB+jCXNMbTXMA3TvhLXkYFKE6ugO0nEQtgh3My
         Q+mWWdfPsEXgGgWl4TSR8kv98yUQrn+/v1LPx8P4MeLvTrJj7jwcq5Ux6TrYEQUf2qmt
         C5BS9oDTHNduAVzXo2RbjdxE/awSBDZiwvVWt2yIK/Ykc5DzEzhM2kIBDkK3J5ehGoev
         mF5zvMdvEyzplt5l0YLW3CVToWbq/OYoPVUXUEFBVFdp+r+gwEvuv4NyZjNyclpHw58+
         D7I2Ph/TjSB3WAUx5MPpSKruIgTkTEdfgVAtHJR9WxyHBmYyrngH0N/JpD9Sn2AJRCVl
         LVYQ==
X-Gm-Message-State: AOAM533QRDhTq1IXan1X5SmwpaEAoOQZzspT4HKQeqFt4MaSYID9XkZM
	l5xJAydGDkWczlQW+piJRGU=
X-Google-Smtp-Source: ABdhPJwcxzJt+ivnnSr+tVETAN5RjvCNwgH785pDqlPfigVj0iznBq1kUP2/FW4pSQoMu5wjgLzN2g==
X-Received: by 2002:a5d:6d8a:: with SMTP id l10mr5686608wrs.63.1623331861251;
        Thu, 10 Jun 2021 06:31:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c0d1:: with SMTP id s17ls1288494wmh.0.gmail; Thu, 10 Jun
 2021 06:31:00 -0700 (PDT)
X-Received: by 2002:a7b:c44f:: with SMTP id l15mr15290427wmi.151.1623331860422;
        Thu, 10 Jun 2021 06:31:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623331860; cv=none;
        d=google.com; s=arc-20160816;
        b=lrbDZnvqZgAVT9M/CDJlqHmFqOkeDqI993IIxf1FkzUcpyQ7hI0NaTHjseb91EPbBJ
         z/fg0XQdnrEoASyRzGaAcsFPKJme8L2a2Re19i6kxoMqE1vj0XWzo2OXnsI2qZ1+HGKA
         8eGENVn8YuaWeUKcDkxTp0fLpHTbXj7a2V7Pwwqdjqko+wBKGEo/3WTJ2XKK8gX/1yxu
         XDgBlpQHPw8OgUTbTOZVEll9j0nh8/ooa84BXJy++p11iO1IieK3RlkCbUM7JPDmlhQF
         vUuKigKiMf3M2y9GDtcy+j3PeDZHjsdbl7NTnBaBtTezGd2qOvqS3B9u7kwH2TvZxBl0
         F7NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=EgJC45Dypvp92B1Ue8sTD50N06sDV0MZrg+QBunGi30=;
        b=CRxcui3MN8whvMCPeA+RkfVC1XmIbVxPabi1PxV3b+Rmh0113/61uHfYyDJjlTy63d
         LxrXmca+s/8GbySFPe/+Ay7/ZU545e9sQfII/QAmGA93iL0nO72KvgZQPLRXsNcRGE5n
         88hxHG9OMOO0CyYodqItNIn+KOYLgSJ0jXn0Hij0RFmIVRILNP7zRHlSOMO7XgNbf1iR
         sTwZlc3yoO1vzA3saYjBnfZ9PxDdzIK4YTm6pVflWJoESH6fpn1j+23e4oJ388KmWajh
         9Pss2NBdVT9RSGCuFpym82lTozgyEPgMQ4cfXSLfASjkChh3iwUmolDS1PdMG0d+e5Pl
         vUlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=q0MaF8Z9;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.28 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id g17si326764wmq.4.2021.06.10.06.31.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 06:31:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out1.suse.de (Postfix) with ESMTP id 18CF421996;
	Thu, 10 Jun 2021 13:31:00 +0000 (UTC)
Received: from alley.suse.cz (unknown [10.100.224.162])
	by relay2.suse.de (Postfix) with ESMTP id C36CAA3B8A;
	Thu, 10 Jun 2021 13:30:59 +0000 (UTC)
From: "'Petr Mladek' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>,
	Martin Liu <liumartin@google.com>
Cc: Oleg Nesterov <oleg@redhat.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tejun Heo <tj@kernel.org>,
	minchan@google.com,
	davidchao@google.com,
	jenhaochen@google.com,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Petr Mladek <pmladek@suse.com>
Subject: [PATCH 0/3] kthread_worker: Fix race between kthread_mod_delayed_work() and kthread_cancel_delayed_work_sync()
Date: Thu, 10 Jun 2021 15:30:48 +0200
Message-Id: <20210610133051.15337-1-pmladek@suse.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: pmladek@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=q0MaF8Z9;       spf=pass
 (google.com: domain of pmladek@suse.com designates 195.135.220.28 as
 permitted sender) smtp.mailfrom=pmladek@suse.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
X-Original-From: Petr Mladek <pmladek@suse.com>
Reply-To: Petr Mladek <pmladek@suse.com>
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

This patchset fixes the race between kthread_mod_delayed_work() and
kthread_cancel_delayed_work_sync() including proper return value
handling.

The original fix, from Martin Liu [1], opened discussion [2] about
the return value. It took me some time to realize that the original
patch was not a correct fix.

The problem is that the return value might be used for reference counting
of the queued works. The return value is boolean. It could distinguish
only two situations where the work is:

    + newly queued => inc(refcnt)                   (ret == false)
    + was queued, removed, added => nope(refcntn)   (ret == true)

The original fix, introduced another situation:

    + was queued, removed => dec(refcnt)   (ret == ???)

The proper solution is to remove the work from the list only when
it can be added again. Fortunately, it can be fixed relatively
easily. I have split it into 3 small steps.

[1] https://lore.kernel.org/r/20210513065458.941403-1-liumartin@google.com
[2] https://lore.kernel.org/r/20210520214737.MrGGKbPrJ%akpm@linux-foundation.org


Petr Mladek (3):
  kthread_worker: Split code for canceling the delayed work timer.
  kthread: Prevent deadlock when kthread_mod_delayed_work() races with
    kthread_cancel_delayed_work_sync()
  kthread_worker: Fix return value when kthread_mod_delayed_work() races
    with kthread_cancel_delayed_work_sync()

 kernel/kthread.c | 96 +++++++++++++++++++++++++++++++-----------------
 1 file changed, 63 insertions(+), 33 deletions(-)

-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210610133051.15337-1-pmladek%40suse.com.
