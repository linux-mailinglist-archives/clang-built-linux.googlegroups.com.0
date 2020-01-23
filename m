Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBB4UU7YQKGQEGQVEW6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 047EE146E7B
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 17:30:01 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id f25sf1775564otq.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 08:30:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579797000; cv=pass;
        d=google.com; s=arc-20160816;
        b=mEu1tKsMxNUb50zwpcuyOhD3x09sJKG5VGdhR05EFp9TSA/flTZWM+CF6Pc69g7nYy
         2Yx2q2OIqMAmqmUK1+yTu8/5UHMJYQ3cfveno3OPzzGDH8OQjCXAvM/EuckJqSU5/a53
         EDeTAsA5Io33j6e2SkQtlesv55HXNB0H9h9QFCvEGL3z/nqZSSlsrA/AxM9sZ3ZzLX/a
         SioO6va/mDlSceqbFddKgYuMlKw9kPst9di3BPfVU/pmoA52WKImRq1MCrF9qvdbE8TJ
         6NBasx2QxZGp0kTMMyPCLRi5oSdkHSfn3SadfA1TQPzoBGSLDaICugIlDpgoVEx37hVP
         1KOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=nsYnrgHtdJpycyD0ucKsSB1gdrQqFUbxhbg+2eLTOk8=;
        b=cZ0VgnCNR6IS/VZ3QQJk3+sQgld+9h3bi3zhTGTtrZSboxjOjoRfEA781MD5NkIdcW
         WH4P0QRAZF4iPb//1f/OwY0HJs/JKOHANAiMPNUREWyDFToS4yxUZgQbB22vI1bHDYfF
         OKxpmB2V2Y7bmsBEqmu1B0BkEe0093iDP7QTLMZ8/BpJqpFi++5wAvyL9Ihem2pnB7fg
         oEbDnsC+QKMFhwzlg8/4wQ2emzixQLlcpmzpXWSh6lv1KDWwJa6yzpoKJOT+6y9/DJNO
         NJGfk0DitCL+9DbSNf1MYqmDeZH7yRJcvCetZRHbgJ5sGn27ufZHlnA15u8Y4Mqtz4Uk
         Wy1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=ITGRhoN8;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nsYnrgHtdJpycyD0ucKsSB1gdrQqFUbxhbg+2eLTOk8=;
        b=CZ169q6mwbUyKW6L/aLPQsRGlsIZed1D3dNfcBoR1n2JOK/7gprteeOszYI/9j3sTC
         msww2oc+2eH/FOXsu+JOIOre4YdRQCFbUUfO/VRY1jFUUAwzPkRDddIPT4+V3TpPIfGk
         fO2kXmQ1VYB+EwpaBDx9osyy+CkYTTTBfNicHqd6BnBl5X0p2xiZe85cFO0PeED6BJiO
         Knxg/7yOsEIUuplpH3VTCgy4RVuDWX2m1iFLTkE6Usd6l0iT73XObanrnDZRLp0S1k1B
         okRVfZPT/jLqfZ0lt68VN0hIHW4x/u36pgdNdaeT+P1Phb96fMYzHAtjAxBNvTLYpjBT
         FBaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nsYnrgHtdJpycyD0ucKsSB1gdrQqFUbxhbg+2eLTOk8=;
        b=GonJEAthPbtsk8HjEuweIDnTRJZKLZROn4NcKQCCZoXoeflo4Mz4NJuAmkPlqzj8tF
         rdgUeT7fOvc5eBVTuw8svEGYUH2yW5BWanEmb7G+xBdUG6OlOZLYon9JTU0SjfSdlTe5
         8O5hZ7e4A8EbUFgJ+ZoVpYGOVTzVq4HOoAnCyYDlKfBhRItnch+F4KiYwTd0Vx3CTuoL
         LpbDhKCnQ7J0vR/Ot/WJd5dl98KyAHpU+sOEagsdQ8DJd2ikbew0AmVlDFNesIIxDbv4
         7w9xzuxS5wNE4Y6FVuR+SZ+C2DtHXbZ6+yHvrAxUQdObLrjb4PbaSUHUiBWmnritS9uB
         ks3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVBrw1eRXiJCAEy2NheO4jq1Wv5xVUWyxUc/v9vMo07fjtRoDqP
	dHpZxRQg+CarrQRtu+sBLfg=
X-Google-Smtp-Source: APXvYqwZsXbprfz7QsYoIggCfeXiaKY1Wi04YtuDEzsfuvcdsFphU/X8cKwbaZzKJuz8iP8dj28zTg==
X-Received: by 2002:a9d:de9:: with SMTP id 96mr12177594ots.222.1579796999957;
        Thu, 23 Jan 2020 08:29:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7dd6:: with SMTP id k22ls8029045otn.5.gmail; Thu, 23 Jan
 2020 08:29:59 -0800 (PST)
X-Received: by 2002:a05:6830:2057:: with SMTP id f23mr10148878otp.110.1579796999284;
        Thu, 23 Jan 2020 08:29:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579796999; cv=none;
        d=google.com; s=arc-20160816;
        b=Dj/tON799jc+9Mpkr5XRE+MIrxNrlaBVT3fCx/d+YLAnv6pqfQSj7s2HxhYFMGGsZY
         vLIVcrK3fizc4WQI9GvKpWbruNKfaIkESOabjHvkCzFFi4QqoAbQx0bcrYNnCzsCHRXG
         PHln11qfJ4kRG0LzVIl6+zb9qfOEtEIcZFkptt4J9IVyLNu5/57BBBUjcVdJoXdVamZ6
         iht+9/DruW2NZGXXkSzpeYKQUCgti1piQzLtIHOv2SFwy8FWpu2FhQ3yJVJnCIesGclF
         1BJ7Qayv8hdR86basB+MSj5Cv2dKdIuAx8yOAy0lad18iPr0CpOdcrR1E3CXIX6HUkdZ
         M9Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=vnD7CtKsIUMQZngJBgz/z3z7LZDuTlk1mfUMotJq4ls=;
        b=CzX+jFRFihg8QnXCTa+zTVP7g8ty5hxsqqdWIDZeElBoKuUWcqEEM9doQ8llLXCTNy
         KyndEKMHxA0ojNmEKdknsFYyLlhqtA4KZ4JaRVE7OF/Ncd4eZOYkqqPYteCqNUJqJpse
         gehJfNCfuNGhLGMDRTBhZhfWkXl3kC427hB6okWK6bVEoeMl3n/wRK1hClDr6U94+sfm
         yyLQjvVNjI/EtIFxzZw0GFIJo9udmIG8g7b1P5+C0N0+mGBB7hPixaJoaNeA98l1nwDQ
         f8m6pHawLYmuwE37N+fHB1aOBEZRSNx5YrPmiMKi2sJ38iQFO0ea3w6CsUPQpf+FCKcI
         m6bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=ITGRhoN8;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id d16si132162oij.1.2020.01.23.08.29.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2020 08:29:59 -0800 (PST)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id j20so3966386qka.10
        for <clang-built-linux@googlegroups.com>; Thu, 23 Jan 2020 08:29:59 -0800 (PST)
X-Received: by 2002:a05:620a:134f:: with SMTP id c15mr16463418qkl.115.1579796998789;
        Thu, 23 Jan 2020 08:29:58 -0800 (PST)
Received: from ovpn-123-97.rdu2.redhat.com (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
        by smtp.gmail.com with ESMTPSA id k135sm1121731qke.6.2020.01.23.08.29.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Jan 2020 08:29:57 -0800 (PST)
From: Qian Cai <cai@lca.pw>
To: peterz@infradead.org
Cc: will@kernel.org,
	longman@redhat.com,
	mingo@redhat.com,
	catalin.marinas@arm.com,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Qian Cai <cai@lca.pw>
Subject: [PATCH -next] arm64/spinlock: fix a -Wunused-function warning
Date: Thu, 23 Jan 2020 11:29:45 -0500
Message-Id: <20200123162945.7705-1-cai@lca.pw>
X-Mailer: git-send-email 2.21.0 (Apple Git-122.2)
MIME-Version: 1.0
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=ITGRhoN8;       spf=pass
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

The commit f5bfdc8e3947 ("locking/osq: Use optimized spinning loop for
arm64") introduced a warning from Clang because vcpu_is_preempted() is
compiled away,

kernel/locking/osq_lock.c:25:19: warning: unused function 'node_cpu'
[-Wunused-function]
static inline int node_cpu(struct optimistic_spin_node *node)
                  ^
1 warning generated.

Since vcpu_is_preempted() had already been defined in
include/linux/sched.h as false, just comment out the redundant macro, so
it can still be served for the documentation purpose.

Fixes: f5bfdc8e3947 ("locking/osq: Use optimized spinning loop for arm64")
Signed-off-by: Qian Cai <cai@lca.pw>
---
 arch/arm64/include/asm/spinlock.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/spinlock.h b/arch/arm64/include/asm/spinlock.h
index 102404dc1e13..b05f82e8ba19 100644
--- a/arch/arm64/include/asm/spinlock.h
+++ b/arch/arm64/include/asm/spinlock.h
@@ -17,7 +17,8 @@
  *
  * See:
  * https://lore.kernel.org/lkml/20200110100612.GC2827@hirez.programming.kicks-ass.net
+ *
+ * #define vcpu_is_preempted(cpu)	false
  */
-#define vcpu_is_preempted(cpu)	false
 
 #endif /* __ASM_SPINLOCK_H */
-- 
2.21.0 (Apple Git-122.2)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200123162945.7705-1-cai%40lca.pw.
