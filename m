Return-Path: <clang-built-linux+bncBAABBAHQYD6QKGQEWOHHUUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8AC2B3082
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 21:03:13 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id u129sf8970668ilc.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 12:03:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605384192; cv=pass;
        d=google.com; s=arc-20160816;
        b=sMKjv+WwUcpUkuMsQnI1pBoYcBJCt5GQNt8RHfkZ3in6KWYC37YybuSyYDK3gYPmrA
         qwXmV5xDC67SdFFNLz4R60+LA9eUiMjWq+jnnNnFrs8Vtmmw679g9e6k0ezAiI+0AkY3
         7y/rHUrsjp1e6/r4oESg/f42gRcA2+KVuLLJQMliPkOr2gomW2M9WNifHzRZx0ElBNBa
         2BssNd3eGDQc6giwdqhZON4SKBZ9jGz2Bb8XgdUadGes58Jpcxr78RWq7UDNDKnsB44b
         73hn/kf8hdxsrtt93MQOrDab2V7ykLrWCB74e7CCokSDjHK1c1PC/dSN1FLzH7GrwHWE
         qlsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=dngd94NTV7xnhePlTISiRRTnMDTQWo4iVBBHot6vUJk=;
        b=szywTMqpW+jZY2d+M4GwpIHzgQyqnMq/JNSe8TnHPkDNlir9DwbThrSPuvsz7GmdgT
         Ys/Oh2/a9a6LrPTJpd0LuECJ/bNJt5l71NoPc5XCB6huKa3q77CUYJG0OnGeH1DE0GJo
         ftzTfBvWklEdtERR2R8caFff4FHRN3s/ngT2hj952jaJVHK4NnYA/3v6rnMIMzzZK3ax
         Qn58+s0EAg+wBbwc/dzO8EeIeQrSm5+3hZxUz0r6+0Ty37xuuMgKLw81OwFWVEoPwYP7
         1/oaPYsXA1l95K4JFDPexxkyTG4wIvMUnUkDVuo9KOKelmFRMTxJaob5WJ5EtY6jCNfI
         1rvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VpzcMYLn;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dngd94NTV7xnhePlTISiRRTnMDTQWo4iVBBHot6vUJk=;
        b=nAFN0fAFJtZ3cmTXcZm9Bh7c7kEdvJjzMrYcOXQR3pUw3+yMcIlPNsUidpxtxJW0CB
         pMWB+s9vNRKLnrk4FiramA6T6/flxap0GVUjdTwA1BF+/Ysnhk1ZkjXZEW67C7mSuMo4
         YI6pFF0cEf3gp8rbdVyRlg0S5jK8WFI4CLhPwGx96ShjHEtlVIrvexdiV7TCnNG39+O5
         d9l8ds0c9nvFOcVl40cwNbqnfYm0JlUM7yniEnQR7RRIDa0mC69ISaJHTRTjtMjZ8+P8
         4HAVI52Pt92Rb6WdN75XsapGyeNQgOxUby92kOba0PPYlCnh0Gw0JE3Jh0Xn5VmnDTa6
         PXoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dngd94NTV7xnhePlTISiRRTnMDTQWo4iVBBHot6vUJk=;
        b=N/qSARc3Voa1iqr0ycy2YB978a44gYfW9pt3T21TH4b6JVLlZNWM932iQXf8x8lCXn
         DWWk8j8xAmAIK2SMBBLoTw0+LE80k6iXdtY8ZnqOYUTSnXoj5e8cO3ZLc9FGu3Ry3PV5
         nuHU99qlodL3OLlUUGA+4pqYIZ62SHH+HTh6iX+tQstMaD81hLxRKnNjrjikz1PlYKAe
         6aGVKFdE2YjgLVcIHYB1GxbltZp5zgPtGrQBzrNZDA6znojq7OClOk3ElqfSGt7gtSl9
         z/Gcz16r1D/HoGTkGzzJrA5qXXkRCaZgAAGwOAt34cZAnlsAGHBFZNgoxWkdEAglGn8R
         +Efg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qkGtoRdNa/lFQ3xs+vbHGcomQGBKCl6oLDmnCBDhMN4aAlryr
	5MFBkwOGhIK8FqsYDjkhLq8=
X-Google-Smtp-Source: ABdhPJwgbb8WIzl2qgIB9p7BUDQnM9LsYV9nrAfhu5XHqwwy4K+BxuWUMU8L6rc8XQoYE6JtBeWXFw==
X-Received: by 2002:a02:9002:: with SMTP id w2mr6216318jaf.111.1605384192558;
        Sat, 14 Nov 2020 12:03:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:dd0b:: with SMTP id n11ls2262900ilm.6.gmail; Sat, 14 Nov
 2020 12:03:12 -0800 (PST)
X-Received: by 2002:a92:1306:: with SMTP id 6mr4123487ilt.87.1605384192272;
        Sat, 14 Nov 2020 12:03:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605384192; cv=none;
        d=google.com; s=arc-20160816;
        b=fLArunXE2zjTLQZ0uobkusIPtqsqV47Y9I8oBrc6UF0nflV6qi/WQzbLrjar67xv+k
         EYkxzdMxlWDRmqTM/HWiApZj+aA/h1HY/W18Cty+eGCrKvebxExUo7d2JsMv2qVCMqPi
         Gjz1x880brr2hFxMOOXi+N5MX1GJg59tgGL66zZ50NkRBE9Nu7zxbdvDHJMDLH12Ccqt
         6QRs8ojzdnPYNIzknqUVMPjiwFJdOTJDFDKfKY2HNqRRNr7CpeOdhsJYxxcFEFOknRaA
         sJBR3WDa3dcPQ9011PAGlDrGhlIAWv5ndiI/6pfxmCNhVYzAFJs3hfIrd9d1L1Z3cciU
         IQuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=4rNpC1mqb0EapCVYkzJfFtvA7gSga1tFbACtkz9RIeE=;
        b=iPQDO0Q0qObRT+hRbURthLGJXLv9+6GL6Fyh+t1T/b2+W6MLHj2Iy0aSHH8U6XVV2W
         ogWHryHAGxNzw2co6YrADEoLTUYJsGx0EeGVWpBt0MiBIUi0Fh9RbG8gGjiOFD9BTOv9
         wT7BAEohTgR/LihUYCGUHDylDftOUYH40plCn/Vt7YSTHiRaKFCgTDWKiAa7EiikkYLt
         VqAaqYW9D98BMMn96zRYFECDMoskoxWFu4uhu8SlGuHj5D7P4Yxjkj0s/Z3waqYT3CbF
         TBFtHcVvonZgbdHFFiFSPXYFVcA2/NrmaOSlIuTqO4N6NmodrSm0shKU1PbwiMNoozJB
         BFtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VpzcMYLn;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h8si758659iog.4.2020.11.14.12.03.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Nov 2020 12:03:12 -0800 (PST)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (c-67-180-217-166.hsd1.ca.comcast.net [67.180.217.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2C5182231B;
	Sat, 14 Nov 2020 20:03:11 +0000 (UTC)
Date: Sat, 14 Nov 2020 12:03:10 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>, "David S . Miller"
 <davem@davemloft.net>, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, Hideaki
 YOSHIFUJI <yoshfuji@linux-ipv6.org>, netdev@vger.kernel.org, Arnd Bergmann
 <arnd@arndb.de>, Tom Rix <trix@redhat.com>, Nick Desaulniers
 <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ipv6: remove unused function ipv6_skb_idev()
Message-ID: <20201114120310.0378d56a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201113183649.GA1436199@ubuntu-m3-large-x86>
References: <20201113135012.32499-1-lukas.bulwahn@gmail.com>
	<20201113183649.GA1436199@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=VpzcMYLn;       spf=pass
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

On Fri, 13 Nov 2020 11:36:49 -0700 Nathan Chancellor wrote:
> On Fri, Nov 13, 2020 at 02:50:12PM +0100, Lukas Bulwahn wrote:
> > Commit bdb7cc643fc9 ("ipv6: Count interface receive statistics on the
> > ingress netdev") removed all callees for ipv6_skb_idev(). Hence, since
> > then, ipv6_skb_idev() is unused and make CC=clang W=1 warns:
> > 
> >   net/ipv6/exthdrs.c:909:33:
> >     warning: unused function 'ipv6_skb_idev' [-Wunused-function]
> > 
> > So, remove this unused function and a -Wunused-function warning.
> > 
> > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>  
> 
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Applied, thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201114120310.0378d56a%40kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com.
