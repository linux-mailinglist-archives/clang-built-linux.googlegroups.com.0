Return-Path: <clang-built-linux+bncBDP6N55ZUYDRB4NL6GCQMGQE67SCZGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBEA39CD4E
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Jun 2021 06:58:27 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id v2-20020a17090a9602b029015b0bb8b2b9sf9407829pjo.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Jun 2021 21:58:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622955506; cv=pass;
        d=google.com; s=arc-20160816;
        b=UslmfyN9uC8NllfsJUtRgNPZDeHOkYX2bRLVQDXmDn8dSWDRSVDLj8QE0aMClZEbvW
         Lm/EQNZyebQa2KIDiSm8Xg/bUtaPmPDzK/g5+uEIqTXcilPusrTvvSmZ0hONh6jHZgUl
         0qveMBs0NNwc120A+QWoZvPrgSdJ53rOWDEQOm0kOo8DWV0D6TyzC/QWtqAIh0stO0BT
         WU2AkM8L6VM8cD65L5sKVbIwJCPxoYyPyYtA/qSFU1hqVrqeUrJKPkEEyjmjQAJ2ZzGV
         mSLyrf3mjYL3JXhkpOFf8lua8+aELr5z2AbD1mkvq3uzHeLpYhySoM7n0x5MmKqrOXcl
         F30A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=AhJqomRSlCvfYefA/FbFyM++BUMdiX/VAvx/n88lDHo=;
        b=MwrLjsoJWfd2K8Ak9/34XUCq9Sbo6m0DKWmgVfvbj52VlgMbK/qUNWRkzwYdW7uAwH
         SVOo2gv9QeRQdWTFerysKJDdreKE/maFzLZAkSfhYNI2xnnTB1HIhSG05Ua7vcZX8Hhv
         RG3ZzDs3Iz02a5XwR1j0oyhX9aC4h+/nSd0KaA+1JJfvAb2bQxBZbWMEBNTwe1+XzosJ
         x1ADywmD8GI2xvT758clm5Q86YA6ujDxWNiZAUq6nVgrnj+7DTDQw5x7YMBfJbyoTYlk
         8iPQA6mpXMOY+crPXPwzVCM02r80HSKmOWtWtfHQfWWxfeSKSYGKbUNKbwoxshCpQtTD
         PAYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bt5YGf7P;
       spf=pass (google.com: domain of dmitry.torokhov@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=dmitry.torokhov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AhJqomRSlCvfYefA/FbFyM++BUMdiX/VAvx/n88lDHo=;
        b=hzOlGhaVlvfHx9kl8WJTpBwLb+sUhAXi0qiiUtJOHtRZD/UU2e3jz+68VH6VBrE+2x
         eaVc1lgmsEnI2OxIPEtpooBeqo63NgONfZpN8aLt+RmjL/uD3u4UR0i/JbALQOc1puNM
         9BCF4VJ1+FXpkrEvn7ZbYECv3IR3yPNDoS28QjDtMHj/ctQlhmMDQ/dgbSZ2MORfwmKT
         dEEhQAxaFC7P9i3tRibwsoPQdH6byJbeyQ0mflWzRCNb8/sWwWsE0jFjT9OBEgqjo0SD
         x3HSW9vwilYd9nSqBSSATtBYJXYNSimQfQUa0t0cY5MBacyaRlKm0zetaBR0YtdBW/WC
         wxaw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AhJqomRSlCvfYefA/FbFyM++BUMdiX/VAvx/n88lDHo=;
        b=tksyH1aXlfCko1JBN0LGgUwhehJdB1Be7KqcbvKxZzIfI/awZbtTosA8/Yr3B55Vmn
         2jZOD/QhoyGkGMRzb6UuRCWSa58dL8NrJozq7zWPcHNVRMihDxSXjOUxJOLGBRsMysqt
         88yaZM3Bh9cg9WVJdXQutkb92PvyD7m8Sj57tlWfRX+eBB/t+KZgap8K2uXSGMn1MLeo
         ZaPSLvUw0eeYgkpvOPGRFleamxIOISBAtmnljLHbYaZpKLm3U8W2gN9XgvtvbsQhxBFm
         GJmf9ItnFd/5P9sGAy3RxVAYLs6g8/YZonMhCtWvIOMV+giSBO8TGT9Ww6jjipXLMXDi
         h1KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AhJqomRSlCvfYefA/FbFyM++BUMdiX/VAvx/n88lDHo=;
        b=dLtVQ25M0JTWhW0GRYW1zNDUxUijHPf36YViAhUuc7fE4V7sfokSbcAGNA85XgCIYV
         O8dZEhwKfh98iJN9ta09yVJl4Jq6fDO+j4q63NNvudFn6/4u3VVgDK4gSvBQKF2tHXbj
         5NUrNFUbIGfa/obEVtetGHy9Z0dML3aOn3cR3UtZyBeM8v53X4kDUSEGakiOjDmHwsqA
         B4EZ9YzV2wwj+f9ZoqGzsRrzAkPwZhxnDJWdSS68WVH1if3g86yLFgHftG1snBlQ9Un8
         mbz6D9dKdESn244UhcWwwC1HbY5/A+U6MimAPH+pHsUm6ez25OQFj5DZJk4I7gBQEL48
         Wikw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pKNUOTdBjbuLyt2N3PTZhg6RexuU+2tY/vS5htRaKSSNEi95U
	+kwsI1ZU1A/14Xt8t4KIxFA=
X-Google-Smtp-Source: ABdhPJz13N2ZGz+Tl9lnooGTLOsNqu0hCURzNhIeldI/VD9NuyUePsf7GY5E+lAMJQrnT2EzbK7SVA==
X-Received: by 2002:a65:458b:: with SMTP id o11mr12376746pgq.51.1622955505950;
        Sat, 05 Jun 2021 21:58:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa8d:: with SMTP id d13ls6184782plr.5.gmail; Sat, 05
 Jun 2021 21:58:25 -0700 (PDT)
X-Received: by 2002:a17:90a:f304:: with SMTP id ca4mr14197179pjb.177.1622955505393;
        Sat, 05 Jun 2021 21:58:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622955505; cv=none;
        d=google.com; s=arc-20160816;
        b=XOKhkhziWwTKS7yURFJuG5Taf7BOgYj+9GewUaGSlCIMMc+o8PeBsKzuLhBZA+uH6W
         3r32OqiFzD0HrFR8Cd1inUBTWP3uEI11wJ+Q2jRff/inb2hmYXKLxNQaA9n5yXbuBD/5
         /Esm2CXy1e2mrxbE0y20U/8Fw+rgzl4UQ8agzBYRPco0CEqowOANrdGbgB5dDY+EpfcM
         3OQ2Xvs0+SfVZP9EKVI/Dk8QSTPyV05sbr2xj6VYP8IdPMhG+9PqElpbx1Jzh7x+YTo6
         khnozlnS4RCKPn6Y2dzgrjIF++WqLMBnyPCxpYEMvxtvfGX0ZZboXZYtqdoH8Ai+5YLI
         CYxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wc+pP4mJ8gC7Kc4Xkh4LOwsnF8sQMgUoyidPnbH7K5A=;
        b=Mo6B/FkHAS+9P4gB0tfNfU1SLpXxzORIg1PDm3ovxA2M6Gw5hC1yZaFSrOdxEb92mQ
         gf16c8jZbAA+TSvTDXPkr6MbCLiEoWQ2iI7Rg6Wgkd6kUs6hKNb7ZV2xXdcaCWIZ3Lyj
         fN5cYHctvQCmmZR0Y24uCQL6cE0GiWFuXMuC6abiUyRQOZ7ZGBFexw4RBVmWWPWuyskZ
         y0RuncQfRQG5blJ1LHKikxeRyiTjXuUnL/LPS5DbeTjI1srAoTHv2Y9GSqr9+pchFAk9
         cAI8fMTCmXd7yxp4PW88QN3k8tJTlZ5yPvKllIMGrF5f1m+yT7J9/yrzgarLgDfEC+uY
         0NYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bt5YGf7P;
       spf=pass (google.com: domain of dmitry.torokhov@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=dmitry.torokhov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id n5si679778pgf.5.2021.06.05.21.58.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Jun 2021 21:58:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of dmitry.torokhov@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id i22so7889150pju.0
        for <clang-built-linux@googlegroups.com>; Sat, 05 Jun 2021 21:58:25 -0700 (PDT)
X-Received: by 2002:a17:902:e20a:b029:109:ed31:ad68 with SMTP id u10-20020a170902e20ab0290109ed31ad68mr11902806plb.33.1622955505080;
        Sat, 05 Jun 2021 21:58:25 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:5762:ab6a:6802:ef65])
        by smtp.gmail.com with ESMTPSA id c11sm8347714pjr.32.2021.06.05.21.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 21:58:24 -0700 (PDT)
Date: Sat, 5 Jun 2021 21:58:21 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: kernel test robot <lkp@intel.com>, Jeff LaBundy <jeff@labundy.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: drivers/input/misc/iqs626a.c:1645:12: warning: stack frame size
 of 2560 bytes in function 'iqs626_probe'
Message-ID: <YLxV7cyZ5Mh2WoXA@google.com>
References: <202106061241.dpaJ49Wc-lkp@intel.com>
 <YLxSgsTrnFSUP4Fq@google.com>
 <365f58ae-d6c5-c9b3-631b-7e9266e91db5@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <365f58ae-d6c5-c9b3-631b-7e9266e91db5@infradead.org>
X-Original-Sender: dmitry.torokhov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Bt5YGf7P;       spf=pass
 (google.com: domain of dmitry.torokhov@gmail.com designates
 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=dmitry.torokhov@gmail.com;
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

On Sat, Jun 05, 2021 at 09:55:14PM -0700, Randy Dunlap wrote:
> On 6/5/21 9:43 PM, Dmitry Torokhov wrote:
> > On Sun, Jun 06, 2021 at 12:37:43PM +0800, kernel test robot wrote:
> >> Hi Jeff,
> >>
> >> FYI, the error/warning still remains.
> > 
> > I have no idea how it happens... 
> > 
> >>> 1645	static int iqs626_probe(struct i2c_client *client)
> >>   1646	{
> >>   1647		struct iqs626_ver_info ver_info;
> > 
> > This is 4 bytes.
> > 
> >>   1648		struct iqs626_private *iqs626;
> > 
> > This is 4 or 8.
> > 
> >>   1649		int error;
> > 
> > And another 4. And that is it. The bloat must be coming from elsewhere.
> 
> In my experience, this stack usage comes from a compiler deciding to
> inline some called function(s) that has(have) more stack usage...

Right, however from the driver's perspective there is nothing that can
be done here.

> 
> Aha, I see that Paul just referred another stack frame size report to
> a commit that uses 'noinline' for some called function(s):
> 
> https://lore.kernel.org/lkml/20210606044926.GJ4397@paulmck-ThinkPad-P17-Gen-1/T/#m4a6ab160a5d9d974cf9ac524836a6292d73128e2
> 
> 
> >>   1650	
> >>   1651		iqs626 = devm_kzalloc(&client->dev, sizeof(*iqs626), GFP_KERNEL);
> >>   1652		if (!iqs626)
> >>   1653			return -ENOMEM;
> >>   1654	
> >>   1655		i2c_set_clientdata(client, iqs626);
> >>   1656		iqs626->client = client;
> >>   1657	
> >>   1658		iqs626->regmap = devm_regmap_init_i2c(client, &iqs626_regmap_config);
> >>   1659		if (IS_ERR(iqs626->regmap)) {
> >>   1660			error = PTR_ERR(iqs626->regmap);
> >>   1661			dev_err(&client->dev, "Failed to initialize register map: %d\n",
> >>   1662				error);
> >>   1663			return error;
> >>   1664		}
> >>   1665	
> >>   1666		init_completion(&iqs626->ati_done);
> >>   1667	
> >>   1668		error = regmap_raw_read(iqs626->regmap, IQS626_VER_INFO, &ver_info,
> >>   1669					sizeof(ver_info));
> >>   1670		if (error)
> >>   1671			return error;
> >>   1672	
> >>   1673		if (ver_info.prod_num != IQS626_VER_INFO_PROD_NUM) {
> >>   1674			dev_err(&client->dev, "Unrecognized product number: 0x%02X\n",
> >>   1675				ver_info.prod_num);
> >>   1676			return -EINVAL;
> >>   1677		}
> >>   1678	
> >>   1679		error = iqs626_parse_prop(iqs626);
> >>   1680		if (error)
> >>   1681			return error;
> >>   1682	
> >>   1683		error = iqs626_input_init(iqs626);
> >>   1684		if (error)
> >>   1685			return error;
> >>   1686	
> >>   1687		error = devm_request_threaded_irq(&client->dev, client->irq,
> >>   1688						  NULL, iqs626_irq, IRQF_ONESHOT,
> >>   1689						  client->name, iqs626);
> >>   1690		if (error) {
> >>   1691			dev_err(&client->dev, "Failed to request IRQ: %d\n", error);
> >>   1692			return error;
> >>   1693		}
> >>   1694	
> >>   1695		if (!wait_for_completion_timeout(&iqs626->ati_done,
> >>   1696						 msecs_to_jiffies(2000))) {
> >>   1697			dev_err(&client->dev, "Failed to complete ATI\n");
> >>   1698			return -ETIMEDOUT;
> >>   1699		}
> >>   1700	
> >>   1701		/*
> >>   1702		 * The keypad may include one or more switches and is not registered
> >>   1703		 * until ATI is complete and the initial switch states are read.
> >>   1704		 */
> >>   1705		error = input_register_device(iqs626->keypad);
> >>   1706		if (error)
> >>   1707			dev_err(&client->dev, "Failed to register keypad: %d\n", error);
> >>   1708	
> >>   1709		return error;
> >>   1710	}
> >>   1711	
> > 
> > Thanks.
> > 
> 
> 
> -- 
> ~Randy
> 

-- 
Dmitry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YLxV7cyZ5Mh2WoXA%40google.com.
