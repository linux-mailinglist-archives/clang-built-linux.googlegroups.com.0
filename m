Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBQOG5DWAKGQEX7WWAIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 46119CD42E
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Oct 2019 19:24:20 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id i28sf8960751pfq.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Oct 2019 10:24:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570382658; cv=pass;
        d=google.com; s=arc-20160816;
        b=wd/6OlXAV7FJ514S05mhU25aSBlc4nvQ5GMxEbpxwVyC30TxVa3TFv3bARgMt/O0yY
         uLs9EtSnmOaDZRRQ359d3IFocJekHaUoj65BWHJIsYP3pvc3/UMP6NJcs07Ut2EZyjel
         IBviyMz2wue/CpkQ2urBmn4W/MOvkr51+9zYK0X7oJD2ss842Sn7bDdIOzIa/SPBlLa4
         6h1Adv5I4yf/MjpTW9BxLOaktvJQiiFy/I9/hjIbAIpMZiXTzgrwoDjpIBLKtzsKfEP8
         d7KW7kk4Zr1fmOb/C0ysNXCb7snsmyT9XNMzIeVIyyLKiAXbaSPbNQ2nWR62H17WVMRq
         U+Ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=mwP0rAveMULHuLAg7Qi1r3pVOIZsknwfPFxcL6KmNQQ=;
        b=UNjg4bCzw+IlOYGbyM9CsQyDKj1SQwmf63ruPbFSl21qBf3nFwo9oQ/zaj9LrquKC+
         q/ti9w77xio55ltqfuJfcR/d7VIl1APJQD6LG/NhcIZrH8DlcI4w9o6GIwIb028g0Epl
         MOeJ6zAv81iRSjaPnlKzJNX670rpL8+de8HknXXU1TsAgHEG1iLa7VCc+20y9da/mckD
         BJtD9GnKXUL6cnDDCDpdr+nMKtxHca3y3I0dgQgiassFAvVcex5HPw4f2l9klM1QyId9
         kbnGDbcIIaSk0c53nxPNL1ZXg7+qlNDXUciAAKpbkqKJSRG6lPQUjPma3krzKBJu3awP
         Kadg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AQR+TtSM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mwP0rAveMULHuLAg7Qi1r3pVOIZsknwfPFxcL6KmNQQ=;
        b=DkYNfsfdvFwwmp5S74cHc5epw/1O3wUc/XutlW/cx5pMlIoI2ZM0d0/EM1l1/t1S5w
         XLubSF7qIFnjPMYM6y6COQVfAVfot7XLDBlRRQqakGxE7Nsj6sHaKivgY0iAjNWNV7IX
         xNyuzQgFDVf1vSPhecTunptET3Sbmsum0MA/0zg1ynh29XOW6PqMY5fqB01ATsLtTjnr
         z1L/ezXf/+fxMad8Qb/D5qbK9c1uMV3fFe1A+r+3cZ6G2sjNPUI+69PxwbdsW49p6/ZB
         FIHbZXvEloL+gfEYSpa8tjRXf5V4ae0EwGknvsOP6ihtIzpT+UJ1y+zODBzN0ghuHBvT
         koIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mwP0rAveMULHuLAg7Qi1r3pVOIZsknwfPFxcL6KmNQQ=;
        b=EM/D9Fa0ULffhrA2i32W7SepJD2eSTyeJZO0oZxTus5cndy6Rddl5v8V4NBBJT8RyC
         YWtvAAJgIOP/16F0+brP9w5M8MiP9VMlMdkuDNF9zwpdON54XU/BfcAjJxKky1BdeuOz
         f8k+OMlkmlaoHFmHZfiIdCPGQtztAth2EF1Q7XWaSnbXkc+1mCdo3vLZw3zQa5wzYQYl
         fsXrgjQrGRAeEdVJ6fYxmhiiZQuCsP3jW2IwJ2a5KyiKvA6qmQZHbqmFIzS2SvNvUDc9
         mugsteR7+t1k5DaCJc/qYDspflehcmd2Rm3wHZAMHqsqVZ9rHBG3BCY4jiTfZ/golHOm
         UhGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUF5GlgKn69TmnO7it6z6sEby1rfE0WnqejM+QkMgF5L98OWWrz
	1HSemyQSZESVAlHp4VvWxrQ=
X-Google-Smtp-Source: APXvYqx5fg3tVzzmAMLVYiMl39zCYNKRbBcZ5l6MZ9qlGSlnOpOXqLjD+J/GAh/cUJ9eattgYA8l/w==
X-Received: by 2002:a62:2c11:: with SMTP id s17mr29091445pfs.239.1570382657485;
        Sun, 06 Oct 2019 10:24:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b485:: with SMTP id y5ls2152342plr.0.gmail; Sun, 06
 Oct 2019 10:24:17 -0700 (PDT)
X-Received: by 2002:a17:90a:cc15:: with SMTP id b21mr28673626pju.136.1570382657069;
        Sun, 06 Oct 2019 10:24:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570382657; cv=none;
        d=google.com; s=arc-20160816;
        b=H/hquRVvq4pL2hAryjQXYyRE2D0tKTrO6FqPZ1yNBfc5gDRmy29LyPpYV2Cp7Bi22p
         7fylvgfrK2ApJg0rI26KEBj1gDmf+giIZMdGAX/e9LuIL/yVb+RGnqWPVZXRwo+sGdHE
         QkRUq6dNdOGsCBQFjHwaG7MgDjrJdmCkR5cYg6Y+ajEzxYJOeM1RPyEJa9fOuXPMlHPk
         d8mab02qIDN7QUxHJJ/w8rldbhDXdMB1bJeyL+xmd7vczes8idiZCTJe8zF/G6SyMnB2
         KvFEHf++Da7Oi3SFaWlOy4UXWN5B1qUNAxD/I07rPdUSNWCP19LJPpu6IKqoLYTkjreC
         1+8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZXoYLiPlbxfcZ5prFZi+TAzPSUPpNYSfag5rgQghQgU=;
        b=ROaixvv4piJvZpoFil7Gbc0Gye1tuKzMhKY4VV5RyqJ5t1M8qACy7/NKHZKUMlocRQ
         pPf+IXeJ8GNgS11G+KgMi9iNJDJoql83i9b81B5tq5Gs+QROV1Rsrnu6D0FLl+mHPUU4
         ob5JunZZsuStrb54/d+a1QqdrE/BbsHJs5LirxfN/Mb6cVt38WZrhh2z4dYQY/nriysM
         kBhnHrAaacGvqmk+rU8mcKfDcEDXnK90aD3ZuRbYcZ3eTEpaiedJfJgfGp7EwVBBrScx
         GFdpXRX7zyJaMdFyNCO7mEPPycg1mWHYsX8PdsFF4EMemBIT7zazXGgll/J9LITP/t7Y
         VCvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AQR+TtSM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d3si661326plr.4.2019.10.06.10.24.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 10:24:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 552962077B;
	Sun,  6 Oct 2019 17:24:16 +0000 (UTC)
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
Subject: [PATCH 4.9 06/47] clk: qoriq: Fix -Wunused-const-variable
Date: Sun,  6 Oct 2019 19:20:53 +0200
Message-Id: <20191006172017.223846845@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191006172016.873463083@linuxfoundation.org>
References: <20191006172016.873463083@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=AQR+TtSM;       spf=pass
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
index 80ae2a51452d7..cdce49f6476aa 100644
--- a/drivers/clk/clk-qoriq.c
+++ b/drivers/clk/clk-qoriq.c
@@ -540,7 +540,7 @@ static const struct clockgen_chipinfo chipinfo[] = {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191006172017.223846845%40linuxfoundation.org.
