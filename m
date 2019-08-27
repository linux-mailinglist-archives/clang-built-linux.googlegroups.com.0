Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBHVCSXVQKGQEZBQVFVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 123AA9EF5D
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 17:49:52 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id v4sf12244555plp.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 08:49:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566920990; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZtwcWDSvL+uGto7AgEgZoFVKFsgllgd4RBoWiBiszFKE8JiNzJ61cJg3tG1O5jDTe1
         sLycEO9L3YTQ5WQiPq0CkefHo27v06joX2QyeYPWxR/b+r3ub/97IIZlv3yuy+fBcX9f
         Un9ruSJri1r4b5U7z4iJa6jiKMaPDmFFODDPPYh21IN1P+gQ9j/QaDzln/mF+5hFdaSZ
         E+Cl4xJuwzwjrMe2ObxBJAIGpUquZNr2IHWcvKrBJVg9BkBfL3wN5tAuJaZJHPo3DosN
         qSnmqm53fUZV2RIdc1wQcez7ldfGy3b7F3p2UB8E9NvmO+vLLkigrO17aFcEpm09Xdg/
         a2lQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=7HW9Os0W0spSSBfxYcPLK8MhvIY8+KkbidF6Dzzxncg=;
        b=ElTKYjc3EH1mGtjplERVkVsy/vxBJ5Isg1D3lncjQVCmBKTKMkU7rHV0hg5Wc97EeB
         znUbKvAmOibY4+30MfxHdZAGetG02RcOgRiR8/4NnTpELtpQAIJThGUUDpmNtGuunm2k
         5AzsKJlNqlyghG9bjGdN1nM/v6Vc6no7ATWk9aURuShu2WuwR7Xof++PrDoh5g7NMxOq
         g5fq0JW7g4LTbRZbPez5NAr9BcGP8/p9YKkMMHiGhvWHpqZSArzC8qVVfREvdazTB/ql
         NE81ZjtOZX/quY43Lb7WW7qJ+rWrvC86ONcFljvc1iUBfTcgSCA3y4hvqDx8GOQ08apR
         F4PA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=CxO4kuP7;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7HW9Os0W0spSSBfxYcPLK8MhvIY8+KkbidF6Dzzxncg=;
        b=J9oxiBxBLty96M2RJsnYq7j35fQSPZV9h5SKHsGit6hZf2WG6znoEZQ2jdooZ5Fhpe
         vLKZMh3KxCqDyuqt2WEDUFHchc6oHw+gZrpXcmIODd4ct7QEiseOIDFd99WzKLL7XbFg
         wV5dlT0WitUJQHCD0R2rUN3WtzQIvLvnmugDQnZZwrigNcVuRtLjyPOJRzBgsxrJsct3
         SPoeRem7gqOZIdxzMtvxDjXTDyUXMVwRy7jm6VCA/vjisqh0MkftJaKCmmg0tSmTVc2g
         aWEX9aNItVnjVbv1Vt7M4vg0Dboro5CESeFusqEVQx9IL7IZV5V3Z09boyMUwkhuE4J4
         MVug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7HW9Os0W0spSSBfxYcPLK8MhvIY8+KkbidF6Dzzxncg=;
        b=BqbfgkPK/WJVt0NtDrQdUuJNb6FAR2xxfNxZd36xPyOQtO7RUj+AJBlXg8O40WrpGJ
         mIAspNLnqILXWgzvHHM1Y0F2Kb56R5gfS3v5FFFRmGl6RmGk1XP61UaTKc6fSRMPzKkO
         RnY8onPQWmGzam2/+biTFGvITLBNAx++ggWPOBtUfJ4DToRaiRlYw+Jseq6HjMOVDs3c
         aEJefwwOApfqAW+7STJZsRSHbygqSBOHRykcU3BrcrL1/LZwp0EzmjxOfqPfYRNtxh+x
         MOZRT82f2a6zvbRiUIkPwOMBvVZnId1x5XyaPTJXSLKehh752oRJlDhTeb8vnNMkYN0F
         7EMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUmaAyYz+BrXsR/J8qyJ0r9qY86BOXp6/G/u+EIChMxgk2WtFtJ
	3B6F716zFT5HEVy79HrB8zw=
X-Google-Smtp-Source: APXvYqwqC0q1lhHKJphQY/eusxXoMWGGazso5ekm3mDg2e+5E+EU0aHCaU+Ao2y6c8Q/jHT1JTWp5w==
X-Received: by 2002:a63:181:: with SMTP id 123mr22440283pgb.63.1566920990621;
        Tue, 27 Aug 2019 08:49:50 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:644a:: with SMTP id y71ls5792067pfb.3.gmail; Tue, 27 Aug
 2019 08:49:50 -0700 (PDT)
X-Received: by 2002:a62:3145:: with SMTP id x66mr8471255pfx.186.1566920990147;
        Tue, 27 Aug 2019 08:49:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566920990; cv=none;
        d=google.com; s=arc-20160816;
        b=TSjNQn9gPo4VsxExkNdzNbT+G3K7dSav2i3Qg1P80fhBGFCwSLpEnHpytYHQH/pgdn
         QRtlGRFrd/JtAit2irfYsKdhmzxWu7JNDNY4Xp7bloQnW25+v4cx8ngpKeJ6+GR//+SV
         8ET7ooMDadwVeSMk04STf5wxPoq6E+rfj0/TVbzaB+mL2Q8LubWr914fzvSu0DU1XZ6P
         ZIGrQv+4j7oCDl3TAYATjxufJneTqr2lsmZ2GgzcG/mzqEW9xEtBUb30Ghn3G4vUT5dy
         ggA4fdJGsSId9n14frFs1AoMHks4Uk34HSC4RGoAEuO3Jvbilkjc16mFgFdwWjERB+qq
         YbQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=dibpdWj0PBeXuEM69FfN87DRWH5kS3v94RiPB1mv5iU=;
        b=j26otV0RrhvV12y6pEQ7AqMu1gyLyc0PGGTC4TeguUpsXXBGiEamUARVRYyUH4d7a3
         eihuS5HFGnVo2aCtM2kEsKdtouLUxt8oY0FmZ1E8IMfjOVfJC2QQ2vttROhjHJGO3+fN
         wtwTbmJXCK83kDlV0OQk/kZx9o6Ai/cN6Hxw6eIuf9Ux/ThuGE13JohG3UQAqgblY0jQ
         KbKPdqvut2QGObJ9nPcmAvYeqtOu8YdH7yPyWxwxBlubzynli1wfL+WSL6ngdjez5mAV
         Ap+WVa084nStgi99sM1ZDqZ7pI9n4Q/DQvkpyjOzTw34BzfPM1mz2wR5HbZ4tCWzydkh
         5/7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=CxO4kuP7;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id b23si768453plz.1.2019.08.27.08.49.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 08:49:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id f10so2868431qkg.7
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 08:49:50 -0700 (PDT)
X-Received: by 2002:a37:c49:: with SMTP id 70mr22348368qkm.429.1566920989128;
        Tue, 27 Aug 2019 08:49:49 -0700 (PDT)
Received: from qcai.nay.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
        by smtp.gmail.com with ESMTPSA id w1sm8505153qte.36.2019.08.27.08.49.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Aug 2019 08:49:48 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: akpm@linux-foundation.org
Cc: clang-built-linux@googlegroups.com,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	Qian Cai <cai@lca.pw>
Subject: [PATCH] mm: silence -Woverride-init/initializer-overrides
Date: Tue, 27 Aug 2019 11:47:47 -0400
Message-Id: <1566920867-27453-1-git-send-email-cai@lca.pw>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=CxO4kuP7;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::742 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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

When compiling a kernel with W=1, there are several of those warnings
due to arm64 override a field by purpose. Just disable those warnings
for both GCC and Clang of this file, so it will help dig "gems" hidden
in the W=1 warnings by reducing some noises.

mm/init-mm.c:39:2: warning: initializer overrides prior initialization
of this subobject [-Winitializer-overrides]
        INIT_MM_CONTEXT(init_mm)
        ^~~~~~~~~~~~~~~~~~~~~~~~
./arch/arm64/include/asm/mmu.h:133:9: note: expanded from macro
'INIT_MM_CONTEXT'
        .pgd = init_pg_dir,
               ^~~~~~~~~~~
mm/init-mm.c:30:10: note: previous initialization is here
        .pgd            = swapper_pg_dir,
                          ^~~~~~~~~~~~~~

Note: there is a side project trying to support explicitly allowing
specific initializer overrides in Clang, but there is no guarantee it
will happen or not.

https://github.com/ClangBuiltLinux/linux/issues/639

Signed-off-by: Qian Cai <cai@lca.pw>
---
 mm/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/mm/Makefile b/mm/Makefile
index d0b295c3b764..5a30b8ecdc55 100644
--- a/mm/Makefile
+++ b/mm/Makefile
@@ -21,6 +21,9 @@ KCOV_INSTRUMENT_memcontrol.o := n
 KCOV_INSTRUMENT_mmzone.o := n
 KCOV_INSTRUMENT_vmstat.o := n
 
+CFLAGS_init-mm.o += $(call cc-disable-warning, override-init)
+CFLAGS_init-mm.o += $(call cc-disable-warning, initializer-overrides)
+
 mmu-y			:= nommu.o
 mmu-$(CONFIG_MMU)	:= highmem.o memory.o mincore.o \
 			   mlock.o mmap.o mmu_gather.o mprotect.o mremap.o \
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1566920867-27453-1-git-send-email-cai%40lca.pw.
