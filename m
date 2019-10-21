Return-Path: <clang-built-linux+bncBAABBTOTW7WQKGQEYVJMF2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 784CADF41B
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 19:24:29 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id m68sf1502152wme.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 10:24:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571678669; cv=pass;
        d=google.com; s=arc-20160816;
        b=wrPo+ADpjz6jsW16dOTNUv0o8TaXR41dnHSWNs7Ttvl6FaXDl/SnW0LtTa1KPPPncq
         UHAg3qgNvwMZfDVR2LuWz45r4V9q4TihyPpRjfBd7gmAWLk0zpqtEpGtV7Cy//1Rr7Jt
         wOAqRSnKAhSJ6Y4ljGKMEYYQzBJIrqgV9RmdnTQgGoc0KjjIh0X6H8VCpQUyTJLS7yOf
         UxNlgSQjv5cGPr/hUCGiD6R1kWB9UjRr4TbHDuLuDRLcG3EtyHvWNdx3tZGvLtLCQ3Xx
         2Q7JZu9dBYNaa394oyfJ1Xv9xK3hhQSUHsnNAW3b6DeVseCSWzimnDj80BiXQQZ22WW6
         Ph5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=AGjI+R/n0AIMeMNpr1FFoRaEvqJ+5JL+SFU+vZoFWmU=;
        b=nGzcWmAfaFCoyVDqNmTDENE1C6cmy4eDm5Zv6TOGYrQNhEdAfn47MokAB4vajqRrnu
         m5TKCEu8Gp2xxLLMLgVnhLi6Y9uSVWYva+s6t81U57caOotY4H05OGSP3mcv3z0Fo/+P
         S2zAqS96sgXY+E3iK1rr2fAcm3SfAj1fVL+73aEttjHFlZa/CVQVIQHjvCDcMzJbv0RL
         iu2jmvNbUOdNb4cGiOGFtjrRnKve5iDMSahO4b/UjbkDDvZ2TPixGOsDi4ZPMLpuZbJn
         d5hFYTLOJbX82sHQHnFsO7WkcNVHTsIhjshPpDDhsmtVKCPumxKght1Gwgpo2UcqMpNb
         MgVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@shipmail.org header.s=mail header.b=Im5uoJFP;
       spf=pass (google.com: domain of thomas_os@shipmail.org designates 79.136.2.42 as permitted sender) smtp.mailfrom=thomas_os@shipmail.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AGjI+R/n0AIMeMNpr1FFoRaEvqJ+5JL+SFU+vZoFWmU=;
        b=jp1Xs3eCZELvPeaR4oXjVLDazd90839ko3s2I7WzSaMmDNP0MgG2SaAjL3EKriVkcr
         y4gInfBOAJ2o5M62/UmT2TWaNueO8J9RYp5NxFtyNXxK3GBmIqytYNFL58YHU9SySFx7
         DswdJ+cQBgcYy4N6hvrisCgPxW4e2c0ItGX1xFam5Hu9ju8IN+jChxOmskZXx+yldfun
         L5459lJCdRwUoVd4kNom/xVzIlDBvKJkPbZYeTYiJqzmZ8JfQST9G6Zgy3IriyhH+pHi
         00UAyrv6PzGvQF/lRJl6ey4y1lArvfX6i6eVieeEd6U00jZM0HF0z6kPA8OTDP9gOYXF
         2LsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AGjI+R/n0AIMeMNpr1FFoRaEvqJ+5JL+SFU+vZoFWmU=;
        b=tG7LShKXm2YDtXaksB7UIVR2bnU9EQFqmemnGfdpXqBsj3K5p+TVuH6wMIpr2xyFIw
         l7c93pLTXY6c2ZIEXEpK/I2TJEn/h7zozLFuMj+gWDtD/RdtImnecSth7Qll3q8ZK1HR
         8GjM+OHdaxpBrmbvUnkqkAcpQVmbVr0aLEF59ehKIa7tt8CgRJFWYz+QEUom31QOj0sY
         Yv4QfBAgrSE7FtYlcVBuGTVh/ALSkzlGQHrgDiy4SBgsNNSpiF963uzrrxdHfj0pPYa9
         Nrh17D3JQUw5heY3OvsKgYLJIKg0c+AaAVDaoSPEqjZkDuyw1HdRLOiaiaieP73IZWjw
         5Rcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXDa7+b/qQs62Lbw6WoiVEmRRmO0d3XkhbHswwWk4AFAjJfVUm5
	HGRocHIqYrd27mYYsMAxxIA=
X-Google-Smtp-Source: APXvYqxomcAAGLpf6v8B66669dBmHZZWQsmBln/RSwi9njip3rf7nsa2hdFX90nC1q8eQQ/WxHFh6w==
X-Received: by 2002:a1c:1d10:: with SMTP id d16mr10401978wmd.14.1571678669187;
        Mon, 21 Oct 2019 10:24:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:538d:: with SMTP id d13ls1663396wrv.12.gmail; Mon, 21
 Oct 2019 10:24:28 -0700 (PDT)
X-Received: by 2002:adf:dc42:: with SMTP id m2mr21939254wrj.314.1571678668807;
        Mon, 21 Oct 2019 10:24:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571678668; cv=none;
        d=google.com; s=arc-20160816;
        b=RFHAGRjUTQnoHKWMEiPmp+1Z3tq8xPwaUQBXJGL8sQZ7CyWgVAy1mdtyVgiCSQIM2H
         7OLP5fHwUloLcjl+KwT+AKSucPRmluljojzkZA055QlViJVIWoTDiaalVV0NSgZgo/Ra
         7YVuRf5wJLFDMl+lnPLDvhChTCEVxvOZyk9lA4us1aKN+7TSEPBwvYWKszm+LWPvGyTs
         BemL997CDyAncc6EGvfZhHJ1xTDPm8RsMGTbFmAER4iORa0seFJNQ+9tt6jIQ3Ni3j3k
         PINguO+lKAWv8K+jkU3N2yglD8lGIcViULK3aoDPatgzAVEYI4pgj2ReQKq6Fayl1fFO
         2CzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=FkEEwR2RBpoIJ/NNeMBBtN/WItwtV3/wP0v7WLjagNU=;
        b=BT/Wh8flpPksAxpalNEkGc0mUv6Dn34FotQte/fnCBJOyeeEmvcJhkS1gxbb6DYhGG
         TTB3T+u46FlMkUD4DJo+pwhrL8wLJ+jgH4Ri98yXkpNE5/rEWJNmcW2JVZyUUhxeR//E
         JNMiVYdJ+bX31ev5K45J67Cs7uI5jtBwBB6WEosuV+u/zPhwf/FpJEeXT+EDiJ6LJKek
         b+l6p5p+JI+3w5ADBlWQ2e/NdVd/+lr8Mm7/RwLpchLUmyOvPIgUVkKpFeUFfRI8tWWx
         QI4WHeBv3gDwQm5+bFoz1KbxaSaLZhhJkss5qKAAVKIq5ABa0jNDISq/ncf8rKecq9Pn
         Riuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@shipmail.org header.s=mail header.b=Im5uoJFP;
       spf=pass (google.com: domain of thomas_os@shipmail.org designates 79.136.2.42 as permitted sender) smtp.mailfrom=thomas_os@shipmail.org
Received: from pio-pvt-msa3.bahnhof.se (pio-pvt-msa3.bahnhof.se. [79.136.2.42])
        by gmr-mx.google.com with ESMTPS id g14si599916wmh.3.2019.10.21.10.24.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Oct 2019 10:24:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of thomas_os@shipmail.org designates 79.136.2.42 as permitted sender) client-ip=79.136.2.42;
Received: from localhost (localhost [127.0.0.1])
	by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTP id 6E7C63F44D;
	Mon, 21 Oct 2019 19:24:17 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
	tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
	DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
	autolearn=ham autolearn_force=no
Received: from pio-pvt-msa3.bahnhof.se ([127.0.0.1])
	by localhost (pio-pvt-msa3.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3jkxGiYTO4-O; Mon, 21 Oct 2019 19:24:16 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se [155.4.205.35])
	(Authenticated sender: mb878879)
	by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTPA id 046B93F323;
	Mon, 21 Oct 2019 19:24:14 +0200 (CEST)
Received: from localhost.localdomain.localdomain (h-205-35.A357.priv.bahnhof.se [155.4.205.35])
	by mail1.shipmail.org (Postfix) with ESMTPSA id 82CF73600C3;
	Mon, 21 Oct 2019 19:24:14 +0200 (CEST)
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m=20=28VMware=29?= <thomas_os@shipmail.org>
To: linux-kernel@vger.kernel.org
Cc: Sean Christopherson <sean.j.christopherson@intel.com>,
	Thomas Hellstrom <thellstrom@vmware.com>,
	clang-built-linux@googlegroups.com,
	"H. Peter Anvin" <hpa@zytor.com>,
	Ingo Molnar <mingo@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	x86-ml <x86@kernel.org>,
	Borislav Petkov <bp@suse.de>
Subject: [PATCH v2 0/2] x86/cpu/vmware: Fixes for 5.4
Date: Mon, 21 Oct 2019 19:24:01 +0200
Message-Id: <20191021172403.3085-1-thomas_os@shipmail.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Original-Sender: thomas_os@shipmail.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@shipmail.org header.s=mail header.b=Im5uoJFP;       spf=pass
 (google.com: domain of thomas_os@shipmail.org designates 79.136.2.42 as
 permitted sender) smtp.mailfrom=thomas_os@shipmail.org
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

From: Thomas Hellstrom <thellstrom@vmware.com>

Two fixes for recently introduced regressions:

Patch 1 is more or less idential to a previous patch fixing the VMW_PORT
macro on LLVM's assembler. However, that patch left out the VMW_HYPERCALL
macro (probably not configured for use), so let's fix that also.

Patch 2 fixes another VMW_PORT run-time regression at platform detection
time

v2:
- Added an R-B for patch 1 (Nick Desaulniers)
- Improved on asm formatting in patch 2 (Sean Christopherson)

Cc: clang-built-linux@googlegroups.com
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: x86-ml <x86@kernel.org>
Cc: Borislav Petkov <bp@suse.de>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191021172403.3085-1-thomas_os%40shipmail.org.
