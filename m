Return-Path: <clang-built-linux+bncBDCIDJ4RTAOBBJVH3P3AKGQEMZBPGQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C2A1EC50B
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Jun 2020 00:33:11 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id 28sf37312lju.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 15:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=syOtuBhiI+AuIIx48zHkdgDbxu9XzDquGSkmkzdsdmY=;
        b=NH0OVebwFIFmD/RF0dwNIdC6xqMOX/QMLTR3Pos5ER29WaGE2RNoRq9HwpkkFpu6QR
         +62JP0WDOvCbEsLYE5omyCKlf6EqFFF8kCuxJDb+ANJcejfAZkpQGVk5TVYxK+diN5IH
         UXqKxR1qwhrfKs+DKMxnVyzf2jAEFZJ8n15NxzmDGv6wibrP/wwn3tBeUeWnz3M/BjVR
         rKrQxQh6ov1NDoimx2gcSYv2bpmHNb7azm+gE5J3a/tZtBg1LHXap4q6Fzh9p3j8zhZW
         +C9aoQf3BuQh/EY8sID+Z0vOaoONayTDZuSrru3og9XIggPP3BALah3L+rBvPOoGmCKD
         sBHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=syOtuBhiI+AuIIx48zHkdgDbxu9XzDquGSkmkzdsdmY=;
        b=NhCou0JdPM4EjSHkAIVojvIaI0+EVHZ1HJLClqqoLOPjsSsEHnaAi11Yf+IgV+WcY1
         oASDP8AevZavj24FIR8OLkto8A0jIhJAX9hdtM+QVOnuwZvhXx7udCXJk2RQ/2/oMYuA
         9gh8yTC3oUImFK3a7J8InLE9KeEi6VvC6Qoc5k16wRrbMetBJU8YvZFSpRF3tMYgjivV
         WGs7BfyQAKzxjkt23tUUbaSsKhv93XV16IuPSw8y+i3tQOSX2950n3GEjxq08RCBCDFU
         TeJrLOxFEnYxfjeYguetX6ivzJ+KUygV5S7oMJIFEqQ99dvdPbrENdHLJ5in7BzO9+5C
         dFYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310p/Sw+JD3RXJvVFG1eJXwYJ5l93Mu5lm3cBUHO26Q8NxgX8TF
	NzDl5m1d0ZtV1wUcLa8X5e8=
X-Google-Smtp-Source: ABdhPJxJfSkByj2EOvvp/tT3TtwYP5IR31ymE6RW2WI7GhUlvZTAZTQz1gLEAHq9Qfoe8cZiQejDgA==
X-Received: by 2002:a2e:9252:: with SMTP id v18mr590846ljg.337.1591137190591;
        Tue, 02 Jun 2020 15:33:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:96d2:: with SMTP id d18ls36879ljj.1.gmail; Tue, 02 Jun
 2020 15:33:09 -0700 (PDT)
X-Received: by 2002:a2e:54c:: with SMTP id 73mr545893ljf.420.1591137189909;
        Tue, 02 Jun 2020 15:33:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591137189; cv=none;
        d=google.com; s=arc-20160816;
        b=kvlwA6SXAMvfS1ZaUiFwhakrLI5hSh70di75P9JQVivpCRO5KibugRFjmnpqdO4JOc
         Tt6zpTblj45Xi3S7jdeV3Zl0MAX25Fr+LPuugrDeJ/shLFsnnGINOJ+J2OTJKGJvl5TL
         uhTBh1uTsunyhVkoPNGcc6NmaPfq3C1NV0E2wOhpV4TFsFw7MOe1AgBLnoDPy0TrLa9/
         WoGSfdrKDtBW9OxC/VpWSkmfCRNIypFo7mrB5qAHpC6TxH3i6Fy4A+0jkkU1rs6LICT/
         V4TZt7GxuEQE+SLiGXwHI4BpDWsnrCyvNnNP0uiFftqoNLl7YFZPKnzCVQDU3rmXRENs
         SjLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=syOtuBhiI+AuIIx48zHkdgDbxu9XzDquGSkmkzdsdmY=;
        b=VNwhYFd8aQ893TtpFu7is/1ICb3yL1t+/eIZZI3nJGvWnD5Er83rDMB9fSD84m/gI4
         CJhyGamCEIQLfacHfvj3JDEg14eTupI9X7cHCaO3nVRRpX+6Fjv+4c6KRj9MO5o7hbX6
         vApWYQYHRKKejrYqQ+xpcbIGHiCGXYJDKY3PQRe14hfSPZGwb+ZJuTpzhFjVjc4J4Ums
         8mdtdG6RSY3vL2ATUqbzaU3kWzDxqx2umDrFR+q3kU8VlnsPK7B9//MGUlQVROBqemu5
         Xemj4xb2d1660gwfnoetIrGhrM8N8DXs/LkvGOrGCW+MaRS1exAd08IT9rEK5KgrNoAo
         YlpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id o23si13065ljg.8.2020.06.02.15.33.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jun 2020 15:33:09 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:477:9e51:a893:b0fe:602a])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 9910B1277CEB0;
	Tue,  2 Jun 2020 15:33:06 -0700 (PDT)
Date: Tue, 02 Jun 2020 15:33:05 -0700 (PDT)
Message-Id: <20200602.153305.1816058302721883296.davem@davemloft.net>
To: leon@kernel.org
Cc: kuba@kernel.org, leonro@mellanox.com,
 clang-built-linux@googlegroups.com, linux-rdma@vger.kernel.org,
 natechancellor@gmail.com, netdev@vger.kernel.org, saeedm@mellanox.com,
 vuhuong@mellanox.com
Subject: Re: [PATCH net] net/mlx5: Don't fail driver on failure to create
 debugfs
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200602122837.161519-1-leon@kernel.org>
References: <20200602122837.161519-1-leon@kernel.org>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Tue, 02 Jun 2020 15:33:07 -0700 (PDT)
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


Saeed, please pick this up.
