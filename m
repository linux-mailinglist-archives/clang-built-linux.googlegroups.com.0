Return-Path: <clang-built-linux+bncBAABBJGKQ32QKGQEHHRL36Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id D20D31B5DAF
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 16:24:37 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id j21sf4725627pgh.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 07:24:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587651876; cv=pass;
        d=google.com; s=arc-20160816;
        b=krqXAl3H6+GyJMfUSq9jE0qK6hPbK2yc0YaiCqrV2yPH1aBexosgsFHxUNdIlXW/fo
         0OvTHHxggQn6AkRC9bVdZ23iGweSCP7wvGUdmxB+3ucjqjs4ttDbGSb1tVguoIt6OC8w
         izP21UfP2rCRL/gtOslslV14fWPoPLQH6mgpEIVjdTg1cQ4aKDTBwBdVSHa8Zp2yqMHV
         cIwLHFsTIJbOll1AMMOfJgFoS7TzuRLD9TnNSk/XAJHlVR6/MhibkGkcnck0wcz6uftI
         19QvcSvOYWaNHLk8j7N3bWubFEaD6XbWX99TpJlVwUAr4vZghl98qHdxp1wFph/3OTkO
         qyew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=tZs9IQ3bZFXKJYrgWnJJkIMvSiOlhh/bmW69u2xhd4o=;
        b=Y7p5fpWeeroEz4TDGPCpxfhjKRL4yBUapPzXYsxNcvl0If8leb47fYFIs1ewuQHjYX
         i2a6M32NhU4dTXa1PWIlDlTjD3PIMaIHPF1iTSM1TxTh8Itcc6d/CDOPnAkVtkVMO2tP
         a//nwm8mDMihxe13bvVdugLPESK6JKpLQWs7F3mOqxuS9KLZFJT4wfuhN5wXUGbaWbdE
         lqBGv50QwaMi7uFTK90HMED75UGkMxATUjjn+9SGA0mDCpS0P3QLjhiQ2P6IUy0kCx35
         uG5s4J/ZP3YRiovM6QxLXzr++BOoE20zOqVb77/L4m1LeEa51z4shj71aMtZ2gbqlGXk
         Bm1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=LM0K96az;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tZs9IQ3bZFXKJYrgWnJJkIMvSiOlhh/bmW69u2xhd4o=;
        b=Vo3cQgULpoVkw4err2xenckp1fdQp8bv8Gc/5jcNFT7tZgT+kPlVxSZS0/3g/p3DGE
         Yi6x5p5u7K6U0O5W7on78b/cErxMyDsrMF8kH8XcvsHdRQPN3woVwRZaBqgW2xY5UJaH
         p7DFgqwTZxAogkzZ1E9EELVl3dQsIAXgQKkWSFzmg/6rnRoofcsbyKmJilRO3WZQSrcU
         tjBp2Kb3t7MbYaPOE2gCZGCdmdugH4IQLLSrErRkNct5VaJHKLm+jo+wDVGT4S4KhAWQ
         fqUaxcxkISHYRq/Sn/Bps6YoX68A2oqTrZYjaLPwcwX0vSJwAgHW2WZ/RliZmuvmWmZY
         5Zrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tZs9IQ3bZFXKJYrgWnJJkIMvSiOlhh/bmW69u2xhd4o=;
        b=G2Fyh0UGJtmBp3tLZeMKrLxZhQy45eR96r6ohyYKDrWLQMePs8ddbOqOijreHl5Q4B
         ekDWUZZoyDpwO3oB13qfaXj0mOUr3ry8lCPXWh83tgwu1P2Q7j+7v/X7Dg5nR45gBaP0
         fPF3Nefb/dPTQSN1gwycWb9nwHl3SLnFOjopZ2mvRhOfINqCgFgfYta6lii2E7XMdpPL
         KXfNoMm6AwskljWyleVgNSVR9otsVhloOUh1v61iSRMNoU37y2ywXK+Cb6S4tCAuLIBO
         Md2NtZXy3tYbS1QAoDYIoTzZQm+tvxUU4hLHmhBKGwhvLrbVTict9BzaJrJYq74Q9RSQ
         CTtg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYjnuJnj6ML8li/3zzSv16VkyEnZnQvsNm2tB0Mx8w3DJqI8urB
	ou7ZEhZAtsWWXCbCHyrSYrU=
X-Google-Smtp-Source: APiQypLd5ZZOyTITsjjNjtmZCstbDFMrwkFzS/9pF7SXZbvJ5Fwv9cNUsJhuO9FrOIU3qRJ1n/4hVQ==
X-Received: by 2002:a17:90b:1993:: with SMTP id mv19mr909892pjb.88.1587651876077;
        Thu, 23 Apr 2020 07:24:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6a48:: with SMTP id f69ls2498775pgc.8.gmail; Thu, 23 Apr
 2020 07:24:35 -0700 (PDT)
X-Received: by 2002:aa7:9a11:: with SMTP id w17mr3939251pfj.314.1587651875597;
        Thu, 23 Apr 2020 07:24:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587651875; cv=none;
        d=google.com; s=arc-20160816;
        b=I3a8BY4qklXa1/EvYaOnZ4wQlM8kNMu1mipQ/YZFhIEaMQ/s8Q3Zkw+Sin1Ijt8FZw
         Dl1AQMCXIGNr3Yv9IP1eFYlkFl9kw46hWR+7RpxzcPXTmnIR3IGYYHVGY4JP+pbdwsmq
         Oqv3WAM17H4kD+jNumuuJUPaRzy9pPCvYwywh9YUShoueRb6v+UHRS04lItlGVhPc36Q
         mg//X0hLarnNkR0Wtgh5s5DvBFC9deKUJoKCfYVO+VEURJqK/uuVAjyq6reHRZ0EPL6y
         u8Bz2QR2ASOhBiTAYO3ImaEO5N0LnNxB2aNh4SqqYo1JiWv5ILoqEsA4IQyCQYCcB3Dc
         6g6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=GblWkrQ3fEk/yGag5fkIHPDknZcOQFOJ4u0hcJxUM+0=;
        b=t7YRbqbwkKzu+Y3KYPf+/6/ZOF6oROq2aysOgoedPWuQS1K1ixaQc4XLqgAdB0TIwL
         aMBkVuUj7BBpMbaA5U1JTmZ+9xmWgQoxU0ctY76y+PwtcSEFhdnBsIfwYyw20KSjDTyH
         6E0WTUt+lan/UYEmiputCeqbwICEbDiDKEzmtQAnOZV2azipqcYRW5wikSFlSGozWMwH
         yWkm998D+k7ZWumO8B0/YJXJYr9AQeaWkBE+4oXtTz5jirxbKVR5sEX3ynJMHN553qfu
         HGv3LGuf46q2gbe1kWE/2G4/BaTmSSzARFo+AbqH+HJk8uHs9ZdBYseGPF/8wotVYyWK
         pxRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=LM0K96az;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id a3si113097pfr.4.2020.04.23.07.24.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Apr 2020 07:24:35 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from oscar.flets-west.jp (softbank126090202047.bbtec.net [126.90.202.47]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 03NEO72U028581;
	Thu, 23 Apr 2020 23:24:07 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 03NEO72U028581
X-Nifty-SrcIP: [126.90.202.47]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] kbuild: use $(CC_VERSION_TEXT) to evaluate CC_IS_GCC and CC_IS_CLANG
Date: Thu, 23 Apr 2020 23:23:51 +0900
Message-Id: <20200423142354.312088-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=LM0K96az;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

The result of '$(CC) --version | head -n 1' is already computed by the
top Makefile, and stored in the environment variable, CC_VERSION_TEXT.

'echo' is probably less expensive than the two commands $(CC) and
'head' although this optimization is not noticeable level.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
  - new patch

 init/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/init/Kconfig b/init/Kconfig
index 9e22ee8fbd75..5f797df3f043 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -9,7 +9,7 @@ config DEFCONFIG_LIST
 	default "arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)"
 
 config CC_IS_GCC
-	def_bool $(success,$(CC) --version | head -n 1 | grep -q gcc)
+	def_bool $(success,echo "$(CC_VERSION_TEXT)" | grep -q gcc)
 
 config GCC_VERSION
 	int
@@ -21,7 +21,7 @@ config LD_VERSION
 	default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh)
 
 config CC_IS_CLANG
-	def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
+	def_bool $(success,echo "$(CC_VERSION_TEXT)" | grep -q clang)
 
 config CLANG_VERSION
 	int
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200423142354.312088-1-masahiroy%40kernel.org.
