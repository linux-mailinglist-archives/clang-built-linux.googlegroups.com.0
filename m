Return-Path: <clang-built-linux+bncBAABBWEE7KCAMGQEJHPJTMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 05AC6380AE4
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 15:59:54 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id n46-20020a056a000d6eb029028e9efbc4a7sf19962054pfv.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 06:59:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621000792; cv=pass;
        d=google.com; s=arc-20160816;
        b=wlpGcESpy0d3uHwEYOhz5tunpbr/RAkNPTqt/wXiO1TYyaMj514BNaJgFunCG7jl9X
         m0qBEr5MVB9Xq/hnxrulw9547Q/4iRe8m4bozygHe9O/83Qc78WrGbn4pdJg3y1xzP0S
         FMNBKNrh1son29YGW0bwBhxpQDCF6yWrvvAswx3bPenAE//D+JNHJ+kKr307KmG80UY6
         5hC/PK5bzRNDc26eRAWQxU2DO57osLdVatz5lIW2IqUt0QxrEWyIGSDJOtK56t7dFEIx
         +aJj8xgi3LKLWcbFt35Tpvq7wMQIluEcoCxRcehDVsGa99mhfRvXe20Ual5y3Xw2uma6
         9x7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=nElT67qnNrru2EzyzHBx66JPhMD9m7FXvI6Wbz2SKYM=;
        b=Gwm6cFlJb+7yq9bE1EsQ7Zz7WQCfCy5KzDZPEZofeU1cvZR25zLVVLU5pEa8xR5QAZ
         ZKet6zSJWBe+Vazw6cVMEmDi2qgLFmjFxTdtIGnlJjc6oGnlnXvYuhonvCFdf5M2NXMj
         6JuDRnxzkxjFciMWqb9rRSM02u8POMbntlKPCZkLfV/OMJifnSOoD8GLS2z0HnuFRN72
         TGIT8BMCI75+X0k32XJH5zIXbyAbWBdcdC3W7JXxC8Vk/wEtqocQ/v6RINEXp/NkqSX+
         TAmnHIawMHk/08gbwi7nEJhF787ep2YXaH0PEkvjWDizn7qWGjRMum8uKjNP+ZGMGe7e
         AC3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uVSWX0Vd;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nElT67qnNrru2EzyzHBx66JPhMD9m7FXvI6Wbz2SKYM=;
        b=avYwTMe8K5QvoM0yMLUEroxXkPYQRDoAUZC7urbtHKrjyGCQ1YzOqZyuYH7MKimHQD
         eQrgCjceBGclAWrrde3rawZrFZ4Ummkt7+WtYyo8Gfq01DHi8jsL8QF2LsmROUYfXtUR
         hT5dBCKE2KTnuD79i6UX2Psp0GYoCJqeRoIlYcHgjIdHxwefTr65qHHhbmbM6b2ozqjz
         aTWmJma7PRmI05cpsdKfvYZVmtqwDd8cULAVj+7VIShdIRjGnrx4BA+ANmLzG+Tj88Fv
         p45TUDxqPHY6RZD7pItQZLrCIYwqcOwQL6B8N78syIsluOxSEOa5aI0HXH19xhSJPNBz
         6uOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nElT67qnNrru2EzyzHBx66JPhMD9m7FXvI6Wbz2SKYM=;
        b=DRABugY7ghaC0Wb1rSiJaae06CNDn0htwRU0Umj39Pz7gtb8oDUunaX397qw+IkVpm
         DvF6XhjsFZ+hMhJaArq3mX3KJqok5NX1jKWJHuTysQbOo+7V4mMxFUn4gJepYmKYvYvP
         pmUaadcWoQ/91sfph4uHST9ShC5V3IqHb4dYQ9i3cv2P8SP4dh4VAw7lDnJWZ2pMGlj3
         VZD9woHO5MLGWDjZB0maYG8Ri21WXALSnNHamXvb5AUOJX2PVtR2zGmfyyDeI/0llKb0
         RZ04dzz6Z/XkLd/ZoD9TJ8l+2ExeVD4FZzLk4HzNMusjtq1xjjJaqz7vmKuBsg2dD5cG
         p3Kg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YU+W6tNg8i333MjkCH42YP3ikesyxPIh+wTnEoM6iw3Zss+Jm
	8y8g+SNZo/WyiRexhKKhTUU=
X-Google-Smtp-Source: ABdhPJwWybn5R1pzaWSLFRFfAGJ01GZJ+Mxw10eEsBURD7vtlM0vpc3vti/SqjUcludsMr/YHagVPA==
X-Received: by 2002:a62:1d0f:0:b029:2d5:3ec2:feb8 with SMTP id d15-20020a621d0f0000b02902d53ec2feb8mr4070362pfd.19.1621000792689;
        Fri, 14 May 2021 06:59:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4145:: with SMTP id x5ls4164497pgp.4.gmail; Fri, 14 May
 2021 06:59:52 -0700 (PDT)
X-Received: by 2002:a63:e114:: with SMTP id z20mr27986327pgh.207.1621000792291;
        Fri, 14 May 2021 06:59:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621000792; cv=none;
        d=google.com; s=arc-20160816;
        b=HO0aWoUWTPihwef+eIuJaMNj2Mr4dpCEBIoeu7DmuojHFidjvOvKp2sr1YzVP4Nfnf
         CmbtWH0SY0Rv/L9XUYtkrNihVB13p5n3KCav/FsGBqzzdJD4ItdUHAiEANLg1eU02nGs
         EN7L9a5765m8pkLmn2Hf87BHUd5OaJutith3HOZ0wuzljSWsmhlbi6KWpOj9GFNDtVRR
         P4tbtjdc9hm6fES1XigD90uZacenPrOZ6XG2eI2FxHoDZgWUmJo5mSWr58owtLGOISA1
         ZaM+AWvpY2ysmYsWjlrthbyeO1ClWGFI6IeBQ+2HeKtX50GkBUOpcX1fJVsI52GIeWTr
         1UQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=HSSKbV6oemLrJjJblH7HaVjcC/N3/kulDi59TZXJFY0=;
        b=MrOlWWuxiD/3ANVJ/zajTRLMRmnW8MuKFmtLWeeEiU9KWYKK1cgJ6+0uLp9h1XyFsr
         7IVobjS5KdvT+BKlxzNUdWiDW9cFwnTBS1gdZNHlLF9zVM9xRMGoJdpU8C2vj+82gN8g
         U0QB61n2xi/JrhpVIxrH0FozAjnoxOx7O+QaENaXsMtCe6NkkIGfc97TnpFr3MyukvB9
         O4Pw41S59aJHENcaZbenIqBbox6htGRtoVPWNBNflQ6b4zzKmP708/rvKCoSYi+vzSsy
         ahl/tazqiQGSL4poykf6ARHNvvxvO+nLakScuboK8yCmDwIkS6laAFjogJ8Gfxo8zT20
         EBBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uVSWX0Vd;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a8si1030730pju.2.2021.05.14.06.59.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 06:59:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 793C3613E9;
	Fri, 14 May 2021 13:59:49 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Jiri Kosina <jikos@kernel.org>,
	Benjamin Tissoires <benjamin.tissoires@redhat.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Julian Sax <jsbc@gmx.de>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Hans de Goede <hdegoede@redhat.com>,
	Douglas Anderson <dianders@chromium.org>,
	Kai-Heng Feng <kai.heng.feng@canonical.com>,
	Xiaofei Tan <tanxiaofei@huawei.com>,
	Coiby Xu <coiby.xu@gmail.com>,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] HID: i2c-hid: fix format string mismatch
Date: Fri, 14 May 2021 15:58:50 +0200
Message-Id: <20210514135901.2924982-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=uVSWX0Vd;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

clang doesn't like printing a 32-bit integer using %hX format string:

drivers/hid/i2c-hid/i2c-hid-core.c:994:18: error: format specifies type 'unsigned short' but the argument has type '__u32' (aka 'unsigned int') [-Werror,-Wformat]
                 client->name, hid->vendor, hid->product);
                               ^~~~~~~~~~~
drivers/hid/i2c-hid/i2c-hid-core.c:994:31: error: format specifies type 'unsigned short' but the argument has type '__u32' (aka 'unsigned int') [-Werror,-Wformat]
                 client->name, hid->vendor, hid->product);
                                            ^~~~~~~~~~~~

Use an explicit cast to truncate it to the low 16 bits instead.

Fixes: 9ee3e06610fd ("HID: i2c-hid: override HID descriptors for certain devices")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/hid/i2c-hid/i2c-hid-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/hid/i2c-hid/i2c-hid-core.c b/drivers/hid/i2c-hid/i2c-hid-core.c
index 9993133989a5..f9d28ad17d9c 100644
--- a/drivers/hid/i2c-hid/i2c-hid-core.c
+++ b/drivers/hid/i2c-hid/i2c-hid-core.c
@@ -990,8 +990,8 @@ int i2c_hid_core_probe(struct i2c_client *client, struct i2chid_ops *ops,
 	hid->vendor = le16_to_cpu(ihid->hdesc.wVendorID);
 	hid->product = le16_to_cpu(ihid->hdesc.wProductID);
 
-	snprintf(hid->name, sizeof(hid->name), "%s %04hX:%04hX",
-		 client->name, hid->vendor, hid->product);
+	snprintf(hid->name, sizeof(hid->name), "%s %04X:%04X",
+		 client->name, (u16)hid->vendor, (u16)hid->product);
 	strlcpy(hid->phys, dev_name(&client->dev), sizeof(hid->phys));
 
 	ihid->quirks = i2c_hid_lookup_quirk(hid->vendor, hid->product);
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210514135901.2924982-1-arnd%40kernel.org.
