Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBPG4D3AKGQETE7I36Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id AC23E1ED921
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 01:32:22 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id z6sf2253153otq.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 16:32:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591227141; cv=pass;
        d=google.com; s=arc-20160816;
        b=z8WGgjV/mgoogYXPdwCm6GsL1r6f6XUWe1tBaSQYJedzGrlowMbgyxPnrCqfpTPO9t
         qp+Ci8CKq+UsHWYta3T+cOWX+1SIp4spGxHCwDxzqFIlUlrXktPMsl/NOv79ouc9+hbR
         1+J6od4T1LPxsLRV03MMN43ByWLsCufDd4pZW1USb2oyRebVM2BCKpa0mbKERo4bDfA2
         I98FMsOitnlDlOaWOdRFusqsccq+1wLPeMZY8wpBU7kevsPJxqWV8KHN4s5InkqrjORK
         q8LqnrziWOJW7JitPBfLXcI0EGZQZ91uTLoGflEwu8UZTbngXshrQSCGCGTTzs18Wm6H
         3xZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=O9eqrf9VNy/q+KDdYqWAFAhOhjlZoNeTLIeaXsATn28=;
        b=DqJkBPe59pQsU6i7x6+pvo3InUuuxMzOyCzQjwnHPyioIt8F7NuW0hajRb+iG6s1i5
         3sO6mWK8lMLEviYOWOFuzPpVSQlInKUzi/CrLN1g2Gc48j3luP2k5hRd9oBKBxxUwOCp
         SW30R1TMIcko0tgbLIYqVF+00AvrGLLXK59tKquMd0ZEOQxkeqfOR1v0mhfNUDx8zhpN
         5ba7M5qJQbt5Noyk4uUAtaqf63J86g0LePhTb+N/NDl20igjaM82NugqMTkYv+p1grKE
         ll/bP0QOwdQcvBUnt627wE92IFi2t2jY/uQVWwYjL2GZZEID1CRPO247usveBn9n4FdL
         P/4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="BLpfxw/6";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O9eqrf9VNy/q+KDdYqWAFAhOhjlZoNeTLIeaXsATn28=;
        b=Y3AfCcdZE6uabPA5fltPjiW29ntEUW1cR83E2jXX4SrBP2DjMq5mXs8W1tuQ6r2vsT
         istfKgtpi4t/xIflIponAoFPGRNQLBwy44zs/3glH05sEP1taW3EQKFH0pFzgMrB5zcX
         jvA9QrtC0NCbcysajBea+61nDPjS8Hjj5hxGtwnZEgKRRVwRdpXQSgnE8rxGlrCSVw3d
         oIg4b83JPwHdxSPgWo3SUkL0x62bwq55cmgPiJQn2eB+gFFXt6e+mGaH8mWVCvfS8W3u
         PMbAbEtW82mFuZ53t2UnxAwKv78xo7hQ/FopHA0Xad8rYeasWMeEtWp62NIxVzt2aqLW
         1gSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O9eqrf9VNy/q+KDdYqWAFAhOhjlZoNeTLIeaXsATn28=;
        b=RvX8FBQ8ufUublCIWKp57UhDj6EbJwcgHegUcclE0jqd6zCPBXG59Iv8o0++rS94VQ
         Z3cnS1hDbTBeqpZ9IaJNT6QELq7ftzMh+TbgJMoSw2cCk1nROne3gOhbjMm2nLQ4svTJ
         rn96rbos4iatpn8kE9aazP5Skb55FIKiNnF6YNI4Xh/OKyNmPfEtcGFD0LPXmOrE8kys
         DFWkZIzXEoRx/blYVj1raG8binzXUODN95woi+nO416OLE6AS53VeD89RmKILlKOTni+
         i5OYbuYtRzRGWDsZIj+jU3w+Q+7hWQ2It0mdFZYO7PlVIlcRAWsCURyqF9Kec0K1vDLw
         YM1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xhqIx0UEBQ/J13mzV6BUNkl/QBuNMuGYypUKdyaRNzAEfxdcl
	qaG8thiILfQqjl70M2+sOh4=
X-Google-Smtp-Source: ABdhPJwYLDOjhGDRNVnbhm181uKTKGsqZL+/RW0eAIV18rIXIClX3mqq2x4BbARXjSXjIYzuedtY1A==
X-Received: by 2002:aca:af8b:: with SMTP id y133mr1466254oie.75.1591227141690;
        Wed, 03 Jun 2020 16:32:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4d89:: with SMTP id a131ls847648oib.3.gmail; Wed, 03 Jun
 2020 16:32:21 -0700 (PDT)
X-Received: by 2002:aca:e188:: with SMTP id y130mr1452328oig.179.1591227141361;
        Wed, 03 Jun 2020 16:32:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591227141; cv=none;
        d=google.com; s=arc-20160816;
        b=ATLNJpyBgyqGhmUUfzJCrKDORAEHNWu5oqgcYLsLnP4UGJdxgy3va7J0S0Odu4uu/4
         YzeS+wMkPsbky+uwr4nDBbaKdi1DAW9mbC9q4okd+V+mcas4uEzH0LVKP04TEtEdmt6Z
         LnODbRUKlvumLk8CruAdREOSYU+oV2/Gq9nxCfbK1tns2TkhCDRVwZzUspFhUoKZ3bDS
         pk/2V4HXycWRJZ+Ub2uhH9C+fL6v4n9/V0cRZuPkBNgDjvmL3Hjti9IFzg2P0qYZf5VA
         56rXz7/XSL8vPmFL3LegX5jHHzR+tAEfacwFrb3NWvmUdr/sZ7ooVerqNJ5KqGKmfphk
         Ebzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AV3zPGZvUQ01fJNeRdN9RcESkWzhMr4mEDUODLN9pLA=;
        b=NJH3QZmTDVq8k2qq+bPCK0BahvnWmVKPlHYtYkvsFLrfgwGdLSF1OT4N0o6paKvusK
         1/Pe3FyLysfKpkI/rXAR8wAD1RikEjpQogbVvjzEQTG/ULGqW7UZK67ippITysmtI/DB
         Qv9/X73U6J2c7U8e2k2In5TjSIwrGEQDBSkZ29S6Z0/QIRBn1UQnymraEl8S0NSSGbur
         7WVyyUdpMVufMRioc4HtMVTS1laaUfGr9g53rDA9DPYSdcA7mFZKUZa5GY7Cnn8Nm/4V
         Y35E49c0gDzmmFQF6OKBRzaYFCxLyy8G/UapgfHAsswtFN7a0V4F95116GiliQ6/Go8R
         N8Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="BLpfxw/6";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id k65si206058oib.2.2020.06.03.16.32.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 16:32:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id v24so1374738plo.6
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 16:32:21 -0700 (PDT)
X-Received: by 2002:a17:90a:36aa:: with SMTP id t39mr2389819pjb.185.1591227140733;
        Wed, 03 Jun 2020 16:32:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c123sm2738945pfb.102.2020.06.03.16.32.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 16:32:16 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>,
	Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 07/10] spi: davinci: Remove uninitialized_var() usage
Date: Wed,  3 Jun 2020 16:32:00 -0700
Message-Id: <20200603233203.1695403-8-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200603233203.1695403-1-keescook@chromium.org>
References: <20200603233203.1695403-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="BLpfxw/6";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Using uninitialized_var() is dangerous as it papers over real bugs[1]
(or can in the future), and suppresses unrelated compiler warnings (e.g.
"unused variable"). If the compiler thinks it is uninitialized, either
simply initialize the variable or make compiler changes. As a precursor
to removing[2] this[3] macro[4], just remove this variable since it was
actually unused:

drivers/spi/spi-davinci.c: In function =E2=80=98davinci_spi_bufs=E2=80=99:
drivers/spi/spi-davinci.c:579:11: warning: unused variable =E2=80=98rx_buf_=
count=E2=80=99 [-Wunused-variable]
  579 |  unsigned rx_buf_count;
      |           ^~~~~~~~~~~~

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=3D1TGqCR5vQkCzWJ0QxK6CernOU=
6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9k=
nmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=3DyVJu65TpLgN_=
ybYNv0VEOKA@mail.gmail.com/

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/spi/spi-davinci.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/spi/spi-davinci.c b/drivers/spi/spi-davinci.c
index f71c497393a6..f50c0c79cbdf 100644
--- a/drivers/spi/spi-davinci.c
+++ b/drivers/spi/spi-davinci.c
@@ -576,7 +576,6 @@ static int davinci_spi_bufs(struct spi_device *spi, str=
uct spi_transfer *t)
 	u32 errors =3D 0;
 	struct davinci_spi_config *spicfg;
 	struct davinci_spi_platform_data *pdata;
-	unsigned uninitialized_var(rx_buf_count);
=20
 	dspi =3D spi_master_get_devdata(spi->master);
 	pdata =3D &dspi->pdata;
--=20
2.25.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200603233203.1695403-8-keescook%40chromium.org.
