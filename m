Return-Path: <clang-built-linux+bncBDGNZTVZVAFRBMG3377AKGQE3YRMFLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8582DA3BC
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 23:56:49 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id x14sf3291033ilg.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 14:56:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607986608; cv=pass;
        d=google.com; s=arc-20160816;
        b=uH/TpQwRgyZQN6aeuIfDYgoPXB7sb4moAmWPFpS3/yWJtYjCz41SxDKy1JNk2Iyokm
         wkEldw5rlOjqXwuMpiy4H7gMLwx/etOsJnlQED8sz2bQ0/KZ+G3EK2JmEhOUL9fwGJ01
         g/U3I9w41EasMhVFs3afJfboBJFZDERkMDKb5drxv1VH8EikaLyXTe9xKAVhA18iOEM9
         MUp+0GPNPjladmxqnHwSI7LEPZgHJRi8M2mFYzXRsqiz4Ip+R2zF9+tQyu7LO2jQkVmC
         w8LIodhrcZpSVtkI7VIRMcoVe+iJ2gxS6TcsSFoeY5QWQkcctzTL2C5XgO5DEAzIGdGo
         7YQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fKM/WpHwPrXO0xOya9Tm380K4Gn7ujAieVuEi+bVq94=;
        b=V4jSh7jxm19JESr3VG7PrcG2bPWOklx2kkHMSqRTNg2Y0FlAI+thCgRJocUaOTICLW
         5RD3qKWKce/k0g3as0X2HqGI0er+8lhGX+g3UaMJaDwJx4CDWnBYJ6ZIqzAYyiJY/9i2
         hNszKSOxu1Q9MsA2IgUeeyp/kAJfyD3jYWIP1lTFFnmdP+y0McvD41nyTyEUTcpKeQCs
         D/DDRdQcQ0OvKznYeytaaY4erw7+L3g2kJZpgljV5bP1KJcIkCeQAd5+kiyXBiR/D8Wa
         t9+GlgypnwFp407TP/7IYeQ/v4N4HTA+KKwwjIYzedrs7/SNCOrzN0dVnoyaiCdk+rCA
         T3aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of robherring2@gmail.com designates 209.85.210.67 as permitted sender) smtp.mailfrom=robherring2@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fKM/WpHwPrXO0xOya9Tm380K4Gn7ujAieVuEi+bVq94=;
        b=EK9KI9vqAIXHeRifebeAwSZ6i4NwqJIsT5HccX1X3zgm4HnoAilfBMqEKhScSqfSFl
         U5PMNfR2V1jp6sGC0BWKZU9aNoyYRiJmP2dQ+t57odcwsdxOR/lfSNTE5pyZb/J4/pwD
         hOHlQFLX7KZZPpXKjDdYcaMx/6v4iJ3nbtSCO7BT5sJup3pul7vMLiLT+95D1NqixXwF
         jUZvvWc8+zFuOMnIzZfQuxBm83Hoesn92l9vfIK4jEQSkqLz0HVaVlfcAe9I2pKztWad
         87l6B0N8atfaEy0JLdoIQ9Ut693Pz/NPJa2eZk6TRp7Sqe75aLZSMRFvbeS3dZBCmZXl
         osbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fKM/WpHwPrXO0xOya9Tm380K4Gn7ujAieVuEi+bVq94=;
        b=Tl66GDWZphIkT15PxykqfzkVNlXi72QCBgdT4KDdDLGwU3kR+YsvQX+UaMZ/NFv0F0
         a25ItXkJsce96NcnnRfQ6OqYjApDh91Wb3R4TqIFtIDmDdReRMcf/89EenWDJ4vgfSXX
         K8EuydFa7qFwMsQuB/8UWosvDngQsB66yBYy40uKB3o4Bs2RZtuKLW7A1qNhjgJicrUa
         31JqMwph/PFMMXG6oakEPzeGYxUWlkGXWd9xTyzpuLPqyCy88DP40s0BfP2adbo55Pv8
         SADRwB7yhChAGK3iiKqtAHn6szxvrBvhLX4yfcjzg3cbiSxPGNt4NqXDGja7usbGYcQs
         RWxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gkY11pInUSQKlQtjhFDv11LxLnmSWP5wp/atiW6gRlt43Bq4y
	eCC7XrPHHrw1Rov5H5PoDws=
X-Google-Smtp-Source: ABdhPJxo6IU57FQc94oFb8P6n64P7hS+7bh5K2zW5PIGzbjbOdj1uh2vu3lPZHmLctjwtRVd9dr1WA==
X-Received: by 2002:a92:d5c5:: with SMTP id d5mr38315762ilq.24.1607986608360;
        Mon, 14 Dec 2020 14:56:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8c86:: with SMTP id g6ls2925538ion.0.gmail; Mon, 14 Dec
 2020 14:56:47 -0800 (PST)
X-Received: by 2002:a6b:b2cf:: with SMTP id b198mr15460576iof.19.1607986607820;
        Mon, 14 Dec 2020 14:56:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607986607; cv=none;
        d=google.com; s=arc-20160816;
        b=CeBQnfAmWDqO8zaOnoR6bnFb8mZbSZhO06+g+YQKD53qRkdfBtmamRAe0hgBnOaucg
         Ab6JCLWF7h9164PYZGd8cc2/MwCgyleR6jXGuMld+9XU/rKSpKSM6hgQw6oxXaHA91kr
         6+tNqrVM9+XDsXIgAV3Qti9zqj6hSb3M/14syQe6eQZhyMLzniLGS9RYqICE3sERrllC
         O/7eQWeo0EHwBSTG30MH806ch5kbwXNQtbqa1eMYwfrAQtK0ky1EY2sfjKqAkgup2fV1
         yGYqiUlM/SjOpANk9YMWFQ+WY1PyF7S7OK0mqxVbklf5vRMUri7pbB6PQJJrg0FCZcB3
         JunQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=+8RRmx/saxrEOsk/+4v4Hf95Rm9K3o27fRskhKZP0vA=;
        b=t3+1LMN90WvQ58HCzp9WVtqsaqCE3Gshsi7Yljsu7n6fqUA0ao6OwPZzl41nvk4t85
         k7vICIPlUehw4JJtAUrWSPJLvtXH6evz+iB4CgbXNRGfd/7oEWvr4UnFqQc4yAoHEN/4
         8+71q524CWgqVHDzBNyHsQIQ8ThiXYBdf94ckTZHRwliIDU/TRkNKZWIg+pTK7LmHrkv
         G9J4ECKdrupDUF421ggEcs+dqFsZyUqaK/iLOQ9HvUJmSZziNMvmHcY7WcQJL9Yw2eBW
         uL283ZpaciJXLTLFebfxDCN3a/2Jw5sHt6iB93DzG4RkgMIs7LdJgTdEK4qC48W6LV1T
         s00A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of robherring2@gmail.com designates 209.85.210.67 as permitted sender) smtp.mailfrom=robherring2@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com. [209.85.210.67])
        by gmr-mx.google.com with ESMTPS id k131si1225176iof.1.2020.12.14.14.56.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Dec 2020 14:56:47 -0800 (PST)
Received-SPF: pass (google.com: domain of robherring2@gmail.com designates 209.85.210.67 as permitted sender) client-ip=209.85.210.67;
Received: by mail-ot1-f67.google.com with SMTP id j12so17491456ota.7
        for <clang-built-linux@googlegroups.com>; Mon, 14 Dec 2020 14:56:47 -0800 (PST)
X-Received: by 2002:a9d:170d:: with SMTP id i13mr21474885ota.106.1607986607540;
        Mon, 14 Dec 2020 14:56:47 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id z189sm704369oia.28.2020.12.14.14.56.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Dec 2020 14:56:46 -0800 (PST)
Received: (nullmailer pid 2537300 invoked by uid 1000);
	Mon, 14 Dec 2020 22:56:45 -0000
Date: Mon, 14 Dec 2020 16:56:45 -0600
From: Rob Herring <robh@kernel.org>
To: Pavana Sharma <pavana.sharma@digi.com>
Cc: devicetree@vger.kernel.org, marek.behun@nic.cz, f.fainelli@gmail.com, davem@davemloft.net, gregkh@linuxfoundation.org, kbuild-all@lists.01.org, lkp@intel.com, vivien.didelot@gmail.com, kuba@kernel.org, ashkan.boldaji@digi.com, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, robh+dt@kernel.org, andrew@lunn.ch, clang-built-linux@googlegroups.com
Subject: Re: [net-next PATCH v12 1/4] dt-bindings: net: Add 5GBASER phy
 interface mode
Message-ID: <20201214225645.GA2537239@robh.at.kernel.org>
References: <cover.1607685096.git.pavana.sharma@digi.com>
 <dbad3456b9c80a7f53d64b608ab69e4d4e0b2151.1607685097.git.pavana.sharma@digi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <dbad3456b9c80a7f53d64b608ab69e4d4e0b2151.1607685097.git.pavana.sharma@digi.com>
X-Original-Sender: robh@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of robherring2@gmail.com designates 209.85.210.67 as
 permitted sender) smtp.mailfrom=robherring2@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, 11 Dec 2020 22:46:04 +1000, Pavana Sharma wrote:
> Add 5gbase-r PHY interface mode.
> 
> Signed-off-by: Pavana Sharma <pavana.sharma@digi.com>
> ---
>  Documentation/devicetree/bindings/net/ethernet-controller.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201214225645.GA2537239%40robh.at.kernel.org.
