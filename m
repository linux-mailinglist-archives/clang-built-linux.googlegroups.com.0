Return-Path: <clang-built-linux+bncBDYJPJO25UGBBT7FRT4QKGQELBNB7LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 4561F233A02
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 22:51:29 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id q5sf7050217pjd.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 13:51:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596142288; cv=pass;
        d=google.com; s=arc-20160816;
        b=n3qCeAiYzoYewO/Fbx7Z3DN3nhCrPutMREm8o2R0TFgo5nmCXDHi7G5DTLM03lqHMX
         RBdKBzz25crlFZOSAWkFDWJrdRHiiZ3JXLounKzVxbdbHxOKLbjyJWJi5iMama8nt/DO
         q+Imzvy7Gn5iHkQC+mT4ieZCDHfbhnBn4TPFW8ndibx64e9dvai1mqM8dS9M8qmOr0k0
         xnEE20UJxYx7LSyS5akzN+8H5uf28Cux6xjR+fDkFiXS/MNY/85JbKV47XUxx/p6JDKJ
         /rH1caYE+2lIvPaxciiOUzxUaWVRvYzmGY1SXIrW0OIyEIgkZ+83SMTL4W2393VPHR//
         baTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=+XKzDs+xQyjuJ4km11XfAEKwpP1XR03D1AzA/v6TAnE=;
        b=XN69JDAfe5cNi8HViUTPe+YJrVRYJy5mAzIyNipN5FZtgy/1HzBFCdEZD5lpuG+KGk
         8rLBJX87pk4iPW8zybv1/jmJ5wdj86zd5syeaNSmS+F+WzlVb3extf92IjqjJ2OFy+qO
         lI8u8xH8R6VSYs834MuVzQLe8sx7ahnQU9qpaZbjXzo5nHtw1/8iYyA7DiHGT0czdE7N
         0emz7eqcuQg/4rSVDltVc/78Jhs7OMqiF83EiTrYHAi8WilSuEzme8KUQ0eTZX6aMT9q
         TFIOM50AritH5Cl6hIpe2sl8bNSpZIfZ7RP+puhsknslYPA1EHWc6VI2y8mixj2Eb+lI
         vkDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ViS1JlQV;
       spf=pass (google.com: domain of 3zjijxwwkal8sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3zjIjXwwKAL8sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+XKzDs+xQyjuJ4km11XfAEKwpP1XR03D1AzA/v6TAnE=;
        b=KOghG6f89UKu57+0vy0E8UnMdIjGBWr5p+S45OAFb5OtzbxYo3NVge2eKL0yO9N+of
         pzIDWIh69MK3G1epvvqNxJ+clgDD4t8Q5/ASu3NKEovEarNrGyDDmDSj5m9M3W7TWlZx
         xmWpt0t4f3N248RwTeL3+vL45JD1hgKhED21/x6hW4ujfDt0mydVL3CtAFy4dD5QmS9F
         14+Hbu/GS+FiT3X6WzuD54/JE3/rt9PSsw3TlJKjZHg9kWcNOtDs34VRihbzK1kNTjds
         ceMUwUNibiHPfwfXAALlP/+Pyzh/sZuWeuLtKqRlSQUWtr02BphR4qRcupaLfvc7FfZi
         wKKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+XKzDs+xQyjuJ4km11XfAEKwpP1XR03D1AzA/v6TAnE=;
        b=NGipgREGSunPci1WuKZJPXCMNgYKguamaQW7QMfmthTRS7I9d2bs/PvszQA7v2+2sX
         ZZzWXXW0/jARFM1MjYtiHIZWyahQqB7b2LBXTLa5SRBtx6wmrf2UVzPUjcHVBd+lBs0e
         bvAGIum+gN+DT4n16ZklN18S/cM8FNbE0/gdxKEXJBY/p7btUAg8gi1UDnlqNyp0TPsn
         L9q3sYUFBlRQx5PjJ+KVmfpCvI/wrIWNbt3OjvwXrbPFwBbOLDqZzeeimmd/kT0wVNnS
         LmPeg1gv23CfH2UsoZADXM3BRcaGFzZlG6Radj0jcphtNNQe0g+xprkbJZvj0NGI53MW
         JmUA==
X-Gm-Message-State: AOAM530XJLC56hkIbLZztaCWlSw7ri9d0RwtfYkY93bnb5rpas6Nn0Ho
	f8L80kgqGSIALUCH0OtzAPA=
X-Google-Smtp-Source: ABdhPJyzSn7p2Sn9VORE6oYWQ05AXDy9DGYvrKowBcD+lD9cZPe4HGQcUotUp72BfbQ89mc78GaVjg==
X-Received: by 2002:a63:3cc:: with SMTP id 195mr648634pgd.296.1596142287877;
        Thu, 30 Jul 2020 13:51:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e59:: with SMTP id 25ls2218408pgo.9.gmail; Thu, 30 Jul
 2020 13:51:27 -0700 (PDT)
X-Received: by 2002:a65:6119:: with SMTP id z25mr734032pgu.52.1596142287446;
        Thu, 30 Jul 2020 13:51:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596142287; cv=none;
        d=google.com; s=arc-20160816;
        b=h/zNtg5ae1N62D8xxmCwyPeQG+IlljW0G6KE131Msih+pYM3py90IA5DA30vnbnnRU
         dPsFoqOBaY9FyBcZNhklWUxiEmLIg59EKWLvCSUqOk2QIuDrCQIKMsPJyl5mm5DHKoK8
         eC0RXmRnwuxPge6oqbTh3wL7lVdHjaJsTi2s9RqJTuJ5qvmRW8yUynWDsmXQN6yvCfgP
         lCkGwaJTliY5PYELZIpitbT3kCpHpXBpcXV5UycBKx2xLpQP5GgIDHNA8bokC84LR3NP
         vvJTVy9uEZ0GiVy/wxuDU4qCwfEj8IHf9FINR38JRA5oMKe+LOtoUnPHxv8U9n5cMUsE
         /ntw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=G95KKuekTz1iA7Zr8ZdyT9EdDFTvRs8dYtvTVOv4Dfc=;
        b=FzANGNStW0GnnG9eUh80/40O8N/14eSQsMh9Amxsz7kVo73k2Qt9fWvKZ5I8sSKA+K
         ytk/BKl62pkjH3Uyz6aUKg/QXdA1+2xJZ6S7lvnYFNCOXw0VfmJTgqXpDsiBT+TDN2iM
         CjSubrXnVAaao1ehGQvXT1btTb05Qu2KgcdqpQcsqbuqkxPOdY43VaJYSCuuOb0sIVqc
         87vZlI4mi5kFy87gK+lKuZlVphOUm1ZGxuCuya/3KuhZmfdKYXylQRpR15U0OdrzRrE4
         uotfD9xoCjl7R4reno9ocs9kymeIzNmnT0Vgvh1Y+tvnM07jmFQbCwVxmSjSn7ccM7YV
         OOVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ViS1JlQV;
       spf=pass (google.com: domain of 3zjijxwwkal8sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3zjIjXwwKAL8sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id v127si105262pfc.0.2020.07.30.13.51.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2020 13:51:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zjijxwwkal8sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id k11so7818560ybp.1
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jul 2020 13:51:27 -0700 (PDT)
X-Received: by 2002:a25:40cb:: with SMTP id n194mr1171359yba.380.1596142286622;
 Thu, 30 Jul 2020 13:51:26 -0700 (PDT)
Date: Thu, 30 Jul 2020 13:51:09 -0700
In-Reply-To: <20200730205112.2099429-1-ndesaulniers@google.com>
Message-Id: <20200730205112.2099429-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200730205112.2099429-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
Subject: [PATCH 1/4] ARM: backtrace-clang: check for NULL lr
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Huckleberry <nhuck15@gmail.com>, Russell King <linux@armlinux.org.uk>
Cc: Andrew Morton <akpm@linux-foundation.org>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	clang-built-linux@googlegroups.com, Dmitry Safonov <0x7f454c46@gmail.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, Lvqiang Huang <lvqiang.huang@unisoc.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Miles Chen <miles.chen@mediatek.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ViS1JlQV;       spf=pass
 (google.com: domain of 3zjijxwwkal8sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3zjIjXwwKAL8sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

If the link register was zeroed out, do not attempt to use it for
address calculations for which there are currently no fixup handlers,
which can lead to a panic during unwind. Since panicking triggers
another unwind, this can lead to an infinite loop.  If this occurs
during start_kernel(), this can prevent a kernel from booting.

commit 59b6359dd92d ("ARM: 8702/1: head-common.S: Clear lr before jumping to start_kernel()")
intentionally zeros out the link register in __mmap_switched which tail
calls into start kernel. Test for this condition so that we can stop
unwinding when initiated within start_kernel() correctly.

Cc: stable@vger.kernel.org
Fixes: commit 6dc5fd93b2f1 ("ARM: 8900/1: UNWINDER_FRAME_POINTER implementation for Clang")
Reported-by: Miles Chen <miles.chen@mediatek.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm/lib/backtrace-clang.S | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/lib/backtrace-clang.S b/arch/arm/lib/backtrace-clang.S
index 6174c45f53a5..5388ac664c12 100644
--- a/arch/arm/lib/backtrace-clang.S
+++ b/arch/arm/lib/backtrace-clang.S
@@ -144,6 +144,8 @@ for_each_frame:	tst	frame, mask		@ Check for address exceptions
  */
 1003:		ldr	sv_lr, [sv_fp, #4]	@ get saved lr from next frame
 
+		tst	sv_lr, #0		@ If there's no previous lr,
+		beq	finished_setup		@ we're done.
 		ldr	r0, [sv_lr, #-4]	@ get call instruction
 		ldr	r3, .Lopcode+4
 		and	r2, r3, r0		@ is this a bl call
-- 
2.28.0.163.g6104cc2f0b6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200730205112.2099429-2-ndesaulniers%40google.com.
