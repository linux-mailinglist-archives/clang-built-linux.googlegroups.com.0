Return-Path: <clang-built-linux+bncBCSPV64IYUKBBC5X5X5AKGQEP7R6SSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-f183.google.com (mail-lj1-f183.google.com [209.85.208.183])
	by mail.lfdr.de (Postfix) with ESMTPS id BB04C265E8D
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 13:12:11 +0200 (CEST)
Received: by mail-lj1-f183.google.com with SMTP id t12sf3463793ljh.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 04:12:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599822731; cv=pass;
        d=google.com; s=arc-20160816;
        b=mwJV9HGQsD4OS6lhTJDPUcu1n76WsLvRyhev+PDoR5YTiwi1lcECQKSenxXbiATHz6
         J/gws9gLpjKUhz/kEaDy4MPfTdeu9HjUljuR3KXvWAiwoLJMjkuJh0YyZUdgge6qfVUH
         Y5obBXbqw1gdvFWYPiv8lZ5R3NFS6eJyQosZdw+q6iyJ2YAPe/kSnhuj2doTaKjBOn5j
         6+OiIJpVy/AOhpFvGdOd+YH8iO95Rn2ecpCWijtQ7pvV8KZWFvm/Vjk6QEmKtHtIzlLz
         +fh9Nb4cM+t7+t3z/znENHHFn3tQJW4qKrFhJUsIDO7Ce7QBD+jTCmpFXbopKwkwWwoz
         2zpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=txkk2vmqUolCOQzhILZY7bfRcz+w1fe13qcQAnVFRlA=;
        b=h3yWlz2DNhaxembiw27ntX55npKHpCM5wkkYgfV5qHzkPxdmUBPzvhQouatm5oV/I+
         4V4R1UGP0E6tfXRy+QflDVC/RXESZMjQdDqR529jarpCCXBt0TKGmxzXTMsNAoRHI7IH
         wQF6NuK9CYuvlBh6KA3yl1cGOSLObSJbAFM8a4Kk93ditvfjV1qcj5sNrUWOnQjhmP/K
         E36fCSdfS2AeNZLOY5PppLvZbJBwomeHoXV6G/jvV1kEE3JUcdZ80Lv6W+NGmOpFhRat
         bq8GA2csYnWbYRle1PyH9xJeN8ob2dktX6FM08XHKTchRsFyfkpWvaaYu3X6drA+Lyda
         0Evw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=G9EACaFQ;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=txkk2vmqUolCOQzhILZY7bfRcz+w1fe13qcQAnVFRlA=;
        b=VbaVU9jdnHfHOnWwB3I3/tNjy26IHEzI4wMw4ltKgmtqVMOaH2QdEGNmlRaZU4Pnfg
         GrYLhUSO6J8wCEE91iOb2NI198VlVxMeURApdaXNch1o/LGLqzAwfqCCSN9YVvklvBcH
         tl+LrKeW3c4zYW4TbBjfBNtHdi4ahxqz5+oAH7oPyHOpcijQ89fMCktp9hybM61PAU7j
         2M8u9zknhU36DHTMouexSPawY9G0vCyWkv3vb9RNz67ymv8rO/Yt633yaUohnkJkYbAe
         O0v8Gl/dpLNE3Mj8NoV+YkuauMNXmDRW4iWAfR4G0al4+0qqhB5/BVktchEA0Gr81tbA
         hfuA==
X-Gm-Message-State: AOAM530ozboVd+o3ClHoETfrXD8R/xqrr2WfS2L3+9AbGSonMOlFa4kM
	+Ee+Ui607tI0UOzVcgE3P78=
X-Google-Smtp-Source: ABdhPJz6It1yPH4vuTo8ye8M8E8Y2VrbDcAHM6Jl0LGxrLIjP70RgIA56NEYDcQOj8X/f9gA0fA2uw==
X-Received: by 2002:a2e:9497:: with SMTP id c23mr641992ljh.124.1599822731229;
        Fri, 11 Sep 2020 04:12:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:93c7:: with SMTP id p7ls383634ljh.11.gmail; Fri, 11 Sep
 2020 04:12:10 -0700 (PDT)
X-Received: by 2002:a2e:a588:: with SMTP id m8mr651104ljp.210.1599822730167;
        Fri, 11 Sep 2020 04:12:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599822730; cv=none;
        d=google.com; s=arc-20160816;
        b=auv23NVDvjqpuW9ZTnbipurRozvVocFnZ2qXBGy9rW+i56ip52KbB2rq0p4jFxjgej
         z9QwpOllC+rmfG3ykzyOG3+QqN10ADP27gVAg79ZVoliogDD0XntJjUTdDH6EnYxdP74
         Z+SpRCwrhCzMEU5j5LM1x0XMrVOQL+229ydGexrDBib+jRLmxs9/LFRl0Y3d+KPtDeOn
         hNihZ3qUBHhQyMEpKPMj8MGcQM2kXl5BAt66jhenaIWEwKd31DfFpXR17yhHRHv2F+RZ
         T+NSQRZ/tHtbEiQI2MOzJqI6O2aidv5Rn3SjucmUwZ9eIDhCIVunYm8/RGDGgFJvfdea
         yrmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=ezJ1BgslRUnjJEWuhVuP3BQAlkdnjIJCQAO6atDyaiI=;
        b=iIUXqZdMojQyhFoysY2ahQmWxQZ2GUpBcyd9cyxY3xHOQ0YMIIKcGtWYWDdhOlWnOc
         ASwQpWVsMNn1WZkg2ZemZgurIrS3SY55lmUr9/Ca45/Xgo6B0y7KIRMiA92SfLOWWx7C
         vHrUilg95MbV3PplGMRQHv0QvfCzjRvovpDcg1u1QEWe89L1WBrfJGciwsV1vSQGSq7M
         ED21lnQs2UcH/pnM2vqNY+8FI4stdmcBviok160U6QyTW3U0enFjFR1cKr5OLoEbRQnU
         CNjTYbEwmJTO79Nwqev0ofDGsmgUO4WZ4fKjJHDiUWjqCsBAaQf/HiMKwsZx4R5TbnqK
         EYmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=G9EACaFQ;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by gmr-mx.google.com with ESMTPS id z6si72019ljz.8.2020.09.11.04.12.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 04:12:09 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) client-ip=2001:4d48:ad52:32c8:5054:ff:fe00:142;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:33010)
	by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <linux@armlinux.org.uk>)
	id 1kGgyI-0007Hz-0o; Fri, 11 Sep 2020 12:12:02 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1kGgyE-0008Aq-HL; Fri, 11 Sep 2020 12:11:58 +0100
Date: Fri, 11 Sep 2020 12:11:58 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: David Miller <davem@davemloft.net>, kuba@kernel.org, andrew@lunn.ch,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next] net: mvpp2: Initialize link in
 mvpp2_isr_handle_{xlg,gmac_internal}
Message-ID: <20200911111158.GF1551@shell.armlinux.org.uk>
References: <20200910174826.511423-1-natechancellor@gmail.com>
 <20200910.152811.210183159970625640.davem@davemloft.net>
 <20200911003142.GA2469103@ubuntu-n2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200911003142.GA2469103@ubuntu-n2-xlarge-x86>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=G9EACaFQ;
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

On Thu, Sep 10, 2020 at 05:31:42PM -0700, Nathan Chancellor wrote:
> On Thu, Sep 10, 2020 at 03:28:11PM -0700, David Miller wrote:
> > From: Nathan Chancellor <natechancellor@gmail.com>
> > Date: Thu, 10 Sep 2020 10:48:27 -0700
> > 
> > > Clang warns (trimmed for brevity):
> > > 
> > > drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:3073:7: warning:
> > > variable 'link' is used uninitialized whenever 'if' condition is false
> > > [-Wsometimes-uninitialized]
> > >                 if (val & MVPP22_XLG_STATUS_LINK_UP)
> > >                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:3075:31: note:
> > > uninitialized use occurs here
> > >                 mvpp2_isr_handle_link(port, link);
> > >                                             ^~~~
> > > ...
> > > drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:3090:8: warning:
> > > variable 'link' is used uninitialized whenever 'if' condition is false
> > > [-Wsometimes-uninitialized]
> > >                         if (val & MVPP2_GMAC_STATUS0_LINK_UP)
> > >                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:3092:32: note:
> > > uninitialized use occurs here
> > >                         mvpp2_isr_handle_link(port, link);
> > >                                                     ^~~~
> > > 
> > > Initialize link to false like it was before the refactoring that
> > > happened around link status so that a valid valid is always passed into
> > > mvpp2_isr_handle_link.
> > > 
> > > Fixes: 36cfd3a6e52b ("net: mvpp2: restructure "link status" interrupt handling")
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/1151
> > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > 
> > This got fixed via another change, a much mode simply one in fact,
> > changing the existing assignments to be unconditional and of the
> > form "link = (bits & MASK);"
> 
> Ah great, that is indeed cleaner, thank you for letting me know!

Hmm, I'm not sure why gcc didn't find that. Strangely, the 0-day bot
seems to have only picked up on it with clang, not gcc.

Thanks for fixing.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200911111158.GF1551%40shell.armlinux.org.uk.
