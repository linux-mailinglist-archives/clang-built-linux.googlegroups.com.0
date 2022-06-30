Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBRWK62KQMGQED6V347Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 47787561B4D
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 15:29:44 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id l15-20020a9d1b0f000000b00616f2402fd4sf2749000otl.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jun 2022 06:29:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656595783; cv=pass;
        d=google.com; s=arc-20160816;
        b=bjnlBPCCtseKHw5Vt9UOCdjoODTC5jfm1ZeCnKpO3jEFaNJSy2Kb4Yd68Zn7Vk06KR
         lLKT9hjGBUzPBlbL9d39kSe99jqEK5Pv0tnGsONlxKJULILcrCp5qJawT2r9Z2M7iI4b
         i+S74BcPADXMc85zhcvkt96hb0uP7lXQWoI9v5aQjz+Ni5F1TQ5wLAbvgimyAQzbtNCY
         SyxXfLFGtGrLaKsDkdmRucpwuMCqkpUxkK7Ak/xkaLkvdS6wvoSPpAu3JNRC9ri5Bx3M
         JcGNfgiNzhGjBSGGWahaxj8cyZszDjn20Mvz7xulJt4laqiAem4CCovbqJgTVWoDLwpQ
         sf5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1Cohg7sFz7HcrkTGp9aLSKbNVPsYnDAKwbZnNxJpRiU=;
        b=Xew2S6Urr0FpLG9vH95SoLTBp8y8HaMOQtjztT9EgzICQuMtWpUXiuPytV5ettuJ99
         MxhmE1a33i3cVyOJiCdILHZuP5oRbxnPSTFXaVPDnL7klykQzZ1A8bFZTH4oap909kLs
         Bkbbm3yJGA/2VnOaoaMDLVBxTEFIPEnE0Si6St4AUo1OTPk3Sb8qwTsmMXa8vo/EdzrE
         KUgfPOPvSvLNtsfXU/lfNjhBAlwn5lg2PsWhTBV2H6yCo8MY/4jM8+SByZ+PK+L/TcLU
         lHgRfh3b/LTAydEVQBON9c9e9y+4q3OsD9sJU6jO/HZPg9KGcT+WeHVQbyJxVYFCMcgt
         URzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=aq8HZROP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1Cohg7sFz7HcrkTGp9aLSKbNVPsYnDAKwbZnNxJpRiU=;
        b=QLjtRCb+pBt1mnD40PJPu0VL8envBsc4eQ0y36mxNvCi462g6KVyp/ycrtX9aE9gsh
         5yZoOmFEUHU+nQ5aK5QjlWfvDxMBn06tfuF8Df8d3e01ikF8Q1cCO7jNzXlHQ7ngPNvR
         +KaG1FFHuTaWb3RT99UBxYoiv0+cO+SM/ws2TrhlE5uEbXTgv+HqDOTGnwN0E9RTO2gk
         LMkX+QY5ImFXsnuy9B8V/DArMRde7tsyWr1A1JSZuGfgv0nuvi+tyEQbwhjSE0ohkt8L
         hCmsfOfz6hYVQk1R9eOfviv22KXP22vlQsxfsXdF7/+VMWZBcWYUhZbMeeMY7rcPXcIF
         zl0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1Cohg7sFz7HcrkTGp9aLSKbNVPsYnDAKwbZnNxJpRiU=;
        b=Wa0G7Ku8SHR2sKyQCu5c0VtB/G36gWX6/Hy+LPkBnb3/VcOfRl2e/U++e0+DHF9BvA
         YlKKgVbI0AjH9A73+Uh0YvOwD41N/ffeHyXdjYOwMyw63pdavKytTtTb7wugOQFsNuaa
         OrMlH2vO+AKjTGXQGr44zHdMdD3lX6d37GSsMcGnuUKmxqPVgH6QY3GXmEtcAUUtO1E0
         RA22GDulA1hdxqYyKnPMJb7cjmc0A94adKWvTRvYneRRfYR+rKMrgEZGnmUmU4FfvNrQ
         N4mPfTI9MSuupQRMkX9cJTuCnNhIC0tmh3fv3zwVkmlxM6Mrazs3du/MSv97SDhoMqjX
         Ww9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora+yEPjWKzt5nj0gati+5FSIBe+oMXe08eD+qkg4eC5RTpebfBpO
	CFqN6+lX2tlK1VoKXHfM/nE=
X-Google-Smtp-Source: AGRyM1tVPhhUFyVmP8pJFVG1s1sOVSLBb8BTIC2Cl9Vzmw1NJ5n3IiUsL/hC9GkdOzABGvFwmMg3dg==
X-Received: by 2002:a05:6808:612:b0:335:654c:1ebd with SMTP id y18-20020a056808061200b00335654c1ebdmr6241242oih.211.1656595782792;
        Thu, 30 Jun 2022 06:29:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:610d:b0:614:d16e:f30b with SMTP id
 ca13-20020a056830610d00b00614d16ef30bls5906260otb.0.gmail; Thu, 30 Jun 2022
 06:29:42 -0700 (PDT)
X-Received: by 2002:a05:6830:2909:b0:616:8b6a:67ef with SMTP id z9-20020a056830290900b006168b6a67efmr3932672otu.379.1656595782331;
        Thu, 30 Jun 2022 06:29:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656595782; cv=none;
        d=google.com; s=arc-20160816;
        b=yX/92fPj9DxzIvfE9KLwUxw3yI4Ekx5sdrMcstX0NpKnejbvTnIJNuIZkFQWxRfqDw
         AMRhyk7XCr86Ntm9a26pF6VSVpsizdfEkDomW+8Eo+HlktJxhOhXJgzBQxh9fZCEI1GL
         Nf550o1CeOTbjf1OV+EK+LA2Tt3aOgLoyaa+zPRcdmJKtF1u8ixGNZcCg78fHeb+XqSW
         BVAeBKijbCDuVwohYXiFd5G5q47rnqZl08sSDfiEXaSx4RNb1Tm56Yn05yk/OzQmJydr
         zIyIFTnMuPZxpUzq6iPgDHRAncCxUa7W3+rIi9azzAWyurh+0nB+LgJXY47uuESNxrnh
         yMtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=iFFoA7elFFZerWwQh6MYG3h6WxK+7bMsrif+fO2h3Bc=;
        b=WwNPgxGvkIse1sWLmaolDeckdcL5GAm1Eljk8vu8OE3y55+hEoU5G4foylePRHEaX5
         KvC0jHfXVavv9BPOg0WeLIhIwVldhxXzOrywkJK7hzeZhojhjzxfGAjDFtd7xthbgbD4
         DBAXNxCbDSOTZeBupv5PSb9jy3RFjMJaRMIFSut6c7V9cLWYdWxdvtcQOfvDVx2gGcD0
         21VW9NXwlGsJBEZ3pAlfE8n7freVyZ4i1F/2IZZm8MugNokeCo3scSiyBdXJe35mY3lw
         Tksk84/SIM6hGr+ZiH+3Oa938McDwkTFJyNhU0fjfUErE1CGbt90ublByJW75YhItrSL
         EAYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=aq8HZROP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id e13-20020a9d018d000000b0060c76b16536si763838ote.4.2022.06.30.06.29.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jun 2022 06:29:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1CD9761F7F;
	Thu, 30 Jun 2022 13:29:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E820DC34115;
	Thu, 30 Jun 2022 13:29:40 +0000 (UTC)
Date: Thu, 30 Jun 2022 15:29:26 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: stable@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Tony Lindgren <tony@atomide.com>,
	Hans Ulli Kroll <ulli.kroll@googlemail.com>,
	Ard Biesheuvel <ardb@kernel.org>, Stefan Agner <stefan@agner.ch>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nicolas Pitre <nico@fluxnic.net>,
	Andre Przywara <andre.przywara@arm.com>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jian Cai <caij2003@gmail.com>,
	"moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>,
	"open list:CRYPTO API" <linux-crypto@vger.kernel.org>,
	"open list:OMAP2+ SUPPORT" <linux-omap@vger.kernel.org>,
	"open list:CLANG/LLVM BUILD SUPPORT" <clang-built-linux@googlegroups.com>,
	Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH stable 5.4 00/11] ARM 32-bit build with Clang IAS
Message-ID: <Yr2lNs0tnFyHmm9d@kroah.com>
References: <20220629180227.3408104-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220629180227.3408104-1-f.fainelli@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=aq8HZROP;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Wed, Jun 29, 2022 at 11:02:16AM -0700, Florian Fainelli wrote:
> Hi,
> 
> This patch series is a collection of clean cherry picks into the 5.4
> kernel allowing us to use the Clang integrated assembler to build the
> ARM 32-bit kernel.
> 
> This is useful in order to have proper build and runtime coverage of the
> stable kernel(s).

Odd, but ok, if this helps you out.  Now queued up.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/Yr2lNs0tnFyHmm9d%40kroah.com.
