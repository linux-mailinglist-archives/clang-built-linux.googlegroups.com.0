Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKHF3CBQMGQEGCMTNZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 4186435E9E2
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 02:09:14 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id s10sf8599415pgm.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 17:09:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618358953; cv=pass;
        d=google.com; s=arc-20160816;
        b=LawPQ7ag5ilYIrvWrXDmwOlNcvwCk4fOfqhdqRBKX/2sqFqxbPuTRno/YGg8gkC+07
         +G+mOh82y6+zV5+p4usckuDrp23ZO2tPW4TtkBYhh49GFS2Vunsdx12mzaISKZohcMVV
         gJaU4rra1KGD2R1eB+uV3KjVnmkto/YovYMFNO+k8zNJpkYluP7bnKytHdkrnG4Pws0e
         s7khJblD1+l2df+WSbfZhIFHmT7QJgCAIcLPNj3UmqH9LFfSF19WXUhUUckSXMssMCzM
         2gdO4By2Alau5K/xdjhfCPhALg8SMPFpCJjr32F6cWIcCNLUhk4IUrOXrsjzlKd/+vGk
         rXyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=UdVacJ/iENqzI+rbU1IgH4XV3lL57RRmD8Mla30uPzM=;
        b=Pgk4N+vK/AMKnUxtkeiGwgrP9pu1CGXw0OsfSmjftmwF1AOWFrVVBbsVg6erOwTM1Z
         JkcorcdWpCNRvZpnZIj+DLX6cL+b1PnLsyLcZnhX91RW9H8+1qIjOqpZHexyPvn73Lj/
         K7GeaHTRpoBp3+gWsO9+UBk4GQxOdK/UCi4mi4IwyE6/m9MW9rXB1wus6SBJO2i9NMSP
         axxQU0Oq3l8hv1FW7o6TS6pfroW/NEoip8W/MpLBuCXjl4XSbov4PKzBnpAg+Lwky++9
         E8fgGeCrlNxbOyBiOjp6aDGfcaheHP1na6lzoubFMEApZilziv4JghKBgBMZc3z9VK+u
         r81A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JQWxh+Jv;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UdVacJ/iENqzI+rbU1IgH4XV3lL57RRmD8Mla30uPzM=;
        b=WekmKfK8ghV/VH1C0Z6+zEEv6hl/gLI+zBrTf9PUh7sTwjnjSfC9adKZBfNOMJlh55
         n3yQZPbTYSzdPxaQ4shZ26oEoir4sBds4D0/uph/UnyCtF6f177DhWS/nsUsWw5gKNhr
         jJogHTmTjhlkzjHCCoTqKDA18QbHZGmtBpfxvcgJkZUWntwUCNywlnrMMEHa/KMQd9nw
         AKwDxjO60Re4qlYgHfcR66vn+8RQ6AfmkP8jvWyTIWFp0IlTbZ5znB9fsiibS8OEZWnY
         jF2E6VX+RMzzP9PMYMEV4dYIlkQs7hConeAsIpQWDprQIu/xDKLZmQyXphiX+yHi/she
         gyNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UdVacJ/iENqzI+rbU1IgH4XV3lL57RRmD8Mla30uPzM=;
        b=mQV2xGckHlGB0PxJcxb5vzeCsJwe0wkfZEg2ulsa7ec0KQ3xTx/R3YNE0nBo6ZJ6DQ
         pQBK/jfiEF+1yDS6x8X3G/PZxL18wexXgZT90fyXeUESxHJ5IMJ4ETBRgsD7B1pElpMN
         qqsR1J9FCz0MjoeqWrwYMTEB/B+vmeZbWelYgfsKMlH0Z4zO2tJWBfJrqIx+uNnKRthX
         f2kuvNkguVOmN975iHY4det+u73VVyhPlYo76+qsEGAULzkjDQ2GzEcDWaA3X615I+sm
         jmuYA5JlYZwxriZ92/G/6FTxvEKq7qz4GJdUOfV1U86YEdlhp6PSgMgeO+4uWzqb8i4r
         +F6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533aS1+aQTAuzSd6mhDU5nEvXIh3NRFRwPd5hxrDwRv67bmVpRzP
	dwAwgLXJJ5+PjfGjfHnnmMA=
X-Google-Smtp-Source: ABdhPJycepi1b1VZy2Qe8/lNOQ0dUM+9L+DtIPw4QKJKy/+OC3MnGjSHkF9ZLH3WDftA0uHfhWQ27A==
X-Received: by 2002:a17:902:bb8e:b029:e6:3b2:5834 with SMTP id m14-20020a170902bb8eb02900e603b25834mr35193844pls.38.1618358952922;
        Tue, 13 Apr 2021 17:09:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:289:: with SMTP id az9ls74019pjb.2.experimental-gmail;
 Tue, 13 Apr 2021 17:09:12 -0700 (PDT)
X-Received: by 2002:a17:902:5608:b029:e7:32fd:ce99 with SMTP id h8-20020a1709025608b02900e732fdce99mr34153492pli.0.1618358952039;
        Tue, 13 Apr 2021 17:09:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618358952; cv=none;
        d=google.com; s=arc-20160816;
        b=LgFo8vsN8QCkb6ZNTt+SaQdVFgBNOhmtSdvr3b4fQ8I3fa60upy1apcrhWw3MPT3MK
         siEe4br0htZHsts7dRk2zxbY9UwFTMwZUrN3kdjY3mLNYX7kqB88MXQQbJ4oBhju8SL5
         cRxh0LxnoZY4SF5KC27KPGseKamojmSoMXNS0Sw68Thjyj3yX5JxaHQRrieComIKwPkl
         gDNEKzIWCyHRQ/WIkYQRP0NBtMffaU8XgPgEN6buE4cEUXi9i0F7gD4WkNBPV1iN5S5U
         GmWNXf0cC5YM6DiyeaOc9QC5FholDSgQlRpAYqmq+kBVOOg82xQ4mKWc0WcGv1n/2Uhc
         FZqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Upb4341ZORb4RTJqTk9tC5tC/k82McZHffrXUXtGl4s=;
        b=B0xnae0cLjpboUSHCbqxyVXT4f044gqVz0I5WfCBBFN+71dDo+mq6EKqIhpQbaDqGb
         J0C3umeiGwUp4zgRSOw+JjISkgES4KzxOjAuGXqnDL39qHIfBkf0gIApVfQB3A0q8flL
         +YArG6WQcCo6fGSmVfrGBA4Y8AXMuqSD6wVzzV2ovgN4FNa1ehXip6ZJ5aJ0uYZYkcW0
         BYymBYaW/0VB9DsY20HGJaXI8ZT1JmyOK546S4cfdLipJRrU826BLwufLisYgAd0Mw4K
         FOzuqzEHZlKvbsR+Z39mFLZHYI6vSWu+xDrX2LYNNRr1OVsowL7CKiXbUDlF5dPRtd3M
         jq8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JQWxh+Jv;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g23si1636271pfu.3.2021.04.13.17.09.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 17:09:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DBEFD61246;
	Wed, 14 Apr 2021 00:09:09 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Jian Cai <jiancai@google.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	stable@vger.kernel.org
Subject: [PATCH] arm64: alternatives: Move length validation in alternative_{insn,endif}
Date: Tue, 13 Apr 2021 17:08:04 -0700
Message-Id: <20210414000803.662534-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.1.272.g89b43f80a5
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=JQWxh+Jv;       spf=pass
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

After commit 2decad92f473 ("arm64: mte: Ensure TIF_MTE_ASYNC_FAULT is
set atomically"), LLVM's integrated assembler fails to build entry.S:

<instantiation>:5:7: error: expected assembly-time absolute expression
 .org . - (664b-663b) + (662b-661b)
      ^
<instantiation>:6:7: error: expected assembly-time absolute expression
 .org . - (662b-661b) + (664b-663b)
      ^

The root cause is LLVM's assembler has a one-pass design, meaning it
cannot figure out these instruction lengths when the .org directive is
outside of the subsection that they are in, which was changed by the
.arch_extension directive added in the above commit.

Apply the same fix from commit 966a0acce2fc ("arm64/alternatives: move
length validation inside the subsection") to the alternative_endif
macro, shuffling the .org directives so that the length validation
happen will always happen in the same subsections. alternative_insn has
not shown any issue yet but it appears that it could have the same issue
in the future so just preemptively change it.

Cc: stable@vger.kernel.org
Fixes: f7b93d42945c ("arm64/alternatives: use subsections for replacement sequences")
Link: https://github.com/ClangBuiltLinux/linux/issues/1347
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---

Apologies if my explanation or terminology is off, I am only now getting
more familiar with assembly.

 arch/arm64/include/asm/alternative-macros.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/alternative-macros.h b/arch/arm64/include/asm/alternative-macros.h
index 5df500dcc627..8a078fc662ac 100644
--- a/arch/arm64/include/asm/alternative-macros.h
+++ b/arch/arm64/include/asm/alternative-macros.h
@@ -97,9 +97,9 @@
 	.popsection
 	.subsection 1
 663:	\insn2
-664:	.previous
-	.org	. - (664b-663b) + (662b-661b)
+664:	.org	. - (664b-663b) + (662b-661b)
 	.org	. - (662b-661b) + (664b-663b)
+	.previous
 	.endif
 .endm
 
@@ -169,11 +169,11 @@
  */
 .macro alternative_endif
 664:
+	.org	. - (664b-663b) + (662b-661b)
+	.org	. - (662b-661b) + (664b-663b)
 	.if .Lasm_alt_mode==0
 	.previous
 	.endif
-	.org	. - (664b-663b) + (662b-661b)
-	.org	. - (662b-661b) + (664b-663b)
 .endm
 
 /*

base-commit: 738fa58ee1328481d1d7889e7c430b3401c571b9
-- 
2.31.1.272.g89b43f80a5

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210414000803.662534-1-nathan%40kernel.org.
