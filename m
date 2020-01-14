Return-Path: <clang-built-linux+bncBC4MX6WW7QIBBZHK67YAKGQELWRFY5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E02513B07E
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jan 2020 18:07:49 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id y7sf6775400wrm.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jan 2020 09:07:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579021668; cv=pass;
        d=google.com; s=arc-20160816;
        b=rTit08wLVUgdP17aQJtWMzPBvJMM+WC8BF4OpSMekzIbTH72HCozo0w4yMjazUUID4
         wYfYt24hub0B401Pb3crxHvOFjnBv1orBxFH+pE6g4oj1hvZfkf71qeDwO1IpE2SdIXA
         oEc2eAzNMCCAreOkdo5Fm5t526hFkfWFGzRUzJoONQMOsdJwF8XTx8wVzVaVrivpJGXL
         Kzea2BK7i0U44YHdYVP6GID1/sUh0AWomn+k5li4yoQ8oaMSv6mF6lJJz7PHbQ6j9rHL
         2DkRVpzp6W2pzkDRu37nbzP3obaWMJmlALBOP8acsXdqtJ428S/iC53141lBJKrSh9vH
         rVyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=I4thFE7lwYTR33dhTTjzCm8zW6RXxffV1frJlYJAbog=;
        b=Ws/owwYgpXhqfwaCjApkSH0qPgd6wGuhANNxter40vOw/cSyfp3gSZr+1/9mpBe/TD
         gx5FTNI1Rg4HWK8ha7Gg7pHOZOU5r0z0Ai+IXx5RSyZ+0ULpRE8FQPxifAbxVgyU7OJ3
         a8/heL1hZWwvKE7XqD16JV2BdND5r73O4ABBD+Bhi+1f8rKngGjmPHlP2il4QyTMqG6N
         sPffOSdRJridOb3H+wnQkM/3AHfnXWOjRgQlVmjATOcBSahtrnDb/ohMA8MYOfMnz90g
         CX2JUqZ1ugVbTxUUvu3kS+C3ZnHZDJYKNRXdceqqgzESD4YaIOeYrqQhpahP1jhbK4g/
         stFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.183.200 as permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I4thFE7lwYTR33dhTTjzCm8zW6RXxffV1frJlYJAbog=;
        b=Kxrvw4QtKlPWrbr67ZSmU5k41C+vzNQnEwPtYM3+8X0nGkF68WJzdfawYgrP7IXYzn
         9U18LqKnVG9OIPdDp/enEypIEhkJNxZtMRT5sk6lOoKoFK7b2tHxNcwoE4sV66RuS5s4
         lIEHnYy6tDdhyDGdo7FNXVMTk0hFnPAXlfTC7Ghlh/7teB9C1EVQ9ee8AsMVqu9uIjNB
         hrNmIIPQTFkuFLMqQ5fLHL+r8fAZQL5LL8pxWLjjxMUcI8nUHmEOgmOqBHcVmhSMjK1Z
         /RkOB/phyrScYcMMirWKoJ5PH4dEOj5c9i93a47LLzg1mrSNopMHH6baxS1ZNryX4Mkq
         J1Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I4thFE7lwYTR33dhTTjzCm8zW6RXxffV1frJlYJAbog=;
        b=h4Rg6GtiSWhNnzytD3hkPt0wMXkgokoVTqs29XTExGDV6RRhbHS8MSZ5NeTd7fUh2/
         1r5R0zi2pD8LKVLix1BArQHLL1UVUSP67WMTUA0PTxArPdykOMfpDO82YwFgthL501Uy
         iqL2dASJGo2LSE6AzKqyiMbZ7wxmipIhnm7KWTGDGPg1cEncimWjDw7juRb9wzAO3t3z
         0gLBepUshmbOMK9/jxc0b85YnkUftKpEd5AoRB0RiEWPSNIXFMROKyAktBVgU6v2/RPZ
         GWMaAHzjGPJXmmBmaTR6IBT3AfRrcgJ57VmVQ1wk5xwYwp39k2qZEI4JHgJrzU/NHLb6
         szmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUPQ438psKMRTTgHQNhPUBu5BHEFnFn6zaXS0I/FRNb2e8F5uz2
	QPGMBSHLOuc7k8tqL47M9Lw=
X-Google-Smtp-Source: APXvYqzC9sGZILBxL3b2SzSVZgJbn7dczID8ONe/0/oKb86N6qn49ZUMiViCBPBZl2nkwRewCN+NtQ==
X-Received: by 2002:adf:f091:: with SMTP id n17mr26833922wro.387.1579021668785;
        Tue, 14 Jan 2020 09:07:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fc89:: with SMTP id g9ls5962652wrr.5.gmail; Tue, 14 Jan
 2020 09:07:48 -0800 (PST)
X-Received: by 2002:adf:fc0c:: with SMTP id i12mr27661655wrr.74.1579021668277;
        Tue, 14 Jan 2020 09:07:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579021668; cv=none;
        d=google.com; s=arc-20160816;
        b=hQyMkbxNSDKmHOGjkqzKE6+Vi7sdDFLizgC039+M9nzgaxlJE2eVErez26yAPynPD2
         faPlDXggc50jMVEPay92/OIDaYrGdkJznFZTnhctQtPYBugV3k3fdkjUyr631zHZgtpu
         qNLJoQe+3AZ7DblY78mqMznelkiM5H/GqUnvZOOXXxzkYUTGhILpmxvF5x7dqiQBIU7K
         lMiM3COYeQwinGrl1gSOhra6rEH2uUvU1CviPNaK7/1VYGElSXXu4Rj+G/vvOP9IPQmG
         at/wlRJwsPivl8kamJLixPtY/9xmBvngnpeqkoF+cQE92yw46U0FYpi1oNgVarIhtrZl
         YMAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=MEWUej3cqH4ZzxDdwscCThrt0Mb/9nphjpG9zCZhYFU=;
        b=rxdGRcdXaxWiv0m+L04ee70RGp4RVuCzdjg1H+NfYZSHgss/jhVtIfmALu1DEOJrzj
         qu3RVS4i35+jwQ5eYceQUTFQMojIXdSQpexTIwAaD8rT9Pohns+sBmNF0yYHwR6o9Bjl
         QReAH2AXcXHfOETZCAxxKEUK69qCLLjnx/0k+7Ltl5A9jH4tkc0B4I/IL3t2RsjsbXcP
         2u0glnScf+FgbA7VUvaDgIHw1B9gI7VaoSwuhfjkScTgmL6OjaeGsqA4s569HZ4Qy56P
         FyyidhyK8u4ILqbtvalxdn/hXbHfw6oviC1Ab5IpK2PR4UxlAl8XWH4wDjrv0fJRj0Ix
         oqxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.183.200 as permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net. [217.70.183.200])
        by gmr-mx.google.com with ESMTPS id x5si177474wmk.1.2020.01.14.09.07.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 Jan 2020 09:07:48 -0800 (PST)
Received-SPF: pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.183.200 as permitted sender) client-ip=217.70.183.200;
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
	(Authenticated sender: miquel.raynal@bootlin.com)
	by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 7EDB420013;
	Tue, 14 Jan 2020 17:07:46 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Nathan Chancellor <natechancellor@gmail.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
	Richard Weinberger <richard@nod.at>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mtd@lists.infradead.org
Subject: Re: [PATCH v3] mtd: onenand_base: Adjust indentation in onenand_read_ops_nolock
Date: Tue, 14 Jan 2020 18:07:27 +0100
Message-Id: <20200114170727.2044-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191209214422.53661-1-natechancellor@gmail.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 9ec8046363ac95bd10c1f96865f139c0e76902fd
X-Original-Sender: miquel.raynal@bootlin.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of miquel.raynal@bootlin.com designates 217.70.183.200 as
 permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com
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

On Mon, 2019-12-09 at 21:44:23 UTC, Nathan Chancellor wrote:
> Clang warns:
> 
> ../drivers/mtd/nand/onenand/onenand_base.c:1269:3: warning: misleading
> indentation; statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>         while (!ret) {
>         ^
> ../drivers/mtd/nand/onenand/onenand_base.c:1266:2: note: previous
> statement is here
>         if (column + thislen > writesize)
>         ^
> 1 warning generated.
> 
> This warning occurs because there is a space before the tab of the while
> loop. There are spaces at the beginning of a lot of the lines in this
> block, remove them so that the indentation is consistent with the Linux
> kernel coding style and clang no longer warns.
> 
> Fixes: a8de85d55700 ("[MTD] OneNAND: Implement read-while-load")
> Link: https://github.com/ClangBuiltLinux/linux/issues/794
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200114170727.2044-1-miquel.raynal%40bootlin.com.
