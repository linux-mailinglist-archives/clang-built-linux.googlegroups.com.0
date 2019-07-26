Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBYEF5TUQKGQEXR4AKLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 511CC767E5
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 15:40:50 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id y19sf47520167qtm.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 06:40:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564148449; cv=pass;
        d=google.com; s=arc-20160816;
        b=t+EgntmuNuNRIxOCCUOPN2VI7us0L6PNEJiAkHs1adAM+7LiNZn26fryBGH/xJOHgC
         NvOtSkpVHS4+/FLqZQ0lj5rmXjnwtlrvBaGaQw+n0JkAwqOHmZWuPwW6x8/RbqCcBNlC
         vJUwqmdWUtU3bKnZ3fXwItGiwK5FBf+ut5l8+QvjNBcC2QLEGnNrhMf2Dh/R0dxf2pUi
         pJ/gr7TGff0jIMQx/nFmecR347vwnjXYrTDAczeSbhUaDBzQMwNcMVdCQNFKKzoZA8JL
         3nddVuEQGsQ+1GsLn6mJY48LcF4L4SIwk6dv8dz/tkj6AuAUHM8LKM/pcurS1UUqCSYu
         bDWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Pp4Zw9bWBP4qxytE9JYxqQPvDoMRwXSNFU6jI1uI3ko=;
        b=jc++dSCDTdtCROV6gmVkWFPxerM1S3c4V/TuEYYEGkSMea/fuG4mEiothOqOD7oF91
         qD/WZIRdMfjBphX+uamfGQgxmkLj1Njll4KjGV2ngCzhuNThm46dZBVR/755IAPjNXbK
         ekw4vnEO2ZlzGToTPBZ4DK8p9KdAe5j3d60hGq0HIS8vPvmowNDDYYzIbr/VFFXx8g/w
         0ZotRSm8gIOMnkTf4s1c8X3MCgHskgrFhuHWatJxvKYFbhYJVF4+ssNZizH+qQZUrwm9
         n2QGeWUMIZK2nJuPiWGOi2Ct1NGXhi3a67Yo1OUH7Vxy3pZ9cCvTpTJu8WWvdHGHQz4x
         Ruhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BcIAIJzY;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pp4Zw9bWBP4qxytE9JYxqQPvDoMRwXSNFU6jI1uI3ko=;
        b=a/D3ZC1itM4wGTeGamC4Txc5oKUJNUQYQH5iXtNSMj9YeAStRdrRZE/ISGkND2DbiW
         rzvw/Jc+ePr0tH8dPWxdIFdWhl4vhMWOprcyvl4QrpJwCgndU/MGPTBBlKxixxElf5Bv
         me7n0vkPT7TSMHQhWomTCaRuwaPqD9ckzEiPJEE64LfgcDtpZ6d4+9Zvonxzi9Jw1P3u
         ABDKWfTxzWii/F1L1GAuaGREJIfc5dkbSWP94k3dLA7901PIqv/QjjL0t5+J/xEixsyg
         rjdEZ6fzjq4e1l5w5Li6S2jom0ftyuknelzKe9Jzx/ZUHLfl1ftENvf9MNH5lvO3axxe
         qy5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pp4Zw9bWBP4qxytE9JYxqQPvDoMRwXSNFU6jI1uI3ko=;
        b=HXX0kxK3lYMLLClHa0uxjFKzzMuCS4CX6HLx13WKITMY2vyEIULaMPu/ic0mfhxrML
         CyknBkFUDm+UoLLnt103AQq8JvxWrJSDzGWSYqqVcshXnc4iZQJSwkcG07upZUftpId2
         N5YIzq/96QLdApPEWqHl+4sqg2zjZYhwyfVvP+nJR+eWX+E5EXStJAF7PJ5TeOeKJNac
         uSlZZ1enWOidJXjO+YiuwOiJdPq8/BJbZ1kCXXfCxVk/zFr2R4DwMxLbYhXl12+OsZ4Z
         nxCc8frOYfz0LNa85UOb34bE1qkZ5u5BuKXH18++0180qT4xWthoxXKuBkOSDFSCMHup
         Xcag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXqbXRJN1Xt/dW8plJV0dI3U5iORbaI3owbbnxiBFC46c2eXph2
	hk2KsRVtNHAvxv71jdeUvQY=
X-Google-Smtp-Source: APXvYqyevxGjm9p7lCWaxowA/GBexb0gB3bMoXh/UpdDwpwaJj6OPrn+bMKl0tyBQ5Fu4zgsJ7k3dg==
X-Received: by 2002:ac8:368a:: with SMTP id a10mr66687129qtc.143.1564148448123;
        Fri, 26 Jul 2019 06:40:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:129b:: with SMTP id w27ls1368590qki.1.gmail; Fri,
 26 Jul 2019 06:40:47 -0700 (PDT)
X-Received: by 2002:a37:a389:: with SMTP id m131mr64714675qke.168.1564148447915;
        Fri, 26 Jul 2019 06:40:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564148447; cv=none;
        d=google.com; s=arc-20160816;
        b=ivDe5TIH7W3lTgtIYdfUdcdZtCsRitJ68L800wd5eAulm3Z5HCCEQZb5aMUP3PxZ4c
         D2JS7Xjmzq8jMlj5FfzTfF//DKXuipPRVU1E7YdjwwUnWqdSRUhLa/iWTufuQUoh529Y
         L7tHf/7OhBSJQXEBtFlWcY23EW/yCuucU/yBMff/dI3UMIo1Z8jkcHfJGIGnl1Efprqe
         xZQYUOmGjWmtexkrIAe6wCTus4rdu+EBslq/sOgxc23mBAhC+wPJLP2jJ64HP9a74aSH
         Dxue0NlQCMFh7r5tLLGrR8vXOTSsJNZwLKPvy1BXEv9Ii58pV9W0033L2EPjT3ysuRjc
         qreg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1cnYio8Z7ycoCjsGUpuEuwtoKcRcWyEksvsFZfE1wGg=;
        b=d3mdVm0J89Lm02hxBhHNdoKhvIVbEQgAUVc2+6eDNk0Jm416FvXxrBwaRZxRY9T1Sj
         HMk6dOPgjrUFGfYGNDo945zX0ci4dVfvZXKxVilLMHVJmGt4jcZHifDPL4Qx0ZtUqIOM
         /JaLeeL7h9G735tegRxQ8ClI23pDx4FH/7690s8DbaDce2IW52CEXFxnZ9vfiajY4jYp
         YCK2Z+AD3SsFWswmvM6OAtrbJQ/BrFK3yN335SGyb8dT0FWUFYC8/L36KFVhjO0uo+nb
         4E34coqGBemmL9uvZdZJeUkSe3tM6jyrUamuHBY9oqUqqWMHcb0gEnwHPvhUrlCVxsp+
         dYGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BcIAIJzY;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v19si744067qth.1.2019.07.26.06.40.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 06:40:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E659622CBD;
	Fri, 26 Jul 2019 13:40:45 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-acpi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 44/85] ACPI: fix false-positive -Wuninitialized warning
Date: Fri, 26 Jul 2019 09:38:54 -0400
Message-Id: <20190726133936.11177-44-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726133936.11177-1-sashal@kernel.org>
References: <20190726133936.11177-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BcIAIJzY;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

[ Upstream commit dfd6f9ad36368b8dbd5f5a2b2f0a4705ae69a323 ]

clang gets confused by an uninitialized variable in what looks
to it like a never executed code path:

arch/x86/kernel/acpi/boot.c:618:13: error: variable 'polarity' is uninitialized when used here [-Werror,-Wuninitialized]
        polarity = polarity ? ACPI_ACTIVE_LOW : ACPI_ACTIVE_HIGH;
                   ^~~~~~~~
arch/x86/kernel/acpi/boot.c:606:32: note: initialize the variable 'polarity' to silence this warning
        int rc, irq, trigger, polarity;
                                      ^
                                       = 0
arch/x86/kernel/acpi/boot.c:617:12: error: variable 'trigger' is uninitialized when used here [-Werror,-Wuninitialized]
        trigger = trigger ? ACPI_LEVEL_SENSITIVE : ACPI_EDGE_SENSITIVE;
                  ^~~~~~~
arch/x86/kernel/acpi/boot.c:606:22: note: initialize the variable 'trigger' to silence this warning
        int rc, irq, trigger, polarity;
                            ^
                             = 0

This is unfortunately a design decision in clang and won't be fixed.

Changing the acpi_get_override_irq() macro to an inline function
reliably avoids the issue.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/linux/acpi.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/linux/acpi.h b/include/linux/acpi.h
index d315d86844e4..872ab208c8ad 100644
--- a/include/linux/acpi.h
+++ b/include/linux/acpi.h
@@ -317,7 +317,10 @@ void acpi_set_irq_model(enum acpi_irq_model_id model,
 #ifdef CONFIG_X86_IO_APIC
 extern int acpi_get_override_irq(u32 gsi, int *trigger, int *polarity);
 #else
-#define acpi_get_override_irq(gsi, trigger, polarity) (-1)
+static inline int acpi_get_override_irq(u32 gsi, int *trigger, int *polarity)
+{
+	return -1;
+}
 #endif
 /*
  * This function undoes the effect of one call to acpi_register_gsi().
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190726133936.11177-44-sashal%40kernel.org.
