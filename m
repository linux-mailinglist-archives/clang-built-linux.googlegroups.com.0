Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWNF3SDQMGQE7D2MCTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7826F3D0169
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 20:15:54 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id x84-20020a2531570000b029055d47682463sf31640933ybx.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 11:15:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626804953; cv=pass;
        d=google.com; s=arc-20160816;
        b=U3mh0uq/5ouWmS1Hj4Tq2r1XKiEkRzc1E18Lb9nAnILsPgkA+4s2GAePFsLrFPhnfQ
         FlFl3TvwRMbnHK0ejjSybG1bmR8mN4Qz8WtJAc4BzGItCNZ7lUEi7rDBfxYa+iNqNPx9
         4ni+PNvD8VEwF4hS60nsktuxKAol8OzjfEKl7PfGyf7WukV2nW0/U2XWiuC0W0tYrjR5
         916KirREaxCFOy9WCdvZZ/JC3C0Pk9p6AXTRCe5N1hyx+fmU1S7f9rPWQUsK1BxjzTLm
         VpaeOnIx/+1l+vWIGTGGNFZH0a4nXz9qp7va25EAquGUL0FYmOyLx7GunTzK/awIUvIS
         bAuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=pIOpRy5UeX+6PsoOTTGQf6REqXt5SrvscAI2nz8m+X8=;
        b=SzinkSicDRWIBO3wMjRt9X6b1xzESDbFD/YVxvK3gOF8uh+FAc+EDTihilqo23c8/5
         fCJZxWeVuRmlY35Xb3uDWNLF8awb+hiTK5i2XbSAD7OsaduKuhCO9Bd2nOl4+XU6wx+5
         BBnbAnvsiK7EiMEfSUxB4euxFT99OXhFlSw5wyokQoInrtFztv9zKQ3yP1dqoaSoeAk0
         FTWDVplR8CP5igy78F6tY9/Uo5Xvj3g+AocZKnAIC1rPaYoS6avu5VRgrAbc45E6mmG0
         +ME2dJwFKZy+WLnVpRYoKgP7fpvxxWaqDbQ7UAPPVrDcRHvAWgfwRzRYtOSLu4CE0cJe
         HMwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PP5iqiNf;
       spf=pass (google.com: domain of 32bl3yawkaocwmnbjduwrnabpxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=32BL3YAwKAOcWMNbJdUWRNabPXXPUN.LXV@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=pIOpRy5UeX+6PsoOTTGQf6REqXt5SrvscAI2nz8m+X8=;
        b=l+fci/ZsDVaqR/1H79hXc0knLEDjzRfMukv+WVn4PyG0oCEu14G7JTD3AY5BQ6Jt9a
         zefqv98f2RuaKyETdb2Bt5kwYgDH0bz2GhHU7S414VwEHM6SGu8E+sAqaRw17Htg5Rvd
         eHro41qR6yQnr8ThO2PtDU6jHHkgObSFuUi41teMd6PimTqTsvHUDWAzQQGSQmJ8ygq8
         H11VdB1iJPwnBogffa2CEYQYOH6kEfxNZ/PjodwaCLBeiVNDbXV+PgERB/2scZr5svof
         p+kXJFg/pbKnvD3663lz4hqpmJhHvJIOju/ZRULJXkS/kqVK4T0WNWRzRF/vZqgC8IO6
         bSQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pIOpRy5UeX+6PsoOTTGQf6REqXt5SrvscAI2nz8m+X8=;
        b=hfdW6pXTcWwjmg8Zs/qf4sW/47D3fZdPdjqoeaJTrPRe/4R0IbRdJ2h8us7wN5u3+h
         +0rgDjfh0u1/0cQvcT40QTI0tftpsBl2qjFpMKLoCgLLqN6MYKTT1B6A5FJO5QzhqGvT
         +4D6eljjlO8JN6N1XmYFiN+LlT3tCQTBjo1uge2YlR/nOtcrfb96ZIzFAMVSfCf/x/sG
         R1vs0qVbkCQC9he9bbOd1Sjl1E3A0bXc9HiLAEjJLSXbTN3srECBvoWXNfRSzSTXKCe5
         8M/9jGA0Hpcha9VIfeXwiE2BzHpuk36MS3NIlOy8KjFFwKxQwoXS4XHCYDfGd0kWQbtB
         SxeQ==
X-Gm-Message-State: AOAM530wQsK6xjJX4+F1ZUuxJNY/gtD+THpAp0GSlbFlg7radTheOMEV
	YutIAQs/CjZWivZvged4T6A=
X-Google-Smtp-Source: ABdhPJzHzwlP2783VgdkMpV9E9i9d7PtSHbKphZISleRf/hPhm5smQ14n9kwHHPn3epmBPmljrvWAw==
X-Received: by 2002:a25:d185:: with SMTP id i127mr38126711ybg.392.1626804953590;
        Tue, 20 Jul 2021 11:15:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9307:: with SMTP id f7ls3317726ybo.10.gmail; Tue, 20 Jul
 2021 11:15:53 -0700 (PDT)
X-Received: by 2002:a25:ac13:: with SMTP id w19mr40469865ybi.435.1626804953035;
        Tue, 20 Jul 2021 11:15:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626804953; cv=none;
        d=google.com; s=arc-20160816;
        b=ZfLhOJydLi+B7c6j9wYo6TUxee9zI6WQdz74EPdBhkX8m1kQCsh2dO2WBiEkBXabru
         iqv1/AspxcEdQqeMJEob/+q2/+meADS55Z0eC1k5nVdq1rR2DzTtu6dtqDz2Wanbp6ZH
         QGy2nx8WxLUgrqPDc+a0FPMmCPbnPO+m1LxEBwCdpR1q8ieiU3fDiuJgUiq9RmEsWUvO
         qEKfZ1kku/LcuMbzfLzD142tDiMoBwe1wroZoaeoHx284y/O4Uw0y2bD0XNkJO9yYk1h
         ZUOX01jv6yr9duNjYRz/YWlF+UB4hKavltYdFr2VxI9aQtK/2CN6qkw1N2MzpqeBgO90
         VAog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=mN7rCkcALbLQM/R7NDnSDNWf3cZq+FCXJCfkRrG6i3w=;
        b=qwL8zUICKWoY5rqSD/0DO85iR7gc6IAvK0H5Tk3w/f0yDD8gHQ6BU9njDZxWjoIeGU
         3aooBrP2fU9v1s6b6AFDSc8Col/7wLe2MRFG6diseKxyJiZuoXYDoWkE+Bw9F5KH992u
         fELns2wkrmz/FnbCuPlvatzEsEx8JpjmhVib/LHXc8Q52Y2oPYomKiHZ87CLR4Uc276u
         eJZzl7mRmDC5u5f7QPg3t/xLM3ORePcUpiEzTJB/szjweXwx7AFdToS8Mrn08P54NRIk
         e7sws5IZs0/6prbPIHh1BsQxgjrwzzFEnq40blC9dDZZxUK7IwESzTdxsqkC0fC4zk1d
         bgGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PP5iqiNf;
       spf=pass (google.com: domain of 32bl3yawkaocwmnbjduwrnabpxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=32BL3YAwKAOcWMNbJdUWRNabPXXPUN.LXV@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id s17si2879844ybk.2.2021.07.20.11.15.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 11:15:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of 32bl3yawkaocwmnbjduwrnabpxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id v184-20020a257ac10000b02904f84a5c5297so31388849ybc.16
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 11:15:53 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:cf0d:433d:7377:6a13])
 (user=ndesaulniers job=sendgmr) by 2002:a25:c708:: with SMTP id
 w8mr43132005ybe.246.1626804952750; Tue, 20 Jul 2021 11:15:52 -0700 (PDT)
Date: Tue, 20 Jul 2021 11:15:42 -0700
Message-Id: <20210720181542.2896262-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.402.g57bb445576-goog
Subject: [PATCH] MAINTAINERS: add Nick as Reviewer for compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Miguel Ojeda <ojeda@kernel.org>
Cc: linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PP5iqiNf;       spf=pass
 (google.com: domain of 32bl3yawkaocwmnbjduwrnabpxxpun.lxv@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=32BL3YAwKAOcWMNbJdUWRNabPXXPUN.LXV@flex--ndesaulniers.bounces.google.com;
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

$ ./scripts/get_maintainer.pl --rolestats --git-blame -f \
  include/linux/compiler_attributes.h
...
Nick Desaulniers <ndesaulniers@google.com> (supporter:CLANG/LLVM BUILD
SUPPORT,authored lines:43/331=13%,commits:8/15=53%)

It's also important for me to stay up on which compiler attributes clang
is missing.

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 548783bf6505..fe9b2ab45402 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4658,6 +4658,7 @@ F:	drivers/platform/x86/compal-laptop.c
 
 COMPILER ATTRIBUTES
 M:	Miguel Ojeda <ojeda@kernel.org>
+R:	Nick Desaulniers <ndesaulniers@google.com>
 S:	Maintained
 F:	include/linux/compiler_attributes.h
 
-- 
2.32.0.402.g57bb445576-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210720181542.2896262-1-ndesaulniers%40google.com.
