Return-Path: <clang-built-linux+bncBDCIDJ4RTAOBBLUTSH5AKGQE3YTN6GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB28250C24
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 01:13:50 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id z25sf180382wmk.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 16:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wvhSIR6sI74mxhT+O4Qx9n2lzpzuCK1cz1oQpYqGpNs=;
        b=ikqHou0vZ7+KxxdAhbE4SA7IBhtPMciBuMCCbGqe1YRYGs+k9Qn3Vsbw/LkqkPGGK/
         MwepscKSbwoU3LIDwzrSYKu6faOSjSOuwZtmQ0t/3FOny2vDcGnmgsbm4qRPTAKwFKnE
         f7Cb+ir5ltOODGZnm9RtnlR+pxpk7ucHPlNmI0v1goTOky6UxK8uaBNadhb842HRBNmk
         I0TPYtrZIBt5sovJs66xB5bj9OR1xn1W7ieiS2ViY6hHslnGxqNO23fqGI86XQ6g2rqs
         IGWHVrVDXZwH/TFcG74ne3O0B8/DBYvGtTZTbyqYjEi/RLzw2HwXAx3NfPGFX3vglVVQ
         p3sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wvhSIR6sI74mxhT+O4Qx9n2lzpzuCK1cz1oQpYqGpNs=;
        b=gPTxtHnAEUVI1jCTDmUXxpqa+piFyjjivPhBs09KEDPClhsAo/AoIKLFmxpAIahUdz
         CR2EbvoNMODjg6zbUczDXCViy891p+yZYy3ootoBlbaRMZdjUgZ3GtF58XAdfITN2+aY
         yQKwxe6iindnRjAzTgyoupGmUZv+8spnVgCKnHijcqOiKi4XWV841J3Z0Go8sjpWdWqV
         LTugqquDOgleAqLBMacH2cp/410IAQPZNS1TfJhN0CO4vK/nb5MtZJd+1XnF6L33IyQl
         rQ2IjUxvMIHV/pcwYjGp3uZl7AbV6HIqYQ1UanfVXGeBwTG38xx4/gIuH3kIMHcsHjLP
         vkKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Iy+wLDZSQ18VGLSKFPwp/aYuGQB5b6Wv5N+3PIlcA87k4GShl
	8ZGtBf85nM8Oy+9lY1P19Eo=
X-Google-Smtp-Source: ABdhPJzXfMIqrobgWawEqntSPcvCvaaAJnNTESbKqvaRiAV2El55ppJsR3C3QH22C9w4uAp5U6XwTg==
X-Received: by 2002:a1c:dc45:: with SMTP id t66mr1474371wmg.17.1598310830618;
        Mon, 24 Aug 2020 16:13:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:287:: with SMTP id 7ls246834wmk.3.gmail; Mon, 24
 Aug 2020 16:13:50 -0700 (PDT)
X-Received: by 2002:a1c:a70c:: with SMTP id q12mr1399668wme.89.1598310830014;
        Mon, 24 Aug 2020 16:13:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598310830; cv=none;
        d=google.com; s=arc-20160816;
        b=pIrvBaCADqGbeVlDZmB8b53rD3cxS1MLEaaXJ2XD4PYCCs5YHa1HQPUOWvhUF/rmIl
         ANafbJQBtOALEp2jyeBcQRFngw2+anZ5xHkRrAxxvRFGjuT44T2TGXeSl7ez9BnB4NIn
         /1eh+QkaSJz5Ftp4rzZ5drKC9Q88TxcO0y38X8Qz4s0Xfe0sTxamJUPVIyRavAX4WxVb
         VtRGVmKWIihGnR43tmHgJxzMcwXpPUpLpRuAbWPJ0/gEmafQlNOcEJMhVWVAL0Gc2HaA
         WTTg7cOeiHVEd4tWLNp1dqmmHqNyahg99AVIoC8x+g6aVALXe/k4Sxj/chJj8AqyZy0Y
         j/GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=wvhSIR6sI74mxhT+O4Qx9n2lzpzuCK1cz1oQpYqGpNs=;
        b=e7gWUFEBFcqd0476V+bhE57xSBk7tCRuSWm0of0xxYsxHT7cBIAYJV4W22OVL8TJm6
         QxeicFY7gDTFYaj4XTSWAK77tNNRfYXT/hpl2Cbz5JKj4IzES7P8Gh2o67dzlZBRPd20
         rSOWN7r5mczAOedHDR3kusoF4mQ9DEtz1ttRuIF5XChIn2k6nX+KWFFTNLpeAy/UfpZ4
         GLa7IpqeI/+c7g3akhXl4PF5EsToK0oSP8U5aB2dxvVs2huYIcWRz0PJvrj4agrsGqUQ
         Bd2dxxNVhPb3+33rifRzR36xbGc0VJOXA3iSZGG8gIvrWBRFHGG4GoG2VJ3/SV0RsRu2
         PHxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id f134si55474wme.4.2020.08.24.16.13.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Aug 2020 16:13:49 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 5BC41129242A0;
	Mon, 24 Aug 2020 15:57:01 -0700 (PDT)
Date: Mon, 24 Aug 2020 16:13:46 -0700 (PDT)
Message-Id: <20200824.161346.1009201417411312987.davem@davemloft.net>
To: natechancellor@gmail.com
Cc: olteanv@gmail.com, andrew@lunn.ch, vivien.didelot@gmail.com,
 f.fainelli@gmail.com, kuba@kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] net: dsa: sja1105: Do not use address of compatible
 member in sja1105_check_device_id
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200821222515.414167-1-natechancellor@gmail.com>
References: <20200821222515.414167-1-natechancellor@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Mon, 24 Aug 2020 15:57:01 -0700 (PDT)
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
Date: Fri, 21 Aug 2020 15:25:16 -0700

> Clang warns:
> 
> drivers/net/dsa/sja1105/sja1105_main.c:3418:38: warning: address of
> array 'match->compatible' will always evaluate to 'true'
> [-Wpointer-bool-conversion]
>         for (match = sja1105_dt_ids; match->compatible; match++) {
>         ~~~                          ~~~~~~~^~~~~~~~~~
> 1 warning generated.
> 
> We should check the value of the first character in compatible to see if
> it is empty or not. This matches how the rest of the tree iterates over
> IDs.
> 
> Fixes: 0b0e299720bb ("net: dsa: sja1105: use detected device id instead of DT one on mismatch")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1139
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied, thanks.
