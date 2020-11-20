Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBYWD3T6QKGQEZTQ7OQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0E92BA00E
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 02:54:43 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id b185sf3047431lfg.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 17:54:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605837282; cv=pass;
        d=google.com; s=arc-20160816;
        b=sezgyuFuv7jAi8BEJx+DrhbB6vZnuw4SflSR7w16p6Zaflo8WJInOLNGmQyDGu1TlE
         05n7pCy00kvX6brIrjTYQ5cZ1N/OXy1Z/E2mNBTbOGUJmc8d950BJ0Wpxwgh5bovyLtM
         55oEN1LMkDhlegbGm/2qPO2sETpMV8QvuE/MLiC7Erumfyd8OWoy81mLu8o9aZfBRmXB
         JOm4abbTx3dyx27aDEOoJCs43MhTZvJFTUnD9WFjhDC1vxln7VCi2VJDFJ2hed4iEWZO
         KplgAmVE651wfb0wCYMht/5NT/yIXISQeMY55M9VIqEL0XOsyHVIdpMNt5EY8f/j9E3V
         YeOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Z+vyY2kT18vXp5oMjWeIp+gckGmF1v7vC4xSEA2J08s=;
        b=YTQSuVGzg3HWceHUc7UmRIUumpaDotHZnjsavSPo2opFP2qXVYOV4D1A9wCJI3STO8
         72KOHBUI+dpZ3KxDKot9fgT78oEtxwhrExqw3LQJU8ANZebeXUmSpZfBwXxxfMHXuEFD
         zoUIjpk6yRFxz+j2SVrkkfudKFzsuUw2n3oNSCrPzu3M0HApdwhQJsXt3aIurpLdOk12
         mFaeHWmHLGjCx4KywRJYQjfcpSNsZhjZGZ/VzDeoauzPPAmH00A7Mh0gmYxzKPL6EJPd
         vvdQJxdNKMTv3ybQ02+BUVaChK6iYa2WXc5343Emh9gRObesHBo+lTj11ApI/iF3q4pR
         ft3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z+vyY2kT18vXp5oMjWeIp+gckGmF1v7vC4xSEA2J08s=;
        b=drGCwz9yFsvfU4DfnkkPrVQkj5G46BtSYmqrX4OVkJt77vkvixVR8ejqlkfLiFdP2N
         5M/K7BZJfjPcJg7MMjn8sAWJZnCUoL+WdIcKrq8C2WU5MESS0fRwOjcuYJHShp1ADMEG
         4Ll9Wd9dsgPfgfBPPUnwpW/7p5NXCqUO8vVpZrltxvJ+Rz50FVi3VmcZGMBQGCaqyxJy
         GMRtgYHp66OZFXwES1I6OfbqcMt9edCJ4yIlb1QE4vlmAb7H9Pj9OAd/stbjXL9cvEEc
         cQ1Wv/XYuw22LeILw4pWOYqeVaEtqV2AL/yup9KFI/HOIGTw43xQMfRr3n0HoP4KkMcH
         od7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Z+vyY2kT18vXp5oMjWeIp+gckGmF1v7vC4xSEA2J08s=;
        b=qUDeW2c1uD3KrGgstH1xTCnwvn0LNRM+Qk8V0Qgxq9NgxXj2Xg0HCjLQnOTTedtjDZ
         3ptVzcDhSTWhTdeDIH6BccfmzNYUYZLnNv1kiKFIRVN0xzrDtpnFO7NawP4A7aCJv+Pm
         cJXrsKTjAH+f+aFd/y8udo+qyRrJg7iIQECOAV0V7gAgo8VZx7EW2rMZ2010gctSYbLs
         ToLpYfO3BRcP+L8vyjcz6anFDnTsjxnRBbIjG7mX3e9un/Z0n9mxUqz2jWAslI6rpFUa
         HUEZMtVLCHXcgjT/iEQt5ISI6NtpNF+C6t89g82GrIZ1J1EwYGLOJHWIDVvPPyndnYrb
         tIxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532iYj9RiuCLKXZVmB3T0Q6h6PtVausiJ3X5twoiEsAnXgTXhLMr
	0M2sDu4N6c3mwy5jy8GNTFw=
X-Google-Smtp-Source: ABdhPJwp/sxavU1C/yVz79zMn5DJlYiWBFJVzWSfuHCaLaQvwFKljn5syZMmTOWFFz9dleukJAoQ3Q==
X-Received: by 2002:a19:e04c:: with SMTP id g12mr7212254lfj.261.1605837282658;
        Thu, 19 Nov 2020 17:54:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:914c:: with SMTP id q12ls836780ljg.8.gmail; Thu, 19 Nov
 2020 17:54:41 -0800 (PST)
X-Received: by 2002:a05:651c:2111:: with SMTP id a17mr7487741ljq.220.1605837281562;
        Thu, 19 Nov 2020 17:54:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605837281; cv=none;
        d=google.com; s=arc-20160816;
        b=uaAvtRb6ABHB9qSg/2kkucSYndQs5svBWcG5zbD81ieWb85pp1cH6Q020+X16s63WR
         g/+nT+Xr0T6KKlldzDqpfKb03aexnehcw+WVNVkLhj9eeq5KNmcz+7UinPWkhQVX/Q5D
         ybSZ7sn9WvcBm6fgMRDQanISWdhBEDxMhLWuuK2y2ECo1S92A81UXEC9P3lSWXK6t2ue
         lRDrbNMuAA9KJ0rOqKfIfxg4TBCAPxD4hJi7il4reW+n5Z8MLuWau8VSwuZcq6LlUShQ
         YYYwWgUFqDozad4FoxkwuHwwXkuJxFWdxhEXNDYV93oSuahd3zP5MiSFLq7UdOom6Tg3
         Xcxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=LVbjDapawr6X0SeWH92kzcC86spBupXe2wAXspeRBBI=;
        b=SpRhCHRmw+kzZZnEHUZOoccbPtfFUFrtW/JyvIYKCP9INJuSncSCrTKwYKUaVa2feu
         xghXa/Ya6yyhPxfdkRSAPgIDabPVp1r7Q2WATghnXZOczQcIBVhwEsXo15DW3h8JGwqR
         ey/EMcz4j4nECzoXKGkbDHPAriiWw8OB5n1vbuu3Cbf118wlE3CHKUqsQhAb3UUWlvsf
         Pwa5DC0vEECkQywb16cOtzLV6mT4X/X5o+txiRRvjo+gQgNXelOMSRdiMQV5nT1fqvXa
         /xnmz+tmZZWdK6EU8jnL1V27KKtmgKm501S6D9Yn4TcbR88hoe4zXv3Bf9te6TT8nZPq
         Dj5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id t18si82130lfr.1.2020.11.19.17.54.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2020 17:54:41 -0800 (PST)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kfvdE-0082qw-MZ; Fri, 20 Nov 2020 02:54:36 +0100
Date: Fri, 20 Nov 2020 02:54:36 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Marek Behun <marek.behun@nic.cz>
Cc: Pavana Sharma <pavana.sharma@digi.com>, lkp@intel.com,
	ashkan.boldaji@digi.com, clang-built-linux@googlegroups.com,
	davem@davemloft.net, f.fainelli@gmail.com,
	gregkh@linuxfoundation.org, kbuild-all@lists.01.org,
	kuba@kernel.org, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, vivien.didelot@gmail.com
Subject: Re: [PATCH v10 4/4] net: dsa: mv88e6xxx: Add support for mv88e6393x
 family  of Marvell
Message-ID: <20201120015436.GC1804098@lunn.ch>
References: <cover.1605830552.git.pavana.sharma@digi.com>
 <df58a3716ab900a0c2a4d727ddae52ef1310fcdc.1605830552.git.pavana.sharma@digi.com>
 <20201120012906.GA1804098@lunn.ch>
 <20201120024311.5021d6b7@nic.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201120024311.5021d6b7@nic.cz>
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

On Fri, Nov 20, 2020 at 02:43:11AM +0100, Marek Behun wrote:
> Hi Andrew,
> 
> On Fri, 20 Nov 2020 02:29:06 +0100
> Andrew Lunn <andrew@lunn.ch> wrote:
> 
> > > +	if (speed >= 2500 && port > 0 && port < 9)
> > > +		return -EOPNOTSUPP;  
> > 
> > Maybe i'm missing something, but it looks like at this point you can
> > call
> > 
> > 	return mv88e6xxx_port_set_speed_duplex(chip, port, speed, true, true, duplex);
> 
> He can't. That function does not support speed 5000. You can't simply
> add it, because it clashes with register value for speed 2500 on
> previous switches (Peridot, Topaz).
> 
> 	Amethyst reg val	Peridot + Topaz reg val
> 2500	SPD_1000 | ALT_BIT	SPD_10000 | ALT_BIT
> 5000	SPD_10000 | ALT_BIT	not supported
> 10000	SPD_UNFORCED		SPD_UNFORCED

Hi Marek

O.K, as i said, i might be missing something :-)

I think a comment would be nice, pointing this out. Otherwise somebody
might try refactoring it, and make the same mistake!

      Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201120015436.GC1804098%40lunn.ch.
