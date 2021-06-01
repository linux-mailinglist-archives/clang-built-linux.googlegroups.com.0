Return-Path: <clang-built-linux+bncBAABB5HX3KCQMGQEZGTKUWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CCD397CD3
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 01:00:06 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id d15-20020a05620a136fb02902e9e93c69c8sf268174qkl.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 16:00:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622588405; cv=pass;
        d=google.com; s=arc-20160816;
        b=jSkadcNOyp1PI2lALQdAJbXyYtjFWfoQZBujWJyUR7yhWOm142zteWadV5iRO+Ux7z
         lhVXZl5Er43WMfp2J8JjtkMeOL92mlLKjo7/wUwQt0sNlTEdVt9GHv1oNYr3Cb9/rHaw
         9t1yjjNyZ4m3l7Ch4h+JwxiJWnJzee0pNo5u/nQzK3PXIMo70aTmQxBayXHvU/Rxfyd6
         WwaW+DbQF6C6fnQsGMag0u6agZnzeaOz94ZQwSxcsfcbpZGcmwAmNUP/Toz9/oGNx4Vx
         jT5uPICfO+nSbnWy2StEN9O60dcgpmnlyxdCTdoud7hb+Bl9CeFS6t3iKrMq8Z9u/6WP
         pu+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references:date
         :message-id:from:subject:mime-version:sender:dkim-signature;
        bh=QL1JJj6B9ZQN7/+khut3D6Ir4T+Up3uSWBKSr2IPuQo=;
        b=xQcE3jaS+LgBFTm0bYpoNHbMryXML/EwHofEKYITLBl2n98LtFt3EEqiMTmCouAZuj
         nipCMzA5brfPgXHzM8YQwnRZmn3rhNdiQ8TWuXYtL2ifOylDko3lIraxob+a3wraddW3
         jHf58kdXxbZFDDulZf8Qw/6v+pJPCwBBxopJ3QK+74G9KZzdZ1cP6WJw741NVhya6pzh
         23rWWqbg55vwK1b6SYo9V6X3/cP7XNK6rp2TwWVM0aDJBGoDn0Gio7txcUDHIaX+JbFZ
         fD5MrEMV4lkk50Tmpe3DgB9xef+Pl56SEaCOfU3nUr2BExP9LjwkskRnNgHfVjhgqnaU
         jNAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=OOJT8aYM;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:message-id:date:references
         :in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QL1JJj6B9ZQN7/+khut3D6Ir4T+Up3uSWBKSr2IPuQo=;
        b=E8+dnriN2XRmk0edvNPGK2LcY1DZQogWKU8Qt7hIwCcpjDuOQQTBYFKQ3RUgH9wDtC
         XlJt/Ugh4nWqzTcww5lEaRUc91rj2wVAN7fWdulo99uyLZT18oKAU40UB0jc/Q8fxW00
         vPHXgSpUsLGsFHGmsnYoK2PDIzvUjuDLbXiRiZ4MWIOv1ko4AjdbT00yreN3UrRMDK/v
         xReIFJ3KM6Vmzvez/O7NlEbBCSu2awBnOhII1rufU56cOwWxvp/Uw9bnyJIQuPHFVxMO
         ObknNI6mjbPtiRiqZfruq0HrISTdtmhVqH/4hlANwpC5pHdzSJ2PXqrTxPQxSoIklSFX
         Efiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:message-id:date
         :references:in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QL1JJj6B9ZQN7/+khut3D6Ir4T+Up3uSWBKSr2IPuQo=;
        b=GkkQLTgAZKJJ9oHCR40r2hXL287Fm0qtLEtWhxn8mbs6B/7Wu6u6oLDxcmRdAW+rdd
         +GjFEnUr1mmlOGcUyLS1fS63tcJqGPVk2EgnPEfy0yAlgDY+E4zMWvD30Qh6FIfvTQ3G
         t3Yb9A8SFeUIa1RNdmcURYrMHV7wElB8A7vMe9KvmRVFgqElWvlq0nStqim8+axmGYOw
         M443O1byt1L4KsoJEi90Mz0qGgXQ4w2FoJDYwHshafa8NqZ8/0JtWBEHkz/CF2VfDaMA
         viv+db1umdVq25dPJj9cKizbfqIuR+mpp3y4Br5gMTSEdNOPmIGI2PaOgsHrek5AJHal
         6Z4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wgkSMXDwYF3le4pAgDDCxJp2+9EMzIa/nr7U24yiCEwnIzp0T
	qoWu+LrHv+ed+SZNlASkeSQ=
X-Google-Smtp-Source: ABdhPJwW2yJD/l9dgfo6lkYiV79pkdtfjm5aV0kz5qlR0EJV+sBnwkmH+yFL4LdUKSanh9dMnFbgRw==
X-Received: by 2002:a0c:d409:: with SMTP id t9mr25255134qvh.18.1622588405101;
        Tue, 01 Jun 2021 16:00:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:72cd:: with SMTP id o13ls8459074qtp.0.gmail; Tue, 01 Jun
 2021 16:00:04 -0700 (PDT)
X-Received: by 2002:ac8:5a82:: with SMTP id c2mr21334156qtc.345.1622588404671;
        Tue, 01 Jun 2021 16:00:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622588404; cv=none;
        d=google.com; s=arc-20160816;
        b=RPHYQaCosU3wNxy4pxgt3fCdpayJNKvRpYS/HktdDct3g+nW0BvipCBzt23Gut4V2q
         jBoWw23B/Jvtk03VHs43JUjbe9WmRpAvBrnxKrL118I3/iweSM4CbJ6qkdv3NAC+ddmg
         ettvwcmb6ptYNWA8MRSN6Jt8coaEBXiy8vqK3OavGwdtwsTLtetDSP8PdUihXNAC+EuF
         GG+5RVrL0ig+3Ho4crrcTB29foWuwu7F6uq1KIbjMNXRskkwnh5KEc7upJtyOIoMNpix
         vkaw/KWfxqhju8Ihed3Fx+kwy7/oCw0pYSBHDSzhRdL0bcYPB39w5A29fkxL5GXU4G4B
         yAQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=+RfEZUfKqAd6vhXjQm+Wd0Mj5fk/rXu9iQPojcWv3WE=;
        b=KS7Kxx1RfhSpCn0FSCQYzMpJpgGmvIPZMBoL2eZB6+YDCyMWcvdKnehE3HjbBR2/DZ
         TTNe4SHoOWLFYwWgp21ReM/aFm90o4ALcQtisqXrh4HuicGU04Ykld/fouBtpaOlKuG9
         qb2f3+XNEwg2kzW/AzXBqe2BzYxBaAFQnlktcVcOJ8oAQvrIYNmRqBnQG39KToxX5XG3
         oj4LIg/njNHiAM25s6eyZmvEOLi7SaebxUd9H1oGAr+SEzi5J7nYg4o/381rq+GJ2iLJ
         RcAe5H3A6LAx2G5cE0roUzz2/9ScsbXN+4XR1ao76rMhqR69achEX63WMKB6lCfXa6YX
         2f/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=OOJT8aYM;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d8si958918qki.6.2021.06.01.16.00.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Jun 2021 16:00:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id 814A5613CE;
	Tue,  1 Jun 2021 23:00:03 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 76A7260BFB;
	Tue,  1 Jun 2021 23:00:03 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] NFC: nci: Remove redundant assignment to len
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162258840347.25475.11870620814207718768.git-patchwork-notify@kernel.org>
Date: Tue, 01 Jun 2021 23:00:03 +0000
References: <1622540990-102660-1-git-send-email-yang.lee@linux.alibaba.com>
In-Reply-To: <1622540990-102660-1-git-send-email-yang.lee@linux.alibaba.com>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: krzysztof.kozlowski@canonical.com, davem@davemloft.net, kuba@kernel.org,
 nathan@kernel.org, ndesaulniers@google.com, linux-nfc@lists.01.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=OOJT8aYM;       spf=pass
 (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hello:

This patch was applied to netdev/net-next.git (refs/heads/master):

On Tue,  1 Jun 2021 17:49:50 +0800 you wrote:
> Variable 'len' is set to conn_info->max_pkt_payload_len but this
> value is never read as it is overwritten with a new value later on,
> hence it is a redundant assignment and can be removed.
> 
> Clean up the following clang-analyzer warning:
> 
> net/nfc/nci/hci.c:164:3: warning: Value stored to 'len' is never read
> [clang-analyzer-deadcode.DeadStores]
> 
> [...]

Here is the summary with links:
  - NFC: nci: Remove redundant assignment to len
    https://git.kernel.org/netdev/net-next/c/7cf85f8caa04

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162258840347.25475.11870620814207718768.git-patchwork-notify%40kernel.org.
