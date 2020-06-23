Return-Path: <clang-built-linux+bncBDUNBGN3R4KRB653Y33QKGQECD6UMRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id D434D2049A1
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 08:15:23 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id x3sf9862399eds.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 23:15:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592892923; cv=pass;
        d=google.com; s=arc-20160816;
        b=cSjh6EMlYnvmHxJ80t3qxvXw1NuKMbuj/u0tUD0gJy0G2q5bkDFrhJECilqIl/hcb3
         /KI39CSjT+a6o+3i5r/X07GdjV/ql8cMF01uWicTgEsQCo8Ec5ZMGfrCY4X3d/RK0crQ
         /2hSA9mEECvQ8l09OsX5ny9psH4JZa41dPMQMTYH6ZKDYdxVAY3OxGVE3bPkxGOnzNKX
         YFt2i5V+nEoW5GBjs5DCTt/bSmiW8X7rcuRAgKhFbLSE2hAVVSmQLYMckgMFLeTY34xH
         bjxCRjqB1XXk2t6eGKe6rbMRPqKeVR/a0/R58t8fkUOm4ilRxpr10SQuiQClPOpGeu9L
         mlzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=8yQv3Y7cNaK9k7KnWDv5WhIdXKMV5lZLvjK/7wiJ9+U=;
        b=wnb146wjK5L3+U82nX04E0zzShn5g894oEP44nfGUVmS9okCqP1wj8qDHN2Q0nNahg
         SWE6ThNXmqyWmJvRgHg8zsIFIftQqeDy+a4R5mY3KLwiHOu3F3iTQRwp9YLXRJMQHQpB
         yEnp7wRc/SpHV372+iZl0I4k5XxHxp8wF9eXoZ6ZZJfBKy8mET3ORJd1UdUSO+YfJh2a
         vzqOfEAsY/CNsZM+7Sf7suu5cyYnQOythu+CG3vJcXQeR1ok7FwGmYuPscfkoro886uk
         pcgZrrTlSoCcz2hTakOVJ8m56mmYaflUltvLB8Iyi95QdNyBgYChT1otkiQul3JUzdbw
         GC9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8yQv3Y7cNaK9k7KnWDv5WhIdXKMV5lZLvjK/7wiJ9+U=;
        b=lWBAkJ4dxmpRfwtJ0iSYfYigq9b/riUMqZa3h4xm/JRftEtdf3V1DcJXGQcilz3qGj
         WCU0PaBf4WqTLJjVNwBmRE7z8p+7lFVGOBz6QlrUwxyMKMoQC/r1Tw5nwD709o0nIP43
         mCgAwc8ddSFd4U95AwcTbrvtw77CVkkdvvS6vznnaZEAt804IyMtqDfLVemlt+Ie8ZpR
         LYokD7AKwSZxWoJ+oeTFxtHc2P2JBuEKJPNUj2RgDS/YlWMfh5l05OD6md9msuzGP47X
         ZdgOF3CxuIKeGgwr4tnnZQPxnsa5Z2uLy6L0fxM+nlremftPFuo7FTmTUq8d8zUipe0u
         R9CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8yQv3Y7cNaK9k7KnWDv5WhIdXKMV5lZLvjK/7wiJ9+U=;
        b=d8JmMpi6no9zoXfLE8MBZCWzY74TtSNCVORNtCktxtQjvA59GRr3aCKMxWX5iHUInk
         VRWTzfUv+Yj9kJQmiIJW4j6R2D2liDVHjYdCv4be/a8+kkSNeB8QZSMqmcKxsLU1gI8n
         xVrs9GxhbIuhKzwN1hdjoSjptEZ4zTNa3UetFcKpH+6qeAOortfBHvGgCcx4zCoyfLnQ
         HRKgBgSCHfZOZE0ZLTblAjLHQIGICr+VSeJhYZoRNnUmJFnyjzCemwXZTK6dnFaTxQBw
         4a/Dh034tb0BUkfH70yG4pzi0s8bQnbQNjuN5DkUVm+oATsAh4Z0rJ1aNEXzvyAiqutU
         b11w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533R9SBktIKCcuJt4rXSX9zDuKWZuKK0oHVWgYSYnScO7Zc5dmNV
	T33kbpB+gCoTeigTdM2DGhY=
X-Google-Smtp-Source: ABdhPJxsVD2NEb/+ERidLBCwsyNhRi8JFfU4BQ/vIyHP58VB7PpF0BrPwPvE0ZbYvrz2gzkMEl0szw==
X-Received: by 2002:a17:907:20b4:: with SMTP id pw20mr4360641ejb.225.1592892923576;
        Mon, 22 Jun 2020 23:15:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:24da:: with SMTP id f26ls719410ejb.4.gmail; Mon, 22
 Jun 2020 23:15:23 -0700 (PDT)
X-Received: by 2002:a17:906:1e92:: with SMTP id e18mr19697803ejj.254.1592892922947;
        Mon, 22 Jun 2020 23:15:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592892922; cv=none;
        d=google.com; s=arc-20160816;
        b=SM2abpYllJ9kkShhDZ0PjZ0lVHpg2sOtFZP2r5mFO+B4yNYhA5e1Kxf6RmuI1YtjW8
         kcKwSPgjx4fS+pM26fxdiNuTH5C86bCZttcN/u1DIOFOZVMUZLYWu9aTQM76X5AaGRRK
         jr5nFqOSM9YRv8oIKfuB7zVktHrLikwWcs2G48PIi4pYZwGW2xNh67MXMm2rdZWeK3qO
         f//nLBgAghhYbbHiXPVrPqXOAuuU6pPrhPeD9XmQIWM6ZZeoc/XHIP3Wlg1wFgTDaobp
         /wvMDc+fIN7hBbHGR+dddJ7M0M5zEMnkOxC2rKu+i2dKTyx+jhEIgwbOXD0nlSQtayYi
         Ab5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=l2WBiCb5duYJRA9nKpihqrJOH1Qjg6utSrFiu8qAdtc=;
        b=bmCpn5d5Ri/JZ0btGQZcJ6XJUgnIn5W3G8jcmG19r3iOsU3v219qOKSk97ZHD1kUfj
         nk2YEQuHjuIJZl+kwAChVZ4oASNvRYv3QQVigqpUL8eM92ZNtVECZPQgv5kIvX0nnIZX
         4SZFzB5sRktGnIr6Tyz5u1imlJjblGdRVAYkO9Kq+/TJULd38oyqpcrufmTPorZhfPjh
         vIUH6PfGPeTkqQrgdAuQ9xzm6n1t2p/GdvIjBz+jd/2orFIcZ0bYDR2uf2f82/PeGscM
         yRnJg6b1AwFn70PloG3uWgz0RupXEot3skM/HM2XC49WvZFkpTRbMPCXJTrtL7dOkdbW
         qvuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id x21si116779eju.0.2020.06.22.23.15.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jun 2020 23:15:22 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 7F48A68B02; Tue, 23 Jun 2020 08:15:20 +0200 (CEST)
Date: Tue, 23 Jun 2020 08:15:19 +0200
From: Christoph Hellwig <hch@lst.de>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Christoph Hellwig <hch@lst.de>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arch@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2] media: omap3isp: Remove cacheflush.h
Message-ID: <20200623061519.GA32219@lst.de>
References: <20200622234740.72825-1-natechancellor@gmail.com> <20200622234740.72825-2-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200622234740.72825-2-natechancellor@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of hch@lst.de designates
 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623061519.GA32219%40lst.de.
