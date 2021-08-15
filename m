Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBN6R4WEAMGQEBQUUQNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B34D3ECAA0
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 21:19:20 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id n14-20020a0c9d4e0000b0290354a5f8c800sf11436924qvf.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 12:19:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629055159; cv=pass;
        d=google.com; s=arc-20160816;
        b=XW9o0YcNk7E6EaGmPKkbEzyLW/4tkCdQQC8hleaqCCyaxMJWR6dob8DV6Bu4zctyd/
         70RY3XnZ7AVE+prPc5u7x2ljuhBjbfB/RE+evdR9HF/roIZXjcgFQdm3aQT6dnTNjJWx
         x0svOvOSj4j7MLdMolkxv3HbnreXoijPdb1rGnlBtAL5MejyuvcI0lnyKjOAA7YRk7dC
         4Mz7sEEpXrGhNCdSEcKNG4hniyEGPZgv/exI85qhFQQXX9x5t16hRxfC95f0UfgbyaI7
         FC7rL674/xTTebqa3NXpfgmRQdA5fqxztux1oRXwGO5gHFIJ6Xa3fANYuD2BDatLhwA5
         ehCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=fMfVKGx1K7TrAMhyfGmNOego+ZwG46opRuq5+pyMEJM=;
        b=oy2rIuCQ9a8BCuKuO55g7eotWB0P+H6/TnPoPCYgg6MzAtqFtGG5UrKFugMK+scywQ
         BlI0K/Z3XXHtCfWglfsfhi2zsoFfVTbLxfZlMIUOiW15A2H0bjbDz5PYk0G6r5ED5oFk
         RUtU/aHHOQzahVMw33nv39cL9kS78p9vVfshGQJr7zZ43CqTHLW+DsA8H0P4CWIUAfKX
         WZAJ/2Hdf22SReBv0qL5gPIf7XH/eOFQFjO4gonyKtC0WmWr24FMnsigD4YCPakyvcxr
         yWVp9fZWGjj62HDsozaOXf/1xvRKAAAsIu015uxb+sXEgeKWVx5ZtKd7iHaZ6eIKoMgL
         doCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=R3Fz3fI0;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fMfVKGx1K7TrAMhyfGmNOego+ZwG46opRuq5+pyMEJM=;
        b=aohTxeUU7VLN95QFORB2j2l8FVpzghV7Np4It/h3nc6GVwktimxaWWFDBXoF3b2Iz+
         NspGgUJmT778obIgsgSCUdKj5THKtFozFC786ZsgFIAZ+m+iZzYVg9YKE51e6VwF6/9S
         QAUA83gh5qnd6Mw+3OQ6W/uSgpIr5B9dIJgVL810kabAUP4NcToB9/f4biEOiBnO2q7P
         zsbCNNHcUjxyb42gwyas/tHtXbPEiUosj3j266kB0imSyyk03qxaNyoUE5Y8d4TAEIaj
         eEcG5wI6Szt2ucTxGueas5CXm8ickHJebQfZ848eHY+kQ6YwoRZ86ecIfi1Px56vgAQ/
         Cy9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fMfVKGx1K7TrAMhyfGmNOego+ZwG46opRuq5+pyMEJM=;
        b=Kw8UpAxOmvIA5mMshAggIz8M5NdCbVdOShDr4OkJkuuttxb1RDDddNONU+teEpcEAh
         Lys/ZSI9vwir3mKFHtfhVqm/egf7eIv5rmEwF5JhjgfuAAQyuIUUN6p8T7sl9B9LNeQf
         9JSaIyrfsRqEf22r0vXpJke86r5oSjbIgFCfPqlhkwAEoSKMdqJP0A9S78zeOrydrEmu
         sTDG99T62jwg7+6NeHx5xJ4HIx25U3RpT1CPi6QG7MBX+UgoYsMxs82nIUhpg2pRiUJB
         1GKTo2/82fZxtVX8IOf6YrPV7wyEv1tKuYYxJVhqowwObTbGWo9FY0G2q8aziXTdjVuU
         a3nw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303HkqOEtmNQq56nqRLm5Et43ZzhFSIbvppUujYOjFDGZrhDk4I
	xwR/F1i5q6KPbhr/rnA3dz4=
X-Google-Smtp-Source: ABdhPJyRkONRSvfCBuERYRUjTwrIY8QgSVNLSfQpXxHIlOpK9h/YvAN3Be89gvkZSWsHhmooDX6Wdg==
X-Received: by 2002:ad4:5581:: with SMTP id e1mr12842887qvx.28.1629055159245;
        Sun, 15 Aug 2021 12:19:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e605:: with SMTP id z5ls4214426qkf.8.gmail; Sun, 15 Aug
 2021 12:19:18 -0700 (PDT)
X-Received: by 2002:a05:620a:12e4:: with SMTP id f4mr10018353qkl.373.1629055158816;
        Sun, 15 Aug 2021 12:19:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629055158; cv=none;
        d=google.com; s=arc-20160816;
        b=cGlivt2aRQSsoKH46gkuYYlbd9uIzB0ysIIfUd/yYHG1jl3UFdSnfn98Z9QB3fcM7y
         6SaevDT1tQrrrbevVERjAtaRpOU+UMiz0WoYqwNX5wRa8598rbabsJ6EiHBuztUCFoHN
         cxnzm3e3DoJpoVMSuA69pS3uelMuskFHtRbhE/WzXr27iiGudnKqqdqIR5C0mLZggURG
         7ICyvi/bptvhb7oqT1fsjGnTGzCjWv9MoqPFQDbdnXAKOuhZ7EOi3klxixTySx9ZpVm2
         OItNOpq2JT8MX/725xiBtH3P1rQ0eFaOJlD6ljE1dSF1QSfvkK9NhRKRUL62xoIxkiFQ
         B0CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=orDKLkr9r0ftxd9cGlAsoQFjVLVuz4yUhONZhTOHi3I=;
        b=Rv/z15Dk5Lm3CfIQvUKtbGyzeNmFtCXBigD9EPqSx+W+ryfIZrXzojOV2n6fNWppoy
         heiXfYA8syt+/7FRh35vUThdEfVeEmRSF0kQt6Tv1xO65kvSCQaUfT2k8ORIGY3ZrRCp
         lplKDpzaVnJ1cdqyYlJ3JpZKRRm4oM3D/pjFjb5xO+r8oJDv98/0OqcvGemo7Z2G6oEv
         SJ426Nqjo1Gewlmsu3Nmyal2GQwV7096A0xqeUFLK27CdxDi/q3u2wrtvYC3BjJl5XO9
         xRQtK/f7cboZHGaliy3Yv2iGUuNDOtxha1XpnczHMVorsJ21JOOOnjVe6KCNOfNP4w0G
         gGnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=R3Fz3fI0;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n2si343570qkp.4.2021.08.15.12.19.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Aug 2021 12:19:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2AD8E61154;
	Sun, 15 Aug 2021 19:19:16 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	linux-omap@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] bus: ti-sysc: Add break in switch statement in sysc_init_soc()
Date: Sun, 15 Aug 2021 12:18:52 -0700
Message-Id: <20210815191852.52271-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=R3Fz3fI0;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

After commit a6d90e9f2232 ("bus: ti-sysc: AM3: RNG is GP only"), clang
with -Wimplicit-fallthrough enabled warns:

drivers/bus/ti-sysc.c:2958:3: warning: unannotated fall-through between
switch labels [-Wimplicit-fallthrough]
                default:
                ^
drivers/bus/ti-sysc.c:2958:3: note: insert 'break;' to avoid
fall-through
                default:
                ^
                break;
1 warning generated.

Clang's version of this warning is a little bit more pedantic than
GCC's. Add the missing break to satisfy it to match what has been done
all over the kernel tree.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/bus/ti-sysc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
index 0ef98e3ba341..afe8222db7cd 100644
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -2955,6 +2955,7 @@ static int sysc_init_soc(struct sysc *ddata)
 			break;
 		case SOC_AM3:
 			sysc_add_disabled(0x48310000);  /* rng */
+			break;
 		default:
 			break;
 		}

base-commit: ba31f97d43be41ca99ab72a6131d7c226306865f
-- 
2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210815191852.52271-1-nathan%40kernel.org.
