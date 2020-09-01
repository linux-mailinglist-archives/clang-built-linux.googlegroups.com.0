Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXUUXP5AKGQEQBON2UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D79625A166
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 00:25:36 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id 129sf2816955ybn.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 15:25:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598999135; cv=pass;
        d=google.com; s=arc-20160816;
        b=YZ4hfxUNr2lLMvH63e3YREHSfDh7DHV6y+bYaWQ2+v7S1tAal8o6HheX6Me3wvljMR
         yVyeudreXI6bzSoGoB0bZwSrNt7V/q0gRHk2jfJ1FAc1RQlA8LnIp6uqAWV5/iaOk1FE
         tnfoDO04rYAGDkYNMwfLfV+shNfeYhoxGqzNh4/0xpLJx2B3ggv1XoEe9BelVHMbgutM
         of8BU5/H6clpjGt5ZusevZTApu6Qu0fUQOp8zhYvy18XPU6oiqRVZNBSY0PRufINzRog
         KYeUHeSu7TddVGE4ePdleGNOlrYYQ7ShP5nVCTgRsJ8PVnqLYWo3Yl83i+gAjhDvOIcO
         uRYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=75xJoEVA7IM4iN8c9jsHOzK6KJfyNGlZSd78QHtEFoI=;
        b=z0/x+vMXBnBL7UeG8dAXTgSd7Sq3GMtHmQ3RPdfIcWyefcHGwhkWCjwyiqcc7wyBPb
         0HRRakkDndZGzQldD+HRjlapXwtuNc584FKhzr09zCiUPfkYcrm7180c6BXE+eblpwCd
         pevx/4pDZlfUALRb9LNc90jPxSmA7rAQwsCh7sB0dHLoNZsqQLu591DFUF+Ke+6xTK1m
         GIj0Ixtedi7bWtAReKxLDed9YRLA0A/XJQhBUGfcy4kUuZ8m1Ehv1+uLsInapbZbOZ74
         mhASwjCyAFcUv9T5VaAG8FMpiQ4K/LuuhnveKVbvv4zA615HMczL+JDkTdzNU4yUUr2B
         C5Wg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nNo4Vy9v;
       spf=pass (google.com: domain of 3xspoxwwkac8yopdlfwytpcdrzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3XspOXwwKAC8YOPdLfWYTPcdRZZRWP.NZX@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=75xJoEVA7IM4iN8c9jsHOzK6KJfyNGlZSd78QHtEFoI=;
        b=KiTs/yC0ybgBaKWfhtX2jZ4PXiMXnxQuBXwWNd6vxn3aNIK/MZzNuMTi5uG5NFRm7v
         PxtQxjplNaOH+Oieiaslil8LL04HC3nkZ72iQ55bBlqX/iYhXFjm+pg5tbmTAFx8A0Q3
         bNUsZPpTFhzR99i+y49bQS+8mpg1VzD4RW57uS7n1F/FtG1uqBhBqb42fr4i1qbhFLLj
         1r6GRCEPxBZIhOe9F6BxC6eYenAJH5CmPx4DcuFxRAVOHl/m8oh161Gad2AF/I3LJ+3L
         DpVPIt1on+EFrcoHCnKnU1AjUqaBOPX9uZ6p1laGUbZSL29L5zJ/5TyxIeB+iwy5yADh
         VARg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=75xJoEVA7IM4iN8c9jsHOzK6KJfyNGlZSd78QHtEFoI=;
        b=Ea6GBp3mocxH0m1p0iF75paG1MFcmkIyLDLUqGac6eKBrpKtRvyoDAKU+nV1Sp/BO6
         DP2xyIVXPc5IiTaFsQR/lpVNCFxQW7iJ2V5CpCkmgJ5kJ/wM/3pYG/VfvCJCB7wt9ZhS
         b79Q3sP+BCLIQfiO+DqpdwRNi1REWUmc5vNasHwxBiXp8z3WtQ8DRvF5851ICSxk0b3s
         K3/vy0e+Qi2k69xnRs9oTcmd6yeMeEPC64zl8/bBcjVZdlXAwVg/B9jOB2+iSYYvGLa7
         EOESPtM5+yF2b80N0XRsGdN2eThVl9L6cGbhx9PNw46MNwhMQdpSzDvZVt5j05nRUXLn
         +42Q==
X-Gm-Message-State: AOAM533ZGqlCtSadY6fIqBc8j/058aBXAP2KB63RLELCIstQQcWjGvWC
	H8sbqV8JFS6jinvNNvglSNM=
X-Google-Smtp-Source: ABdhPJwKvEHvcHiVYFsHUb32hjwRL14DH6KGCI1LFSVA+vwtnOllrPj86t8QbZAlBUJ4KbWD2/bSqw==
X-Received: by 2002:a05:6902:4cf:: with SMTP id v15mr5893947ybs.373.1598999135138;
        Tue, 01 Sep 2020 15:25:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:b0d:: with SMTP id z13ls180279ybp.8.gmail; Tue, 01 Sep
 2020 15:25:34 -0700 (PDT)
X-Received: by 2002:a25:becf:: with SMTP id k15mr6662521ybm.36.1598999134740;
        Tue, 01 Sep 2020 15:25:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598999134; cv=none;
        d=google.com; s=arc-20160816;
        b=UAPYOxEUCtGQwRQ3QvzeQ8If1hC6gww4VkfB6LznPQndx2k25qALh5JdYPp6Ccz+7R
         TRsybSY5PPq5v16YOT6Q/MdcSDkerKAhmBh3pVRiqNPCS8PQpTsyMd1ROv6HbQ+EvQRS
         ZeFZk3LSJgwO6wBEyofcN5lRRJ4MP/JuhnE/jGRdBlZcnNMPhXh/8f35P2f7cd5Vt5qz
         dFipVn+tdQuhZ+c9ihYzls+o00MmbAePlAlgj9FjQS1B8QQ3x9083siIQmePMFnXsj//
         /74vMRh0R76HW7p7u+5yhymnyvmESZ61o7S+gZfX2Fu44/4WvQjRESIRENI1eVVBSq+Y
         4TWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=8Cpt1ljRc5OUFvhttJIkywuliHVtTrKBkn67gE9JDjs=;
        b=AnSQq1upsd78fcRqGvvwtDTW4+Eegj1sIzku/R9ay8ynZlC/uZrDx4kBfXd1k3S0YC
         XFwP+BIowiIwNNzHx1Etx1SNwEisRRHnvVpc3LFGJXzs/5epZjzVTTIWxcrgsBKNG3NB
         mvopstgCDYLXrp7/nkX+VK3o5XgzilQ3K/NzeMUDwc73WEm7u3ocJGoH5yV7e0dhtjR/
         XOtVPtooEwGdi5mPdaEq2ngOdSUNsGyVAJRhuVZVOZO5AYh8coc9HscQ5TbsuqwblHas
         Aizgn0ag9wOjs+8qiTLOT0Qd41eQ4F/+qg1ESUyVm/jUgl9yNtz0slKrjerbcrKUdjhr
         hXHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nNo4Vy9v;
       spf=pass (google.com: domain of 3xspoxwwkac8yopdlfwytpcdrzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3XspOXwwKAC8YOPdLfWYTPcdRZZRWP.NZX@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id y18si223455ybk.3.2020.09.01.15.25.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 15:25:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xspoxwwkac8yopdlfwytpcdrzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id l18so2046618qvq.16
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 15:25:34 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:e8c9:: with SMTP id
 m9mr4288274qvo.51.1598999134297; Tue, 01 Sep 2020 15:25:34 -0700 (PDT)
Date: Tue,  1 Sep 2020 15:25:21 -0700
Message-Id: <20200901222523.1941988-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH 0/2] link vdso with linker
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Joe Lawrence <joe.lawrence@redhat.com>, Christophe Leroy <christophe.leroy@c-s.fr>, 
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Kees Cook <keescook@chromium.org>, 
	Fangrui Song <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nNo4Vy9v;       spf=pass
 (google.com: domain of 3xspoxwwkac8yopdlfwytpcdrzzrwp.nzx@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3XspOXwwKAC8YOPdLfWYTPcdRZZRWP.NZX@flex--ndesaulniers.bounces.google.com;
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

Kees Cook is working on series that adds --orphan-section=warn to arm,
arm64, and x86.  I noticed that ppc vdso were still using cc-ldoption
for these which I removed.  It seems this results in that flag being
silently dropped.

I'm very confident with the first patch, but the second needs closer
review around the error mentioned below the fold related to the .got
section.

Nick Desaulniers (2):
  powerpc/vdso64: link vdso64 with linker
  powerpc/vdso32: link vdso64 with linker

 arch/powerpc/include/asm/vdso.h         | 17 ++---------------
 arch/powerpc/kernel/vdso32/Makefile     |  7 +++++--
 arch/powerpc/kernel/vdso32/vdso32.lds.S |  3 ++-
 arch/powerpc/kernel/vdso64/Makefile     |  8 ++++++--
 arch/powerpc/kernel/vdso64/vdso64.lds.S |  1 -
 5 files changed, 15 insertions(+), 21 deletions(-)

-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901222523.1941988-1-ndesaulniers%40google.com.
