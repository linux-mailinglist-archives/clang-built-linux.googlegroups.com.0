Return-Path: <clang-built-linux+bncBDCIDJ4RTAOBBV6N7T2QKGQETUYDDNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9C01D5CCF
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 May 2020 01:33:44 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id 90sf1867445wrg.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 16:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bhcWpggbSDIbKL+K/l92WWlm2uyg0167t1XaR+bq3zY=;
        b=KCh1+BLIfwoLiHKbPI21R9sL2c4glG/7qvsmUc2HV5ARlai4WpP2o1frDtgd+3GBIs
         jKptm43uckn6tVYcQcExdnQUW7m1AMkdN97jvzZm3aBxhDBJ1TK+lAB/1DmQVav2oHrM
         ThfXzy1Fh+MjP1SDtLWlZSNmety5fcCPHDI/rnYuVmg9s1dxasz8JG8YXzGUU25UFNoU
         3D8j7bQO1GvWqDnfOifHJ+XWnOIql9aM7/CPWsPyHoH8ddLJgRS8memAdFP+cm3RB9ok
         IGcVGAQMhnX86MDAOAtXPtfDzpgHiam4y/y93ie4MtUcJ+7nfU0kIo4Cypm/p/nSSSTq
         MNIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bhcWpggbSDIbKL+K/l92WWlm2uyg0167t1XaR+bq3zY=;
        b=bxpocZRQhAfNYRcRAA5g+enbe8BZkdVioYLLf6HS5DlXbgYCkJMSeFSZ4DVHQMzFvt
         r6JLKtExy98GKgp+RvPc+c+B1gpNtZ2nvKxyQ5GCCEMzJzYu5JzF0IbIllIaeMoOQy8R
         U17+pXcSBP6eDKFpigxoH3bBHag5uCP46DbZVMZqhaVRm8+Y/lPtQ9DPE//d30SHF3sC
         JMOifMbKmOfqGnTzUTK0nF0AEGQuSr/IuN44PtD+Ykk3GVPTtuoQ04efGHkbVuZq16in
         GxIDQ7XNl6P1ERCkXolvfiRWHdEQw6McvMzvgy0kwbGZQoWfhpbHkpdoUGW2LydZVidV
         Ae6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531EquepW/qnBOPXfGWAPGovnUCRWDM7k53ik96RA4XhoW3ABaaQ
	lQm8AgT1dgDkw0gh3iAK+CU=
X-Google-Smtp-Source: ABdhPJyii9/CS2wmLldZG4Vpv4malJm0tDcaGn5noM4RO0cmxBUwbt2oh8eUGWZmZFaxAUBLN91pPA==
X-Received: by 2002:a5d:4d81:: with SMTP id b1mr7226640wru.55.1589585623914;
        Fri, 15 May 2020 16:33:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a544:: with SMTP id o65ls1938528wme.2.canary-gmail; Fri,
 15 May 2020 16:33:43 -0700 (PDT)
X-Received: by 2002:a1c:9cd4:: with SMTP id f203mr6743402wme.26.1589585623253;
        Fri, 15 May 2020 16:33:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589585623; cv=none;
        d=google.com; s=arc-20160816;
        b=hSOvb/eL55D/fGcObkmdnNOAoCZjI4Lek0tuKNHqtfN+e/gIDxlr75s6YblBUMRn53
         XtbS7ZoAUJhbFJmqdH3MknsIuRvRAwmrkC60NVRWlsjcZBPQedZzEhHouQhpf1FhYUEb
         NF7LcYgp2WoJAd+XA1bCeO/1jx8gJR+IM208bJHQEYrY2Pr69VwDJZUJMk7eJlgDkeXM
         /a5dVu1+Kp+pmW7/Or7p58/HB2XWTN/14/A6feGjpm//N5Mmquez7mn7YCtBeJ2X8ygt
         OB0SQDHPWDHjG4UPnppj0KtCa6K0IRxIHm92PoWPAPxHTzVFo9dw5h6ii9gNVPNZZhAN
         EB6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=bhcWpggbSDIbKL+K/l92WWlm2uyg0167t1XaR+bq3zY=;
        b=vIYtRZkuvjzDKHErT8wpQVrj4foS7oBe/SDKFsHuSnt6iGq57VRwu9RdbS6EnRntSc
         SJihh0iVkBCfFQ98sIqBZRPBpzJq++qNPBtAzcCW6QL2RE7giVwc23Lv0CoqT0hROzTL
         Dg5Q6P0F3tGzFUHlo6sCTXu2lEzXZS/Ghcpety0k4wffqn/Rf01Fig6ThzwoovQ6hrdy
         15iWd0/vLkZaV9962A6YnuUKYrpq8S89KeqC8UBynmCy0cN5NESknTbsmgeK7Rutf2/u
         ACUzfA0FH7xzlQf/6IhqjDTvre47IImG35rWi1udF2apqhbpfxSUlNstWz4BfMS4FFpD
         iDRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id d76si796218wmd.3.2020.05.15.16.33.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 May 2020 16:33:43 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id CEA8E1581D667;
	Fri, 15 May 2020 16:33:40 -0700 (PDT)
Date: Fri, 15 May 2020 16:33:38 -0700 (PDT)
Message-Id: <20200515.163338.1424746250972517404.davem@davemloft.net>
To: natechancellor@gmail.com
Cc: kuba@kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ethernet: ti: am65-cpts: Add missing inline qualifier
 to stub functions
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200515223317.3650378-1-natechancellor@gmail.com>
References: <20200515223317.3650378-1-natechancellor@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Fri, 15 May 2020 16:33:41 -0700 (PDT)
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
Date: Fri, 15 May 2020 15:33:18 -0700

> When building with Clang:
> 
> In file included from drivers/net/ethernet/ti/am65-cpsw-ethtool.c:15:
> drivers/net/ethernet/ti/am65-cpts.h:58:12: warning: unused function
> 'am65_cpts_ns_gettime' [-Wunused-function]
> static s64 am65_cpts_ns_gettime(struct am65_cpts *cpts)
>            ^
> drivers/net/ethernet/ti/am65-cpts.h:63:12: warning: unused function
> 'am65_cpts_estf_enable' [-Wunused-function]
> static int am65_cpts_estf_enable(struct am65_cpts *cpts,
>            ^
> drivers/net/ethernet/ti/am65-cpts.h:69:13: warning: unused function
> 'am65_cpts_estf_disable' [-Wunused-function]
> static void am65_cpts_estf_disable(struct am65_cpts *cpts, int idx)
>             ^
> 3 warnings generated.
> 
> These functions need to be marked as inline, which adds __maybe_unused,
> to avoid these warnings, which is the pattern for stub functions.
> 
> Fixes: ec008fa2a9e5 ("ethernet: ti: am65-cpts: add routines to support taprio offload")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1026
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied, thanks.
