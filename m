Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRWG6KEAMGQEIW7QRUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B73E3EFA9D
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:06:00 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id c6-20020aca35060000b029025c5504f461sf937881oia.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:06:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266759; cv=pass;
        d=google.com; s=arc-20160816;
        b=F/MQ4eRCxTbgQIR7TScrXdUJ9NIrx6q8KpMbYTmsu7Ikv4lfmQuqfY4BcHJ5KNvGKY
         Vpur+/m2OOLHE6vDvwrIXbSuEYWTZGpimF1MIZPc7efD5sCPkIMfdsG3Y4mCrnWOQb1e
         tJ7mFpq8rFw6RJSitVbm0cvsGXN3MVs1r+dNyszXO2b3yQCbCXT+M4RF5ZFNTAHdZZlq
         Wm3SFXEaOyvwEzRYph6i8uxBLZQ281oryEFqw6FRetdIqa4hx6lgON/i//ZL1EY+NmK2
         ETWKErP1vp3+Lz2XS23yzF3ay3Rq/s2YWyio9ta5UJLUhi24cLrAV51Hp8sU8hmIbXC+
         ODHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=t8d0ocQR1PBway+RuIM34gUa7pyU+9ptN8+2wj6av50=;
        b=oNLjo158THydpJHPTRsi96/heLkqtt51gb4q0WoyMQ0AFY9s9eEBTCQpuwXNsMEnlU
         X5JaKtBxdupMuZjVyKKsgv6BrlZc0/gszdBmJ0ZOgNd3Q8mQcrPmy3NkGtXZZXlwY1HB
         CdgSV1BS2OUq79Vap7vaO3gxltAksl6FHGQsD5FIM1Ei4yc04vzBWsM2E+KwHpSFszlC
         J9CTqkDUn7ib50EnyME40Gm9oI9b7uZwntU+pRDlrhv7aAbTvN9t4MpWzrB59W4082eo
         4/GQ3MGecvac6vlfSdglFBfgcCzwrrT82RsJhGyOYiNq9/NmZDo+snfTB5hSn5plNYtU
         yVLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=USSHyqJV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t8d0ocQR1PBway+RuIM34gUa7pyU+9ptN8+2wj6av50=;
        b=VzaaLeUcE3akereJU0kRJCq35pouNZnCChckKtzz5vWLmtYtmkVz3xkXXjAp7WSr5u
         ygs3UXAEyUgAU/DF9kFVhJMki1e1LNY6dfB6n3DqUNVzQ9JLZEoZl6RXNLUg3/mJkW6F
         v+KbMYPn8+tca4Vx9b4q/TJYArOeG8JZNnRmRBZwisOfpGDLs3Nd1Bw4AT0z9Uye8X57
         /qt5CcGUx6OAyMHACT1IYLYt51I2hvKkCTSBNklhoQMesnDI0DC4WBiLfU8ky3s1CeG0
         FM7KqYJMOiciRy+EvBXyYdaVQv4UEB/aJBEoPC8y1omNY3on41wr3wW0z4G3c6Oq3VZF
         Vw5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t8d0ocQR1PBway+RuIM34gUa7pyU+9ptN8+2wj6av50=;
        b=EWFpHJgI9ta4J4Jc/CaYRWgak7ysz3GNdE/J3Wu0JvcK4luRhnEHuNuW8Hlw7Bju6m
         RRZirroe7pmo9hut6DDUyrEe/r16cnsiZmmmdH3Fxwun842mHzHOIj4pwZhlanNmPPFC
         iYysqnYp0yJZRvl2nFArLkvGc0b9P+n5z/V0migE5FSdz6qEGXSChQ4tJIIaZHg6d/YO
         WLrgyDQ6NTwgNtF9YKIxg3DP3Zu3m7cGu47Dpa5vlcAfqSmLYq8wSpw9/S5lHX+ZTHIr
         gwLjpgbQ4KUh3zX1zuPSSo8dhgNAMMxL4yRfJH9ayMQ8LG9VqDqTfme3CufB8v/DaULC
         IRlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325yebrmDnwtvpCFpJhVK4HTWN1GOz0Vz7+NeVXyAXq3oNM0dIq
	JgXgawC11lisiyhhsN17d6o=
X-Google-Smtp-Source: ABdhPJz8lLP5eexDu1JlmSJczcC5sOaGDHU/3BiDztkDXtJHV9HuRxNgZbFDvyHcivVWQmhHFSmqyw==
X-Received: by 2002:aca:281a:: with SMTP id 26mr5749004oix.27.1629266759032;
        Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:760b:: with SMTP id t11ls78703ooc.6.gmail; Tue, 17 Aug
 2021 23:05:58 -0700 (PDT)
X-Received: by 2002:a4a:d991:: with SMTP id k17mr5438148oou.74.1629266758693;
        Tue, 17 Aug 2021 23:05:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266758; cv=none;
        d=google.com; s=arc-20160816;
        b=zcDnHAPci6wRLyPO/K4fuM8buhbmSG1FAGtDUeG5dUq4Vv4/I4nkydus3mIGP9WrX1
         E0m1ZfkpgVAS5C1zJv1Xx5pWuJSrnQcx/VhByaOPTfI7Nouh1NBi3vbipMacmsZglp0+
         ZQg+x4x969YjaQr1WuvMhAE4TYGZ439Oo42E1XfiV9aNtl0fvITvQZdPeQjut+h6NQ+Q
         r0WRx4hapklBUJHOXtq6rE960MEfC8Z5MKujk7AGMb7rKLP0S9nnz13K3CcySlVgha14
         36qTmYX1ivokRfBPZPmCkQyg4nGm+70CAguT+3cOg9jQcNhMaYvh/T+QkQpHI0U6F22T
         hl3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=c3QYmodiWkXXXHnLZdw/pUaRbLmOUogtqxubemJOUWA=;
        b=NLScYc0XL3Eqhhx8BCkY6trP43EI5UNHVrw5Hzz2rI2MIExcvxoEe0dyjVRQVKzMMJ
         xbY2mkV5g+DpuZcmXQKncfD+Lc8QS8zSeZ0KSO+NVAl0KIdT+NHFt3iL2gPOx1BmQuSa
         xCh3r1o0UqQYkIYKjohvtOpZw1cx9YLcfv84PHBQdwoJ8eqErfbGd/O8pXj1jrwlyvuC
         JWgQG9TtnDiyNLCqOO21VMOORoua9b23X+2ATBBoShkOVKuTaN1PcFtspUQYGvbldqR4
         Ya02nibAkrZi97SAXz9Eko3CCBpGHqe19/M8MqjghHPDjzy8sNydgmusiFXbctm74uCe
         vPeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=USSHyqJV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id s20si79473ois.4.2021.08.17.23.05.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:05:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id 18so1066190pfh.9
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:05:58 -0700 (PDT)
X-Received: by 2002:a63:ef12:: with SMTP id u18mr7200850pgh.331.1629266758150;
        Tue, 17 Aug 2021 23:05:58 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c24sm5560285pgj.11.2021.08.17.23.05.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:57 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	iommu@lists.linux-foundation.org,
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
Subject: [PATCH v2 13/63] iommu/amd: Use struct_group() for memcpy() region
Date: Tue, 17 Aug 2021 23:04:43 -0700
Message-Id: <20210818060533.3569517-14-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1560; h=from:subject; bh=20A/+PUHWtthTe8z3o3iWDN4Pea8VoPXFbZDABJx3xk=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMgAqqlbIpZIBPs4khRtZS/Nl/a6SaswUJcEQdW lSBIpT+JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjIAAKCRCJcvTf3G3AJjFlD/ 9d5SSKFk/Byob7i8UcCVOb7iPk8Hi2YrJmknzLO1KIxaNkvuyEARZbq6e4B+T+TPepPhntcPKBfOXP FzeN5FXWJBzVyGoIzNGiCPh2WjsSRI106tmAJhcdyZYmVBcyeyjdu/N1w4oKdYAk4K9v7zjJqZe47b FRaeQAjBKc+4h21NGRtTPZDzSgeXabFrYbQBwUnsITGiIKiRbOWCcDGh1aIZNv6BQVD4Fgpe9isZog 0BCF6kfGofFSR3+EdUSEAaJY5GtmJoPQ5dltBc0m7OGIWYQaf0gwiedtUQd1gVD70DjbjWh3AlITFT Vf7P1sH6jk2mKWV2rZKVWibtUzQcLIXbdByJB+gXLflqIxjrUioE82UZxpX/cMIXbUJ+LVuXzllnFo 8nL/lrsLyasmOQKMZ7Hfx+H9y1Qtsx4Yi9Gf/d+PO5Yq2sV2urkcsqTblr1O674nNzPnTn3PqKHyZd OXFfw5XKgJ15ZpYPMmqOBTwA+1lyh2ypbwGLGTnQJZurT9iDDKnxhukSUEE4UmEgYep9iej5UlVsg1 cUbGoY51vQpCifPn0TF/vQv4ai8qMbObKYv7Xb/rqwe3jqgkYO7Xj97gKJUlXnAJ4bWiRMOFBvJI19 zdGfqZsTlEqTMGHOWNFvVFBQcZYVfy0VfPzdZMvR916KpKjQPu9DSR2qCvyw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=USSHyqJV;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432
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

Use struct_group() in struct ivhd_entry around members ext and hidh, so
they can be referenced together. This will allow memcpy() and sizeof()
to more easily reason about sizes, improve readability, and avoid future
warnings about writing beyond the end of ext.

"pahole" shows no size nor member offset changes to struct ivhd_entry.
"objdump -d" shows no object code changes.

Cc: Joerg Roedel <joro@8bytes.org>
Cc: Will Deacon <will@kernel.org>
Cc: iommu@lists.linux-foundation.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/iommu/amd/init.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/amd/init.c b/drivers/iommu/amd/init.c
index bdcf167b4afe..70506d6175e9 100644
--- a/drivers/iommu/amd/init.c
+++ b/drivers/iommu/amd/init.c
@@ -121,8 +121,10 @@ struct ivhd_entry {
 	u8 type;
 	u16 devid;
 	u8 flags;
-	u32 ext;
-	u32 hidh;
+	struct_group(ext_hid,
+		u32 ext;
+		u32 hidh;
+	);
 	u64 cid;
 	u8 uidf;
 	u8 uidl;
@@ -1377,7 +1379,8 @@ static int __init init_iommu_from_acpi(struct amd_iommu *iommu,
 				break;
 			}
 
-			memcpy(hid, (u8 *)(&e->ext), ACPIHID_HID_LEN - 1);
+			BUILD_BUG_ON(sizeof(e->ext_hid) != ACPIHID_HID_LEN - 1);
+			memcpy(hid, &e->ext_hid, ACPIHID_HID_LEN - 1);
 			hid[ACPIHID_HID_LEN - 1] = '\0';
 
 			if (!(*hid)) {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-14-keescook%40chromium.org.
