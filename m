Return-Path: <clang-built-linux+bncBAABB24I6HZQKGQEQDJISOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B14D619383E
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 06:58:04 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id e140sf5126298ybb.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 22:58:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585202283; cv=pass;
        d=google.com; s=arc-20160816;
        b=NiEmf5nwBRaiznWlidAbH2caJc3xMoMckyH9QC4AnI+/DEXM0m+plQeGgHDFsXCyqf
         BgtSUtNN/BNMcPeHmKZIcEO0Ir9n0/8hZJ49a8RHkkPY+8xDajlFEx1GScvaM3GyTGXk
         x1zRNXhInDoPUuE7/5I/fHN1QjAUky7g5TyVIa8CT7I8IZq6vDZ3iv7W78iWo7X7MPDY
         Drm+f9WTgm5aXkocvLQJkBA1PkRM8Yft7A7QzLHRP0RZoY8wgTTEcxf7j+Gu5JfOe/TA
         r9MzFyOYLf8hf+WH8ULwyAe+7UZG6ZhXpFEwPqYtGFtvgGMCm/a+DZi8l2YELk8YF9+m
         VbFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=01gRndVhnSEYVssd/wQNzLLxdXNIDjLVAO3nC+YcevY=;
        b=iHFuslWF/lxUpffKqmb6olCH3lE5oAW3UftvJ4pSJxiXkbITf4QCg3JenLanPHu06S
         Z/xhgHU411sS6J7oKEDct9Jzx9b1E1eYCmbQtHRSlRPenGWzPOIC6bEmMsJF5ASolu2z
         x4DJlyOgO8a2LfOcI7+LGdyXOccGuBfvExmzhSfVrSL0HqkWWkzw3HXm8I5/Fkg1JpBl
         EYgc/+PNLkv3kGiHMeknxyBv8xKGvB7rvX9dg31H6EvlBfhxkFRb2JRVbJIRae52w2qG
         lRAVSQNqz9aPD5WcZce8PWoxWnRdR/f1Wiyv+u2DI2lsVN3mzDC2oztOE3eBtTqwzG4l
         pLFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=F+31nJQ4;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=01gRndVhnSEYVssd/wQNzLLxdXNIDjLVAO3nC+YcevY=;
        b=ACSGCEY41u4QH6GUE0o4neq0vQ1rwR0wTnbvr2o1DdJF806GOY39jrGF5l8E6KVJYE
         j902RfMtQF/Q2rOUfLu0/69nbJkRmjy7NCRuweCLo27Skun8zyIdDa6aF2b+U/KaRjw5
         RjHFRsWiQ9vlkzdZjqOwMsUg4/yL6i2+hmSNbLL5BZXtX/m0TEtwfLZY+IcGznNb7IA0
         PbeJAPZtbHfPcTnqpb1vz0WK/cjGNW9scJ8BDyJNtoRTM5u8s5YLIF9jh1eyg64F9xLL
         4GaTjH1nIqgdDQAIlkUsUQM/afU9Z3BmAVEV3W3uVsORvqPEmmEr2Ocil1qA5fDngpGa
         KT8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=01gRndVhnSEYVssd/wQNzLLxdXNIDjLVAO3nC+YcevY=;
        b=FoZTLkSLx3pQqXaw7Qs1sxF5xl5nre2n8IqUCFW/pLBpAJUvt3JSoUC3epSN8gl0EA
         1S4Dzl/kYQcY4jGjg9JYXpwaUiSnazwpWpN2dQVpe/AbS95g2nUFZcO5/3IrKcOfp2bj
         wQ9t09906uH9WgxuKNUW6D7vGSsOpEB7RISdXwpY8MQhK/7dMNbBwJ8XnPusWy9MpfKi
         zhaar94PZMUoYesxps5T0SNH/oJqVE7KsbQRaeVuPrM2qwOiUVwflaHVEb+zeQRCkJ+Y
         nbMjFfdVhk5+oNew5rh/3fHiPy6L+hfsrtq5+yWasAGOk7BK0NylfLmxL/iN3bdvHke0
         98Sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1dqBUnyJVQ3H6+OioBL3Lglm7x7v14RCHn5txyzOjPaUbqxkTh
	xvYY3Zp8RL2IWprgZZIYFX8=
X-Google-Smtp-Source: ADFU+vvbSKOEurD1z8DU8QvlaJETt2ukKSnHOoSUMfJW7AZSVQlfb8wR4/fl7DT/19EXVm5GEa3CRA==
X-Received: by 2002:a25:2486:: with SMTP id k128mr11446040ybk.76.1585202283724;
        Wed, 25 Mar 2020 22:58:03 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e00d:: with SMTP id x13ls1727001ybg.7.gmail; Wed, 25 Mar
 2020 22:58:03 -0700 (PDT)
X-Received: by 2002:a25:3187:: with SMTP id x129mr11645852ybx.397.1585202283334;
        Wed, 25 Mar 2020 22:58:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585202283; cv=none;
        d=google.com; s=arc-20160816;
        b=wKgQb6Z+/Jd4PvKQ92m+de2jDQPAKjtftYvnd4PXbEXprPfvHQ5Ll3JtelP1X0h/oD
         NymCmv7ch0Waz24xttg04j92STUMKXUd+T9Rd8cWgvKIe2Ea8a17S3LD3OkT672XSBjk
         G34tuq7GvfSaJna0P7H3usCOkxFifHoLeROHMC/Aq91hGOj6tMOyKRWg17s37tF3Q04A
         dHeWbJhwhRvW4bLp+wawU+ulGx1yqm4ZMDiwT26EQeJD6gyFUCeGbNrB2IWDWHd8Z3ks
         GVahZke5xgSibyYmogQrks4oh+en5wCO7XCoJ0TCfsqgjcbB/6XU9Z+UGc68o/DZMTbg
         tVwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=dX+mdRt8kcID48UqORTUMY5bdsGeWZDwRFh1lk4J+OY=;
        b=TGxizGfkufNzGF8sNTc2s1jYkbHExgFla2Wr3vqqNJATGJFq/RDq5gVC6/Z/it90bo
         8J8epZxGKSp/jYs9KeDb8xPBjNjxwJsLLrP9utAM5HQAJAyWcH1PTg9i/tHQZXMq7qcS
         ow3m9JM/FIrb2nNSwYlhi5PBd4NeENLOtmXWo1WpJdChXxID3ZS5L4KFqvCpQahGQ2tO
         4nSQpdAajDduAtMbsC+yChCfsTRt2UTylsrLphFvzbnktTB768gkZ53Iy5FzeiajXy8d
         BIgh6lkSrEZdYUvCnZf9Bp48OPieNur91ib1oPoSbBmPqtoSMfuTHKZe6Geb0qOoksz0
         +X9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=F+31nJQ4;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id l1si65858ybt.2.2020.03.25.22.58.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 22:58:03 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 02Q5ve94008573;
	Thu, 26 Mar 2020 14:57:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 02Q5ve94008573
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org
Subject: [PATCH v2 1/4] net: wan: wanxl: use allow to pass CROSS_COMPILE_M68k for rebuilding firmware
Date: Thu, 26 Mar 2020 14:57:15 +0900
Message-Id: <20200326055719.16755-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=F+31nJQ4;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

As far as I understood from the Kconfig help text, this build rule is
used to rebuild the driver firmware, which runs on an old m68k-based
chip. So, you need m68k tools for the firmware rebuild.

wanxl.c is a PCI driver, but CONFIG_M68K does not select CONFIG_HAVE_PCI.
So, you cannot enable CONFIG_WANXL_BUILD_FIRMWARE for ARCH=m68k. In other
words, ifeq ($(ARCH),m68k) is false here.

I am keeping the dead code for now, but rebuilding the firmware requires
'as68k' and 'ld68k', which I do not have in hand.

Instead, the kernel.org m68k GCC [1] successfully built it.

Allowing a user to pass in CROSS_COMPILE_M68K= is handier.

[1] https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/x86_64/9.2.0/x86_64-gcc-9.2.0-nolibc-m68k-linux.tar.xz

Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
  - New patch

 drivers/net/wan/Kconfig  |  2 +-
 drivers/net/wan/Makefile | 12 ++++++------
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/wan/Kconfig b/drivers/net/wan/Kconfig
index 4530840e15ef..dbc0e3f7a3e2 100644
--- a/drivers/net/wan/Kconfig
+++ b/drivers/net/wan/Kconfig
@@ -200,7 +200,7 @@ config WANXL_BUILD_FIRMWARE
 	depends on WANXL && !PREVENT_FIRMWARE_BUILD
 	help
 	  Allows you to rebuild firmware run by the QUICC processor.
-	  It requires as68k, ld68k and hexdump programs.
+	  It requires m68k toolchains and hexdump programs.
 
 	  You should never need this option, say N.
 
diff --git a/drivers/net/wan/Makefile b/drivers/net/wan/Makefile
index 701f5d2fe3b6..995277c657a1 100644
--- a/drivers/net/wan/Makefile
+++ b/drivers/net/wan/Makefile
@@ -40,17 +40,17 @@ $(obj)/wanxl.o:	$(obj)/wanxlfw.inc
 
 ifeq ($(CONFIG_WANXL_BUILD_FIRMWARE),y)
 ifeq ($(ARCH),m68k)
-  AS68K = $(AS)
-  LD68K = $(LD)
+  M68KAS = $(AS)
+  M68KLD = $(LD)
 else
-  AS68K = as68k
-  LD68K = ld68k
+  M68KAS = $(CROSS_COMPILE_M68K)as
+  M68KLD = $(CROSS_COMPILE_M68K)ld
 endif
 
 quiet_cmd_build_wanxlfw = BLD FW  $@
       cmd_build_wanxlfw = \
-	$(CPP) -D__ASSEMBLY__ -Wp,-MD,$(depfile) -I$(srctree)/include/uapi $< | $(AS68K) -m68360 -o $(obj)/wanxlfw.o; \
-	$(LD68K) --oformat binary -Ttext 0x1000 $(obj)/wanxlfw.o -o $(obj)/wanxlfw.bin; \
+	$(CPP) -D__ASSEMBLY__ -Wp,-MD,$(depfile) -I$(srctree)/include/uapi $< | $(M68KAS) -m68360 -o $(obj)/wanxlfw.o; \
+	$(M68KLD) --oformat binary -Ttext 0x1000 $(obj)/wanxlfw.o -o $(obj)/wanxlfw.bin; \
 	hexdump -ve '"\n" 16/1 "0x%02X,"' $(obj)/wanxlfw.bin | sed 's/0x  ,//g;1s/^/static const u8 firmware[]={/;$$s/,$$/\n};\n/' >$(obj)/wanxlfw.inc; \
 	rm -f $(obj)/wanxlfw.bin $(obj)/wanxlfw.o
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326055719.16755-1-masahiroy%40kernel.org.
