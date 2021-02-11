Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTNXSKAQMGQEMCPCGII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 889303183BB
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 03:51:58 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id w11sf4782487ybq.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 18:51:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613011917; cv=pass;
        d=google.com; s=arc-20160816;
        b=IV3Io/jeY89wKU3Lc869gIBM5ZlXc/nx4poILLL7JBXfAwejKW4K3XPu4FAtc0dCkJ
         03GxdnS5Fe3tKa9lnFLoq0Hkx6bPiI2hiHDIF1Dd89GypcXx9ZoWVNsGqSRQgiDQD1cb
         nYXms56pxpB7L7gr2DxK7dM4U/nLG0hMpBnbPCuuQwc+JKmyupPB1wwvZHRFbsDMvWrs
         MN+7ebDqzX8rMTGk05N3HtR6/FM/YPGZxyDD2qTxarloUuhN3bEy3agY+YJ1fNfs24M4
         c+HPYwv8auSozejTvUyyiG8tKKX3uCS98XRMiqb+AhlXVK1E8lvh/SPnGOfv+eLRWrP+
         pxKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=iiD2IWPxAmDuvSePsTleGJYCn/1r+3RTb8GiKb46mKQ=;
        b=nrgDYRSe/z3UUk7aI4dcxQ1AZnNvjhYt9plPsd6YYyKleXnUSnFcnGJJ8HiZFEcauH
         dkcZkSUk+Zlrq9KUKEV3Nyiq3hQrlbMUgLKSzBpBdjw5k8ooeaY+/Nhs6k3HlDG62Q35
         orEF5PPseuy/pe6lAK8QwFaG73B3/swNUuBswA01A2VSggmLZbCotShvXMTNdYq3SL7B
         5XaQqe29FAgmWqZuBg6cDJYw39OqJFtXEkTrjuf1kmf+30FiFRPydydsMJPTBLCnX9MU
         fyA9aftigjC4M2SAPr0bM8tfXpzYImoNQychNSF0fXc4b5btfM/fZ2uscxnk8glBpydb
         EZjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fa08nbzA;
       spf=pass (google.com: domain of 3zjskyawkaj0kabp7rikfbopdlldib.9lj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3zJskYAwKAJ0KABP7RIKFBOPDLLDIB.9LJ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iiD2IWPxAmDuvSePsTleGJYCn/1r+3RTb8GiKb46mKQ=;
        b=EtWVT5f80kcIRksHGwCcxMdEswdj6uaQcD9wK/Dlb2Xb+qKF8q/EzaQc9rjGrNvLzK
         6+jz0RT7hGxskj2JcZ8sCKS8FKrWTCu6KN3G0Cgz09DrQ+vWQzX4oJ4hMWucy42RsYvY
         RfV+U7njTrAJPgHQIWiLfQpa+VHSjAsU370aTBT7Wt2nlJnaHKmKtXVGgm1oJrKMn2bm
         hnPYFFzOk2mUvCCwh11U2Krdqr2NSslXCSPtNtBUAe24EcLt/TTcnFCk2efgTvZ/iDeN
         mKJz9jrc4YTrs0FzRLBTpkekqbowLL47bxUZeDRtNQmuN+txSaIooVRuKxKbaRv252+b
         CztA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iiD2IWPxAmDuvSePsTleGJYCn/1r+3RTb8GiKb46mKQ=;
        b=fbJAGEhPnIWLKq8nLtpoWEo2+HXLdb2HcVt6gMsfwinneK0I3EU+rJEX8rKcCfszmY
         QHSnT31GH8alwxmg+iVChlkg2Ey+o8Xz+nffSFQ1kiiLSDbaw5F4r41VejyyxTz9qNcY
         RIZM5iZpOH5ay/9TFx6Zy88WuhaSF0p7Zn53aCZpGxZ7ss7xBRKD6PPqWsLB79TYbHc1
         wupX0Jtutjs1k/XQfv36G1AUfxoKFCRSDpUL844mH0VApFjgr0mrPcUThZdR3OFwKCga
         +J65HzzgiVMqQmJC+kO4mjdRxtL8FHXZTojbaNqiaXEPrcWRPQPB6ChnpFd86KLhvV48
         FXxg==
X-Gm-Message-State: AOAM532YZAtxwL9Ur3iXKZZOeVi3atDrIU2SstCUoztEU6QaGYYB4mdg
	pekX1epV1kbRz5tHz7JSD9A=
X-Google-Smtp-Source: ABdhPJyrIAi337UXtYh7r9c4k5knoPIi2htTG91D8W7oOKNl0pO++04DLgLzTWEzxU/z/m5jIBj2RQ==
X-Received: by 2002:a25:df15:: with SMTP id w21mr8120888ybg.241.1613011917467;
        Wed, 10 Feb 2021 18:51:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b5cb:: with SMTP id d11ls1922255ybg.5.gmail; Wed, 10 Feb
 2021 18:51:57 -0800 (PST)
X-Received: by 2002:a25:b048:: with SMTP id e8mr9062373ybj.0.1613011917057;
        Wed, 10 Feb 2021 18:51:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613011917; cv=none;
        d=google.com; s=arc-20160816;
        b=Vb0s0ZWGEs6JOYpr0838u2nAANSq0zoByMkuqkH3PPNurWZwWZ3bEyuqYg7eaHJYnh
         EjqNFpGnaY6On21J6CFLlizEhKJILPHlflswh4B3W50E+Xb5tjceM62DqpAuQIKFdxle
         1OsLLCAIyoLIgF8ijhRzHzW5R/K7pqGUHO5d+BqCiNlRKXrMMs8nQTHUptJ3Kdd5bvoT
         k043TtqL0FMl0rIzZNqM5RGYv+c21Y9dhUxNXEDIrD36H7azTuMi4YWZHAd4YI/kY/54
         2woXu0FixyNJ3/pvnu0cP0850iiOUq0+NrnnTymdAaUOdBeK82b85MPRM4hRB7Q0XTYc
         t56w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=o822Lr199HQGCnayt8C72QUcHqAHTU2Ztu3EEpAsGPY=;
        b=EJGAguKPS9LQTHv4LvNeg0fcKEhTOXG8zAw7Q4Dbbg1WXYpXOHiiX0zWOJDOk2Ql4Q
         3Kw0tGA1PKaAxoj1fUJOUT6tJmBdDUQC+WOtyvXLhImLLMe/KkJfilRgkJJp5xyZXWX1
         WkxtzWbGM+tTiumsKpcFjsAnLTOE70bysczAm5eOT/qEcIGv2TE76ViF7XW8Ji68JVnS
         RpkNHH5geA9L5BwM6/rVns9TOZnb064xkQMNYCa98IXKUlgHXcU9YhuihRIeaLysxk+C
         B15x7FL4u1Er0KMD0GpOP1Yo2o5oBiuXsMFewbf2I1vhm2GhaEmI5EWYUw/vtTud24rM
         nOmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fa08nbzA;
       spf=pass (google.com: domain of 3zjskyawkaj0kabp7rikfbopdlldib.9lj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3zJskYAwKAJ0KABP7RIKFBOPDLLDIB.9LJ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id d37si295386ybi.4.2021.02.10.18.51.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 18:51:57 -0800 (PST)
Received-SPF: pass (google.com: domain of 3zjskyawkaj0kabp7rikfbopdlldib.9lj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id f3so3187548qtx.18
        for <clang-built-linux@googlegroups.com>; Wed, 10 Feb 2021 18:51:57 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:1dc:8608:b4eb:4dd0])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:bce:: with SMTP id
 ff14mr5647814qvb.26.1613011916720; Wed, 10 Feb 2021 18:51:56 -0800 (PST)
Date: Wed, 10 Feb 2021 18:51:47 -0800
Message-Id: <20210211025149.3544593-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.478.g8a0d178c01-goog
Subject: [PATCH v5 0/2] ARM: kprobes: asm warning fixes and UAL conversion
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>
Cc: clang-built-linux@googlegroups.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>, 
	Peter Smith <peter.smith@arm.com>, Renato Golin <rengolin@systemcall.eu>, 
	David Spickett <david.spickett@linaro.org>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fa08nbzA;       spf=pass
 (google.com: domain of 3zjskyawkaj0kabp7rikfbopdlldib.9lj@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3zJskYAwKAJ0KABP7RIKFBOPDLLDIB.9LJ@flex--ndesaulniers.bounces.google.com;
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

Clang's integrated assembler only supports UAL and rejects instructions
that are UNPREDICTABLE; KernelCI has been warning about those for awhile
now when using GAS (GCC or Clang) for allmodconfig builds.

Changes V4 -> V5:
* Make patch into series.
* Fix the UNPREDICTABLE warnings first.
* Add .syntax unified to fix the GCC build failure reported by 0day bot.
Changes V3 -> V4:
* use __inst_arm for movs based on resolution of
  https://reviews.llvm.org/D95586.
Changes V2 -> V3:
* drop changes to test-thumb.c. That file is mutually exclusive with
  test-arm.c based on CONFIG_THUMB2_KERNEL. LLVM requires more fixes for
  .w suffixes for thumb2 mode.
Changes V1 -> V2:
* Fix additonal swpvsb case in test-arm.c when __LINUX_ARM_ARCH__ < 6,
  reported by Arnd.
* Fix arch/arm/probes/kprobes/test-thumb.c, reported by Arnd.
* Modify the oneline to note I'm modifying test-*.c.

Nick Desaulniers (2):
  ARM: kprobes: fix UNPREDICTABLE warnings
  ARM: kprobes: rewrite test-arm.c in UAL

 arch/arm/probes/kprobes/test-arm.c  | 294 ++++++++++++++--------------
 arch/arm/probes/kprobes/test-core.h |   1 +
 2 files changed, 148 insertions(+), 147 deletions(-)

-- 
2.30.0.478.g8a0d178c01-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210211025149.3544593-1-ndesaulniers%40google.com.
