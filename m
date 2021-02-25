Return-Path: <clang-built-linux+bncBAABBSGQ32AQMGQEYUBOFJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 43991325098
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 14:38:18 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id o11sf3908605pgv.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 05:38:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614260297; cv=pass;
        d=google.com; s=arc-20160816;
        b=pISFa4okk39OFlJ4wwkN2G5NTVmNuFfs6Um++AZ0HvAhqSSUADgcV2nef8ySb/F07t
         5IHlqSnGI1hrVKD5ILEP8KskGUyPeu/y+8K+7yo2taDIRsufmafUhbJxb+q/nbNBOKZl
         1bpzPo6naOswaJL+qcyYBNP1E5Dr6IAJXcdbi4pXERf+acsg4OqYgeVkwWTsHnnWauPU
         ic53/IopXy5GwIF6+rmUE2uJHsuHrk7VQqVwLuxUwdVzcXgZrr+Zbcpqt0iwKK8Cs3Bd
         f+hxoqnd1v0mcMlaCOFlQQr/Kavca0b+9HCkmPiZoE3Dx1lCD3bSV8tpIK5vbklA3gWN
         rJtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=gZiqFql7auXuQrl05b80AclrNoyYJY++oH4JDDLUnGI=;
        b=na4QmAwaZukFnJn0bfYUV8snbKKvr+knitDLDBSvWvHGjrmVId+m3vG+IjW9o65g+r
         YHcNKrmX+108HHauJs8imSoKDFfiArRgkuhZqFuoMZDENn3yizipRZ/rCKdN+oiQqsll
         ZCsssiHpNKGBIEvoWc7q6cmDaB35de/kNgX0oqV9Xsm/p4Gr5sEhUH2QwCjZZeexFkiU
         G9hjOFosh6Mo4Xj62Vn3m3eV4D+4BhDbuKyUhNFs5wQDnruXZedpaN5qrZ341LTYHnSd
         0ZA03+HxgMV6PrMdPHDINtzGp6XwRSPXauYB68UkmVo1gujBJmdZ8wyutdsWUxDRLUoN
         Tz4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="fh37CZa/";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gZiqFql7auXuQrl05b80AclrNoyYJY++oH4JDDLUnGI=;
        b=VTYUp7HEznttHHOlgiGYSx7tHGSxQKM15TDjZEowKHeWeMaVsiRm4mrlRU5N0sHoh/
         J4Egj0v5ALIVDGADc19XmOMvytht/GOrpcss8WPvgNmSbrFsGI9Ta0KK3E8kJzy5hO0F
         fS9eBhDRqCBkrmhXXvqKgebQtDDSf0P/E+gjiB4PQA6NJOYfwL7pF5UyEW3pCLPN28ID
         jjj98PDM+n1+FbsTwm/6WrDTx8FYxdO5+FjmV55SQJu0T+O7NAzH5by8GnvEQlfxPsZy
         ucpNgZQrd9/tW0XokBEAsFySh4m6KBJBe33nFTbevzThrZbEwZPd7ClYjdFCVE+4HbIK
         ahLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gZiqFql7auXuQrl05b80AclrNoyYJY++oH4JDDLUnGI=;
        b=T4n0AwMc/d7IYixXtXO8tfnzttVHJA1QdBgq3jV2tGKSg7J1VrlR/SbOOWBCudmLH9
         3AxNpuRUb8kdJfBYXTclGKXYnjsUyhY1seZCIgOXEGOOim6nNA2kU3LXzwvc3YhEQOIg
         Vg7oAl8LDTYMrP4u3q0fORBVC+UzjzXs6PVwA4QyhuNxewrg2Ak9QtT9ASZJ74nLQJct
         eQkjMuTPmjwqrnu0ALgB/U7RIg6WLdtHdj/aaYhDy5Sa2RNlFcemmqWarKWm+9NukL9U
         U7QhQ4/mBV2P1effz8La2+Aw3LGMjxKN69aJ7NJd9ZagI2Pu3KlT31kZyTLA6WrG4TIs
         tKHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304D2fNegQRr8zm5goaS2BkKELZ9UCBoOk1mT2/r00pBz3ADHgH
	f6uJi0sApZmsocxkrBhnR2Q=
X-Google-Smtp-Source: ABdhPJwkuM9gOp+cC4kg9Q3I2eTiVBBXJ6MIrHaeiAnKQo2LI1KN+MG2UnRTu1IoJHVnsTNlFArArw==
X-Received: by 2002:a17:90a:4287:: with SMTP id p7mr3408731pjg.226.1614260296908;
        Thu, 25 Feb 2021 05:38:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:da46:: with SMTP id l6ls2220653pgj.5.gmail; Thu, 25 Feb
 2021 05:38:16 -0800 (PST)
X-Received: by 2002:a05:6a00:2296:b029:1b6:6972:2f2a with SMTP id f22-20020a056a002296b02901b669722f2amr3270031pfe.69.1614260296375;
        Thu, 25 Feb 2021 05:38:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614260296; cv=none;
        d=google.com; s=arc-20160816;
        b=vM/V9spRvz7UjqZeeIndXjR9wVVdU4Dsf2rh0AL88sOXLhKe6cc6NSSgr1IbwguM+X
         t6V8Pra1KTUJ+PbRCICTj/M62HFEDHNnduZn6pX18TS0LEcp6fqeE0/kgaMi7fkZ22cY
         4YpZEPxd/yT4l/HopNlauvhWGgWl5PNWVNb9V4ZaXU6+jmAjlELk2A5lb79h/CWDdIGp
         +3Ritjo4hmA8hYctOW1Wy2JEm61EYC1QbznzupEzj0DD6SnVfr31EaHH20WGc/5I490J
         M4cRo2ytWD9i4A4Q4udcwe6hM1NvhUU+fEsVFFWoj7sTa3VyJvkC4J1kPXoAnrqt1QIB
         m7JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=qrDvXOyTJ8mNQUiqugHomiRNAGpJuCcZ6jAbszdh0FQ=;
        b=dcO7//72f1AMZ/jacFotn1Qb2plHWQaCeWCG3g8Bdhj81ooQ0SkOwpijIGTj3KhHbM
         Gn8TeTPRuRNVuk7RcbWetAIe7RxdYZI+yClBtJuhBQW8do0q/yAk0z7KlHzbDhlDGmSG
         tJwo3u0P85tK935BPTN4U8d+yReMnxKooM6LaEyqDpzUJkSMU7zITBFbyFrxxF+Hj1he
         Wx7LqtGPO9K/7l6/UwuVgGTe0WoG6jfZAtJOt5lIdpumk4iKrSswOGZen3CM+SaHyi/2
         xsm02YUajKrxp+2GeflMfosb+3ThwQbFt5yj0g0HJlHefVKjng8o57jupGL7EXN5dFnd
         RYPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="fh37CZa/";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i23si245786pjl.3.2021.02.25.05.38.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 05:38:16 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5C71264EFA;
	Thu, 25 Feb 2021 13:38:12 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Mike Rapoport <rppt@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Faiyaz Mohammed <faiyazm@codeaurora.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Baoquan He <bhe@redhat.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	David Hildenbrand <david@redhat.com>,
	Aslan Bakirov <aslan@fb.com>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] memblock: fix section mismatch warning
Date: Thu, 25 Feb 2021 14:38:00 +0100
Message-Id: <20210225133808.2188581-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="fh37CZa/";       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

The inlining logic in clang-13 is rewritten to often not inline
some functions that were inlined by all earlier compilers.

In case of the memblock interfaces, this exposed a harmless bug
of a missing __init annotation:

WARNING: modpost: vmlinux.o(.text+0x507c0a): Section mismatch in reference from the function memblock_bottom_up() to the variable .meminit.data:memblock
The function memblock_bottom_up() references
the variable __meminitdata memblock.
This is often because memblock_bottom_up lacks a __meminitdata
annotation or the annotation of memblock is wrong.

Interestingly, these annotations were present originally, but got removed
with the explanation that the __init annotation prevents the function
from getting inlined. I checked this again and found that while this
is the case with clang, gcc (version 7 through 10, did not test others)
does inline the functions regardless.

As the previous change was apparently intended to help the clang
builds, reverting it to help the newer clang versions seems appropriate
as well. gcc builds don't seem to care either way.

Fixes: 5bdba520c1b3 ("mm: memblock: drop __init from memblock functions to make it inline")
Reference: 2cfb3665e864 ("include/linux/memblock.h: add __init to memblock_set_bottom_up()")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 include/linux/memblock.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/memblock.h b/include/linux/memblock.h
index c88bc24e31aa..d13e3cd938b4 100644
--- a/include/linux/memblock.h
+++ b/include/linux/memblock.h
@@ -460,7 +460,7 @@ static inline void memblock_free_late(phys_addr_t base, phys_addr_t size)
 /*
  * Set the allocation direction to bottom-up or top-down.
  */
-static inline void memblock_set_bottom_up(bool enable)
+static inline __init void memblock_set_bottom_up(bool enable)
 {
 	memblock.bottom_up = enable;
 }
@@ -470,7 +470,7 @@ static inline void memblock_set_bottom_up(bool enable)
  * if this is true, that said, memblock will allocate memory
  * in bottom-up direction.
  */
-static inline bool memblock_bottom_up(void)
+static inline __init bool memblock_bottom_up(void)
 {
 	return memblock.bottom_up;
 }
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225133808.2188581-1-arnd%40kernel.org.
