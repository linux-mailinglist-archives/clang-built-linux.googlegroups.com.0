Return-Path: <clang-built-linux+bncBAABB24I6HZQKGQEQDJISOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 8637319383C
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 06:58:04 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id v198sf3936169oia.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 22:58:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585202283; cv=pass;
        d=google.com; s=arc-20160816;
        b=zjVi+YEAGqAhR+bxblPJ14FsRLmpdR3dBqMrMc6mKbR+IKkBblSwnin1oiZkqaYpOU
         6W9eHe4l/sfh3TtPI+qIYou/C1KfzT0eAgGMQ22bgmMt5FMtOCKQmAvLVuP4qKOupfrq
         w2u+7dVx8elL3U/eguiya00y9tIIBzD6aItYIAR3+pogYhwZTYHGQO8zzIAaEVUc8CUY
         TjkaFYHrTbClgKD3SERrzxZ0Gbz/Ha2zxG7nLBP8oJZ1ci3W28LS5V3nejqCCWdyR1LV
         ssP9RA5lDZPVXOHgef3J0DrcYS5e0JTGfeXNNpXHfQXpYSJpjIOSh4c1BwpPYbSoUKWB
         qZiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=9byi/ii/4XQlbP7OqBl5m98rvuCepNUy9KtS3nEfWSU=;
        b=BNis5ECc3pyH2PDMlgPUN8cYK29qhDbvlXFXduRIOnwyw2+EssRKctMWwzHbH+22c5
         Zt886xKRBGTU0gtA1/8LzEyBkvzJYo2ET2K6gunauAHzTx7cZbO/uhZuSnWS/QvOO55I
         628rrggA46sSbx86GFKQIDusRyPK9S72Y7blovvmlEFsP4JXWg821o8c8Y+avcpthrBV
         eeIedmr/Im9IwffvGMdjbXasNtNya8mJfuXsSnngeN+9uoY+wiclk00NScGT79x4An9b
         dyS7nIh8yPmX1jA8WVhnk2odMmij3657OTOhrNu9WkUTgIiMZXeWAtgOBwUPZZzh3SdG
         oq+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=s6p2A1sH;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9byi/ii/4XQlbP7OqBl5m98rvuCepNUy9KtS3nEfWSU=;
        b=X74nk6HgPGDGm40K3LflgebF0U06N1fz6n+KUvD1sH+wzMQyxJO6VLX6KWokcarhaP
         2MIvj8wd26+r+Yi3rfgFOLY/Lld6PXMTrlNQy81mFJZnp7tVClgUbnFL8qxjGnccDtij
         glcafVtmJeLP6ywl6H+hNeoSD/k9c1xzsKGeFRbai3Y2j1upSaR+ESYdtlthRtGvOywS
         C3WJUTzQLIGMI7p5e85x82frmfbmxE90jVH44KS2JNipALaFnm5D/DGPKSzwsn1viaQc
         D9CrIannf57Xo7QS8NylcqKPnh27zEkyfC0D5bf7AgRhheChAHtY/Oqc+JXYGITMHmy0
         HGCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9byi/ii/4XQlbP7OqBl5m98rvuCepNUy9KtS3nEfWSU=;
        b=FE0iv9DE+qCY24fFETa28/vCV7COd2+a3ADG/eetWQIjf/rMXAlfnlnSxjsT/F3CKL
         lyfaD5qinIPWL13o8rPpT+XWExK486UQYirW0iYLbPMGtMJkCidOtfNmPwrVQOrS1gVH
         /QIusIQZ3zrouWI9pRKaR/uUyEiW2ilKjbbIURntpobIkLe1d5tEYXwC1IsnnXBNNTdF
         X2Vk4lNo5Gu3ZcCg4ApYYvei0GWhSHWaD2XMMMfoh4KWMagQHX3zyRgT/PljVx4hscID
         7zTCz8/uagIaitl0+EcMeYh1bSaPEt6JlHDDdJm+t1OzMUIWtFTc7wFex5DI9mavscSB
         AaiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0sayF6zPcnl5DKJ35GDa0t1rmRZ+kCG0/7axXA8VaMOYwNcPsj
	fKRe9ASOC2VJIq2rxezYVAQ=
X-Google-Smtp-Source: ADFU+vuZY+xo81L5wAWiqmzlRj++cZGIuntUx8BsOF4G1jxPCQEajLSdZseIRS5FvAl+A0R9HmG70A==
X-Received: by 2002:aca:5403:: with SMTP id i3mr781621oib.174.1585202283161;
        Wed, 25 Mar 2020 22:58:03 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3089:: with SMTP id f9ls1715096ots.0.gmail; Wed, 25
 Mar 2020 22:58:02 -0700 (PDT)
X-Received: by 2002:a05:6830:19ee:: with SMTP id t14mr5441661ott.287.1585202282767;
        Wed, 25 Mar 2020 22:58:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585202282; cv=none;
        d=google.com; s=arc-20160816;
        b=wInEsdxPO19C+71VS2FPBPpBtvvU3ltfA4iaomf4FVQlXZa/8zC5VrrG0b8tbwl3CP
         QFvMgrIJeRDHgzzGx6OZGWv3X75XFLrrmm+LoWhCEEYBmoi9u/k4vIgM/Iifk/JdB1D2
         JFCpPKReW112aUf8sISD3oCwp56Q5T/VvVdu6njwjM1qZcEAdbBdLo+xpCFNGq/3d6nN
         bLgXhC3G4FatODa4u4+jjG8awdfEQWmo/8S9S2ezIeyS9rL2YqUCMN9JNtnel8bcJLoX
         tQUih/JTnOdn1xMTCN7KkyPdEyRWmrInjRsVHfBMyYVNeNTrWhA8MUdC09WXsXm2d7bt
         KgFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=2uTOiFNH4QFbkxz4iV+NRyMxIQi1X//IkZ1ebTA/LHU=;
        b=rGJjP9m0ndtKe7dBbwt+QSDTi3UvM9AYebIaANs47NfpfiXHxgHQ9BnX5mRTOgZ68a
         fdTTrhWXaia1Oytadde6FKE8Y6bCDWUi1mqSiUjw5/OeVV7tbWt7w1YK2H5qgyJzFbGa
         xST1NsamjhYDwa+73x/sXFEKeVtjPDJOCfhhnPxF0HUMd4Bbnq8zzrySvQCVpsb6etUJ
         ZEtaasJo2PJrxaJKmzJAPcrKEjPNnvLzfSHUDGQJufIkWXjSrpXmCEiC2q5yazUX/gqW
         m0sbeYi9z2q9DHG0BPSbIdtgoQAdAXtL8T+s27ynzZWgd6X7jQFRA5VG5hDvdQa8aFxl
         2Tcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=s6p2A1sH;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id t81si107856oie.5.2020.03.25.22.58.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 22:58:02 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 02Q5ve95008573;
	Thu, 26 Mar 2020 14:57:41 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 02Q5ve95008573
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org
Subject: [PATCH v2 2/4] net: wan: wanxl: use $(M68KCC) instead of $(M68KAS) for rebuilding firmware
Date: Thu, 26 Mar 2020 14:57:16 +0900
Message-Id: <20200326055719.16755-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326055719.16755-1-masahiroy@kernel.org>
References: <20200326055719.16755-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=s6p2A1sH;       spf=softfail
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

The firmware source, wanxlfw.S, is currently compiled by the combo of
$(CPP) and $(M68KAS). This is not what we usually do for compiling *.S
files. In fact, this Makefile is the only user of $(AS) in the kernel
build.

Instead of combining $(CPP) and (AS) from different tool sets, using
$(M68KCC) as an assembler driver is simpler, and saner.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2: None

 drivers/net/wan/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wan/Makefile b/drivers/net/wan/Makefile
index 995277c657a1..cf7a0a65aae8 100644
--- a/drivers/net/wan/Makefile
+++ b/drivers/net/wan/Makefile
@@ -40,16 +40,16 @@ $(obj)/wanxl.o:	$(obj)/wanxlfw.inc
 
 ifeq ($(CONFIG_WANXL_BUILD_FIRMWARE),y)
 ifeq ($(ARCH),m68k)
-  M68KAS = $(AS)
+  M68KCC = $(CC)
   M68KLD = $(LD)
 else
-  M68KAS = $(CROSS_COMPILE_M68K)as
+  M68KCC = $(CROSS_COMPILE_M68K)gcc
   M68KLD = $(CROSS_COMPILE_M68K)ld
 endif
 
 quiet_cmd_build_wanxlfw = BLD FW  $@
       cmd_build_wanxlfw = \
-	$(CPP) -D__ASSEMBLY__ -Wp,-MD,$(depfile) -I$(srctree)/include/uapi $< | $(M68KAS) -m68360 -o $(obj)/wanxlfw.o; \
+	$(M68KCC) -D__ASSEMBLY__ -Wp,-MD,$(depfile) -I$(srctree)/include/uapi -c -o $(obj)/wanxlfw.o $<; \
 	$(M68KLD) --oformat binary -Ttext 0x1000 $(obj)/wanxlfw.o -o $(obj)/wanxlfw.bin; \
 	hexdump -ve '"\n" 16/1 "0x%02X,"' $(obj)/wanxlfw.bin | sed 's/0x  ,//g;1s/^/static const u8 firmware[]={/;$$s/,$$/\n};\n/' >$(obj)/wanxlfw.inc; \
 	rm -f $(obj)/wanxlfw.bin $(obj)/wanxlfw.o
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326055719.16755-2-masahiroy%40kernel.org.
