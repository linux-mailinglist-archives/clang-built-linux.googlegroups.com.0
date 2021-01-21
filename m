Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBW7NU6AAMGQE2SWNZKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 850AF2FF796
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:49:16 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id z51sf1357471otb.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:49:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611265755; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nb0KRXdQModk8xcUb5kAI40d9lfsgEvNjQSMcFLQ70z9d4fz/zXMuG4PgNc2fpoSw/
         YCmfMYzokBDDRHBK+Db9D38wMXF0x2wd17vzjo4Q417dOr91lOVgjdASK/dKREuAsfqC
         D4J0fwXbr/NHFCg38atfBjuU1Sd02UTCZNuh7O2+6yutXEFqbCWHh+j1DjK8V1WI+4z/
         19jQhXS/2KW9NIiq32xHrHAXFs+Pyf7atuMwrFhCYPwAkOgUry/JQUB6lm1ueVwS7KX6
         PaF1LiNN8pEkfWiPSG6Wb7lsCSBFCVbWd4aHDRvjZF0u/mDyGzmRFUD14EkTnUr/4V53
         IAJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=k4VjM6ntRyLCe1kKsxmg2Li1KtdhEguqJxBp6kdjXxU=;
        b=kL6750iBrlTrgxIEtQSdHdCBLvYAJvqHogkPeVPSzdvk/FtyNCT1R/7tBhYJ7VTy5w
         6S61D6fuNSdtRMKAa7c5kcn+wc31ExWKu5PE5j1TOaOXrLCSBmv1+LCSCfzcf6UE203l
         XRJAHgmaY5iMXkTGJVi5I0YZYg7OW0HCklF8MdB2gQ+QJNXrozh5RJIUFODuiz3VS293
         NGKNEvhYKE4MJ/YPTbgZ5IZgjOsybvfDGBzQRNdpbM9jTF27qcVcWtCxyEr0jfHP0i50
         9IYdwAmKlUq1U4okjzdrXn0W1XNfQx2FeQNOvhU44ptbtQpGWOdd64CxuLvxJQnFl07B
         lfSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DlXyrvOF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f29 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k4VjM6ntRyLCe1kKsxmg2Li1KtdhEguqJxBp6kdjXxU=;
        b=XMhRYvHKFmJTMhR9/SEukFE9d2tP3t4x7tMknPb+4PCUF+BPA+e5rR5FtiwodPvy2X
         wMS3desI79RW16GWIAea3qrn40vwJFyHer+G0qUiEdU/6ApLDuyoHFQaPRK2p2mv5Aax
         y5gpJsfXTw9GiOdjjfH+iUgqPNr8E6RfJi4SxfNbzAyy81jKEReaURJGXZE1SPcDM1zt
         yIzpIxh1Id28uZlk+zTxW2x51eFeNQl+s6qS0S5F7Nw9o/hldfjv1wH3XnR0wq8ywJTr
         l1rCcudaC1JWeAThLzbbRyWf06x+c3X+4fUZYWSm1hzAYkrachNlKHcspaxoaZoPQxzV
         NZKA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=k4VjM6ntRyLCe1kKsxmg2Li1KtdhEguqJxBp6kdjXxU=;
        b=UNsm8bn5Dxz/nVBD8YE/BRmTWFCALNaU2GP7Rytw5DZEj/gfMivDSDnSg8V6AunX/W
         FZp6KX9Gb4fVdP0UJTCOBnRTl0PcuyJtP/DQINk+ir6tfDpM8tRJLbua5G/qA82LdjOD
         cVtZv6Rs8xUNDq0esw9yoZhJVNzCVwz7Vz+84uWl+daN6u3evZz3oFWhsGwjEmXp7lp3
         ZMDkTJN6xAgZ8VThntZWinAefDx6ANt+Lx2u7VjgNM+fRO6ClaMCgDbiDhf8UII4osQQ
         38NKlwI2ysK5tjiHOO+uSWaPTbcJ/lCvcoxvXbvywOSX/bk7q1B3WVrUpfQ5e0dezqJz
         Cj5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=k4VjM6ntRyLCe1kKsxmg2Li1KtdhEguqJxBp6kdjXxU=;
        b=m+NR0zmquWOiq0ZLYSgERidQb33emsbvpOhIfPEThrJmPn6ALWFOHplsKnFfSt3FuP
         UWTJAqD837zvGyaueHE09ALQQfDFf/Y/6C06QPxknMlmb2IedcADdJJsRPyJacXGcEPW
         ysVjHu4oKOy/qLyDmnDhwUO4HXgkyJmCz1vabAcwXDlzamUWE/FlfFtNRlXbUXUBcmtB
         fWPq2mkBtoXj63z7EDS1Hz/PmRvSSULUuBJQ1BE16zBF7BJBVRZg7ChO+1A9L8soEKEr
         c6dtMMPdLm2xstKqaIP9RCSK3sXtrP4ZA45QXsyizz5owc2en+wQHupntkRG/6Wc/nRy
         IJcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hwTr1V2t7aVFjH2b0LB2dPZ0WyvD9FHtYQrv3M4VfHZwG/tl5
	7VsY2DrVCmS3zYdke4hzXNQ=
X-Google-Smtp-Source: ABdhPJyZXeQkkrVuKpGgWYX6oZP43bzFI1D2oPSBg0u/rkXw3MzqyTyhxU0XFW8vVK7bjah4LklsKQ==
X-Received: by 2002:a9d:4e89:: with SMTP id v9mr908391otk.171.1611265755550;
        Thu, 21 Jan 2021 13:49:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:3c3:: with SMTP id o3ls447779oie.1.gmail; Thu, 21
 Jan 2021 13:49:15 -0800 (PST)
X-Received: by 2002:aca:4ad8:: with SMTP id x207mr1141230oia.155.1611265755190;
        Thu, 21 Jan 2021 13:49:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611265755; cv=none;
        d=google.com; s=arc-20160816;
        b=vRJel4sg5HVM4PHBx9YlUL3MRfyGVIqx3qTDtxnR3Llv6KmVsDrBys+V8ja+M9TRn/
         XZyT5f5Yzg4hIvAtKfwo4obbGMMKyb0/GhJbs63TFpQ+vOLs2NpBqR9ri+UnvN2Jw0l7
         qZbFuTodw5b+SFTDQhG8JAlAIjniyM/Kl1ICPnsAmUQZ+gDV2wRA1W2Gn4CdvfJIEWti
         lv69FjCv6a4KuX2kxPhP9A0LtjwQvPmhqRp7zf5wF3ETBypsKd2G892DaToXTEQv/6Q7
         09J5dyWBZEDzMogrp9OsFyIBI8h2tIAAjb4Yrh+r5O7u+YaqHXcemGP7tN6sienH2r3t
         iPvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=EMFjqjTXoNJLUscEpZ/FobMrZilvYZKYbWkmE88q0Nk=;
        b=axa32FkBnOqx8sgads2LaU8FTifLRJ8Db3692u1hvF6C33+H4Su0EBHG06+8F61Acc
         7xMNUzbT9HLYKlZNJzQmghDjrSRz8DxIqY+uqUdKzM+mCUwCOfOvT/S2wFNi57FzjXqm
         JrLslkziUvGE26PztB7YuZyVxi1BpTe8j545xy+cJoiZK0x7oihn0teYfTmyuGyvKiY3
         13NrUHo8VneP1qzhMs0z9kBjmD/TuX/z4uCOiDMFSY6Cd6C9RU+2UIOkOD1+20sE1mWq
         XxrK0w76v90LJIJGTa/WQWV/MncIOvIxyov9ZFHaHPvY09EMtUkpgSoCoIDy77G7HreU
         n85Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DlXyrvOF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f29 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com. [2607:f8b0:4864:20::f29])
        by gmr-mx.google.com with ESMTPS id r27si530437oth.2.2021.01.21.13.49.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:49:15 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f29 as permitted sender) client-ip=2607:f8b0:4864:20::f29;
Received: by mail-qv1-xf29.google.com with SMTP id bd6so1702573qvb.9
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 13:49:15 -0800 (PST)
X-Received: by 2002:ad4:434e:: with SMTP id q14mr1751382qvs.15.1611265754645;
        Thu, 21 Jan 2021 13:49:14 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id q73sm4672937qke.16.2021.01.21.13.49.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jan 2021 13:49:14 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Seth Jennings <sjenning@redhat.com>,
	Dan Streetman <ddstreet@ieee.org>,
	Vitaly Wool <vitaly.wool@konsulko.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tian Tao <tiantao6@hisilicon.com>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	"kernelci . org bot" <bot@kernelci.org>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] mm/zswap: Add return value in zswap_frontswap_load
Date: Thu, 21 Jan 2021 14:48:05 -0700
Message-Id: <20210121214804.926843-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DlXyrvOF;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f29 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang warns:

mm/zswap.c:1271:6: warning: variable 'ret' is used uninitialized
whenever 'if' condition is true [-Wsometimes-uninitialized]
        if (!entry->length) {
            ^~~~~~~~~~~~~~
mm/zswap.c:1322:9: note: uninitialized use occurs here
        return ret;
               ^~~
mm/zswap.c:1271:2: note: remove the 'if' if its condition is always
false
        if (!entry->length) {
        ^~~~~~~~~~~~~~~~~~~~~
mm/zswap.c:1259:9: note: initialize the variable 'ret' to silence this
warning
        int ret;
               ^
                = 0
1 warning generated.

Prior to "mm/zswap: add the flag can_sleep_mapped", this path always
returned 0. Restore that so we are not returning uninitialized memory.

Link: https://github.com/ClangBuiltLinux/linux/issues/1263
Reported-by: kernelci.org bot <bot@kernelci.org>
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

Andrew, please fold this into

mm-zswap-add-the-flag-can_sleep_mapped.patch

 mm/zswap.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/mm/zswap.c b/mm/zswap.c
index 6e0bb61d2a2c..a85334b719b9 100644
--- a/mm/zswap.c
+++ b/mm/zswap.c
@@ -1272,6 +1272,7 @@ static int zswap_frontswap_load(unsigned type, pgoff_t offset,
 		dst = kmap_atomic(page);
 		zswap_fill_page(dst, entry->value);
 		kunmap_atomic(dst);
+		ret = 0;
 		goto freeentry;
 	}
 

base-commit: bc085f8fc88fc16796c9f2364e2bfb3fef305cad
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210121214804.926843-1-natechancellor%40gmail.com.
