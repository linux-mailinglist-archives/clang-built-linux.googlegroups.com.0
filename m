Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4PLZPVAKGQEPOOJ4EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 664078BFB5
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 19:40:01 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id r21sf66917224edc.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 10:40:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565718001; cv=pass;
        d=google.com; s=arc-20160816;
        b=cFs87cfvHyzrGERrmf2eeu4SJXMG0CdvkZyqwV+CLa3x+Z4n6SGFnfYBDhkRC9G/3s
         nIhucLSTw6rwlN2ZfseOzRQolT5VqPXvZjLgHb+bOmWZltyL/hwa1wOWpi4yTb7xZHo/
         eNbzdHSvaySgsl2CAZQuFPkrWhWq3nztCydDgE1kt9k5EJyU/ir8pp0AiO2+OwWET7Ha
         /pv5LylDmfOPKJLrurSgC6tbKHfOSzH9km/kt0Mxn4K2qztD5awkG/L4bSiq4lVDI8dP
         WqJjqcSbmMrvphAsrYEzrx6Fh/GB/1+ocQvN2Xxbvc7i1Ego5QkpOhtvkLQzNuUCS4H+
         MRdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=OGMpkokJ+X+AKtofn2PNWIkSoSB51ujhrjM1CQPeG9g=;
        b=mKj/DqzHf0JRaB0ChNVURpfhRTZUiofwI8vxInYBksuKOJWD9Y4k4ZDajU8KcwOWGJ
         kZZyoCs2AcokrRpXSeI1b1H2pgOof+Yxm9B5LmXRtK1hZ8WCcZ5vBybwpccbvSdnjH8J
         f1Gqr9u+D+//WKCpouksgvHWz4otHnK9Zp7/OJkBXj1NBrU5XagalqQs/0/BFvAd63od
         DTXWQG9u4cgS+acFvQ5A87ly8I70W+GBEM1Imkpn9AtLXYVxVnDZAd9spDb5DHMzZ6ze
         M1kzvmFymJfHXP0wBHr4TlWYDI8HEQ9uIjJpdpfA+Z+moD6M10SW+VGsN/YL5daucEkE
         f+AQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pG72l78w;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OGMpkokJ+X+AKtofn2PNWIkSoSB51ujhrjM1CQPeG9g=;
        b=QIsJ/3DA6ebO9NKcXzGgLdwhYr77APIkguk7lL8LkP4Qela31gJR+Pdvp7pkMNQjh1
         8mlSsT2Vy3CohA7uW1Y79ZRUAe1gqZ9afOX6A1ki74lnTqYhgJoofqtWAwhTTMJ/9IsV
         /VRIpntF5/Yu3jrWRO9IRCZx7NNsi2kmPbN/q3N9e98WP/8oDkb/5ANwCgdCdMdOktI5
         MEZRRNobHNoX5oe66TkX+M3oh0txVDyIxAhxXKys0M1+/fqQ5bIYlRB0FJf/xywXmi+g
         qLGaSKgJvKX2wFRzkytb23leytuyXqNdsFFwwOEfNVCuRSQARN6TgCmfi/DThfn4d0AO
         jbMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OGMpkokJ+X+AKtofn2PNWIkSoSB51ujhrjM1CQPeG9g=;
        b=WT/FX++RtE9IRDtSfKIaPOfqcNc/IAnPyiQxZF/yb5ahOh0NGWuKeIzojGkVdjU7h8
         qaIOMyHxOAV7gO4yf02/kKGQnW1Jj7NP0FuA1MUd6qkL1KFTXyhy0K/ZfyXU12ZIBWae
         S0H3teLMSq/TGiLwxOelHrjOksU3iC9sRiD90v42qJOmJZs2qNrkNr5h0KRC/LbVP4Sp
         SVBxFhTg74s6wbBlKsuU+cRrwHSkPpYaCzuSvOmVQ2L4D4fJTB1840A+FClqvAn/ZbKB
         H8TE5wviHUyY8tAvr4yTjvbNxgY95LH4gQy5895ZPLwsVsjzCAYlsypnEhOoDAhIdbTs
         CYGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OGMpkokJ+X+AKtofn2PNWIkSoSB51ujhrjM1CQPeG9g=;
        b=hjDVdmAzafT7+1QZjxxelCUj7z2/3A0vtihJzCkFZAZ1Nv81trpx7mi6nxrFeTyNd7
         3Dnvo4ljODMxXhZZBDsmNynJhI+MkBPEz8iYiF+9j3zmq4AjN7lUOkeBW/ySMBDpSlmD
         0X7LzoLOJn+XRkD6ToByhJNTI3PZFLcm3hNFJ7J3y9bzOdAxUJIQ5o70WZ8Xl/jlPEpd
         vGSIRQWUWB2IwQ7dcbQ1vYTyaVFHwskIFpvw8rQx5BN8+p3dqlewyvxv7kf9RZP0qGdf
         Q+KVMzfAwbQ7+/mDikZrYdvc04KfdvluMSDHjBWfnCLiytd/6gVogv+ewMiqjqd1sQPQ
         MCPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUW+zDOtuqkspSUoBcJDPxrbsXBxvb/XWpShgZ8Gw911Bco/6R5
	e0/8tRXHbIMuL0WBhW5GV7w=
X-Google-Smtp-Source: APXvYqyuFwCLZaYvTPakjz5GpR6la0xj4YDXca/H0POW0VnK4Tri1w/KLSU9MXxDKs/EuiVCu1F8Rg==
X-Received: by 2002:a17:906:f187:: with SMTP id gs7mr12258974ejb.130.1565718001142;
        Tue, 13 Aug 2019 10:40:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:da41:: with SMTP id w1ls2683748eds.13.gmail; Tue, 13 Aug
 2019 10:40:00 -0700 (PDT)
X-Received: by 2002:a50:ba57:: with SMTP id 23mr44241359eds.196.1565718000771;
        Tue, 13 Aug 2019 10:40:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565718000; cv=none;
        d=google.com; s=arc-20160816;
        b=r974oSpRA3w8LR3S417SGM2BW3Fia7myFxb7wXS3UFaj6VPHHMcHN28WnB3rUviwk+
         Hswo6QY2YHoUCemC7GzTzDycCWyap1iO680E5P/4qZlDqmnVwLZlpXYLbINNxvT+kaha
         5DCnXQpCJh3NZLSHdW+UAXcww3k7nlk2lXhar21au6S94GZXTvgKFutT67m2js0UnQAe
         VAa+M1wfXPd/oMr4iKa2iTfhgzwQ31s0RGE7VP7WtxQS2FW4tLVgnaSZBKq6vSBJ22z2
         qvLfc73ZoxB1ZYleH6jUAfI0AaxgOaV0ie57TJq/5ni75mAzpWpJfMiK27IHLpKjG5dH
         oJ7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uc9OGgJkXEQLVzLUg29afYIlM/c0XiV4/R2vY7HBFgQ=;
        b=nnQTnisOwj0cQcga2862pRxtRKqBFw5NCbmftfzrop74daKve2J82AwfSKazCMB5o5
         uAjACZ3wsyMeIXcIkXZNzrKcFEjJj27xD1znswNIKhiiU+0FRXkY0rG66iETPUfru5LV
         t1MMU8K6afwEgu8mKLWlFpNwg5MLJVM0iNcJa+tSca7eL8d9U9+4i9NNLj1bptAwWFCg
         mV9Dn7dmZ4hikqRL1r4coDq5jswuw+2+fU+v5hdENMroaJw7rR1p5r66Mxpmf6kQm6u0
         w8ch58vl3q1fpPzEvpLf++hmO8Ve7hAVq9vkH0L6D31GzzQjEt+RMZuDicoCzQJRg5Ba
         tJDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pG72l78w;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id l17si867069ejg.1.2019.08.13.10.40.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Aug 2019 10:40:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id 207so2276091wma.1
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 10:40:00 -0700 (PDT)
X-Received: by 2002:a7b:c0d0:: with SMTP id s16mr4240596wmh.65.1565718000233;
        Tue, 13 Aug 2019 10:40:00 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id s2sm1566914wmj.33.2019.08.13.10.39.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Aug 2019 10:39:59 -0700 (PDT)
Date: Tue, 13 Aug 2019 10:39:57 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Cc: Vinod Koul <vkoul@kernel.org>, Sanyog Kale <sanyog.r.kale@intel.com>,
	clang-built-linux@googlegroups.com, alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org
Subject: Re: [alsa-devel] [PATCH] soundwire: Don't build sound.o without
 CONFIG_ACPI
Message-ID: <20190813173957.GA96879@archlinux-threadripper>
References: <20190813061014.45015-1-natechancellor@gmail.com>
 <445d16e1-6b00-6797-82df-42a49a5e79e3@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <445d16e1-6b00-6797-82df-42a49a5e79e3@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pG72l78w;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Aug 13, 2019 at 09:22:29AM -0500, Pierre-Louis Bossart wrote:
> On 8/13/19 1:10 AM, Nathan Chancellor wrote:
> > clang warns when CONFIG_ACPI is unset:
> > 
> > ../drivers/soundwire/slave.c:16:12: warning: unused function
> > 'sdw_slave_add' [-Wunused-function]
> > static int sdw_slave_add(struct sdw_bus *bus,
> >             ^
> > 1 warning generated.
> > 
> > Before commit 8676b3ca4673 ("soundwire: fix regmap dependencies and
> > align with other serial links"), this code would only be compiled when
> > ACPI was set because it was only selected by SOUNDWIRE_INTEL, which
> > depends on ACPI.
> > 
> > Now, this code can be compiled without CONFIG_ACPI, which causes the
> > above warning. The IS_ENABLED(CONFIG_ACPI) guard could be moved to avoid
> > compiling the function; however, slave.c only contains three functions,
> > two of which are static. Only compile slave.o when CONFIG_ACPI is set,
> > where it will actually be used. bus.h contains a stub for
> > sdw_acpi_find_slaves so there will be no issues with an undefined
> > function.
> > 
> > This has been build tested with CONFIG_ACPI set and unset in combination
> > with CONFIG_SOUNDWIRE unset, built in, and a module.
> 
> Thanks for the patch. Do you have a .config you can share offline so that we
> add it to our tests?

I just took the arm64 defconfig and deleted CONFIG_ACPI and added
CONFIG_SOUNDWIRE=y or =m to produce this warning. I initially found this
on an arm64 allyesconfig build.

> 
> > 
> > Fixes: 8676b3ca4673 ("soundwire: fix regmap dependencies and align with other serial links")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/637
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >   drivers/soundwire/Makefile | 6 +++++-
> >   drivers/soundwire/slave.c  | 3 ---
> >   2 files changed, 5 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/soundwire/Makefile b/drivers/soundwire/Makefile
> > index 45b7e5001653..226090902716 100644
> > --- a/drivers/soundwire/Makefile
> > +++ b/drivers/soundwire/Makefile
> > @@ -4,9 +4,13 @@
> >   #
> >   #Bus Objs
> > -soundwire-bus-objs := bus_type.o bus.o slave.o mipi_disco.o stream.o
> > +soundwire-bus-objs := bus_type.o bus.o mipi_disco.o stream.o
> >   obj-$(CONFIG_SOUNDWIRE) += soundwire-bus.o
> > +ifdef CONFIG_ACPI
> > +soundwire-bus-objs += slave.o
> > +endif
> 
> I am fine with the change, but we might as well rename the file acpi_slave.c
> then?

Sure, I can do that rename and send a v2.

> 
> > +
> >   #Cadence Objs
> >   soundwire-cadence-objs := cadence_master.o
> >   obj-$(CONFIG_SOUNDWIRE_CADENCE) += soundwire-cadence.o
> > diff --git a/drivers/soundwire/slave.c b/drivers/soundwire/slave.c
> > index f39a5815e25d..0dc188e6873b 100644
> > --- a/drivers/soundwire/slave.c
> > +++ b/drivers/soundwire/slave.c
> > @@ -60,7 +60,6 @@ static int sdw_slave_add(struct sdw_bus *bus,
> >   	return ret;
> >   }
> > -#if IS_ENABLED(CONFIG_ACPI)
> >   /*
> >    * sdw_acpi_find_slaves() - Find Slave devices in Master ACPI node
> >    * @bus: SDW bus instance
> > @@ -110,5 +109,3 @@ int sdw_acpi_find_slaves(struct sdw_bus *bus)
> >   	return 0;
> >   }
> > -
> > -#endif
> > 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190813173957.GA96879%40archlinux-threadripper.
