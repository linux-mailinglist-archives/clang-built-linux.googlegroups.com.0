Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBR46YX3QKGQEPABOZ3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 063A92045CF
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 02:39:37 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id p11sf5374416uaq.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 17:39:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592872776; cv=pass;
        d=google.com; s=arc-20160816;
        b=aI+Ti+bIsPkKAwZ+3NiRDmUALnmABYVIKSwzotgJdsU+NyTcptDZKtz3AbKBWNDACS
         A1T5bo39+7nz46tkoCaZmJOmEP944JoXp+zhv0DMxKyoCfJUuWb9m5q7/OKJzSoe2hGY
         egwuIZ90tEWA3yIE/rKxMAqaoHAxlkQaJcS5l5nrGjTm5eyTc/vqmzoCzihOIop6CWhW
         8UsliQHNV2AuEQv7jWIADGl7sh9V6qOk5oqgyQfukyMXw77LFDfAtAhkrsPNLUkGT606
         NsQLrON9rHsr/H0mH0a/cTB2elZnSGTknRNdVVdtyGNs99xbg9DWYEQmnJYJ00iXu8ub
         EYLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=hjyQZjyXjsHrNWZKWXzn9z+evQ47vSA1TfFjyTK8C4U=;
        b=Sm1Y6r/4yDyZnGq6Dc2zRD4G4bLHB2D3ZoMPsycT4GapdAfbrlLtHeKdwzXgz2F0yu
         exhY2G0mMssFJvK08atUfvSE2e39hvBbr3MsNz8yt6amfQBmilPZ0s+hPB047gdKbVMv
         e1u4Nnw/y7HspJ69P9mqhbpXsa6GCIcknJ9gIM1PTwh7RlnxX7wdReQ9jVZWL/sUzGlp
         4460M7wKdoR4WfX6tpX/laHeEysqsrGBEIDHXszBMZIAYetxvMikQWtZxEO47CEXYtM/
         QjhWj6xfz/rgQfBUGtH7Zr2oevHo50ShNuy4TICkWtiPoKW66BlWr+fJaqzcA81jDVDD
         OsAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M4LHMsDw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hjyQZjyXjsHrNWZKWXzn9z+evQ47vSA1TfFjyTK8C4U=;
        b=cgMU/lj//0zzqUG/Lb13vwOU20PZgCcIGxGFtt8OI6ErmaiG2BUa6s7Li6gX59Sf6Q
         D9wdXJKhQfk2C088FJeijbZvHPyFib1JlKfM4u//NWut9KQ9OS5doEltpGTQgYvFEf1d
         sE063Kst+hY++9GUiVOR7hYXLcouXQ/Wq1v7lSjNLDbdDNdAyh02JXR3xW6+WCtZFm/m
         seVZJlKgi5ns9qDygW9KiMeco5bAwcWWnqauKHfHrbryfL62S0jf8J14II4y/Rj+f7Ns
         t5FWDlqcDfkEN5g/DzocudQ0S/kqca5n0UeJiM/ixlQLDhsDiKvcDfO3GuUsLFzrJ+ea
         y1Pg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hjyQZjyXjsHrNWZKWXzn9z+evQ47vSA1TfFjyTK8C4U=;
        b=HPHqUujLiHlfjhejhr5VWPukzZh/dt7qf+eFI7qIHwThRnOJWD5FqT6Wt6gfb6N6N0
         6ZJ8p65G2gQC/k9F8M26inSNkE/Ovqrv5wg2l0PasjVQmZK065+m/h991qZZPanl+3Wx
         +ScIHqFS6NkvArX2n3a+mlGZb5BU726xLlYF4q/CEyOsNl/Q0CxOBqbRfkxeDQHYLl/6
         i3cHABxn32TzYEmgw/xJ6Fhy5ZSzt6RMi/2w6rNrCafYRNfTkzpnevRrBgNbXd/VtEwy
         LbAFgWKQKttFo908OyxxdJIx7ZAYAy/Ihg/joLarx3jHncorR2UPfFYXGrTjhmKQ0ZGm
         NcAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hjyQZjyXjsHrNWZKWXzn9z+evQ47vSA1TfFjyTK8C4U=;
        b=ckAGf/AFl/swAtPwJpT2C2aSUOShyWaqhmPSd1gRllKlYMaO4SKs3IArlVVq021sv0
         cr4WA2rT99fgf72S3Pybhx80HyfNiYE+HANo1hshpHO1aeva3itcys6RdIDqFjgSmEsd
         PE20nqGFsgJ9Jc3kqazpWTLg+Ob38uEpw/9t/PfQkosjme2S3bZ19SA915nIPOvMepGK
         whT0C+dGygyp1mGJxa9zgBVguu3gVIJiGsAPz3/770YIJw9uMpHnFq4NqdcDVpYsJhUQ
         XVxLrhg4z5+beM3/r+xFSPZAFtAgHqKx1k1efzPUgewm/dA9RxX2plj56nvvOCbsaETo
         D1+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531y6Rd9ApYLxJYUk92dk8vNRjVOQYhdMP8mt1sd1qMpT7WvNDo6
	iJymdjArEnZAPyrLx8vTbkQ=
X-Google-Smtp-Source: ABdhPJwpTdTjrWNGpKFniu6pDztUkWC5XvXqkKiocXf91FnGBL6iEze4PO2aZrqcKJRi5WjQSsLtaA==
X-Received: by 2002:ab0:5498:: with SMTP id p24mr13422860uaa.123.1592872776029;
        Mon, 22 Jun 2020 17:39:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:565a:: with SMTP id z26ls447154uaa.2.gmail; Mon, 22 Jun
 2020 17:39:35 -0700 (PDT)
X-Received: by 2002:ab0:2559:: with SMTP id l25mr13032680uan.143.1592872775649;
        Mon, 22 Jun 2020 17:39:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592872775; cv=none;
        d=google.com; s=arc-20160816;
        b=uJHwt2nqwez5pG7lXe/OoDmHE7t7PHJAF8zJcAFgqhtE5MGJ/d0i2xtjtr3d5NIiUl
         lG9T4b/XzinWjxwh6FmHp9VOa+oWc536O1XuEqOUpWEl4QgteaizwG6ISh42qbTRpi8N
         u02acVgY0ZaTKJ5lkWBd3NFI1R8na2wpxjX+l8HcOQxD6YN1GNF2s0F5IlHNPtCNhVNL
         BBhy9+h5lxW/zrUE1JOWjZSATFfR+gpjUZ9GmVYdB8J8nk0YoeMnuG5A17dMcX5nCdU5
         Pzj9BhG/K/VmV6qg3uDXq6GQlhq5PtQMi7XMP0GN4cyrwSAkvYg6ny+tjndR+PnILOy+
         MfoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=d5frG9PhqG81tC9AD8peh3y6lnck0h80KeA34w2QTi0=;
        b=guSbMeWPcpf/HVciK0Trc04+Rn3qgyy/Y8Tdda+Py6Ew0a8WDYU8SpFBLX8hdLaB7V
         0HU7aNzVsFfFQ2i1xI6HHVNqH+DMPi4DKoJhSlYSV2uDoStL1E75L31AYfSFtq8MY1/7
         9J2LT3VIdp8KsmCxj0az071DuNIWXlj7y5HTf7pEzp9mqxtKZNUoTZB+pcKJLtmTP+Ru
         CdjZM3BOOY4a/3Y1ctsAPrxJKP+sLyM7HbaPw8133ICDaRIcRdYOAEwwG9pOyKZbHrPE
         JF3ATM1q5SoufAWH1tPRxgglB2QJMdaVz8ViGD5rN2Sf/CkcvlEcwz6WkTYR/3zwa3zk
         rcDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M4LHMsDw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id q20si1684843uas.1.2020.06.22.17.39.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 17:39:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id s21so17361134oic.9
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 17:39:35 -0700 (PDT)
X-Received: by 2002:aca:4ec3:: with SMTP id c186mr13675944oib.64.1592872775112;
        Mon, 22 Jun 2020 17:39:35 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id y31sm3677828otb.41.2020.06.22.17.39.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 17:39:34 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Christoph Hellwig <hch@lst.de>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arch@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 2/2] asm-generic: Make cacheflush.h self-contained
Date: Mon, 22 Jun 2020 16:47:40 -0700
Message-Id: <20200622234740.72825-3-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200622234740.72825-1-natechancellor@gmail.com>
References: <20200622234740.72825-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=M4LHMsDw;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Currently, cacheflush.h has to be included after mm.h to avoid several
-Wvisibility warnings:

$ clang -Wvisibility -fsyntax-only include/asm-generic/cacheflush.h
include/asm-generic/cacheflush.h:16:42: warning: declaration of 'struct
mm_struct' will not be visible outside of this function [-Wvisibility]
static inline void flush_cache_mm(struct mm_struct *mm)
                                         ^
...
include/asm-generic/cacheflush.h:28:45: warning: declaration of 'struct
vm_area_struct' will not be visible outside of this function
[-Wvisibility]
static inline void flush_cache_range(struct vm_area_struct *vma,
                                            ^
...

Add a few forward declarations should that there are no warnings and the
ordering of the includes does not matter.

Fixes: e0cf615d725c ("asm-generic: don't include <linux/mm.h> in cacheflush.h")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 include/asm-generic/cacheflush.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/asm-generic/cacheflush.h b/include/asm-generic/cacheflush.h
index 907fa5d16494..093b743da596 100644
--- a/include/asm-generic/cacheflush.h
+++ b/include/asm-generic/cacheflush.h
@@ -2,6 +2,11 @@
 #ifndef _ASM_GENERIC_CACHEFLUSH_H
 #define _ASM_GENERIC_CACHEFLUSH_H
 
+struct address_space;
+struct mm_struct;
+struct page;
+struct vm_area_struct;
+
 /*
  * The cache doesn't need to be flushed when TLB entries change when
  * the cache is mapped to physical memory, not virtual memory
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622234740.72825-3-natechancellor%40gmail.com.
