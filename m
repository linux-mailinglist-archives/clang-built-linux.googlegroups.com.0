Return-Path: <clang-built-linux+bncBCQPVKWLVAIRB64T472AKGQEBXK6F4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 882901AE0F6
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 17:23:40 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id s62sf2646091ybs.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 08:23:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587137019; cv=pass;
        d=google.com; s=arc-20160816;
        b=vnvi8tuSOaXlfIjfqz2XEyx9iI9CX9u1zGmLPRwCmwWdFTQziO56duna5GrVBZsDcY
         /0nC7w7rxIRDePlZcfuvN5uCFlqFBhMRFWMwb9IIYGtRi8U1WUcgKk2NxRt9jSS0yZcL
         /ymmIgPfu2HzqgosmkTm9E9YuaaXQKW5+MLRUT47VfyyzSvWV8R4203EkKk1QhLysxo8
         B6pjqOYehkheDqrMY0bCaNGBigES0HGqMnIIQlAuahQfQsm+jY88or1nmgh8jqKMURNk
         +VmwPsKcw79+W+e+ZhyZP2C88A0zasEYoDKmDrO4Rgl5XbbcdQ05OsfDN4PN+XCnpXtn
         P8ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=JmNcb3Q2zMf2AO0Ml7vmMA2FE7RpsLgdm6tTSo2ZiJQ=;
        b=q3rISE74E/8fZDa5aq+nJLDCB8iX6NGjaWiV1O5Ml2i63JwGRZxfzA4Lw1DsuQGOZp
         lTu50ToKnY+kVlGQJ4I5yMQq6G1Dnd+u3lJyRAwnnY0yD2aOvdTNrlNe6aGFpw0h7jV9
         PnqQNopkgyCLhtHxpkLODxQHEQUoj+99/LOZVuVEzlrk61jBpV7IvXlHJHqArjgNW4oR
         fZANaUXTzeHgUp9qHsrq3Bk0l4lMlxPj8VTS8MQlyTcXtK8zq/1lglzCguvF4Y6fsJu3
         M136k8SF8SUnYHlNs+z1ObiiCzklnhugDhAj5Dn1+O02DEcx1tjLb4Nw++Gc6mXJAzTz
         YKnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JmNcb3Q2zMf2AO0Ml7vmMA2FE7RpsLgdm6tTSo2ZiJQ=;
        b=Q+KXhv4QepsdP4eK57cfw52nwsncl2m+bdZILv9M91+rR0O1pXJDU/qpMwBHdM8IL1
         yTZ/qgDM/wjzyepYJNtZ/OsTAzcVQCTb4zPI0WXjnbpVbLi/WhH8EEXAVL9B0kBUxK9v
         gfzCYdktXaTxyFJREye60KHuavE33dPJuRK343wWjhA7gh/kwlJjpdzyJxU0h+ar4Ch7
         2m3aObrALLUn3ntBTN2J8AwTLfIDs8sGt54NYj2vOiO1/Vxa9uNMFC+I+xmT9CXn4UXm
         g7ftODsKnTMbw3q6w/ymjZGqphQ+xAbvEcdCUhcr4/q8cv+HeJQrVlikvS+GKks0EK4S
         D2Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JmNcb3Q2zMf2AO0Ml7vmMA2FE7RpsLgdm6tTSo2ZiJQ=;
        b=cHYPTGRFKAiuSfM31kpK4N+ZuyarKW04ojj+Ra56YnMERH5622O8+s7GJZiCZa+GI/
         6Ox16PEQBVEPM3E/Vet/qRe+DkgkDs/n2D2sL/9izOkLvjpY9S0UY0/MQyGCtcgBekmA
         cYgybNjI/HEfbGcw81E6rSnsIt7lc4vLLlFpqNqEtaXs0jhX88kgMh2UoSwrR5QQfalm
         z4d/v5AqyuLvgyWqG7aFjBXR/AK4AuUdN7MhIg17I2alQRLDCmFK08aT8lJg9ljSV10r
         Lg9YKDsLo57BAp7ZOFjJf/xkx65G/PDBY2R7yeFBGUzEMvz6XBFNCHVMAdx70MLfMXSE
         sl+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua4sp9Ic38Uha3MIVqFOlGW4+heVoXFqLWAVNpVJEKXd71+rnBI
	CC0LnIMTeIZqVPPDORzMaas=
X-Google-Smtp-Source: APiQypKRFpl/b8SQlBtlQw5fTjLRkFsPknDp+fVKkN1E2IM6XnFBMikkdlBSfs5LfDfPACfjIF+TKg==
X-Received: by 2002:a25:374e:: with SMTP id e75mr6428129yba.429.1587137019388;
        Fri, 17 Apr 2020 08:23:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d6c8:: with SMTP id n191ls987641ybg.4.gmail; Fri, 17 Apr
 2020 08:23:39 -0700 (PDT)
X-Received: by 2002:a25:83c5:: with SMTP id v5mr6833935ybm.229.1587137018963;
        Fri, 17 Apr 2020 08:23:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587137018; cv=none;
        d=google.com; s=arc-20160816;
        b=pP89NZKnSGQdMwMBFW3cK3Zo02zN4A/WJdgdtxENWoD+VcZbHFOmGHdowv7luUcxD4
         BbSQft2BT5YE93AWGfANJx/8PjrvOzOYEpEiFBXQVWIyGEqQPpwquiqfSrIVwepd+Lvr
         OfNvHmsnIT+LG6csFgkJa/+BDrn4CN6QTieTvNLrEZGWvZYO4oCNU5UwhMxZTINVBe6s
         eGBcab9jTAVPxOiuZeCfAJxvcYyku0R7eDNe+PU/F3GsoLiVtk3/jRrNiXVI/hED7yWw
         ZQcILxFaD87ZM3IOQPLKXsSDtDdh4TpJATu2hSfNdtkr8gfPrafLw+ojaJi/yTTGfVPk
         aywA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=CMTboB2IZtNvUea0zZlT3WU6Q9KHLKB2HrbLFyoXPs4=;
        b=X45PLHzyCoK2JVcGsw0Q2JhsNidJqv6oSdky+M0ewgJ/C9BdD+2l0p2rXPC+Ktd1tj
         CGVJHBLog7b7i2w54KHhuuuGga669ChKvH9HBtWa33GpLFdwQHdpNuVBcYaibKtDpw8v
         MGXx+cgmPidWlLm2su7RPk/N55+gJulceuKyiBypgB8sujtkVQH2cn3pEZ0oOhn8rWFs
         1G/XHvZIeLxcNUb+a5CbPV1Jv8/zWCdzZMhUBwfgj37/wu4qKiJtil1rzJc1v78sIEDl
         5sNGHweFT8aSAfIOHNx6zjBhoxIaR6jM27T6J1PN8RZJSkpagUYQ91+4DunAcMVLy6sg
         esrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
Received: from muru.com (muru.com. [72.249.23.125])
        by gmr-mx.google.com with ESMTP id f195si1549082ybg.4.2020.04.17.08.23.38
        for <clang-built-linux@googlegroups.com>;
        Fri, 17 Apr 2020 08:23:38 -0700 (PDT)
Received-SPF: neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) client-ip=72.249.23.125;
Received: from atomide.com (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id 7F05E8047;
	Fri, 17 Apr 2020 15:24:24 +0000 (UTC)
Date: Fri, 17 Apr 2020 08:23:34 -0700
From: Tony Lindgren <tony@atomide.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Stefan Agner <stefan@agner.ch>, linux-omap@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Peter Smith <Peter.Smith@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Russell King <linux@armlinux.org.uk>, nd <nd@arm.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] ARM: OMAP2+: drop unnecessary adrl
Message-ID: <20200417152334.GN37466@atomide.com>
References: <5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan@agner.ch>
 <CAKwvOdkyOW6RXTOCt1xMp2H+uH28ofByQOjyx776t8RDxTED2w@mail.gmail.com>
 <CAMj1kXGYiMobkue642iDRdOjEHQK=KXpp=Urrgik9UU-eWWibQ@mail.gmail.com>
 <DBBPR08MB4823129E272220712B470716F8C60@DBBPR08MB4823.eurprd08.prod.outlook.com>
 <CAMj1kXEQ4v9e6386ogPdy+s+++9H02DMPnDpTq0WSY2e78ts+Q@mail.gmail.com>
 <e0c125ea492670c7069c407b6b0c5958@agner.ch>
 <CAMj1kXEe835GbXU5qgX-QQ5n4SmwQO1nAoAZw5pUVCbR=J8XmQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXEe835GbXU5qgX-QQ5n4SmwQO1nAoAZw5pUVCbR=J8XmQ@mail.gmail.com>
X-Original-Sender: tony@atomide.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 72.249.23.125 is neither permitted nor denied by best guess
 record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
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

* Ard Biesheuvel <ardb@kernel.org> [200402 14:37]:
> On Thu, 2 Apr 2020 at 16:34, Stefan Agner <stefan@agner.ch> wrote:
> > Just to confirm: The instance at hand today seems to be working fine
> > without adrl, so I guess we are fine here, do you agree?
> >
> 
> I agree. Apologies for hijacking the thread :-)

Yes this seems to work just fine based on a quick test, will
be applying for v5.8.

Thanks,

Tony

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200417152334.GN37466%40atomide.com.
