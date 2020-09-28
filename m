Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBLXIY35QKGQEPTH4III@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C1B27AB6B
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 12:00:15 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id r21sf275782eda.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 03:00:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601287215; cv=pass;
        d=google.com; s=arc-20160816;
        b=BvskHpTrRM7X8OSJWREoJevI+Rfkc+mtDyQnHliPV8iW7BHS3PdsE4bXOSgi8cA7wf
         QFQZ4CJwNS+n0+t5+rMEyKzCaJG+ACMjDyfYx4gt1ci2twb2GzPRLxJMlTS5x6jKBqMX
         ldCACkMqiku/EUaX7eQDVrOesL0aDSW19+zLIHVKQweM+b9oESfkhr/XpyC3LJBhb62/
         utU+lUmeQJ48Nu4AVkDiGCe0V+9Mlw4Ftdxw+diE+yL4HHhCX1/EILQOU+Sfs6GK6YMk
         dvGrzxRv/+HfEr1Y3t0l8ROv0XJSuaBIBKVXstfCrk+HrJxvWqeFRW+31zJ+AW6jxAzW
         TVuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=eAJi3wyF9BGERGF40KiRv8oZAXStXMxeIRoi13bOXtw=;
        b=FxnQGGX2N1MgcNkQcaz+GnPPbS4sIqjonA3f4UIQHfcqL5DvV4/+IMiGRMdwWJXXJ5
         7aKZ0ydPXpLcuJgblDqjxZBi7cAM2E3F/al/QDxuKVsZh0+XVDN6VoYn/TYpTDDVe3cu
         /m/hxoFPqPYJ397K4iaBKgKojoIxX+WmBwJYexlyG3y/fRfveMrRaTNl30TWivZoUWte
         VZb/6qzG4qf2l+DhIWPatzeazdtJNjGZ81niafU/kpLR3CtckxJsI3IAyBptkeNj1NZ1
         svYZKVTrd5YuX/s3X2i1r9bJG0xdIRSbcoaI+k0OmCkZnerntQnbmGJgOs/hog7gwwdX
         X+Aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R+pfU0To;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eAJi3wyF9BGERGF40KiRv8oZAXStXMxeIRoi13bOXtw=;
        b=gOhiQ8UyQezLSLa8CRLHi6uNCE4l0VJvklkIcp7EbBKn7AA0b7GYfKfD89dG13VaJ/
         Qyv2RvtGsbO6C97YOmXLJV3N6rqJopeeTRKvY4KjGRDFb3cwlHiN7v/UpRID5uRRHrsC
         wpnlsKwZAm0i7Pc7L8khsvBZLtxhWw/yRxzySG8TkL7h1TXszverIQpeqVIsiwNDHoue
         mTYfkmAnw78MBwWYmuoDPuUEE0s1JbrP5YpqR9Mrsd2WA7IJgB4qojDRmYZMxdUn0Bcl
         9M/RJ5dzHisN3bGWB6SeJ4+two+S9mhUwa6n52CSlrTNyFSViJ5XgUwG4JGJsr6UR/43
         BYYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eAJi3wyF9BGERGF40KiRv8oZAXStXMxeIRoi13bOXtw=;
        b=Gjkn3DWHqF2rdJyJ2mixO/GsOlxiZkUwh305QeRzD1FoEwZfjepCT1ELCY0VysBwYJ
         kWKEfek9kYlOfu6bl0FSNcWrAAT/y+7eIZX0ofb/fEaO73O7dnJTx/uSk5AR6Dzc+sRd
         h3GPmbBsTokeathWf0mQebabcnKjeaJMdddfsCCqfAvTNAX9V/DCMzOq33EUMgkPXsau
         PDJCeY1xe4ipEiD732iqrDhoGm59mTxTtgOFN18whBnJPI+t4aZmDQrD2XS74xg9isnU
         CxRKPrh37bjLAXDxK7YAe1O96/6PozAA68GklpGuiAk0J9PEWIW9j3aNUM2iXuwGIh1x
         5vwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eAJi3wyF9BGERGF40KiRv8oZAXStXMxeIRoi13bOXtw=;
        b=ud07X+sR3TzxhPy29/JXZSGW8vqQutDVeb77JB1hnQ7xZVdvQAHb4zuFW0VkewP24e
         XE5DXaisEC55psW/LsheLzkEqAK27qt5FqW3uDNCn26r934Hwz+iRaj28y7tCofAK+Zk
         TWe9dLG8NZIxJOWiJmcGgkeBxj0xPBTdHydM2/vd2+Q+TLHu4WWLjVmRVHBOlrhJO7Zl
         OMikII33VQSVTytVrj7GxDP60CCMh03KmFLyH4agQ0LMqHzqLYLmhinIqNPgfPAZm1rA
         wOD+u1UZcE2sQaFdePC/bnybzlZCG53dPLnn7ZGd+INMx6bzZWO8l1N3A7hJLyzFaIzF
         Pn6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cMKICmyEaRHdfRGAsfzaBjeJhCA2mMetaVCwi2o9Ge007Itr8
	PNS9IonR0eCxZHj0eWekspo=
X-Google-Smtp-Source: ABdhPJxbvDNuj8nSv4bJHZ8sQtH8Wb3VIqNRffYSJ6uD0pwSuHDL3b5MaVrGHOyKgQtVdCzK4uoW4w==
X-Received: by 2002:a05:6402:1584:: with SMTP id c4mr811993edv.192.1601287215010;
        Mon, 28 Sep 2020 03:00:15 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:924e:: with SMTP id c14ls304385ejx.0.gmail; Mon, 28
 Sep 2020 03:00:14 -0700 (PDT)
X-Received: by 2002:a17:906:95cf:: with SMTP id n15mr908308ejy.14.1601287214051;
        Mon, 28 Sep 2020 03:00:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601287214; cv=none;
        d=google.com; s=arc-20160816;
        b=EABRKXn4StPc334Qdgd5t7MedxDKOjF3NNffZ/iY12zKgPde9yDOoMj+pB2DHWcEu4
         PH7zrQsKRvtZ0L5E/HlnC8a7j/Asgvp1VptP6FkyquEp0x8+mib+2D7kzRqCyX8Vivd8
         pfabjwMhCGgTXfuRyjj/AGv8ocrJRE12F8lOM5TGWcLl0k4l5r/4vVggqqmBOsvqNIPr
         zNUepAX2a6j7TJ7NOEw4t5mk1BbrmWJW/MWgEqVf4lvz+oOYykQEHI5OmAaCFM7f3iwL
         5GYw7ygt/cWe+dNu1XWXCjGk3/xsuqoa2yFxUv7bK5OLKNlBdJwjUbN43LPjiQrlTyTa
         pwcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=SDDq2C7QLWNFyYFepbxAMacpxOBVCHMbzny/kHBr8TA=;
        b=yW1vQQG9JxK0h9Jjjdsq0AwZ+QOxiBgL6/lsSxBfNDvJrFmEvuLnVNcltdlETpbjmb
         eoCokYgSTc33fHCUZhj2iDjZf2JkdKzCyHpg7Gs8npbB7W2ZT6IaxGOICO6rtQbWRuuu
         MkjxRGLluI+NZ/9tu6ZInOo7h90kcZ0EqU/i1AYtIVktI+Q3/5TuAQhYe63Srix5sNun
         YRahrcY+Dxjwe8MavFhI/6Yig9JmjhV1SrDBDPz0rjXXKIBW9hKJtIqdBazE/MMkJGTi
         +FuUk+JJkyVrZ3pc5n7EP/5fNTyrs3rTMWXx4j84OL+QEqf53G9upmqPHbIvRJIAg/YT
         J69g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R+pfU0To;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id ca8si11048ejb.0.2020.09.28.03.00.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 03:00:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Received: by mail-ed1-x542.google.com with SMTP id n13so603035edo.10
        for <clang-built-linux@googlegroups.com>; Mon, 28 Sep 2020 03:00:14 -0700 (PDT)
X-Received: by 2002:a05:6402:1d93:: with SMTP id dk19mr800943edb.198.1601287213821;
        Mon, 28 Sep 2020 03:00:13 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2d9d:5000:7872:7299:adfa:b749])
        by smtp.gmail.com with ESMTPSA id m10sm921048edf.11.2020.09.28.03.00.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 03:00:13 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Dave Hansen <dave.hansen@linux.intel.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] x86/mm: drop superfluous initialization
Date: Mon, 28 Sep 2020 12:00:04 +0200
Message-Id: <20200928100004.25674-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=R+pfU0To;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::542
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

It is not required to initialize the local variable start in
memory_map_top_down(), as the variable will be initialized in any path
before it is used.

make clang-analyzer on x86_64 tinyconfig reports:

  arch/x86/mm/init.c:612:15: warning: Although the value stored to 'start' \
  is used in the enclosing expression, the value is never actually read \
  from 'start' [clang-analyzer-deadcode.DeadStores]

Compilers will detect this superfluous assignment and optimize that
expression anyway. So, the resulting binary is identical before and after
the change.

Drop this superfluous assignment to make clang-analyzer happy.

No functional change.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on v5.9-rc7 and next-20200925

Dave, Andy, Peter, please pick this minor non-urgent clean-up patch.

I quickly confirmed that the binary did not change with this change to the
source code; the hash of init.o remained the same before and after the change.

So, in my setup:
  md5sum arch/x86/mm/init.o
  b26f6380760f32d2ef2c7525301eebd3  init.o

linux-safety, please verify and validate this change.

 arch/x86/mm/init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/mm/init.c b/arch/x86/mm/init.c
index c7a47603537f..5632f02146ca 100644
--- a/arch/x86/mm/init.c
+++ b/arch/x86/mm/init.c
@@ -609,7 +609,7 @@ static void __init memory_map_top_down(unsigned long map_start,
 	step_size = PMD_SIZE;
 	max_pfn_mapped = 0; /* will get exact value next */
 	min_pfn_mapped = real_end >> PAGE_SHIFT;
-	last_start = start = real_end;
+	last_start = real_end;
 
 	/*
 	 * We start from the top (end of memory) and go to the bottom.
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200928100004.25674-1-lukas.bulwahn%40gmail.com.
