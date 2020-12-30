Return-Path: <clang-built-linux+bncBAABBFV7WL7QKGQE5XLIGWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 825F82E7A77
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 16:41:11 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id c72sf15607045ila.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 07:41:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609342870; cv=pass;
        d=google.com; s=arc-20160816;
        b=zfG4t/EULXqykB1a4yjBP/7oCx49TQDoe74WM2eHb3+9IvgbIqybtjnbDDZbUp7x2K
         HvQRg8TsXawMaCfqekBP0lJneSE77yeWUKXReQ0FtcvbmB1yXpySD+2U81eG6rxg0VxS
         lW4YahFbcvqeU4/fNy/x/oG5zDmBC/oqeUsbMD9dNfQYWqb1Nt1NLvVi4Ef5lkhOqzPo
         i1pkCc7LnRZ+mF1lmcqIxGUpch47aWff6OPgbRmpU3hEbxXY2geOVKmvqg0H1llCgG+S
         7wygqnnfD26/Q+mPT0qbJtoev+c8jEtUoJmqGVvy7IZPVfkeJJqyGYs2C3p5zFTUvofw
         X4Tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=GHmS4K2UAAoTxgHuLKBkGRt8i2hDkgAEr4CYqp37pSI=;
        b=xlg2iGvhgvsmR5hxK9AekO8slcMf+JwOI+XsQo90bAs7phH9wcZFRsyY82si8bChgf
         fojfhBq2lGUBSwyc8YAundQ2l8i2xdjLmGcQsi5qeVucya/xp25k3C5UqpZ7o3peGcf9
         Z/YLJr/P1l5BO7Fd6sK8g7KULoszJ3V/DTWeFmNBuablKmA3P+EvMKoi3seyduwlDYj4
         q33DJxu8VeRz0B5oh5wFKEPcqcY1wIdRlyOjUUQAVD1kS5LMB+gVvL3wMgVHeWj4raQu
         asEWcf4duJ8wlO157PC5ZotedNC9QX3r8eL+BGUrqL1dpxjsyFnGkHhC/1LWd4/0IBSw
         2ncw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DAO3IEqE;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GHmS4K2UAAoTxgHuLKBkGRt8i2hDkgAEr4CYqp37pSI=;
        b=sHOQItyYqV4bTLiau8NrP0jrSf0oKOOSQndF/AT/Rp4udDgODOimlpoAboycmqjI0t
         xolTRSckEuCHSFSEeXVa6P9gjtiGNQoV5lad9seqtJWStc8SI7D3qg7wXwR0KhXRXr2L
         k6ng0qTfLpn54hLCNa+0pu0otgsHCUScQXfAQXNtFapnftkv+CXAWgi9mKNLG8uQHkg7
         L7kvSOhJsKsZ3R209nhqAJUuMfSDgUE0aEhCWgxXUm6CZkI+6cvVdSdfyFcBguNjGH1X
         LQqLgdpAkpVoYifN9bFVqxF7/SnRymTIEri67nN5XJvZofLcI9lLqDLR+aQ8r83d8BVp
         G3uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GHmS4K2UAAoTxgHuLKBkGRt8i2hDkgAEr4CYqp37pSI=;
        b=hnhNTFVFlpXXyPmBoRd8BzvhdIuT12M15ZYpRvnVOSZrCL6pwP3m+BbiZR7OhYbTQz
         i7rVCyvUoPLzoC9D3aDNw8FiYN3FJ1KrY6gsE54HK/VG+/Nsy1el2vSfqTGEuuM7uCYM
         Oz14h4w0txrkt4Oi9ToZDGJhF2NX4tLQxc+vvoqyHy776mUXaNh+9toqBdIRjwLMCA/E
         y7oLqKvgKZRujWjG7WDSn+k6ziZ6HZs2xvhRsY5H2tMqLjg312ZxoyEchoz0NaETnyud
         mdV6pP9B3U/bQFerix8zswIRYMv1Wcm51eqOy5eVv6TNlRYWMQFOqLuB7fQwJE+5OU0B
         5M9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533vWsyIEmLTqab18PyhnpctdT8sffOifbUS8Dqk3UPOirPfhgo/
	V4YxaKIwE89NW8Z/XPgUPmo=
X-Google-Smtp-Source: ABdhPJxLqPta+5ONqtXeO5wweGx4pIvDS2ZCyv3XxYuO53KyzgeL8bYsyWXvqWFjdZzjZKm2Uh4LRw==
X-Received: by 2002:a92:96c3:: with SMTP id g186mr52808030ilh.180.1609342870295;
        Wed, 30 Dec 2020 07:41:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9844:: with SMTP id l65ls16586364ili.3.gmail; Wed, 30
 Dec 2020 07:41:10 -0800 (PST)
X-Received: by 2002:a92:dcc4:: with SMTP id b4mr51931858ilr.164.1609342869977;
        Wed, 30 Dec 2020 07:41:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609342869; cv=none;
        d=google.com; s=arc-20160816;
        b=C3UIfwFfL4gb8LJ9z2OUaIfoBaV+uWXVo28D8fqm8m6pJoB5mdnda7sbvXOXoF2b64
         AZWTE6bX5BTCkE+LEbZjVYLD5Nu4X/1z2j9l0aEeXx0Snsv+887yqnmvyLHEy8d8kibX
         pzUQ0nj/wFAIMYNbWrl358H/sZskqRDckHG4j+hzHzrxb7r5wfVH3VdXmu6/FREA6zPY
         mSQkaWViJiXOfS0lUEmGwqd8LvKhDzkVhTs0i1lYlCPfyIMGk8k5m4vyEAir/3T6sz0r
         8UJ4RdmkacxUUdNvOOiubGCE5C5eAup1H+g1cqk5nYyGCnw+dhkiMjH3TMVl+woEigI8
         piWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=JpcVL0fpCE4khFe6mpX/i1uWgrNIXny9ClcdM+IeMzM=;
        b=XHVIxFALJc1oSlF6/DxyTgOHnOcRD/MDse7FfBSo/eq40vu3RnuBh8PuVL0C3mYORM
         /uVxGQMkOzfVTj+3lOPBc5of9uzUHX6xAHaZQnIu8xFvQNcSK1kGGD0TLwJTlKF5WsdN
         LmTfdMUNsMCP1TfVomuAahxwZX/nEtjPtKdszN62K1xxPtmoCNWaQuBZ75uaQJ/IcAj4
         CDVJMbP/fF0OA7kSFxBnjBXCtK153cLUEtxkQPp9dzF/GGrEvdepmASNg/BnkOh5nYp4
         hNVRgOAP8ZQ1tj7txSMuCnnbLyJiViPaaRV5Hka1FVGXy/J2aWJjFY5BbBS2zjgQbWbN
         78pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DAO3IEqE;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i5si2911507ilu.5.2020.12.30.07.41.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Dec 2020 07:41:09 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E702F22227;
	Wed, 30 Dec 2020 15:41:06 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Wei Yang <richard.weiyang@linux.alibaba.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Vlastimil Babka <vbabka@suse.cz>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Brian Geffon <bgeffon@google.com>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] mm/mremap: fix BUILD_BUG_ON() error in get_extent
Date: Wed, 30 Dec 2020 16:40:40 +0100
Message-Id: <20201230154104.522605-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DAO3IEqE;       spf=pass
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

clang cannt evaluate this function argument at compile time
when the function is not inlined, which leads to a link
time failure:

ld.lld: error: undefined symbol: __compiletime_assert_414
>>> referenced by mremap.c
>>>               mremap.o:(get_extent) in archive mm/built-in.a

Mark the function as __always_inline to avoid it.

Fixes: 9ad9718bfa41 ("mm/mremap: calculate extent in one place")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 mm/mremap.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/mm/mremap.c b/mm/mremap.c
index c5590afe7165..1cb464a07184 100644
--- a/mm/mremap.c
+++ b/mm/mremap.c
@@ -336,8 +336,9 @@ enum pgt_entry {
  * valid. Else returns a smaller extent bounded by the end of the source and
  * destination pgt_entry.
  */
-static unsigned long get_extent(enum pgt_entry entry, unsigned long old_addr,
-			unsigned long old_end, unsigned long new_addr)
+static __always_inline unsigned long get_extent(enum pgt_entry entry,
+			unsigned long old_addr, unsigned long old_end,
+			unsigned long new_addr)
 {
 	unsigned long next, extent, mask, size;
 
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201230154104.522605-1-arnd%40kernel.org.
