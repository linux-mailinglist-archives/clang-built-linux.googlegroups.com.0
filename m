Return-Path: <clang-built-linux+bncBC6JD5V23ENBB6HI3L6AKGQEJA6HOGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 36814298C23
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 12:35:22 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id q4sf5996878plr.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 04:35:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603712120; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Ze5N8hzI3GCKHIV5FcbN/6MQ7jMacLf1eMM1AJCwRLkNve7gEpaPM7d11owrRZkZo
         tXfUrAgThCrVNp8fmbmwk7boC34xJXQ0M7RC1RP0+Badlq3R3nJEjYKG0+j91BPqrqqO
         iHrjcRKQ3O8Ci+iWQ0Hd4zz7VB2CqotCRxvYzGvT8RpHwMrNhv+gWs0Lk6C+ODBO/koP
         faAxeIkB2ptv2xiQ2yLZs521p9Gd4ZO41RfqIeYC5yRYffqFI+ooTW8WsD02mQJ7/R6p
         Dwk0+k7nQq+A/iTx08Whmg7E0E+nvTdek+bLCNjdx0c9TQp+ZMaoe0O82sfX03lHr3A+
         JmWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=9akfp52j99kDSTn7q4Nk8uAZFYfy5BkCnEjlwGIDb9Y=;
        b=a6RltpMP9spnlIffH3RdkxQ4VIw0xKpspx8HNoDvgItYqk4hRLW33hiqmhCh4QaSDP
         O9tnpsx+WIgkAipwirYczBjVUXzC5BWoLzRACRnbY2b566TqXWkoX7sMRqsrxc0WmNd/
         pFqevjqspixTJ3Zq4XHvkNzlpcASSQeqEE8tFBexyD9K9w6hVJZEUHBOj4kK55r6bOQ8
         d5NqOFoknba++jLkxgk1Cx1ywVlYVD/IFjh3HbbZ/KoAbd1KIB8ouqZQjGThC9osER8S
         PoadK4OtsZtoZP6dBTun2LevREKO/U7Gl/3knBfHYqJN/rs1sKFg9hYK0RJ0b0DZUZ/c
         8kjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=STLnoTw5;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9akfp52j99kDSTn7q4Nk8uAZFYfy5BkCnEjlwGIDb9Y=;
        b=HUbkbpfzfHL9rjAxaiuhqMMG0J+HCe2743R6Uro+iw1THtTza7hxgTevCqOz++LKN3
         s1DdJU/S7rUbsGXIXDYfBgsoXi6bfB28gfgD9CjlhzyeTikKnc6Ruui367PAy2D2JT4F
         N7MyRZZpHCDzKE/21eEjainUeHZtVnryNdiVadoM8GZVa2g6UC4y7G4paFOzV1IWsRoJ
         DQBnVS6yRhLz11y2VlukEd0C1Xu5DJtpg3It/r8uW4NGwjbGHSMXcrijHySk9/P286Wm
         Tk8XKj2gAXeblXvSZb8O0cYDesMcLuDYR/BA5gKVTbkGecpfTpTDOJXmaQ59PKj5t5Xa
         qPrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9akfp52j99kDSTn7q4Nk8uAZFYfy5BkCnEjlwGIDb9Y=;
        b=hv6tOsu9jm6oaTbXxxGTMsh+5I7vjU8oymBVSCR+rTrWe0iHR/Z9XOyX5zF8ITfjYq
         oBog2sYAJeNlDYEDp0yZ/gi1VnS6Vj6TlqHc9pjEE/CojKLQelGnLC/vVx95mJl87PDh
         TxSIj+A5J7ws7zR4ELNue4Z8Eh8XZWJLMfEBRBKK/nlU299CFtJ2LlS46dokY+vgFo9C
         FTccCrslXbj1kUY88e73snKbZdZc66CArVacQ7yw0d+cSLhtRk6OhJ9lEoSzuXNoPPMX
         IgDEuZ+5ynzt8OsVH35ebGJB+Y9xZF28UzdgCEFaYpp8fcLo620FEfzAOF5tOjEG7gE2
         McCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300InDNSM0fixzori/TaZ7a9IW81CO0u9KqFu1IK+v3dOiIOgpJ
	T/kTBETazpCQrIwhHmdXBpc=
X-Google-Smtp-Source: ABdhPJx+iNIH+c5xMg1FjsEFM/8DaRhktW+WTXoWrTpfZWmw4ooF+7UwYSIfruZf0ZPwi9/AYFMVrw==
X-Received: by 2002:a17:90a:7784:: with SMTP id v4mr20405794pjk.60.1603712120681;
        Mon, 26 Oct 2020 04:35:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:39c8:: with SMTP id k8ls4471754pjf.0.gmail; Mon, 26
 Oct 2020 04:35:20 -0700 (PDT)
X-Received: by 2002:a17:90a:7e4:: with SMTP id m91mr20374598pjm.47.1603712120154;
        Mon, 26 Oct 2020 04:35:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603712120; cv=none;
        d=google.com; s=arc-20160816;
        b=AJtK5RFnnrmYtzCo0CCSbRsr9BVz7VpZjR4HyKtTL897MwyLDueuQDGB9e1cEdRZD/
         0nuK4xBDmaNKf38COLrTYa/sDAf6TqDLEdLr/tYTjc1OakHIrvQirMDmooSK9HITGprT
         x9n9OSTETD+gDxnv4Hd7lEli038MOr2qHpbpJJG1gMJJheejG9GiPHNtf8EgatONdsUf
         00ewlj5/vMPgnouWf2Df1ig6UHY7+YOkmfCvVV6uyvy6zdadi7X23a3ks2mbG8PK7aop
         fD9tGmVSYbEKv3IHKFimClBKqL6jO3AertEcDvGTq3o5L7nHaTc6evaha1IP0KEgnWRf
         bfRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IwJktgqC3KZGjSEQ9g1YD1By//G4U8QMzbEhlGauYEM=;
        b=JwV4tEYBRjCATC6o5k3kzOvsywD27lZNJGtfAf0JScco7iFMlaF2i6o5Jx+aXhoU9T
         Lanxu+RzsBhdNlLIYvbBRNJ2xXy6E41BrYe1abEp7J537L2CHq9J7Mh8XjAQWmebwo/N
         Hhvu7zjaQLcnlI0DFbGJDKucaydIeNSjoU6XO62Bx+5log2G4HTxHtyVYrMrQi6Oqk5f
         h1ZOSy9VwcSkt4zeNcr+OuUQ79iTk8TNCuqiRdQCiKdp4cB8ZqFYXGojJP4CI/FJ8CKZ
         kXf3BcQbf/7rHJUEmAgn81wid6JvmagiGmmVRlkhxdWhUl3lT6/dPHux5XetBBFf1K5A
         ovPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=STLnoTw5;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j63si526793pfd.1.2020.10.26.04.35.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 04:35:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8E27E22277
	for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 11:35:19 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id c15so12926294ejs.0
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 04:35:19 -0700 (PDT)
X-Received: by 2002:a17:906:8401:: with SMTP id n1mr14780778ejx.215.1603712118127;
 Mon, 26 Oct 2020 04:35:18 -0700 (PDT)
MIME-Version: 1.0
References: <202010261451.N9cm8bod-lkp@intel.com>
In-Reply-To: <202010261451.N9cm8bod-lkp@intel.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 26 Oct 2020 12:35:05 +0100
X-Gmail-Original-Message-ID: <CAJKOXPdj2R3dQh5ZBALP_PCy5FTBVdYOtuU+dF50NAeRsDp1cw@mail.gmail.com>
Message-ID: <CAJKOXPdj2R3dQh5ZBALP_PCy5FTBVdYOtuU+dF50NAeRsDp1cw@mail.gmail.com>
Subject: Re: drivers/mmc/host/sunxi-mmc.c:1181:34: warning: unused variable 'sunxi_mmc_of_match'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=STLnoTw5;       spf=pass
 (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=krzk@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, 26 Oct 2020 at 07:01, kernel test robot <lkp@intel.com> wrote:
>
> Hi Krzysztof,
>
> First bad commit (maybe != root cause):
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   3650b228f83adda7e5ee532e2b90429c03f7b9ec
> commit: 54d8454436a205682bd89d66d8d9eedbc8452d15 mmc: host: Enable compile testing of multiple drivers
> date:   7 weeks ago
> config: x86_64-randconfig-r036-20201026 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project f2c25c70791de95d2466e09b5b58fc37f6ccd7a4)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=54d8454436a205682bd89d66d8d9eedbc8452d15
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 54d8454436a205682bd89d66d8d9eedbc8452d15
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/mmc/host/sunxi-mmc.c:1181:34: warning: unused variable 'sunxi_mmc_of_match' [-Wunused-const-variable]
>    static const struct of_device_id sunxi_mmc_of_match[] = {

I'll send a fix.

Best regards,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJKOXPdj2R3dQh5ZBALP_PCy5FTBVdYOtuU%2BdF50NAeRsDp1cw%40mail.gmail.com.
