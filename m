Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBZ4OV6EAMGQEA52Y6KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA123E1397
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 13:11:37 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id c20-20020a9294140000b02902141528bc7csf2572480ili.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 04:11:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628161895; cv=pass;
        d=google.com; s=arc-20160816;
        b=Unc2VP9cnwEb4mgVaa4+g/sirCrbOmlyWlp0bON8J3p458aQoBUm7hTFEQtvKPig2V
         4b4p7XMj1PZZzykPFY9vdBpoJqngN3tDukV5SSIVl9OpzMOtUSDOnUPTJy6wgKBmiJe/
         SSEs+mYoB771HJQABgAf8yuCZWvSCK+eHi0EtImjS8iQRwlC249ne4UZXcJUGv5Pec8z
         4zSOyNZmMoRbi7dl96JoBXE5UNP8ChwuBEXLMnoXNCTsSZx9bs1KmiBXzvxHNF/qYOR9
         3c8I7T9hZED8patg7ceZpWLfkcfiaXE1ewntCG0MEjo98xqbeKoj0LE1CrhgR2xOcj9d
         9LVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Bipw9iv7dpfNd2L3aFZvIbeqvClO+muGDTUA2KxSKQI=;
        b=QFQIg9rHV+s1bc+mlYelrZrSCv1jNWXS5YQe6NPzvL26AG4Ai4jig6DUfS70EtNLTQ
         yDh+58XppqLuxWyXyKBtXuHTjo+ri17sAuU2bW7LO0WPYba34nDYPPzIcQGsRkwGOte/
         cEdEjwoBO6HRP3Ik9u18hizG5aDt47MuwaD0Ifzyy4eYVaKUpvCcVhq36xlKd3oJQUDY
         HIOKTJmvv85rTYPPwQqbHX6t1TfHKG8zNMJMt8rNmWIW6qpCOXFbLCV24Md2Me0RZLoY
         jQfTZxUFxSLwUQpzOjJFF6bfDmRoiQINtm76TXV2q0Jy1beoyEBn+3kAAfmi2XrwUGhw
         kj6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=j1EN7yDi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Bipw9iv7dpfNd2L3aFZvIbeqvClO+muGDTUA2KxSKQI=;
        b=fv8TU1+AErU4M/V317bgZyUgmtZ7Q8Tk1Eu4u9X7/ULtKdC4JxqA14M/nYREY8epJd
         YS7KQ0uHA9nJAgbLa4hB7aBKR4i1alnrjEcxmw8JYjjJHrm6usfOiHpMJguYlAlTn5lL
         VD16EeTPwFNGx/D0vrc+efnDQMRm/SWM2eJ7zOTlBgwY5sHJf/XCwjMinFc7kukskv/4
         vIh9YRXi68GAtV6CFhJCmu4OnIo/jVoKoLNQIkh2Jti2K8mSZYR07kS23lIJfCVg45PF
         dLWXyT7qqQWkwG2y/voVGrBvblNcmBMQJe6A+oOYBPHWPCDAPpB93KGpWvwqsdarixSK
         JKyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Bipw9iv7dpfNd2L3aFZvIbeqvClO+muGDTUA2KxSKQI=;
        b=py9E+Mug5VpxALyPZwwqQx7dtprUHnx+eZ1U+ZjB1W+5Xw0hCt1EhawgbKWtyi2Vrs
         +20gcGEF6G9Aosna2KUQUSliiV8rZ+GWxqVurHXrqF67FGpJGPABBQBdwZTBYTE6Yv+K
         NaRTeOSIjobIV4vcTEA+KB30TZLZgRtlFAEP2kcFQvt72rv/0zBLFWIyFZHELef8fOjF
         JKSn1NwchSntmNLViR4OivSgVeUA9/R4M5oKPUp6VZPWT4EKBSerr/POY4h4OEx8rfKs
         jQqRUi75/s2ETuwusg0yAwuxJAS7dueV50qUXojz/0wwRKw6u6O9zdfkptXBx42yPuoF
         OiMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532f5Yw7bwUWjWxMcRmaQ4v5jxkHpLWVhGsaAh2hVPABlZe1yfHD
	gq1FrSAFE737/gxmWDmxmys=
X-Google-Smtp-Source: ABdhPJz0w+jAE0Hprlif9JYbDb0SSGufhfaN3CXsYa9XAp9Mu5zpKrtsCLfYQkETHS+NV3XEylp9Wg==
X-Received: by 2002:a5e:8619:: with SMTP id z25mr411234ioj.13.1628161895250;
        Thu, 05 Aug 2021 04:11:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1608:: with SMTP id t8ls1147742ilu.2.gmail; Thu, 05
 Aug 2021 04:11:34 -0700 (PDT)
X-Received: by 2002:a92:dd88:: with SMTP id g8mr1222460iln.158.1628161894942;
        Thu, 05 Aug 2021 04:11:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628161894; cv=none;
        d=google.com; s=arc-20160816;
        b=p1ZhLojVCBgRrvKYgQaVBjy9cphWa9jVxalM1KR6RapLQKGQUx4x1HyoR/86XtvY9E
         9+g7KakQQxs3bznq0SL/mH0JKd2dnzoEPNy8oPx6cfuo/vCNI+NcxrcxxZlFNeJYmST1
         F/MENyZ0y6XqxMH6Im08mhg3tXXqIc4cF9C44ecRJzm94N4cvr8GHM3AEPevLudbHTfq
         cpPYsXPZWt7KTN/CDrrTicgKaF4pCu4YgoNW6odoIUkCY0LR0FXst0W2IAlm0rPf+iy+
         F+JHum1vzSwhQq/rqLzpSiCc1OedDunWNDIATiJmstuKlk79Hvq7B3DstxMDEKeL3Q38
         TZ6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=H7Gfg1h2kqOSCtljjCenctXs9o/KyG2TYbz/k0+uHlc=;
        b=InFIRi1niFQ/KFy8UvWzQZC/AWCR1USWBww4E5C40n7e+mutkukZcpQ15Iuu8HOnC+
         FRQPdp5+8qL3KC94/pk/55eSk5+9uzEKYgDqbRlmfHJM0sAkabbJBWmGiwbJN2t8mMrt
         98eGGEq8qfBXVWzxfeUI3IN3Yh1PIH5oqKqqWg+SX6oj5p7miNjfV71XknyMK2tmQeB4
         VVhpIhVEZ7ZDRJHNBZy8yAmHd6istbRGKbsSbBOHr1wQz42dgklH4BuFNoqYBpyK92Uu
         VSiUqNmqYCizgjVYtv9NNOMjEpaO3FOQeWJkUnP7V7JKtdjUvEB+pnN9uF0S+m2H6FNF
         niwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=j1EN7yDi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b11si242435iln.5.2021.08.05.04.11.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 04:11:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8E076610FF;
	Thu,  5 Aug 2021 11:11:33 +0000 (UTC)
Date: Thu, 5 Aug 2021 13:11:31 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Phillip Potter <phil@philpotter.co.uk>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 0/4] staging: r8188eu: Fix clang warnings
Message-ID: <YQvHY88v5X/tzLpn@kroah.com>
References: <20210803223609.1627280-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210803223609.1627280-1-nathan@kernel.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=j1EN7yDi;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Aug 03, 2021 at 03:36:05PM -0700, Nathan Chancellor wrote:
> This series cleans up all of the clang warnings that I noticed with
> x86_64 allmodconfig on the current staging-next. This has been build
> tested with both clang and gcc with x86_64 allmodconfig.

Can you rebase on my staging-testing branch and resend this series?
There is a lot of churn in this driver right now, and your series does
not apply anymore.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQvHY88v5X/tzLpn%40kroah.com.
