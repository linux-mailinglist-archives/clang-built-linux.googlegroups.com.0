Return-Path: <clang-built-linux+bncBAABB24I6HZQKGQEQDJISOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 735BA19383B
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 06:58:04 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id d2sf1951846uak.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 22:58:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585202283; cv=pass;
        d=google.com; s=arc-20160816;
        b=wywmeZ+Ez7SijoSGWsysMkalSmq9xc9SLUePLIgJPrB2iPWBNZqqjGCf71qBJaS7sY
         xdZVKCaBUThAWhMbzguMcFw1eRaW+MJ4XrR8J+/I+efPWV4+eq62WPXtIKjaRw9Xe5Pw
         cOOGlMJ1nxg/FqEFXkhJiIoRGrWY8lSLc485epsS5gdKO66qDTbpG33lyw0VwwT2Xrdl
         vJ8hD63WPy0mGE9HcW06Pbw92t7mrYlWyArQsx0I3THsU4Q9xuwXfg/I4uGCmi6Jq3qD
         Hzdh+7amb5KafQXq2JInBSOaJrBwlWTPnp5GOg3u+XtXcyY7yFiD5/6KE56P/8yGCL+K
         vnrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=zl5c9uZEcFrTf2wUddOxGKilpfCbvmDAUo+Js4oGBIM=;
        b=VI4c14zYuQYz4d+pu4y3tfXn3je6UEy04g1pK3LD/7p3w7uoHrQbMItoOTntYK5DM+
         3PgYGVjmcn9asJTjwAwrSxAYv2IgeLD9ZUKqb7QvVQFF+YFc4Pbejq8givEMPMYJP5t4
         WyVQlLM3X1XIeC8GVPO0wdCSdeB8dD2y7TqQUmtzdhX/V6i1rWl21yAQYhPRabHBlu6O
         crh26kjijtewxAp5bXxdMHkpkOwTYh1yeqq+O6x+RO/5aktfCDyOIdIG4AM8pbgLDmSi
         g/+NdvOcDI7dR2JErELW9tO2UHjcgOODFMHkiIT6EW6aWf77XtkMZ2hzXDfNPxZ8y4xc
         xGmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=0npEybbV;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zl5c9uZEcFrTf2wUddOxGKilpfCbvmDAUo+Js4oGBIM=;
        b=KsoEyfuSmathRdJ/vnfMZvfLbSGwDVZGFFNkgHVX2S3HUs+mLKxUAdP7r6PgTCiwIy
         +R03+ESFRnABuZGuXuwlcpPDrjcJEExKGG9f+FqIcxfbzXFNSSvvOBddpjPMhhvVGY7h
         DUVEdmknv7TxU+x2LYk4Z0PAxbxftw+8EZtsqvFljPo8xRJerKZzwlK6w+WpTdxxCNfS
         4DwQff0wJPvNtV87NGdDKFQQzjocAu4hOqqCwB3zHP7XRH/oPIwZVa4g8Ki1AnmNVRMM
         /Zh1/4Ji+iOFqR7SAONVq1gYwukc97iwHUFJIYuD+FlEFr+HldfY89HKYnNDYxC64b99
         4Pdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zl5c9uZEcFrTf2wUddOxGKilpfCbvmDAUo+Js4oGBIM=;
        b=fyN1/j+APOfdq+G+1Tcr1BgNTlhANCWSdqsDPfkijQ5cpiMvdjrgDOeDzW5sER1nXf
         xHLMiChoVSa/tB/5XzMZdO10INN5yxOVXkoWghnzOgs8yFAMWvheKQH6k3kd+bSBrS2i
         Qq//bWU79VjmyWNOdqsv0YCX9TuS0MrTzOJP5/lfYMoR/CoUoYkX197pES34xaH1bHL9
         sHpoBJw0ZG+ZUKNOtrArDS2axHe37gMT3kBgnc+HbdRiDvGplJzpN582wDXAC0xI8n6p
         ODVrOfrOz9q4L9NDD9/r5uKJRdhVWE3kGvyztMiqyGMGVQu5yRwJehczrbCtsQiJ+DBR
         efeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3abdNEEZSqHnQoLsUnEn54u3r6i8wyLvVcS6lpPnzIRbXFvuFR
	KGEBJqtj3Ij62QY3g1GRZ4o=
X-Google-Smtp-Source: ADFU+vtd9akl7FHSu3rmh0EZjNKssclorL12NW9JTt02hc/GFL36nbRif9u9+lEy+C093Qu+CdCoKg==
X-Received: by 2002:ab0:6204:: with SMTP id m4mr5252047uao.15.1585202283359;
        Wed, 25 Mar 2020 22:58:03 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a989:: with SMTP id s131ls252454vke.4.gmail; Wed, 25 Mar
 2020 22:58:03 -0700 (PDT)
X-Received: by 2002:a1f:9a08:: with SMTP id c8mr5185524vke.20.1585202282996;
        Wed, 25 Mar 2020 22:58:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585202282; cv=none;
        d=google.com; s=arc-20160816;
        b=XoLALv8Au3/gfTSNLJGA9apAoqMRi6sWvA29onAGIcvO2DphZDQTsziLGYcQvwxnoT
         Ln5fMDd5DBus1KY5zDpoRD5+fXNnIpA/w0vz2PnMt9sK1ifXFcAl+SgcKQ27u+hF2PKQ
         bQPBRWphKMnsHPTHZjSnmhLPHnhh221O1zaUoUwxiyqrbSIqsjHrDv6oKAEKllKyrAmX
         u5Z76YBIyewXGWWkm0za4/u7PPvxl0nVDhANgGl8iKzGEXPrNOEF17DfI3R1OzvAs51x
         964QBTiQ13LPItlFfB+k0ISqJa8qfU1++8iYUeENRgYsZcNUTrZyk8ZCL8DXuyEqP+4B
         +UuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=RjmAIJifJD5EjYLBPngifFMr8SyoOw1VRH4zJbCaW44=;
        b=k+VSWIP3jmaqQBSEL2YmTc8VBC7qNAbTbFE1QmFJPiINr8vlsKemhEpTF01Obr/eP3
         tdzxCxjdoqeOougdv7NIVbIXDR45lMIkwtWRHBChmRRn+WLwTR4+EUhoh8RZcsKK1v3/
         BJSGYVroXLQxxBXUK9u8Y8MtLR6wiw7/EuweRQmnKhzzO34PhNPnwi0fNSB+qUDFKGp8
         RaiAOnG/eAM+Ke1AQT4enZu7XDj31DQLYbV4rwpINlWbFZ9hRJnCLOb5KWh8XvcHC6Nr
         A4spTKwC6LkKOme1Lu9sboz/T2UZrScaAO1FOaPowm56/d94bUZ8cQCj44oxw4d5cBSp
         X9jA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=0npEybbV;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id k6si62405vso.1.2020.03.25.22.58.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 22:58:02 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 02Q5ve96008573;
	Thu, 26 Mar 2020 14:57:41 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 02Q5ve96008573
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org
Subject: [PATCH v2 3/4] net: wan: wanxl: refactor the firmware rebuild rule
Date: Thu, 26 Mar 2020 14:57:17 +0900
Message-Id: <20200326055719.16755-3-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326055719.16755-1-masahiroy@kernel.org>
References: <20200326055719.16755-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=0npEybbV;       spf=softfail
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

Split the big recipe into 3 stages, compile, link, and hexdump.

After this commit, the build log with CONFIG_WANXL_BUILD_FIRMWARE
will look like this:

  M68KAS  drivers/net/wan/wanxlfw.o
  M68KLD  drivers/net/wan/wanxlfw.bin
  BLDFW   drivers/net/wan/wanxlfw.inc
  CC [M]  drivers/net/wan/wanxl.o

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2: None

 drivers/net/wan/Makefile | 29 +++++++++++++++++++----------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/drivers/net/wan/Makefile b/drivers/net/wan/Makefile
index cf7a0a65aae8..380271a011e4 100644
--- a/drivers/net/wan/Makefile
+++ b/drivers/net/wan/Makefile
@@ -47,14 +47,23 @@ else
   M68KLD = $(CROSS_COMPILE_M68K)ld
 endif
 
-quiet_cmd_build_wanxlfw = BLD FW  $@
-      cmd_build_wanxlfw = \
-	$(M68KCC) -D__ASSEMBLY__ -Wp,-MD,$(depfile) -I$(srctree)/include/uapi -c -o $(obj)/wanxlfw.o $<; \
-	$(M68KLD) --oformat binary -Ttext 0x1000 $(obj)/wanxlfw.o -o $(obj)/wanxlfw.bin; \
-	hexdump -ve '"\n" 16/1 "0x%02X,"' $(obj)/wanxlfw.bin | sed 's/0x  ,//g;1s/^/static const u8 firmware[]={/;$$s/,$$/\n};\n/' >$(obj)/wanxlfw.inc; \
-	rm -f $(obj)/wanxlfw.bin $(obj)/wanxlfw.o
-
-$(obj)/wanxlfw.inc:	$(src)/wanxlfw.S
-	$(call if_changed_dep,build_wanxlfw)
-targets += wanxlfw.inc
+quiet_cmd_build_wanxlfw = BLDFW   $@
+      cmd_build_wanxlfw = hexdump -ve '"\n" 16/1 "0x%02X,"' $< | \
+	sed 's/0x  ,//g;1s/^/static const u8 firmware[]={/;$$s/,$$/\n};\n/' > $@
+
+$(obj)/wanxlfw.inc: $(obj)/wanxlfw.bin FORCE
+	$(call if_changed,build_wanxlfw)
+
+quiet_cmd_m68kld_bin_o = M68KLD  $@
+      cmd_m68kld_bin_o = $(M68KLD) --oformat binary -Ttext 0x1000 $< -o $@
+
+$(obj)/wanxlfw.bin: $(obj)/wanxlfw.o FORCE
+	$(call if_changed,m68kld_bin_o)
+
+quiet_cmd_m68kas_o_S = M68KAS  $@
+      cmd_m68kas_o_S = $(M68KCC) -D__ASSEMBLY__ -Wp,-MD,$(depfile) -I$(srctree)/include/uapi -c -o $@ $<
+
+$(obj)/wanxlfw.o: $(src)/wanxlfw.S FORCE
+	$(call if_changed_dep,m68kas_o_S)
 endif
+targets += wanxlfw.inc wanxlfw.bin wanxlfw.o
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326055719.16755-3-masahiroy%40kernel.org.
