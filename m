Return-Path: <clang-built-linux+bncBAABBUFV2CCAMGQECSQR7DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id DA505375889
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 18:35:29 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id j91-20020a17090a1464b0290155d0a238desf3375288pja.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 09:35:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620318928; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bp+rVUb6pFguJc/kliINOiQqamSF4NF9o4RDB+WY3J7iGvZcyGO5knjouom5ZBaRcC
         wxAQi7+oRQnGdr/kQLRsoKu1IZHZTrhXYg72rKVenFBVD9DlsEzH+hgYh8vrTD4eTyQx
         qtxWYe44QttTarZWi2tTLTolxoxYMs9dOnSBz1XmOCzI6ru6QApO7sWg8QmEMOAYp+Db
         4No7qSH17V7SPx2evjYq+rM8YK7UDhxltlyOa0hdcssq/HYFjA5KJHjFxxtnrr1dq2UD
         +LjNd366iJzkSvMAvi8SXd09ZG96KutZUV6o6Zvz3smr4eyPeR+IL7tYnYTXVVkyDdtI
         uNzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:date:message-id:references
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=AJ3NSsI1fVRHBSvc14HeJgbyjoFBgPJnB5wpaplZuiI=;
        b=JM2/Q3MqHL2Gow78Z06gkAqhlOmilEh5LiKn31pyqPt3fVBI4NNqOv102boXeS4bQ4
         B8E0YJfTGMn/hTEDea1OPI4m8+/Y/7fs2YjX7Pfb2o9mrk2UFm8rjrY5DAoCbyOLcpRM
         w//r4EdWZi/1PKaLvOYZoTdlDGotSGBNNktxrKRQrlMH82y1X4+sMoJe5IEIwQul4lw/
         p9jg4jd9bnc0SwygpCVxE5VTxK3GV80g4amYWioPyck7jqmICJgr7ARW/xwufOiuj1R4
         r3LIUFQEl/R40ts4H0VSJvwjX4erHtiiB/ImsLln0rP4SndaVf1MPFfav62BIHJ4zMjh
         OCiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XwzEX+0j;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:references:message-id
         :date:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AJ3NSsI1fVRHBSvc14HeJgbyjoFBgPJnB5wpaplZuiI=;
        b=Iy5LcbNTGQVXJBynzBDS7fZrD7vUljCQHZHu/HSDQlGsqYHuYg0YqIoxbO8qxVJncG
         H/pcNTVkrs9az/lOIZj0EmGAEgRlLdbgBhmwCDyiap5NebQRSmYXdH00TWRuhHy4J55E
         kFHdSnMZKLEjTc+fxRdTpVYWYS8MP1ACRS9cSN4tPAip+DFGHW6UTOZiyXdBrXrQQirM
         2vG6gNu4qEHrgl7Q58eBabG+7OK3zOOKCY2+bwTwz9VW1iz9CeYgqv8iJbeXQiZ9paxh
         EYjGRtGxluNCkPsRAhBP940AHNiuIT0htHU1va3tR6eAjHaUlsPbFw9wJbOCd32ya32l
         x13g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :references:message-id:date:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AJ3NSsI1fVRHBSvc14HeJgbyjoFBgPJnB5wpaplZuiI=;
        b=SvnLcuI8FhCIcJJ8qxQ/4vyPijIRDXSsymXGBNL6M39goZU6lWWONo95XP6E5+8/cl
         Nmkw7S4DymSQcObc16H6S9EFLxy60qYjKR4CXm2Z8z9COAVOP/5LO2CSz9pSSNd7KXPm
         SUpcz/GiO8pVaVVtlZa69TsE8nW1Ur2XDdUR0j8XbJ8EZmQxyGSZlwUHU8HvtSS55Ker
         sRQUJfb20Qii33N8TX3xWi8Cj6LaA91Lzj7bby8A3nKzfsSWSatmtL6K3ued5n6FtnyO
         xE0l6fH0wPC5pHWTM0jkMA2cLBbz7UyE9R4hHTd5gKF0vtrEfgx7j+bPwoIhsjA+8FCW
         htmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533hUBDEwHedYqY6l/ITeNyWtS73QLwWK+mv4adOKs9py9bEqSXT
	tL06BTeve4wcX25aemR0EMc=
X-Google-Smtp-Source: ABdhPJxxEimDI9LPfQK0YMXbX5OCm7pWoXSRUjJEMDAZSCV/l16VuWp9nWKZgZ6xvzq66NFgTCNsfw==
X-Received: by 2002:aa7:8ac3:0:b029:28e:df57:991b with SMTP id b3-20020aa78ac30000b029028edf57991bmr5456352pfd.38.1620318928166;
        Thu, 06 May 2021 09:35:28 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4145:: with SMTP id x5ls1415862pgp.4.gmail; Thu, 06 May
 2021 09:35:27 -0700 (PDT)
X-Received: by 2002:a05:6a00:2401:b029:28e:823b:fd53 with SMTP id z1-20020a056a002401b029028e823bfd53mr5674097pfh.71.1620318927698;
        Thu, 06 May 2021 09:35:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620318927; cv=none;
        d=google.com; s=arc-20160816;
        b=kpeAUqb/GCRAkz3o+pK+MpbDrcLVFIHsga7BVg7xAS8FuqRvx0lCDJiIFyu+bJHfy1
         CpDSg9JGIUkAotXgIKQREHEl1uoFXgOhb6eKWPg2+HT47GNurlFtVpqWeVk38ffoEf9Y
         4pLJwsS7t4aB0yeMUYxiS2y0aHruC7v0FAvqaLd+XkzKDP8204lBMYXfsJdn/fzHDHJH
         6r+DSYKdexXMy8H2y8fRimu/rqlHO4lFi0+yyllToGqCS4zRfBMqFqB7D58tumwa1Hjn
         Ck4uYQDVBwyDPUCNc9T+qBTTjMYZcrCUXbNYgsWasMxxYYgIbJ++PHX2XnGHK2SG0C0b
         1jiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:date:message-id:references:in-reply-to:from:subject
         :dkim-signature;
        bh=qdZgTyNm6RD2vAMfs7iRyL/iU5Ig2duBHJEUBux1ZaI=;
        b=qY7iYDD/N70Vhee7s4NtPdgyZzanT32u+G+gs3/844lZOvojMUqD7xerDY/klDX+mC
         1kow6SwCrjY5tinJbqMXsu9P77zFqjOl4dtiUkM7rkXshLnueN2YBH0Oio7kuf9Lap53
         l3O6DHi/y5W7ammvjQrS4RplSsuQr4YMN2u983B9yN8GypstfuOD260RXNa2GaexrLKh
         F5RnbcQm9hIDS2Sij+02SqSNas4vuWZ1Cg8Wu9fJjtpwn61PJQcF7MWa0C0/5kfq3guf
         byDlcnkUJRoGzwohc/7u/7JvOHmS4JlukA+VnV1zyNX4nRKaiTpSwGBk+837xJN46N8W
         YT9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XwzEX+0j;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p11si260322plw.4.2021.05.06.09.35.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 May 2021 09:35:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id 329F761132;
	Thu,  6 May 2021 16:35:27 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 28C1C609AC;
	Thu,  6 May 2021 16:35:27 +0000 (UTC)
Subject: Re: [GIT PULL] hexagon changes for v5.13
From: pr-tracker-bot@kernel.org
In-Reply-To: <a81e116ba3d64aab8d379703bedcf032@codeaurora.org>
References: <a81e116ba3d64aab8d379703bedcf032@codeaurora.org>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <a81e116ba3d64aab8d379703bedcf032@codeaurora.org>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/bcain/linux tags/hexagon-5.13-0
X-PR-Tracked-Commit-Id: f1f99adf05f2138ff2646d756d4674e302e8d02d
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 5e5948e57e4381c770931be2c070f3bb894a1a52
Message-Id: <162031892716.29346.17799405488750985218.pr-tracker-bot@kernel.org>
Date: Thu, 06 May 2021 16:35:27 +0000
To: bcain@codeaurora.org
Cc: Linus Torvalds <torvalds@linux-foundation.org>, linux-hexagon <linux-hexagon@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, sidneym@codeaurora.org, 'clang-built-linux' <clang-built-linux@googlegroups.com>
X-Original-Sender: pr-tracker-bot@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XwzEX+0j;       spf=pass
 (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

The pull request you sent on Wed, 05 May 2021 16:09:59 -0500:

> git://git.kernel.org/pub/scm/linux/kernel/git/bcain/linux tags/hexagon-5.13-0

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/5e5948e57e4381c770931be2c070f3bb894a1a52

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162031892716.29346.17799405488750985218.pr-tracker-bot%40kernel.org.
