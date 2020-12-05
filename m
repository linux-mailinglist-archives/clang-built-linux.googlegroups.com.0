Return-Path: <clang-built-linux+bncBD2NT6VEXYMRBCNNWD7AKGQEMKDSSWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id E50FD2CFFBB
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Dec 2020 00:23:54 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id u26sf5829841pgl.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Dec 2020 15:23:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607210633; cv=pass;
        d=google.com; s=arc-20160816;
        b=TrmAVSLC4krN9rEkSqWDaoQNVVwwbsExVXwILwU/faOiFMKOaY7zbBce2nbBOJaOw0
         vfj6JpcgyP1R7A4+Wt4hPZyj29xHKg/mpDaJMEh2IK4jhOSZ/0Sv2H6ciwT62pso//T4
         q+h40WvOPjqOLgzy4vFzQy80k2ep+CB2btTW4g1/0ZADdWl7tAL2NqqN5YYMymhl8Cy4
         0BqGJrbCwECIoRhuCMeM5tOmb24Y/haAWnRd6fZUB+qslM4bonmEOakcjdcbrKXKKvVc
         TAU0QFqHpPWgpYQMJVG7JwJfN66Buubfo5C5SpyxBxPgVeq8wUKX6BV/stPLycER4HXB
         rjwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=6zADOTJCIo/TM8JkH1QwOhtv3atMNUDI4rsVxRByA8U=;
        b=e6y9MtkKqE6SeuHZXLxOlnvyQRd8bnZna1kui8bjbv+bnSXGKedSL1X/u8CTQENA5y
         juxekQK5T5eTMEyZ6S89J53YxQBiMgzooJW18X63UAWd0x+nKmkjsvCR3GRInNXYZ7UR
         yHJP0xWY2udNN4XXKTLNL4dfZSvnJYZ7dPzNXJqC46jsjBhGAO8laREYre6Mq3UyNVzw
         46HHIABL5V4KwFDHytM8GcGzoPPcBT3F+OU+grm2qg8ikYP/4uxMH9g/AQRAGLkvvXO0
         PmSMD5u4a6W16kUbayIvnYa+93MLDI3G3+0sm6evqKy1vuN0Z2E8TgelFW4ZGbKMHyeq
         Onbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SaeUmhe8;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6zADOTJCIo/TM8JkH1QwOhtv3atMNUDI4rsVxRByA8U=;
        b=A5g92G8sX7vRwb3tNua3WOXBt61PLtFPitLG3MtoVLXdjMPFdhv12IuYMAZwz3mI64
         ObZZdvXbnp0MBwCzuORhciuZHWp0pPQ59ARJgz225rC1uwpSgYLjjtqOdzV299gmwwj9
         zeAsyDtBZlC1+HRSwXKCsrmcXcQvYuL1WjmsbbtiSbzoVBH0vpoQfrnbPp9LG8m0OhiU
         pCWfiWCE4zah+r8E/5xwus0UEapTkqSAy3PrtQwdp18CZVevFTXW1w02uL3zDkVRoyEo
         PveAf9MdXyqJA+lMdbMOPIJzdTZwL7KJROaKijlfWP58M7qvolx7msgOaf/fm7g5b4oQ
         bP8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6zADOTJCIo/TM8JkH1QwOhtv3atMNUDI4rsVxRByA8U=;
        b=nZgx4zyxadJgTZDZw7m23YW36dufMpn2P9lL8sLZyIj7o4eNRkYt9l7zEm/UgU54+7
         J+i9DjoK6ty61CdV0o9QWefbE1BHXnOAad/FW5JZhxzDL9Yq8zNf6Inar9T2A9C1Ki1h
         HMqBbJaHURHpe60g4gih32/R+Ig0Dbw+0Wu6of6YYcNFNW47GHyhjKfTTFUrmjRUUOJc
         PctE0firPAQFjFIEP3Uyt/EdA7mLFj+jfh5C2/BR5J+ZEvpF9F/W2Vi+52LwmuYAz28K
         VdUT6xC7LhE3ABr/EPag7SiW5qZSnLOf/HVW6CzDmsqxI77I0tEb9yQve/VJcjS00M9q
         bqpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Nkfh3EO6HgnPl5l6cn2uykCW71ahG2PeIY1W3CMCGnq8xHfyn
	WEKLvQAT7JD08IizhjtO9gE=
X-Google-Smtp-Source: ABdhPJw0lieqT5cTma58t/zjeQyPKqfFx55vuRu8gLfI04XmEc1kgPPJinCY0Nca60iOtWq0z00Yqg==
X-Received: by 2002:a63:561f:: with SMTP id k31mr12807052pgb.227.1607210633423;
        Sat, 05 Dec 2020 15:23:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4947:: with SMTP id y7ls4487107pgk.3.gmail; Sat, 05 Dec
 2020 15:23:52 -0800 (PST)
X-Received: by 2002:a05:6a00:1684:b029:18b:665e:5211 with SMTP id k4-20020a056a001684b029018b665e5211mr10347084pfc.20.1607210632802;
        Sat, 05 Dec 2020 15:23:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607210632; cv=none;
        d=google.com; s=arc-20160816;
        b=u+wsznVRh6qFi2Kcfcm76TSz/1vZJmuWUjxybgYSOG/GILuL73Z7o9YdwdoobH/hza
         iDR7zRQeTytBnc0hqCiSyccquT7uIkFA6Gmv9tfe4A9nA5jXIrY6S6PswMnQ6sG/Ng/J
         l0m7t39IZ+bsPFHcW8OqVUQyLdgQY0/BACRe7BSlWz7RNEsI0MgvdVJCVG018VuEfNA6
         mNJgp/mjyiNk83Evx2tjnd3gTm3Zql1VaGdoe5hQ9b9UrEqDiTL1kPj/eiPkOIbdx79t
         Tz8UBMnMupea/ntOM54TMB3JHQFrmSo9SEfERcxO9GrgdWLbpRt+G2HVlIDOcL3VgaVk
         cPTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:dkim-signature:date;
        bh=/6sQT0WPpdC8v4nmVFFFE4BtZwDR8zSUj0FKcY4hZU8=;
        b=0S6/eJz4mtMiXDdA5Uz0KqsG5pwNx/sbD1oqLa3aFMJek7qppjnH0+PE+LE220bUFH
         o1tf2FE+YKuFB0TlFiUyW11IwxeQKli+pzdYhoDB0F0i0rOvDgWGN7fO9yIPm1O8YaDm
         aorpAokU449RQ+z41J8O2te5kJsnuzaZ857RnMjuVaCm297SOMOSvZ1PEUXxjenbGkDm
         VXqgtsMIBfrxSM3M8kZXkWBFVfz3nvckTvKVhGCdHm4nG67+qtW0TLEUXh1UMVaWPkIV
         rrg7dLZKt5cHnVUBhdEwwOsMlFJ3pxajhv+2oyGdTvMTSbnyxnkDGs0FjgB0N/Ebe/Px
         9Pmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SaeUmhe8;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t126si535217pgc.0.2020.12.05.15.23.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Dec 2020 15:23:52 -0800 (PST)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Date: Sat, 5 Dec 2020 15:23:51 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Ayush Sawal <ayush.sawal@chelsio.com>, Vinay Kumar Yadav
 <vinay.yadav@chelsio.com>, Rohit Maheshwari <rohitm@chelsio.com>, "David S.
 Miller" <davem@davemloft.net>, Arnd Bergmann <arnd@arndb.de>, Nathan
 Chancellor <natechancellor@gmail.com>, Nick Desaulniers
 <ndesaulniers@google.com>, YueHaibing <yuehaibing@huawei.com>, Networking
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ch_ktls: fix build warning for ipv4-only config
Message-ID: <20201205152351.055d3f05@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <CAK8P3a3TuKAC60HAjiyHwy7ciQp=mCNKjmG5jcaCFWe8ysVCuA@mail.gmail.com>
References: <20201203222641.964234-1-arnd@kernel.org>
	<20201204175745.1cd433f7@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
	<CAK8P3a3TuKAC60HAjiyHwy7ciQp=mCNKjmG5jcaCFWe8ysVCuA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=SaeUmhe8;       spf=pass
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

On Sun, 6 Dec 2020 00:18:44 +0100 Arnd Bergmann wrote:
> > This is for evrey clang build or just W=1+? Would be annoying if clang
> > produced this on every build with 5.10 (we need to decide fix vs -next).  
> 
> The -Wsometimes-uninitialized is enabled unconditionally for clang,
> but this only happens for IPv4-only configurations with IPv6 disabled,
> so most real configurations should not observe it, but the fix should still
> go into v5.10.

Great, I guessed correctly :)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201205152351.055d3f05%40kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com.
