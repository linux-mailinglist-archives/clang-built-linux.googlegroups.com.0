Return-Path: <clang-built-linux+bncBCFPF2XH6UDBBPX3XDUQKGQE5MHRQNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E876B0C7
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 23:12:30 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id x2sf11052884wru.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 14:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DoCb6Qtcwa/yCH4Q0yfAPki0kLz2NKxCSLycEvZIAn4=;
        b=G88AaQW6PZsjdTGqIRigexFJtzn0WIuQ9gXvuLzdM6P4Vs8l0Xt16A+CFR0CxjXaDM
         GO6ViemkLfDUPA/ComHm2yjenXttR3mGNf3qwboTGsToF6wghP9DHrY6twuQaH8ERSu+
         1PtNdmhbW1mvMO0+lv9zYh9wTDBcQAwXTgnfHb+2vz+FFU2sIDnhSieVwHnfLY0feUgR
         D2KXO4u/MtqoRUvoqI4/fgxTNiWoQBJzQ5/xdvEWGmr69i7AG0oO/Ma0hjooOpZ4Vp97
         595f0MP8t15Fk6qEpxbN/fwlmlkFPBgISqkPiYg+GF8rnDsgL8lZ7lWk5csok4lEHpQC
         Ww8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DoCb6Qtcwa/yCH4Q0yfAPki0kLz2NKxCSLycEvZIAn4=;
        b=fGOv+nWBE6kGhjNKFuIirUZ/tkk57e/bGCR07UhHLPWM7hk4UA2NV7bCcKE5Z+wr2v
         sYPl9uH54z+qMmYS9wuDIt/FooMC/xHnZNPsQPfunBZ5WHSUtNaJ8gclQ3d9j1E0AUza
         uClXIV/1gf2syV7hLsKHQI1wxb1zMGTC5VCW2JxmM6s7S9Gji5PUcW5JT8CsJ0WHw+46
         RUqM9LbJC8vhDQvYhpwhUrLKu/ajovS95kHEe3ooZ4EZO2XxM8OGQYgNvEEONk8N2aoK
         5knDgZOQXvT4QRpaVhxzHeO1SCyQQejbKFxsGG5tZaphdgDS3+Ex1wm/sLJsFixhrqMV
         5wdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUyaVJSmMsi8lTAQJKazQmjVjzL62zq1Ah9ZKU71JzmSA/QCs55
	KNEJ3nbujEiUrhNh5Yk89/s=
X-Google-Smtp-Source: APXvYqwxirJm4be5AAcIJdzB+NIkyCFemXO5qkg3Y5g0JyqyDu4oOeZFHSsQb9d7+D/BQwiCEWTqKA==
X-Received: by 2002:a7b:c0d0:: with SMTP id s16mr888978wmh.141.1563311550670;
        Tue, 16 Jul 2019 14:12:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a557:: with SMTP id o84ls8498635wme.3.gmail; Tue, 16 Jul
 2019 14:12:30 -0700 (PDT)
X-Received: by 2002:a1c:5f87:: with SMTP id t129mr34020434wmb.150.1563311550133;
        Tue, 16 Jul 2019 14:12:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563311550; cv=none;
        d=google.com; s=arc-20160816;
        b=i4MD7IEpTbl7UYtVKZOFdCKGTaB8zC2RDWU1fA9+BZibULdnS1YtdcjvXqA5vPdFGQ
         3y9WfnEtbOKsqeFvjcInwDUM6Gl+gHSNw37MwArMNBxEpDkwkzfbhia7HP4fdgF4KMdm
         xtEEBkkkpEOJeQdnaCCqLjJXKsZq+eO0SGVXHAhX7ixS/7VXZdUQJsoPsvHKYJQ7gGOz
         SpgFqjHmR7DnOEfpPFV+T/eyXNQGUuJO+EhV4vjPx0Nzu/dXm3vhVFz6akk67u4id5CI
         87d6tLEUxNYay6h0o9RNUauG6b9NmnHpLZxpsxXsZtSHbpJVSrYwE9heDC0ryW7XNAHp
         qoFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=DoCb6Qtcwa/yCH4Q0yfAPki0kLz2NKxCSLycEvZIAn4=;
        b=oFKE/Oe9rKKI58bS96+/A2HJ2b/pAArwAa44HH043830OP2R0MrwNrH4m9nV8V98E5
         NnWBdKaArRWqSFTbm6B4jpQcyl9PXr2Zdy78Aza6rKuH54N1DwUCErUrL6fr593NgkVi
         ll3J1kGW5sTP1QmJYmIvSA2fkSe+wAy09Jv4BhqPnmaJxNHvOnaMg8ygpwY5fT0yiQpe
         OxEpyc2E39gIGXQUF090hDRBv0vo3ESnsZdkdO9ITtGGj+M6MCi+FB6VUliDhyQg67d4
         xD7jngegWbvLNcdYpAfpvkqZd0Ujzl7XcefrZ5dihII7ZrXf+pKIvKLzzdcR77wjWLUB
         A07A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id q14si1157451wmc.1.2019.07.16.14.12.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jul 2019 14:12:29 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 6EE941264F01A;
	Tue, 16 Jul 2019 14:12:27 -0700 (PDT)
Date: Tue, 16 Jul 2019 14:12:24 -0700 (PDT)
Message-Id: <20190716.141224.1393775814190631111.davem@davemloft.net>
To: cai@lca.pw
Cc: willemb@google.com, joe@perches.com,
 clang-built-linux@googlegroups.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH net v2] skbuff: fix compilation warnings in skb_dump()
From: David Miller <davem@davemloft.net>
In-Reply-To: <1563291785-6545-1-git-send-email-cai@lca.pw>
References: <1563291785-6545-1-git-send-email-cai@lca.pw>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Tue, 16 Jul 2019 14:12:27 -0700 (PDT)
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

From: Qian Cai <cai@lca.pw>
Date: Tue, 16 Jul 2019 11:43:05 -0400

> The commit 6413139dfc64 ("skbuff: increase verbosity when dumping skb
> data") introduced a few compilation warnings.
> 
> net/core/skbuff.c:766:32: warning: format specifies type 'unsigned
> short' but the argument has type 'unsigned int' [-Wformat]
>                        level, sk->sk_family, sk->sk_type,
> sk->sk_protocol);
>                                              ^~~~~~~~~~~
> net/core/skbuff.c:766:45: warning: format specifies type 'unsigned
> short' but the argument has type 'unsigned int' [-Wformat]
>                        level, sk->sk_family, sk->sk_type,
> sk->sk_protocol);
> ^~~~~~~~~~~~~~~
> 
> Fix them by using the proper types.
> 
> Fixes: 6413139dfc64 ("skbuff: increase verbosity when dumping skb data")
> Signed-off-by: Qian Cai <cai@lca.pw>

Applied, thank you.
