Return-Path: <clang-built-linux+bncBAABBLHDUDVAKGQEEWJODEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DE581D63
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Aug 2019 15:39:57 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id r4sf41012778wrt.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Aug 2019 06:39:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565012397; cv=pass;
        d=google.com; s=arc-20160816;
        b=0x4809XFscQv5uNS5mF4puP0LywMqd0ZzXSGTtyZMIqXnBr2pA6qcwd8bFl6tX/5Lq
         OvQ1oBNqvMtQ3CxahW12mSQWx9WB796tn4daauAuOWJi6uj+WpxOhakVywgCPFGB9Y5Q
         6uqF3MfVcD/KMln622la6Kp29jTqjk93zzdAYSTApNgIIk89r5MXf70B/7aIfROL9l/a
         Wr+lbb6T5ZFLEV0QMvpOfW1ELH1Ia+axuyMGIhAwwhH6CxVKA9ocdbTi5YUCoXXMMQeF
         XEDm+nUGqbQnVwB+XkZbg9M91ciBGjU+Zch182ZqGZtvihm3eXgA1Uck10VssP1b5KB7
         5jrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=LLwRsC4BZGAwBlW3/iX+4s5QLHjcPbmfwlIEm3U9PvY=;
        b=Zg+GH911CGv/Q88kFBHBwYA7loc/SsHHvXenxnlEdFR6nxmirL4U8EweiHQcfhwgrI
         KVw+MHnUiykoniNIniy2SB6JO6Pl7EhWavKwdWmOKpb1zYUS6cifihnup93tAKkgXW1b
         STIk5gXdfFOqGAHKiLDnjCJZg5ENg7Yj/Skl/hkYCDNXwD3VXifgPVmjcaHpfec/bD7o
         qtKrkaNH7ZE2d1dHMN3rgm+T1moGlXheS9VtsWlaKNYTJLLEWMylyNC1KKvxELBY/AQ5
         80yw8vTOfH917PR2PGL+EmmIryXnwyCPVWGpduXuXhZ9irvhSh5Xcpzyz7+WHcXRvTdH
         K4UQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=Dave.Martin@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LLwRsC4BZGAwBlW3/iX+4s5QLHjcPbmfwlIEm3U9PvY=;
        b=J+e0Rcj6gPf9HJqMN9oBfMfN2XdQ5dxvoR2qCFNVlQCy0ZV2b0QfF0Rpbn9Ju7YeWb
         XFeq4TS/E/qF/1YkVlT/7a7gBDPel3/0GsZTrD8Efoy0qPjD6DodNpreQaVourXKzY9c
         eRyyAEHGYp7CA4qSESmuddlu6NCt3a9OZ1u1YVV0QMKK16jVxgDm/8fL4TxqT6YxAV0q
         rl+FYbocSBORdDRNGyiv2sERPsJPnxS4leNFWJLX/8vIx7d071/tsN3mcmGHuQUXQQmX
         RJn4K9vyg+tuTDuw61cY/sfX1Q7NGpPXEePeEdrmEwww6yaRB+xmL0ilnMbyx0tao9IH
         Hjlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LLwRsC4BZGAwBlW3/iX+4s5QLHjcPbmfwlIEm3U9PvY=;
        b=ST0dfI2LHG595eIkFyJfJJaZ1I/yws9vHx0PEt6/CwEnHDv3Pa3DbYNQSZv+41zWBI
         283vW2IXgPcuKLoTwj7htQUrfC7sZbagz/7MsuEpqkCa0nA2ssDBzl3AHved8S4a4OoC
         79L/vM+3ceXRr/mQPzk1FTZPHgvhs3BUbfjDiDYxpfvmW1KVBCajVqQyJn7kO79duXlc
         v2BgXhFuhsX/k3ysri139twK7uQ4A9zCrZ3tL6KWe4Ldfh+BFHOKgHdEDdCbizKF/2CW
         9kdgvcoSaaN1SVpy33JzeQ8OrHHdjbE3kZXtRkURAvNdjmpZT3QW5Oa9eji8+22SgBRw
         qnAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVAcbx0FOkleU2fAxZXb9Xr0oaq3wQby0JD2rHtG1AZx4os2LYh
	i/v0RZY6thGEzlvLQEVdFFI=
X-Google-Smtp-Source: APXvYqwnlQPBJFeVhlMkDaspqQGqxG6oDIj0Kgra3FMAnW2hQt7B9WLgpfUZEAFiFhqHhA25x7pQ4Q==
X-Received: by 2002:a1c:a5c2:: with SMTP id o185mr18611562wme.172.1565012396965;
        Mon, 05 Aug 2019 06:39:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c411:: with SMTP id k17ls20875wmi.1.gmail; Mon, 05 Aug
 2019 06:39:56 -0700 (PDT)
X-Received: by 2002:a05:600c:c4:: with SMTP id u4mr19080868wmm.96.1565012396692;
        Mon, 05 Aug 2019 06:39:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565012396; cv=none;
        d=google.com; s=arc-20160816;
        b=AHPhBzOjaMcrh/sX7kUU6CFbxcEZCQ/O6wgbcNiQe2lK3xQFiSKXGLnpCHlKqg2Cy/
         5nXpTZsp+CB54/NozijSVH4HELzYozlUSVOVcmZbaVsySQ5Yddc5RKxot0rJ3GoREBnR
         dp/5BfuMt0ys6A2r12RilDYsB2y4SxfHnjnfel7adXoNEJe1HrZpfwbLiHf6mD5ytFc4
         CYoMJ9nz581IqNtGIiNESiEwvJYTwFZsmaRiu2yfnAZ1l9iur1qLBqwhwLvwFp4iB6mX
         E1b1dhzoKUUWs4clvbkL2ZjC/LNF4KQUnm5FbYX8xAJF5yIHEBrOAdFqyChfnUSDkS0l
         QVdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ABDECe0/u4O4NXAthH/6bQ1kArfILIN2nbBikwgqI9U=;
        b=s5tdB9azaA+N4cODA5VpMUW28ExNLNpXkVRbAoonKhpY027XCOjV7Oa0qjYcQ8knjg
         dZDe2iRuYQPShIgpDEz770pMfeUAcAImUc88FaBVbehQCMfd2dwPZOOGW7Y5+aBFO3DA
         j1zjpFmGVkSRz90Tz149enMF9sLGpA36lwr3A8R2AjJBdwzasMj2bznSnNi5nlmkbH5R
         v3UxzcoWpZbLoTtWwwSNTiuqAu5N6SdcAEz/epuJwFDDvXBer05YLfTnuR/zZYo4sFVP
         0e+XeP7dhwXXx6HUwTYR82DOqOX0MVo4jCXRB1RlEvsTVnOZyioHXb2V0g76XTxmnuup
         3/KA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=Dave.Martin@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id j18si1079668wmk.0.2019.08.05.06.39.56
        for <clang-built-linux@googlegroups.com>;
        Mon, 05 Aug 2019 06:39:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E7872337;
	Mon,  5 Aug 2019 06:39:55 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E42FA3F706;
	Mon,  5 Aug 2019 06:39:54 -0700 (PDT)
Date: Mon, 5 Aug 2019 14:39:48 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Nathan Huckleberry <nhuck@google.com>
Cc: Robin Murphy <robin.murphy@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Tri Vo <trong@google.com>, linux@armlinux.org.uk,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH] ARM: UNWINDER_FRAME_POINTER implementation for Clang
Message-ID: <20190805133940.GA10425@arm.com>
References: <20190801231046.105022-1-nhuck@google.com>
 <01222982-4206-9925-0482-639a79384451@arm.com>
 <CAJkfWY6StuyMuKG7XdEJrqMsA_Xy02QZKp8r0K2jwSZwBCt+9Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAJkfWY6StuyMuKG7XdEJrqMsA_Xy02QZKp8r0K2jwSZwBCt+9Q@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: dave.martin@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=Dave.Martin@arm.com
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

On Fri, Aug 02, 2019 at 10:27:30AM -0700, Nathan Huckleberry wrote:
> You're right. Would pushing an extra register be an adequate fix?

Would forcing CONFIG_ARM_UNWIND=y for clang work as an alternative to
this?

Assuming clang supports -funwind-tables or equivalent, this may just
work.

[...]

Cheers
---Dave

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190805133940.GA10425%40arm.com.
