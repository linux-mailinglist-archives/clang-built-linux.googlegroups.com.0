Return-Path: <clang-built-linux+bncBAABBUGF6LWAKGQESC5QU2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 98657CFCD1
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Oct 2019 16:53:06 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id b17sf13857812pfo.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Oct 2019 07:53:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570546385; cv=pass;
        d=google.com; s=arc-20160816;
        b=CU3n5/WdK6ztdfNIVHSx7Bd/GCWO44dmnBlmcJqwwWRg4gmyLyiivxl3P77JLXywyh
         7C0qQXtfAgXSvik60b5If328wtvPp+yMsm7y241m+t+8mn/0jPgDKdFaeiDX7GwSsrMO
         0ll/ZKv7Jr3UA/4rdqV3bFdtR2xxifx469rele369Ljfq8Zenil8gjvFnWImUeolceMV
         rqXNIGRCLFDbgullruiE3XKcvkAzSOlI1w21Ip8SM2Eg2MSRCPeA8uXYIoOdPRW6Csvw
         N6EtDRTdvULCDC3Mk0Q2ul0JZMtSrbwpr50JouzXtZLI/UiboBlvRIBg5hBxU8X5xIaw
         z5zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:user-agent:subject
         :cc:to:from:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=0rqM7xHJvG0+MKeLl/bgEE18pNhnLTXrDImjB5BHBVc=;
        b=Yt1WvxMj3SysHR6y8ksXti96qOmfSQ38+qZ2d1zvJrHubSi/kOpwu/SXEmT8a37pZE
         19XZTJG5P/gsaX2h46tKH5LSKDS1QSliXwGOhR2kA8Ks0ZEZo93KGDcqrGTwRDPFIKOA
         0V80xE+dOmSXgRe6yGs7fQbcX7p0+R88da9NzQ62S5FNmJ8DYx42irAOq7vRU7W3uCJD
         pohnKNSFAI0G3Jy6at/xU4f59inQqw9HD8oniF3NeNYED9Zw/xU8Qc7wUtIQr/R+z+OO
         Fm80JJXV9wB/dxSN0j0Pi4D8hBTgYvAGjbEHanzSVkZIeLvV3vUEHeRkXXbb1ciq3Ru4
         4ZwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mP2igvVt;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:from:to:cc:subject
         :user-agent:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0rqM7xHJvG0+MKeLl/bgEE18pNhnLTXrDImjB5BHBVc=;
        b=KIvVlEIG0Php+4Hpf2EsKaGfcbVNV4ACq4gap77VRUxMiC75ojcKCoY7kExk1kNOC3
         mfr8WFw1Xz6G64L2c6ZQRgb4laD/eWaflfJXxxcVqgaHGR7wYEq9WB5ETNyFOV1selq5
         RZoMdLKPdMKlxAcQF8nJGuoKxxRRg3R3Qy6ipSI4yKiboDdDMEbQT3R8AOx/TBxhnwkO
         HB3w/Y5toHI4ypUM/Ir3+qMlX8HVakWvO70+zcgy3lXmuqmvvuWUzlE1CwMXEwSkQRI/
         qdFkW0ikaF2pPKtaE0LK0tYzk3gsS0HehMHOedpZK5+5s0CXQaTLzIq8Wi0338Qd56W8
         pmvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references:from
         :to:cc:subject:user-agent:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0rqM7xHJvG0+MKeLl/bgEE18pNhnLTXrDImjB5BHBVc=;
        b=PVL/A55XJ7GO49APIJ6BpTpJhgU8hhunfvyHI7/mUvE1aRN/15tv/7VGBp5c6m/uip
         yaQWAUvDW7i7u47VJW7TL4QJxycPBTmYIij4bKmOqNktBsqpidJN1w3QksrCEbMMmwiv
         ktddx2MdZPjAFtx08BRx7Vwf5wnIPZJpEmKp9Urx6M0/lhH8tyQAv5IJA20D45tYWqlC
         DZ3zd9cGQEoXiDhllZAX3ygS+GP+Z9qooRuoaN1/iSghH9SBD0GqGMkqNEHY0m3hVVw+
         x68nGlbz8NzHL6tHDsCi5qoCeVtiZC0aminG1iwkgpHfedQ1YwEl/Nfct/Y7GCpjzcQu
         Hd4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUupI50hnrj1sawR8LkGXbQqyOptPPETQEwShRT8lsth1Dn1oc4
	fmYUYkAkWZ2DUG0u3Mzvu1M=
X-Google-Smtp-Source: APXvYqyfOqbXRnWLNcrcoUBbsuR5fhxbwzhJm7CiLnLVAcDrzpgOxrOZaLTAdkYmj7BAiJ5IjSRo1g==
X-Received: by 2002:a17:90a:b105:: with SMTP id z5mr6326098pjq.74.1570546385085;
        Tue, 08 Oct 2019 07:53:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:75d8:: with SMTP id q207ls970444pfc.12.gmail; Tue, 08
 Oct 2019 07:53:04 -0700 (PDT)
X-Received: by 2002:a62:db42:: with SMTP id f63mr40646196pfg.225.1570546384619;
        Tue, 08 Oct 2019 07:53:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570546384; cv=none;
        d=google.com; s=arc-20160816;
        b=N1XTlksQ9LzqDx0ZC14JE5YiKLeINNFYyYQzN1MF4Uu8YWyb4y/PK4E52ZyidFE5Dm
         /X1pGyTLVCvPtAbZniCY6LxGLg7jDV0mTIfmKXwRNG7RbhBkz3rU97NEV3lSeVlfD4lT
         +mSIpWdpeIXLNCKOIhF52dgVKOiO2Exy4uQdPpHmlZRTHL1SSstLT+0iUaExJ9ewo81c
         jC69p91zCRqaVknXiuUm4QcrDIJUzYg+zmYIj9WMyicJzSQNsTZ3BytNHoRKMcvjFAIn
         ZF2f1bXzPO4nc2C2aSlMbkat0FJ59mobKbes+Y399Zlj5n0Ma/vOkUnhEz5v1VSXPJRt
         h3Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:user-agent:subject:cc:to:from:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=NgeKlpSzkigh0N1ESB7csIIoPEbSZbwnf2GpVpovxL8=;
        b=sCIDSddn4Txncf2dS4vretnS2+YAXdKOR0T8xYN1Z38EM2NuDHPDq56cfjqyImPxFd
         pbwBGEB9rr/DGuMPsl7bBeals36U2YWzdBtKDUUn4xfUzfSqe2GXfcPjlykCa95ANn9C
         a3mZcoEwqg+AmAbNM+iEFVktneBHbMYEkjDksX+4Fe5b250qXMFBcpttEf3dyiTsz6Pi
         tlVMMd1Obgik8ycnWInx4IjIYYy+NZ9XjVoMTslO/DdBHUnt0/vXKSPEwoe+Kl7qPNn/
         jFkn8KJ6g0mcvLNeFsAqD3pTPZ1BNbkZSrQCBoWAV3wsFWDHmnTuMn9HleuojRRwGBew
         0jaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mP2igvVt;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 91si397430plf.0.2019.10.08.07.53.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Oct 2019 07:53:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [104.132.0.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2BD54205F4;
	Tue,  8 Oct 2019 14:53:04 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20191004153750.GB823823@kroah.com>
References: <20190904211126.47518-1-saravanak@google.com> <20190904211126.47518-4-saravanak@google.com> <20190911102926.A9F8D2082C@mail.kernel.org> <20191004153750.GB823823@kroah.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Frank Rowand <frowand.list@gmail.com>, Jonathan Corbet <corbet@lwn.net>, Len Brown <lenb@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>, Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, linux-acpi@vger.kernel.org, clang-built-linux@googlegroups.com, David Collins <collinsd@codeaurora.org>, kernel-team@android.com, kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH v11 3/6] of: property: Add functional dependency link from DT bindings
User-Agent: alot/0.8.1
Date: Tue, 08 Oct 2019 07:53:02 -0700
Message-Id: <20191008145304.2BD54205F4@mail.kernel.org>
X-Original-Sender: sboyd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=mP2igvVt;       spf=pass
 (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=sboyd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Quoting Greg Kroah-Hartman (2019-10-04 08:37:50)
> On Wed, Sep 11, 2019 at 03:29:25AM -0700, Stephen Boyd wrote:
> > Quoting Saravana Kannan (2019-09-04 14:11:22)
> > > +       int ret = 0;
> > > +       struct device_node *tmp_np = sup_np;
> > > +
> > > +       of_node_get(sup_np);
> > > +       /*
> > > +        * Find the device node that contains the supplier phandle.  It may be
> > > +        * @sup_np or it may be an ancestor of @sup_np.
> > > +        */
> > > +       while (sup_np && !of_find_property(sup_np, "compatible", NULL))
> > > +               sup_np = of_get_next_parent(sup_np);
> > 
> > I don't get this. This is assuming that drivers are only probed for
> > device nodes that have a compatible string? What about drivers that make
> > sub-devices for clk support that have drivers in drivers/clk/ that then
> > attach at runtime later? This happens sometimes for MFDs that want to
> > split the functionality across the driver tree to the respective
> > subsystems.
> 
> For that, the link would not be there, correct?

The parent device (MFD) would have the links because that is the device
node with the provider property like '#clock-cells'. The child clk
device that's populated by the MFD would be the one actually providing
the clk via a driver that may probe any time later, or never, depending
on if the clk driver is configured as a module or not. I fail to see how
this will work for these cases.

Is this logic there to find the parent of a regulator phandle and match
that to some driver? It looks like it.

> 
> > > +static int of_link_property(struct device *dev, struct device_node *con_np,
> > > +                            const char *prop_name)
> > > +{
> > > +       struct device_node *phandle;
> > > +       const struct supplier_bindings *s = bindings;
> > > +       unsigned int i = 0;
> > > +       bool matched = false;
> > > +       int ret = 0;
> > > +
> > > +       /* Do not stop at first failed link, link all available suppliers. */
> > > +       while (!matched && s->parse_prop) {
> > > +               while ((phandle = s->parse_prop(con_np, prop_name, i))) {
> > > +                       matched = true;
> > > +                       i++;
> > > +                       if (of_link_to_phandle(dev, phandle) == -EAGAIN)
> > > +                               ret = -EAGAIN;
> > 
> > And don't break?
> 
> There was comments before about how this is not needed.  Frank asked
> that the comment be removed.  And now you point it out again :)
> 
> Look at the comment a few lines up, we have to go through all of the
> suppliers.
> 

Ok. The comment tells me what is happening but it misses the essential
part which is _why_ we must make links to each supplier and return
-EAGAIN.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191008145304.2BD54205F4%40mail.kernel.org.
