Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKHW4TVQKGQES7W5T4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E85B037D
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 20:21:29 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id s24sf13142612edx.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 11:21:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568226089; cv=pass;
        d=google.com; s=arc-20160816;
        b=fQRFMdFkZ5JztXDf25NxusNkTNkqdbtEUDNXFq+m9G2xw1TLDoh4oPqraz8dMXXs/Y
         iCPxHVxTmVYakOdpucwsOfVrGollY4EwBSEFiMyePuYNIF/Z4abn967w+8BKYmbV4Y7e
         C3es9OG7I1UjpVb/HxB/Y5t2a/ZfLa5AViESuGuDzm0sHRaYxjIpQTrKTDU10CTUhN8P
         IN/J4VEbZxcLRflN6sMaRifOLKD7OOv++txvMeAOvN5+cMcRYJuVCcUh7dpBvUVIb6xf
         XjLzvZLCRt8eBsv/YiqJ2uR+9PXgQOl0LkkmTK97EJdGyRNyzVVGcSE2C1zuT02lSQzQ
         8Kzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=KdGbs6FFFSa7W8ZjGS/Bl80vaSljsfcKnYC/BNmo5YA=;
        b=ql5+dg8+iixLrVe5XgjxoQ8lT9IxzmtTAV6HljIvdIK6c85mynwCK23Gi8cFtjSDpw
         cebjA12mY+G0ANPeeMcl3dkvwFOMrdu/RB375FTtE2eAj4C2gi60YAEbjEyjMpN+/LWV
         8yXutA7sGfOCFg5jWvzcV6jeMB5Ey+La8I2Fi8V70X+9n0NHyn086dPYdctDH2DK0xo8
         0iJBA1QvzLoJb9LywZXaR+TRIx+GbI/Js3mVMeHuIbjtLnQ/QPrr5WV+8j5GJ0B+AyGG
         H4Gx1+zwkhsTnJ25tMM+cRrQ7/1f6+2LjpvzjgB5dxxz4sQgIUsxVotfPQQOs7HONmtf
         030Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K7xqlKEd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KdGbs6FFFSa7W8ZjGS/Bl80vaSljsfcKnYC/BNmo5YA=;
        b=KGvgdnjpWODM/Xzy2b2M8rMIcTnIAhsSfopjZFqPGxqSuRZbqZWziGgVukVbvEIL16
         e0Z3Phc/fbkvyBEWcIlUdefHc/sr5aYlqD0IPw5tGH3FfpTgk2uKCYVxJSLWFhEP7t+N
         NUegrb/5ytsEzk5hAZS+Ek8kmWF2DDnUOWa8U4kT/kNPb9h9JZucWrMNZoocug/D2uJs
         2Rw3LJmnzdMG63+SRScr/DBzxnmCki6ZWrb6LoZZ0JPcyzVE3vsSUlJsMGwtJiVlK8gC
         ZHVzqPXAo/jsQxFXhSHEORUP+6OYzAjwoKwsxccby/ZfGwHtv+uAWo2yVQ9MzLsTQce8
         6MmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KdGbs6FFFSa7W8ZjGS/Bl80vaSljsfcKnYC/BNmo5YA=;
        b=gLla1H41lH3TnCnnJfB6kXfeLLSOScF68VZTsHDUABUgihZhnXmNOIK6luZ5xIdm8G
         +0NshOzbQ059grcdwc3sHLUn4E0SlM5kpG9SemgPpwyrjThl1y3LYAZqV82NewmUP3sX
         xZgzkKdWiswj2M9nkYHMj1H2ISe+Fzyn4FL9XqXra5iBIusXkiaGIuzsQ4kdPjRoJ6JL
         TOlSUAxASciHByF+hj1HbVVBPDQHoTQvnSiKhbkY0kvW241+Fj01eZJDlaRYjAFgGJNZ
         Hhoym9KPW3mU8XfYBdrrh/AUXjwjebanO8Vc45uKMs2gSoBUBKKxOx44/I6q++v24no2
         Qfqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KdGbs6FFFSa7W8ZjGS/Bl80vaSljsfcKnYC/BNmo5YA=;
        b=S8jmQmz2OKGxdXkKRMVgxEjcY2npU1eeVHRZvLab/Spqd34QsGhlQb1jV/5+FuAvcf
         pj3rlyUSglyHKltrMVO8AFBUQE4gqlLNdHSPFQVnIoH16nLvxvlHBHEQ49V3d4zbTYhM
         Prz4askgVevWJNFWFy78UiumxjnXd0HGrvY3WsNNAK/QLzihPMxHDBY25LhopNM/AnEx
         w2cUaUFA9cMvCPtBfHfAZcqxiPivZQj9l0XHiMlPr6YxcoCbEiUt9U0hy8rFqxZg8HIS
         WmHI4sjehXMGH3ZqWkgjd9TmFGl2rVE5WP4epDzi3bAi+57emtm/JJSvK3R/AJJWbIaF
         Outg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUmu+1/87nA/VtIcQ0Cwfx+FgAXHX/2HhdMbR7fKlLWWzttagWR
	iY9SsGM9KzufPoyB/6cdbwQ=
X-Google-Smtp-Source: APXvYqy13N/cIVuiCSjPXJ+17iqNQ09ixth/D1N0Y70kr97RWPiNcUVgRZTqiLFA1L/1b2eF9+/bhw==
X-Received: by 2002:a17:906:b5a:: with SMTP id v26mr31021433ejg.235.1568226089005;
        Wed, 11 Sep 2019 11:21:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:c28a:: with SMTP id o10ls5838531edf.8.gmail; Wed, 11 Sep
 2019 11:21:28 -0700 (PDT)
X-Received: by 2002:a50:baab:: with SMTP id x40mr12499849ede.60.1568226088650;
        Wed, 11 Sep 2019 11:21:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568226088; cv=none;
        d=google.com; s=arc-20160816;
        b=zj2uJ/OfhUYRPxN+UBIxWBYhjtZQJ7P4NowRmSZBqjgcvgWRIqGgq72rfBJ1DHJcdt
         61TFuZGyYm0mFDbg00FQBIJqc//kJOeCmaoUXlh+bwyoRrOudR5rvmzSr1V+7w23JVdf
         7Gnj/ouC4WiGsuhpDT/eayJxmCzWQtZEPpS7CpcDChXnvbYlxUEWWWkqMojDJQmIPFbs
         /k0t4J/U6+KtxiIe2ALOfmHm5x4HivMNPJptBDu7vH2f9c9K5qh8PrJ6kr7C/z2DdAFc
         pCriT+PbEySNKq3LGhPjmdKtegWF2F8IRtJEk1NO0Tb+J2KjfGUEiMuT2qgk3uiwH9Cy
         Hqhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=5oTS8CESIdf2+fECzEqNsvb0NTpwnzCnNyq2GZVcr2Q=;
        b=AdsrYu04ffEy6OPkXPr1tFrDh2pwtvjuanGotIUlTVC/jNrHgbq+wyStt4X3S9eWzy
         ASn1BbPK5wCHJadr7mXZtiubY7W4ZtFVx8C7Cfbd54AmWUbu8nagPWKvrstP+b0Q/3qW
         wo3LOT2+r0Tfg4Wu/McS1PZz9Fs8rwHkmmWNhXt7g/33wNaZvo0VhDcOO/9f8ijEv+RA
         ltoz0sC/uJBEL3zGyIinG8BpuNaRACU5tpWrzYvC/1Z7o+0kH7fsYaT1SI+ZojyOc5Bj
         NCrEMsWzkoMlclkH1+f4kehYPhMw4qWSAXWr/OJ+UCN5pjvM2pd0kO8nuUVlLLxS+yzq
         gILg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K7xqlKEd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id z31si1630916edc.2.2019.09.11.11.21.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2019 11:21:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id g207so4605059wmg.5
        for <clang-built-linux@googlegroups.com>; Wed, 11 Sep 2019 11:21:28 -0700 (PDT)
X-Received: by 2002:a05:600c:2152:: with SMTP id v18mr5188852wml.177.1568226088230;
        Wed, 11 Sep 2019 11:21:28 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id q9sm2356753wmq.15.2019.09.11.11.21.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2019 11:21:27 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v3 0/3] LLVM/Clang fixes for pseries_defconfig
Date: Wed, 11 Sep 2019 11:20:47 -0700
Message-Id: <20190911182049.77853-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=K7xqlKEd;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

Hi all,

This series includes a set of fixes for LLVM/Clang when building
pseries_defconfig. These have been floating around as standalone patches
so I decided to gather them up as a series so it was easier to
review/apply them. The versioning is a bit wonky because of this reason,
I have included the previous versions of the patches below as well as
added an explanation on each patch. Please let me know if there are any
comments or concerns.

Previous postings:

https://lore.kernel.org/lkml/20190818191321.58185-1-natechancellor@gmail.com/
https://lore.kernel.org/lkml/20190820232921.102673-1-natechancellor@gmail.com/
https://lore.kernel.org/lkml/20190812023214.107817-1-natechancellor@gmail.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190911182049.77853-1-natechancellor%40gmail.com.
