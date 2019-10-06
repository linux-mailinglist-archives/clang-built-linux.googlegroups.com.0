Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBNOI5DWAKGQELLWCDRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8ADCD49E
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Oct 2019 19:28:22 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id o133sf12547446qke.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Oct 2019 10:28:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570382901; cv=pass;
        d=google.com; s=arc-20160816;
        b=dJ8ShZpipr1WAZPgUcqhKzY56KXqkJ7lKL/7JWBttJ1FOKtaK/Fxpczn2SrTDF6rKo
         PJHNtb9kG477aGr+csm5asGx1gjxGOw0CAKUbzG38d968L8HQrko/JD15RQVkaJ/JCeF
         IuK0t3fVKQdtVC4rnYXPa5Oh76+Y6zAxxyYKFVVKG19vqHovGFDN49C5YuCGnKux5XK4
         JgCwRY6s93Ihvoh+xjhnk/E22Gtg6fVygf6z5yMLq8AUM0vyrriv+Si3akcjd9LTwNWf
         4STNGoVZ0Hck4aJQ3SEArLsagZhFO+Oh7RJRX7528JM6KVe4jX2tdLh7DeYH1zzufPRw
         SpZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=dmaAv4UOOjAXlgxDpMKynahHV26AjhxJSjr90MbWatw=;
        b=U9AoySZyi0InTQ6ZIpftLEoJWflQjp9ZsAG3/7m571a/q1nt3C+PmLgykDtj90MnnL
         Lo/97DTSYaPSwtaOtlRnTvAtoqPDh3e1mnumP0GLnlR0uMqczrlP8x/wH46nrW52+Y4z
         XwpyPQStZ57yWp6SDCGvmgZ5S/4y3V3+7MGDmxzAEDbcAgezXrhJhrKhhRwzDERn0Yrn
         gj6aBo90IkWxJ5m+Bwp4KSNAVqBzh4auQwpTP/QDjdF0qvYWGeqrD8I6a+5LRcYYbsVr
         oUCfldjEFWiD8dL/SkNTzSFRD145tmcs3pvdCGBVZdDDEtQPhi7V7/k58kUayV2vR3Et
         LY5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="vIi6M3/b";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dmaAv4UOOjAXlgxDpMKynahHV26AjhxJSjr90MbWatw=;
        b=ZloYsecdIVD3XMzbc83U9m05NUm2iQjI/LzbmKa04fLyTlGCLIcPqvu/MLzI6HE3Q3
         EDZb+0+GcwOCcDMN2/FOdXIxTKfXV3HgCQ3AII6SIam+zMhuXHIjRuhpQcsu9hyu74Mx
         eaOSlMdAICScQxwrjrt6G1ghNBjHZ08GCcyMr53Zo3jwHGLNabwexQ+m/l9DJv32Qa5A
         QDQA3LHeRiFku0U6OWhsiKp4HyPVgtE2KcJQk62np7UezjGb7MdgxB+WQKwTZr9seQNg
         ksSoE0CCcA3IRFo2KEKhgMAGC6WTm9JPzC4KHgEOlb2TFZMWQMLaZ19tdjuolClDNvYq
         3cHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dmaAv4UOOjAXlgxDpMKynahHV26AjhxJSjr90MbWatw=;
        b=Y23GXbaUSLoaQvvsMklOlk++pLVNI92oeI+0vXeOwk4TUYjrUI1v/Dy8umWsXB6/bX
         TRD7NcTIMSwUXbErAEoe8N6ZgP1+QcMGOfdU41xdv+SHzu27rp72IwUcB3FW1333Ygpg
         F0eZlCg7GKI3Vtc2M9j8Pzu3yzZEesLSoVfWwejQOYkCp8OwHnj3qVdNMB0jIsizWqIm
         MRlr0pVE6c+qV5rFa0U/h9sikkkKMgVQLybn2If4rfe3DCyrRyFPR75NpEoM0nA4ME1B
         mCSptOLkoSDrx9yppQGVQOi60eoe3Tprlsa/N6LBbCMTzEdBHL9Q8CIA8b308GILxj1H
         ItCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXNmuPc/MgZhgjiOkVPu1rZ1fePIvDzpeWiATxsO+VQupDJCNjW
	Foorn8ktiEsruDX7770JQb4=
X-Google-Smtp-Source: APXvYqwpYXl6ZmlRxuZyk9Y4m+4dqM3M0u9fADjMbDB70gCiLi4MXVFIms5OZqywTdm3pwMVGVWCXA==
X-Received: by 2002:a37:a213:: with SMTP id l19mr19532305qke.397.1570382901716;
        Sun, 06 Oct 2019 10:28:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9c11:: with SMTP id f17ls4189907qke.9.gmail; Sun, 06 Oct
 2019 10:28:21 -0700 (PDT)
X-Received: by 2002:a05:620a:113a:: with SMTP id p26mr20141984qkk.353.1570382901276;
        Sun, 06 Oct 2019 10:28:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570382901; cv=none;
        d=google.com; s=arc-20160816;
        b=brz578rkQ95BgEYD9cP+k9K1OgLrOjOhQrgyVbwwmmw6GsA88B9JS/JAW6JElxNmnW
         QAby/42297TJ//20Dn6WAZdHmrXRDRkN87RbCaPkNYLN43n0bBIwcIMTOznFOHhboJtk
         Ki7afejXQfYbAzhgiyCPwtOo/CnnmqyaqgBHXJaI88qOMry5Ro7yKA+vUUEJpXkArt33
         CK90AOVy2QWXAlQhMoGlCUycVpxMgUCmr7UySFHP44lGRoCjSS/QVfrs/cPQTyr5QD8K
         Vfs/4WqAPE670vXNYJg05EeTa0uuFTBUnvePGTd4bMrklrwdBYUFdd4Yne3lJhCWFgRu
         XYVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=EsUmI6Y+dKKlwIo+zknOoTDP87qCHVBBJHpkyzMpPhg=;
        b=EXLAKFUVwjwo+tm+yuezBbqJ/rLuiHSSqnskhiDBHfk2/E7sC11/K57qnjIM4w9BbA
         rCpOg9ZrXGQv36ioIbVd1YBOFMz03/vlEOm7DL4dqb/CYUPV6KGj3MTUdugMPdvPndXU
         u3M8quz9zAeU3CvNLAjQm8fIn0tJB/vp29Ses+Ph6iGMokX+WtXtoVxG39SCgQIj5tw9
         XChDTVW72e3PwnefUe1lvXnGdXavjYsHs4EOVRaqu1yHoxSn7/BmhrR9EGVoNygIQhWt
         gzVPVPQ0BUBCHP/a7IB5njlfb9z0jJJ7FZGQ0TcvRLeApJS4cvDtDHhmeTlJv7jQo2LP
         x4OQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="vIi6M3/b";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l4si573087qtl.1.2019.10.06.10.28.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 10:28:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BBCFA2080F;
	Sun,  6 Oct 2019 17:28:19 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Huckleberry <nhuck@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Scott Wood <oss@buserror.net>,
	Stephen Boyd <sboyd@kernel.org>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 4.19 013/106] clk: qoriq: Fix -Wunused-const-variable
Date: Sun,  6 Oct 2019 19:20:19 +0200
Message-Id: <20191006171130.650525085@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191006171124.641144086@linuxfoundation.org>
References: <20191006171124.641144086@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="vIi6M3/b";       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

From: Nathan Huckleberry <nhuck@google.com>

[ Upstream commit a95fb581b144b5e73da382eaedb2e32027610597 ]

drivers/clk/clk-qoriq.c:138:38: warning: unused variable
'p5020_cmux_grp1' [-Wunused-const-variable] static const struct
clockgen_muxinfo p5020_cmux_grp1

drivers/clk/clk-qoriq.c:146:38: warning: unused variable
'p5020_cmux_grp2' [-Wunused-const-variable] static const struct
clockgen_muxinfo p5020_cmux_grp2

In the definition of the p5020 chip, the p2041 chip's info was used
instead.  The p5020 and p2041 chips have different info. This is most
likely a typo.

Link: https://github.com/ClangBuiltLinux/linux/issues/525
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
Link: https://lkml.kernel.org/r/20190627220642.78575-1-nhuck@google.com
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Scott Wood <oss@buserror.net>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/clk-qoriq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clk-qoriq.c b/drivers/clk/clk-qoriq.c
index 3a1812f65e5d8..8abc5c8cb8b8c 100644
--- a/drivers/clk/clk-qoriq.c
+++ b/drivers/clk/clk-qoriq.c
@@ -610,7 +610,7 @@ static const struct clockgen_chipinfo chipinfo[] = {
 		.guts_compat = "fsl,qoriq-device-config-1.0",
 		.init_periph = p5020_init_periph,
 		.cmux_groups = {
-			&p2041_cmux_grp1, &p2041_cmux_grp2
+			&p5020_cmux_grp1, &p5020_cmux_grp2
 		},
 		.cmux_to_group = {
 			0, 1, -1
-- 
2.20.1



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191006171130.650525085%40linuxfoundation.org.
