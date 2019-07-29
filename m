Return-Path: <clang-built-linux+bncBAABB4FO7XUQKGQEW5V5MPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id A05EF799FE
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 22:30:40 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id m2sf13687681ljj.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 13:30:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564432240; cv=pass;
        d=google.com; s=arc-20160816;
        b=eUN/8D4MMeW7kwRWyRoCCKN4V4++LTjRYYr0zHvlbOagFRV7iBPgtuAQ/H0qLsOKTE
         5AvHEntzR9+3J9P6PHIHf/l7P2H4gqDZzAsKMdXXT0AGEWDLvFO80UUf64ruaEj0fx2R
         8noyNC9pF/zUz9vkXJQJzvitp0mKRH7RfgogzJcxir26pFLucP0AaOIEVslaPAW4O06H
         AC9yZpduky7pvF5O9CIMrQVO43sr7xubMUC/XUMceqhx3iu2mcNSoIGEh1Szu9YYexgd
         gl/Ylv1KaXbZG7yDL0UhaibLYwDoOkpdfA5B8z4SvCrYIXRrKCcQoepePzT36a+rtXNg
         fODA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=NfudlCqB2cyvHWyL0RLsDIjAFHkSt6B9nYp6HG9q/xE=;
        b=fNUKo2aZ4l3IgbaO5S+ejus2NYEuCErkj9gGBD2/hFQS08ZlCj7MdTIW6PFdugi1DC
         PdB4abYBjwwZyy1/Ymmwky3kqSiLyG1wZLPbU2npQNd2+btg2om488B9BrBh0wh+beMR
         moPo15/RcZpXo4QdkjY6uit5Sh/owtpukRGDw0ZydPqMT3WVzTM9i8IsU79RzXB7Y99l
         v+lEEWZHX6INJBbQC7cY2jFJ9VwB/3iF0oZ0u6LAyE78zb+Djwep8u0AnuOGBt3nj519
         sC1uQiD6S/9M/NCWZnBayymTOjzWagiG3n3P2fJy5EZhtAq9OfeqORArhWTQNGW3p3zu
         g+4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of info@metux.net) smtp.mailfrom=info@metux.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NfudlCqB2cyvHWyL0RLsDIjAFHkSt6B9nYp6HG9q/xE=;
        b=nH/TYpzlp5l6DkhyvNromkqmcdAo+okIxUnbZnGuki8FBNhUCHAJnkAw/m3fKZfus2
         U3w34WQnhodLmKM4Sk2BJFEQgzOSb0l1cH5TShlP6q5VOVPAuaatksLNK9qBQ8pzz4KR
         zOXKqfQ8rfaX22BKIWJ9wo1a4pLylmLFexcK2I6rQB9AQ/VTAvrOniteMSKjyUN97uyP
         WwmHvDm2/LtXCVOE76WtY6iGG70xf2dE6AcC+WOiRu6P73WR4sEqP/Iz94LKKV+ggjXw
         KzUtAKHl8+60ziil9HrDS/KAZupXID7qSRlqJABt9mmOv2kUbViq8iKGLH2RqqEj+4SZ
         nJVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NfudlCqB2cyvHWyL0RLsDIjAFHkSt6B9nYp6HG9q/xE=;
        b=pTI7HRjk/fQLbSQEoMB49JmTk3FiXEz4Pf3U3BamHoReuUxXNf1jz98AlOIawEXpSM
         jppoVSIIQr8b2boMbTu/CLv/oVfOYQssCkC53HRnCypXSr2jOgjZRpYN06FwQC2GwR5T
         rwSr0+mqixOKW9fsAfBdVsg+un2lyN1ju+M0uIxHI9JhPUyLckQAW3qim4Ic2l0VTJVi
         dN4SEYm0DlCIeiHQYj1AaCJTreRjJaibRbCXt2dqdgunusJ2vxLU7opmuy10GYKy/W+J
         GReBGHjOYLRZI7kq2efzHDeO1J4W2TivqytXlzl1rqbXMW2NMra9sDAGVWqYw0TH3Hd3
         524Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXiPHTOi6Mesrm40YOEIQzQKsAsQkH0KSyVMRm9Keh4sY9AQkyl
	XrsKGJgRVzifIUE8MOkcZyI=
X-Google-Smtp-Source: APXvYqzI3nn/w9rjliQ4JBK6V2eRy3Y2Op/BL90VZmLO1BTyb9PFFuCKcMQrUaT50NO6kPn9yBm4dA==
X-Received: by 2002:a19:914c:: with SMTP id y12mr52433346lfj.108.1564432240222;
        Mon, 29 Jul 2019 13:30:40 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9643:: with SMTP id z3ls7084339ljh.7.gmail; Mon, 29 Jul
 2019 13:30:39 -0700 (PDT)
X-Received: by 2002:a2e:9593:: with SMTP id w19mr11908136ljh.69.1564432239949;
        Mon, 29 Jul 2019 13:30:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564432239; cv=none;
        d=google.com; s=arc-20160816;
        b=fXWASbRZezG1sTpvpnMCvAxSB5kFeeVAsWU214OjBcjV3vugOjT6ed+PKZ87T8rzh0
         8xaMEMxEA+aVpxopNCix9X6Am7lqQPOZn0kFgygVatjxh9uGlipbx9zQ6NxQDT+YIKhn
         pfaRDZc9InxsxCmrCRc9lPE/j8CY77m7PfnsBtRCoHdr28ZiPbocK6p/dB4J+TJnnaoH
         yUd8ILlPsPxrlKGlC6DmXl/YONbwFjAg8I89+jWcg3dpUynG8QORyYXP3zSzEZMXIjbm
         W/Q6aWNkkGiir462SC+YKEJWzKbL2zr+qMwxNQ6zaoaZTONIhp1Jp+Ng1OREQQ+gMm4F
         rmog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=HdNcjDhId56uQ4jAJSNaVguwYAQGVWg/HC3PQhW2l/Q=;
        b=Wh/3cd6wj99QmXtt5anCikA4weonL6cWopUaXA9h0r3WWUpL0WqT0LZVW4mQC7+f0C
         LBPoLQsIfs9Wad9Q5Ivn21NDod4uXBPgE9av6ChCcVtc1OmPSx6+jImpmt+UNEJ98rKv
         6oJsPrn5FQXLqPirtjKG7JDN46spsMChZCqMSOGi2JwOv5PSQIrvEZG1aaPlwQz7Y7Z3
         3K50sO2mNB5dAi83VM3z7K2fBq6eaGOf5P4Ezc0dyF/ddkb7udXY4okgpEO0EQMDPLEn
         /1eaOW2yunlpNtv0hf0SaAzbeUQZpM4ke8h7N9tYD4uqWovdbBYvO6FZlJpEPzxT3HmI
         /nWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of info@metux.net) smtp.mailfrom=info@metux.net
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id s14si3622971ljg.4.2019.07.29.13.30.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 13:30:39 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of info@metux.net) client-ip=212.227.17.13;
Received: from orion.localdomain ([77.7.124.62]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mt71D-1igayy3ePp-00tUcR; Mon, 29 Jul 2019 22:30:38 +0200
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Cc: yamada.masahiro@socionext.com,
	michal.lkml@markovi.net,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2] Makefile: rules for printing kernel architecture and localversion
Date: Mon, 29 Jul 2019 22:30:35 +0200
Message-Id: <1564432235-31100-1-git-send-email-info@metux.net>
X-Mailer: git-send-email 1.9.1
X-Provags-ID: V03:K1:nEEbsN3KiCGWuKFxKw2nas0RWAwU6e78j0xFPuvGglYNYOgz4Nz
 qLOEqVCvsznuHHTpuR8RRqAgtq44XbtdftCDmfUJlUweNbQWLHI2vRQR3QeFqGCij+mV1EF
 EPbRHIiSPRhVu0PmOefmKvtEQ90DIOiZeP7LCQUaeFYs0jyc3xKvRJ2qDndhRNwjfAWoa5i
 bzBjW9Z38L9qaol8tKpQQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PLoMTIblG+Q=:frUn12OpaNUnF+pJ8jC51v
 80atrUoTk+0CYgAWXrmzZWmiEs6UzDOJ2RlIwcgygWDcod2wWvy1ppxK996AoxZWUiDuu45/3
 vVPs0Xdf4JFUvBvJ9k4pq28zZvCnNAO15UJBA4QPKppguxxI1+Exe7C7/HIJtPzISaxRk4jeb
 XHihFnLf5FwTYpCzTcelZ8plwoZYTb4dEg6er9Zs/7cf0m/f12+lcrLeba2v8SLvu1h61Gz7Q
 WcSZEDcCwWOpABeL3YIj2mx6LLR8w8xR85QNfjj0XkILNvmXLjZBSAO6x9qL64xAgSbYJopAC
 1nYFsQvXzSV6A9GQQ5/5EwK78bmtL+Bc2oSHLFjS3+W2LCdrx521s2ABIFmVZoLJc1OfdMCxt
 vHWgloKT8DefkihiQDrDXDhT1FTDSdby4++jAKjfEbsRftDlwVHo0UrY8dJlUBeVxGxMxQB6V
 7JQLJ3dOALVywSz+pLofdDvwXwSiMPd4BRcE+0ZaZGOcNh2DXksGVYnGE1/gws7OFBoZs05P5
 KBkhO8ZSeAokVuI/Mc/bxMUOl7WcP0wjaQPy94aJSzA5giezD+/OoRKCdVlC22AK/mnaIDf0r
 Jn+riBukpHNkZ7t+fQHLjQ7eyn2ISlIHh9eW7GM0ZuHCsDI1Pv9hgcH2UO6Gk+NPcZF3uIsYk
 jBoSWciiVY+nKhFc9UtE2U+RhVjxL2KPGOk+toKdECeNGogBvluuveAV4UJUvoWhUBtyajA2b
 i2NIiVTMgXjkAu+TrSXAtMaiBG021DgSXH3xWA==
X-Original-Sender: info@metux.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.13 is neither permitted nor denied by best guess
 record for domain of info@metux.net) smtp.mailfrom=info@metux.net
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

trivial rule to print out the kernel arch and localversion, so
external tools, like distro packagers, can easily get it.

v2: add help text

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
---
 Makefile | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Makefile b/Makefile
index fa0fbe7..32c8f2a 100644
--- a/Makefile
+++ b/Makefile
@@ -1517,6 +1517,10 @@ help:
 	@echo  'Kernel packaging:'
 	@$(MAKE) $(build)=$(package-dir) help
 	@echo  ''
+	@echo  'Build configuration retrieval:'
+	@echo  '  kernellocalversion  - Print kernel local version (CONFIG_LOCALVERSION)'
+	@echo  '  kernelarch          - Print kernel architecture'
+	@echo  ''
 	@echo  'Documentation targets:'
 	@$(MAKE) -f $(srctree)/Documentation/Makefile dochelp
 	@echo  ''
@@ -1728,6 +1732,12 @@ kernelrelease:
 kernelversion:
 	@echo $(KERNELVERSION)
 
+kernellocalversion:
+	@$(CONFIG_SHELL) $(srctree)/scripts/setlocalversion $(srctree) | sed -e 's~^\-~~'
+
+kernelarch:
+	@echo $(ARCH)
+
 image_name:
 	@echo $(KBUILD_IMAGE)
 
-- 
1.9.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1564432235-31100-1-git-send-email-info%40metux.net.
