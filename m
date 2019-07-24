Return-Path: <clang-built-linux+bncBCFPF2XH6UDBBRF74PUQKGQEZ66KQJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id F180D741A1
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 00:46:28 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id b1sf23043303wru.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 15:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hJ0/AnZw+v13tQu+vwh1xd2wuPxlyY0J68QGX/1Hgds=;
        b=sdVgC3DWn9fzdDyQXlFvdSgcQ9d4i6eXmyuTojF/6alxHux/kNex2dbopkUNmknC42
         QVqOP9qxR3WI/Z/6x/3jMI7Ekljoo8chpR5uxwOl4f1VtpoXOFRzHxlhKXpmPRvUhh9D
         0ESTmOOcPrE+O+kqRQX9r8ngnxHI/VP9ktXYS6VDO3+diNXfYyQXFF7LCXofpXBdZ+13
         ZGvOOV61iq0162qxoiXUxrAVAxiO4HN+d+gqGKhdAy7daZ38dD2lZ47ZcUQHrElE1Dm/
         4awdi28km22ReLnNQ864di1K0LgD7V+uncPfOztbsllCzOJgl6OtyvzyRUuf+AaKbQ0m
         1KUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hJ0/AnZw+v13tQu+vwh1xd2wuPxlyY0J68QGX/1Hgds=;
        b=l2nrcChJQAGkr74wo78nM7eg3gSUopbgOdWzWe2eGRbczT2+O0kH+avmKrLkzFuIlW
         mmXNMgPVDtlGYWFaENw3LJqRvGmUSrzbH6CHlxE331mBJ1t8O4oQFOsAEhLEMj1SoTgx
         u090Mt01DyTBq2/HieP/Uv0/2R7QiZfKbuavM6x0FdUVYChCdnz2N1EZptdDD3pUyXEs
         G8ArOpNvy+M6jzf+ZMtjlqdntej/AlMbnJUmDb1uDJK9GtiNFUMo0Pkvb17N2TVl3+DV
         gsFfQ44Lpu8wLJkhI/T0a/F5bswazakQx1e/68aUk7DPmirEhmOWp9iaYqBLtK1ooC2y
         7TdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWZ3XrB3rqFJt+MkjNCqB3QQWvtuKrYWR2mQKfFAg9UjAHDhLiS
	WzWdCZMDL5ocEg8lLbOPSPk=
X-Google-Smtp-Source: APXvYqyFmkt+wYKvWAE11+PPLpY+Cyor7G9cRdyt8ZOdk2k0PY2uctsEGHZ3iZrbjmJj+R0U5WeCvw==
X-Received: by 2002:a1c:a514:: with SMTP id o20mr78230132wme.149.1564008388695;
        Wed, 24 Jul 2019 15:46:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a745:: with SMTP id e5ls14262310wrd.5.gmail; Wed, 24 Jul
 2019 15:46:28 -0700 (PDT)
X-Received: by 2002:adf:e2c1:: with SMTP id d1mr94269933wrj.283.1564008388191;
        Wed, 24 Jul 2019 15:46:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564008388; cv=none;
        d=google.com; s=arc-20160816;
        b=TKL8xfEo3v99nq5RVrzPxoq1DRylmrm+RhoRwmqlB7ht3M+iR5g0wk200hbXTRCpVH
         ckXGjEVoDZWF7AV1OsO4qifot/Mk1F2IffjU5zKSmQd5XKvznW6bgODbVYz4rWxKltIm
         0bBg088Z/37tZVBc9BcoBpuDuJamXNvxrxNWLot4QjmGXwTIGrTTsd033atAmnIKbSAh
         XwcAQZLR31uIgS7HDMoRHLZWGMF90TyaOBPc1Ant0y9VxAtDdZzwqox35BtgMGaFBKxM
         jbebAqKzhqQ6ZNkQ5EbMEj0PrKqkDglgnzLVMiXuKShwrQf8X9ilzHvAZy4kcNe59iEM
         kzOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=hJ0/AnZw+v13tQu+vwh1xd2wuPxlyY0J68QGX/1Hgds=;
        b=r4GuA1CarizyqXiJDrdA59ZSVUP25/6eM9eLVu36y+UU7DOpEgxpHoAUkQCC9CJl31
         rST43ycj35N9iaScuEWOtAgybNdO7U0usFmVzuucDlmNW6nUdSpasxWelksVCpq2T0pX
         r5XB1Fg5bHWeHD1NuCnrqJg8nxqhdwnalM/aleKvN9h3XtbbuO6TMPcw65x9YxRq763/
         2MhFaA5kVZylBUoVOgdcA8ysJkrNY09/NKeXjsK24yEAMFBACBHRLGTq7YTHesZhhNez
         cFIHMNARdoj6EaolsjQIi42ypHOGpYiRSVi/7+swBvS6G7U4uucxZNz+E2urofs3dYk1
         +Aow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id q14si2331313wmc.1.2019.07.24.15.46.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 15:46:28 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 5FBC11543C8CD;
	Wed, 24 Jul 2019 15:46:26 -0700 (PDT)
Date: Wed, 24 Jul 2019 15:46:25 -0700 (PDT)
Message-Id: <20190724.154625.790572941356692025.davem@davemloft.net>
To: arnd@arndb.de
Cc: aelior@marvell.com, GR-everest-linux-l2@marvell.com,
 Yuval.Mintz@qlogic.com, manishc@marvell.com, michal.kalderon@marvell.com,
 skalluru@marvell.com, denis.bolotin@cavium.com, rverma@marvell.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next] qed: reduce maximum stack frame size
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190722150133.1157096-1-arnd@arndb.de>
References: <20190722150133.1157096-1-arnd@arndb.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Wed, 24 Jul 2019 15:46:26 -0700 (PDT)
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

From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 22 Jul 2019 17:01:23 +0200

> clang warns about an overly large stack frame in one function
> when it decides to inline all __qed_get_vport_*() functions into
> __qed_get_vport_stats():
> 
> drivers/net/ethernet/qlogic/qed/qed_l2.c:1889:13: error: stack frame size of 1128 bytes in function '_qed_get_vport_stats' [-Werror,-Wframe-larger-than=]
> 
> Use a noinline_for_stack annotation to prevent clang from inlining
> these, which keeps the maximum stack usage at around half of that
> in the worst case, similar to what we get with gcc.
> 
> Fixes: 86622ee75312 ("qed: Move statistics to L2 code")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied to net-next.
