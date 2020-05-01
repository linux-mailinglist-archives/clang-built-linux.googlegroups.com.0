Return-Path: <clang-built-linux+bncBDCIDJ4RTAOBBS6DWL2QKGQENVU7NDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF451C2087
	for <lists+clang-built-linux@lfdr.de>; Sat,  2 May 2020 00:25:16 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id h184sf548871wmf.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 May 2020 15:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z2c7wjs/AawL/B4tB/+Dq6jvUjNIqr24W83CLUMZuf4=;
        b=LZ+RMBxXobM1TzN4Ae6ll1IXiBgTzN6E2W2n6fHk9Y9I80ZcL+NIJu8F61Axyq/sTS
         xwY1QBe7ED9bZaL1nYTk+FO+W2tYeyr8h37/V2m6fNHXGO8T9Hg4OAi+tKNVaHj3qu6T
         FoUJh8X96nFhc1cqYtIA52sNvYBrPm1nF2sM275xF919Jg1c8MX6reRv6K9UP4PuOrjZ
         LPbhpFxUtNug3D0/caK19s1YXEOQhOQqjark3DWD5ZLMGox8gkfAp2XUl4FD+l/cYgzf
         X/Thw8Acevipv9bqrhiILEetTduhdsjnM8+La0ZeLF0mfEUkXSB9SeoTbsoenoqjZFv4
         mFUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Z2c7wjs/AawL/B4tB/+Dq6jvUjNIqr24W83CLUMZuf4=;
        b=BWXwgb8Zc45+GVZS6P1SI8n9yK8MjPP+SIuaUFbQIprXw0z5BlRwOU5uKnNSEkTFZf
         IrW9yoGefnSQMsDMJMZLNYiwHQx8oQLiGnuAo78Xi+tjrBMmkNh8al0TCGBCOFtcROH5
         lhv9PFIo9yeRcQfCGiw+OLbKWUSYQVZQAgdu0fjYV8SqALHQW/YuCG0zloJD+PPN1CkX
         3A08Khyy3jp2nYZFHuJ8nwr2gwolguqD0y9nIJ6dH3kZ3RPkLpxZF8cdtVYdTaJNdJZq
         4YoOeiVLrMGxb07NTP/xLFoLIkaKn7I1Q/qyLhGZ5cstHG8QwXJvZ83ofbh0PIY6fU7Z
         F27g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubteJ+tJalpLCDr1tUVGEu8sxWMETdbcxZHRwJbXKXzIaeDoZP9
	QI/p8UIDL1ZtrydKepRAJgM=
X-Google-Smtp-Source: APiQypJKxuIp/vLlOroYbrczyRxliHuOTT98Mjg+439kz+dJUosIr3diP/nlZRSuc88bHdVOZKOBYg==
X-Received: by 2002:a5d:4ecf:: with SMTP id s15mr6784549wrv.226.1588371916078;
        Fri, 01 May 2020 15:25:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:618f:: with SMTP id j15ls9822541wru.3.gmail; Fri, 01 May
 2020 15:25:15 -0700 (PDT)
X-Received: by 2002:adf:b310:: with SMTP id j16mr6695665wrd.95.1588371915545;
        Fri, 01 May 2020 15:25:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588371915; cv=none;
        d=google.com; s=arc-20160816;
        b=1JIBzGI+F3mOd5LB76hfsl4eRDBUvwx4qZZdySWfU72LjOc+ttAFRmJ5WbHb8H0nxo
         lUjJwWNNbWG/P+mSGEImaVAe1joChMNbUyFjBm9MHVOa+6kX/7f/I4W7HhMyKQd0MdNo
         u8znqDmgtHbNQ8Zesug004wB0cHJwRmTCY/guK5R7biQVZq3TsDCLOEBSN7Zfdf5Apma
         giu9Aw9Ab14vLJZS2yxiCpjXKE07unR77j+bYmYE6tV7oKqHwMKs/B95JGQJ8JCFkcGp
         EZpmpjicZsjJCkqihd7MmWopvKEl7BIhAhbJ4LAN6WpG8NwvPFD1WwKXxvjd8lWXpivQ
         OI4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=Z2c7wjs/AawL/B4tB/+Dq6jvUjNIqr24W83CLUMZuf4=;
        b=GCulB6ISHXefywHXRyDlNcX5oAKUbVkl6LsHgzNsRRIYsYNaNeNmMcjVdEtVmhMeIQ
         PfjO1V7FnUsUfn9YiE5Yus+IYznIkWJl3+LkYuqEt8OiXffGwtQmTqtaRX4vEEQMnnoE
         1MTL3roFrwMALQyT2gRzmZrFQHmpxWT5/FC3iM68TyB3CNCdU19Pz7qPs44Axfn/5hz/
         BPii3ZWs6MP10T/bLPuJP7iZWXu3mSmcpYzsEAw5Qz/rz1XSFgai5Th2AwwbwcTdF85N
         1r4XINZLsWrUngtnCMStEE++rZqcxBPOxJQc4v4KspvjFy/z3Nflnu7RQ64RYyQp/uSl
         ie2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id o136si63650wme.0.2020.05.01.15.25.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 May 2020 15:25:15 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 2D7D214F4664B;
	Fri,  1 May 2020 15:25:13 -0700 (PDT)
Date: Fri, 01 May 2020 15:25:12 -0700 (PDT)
Message-Id: <20200501.152512.965649225646550457.davem@davemloft.net>
To: natechancellor@gmail.com
Cc: kys@microsoft.com, haiyangz@microsoft.com, sthemmin@microsoft.com,
 wei.liu@kernel.org, linux-hyperv@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 samitolvanen@google.com
Subject: Re: [PATCH v2] hv_netvsc: Fix netvsc_start_xmit's return type
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200428175455.2109973-1-natechancellor@gmail.com>
References: <20200428100828.aslw3pn5nhwtlsnt@liuwe-devbox-debian-v2.j3c5onc20sse1dnehy4noqpfcg.zx.internal.cloudapp.net>
	<20200428175455.2109973-1-natechancellor@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Fri, 01 May 2020 15:25:13 -0700 (PDT)
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

From: Nathan Chancellor <natechancellor@gmail.com>
Date: Tue, 28 Apr 2020 10:54:56 -0700

> netvsc_start_xmit is used as a callback function for the ndo_start_xmit
> function pointer. ndo_start_xmit's return type is netdev_tx_t but
> netvsc_start_xmit's return type is int.
> 
> This causes a failure with Control Flow Integrity (CFI), which requires
> function pointer prototypes and callback function definitions to match
> exactly. When CFI is in enforcing, the kernel panics. When booting a
> CFI kernel with WSL 2, the VM is immediately terminated because of this.
> 
> The splat when CONFIG_CFI_PERMISSIVE is used:
 ...
> Avoid this by using the right return type for netvsc_start_xmit.
> 
> Fixes: fceaf24a943d8 ("Staging: hv: add the Hyper-V virtual network driver")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1009
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied.
