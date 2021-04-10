Return-Path: <clang-built-linux+bncBCSPV64IYUKBBYUUY6BQMGQE5QYPVCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-f188.google.com (mail-lj1-f188.google.com [209.85.208.188])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2E935AEF1
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Apr 2021 17:55:15 +0200 (CEST)
Received: by mail-lj1-f188.google.com with SMTP id d12sf648544ljo.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Apr 2021 08:55:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618070114; cv=pass;
        d=google.com; s=arc-20160816;
        b=GRGxL0pknXMJ1wFTtAbi7QQJYksG+PiotBN5WYr1DZFWiy5erUubXWviaNo+IrSMR8
         c1uqqZLTanz4PKnwATqIpSAancTcKbtcvgHpTzv14M0zKjIsEId+Du8KdkUzn77EOW0v
         IKacZIdFcLA5uOHt6qxD7jAJRPUN4nYEx1yHVR1dslQfZX02N1GKGm5wUsLSw3jHMzGa
         0odTD0nD4SWs2xtltVrmlLBlBemJZSdtKI0y98T1TMDiw8FQqk3aMZjxyduK87LH5BGF
         HtD4uewKgZxaG5gBQ2sEUe19pFZB51uHMHExTo2sdIX1brUpDebTVOTh4n4ULr5m295O
         0clA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=D9Pa6P1LMXQI1vR+WCxIIlNzn48jp1FFeYw20IGjuj8=;
        b=MFx6Nhss/78Qc/c2Xvf4bftr+h/sHr1WQTTnszfHgCUZJ+Y+Fwtk/Hp8qrbg0wfRSW
         3O+GybPIFdGd8wVY2YhJ4vSLL1TklCTNZlCeEgJ8M/34ljaA/qiZycN7k2887tbwSIMM
         4stO5cxgIZKPBG3H3RW2cNVNd0F2V89VIinrv+v1BKFo1Qx4vlGG3CeQnDTTLZ8QAs3X
         qh0+HysjNHNM8VyWpjL/+3hRFyJPZuCe257Ca6y87A9M1FM1JvvkRdnPnZ9/aR/mdWFI
         CB4MGfqh33uKHHAbf6G8mQjxfPM7ZllAWO+PnqiA3agSIOOx2son86VKGc/I6SHXrspQ
         plBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=c5UKjvS8;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D9Pa6P1LMXQI1vR+WCxIIlNzn48jp1FFeYw20IGjuj8=;
        b=pHp7wucSO+x+UWL6tSaXTS9kdo3uBGvuli6ehlTqXgs0IPben44x9dxyIAnzMHGGbF
         8H2+KHNaBLDq92249o/nS3zZ7pvSqJix9uhW+2ShZvZWqugROQMUZMxMB7+g+mowoc9p
         +40J3PeDAhqB9kZdppy7c4LZVdN/7eKO32cXC8tWzOf8mEP+4fJ6dgc7SkG8xp+5GLYD
         8hZnE5L2W9K64894cYiIhTXe4rC3vi9zP9YLYppMH50cwNBfGMtNZt5EoCapK9q8AAhV
         5VM2RgNup+KmZqT+lBXIULNh8vNuUoPNwVLobNQ43bLChUh7fTMoPgUfv/imIcy2g+MF
         gH1A==
X-Gm-Message-State: AOAM533IZ7pTNPtByyrn7K6H2gU2R6nL1VGaOMm+icLXqQZ8RZHb7bWg
	oOdubNqTE9Y5KkEhPVpberA=
X-Google-Smtp-Source: ABdhPJxeRi+VUOBX/XnNJAvS/WhVazlO2ycMwLfplHfsBqJSLUijY6TDI1+hJOE8eVOBHUK15JGq6Q==
X-Received: by 2002:a2e:90c1:: with SMTP id o1mr12486238ljg.510.1618070114858;
        Sat, 10 Apr 2021 08:55:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9b0e:: with SMTP id u14ls48091lji.5.gmail; Sat, 10 Apr
 2021 08:55:13 -0700 (PDT)
X-Received: by 2002:a2e:974d:: with SMTP id f13mr12524907ljj.210.1618070113862;
        Sat, 10 Apr 2021 08:55:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618070113; cv=none;
        d=google.com; s=arc-20160816;
        b=pmK9b7jrhavReUTzw3frWRteGU3pG7XrNVSvIgU+839MJ9/Bdl+Psmt0B+gOuDsNYc
         ++SFFNHXFTll4xz8dxC90Iyw656Z/hwewC2MV75vNRrX7EYbuPTVhJV9vhT1YvlAscgp
         Y2cPCuXM4imuWNmD3Bf8BikuoxqcXe5fwb9lbCpp+WShvjTQNtInKqVzMC1YK60fpMdA
         d83wjXnpVKSrY6SOKKS6kDkrmj4BbIiq0/flR0eN/pfEtvg1Gs5UpxsNw1rmYwZoMlFg
         3Z+QR2szp9ve+kEAdIQU3rSjbsfqwwaYbN7oAz0n6ltxcOrCzxpQbIsSd6GVChkUdMfF
         QMOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=CzOBLJLIpMaSm2apRythmsTcqiiwrKSDjrbInU9e0SA=;
        b=mew9Ovh7JksG80u+Jq5MDj1vnnQa+3R9sJGSXAMQ2KQv9M+DH0KtQ8DFYalcA3tvii
         kt9pxU3Dn+SkjjSrgFMXgDLLFV0jLm5r1M6vJ152jFamJ9i/01TtOvh48XLXnT79CBII
         erB8oZT3ydp9x5ti+SAqRq0+0mu6MVRE9Q0lEPWSB6sLs4W1YpcQFQQhhcO3dBK+K+jC
         2AYHkrlN92LR4bsLCrAyW2LlAxjdN6mBG8H8rtOO81L01HzJxH0BseuGGFC7Nsx77/xN
         ia05U4atOyD0aNEc33+Sdi4WgJcs8lRmlpD7FGQJ6Bjs5x49/LGn7KQKNcZ8bO1IZv8Y
         rHEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=c5UKjvS8;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by gmr-mx.google.com with ESMTPS id j7si35934ljc.6.2021.04.10.08.55.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 08:55:13 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) client-ip=2001:4d48:ad52:32c8:5054:ff:fe00:142;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:52272)
	by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <linux@armlinux.org.uk>)
	id 1lVFwk-0003Cf-AS; Sat, 10 Apr 2021 16:54:54 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1lVFwf-0005Xb-GK; Sat, 10 Apr 2021 16:54:49 +0100
Date: Sat, 10 Apr 2021 16:54:49 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Matthew Wilcox <willy@infradead.org>
Cc: Ilias Apalodimas <ilias.apalodimas@linaro.org>,
	Jesper Dangaard Brouer <brouer@redhat.com>,
	kernel test robot <lkp@intel.com>, Linux-MM <linux-mm@kvack.org>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	open list <linux-kernel@vger.kernel.org>,
	linux-fsdevel@vger.kernel.org,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	"David S. Miller" <davem@davemloft.net>,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>,
	Matteo Croce <mcroce@linux.microsoft.com>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: Bogus struct page layout on 32-bit
Message-ID: <20210410155449.GI1463@shell.armlinux.org.uk>
References: <20210409185105.188284-3-willy@infradead.org>
 <202104100656.N7EVvkNZ-lkp@intel.com>
 <20210410024313.GX2531743@casper.infradead.org>
 <20210410082158.79ad09a6@carbon>
 <CAC_iWjLXZ6-hhvmvee6r4R_N64u-hrnLqE_CSS1nQk+YaMQQnA@mail.gmail.com>
 <20210410140652.GY2531743@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210410140652.GY2531743@casper.infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=c5UKjvS8;
       spf=pass (google.com: best guess record for domain of
 linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates
 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
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

On Sat, Apr 10, 2021 at 03:06:52PM +0100, Matthew Wilcox wrote:
> How about moving the flags into the union?  A bit messy, but we don't
> have to play games with __packed__.

Yes, that is probably the better solution, avoiding the games to try
and get the union appropriately placed on 32-bit systems.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210410155449.GI1463%40shell.armlinux.org.uk.
