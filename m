Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB4HKQGEAMGQEBIVELNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6F83D8082
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:06:57 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id b4-20020a3799040000b02903b899a4309csf96690qke.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:06:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420016; cv=pass;
        d=google.com; s=arc-20160816;
        b=WMPWhYDG0Kgh/tvdW8TYiwnspGjyyqmTGpUMRgDXU8jsUayXGSPwcJjJF1bmXnWgMU
         lDM1mByo9fG7+B+ML7Fwxa8yye3c2VRcgABX7QW1/T3P+Lkr0an1Cv5mAEZhJyebwe45
         vHcBOJhkCyksEJY4lPWR/UYJzql9xU2OdUFthP3uENZsJy722BPsM/4CiGXwko+BvcC+
         gtGzT3qK6327aXXt876Gn+CPOsOUeI/ew+BJMmDkwCaDxAbsvrderI3GXQj4ksSzOXjK
         w9sf9pjQ4Z54nANZU34X2I8kmc8Y4Ec1KjMgSHN8yDfLvcVWm0r7Yeth2Y/6ses2dpVe
         32FA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+IlbLvGmPKtCQzD1IH8ZPe/3rJ4mV/POEz9NuQq7jHs=;
        b=Iu2+xDf7cCqVtLrR4LFCDv/4VJpdbT9PM1Ruj21wceR7RFH3o4tFMRSpiQUI0KnQoU
         LxVbpr35i3EFQDobOK55lpMRRlDxfx845Gr6P1i0QQ/tXQiNrIMZ9I2prD2tZOEpbj2L
         oFj8+CFnzeSI1gMN7TLjr1fHXyMOddchz2nJcSbBVTI6PfFe5YjO3UB8+kPxv8y/kj3b
         Dnw2o1J0UVQx0abuS5c0ggEtc3hDTj7ixFKwPBueg/pyyySDpgZyf+HZPdEuVW4ZMaI6
         ZAozji2/ZVpG4VintDZWm0VwXaUVkGKah61crovnH6B3KKtpJokHlvAB7KskPpJwlGmU
         Br6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=m3xmCqlf;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+IlbLvGmPKtCQzD1IH8ZPe/3rJ4mV/POEz9NuQq7jHs=;
        b=pIYDacAFo/fh1Gw/ZfcJXECjZNCLJMBsiwJpmrTFHRJJ71e0bg2qhP02UfHyjrtB+o
         rFRanjrRfaPgOYU7DD3cM7IJ8H7e5bcEDhKNYpD9NnrFBCzJt1eInPqsS61LLNQjwrBK
         Fkc3lCIoNe2omLJYDHDbpmD+jENbBgWmQnLVvDanO8qj1cb8AijgpJyho8kwbl5TpNqL
         dW4/KAUEazESLI+SPtF8GIVzrzXPyPxe8pr3UeUzOUNpLKQ1kYTSxNoHKsWJNF1O9Xr/
         NFgusmp5ALnpvR9ku6IlH9zq643UyZEmmxHM0cB6Bm7r7A2Z0dHQZ4ZnYtnPEjga++Bq
         KsPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+IlbLvGmPKtCQzD1IH8ZPe/3rJ4mV/POEz9NuQq7jHs=;
        b=dEfDAPQa5c1KpckpsBABE2xZaWnPEUIleWjGiI/MYW4p/BJHNkWDJ0Um2JymoWn/I8
         9VBcCqAqz6RCd6/zIr4Rf6A0t/3f5iuWt31CR++xzvGPwn2PAHN1oErxAuHpMttmsOHR
         HXlHCqRJhi9ylK8eC7j9iMcyF4ehK81whJ2iAyUHNfN7VR3nYDmSXqn9qAo/2BjnS6F1
         Cy3acD8WvrDYt9zti/gn/YE4+/4M8HRXGqd7qg//7Zbi3Av4UHhzwSA7yBRdqy7mKmKo
         XvwVm091R67kQRkrPwGwkg8XnlHsdYRiuCiGZau+4/V4bZPEczna5p9Pkucm+VFNWXKs
         wUQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531w3x/NCQTIaPO3s+bs3QV13Su4p4UPKuMYx7aKu0Aif5bWCwEp
	LXPiOZ7OP9qG8vk87x5iSXo=
X-Google-Smtp-Source: ABdhPJxT6nwvd00IcWU19FqNlWT7OJDIZiU+MLApOTTg3/g5by5rxFf33tn7nIvJF+5DOciso3fD0A==
X-Received: by 2002:a0c:9e49:: with SMTP id z9mr24613322qve.52.1627420016682;
        Tue, 27 Jul 2021 14:06:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f70d:: with SMTP id s13ls21336qkg.7.gmail; Tue, 27 Jul
 2021 14:06:56 -0700 (PDT)
X-Received: by 2002:ae9:e30d:: with SMTP id v13mr23948413qkf.332.1627420016248;
        Tue, 27 Jul 2021 14:06:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420016; cv=none;
        d=google.com; s=arc-20160816;
        b=na4B1QbnIDGbxX7WsK27lJPw6tPcAA6ZHHM7oGnACVK7l9ND5JhrJYhuut0Ok7JeSp
         ldZ8TKwnl7J9ShQJFZHKlnkp+GFQaeGHHjOl2ZCJaGkk5Oy5Tzw7fp2bN5tJ5ERAsfwg
         fFY36p+2qDa1UXvM8n6LBtWxV0kjg4n3QHaCJ9l12A4etxUjFY7ehC7fcse16N74Rsk/
         pG+KP9nmwLtmqEzvryp50M7Z4QNb4D4Ynb3ZE3ypHDYAa+lLYfTfvD4gGS1Du9U0Rmkv
         GJMPrrUu+NFykrtgPTp7Bwv7nqWqER44lL8AFMzd9wvhfQ+0KkNf0BXISXMQF7BAX+6g
         7GHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=UPGlu1gG6API/iCexVdVFLvP4yi8HHonlHYke9K7UR0=;
        b=py6oN3pWC6x2iimEUVb8fQH9UrLYJfK8FGVppiUUiHbRTQD3JMZG4C9BpDq0BW+HJ/
         hsq9Z6fIZpr6djGfpqPZlNtMIDg/EJMRf72G4IEki3fgVi7uHwduE+7uL7u54CdwN7WM
         DhZjn03Fo1PFnomNbwqDNcnarIjLpiCOyzXi0ZPwDymO1ZCzLDSrNbzpX4FU8ctc35ct
         sXPSGsJTPNM/5LbyLkIthKK1q3cLksVoZNiMfQcV/lK0Qc0v8qDer91Xat7sJmlMdoG1
         wAFAu5aBIp2jXzxjCD4s6tFjD2j8gRoYoeMQLwJrrrjXaFHseIq1RWmRdlmPwFOPQtcU
         4cUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=m3xmCqlf;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id u10si223984qtc.1.2021.07.27.14.06.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:06:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Received: by mail-pl1-x62f.google.com with SMTP id e14so9293plh.8
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:06:56 -0700 (PDT)
X-Received: by 2002:aa7:9546:0:b029:32e:5fdf:9576 with SMTP id w6-20020aa795460000b029032e5fdf9576mr25063139pfq.5.1627420015943;
        Tue, 27 Jul 2021 14:06:55 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d29sm4704061pfq.193.2021.07.27.14.06.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:06:54 -0700 (PDT)
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
Subject: [PATCH 17/64] iommu/amd: Use struct_group() for memcpy() region
Date: Tue, 27 Jul 2021 13:58:08 -0700
Message-Id: <20210727205855.411487-18-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1451; h=from:subject; bh=3pnVXRScRiXcKlAzWmxtHjgtqdCSr5x9f+6aO5KQ5qc=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHODYV9h07PQ3v5RAvzij9k85T7DPu/8sNSs65Q4 0y0UliiJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzgwAKCRCJcvTf3G3AJiW2D/ 4nEDA70nGUYhVyf7oYOlQgzyry3f6d0tKPbEYWNkte1rIRW3O2InK76AVJyf0Q/BtnVYPXNStIrzaO SUDw2yOwXO4oq2+xlKHbSpDQcYZna36Xqovo10kVGY112L7kOGbUfQZZPm+9ZCxh9fprwP+ezpdrPw 5RhPSv0UwMiQYY/cih9csRF3Y0cUslbWzBAlMAKY4vV665FdBYm4Cd1UbBRiX7n5X6rkASp/R5KUJO gT9lqJlutTZcY84HhE2e7nVfUM1tK/zoQ1ZeRZ2l14KFhykcFSW9gTHS3VJa2Fr3ta26jaAzpIQzRI I1VZSdlxpEUPAljbEi8ms11eBPC5N8+yPox2bH9yz8bPLwwHOwyP+yRXagJSrsB0JY9elrri4Jr0d4 L0spfyNNFhXi1pYLN/VwHLWk0qCJ6U6H1/1yJ5fkSANbabpn+M+34UuJ87NhDZnoboRjX68s2N9xUp Ztc8gb6cNuq1OK7yjw+/s+IPxRe2Xrjyj6xMHQ75Nmq+kDqedEV8h/okfZHv9FN6eZGw8+d+79qrHr /MdSe/HI+xPECZcwJiIqojDU9hyrQ75Slj1hn65lXR2jBuZkuxOB9VWtjVZyPGXbccWBvdccl0Sthp x+6FisSerA0XyrnefqEYTnx+5XYfaYWhfusWvoUDsVRDlD5XjnXe/NKxjhWQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=m3xmCqlf;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62f
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

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/iommu/amd/init.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/amd/init.c b/drivers/iommu/amd/init.c
index 46280e6e1535..2df84737417b 100644
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
@@ -1378,7 +1380,8 @@ static int __init init_iommu_from_acpi(struct amd_iommu *iommu,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-18-keescook%40chromium.org.
