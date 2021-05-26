Return-Path: <clang-built-linux+bncBDBZNDGJ54FBBJWCXKCQMGQEXSUACTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id AB59E3920D2
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 21:27:35 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id i33-20020ab042240000b029020adb6e9ffcsf1206741uai.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 12:27:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622057254; cv=pass;
        d=google.com; s=arc-20160816;
        b=i23aNvQU5eZiggEJpWqp7jyyIBI5xNY13YbzxSCYsRgagJPVQyQ9nVaUE3ES0GF/9o
         xBew7j+IaOdf9rYUPG94qQ+XpwMCFAE5kL6MZRGHWjpqo6dOjdcwcB21ZwY+3h7MHAmw
         i9e3jD5tSIrjJ8aE2SR+juBG5ktNC4YJbSoI5CcSngGpv1JRJ+dVHlJ0eu5YsrskR1Ck
         EVacBKlon+n7Tm2dwpZCHYw8SscqLdqQzJlYGKlwXRAj7lX+Nk6o+W6TMCnDUxv/88V2
         KKV5/xj07/p83Hv91DG50VzfY5G4eQJBCIX1IPyLbsTKY0M2Q5MGUNHMVDTHYPjJcqQ3
         tjGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=nTuYgkGhlzorkLMClMFcJ+SGe6IVqwFrfdwBcsX8Lh4=;
        b=PVuaLHk7Tjsz1EqYUz8TtKW+48rW+ShAvC6+F5VhC22+q9ZadQcq2TiYS3j0Lw0U4P
         nD6CClSav8Do9fDQib0nMd+dpUETPZzN7y/xUnPxWqU56dLrwS2A36PTPZ1H9Ihshvin
         LZine5sJep+VcrSRj/wU7ZqrGXO36EkqH/cC2hVt3oc6Jg/ozfuYlh7nHsK/NUptHiTL
         76efkO6mVwHN/gts2WtJO6kPz7Ck66Vzj2+R2zBU8KatZhqbqmcrFGcvnCrsS43X1D/Y
         Sn7kzZW0r/Vp2BnsCbC8oqgpB1euX8zvA1AK5QYvvq9MR3Rr7POtor3JQ6MbcKtsviXj
         ko5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dkrT6B2x;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nTuYgkGhlzorkLMClMFcJ+SGe6IVqwFrfdwBcsX8Lh4=;
        b=UFL/XW7JlkLDWz9zPM5iExAx6bDcVBu9XQOvj9kThmtwcEf5InLNvuhdERB/Uyo7R7
         ECjC9F0Cu0hPrEMct3QwcgXZls1fnCn9AfEk+gVwfNwPk+MBacbkVAB21quA4abOUTYR
         S1TJAKBx/KwymhFNwC98d9vDL0Fl1q9qc9QaU31gE4f0BrOuRFd+0ZJqa9711jcyDMTw
         eq+JI3+FKSNI+0lOHTRGkReQ06q9h9V2oK7QIDVb5EJ7/p2fhFzUDkIQrdivoLk+Dbz7
         6++oaX7pN4MTe2tVBPCphuWDrACnUVnY1uHq4KTrv+9c0scDqKtL6vY7UpXSLYRzuVJ4
         0T3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nTuYgkGhlzorkLMClMFcJ+SGe6IVqwFrfdwBcsX8Lh4=;
        b=MrE0jTyZKjGgCXmZEeZOCq70BPJjejTIwG5iMl0iRRZ+DjvEax69LBBLq5KHu99k9i
         PKeEJRBWmDw+RAbq0OntBvrx33Xj/hgYLx/z+P5Ir9ymOqgxZbI6RfsGjl8TPmUyIsSA
         FavoVor8JkT51p7RljIHU+GOg3YbiC0HxHUU0rOiW06dcWtz1UeD6d50gpVdhS5KzCES
         YkMEbCL7cPTp56bE76iPOrqrhPSbcrzqksz0s5WikpMmCmqSa2CTQ8URJt4WdutY3TWz
         PxAJrgjT5m1IPwhUy5S1kzydVQvxGFSPoTCIiyvHvQdZBEd5dWyFJ9T6ZoTrXlM3ElKK
         DRiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZYHt4+ETxnbg3FeNCWGOXwNujSd8TMMH5X2R7lwB29Pg/Utw/
	vtGwfkNlHq1U0TBJIWJO+g8=
X-Google-Smtp-Source: ABdhPJysoH0hqynRuP0SR7JU/yPMiN0QmlKSmTv8dk9YFVUx+J4MzDLTcH+/obd7kLIfJ7sCitXxqg==
X-Received: by 2002:ab0:26ca:: with SMTP id b10mr14635505uap.135.1622057254597;
        Wed, 26 May 2021 12:27:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:248c:: with SMTP id i12ls144186uan.7.gmail; Wed, 26 May
 2021 12:27:34 -0700 (PDT)
X-Received: by 2002:a9f:37e2:: with SMTP id q89mr35329830uaq.24.1622057254056;
        Wed, 26 May 2021 12:27:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622057254; cv=none;
        d=google.com; s=arc-20160816;
        b=fr2Sx5XSGOwlcekCCR4MAL90fdvOpmu3bhYp7Z+hn1MS1VFvatq24Bdm5R2h9wvDtB
         Eeqn7/StIqmUzczr10/E6/L3BmQuMIDRfeCwXYqehaKw5tDLPw2n7zs5lBQ4QM68mfry
         YMvjthcRDJ63Fzpjt9QXn/9/qC0ZLW31MQzOdYO+vcM22XkMD5XLHUwotAVfWm7QHXpd
         ZhPDdRfkK8pjAe//grzcU1DKJIpHxaWuJ6bwB+FIDp0DUxugBuZTdVli2z0v0XgrEVOm
         fL/7N9kiln1sXwk7M7YKQ4TohMX+NvmLtKvACW3BqtaZ3iYdAoDw5baUABe171qoZMZj
         AUfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Okg8OrTi29JIRwCKEJMrBTJrvIrtDG8bkRSXnItUO6A=;
        b=doHXLT3Uu1nzC9yXbkKcINSP1FXIE3OkhmIfC5YC7Ou8o/PweDhdQDBvuG//Zi/WUf
         nlk5aDJWcF/3JULP5E3Or4waXJWtBc2NxXr6oYX1Say1+8LHIvWvX4fP8ya4YCj5uMVr
         6sOFxRB5zSaBfbIm0goqGGctnXvoKfr2HQvZjbZIIpZ+fPgAs5UkOW2+Jgd7hRuRAleG
         o5ZBkiQTx7FJprZlgaL80PtyuSuCO8NkRoKqy0Lf5bJMYz4yAXyRbVCYOjyaIEd6zZ69
         f1fcG1IfJKVIw8M9d4kiSQRZQeGAZrxoYB3i4jRJelwHh606N0kPMG2CLpoozJax8g8U
         hRNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dkrT6B2x;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d26si2234vkp.3.2021.05.26.12.27.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 May 2021 12:27:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C0E65613D3;
	Wed, 26 May 2021 19:27:32 +0000 (UTC)
Date: Wed, 26 May 2021 12:27:32 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>, "David S . Miller"
 <davem@davemloft.net>, Nathan Chancellor <nathan@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 0/2] fixes for yt8511 phy driver
Message-ID: <20210526122732.5e655b9a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210525203314.14681-1-pgwipeout@gmail.com>
References: <20210525203314.14681-1-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=dkrT6B2x;       spf=pass
 (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, 25 May 2021 16:33:12 -0400 Peter Geis wrote:
> The Intel clang bot caught a few uninitialized variables in the new
> Motorcomm driver. While investigating the issue, it was found that the
> driver would have unintended effects when used in an unsupported mode.
> 
> Fixed the uninitialized ret variable and abort loading the driver in
> unsupported modes.
> 
> Thank you to the Intel clang bot for catching these.

Fixes tag need work, the hashes don't match the ones in net-next.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210526122732.5e655b9a%40kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com.
