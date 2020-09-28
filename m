Return-Path: <clang-built-linux+bncBC4MX6WW7QIBB4XUY75QKGQET6S7MQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3531A27B068
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 17:00:03 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id f22sf287154ljh.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 08:00:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601305202; cv=pass;
        d=google.com; s=arc-20160816;
        b=LoVbAQl/sOshLNjQk9QIXBR1tQXe0xpoPi8YNrrilePC2t4zbeZu6isaWTKnK2ewFG
         Ru8WeqGjCx0h0luejHGSel6OAdHMb71skkPXkBOxGjJZAJOFNwsw2WBLrK98Wmwltw3W
         D2Zh8SuU/1RcVHZ+UDTVnAFWIcp2YMG3anZToFSPkv7CwergZUPGoYP9jNG65qJ0fSkG
         cK1qVVjN0ujdcp6PwXhUgCl85yTY7dsvvgVW/wk/pcXUr0aFnfo6CdPZz1uV6Iq/ifOB
         LOlLdT0Noxr7B8jjg5a0QQvLFrjSpBVZhcMN9I0g0T79bEKUiuNMkzrN+DbC5TRNZn0X
         6yaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=23EKho8phSWBQQaH9aWjoyETlBibPJ3FADi5PHmTZSw=;
        b=PDfcT4AUaoM040maossngOUSGiTltSUqatQX/iFaRT+l+NkWY52Fu5zzdG3XYp06Tp
         +tmfY4HLEjCcTWA2bw5E2RLGO2qYfDge74f1+wS5bp/olOO8zvcyQAYC54i3ZwqPNJMz
         UidDXEXj12b27F/e9j2bDSf3LJHfN2L6dY7LiZM8+2gAAVHjsuI5gPPWytUr6ZVvn8qx
         xm2bJC5QZvWeOyT078U4WcepFVgAXBWbgjKOTTT4ynM1fulgcjosoFHGNcQc/w88guRm
         JzjZ83AEmYqzA+hfRXv7wH5XEyOuQVkHMmODTJXek162nRGc1GrUI7j71JyLDxFIHadi
         Nqbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.183.197 as permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=23EKho8phSWBQQaH9aWjoyETlBibPJ3FADi5PHmTZSw=;
        b=L4MC93bfGti7opKP1OAqF8zynVghhpRvyc6pRoW+zPGt0eV+am534lFFNexIdAIw4v
         vDIyQOxvN+JsYPAYIJB6PQEpcEMj5QlZkPzuFXTC8A8uTbsl1XsGbUv7jZMGVm13tB2k
         n0WNXBK5RYpXaQcBEezSeglUv8MHbVCATDMe8vMusNWrHUVakTulhoLfk7+1TPNuFetL
         RyG7qvM2qM1XQto10gLPcGxdsQWH3PeHE25jqJMXD65i0pHRaUcTRdUBOtvLT3n4TPVT
         z6jbxuFPtzZsuuddz7tiWt56as4pcGydnKudXlYtCdUnAuuKAnXAtwkOZ16vWXQhSPjk
         QvWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=23EKho8phSWBQQaH9aWjoyETlBibPJ3FADi5PHmTZSw=;
        b=amt2q/woyCMYhcaLJqXTZEElUFd3I5o4gkbAbDryjyjv5lwuey5+UtPaJujitEq1nL
         3owHp1KIE01zfuQ6cQlxp9hhIjFqSsoNr1kVH0fIy/y0+fAWCKDPcbAcUQ6fCagUkkW9
         77qI8wUJUmpmXNhcWtYmrVCcVMXpmSCj295W0mRFc8EbBJ97qCD4nGh0nSQZfJ6dS8u6
         /oFDqnaLhGUCu+2WJgmIr0BvywzFReBnfvmnihE+R+cJ+JKQUF6lZLQbm2TDwrVjwtL9
         GHOqyDz4Y0MCbPBX/8p6LWJpmikFXLYkDZF1ub53vSVJVrY1nygv6f4W28EXKxuuum1C
         wIHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xmEq9bibzqXAUCpfiMKKuVkiaOj9NQTNanegYmR1q8ZFUlSc2
	1XrdBGER8CkdWfWQdG4cUA8=
X-Google-Smtp-Source: ABdhPJyJWh2dnL/R/eYWMKErBhlOpy9hYHG6dyaGnSBJ00FN5fUnox/FiLcwarVtvEQvXKjkzFiiCA==
X-Received: by 2002:a19:6b07:: with SMTP id d7mr697481lfa.510.1601305202751;
        Mon, 28 Sep 2020 08:00:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c7c8:: with SMTP id x191ls1130603lff.0.gmail; Mon, 28
 Sep 2020 08:00:01 -0700 (PDT)
X-Received: by 2002:a19:78b:: with SMTP id 133mr557494lfh.243.1601305201585;
        Mon, 28 Sep 2020 08:00:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601305201; cv=none;
        d=google.com; s=arc-20160816;
        b=KNGACYIZZ9q8YFsgHsEUFqvEsd6yMQV4bnmY90rwKXH6+vvtkKGm8arGALLFzhNEMh
         RjYOi8QPwsEIOJyo/C+lRThT2TLHZFcTRCRv9HkF2jgTV5H/IdjWu31b3e8gezH5nt6a
         ZUNFW8YrTTfFlO7h83gvjRGtZSupKPgpcdabMqCK6GFsZ6MRcJLD2hs3v9520hcfbtIg
         Ib/73PSfAlbPQJxIH4Dh7zpPQkLwvyh4tEo5Z9BUe9nAOycTx1U+5gpSjAiefxfrsRsM
         iH2oJaU+sIzkmB+ohhn0PLeU0VI5W8hT27VfAS5YgnKsUBTbSQFPdlJSfCwAr1WwaGRz
         DxQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=GZ5RbIZlvhj8XQtbRvQar9PV9S7Cr8Y7Yowsr5TEmN4=;
        b=OdBOru0gErNoV2QQ9KvyCZX3zeBmBIOPtafxubTLBPJmZM5rPiqr/f1kKPRv+d6RWu
         TUJC8y+7kFfe98+3MiCsE/96nCy//Wmt/AdI+Y9Gk1oEkxjdSKpAvyUEgBH/vEHM5pXC
         7zI4cDCmYcVlQGhJKJLIfzMlE457R1rFqPDEwL9hbS4n0xjqTe5DwViBYE4fM1RmoKF5
         EYzO14AykeP7BdQb4cwZ68AljACq/lgs5Ws4MPaeP+4RB6j+NOSNgttvgeFBbP3tvmfN
         JpSIuW5P75jsNT0NlhPMpuy7cw76aUMBgx62HnSrVvpCp7joa5aic3NA7i6VtmEht6aN
         KYkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.183.197 as permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net. [217.70.183.197])
        by gmr-mx.google.com with ESMTPS id x74si30301lff.12.2020.09.28.08.00.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 28 Sep 2020 08:00:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.183.197 as permitted sender) client-ip=217.70.183.197;
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
	(Authenticated sender: miquel.raynal@bootlin.com)
	by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 5DDD91C0004;
	Mon, 28 Sep 2020 14:59:59 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
	Richard Weinberger <richard@nod.at>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mtd@lists.infradead.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] mtd: rawnand: ams-delta: Fix non-OF build warning
Date: Mon, 28 Sep 2020 16:59:57 +0200
Message-Id: <20200928145957.9218-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200919080403.17520-1-jmkrzyszt@gmail.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 57a57f268ec97432fb99df8d8e8957e86b34a9d6
X-Original-Sender: miquel.raynal@bootlin.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of miquel.raynal@bootlin.com designates 217.70.183.197 as
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

On Sat, 2020-09-19 at 08:04:03 UTC, Janusz Krzysztofik wrote:
> Commit 7c2f66a960fc ("mtd: rawnand: ams-delta: Add module device
> tables") introduced an OF module device table but wrapped a reference
> to it with of_match_ptr() which resolves to NULL in non-OF configs.
> That resulted in a clang compiler warning on unused variable in non-OF
> builds.  Fix it.
> 
> drivers/mtd/nand/raw/ams-delta.c:373:34: warning: unused variable 'gpio_nand_of_id_table' [-Wunused-const-variable]
>    static const struct of_device_id gpio_nand_of_id_table[] = {
>                                     ^
>    1 warning generated.
> 
> Fixes: 7c2f66a960fc ("mtd: rawnand: ams-delta: Add module device tables")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Janusz Krzysztofik <jmkrzyszt@gmail.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200928145957.9218-1-miquel.raynal%40bootlin.com.
