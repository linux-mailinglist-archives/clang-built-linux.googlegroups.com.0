Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRNRSKAQMGQEPDRFSZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0653183A1
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 03:39:02 +0100 (CET)
Received: by mail-ua1-x940.google.com with SMTP id d9sf1228488uaf.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 18:39:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613011141; cv=pass;
        d=google.com; s=arc-20160816;
        b=HGkO4vnRsDSlSJW2aGtw8cKGRUfI6aehAx+HCDQ39xJQji5HLKWJgrZkET3q0rg/0/
         evjB1EXgppQ+OcHDUPrn86oaOgjXz4AWIBV72ZW1hTrrU48qG/idElD1vqC/S3IB1I7o
         HK3aWjY8UgCQFZUuPRiNS25X3QzU+iOMOmKorVwyRkq9j8Sx/+aDhkwF+7EKxn/dWu/q
         UxgKo15lgjrCKKMnWZguuVw0ivODATADyanxXdDbzlhM9aTJTx8N8MdSWj9Uu39DIn/R
         o3F3fOU0ewU3OKCBtoZeP50QX+0fuFrnjtMETidEfj2d3ik9YvExBI+Uri4eWL54P55S
         nXsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=3dYwzXmZULprAJCa5awtJ+aJrXqFUnxzZhelaaomnWQ=;
        b=vkyfeKgZgnigN2Lt2zPY53xjTpTyNdvC8omS8K2Wer+TUFGMjLRcIsX7IGEwiTzdII
         f2eTBKeV924iDH1y+vNv+AOsrI4q8gC6dOtbNhB5bkz1bLuRx4MuZ4jUb5yTIV48pwy9
         ftH7hjVNa+fykm3RkNwhjkOF3IvYjz0NpEQyO9Zy8M9AFiyADLrndhnwUp4Y5VC63Lqk
         YPFJxA+W7/Z1+ikgwNoItrzilY5675XKaZcZIGEjekTV7VTfDitndH7fFEUvkMcs4jV+
         TYz9stbJTea2nfaQ6BDhK6OOHVXe/0+Zwec+ZPDnF0af3Ixu3pCdjJJDLH4l+FcBBSCr
         5xxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rUHnfiH0;
       spf=pass (google.com: domain of 3xjgkyawkai86wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3xJgkYAwKAI86wxBtD461xABz77z4x.v75@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3dYwzXmZULprAJCa5awtJ+aJrXqFUnxzZhelaaomnWQ=;
        b=sb5gHgqqhD+0UkdYyH++qMce0wOniSwXLcpgCohTaUKx/c+7fGWpYQE/ADbyozDD9W
         l9AqctRkzSAPujwOz6lEo3Houirp4BmB8nhfYWOK+nTAcrIb++5rp5L9aA3Iz2e3STJ+
         3O58AZWdQ9xsAZbb+OEhY457hMpyh6BD7v/fJiVQSZVp8JIDO19NDlAdwqq/F4Du9Y+O
         8leOeNpqML3KcajyPhDcCICB4qPYsEI6K7ZvCXZd1wFXE0e09JYCbfmUcHRHgiHE2chf
         7bjdatHEj4VNzn6FDjs0JxH0ESJicuSYp2nl9fdi26pCNB+AUejcp+dNCK/hM4gtpp+B
         8Vuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3dYwzXmZULprAJCa5awtJ+aJrXqFUnxzZhelaaomnWQ=;
        b=BmQOtTcB6M9cMC2U19t9IWjsijs6ouAglqxY3epZ4ZgPzmgFcTOUjPOJw8tHz8A18w
         HyyFc3kS46sTrECchlGmFDR95vZdOq9i6vl8gbL/EGNxryXJUpSHaOuGrJjJMI9WfzXt
         VfnxXyHw68PDkZ38IjzcjADrFXi0QZVYOgD9N5JgyZqb3FfWVEPs984WKTCxsHkwZPFO
         u1K2oOHrF+J524qPNGVJ2SNsbHFscIKf+pXKobrRbWa7DldofintmrNWP/jL2Qcqsb++
         lhOrGdflBhtdfwfEbGWtUJWiy86ugZT3Z3O54pS/dhgbOyJDb1alFGpKzpaH01B7c3+8
         Jl+g==
X-Gm-Message-State: AOAM532l07VQzqeQl5U/LsTOhcyGRpGx0C0Acct/Pqx8f6WrrbIUkvyu
	cK/sViNZNBbZ3T9VEEY5XYw=
X-Google-Smtp-Source: ABdhPJxXa0YcH8k6voZD0E/8m7JtNcrQsFLLO9lv+I63/ri4b3VdTpmfrJrg+NOpR6SUuAsZxSlYng==
X-Received: by 2002:a67:eb98:: with SMTP id e24mr3727361vso.13.1613011141256;
        Wed, 10 Feb 2021 18:39:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a5c5:: with SMTP id o188ls218806vke.2.gmail; Wed, 10 Feb
 2021 18:39:00 -0800 (PST)
X-Received: by 2002:a1f:1a54:: with SMTP id a81mr4005276vka.17.1613011140836;
        Wed, 10 Feb 2021 18:39:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613011140; cv=none;
        d=google.com; s=arc-20160816;
        b=qh3V8UVumR2C6mUyatfF/397j5fn4MIYPfF1sxNhbpIfqMwzR5HEDyqnbhkhhtM9Ab
         8NR2Tomn176IqTWeWJ/JzjGZ4h06qcOerdCrlIaINWtHJ02f6CBwkzuBybHlXc3NaLag
         9uEdPTXtcLKkDk+eIp33W756eG1UL6h0Mlu7F00PDFaGr3gB+K64TUrmCvjg3Fd0Pqv/
         whZA6wnr8vKvyZIn9b2gctlZOCLFWi7OHMRPnKwmYHhz8j5bz5hMIjdDtAnabpYphyAF
         8MA/1hBssokXExCve+2MlkdH3KCycJmOitEhOGMTk0sq6dMU0sXM3IyBOfjJuPVlNXty
         fKRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=o822Lr199HQGCnayt8C72QUcHqAHTU2Ztu3EEpAsGPY=;
        b=SOUnmDVdjsNbrUSgWYdxEvRYQAQtZJV06mGIut8nw64guG1fiPiqTBo9UykxP+22Xy
         MNH6zwuLA3ORCyvU1QqH4ZmIlhb6ujEE+W4vwinKUycxkRgujPzWOJasTZh6X/31C6GH
         wkwMJzzFfB74S8A7/X/OJIKc85SuYSUof9qT4ZgU29HWJvA0ZHKjpPMFJtkTulbgOJXr
         sbIQEalgN4KtMkykoBYwR/0CBRsqPSRPbUekKw4mIf/+Atod0PR2kILHLKu7++wGT2yp
         zSuUXHp2qDVyv+u/FF4f2MGQ2ALSGh7Tkterxmdw2MpBXoWbZ+oAkK8OaetRT8m3AFF5
         75QQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rUHnfiH0;
       spf=pass (google.com: domain of 3xjgkyawkai86wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3xJgkYAwKAI86wxBtD461xABz77z4x.v75@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id z9si322569uaq.1.2021.02.10.18.39.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 18:39:00 -0800 (PST)
Received-SPF: pass (google.com: domain of 3xjgkyawkai86wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id i19so3150904qtq.21
        for <clang-built-linux@googlegroups.com>; Wed, 10 Feb 2021 18:39:00 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:1dc:8608:b4eb:4dd0])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:16cf:: with SMTP id
 d15mr5906887qvz.32.1613011140340; Wed, 10 Feb 2021 18:39:00 -0800 (PST)
Date: Wed, 10 Feb 2021 18:38:55 -0800
Message-Id: <20210211023857.3534210-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.478.g8a0d178c01-goog
Subject: [PATCH v5 0/2] ARM: kprobes: asm warning fixes and UAL conversion
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>
Cc: clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rUHnfiH0;       spf=pass
 (google.com: domain of 3xjgkyawkai86wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3xJgkYAwKAI86wxBtD461xABz77z4x.v75@flex--ndesaulniers.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210211023857.3534210-1-ndesaulniers%40google.com.
