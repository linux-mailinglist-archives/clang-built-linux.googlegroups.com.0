Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBEMKY37AKGQEVGL5HNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA532D50B8
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 03:16:50 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id h68sf1368151wme.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 18:16:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607566609; cv=pass;
        d=google.com; s=arc-20160816;
        b=kaM4rTyGpCvTqlfy+YToxfxgbpX72D/FVqrnR1nxbRNvVXqfVoubosU6TTYmCj2tTq
         gd1rjPswkaaOH+gpnuNkzDTTZY3DQ9atoA9aTnhEHa/W0hmj9wGbSWNwSvog6WF7xLkd
         qYGDLSJt1SfLyG6LL/oV+pt6UrUY4HF4pNgXvWHUo0ZESnfH4NgPiIZzm7Hhp7I8zar8
         00Ln6m8LMfDu0dLAmiDknwEYFyTKYIzzW7+7ThnHJUhNEQxZxhklCPeNHed09ch9PUYq
         cqlPD0IFBm6ez1wIBK+ACpVP5tjR3+ZEioSZlezA+EjrSb4V1T7wZEy3eclzzCB/Z4FA
         exPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=aM13j5JzXHFqUr/Ojp94pry74F4rn/4Okqg1xXJnnII=;
        b=ZB9bQTpV42hpFwOTmccHFnjJAxBSVluGRnIlbejQ7oo9xN1jb03eEnqfVyfv5hhRO6
         YDgdHE+ZsekyCqgdLYAPAuRuFAU1+KR+2bd9XjEE8aApXLcEHunwc0NArsJ1QhQI53v7
         ngwfUJeL5WBO4WZ8m0iggsI10dpG6VJapOdAbg07BVM1+XriNDjcgdre0U0lobAzH3nX
         L30R/COj3EonuEsMUEsThSSf8SGSOpjRB3aY3o8jPJZHnVAW6bnb4q2Oo87UowaPsc9C
         u0TzNe710aSJAVNjoJmdSIdZusCjyDAyHPOqQ8jDD8dFt/6mQtMOHXKGUGnUQHD6i3qs
         yDMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aM13j5JzXHFqUr/Ojp94pry74F4rn/4Okqg1xXJnnII=;
        b=pIwc19P9eLRXNEu471qjB6jwRYjAjfekR9TWzu59W5dnyFaM0cwdvZLFLKWEPUY/2Z
         3cz4ElKabsmlogyAElPRJuh13eiJblIPENfxpXrNhSE6TaxNvYx82YtWeyKyrXcWwg+o
         wzptIUeZHDToHPeUXQBrA/3yoGqmH4VdioQmvW38h3sYr99zM6GNHZxUmVq7bC4mYLeV
         mlhF4hP8NuQAf4hHCK35X3mh4S7YDbvTy0JZwgqhZH8Ubz2w9R+73c4MYB0YVVd790w1
         jBVcj9fwHd45zJ72Y33+kHb2dtUCZBktQEAdrSB5tnDHbpOI16CjiwVHvlGOHYf7+ZPM
         3ZkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aM13j5JzXHFqUr/Ojp94pry74F4rn/4Okqg1xXJnnII=;
        b=ZnhL+HzJkqEV1rDF5/BaKuDtVo9YJiUuwN7daZuF9ryLGiIXulviEriluRUnVjat6M
         Fl1V3EHOpP924o9w7eex0rI7AkYIv3XZm0JbF1BopZdB5UxLmJcnbGKXEeeJDJWDhFM6
         2v51eGOJZcGxJAmITj0yW9o9TZ+AhYxKaJMBm5wQkw6bxuF9GX8mFoXdAnc9eO6Km7U1
         pTrkQ6UlXdJi6RezEHN8s2Ju2vlacBiKcDuwmBeC0yvz6dii51jPJFPJqYsBS9/5WXV5
         Vujeq0wKv83Zin1zj7R5BMQ7QH7jE2uYFwZBrLVaUWMsMjF3Z1mQ3f6OaBVr/fzqnxc2
         jviQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307TnrOQ3WG63io3oKG/2t4B2/YL/ROH5s0dBXcvsJx8vhVwTD1
	rqALntu95bJLJdQ8RQaH4rc=
X-Google-Smtp-Source: ABdhPJzX94genbK4/7OvkpOAQZFnmB61N4APhXQ2+UB0cc8ZhXJs55YrjGykFHKnJBU49oW+83clww==
X-Received: by 2002:a5d:4682:: with SMTP id u2mr5494026wrq.265.1607566609811;
        Wed, 09 Dec 2020 18:16:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6812:: with SMTP id w18ls1362367wru.1.gmail; Wed, 09 Dec
 2020 18:16:48 -0800 (PST)
X-Received: by 2002:a5d:5401:: with SMTP id g1mr5540243wrv.93.1607566608813;
        Wed, 09 Dec 2020 18:16:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607566608; cv=none;
        d=google.com; s=arc-20160816;
        b=Knj3evyXk1tiM8iSoWIl3a/aNhDiDmY96HENvfRYEGm1ybKVgVLe7mgEtU/o8QejcG
         kB6rq03nDgFWsvrspkzulWXIxf1e62LY09gfy+/fHSdbSrCOs5XxXEwB03bi+6E3967T
         FGgacToO47pXUvJbcEdwVTKrYeir6TkKt7lC42cgdpsz/Hk4Na9PZifWLMz90Q1W3usK
         yVvQm82AgimIK9r65dH87lwB5PBZhckEVB3gHYDTahsXDlT66JCnrevZTb/fNahmmf4z
         UkPd8J+V6bHL71a+NzSCGSBZciNKSU3+P36MJKpWAJ+8miY5252BcONE5FHmDnNDx28Y
         EzsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=UtCNahIoB47Ft3YAnLVF29vU4vqSID+nTrw8bYR1dUk=;
        b=JBgJJRuCXsX4VRQc1ytby3wGiP+jwYrPnwlGwLZcEqkx4u8mWEuen7iEX/VThFKreP
         gHDcPejwsBfqoKIscfhhX+k5+NAS8QK7xqu1i9iUojvesePpbB6uSVsVQJPLjm471+ln
         ZaAB8KF77PGQwsleyyeGrVxpqo6qwcgDYI93fMj86l2MJuX/VfvBfQxdvq3k0NX15MsY
         GovdX74DMm8L2tGBEwOuFX4kTs4iqHu5r6l6t6nDQ5Aw5cFRnobZSBE4Z8QwZ4wgvMjs
         csHuvy75AH+3QQLlIiPFsoL7h+QjhOiy1pFl4jLlrE+JQRpf1lsEtbZtPgR2S/VlPZMU
         J28w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id 18si121115wmg.2.2020.12.09.18.16.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Dec 2020 18:16:48 -0800 (PST)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1knBVY-00B9Ln-4U; Thu, 10 Dec 2020 03:16:40 +0100
Date: Thu, 10 Dec 2020 03:16:40 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Cc: davem@davemloft.net, kuba@kernel.org, robh+dt@kernel.org,
	nicolas.ferre@microchip.com, linux@armlinux.org.uk,
	paul.walmsley@sifive.com, palmer@dabbelt.com,
	natechancellor@gmail.com, ndesaulniers@google.com,
	yash.shah@sifive.com, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3 4/8] net: macb: unprepare clocks in case of failure
Message-ID: <20201210021640.GF2638572@lunn.ch>
References: <1607519019-19103-1-git-send-email-claudiu.beznea@microchip.com>
 <1607519019-19103-5-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1607519019-19103-5-git-send-email-claudiu.beznea@microchip.com>
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

On Wed, Dec 09, 2020 at 03:03:35PM +0200, Claudiu Beznea wrote:
> Unprepare clocks in case of any failure in fu540_c000_clk_init().
> 
> Fixes: c218ad559020 ("macb: Add support for SiFive FU540-C000")
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201210021640.GF2638572%40lunn.ch.
