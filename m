Return-Path: <clang-built-linux+bncBCK2XL5R4APRBR7XTKBQMGQE5IWJXII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AEE352694
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 08:37:59 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id a15sf3893113wrf.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 23:37:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617345479; cv=pass;
        d=google.com; s=arc-20160816;
        b=CUX/j5wV3WfclaZhzeNOmx71Zs4kdqDeXBVxbixlAZhcNkODXyF99xRjVnVdCY7TAc
         ozVg6jNL+iKRnU1g/0KIVli3b4iMhoK2u8EaYzuYMUfK+6eF7Dqy197hB36ypaDNAvEZ
         NN87H5wFW05Cd0a9DH3r7UUxEPs6DXgpHzkk4MF0MwTx7H/oYBI6qpHBlTiCM1vCSOK7
         nj1UNjSP5cji8R7hiZhGu2BBrYIMK1d+yE7jWHi4tJby+PIg5kwldVH6WiPxNH+2AzhN
         XqyzUuPnbw5qRzWxZ8RFajN/ulwyHupQmFxy/2cLPYAPVUQpPXXQ4wIaZ1tbxcbyc9tZ
         CHZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=7lp6ulBDkiNvsPyo91liVZIZqXnSbQ/Is+rGaI7Wf+0=;
        b=XMWgoxMXofbjtoX75sxnWOWUeTvkVpk7UsHXtgT3J2y1Fv0C1nbrzNNnI57uNFPed+
         a8ymu0zH479FR632B4VazBV3wcZ2CBTw3IRuDSvZ6n9Nxn6Dn+yvK8KuezgJ8kiaFCKv
         nHhFotXcvXmAaI+DzJxYPtNaJV0v970+zsaA5nlVJGOh6LPnnSaIi9R30Ca0cTgMiz45
         XLCrXcy8TUna0Gne8Cxjk6z0K3DIolYt+LO8xfiRMT8NPWIMGKGTZtm/orc3Brjq6YXl
         0i1MQp1HJzgJ4t7ESAzw9beuu1LOIQueVB3E3d8G2m40HqnyTIVNSdjLWw3lTZAcEOfr
         f8aA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=DidHl2sJ;
       spf=pass (google.com: best guess record for domain of batv+876449679cee2ecf80d7+6431+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+876449679cee2ecf80d7+6431+infradead.org+hch@casper.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7lp6ulBDkiNvsPyo91liVZIZqXnSbQ/Is+rGaI7Wf+0=;
        b=kGLyh9RGs4chO5ftjERDsopGri9nQNwxGxjWFmvttw9AI3M798CL9kl1rTjpR5Sx+A
         HqwZ5Q3m2eYLNh8vJRG4/AhYyMdOAzOxdCEDwLPxa72QCHA2Mpg1zkEJWh4+XnOIIriW
         QDYedo+WMyHkObOmkpqBYw3RV+6f+5duPi9kvOE6GZ2NR4Upo+8aGMg3lanmjxup94Ff
         Jf4HOkFD3SN3ygk3SzHrsLAQP/ZUCEIB6vLKxybHNU+FvML7Us4wcvDQYib9XepE5Q7E
         UQrDcB4baOzLOb6d2fsoEzZbF/48qvDBva6PYOEWo7RR8I636vSuYDWVx6t9s4Y4TRqf
         k9vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7lp6ulBDkiNvsPyo91liVZIZqXnSbQ/Is+rGaI7Wf+0=;
        b=GHxjZhHuH96rJjtmqKwfNUF//+T4tuhyOFpH9dRRVa3SYIN+qV03k6Aqn12wQPy/eU
         WK0SeCV4zC40ZYpKppJt1FVdLZF6DFc5AtVVQiExnv02tCMJmovhi6Oh1UH34zO79AO3
         dtqNP78ndb1wKUV+noelDZF8USRQDUN8PHCAe7JIDqwUHtcP9QlUBf7m3LgB1yg+wXno
         ALTyICIH8I26Pb5mlglFfu+RrCdEhwn24g2CtamI6wZe77dAVnkZOxTpgIZtT0VJcpAA
         QGZFYV4xuJKYPWnE4Br2usVG9qond7rbNPcC+0jnpBf/5ohm8GO2gDNLw3tMrzrw7zgi
         4/+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lojuKUeo+MdOnMRnbr7ukJnPO8sxbu9JFrPyB6ZxoHPxteYbX
	5XeLWqCKD0n1lrSSIXQe0t4=
X-Google-Smtp-Source: ABdhPJzDwTO4x4ocLq6Ml7mL87RFzddHT48OTYSonFtOM+qcTldgntsQhjhKTn6koF1V1/BslXWzoA==
X-Received: by 2002:a7b:c24f:: with SMTP id b15mr11176123wmj.59.1617345479289;
        Thu, 01 Apr 2021 23:37:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6a89:: with SMTP id s9ls3750775wru.2.gmail; Thu, 01 Apr
 2021 23:37:58 -0700 (PDT)
X-Received: by 2002:adf:9544:: with SMTP id 62mr13475177wrs.128.1617345478429;
        Thu, 01 Apr 2021 23:37:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617345478; cv=none;
        d=google.com; s=arc-20160816;
        b=fkcNyYIEjgyy0LiU55JKRns/wJ6rCKGoR457RRIlZyMta3wF2fywgZX+VLC40FVfQr
         EtAjVCC4ZkwPyhN+XRyEU0YQ0Z/8n0YjVEjHMcE0aaM+n1Z5l2oNF03OYzst1F0fjemr
         Si8AoLB7n0L4Z1eYb8jZlrINRucpgfs/W5+PVQn6LHomSEx1SLI4lcZgnAHb3eJvlvMe
         DwvbBaAj1hW3yd515g0mbGdepdS8rXaT7LFsz1H2pT7tw9TggmDPReYKk1/M0MEa7OZY
         u1MO0w/O2sZJculuMnQHDOQpkYjL3Hm1Vtb5ztoZG1Z9HL6SnAyWnRws/iWdUrfsfwwB
         i79w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=23JVev1P6hfZn75YYKAeRgCkKkBm6a8rfr6nXZM/23Y=;
        b=a2FZKeZ/2pqRZkfowC/OTmfIi5dYC2Jd3fUKo6hJv20SqaTO66s8e/Iv41ePDiFtL4
         8kN7n5vQ+buBsx7N6Jva6y2wpoMGUHofmiZlSj3eyLVcUlGlb+bKbWVkD+7tzzGGDBv3
         qjrrwbj3Vk+qnSb8CksTscop1L5+JprHhJuFBBgDZeDxC77r6Ir6ojGzQFum4TVpjedU
         kPXBQaANcpdN9GLQaro1g3IQuyzlo90q4+ghgmyo2Gjo/hn1NVwVgm2jytqfk32UuNhV
         fLk94udp7qWVs08LgQapAvcxKWAQGj/hybYrU4VwoiJPEMQ6UE2aEiQ7CnNG1qiDK/Hs
         3n9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=DidHl2sJ;
       spf=pass (google.com: best guess record for domain of batv+876449679cee2ecf80d7+6431+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+876449679cee2ecf80d7+6431+infradead.org+hch@casper.srs.infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id z202si769628wmc.0.2021.04.01.23.37.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 23:37:58 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+876449679cee2ecf80d7+6431+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from hch by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lSDR6-007IGD-Qr; Fri, 02 Apr 2021 06:37:42 +0000
Date: Fri, 2 Apr 2021 07:37:40 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Christoph Hellwig <hch@infradead.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org,
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5 03/18] mm: add generic function_nocfi macro
Message-ID: <20210402063740.GA1738362@infradead.org>
References: <20210401233216.2540591-1-samitolvanen@google.com>
 <20210401233216.2540591-4-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210401233216.2540591-4-samitolvanen@google.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by casper.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=DidHl2sJ;
       spf=pass (google.com: best guess record for domain of
 batv+876449679cee2ecf80d7+6431+infradead.org+hch@casper.srs.infradead.org
 designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+876449679cee2ecf80d7+6431+infradead.org+hch@casper.srs.infradead.org
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

Thanks, this looks much better than the earlier naming:

Acked-by: Christoph Hellwig <hch@lst.de>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210402063740.GA1738362%40infradead.org.
