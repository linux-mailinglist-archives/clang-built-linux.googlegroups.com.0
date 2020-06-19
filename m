Return-Path: <clang-built-linux+bncBDTY5EWUQMEBB27WWD3QKGQEAFCDYZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B82200100
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 06:13:33 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id e22sf3571153pgl.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 21:13:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592540012; cv=pass;
        d=google.com; s=arc-20160816;
        b=XGBzqpY6gnw+4a0CzWfh470t+nx7MtWBXSyGytjUu/GHbvG8rowdbLtgaugqtmArcK
         0gq/PnVUBAZo3acE/iK5sbYZew8v1VbLJRjykFRYbV+tM1pwamaSBi4KAFFqPhr+zZxd
         u3nIXChnTTmpwY1pC7qjDmZP7Ll+b/nFvVObGKSPmcSJGbiM0zYDV1ijJ4WN32ds20wy
         kYLazg9e1rMEQmIdhZcR0/qDN9CUBAKd/OuBr0OeXAZUgNBbLzNmT6ywFMPsn7OjCPvy
         txkUOFevtV3Fq6+CS7IuNu0Naq8YML6ADKfBv6KeUZAQt7tLU9bap0F/j7dhLjWLV30B
         9W/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Jum/LZ7CK+/K+IdhZoDRHCFPqpG41m4cjM8yKYSUZXU=;
        b=c2BueGHxmvgGCxWfsvuJa15VCfCHVAzjpa4gphRoO2iLQjkmudyOWIF69I6aqSt6vB
         9xxl6Ngh0G4PiwAhSgGjaH7cOvQII5QR2kzrj7wtgGMjGIVyHu/6HMbzyc1FCSz6EzaC
         ha3jzSD4FmFACYSvbK1DHpEkmV+o8Xw4v7vFTHnVaol7+mH4YfnIlc+NBQTXgDcW3Md4
         J6rq5OAqnVbSpQZ3TGd8A7ounGPh5GwcQbq5p4DrlecWgj/XkWjwb3kXA2JNw/Gtw2pL
         LRJNS3ugpy4slhh26yRFv3VoRyMktz8+dcppUGGV86Av1d5C4wDUfIUKFs2HQlD1bA68
         1zuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Jum/LZ7CK+/K+IdhZoDRHCFPqpG41m4cjM8yKYSUZXU=;
        b=EgPOx3v8IsCsctjYgym2aHuFzNNGT/8rGuQOqQIGozHa/Iz8tB8q/V0lmquOwFGcPo
         dS7maGH4FbNNl0ekUTxbRRNi/beugTmjVDqHG7EFLoE/scid8NYW9W+nXp9U+xTGzy80
         OA5nC2LssFW3M4GDxUoIigGMV53CMYiNhhaAO/W/ONFgg6Vd/JuQPMRhBtrkx0f3nrnU
         gWsRN5OkziSayucPjmP2eLbwOQsgTIwYuJaN6KgiWwCFKw7AAdnIvKj1OU8kN89EAku5
         JpbR9I3w8lHme7/649D11DiZaFTI2ykKwx1xCLxpa0c3HRM7aFuvMddkp3fzz1/zOZuU
         8SQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Jum/LZ7CK+/K+IdhZoDRHCFPqpG41m4cjM8yKYSUZXU=;
        b=EwRgj4TDgJMd3vk7Mj1f1XwYIFG6yyrgRFZDdZlpMbh1PaiJ/Vj5s504ESJOWN9YST
         8553ZCinPMalH57rXYfNBTlJDO9PylFZahRX+WgUh0/65oGSmgAzmjCVjCvdyISxbLyc
         cw0TPwS0dSlCk3KupOQtJD1AlM73EXLsYtMKQCXeKuHOqsFxJL7Xb3j0j8r7FGVLg7oY
         OSFoqOaOYiJTQBpVyH5Km6lsA9KCwM/HnJLpSgbsyR6w1aBMd0lviPVf9a3FtnpX8Qf4
         26KnzASRo/bh3bZCKH0AzjgdhDC6n1a67ySEeaQDr04DigSckwMH3frbYHim6/EJoGkl
         9JBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QmhaKlyVxywJcAQxHYuHWwiTTHhxK5XT7CZVx5eNM39iGGeOe
	c0P7sTrJVdW6NdqplQqkrZU=
X-Google-Smtp-Source: ABdhPJyYCYHYHaSW/6vZtj7/Jvlgp4ARzlB9rSyYVvtAxbg2G8pnDzTjg8ILMhtovkA36m0yDYKL9A==
X-Received: by 2002:a17:90a:3628:: with SMTP id s37mr2181564pjb.1.1592540011932;
        Thu, 18 Jun 2020 21:13:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c253:: with SMTP id d19ls3239852pjx.2.gmail; Thu, 18
 Jun 2020 21:13:31 -0700 (PDT)
X-Received: by 2002:a17:90b:14d5:: with SMTP id jz21mr1767354pjb.70.1592540011145;
        Thu, 18 Jun 2020 21:13:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592540011; cv=none;
        d=google.com; s=arc-20160816;
        b=dWvvQ2BOhkK02cxLY7BXbsPLTATkN99kLXkKVgeCidgiio9bRetCPTp3X+jzqX/lv3
         B0hz+idbDbBg8bcL+PI6iBFaR9M/+c+9k1xKAkUeTGaAjQA494Xt/ZpvuuCU1XT5rYsk
         lcMsK//GUe34WyVd5ij6iWg6Qi1WxUKs5aqlaWvEVUNA3qDWHBRPXtICj/uDtgfHgofE
         Y0ZQLFuIGQjMIChdjnz6iXJ4jMmYQNWs57D7Oj7W3UxolJOOEy4oQSKchplqvQK78R2o
         9X6CgdIxMjXkGMffjcNUAW6eRTkuvXpCcHE1vgyoLSnXCNezP9LyZU61PShNZiCwP0sk
         7rfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=wU1YHkqBcpfPTaTgGNrh+X/y8Hj3uXNjfOsurP1y1nE=;
        b=JXhS6lBf3/Cn3ne8L4m3wPR0yS5+I/lqZyD+kkAHhr/bWhbmyOIIg6pfpiqKQm3Bfi
         j2GjG5EptykzYNGkbokoFEf8SYodFm0kI49SpEQ5lvhnU+R7bgrDvL/4uq0efCWp7aWn
         fXxdI5HYxUgDSRyOUz1t+3/ERaPrA3O3IRcynK63pH2vF/yZyoqRyv+inrm/fKkV8GNz
         1+6hMV7R3gjEiYiILgiRN0Bs7vCwQ3Hr4CctTiorvIjobfCJQR44j/gVuqkd/URxIVAH
         0gJSHJ8HQs4BUdMncFTV74u8LHRJxkpswtt2GIHbawJsEPGURQA0n89H15YKY6Hz/ULx
         iTew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com ([216.24.177.18])
        by gmr-mx.google.com with ESMTPS id j3si211260pjy.1.2020.06.18.21.13.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2020 21:13:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
	by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
	id 1jm8Oo-0007ct-8B; Fri, 19 Jun 2020 14:13:07 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Fri, 19 Jun 2020 14:13:06 +1000
Date: Fri, 19 Jun 2020 14:13:06 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Rong Chen <rong.a.chen@intel.com>
Cc: kernel test robot <lkp@intel.com>,
	Roberto Sassu <roberto.sassu@huawei.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	Mimi Zohar <zohar@linux.ibm.com>, linux-integrity@vger.kernel.org,
	Dmitry Kasatkin <dmitry.kasatkin@gmail.com>
Subject: Re: [kbuild-all] security/integrity/ima/ima_crypto.c:575:12:
 warning: stack frame size of 1152 bytes in function
 'ima_calc_field_array_hash_tfm'
Message-ID: <20200619041306.GA22098@gondor.apana.org.au>
References: <202006172132.iBj7mjDX%lkp@intel.com>
 <932f46e1-3ea9-e0cd-218a-db163c146a0e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <932f46e1-3ea9-e0cd-218a-db163c146a0e@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Fri, Jun 19, 2020 at 10:43:22AM +0800, Rong Chen wrote:
> 
> Could you take a look at this warning? Roberto mentioned you in previous
> report:
> https://lore.kernel.org/linux-integrity/9dbec9465bda4f8995a42593eb0db010@huawei.com/

Well having a shash descriptor on the stack is always pushing
the envelope.  Doing it when you put another 256-byte string is
obviously not a good idea.  The good thing is that the string
isn't necessary, so how about:

---8<---
The function ima_calc_field_array_hash_tfm uses a stack descriptor
for shash.  As hashing requires a large amount of space this means
that you shouldn't put any other large data on the stack at the same
time, for example, you definitely shouldn't put a 256-byte string
which you're going to hash on the stack.

Luckily this string is mostly composed of zeroes so we could just
use ZERO_PAGE instead.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>

diff --git a/security/integrity/ima/ima_crypto.c b/security/integrity/ima/ima_crypto.c
index 220b14920c37..0a925d1a1bf7 100644
--- a/security/integrity/ima/ima_crypto.c
+++ b/security/integrity/ima/ima_crypto.c
@@ -11,6 +11,7 @@
  */
 
 #include <linux/kernel.h>
+#include <linux/mm.h>
 #include <linux/moduleparam.h>
 #include <linux/ratelimit.h>
 #include <linux/file.h>
@@ -605,11 +606,11 @@ static int ima_calc_field_array_hash_tfm(struct ima_field_data *field_data,
 		return rc;
 
 	for (i = 0; i < num_fields; i++) {
-		u8 buffer[IMA_EVENT_NAME_LEN_MAX + 1] = { 0 };
 		u8 *data_to_hash = field_data[i].data;
 		u32 datalen = field_data[i].len;
 		u32 datalen_to_hash =
 		    !ima_canonical_fmt ? datalen : cpu_to_le32(datalen);
+		u32 padlen = 0;
 
 		if (strcmp(td->name, IMA_TEMPLATE_IMA_NAME) != 0) {
 			rc = crypto_shash_update(shash,
@@ -617,14 +618,21 @@ static int ima_calc_field_array_hash_tfm(struct ima_field_data *field_data,
 						sizeof(datalen_to_hash));
 			if (rc)
 				break;
-		} else if (strcmp(td->fields[i]->field_id, "n") == 0) {
-			memcpy(buffer, data_to_hash, datalen);
-			data_to_hash = buffer;
-			datalen = IMA_EVENT_NAME_LEN_MAX + 1;
-		}
+		} else if (strcmp(td->fields[i]->field_id, "n") == 0 &&
+			   datalen < IMA_EVENT_NAME_LEN_MAX + 1)
+			padlen = IMA_EVENT_NAME_LEN_MAX + 1 - datalen;
+
 		rc = crypto_shash_update(shash, data_to_hash, datalen);
 		if (rc)
 			break;
+
+		if (padlen) {
+			const u8 *zero = page_address(ZERO_PAGE(0));
+
+			rc = crypto_shash_update(shash, zero, padlen);
+			if (rc)
+				break;
+		}
 	}
 
 	if (!rc)
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200619041306.GA22098%40gondor.apana.org.au.
