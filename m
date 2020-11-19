Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHU23P6QKGQECODB6EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAC22B9BB6
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 20:53:04 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id x9sf4793352pff.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 11:53:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605815583; cv=pass;
        d=google.com; s=arc-20160816;
        b=PxX4NM0mPPclh+Jd4e7EPLbdNSRfbaicY3/uR86rFdqsLLYRn+WjqpWTZnEyaTdx6A
         qMtHCc979kY2yjTW8WBDcNpwfALBjWkX3ukbDnUoKvqKSXVDO2twqywajFSHPjzDMcvM
         xwdcIwRUfTsbIwb775gNRlLAEQEdKef5LyVu+vgMZzMSzScs0+yhB0VUAEFdCNgRrWb4
         vE6VOqKj5Hic+58zF+uVMy7Y9d0oMGgZLRMjBc5Ph5QuEl1+P+XFGXVIDSarfpPj2A9D
         AznRqPnaJsgPgr9D5TXXuRbqpNjArfPO3XHM1x7mPRnRmUdTbpcFm/Uotzo1OrQInlkN
         XrFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=ueLh+NqjNKoFM0kHenXd07ublfeWC2tMf+C37GXUPsA=;
        b=j512KVFXN5ZB/9vLc1gFocw3sK89MQp1h7A5qxwj72FTc0AW29zcVKE6cAZhbxaSfp
         Zue6y1JimLR7ctjjjq9gy/879Wcu+uhF3x/VroCOVKpYvTS1qyBM8HOleNnhFWGY5H2k
         DkCFXWw/WX3frIyi2jC2JV0YU3wOeoDkxeOVhziy8ecMsl+eMTTcmH5gYKtQxA42v9ri
         mPK9pwHQ3vffj38eAV58ZRi0zL8+A5WG25lhWP4VWmPwoMYvp+PJr/uiA1+4Dxa6MSEV
         4B106J92oezDrV7byNOvwLWC+q1fEYri3YjhumL8KCmssV0RfpulfhuGbBgu9JT1wyGx
         0Oog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vn4OOjo2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ueLh+NqjNKoFM0kHenXd07ublfeWC2tMf+C37GXUPsA=;
        b=Y0FpFjT6QIBci4kMg8PjKAcwP8wbuhZn1gl2TObXigyDw2d6mFDmD4KGhP3QeL40G7
         sWNghLCvopnwrWNhpe0KMG89OkhD76WZ3iQOlk3SwRp56uww3qO2Y7SnL0hP5UOA2Uh3
         E1S9fGFY6n1gTyJ+7C+zA7dew8Wnpm9zxWK0buWMWCvjlWudAXiKNr8fI0rFh7GbFjgT
         Fj/pHsMoV+Ne6DS3K5/E5Ey6Rki0sfSxz3xHjv1jTtko18hL4E4EmWnxsSBh8QTi09nX
         jY8wGtPGvbYp0Le+V4JdqbYYCZptYu5o7pFS3tNAoNv1DSyk8ug+sFNK9Xf/lEzLnriq
         BbWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ueLh+NqjNKoFM0kHenXd07ublfeWC2tMf+C37GXUPsA=;
        b=D9SYErr3p1iz5C7mB6VMSXMGiohmV5qoF+t8u23is28bHe8bBickG8rf8yPl6J/4Wu
         Ln1Ri5sNiDKW13Du9nY/brDUvnvZWtZvGJNogQ/ky7yLRiQq+icx72k273hNAz8u6uH0
         fLSIBxhCo1lNk5NRKtTLmSpFE4v0zmJZTLM8JuY8yyMlrqOrVuJtXOyClsTw6zr/uzUM
         qV9JND2hi1Tez7YBpJYyniewFyKtLDEyVBuZ5HHjQifLcRCxZd5FcahjpMqVPwgjHtw1
         Jhox2lMVRvDlcI3u2jPqggs0iF9PpHrkYwYszeIqw0+ufwNVgs+jfokk2mS4iBHoqqig
         +HRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ueLh+NqjNKoFM0kHenXd07ublfeWC2tMf+C37GXUPsA=;
        b=BLlzUh/6pMq1aejClv2nUwaGMdtN0gyne4ZJT4MPE/oSYssP0/oXvQ3wvh+8CZIVxM
         DFbbAlwhoZ6OHdD8YplpLDQ0UgSaTBGGD4tLYS4qGInOEInRQfpB6CS7LEK0YXaJtSgN
         +nrAzgdKmoFq9corIIDygqlzQ5D9Hg5+9fyKBRzGYwpLExkBcWWDz45qXUxsVgoeBHEv
         bcU6D1nhexj6y7LfCSq1T/mzQbfOc2JV83jfHLVrsHkHD6jI8AIb6GJrMFS1dY00KNGB
         FN+Mutwgi0+NY2ddpZwZ/cYQAKPk55SjNol4Bwe2iyxGMKsiXBLAaoMDDTXQDPUWQtGM
         5uJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531w1plJEis/gvSfORG0iOLJm0ABNH2ISKubXGQsVDNW/2nUPGV2
	jOTXsm+bFD/xvkYV3IQ/AGk=
X-Google-Smtp-Source: ABdhPJydC/vv7ZCOqiG84umecLrvmZOdqZte4qrfD+2ESyUWab+h9NjNsoDWdk2xuupwEok69XTgrw==
X-Received: by 2002:a17:90a:65c9:: with SMTP id i9mr6373714pjs.125.1605815582895;
        Thu, 19 Nov 2020 11:53:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:be18:: with SMTP id a24ls2104884pjs.3.canary-gmail;
 Thu, 19 Nov 2020 11:53:02 -0800 (PST)
X-Received: by 2002:a17:902:6b48:b029:d8:e603:75fb with SMTP id g8-20020a1709026b48b02900d8e60375fbmr10534323plt.6.1605815582277;
        Thu, 19 Nov 2020 11:53:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605815582; cv=none;
        d=google.com; s=arc-20160816;
        b=zhH3hVcWBCiZZrxRNxR0fQ8boVLwm4iT2JE3vQ6x8OlmpFueK+1bYd+fbYA2oDwSSh
         TxvG6TJ9heQFGjYEhYzCjcLSImrnJhg/520KEMMFS+4fwSSa16XxmKCvyr+zZ7lWnQmt
         EBy02Sek5bK2AA3aUkCcjMQi+TZJujjtdFROF4aE6wYHn9fFPsUNRWQRAE25OPPApN4B
         7NpnkO3rlIthYOqZXZszm0jkjXBc9RoyxnLo3JSdp96CLUDKe1Beaqoi9Cw/lUed9ae/
         TbY6j1xTAks2Bb26RddaMMPdRIZeyT8YuEiuDZ7hXEGyed0The71LSo0oeLMpvk5cA9i
         ketA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=7S/5MWDMjdajarfdTqOLA2n8yq2i+b3zMxZHmMoo6Rs=;
        b=URHkGviMmPzWIlMWVHL3OzRIC86xctbVslPlFUX32B082hVIKE8F1ZKfr/GqEFAXyb
         1FuObIeUmiskVpWqzRoAd0C6+tcPRQ1Rm2ga7Sd9ky4c++js5cLE3yb+4q8nf+Bxjc7L
         PxW+stT1iNEosO7g6OsJXhesp48pA4/RV7khYGpAgLXRm2vbhfB+uIB+RvpgJf/lQBx2
         TteSptOPcgy3hl1/P6oZoGKFFwi6pd1KrMZ1xUkvsW/NKLnoxx5iLIXtZ/85DGzHEvBA
         uIdwertDqqlROG1WtBFJ13u1uleZZKk3J9hkwK2O2fI7CljFBvlDEDf+w8ZY8wOBaaJ7
         rbXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vn4OOjo2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id 80si88534pga.5.2020.11.19.11.53.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Nov 2020 11:53:02 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id m65so5299856qte.11
        for <clang-built-linux@googlegroups.com>; Thu, 19 Nov 2020 11:53:02 -0800 (PST)
X-Received: by 2002:ac8:6d03:: with SMTP id o3mr12953600qtt.305.1605815581413;
        Thu, 19 Nov 2020 11:53:01 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id h26sm566543qkh.127.2020.11.19.11.53.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2020 11:53:00 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Dmitry Osipenko <digetx@gmail.com>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] memory: tegra30-emc: Remove unnecessary of_node_put in tegra_emc_probe
Date: Thu, 19 Nov 2020 12:52:44 -0700
Message-Id: <20201119195244.1517236-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Vn4OOjo2;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

drivers/memory/tegra/tegra30-emc.c:1275:15: warning: variable 'np' is
uninitialized when used here [-Wuninitialized]
                of_node_put(np);
                            ^~
drivers/memory/tegra/tegra30-emc.c:1269:24: note: initialize the
variable 'np' to silence this warning
        struct device_node *np;
                              ^
                               = NULL
1 warning generated.

There does not need to be an of_node_put call in this error handling
block after the shuffling of the np assignment. Remove it so there is
no use of uninitialized memory.

Fixes: 5e00fd90183a ("memory: tegra30-emc: Continue probing if timings are missing in device-tree")
Link: https://github.com/ClangBuiltLinux/linux/issues/1203
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/memory/tegra/tegra30-emc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/memory/tegra/tegra30-emc.c b/drivers/memory/tegra/tegra30-emc.c
index 3488786da03b..93f9002d32ad 100644
--- a/drivers/memory/tegra/tegra30-emc.c
+++ b/drivers/memory/tegra/tegra30-emc.c
@@ -1271,10 +1271,8 @@ static int tegra_emc_probe(struct platform_device *pdev)
 	int err;
 
 	emc = devm_kzalloc(&pdev->dev, sizeof(*emc), GFP_KERNEL);
-	if (!emc) {
-		of_node_put(np);
+	if (!emc)
 		return -ENOMEM;
-	}
 
 	emc->mc = devm_tegra_memory_controller_get(&pdev->dev);
 	if (IS_ERR(emc->mc))

base-commit: 5e00fd90183ab0103b9f403ce73cb8407ebeb145
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201119195244.1517236-1-natechancellor%40gmail.com.
