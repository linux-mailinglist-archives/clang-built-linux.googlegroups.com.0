Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBNEC774QKGQEWDDQQWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0E524D539
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 14:42:30 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id y5sf858260ota.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 05:42:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598013749; cv=pass;
        d=google.com; s=arc-20160816;
        b=ll2hoynkKijOoHju04LR1WLj+SjFtS/sske5R1boOHF/1sgLmEQ+RNhVjMt5sA8C64
         8CH2gFDP3icrvyo2CC/IsyQZDw54T5FqZO5R57qMliYqvt5VF6zORbu3KM4+OtYuK3FB
         tSdI6Tyo9SfdwFSgObME+GnJ9YvpRtEjfL6fd+WupJ2zYccgv5HIVxuEChrzlWtT0Gol
         QVDrio6q749Lah8CwNBfaJnq6maV8hKFOQNrkhRvfB2hLdR8LULtoUpN/3VvDYp2RpYd
         1X0iVt2RUflquOKQ2I4hJy+Srezemv+cnSgDzPuX8gDIZx4NLQ3qrM8EkKowmufLZ4jO
         z/cQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=yOCnXqHe0BSJJLbReRyXa5wll7JhNiGDO2DpKHXx71o=;
        b=JpBVpLUZ0t2l04cHTzlcHQCkvY0DBsmLpa4Shb/f++HolrUPFqr6bmML9D5Xyo7xoO
         lAKuxZK6PX7EtD7xQvebzvVyWVvlnFHASoRHQIwoLd4ohQbjwBK17h5rajCbGNF5yP5d
         KcUFvs7CYtuS18HfJZDXJdd1bM1HUZBnC99XqnxtBstbDYGrG63I5WZxirj5cFrbqy+P
         ZkH54KGowzh+JjC7OUPqurY/f0eC6xJGWnbgvmCdFcVEhTqF6/Nc1/LqA5HZeRmUszVF
         zZEoQ4XqeD8+5eRyQISuuzj+ZfwLs565nQY+q8QSvJUhF5JT02gWpUm36c+mhBk202vj
         KSOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yOCnXqHe0BSJJLbReRyXa5wll7JhNiGDO2DpKHXx71o=;
        b=ZLQjkk+IL6Sa05Tk2opZzru4tJMZZZ5EKgtE2BB/QSyegk31SWyRd34YL93yziy0zb
         /e5oxvmduqYHQ1oGOHJLEOCFXc4MWnfDi8hHQnaN5EwbgUPgHexE7Bxi5LdVUQJnDSK0
         vyHTFEP48H3Mq171dgBLXVAYLT+dO6sXuWQta6DLXiWGZAfxbTGe5lLEF2ZGhPPj7deK
         ld6DEx2gDwP1nxSoixc84vKJv/F0143IdX1UH+qd1bPj68HHOn+4PPb0dAIqFmh9pdSY
         eo8DM9qkKP9JMVhJH04UWQS3IIjH1EsTTBjILa2raHGOAGLCMN48NItFeUvUUONBft8d
         0JrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yOCnXqHe0BSJJLbReRyXa5wll7JhNiGDO2DpKHXx71o=;
        b=rtx1ks/8sfoSK1Nnl0orGeIIrhXFK+ud4ehHtgu2NnBYh1uUm7ieU8sDOARKGtNn5a
         BiUSCEUVXo9m6b3tO4B7G+FMiYrbihH2cfMiCbZbdqGBu3UypLG/kV+o1YMq11phrNKK
         iQadNJO2DhCtEByFAp7VzdtdkAZ/y5d2ow/ejPMAplhaPJWqkPyJIq6wXYIBEA2rkODI
         8w9R4lj9Pd6GEjE31GqGrkIvFxzCFNZxaRgiTXVPUNB5DYB9n8KPI/r3Xq2GzhCueyrK
         wtb+m4cuvN2yvfOGEzhM5vE/v2cFhdTeMKpzpcEO6iyIx20kQv44mrvUf0ps+YgMQlju
         CsOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532HgP8FCPLdsMgfFf6OHIFLNUFZ78OQb9YkGlPGpG0WP4X0BIAf
	nFhAn0oNVcEnTKqfZeNdoQE=
X-Google-Smtp-Source: ABdhPJyW9V5vE9VlBQiZJhwRRnW5wLPKHa39oW1nLc6HJbl20KccOZah0mDsv+5gXFNUDXKGj6WjPw==
X-Received: by 2002:a9d:7458:: with SMTP id p24mr1686081otk.372.1598013749081;
        Fri, 21 Aug 2020 05:42:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4745:: with SMTP id u66ls357550oia.11.gmail; Fri, 21 Aug
 2020 05:42:28 -0700 (PDT)
X-Received: by 2002:aca:ab45:: with SMTP id u66mr1518931oie.127.1598013748438;
        Fri, 21 Aug 2020 05:42:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598013748; cv=none;
        d=google.com; s=arc-20160816;
        b=O+T/PyD5Joa9kUDWfZs+GfYPiOlypNCbL4w4lLL6E6PqUvBVJLH/Q1/Ls0b/Cc59jW
         2YAttrqH/oDyclRinKP1gOdRTP650LEqY25QFdNNR2w9eCHHB1ExmKgli6MSYmIIG68t
         9u4uKz5hRl7J4pErsD57T3MfehNUumbz2rQ9L2xp0+T2rgtTNcBK07uLu9RfLcKjiUEd
         8mi+73b7xLhrBu6EGBzrkP09Vi2dOV6JH5oF9oqHNq5ixdzfLA+Vd+GPyHEF3DZ2oikS
         aVqTq58wTLPl99U295eBqY+bbL6CwcrKKk4YHkuaq6bZZ3/dP3MxiaCLEmo49MOJEfgy
         uKeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=DWz2bjYpSfOWxu6yL+dXt5GBtDtsGX7dapWhZraxUX4=;
        b=HD2/bnmbJ1PRwGUAdY7RM1munuFi4whVdgILFM8SSsUgVFXK6338CU0vsvaVEqcnHm
         afztJMMKIjrN6h3bKuAHRynzDAjUfNwUP+0xYmQkavdUhu1gKyMK9Xgg8R/kpBWNLztN
         hwokiNR/OTdDvFiAhZD2x3jHJrbE34lmSIb9pQ+X8LyBpZdd7yC5EfoN7Pd3+bkeGKP7
         70O0hcacab50jwjF9dj6+t7zfatBu0J5uYueQqFbym5/LeFW24iZDviJ/5Jd1EsvWXpI
         xxNuCVmZvDlSGK1btg+qgG7CRFOGDpjzuQRMYVo1S7dVlcKAufayUtcNBOiEgJKttP0z
         1AZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com ([216.24.177.18])
        by gmr-mx.google.com with ESMTPS id c199si78874oob.1.2020.08.21.05.42.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 05:42:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
	by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
	id 1k96N0-0000bo-Ow; Fri, 21 Aug 2020 22:42:11 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Fri, 21 Aug 2020 22:42:10 +1000
Date: Fri, 21 Aug 2020 22:42:10 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-crypto@vger.kernel.org
Subject: [PATCH] crypto: stm32 - Add missing header inclusions
Message-ID: <20200821124210.GA31649@gondor.apana.org.au>
References: <202008212033.z5PbDJuy%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202008212033.z5PbDJuy%lkp@intel.com>
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

On Fri, Aug 21, 2020 at 08:22:37PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git master
> head:   3d29e98d1d7550fc959a7ad4258bd804b533b493
> commit: 0c3dc787a62aef3ca7aedf3797ec42fff9b0a913 [2/35] crypto: algapi - Remove skbuff.h inclusion
> config: arm-randconfig-r016-20200820 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b587ca93be114d07ec3bf654add97d7872325281)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         git checkout 0c3dc787a62aef3ca7aedf3797ec42fff9b0a913
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

Thanks for the report.  This patch should fix it:

---8<---
The stm32 driver was missing a number of includes that we being
pulled in by unrelated header files.  As the indirect inclusion
went away, it now fails to build.

This patch adds the missing inclusions.

Reported-by: kernel test robot <lkp@intel.com>
Fixes: 0c3dc787a62a ("crypto: algapi - Remove skbuff.h inclusion")
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>

diff --git a/drivers/crypto/stm32/stm32-crc32.c b/drivers/crypto/stm32/stm32-crc32.c
index 3ba41148c2a4..5fb706b68309 100644
--- a/drivers/crypto/stm32/stm32-crc32.c
+++ b/drivers/crypto/stm32/stm32-crc32.c
@@ -7,6 +7,8 @@
 #include <linux/bitrev.h>
 #include <linux/clk.h>
 #include <linux/crc32poly.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/mod_devicetable.h>
 #include <linux/platform_device.h>
diff --git a/drivers/crypto/stm32/stm32-hash.c b/drivers/crypto/stm32/stm32-hash.c
index 03c5e6683805..092eaabda238 100644
--- a/drivers/crypto/stm32/stm32-hash.c
+++ b/drivers/crypto/stm32/stm32-hash.c
@@ -9,6 +9,7 @@
 #include <linux/clk.h>
 #include <linux/crypto.h>
 #include <linux/delay.h>
+#include <linux/dma-mapping.h>
 #include <linux/dmaengine.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821124210.GA31649%40gondor.apana.org.au.
