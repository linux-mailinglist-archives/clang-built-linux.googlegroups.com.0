Return-Path: <clang-built-linux+bncBCH67JWTV4DBBTVH6KKQMGQEAA4Q72Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id B82AB56083D
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 20:02:55 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id l6-20020a170902ec0600b0016a1fd93c28sf9028631pld.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 11:02:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656525774; cv=pass;
        d=google.com; s=arc-20160816;
        b=oZ0XUsyoXtZ3dYyQfuU0Bnykqs3DeAA7Eq33IPLGK3l3/16yg8Ak4ic8u6aUf6K1yH
         ROaBCrwg7Tw0/cI6ptamRB2Tdtdl/jKGzb6LNo/eU3vmWJbOUGGaB/doA9DAfAzex5+z
         y+kJFAi3y120Xie5AUYdQCMQPnPBVPicQUfo95LcICZsX2FazEtNrasX9rxMWjnEnx2M
         IKYRXxWuzfFGIjHfH9PZEnM8bYOnlFRH4+6Rjkzq0QStZ/IO4gmweuIclDueCPIfL6rz
         u8ZpxmB4RkJBkecOYrEnMOSw0OCoiZlJbfZNwRDxtO4zUl1MAMcvfAonCqrCH0waIziT
         iMlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=D5rF1Vu54EB4nIjJ8AxqHtNwyxQTPFU6MXfF1VvV3A4=;
        b=R9XG7hftyT80TbWZqL/PA2OAjHPr2+2BH4ySTwIViq83tO05oDjxYB5ZUiQ2peUtqw
         vR6FMeU4j3flCElBUXpzIpn7tFL9RRpbJGAG9JbVX/R9ltXAUnFCpahIYwIa/0+EhVts
         Una8dT10SXmm+V3jW+sRDiahqEKvJI/vTO2A7GiFlDZPQkcyD9HAAYXl2AAs1Ad4xU/h
         Jxk6och/lqtb7NP0rCRfGO+9/W1aH43r9tNWKnHw06PfiwdCJZz4P8TMw8N7B3SUnul/
         Yfqyy8ukmLbeFYu+FWIojie3x+m/xdDLbnf5CUb3e7YfKsMzoFTu29UUFZBrNazlF4eL
         A+BA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=YKDOtf++;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D5rF1Vu54EB4nIjJ8AxqHtNwyxQTPFU6MXfF1VvV3A4=;
        b=Jx1AfxJhoQi0ZfzQc4dkzJrBtP9Dae0auphuImPXpXbKbYPt/dCQ4FlvpKl6OzgkNP
         vqyGa7S2/SjVFhiRLmWJ2oMaUBRD2HlV/4oSRvLIrnCwb0pEV8Q5vHa2aCsha8SKvb3j
         OFk8/U6wCzaFsPXSuh6GuOpFoj4XQzLqArxjUU5+czmq+u9IddKlXhH9mZ4bAzB1Fl2S
         yhkUSL+Q4KqsofgTOrE1ee/1yLXwlBpMjCOBKqYJKVSXdE+f+5tdWK0W+fDg29TPOzZI
         TSK8OJxcyQ7rDn4dCijdSKUUhzndODncfMp266RDGFR9QOtb9nxxQRb+SykUJv0+5AX7
         /Hug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D5rF1Vu54EB4nIjJ8AxqHtNwyxQTPFU6MXfF1VvV3A4=;
        b=igUDYCWzd7SH6gWFuIURgnmMtgfYXEKUbjljLmtIWtKJP0ze+We9vkG4yvMLYdAYPC
         K+fm9F2vwsb7JnL3aWdT/zpOnpJhubU62r9IKCQfEBJhA8KEl/1tQl4uJ91rW3hg6yun
         cKPW5vlW5dt/+VZacqyKpsvUHecKzhPeExYum70XlV+q2/0CizvoaYrhgONWPsCskMP1
         1kJ9ELAYGQr4XrnitrapEn7rVy5iDD9kG+XvQG90RvRM3Mhfe29DeuiHR4DNS9utphxv
         +Nty1qPXEFvPtv8JGA0m2RQq6qKVnu8t70h177hCYR/a9W6juosKNZWsB0c/7fVFq3bY
         oDkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D5rF1Vu54EB4nIjJ8AxqHtNwyxQTPFU6MXfF1VvV3A4=;
        b=vpbB+QrqBgMfLdaESALn88MwVpI1pbA+m9NHCS05la2MAvtyPeSANCXPaNyGGsWwks
         oEjaO4rHWknWTYWU2/2QDauV7OB55V9EY3NBVAHWFl8UtMDv9sxaQ3MWaqFx/YYKQdpi
         VkEvDoj7uaPsmKRiWtEwCLdS8DQEX4mIl3FVTflzTc3icunYTmdnDQOowj9NthdEZ++e
         dUp5B4QhPNmYLeybAqjcgAcHOvvIXaUPb2uSW28j3VHYAP4kpNdxNWr0t0FSj0E6gxk8
         vTAzpC8LOrS9wm4Jy3WGwB7BUNefzdJyXNiod9sLxOQQhbJG7S4TjB41+Gr+wA3ap2OF
         V16A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora+kylMj8Cm7RRcMawwIcXaEOrduA4A4JETC3IQkimkj2FFkZSao
	U9PCeXdviwYMgly0uM8PY38=
X-Google-Smtp-Source: AGRyM1vPX+knhzh8fBOkVnppEZMMeuckV0a2IWL/JuR3mxSosyUuyujGMXKdKhekAFYlO53oCJPmMA==
X-Received: by 2002:a05:6a00:4298:b0:525:54a2:dcac with SMTP id bx24-20020a056a00429800b0052554a2dcacmr10157521pfb.19.1656525774325;
        Wed, 29 Jun 2022 11:02:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3013:b0:1ec:d90c:3dc4 with SMTP id
 hg19-20020a17090b301300b001ecd90c3dc4ls205195pjb.0.canary-gmail; Wed, 29 Jun
 2022 11:02:53 -0700 (PDT)
X-Received: by 2002:a17:90b:3e83:b0:1ed:59f0:bc3d with SMTP id rj3-20020a17090b3e8300b001ed59f0bc3dmr7099347pjb.151.1656525773651;
        Wed, 29 Jun 2022 11:02:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656525773; cv=none;
        d=google.com; s=arc-20160816;
        b=xr3rPnSTpQ3rXHk/GmmEK6K0r9Q1jDtGIXS3gSq/1s9tWZrOxg21WXhMAOhEpPYNLJ
         25DaGP0VPsY7Q3sP5lwGT11oXNlx0N65U9jYNoM+5Cz63CVgiCgH6YMeEvEBZ87Nlmww
         i3U0gO+5zu2HFGBMxLeCbdc1uZ9cfZanl4RA3sC5q97zLWp4deMdOvKwHP+nQtkmClKO
         5eETPm29DSQanuOdJe/UorHK+4bHif7ILq9R8xfhPrzSd3VplauW/PEViRYNu8m+aXVV
         080Wk3LszgWhqmLq5T+OMDkNwoIgYJ+EVSKHpd4a9fjh54NwY0nOExtptWs/WGehTcOn
         tO6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NCbkwfST1EQqulPTwFVqWpX4uMmlgqEO2U6UjuOGwso=;
        b=Fld9E/7kpxSRW+zJxSe8AvnNT3pmBKmzhtO9+FQ2/SJCa3Tv4mwXtPkWNmEweYszXB
         b4ooavYOr+188+/1ObVtDwuMT+JiLk5BrgkDVOp0kjoEmy6ZIb6h149/2m7mMJlRJEvr
         K/8Di/glj3fppgBZy3bxUKl6FuhjVSIzQG6KqbQgTjPn/gZt05fNo1ji2G9407vb+36p
         WEVs1UCvu32EsBw6BXNVBK0qt7ynlRrpInSPclyiLA2kQEPk95LVeya/8ejlTr2fpRIs
         CAoOmrs3uwzJgCbLKaRC1YaG6BtR6p+7SSVEKVC6970vhnKupY5tpyBO1H93fUuM5IlU
         u6Bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=YKDOtf++;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id q3-20020a170902f78300b0016a11b71bfbsi633661pln.8.2022.06.29.11.02.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 11:02:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id 68so16024147pgb.10
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jun 2022 11:02:53 -0700 (PDT)
X-Received: by 2002:a05:6a00:80d:b0:525:b61f:6df2 with SMTP id m13-20020a056a00080d00b00525b61f6df2mr10331146pfk.66.1656525773326;
        Wed, 29 Jun 2022 11:02:53 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s7-20020a17090302c700b00168e83eda56sm11736371plk.3.2022.06.29.11.02.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 11:02:52 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: stable@vger.kernel.org
Cc: Stefan Agner <stefan@agner.ch>,
	Tony Lindgren <tony@atomide.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Hans Ulli Kroll <ulli.kroll@googlemail.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nicolas Pitre <nico@fluxnic.net>,
	Andre Przywara <andre.przywara@arm.com>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jian Cai <caij2003@gmail.com>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM PORT),
	linux-kernel@vger.kernel.org (open list),
	linux-crypto@vger.kernel.org (open list:CRYPTO API),
	linux-omap@vger.kernel.org (open list:OMAP2+ SUPPORT),
	clang-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT),
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH stable 5.4 08/11] ARM: OMAP2+: drop unnecessary adrl
Date: Wed, 29 Jun 2022 11:02:24 -0700
Message-Id: <20220629180227.3408104-9-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220629180227.3408104-1-f.fainelli@gmail.com>
References: <20220629180227.3408104-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-Original-Sender: f.fainelli@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=YKDOtf++;       spf=pass
 (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::52e
 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

From: Stefan Agner <stefan@agner.ch>

commit d85d5247885ef2e8192287b895c2e381fa931b0b upstream

The adrl instruction has been introduced with commit dd31394779aa ("ARM:
omap3: Thumb-2 compatibility for sleep34xx.S"), back when this assembly
file was considerably longer. Today adr seems to have enough reach, even
when inserting about 60 instructions between the use site and the label.
Replace adrl with conventional adr instruction.

This allows to build this file using Clang's integrated assembler (which
does not support the adrl pseudo instruction).

Link: https://github.com/ClangBuiltLinux/linux/issues/430
Signed-off-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/mach-omap2/sleep34xx.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap2/sleep34xx.S b/arch/arm/mach-omap2/sleep34xx.S
index ac1324c6453b..c4e97d35c310 100644
--- a/arch/arm/mach-omap2/sleep34xx.S
+++ b/arch/arm/mach-omap2/sleep34xx.S
@@ -72,7 +72,7 @@ ENTRY(enable_omap3630_toggle_l2_on_restore)
 	stmfd	sp!, {lr}	@ save registers on stack
 	/* Setup so that we will disable and enable l2 */
 	mov	r1, #0x1
-	adrl	r3, l2dis_3630_offset	@ may be too distant for plain adr
+	adr	r3, l2dis_3630_offset
 	ldr	r2, [r3]		@ value for offset
 	str	r1, [r2, r3]		@ write to l2dis_3630
 	ldmfd	sp!, {pc}	@ restore regs and return
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220629180227.3408104-9-f.fainelli%40gmail.com.
