Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTM6QKEAMGQESJTPE6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 823C73D8377
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 00:57:18 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id g3-20020ab060c30000b029029fe93a4b32sf351484uam.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 15:57:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627426637; cv=pass;
        d=google.com; s=arc-20160816;
        b=qfoD+m4FmQmuDdz6Qeujti7rf1Hs9nMJ1TOw4A+Cet1yap1u3B/xoqqAoTojmQvMRo
         if/GOePKtPyPF3WU854TXJkVmC3eyTjcgaESGQDGq7IOB72r8WsgP5d1uvtXZgW+R/w/
         +H5ZjgJRtRG9n1h0lqGnGako1SAYhN2748EII4wg16M4j1OH5J7eNvSM4JWNAD8encCH
         IlhbIK00qHx8DNaEV5V0ztBX3xryKDEmhOil7mIpihsRcyNXwLMiPuoN6/hyZbh9557R
         ApZyOhxjhFY2nGyzA3qBkEH3Zdx2UhacXkJcrzMxonwrJQBGGv3KbNcdqVXOwBvgFijh
         dNMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=nlaBfPu7hWqClpM0urroBYakOiKWon81LTrhv+GOK9w=;
        b=yxsACIete7BaZQkiamcDLeEY8BqCiKX3J7GoCqpRTr2PcUc1GWus/JrSt1Su316EhS
         0QYZVkmWdQw4lDhtrqllZctT7idMm47W9Fx4K0sfw78nhGZmsHPHU3KGAfjk3K7Rngng
         0lTGRasQGTQBTCdSK2gGuECeesq4D2LprlvV3LInvT7k1YNYk96gGzYdYAYeU6XuP3U7
         GJ0jKtNdXI6Z2VxAinMtu2DjKaUv124xweT/s1IHGAoaAZYO1H3by6Q+Tpa7QU4VX75W
         dmhsKR9tiTFvqpa2ffbhJUwKO70jEXST6S4RpMH+iwoprc07WE8XDIaflAjQnAqe7E6Q
         JA+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sXr1QkRU;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nlaBfPu7hWqClpM0urroBYakOiKWon81LTrhv+GOK9w=;
        b=AkBHD6PKiIM0KYUNbIRtcs9UeM+qmLUTiunTtUV+Seiba+1E052V3xjNNgJnvSx51e
         bf+adCjgufttZmG6EkCUU2MKp1LON739djN9aNdT4vxfBm46KjjoSNcZfyKHkADiRlks
         vuVc49g4PTua4ZhqrRSIf76J9NscY+5n+jKpWeLJXxDAi0cl0UYNJR+8u0c96786RrFa
         kFbAg7t4s5Arr3vx3sEojPW4cHlgitmnZNhdwpIfv/7m5y/iq6FKYeRflTy8UcM0HPNV
         Ljc0tv85Iq4mN8D7Ie+ixRK6VLS44s7RMvcFwKIqKj0bWAPsFyytV3yndJZW+cbj8Z8i
         ANKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nlaBfPu7hWqClpM0urroBYakOiKWon81LTrhv+GOK9w=;
        b=i6gGPhoJxqJlKdDGTX8CrPmGrpHoEEmae8c7zAJRkktruEuCjrDPR2i5K9NcfxY9/x
         IenhClV9lfc4Yhdou3eyK2zLihUFJ807J3CNwQL6JoMblKYuaTXIM3cDXvC9WRdY1Vrt
         5WNpaUZ+DVcCC100GT0/2kaM/T78/Qj/AW1i/mL8CDs0Jy+3NpK8GnY8iBMqntriPSVd
         C2Hb4batLGoS96VX0D7R09ELQsiR/oJmqWJDWMLv8ioD0KZInnvFqD5P1ff7/rSbvw9O
         rmc8ouHa+MmqYJMSMNO4SFKwdb63SRL7rfDMvEceO7FpbOUmkWmNoUEvwLMOVcCx7wIs
         Mscg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532nviQWg3jn7SqhEOomvKbRtb7zzG47z33AEEHVuRB3mpC9q+ud
	Q0k0Y55+ciNvnFtZ4Kkt3NU=
X-Google-Smtp-Source: ABdhPJx7sh0WntDmpKY5UCDiJ/M6rZNmDWKj02omGNJGRdEKmnh1uyjCyfW+Dn8S4AxmCYeXxYyvNQ==
X-Received: by 2002:ab0:153:: with SMTP id 77mr20060087uak.25.1627426637533;
        Tue, 27 Jul 2021 15:57:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:1527:: with SMTP id o36ls26649uae.3.gmail; Tue, 27 Jul
 2021 15:57:17 -0700 (PDT)
X-Received: by 2002:ab0:6dcb:: with SMTP id r11mr19989639uaf.128.1627426637023;
        Tue, 27 Jul 2021 15:57:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627426637; cv=none;
        d=google.com; s=arc-20160816;
        b=t+2KuCffal9JnVnMGkahYm/f9/hpk6WlnHN+MmhR+seqtzmCyWhWpKhBZedkRn3Y52
         3cBgihV8bCJAPCWexxh2AYgh0ZORVJBsVW+Syre9Y30w8EIEv5KuT3/qNCranQpGTVIV
         FrRdEFYip7+yDej98ySc5lHunNP+HTBH4/LNZUluhcADDaR9rJuAzjwjHtBXSDCFy8Fr
         MWidvILZ30dlSiZTk9AdzjdQRpspDadTAwGoAO3IlInmV86FY0cJHHmL0j6w5uBuRtJP
         0s89TcQ5ovloEr+Wv1wfqehxarmaTt8lBfsjup6S4feH6C0sLUJcWvv1eUFPYuCN8G6P
         a+eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ntxTQduZ1mlHnKObWmvFncG8EhTRcBKan22pfmq5uns=;
        b=pPDqDwk3WjboaU8cMgDkxxV34Q/iRUoQblFJBvGHMJ/8fjb9AaTyfeLQcS0mgoej3J
         Wt+0e7HCvgDe540wb2RaPfalUFAHAda5nuVSToZYsVG2SHX9h9G5H4WtgRO90Dapvon1
         CZWzcfdSWl0gd+5qoo9dvC1NmEhhjQNRrA9W976kU30Y7oR5/CzqHiy/+xIlGYtIzK87
         pUMNrsrrFduXIbk331FaL+3yIcy9EqlpEaNU0+j08A2ixAu5c9d6jf3CiACIKdf90rcZ
         IUXdMNL+Z3YwhguJ+IPlJYfaom7nOoxDP0npLRDk3dOeZmI0tjXcVK3vfbbcPxEtUOwn
         zXpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sXr1QkRU;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x18si340425vsn.0.2021.07.27.15.57.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 15:57:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 550AE60F90;
	Tue, 27 Jul 2021 22:57:14 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: stable@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	Andrey Ryabinin <arbn@yandex-team.com>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH 4.9 1/2] iommu/amd: Fix backport of 140456f994195b568ecd7fc2287a34eadffef3ca
Date: Tue, 27 Jul 2021 15:56:49 -0700
Message-Id: <20210727225650.726875-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.264.g75ae10bc75
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sXr1QkRU;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

Clang warns:

drivers/iommu/amd_iommu.c:1335:6: warning: variable 'flags' is used
uninitialized whenever 'if' condition is true
[-Wsometimes-uninitialized]
        if (!pte)
            ^~~~
drivers/iommu/amd_iommu.c:1352:40: note: uninitialized use occurs here
        spin_unlock_irqrestore(&domain->lock, flags);
                                              ^~~~~
drivers/iommu/amd_iommu.c:1335:2: note: remove the 'if' if its condition
is always false
        if (!pte)
        ^~~~~~~~~
drivers/iommu/amd_iommu.c:1331:21: note: initialize the variable 'flags'
to silence this warning
        unsigned long flags;
                           ^
                            = 0
1 warning generated.

The backport of commit 140456f99419 ("iommu/amd: Fix sleeping in atomic
in increase_address_space()") to 4.9 as commit 1d648460d7c5 ("iommu/amd:
Fix sleeping in atomic in increase_address_space()") failed to keep the
"return false", which in 4.9 needs to be a regular "return" due to a
lack of commit f15d9a992f90 ("iommu/amd: Remove domain->updated").

This resolves the warning and matches the 4.14-4.19 backport.

Cc: Andrey Ryabinin <arbn@yandex-team.com>
Cc: Joerg Roedel <joro@8bytes.org>
Cc: Will Deacon <will@kernel.org>
Fixes: 1d648460d7c5 ("iommu/amd: Fix sleeping in atomic in increase_address_space()")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/iommu/amd_iommu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/amd_iommu.c b/drivers/iommu/amd_iommu.c
index 8377bd388d67..14e9b06829d5 100644
--- a/drivers/iommu/amd_iommu.c
+++ b/drivers/iommu/amd_iommu.c
@@ -1333,7 +1333,7 @@ static void increase_address_space(struct protection_domain *domain,
 
 	pte = (void *)get_zeroed_page(gfp);
 	if (!pte)
-		goto out;
+		return;
 
 	spin_lock_irqsave(&domain->lock, flags);
 

base-commit: 0db822f6dee813f746ed196fc561945eee4cd4b9
-- 
2.32.0.264.g75ae10bc75

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727225650.726875-1-nathan%40kernel.org.
