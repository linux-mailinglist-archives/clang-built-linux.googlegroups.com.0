Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBPP7XCEQMGQEHQVCTSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2A73FC9FA
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:42:06 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id b13-20020a92dccd0000b0290223ea53d878sf11379480ilr.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:42:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630420925; cv=pass;
        d=google.com; s=arc-20160816;
        b=BoQxK0KMWUNTzBboA/XJjKxvyampQvT8uCRvpgC+Y1mXfXuHrVZDJDv1HZiOb4LrzJ
         M7yIsYvJ7h4+iGzw2xWas+TpvJifdUaWvjnPik3HZcGK0qeN2Z23DTvVAq2YZ8pckPQP
         Chyuea0k0Bwu7ubjB40ZFCNvMU+/2rrstRoGNPa4O6+i1AEgmkfyZ6FyldkuK3cHjI2H
         MCGRjy6E6Rt5oXgSxtI41dJ/3A36ViB+KJQw20hvVs4YlpoAGexgnnwtFAQNoEhYuiAL
         C+ZNa04AIZixJWWpZfQD2jpq0mzVn9hNYDbOORnNIHQgh/OA4Oachalb7iWRcoZlL50u
         aVzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Sw792p4L6k3f714mxni37otKrKbpT5xeRjKxku5LghM=;
        b=Rk7Db5tRPrnWW3tQvsCQL9fDOeispwRdNsosGhgNnGqQD4EYpDKV5b5yNi10lqY6+J
         q2u+S5OCNIfWzh8Q1LX4HeJg8FIKarPwES2F11F+5W7296lBNb/BKELM+i7GQT9hqFgZ
         r+P0hStqsVWjy6dYqfi/OwsQBWf2GttrCw0aJDjHiFSqk+xjZclRsMn+80RuT3Tw2VPM
         cX6gp5zZ7ruvEkZQ8ufz8BPNihnq+IKVNRLd3GRbEpEe2jsMt9wcEqOnPM5DogzNa9vH
         15NRs2C0PKuLMZ2ao/+qxuo137MSD3S1RwcQ2vpmbWvy05R1G/5GlBfxQuU+ypxyrWr/
         SYfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sw792p4L6k3f714mxni37otKrKbpT5xeRjKxku5LghM=;
        b=WAjIy4BVcSPClBHm/1ZKxo3WZ5kA1viseVZV/kvh6yKRWciOLR3GC5NVmDD1leURhC
         nSkUY1+o65rnaUbi8iDr3cd3YUzWtb9yK5ECQYxmnqjFz16SylFak4SyCQiCnuIC5uLC
         m5wRO6OK3Aez+qQknTGE5mo9bY8K5jtU1+0tdKFQAvOcUyk+hJwIs1YRv7PQuEFETuGH
         BNJWNZVPkaXOJCZik4+vfs/t30Ia5TOzxlHre5FyyavtrMNgIDaAY46UlfwYT1hXuBiJ
         kontXFyX9hssO+go5RnZGDvUGDOQaTUEQv/8KsAEwE9f8L+MQqUmR8d6kPZKRTjRGUBC
         nsnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sw792p4L6k3f714mxni37otKrKbpT5xeRjKxku5LghM=;
        b=AWdJaDM/2qYlRCYbaH4GD0wk7eCdVgD37C3QbTz2yl8a2+JuuCrG5EcGBlcBuKr21g
         6og+JVDbSklSpV/LbG7zzQIfmJtht8ugv0Vyz0BBZabycJjR6ENQ8ildTiaiwpjuhP1l
         Q6ZOAb9KNxwWirGw9+SAKyfnFCS5YROOiYeN/OAxt4KxQpt25Fjzz30gKWCDL6QQobA9
         VlHx1MogrLQpPzrRNAxREuJSqgZTMLbNqQRH3J9YGMUwi9UVTl7egKpfRGIMiP8k/Uj2
         KhtQCB3lTkvmBZG69V9MVAED4O9MkMOcED2t2bRqA9Xcx9uyW4pgdLa0FiGrgsNF502y
         hhog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304CF2iG18plEZWL636K0Se3vGDKLqUHDFwClyKgEN+jQ9bFdCW
	K1YXZ6iuq7S1pCxos5Y717c=
X-Google-Smtp-Source: ABdhPJxaFC3dQaReLvyk1a3cUGaCXYzUnD/80Weo6d+RpuAtl4KlYHtF49wrGauC0GaE4gv5G8dPdw==
X-Received: by 2002:a05:6638:1613:: with SMTP id x19mr3112495jas.77.1630420925158;
        Tue, 31 Aug 2021 07:42:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:6c7:: with SMTP id p7ls4059131ils.0.gmail; Tue, 31
 Aug 2021 07:42:04 -0700 (PDT)
X-Received: by 2002:a92:7114:: with SMTP id m20mr19502654ilc.114.1630420924751;
        Tue, 31 Aug 2021 07:42:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630420924; cv=none;
        d=google.com; s=arc-20160816;
        b=DrUgflG3hnp/LSdVoRyM/s2Nfb/FhO3BcJYAZSOwl89fGk0dzfXsJ4GHyBUp999Qxc
         cLbEvr5vsRrsIXX+dINOa3NPAdquWG1KqoBHMuysSjv4MsVXLnH/zuTu003TxVXyVxHo
         lklx85ZCer3g2yvkM7rYbV/rl0BGVMTjtdixKAsBw5eNAbskZ073GAuCPsSo3iXCviY3
         K6Olil0llxXD8ZhWs7V9C/tt99X4vmJT4af15h1YWYYkWFrykAFfGaIh58TpuVW/y1dr
         IGJQbjnDsxOUuwM64S6nvPgqLHBtnBFI9yiExyhFSP7JNgfrK34y5N8iNUAJPkT70Of4
         0Lhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=f2uderlWaVXtkrHdBcRbro2xf+hlwC96Eq9SPOcJR0Q=;
        b=oOjksGhasDBPsWtuzjIDkIwOth95sGz86YlH51AEOpHuLwQ5NQbjRSwfl+3EVIdHUN
         3pJ2CZKdO0Fc6h0E8RbENOSl/M+flxDZLCDAZFInDBlSb1KME8m9AUczbkKvutGLlUdd
         4RCHuFHDm1VRSMJ4XxlfANsr5C4Lv9swugLWc/1gMSBHHsHb4KCljlaWH/xGLcLUi07T
         Ica+QTuByLLNbJrr4872as5UTvnVDbBd+UQI2b6FUWR2QB+t7TC7dTuzCfcFpv3hrsJw
         2RAXv9EUE4j2JLwk4QExFivPFs9ob3VIiUaB4oooeJZ+Hkskh6IIV/eAgu9ObHlovOeE
         u5Dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id b12si1464026ile.1.2021.08.31.07.42.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:42:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="240740582"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="240740582"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 07:42:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="446126105"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by orsmga002.jf.intel.com with ESMTP; 31 Aug 2021 07:41:57 -0700
Received: from alobakin-mobl.ger.corp.intel.com (psmrokox-mobl.ger.corp.intel.com [10.213.6.58])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 17VEfmfT002209;
	Tue, 31 Aug 2021 15:41:54 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: linux-hardening@vger.kernel.org
Cc: "Kristen C Accardi" <kristen.c.accardi@intel.com>,
        Kristen Carlson Accardi <kristen@linux.intel.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>, Jessica Yu <jeyu@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Marios Pomonis <pomonis@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Tony Luck <tony.luck@intel.com>, Ard Biesheuvel <ardb@kernel.org>,
        Jesse Brandeburg <jesse.brandeburg@intel.com>,
        Lukasz Czapnik <lukasz.czapnik@intel.com>,
        "Marta A Plantykow" <marta.a.plantykow@intel.com>,
        Michal Kubiak <michal.kubiak@intel.com>,
        Michal Swiatkowski <michal.swiatkowski@intel.com>,
        Alexander Lobakin <alexandr.lobakin@intel.com>,
        linux-kbuild@vger.kernel.org, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: [PATCH v6 kspp-next 03/22] kbuild: do not remove 'linux' link in scripts/link-vmlinux.sh
Date: Tue, 31 Aug 2021 16:40:55 +0200
Message-Id: <20210831144114.154-4-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210831144114.154-1-alexandr.lobakin@intel.com>
References: <20210831144114.154-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
X-Original-Sender: alexandr.lobakin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.88 as
 permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

From: Masahiro Yamada <masahiroy@kernel.org>

arch/um/Makefile passes the -f option to the ln command:

  linux: vmlinux
          @echo '  LINK $@'
          $(Q)ln -f $< $@

So, the hard link is always re-created, and the old one is removed
anyway.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 scripts/link-vmlinux.sh | 1 -
 1 file changed, 1 deletion(-)

diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index a6c4d0bce3ba..7b9c62e4d54a 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -206,7 +206,6 @@ vmlinux_link()
 			-Wl,-T,${lds}				\
 			${objects}				\
 			-lutil -lrt -lpthread
-		rm -f linux
 	fi
 }
 
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831144114.154-4-alexandr.lobakin%40intel.com.
