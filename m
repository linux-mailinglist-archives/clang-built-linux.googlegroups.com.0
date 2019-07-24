Return-Path: <clang-built-linux+bncBCQ2RKHTQ4IRBU6J33UQKGQE4WRMOHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F0172365
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 02:22:44 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id o11sf31331976qtq.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 17:22:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563927763; cv=pass;
        d=google.com; s=arc-20160816;
        b=tzFQTyb6dsL65WRpjkAaZSvdK4y2vXUgynmI+8U273LYLRgO5e9u6i4jJzw+nQ2n1x
         sP3OsjLaesCVSCTZ2umW8F4SOOqoWv3hz3sjJoF6bplxWmDnemwua69CMZKPANHPdukP
         d4eBXmbJH2y9u7w0jUN0iM7MrerLo01sp9szNk/m3yDAy+Yw+cz8znpvD8A26SwLvZX0
         iZgSUMLOa9SjYosK5LDp2ZrEQuzd7DzuN+3xt1e3nXGK5cAuowVGtOxq4czHJnC/Diw9
         rzIGPR38GO4q8gxCVuuZX6JJqFUJgZrMfCRuUngRQGBOcsn9WkUvoqxyMhgZNWiP9e9O
         AziQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=phJCCywxIht52+QWhBonE0BvdHbF6hE9EbhM7bEXxI0=;
        b=pu4gpaaDHgmvgIg/apaN0oIOgFLRJ9k55DigAgt/ozz+s7XaBUyd7sni3j/0B8akdo
         U6JgOxYC+hX7Xomw07VufmnfPjQTmeHl1Mr5j/Roz1d4TdRCp3Rdo+ZXgszxGNiAj3Bu
         6FTksL0s3P7d8QJCe057qsPlxIoUYffNMTlA6wcg8XMSOkq9xqrM5FmBkQPUt4VCBnQa
         h7ojE5ap8aRfnzUrXzQf1GfyHHpoFYpZQdtxpYeDptHEf1o75AXf0Z3oeE4JT/PGyuIT
         rboW8ka3cYpbaQy95VpyxOhPB928+m4OdJ3ntxkTsETVFyBwPBYqMYf4RAxnHn8VNWV0
         h7Tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@utam0k-jp.20150623.gappssmtp.com header.s=20150623 header.b=YEwHNXJS;
       spf=neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of k0ma@utam0k.jp) smtp.mailfrom=k0ma@utam0k.jp
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=phJCCywxIht52+QWhBonE0BvdHbF6hE9EbhM7bEXxI0=;
        b=BSd8lvPSz5xPNGSdZGa4SiwDwGns6BRYLPWznHEs0li9aNA3L4oa2BxjyRJkZlvSt+
         wPkoObhC8UH8d0aDqLOvV1C5sYCY9QFz88+ARPUJhLYaY+seem/bS/GfX/U95jTiflD/
         2O3qsoyf3NNRz2LiZ79VLi6JZoLWnhk4FOSIrK2IJ5sdTTUSeAyXfndpmAMXM39gwmZ/
         U4G3JcNrtaJLWCfHt6eQsUY5wRBL7FZt26sQBE1JUbOQMr4C1UYEXB04qQrUzGNFXfFE
         qkCTFtZxNb2R2hcvg1oKpBaBCx/nBztC1USLd/TQEB4bZMNMpurJG8tCGsajyRfpfMl7
         Nt9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=phJCCywxIht52+QWhBonE0BvdHbF6hE9EbhM7bEXxI0=;
        b=gOH8NZIz9WBDVvJAhlgvo0d7vfSOhG0Nmz5HVTx2ssQpbidsQFfoNqJKdznHATV39W
         5e2S0Gip5QzKPyXAxg6yD0lOnZXLLyiNq4Leki0uqsw6TgEji+tGHKrao2lr5fOWmHpE
         vcUi8SzYQtIdbWIPOkhPGVL6esozAVO0YH+PTAlQEE2vu64KnvLeGvmhNvnRKSmnvFew
         wnllMs9zHfFKkbl1DTxGZ7bo20DHuIO3Mgi6oTYTT5SmAUQ/XzCOC/bYX0IymwGhaneK
         gvIdPD06XqXpphN7Qysw6tM0J7JIgMaPoiYicVU8YY053P0Th3H2Gcjcg6xr51afWLSX
         uhFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVXdHcLZRgXpTDbGiAQkblc8ivvhtDiD9hjm508y3fEyDBx1+u9
	C+v1GJgvvNTOpK1e2vRTUnU=
X-Google-Smtp-Source: APXvYqwf6+w4CsaGLq1cWZ+Y3g8vhpwaXQJBRKDLaFkX/DkWHUc92LbrgoBS2ouQq5LYNaxsEkUP/Q==
X-Received: by 2002:a05:620a:11a1:: with SMTP id c1mr54225698qkk.234.1563927763280;
        Tue, 23 Jul 2019 17:22:43 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:314b:: with SMTP id h11ls11164077qtb.16.gmail; Tue, 23
 Jul 2019 17:22:42 -0700 (PDT)
X-Received: by 2002:ac8:2194:: with SMTP id 20mr27569574qty.203.1563927762811;
        Tue, 23 Jul 2019 17:22:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563927762; cv=none;
        d=google.com; s=arc-20160816;
        b=HSI0HKMn9o/g63r2Z2yoCMIThUaPUfeEGn1ZGX+F7Dcd5IU6ec66bfGVlZPlfZ7Qdp
         cu/slFCk7k3nbMogUcWupu+rm96WSRlpBn9la2HZ+wd8Y935qCR3WIZL3i0ZoUZW8j2A
         YMIeymnM2CYsqDoROqRyAuVaG3vgnhspb8PdhZJ+JuZnIs180pIGniz2xaQMtDUVXWgZ
         zmiNpexzu/tcNrhM9n13f0wxtCS0+zgpNjeXKTp3Lj8ZTnafavxTWOUCMVqZ2G5uRekp
         gpZ+yZ9jJCT/MGezRIAh06joraz8awayS/PD45YvDtx3LdZgyR6su8rt0iQ9uxh0qKda
         kQRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=uHxS5AMH+Wz69m/TIgooeYligyzUaqkm/QtujdnH6do=;
        b=WukkLZCReVcvR55fVjU/Hxvsonwz+j4YfhcqYlA/eMk6roMPGm1rVpam+qNNtYVwe5
         4Of2wk5XeFgPPdG8H8JN/A3N74JMGH06PgIkqi+megRd99JXBty8l3yO5hO/ey49wR3O
         6SRczvaUbKrfUaEOhknyBhZRO/9HwnpE9zRNqNDGxmq5eOqZ9bBHvv2DHoA7uz8aW6U8
         chAvGnA+jcRQ6+9Z2P6kVbx3Zv6X/nAqvZ51mTH2uah1EV79k2nK8KFZLSLNpjMng33i
         trnrWOybTcr6WaRBqWDAsyVQHgD9roHX5mrCXhR1eZK66Qd+4YK7Fm2DpSTOERo51kxL
         yowg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@utam0k-jp.20150623.gappssmtp.com header.s=20150623 header.b=YEwHNXJS;
       spf=neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of k0ma@utam0k.jp) smtp.mailfrom=k0ma@utam0k.jp
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id g41si2078480qte.4.2019.07.23.17.22.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 17:22:42 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of k0ma@utam0k.jp) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id b13so19960366pfo.1
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jul 2019 17:22:42 -0700 (PDT)
X-Received: by 2002:a63:ff65:: with SMTP id s37mr37336173pgk.102.1563927761125;
        Tue, 23 Jul 2019 17:22:41 -0700 (PDT)
Received: from localhost.localdomain (124x37x165x227.ap124.ftth.ucom.ne.jp. [124.37.165.227])
        by smtp.gmail.com with ESMTPSA id f72sm64651906pjg.10.2019.07.23.17.22.39
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 23 Jul 2019 17:22:40 -0700 (PDT)
From: Toru Komatsu <k0ma@utam0k.jp>
To: linux-kernel@vger.kernel.org
Cc: yamada.masahiro@socionext.com,
	clang-built-linux@googlegroups.com,
	ndesaulniers@google.com,
	Toru Komatsu <k0ma@utam0k.jp>
Subject: [PATCH v2] .gitignore: Add compilation database file
Date: Wed, 24 Jul 2019 09:22:33 +0900
Message-Id: <20190724002233.9813-1-k0ma@utam0k.jp>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: k0ma@utam0k.jp
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@utam0k-jp.20150623.gappssmtp.com header.s=20150623
 header.b=YEwHNXJS;       spf=neutral (google.com: 2607:f8b0:4864:20::443 is
 neither permitted nor denied by best guess record for domain of
 k0ma@utam0k.jp) smtp.mailfrom=k0ma@utam0k.jp
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

This file is used by clangd to use language server protocol.
It can be generated at each compile using scripts/gen_compile_commands.py.
Therefore it is different depending on the environment and should be
ignored.

Signed-off-by: Toru Komatsu <k0ma@utam0k.jp>
---
 .gitignore | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/.gitignore b/.gitignore
index 8f5422cba6e2..2030c7a4d2f8 100644
--- a/.gitignore
+++ b/.gitignore
@@ -142,3 +142,6 @@ x509.genkey
 
 # Kdevelop4
 *.kdev4
+
+# Clang's compilation database file
+/compile_commands.json
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190724002233.9813-1-k0ma%40utam0k.jp.
