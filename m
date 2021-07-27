Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB6HKQGEAMGQEO6G2MDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF0B3D809E
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:07:06 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id k16-20020a170902ba90b029012c06f217cdsf408555pls.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:07:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420025; cv=pass;
        d=google.com; s=arc-20160816;
        b=vnxTscFW0mOnEbDyY0rssPXwb2kAlGFYtDumM5nkN9XU2xYoxPWv9feiMQwSyd90Ke
         aUXpvRs/7anljqtchYmvqln3HBcXKTxlBNe6MTu5+eVp/5TYkgBSFX9Zj6oxq5xGXXZL
         0q2ZjWO+0cpDHsOAStzYP71StmwDzyt6+WM+QoMVdppKww5irVA0XiIo2ztS69eEztWj
         km18mvFcOOTROKAdRbLmhi+09ZQxE+dTkb/F2s7d+bMhCo8PMeRlOz7/BMy809AAC3+N
         /jAMk6sqKvKyqSl03FDaa6taI301x/VfjLrPC3wzmYvlENj8dV7rcgKpbSxOcZ+JCFMU
         XyaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=td03pva6yljojaeNg34/xZIe441Jri2WW1+kPvA+Nl4=;
        b=Tynb6UZHCDkV7XLZ1iK2VZBmkd5XLK6cicP/EzFYtw8lggggwp0tYgYmU7RW5MYhWe
         FD3oBz4GnhINb5bBKwer5mbEByG9n4zHzQlGkU18hEgnPocA6Z1PKy7X5cBhjFqq4MXf
         XCkMpJA1t1C2LiWyu8bVF/2VWn5NvaA/DHzf+sWhv/2tZFztKs1jGsKYm48Phm7eHYrJ
         A+mn8GYpfBbd/TGeIlRGJDCMc+RVHydNawDx5M9MRJ8Bi38LUTMeHKCYSkL5NTV7Rvkr
         Br+rChxavfMeKWqLojXE2zEH52UmVJ3SDdbvo4C5Tcq+UO5MaC5KdRCxyTpZUn1Za7Jt
         oo0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=clV0Gq5o;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=td03pva6yljojaeNg34/xZIe441Jri2WW1+kPvA+Nl4=;
        b=NQ+ePG/vZiyOOTuOVhlSlLrd1kltErD1pwUDaUbis8IYg+ihpzvcQAmEAsKR3sOcB9
         5ZKBivtkRTjoUlgR/qlGehEtC2/+zwRjK8Q6IZO1N9UDUnHy/qVkvnWpNSC1yMS47Bnj
         d41rNT5HFesMHpyfIIPaCGLTaDTVcS40wk6XA405OgD4Sy/Dz7LVIL79QGDgLZdThBZ+
         3pAEhXy7+Y3umX9gteQf2gKOrW2SoZqbnFWyLicb0INVRhxCWI7UT3ISJKPhbcekYgjy
         mEHJurCTUQdmC+sfQu1XZAeU3UCMNKbU9PGf+IbwphEOqQffNF0xbrmTbqZ1f4guZTSX
         PmOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=td03pva6yljojaeNg34/xZIe441Jri2WW1+kPvA+Nl4=;
        b=GByUuURZYwvH7+/9lPzFDcoCTqnpizLrci+5fvBXEe2IWnrhdKqto+g6izcqCkh2uY
         8Ofbhy/9wn2IR9Ewx/o9055qa7KeytRjs3s2l8hGzN540jObLVgAc3/jelbG4vajNfxn
         hKqeSWO2pHjPnnco28zmMBgAyshpfbIGuoIcJYfsteyqgRRyYymPyBn0j4xkjEcV2/8n
         XHGP6GcFaktb7BT2bULTbNZY2cficsUuk8diqcLoOZx1KB5BBWxBZw67UhUAaxqqskzn
         /KjJtWL7zsfRY1GiaeW3RtoJa8ki7pkWKXIobcjUbQyKRftIEVaCbJU/QXdSfJiORMCk
         eMpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Gja4DKoG4ku716hhhhLTRnyz/7GrPx9QDIATB/vBiM0SsGM8H
	Ng+cvNkhAljei4NO79PHBNg=
X-Google-Smtp-Source: ABdhPJyTefO6Sz9ugzgtUS481huf9kAe8twqgM7K9qIm9OpDAemuActkqj3mk7G7hNQSNpZbGNNX9w==
X-Received: by 2002:a65:40cc:: with SMTP id u12mr21682355pgp.18.1627420025138;
        Tue, 27 Jul 2021 14:07:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:646:: with SMTP id 67ls77227pgg.9.gmail; Tue, 27 Jul
 2021 14:07:04 -0700 (PDT)
X-Received: by 2002:a62:8209:0:b029:32e:54d4:7e27 with SMTP id w9-20020a6282090000b029032e54d47e27mr25373695pfd.10.1627420024534;
        Tue, 27 Jul 2021 14:07:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420024; cv=none;
        d=google.com; s=arc-20160816;
        b=ElktzMZjAnQp+S6QMrK9nk9TmrxgJI1NbL7b9wsnM6i5EeSNEqHTYKHrbHxI+ObJ45
         YWhr0n2c7Uro19M1PXkJ0lnEKFQ6mbWf9AY3FbU43Jl6yhFoakAJSOOIWYJ+1duYsCfs
         ZyQkmM9MFFqBIz1QIiQiUYOqoOu8H9xFgBKYk7fBlDJZmazXP+wBdtNSqmWVc2roK7gM
         s+1FvGjAEmKL7gVVaVtq4CiEkIrqb3+AIo45X4VRPHs/y//8MlijCNPR+fkIY0aJZpA/
         4qV1z+nWLG25LRu8qpLPP+ej7miutC4wSCq7TFTj5kt2HwAsb8iXJcLok6OcsHmbOa2C
         sE/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3614TVaw9LF0d4ZTPxFRYVM1NwtwuaIqOAakzdvkIfc=;
        b=q+o0xDdVaUiGFsC977maH5WycRGFFd3BZ9oXWiO4p0ZmhikNN+kheuqOo3xsS53ixQ
         DMIAoB7Cd+lJsOhpBUGX9y8i5tSHBDmFVUDUGAPPJAFw9XH34eNkYYtf1RJNDtn5WTHe
         GqofeZN4fiNdEnCJJvraQP0yN80R4oL7nFEgFDQIgkASZPIK+6yKydVmzpgRADUTD9b/
         mTk/rPBAyhyT/1RXK7Gh+l2WV/cs1YLidwHzx5NKBXnSzLaRfV6uiOmcJyS/TtnsnQ6m
         A60OVFouuIZypJkUsb3TavoJUKENDd58sFZKLhCYNCRjPRAqg6fHuNb9lVBMAevTxPCK
         M2Mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=clV0Gq5o;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id p9si264520pfo.3.2021.07.27.14.07.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:07:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id b6so1806499pji.4
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:07:04 -0700 (PDT)
X-Received: by 2002:aa7:9086:0:b029:39b:6377:17c1 with SMTP id i6-20020aa790860000b029039b637717c1mr9604180pfa.11.1627420024334;
        Tue, 27 Jul 2021 14:07:04 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b13sm4545729pfl.49.2021.07.27.14.06.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:07:02 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 61/64] Makefile: Enable -Warray-bounds
Date: Tue, 27 Jul 2021 13:58:52 -0700
Message-Id: <20210727205855.411487-62-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1002; h=from:subject; bh=iIOagZzyF2xdp8n7enwD6qkgQ1o9k/a7rFZX1PVnmxg=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOOq3GxY9uHkpfXPpohPWhLzKrRlLl+w0yr5nG9 o51n+4eJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzjgAKCRCJcvTf3G3AJhXFD/ 9eNQSeUQPuzmwtU/NaiBjngkDUoTXVXv6KDOoXdN0EeDJr9dzNsPU4RUC2Yb7oNKtodqx9qr3F53BT txNpJNl/VSlLBo4MV0T1xF/z3OZoiHCgrhEK6jQQWkJ8g9DbwYCORPaM3KmjKoReDaEVCdUqLLgRLI bgnGYGgyZ8hwan3FbBKFMQwKRDx8sMPqQJUlxpC/0p1LlB5klJYif9tuDWpKW1liKmjqsack/xN7n0 V/cjUuTEEPcy51sw8cSiGkQYLx3KXX0nBtDSFN2xWj3EOY9Bm2RgpOqUqsPFAyinaCqQ43AtocYK4G EWC3c+pF5KODB9bWmzxaiWfcbQnr/qmuRE0npmKCThCFAdIG0L/zSn17BagAoxn/bfs7o1XTo9UQ6L K2E4D3ANbhN9AYyDSrP3MqqguYb7FfMwTv2zQNOLIoHqk90Ys/REfQ6FbJ9b4n+s+hlR2hs9IoQ0+Y 3LfKCSZCrYfZ2rhefZPYVzbWfzbM2+wTL1DtshJ1M+gKFcPfZ663TaMLREqy9r9mTtgswUne36LhxD ZfCNhpXpDpbsenQfUmuciUrsKoatyitqkdd4dOEVsAVIZ7jI+dZ2TTRu6UgVdfpiRIdWgIUBmXNdyf QZyNNzVnUyr2dpmTN5/GnRpfSS+N/XiRxODtkuSEXrfjk1fZDATTwSfL3kKA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=clV0Gq5o;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e
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

With the recent fixes for flexible arrays and expanded FORTIFY_SOURCE
coverage, it is now possible to enable -Warray-bounds. Since both
GCC and Clang include -Warray-bounds in -Wall, we just need to stop
disabling it.

Co-developed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Makefile b/Makefile
index 6f781a199624..77d01ba3d4e1 100644
--- a/Makefile
+++ b/Makefile
@@ -1089,7 +1089,6 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-truncation)
 
 # We'll want to enable this eventually, but it's not going away for 5.7 at least
 KBUILD_CFLAGS += $(call cc-disable-warning, zero-length-bounds)
-KBUILD_CFLAGS += $(call cc-disable-warning, array-bounds)
 KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
 
 # Another good warning that we'll want to enable eventually
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-62-keescook%40chromium.org.
