Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBUUJY37AKGQEDDQK6CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 335DE2D50B6
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 03:15:47 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id s23sf1540256lfi.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 18:15:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607566546; cv=pass;
        d=google.com; s=arc-20160816;
        b=0bB7D+ZAlorPAbwNHzAKm6BVSzZfs7ol/60mJbRE8QBA+BA1ImvP7WshXsbnE93yzH
         6hLYRTvsNLZaj+G8ErkPSHkujzU3oagz70EKd7T+WPQps4eytjBpgSreDmu6lWF+FOcU
         5SdfVljwFt3rMDvsWOpjlHIoPiA+oDh0rOjgSNoP2OlE0u+X0gdfbzTbo3MR0KhnfOq3
         EGTKNb+0i8H1ouUwOd1WrRzKC+yVXMwjPPxO84bJd2DaHYwShekTA/NKVloAHbHbz0oG
         EgtHPQSP7gJVaA7A5p4NI0qEHWAGMOSYkfZDW8QiGvz9FeqnVe9QYSG+83GCHm62Pwf0
         quoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=YUeDLQtdQvNEME94YmKsAb0HCJHI/cJp+sk0N5DK/xA=;
        b=UOewzyTKNDSj9StsG+p5qJYQYJS98kwgdGTvhnJAK8svqxE0p6a4oxuVYh2jE8VF1Z
         jnD+kfN2f5GU/LVhlStQSAUiDaVNA1dq8meJlnPvJoOaSFFakWmsTyv3C7JTvdTNCUNL
         B7qXj2AqEEtZgjYGEaGBGmPfUkWxiX0QzNi+MxDjJZcAUMALojn9KV1pM0Ajy6Zux4aR
         I2RPO3+pjNJ6EAMyK8a7dyj8X7gHms5nNwE5cvry5gGESmD6jh4/gDrMlexSyufNm3/N
         0ZulhnrqsJoZoWrNgjJjS+bjj2+UlJ+3OZdxw97h59bAKiUG0WGeihALj0HeZNcJKN+4
         59iQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YUeDLQtdQvNEME94YmKsAb0HCJHI/cJp+sk0N5DK/xA=;
        b=V8PmOtb4KVO0u9H/kGgm/JEyL8Zf/5oMIkdfeUJGoo2R3qHrZqXTohA7e1ypnnBZBH
         rpjO7acH9UCGwEFIj0Q0VpnR45s9ME9iYUVfBnfZWngZlyyNqOWBJGNPccdNBWazDr9X
         ovFdV68UMyA8hC8fN6VaYlN/s7q6c0pM3Sj5B3lLinMZ+9Q3eSxaeHTGyf192ASeCP/i
         OhYsc+NdIGYQcWrD0VQwRODJ55LkZTBHPAB9ZkPKf3Ps0EfNJcJmiDUjOgD5tZsCUYv7
         gxEkdZTQ0B65JCK7owp1QQOapRcmRCrVSFdaQhQROMwfn6AlCoOinZl5pKt4+vEoBlgW
         ZOgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YUeDLQtdQvNEME94YmKsAb0HCJHI/cJp+sk0N5DK/xA=;
        b=qEQoAcrrQVFZ1AT0Rhyq7hZIkUsQnDXmr4WS0b6O8K1IYU8XCMzD9VlWxHkQF6o17Z
         ReA/4VYi10seF8TKVbPHtJ/BsxAjV1RdnZv0PMSAUlTKYzNxPLIxr56oLsEoCjHu96wg
         irwVtmiWHbIhjBLvDkXyDC92NZkyOREfCG71Y5eHNLGHlXT91QZYQXP1jGoWpV0y0GSs
         yN58hn9AoNw04xPXqRYcRi8EigXiUUF7VJpVVLkjsda63fmQqRfxoqjGnpf8iSqymbax
         N24a1PGt0Yu+v1Ppb6AQq5v0mMOSWFVUShaoJ74mz3EoBiBkpapRbrTNM8O3fRPtVQ26
         31+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318noT7hdWyR5Bf4qg0wJW7tIKqNFto5P3hmbu1brkQPGOl1bgX
	e2iGW6NU0AejaiZNFizjlME=
X-Google-Smtp-Source: ABdhPJwlHhR0HiOy9iDQAxuthxoZT67uOipVsZAoK9LYe8Sf/zt4YkgOkAusMWizFuk14dnWaUdEkw==
X-Received: by 2002:a2e:8852:: with SMTP id z18mr2295053ljj.94.1607566546785;
        Wed, 09 Dec 2020 18:15:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c886:: with SMTP id y128ls1619lff.0.gmail; Wed, 09 Dec
 2020 18:15:45 -0800 (PST)
X-Received: by 2002:a05:6512:3310:: with SMTP id k16mr1947762lfe.572.1607566545623;
        Wed, 09 Dec 2020 18:15:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607566545; cv=none;
        d=google.com; s=arc-20160816;
        b=wsVKLzxKIOVUQVdXW9FAYYZPC8h3AL7AnYNoJetyR3HvH4/YQs/UkCsMlpV0aqOpbv
         qQlJDYgYk3Qm4Oy1RqzujTxpIZ1PlAjeNdj98H1YZtEdmA9a1w7Q7Pi4EaKq+k1hOywA
         dCL6udZnkN5LU4WIIe71g1sfdzxMTdaosgUiEJgEj3CjZbDt7uaGjNhzwajItWeGoR1d
         UMCfrh+J3QUOwpqJNIfpCfsdD7/ekbBisGPNa3V14v9QydeRwD+Rhjm5/HFZ57mpL66i
         3cPnu0Yw9zK+mUhizQRVLXgozYIYbfqFybp7Vl4Jh1eq24HmIdB8yJiKiAh4mn9K4rmI
         ZqwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=LNAv5ucLbkwccv0gSz7UUBn02hKs9VbxiXXIw4JLI4s=;
        b=ViZiZqMmIUxGCcs5OGIB5txbV9ZiMyhcIF2ZST9CJ+VXO73YJxYrJuvisV39v8OlzZ
         Fw2UiFaSNjioT6Gn5rtcmhkJoMXwzusFpOCQ9/dpkr5hmbj1dc1t7pHA1M3EeHDbllXT
         2e0UFkyIGayHBswvi580IK0TB7xuubF8vKVukrCPw+FCUTBWpPnDaIO5HOh5I5CPjOpz
         jr0IHh/rd4eeNtRFSlqaterGwtVyGtRYJRRI8kDWFGcbVuExG8fHSPNACShyUK4JTi4O
         x9ZhwoBkerLdC4FPFPTqFaNlNIEVaZrEaPd6IXYiCw+mn9e0gh1p2CjiekugQsF7GXJZ
         Qsug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id v2si106738ljd.5.2020.12.09.18.15.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Dec 2020 18:15:45 -0800 (PST)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1knBUV-00B9LD-Bw; Thu, 10 Dec 2020 03:15:35 +0100
Date: Thu, 10 Dec 2020 03:15:35 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Cc: davem@davemloft.net, kuba@kernel.org, robh+dt@kernel.org,
	nicolas.ferre@microchip.com, linux@armlinux.org.uk,
	paul.walmsley@sifive.com, palmer@dabbelt.com,
	natechancellor@gmail.com, ndesaulniers@google.com,
	yash.shah@sifive.com, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3 3/8] net: macb: add function to disable all macb clocks
Message-ID: <20201210021535.GE2638572@lunn.ch>
References: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
 <1607519019-19103-4-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1607519019-19103-4-git-send-email-claudiu.beznea@microchip.com>
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

On Wed, Dec 09, 2020 at 03:03:34PM +0200, Claudiu Beznea wrote:
> Add function to disable all macb clocks.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> Suggested-by: Andrew Lunn <andrew@lunn.ch>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201210021535.GE2638572%40lunn.ch.
