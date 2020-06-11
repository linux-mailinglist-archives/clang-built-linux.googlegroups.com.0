Return-Path: <clang-built-linux+bncBDY3NC743AGBBX5URH3QKGQEEHNL3EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DC01F6C19
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 18:22:57 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id w8sf2957071oiw.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 09:22:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591892576; cv=pass;
        d=google.com; s=arc-20160816;
        b=p7wXY0T1LTBnpNSfBvb300ihldw1mMCwFrFEVdfEfrA+z8rodbUX+BC2R8UKPQ4wea
         3ZbbIEmYKcX/1VqraRFI/02gxaryuJC4RU3cDAtRiu2cBlkZrHrTbv4BPVTTkeiRrQIO
         H1N0UCiytkCOAdCTidcNO09j6M3vn02Xdf3LdscXgCNXSYp+F2sy1Js/byLM9yVzG5cR
         B/xUCLP8TnJqrK3RGUfHOoOArmarZQ8oru0hTvOv7cZiGGzx9QJHbSmZcFH5eI+LnMv1
         2xXA8EBgfSUqlJWJ3d2d+6jChVHADB9xfeCBI5JkrsCXkLtES/ioUZaRqdXrynBKW6QG
         Iq2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=xRYCpaj/UGBiROsFqoY6mzt7gp5YuZ9qz7WYsWRUjZ0=;
        b=eNWf4q9DPkpxHMdZ8wrUxkTFxSUYFRAD9E8G+X8dyfd2Fj89+AwRpxLE3btw8ZH6rb
         vf2ufZNLufe4OTnjsN/LVL0cx4+rpomZiJLloJywKtK92/9DGgP3H4zNe99o5u1ymqCb
         3v/HRXoCYAB574PlMXMDsJyR1woH/6kApTTOguGGQAb2lJ4/f2doW1q7Mrfc76obpqKP
         ESmVO88o2X0dsAg44U+Kcy/Rb6olaJ1Dg+LPZyq2dohPwsGLuEE0+C12GB0soTz22Ssz
         JlvF91tQLwnx97i3BoaKqy1cvcT3H3/X2JMZb0hMMlBKMFNT/pm+gHSeugrISoFyao/8
         CtNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.79 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xRYCpaj/UGBiROsFqoY6mzt7gp5YuZ9qz7WYsWRUjZ0=;
        b=p3eTH+4p1/dLS7Z0EOxxXK3Qz3oMAKOWSHJcRIsS3qKUfxlKcCPwRUm0zQsee+gKgk
         sbw5z0dcqM6/C4Tf8wQIVF7/Ub+0Qqx5VqHhIEXQdGg9KPYwhafUeFCdL/N5YQKiym+U
         i0cXzohW1FrG2WgfTavT8Pni7ZBeMal+R6ynYLSqRfB4Pmj0SvWRxq0L5erPHLKmaqPY
         3kmcTcExqg7cHIUvDY3FFQoManYfS88v5jVIHueaZUxBnjHnwlB+JkUOjI0d+j8asqMe
         OM8NFTwFzb/nBdcawGVPMlOEc82W5CpeR9QM0xYZN88YiziY/IxMrN+yWEJ25byrfTbF
         H2qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xRYCpaj/UGBiROsFqoY6mzt7gp5YuZ9qz7WYsWRUjZ0=;
        b=tTbn+E1zivny5FpOXuaAtVH3uSgSMzyuRgz4g78vfzgwqJJJlscsLj2yTxOEHFEP/+
         oYeFqd0ZN6/xSE96WM4L28tOjg6v/HJKB2l9yKhS9FpcLkTVM2toubMeGTNVbbYqipQk
         FqPZFkmAMnilTRaAqR2dqVrn9IHWSoBJNidFcF7BkJQQCVKEx3jY4uyV/uoDbI5EvoCj
         aLixgS+RtbQKM7mNwYlnbHn1RG5rhGONgAN3QcCYfuI1K5BtaRp15qcL2T6GfydXyyTs
         gP9jYI32E+M5/qqLZmlXvxHGll5wvz1g9d0eWui0NlZ33VcwGfsIEBQur2fcTo1rS6yl
         xz7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532nmtQwTeO1WvSipgSa9giXCtu23MrwzrG0qUU3e0/WlOsVnbrf
	kXDfw0BB0WMTaLF2aTTqGtU=
X-Google-Smtp-Source: ABdhPJwYuCTzUQBoxXICszt1BVMPEZVBZQrh1ezboFUtPcCShCIwPWRZJ2l9aN8r+qpd15GWchoW/g==
X-Received: by 2002:a4a:4c8e:: with SMTP id a136mr7154690oob.23.1591892576033;
        Thu, 11 Jun 2020 09:22:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5788:: with SMTP id l130ls564357oib.2.gmail; Thu, 11 Jun
 2020 09:22:55 -0700 (PDT)
X-Received: by 2002:aca:f5d4:: with SMTP id t203mr7116317oih.3.1591892575669;
        Thu, 11 Jun 2020 09:22:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591892575; cv=none;
        d=google.com; s=arc-20160816;
        b=YPtJuyUa/kmRi88Y+nfrTuemxdccCSi1ykcItG642Vxi+45vJR593V2zZav86VEHe3
         MlnATT9XzCWTkW2nWalihS3h6dPk1jSrHP5VkL5KVbfk5fv6ps8JKprR5iAb7kI/aXIa
         KVdFSqPf9xpxjsdUZ8Pe4sMWPjR6l1yEgIE4z3+I2Ul3rIKDIszGYlEQK6FRhVWLN69D
         LZpDcHOy0hsXAiwuAl7EgZQKRMjB1YVISUs3rHz2asi4Oq3VOQn+/34ewr7h8bovJ0vF
         Sk1SuVHkwIRwUjjWS6OV45Oc0GEcJZs7aQbtfyHOJ2PzalsWg+ceg/s985uSPUtlkMse
         wDyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=lta57VmWXdW8kXo6vqoX2rq7FRu19cF4QBQFYF0elT0=;
        b=h4qOmKTY4R0H4y9H9hSU2Irsv8Gwpt50ySln3T2TbxINehRICzvDUY9zUGzCC2OPcZ
         XvGj69rW85lmM0M6H9/Y3y/WYy0KX4UHwpwxqukF1df9l5rEvC+ba8RSmAXdwFRog4eq
         fzB97jBs5CR48TAEghKNsD35u7aVdd13DAX/D6qpFAkXkGH97rw6UDhtNJLAIgsCpokm
         kNXCm9bJA7JcI49PTSgoWz7Do00LkNS85OwgBPkHte9tT6ov8yhsTdHY4xTPGc9gCRTa
         p4ZBv1+9RC+xsxofv6wFHud7+K/fLnubZcNXwrkXPZ2Q7WNYh5MCCGHszvfN7GJ2KenG
         z9Vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.79 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0079.hostedemail.com. [216.40.44.79])
        by gmr-mx.google.com with ESMTPS id a13si222231otl.0.2020.06.11.09.22.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2020 09:22:55 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.79 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.79;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 0723418095AE4;
	Thu, 11 Jun 2020 16:22:55 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1593:1594:1711:1714:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3350:3622:3866:3867:3871:3872:3874:4321:5007:6119:6691:7903:10004:10400:10848:11232:11658:11914:12297:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21627:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: unit14_1e0790d26dd5
X-Filterd-Recvd-Size: 1673
Received: from XPS-9350.home (unknown [47.151.136.130])
	(Authenticated sender: joe@perches.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Thu, 11 Jun 2020 16:22:53 +0000 (UTC)
Message-ID: <b4646ed22573568c0953d272514ab3b701e54faa.camel@perches.com>
Subject: Re: [PATCH] .clang-format: update column limit
From: Joe Perches <joe@perches.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Christian Brauner <christian.brauner@ubuntu.com>, linux-kernel
	 <linux-kernel@vger.kernel.org>, clang-built-linux
	 <clang-built-linux@googlegroups.com>, Linus Torvalds
	 <torvalds@linux-foundation.org>
Date: Thu, 11 Jun 2020 09:22:52 -0700
In-Reply-To: <CANiq72nOaDo9LQ3JoZk6VH-ZYErHpvD1O=DyVngs3xno5e9W7Q@mail.gmail.com>
References: <20200610125147.2782142-1-christian.brauner@ubuntu.com>
	 <c8851256aa453461481233e8a7fea878f9580c5b.camel@perches.com>
	 <CANiq72=BbGqXmiG8+1QuJnLXMTwNjUg9WuWR9eJcLMHZ=k5hQw@mail.gmail.com>
	 <4c6f8d63817cbc51765fd0b3046f81dccbd17ec7.camel@perches.com>
	 <CANiq72nOaDo9LQ3JoZk6VH-ZYErHpvD1O=DyVngs3xno5e9W7Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.2-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.79 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Thu, 2020-06-11 at 13:54 +0200, Miguel Ojeda wrote:
> On Thu, Jun 11, 2020 at 12:36 PM Joe Perches <joe@perches.com> wrote:
> > Exactly.  So don't set a new hard limit of 100.
> > 
> > This would _always_ wrap lines to 100 columns when
> > 80 columns is still preferred.
> 
> Why is 80 "still preferred" to begin with?

That's neither my nor your issue to solve.

It does though underline why this patch
should not be applied.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b4646ed22573568c0953d272514ab3b701e54faa.camel%40perches.com.
