Return-Path: <clang-built-linux+bncBCFPF2XH6UDBB4VGUPUQKGQEPQVNBMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C12467524
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 20:37:38 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id y15sf8564043edu.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 11:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=529kpg03TgdYcKsQRDpCpu3YntsEDFy4z5iqgG7p0Po=;
        b=RQU80OnRcs39/fqi8P+rAdCz7ZA4ODQDcd83b+lwe8CTaEouh/gABdpEXu60LgLqHK
         uZk3eIRPX/P+NhozNiR/vDxbXQPrGsHOoo2U1ROHYye8eAMfnnvjBDS/K4AmYbO3u1e8
         xpsScIagEZjfpQAp2/5ziBHmdlHMhehmrXuSbk4rnTAFLvoyUvKAXrt2QflSXaDR8lfF
         HK9JkaYJvlm/QT6mLnh7wNsS7FEsTHrKejhkaWMtu+gkRuEnBGbMSREoqKitFl+b55Xd
         z/OszRPLSoDMcVBUWJC6S/coTZzmEsOxdhZaqImCEJl7OlMJILIdosfsXDhKUT8eSS1/
         1/LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=529kpg03TgdYcKsQRDpCpu3YntsEDFy4z5iqgG7p0Po=;
        b=sYpzZhYCO7TFsFhYcDroKtFWwTgNcmgw2ZaYnAUZ6lu8UPKrqBnW2174BqthvMX5oE
         mvHncssZwF7Mi3oKkS9fse7P3NKR4/SbntyqHSZTnHV5Cf2dKemYWBDLZyuSTaYG4Ap+
         T6bsHZ2GJ8ZXLO+P0d7rNb1SRQE5ZO1jAUyVxEIPBMW43QnL5ux7J7JDdMEHnwxoheAq
         e3XKgcsMoQQmLffufkdOVutITfuxHtkMYHm4DbCvvkwy2L2CSqw/k6/a4N2JpF1uO59X
         aEaaPNEcjUQOXZZa9db2xDXXTRkZvTX0U59AjmPBkheIaXeC4dunS5lZQLyxjoX5pRWp
         v3TA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXWzigVah4RZLFiEHtnZPzgeBinEmcH13YyJ15ByGVNKogz0X/1
	hHlV5Ws/mYoKAcBZ/Xdievs=
X-Google-Smtp-Source: APXvYqznUwGfgirawMtLbTqNce1WHpKWON0WebnbqkmHbSeLbMOuU/WtoqphXOY13MLc5HWdFd/sAQ==
X-Received: by 2002:a05:6402:782:: with SMTP id d2mr10915496edy.80.1562956658453;
        Fri, 12 Jul 2019 11:37:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:942d:: with SMTP id p42ls2544097eda.1.gmail; Fri, 12 Jul
 2019 11:37:37 -0700 (PDT)
X-Received: by 2002:aa7:ca54:: with SMTP id j20mr10877476edt.50.1562956657928;
        Fri, 12 Jul 2019 11:37:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562956657; cv=none;
        d=google.com; s=arc-20160816;
        b=g45EZFUZKBz18Js6HXzsOLHzCkl/Ep2kyqMMuu6/9RCTMy1XDPHbZdqniMrqNGKwnK
         Tc4jMEWZAKJqkHdTU7Q5YDOcCca7LQS7PWhi2mRgQsXeypCf3ilWhvJ3RVYMozrCr7tU
         COxZBMegemKuBmEp7baeU5dwLsa7XVmggZDHX5IWaEKNq+G7DhCbiRNNcgW/2GfPGsDO
         tbxQjdUytgSfPeIHXdbisVWLcs4n0ehQaOXPzQpPIyG76PnA/zEpp/IQmG7iO3LtFfjG
         VzTm/AixJo/14i/Js65xLvxpBftXB37wcTSMcwCh6l8pDUj8SSgkHH4sDFQ7dGiT5Dg8
         tJ3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=529kpg03TgdYcKsQRDpCpu3YntsEDFy4z5iqgG7p0Po=;
        b=D8B9lh5c77YgIx+CLEh5lcyL9ng3Vkoi8RbFKD5ob+lZxYjay5aAdhveMjmV8jcl/j
         Sap/dAC06j0SrVQKDU77Zgz0a8yQWWjBcmhWXdE2+7jbo5UmUG73sNUotHU/fXDwGtmg
         cKSnSdqE9pW/8d/tcnPzW51y39feLI8ElMzQjuLtIDgl3q5sxz/Y1xpBPkgLfu8D/aJk
         0xcVu2zrGs9C4Rw8ihkCildmu+j/6n2OGaoB2i0eQS6BAFDUQdxXJuOcvwBxKQAiMn0A
         LNZXfwKhkMDVCUuhfMik3a54RZg2dBxU99u20OcQvtJA8vNCmw0HwniuR1KOBKQs9+eQ
         3zVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id a41si565925edc.5.2019.07.12.11.37.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 11:37:37 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 758F114DE6032;
	Fri, 12 Jul 2019 11:37:33 -0700 (PDT)
Date: Fri, 12 Jul 2019 11:37:32 -0700 (PDT)
Message-Id: <20190712.113732.1943040089721373555.davem@davemloft.net>
To: natechancellor@gmail.com
Cc: saeedm@mellanox.com, leon@kernel.org, borisp@mellanox.com,
 netdev@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 ndesaulniers@google.com
Subject: Re: [PATCH net-next v3] net/mlx5e: Convert single case statement
 switch statements into if statements
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190710060614.6155-1-natechancellor@gmail.com>
References: <20190710044748.3924-1-natechancellor@gmail.com>
	<20190710060614.6155-1-natechancellor@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Fri, 12 Jul 2019 11:37:33 -0700 (PDT)
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
Date: Tue,  9 Jul 2019 23:06:15 -0700

> During the review of commit 1ff2f0fa450e ("net/mlx5e: Return in default
> case statement in tx_post_resync_params"), Leon and Nick pointed out
> that the switch statements can be converted to single if statements
> that return early so that the code is easier to follow.
> 
> Suggested-by: Leon Romanovsky <leon@kernel.org>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied, thanks for following up Nathan.
