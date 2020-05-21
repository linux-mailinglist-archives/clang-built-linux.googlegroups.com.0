Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBHM5TL3AKGQEZ5MAJ6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id E50821DCF72
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 16:22:22 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id n19sf5923392pjo.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 07:22:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590070941; cv=pass;
        d=google.com; s=arc-20160816;
        b=dn+bsR/hriLN1DNNMkE5aTWn5C3t6trOWdQEilKkEvVAEk8VI35mfQiQ+82apoYFQP
         1VfvrCjFXVEuI0Kx6jTONGgy3prA1Web1pLvNEriK4Rww8EaTy0DDFjHUtfyD0b/P4Sb
         JSGRdtS9z3ACF6WF7bdyYe0Sa78JYUibwIHcEm69L2L2B7uiJ33QNIZTNJ5eJVMjdIbW
         pYWobUnp9csAtpfs34M27zObL7mwtbDX9QZm/vv9ONtkxBQNZGNXDl6y9GCt4WTPNFRt
         5vO2NP+zAxuY/CGrFoBw3UpktY2SG6hFEysD+je9atbQGjyT/OwsZEzpA55/SikjKADG
         JKbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=6xf8qbf7yVznj6DvbAAbK2VjX3CiUEGH6gC5TsxnfXo=;
        b=YQic8R7FNBTfUWa4oFLdw3LeUFSInvauiWhFwbhLeXvkpQAZVHPZVrIcGPTgvlDTrQ
         4YUyOEQgomgVjvplmMsYaitreJuWb7bPKyRhDN+rM/tXPngEefYJn7wnU24eEks/IoQx
         e1FvPT8DUIPUe7WFzs4U2s4/3iwsTCvQdUHp0GlgXsiktaf6XjdUgW4lHG3Pt0HB4Cpy
         /zDr6qhhBdaYNTy4OxRsO87EvB2Q9diw1aq4Q53SzdtYhCGtilTWLGYl+NQ3iw3T18RZ
         LGUErAcSKuuCE0cecrm52qaVy5ox9O/aHS5QNXvrGKNhjuv53XaLEIaDWacq8O1b4gkc
         s7sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N53ce3W4;
       spf=pass (google.com: domain of 3ni7gxgukec8z6gzc19916z.x97x6v81-wf36e-638fi19916z1c9fad.x97@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3nI7GXgUKEc8z6GzC19916z.x97x6v81-wF36E-638FI19916z1C9FAD.x97@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=6xf8qbf7yVznj6DvbAAbK2VjX3CiUEGH6gC5TsxnfXo=;
        b=T1seNf1Dw5MGeef/ebwtVlF88bPLWLiR79TyFoBb5Wg4RiS10CC5VDl/W+Fg73cSGN
         O50zWQvztZNo+Ke+oI/GqwDZ0zMhJxqL4N5M0Ze2bI8nDw55Tanhqk07w+G3ALuvt1vN
         3kOfrSSxk8Nmxywe0/8gwh/vJoO6DD7y+e5QyE05qUGkdpr0KwdderaWHkheQDpwUSzf
         zw6vTuI8ArrkhitU40QBRrN3mw/A0mNFRkdZqlDx6JA5JCSm2T2zuHlth5hIJoZ32WlM
         Nodvs2HjMmbbjIr4i8s2keJ80R5zEyTH60Ba7E6KtXl65Zw8hj80kCdMIl0fDJslnAyQ
         WgXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6xf8qbf7yVznj6DvbAAbK2VjX3CiUEGH6gC5TsxnfXo=;
        b=UFXt7f1wiUJ/6iUtRADOcK+4B/ZwpRn2qd9xRsYtRCa0cTkoPWSQ4UoTVevOrP0m1d
         7IptSrm61PqLV0z4kdD/PvDl659Fi0z+Nac6EOMbGZ4PD+7Lc78ffrgZzJg3hj65cma8
         Mx6u+3HeWqbKyBsKV9Kr9WmdX9YRjeWtiiSI9PRgC93lVjj+BcDaxP9otaG2a2pzIjjD
         pAgUufgw4IMolXHBYsWqqEqDpbs84wEE5PhGvo0YCzdeuC9Tb+GzKdIFvYnK1McNZtsL
         vk0GKBEjZ+GZMQedowmwnyJLq+A38sGmLmRH/dNLyOijzoF1xeI+mYOl1BX0GnoJM+Yf
         1wbQ==
X-Gm-Message-State: AOAM531jbFs6ZVUhTYpggfEKMiYZKBYX2BMoGRUD8tJYPcJXXGcVlcYX
	MopzlmisWgSstPMXaoZLv8g=
X-Google-Smtp-Source: ABdhPJxGui1J7gGxbGFKuWhyv39VIW+nbUFKFciGSR1Sj0hGSXxENp2DKl8fz6C4Sy/4xFmT17crkw==
X-Received: by 2002:a63:3609:: with SMTP id d9mr9047688pga.354.1590070941647;
        Thu, 21 May 2020 07:22:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5457:: with SMTP id e23ls746532pgm.4.gmail; Thu, 21 May
 2020 07:22:21 -0700 (PDT)
X-Received: by 2002:aa7:810d:: with SMTP id b13mr9903428pfi.246.1590070941158;
        Thu, 21 May 2020 07:22:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590070941; cv=none;
        d=google.com; s=arc-20160816;
        b=RnevYwiAhzKxfEqxsTO5UfCvzmlA+Ui+JikokTzr2/sF4eajMrTja9Mtw6oCmP2EOS
         M+YIOa7um6oaB4ttjSFeYZiSZCRayECK5rzW+iLBSn7zIVVwdXKmrDpVwhOOl5RfPtZJ
         fBZ95UnjMtJLgIv2PCZJAZB4ZJr3uqzuxtoD1pqjSjctcOMVdnT6cG2IWcSDVfsfWQ3M
         Ip6S+4vuURGOrJKfyyq9PBfFvb3L3VrC6nweymzJWmpvu10IOkay6GoFtEQIQ8cDYHQj
         wLGlZY1l2ZrJvaVBi4MJmvYiRuzRShf+j5nbJUPhlrOA5IwGGsb7rlGL+xJzVfl2FJ79
         6B1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=oGh0kqYNNAZM+Pjnllixvw53KGUxiJ/hODIqL9XqSI8=;
        b=c1QQyrmZwaZJbvvqjAJ2+P02WxG8jOKc83u3VsILxkW4YFXsFzoM9bdFNjSLbxEEPH
         zDbAibuL9f69LYjvTyzh89gKwsoWk/xK769PVikjz0KwrR6JsBKXCZxVltvQdFrD0g4k
         dGoX2m39Z+Yr0n0Ab5xyBT6KULcln94ScYBHtoly2YTiJA76rsjV3uibqtA4jsxLkvU/
         FCQOvswNlJCY/LmX+e5Ny7JeAX5iIwXHO/G/meTyDwyKpEcihDM67QNi/Wxte9vY2x0Y
         6HNZyztGmC+vCOjAoSYK5N8/duC5T9LNM716HL3BnbwbuMWOtoRhM2yq2K2ZE1u3AqLe
         pkSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N53ce3W4;
       spf=pass (google.com: domain of 3ni7gxgukec8z6gzc19916z.x97x6v81-wf36e-638fi19916z1c9fad.x97@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3nI7GXgUKEc8z6GzC19916z.x97x6v81-wF36E-638FI19916z1C9FAD.x97@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id e17si478231pjp.3.2020.05.21.07.22.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 07:22:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ni7gxgukec8z6gzc19916z.x97x6v81-wf36e-638fi19916z1c9fad.x97@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id e139so5510602ybc.0
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 07:22:21 -0700 (PDT)
X-Received: by 2002:a25:e86:: with SMTP id 128mr16977291ybo.344.1590070940186;
 Thu, 21 May 2020 07:22:20 -0700 (PDT)
Date: Thu, 21 May 2020 16:20:36 +0200
Message-Id: <20200521142047.169334-1-elver@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v3 00/11] Fix KCSAN for new ONCE (require Clang 11)
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com, 
	bp@alien8.de
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=N53ce3W4;       spf=pass
 (google.com: domain of 3ni7gxgukec8z6gzc19916z.x97x6v81-wf36e-638fi19916z1c9fad.x97@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3nI7GXgUKEc8z6GzC19916z.x97x6v81-wF36E-638FI19916z1C9FAD.x97@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

This patch series is the conclusion to [1], where we determined that due
to various interactions with no_sanitize attributes and the new
{READ,WRITE}_ONCE(), KCSAN will require Clang 11 or later. Other
sanitizers are largely untouched, and only KCSAN now has a hard
dependency on Clang 11. To test, a recent Clang development version will
suffice [2]. While a little inconvenient for now, it is hoped that in
future we may be able to fix GCC and re-enable GCC support.

The patch "kcsan: Restrict supported compilers" contains a detailed list
of requirements that led to this decision.

Most of the patches are related to KCSAN, however, the first patch also
includes an UBSAN related fix and is a dependency for the remaining
ones. The last 2 patches clean up the attributes by moving them to the
right place, and fix KASAN's way of defining __no_kasan_or_inline,
making it consistent with KCSAN.

The series has been tested by running kcsan-test several times and
completed successfully.

[1] https://lkml.kernel.org/r/CANpmjNOGFqhtDa9wWpXs2kztQsSozbwsuMO5BqqW0c0g0zGfSA@mail.gmail.com
[2] https://github.com/llvm/llvm-project

v3:
* data_race() fix for 'const' non-scalar expressions.
* Add a missing commit message.
* Add Will's Acked-by.

v2: https://lkml.kernel.org/r/20200521110854.114437-1-elver@google.com
* Remove unnecessary kcsan_check_atomic in ONCE.
* Simplify __READ_ONCE_SCALAR and remove __WRITE_ONCE_SCALAR. This
  effectively restores Will Deacon's pre-KCSAN version:
  https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/tree/include/linux/compiler.h?h=rwonce/cleanup#n202
* Introduce patch making data_race() a single statement expression in
  response to apparent issues that compilers are having with nested
  statement expressions.

Arnd Bergmann (1):
  ubsan, kcsan: don't combine sanitizer with kcov on clang

Marco Elver (10):
  kcsan: Avoid inserting __tsan_func_entry/exit if possible
  kcsan: Support distinguishing volatile accesses
  kcsan: Pass option tsan-instrument-read-before-write to Clang
  kcsan: Remove 'noinline' from __no_kcsan_or_inline
  kcsan: Restrict supported compilers
  kcsan: Update Documentation to change supported compilers
  READ_ONCE, WRITE_ONCE: Remove data_race() and unnecessary checks
  data_race: Avoid nested statement expression
  compiler.h: Move function attributes to compiler_types.h
  compiler_types.h, kasan: Use __SANITIZE_ADDRESS__ instead of
    CONFIG_KASAN to decide inlining

 Documentation/dev-tools/kcsan.rst |  9 +-----
 include/linux/compiler.h          | 54 ++++---------------------------
 include/linux/compiler_types.h    | 32 ++++++++++++++++++
 kernel/kcsan/core.c               | 43 ++++++++++++++++++++++++
 lib/Kconfig.kcsan                 | 20 +++++++++++-
 lib/Kconfig.ubsan                 | 11 +++++++
 scripts/Makefile.kcsan            | 15 ++++++++-
 7 files changed, 127 insertions(+), 57 deletions(-)

-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521142047.169334-1-elver%40google.com.
