Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGXQ4XXQKGQESNC5C4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 77305123BE6
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 01:51:39 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id c1sf279399vko.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 16:51:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576630298; cv=pass;
        d=google.com; s=arc-20160816;
        b=e6NtWxgAay34N4lTrMhYPMlBuVZMesufUqCRLXGd0ZoKEGeGYtkNdr5krolP/uU5OT
         KtIMbiC55tUBABMV9DYa+Me/XnnOq7fpIajnzqtbZK/8UWc9uIsiyr/EFGIzjlObM5/c
         EyrkNzhBDblEu4kSePdCQBGvZvcltbYb0Dqvkq1R+V+g8MUlT8gM2N8vJ+ZZkowaSmzd
         GQ1k26QOLhWf+icexoF1kpNDIS/j3AaXq+C1N34P92ysYCggmGTJWTqAc/CI7u+JmL87
         c7YEQyC75EtQsMS0xQPTBjBlxFBz+3LBeki8IlA9briMKymyn7BIDHdLTCQPM+DTDx+w
         W38g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=NK87VFHhN6/H3DQqGJ4LvPeZrehE2BKJAdWkapFLJPo=;
        b=Jxq4vsrFjGWSFKdGVTvYGG4hiNE3T3Ob2toKOOqD7wiTxKs1EA0B2r26tAKGNL3dBX
         xtCQdmFk1cii7UQE9GfSaURQoCypAkyo3VJHI/DUkpML8oBNKI+eHrVBAy0iY0q3/PZ4
         ejIuuQ0JeGpzoIjI8Wd0CyKlgzCHcAgaypWF7RrhBxr81NuynjGFJcFH070cReHjc0ic
         VIHeM5C807izLUrfvgSJQZq4sCE+JledsdXxe8BViwnO2PX3L96/RUlOgv2sIIhEUnO9
         oF1qKFNxhSFLyNKDWpGVtFJF7wTnl8gT2rBSwTZVe3SdV0agnLww2Ip/O4P2d+9c34M4
         p/nA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WUYsHw7l;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NK87VFHhN6/H3DQqGJ4LvPeZrehE2BKJAdWkapFLJPo=;
        b=ZRp78NGm7eCVnRyQZdGADnsd2pMRuO55b08JSIUplCDeuDzpZFXNfB1AXWZHWPymup
         /ZkeRaDsrc9qdYgsUnbQ5YddgIjwbUMno1wtRvSg6/d+GSgnSPqYxQ+9jYFlyzx8kNcl
         e+HoA1wp7qdQCsXjVyB+KGwLIM3/NHiVOV1mogY4YLKDEeQJQxyLWQabQQWxw/2cMkBd
         gLGgytTxBD6uxL8TPeBye/Ll/ThLM598fIUQgleG4MHDcYO6vpzmo+XyKeUBA7F6bn9T
         k8truLbIQGcxYi0F+59Ufq3KPntfG+hpR4R29ImOE0Agh3KJ6mC1R31EX2pnFAOP9b6R
         6KXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NK87VFHhN6/H3DQqGJ4LvPeZrehE2BKJAdWkapFLJPo=;
        b=X8kPI59j7iZ2mlLUR3w+0G9A0pODshKgUinBzMvDHz3sweZ5zu/4pcQbVcuIgxTk79
         W9x43RaV8bSbPGc0in2g663eQwBfXh8pR2vFMGTTHjV5EUV4Jcp1Wql6bZQ6SuhlAJkN
         CgDRQdZkF8sLq5e5hOUD6+n+JcbHHlFFi9H0AiHzQ5r4qK1430OEEgJZYX4mVIswT78l
         7U49EM3HyeUS8mSc0OY85iVlwB/AbjEuRwd6a484w1oRgBLKLS6zZCSwhAVzx7ZalVNZ
         3ipc/lvTeldXlh+wTu7lrAg//zhO9c0LGdHSBe1GcUH0sTF5OvLZlY73jybXbWJ6yG7V
         jmSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NK87VFHhN6/H3DQqGJ4LvPeZrehE2BKJAdWkapFLJPo=;
        b=i3jblfdEeeyhVWkg9Cf9XTxqoUYCOkW5Xo5vI/8hjXgiPsidEskMXTySPxhgrtm0T5
         NVz3TAcc9eQVAsD5KLQ5rDDzAXCFZeNzOee2GMsBipDM5R1i27E7hxXuYBi/WO83/Bpw
         htuzAGasxbWTEmTxdyqTlrWSDB8E74yeGB878rK6cOPqYUgcpinDqD+mzJtsghW1PrCg
         zjbBOEJUsTU4aps6WUF2qC47w5hPQ2rcYj3+EzNcr9qVR015/q1XrLbelbmAexFCXRzh
         fzXVjhhxUm5IKX6riH9KyevAK84eilZjAku7w1HXAbg1fdlQU1P14ZUSg1R+1BS4ssJT
         3giA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVBe8er0Erorp5KTjh70FW5g+kmvd9fgfkUcpVBO8k0SkDIsESB
	Fh52u4zNUDim8uTBO/PYErc=
X-Google-Smtp-Source: APXvYqxdVtyZ1v0Rzf5DGtIb5OuWMVBEFotlA4rRTouL4gzkvB/gEKtikjJ4UTBElMbtfm7wMscGrQ==
X-Received: by 2002:ab0:5510:: with SMTP id t16mr248353uaa.15.1576630298441;
        Tue, 17 Dec 2019 16:51:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:4196:: with SMTP id o144ls35519vka.0.gmail; Tue, 17 Dec
 2019 16:51:38 -0800 (PST)
X-Received: by 2002:ac5:cd39:: with SMTP id a25mr367585vkm.50.1576630298062;
        Tue, 17 Dec 2019 16:51:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576630298; cv=none;
        d=google.com; s=arc-20160816;
        b=H4J42AmMlL/K6NUq2PlxxK5Hh06Sfc2UMTKEzn15O74XiK3Nm6tAWEr0t4hHx8tumx
         MIEFSYQBTtdm2mub5/fs4cWM5qc7F8DdYPjkt+n364ypk/j3TMqaB76UdLa4k2vKs/LD
         ECcFAp38c7Ln0uvH6MC76f/a9WvIj0iNAeC6xzCgrygUQkHIKEWikHamj1uHDShvqGgu
         eQoAXSKXVAzBRs0WH3rsHDhh9+LktWAinSpjrc/zWa0rIbQCZc6bYDqwRJCVSxR8WYjg
         rjZdPEpc0kx9Gl+z7DtD3WHpsXhBW4JK1tOveeGHnac7/G9pb4LxArMDW06Dej+WEvJo
         NAuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=N91AI14Ht8++EGTBPvOlmjBj1GplVYx0pnmGWWTSuU4=;
        b=lxGccDiF6wB8DHBoiJnuLCVMJOFWB+CiT360+v5yx6SehqKR0DFcx8it4Kt0sEotNx
         p8GfzZimOLScfUE41JJTGvl5TZvpJa4BT7L723R3s7r1eTjdgq4cy/btcPsc9HQL4JSw
         p3JGQC+kXKttIjkwwpF8oiOdqwvpfgKvcHkHh+HlkfvG3NM68V9ozf3U4SgzgHATJoKS
         qPW4Qep3EebY0T9iwKIavGIB+3/U5N+YkdzPahEpug+q/jMKldyyp7PVp/LMQMyHWg/p
         liWFKjsqmb+luudEYayZBM5ehuxgNs+LGnFi+TPCvZxmUDGibRWtmXXjsk0JTrCqiMNp
         dpOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WUYsHw7l;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com. [2607:f8b0:4864:20::333])
        by gmr-mx.google.com with ESMTPS id c124si13492vkb.2.2019.12.17.16.51.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 16:51:38 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) client-ip=2607:f8b0:4864:20::333;
Received: by mail-ot1-x333.google.com with SMTP id c22so181837otj.13
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 16:51:38 -0800 (PST)
X-Received: by 2002:a9d:748d:: with SMTP id t13mr212756otk.181.1576630297198;
        Tue, 17 Dec 2019 16:51:37 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id p184sm211523oic.40.2019.12.17.16.51.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 17 Dec 2019 16:51:36 -0800 (PST)
Date: Tue, 17 Dec 2019 17:51:35 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: clang-built-linux@googlegroups.com
Subject: Building the WSL 2 kernel with Clang
Message-ID: <20191218005135.GA53326@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WUYsHw7l;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hey all,

Figured I would cross post this here, the WSL 2 kernel works out of the
box with clang and ld.lld :)

https://nathanchance.dev/posts/wsl2-kernel-clang/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218005135.GA53326%40ubuntu-m2-xlarge-x86.
