Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBH7HQGEAMGQEYSLUDIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id E617C3D7FAE
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:12 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id r15-20020a4aea8f0000b029025ec20a413esf198365ooh.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419552; cv=pass;
        d=google.com; s=arc-20160816;
        b=x5VQAMDdh6Z6nbYciQEQRwTIYX8/ONkgVuFLQT+Uwh3fkDQ7v9oq91ieDlxPCNuIJA
         0I4xWq2jwCf1Wkpr7U40bA/q/F6FK2i2Uqh+Lf2brlmZDbd9t938BvKf5g8LgmfSKJ5d
         CP7imTYkE+BpipOgl7nYxNkzP8aNYJR/Y8hXuLQUjcMYPU9LRc9Imm38XcniTbh64+ls
         0FkZSAS1TO/j1gO3bz38kaAx6VvmuYSvce4pqEc4fqg6uJPMglVq5AL6DO5zBBZZOQlg
         Uwm5ZSOi1RT3Ay+IhLzPGoPE9rMBPUUO0a1mUbuhHPdYnGT4oP2Z/3PeXZsOBEHdwJ8N
         7WIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UW8k9baRGdnUJ4tASjRaD3Sz8/gDFoRWJux5n0LJ2Qg=;
        b=Bqizswi8Cy3ulDeCPpndFUBx89wyNnbr++2VZFbCZUzkKra6sVTFl04/KWqBjiMojI
         xplCcOuXH3NrWBhZygZ5UNZN66ysgeCxmmVV6Hu/nbGEdAIJijT8II+hMln0FWtxM8c4
         TN+c8yr0jjs0Z9vifYLhPODvOV4SVv1c0/i0cgyCucaCv3KjAjh0E3fg4bXZeJTB/4R0
         SdYUKaqvGWpxye82Fa+fkyO/ZySpVFQLMNY46XE4l62VIj3nBZ/7ayp+L5O/czVd7lFy
         y/hVO2PKIzAQ5t9NhJ8Tg+3FU/6qbtD0w791qUZQn192vBjXLEa480jYEFLK64uTXH22
         PjSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MuVA98uz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UW8k9baRGdnUJ4tASjRaD3Sz8/gDFoRWJux5n0LJ2Qg=;
        b=rs7VBHMvV45behHpcBBjMdmlhuReJCbEmuzaitUhcywrg94QRtdjYGyaQqUmeD0eei
         Qux6p9btq8nzL4ZAqk2aEUDW3YkqbVROKZ5zdjnSn7JRHHdHMK/bZPMA9KP7e6dA0z3Z
         0q8U4M69YtNepT+r+t165i5dYBvZmTCyJvEssfgEqWbpgCkWQd8DZcw10FTnWJ0eupP5
         wRWnkeyyaDHRiU5qRShRtafGMzlqw77CdqyHRBOPLWcC37Cyh35EGzEzz64DHKvbxWJP
         npI3YgxF//3YkrGDJ+rE8JR3oFkVAalj18Omg53bG3/626Fnohm3xAcoCxQE9zFUw988
         Rt+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UW8k9baRGdnUJ4tASjRaD3Sz8/gDFoRWJux5n0LJ2Qg=;
        b=CUXz5CXRrX07YTDPmkTA2o3cx8pM9q94jPqpXtHFxIDLuIIj2sq8UAQ3m5Oq3z6Zku
         c11Evs15TUATK48EIysEf4osjiIhL8r1qPPvOiQbOEgZIQ8DNlK8M95K5V79F/PA97RA
         Bs5R8urK2HmNKJAeLYVeLl8Tz8+ApabgqUyhlrJOoL+PDro9wvn3wsvGK+KzcLCJay1V
         hPeqav8nT7Is9T3CNUizlkNioCkXOz3/mwjccDjOAGL5SF0T6CpigOxvoXRPIr3blc6U
         ugKuSJ52tC7KX0YKIhZ3HZ66icMkqX6Djxi6kM03yAX1bwcWdJrb0yMEhiavZIMCBPYE
         Ipvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qZ1KL498BQoPPNPIp7gpRPA3CGYwt/Wc7FHQyuFNVp4HjlQVg
	FOvoVuI10Sdl2/SY5rkTfGg=
X-Google-Smtp-Source: ABdhPJxWFYj4g5G5tr3+J2JXyJh76HbG8jQG42GPI8K0cS2b63+BrhAx6CnqsqiQG8bP0tcmZHnFiw==
X-Received: by 2002:a05:6808:905:: with SMTP id w5mr16559474oih.63.1627419551959;
        Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1c12:: with SMTP id c18ls60232oic.3.gmail; Tue, 27 Jul
 2021 13:59:11 -0700 (PDT)
X-Received: by 2002:a05:6808:5a:: with SMTP id v26mr16200886oic.90.1627419551628;
        Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419551; cv=none;
        d=google.com; s=arc-20160816;
        b=WXv+0aOsXiV7/8NTdKiSKRiMElWo+cAjcqLtzPolPPfFwTgGLZIfO83jPyHbh9Vd7X
         In0JcVztBNMoPR6wBLONiaSxB7xzAveaOahi4d0B7TTsYt9JUCzUO3UpguVfxB7LeQwM
         Nf22aXtMZq/GhTLu/q2d6YA9x+0w5v1RIeSSjYSRRW6/DBsaK7hgW5/Xsd2H2+6yl78S
         g/wkwv+YsWdHP+d3LwBaRRWsiIvxjXB2zoFnS7WzkDUhPpRHjQs3p51mBTbCxP3aIgGf
         9niHbxBF3X79CCpHMaKEpLNGzMPP4Dxjdpo71rs8Vr/HeGhxpBH2TZERhlF7l/0XGsmO
         LR7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=A8VL5uTwi2ok0xQG2fExEpX5b43uBzp5tHuj3L/R+N0=;
        b=QPagQKZQhmP91PT7XV47Wmj9DzeDupW5EyqoIG5IeWgFvJzmve885Fb/rMWQrgGnmF
         ZKXOxZEHX4qcCb4VV6MrJ9k0NfduUhOg5KrygdwzOM2DL3OCyO5hxd5iXzF6ZAcUKmEz
         FSNstlkFXT/0ZMI7dDuG3j0bldpZNwZ3znvn1xt59V7y1uBzR5kitN4AhyCncBA+g6hH
         FmGQQeZNzNmEGHBGJMgwCsge/LkmmtLPvrInJcCfgjlLJidEO8BuPzZ82wX0tx4b4jtK
         FbeDfLKd+szJhhf6mI1NKg+/k7Zf3ODRrnzYxlrF0Tm6vc4QmmQMgidf898MC8/UdyPf
         t/Vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MuVA98uz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id u9si184079oiw.4.2021.07.27.13.59.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id e2-20020a17090a4a02b029016f3020d867so1035794pjh.3
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
X-Received: by 2002:a17:90a:1196:: with SMTP id e22mr5942936pja.168.1627419551358;
        Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h18sm3550930pjv.21.2021.07.27.13.59.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
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
Subject: [PATCH 27/64] HID: cp2112: Use struct_group() for memcpy() region
Date: Tue, 27 Jul 2021 13:58:18 -0700
Message-Id: <20210727205855.411487-28-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2121; h=from:subject; bh=K97nJ7xl1U2miGBKe3f4iGnBB6d79/ydjDfoar50c1k=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOGJiERxKe5UaB/DWAoZsHfj6ZstGRywspA5cbo qbU/Sa2JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzhgAKCRCJcvTf3G3AJviXD/ 0awF1xyojK4bdkGTsWWYC5EaCkxQXolbhn5I4Bt5LTgBerDVUkkQ+0hbx3KTd6J1shKe33O721L80q ZPSzA6XO1IU4jEh9ESD0vy/BbcwUB240/GjH7pokMgs1tY/ASfazVm5pEoVQ2XMbM9ttTkxD6cKwl2 wD3CaaTKSXRB54J1wY/RbfKchhBz/awcZEkaPX+V5MH128VNgQWftdwl6k4zkukMyTgQqqtcQEDxLG 2PXGR01tGWiZG4zcq6j0qKS9hF+YMV3vNRTD11FlkXkpCJa/stjQqYc3X+5SMk4CRzfl/Y8cOb2ori taM7ib/LTTXf/XdYjP8mkve4OB2F547uGMmQY02c0e401LtZTJR+BdjWQtnzweLMCU7bZWFnvUt/RI 4cqv3FXHI7G3rsq/9s9nQOPzyX1g6CKdhXSGgnS6F75W6n3LHmhYa9TRe7Q9yzYq+fQMiHisjUkftb iTEIUCDgO5rrzjGJ+PX3mtU2ZT4MbYy9wphEFnW76pP0WmYvf85gMWFUBXxjM3D3zkrPguys6E4LcZ Otlv5886DjdrIVDbh5s3k6JVcDviF5vEmyocVX7Gu/d9l7lhKm805IufyFMpTdxERMUq7Hv4ROE4Ex QkBYn0Udw21OjJBLXDJldGRan/1A1k6mjEOu8Q1mHNN3JiXDko0nT/TA1CHQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=MuVA98uz;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d
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

Use struct_group() in struct cp2112_string_report around members report,
length, type, and string, so they can be referenced together. This will
allow memcpy() and sizeof() to more easily reason about sizes, improve
readability, and avoid future warnings about writing beyond the end of
report.

"pahole" shows no size nor member offset changes to struct
cp2112_string_report.  "objdump -d" shows no meaningful object
code changes (i.e. only source line number induced differences.)

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/hid/hid-cp2112.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/hid/hid-cp2112.c b/drivers/hid/hid-cp2112.c
index 477baa30889c..e6ee453c7cfc 100644
--- a/drivers/hid/hid-cp2112.c
+++ b/drivers/hid/hid-cp2112.c
@@ -129,10 +129,12 @@ struct cp2112_xfer_status_report {
 
 struct cp2112_string_report {
 	u8 dummy;		/* force .string to be aligned */
-	u8 report;		/* CP2112_*_STRING */
-	u8 length;		/* length in bytes of everyting after .report */
-	u8 type;		/* USB_DT_STRING */
-	wchar_t string[30];	/* UTF16_LITTLE_ENDIAN string */
+	struct_group_attr(contents, __packed,
+		u8 report;		/* CP2112_*_STRING */
+		u8 length;		/* length in bytes of everyting after .report */
+		u8 type;		/* USB_DT_STRING */
+		wchar_t string[30];	/* UTF16_LITTLE_ENDIAN string */
+	);
 } __packed;
 
 /* Number of times to request transfer status before giving up waiting for a
@@ -986,8 +988,8 @@ static ssize_t pstr_show(struct device *kdev,
 	u8 length;
 	int ret;
 
-	ret = cp2112_hid_get(hdev, attr->report, &report.report,
-			     sizeof(report) - 1, HID_FEATURE_REPORT);
+	ret = cp2112_hid_get(hdev, attr->report, (u8 *)&report.contents,
+			     sizeof(report.contents), HID_FEATURE_REPORT);
 	if (ret < 3) {
 		hid_err(hdev, "error reading %s string: %d\n", kattr->attr.name,
 			ret);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-28-keescook%40chromium.org.
