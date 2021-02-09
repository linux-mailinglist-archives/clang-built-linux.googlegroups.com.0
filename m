Return-Path: <clang-built-linux+bncBDM3FG7YWUNBBKV7ROAQMGQER45QA3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 696C5315696
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 20:17:00 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id lr5sf2280595pjb.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 11:17:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612898219; cv=pass;
        d=google.com; s=arc-20160816;
        b=q87OxWWeM2sXlomPJAXMW+3wJoP+mAQKQVp+4GOMtaXLdUoCUuBwx24+ZYV/Xc+WtB
         1WMDn7HeD4nE3u7Do0ki/cAXxokwLIZoR1weGI42mGqvTol4I7wcw6qizETqdgcds1Yf
         HqRP7rHX63VZFgBTs/tvQCMlNsvDBMo47ViPt7ZS1noprha8HB2ORIVqydN7rP9YBtXy
         kD0IiZAu92Qe/3LA2jnJNyEhMmklCbNuPZwEQq82NTrY1xDQVkymNtFvhvseUjH0oQPm
         0ahUEhJ+cfFviyqMdsr7mRbrezLpDEItUx5D+nnnHfdkpgFNNjIK7SWAbsrfnJIrstaK
         bOdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Vz9Bi1/WlSQICJgPKDHOsEowpapXjyzlm4uunIpGSkQ=;
        b=uSYYL8wTJf2pxPuDHIpJfytSk6Ru8wLW4UGZzhUtd30cHZ04rk+iMZiWyyMUSD7Kk8
         lzLa80tm53LtrWx4Q/CFjUjX1BnGjIGOnuXyabN9194pKWtfn4GmthQt5ITHhO8pvRWG
         LV7kMNqvn0eiux1TdSwE/5zcWsHeQGV//i5EuwoO+zdpTBQYpNOsFpdi7bhSQxmy7b1F
         KUufO2xTkUIlvbQnnXvltjP0ZxMvC+YEPNu3r04o4lb/d63vK9lBGTatZ7jLUpOvGfvs
         upDfkqAtxyFwLoDGWJIKXkQ3kwF5YlSUFjkhkGHfvTapsnsZSINYuIYQjV7dZYFRg3Eo
         Uvtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rVt0ksW9;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e2b as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vz9Bi1/WlSQICJgPKDHOsEowpapXjyzlm4uunIpGSkQ=;
        b=PmjztiIoFVuqkRSVoOEKj0ICXVgG7ENgetiuAWTwcak9n+ta6/TQ6OxLiDqVyKmizX
         k1Rlfn05pxUgzYSftqAMCzOFfI16ObaAZbXVdDmnoLjoIRgS8nltprSSDFN/MgfrVIai
         Q/F5sNlVQVcKTzzrxd4IBcNDrPra8A/JQIsYdgQOeiDr8CtiqdiQI9PXq5oIzhJpEXPa
         3JBXGj70IOlGxdSoCji8XUV3bDRsEBf/6g8X/7oPx7FrkAyXgaiX6LhoPuj8wujdCMN4
         2c1mj/GFYUbAfgFEPVXw6QVbOJ483+UEpL8Y3ErACniO+lSXLhYIiJdVkjaiVpRz8dIh
         wSCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vz9Bi1/WlSQICJgPKDHOsEowpapXjyzlm4uunIpGSkQ=;
        b=MbmAEiqZaip7oY7f5g2lh+sWwDfthmJuS4IVOKKrjAJptsec+aukr3GU70AQzdhMgF
         AcGDxVGEjPshnUW8TPJdCndsqH04mcQ2WeFlnA0p4ef+0cIkA1UgZXzP6jk2NvJTjWKz
         sQIPBnD1u6JFVC3RZI8/QZY6KjKjh2M2s8ZBJG5wkQP3PrQbcXe1zvCy7w5tzAUUvL+/
         8yvIGmDNPCBC31J13e70kpF6HsumrhSEhBmOWAXmKcLjr584oHImUncZN7S5Av4lh6mL
         JUlps1BdU3rVd1lxUq0Y3Oxjsu1nWbvsRAK/yNbMG14uKDuqWol4YS+2CEG5wuDHDlBK
         gs0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vz9Bi1/WlSQICJgPKDHOsEowpapXjyzlm4uunIpGSkQ=;
        b=PJsc19ip4D8oMeATeYAbMiMcfoQ8iEIBYPXhUNYjBhB4bk0chaKaqi5lYO8fBfulMQ
         vzujiWUPuaYqGocsgbxe/b42S2hzWThUipjrCJsZOk1UtsIuFzLGyR8aTrT47JyJIVVa
         lQa9YBoTUKKwXPMCOP/Nz1/NK2EflRhXZaiNPhu9tn+ador5fwC46/3NsQG5eKdFZJe9
         gVXkRNCK/T1+St/TtUDXc5BEd1DobqPj4Ssm6bP45uoTAzi1isJgpAFfhGF00ySSw0r7
         ar/YexQahHMc67X+WpSqicwRz+oJ3hY2G/5+Gw+FGB3JBSVCCMl1vdu/J1l2aXZLVa9b
         Z2RQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533loEDrM+Utaglk07r81765Ei3IKdDP3HDa/SO94QiNKw8PNSWi
	xM9X8QeC4UqYQmVYrS6YFwE=
X-Google-Smtp-Source: ABdhPJz5x2bCHW+7ou/jGF5YqUB1PZQW6hQpepRqYtx1Yr9yN3p7jv23rjP7tYBZRw4NllfopwqSrw==
X-Received: by 2002:a17:902:ed94:b029:de:8844:a650 with SMTP id e20-20020a170902ed94b02900de8844a650mr22763286plj.56.1612898219025;
        Tue, 09 Feb 2021 11:16:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a609:: with SMTP id u9ls10042909plq.7.gmail; Tue, 09
 Feb 2021 11:16:58 -0800 (PST)
X-Received: by 2002:a17:90a:8a13:: with SMTP id w19mr5617432pjn.117.1612898218392;
        Tue, 09 Feb 2021 11:16:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612898218; cv=none;
        d=google.com; s=arc-20160816;
        b=NJ6iJD2ryjLs2lRT8yZaWPgKR1fId4Eb8fhB2obO/Bn03X1LTEWWhpZciaVgiDObMa
         l1OCkUk9Pm0/Nc5FlN9EVwAW3rTmO4A219rCeQd3qVsm1RyjMh1iYrj5kIMKR16kIao7
         8nTCO92XdFaGCytgUinw7+B4FubgdhcS/f4ApAKEWBP1wC2dDek5dCBNcdlFHLgaiWET
         ObNMCfqIPoTTM18jV9UOPczBGn0DEUQrRZ/XVV1sO90SNxF86jvZqB1KGghTCr94ttdH
         /OOsEDzSvGuSXyPxsizWtnpRpQVbzbhTObYnHZosqJmzPzBelNEzgpLCvQXg6XBNCiHo
         zfIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=saOZwDKFkl1+WL4Z+kVhLvaR5zC6QYD8oqangHzyxNE=;
        b=DiGFrLYHpJUhj34NCBNr+SC2RApBSRTCwem7KN4cZ3DneTNENwEi2BtttaruIeKwnT
         sPNATRQyjVOQEDYfE/NfXdqc2q52+i4BPzkhjLxv51SzM26GW6gxWkEuBUNFETFeEBP9
         NHI4QvUM/u2FPZ7VvTJZgXhFqIzb2J1nyaxTDPJ9BFC0Pjrdfazle7X68/GBnSejX1eS
         SnJN5DIyAIC2/z0sb8fSBAy5UtDxsi/Ng6P/CiLWN5VMR98uKcJuIjklrPj8gOCyx8po
         /S3zRWBKf2OoYP3KJ4PlKGD7c+OXIvtpqN4MQhWn8H2qJn+xDkWOUItQZKqt85CY2Tt+
         mNmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rVt0ksW9;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e2b as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vs1-xe2b.google.com (mail-vs1-xe2b.google.com. [2607:f8b0:4864:20::e2b])
        by gmr-mx.google.com with ESMTPS id d13si951344pgm.5.2021.02.09.11.16.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 11:16:58 -0800 (PST)
Received-SPF: pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e2b as permitted sender) client-ip=2607:f8b0:4864:20::e2b;
Received: by mail-vs1-xe2b.google.com with SMTP id u127so9991947vsc.10
        for <clang-built-linux@googlegroups.com>; Tue, 09 Feb 2021 11:16:58 -0800 (PST)
X-Received: by 2002:a67:8d85:: with SMTP id p127mr15052826vsd.32.1612898218055;
 Tue, 09 Feb 2021 11:16:58 -0800 (PST)
MIME-Version: 1.0
References: <202102070252.HkjUQntk-lkp@intel.com> <CAFqt6zZm7rAZ=eqJWoWNojT-s+pmdnYL7MbbCPBE89fk6Q6szA@mail.gmail.com>
 <CAFSKS=MMCJySR3w0RfwY4uWi35VEGpLZHF2HDzRiHAP35iapNg@mail.gmail.com>
 <20210209172351.ovvf6nhhagbiwzih@skbuf> <4bb90ce3-10cc-407a-2158-f860d535d728@gmail.com>
In-Reply-To: <4bb90ce3-10cc-407a-2158-f860d535d728@gmail.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Wed, 10 Feb 2021 00:46:46 +0530
Message-ID: <CAFqt6zYvmQOjS2RxCrXi9zVzQHQUi9vQx2xbYZkiLzasG4OnDQ@mail.gmail.com>
Subject: Re: [linux-next:master 3824/6048] drivers/net/dsa/xrs700x/xrs700x_i2c.c:127:34:
 warning: unused variable 'xrs700x_i2c_dt_ids'
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: Vladimir Oltean <olteanv@gmail.com>, George McCollister <george.mccollister@gmail.com>, 
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jrdr.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rVt0ksW9;       spf=pass
 (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e2b
 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Feb 9, 2021 at 10:55 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> On 2/9/21 9:23 AM, Vladimir Oltean wrote:
> > On Tue, Feb 09, 2021 at 11:18:12AM -0600, George McCollister wrote:
> >> On Tue, Feb 9, 2021 at 10:33 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:
> >>> I think, this can defined under #ifdef CONFIG_OF.
> >>
> >> Was this robot reporting this warning for other DSA drivers? A lot of
> >> them appear to use of_device_id in the same manner (unless I'm missing
> >> something). Do we need to do something DSA wide to deal with this?
> >
> > Probably not DSA-wide since we still have drivers that probe on platform
> > data and not OF (dsa_loop), but individual drivers should have "depends
> > on OF" in Kconfig as far as I can tell.
>
> Not necessarily, there is a runtime dependency on OF being available for
> probing but as far as building goes there are stubs provided for when
> CONFIG_OF=n which allow the driver to continue to build.
>
> Adding either an #ifdef CONFIG_OF or __maybe_unused should silence those
> warnings.

Agree. Some of the similar warning in other drivers was fixed in the same way.
> --
> Florian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFqt6zYvmQOjS2RxCrXi9zVzQHQUi9vQx2xbYZkiLzasG4OnDQ%40mail.gmail.com.
