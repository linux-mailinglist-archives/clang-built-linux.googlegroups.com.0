Return-Path: <clang-built-linux+bncBDJI5MPT4AIBB7GBX6CQMGQEOB63YII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC8A393548
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 20:12:16 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id o3-20020a05600c3783b029017dca14ec2dsf483907wmr.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 11:12:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622139133; cv=pass;
        d=google.com; s=arc-20160816;
        b=jd6NooDcqNsAMclupGvCPaqpXT1G2cnjCSTQL1qBt+vLLAj3H3h7DkWaEG/h0R8wfl
         ipxwNO3HObwHlyNbX9KFm6FDe/KH04Ea+apwV2TNgitnXd8t76OkzNxuFgvnuNvZYMSn
         qDMVLX5iZd9qZZf3KUBQGBXzXGSW/IvsPp8q9rn0g2YWFRomCc07EBdGUDNqCHFNQ/gX
         Hq3yonyXxtO3zx4q8wpXc8UVJd/bE/LBr/2q6OqYKOiDHm3RcZjHsi1EkFgmnLjWaT+2
         pVUcRU/wfORjCWldlj45vaYWJOXNtlWPp9wYrHCoSKxkj66qN5im2eBVHdgTMebXNfXp
         sjjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=IkN9HCAlNer5RZGcHdmuvQAXb+g2yfG5sSRWPbjejiI=;
        b=h85szXeSoCji7QJfKgTgQxLIOtcc7rI49usPOUSeZAjCl5EIkLraLVb2eYUv12MXji
         g1q2EY9sGnNPC4pRhkjwUIcfW0dLQWKvIzNXnrmRb/am3ykNcJeUBA7Jn7nPmyvoqmCj
         9G9Qsk+ivIOqIUGAbACpWW0uejXgZpKV8BRf9vdzTdSSdoN0oYDQ/wH1zRqNkdBKEEFY
         n6QJJ+iRTwc1pa7j1rJuDPTjO9q/rsmUZyAQ8dp0WYAdZWGn2v0wuZqSmOGB/uAEtH8X
         tXtdjfPHaFBrlJ+U+WG+T0zvWnjv3d1oWAXJZYpMLGew6XFN3XhIgl4QQxiTqgusIxlt
         XSYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@netfilter.org designates 217.70.188.207 as permitted sender) smtp.mailfrom=pablo@netfilter.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IkN9HCAlNer5RZGcHdmuvQAXb+g2yfG5sSRWPbjejiI=;
        b=P1wyeMPM4QinOeTHxsmOx8aqLCCSV6UV9Akc+6qc9w2lLE+875+dryZlNgly3fskbE
         5ZVavqTQcF2hUD1kKZKpSIg89YTBQPuiaVs8e3J/8lFamOZXGDhIwU6kAEl7Qb92gswL
         w3YwwVGwIdcHAS9KxnTuNpVWUaDLVCokqW93/6npbWly541ULunbxxgEDvt/eZBZH1OW
         UlJgtacvhYlvV3RDPGoJtS/VVPzKRJGiXsZATqs7n1yPjmxQh/tOoQvZ/aJ3NwA0JKlH
         eLFdYrcfinXjVxJbQ7vy6WbUU5iqH6ixeFRDL3+zzW2NPYRy/chf4u5X1cbH3518vdlc
         d7hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IkN9HCAlNer5RZGcHdmuvQAXb+g2yfG5sSRWPbjejiI=;
        b=PZbcaDiJ0fXIw5J2lHnZyMTqw4bZr0t3qV7OfDnpJqJuusjsmnZsILSDrTTQjyu4xO
         oAxllJBm8hSA5Wie98hq6Upxj69AGoKp073EM9dL7dVcoJm/IMdCLauirW+bkVYzEX1q
         h53aFhuPX8c8vaf4xYb1m/WvLXILkftwAJG/gPUnQVvzhLGbgYvtMh9IEdFUnv4lpoqv
         vPhM0WRqPLkYTrlBk1OdXQQ9Y5Grfl23P30eCm0veGxCbdR1xLLJVxCJ1c9M1M2eNEDG
         0dcoMBHKpYP1W8vG5lYLS+2UlcunX2J63dvTFRlFIXlpMB/Gsa/y3GaHnE7+/y9K3Bjw
         W78Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531k4ul553ySG7mQ78+lhrV2ld/AIkQaw2ivV+1CVA0fsP3IUJGg
	6tKbEQUYHwrvm94cgrr5Yes=
X-Google-Smtp-Source: ABdhPJyxVByUTwpzM2RsHDNvrC0ktNW+eEoEogl4PkXh2+pC20nxHKxvlBmjXCR16zMFrUe0n0amIA==
X-Received: by 2002:adf:fccc:: with SMTP id f12mr4723127wrs.103.1622139132908;
        Thu, 27 May 2021 11:12:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db50:: with SMTP id f16ls959121wrj.2.gmail; Thu, 27 May
 2021 11:12:12 -0700 (PDT)
X-Received: by 2002:adf:d20e:: with SMTP id j14mr4637950wrh.270.1622139131925;
        Thu, 27 May 2021 11:12:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622139131; cv=none;
        d=google.com; s=arc-20160816;
        b=LXnZfFKo2SUnWSrDp8kKRJrMilyHKEzvxQgd7MsBxRGYUcaMj9u+qVXwfvB1b0A742
         B6x4Vv+T15Ep4Pa4sNtQT9RHCDFSlbwNShCk80aMfyANd/l5P/pRBIjlVo4book021Ca
         BC0VOhcJapJoWghFqpt4BamaV/nAxZqSlARpCTTDo5SVkXM4HFcJ1HtJdLaJ/FDMjqtn
         13ZZKCPmibCdLoq9csMcTDZXM6fY5NirhdHjPn7dSjpkSJHiXl/f2EreV3e+V5iRbGbW
         TQENYr1rtbh8vbUnEzK3F4qqSWQKKakhbziku7S3SFocIIHq3zuHl62WSIEe0e7zjxXv
         35Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=jSFQLdfYbhjZt30Ccbg6nQINgPgXRYrbPjCsOZop9oI=;
        b=gAcUELSfLGbWAjiKqph2n8ew1g5e2xN5QRsvsQa1DnP7QmepoREbvaiAAO2KIUQrcF
         pMqma0dEvGB79kFx2x1yA0WIYpYrFHBObY1G8Z1lFNeR+KjpH84YZihNE8EejmtPmkX3
         s7KBduzVieJsTmI2nlZ3LH+OkWNylKQybuDhd299cV1wrC+X8ogSwL9AV61MFsA2faRn
         uzyz2UvmY6+8NZXLpJm/MmpG/7yc8GvzKdMdPVgYZACcnDXQM1WnO0vt9tmjZlX4/+3R
         eCQEFQgPTRwogOgfoBBKRqxdg9TvNlhuUj8DajuhCWEkn+SUujbRXA8IgQLWZI6KotYi
         1iVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@netfilter.org designates 217.70.188.207 as permitted sender) smtp.mailfrom=pablo@netfilter.org
Received: from mail.netfilter.org (mail.netfilter.org. [217.70.188.207])
        by gmr-mx.google.com with ESMTP id g18si185069wmc.0.2021.05.27.11.12.11
        for <clang-built-linux@googlegroups.com>;
        Thu, 27 May 2021 11:12:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of pablo@netfilter.org designates 217.70.188.207 as permitted sender) client-ip=217.70.188.207;
Received: from netfilter.org (unknown [90.77.255.23])
	by mail.netfilter.org (Postfix) with ESMTPSA id 2C00864502;
	Thu, 27 May 2021 20:11:09 +0200 (CEST)
Date: Thu, 27 May 2021 20:12:08 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: kadlec@netfilter.org, fw@strlen.de, davem@davemloft.net,
	kuba@kernel.org, nathan@kernel.org, ndesaulniers@google.com,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] netfilter: Remove redundant assignment to ret
Message-ID: <20210527181208.GA8886@salvia>
References: <1619774710-119962-1-git-send-email-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1619774710-119962-1-git-send-email-yang.lee@linux.alibaba.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: pablo@netfilter.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of pablo@netfilter.org designates 217.70.188.207 as
 permitted sender) smtp.mailfrom=pablo@netfilter.org
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

On Fri, Apr 30, 2021 at 05:25:10PM +0800, Yang Li wrote:
> Variable 'ret' is set to zero but this value is never read as it is
> overwritten with a new value later on, hence it is a redundant
> assignment and can be removed
> 
> Clean up the following clang-analyzer warning:
> 
> net/netfilter/xt_CT.c:175:2: warning: Value stored to 'ret' is never
> read [clang-analyzer-deadcode.DeadStores]

I overlook this small patch, now applied to nf-next. Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210527181208.GA8886%40salvia.
