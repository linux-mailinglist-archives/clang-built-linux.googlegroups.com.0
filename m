Return-Path: <clang-built-linux+bncBCPLJUXI24IRBPPMXDZAKGQEEXHUIII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id B38FD16586E
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 08:33:17 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id t6sf1364302wru.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 23:33:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582183997; cv=pass;
        d=google.com; s=arc-20160816;
        b=tIbEiaTuhGNzBRDN7F2ZwUNPFMcHxn5icARJk3jVoBLxn8ybh94n+piE15iumcj2ry
         xkyf6t6B4DHmm23StXnNVwA98vhWyISvJwgc5mT5CBB358XkmOsNHdNl9WLBgSIvhzM3
         nKWHq0arGOtGwztNQs8V0mfmxacja45L+/WIhcd9sZUIpbVBLRbu+XSQlbBXiokVQVM3
         qU39Z/pmnmXYRb0tDJX+FeWk4YYHruGX7iPVbnoGDlFIS//OVMRPERSN4k1JVkkvzjYZ
         x5Umoz5slATcLJTqV9OhkA0CaHCryf3/IOJ6Qjgen7HMXYSYEFS4LnLthCQlwX/oOzMH
         uDFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id:cc:date
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=qzq874dwTKFx13O81ujuKDJKrv/1MsaUpS/BtcMp2kE=;
        b=XrNUZfD/ac5U+kX1DugkQ1yG24pRgy2TRlkPXqsXOkWqSke9YiHZbuX9cWUvYQLLXD
         O6VCQY9mlBHQ34Goj4kJWSjIVAbWxqdhXlO3xCxJTpq4GNEiUBwjcBqbNo6rSsf/Zdu3
         Ao8seB7wXwm3VU9lwnnR5lEWrVxwEcpkkL30JKaaqSqbm0LIai9uBPVR+SWX+jjQrVXp
         Lfs5UbFFJRDV8zZKJiO2D8MRp1dcEPtb8ppz57f9rv7yXwMmumix1PCUBKvitpW4/aoe
         I2Qc7XqqVeFeH91DMrnXBmPxwa03llwq8TtcQQbA33l8wyBJBtCZiKrdnxblSqQ2kBmE
         OWPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of marcel@holtmann.org designates 212.227.132.17 as permitted sender) smtp.mailfrom=marcel@holtmann.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:date:cc:message-id
         :references:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qzq874dwTKFx13O81ujuKDJKrv/1MsaUpS/BtcMp2kE=;
        b=eWEaeqbxj6c9g+rgbgUevUrQpS308xRtZD9iikv4PLJxhA0FFn1DvofQxymNtW+B71
         mvB1kbLAwqgMr2Xm69jeygwA3yr57QfgmleeAZ+HBDT5CxvnyXAq8zCcq5KZApSKWIyN
         DBLG0FcCUURgxS0Lq73TrIIDlETo2I1e91hMvqYDpDYqZxf5u3CX/3nxrahR4oHv/2JQ
         4ClxxlVZ37IjMli7KoSPuZlhzJ9eopRchGtrV0TOEmpOp/sKhNqOomKiIRsrIerIJqwl
         vygiyR9Zt0nf+b7xcerN2qXMRVTfLGcpA/pWamqWG/HWdAesVjwIy/4ESHlX3tDS5Y7Y
         2Img==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:message-id:references:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qzq874dwTKFx13O81ujuKDJKrv/1MsaUpS/BtcMp2kE=;
        b=Oq28STCHFtWrwjeSMmpIuj8tXvWQ1VzHZem9/hl4rMfY3WCQQQBl4PKtSsO/GOfcZd
         ppBPYyugJS7KZMM3Uqq4G95/ZmYaxC6GYtBpnWMJSsLVXoMuqL9m8ujHsnUoGNTy6Dvm
         vLkcV7FzfIALR+wyYEdhh6YNKIfK1aykKv6kZpoAPzP5lmS/gqib+GglVleQoeeMeKrn
         aol+z6IFanBwXd4jWpN3Ii1VmvjkSv5Fii3YkIGiTlGT8lqw3QRmWLQJ+bcTfslbGWz4
         1vpkJKlzbvnbLOyRKx+4aTOXrBfo1d1DCrUPgldShjnCggwTkK/K4t1nrcnfo9TLjdIM
         MXng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVRzAAjaHdb5S+oUbGdWI+Wq3z1L7mj+GtJxafC7lHCkbYcJ8kI
	asBO9X5NuuNa7k9lBLdCuuo=
X-Google-Smtp-Source: APXvYqzJPtDvwJ2v/aHk8Lu5hjvzOuJ7oznasAKzRKIvoB4/SVEtc0Ry9mvaqxlGAIMWFguC0rSzjQ==
X-Received: by 2002:a1c:1984:: with SMTP id 126mr2793690wmz.78.1582183997264;
        Wed, 19 Feb 2020 23:33:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9886:: with SMTP id a128ls467671wme.1.gmail; Wed, 19 Feb
 2020 23:33:16 -0800 (PST)
X-Received: by 2002:a1c:b603:: with SMTP id g3mr2789536wmf.133.1582183996717;
        Wed, 19 Feb 2020 23:33:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582183996; cv=none;
        d=google.com; s=arc-20160816;
        b=WTtCC5vR74oR6RiIqclYHSCZbudatnE9WEUh5w3CXR2AX7U7nw6MdL/VJlOxS+pRs4
         e394k4KEnPg16L3feP9yD1CH2rVPzwXFtM8YmYnBtBhtKtENORfPstJA3ToKAX9RIH6r
         uqXTDldcV/8PWiEmIa1xb0tbPZVHBVz8cFp3SwQieG2h6oQToGPnNI34ZvK47da2rjD1
         BkD0voXhPOvn9KdNvOVitUGgVajW/R2kleXlMDoRNmQSjGsvaeH+bkiFP6aQ3HSDJo/q
         HuZqYZ3y9ZzLqhfIn7yZ5bVT0ut1CXJM9Xs6jG+dGns8sGr0G3v1nJ6XKc54T4jHjUQH
         Ub0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version;
        bh=EdC/4Tky0wQnmdLUB0wJAdXsuydXLeG0+It0ZMqJRzw=;
        b=w/h/wV6xRfkHMgTTwp0fCdwNvFDYIpYzAUkitOS4wQXGIHQGyMDuBbFWBJuIbgUXfH
         yFj+YhhgU1+z+rEXaI7efk+bMCGXcgxTve/lF6Xv6AluNIKSlGsA9kFALRus9sLkA2v5
         lUKLYwry0wPaNlCCryXaIR73kM2v5UXZtjjkUxUJ7EDtk+Txpl2RSG/sVbHSZS3hQkNU
         whJo9KzgkyVA/N/P86dOQUrTd//if2M3a9XrM5sFa/Bhf6Wo06AkxsD1Clr8csxt38zM
         lkLiL+VNzfqyZtmAtuXZ9oY8p+CYKkZFNZj/fFufR4WjO2plplVg8UYEP9sNIUM9l7+9
         OwGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of marcel@holtmann.org designates 212.227.132.17 as permitted sender) smtp.mailfrom=marcel@holtmann.org
Received: from mail.holtmann.org (coyote.holtmann.net. [212.227.132.17])
        by gmr-mx.google.com with ESMTP id m2si104580wmi.3.2020.02.19.23.33.16
        for <clang-built-linux@googlegroups.com>;
        Wed, 19 Feb 2020 23:33:16 -0800 (PST)
Received-SPF: pass (google.com: domain of marcel@holtmann.org designates 212.227.132.17 as permitted sender) client-ip=212.227.132.17;
Received: from marcel-macbook.fritz.box (p4FEFC5A7.dip0.t-ipconnect.de [79.239.197.167])
	by mail.holtmann.org (Postfix) with ESMTPSA id B296ECECDC;
	Thu, 20 Feb 2020 08:42:40 +0100 (CET)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: Re: [Bluez PATCH v3] bluetooth: fix passkey uninitialized when used
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <20200220111711.Bluez.v3.1.I145f6c5bbf2437a6f6afc28d3db2b876c034c2d8@changeid>
Date: Thu, 20 Feb 2020 08:33:15 +0100
Cc: Bluez mailing list <linux-bluetooth@vger.kernel.org>,
 ChromeOS Bluetooth Upstreaming <chromeos-bluetooth-upstreaming@chromium.org>,
 kbuild test robot <lkp@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Johan Hedberg <johan.hedberg@gmail.com>,
 netdev <netdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 clang-built-linux@googlegroups.com
Message-Id: <5E3D09AD-23D2-4D1F-ADC5-447B948002EA@holtmann.org>
References: <20200220111711.Bluez.v3.1.I145f6c5bbf2437a6f6afc28d3db2b876c034c2d8@changeid>
To: Howard Chung <howardchung@google.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-Original-Sender: marcel@holtmann.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of marcel@holtmann.org designates 212.227.132.17 as
 permitted sender) smtp.mailfrom=marcel@holtmann.org
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

Hi Howard,

> This patch fix the issue: warning:variable 'passkey' is uninitialized
> when used here
> 
> Link: https://groups.google.com/forum/#!topic/clang-built-linux/kyRKCjRsGoU
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> Suggested-by: Marcel Holtmann <marcel@holtmann.org>
> 
> Signed-off-by: Howard Chung <howardchung@google.com>
> 
> ---
> 
> Changes in v3:
> - rephrase the commit message
> 
> Changes in v2:
> - refactor code
> 
> net/bluetooth/smp.c | 19 ++++++++++---------
> 1 file changed, 10 insertions(+), 9 deletions(-)

patch has been applied to bluetooth-next tree.

Regards

Marcel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5E3D09AD-23D2-4D1F-ADC5-447B948002EA%40holtmann.org.
