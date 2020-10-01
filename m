Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBGG22T5QKGQEXBRM6OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 5807C27F70F
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 03:12:57 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id d23sf862086ljg.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 18:12:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601514777; cv=pass;
        d=google.com; s=arc-20160816;
        b=xddj/zahMeOI7MvWi3b59KqkGy+3BKvV7izSfoICIM6BN+PLdXZWPZt1P1lb5oqlKj
         AKyHHn3IAMjpSsuz8AJRGJcp7rL/BpV/miNjCZxhmmGMt1YCChGntFv0/okKzdaCxgUu
         5TPjHrp+YnocHEtLWtbo8pBG3oahPcsI/nqRq1SyJ5Co2uOR8KWwKZHuPQ2ONQBR7uaM
         MhMlh8htIqB5bl6Z+pJRz7TTHAtIPo48uVIQEZwIEq65Hsr96DaFwE8qLB6+Uwrb9zhJ
         RPjbZ7uuolaLM03V9JJRrrNcERQrxO1Nf/MmAIc43J7aQPFVUwzMAu5rDsth8JPfXPc6
         cpLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PrVgz0qNYujVc2j01R2ETdR+D5M4wB4fYN12Dk/PqfM=;
        b=hDXaB90mct6RhdsI/mKbpowEhtZwQkgcR5/UfTzq+R64fe7IH84iU6ZlBiiv2PUu9z
         3UjwsPg/XApDcPM8UlmMnnqtQZsLAbToJq4m4tUzMv5lCT+qcQ7wexF9f8AXfLpRz5/P
         gjTH6e1dGjxJO2dk0/x7hfSjOpHndEPp79PrIsYVX0E3VWucF93dxQTzQ8QEECvolbQ8
         CDlYuNhoXeQs+vJMIIFH6cbru8ROVpAX5dpWRB4gpCqu+EE0u8mjwkicvkWg3h9XgXPX
         unNCqZoZvcQTDgPnWEepUL9Ee6Hr2emzWO47esRrIp21Tq8MWLZBi0lya/vhDbyqA/LJ
         MAUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PrVgz0qNYujVc2j01R2ETdR+D5M4wB4fYN12Dk/PqfM=;
        b=aGoGFcvlJR5Hmq5eVz+UVyqD25QfpJ8ygLLXeSYxScWYYQcrAiYYGbrNpz9zipqriT
         WjuAAXhJrp8fuihJdZ9lSrmGeCRJzj3cipxvvh+REI923JdhncNjk8uJHlRGTCsaATcG
         CxDTIYsckgKdPhUm1V0el8zoPkhRJIbin8tQwyWo7v4HMcMU3HH2Ti6/0no0OGOOvsuG
         Saf+Lv+2NdheOXUqaMTRECZNT7OHwv1W9uWPt9LID486r+XYaRhla1m7VTGJhYGNALiC
         pKx6SdAl1u+OOoR0gtusWEMEoHfYcgk1BGYm1YqP3DScIKU6Vha6cacm9ZjoBwsKZ0p1
         Saow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PrVgz0qNYujVc2j01R2ETdR+D5M4wB4fYN12Dk/PqfM=;
        b=X1DOPV1hdOPXZomhvU8z2WBM6dpL3VGngI7PVG8LuLbnKlSn3Ib1SLCykxENOzIcXO
         UmzWuxXSr0IuwfQU3Oafuta2w4MSkftjEXW8hQksV+/n4JDoQj4nGfW/So+ZY8P++at4
         wTaIABPmGD5Ru5SNJlwnKZGgLl2Q3Ftb41QsU9L166qvL1vzHb9X25mlqou70e67kBfJ
         pVVp3SpBo/DDxcTZ6str1CkSoJT5bScfpLwtsJbRPPX3ce4jJmAyAPxLRN5RPOQ9eqf5
         MH++HCTAmu0mkJVpXDaK2mavndYgnxRh1sVJ5u6TTVs8nBdAogzjzG/sWUx6P1IQRMPb
         vLZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530V89YMf7a9A3+7F9jSSxggAhT4FaaBeGj2Gtqi1T2PPIuD/p7i
	2kt61ER1edNXElL/0OCyJwE=
X-Google-Smtp-Source: ABdhPJyvGyJZcT+PqWtdvJy+W4/cACF7rcsSFRsN2AfZyaH3p5DjA8hzJ3FQfSYtoPsj8yb7aHhIWw==
X-Received: by 2002:ac2:5b8e:: with SMTP id o14mr1747227lfn.103.1601514776919;
        Wed, 30 Sep 2020 18:12:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9a93:: with SMTP id p19ls566029lji.7.gmail; Wed, 30 Sep
 2020 18:12:55 -0700 (PDT)
X-Received: by 2002:a2e:b8c8:: with SMTP id s8mr1669190ljp.127.1601514775653;
        Wed, 30 Sep 2020 18:12:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601514775; cv=none;
        d=google.com; s=arc-20160816;
        b=AwxGr8nxI+rpXx9r0TbCTPm1ltJEGNti9HpjCEFWtyO+r18TxOovPl4ABrikjjNED6
         M55HB+uvl4Cas4G6fjr3wJ8/3By/Y9Bhdg2UcECcXDu94EvCWWeYGLDC+II0OTj0nFJ3
         alPpErzcSz0Fzbawpo4ZLyp7eiCf+cdBOuKF9V/H7r/OJK+weFCc61NcnGdHoV9/1T1V
         xi5TlXcx/k9QbDurfDPFxy7BicGozvEu+JJvOYCawDxQQr337EoLxk9p79ZuyPaWfkqa
         JZoz04xt+mYBOLNcN5mYLQ+DEi7BSI/gtx8i5rkVf7mYincD13y1mMW2uceRZmXHL6yH
         s/Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=C9W8UBt/s7wBCBLQj/G5cH0ByuAtevOa81HtvVKjg1U=;
        b=zJ6+sIO6B4GFspDvynTGodLmw0P7koLz7wXh1eiPg4gkHZdBQrks8w8vs+lmNELYV/
         iPIMZIfvtjkj/Zszjomc6lY2ioU2hlqQ6RYmRSO0WToQ1gKsJ04BCE0MQD8RxRf272OY
         LPmAl5QM3mxQQnpnd6rENGVIu6liG/5b8gcpp2dnmCcguivAGdVC1EfDkTWQugv+pgPI
         4aECIQQxy3coW8g5mh+UrxP00WVhXjIvl//j0s0irpNG51bsSvS0zfBm0oaV3vfy75DB
         dCweXy+6tCWDyIHVmsaWoIuCKlwGdvmRVGGaJ1/sfxateEkTOdmv0eaCZs0Rr4mVTWVH
         fblA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id r6si114668lji.4.2020.09.30.18.12.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 18:12:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kNn9C-00Gzft-OE; Thu, 01 Oct 2020 03:12:38 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: netdev <netdev@vger.kernel.org>
Cc: David Miller <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Rohit Maheshwari <rohitm@chelsio.com>,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH net-next v2 1/2] Makefile.extrawarn: Add symbol for W=1 warnings for today
Date: Thu,  1 Oct 2020 03:12:31 +0200
Message-Id: <20201001011232.4050282-2-andrew@lunn.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201001011232.4050282-1-andrew@lunn.ch>
References: <20201001011232.4050282-1-andrew@lunn.ch>
MIME-Version: 1.0
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

There is a movement to try to make more and more of /drivers W=1
clean. But it will only stay clean if new warnings are quickly
detected and fixed, ideally by the developer adding the new code.

To allow subdirectories to sign up to being W=1 clean for a given
definition of W=1, export the current set of additional compile flags
using the symbol KBUILD_CFLAGS_W1_20200930. Subdirectory Makefiles can
then use:

subdir-ccflags-y := $(KBUILD_CFLAGS_W1_20200930)

To indicate they want to W=1 warnings as defined on 20200930.

Additional warnings can be added to the W=1 definition. This will not
affect KBUILD_CFLAGS_W1_20200930 and hence no additional warnings will
start appearing unless W=1 is actually added to the command
line. Developers can then take their time to fix any new W=1 warnings,
and then update to the latest KBUILD_CFLAGS_W1_<DATESTAMP> symbol.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 scripts/Makefile.extrawarn | 34 ++++++++++++++++++----------------
 1 file changed, 18 insertions(+), 16 deletions(-)

diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index 95e4cdb94fe9..957dca35ae3e 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -20,24 +20,26 @@ export KBUILD_EXTRA_WARN
 #
 # W=1 - warnings which may be relevant and do not occur too often
 #
-ifneq ($(findstring 1, $(KBUILD_EXTRA_WARN)),)
-
-KBUILD_CFLAGS += -Wextra -Wunused -Wno-unused-parameter
-KBUILD_CFLAGS += -Wmissing-declarations
-KBUILD_CFLAGS += -Wmissing-format-attribute
-KBUILD_CFLAGS += -Wmissing-prototypes
-KBUILD_CFLAGS += -Wold-style-definition
-KBUILD_CFLAGS += -Wmissing-include-dirs
-KBUILD_CFLAGS += $(call cc-option, -Wunused-but-set-variable)
-KBUILD_CFLAGS += $(call cc-option, -Wunused-const-variable)
-KBUILD_CFLAGS += $(call cc-option, -Wpacked-not-aligned)
-KBUILD_CFLAGS += $(call cc-option, -Wstringop-truncation)
+KBUILD_CFLAGS_W1_20200930 += -Wextra -Wunused -Wno-unused-parameter
+KBUILD_CFLAGS_W1_20200930 += -Wmissing-declarations
+KBUILD_CFLAGS_W1_20200930 += -Wmissing-format-attribute
+KBUILD_CFLAGS_W1_20200930 += -Wmissing-prototypes
+KBUILD_CFLAGS_W1_20200930 += -Wold-style-definition
+KBUILD_CFLAGS_W1_20200930 += -Wmissing-include-dirs
+KBUILD_CFLAGS_W1_20200930 += $(call cc-option, -Wunused-but-set-variable)
+KBUILD_CFLAGS_W1_20200930 += $(call cc-option, -Wunused-const-variable)
+KBUILD_CFLAGS_W1_20200930 += $(call cc-option, -Wpacked-not-aligned)
+KBUILD_CFLAGS_W1_20200930 += $(call cc-option, -Wstringop-truncation)
 # The following turn off the warnings enabled by -Wextra
-KBUILD_CFLAGS += -Wno-missing-field-initializers
-KBUILD_CFLAGS += -Wno-sign-compare
-KBUILD_CFLAGS += -Wno-type-limits
+KBUILD_CFLAGS_W1_20200930 += -Wno-missing-field-initializers
+KBUILD_CFLAGS_W1_20200930 += -Wno-sign-compare
+KBUILD_CFLAGS_W1_20200930 += -Wno-type-limits
+
+export KBUILD_CFLAGS_W1_20200930
+
+ifneq ($(findstring 1, $(KBUILD_EXTRA_WARN)),)
 
-KBUILD_CPPFLAGS += -DKBUILD_EXTRA_WARN1
+KBUILD_CPPFLAGS += $(KBUILD_CFLAGS_W1_20200930) -DKBUILD_EXTRA_WARN1
 
 else
 
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201001011232.4050282-2-andrew%40lunn.ch.
