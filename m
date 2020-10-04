Return-Path: <clang-built-linux+bncBDCIDJ4RTAOBBZ4P5H5QKGQE6EOOFNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B162282DF1
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 00:08:40 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id h18sf905163ljc.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Oct 2020 15:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7FHqV7V7LsEtt10Wj/r0Oy2VMragiCD3M6PF0WQcdlQ=;
        b=cOzeBixDqmVym7TLevaHUVu0RiWbNlViU+sDbGyhiIdum5jK2b/DFGii1Wf72BF52F
         edMYnXzBkGD1Xukhc8vgZmp4t1VHUS2ctiEsD0oWXP23q+RD7WSWumSQ/a62IWr+M1CZ
         YjHXIMSLicFtsCOwzE/eDH8YZ/+Mn5qha9VqGP17Fk172mja6/m/A2CNxs5BJZOGdQCt
         hsUmgTksINfK9ybEphrAac7Is0G434mh1ReYEHpGeJocHMyz413llZfZzdNouSR5ZlCd
         jffNbnI2q9IYcNWxx0U56Dv9ZerWFg6vJNENATg9PZ4SGPRQs5TaruGtdBBCVnmAbUT9
         rXyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7FHqV7V7LsEtt10Wj/r0Oy2VMragiCD3M6PF0WQcdlQ=;
        b=WI+OrM32oA6UshGT5dLsqvPAcFGdMcvG2OZ5xQq9rtNU0mukT9hK4oRHK2e7VHdyCi
         lVrlCtyBCuK/2deXc08b+w47BwrsSkBVTryWs2To4C+PO4vAt34vDzSiF99bl+Lgd3I4
         4jiYE2xlCT+yfe2alLT2ZN9BeptKSQWFNG52dHeJiE0IWsoiaEdTYyNMg+r/mtE7FYO2
         NSj3Y4ueuY1PJj5rIjjiL3t2d2L1Cy0aPg3UW1YQzkCPjgSMAQ4bo64ykP2C+o/cYhDx
         zTiaDIFQk55x6hTLXEHcQhQUeIEKu3wqo11dGD/9tEk9itWykzdCh9RUmZLDaKjDTrJX
         Rg9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321Y9vV6S9z3gFkpJEaYvVkkbGKr0dnICJaRAaQPTxHXA0UeRel
	VRcOK/w0ogrQ1Ldh8ib54hY=
X-Google-Smtp-Source: ABdhPJyyrrjpYb2i7clHMB3PBUT9uTBog30dyLB3QL9438xxEHsrOJYPxiwhNP8sYCF/sKOyKlAfgA==
X-Received: by 2002:a19:54:: with SMTP id 81mr5006051lfa.465.1601849319722;
        Sun, 04 Oct 2020 15:08:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:86c8:: with SMTP id n8ls779933ljj.1.gmail; Sun, 04 Oct
 2020 15:08:38 -0700 (PDT)
X-Received: by 2002:a2e:86c7:: with SMTP id n7mr3566054ljj.229.1601849318665;
        Sun, 04 Oct 2020 15:08:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601849318; cv=none;
        d=google.com; s=arc-20160816;
        b=b7WqlmiE+5ijHrTiluQy8WAPVbMLs8SvsLIdq5cFVZIgRVXylwU0HoKtoESYRA9pIj
         Bm/TQyHwDohrpxNyZK1H38Zv132C0ko6yB79EbEfHUxQwr8WQPkNewgyVw0uKohCioc5
         o5eZojByDgSbU+9nlgHmmYsvqzYu7W7kHnf73Hl7sf8o1poQ6qtdf+OiMWBD2b+6Kzn+
         2ASfGtuRcBASEtvyB2Gf5Vs9p+U/ux2Ee9G9MGI42HWN7ApiHYXkzsE7Rs+yLaHLlbn1
         aG7m5kf4biPLwx3Ji9urhxXH0DHSnYoar/e3rKouvkzGsvPrv6qKLnN6E922gfkfK81K
         9VbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=7FHqV7V7LsEtt10Wj/r0Oy2VMragiCD3M6PF0WQcdlQ=;
        b=bl3l507mFj7HxwLIyvTe8gJ1m8TTEMrrfGSKgJGYwlcDQlIRl+lHFxfzK5MGrvrs4J
         sTKlV+8T+t6mZCSOxa5xuZe6A9PZf5KO7UDpfV0eXFDwafXaMRPk5xhJAX6AEcULHx+g
         uKiU/5NU67OqZk/lALmw9gbN7XfeqisK9YM1wq/eaEddTBOzX7/R6wWhA2H7Rwdrq0L2
         94KhQ93KbZRHea4wMzFroI7JTdeuIKg08awH7s3BLnfke0KpRCpXjjIHJRJH2GWRL59l
         pHkPaN3kYg0x96ImE5A8rS+4eJ5dyMl1h4cO5ZmR0koIO0ClrEkNgTc29oMepSqvNv6Y
         ZIKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id y17si264852lfg.2.2020.10.04.15.08.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2020 15:08:37 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id B2A4D12782289;
	Sun,  4 Oct 2020 14:51:44 -0700 (PDT)
Date: Sun, 04 Oct 2020 15:08:31 -0700 (PDT)
Message-Id: <20201004.150831.1030602377050100130.davem@davemloft.net>
To: trix@redhat.com
Cc: thomas.petazzoni@bootlin.com, kuba@kernel.org,
 natechancellor@gmail.com, ndesaulniers@google.com,
 ezequiel.garcia@free-electrons.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] net: mvneta: fix double free of txq->buf
From: David Miller <davem@davemloft.net>
In-Reply-To: <20201003185121.12370-1-trix@redhat.com>
References: <20201003185121.12370-1-trix@redhat.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [2620:137:e000::1:9]); Sun, 04 Oct 2020 14:51:45 -0700 (PDT)
X-Original-Sender: davem@davemloft.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess
 record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
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

From: trix@redhat.com
Date: Sat,  3 Oct 2020 11:51:21 -0700

> From: Tom Rix <trix@redhat.com>
> 
> clang static analysis reports this problem:
> 
> drivers/net/ethernet/marvell/mvneta.c:3465:2: warning:
>   Attempt to free released memory
>         kfree(txq->buf);
>         ^~~~~~~~~~~~~~~
> 
> When mvneta_txq_sw_init() fails to alloc txq->tso_hdrs,
> it frees without poisoning txq->buf.  The error is caught
> in the mvneta_setup_txqs() caller which handles the error
> by cleaning up all of the txqs with a call to
> mvneta_txq_sw_deinit which also frees txq->buf.
> 
> Since mvneta_txq_sw_deinit is a general cleaner, all of the
> partial cleaning in mvneta_txq_sw_deinit()'s error handling
> is not needed.
> 
> Fixes: 2adb719d74f6 ("net: mvneta: Implement software TSO")
> Signed-off-by: Tom Rix <trix@redhat.com>

Applied and queued up for -stable, thank you.
