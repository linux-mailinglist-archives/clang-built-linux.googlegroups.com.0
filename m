Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBBMO475QKGQENXHZUIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63d.google.com (mail-ej1-x63d.google.com [IPv6:2a00:1450:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id AF86C282AC8
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Oct 2020 14:58:45 +0200 (CEST)
Received: by mail-ej1-x63d.google.com with SMTP id k23sf2167621ejx.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Oct 2020 05:58:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601816325; cv=pass;
        d=google.com; s=arc-20160816;
        b=BIfz3lsgPZHquvzlFvM1Gc8ZGC+PbKeiPXfiLaqzLvPSn8icQZR6XRr8HvqfWiyrib
         esbaCNnzAz6IMRuSHTiXS2bK/D+JZNHv7XOgGgpdxQ/JoCKVByF51goETluMZjyCr777
         gLGhkAM/8pQekhtbY3Fwswqg9TJiUn0k/FI/xUndBUeiEF1NLh0DlS54aVTalfBii5K3
         FbuW0LymLspmKNMTnzey+GJW0+ksii7XV0SNuomtImhfzFiNxLTBrWRYSMayUyjmAbID
         hUXDMPp4VyLmI67mKfBoW7bik1A79l3Cxn+2XVQ5XYy+LhZelHkMH8+zVIN4HwPyqETY
         JHDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=mD23lSOvaHtUlIvgvv0aBQtNqRqnURUVpp9b6HXvfws=;
        b=uCxrRyBQYP94wSN/Kxj080w7fX6gsh82xBB9Z9IbNGoZu3hZ30Y964O3EiJVKZpodr
         lDPsLoYE0yeB4Z40C0csdP9mgzG4Rk9RvHxvyMLBXpt/Y6OsJ6AnPA46LaaYMue7rESQ
         E9gkU/yKQBFpAqGrym4EeL62q6/n19gIW9MrxqMg/hGj9+lU8PIAwNTf0Qd8Id14ATaQ
         zBlj9yjkN9F1+1D6dh7+0hK00y7rbuw4wqegw3yesqgcYF+ALrW4CfOo9cxNTCQrV5j2
         fRK/DSdHT9jjGdEbm4BigbGDfFh/dl3KJnxs45Gbsk3LaQM7A71mTw3ScBO6HTA1k/A5
         gAhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CnISbJko;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mD23lSOvaHtUlIvgvv0aBQtNqRqnURUVpp9b6HXvfws=;
        b=PtDAScdgcnmn6Pt/bQYmeFwGSHUiHXXx1JcuI4qpR6Qq3N5IoDl/YCJp18Y4aqHvwk
         QeLPxlvCh/a3MLgwl/sWahMExaxUhNr5LK1nu/Q4GFYl39JQP87VBiye3RWim/AS9bB8
         HeqsJ6bE436m7kpCzdPY3oz4kZsUbIT2rxxBianGNbIA/09vjkTGA6K5kDpHlHutROfX
         tE/DTgrk5XqbKSRupgCSVYcWomHfWl+09hHxgupCHblbJ2Y2SwKIPqQAmye6/5RXBwWy
         EgNxovpJD+4x4go4SyG3OzriUq9zyD2slm1110/15m7EuNvq8F2xeuu641PfhnoUegp/
         5aBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mD23lSOvaHtUlIvgvv0aBQtNqRqnURUVpp9b6HXvfws=;
        b=eNn3I+FCRbedB2kbCv2iEZC0XXKHOLkO7MC8JWnUUlafJ/hvrrBdvmGlsjQu/SNhFn
         AxPdnSKUvsElqNaZ7hw75/II235D/7IANyZgQrwWBMccdoEQYG6p0EMA8aRs3c0Fcyc2
         JO1EOKyKAL6NWQVvgbrcf5z7CAf7yPtv+dtq7xFBOhM7Al+OuKnLFJGJRoTYJ/Y4Cpvn
         iKBO6oNLvGygVw0YVLQA6zfouO0WmPxJFtgeIZu5rJC3mtsQKBD0PEp/6HyIMPn1bB/L
         f4sZ5rSNLazOgIU0LtwYsTcJSO8slIo8VHLsiL4+dmVl0ms6nprB9DG4+D2heTpl/euZ
         ZaAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mD23lSOvaHtUlIvgvv0aBQtNqRqnURUVpp9b6HXvfws=;
        b=glP4wSJFtlMmkR3Y944ku+rh1JFdtmYivUufcIV0SpWOaKLDIj76soBRBR7mOnOlqY
         7vu7BsFUVRv5E+e5zgShCi0/R2vHbL1RUKtwoaTAs1TrKj2fY4TDvTY+W8zOtYWfrGuW
         FTRKIge9KFqDV7DbIMj98kY6M9lS//Ct3S94nRvcy2kbjgcXSWGNrqoW5gbQ9CbRSXPz
         Fz0yhBsXeYLdMGVxKmGE/YlE73ZxXYPUvbd3H7oOqQ8eiO5J7tfITWWQRTaDEOI/+gMi
         ibaH01qjs32lKRpSmaHKambLRmev4SBcMq4tvoYby6EjA5j5Je1JYfgQqdm8mAFIUxZa
         hZgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xfWu+qSs0ZzftULTsNqNfKZbgcQxVmhcP8pVDZaBQ5jivpoUw
	1XUEI3SdU2vL4zQD1M87dek=
X-Google-Smtp-Source: ABdhPJyAcyQADopMm+ODdZoLQis9haxejKask9pfMjTW2QB+QXfcDDGsaTr8VV7vU6bLFiAqr6WrCQ==
X-Received: by 2002:aa7:c683:: with SMTP id n3mr12035310edq.146.1601816325438;
        Sun, 04 Oct 2020 05:58:45 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:b18:: with SMTP id h24ls1785455ejl.7.gmail; Sun, 04
 Oct 2020 05:58:44 -0700 (PDT)
X-Received: by 2002:a17:906:4c84:: with SMTP id q4mr11006329eju.525.1601816324394;
        Sun, 04 Oct 2020 05:58:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601816324; cv=none;
        d=google.com; s=arc-20160816;
        b=L2Axjy04kJCRhKNC16yuXnwgoDkwW1YUS8I3RjcH+V0KRDUWK0Zn070/GkcI4kYYjA
         gqrulJDhEjHVE9gPJcFHbr386m7ZsgnB+Qa9lR+IKn6h3pyWZXu45l9VNBxmINPr91im
         1GFdF3z6EnBXIhyC8qZyBMtFymuBDjpn6KI7XvZTeBDaOw53f+7Qya5XfJU7b0q1QaVl
         /eKk88di1IUP47F+esm+VfH65xob+yArYmwsNKic+OrkWIRXFFVzG5jl74117leilRr5
         NFRQiwGQvkzn2OYqa6AcemfBNIf0P7HaFAkClJGJqaJNOqgAUwjO0GMr3wQn/54akqXY
         0+4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=PUKRKz2tpvOlgzU6T8LFm9id6xQAJB/MM9M3WUFXc+A=;
        b=J2raMEYUWyWI2o9/eDOvPA1B0U/9EakZTeiUl+Kjk1AQI4KQ5HRvGu8Rom8zh/pdhO
         2x9wFgXlkXZeIa++U2iYZjUiNZ/oBsjYZfUJ3uXPcTIil2ILKeuUnMLgcsb4PmpFozAT
         BVLZE64XXtpCWA+kLuZ8aUHPBXgWQ6WqB8DhD8uSBW4vuACTARjHmiC79XBcRSzIx/cA
         MrDpO0YrW2izECodBtfhuqaz6xFAgAmvj/y7QU9FAA3/+cIDKsSE/YhPQyR6DDroyHMa
         sojdVrrDtKfj+L3kA0Z45KojFuAPeIOMAnamQ9AYxnwcV2uGlg+bYSQ+P/o9V5xJufEd
         Tqfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CnISbJko;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com. [2a00:1450:4864:20::643])
        by gmr-mx.google.com with ESMTPS id g90si93644edd.1.2020.10.04.05.58.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Oct 2020 05:58:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) client-ip=2a00:1450:4864:20::643;
Received: by mail-ej1-x643.google.com with SMTP id u8so8057141ejg.1
        for <clang-built-linux@googlegroups.com>; Sun, 04 Oct 2020 05:58:44 -0700 (PDT)
X-Received: by 2002:a17:906:52d1:: with SMTP id w17mr10339057ejn.164.1601816324134;
        Sun, 04 Oct 2020 05:58:44 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2d26:f700:59a3:d1dd:4e61:fceb])
        by smtp.gmail.com with ESMTPSA id a10sm2751747edu.78.2020.10.04.05.58.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Oct 2020 05:58:43 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Mel Gorman <mgorman@techsingularity.net>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-mm@kvack.org
Cc: Vlastimil Babka <vbabka@suse.cz>,
	Michal Hocko <mhocko@suse.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] mm/vmscan: drop unneeded assignment in kswapd()
Date: Sun,  4 Oct 2020 14:58:27 +0200
Message-Id: <20201004125827.17679-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CnISbJko;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::643
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

The refactoring to kswapd() in commit e716f2eb24de ("mm, vmscan: prevent
kswapd sleeping prematurely due to mismatched classzone_idx") turned an
assignment to reclaim_order into a dead store, as in all further paths,
reclaim_order will be assigned again before it is used.

make clang-analyzer on x86_64 tinyconfig caught my attention with:

  mm/vmscan.c: warning: Although the value stored to 'reclaim_order' is
  used in the enclosing expression, the value is never actually read from
  'reclaim_order' [clang-analyzer-deadcode.DeadStores]

Compilers will detect this unneeded assignment and optimize this anyway.
So, the resulting binary is identical before and after this change.

Simplify the code and remove unneeded assignment to make clang-analyzer
happy.

No functional change. No change in binary code.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20201002

Mel, please ack.
Andrew, please pick this minor non-urgent clean-up patch.

I quickly confirmed that the binary did not change with this change to the
source code; The hash of mm/vmscan.o remained the same before and after
the change.

So, in my setup:
md5sum mm/vmscan.o
7da4675477f186263e36b726cc2b859d  mm/vmscan.o

linux-safety, please verify and validate this change.

 mm/vmscan.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/vmscan.c b/mm/vmscan.c
index 466fc3144fff..130ee40c1255 100644
--- a/mm/vmscan.c
+++ b/mm/vmscan.c
@@ -3896,7 +3896,7 @@ static int kswapd(void *p)
 					highest_zoneidx);
 
 		/* Read the new order and highest_zoneidx */
-		alloc_order = reclaim_order = READ_ONCE(pgdat->kswapd_order);
+		alloc_order = READ_ONCE(pgdat->kswapd_order);
 		highest_zoneidx = kswapd_highest_zoneidx(pgdat,
 							highest_zoneidx);
 		WRITE_ONCE(pgdat->kswapd_order, 0);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201004125827.17679-1-lukas.bulwahn%40gmail.com.
