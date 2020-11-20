Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBC5K3T6QKGQEPAKF4NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 112522B9F7B
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 01:59:56 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id r15sf2735550wrn.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 16:59:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605833995; cv=pass;
        d=google.com; s=arc-20160816;
        b=QL6ASdT4+75S3AEKuIxBS53a4foz0CLXl9VH8HnFC+Tcj5ywM6XYT5CtaZLaQUoxUJ
         LFic+OXusiQ2ZeQA2W/C6NMAjZFNE9eo5xUOChR5r3Ft47A/d8jPYjGQeLcBJda0IF4C
         8ylfjrH9ts3E/6dCG/iBjd0/nDbcRTz8R1WymHHn5cKlzvZry08sX2/awkqiu8IthmhG
         NZp9T6rEejhKXDKDiHC6oLYWGHoEGrJUX+4PRVHiaOP9vI9HP03jzZf255gRWWuHg2E4
         f/oaeSiy2V+cCZ/pdtDR1pJZ6vQDHwlUKk3QuyNkCVMShqR0Gt9/myD/ekVWbTsiLIlQ
         K0fQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=bpIOrle7JnoRv0MGZZ3UEk9/S52oaMy2T+t94Sfnc0A=;
        b=ZYwSvS6J1oU+RHhYTBWekYlVPx5laDwVhQa/eHLnBZz+rf7QTZjDlP4SHWzU8Zfn44
         F+zRROtzpPXMAdnKDhr41KXcv0fgHjOvT4/8V7cc03CEWvcp8FMoYtm1pVUfTby8MnW0
         w4rtl9sJsLMNWs+s0oVnQIIR3MazyZLyRP9GfnI9qC5QhtgixzrQI4uP49cZvqM9n/cb
         03jqWVrT+Fj8woFwGhqHOakgMQHinhxevJaSw9+uTj1GIcUdg59hibnq5tBFpXXrzEeo
         l89Q14gtMuBWnfkNYb0Zu5egGVE/DOHk9XK0idmRmnCnwmEkqdTg+eYST6jQSUViUZYY
         emvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bpIOrle7JnoRv0MGZZ3UEk9/S52oaMy2T+t94Sfnc0A=;
        b=cdbrnQ0giTaDSimYMLjpHIiEh3EkK5huZN5n9f7K7PradRfntwwNKb3Hu/Wppw9fXL
         oWzIETb4ELoMfGal/jN6JO/1QLpSkJ8FkCvz5ZIOyXcQPEtRZKaYa9oQ+BeYaTiVETyb
         LB5iaQEfSX9Mgl31RXdqgFdi/UIWHl2WOvqERHEWHJjPXToUkhoZb1T2LWMcqyzTycsh
         Xp7yPAQJHauXym3qR6WYdfwyw6t3rv6Sh9bDmpb3ixW7AYTCxYD8P49D0Nj6dWNiExwS
         z6QlpgKPT268t2tXgPgRiF7OcfJp9Eu/PpH6IchtuI1NfwTEnwnAzfakedfuATCkdsAl
         AICg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bpIOrle7JnoRv0MGZZ3UEk9/S52oaMy2T+t94Sfnc0A=;
        b=Ir0pc2C3R1+If1Wcc4qbMRX66N+HkkwBHBitMlGphD2msAw9uKA9o2wMIpB99mdL08
         F0uFAMaajXsb6IZS9uc95LXibgqgzDKCG1MdvKZYuzbvfaIYRNePWYUC/+LM1NibUtc1
         ZqnAM7H9GEHGWgL/MCPG+HK/+kMvgbr49A4h/KNfDtwWdDc825AdBBxQxj85GeCjImb7
         04qUBV7YE0KeOUSUZN9DasTbhdDw8YJEg6N23QCEdVrXynAyDzk089GKzpwGZw8NFDWf
         T+p3DL/U+xsVio6Nr1UQHdWvGDKFG6ikd/TiHKWgkg4RegGJ4nP5sPCIwocgQgozceKt
         YcRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533khQBiNP/d1olm0Xzd9ZlT0B1fJ+yPqGopzkdT6oUBhuzZwaSW
	d3kwFWD4f5wgUkXpYOnbWjQ=
X-Google-Smtp-Source: ABdhPJyOo4pDy46g+gG2144VcIzZUUODn0Gf+GmhI0KZkkXUg0vdDhxVSv6+ODm1JJgNzv0Dg43pkA==
X-Received: by 2002:adf:9144:: with SMTP id j62mr13675346wrj.419.1605833995867;
        Thu, 19 Nov 2020 16:59:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:414c:: with SMTP id h12ls107241wmm.2.gmail; Thu, 19
 Nov 2020 16:59:55 -0800 (PST)
X-Received: by 2002:a7b:cb13:: with SMTP id u19mr7175559wmj.89.1605833994915;
        Thu, 19 Nov 2020 16:59:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605833994; cv=none;
        d=google.com; s=arc-20160816;
        b=1F7CIhuIvfj5QgHjV4/7pYxgtxW00VXJaGIYjY21eD8GX7Bk9b8tfYn6jVLvx+T32Y
         WRt/FwEAvgi2Wtz5zQIi3FZiZvB0IL2Ye0IRZJQ8ICLgvVtBCi6zdUxwOQTLjG50hza6
         3v3fe6q9zQ57HyktuhT5GRn0wh2mcA6Z0L58QQSAHqqmgLXznTe3P4c4FcxAxXQHTgBy
         cj/T9qdbTu2m+BtKv2AN8tyv4aFmI2ceefApXHHHSc2m3FN3YEsQt40f+gTABCeqMAgd
         s9tLwuSjQAbntarNIaM7JQI9fYvx7//8x9Lr+yuTiby6Za+XcyrYLdyOZrDrjDaOTmEk
         H7pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=yOh5GDZBtnZGMB4nSZGQu4hpXjGG1EfMKjTa4t9Sr5k=;
        b=QcSKKpDm3hV8jzTa/QjW8EsfxkMv3ToRyKLgXaX1yU58s4na0u4prd/dz8cSWTuReF
         6ipt6RGpiY5fIudlwH/UR03/c7MvPMryjbUcINikuwVjVj5eAqwr9q9fj1OXt9a8yolM
         f/vwe+SRTF6MbBp0k+l3K13tC77CGlCDsZRe/8csRoT3LWzbPlDl1FWnqldOzVrki9K4
         6Q1fwcIuO5zaGU0X2J6lHjvRNymWmpIFjqe4Eugka5oeWFlIvcMfMXyRCdrmJBjiw2D9
         8yLgDIr5fw3rg+nXlD+N3Zc34ljOxmmPS94JAvhRkyqwyTy5ftFt52Bo1JRMhvx5KPF9
         Pi5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id 7si214829wmg.4.2020.11.19.16.59.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2020 16:59:54 -0800 (PST)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kfumF-0082QI-Im; Fri, 20 Nov 2020 01:59:51 +0100
Date: Fri, 20 Nov 2020 01:59:51 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Pavana Sharma <pavana.sharma@digi.com>
Cc: lkp@intel.com, ashkan.boldaji@digi.com,
	clang-built-linux@googlegroups.com, davem@davemloft.net,
	f.fainelli@gmail.com, gregkh@linuxfoundation.org,
	kbuild-all@lists.01.org, kuba@kernel.org,
	linux-kernel@vger.kernel.org, marek.behun@nic.cz,
	netdev@vger.kernel.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, vivien.didelot@gmail.com
Subject: Re: [PATCH v10 3/4] net: dsa: mv88e6xxx: Change serdes lane
 parameter from  u8 type to int
Message-ID: <20201120005951.GZ1804098@lunn.ch>
References: <cover.1605830552.git.pavana.sharma@digi.com>
 <eff598a6313c0d2ad2a58227063adf86d0c10e90.1605830552.git.pavana.sharma@digi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <eff598a6313c0d2ad2a58227063adf86d0c10e90.1605830552.git.pavana.sharma@digi.com>
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

> @@ -459,7 +459,7 @@ static int mv88e6xxx_port_set_cmode(struct mv88e6xxx_chip *chip, int port,
>  		chip->ports[port].cmode = cmode;
>  
>  		lane = mv88e6xxx_serdes_get_lane(chip, port);
> -		if (!lane)
> +		if (lane < 0)
>  			return -ENODEV;

return lane

since lane is an errno.

Other than that:

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201120005951.GZ1804098%40lunn.ch.
