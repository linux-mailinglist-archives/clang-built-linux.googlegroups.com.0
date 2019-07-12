Return-Path: <clang-built-linux+bncBCFPF2XH6UDBB6UWUTUQKGQEDPVP65Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 180EF67695
	for <lists+clang-built-linux@lfdr.de>; Sat, 13 Jul 2019 00:36:43 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id h7sf2674209ljk.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 15:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G5PW/fz/f9e4NqMqJ3d2lPnuO/k2whqB0FwkJutBYi4=;
        b=ioqRryAue/4EaHKee77auz40YxZruu81Bi3RXuCZpI/6/gRjuZdD2+8C1l5OLxi5ls
         LsnjSFxIhfjcxcmUzSxGuWuHaUD99Fpe4uExsRTHK0e0Jdd/IPK+OUx8gfz3HoG6WMDC
         8gnu8ogwGw0PEAXcvGeMfJ6Ci6DMJlCgPV1Ewy4U6dJymSufp0wm9oM9Lrk/hioDe9i/
         os0N5Zm6+dUPRKUrD+zndnY2uzJAq05ojKfVh1QVxw4Jtz5tQQRW3Uroeq308oy/Wme9
         RjvuSlYFvDe84JWe7Z/SXGJ3a07W5O6D2kP8u9hDTapttCq7zRCrvTVY4q5Xqs3JHiYz
         gpKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=G5PW/fz/f9e4NqMqJ3d2lPnuO/k2whqB0FwkJutBYi4=;
        b=p4jjdaEOfGn4n69VsunQ29fOSPkP89G0wxiSdubNihy67W6o5zMMGbmJjEyP8ttE/V
         zaiKKeG+iDi2v6eyCvXuZ1QC/1tGUZJIMcg6cSNFzhXxTm+wqoZx4WUQi9bo0MThpaxp
         pjR00jOSpgq5G2jix3NDMBZA46w13ucki/6r8pppK7trX/961lCWEeKCvX75kqKtO5cG
         fP4X3LR2XgQ0ErF8fuiwFUCFnGd6Qgt1tCGlz3GOidnL00n2em+G53F3CdUROIoHgrYC
         ZZNZArAiTsyGzqBd8+tl1Z6ouAP30qDkRkC03Zo8nczHO+9g+BHsMYq2xauunFtIFq6u
         AuNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV4QEbf0fRdaIaa5rutZF8cSvFtBEj82UdUST00wF21P1QQgRA9
	nQy6BqucVVzhz+qT+S2lZ2A=
X-Google-Smtp-Source: APXvYqx6Z+zHkmTDJX1kXzU3/5wuoup1Ov78GJA/7DmKEAjeYsg/+dRAB2K2SmbFF5zU9TgpOCytBw==
X-Received: by 2002:a19:7616:: with SMTP id c22mr6066582lff.115.1562971002658;
        Fri, 12 Jul 2019 15:36:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:96d5:: with SMTP id d21ls1325117ljj.16.gmail; Fri, 12
 Jul 2019 15:36:42 -0700 (PDT)
X-Received: by 2002:a05:651c:d1:: with SMTP id 17mr7406966ljr.174.1562971002033;
        Fri, 12 Jul 2019 15:36:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562971002; cv=none;
        d=google.com; s=arc-20160816;
        b=ePYMQ3q66GCCzcwIpeXA5xwM18H0Sp+1nnRB5LWpMmrGNbvdjMORRSMN2BJeg1FddG
         9R5s5+M/citaxC/SfY998dfQrlX+t3Wr1Cfm3MDij2SNf84hRSaoGkHeA2n+xX0iUP6X
         pRsm5f2d+XbrYApZ3x/7m7J7dx8afJUKEC3ygEceEfGVB4qsdTj3fNkcqLQEujbuEMai
         pwcUKLnWiI4pilkIXIj5GxIcUqUFp/8bUlS6/Xb025Gknodj1EcXAM25tM/8PW5L2Zdz
         Pnvdl3IjOERSR85x1pFgRa9xOxMqR54psJKIXDYlWycbqRUQGCylfVAzBKw86DqBFReH
         wA0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=G5PW/fz/f9e4NqMqJ3d2lPnuO/k2whqB0FwkJutBYi4=;
        b=SB3mGRejF0SjpOcEnlFN533o5y9wsqAV5NSNwXvd6R4sN1SWVO2vNexe/fS1ywbAdH
         OSovQYmD3vC25KPLRTds0+6lZrNCbffKY4qnh/XGdqkCXaq8Jt7cknvSJd0w9VBwY0j7
         6GAIHi5vfq/2rgiv4bRYKIUJ9lf96+Ovi6BXgdnSq1mgg1FoDb3mwn15tziqqi6FLcjD
         TuXk1FukLUkOtPGqOY572ZdY6k5w3PejlxZQjCvoh3D9apmliJfneUDCAI2E+rYojdbP
         Lstng2zaAq5KnxGUD1vBCGaqmfZLBuoEzmdrETRJeT6mwcyTm/ENbxHc2iIu1+8B99UV
         uj/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id m84si416498lje.1.2019.07.12.15.36.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 15:36:41 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 9137F14E0384F;
	Fri, 12 Jul 2019 15:36:33 -0700 (PDT)
Date: Fri, 12 Jul 2019 15:36:32 -0700 (PDT)
Message-Id: <20190712.153632.1007215196498198399.davem@davemloft.net>
To: arnd@arndb.de
Cc: vishal@chelsio.com, rahul.lakkireddy@chelsio.com, ganeshgr@chelsio.com,
 alexios.zavras@intel.com, arjun@chelsio.com, surendra@chelsio.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] [net-next] cxgb4: reduce kernel stack usage in
 cudbg_collect_mem_region()
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190712090700.317887-1-arnd@arndb.de>
References: <20190712090700.317887-1-arnd@arndb.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Fri, 12 Jul 2019 15:36:34 -0700 (PDT)
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
Date: Fri, 12 Jul 2019 11:06:33 +0200

> The cudbg_collect_mem_region() and cudbg_read_fw_mem() both use several
> hundred kilobytes of kernel stack space. One gets inlined into the other,
> which causes the stack usage to be combined beyond the warning limit
> when building with clang:
> 
> drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c:1057:12: error: stack frame size of 1244 bytes in function 'cudbg_collect_mem_region' [-Werror,-Wframe-larger-than=]
> 
> Restructuring cudbg_collect_mem_region() lets clang do the same
> optimization that gcc does and reuse the stack slots as it can
> see that the large variables are never used together.
> 
> A better fix might be to avoid using cudbg_meminfo on the stack
> altogether, but that requires a larger rewrite.
> 
> Fixes: a1c69520f785 ("cxgb4: collect MC memory dump")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied.
