Return-Path: <clang-built-linux+bncBDLYTQ5JSECRBRVSZ6CAMGQEC7TXABY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id C817D375342
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 13:55:50 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id i102-20020adf90ef0000b029010dfcfc46c0sf2113676wri.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 04:55:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620302150; cv=pass;
        d=google.com; s=arc-20160816;
        b=mv568MTPHhb9pUVk3xfgr1RErtJDm7qS6+XAZpBNR6HWmxihfCWzz3Ual7hcElerzv
         uu/msTR269cHV7YZi8H35WmJ5Ckqm2m2FvnOInBC4P2UwtrG7kWk6OQdkxfOyVZB/XFy
         a9TNe2hmFhcP/6jxpo+WD8TiGDZIrII9Nu8DgwjrTp4IVlKrP5OgohumkRdRCXe4kHzi
         hPjTNrezbsimUV5+0RaDH3ORaf7pv7nwLEb0FB1oUJvuxYlTB8p5TRNie+/IjZ92qcyX
         R2mnFAVhIu7977o7A6gzkUAKzyYHpI3z/UEY2cGEHmnGNSBhxTQcK81l6/QwfIE5LBv5
         bSfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=oJvIsyPbGsyEkRcYEFZV05DGuABPiQPNtibYjHbhapQ=;
        b=GZ7hAnSbtIaVrSTYxAg7KldSikt+ZCeLfKvWwH2MlSsTzfdJ9aTIj81L8IkB90gU2q
         ggX4r43/NwKBxVmDTm1l3TOmrEVHmpWHiZKolaZPh5Ds9liUI0ipoS0XFmgvsSGEAamk
         N1Oe1h2ou/SdQyVuAnjbK0WDYRvyoEQvRebD9Z6s5oQ3MeqQTqYD99ZdbdQbFC4amYDg
         JzBtO/FvPfDwHlLvkf3Tw6NZLtj3p5ceqDxxWie73+W4rzcvJ6czsXNb/Fvv4vT8qjhD
         OnWnToi+zcU7Mar3lZ6poqUcqY4MiAq1NmbzvY0QsJmiz0M7CiAS3F6DKEtpSZoxx+kh
         Lf8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DZUsC5k2;
       spf=pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oJvIsyPbGsyEkRcYEFZV05DGuABPiQPNtibYjHbhapQ=;
        b=hnFoPFlitse3mmNT3LBBoc1/EL4cjYykrom9zgtCAG4FnNsY0UXqlED6KUSYQeCXbS
         6q7qGpY73nlQi9CApXcnDC6W9/U1XWSkRbKKzDahw86d3cO7yBviRik7FpTCscq4Zgqp
         wRlG/lPIKbdyfpRQvLVoDLUt6yNiaIdeiQI/jjCDuG902D+S9nCcK+J6F4S0q3aXQYyA
         jlpxAjmh64rWKKPChiyHbXyJsOzZE623eZCwF99W5uY74xmLZp/A6pvJX9mjd9WQZv7d
         KCpFqR18VV/PMwubLp5JNc0ErnJcB2H0J/J0GCFM/uxjCRm0dtShePYjsW55ZED7YvE9
         p/Bg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oJvIsyPbGsyEkRcYEFZV05DGuABPiQPNtibYjHbhapQ=;
        b=cyjwFM3SFqZ83M5b/hrENZfVseLG6gY5GOkzjfZ/buVVLSWq8H8IdFN1HJBjwzqH33
         /1awvOxEFmKim9igVR7fbPf/Z1UmhRT600jrictQbhbCnCR0JSKuFVWW4sPDFgFQJrL+
         9iOLpDlQU+H/DABh1EYwMzlLRGJqMHTp5E03IPFf2bpLqXp6JrkezkvgMSChbIOGWzka
         cfxbd8Q5fGAzOQkn5bItJBg8lNCiWffOdduDlp8xsb/0LrIhEq6Tc1n4kzrCjJbrztjJ
         mqr0wKwFtoZQOCTnvkENQ5m1MQGIEwOZTxw9G7b1uCi4tHOVIxf7rmYUIValnYVAHTFP
         GMHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oJvIsyPbGsyEkRcYEFZV05DGuABPiQPNtibYjHbhapQ=;
        b=arELLh92SP+StIbaPIVhQ5NrWzIav2M48iVFzNxwfSfMmxzmVk/7EoVbLmQgwfMOXL
         7yYLdMXT0BeKd64FAwDUkSRvInu3CgLJtwLYmZ8+HpyQg3HD0/sMvTtHxvxnHGL2P6HJ
         AzJuvNXStoraCrL8x5Lz1KsNEt0Vx+HwiOAoqx1jtuZ9DipbLoUcEsZlRyXDJVKtJe5F
         PB/GDToHNiJL5uSyE5EwuUg3FaeZ7S/rAyBmvqMCZW6c+HAQN/iKUDE//m8xsFQblt6Q
         vEaOkKGSQRN3SbeKWVtHx5lnNQk1jOXrRpzurR3RVIiNdn3cl1N7fwy1iBgF2YzBySBa
         rFhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533P7iaFo7XWvvFqY3vyEhtMACLKrJlRAmU7w7XY++Ub8dqU3e53
	G/wgecd7vI39nz/x1vBkcFw=
X-Google-Smtp-Source: ABdhPJwUaaRZci9RAfb9mIOHNTjSp+PYPPxJUCoYqyTcoeM5mTg3AbqGPNSQaCOtxgEZYujEVcmXTQ==
X-Received: by 2002:adf:f8cb:: with SMTP id f11mr4703123wrq.168.1620302150537;
        Thu, 06 May 2021 04:55:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:1287:: with SMTP id f7ls2874221wrx.3.gmail; Thu, 06
 May 2021 04:55:49 -0700 (PDT)
X-Received: by 2002:adf:fc42:: with SMTP id e2mr4745777wrs.302.1620302149611;
        Thu, 06 May 2021 04:55:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620302149; cv=none;
        d=google.com; s=arc-20160816;
        b=JmQVMgZ1gs1DvByKPHT6kJPqB//wFgo9rAfQdG4RGvbEI3L4PVahawovSK3PYo/gci
         pLSHeGbilNvGWR3lOsl29f2kf3LUruIp62AYU44dbCVLuATgEyQyYmmWVdArOhQTIGG7
         U+HJ6bWQjDZjvcWKw5oNlI5KIqBjebRo8wh87iqYoJNNwJq8uw7JqdYZbXpCXJQHMTh5
         sn0xXEVyxFWIhTmGSmd2ZgYykbbQOM0oVYH5aFSPXTfYBi9wP8BwkdihpIuWGkeTC0E3
         u5Hcn4d98nbzcaeasFSqPk2mR1JQIndIx4xcZUKGUe+5478Om0mQ31Pegm5Hv9o/5bpF
         eOcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gDqY6Wm/vZlz9V2q3RUMuSorzrRpkJy7OXAMktCuQ74=;
        b=EBjLm1qdm65j+Fk1OPzqP/i/l9MrBXWLXJvBAZiAwhISpd1SHxdI0RZpw6VxPkglO2
         03ltEI63rsUznot8Dzq5JunmbpmBcm+BtqkSgYjqGGTLw3LGf9iKuzzkxP82qYgqZXK6
         2u5Wrj80wYalNiAncYLxr8IZsxx3uubgSuTJJzEvF2WBd0HLR/4NmDgO+hhJxg9YGleb
         20A5fIXNmasilH8kReCWWEgwbh+mf+cPFHDj3m1OhFXegQj7CeRn1VXKlkF2FSh9mbaV
         L35fA6iLO1P4OWhRM7x0FZjcQFmDx3F1UDNwigRnwMzM/drVVeTfXt5NFmv26hno0ZVH
         hdIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DZUsC5k2;
       spf=pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com. [2a00:1450:4864:20::432])
        by gmr-mx.google.com with ESMTPS id b137si330860wmd.1.2021.05.06.04.55.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 04:55:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) client-ip=2a00:1450:4864:20::432;
Received: by mail-wr1-x432.google.com with SMTP id m9so5312140wrx.3
        for <clang-built-linux@googlegroups.com>; Thu, 06 May 2021 04:55:49 -0700 (PDT)
X-Received: by 2002:adf:f50f:: with SMTP id q15mr4455250wro.279.1620302149427;
        Thu, 06 May 2021 04:55:49 -0700 (PDT)
Received: from michael-VirtualBox (cbl217-132-244-50.bb.netvision.net.il. [217.132.244.50])
        by smtp.gmail.com with ESMTPSA id l18sm4023264wrt.97.2021.05.06.04.55.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 May 2021 04:55:48 -0700 (PDT)
Date: Thu, 6 May 2021 14:55:46 +0300
From: Michael Zaidman <michael.zaidman@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Jiri Kosina <jkosina@suse.cz>,
	Jiri Kosina <jikos@kernel.org>,
	Michael Zaidman <michael.zaidman@gmail.com>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: drivers/hid/hid-ft260.c:794:44: warning: format specifies type
 'short' but the argument has type 'int'
Message-ID: <20210506115546.GA1745@michael-VirtualBox>
References: <202105060637.LeEC6ztp-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202105060637.LeEC6ztp-lkp@intel.com>
X-Original-Sender: michael.zaidman@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DZUsC5k2;       spf=pass
 (google.com: domain of michael.zaidman@gmail.com designates
 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
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

On Thu, May 06, 2021 at 06:47:46AM +0800, kernel test robot wrote:
> 
>    drivers/hid/hid-ft260.c:515:59: warning: variable 'len' is uninitialized when used here [-Wuninitialized]
>                    hid_err(hdev, "%s: unsupported wr len: %d\n", __func__, len);
>                                                                            ^~~
>    include/linux/hid.h:1190:30: note: expanded from macro 'hid_err'
>            dev_err(&(hid)->dev, fmt, ##__VA_ARGS__)
>                                        ^~~~~~~~~~~
>    include/linux/dev_printk.h:112:32: note: expanded from macro 'dev_err'
>            _dev_err(dev, dev_fmt(fmt), ##__VA_ARGS__)
>                                          ^~~~~~~~~~~
>    drivers/hid/hid-ft260.c:507:9: note: initialize the variable 'len' to silence this warning
>            int len, ret;
>                   ^
>                    = 0

This warning has already been found and fixed by Dan Carpenter in
the "HID: ft260: fix an error message in ft260_i2c_write_read()" commit
on March 18, 2021.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210506115546.GA1745%40michael-VirtualBox.
