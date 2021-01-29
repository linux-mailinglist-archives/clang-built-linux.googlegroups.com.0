Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBO6X2CAAMGQEHN7YKOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9993089EB
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 16:37:32 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id u9sf4436462oon.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 07:37:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611934652; cv=pass;
        d=google.com; s=arc-20160816;
        b=y2aC/xFxaWHV0nuANOX+vJl5/5N+ivgv7XQd7y1DJ5zUmv49ROKrKlZy8gkKUbued2
         K5HjbbYA2y+UFKLoO71/CIb+9eNFKUJETDxxpXvD2F3zp7jIz0l80cDL+V5xgPQ5AyrG
         AhMN+DbvuKXGFnyVECcVtXDbai8Ks65vYyLJoWk/VwaPgnM8tNEUzThSJ4WfOw21hJkO
         MOHdwgS/968AvfoEuLBIekT6g13fBRT74fpMNE13RfqoHocNp+XomFoCrVitvykNuXLB
         rn5bZMC+Ifc5pBfqmBNSumdID+12Ae74qG3/qSJGA1tF37IBKQaxWegZLtjs5q40mi01
         vdfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6zSydcetQ7wjkX3ixAowedrgnncTME53Q3KT2Fo/Z88=;
        b=xxZ5ZDhcvfcc3LgXQeTyUmP4SZiomT38EKmIfxX+q6Wyps1BHFkkPBhrKs5VFTikRD
         PRDYBV/Qg3+qpLqjJqH3cwIKXpNJ8aZcf15+A1td+6VhU9vu33+2OhPXDR/e8ZeSl/ze
         1LMhEUyCCFijyCVGLPDMUrDqZTLnlcA+oMuxwjNZvlNgp5mRAVDimJKR/ijGOAxj3jlF
         JGABRKMtf8nXwDGjYcyYrviTA/8dkT1r0wKkhDG1uSDmTq5e9jRsP5Ag9JrKvPbJy6sh
         l1NL5r3wv1DLq6lGXlobvYEjiUOzQ1mFEURiu44VkRr2PbqmxiTiWfA26/oZe7Ncjl9z
         3gpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oWNboHmf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6zSydcetQ7wjkX3ixAowedrgnncTME53Q3KT2Fo/Z88=;
        b=jiiG8TEwz/xjfAygmDPLi8lauQlzV9qmG5imRjdh+AC9J0aDP+oPyqy+aMOaaFC/QC
         +mFilNqtUBFHqwaEDSuWt4qiKX52i6HvuA0n3Qz+PGUBZLclO1oBCvWZIt8iXGcxZpOA
         Z0oYBjEwoYGhSybyTTOv2+wrw3Pv8XM4OB/0MK/4fAYsdeD3EUdqwF1eJwf4fk8CVXFY
         Y/GTXgut7nMm5+9nmUhTrkA1I9gcs9GsArMG7IybJ0lwuZWCh624JOkcbI7/+b/kzJmn
         ho3y9FRdzhoWAFkY3ypZCqQZ8GdxSxPYeWFS1lIgNrELdT/q6yir3qrFtyYVQp4FE6XH
         IYvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6zSydcetQ7wjkX3ixAowedrgnncTME53Q3KT2Fo/Z88=;
        b=S8HTALOO5lFzF2IvxN1EscDHa0A4p/GfvpDQRF56uvVh6D67gaqUwwaJ8I3grt/bNS
         ZKm03LMFa2qiRoBduwKn3g9ukLPye4r1qeZG5ZLpjvXZOy3eJP4YCMvhcsg3Vri+OGmY
         GZ/Xf86ZMfhs4tOo+bccv9tGjb5k+YFkAsufmMSMP45AlgoFImnaKROuFf4EosYx4D3i
         Q+F2zZczRhUrd5KEvHZ4G21BnYReug+rWNN7wvJym/gWKrST1jNqUBUXgKO/3e+tCSFM
         l1H5Qb7bDhVAhnfOcoTkjNo8H/nIi9+clnur9Eu9B9mWBM3RgelRbRcRMW6Mppv6qlTO
         /Tlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BQerffd1OhV4ti5yVXoQH5ecY9ywUv0nRSzx+Mkbt7FN6iD/4
	Lq73jREcL7Y173rL+lr5a10=
X-Google-Smtp-Source: ABdhPJz+R76nY/46Oz4pjxSa7OkOhgMxSRTISRoNGZ35HulkS1m1kAwD2bMW7Jh0BAZzpDLIfWp1LQ==
X-Received: by 2002:aca:4d97:: with SMTP id a145mr2964906oib.147.1611934651908;
        Fri, 29 Jan 2021 07:37:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:7a41:: with SMTP id a62ls581086ooc.9.gmail; Fri, 29 Jan
 2021 07:37:31 -0800 (PST)
X-Received: by 2002:a4a:dcc6:: with SMTP id h6mr3470891oou.89.1611934651473;
        Fri, 29 Jan 2021 07:37:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611934651; cv=none;
        d=google.com; s=arc-20160816;
        b=Q767XNuKT8uFGVdGQdOxsQsGZEyvIA1y3TCGwth5gQUiTAb1v+/VpAMYqvojm42GQ2
         yL9IsvKmUVKchC/XpJFbvO82m5CUZPuTHQa4Z9VkaS536Eti3tb/JqjjVdOh0O3OuHvp
         FNBxOPvC+aHWwqLAjOjoVAXxU5pTROSsBBgK3M4VFhAC0969YrtFPR2H7Jef8BK5hHPF
         bngY3+1XfEl3Xk9IL0wXt08mXdzb1DaZB12FTiqPNMGQL/sZOmbu5v77Tf4hScrGRSR4
         6zJ9DVldUDDCC/MIHWyQwqhHMqoO19OJnU8Ry7tx+WKYGJDDMuQ5tJBuwd1mZjXzk3WP
         hcng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qRlqAsaGjGsDbm3/De84EY0Go7H7onUc6lr/PmmPYmY=;
        b=rjFPOYY1SejLH7CuhAMR0A8dnlm4BAWAjkJjKckHDsXrERHkBIaW3QSEnzEKJMjCX6
         sFMT/lGs4mvCVDHHTWP9UrwCd4twzzVFV6St51JX7pgiz6aNcVYZKvIiVb4B+qD/6ZGN
         xCHTAe9XaMm2ZL+cQGTxN8RjuHIK61IgBpXG1u8uxaBQZyIoKE1I+clBm0EQDY0FBdS/
         B0RwqPpTd51wfWVVK6FsT/KP/Jx8loecjOKHWDrNIA9WwXhIWzCOzzpObcVWPPQtUITF
         Jdskogrlrmh91aMRCrdDBTBX6TaLlU5PuU/+GigtOff2sq/ql73+Q7sutyXOB7ZGz7pk
         /Iug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oWNboHmf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b124si476836oii.4.2021.01.29.07.37.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 07:37:31 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D03EC64E0E;
	Fri, 29 Jan 2021 15:37:29 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Josh Poimboeuf <jpoimboe@redhat.com>,
	Arnd Bergmann <arnd@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.10 14/41] objtool: Don't add empty symbols to the rbtree
Date: Fri, 29 Jan 2021 10:36:45 -0500
Message-Id: <20210129153713.1592185-14-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210129153713.1592185-1-sashal@kernel.org>
References: <20210129153713.1592185-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=oWNboHmf;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Josh Poimboeuf <jpoimboe@redhat.com>

[ Upstream commit a2e38dffcd93541914aba52b30c6a52acca35201 ]

Building with the Clang assembler shows the following warning:

  arch/x86/kernel/ftrace_64.o: warning: objtool: missing symbol for insn at offset 0x16

The Clang assembler strips section symbols.  That ends up giving
objtool's find_func_containing() much more test coverage than normal.
Turns out, find_func_containing() doesn't work so well for overlapping
symbols:

     2: 000000000000000e     0 NOTYPE  LOCAL  DEFAULT    2 fgraph_trace
     3: 000000000000000f     0 NOTYPE  LOCAL  DEFAULT    2 trace
     4: 0000000000000000   165 FUNC    GLOBAL DEFAULT    2 __fentry__
     5: 000000000000000e     0 NOTYPE  GLOBAL DEFAULT    2 ftrace_stub

The zero-length NOTYPE symbols are inside __fentry__(), confusing the
rbtree search for any __fentry__() offset coming after a NOTYPE.

Try to avoid this problem by not adding zero-length symbols to the
rbtree.  They're rare and aren't needed in the rbtree anyway.

One caveat, this actually might not end up being the right fix.
Non-empty overlapping symbols, if they exist, could have the same
problem.  But that would need bigger changes, let's see if we can get
away with the easy fix for now.

Reported-by: Arnd Bergmann <arnd@kernel.org>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/objtool/elf.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
index 4e1d7460574b4..9b2c475e6908e 100644
--- a/tools/objtool/elf.c
+++ b/tools/objtool/elf.c
@@ -422,6 +422,13 @@ static int read_symbols(struct elf *elf)
 		list_add(&sym->list, entry);
 		elf_hash_add(elf->symbol_hash, &sym->hash, sym->idx);
 		elf_hash_add(elf->symbol_name_hash, &sym->name_hash, str_hash(sym->name));
+
+		/*
+		 * Don't store empty STT_NOTYPE symbols in the rbtree.  They
+		 * can exist within a function, confusing the sorting.
+		 */
+		if (!sym->len)
+			rb_erase(&sym->node, &sym->sec->symbol_tree);
 	}
 
 	if (stats)
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210129153713.1592185-14-sashal%40kernel.org.
