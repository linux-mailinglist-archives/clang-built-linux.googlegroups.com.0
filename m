Return-Path: <clang-built-linux+bncBDCIDJ4RTAOBBX4GU72QKGQEGL4JLAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2FF1BE5E3
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 20:11:44 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id g5sf1094359lfh.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 11:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j99qpci3wH57ewPDBlRlzSpk/ij8FCNH+YgdC27iTnU=;
        b=pnOOc9DAx8j6VnKGnraklKIKhFi0QvSHukR3uPtjNd+mwWGlZN/W5lxCAVGk4QWB1x
         uXIa1sZOZPjCd8j6NqjO4v7VmVjuDN6NdHcvorid/Eoeu5JGMhV/LsbHsKZy3aQMWzDv
         ZlKhT11U+up5ITB3wn+zlTSS8fAhsfesdsOsQPCQuI6s04as+A4A/J2//vdv1MQAiiFY
         +mNyteD2KyMZt+1PqYTDIXKOWWYIOZGk0JZo6j0vkxd1XqksyCZMiG+xDizqXtCr4zcM
         6KFWt1LDW3nzpEcMe5Vyt+1chrVbL3xG/u88JHjJoLyX5zqS68y1udtxlIVcnLXY4EFO
         f0Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=j99qpci3wH57ewPDBlRlzSpk/ij8FCNH+YgdC27iTnU=;
        b=HaNJMpNHY6i/3PVU50MPaZnm2ta7YpFYl5kgni0fl/88T4/c2l4T860FrHviQHjScL
         0R5GVHFALFVYJp0PfTIRoavErMUVZ01ZiVh9Z4catDbP/Rv3h3Sy9MxL5atGe9AgMi8G
         RM+vpmf6tj+4rmGdQOPJbs9nx1+IDTMKfI57XFvhydRavQu+ZtakuJPWJgbVlffp6aSL
         xNcm6dGIrQx/ypaaeseFo0NHZoy7MXxdZtKDvR3VwbEl9C928LGa0UxaNITZvAAOe44t
         d28W6Z8HjIqzsE+JZPcedw9D5nQ9iSd3Bxld+3h1VDRYgbejU+J1h5I4YP6EZWorM1of
         FQZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubEZnzVWdgoWEm3tL1ph0Kzs4Ezm/2xJ9DoDracKqmFPpdpEyS/
	2SZXjAaDJgYsRWBI8C/83p4=
X-Google-Smtp-Source: APiQypKsUlBV9apQ4lG1VqLMxhMf0KhILYc3m4TasF4j62iVtZvuZ6j5/rSmCgM/OcH/i7Sd41mhBw==
X-Received: by 2002:ac2:43a8:: with SMTP id t8mr6049270lfl.48.1588183903923;
        Wed, 29 Apr 2020 11:11:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9054:: with SMTP id n20ls7939346ljg.4.gmail; Wed, 29 Apr
 2020 11:11:43 -0700 (PDT)
X-Received: by 2002:a2e:9a54:: with SMTP id k20mr20715785ljj.265.1588183903134;
        Wed, 29 Apr 2020 11:11:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588183903; cv=none;
        d=google.com; s=arc-20160816;
        b=q/xOYETysMRC5aeeNIU7k4HBThsOe7aCvRu3xGUVdjeI8AKLclTfzRZBCUK48wUIh+
         bD+kbWm0kPwe89v4nFbTajhzoLO1+P3AHruRo/hX5UKrf3nDwcfqaQh9J+w/QxHz5eOj
         esg2Cicc6DG3Hb8Hkn6bIpTVzYu0O0jhncIvlFyiTJYY35aTg2/XFhybHV/pPOmrapcT
         8DEQYETH+ZgvfhDndJb5k15TLSaRKzNLv0nrmPelHBUr41HCTabsRq1wrvDtbBInBqZs
         OLWs/ka4eyqNSfaYK56F+74I5vaMxuqoMj4geP/+TIRBlYJj8124sAQOof/t8HEKuPk7
         UnSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=j99qpci3wH57ewPDBlRlzSpk/ij8FCNH+YgdC27iTnU=;
        b=QuyCZf7WvO3LoC7SiYXR2kkHijqKG7zxixkwfeSNGF0yyFKOqsDdjJMVfYu7RxOiHt
         7ZVQlmGghOnNhesI3q84dS0IXxIEgDcIlO+gdyWLVUikdvt/uuX6/q6EVhHnwAu9qc+J
         E5n90eJL4xnWGm7wC5WL/Tnzo1w39OMve//G9T6AFzwvNQEmFBgEuoclzIcDNjiVQ2/v
         aUveDvogwQn3/TT1HbSFEhmoqifsJLLkncWpnfdt4xWyz1WkU5MtzLUHuI7/3B6ZXQEG
         crZM4KWFa2sZCXtzbD+4z6iTotDMI2SfHc3QwI/DZICDEaAOTlszv5k8BgGPUUpOdbA/
         OG1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id f25si153862lfc.3.2020.04.29.11.11.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Apr 2020 11:11:42 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id CB3B611F5F61A;
	Wed, 29 Apr 2020 11:11:38 -0700 (PDT)
Date: Wed, 29 Apr 2020 11:11:35 -0700 (PDT)
Message-Id: <20200429.111135.1012491992605250039.davem@davemloft.net>
To: wei.liu@kernel.org
Cc: natechancellor@gmail.com, kys@microsoft.com, haiyangz@microsoft.com,
 sthemmin@microsoft.com, linux-hyperv@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, samitolvanen@google.com
Subject: Re: [PATCH v2] hv_netvsc: Fix netvsc_start_xmit's return type
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200429101055.rdrpchkypbkwxscj@debian>
References: <20200428100828.aslw3pn5nhwtlsnt@liuwe-devbox-debian-v2.j3c5onc20sse1dnehy4noqpfcg.zx.internal.cloudapp.net>
	<20200428175455.2109973-1-natechancellor@gmail.com>
	<20200429101055.rdrpchkypbkwxscj@debian>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Wed, 29 Apr 2020 11:11:39 -0700 (PDT)
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

From: Wei Liu <wei.liu@kernel.org>
Date: Wed, 29 Apr 2020 11:10:55 +0100

> Do you want this to go through net tree? I can submit it via hyperv tree
> if that's preferred.

I'll be taking this, thanks.
