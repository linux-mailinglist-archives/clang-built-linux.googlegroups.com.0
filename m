Return-Path: <clang-built-linux+bncBDXO746SYYBRB3FJWL6AKGQETCVKAKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA0E291965
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Oct 2020 21:18:06 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id m64sf4425676pfm.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Oct 2020 12:18:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603048684; cv=pass;
        d=google.com; s=arc-20160816;
        b=DV0vGJjeG2Meug7bAZ4lSc4uutFOd+blhcCEb5UOHtgC5qEgZ/DQaly8J9VFbYPuvV
         nQ719717RZDdlODfZz8D7TPsQMWo2kQVkrPZdRZmNWYRBue+8KEcYEaCaPDsM78n5lfI
         Qh1GfOkgH/6bwwQS68ARhsYf9kmnClafASOm1+WLXAvs1HtLY/bNHUaYWjBi1DDctaxI
         H8GqHcxshMj2fdc9v+5AERHEPcGeV9HPR9SVumJdjRCMWZxqRtxRIcCIWdMsKor3QP53
         HmzN3CENkJ10h3er+ejZ3IeSIZ9yV36kIngIZFfJD4Gj3xNp/T3ZTNGFkbO3uRmYeTsD
         m1lA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=VW4gzHFMNM3zhIUV3Gcu7GgxifuWpvS4sxXjAja1b8U=;
        b=XSEbyzZwJQsImMtR6eeJ0rGw7ZphF0OYwkTjeoSq8QfQGPoX/5pU9NDoByyS7kRTC5
         ZG+Jk3mYHBKLZEihanvCAdDEQq78w/evWXUywbbjrPnXpbDqbuygnR7c4ZVSceIony+R
         ClOIhgPu0IWCf+QMkZ7rDW928gLMzBIix53bpmFUG5aeifYPbhhOtcMmnd7Y41mfsWIC
         3Thld48dxH+aE2VFtwFsTboZWyy37gJESo+7JXlewS7jTCcD7MziKfZuileb8PxUgUua
         yB6L1RJ/OdBqFHvmKslGFY+OMAX+SISZMVsOMImC2IRp+p4sUmJgkum6M/i9krmrChMH
         F2fQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=WcP5INjn;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=WcP5INjn;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VW4gzHFMNM3zhIUV3Gcu7GgxifuWpvS4sxXjAja1b8U=;
        b=Kp7adb3m0wy/ygsFfHymIMdi9ViFZ0YMIGHB+8gxl0JSNl4wQf3emwOF1Rpep+qQrr
         3e/peK4yJfchiTunzGtdzJJtAcD1w3NMhX+aCkKFIWwtWa21K7lb4QIKqMNRjsXkhRc/
         gb0+KF02AUX1nONrHbpIxDKVCvStT/5TIWsCYjobeucBuFtj3kcm2+x6wmsRw+Z502ma
         0nQ3tTqYrOctPJ1xkldl4w5jflPoUOvolGzM7YCqwJsMcQrN6OgKTEnIUf5gRA7l3NEt
         AZIvUxJksbk0kBBJpCzPSKl803cYCL8FtXCNiNE28kzt/I+KoH51shOsvV1XEwR+T2o5
         DPZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VW4gzHFMNM3zhIUV3Gcu7GgxifuWpvS4sxXjAja1b8U=;
        b=CKdZxh1ZTDn7HcpO/xrRFc/qP/ZdjLysH2KwSPhNVYnx6EsDqi1LFgvvoWJHJ1DFU0
         DXMipQrckU7t2kcuEUlsz+0eCpQ4WZasNwTDaYo5PDHoy+CiP8A8CgvofD/o+JiX4S9G
         lR/sYdjSbl7QmWp4bulSGyyf1MirKiZ+3ec3RLWlrXzWLYvgZuLvcjSth9A0vka3G1Hc
         1Yyti+laX6RPJQbxWOMB82UmsAfN5GvEcST/EeFzpWSD/DzoxuayvQYmAKW2CL62+UOr
         Wj73onMrc20QMs4lNXqFtsi/pyIzOI3ySUx14CZD4HYrhbp1SeA1TSlJ54k/KImzXiUV
         gI3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530rAqJSJEWpkS3j/uUWNoEqx7r6HSBiePiezy2mXadcczaxh7WD
	dfHcJU0COus0ckOwaMe1xec=
X-Google-Smtp-Source: ABdhPJzPNCq7vPjxcBhPR/3Vl8Uxqh/wXOFa8JtoeFxdEVDuxmUgogDyS3su8molgFOHPK5Ddnw1qw==
X-Received: by 2002:a17:90b:4a8b:: with SMTP id lp11mr14187002pjb.53.1603048684210;
        Sun, 18 Oct 2020 12:18:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:515f:: with SMTP id r31ls2570454pgl.7.gmail; Sun, 18 Oct
 2020 12:18:03 -0700 (PDT)
X-Received: by 2002:a05:6a00:845:b029:155:dcd2:7322 with SMTP id q5-20020a056a000845b0290155dcd27322mr13425647pfk.49.1603048683656;
        Sun, 18 Oct 2020 12:18:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603048683; cv=none;
        d=google.com; s=arc-20160816;
        b=egVbWoGOY5WmVz9EvSIXRNAqPWA34NvorOBuiFDCcvWY3srnWx4fYBO+efajgwENQ/
         GUeqW8uwvdfVtaNh9sSwjzSGolbc4eKyKWNewBVXSdFTLB3CPT4BCiClP+42AZlHg3M0
         DcMLf6WafHIbc1JmOmAJ3SxaC5uknt6sZ3oOGe9k1o1sel8ce2FQMYDxHhUhzx7bynfu
         XkjnIacOOTCNq+A+BpbKuwfxGMyZy97WYqB1kCxjq/nPWDRTJJTK0+JApMLA82gTwJIZ
         zkKisSFvNMlRcrr9ZBH/G/1o7elv6HMx3RyrKjlPb9jQDINKdrGUNd3f09Npn0dqLVB2
         MA3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=UjUcVY25R4bafGP+9qdVd0aoGYpiqH6Q+ARLhsHNcW4=;
        b=JmMOAo+F1mnaO9OIlJclIXR8Z+W3MBpgQootoUbDyylMInVoI/V5DdB8u0mntsNjdK
         91Cmpkx2d2VLA+DvMFCxK6Zpx4lGWkTGqPnaFPQUl+X2yavMh2lRTyQo7/OLg6frqr/F
         paT/jL2Z3ptyUTkSynsEbv2cLDvtdqaHHqELGPKUVCax2K0EPlryLIZHJB2qiIAoW8GT
         dFgym2xEhpjisFU5e94O67cyrJP0sTS8dn8ieKByH8fnIj6yKk1sjHc8yDFiUlorPGuB
         sKQOsKwXxHQozeTPQ5INHo2f/XLYxveDxyyQA0Yp3Z1b20W5x22BD6Q7zzpC2DlQGEkq
         YMQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=WcP5INjn;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=WcP5INjn;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [2607:fcd0:100:8a00::2])
        by gmr-mx.google.com with ESMTPS id 100si38943pjo.3.2020.10.18.12.18.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 18 Oct 2020 12:18:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) client-ip=2607:fcd0:100:8a00::2;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 7A1D5128046A;
	Sun, 18 Oct 2020 12:18:02 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ywWMwLsGscQI; Sun, 18 Oct 2020 12:18:02 -0700 (PDT)
Received: from jarvis.int.hansenpartnership.com (unknown [IPv6:2601:600:8280:66d1::c447])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 340C31280456;
	Sun, 18 Oct 2020 12:18:00 -0700 (PDT)
Message-ID: <0a739bcd421a3154c2521b49779b287e6c0d08a2.camel@HansenPartnership.com>
Subject: Re: [Ocfs2-devel] [RFC] treewide: cleanup unreachable breaks
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: trix@redhat.com, linux-kernel@vger.kernel.org,
 alsa-devel@alsa-project.org,  clang-built-linux@googlegroups.com,
 linux-iio@vger.kernel.org,  nouveau@lists.freedesktop.org,
 storagedev@microchip.com,  dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org,  keyrings@vger.kernel.org,
 linux-mtd@lists.infradead.org,  ath10k@lists.infradead.org,
 MPT-FusionLinux.pdl@broadcom.com, 
 linux-stm32@st-md-mailman.stormreply.com,
 usb-storage@lists.one-eyed-alien.net,  linux-watchdog@vger.kernel.org,
 devel@driverdev.osuosl.org,  linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org,  linux-nvdimm@lists.01.org,
 amd-gfx@lists.freedesktop.org,  linux-acpi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, 
 industrypack-devel@lists.sourceforge.net, linux-pci@vger.kernel.org, 
 spice-devel@lists.freedesktop.org, linux-media@vger.kernel.org, 
 linux-serial@vger.kernel.org, linux-nfc@lists.01.org,
 linux-pm@vger.kernel.org,  linux-can@vger.kernel.org,
 linux-block@vger.kernel.org,  linux-gpio@vger.kernel.org,
 xen-devel@lists.xenproject.org,  linux-amlogic@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net, 
 platform-driver-x86@vger.kernel.org, linux-integrity@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org, 
 netdev@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-wireless@vger.kernel.org, linux-security-module@vger.kernel.org, 
 linux-crypto@vger.kernel.org, patches@opensource.cirrus.com,
 bpf@vger.kernel.org,  ocfs2-devel@oss.oracle.com,
 linux-power@fi.rohmeurope.com
Date: Sun, 18 Oct 2020 12:17:59 -0700
In-Reply-To: <20201018191618.GO20115@casper.infradead.org>
References: <20201017160928.12698-1-trix@redhat.com>
	 <20201018185943.GM20115@casper.infradead.org>
	 <45efa7780c79972eae9ca9bdeb9f7edbab4f3643.camel@HansenPartnership.com>
	 <20201018191618.GO20115@casper.infradead.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4
MIME-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=WcP5INjn;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=WcP5INjn;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
 designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
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

On Sun, 2020-10-18 at 20:16 +0100, Matthew Wilcox wrote:
> On Sun, Oct 18, 2020 at 12:13:35PM -0700, James Bottomley wrote:
> > On Sun, 2020-10-18 at 19:59 +0100, Matthew Wilcox wrote:
> > > On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> > > > clang has a number of useful, new warnings see
> > > > https://urldefense.com/v3/__https://clang.llvm.org/docs/DiagnosticsReference.html__;!!GqivPVa7Brio!Krxz78O3RKcB9JBMVo_F98FupVhj_jxX60ddN6tKGEbv_cnooXc1nnBmchm-e_O9ieGnyQ$ 
> > > 
> > > Please get your IT department to remove that stupidity.  If you
> > > can't, please send email from a non-Red Hat email address.
> > 
> > Actually, the problem is at Oracle's end somewhere in the ocfs2
> > list ... if you could fix it, that would be great.  The usual real
> > mailing lists didn't get this transformation
> > 
> > https://lore.kernel.org/bpf/20201017160928.12698-1-trix@redhat.com/
> > 
> > but the ocfs2 list archive did:
> > 
> > https://oss.oracle.com/pipermail/ocfs2-devel/2020-October/015330.html
> > 
> > I bet Oracle IT has put some spam filter on the list that mangles
> > URLs this way.
> 
> *sigh*.  I'm sure there's a way.  I've raised it with someone who
> should be able to fix it.

As someone who works for IBM I can only say I feel your pain ...

James


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0a739bcd421a3154c2521b49779b287e6c0d08a2.camel%40HansenPartnership.com.
