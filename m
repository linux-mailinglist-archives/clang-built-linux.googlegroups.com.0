Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSOG6KEAMGQEOSVZASQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id F32593EFAAA
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:06:02 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id t16-20020a17090ae510b0290178bb9f2f04sf1054279pjy.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:06:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266761; cv=pass;
        d=google.com; s=arc-20160816;
        b=HNadl6aBfCeXCdp517w2W7mPmcbD8RCpRiwy6g5S1dPr1xtVlu7Oxi9CGt83MkkJUb
         FTYPUiTZ9O/xl//6rONmOfyZkASg8XcUucyYJFA1io4PCY6YXEGYt2/xRDglAFgz6Uw+
         uD/VTubeURcQdMh6vdSmtugMv4QW2DKYlBz6MjOAiJiTw7g4kWyV1GQoz9uPiU9vdu47
         M5tn3wt/f7JZ8uWeqt3im5nMbN7uMcLVdPNf7kZuvU32Xztg4DunZlkF1N9/S2zkWMyh
         IcFNiQDNi29t8Vg1GZNjBHGwvnppi9qgeG5nXK2/i6AQEgX4je9FSLWGC6ch4FK/ndGm
         4u8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Qstd9Stri+RaDhtQ/+JW+GBkTIpOlxdxRhW/YORcCUY=;
        b=oMMrnsIyzdiaKqmJUzgadjl22jS2tOewT8N6/femq6DwxrAqYMv4YryScNd9nZ5FqM
         I9tfRF9maogB5QVCctMQ+0orF1NlFuIGQtLuYhvdcyUhny1NhP2qqzjE28ewoNJeK7JO
         Vg5oD+71OFu+3KrrCZfpu0U4DZRrbTb0SuoPYg2QAVNBqSiV/q0pbZCgg03UxdYc+1JO
         FN4n7/n9EVZcv6fMw2/v89AtM5W0Tr1ZBDZZ4qm3OYSGudreQyyHVZ/RIdUlsFLsEgIl
         HXq0MaLsUCT3oKllG0I4Fcj9CZFD66FkbPybBzFKQBw2WyO3tWnB5QQ4oxv4o9N+M1Ew
         StUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hJ+1pw+Q;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qstd9Stri+RaDhtQ/+JW+GBkTIpOlxdxRhW/YORcCUY=;
        b=C3kDlI+LzS/SZLpKGXOm+Xx1UFmFNrjFPM85nWpJah6H/MR5eoW7DvUKNGQg0ieh1J
         5C2vNUE2Edd1lrDVWM9jfYIhbsEPxsMKQ47/7eyO3XFAsSoq8W1aTSHJu5UwG3C4OeeB
         FrtBJ/OK4RA9QCxeBB/lkRhXrijp0VSha4Ae1xLkCFyTZ+IBXGaaES7GHwCmJ2Wf9XPP
         tL2ZgOic/r4wenKSoug7TMNzSnnebg9+ehD/epKD3mGkE85UNn5LMzju7TLbV9p57hDC
         WwxSoiVNaxQ8+rOYnIXcOezvylIplPSeyLVTEcveJmKynJirc5ZXHsmNalxihsyChFRd
         2iiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qstd9Stri+RaDhtQ/+JW+GBkTIpOlxdxRhW/YORcCUY=;
        b=ud8+bjv86KHCpS2pA6/CAnLtoZr2Q4M/l74/NDhvh1Ae15vkrr2wbj6xfQCkMTruM9
         +M/u0v20Le7TuwSuvTjI/Wi+AbWt/Y0tFtgD6JWjLjrRDJRzQ1a/OvItfZMDXEUyx4sL
         3wUAYCWDg6s7pGqSEqdYk4RGUSDui3MfGGmBB/1hjo0+x5w/v4m5stHoIZlmT2Opwgnv
         r138wdbfLkjAfOD1Sr/rT/dgFr+02OWJ0HmQBNHsytJlVzI8aqXpR8hKqw6cvT1MGYQV
         85KqXuOV1T1k848KQHLoD0PYyfSImwazMtfHOcIW0ho3Q0P3hBkZ2NRvdRN9YxOcQYSh
         VxNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531zsvEkWlfgMYXLqZGUiNdo5hROeHju5/zZHQJrslTPeeBQ8Jwf
	HlXryeCD7FpYgQJUcUor4pY=
X-Google-Smtp-Source: ABdhPJwFd2EnIN0peITk0AvvJRpsU/ZqA+4B2buLU1MhwsGZQkqHTNvFxRsAbg2xUzP95sfNj1SJxA==
X-Received: by 2002:a17:90b:1041:: with SMTP id gq1mr7747004pjb.36.1629266761526;
        Tue, 17 Aug 2021 23:06:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:9e:: with SMTP id c30ls505201pfj.0.gmail; Tue, 17
 Aug 2021 23:06:01 -0700 (PDT)
X-Received: by 2002:a65:6643:: with SMTP id z3mr7352025pgv.16.1629266761042;
        Tue, 17 Aug 2021 23:06:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266761; cv=none;
        d=google.com; s=arc-20160816;
        b=bBYojd1EbTLgd3cvvUz6n5KlC2NWT/p7izh9RPsAwpLV+q7S5pZ2aVUc3D8n6VvJKC
         7RSnYfqUV/NR60TFpQxyHv3Su8b0J/Cc2SqdvheLYgwDEyYAJi0ifHriUFPq/rG5sg8A
         WHivvnAN5kAPlKklpsFNhBhcZVpQncHIBgpoKCCKgjATH9EX8YASXJ8XFi4BYTZ4bwxt
         BNXee6K2yNxZHKrT3BXIy4GdbsGJwIgElr1qMKRrs+37ROTEq53pp8NbPCvNWT1CNAXT
         AWdme5SuqutdPuJuSpGt/QHSWJi/pEnXHmMoEie6/alAhFrcld197xld+mTod6Ro+/he
         uMTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ps9jShnfYkcW7CF3s3J9G8+oGaQDbHRpYLWBXR8U5HA=;
        b=XatPKAdk83xiSn0a4451REBj1ra5w51ajkCNEfuKjlIftGVG/ApxnPAM7EC2tK8irN
         tJiByyR6BAx0SBwpVskiQydO/+Qdeg5mLgBwETre7/0fuP54CUcc0w0l21eYnb3/DYvb
         cFKzMpR3JJ9mlxb4v9d3yF/EVh9ZcZ/vJaef66f8KlZgvvPa6dhpvbDy0NRifJstsoni
         nfJjZ9L2KT1VMdHtGRyEpowW9finh4+vq+KGExAybwB+TBKIfVFuSVPd1YGOGXazrD/1
         qxTZpEkDZP5yyIZQKT3Nn+92YEqOKYlFfFD8BQgtWJx1PdZNW/kdwr/2Sa10FR1nMAPD
         mvAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hJ+1pw+Q;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id o2si337888pjj.1.2021.08.17.23.06.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:06:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id mq2-20020a17090b3802b0290178911d298bso1642612pjb.1
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:06:01 -0700 (PDT)
X-Received: by 2002:a17:90b:4a05:: with SMTP id kk5mr7900521pjb.174.1629266760808;
        Tue, 17 Aug 2021 23:06:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b9sm4817746pfo.175.2021.08.17.23.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:58 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Jens Axboe <axboe@kernel.dk>,
	linux-ide@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 24/63] sata_fsl: Use struct_group() for memcpy() region
Date: Tue, 17 Aug 2021 23:04:54 -0700
Message-Id: <20210818060533.3569517-25-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2051; h=from:subject; bh=490IGoO3mtJCjh0g8l7zMoK6+vhQucUWQpUj+3laYeM=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMjgKcbQTO9FDMOsyq/janGS26xgJD+GS/2zaUs ZM2eCZeJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjIwAKCRCJcvTf3G3AJptmEA Cfi+co78goyBBrH+Zm1R/id0yh2CmjqSZTgJNwAn+IsBhLLep3r74z/+4G0L5HEEsO7K/F763D7FzV qyqSu18qX5XPvdiy0atubLyGda3UuI3umIbTFgsLY66SeEZbWNudGvJ5l2NlJeuEupRNrDDp6WTB04 +juq9wzztFjSrw5OPlb7mi4UllFs8pzBTlwgp0MlwVSG57JFMFv3kGQXHjlEXuWNfiINs3OZhr2g1Y +V2oJMY1cAXD57fne3MAALUSSuHcL59yIGtul0hNa5VmLGIBBdUwcorbjRgNqEvsgFoL3oWb78eC53 eWKn72M+cBfKnBw6p7ak9Y1aXrUbhCOU0IpIrNgQ0fS1/AWVyGj7M9WTeK4POwXFQcsbBMmsXeAVId SmQi/80UCLxGlC80dJmtFJJg794N+o2TMvlfe8RQc2xEp4HDqVCG6xAiA6VL1biQl/bMXi2/gnsZGk 5vEIc8263QtaFStfx8cXsh5/D1ZLtfxcqc99evQE+x1Z2AtFfCRvPXqUEnA5uL9Ird97I148pH2vsi YUgkY8gs+vLWH/DcLD8PuWXxZqes8m+snkfJjISzYk1/D7Vt1hdG9XS5SowqP4R1A/de8CANYlKoki VgBCMKLldP0qegznO020Xhe22ClCpYaDlUaI3GR0HC98cUXBvOfGGnUJ/5Fw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=hJ+1pw+Q;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Use struct_group() in struct command_desc around members acmd and fill,
so they can be referenced together. This will allow memset(), memcpy(),
and sizeof() to more easily reason about sizes, improve readability,
and avoid future warnings about writing beyond the end of acmd:

In function 'fortify_memset_chk',
    inlined from 'sata_fsl_qc_prep' at drivers/ata/sata_fsl.c:534:3:
./include/linux/fortify-string.h:199:4: warning: call to '__write_overflow_field' declared with attribute warning: detected write beyond size of field (1st parameter); maybe use struct_group()? [-Wattribute-warning]
  199 |    __write_overflow_field();
      |    ^~~~~~~~~~~~~~~~~~~~~~~~

Cc: Jens Axboe <axboe@kernel.dk>
Cc: linux-ide@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/ata/sata_fsl.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/ata/sata_fsl.c b/drivers/ata/sata_fsl.c
index e5838b23c9e0..fec3c9032606 100644
--- a/drivers/ata/sata_fsl.c
+++ b/drivers/ata/sata_fsl.c
@@ -246,8 +246,10 @@ enum {
 struct command_desc {
 	u8 cfis[8 * 4];
 	u8 sfis[8 * 4];
-	u8 acmd[4 * 4];
-	u8 fill[4 * 4];
+	struct_group(cdb,
+		u8 acmd[4 * 4];
+		u8 fill[4 * 4];
+	);
 	u32 prdt[SATA_FSL_MAX_PRD_DIRECT * 4];
 	u32 prdt_indirect[(SATA_FSL_MAX_PRD - SATA_FSL_MAX_PRD_DIRECT) * 4];
 };
@@ -531,8 +533,8 @@ static enum ata_completion_errors sata_fsl_qc_prep(struct ata_queued_cmd *qc)
 	/* setup "ACMD - atapi command" in cmd. desc. if this is ATAPI cmd */
 	if (ata_is_atapi(qc->tf.protocol)) {
 		desc_info |= ATAPI_CMD;
-		memset((void *)&cd->acmd, 0, 32);
-		memcpy((void *)&cd->acmd, qc->cdb, qc->dev->cdb_len);
+		memset(&cd->cdb, 0, sizeof(cd->cdb));
+		memcpy(&cd->cdb, qc->cdb, qc->dev->cdb_len);
 	}
 
 	if (qc->flags & ATA_QCFLAG_DMAMAP)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-25-keescook%40chromium.org.
