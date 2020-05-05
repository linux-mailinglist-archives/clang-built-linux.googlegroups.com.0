Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBXPEYX2QKGQEX77AL2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D06B1C57E1
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:04:13 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id t62sf1113917wma.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:04:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588687453; cv=pass;
        d=google.com; s=arc-20160816;
        b=u4LOx31U6RivjoXvgKTMUhSC92TePLot4AI3sY3Q3p+2rwhyAfqmf3WbNezDySTRj1
         VxzK5ZuaKHimamcNU7yppC9sk3ZdXMmpzY7Vg7BnLe1eEfTb4IAXSytXL0vHxcjSLlYp
         Rrp/E6o8KCmtoDCzPla6XHZrLhXXb+vMRKgRMeHxmr7zP2FLk9PPP+lR8nDdZhY8RyXv
         xgzue4ZVCQP7IINKSVZomvg7euCCci/nsEdLfFwaWHwp8u/GxoQuvnJD2507uN/blA/l
         wXVBcLEsEB9wBSyin515tzqFGmSBPn97cgsiMJ5sTW8X0bh9p7JVzasP+qb3e7NydZqV
         loag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=+6TdeaHqBGSLGc56d7LOnz0T+vTmkAlmPC6dAJ58o3g=;
        b=Wd732wO32j9BXN+CCKcoo+x+d7iwZiaHM41bYv5CBkdQ3pep/2zQOiUGnQs2cWXpJo
         fSb0DeUgZIbBZa45kr0ePc4HS8691hqpJSRyYyPP4hUd7ODWb+xIrKAxj4RKx/B1LEk+
         EmP3hNxs9o+Ao8gsUUlJKZPpIg/PIqKQRs86mJPF2b9KC3kY01F7APnXto0B7fZ4NpXY
         GIPa2dWi1eMsU3+oqAY8DKXY3kaQMWmrwY7dtaC3qMEou1hW48o9TzpoX6J41N9m3q2r
         X+jfmw6jXam8Do/ca0B6Ei6Uti+fwiLRQpQriYy4SA+OCgZp1rU3Fe6ISRk9GTDoAy8K
         IU7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+6TdeaHqBGSLGc56d7LOnz0T+vTmkAlmPC6dAJ58o3g=;
        b=gqn+MugOeVjN8epveayPkwr9qP3yZ6uEM1DKDs36DrIDapFRaBcx6Pe0Z6GbuI4IcM
         VW3w6yFr/8ir5thPbqJNR4vjUfXX3SgyUCPaMTxk7OZhsg37DJl556AX1ywGWjMqksYC
         0H/TZFtNLDdHCXq2Yd60jsiXDnACIwiJvJS29W1i/hiozaMZq1DzLv5EwBvMpdRG2j/Z
         VthWTYIgn4vxOLoouc4u9n/t1GZ/a7kvBO56GOcAtljg6VhhBPh/noR0P5pIB579055a
         e2tTl6VphkzaVztgUGWqdeV63cWT8Z+JBfQYTTAC0rZKyVK33qsH2za6QrVx0Mc8Zw1A
         3Urg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+6TdeaHqBGSLGc56d7LOnz0T+vTmkAlmPC6dAJ58o3g=;
        b=Yev6MZ1L/Hj8hFEGuFx3WPgTgOlZTBgCkPVDHFQyrYwbpEumEzH3bv5rGUtxY0UxAZ
         KTLpdsfaKDC0tPwOsNz7hS9tUGRuZLaUswgsJZkUDZSfzz/HvUy1/WKWiVC4UxySOqFP
         KEnC34iC+mAAM1RCVcynOajIXn6QMNtHKtSIizeC97cdPHWMrfwdHPWtXz1zPkNwwP2v
         7+FqPAKxEsKLSGGiQh6R7xXYL+qbe1ewQqBBd4UjXdLThV4vzzc2CFij+4C2BPwUHX2t
         W1BRzzzOWxtTO4hHZDUI+NLuVVEZxmXrLdncflstkrQEE9toYegWOK4WfHYYR9mhFqO2
         Vp7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pubk1wOCe6hxZXLO1VQ/sMs2/OOqdF4dJMv+9nl++AiZwAcVammK
	Hiww8UxqakBRCUi4Kui715U=
X-Google-Smtp-Source: APiQypLVjWyAl5dpdn/uv/jU1Hpm7GsaQtYWU9PocQwoYvlhwtKJZN51XVyUzgAEecmEw+5zv9yxSQ==
X-Received: by 2002:a5d:4a8c:: with SMTP id o12mr3897857wrq.222.1588687453288;
        Tue, 05 May 2020 07:04:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db47:: with SMTP id f7ls3566671wrj.8.gmail; Tue, 05 May
 2020 07:04:12 -0700 (PDT)
X-Received: by 2002:a5d:4905:: with SMTP id x5mr4367289wrq.158.1588687452791;
        Tue, 05 May 2020 07:04:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588687452; cv=none;
        d=google.com; s=arc-20160816;
        b=RjPrU7FVuGIv9h3yAmKjJ00RG5VRHXOnD5nRod3peci9h9GMXNIc7zLQ+Ms/VRYLlN
         Uj/8VqHzEqWVyiBKIvuYUiYnFrmI2QXv4wZqm5QAT4OUx0O++0I7VathA7HesluE5bCv
         Gj8AzwJ91FJKjiVCrrYqqSTC6Vf3BUu0db7/42nEhbZL2tYdMBGM/TMdWHdQxTZabeTj
         eV1fu9HU2FF//mPNSx06vtb4Qbpgrl6FkVfbhzy5f3LWi6GWPbISB5NGOt0UAl3hzFxw
         btVOMjI6YYSjH1Wp6x3h5A6JQRtgQUT+AgFuwG5F/DHuTpCB5wYYHEReMluUUyYo7sSz
         9WeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=9c1PvMP0qWZIwLNFw4uTny3dpAn1MkekFWUuX8plH7U=;
        b=NLICw5G3LUdkXbS/OTJEbz4dF5w5pHuin7FmGM9NoXsG+heTpfAfJIqphmpZko8new
         aTGC4q1saWwyyqydK0sj8QhOv5/BAJcn3aFnc24voLau03juf/qPWFme0u/z90vFfm1T
         oyR6MG7PbXL5marxple/R7YSmT3eBLzFCjIGqMKrIsxr6a6jWZ+vKFw0/AWB0KE3ZxRd
         CIYvPoIwgE012QVxtGLMXPOiSqM1PQHXaBbj6xIeLwEnB1NHHweVef5BO8+7FRFbY+gW
         vYgsgpGf4Hkw1Okx8VJQZI6LoUYoJPMfcuJ9phIbYe+wqfAcSm2DxdHM8kMn1It7C7DR
         yGtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id u23si219688wmn.0.2020.05.05.07.04.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 07:04:12 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Md6AP-1ixBSU2MgF-00aDyq; Tue, 05 May 2020 16:04:09 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
	Marco Elver <elver@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Allison Randal <allison@lohutok.net>,
	Alexios Zavras <alexios.zavras@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Enrico Weigelt <info@metux.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	linux-omap@vger.kernel.org,
	linux-fbdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] omapfb: don't annotate dss_conv_list as __initdata
Date: Tue,  5 May 2020 16:03:52 +0200
Message-Id: <20200505140407.373983-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:b7GTK4JxzyLmn2gIsYhgbVf/xIlBzgBQDzJn6IhgPioBvsvScLO
 hkBobGOJ16kEh5G53aN++eiN7fEy2+8WNjNT2oAAh+pto0naL3H5RGdPuiPGftRLYE+WWk6
 AARHIaGwYWpgUPXoaHmYhwOoJNFWjRb9NvVIVNJ1vaGDXFt+mHz9QyUnAZl6/+oWiMZPV/U
 jTlT9OnyODlD3fxIq7spw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kJXlH+hW/RM=:GF6iW7yf/Pyctg3y13GUV2
 FqaS5odzEtD72BBRKOElhcz2U29q1LNd/0g9U9cvxHcoGNelA0e2X+cWbz9NoPViSRltONkbm
 LGFE+3SZlqFaNTw6HHnzmjvCuCr0ZCnNxcORk1uAX+Sey3pNmJg2E4YT1mR7/HMrhT54dR9ts
 J4X5/BFzLGeko86ZgOn9pIDklBlnCoK6I5TjvbVjBYP1n6iO1zpOuv4DVRQ1XIdvqm0Afyx6Q
 NN9DNF/UxpQnwNk6AxRh+ZAYljaQMy6P/nNk8rSnCKfInuMJvpLLRlzTGRQfwwH51hZ/qH6kJ
 GVRF5EJgFdrY/GmQxvz7qdg6pZRs5bnMigu8+zm028MNOcJmaGY7EZp4KW1fS8JHoRa1b7FKg
 zag7CBsFaMmPV22qZvJdIIDm0wl5M6BqnQYGxLhrc2Rr0CPFRbHNQ5IGfXehZbjPhZ9hfKqwJ
 B6HdayRKMOpYvsMoivRxljBAGW8MRnMNWtuWKgjAFTdWacPd9pqEdzEJv4rZXVo2ufbp//ZUb
 gHYy4n7XY5GyijCSW9fVbHqO7dYRzg84I3dRveYdKcWxkUqz4Hc6HXFkPgmW9DRysy9glOIZp
 D0GqunN4gpNaJQYpfCS7+U+LA4mR4UiyESvK+5oVfVIB+uAVYMijAw1/n2v5iEGvZfAD9ejp5
 La0lZdiWAcQSxK+M/9XNjltEvLvOA3ImAHOawsmGo4wRlXMTXm/6Q4nTx48oalue2KSKvBOuj
 0yjErUk/kCOrAMj0XMFmXosWZZFAbd/GbAaeFNtG3GQw0Y/IqMaFg9Slu2BZtppe+LVNj9Vb2
 BAdW/soKwj4RV9o1kG+AcGs+1G+ryxdeSkhmSUU9+eHuQkZ5uY=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.10 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

With the kcsan changes, __read_once_size() is not inlined, but
clang can decide to emit a version that hardcodes the address, which
in turn triggers a warning for dss_conv_list being __initdata but
__read_once_size() not being __init:

WARNING: modpost: vmlinux.o(.text+0x6e4d7a): Section mismatch in
reference from the function __read_once_size() to the variable
.init.data:dss_conv_list
The function __read_once_size() references
the variable __initdata dss_conv_list.
This is often because __read_once_size lacks a __initdata
annotation or the annotation of dss_conv_list is wrong.

This is clearly a false positive warning, but it's hard to tell
who is to blame for it. Work around it by removing the __initdata
annotation, wasting the space of two pointers in return for getting
rid of the warning.

Fixes: dfd402a4c4ba ("kcsan: Add Kernel Concurrency Sanitizer infrastructure")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/video/fbdev/omap2/omapfb/dss/omapdss-boot-init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/fbdev/omap2/omapfb/dss/omapdss-boot-init.c b/drivers/video/fbdev/omap2/omapfb/dss/omapdss-boot-init.c
index 0ae0cab252d3..29fdff9c95f6 100644
--- a/drivers/video/fbdev/omap2/omapfb/dss/omapdss-boot-init.c
+++ b/drivers/video/fbdev/omap2/omapfb/dss/omapdss-boot-init.c
@@ -19,7 +19,7 @@
 #include <linux/slab.h>
 #include <linux/list.h>
 
-static struct list_head dss_conv_list __initdata;
+static struct list_head dss_conv_list;
 
 static const char prefix[] __initconst = "omapdss,";
 
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505140407.373983-1-arnd%40arndb.de.
