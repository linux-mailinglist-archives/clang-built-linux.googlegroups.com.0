Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBP6H27VAKGQE55QTKGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6913D8F752
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 00:59:12 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id y67sf3586520qkc.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 15:59:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565909951; cv=pass;
        d=google.com; s=arc-20160816;
        b=xgTD8bf9boHzipYnHkrKGVnW/eEwr0SFbtNbCxI+ChsOEJVNvU9CVleniiayhFLRRp
         6w7kYXTS9aUUPVL6RZFExg3xuYnr9x9e7X97N4g/gia5y3QK53adz26BjjMGzUdGJlua
         wIgHS4OYiEVEhfx7pIz8syZnr3hEHFLtYSYhXZDI/tAarZT4liJA4mYDA+oZycdyYczJ
         Xj7ga4qkILxZVthWgTGCjtL/r5Xa1H4Ny1uH/+6a5IMTfcddPBDYeJKAVIekxUSGKc0H
         PtYsJyl01pXnLl+afeR+FC/2DuKiWUNaK9+J/ELLoFnYeG+X4QuKYuzHilwqgm3iTjkm
         wWnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Gn+IstyB8MtMawkVqu46yjeMTIFmvY49cg1NYJdH0XA=;
        b=LMpLAxFrgbNeeurnh/uWHZMkbyTT2Pi86o5pFCZ976Bi5dvt6JDDjrrAfT1MHhb/hh
         2Di6jLKNjshfI3JgWVJOzpA2Av2JVI/MyFvMC/58eJaOiVGQOprjZRDYZWvy2oGpGwxM
         kuy83TTW2YnfVUxfIVeNh5PZeIua/sWBsWQoVO6wFEvUeqOoCaJMTg2JPvaLee7N4qlu
         iRiEvLb/OaLGkodcDL9JmYI91UhJgiTge3bznhH4v0/3tgII2EhqUDQx9XY3ihOEkmKT
         HpwM+og+6Pr/+FYg2LrsIKC65YMdJxbHkpCzQPCkX7b/O3anjjxXflDcRVizyFikmE5K
         Rrzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D+oh9EMl;
       spf=pass (google.com: domain of 3venvxqukecw5zcu2y66y3w.u64u3s5y-tc03b-305cfy66y3wy96c7a.u64@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3veNVXQUKEcw5zCu2y66y3w.u64u3s5y-tC03B-305CFy66y3wy96C7A.u64@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gn+IstyB8MtMawkVqu46yjeMTIFmvY49cg1NYJdH0XA=;
        b=ayQ2JpvZDmnI2CJOt5rnEpPnuS1k/A/Pdd2TYOOCaVsL+6uFDcdA10VjkymQPOaVfF
         PhH1S8UWHVjoa8CFinMMFk40aJAqJ0SNIXvg374cSyfEjmLq6bOCda0aF1dF0a4cqC0D
         ia19LpESKRakvW/f4RlbR2wdZdPV9F2OCIFIUiQk4MCJkjTxuAhUqMNR7/XNRr2vFjYm
         sUMwSuO7yqF8mqYc+RRcecaBdmOpgd2NbcOQqcX0YVMFk3oCXJwZvX5xMFPHSD1cvHYd
         hyWJeOS1hlLd0xJq7QWGFI36dWKQr6GLHH7s1HCy5uOzt6hFN5apruMmPvmp/VF3LkLI
         a0BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gn+IstyB8MtMawkVqu46yjeMTIFmvY49cg1NYJdH0XA=;
        b=BzN8cJ8PTrKRxyQ+5Xke2JDXn2IOfsFs6V+63ekec5Y4VscIR4VyxJb4K6vGm3LKan
         wHqceBQhlYCuBlxOEkNh1HkoqLmwy/YBdK6VA08yDDz12dJgFAGeIUOFe57M1ZRJGKA6
         cl1JG9p775hB/z9/7/P36dZ5ZjdUVNZ+oIUoK6LZwQegEeLdm+ZZuWxr1tnwE6bMZceP
         6ORCjxRIbf5TNTSF05trjufZK3wLUPwAESCksiooJkM/917mlqPCfg87oBC+hWMDs9Gy
         LfY87wLboTqs2tZWSMAdMOjJ25mk8UoETgo5D525lncOZeu9m4GU0YDe99roLB8eOzML
         ipSQ==
X-Gm-Message-State: APjAAAXE3MpNFopGDGD80oJ1sFjdYAYqPyGK/H+bMBJqbjz1TJQe636C
	c1LWochEm2/j97oBN91IzgA=
X-Google-Smtp-Source: APXvYqx8N8x8wiCspj50iyTg9UjsCQ8fOq0UtkFI9q7SDjxELRp2GfbYwcQkI0sAMki3tD6xeE6Fdg==
X-Received: by 2002:a05:620a:531:: with SMTP id h17mr6263953qkh.20.1565909951147;
        Thu, 15 Aug 2019 15:59:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:630d:: with SMTP id x13ls934598qkb.9.gmail; Thu, 15 Aug
 2019 15:59:10 -0700 (PDT)
X-Received: by 2002:a37:4791:: with SMTP id u139mr6035760qka.386.1565909950917;
        Thu, 15 Aug 2019 15:59:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565909950; cv=none;
        d=google.com; s=arc-20160816;
        b=gsV+sjlWkngnxa8yCxHw1lv2e5aYHjHs2ra7vMhy/bBkVmPfiP1jKOwkXNSyKIWFnJ
         3o46pU0vEYruz3GxnaQphul19V1yJbyqfivDt3VLaf0DfLMz87LFGZ+ev8gJLsw8e3ty
         oeZqRa0UaHkxJNGM9ORPqdmfKURfAVQtAV9DcjZQCaJdeD6G3N84tCII+Nhw1wFlSk1h
         Ej1UWywBKioJhfAop2noUnLefxO57G+ZhoAsC4ejXV690PKf/zQSP6KrdPY/hGvNm0tD
         CN3iGDTuCqx3WcIYnEyQPfEQd9Qw2cTL4TcdwT/1rfv/KF7UlJsKFoIe8x05XCwBoJic
         YLpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=bsc+oL3W9Qap3NqyiuNHWglQP2bNTVPp35x6p7f/ATk=;
        b=P0iCZ/bDBbJ7bHiHt7vfDSSHfwoYXfhQVE5B6jRWWUMBydSgs4dL/kv3D20wXV9sHr
         /quCoUt5IsG9Jb2E3CUirp9xftZnjsMO54MHCCGkkP5s1ipGkdROauMpaHfgVi2wWdAO
         kO9imJOTJijTVGDl+73KjP5S0416uED90D3clT7E27JqMoiM1QYeR0E4oie3GsH/LGIl
         N6CuH5yaOp521dZq55oxNmiaGT5qP2cBe0m5Vy4vft07KpqPfuPK/Hs0QADpwZuPgpBz
         VqchhbOj9mdl+mQGzurZqufJQJhQXNEd3aW9vzjKwfz78CwRL0NRGc/qXoLRFQfcYWgO
         5bZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D+oh9EMl;
       spf=pass (google.com: domain of 3venvxqukecw5zcu2y66y3w.u64u3s5y-tc03b-305cfy66y3wy96c7a.u64@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3veNVXQUKEcw5zCu2y66y3w.u64u3s5y-tC03B-305CFy66y3wy96C7A.u64@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id j23si253865qkg.2.2019.08.15.15.59.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2019 15:59:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3venvxqukecw5zcu2y66y3w.u64u3s5y-tc03b-305cfy66y3wy96c7a.u64@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id j22so2559291pfe.11
        for <clang-built-linux@googlegroups.com>; Thu, 15 Aug 2019 15:59:10 -0700 (PDT)
X-Received: by 2002:a63:c442:: with SMTP id m2mr5399788pgg.286.1565909949663;
 Thu, 15 Aug 2019 15:59:09 -0700 (PDT)
Date: Thu, 15 Aug 2019 15:58:44 -0700
In-Reply-To: <CAKwvOdk+NQCKZ4EXAukaKYK4R9CDaNWVY_aDxXaeQrLfo_Z=nw@mail.gmail.com>
Message-Id: <20190815225844.145726-1-nhuck@google.com>
Mime-Version: 1.0
References: <CAKwvOdk+NQCKZ4EXAukaKYK4R9CDaNWVY_aDxXaeQrLfo_Z=nw@mail.gmail.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v2] kbuild: Require W=1 for -Wimplicit-fallthrough with clang
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: yamada.masahiro@socionext.com, michal.lkml@markovi.net, joe@perches.com, 
	miguel.ojeda.sandonis@gmail.com
Cc: linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Nathan Huckleberry <nhuck@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=D+oh9EMl;       spf=pass
 (google.com: domain of 3venvxqukecw5zcu2y66y3w.u64u3s5y-tc03b-305cfy66y3wy96c7a.u64@flex--nhuck.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3veNVXQUKEcw5zCu2y66y3w.u64u3s5y-tC03B-305CFy66y3wy96C7A.u64@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

Clang is updating to support -Wimplicit-fallthrough on C
https://reviews.llvm.org/D64838. Since clang does not
support the comment version of fallthrough annotations
this update causes an additional 50k warnings. Most
of these warnings (>49k) are duplicates from header files.

This patch is intended to be reverted after the warnings
have been cleaned up.

Signed-off-by: Nathan Huckleberry <nhuck@google.com>
Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
---
Changes v1->v2
* Move code to preexisting ifdef
 scripts/Makefile.extrawarn | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index a74ce2e3c33e..95973a1ee999 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -70,5 +70,6 @@ KBUILD_CFLAGS += -Wno-initializer-overrides
 KBUILD_CFLAGS += -Wno-format
 KBUILD_CFLAGS += -Wno-sign-compare
 KBUILD_CFLAGS += -Wno-format-zero-length
+KBUILD_CFLAGS += $(call cc-option,-Wno-implicit-fallthrough)
 endif
 endif
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190815225844.145726-1-nhuck%40google.com.
