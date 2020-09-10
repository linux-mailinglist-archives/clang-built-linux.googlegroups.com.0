Return-Path: <clang-built-linux+bncBDCIDJ4RTAOBB76Q5L5AKGQEHP6JTVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id C545A26550F
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 00:28:15 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id d13sf3269883edz.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 15:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LHrp4wR04ARTDuX+wEduWXnjAcGJHj6EfTRyspCssb8=;
        b=qQifqsLm19Q97WPkhiDqvH4bYcFiJXYuiX9FjSgpxjurH/Hoj2zVFqIm8CzKnHfPtY
         YRP0FLUzR1zOj0Tnp1b4MqW6z5JLwarKmRsHQItk16GQUR2dYGNpE5iOeRp4h/CvoI9m
         JnTWc98OOGu/8LZz5X9+kPFRqZhjk07x0H97N1KksxjsJlHe7BldBTxF4WgQB8CNZm0R
         W5Fbl7O1YrUvHnpN8zJcvth4unj2SjfTkFE93BTFIIdcE15P/ZgmrxB9+UkjNl9foSU7
         gWeiPd23cR4lMGBKZBX4Pfyds/msEiErl9QPLQQyr0zmxwoJJ1LIt52bXhcT/G6JPuHd
         SBSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LHrp4wR04ARTDuX+wEduWXnjAcGJHj6EfTRyspCssb8=;
        b=dTLIE3upt4KXrBi3m3WOlmrvhViGZZuDm52x7WB61SPzLUgb37YtjQx7Z+9T8JrX1i
         vWn8yTVLkTNmKURRz3zRb3qOyLSlXSJzzIWkvR7sCoZOh+uW3rlZ8JoyfYMJn9Gtfr2Y
         SSNmiQ34I6usU2Ii0szkk0kvyhB4Tm6o7jkfziq5o9UgIEBozNna2wkjER5ruXF+He4Z
         kQBmiwrMTpTEr22UD/t6cCAu4pJk6Sn6tGzQLMutbetVT1YoFd5aeVgq+IDVfY7qBC4q
         aLMrJGAVLQSoAGUOn8SVXtM2QeemsHbhBj1HTwSCk1f/ZdvSo6pZfJvI0KlyVBS2sY5A
         jdWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ViKUk5CLZjHfA1A2daz3DmuafsFOS81amZMYVE/v9N7dhx3W8
	NcBUQQIU/qaDhfN2sahNIhY=
X-Google-Smtp-Source: ABdhPJyRR6GeuGWBYJNo5MhDfUqo1C5ksXjxcSDMbJiV+41+slYyIV8hNsKQg01YFl1Nat/HufBIig==
X-Received: by 2002:a17:906:a00d:: with SMTP id p13mr11527809ejy.535.1599776895479;
        Thu, 10 Sep 2020 15:28:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:bf49:: with SMTP id g9ls170155edk.1.gmail; Thu, 10 Sep
 2020 15:28:14 -0700 (PDT)
X-Received: by 2002:a05:6402:28d:: with SMTP id l13mr12159327edv.293.1599776894534;
        Thu, 10 Sep 2020 15:28:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599776894; cv=none;
        d=google.com; s=arc-20160816;
        b=WgL++U+mKaCWA9DZONEaG5ZHaXWlmZdv1VBVpPLBlX1usZrX+kH/2CxZxB/TDJh+Lm
         xHVHybYZ00Xnqg/Tl+lc6vQgXpHQyodmuEWHdCWMmtvmd9FhqaGPNhvFGWKCNbFi3m9A
         T0zW4lHBeVLPlgU5DAka4dDxOA4ftkiRLTtYqjtT8bKK66SWAPBTaNY4JOFNbpgiT3mv
         Y8jRbcVGAXuJen8HAwUY6jQ5+Or8jamvehTo8To0YoqlWRFO9+Eny4TM2ACV/avi6F0X
         i12kIXdFSjylZyO8o61CCtElXezz4APaOqLpIF7OY2cTwGRJIO66TQPXDS08Y2RLm4ZU
         jaAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=LHrp4wR04ARTDuX+wEduWXnjAcGJHj6EfTRyspCssb8=;
        b=UkjL/kA0BnXB5Sk7+rt2r/VpNApH4fDGr/5FywmJlMsio8YpIEJKfdiB+kmKgvYAR6
         hT1eo3sJR3Q0xSWorasHT1vHhYd05jfDwuVrK320ErY6TtFAJs4/C9cmMWlyLerLXi/Y
         z/Zy7vGJWOK3lVZj/sH3+tVSkuPgGuHyataA4Yb5BRLswWSK7RQ1kDlgDkhzm0kQHMGW
         gbEmPBwOzb/bvpHIWlRpCPC3Be6rMWoUpFTclIYdi3TIpQkNInmlGofpJH+wXz+2dUu/
         SFoWdrVC1o10lPW+dLK83YCUVhrUyAe9v8e/tk9fDcdU+i9nHhn2ldtSadjc/L9fCivX
         CbfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id a16si23882ejk.1.2020.09.10.15.28.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Sep 2020 15:28:14 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 2C9B4135EDBF1;
	Thu, 10 Sep 2020 15:11:25 -0700 (PDT)
Date: Thu, 10 Sep 2020 15:28:11 -0700 (PDT)
Message-Id: <20200910.152811.210183159970625640.davem@davemloft.net>
To: natechancellor@gmail.com
Cc: kuba@kernel.org, rmk+kernel@armlinux.org.uk, andrew@lunn.ch,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next] net: mvpp2: Initialize link in
 mvpp2_isr_handle_{xlg,gmac_internal}
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200910174826.511423-1-natechancellor@gmail.com>
References: <20200910174826.511423-1-natechancellor@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [2620:137:e000::1:9]); Thu, 10 Sep 2020 15:11:25 -0700 (PDT)
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
Date: Thu, 10 Sep 2020 10:48:27 -0700

> Clang warns (trimmed for brevity):
> 
> drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:3073:7: warning:
> variable 'link' is used uninitialized whenever 'if' condition is false
> [-Wsometimes-uninitialized]
>                 if (val & MVPP22_XLG_STATUS_LINK_UP)
>                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:3075:31: note:
> uninitialized use occurs here
>                 mvpp2_isr_handle_link(port, link);
>                                             ^~~~
> ...
> drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:3090:8: warning:
> variable 'link' is used uninitialized whenever 'if' condition is false
> [-Wsometimes-uninitialized]
>                         if (val & MVPP2_GMAC_STATUS0_LINK_UP)
>                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:3092:32: note:
> uninitialized use occurs here
>                         mvpp2_isr_handle_link(port, link);
>                                                     ^~~~
> 
> Initialize link to false like it was before the refactoring that
> happened around link status so that a valid valid is always passed into
> mvpp2_isr_handle_link.
> 
> Fixes: 36cfd3a6e52b ("net: mvpp2: restructure "link status" interrupt handling")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1151
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

This got fixed via another change, a much mode simply one in fact,
changing the existing assignments to be unconditional and of the
form "link = (bits & MASK);"
