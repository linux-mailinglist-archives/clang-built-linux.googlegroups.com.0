Return-Path: <clang-built-linux+bncBD6LRVPZ6YGRB6PG7GEAMGQELF35V7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DE93F1C31
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 17:06:35 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id t16-20020a17090ae510b0290178bb9f2f04sf3172636pjy.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 08:06:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629385594; cv=pass;
        d=google.com; s=arc-20160816;
        b=BUemrPa1KbIpwwMscDhqUJGbuZU7HD4bnAFR8PrUe/6Xfs8SFdqEiuz8sBFaIDuNjx
         ulKDsXgJUp6U7q9eP+aFqUmeKiT3wcND2A4peBMak9FrHkq/Os+PJFS4IIbaKlPFh/hk
         OfMxWDxdwS6M9AJyNPws3wGUQICGGvd+qwjMG3GDrSCfKvB9UOfb9hqLu4K6kQy02uwV
         tiIliIVKmUxjExR/9zTZdhmIhjtj31hSe9vFOBCUhXjcxi3KVnbAY6GsyVduc33hOsNH
         nM7Jq74Szqa3HSE8V8l9gQVeZ09wie/qygHMBdJzUzU+q/j+2/CoiEx2gLWx76FH3gGT
         DnKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=K57ssixDn5KU8pSkpBgRCNg3B55RCOph/nWJiWCJVuM=;
        b=KdrD3R25fll/6Pe/307Aqu3mHNgWsj9922GdSk8O5klIw9IEhrB0OsVY5eBlpTvVxB
         z1jqtn2Bg7Y25CGkRiCcVcpOJdc51XLIJNfuoglp+Fq3QFubaCDy8XucgjFoZyGtQk5y
         NPTGaBoSJTi5Jd+AxB671iRHYJfhuRu/2o9zhA5AQ6SOW6vJOqwNGvqMOLS9yTe37VvB
         H7VWOZLpQiBVVVQNPxQoTrIdTW4CHCvG/ye6XRsiIk9qB97xZSIH4pukD+FbZ8BeBrzb
         xdiyw3XcOO2SmHWLTG17eAa3tWwEq/UrLp4Gqw/NQjizS6PYSHXDk+3EZKKKOsMbbYdz
         YT/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of stern+6109fa88@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6109fa88@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K57ssixDn5KU8pSkpBgRCNg3B55RCOph/nWJiWCJVuM=;
        b=WyInYgYONNj5USLJDPxw3lFgcMj+g5gj2xLKRYTKeVmSoyaRjfRBZHl49LHYKXVX8g
         arsCKSA4wmFZTy53Dxn61Tmje6uQLPkGyfSfB4Fj+gCR3qjEqXSZkzyOxEKUJnSFfml1
         g6At/gTkP2Wlp/ui5wxezOgna2W5YuvuFu4VOXqq0nANMatvqKF+30Aqe2DDjj/Hg3SV
         Dm12PR+0BIAucpRvBMgU42VebKLz6MOamR5vIypBHU8q4VEcLxjX/tam+un+Zi9tI6ku
         H9j5HZwP6oNtUZjWKELHh1lmsZ6rVW5zzOxKWTT5JeAJ7Svdcj9t6xvDnGlO3nrcOzVh
         SkZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=K57ssixDn5KU8pSkpBgRCNg3B55RCOph/nWJiWCJVuM=;
        b=Y+2gEDxXE7gAx4lbJOu9TSkpAUuEXtO4P7bs20I/ggVwgdCPIFdGycaI8DKy+vefv/
         qRSUKuiuknOzXO7SFTwwdHo46pF0fP/d4bBzN0TJtyJR6iibAPUHvBcWsV0DGPt+BCQY
         n5pKXjB2Vu+S/ttF3ykrozoiWXc3/Lhrn0wbIsmMferPf06zK+48FcI6R1ooRdkmOnrX
         D+kq9q3GKjKVEa7CPeb3Ul7cirCo4EmwnqsVA6rCu4Quy3dthjUxWJW7B/o60RNBT4po
         joNeIZMbHfprO/Uq5JOv+ubOze3mqECCtvbRIVNL0lXGtk/EQrNcEF/wYnEJ+R0nDfUR
         r/EA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530FCfscYGfl4/bTAttCVO6iYORY2gOegAaqoiMCTGBSj6EZn4AS
	muipeyV7Im7NfLUXqIs+YBs=
X-Google-Smtp-Source: ABdhPJyPwlEHQ0rbug5aRt1lQ2H+Agk2FDkO3Oo1mn+YqkKQ6XPrzgAzARpANXP8Z3mNA8F1vlS3Hw==
X-Received: by 2002:a17:902:d48e:b0:12d:7aa5:de2e with SMTP id c14-20020a170902d48e00b0012d7aa5de2emr12175827plg.34.1629385593966;
        Thu, 19 Aug 2021 08:06:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1388:: with SMTP id t8ls745668pfg.4.gmail; Thu, 19
 Aug 2021 08:06:33 -0700 (PDT)
X-Received: by 2002:a65:6717:: with SMTP id u23mr14647763pgf.28.1629385593130;
        Thu, 19 Aug 2021 08:06:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629385593; cv=none;
        d=google.com; s=arc-20160816;
        b=xQchrP0He/c+afoNoz0ifLwAU6uShlvizc+JzhHiy5R34HiaOb3SVVNnvjjTpFoysv
         O0C/eKk/3qSAcYbBnKxNtSG5idrZYQ/7WwuBt7HF5owOjBKzDMC8Q6yOgIxHpcsGNmMa
         7pl2DlCTw+fzGVg0CrDauYc9HZEJ51QJidxyZMTOiy2513KTx51jfD91PyaS+xmVoV25
         GQmM6+b4y8HTf+6SgvgUKgN/jrgrrYqM3Lt6tS/z6mSrocnOfM4/T8PSCAXxF+MtrSFK
         RggpIF2xO7muo7vzn+7t0ygoOxmomLqvAfQQcMcP2eb5jhAod9Hyd8fpNt0OxVCWKaDd
         m/cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=WebOs3r6HWTp2TxyrFdvCzluh2JWb97bml4MjtOlDkQ=;
        b=WYY5ZyomBqAW97DQ3HWphYcQYcXUQu4dC82CGjI6ChRQnVmqRhV+KNXtrc9Odc/zvE
         fw63OFUFWolB/frKnrOvIOCiELoyijchkswSpDphAOoVXhgSzbJ3XIlPxQAe2hxus9+d
         haUQAI7QfElCi8SSsA/hLy/3F6DOM6QB9ZijZm8H9zUFnFA1533doOFHsBV6V7ScZLfQ
         yqHhk5hL4irdRtyRo0Dh63b/VATAHKQe3oDlsFm4mmsbPRdBpnUW5klcS65UgC7Y1zOB
         OR7u9oWORRQCag9kkgt7+1CUCc+8UblXY4UczCPzJaVkRzLYcTGBUHYWVPm18oimBNIM
         +F6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of stern+6109fa88@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6109fa88@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by gmr-mx.google.com with SMTP id o10si223485pla.2.2021.08.19.08.06.32
        for <clang-built-linux@googlegroups.com>;
        Thu, 19 Aug 2021 08:06:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6109fa88@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 229339 invoked by uid 1000); 19 Aug 2021 11:06:30 -0400
Date: Thu, 19 Aug 2021 11:06:30 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Rui Miguel Silva <rui.silva@linaro.org>,
  kernel test robot <lkp@intel.com>, clang-built-linux@googlegroups.com,
  kbuild-all@lists.01.org, linux-usb@vger.kernel.org
Subject: Re: [usb:usb-testing 54/97] drivers/usb/isp1760/isp1760-hcd.c:735:2:
 warning: Value stored to 'scratch' is never read
 [clang-analyzer-deadcode.DeadStores]
Message-ID: <20210819150630.GB228422@rowland.harvard.edu>
References: <202108190619.wLK5u4fO-lkp@intel.com>
 <CDNBNHH65Z6Z.3P3H9W04XAHDB@arch-thunder>
 <YR5xuManlukIAf3L@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YR5xuManlukIAf3L@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of stern+6109fa88@netrider.rowland.org designates
 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6109fa88@netrider.rowland.org
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

On Thu, Aug 19, 2021 at 04:59:04PM +0200, Greg Kroah-Hartman wrote:
> On Thu, Aug 19, 2021 at 08:47:37AM +0100, Rui Miguel Silva wrote:
> > Hi,
> > On Wed Aug 18, 2021 at 11:09 PM WEST, kernel test robot wrote:

> > >    drivers/usb/isp1760/isp1760-core.c:490:2: warning: Value stored to 'udc_enabled' is never read [clang-analyzer-deadcode.DeadStores]
> > >            udc_enabled = ((devflags & ISP1760_FLAG_ISP1763) ||
> > >            ^             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >    drivers/usb/isp1760/isp1760-core.c:490:2: note: Value stored to 'udc_enabled' is never read
> > >            udc_enabled = ((devflags & ISP1760_FLAG_ISP1763) ||
> > >            ^             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >    Suppressed 4 warnings (4 in non-user code).
> > >    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
> > >    4 warnings generated.
> > >    Suppressed 4 warnings (4 in non-user code).
> > >    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
> > >    9 warnings generated.
> > > >> drivers/usb/isp1760/isp1760-hcd.c:735:2: warning: Value stored to 'scratch' is never read [clang-analyzer-deadcode.DeadStores]
> > >            scratch = isp1760_hcd_read(hcd, HC_CHIP_ID_HIGH);
> > >            ^         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > 
> > yeah, this is desired behaviour, this read is only to make sure  that
> > we make something different than the pattern to test go over the bus.
> > However I will take a look to this warning and other clang warnings
> > that I am seeing in this report.
> 
> This is why I hate this type of warning, doing a read like this is
> totally normal for drivers.  Compilers that think this is something they
> can ignore or warn about are just wrong.

No, no.  The compiler isn't complaining about the call to 
isp1760_hcd_read(); it's complaining about the fact that scratch 
stores the return value.  Since the value isn't used anywhere, there's 
no point in storing it.

You can get rid of the warning by changing the line to:

		(void) isp1760_hcd_read(hcd, HC_CHIP_ID_HIGH);

(The (void) cast isn't really necessary; it's just there to point out 
that the return value is being thrown away.  You can omit it if you 
prefer.)

Likewise for the store to udc_enabled.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210819150630.GB228422%40rowland.harvard.edu.
