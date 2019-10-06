Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBIOM5DWAKGQEKQILXSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id CEED0CD570
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Oct 2019 19:36:34 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id d64sf5671756vke.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Oct 2019 10:36:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570383393; cv=pass;
        d=google.com; s=arc-20160816;
        b=fKY/FRHelthMpAsgOU10x/Ruesyz57abO5KxuZLtyjUBGxR9Dev1eWA6RVi5FS58S1
         3PNc91ZuObolmqZGIvDxQdvvdOv82vWUm9Lb4Rj/al4GxhO20/IK4pNitlFuKtgyMSly
         fqi/QSCOiS/4/dTOKTY9aP+t5LQiRJMrKedt5yn9PyPLQz7BAos32HX75rx+BIf0Z/pK
         Ezgk5mwwR3S86Mf8hsqrl1QKa3BUkqOKEArZn/c9wSQtwGiJjUZBBomZm6FjWjNjgPVF
         6tq470QMqbjERPZMit71bk9HkaH9Z7lxBt0s3ECiVVHzWTMOQ2JMr9bFMH4wcg+ZLZBL
         2Tow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=kbrgFz2cUC3Xjut8YcUaO5V6rQEdS6B14mS7bibCRm8=;
        b=Q8DY/CC7Wa6U6tlw9gxh2ssYVV2ZqLLyg6R/cRwh+/B1xh6wsGk5ij4Bz7bxRkSAoQ
         KOCpzscxDYZRyaB1gK2tvrBZSEiRWiBUD3d56/WYs3OYTuVgGZ87qQDYr8S6aZgod4/A
         dz3FOWzhx9+9gPF1auAdnO5VF5yg6l1G5OsdfYlTRY2lynvqDR32iHzEwDe9tu3BH9C8
         DRMJE0eQye7vU3ATqiSNHQKJ5W7jg8hWa2rbyrJkrjUpU4Q5RVakjo6CBbS+ekPZvNH2
         o4nJ6sE+WPrilr8KTjslsjPWObRZ2J1dKgGzUwQ7+hOrnlNlx1Ny+90kVqgtLD16nVwl
         d4cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fXbKlF0F;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kbrgFz2cUC3Xjut8YcUaO5V6rQEdS6B14mS7bibCRm8=;
        b=Ne3wmWHGgE8wXh1FkCLD5JSaK1v+JTWsL3fm6cuzIrKSRVN1j0Z5OtnOQJpcVTnpL0
         UHqC5Ibk330BjlcgBQjUAtm6SuCr++mELVQQh8mCF/H7+eP14WZtx8tyybl5LvYUcyMn
         Xs/nqoO6ZNDRMbefYpx28Jq5L6kCvwqXNI9300F9PGW0qdgrwk84z5TI93jNKNq9AO87
         os2YsKQvL6WxpFIzmN9dbaXOrKgKSPx82TwUN34TSF94PI51Gbr52MSjKVShUtBCOpYJ
         6zFUBxoz7UOS8jW8xj2QwjrbhARUaxMNeDjUy71QO8YZgUY5h8Rgjm9zKJNJtOrs/ZGL
         haEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kbrgFz2cUC3Xjut8YcUaO5V6rQEdS6B14mS7bibCRm8=;
        b=lqokcoBwLOdMtjd8h3FlqYyYIh84pXiKKVwv6awcjibg/sKFm9l+0qoFDPAkLMfksE
         476/dPMfUBI1zbwtt/9wy+EDeIeT8yLEx2z/eYdCne87ZO3rtPjFHrjYitu4oiZDg7qP
         5dRfv2RFhWaoXwtYuxOECf+jrEMhPSCJrOSm78uAOcEkY5M2xV3Vl2Knm3O/l1DKGQgR
         jkjg+wIrU6xNOByaZD8sRdkBlp/qxO+BNiLOwPu3F0XN31c1FQi94+tzJjTCTjp9GtyU
         w4kwktjQd+2LF4CuMCKTZk0J5+ygGoHypzi65nIYfRSqFGsmu/Erqv0ozRdHWVqNRgTQ
         HfrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWQK7fCEvgIAvBNjqVW51OfxqAxSEhVQeC4UF5OM4Lkc65iabg3
	WamDguL6nD2w6FmupuC+KSU=
X-Google-Smtp-Source: APXvYqwcKAT0jGnXMsYSlZYMMEfAAKzV5aU0n6SdfrML4WMfNztOrPIqoSv574+AklNjK//T8fdzBA==
X-Received: by 2002:a1f:5f51:: with SMTP id t78mr12751243vkb.66.1570383393525;
        Sun, 06 Oct 2019 10:36:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:4f86:: with SMTP id d128ls546771vkb.5.gmail; Sun, 06 Oct
 2019 10:36:33 -0700 (PDT)
X-Received: by 2002:a1f:f2cd:: with SMTP id q196mr12678621vkh.31.1570383393170;
        Sun, 06 Oct 2019 10:36:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570383393; cv=none;
        d=google.com; s=arc-20160816;
        b=cvzSZOTc/bY6L4XJ77nGpJ8lTYp48SMz4RDKXcpxruuUm8dWnjHsA6bbzSQLlHjyMK
         rWYKa//yYKoJt01bsfN+4FCkJmlhJsGhEHcxxMt44XRu0DLcsUTmCjlrb6AiXdv2xbu2
         YZpTaq/uOkNJJS8e5/0MG4JP8trJGb3FqS31dvwou5TK2fQzbR0TwTaHfEdF9FwZn4Sm
         NMMkkvDeHrd1PtpuZ4EI3GQGL+o9F01+ZSb5FgQIxgJd7KvZZUNYXzORcfX/pPsQjyb1
         OTXT8OdsmUOPQQT9Gasg1LPf2k6553MSfWmzfL6I5MCiX0Tt8k2SxLx0a5jlHlmQxtwJ
         fMbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=F6SiaRmqdaPuGrqdvs5XMlPH2oKyB3LPZWnS+UYWAfM=;
        b=vbHNXEJIirl28tEzMfkUWz8JsKndgaId+g+UfoAsf5fyTzdusq+T8UxnndW0gtCRsV
         MoffSsI7amCDtuXIA/L4Gt8izzlqKFa7cT8w4PhHCt9/Dd4pFZm77d2dnHwj2uuHOfvi
         dQndLM9apvy9VuziWGresCAwY6FmF4rI1K4WAsH2e6lRwIIUc9UgbATgnKKIlLI3PuLa
         fYnATbIL+L5MMkE2Wd++gGbaU3zUBJ1jGXZ2B3TTSmUZ04BVv+1jF8nURXOqtsMjxeYG
         0uo9AZYmjgJ0RXmTS5W8evrd+XaufdpeA8Y4CRwPl7vnUyif33sX3K9l8VQaDXq6wxO1
         RpVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fXbKlF0F;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y14si565073uaa.0.2019.10.06.10.36.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 10:36:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A54222053B;
	Sun,  6 Oct 2019 17:36:31 +0000 (UTC)
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
Subject: [PATCH 5.2 043/137] clk: qoriq: Fix -Wunused-const-variable
Date: Sun,  6 Oct 2019 19:20:27 +0200
Message-Id: <20191006171212.553003292@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191006171209.403038733@linuxfoundation.org>
References: <20191006171209.403038733@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=fXbKlF0F;       spf=pass
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
index dd93d3acc67d8..8724ef6c469ab 100644
--- a/drivers/clk/clk-qoriq.c
+++ b/drivers/clk/clk-qoriq.c
@@ -675,7 +675,7 @@ static const struct clockgen_chipinfo chipinfo[] = {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191006171212.553003292%40linuxfoundation.org.
