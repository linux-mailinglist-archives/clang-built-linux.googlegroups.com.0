Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVVFXD3AKGQEDLTA43A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id CC07C1E39F4
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 09:12:23 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id n64sf1755123vsd.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 00:12:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590563543; cv=pass;
        d=google.com; s=arc-20160816;
        b=mfUSsGJi5zBW87AVnn+vPh2+ANY9aRqfWOcYeAKQAxuIgiwGI+bwEVsLFn1z/CdbA/
         DrDJHy03uB1hJ/nLPLV7vInkcPbNlKd/1P7/SZcUPVmtKGTyjWXWX4f+fxrUtjBlfTSH
         XuXyN/sRr4LUclfNQ77AZp/8jv2VQiZBoBOcm0F2qMwdEAGZQHJmGILEm358FEoev9jm
         I8nSiNd0TUNEyNTAcIB7AiHyXQGpcMGJa+VwHWxs74AMAggkyLLoY35+0I/SDup0D1tb
         0jwwcAWDg6T00u1a/AzxCfscgPsGiiA6IRHcYYyaSsI4a6h8FaOrXlfLYQollb5l6g4W
         oBJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=2+9LP/sIfzwwqZJ40pARX3N2VJJ+blG7qdR4qMVBk98=;
        b=FxFqVKhHmgr6wG9nJpF3FfF58wQLWso49o6GOhByb0qvvwIYIMOtTw/e1jJLTAxKnr
         phWFaQMFvKlJeLBK418oqR7nW/Fh4ZmBaaTboN2VA7HvNIyLPqRRmW9dk9Glp4Ogt9PC
         1TwQdC8ypSnyCQ6BPHPduYtKf/X+i+CsSZMAG051SWTVO3s2ijvNeNp3QbnZeNSyWCXf
         n7oSyiVzqYSGwerHLo3M8Nmbz/UMifOvBloZAR0ongNSXTnFvwtDo3b3nLnBSp5iPTjN
         ud7MePrmfsC1mBtZFVlEKQ4hfDJO5sjZJxMzeG9NLPaiZXG3NgbJ5C4f9aqKzt2KTftk
         DNYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k1qgL0z6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2+9LP/sIfzwwqZJ40pARX3N2VJJ+blG7qdR4qMVBk98=;
        b=dF0IuNkJqp2e0HF58ltjZD6DPDuGLBHYqq+kVhN1MAUezNjpB7vC5pmFlYP3xE4JsJ
         ixtVEre9MvvDg5cw5iBJuKhk3v9oGKzq+oBa3uELlOZc+x+gAWeNJfzAgO2bWJXE3OoP
         4yYkQ2aQqYDYxTBkkjT00849ooDDWqXL7vS4C1FozbEVfUdB+DdfFa8a8Zd7OS6MCoux
         7mgbRZK45aaVyqhTCi3Hh6KH9g3ya/j7SBYMXXihiOhxDVqXYOQZ9AxA0F5RKExLbpfC
         dW5K9XdZ2A5HdSEskXFB+VgEdzvSwvj3/nyBRqthWMMSdgeo1Zhv1ysU/QfbLc+rm8KX
         ufVA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2+9LP/sIfzwwqZJ40pARX3N2VJJ+blG7qdR4qMVBk98=;
        b=fEF5R6qzAJzLGzqyQ7eIsuIYEtO2Kxv1Q65A8Mm4QsHJ+n6NdkDV1FIdMTGbIth0WZ
         GGhD6DFEmUfAwQNZLqkCEe5dWHZxuSHdsVWXgysW6eM2b2l4SWoB8zAWeZvtvnxr2xpq
         ZVxO+l6t1BxwA7vdw50mUIlljAu+R5euT/JWAacAjdYPI42D8dANwrozcksnNjAXJh1B
         PA5wdR5oKTo3Rr7FOXqXgfrSDAjka27KI7h67CoNl4kmLaqqtatkM2FCGWDnLr1/cyN6
         Jm0fTAb9Z6UYxzy/52G11Mv+8wr+rmPI79v4slrxEvQrdI7hVn5xCOoLmbMIKf6nd16D
         q2rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2+9LP/sIfzwwqZJ40pARX3N2VJJ+blG7qdR4qMVBk98=;
        b=H6rDEzKQ3wvry76ReMTay4YOLLaP4jkt5oJX4InztGGa3p+S68TgqyoFtvceP4o/PB
         oLkxmBHlOn1wc4CXrOr0yFNRAOfRZWY1gXLptPJ+oQozA6lI4Mik4gT3wBrwePrdk5qA
         SA5ELA9U+bzMoZPb89SHtEEXQN4FfIG23fcjmYBRQ4azpzKyC8x5+Wm0wKolIumcLPGQ
         JUs55ZIFEzmbitlzvY8jQDDn2ZpHQfQwKah9F6oV3ZalTbRCvnA3dqmJl2VJhwucAYb6
         wcDEURTFpNfCl2gfTLZS++PNERCXM0cQyGonC2rRdO6OXfulZAAD6FLrsPjsxodPFh5g
         LuNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hmh0dXGId8Lr34s+1Kc/PWiR94ITDPp7pnqqtaOkFXcTlxjxD
	k/fY1XMt6fRlR1xnlrvo3JU=
X-Google-Smtp-Source: ABdhPJx39bPmCh0RAhRcFET9yJpTGf8IhMZcmnmCCxM1IDFs7KhGzdq+BSRRBOJcxB9MJAlZ6FKK9w==
X-Received: by 2002:a05:6102:45:: with SMTP id k5mr3767183vsp.7.1590563542858;
        Wed, 27 May 2020 00:12:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:4504:: with SMTP id s4ls611345vka.3.gmail; Wed, 27 May
 2020 00:12:22 -0700 (PDT)
X-Received: by 2002:a1f:6014:: with SMTP id u20mr3886945vkb.37.1590563542542;
        Wed, 27 May 2020 00:12:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590563542; cv=none;
        d=google.com; s=arc-20160816;
        b=kNvey0kZyfBoub+cCG6uw2r3vnHLrItkFWIWowsudS4Tk4+Qo2rpn18N/gHgBXkBzY
         q/uq9rN/JQ9S1T4o9w1yGRbVKdnW+jQ+oaGm2UbwCZpJe7IIrejbG4wwzBR+4HSemo73
         jpKwrgorM6A7Kx9Wg0BU+6cYktBoNPnHdl96mm3inU6eDtr/w5qSXeu/nyKKTFdCYVqF
         pH8Jwty2YpUFHfB6A/gKhcHriGg1pC4vtsmGcB7FeuhMPLdxg7pAhjT+48LuNlQPpwKT
         gCfOcVrQeRt1CUxdh8sPQpZk4SW0GuwWqh2QaeARkKYuUGITIRVFMg7IuG9luwMh+xSU
         c95Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Tbgdqd+TXdAk8QNQkvpAeStL9yrt3nZfFNT/1PFaGls=;
        b=Qs6FmB7NXllxWeiGI5rGhyzt035gQHh1VIM0FFbxkuRxNTm7K1FNiW4b0hKxlMFQg0
         iEOFIBxGoG0KQMUb+PhXmxldqMKlPtZBQ8dn7uOA9mbFu0bsB2NeGiXlaho1U8JghRlH
         OfEnMV0KkJxnuhudtrgDIFSAAfLuXD8ihj2QFNfKvtU+m02p0+3JCrr0gbx1cQtLLoXj
         LN8AY6bDn93Z5WH5tZM+akCghAp/uH/40lRgqRI7Zrq3Ct73JVjy0TEU+5tkIqcbD/3M
         cdUrMnc5hsObXOImdnZwt56+0ZbNX4CYRJyQw7yT9ZD8CKgFfIBDB+erojeMlcf3yHZA
         bw7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k1qgL0z6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id j5si244839vkl.3.2020.05.27.00.12.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 00:12:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id w20so6338145pga.6
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 00:12:22 -0700 (PDT)
X-Received: by 2002:a63:78b:: with SMTP id 133mr2796179pgh.161.1590563541617;
        Wed, 27 May 2020 00:12:21 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 10sm1306431pfx.138.2020.05.27.00.12.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 00:12:21 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 6/7] media: atomisp: Avoid overflow in compute_blending
Date: Wed, 27 May 2020 00:11:49 -0700
Message-Id: <20200527071150.3381228-7-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200527071150.3381228-1-natechancellor@gmail.com>
References: <20200527071150.3381228-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=k1qgL0z6;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c:129:35:
warning: implicit conversion from 'unsigned long' to 'int32_t' (aka
'int') changes value from 18446744073709543424 to -8192
[-Wconstant-conversion]
        return MAX(MIN(isp_strength, 0), -XNR_BLENDING_SCALE_FACTOR);
        ~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~

XNR_BLENDING_SCALE_FACTOR is BIT(13), or 8192, which will easily fit
into a signed 32-bit integer. However, it is an unsigned long, which
means that negating it is the same as subtracting that value from
ULONG_MAX + 1, which causes it to be larger than a signed 32-bit
integer so it gets implicitly converted.

We can avoid this by using the variable isp_scale, which holds the value
of XNR_BLENDING_SCALE_FACTOR already, where the implicit conversion from
unsigned long to s32 already happened. If that were to ever overflow,
clang would warn: https://godbolt.org/z/EeSxLG

Link: https://github.com/ClangBuiltLinux/linux/issues/1036
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 .../atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
index a9db6366d20b..629f07faf20a 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
@@ -126,7 +126,7 @@ compute_blending(int strength)
 	 * exactly as s0.11 fixed point, but -1.0 can.
 	 */
 	isp_strength = -(((strength * isp_scale) + offset) / host_scale);
-	return MAX(MIN(isp_strength, 0), -XNR_BLENDING_SCALE_FACTOR);
+	return MAX(MIN(isp_strength, 0), -isp_scale);
 }
 
 void
-- 
2.27.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527071150.3381228-7-natechancellor%40gmail.com.
