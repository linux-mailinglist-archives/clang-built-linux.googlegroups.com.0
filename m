Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBYWOSX6QKGQEDINWKIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCA32A9812
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 16:10:27 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id s68sf19290ybs.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 07:10:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604675427; cv=pass;
        d=google.com; s=arc-20160816;
        b=YtFd/ngxOLYaqZXO9nRsTXZEdqMe8pmeSIcN9aAgOm8qofFyGjRYEAeyb5H+NoNe1V
         LZU9mZ09dhX2P0eTp5nN1oeWJN+BP6BrJX696VqY8q2tu+3/NzOHnIljxBBRJxI1HoGX
         EKSm9C1AgQnwIKJI6zn8RXsUr59wnqzfmHTB+4eeG76XXvQLs8thnMcyfYAOFu70tLmr
         WxbiRp0qsptytV49QUg/ZGzKYdFO3BhUJniU7O2Eco4SdqvAVzrGOVFoswcBEaiT4dAu
         AbL+M5nrFv0JEmCXxiyMMqtTu42Q7wYh42RpkpH+KefAZzpOoT1+ax0hZMM/k3BL9txi
         8gXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=D+QsL62QgEy/nW3Wz6cUnE7d92yFV4N6IiqIZsKNUWA=;
        b=R7LaYDRDGX9GkQKi5lbQ5Jf37mQW57OcuAdMej0bmI8OqOZ5FTcDXnDNbohgfm8shu
         b06dTbalZe1VhC1zF1lXxWvZgc81W5Bd84BViiu7eTQ0jxiJj6rzO+790dtF5ewEnBAj
         SUEa8UBIc6/j0l7lxpvu4TkPMFYmL+aMFKIkdYdlBdvAFh/YLfJP4lvgEt/WKgutZsJK
         ZemeBOCKacUG5I76bWBJxQZNK1jIurIFWeugxMhwJ9aQ+65IbyEfYf2PTgD06ycObKHj
         iNv6cjKX8jylIpOPfrzzwCGIzj8vO0J8sl0omivFdKu8e0f1kQUTJXZ5dAeQHtpVHsK3
         SHXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pfKvbldl;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D+QsL62QgEy/nW3Wz6cUnE7d92yFV4N6IiqIZsKNUWA=;
        b=YvRJD3UyTGfihtPUYQtktLnl2tcyLyzINeWk4JJOyEiaidEwndOtSGpyRlaZgf2pD5
         Fh/JjdYfvIwiaMnDBf5cc3kCR0k2jEMguaxVAl4vrea7KDs2T+YX39KA5qUkSigntNJH
         VKnA9Q3AW1gJm4Hw+jD3EGSKfB5camp1WsEBJKT+h6+WtOgQijoJ/wZNYQA+3h7wY1Xc
         DgAR4AALmfd5+Awy8iH7hgcxeTJLQwfEcUgqRUnmQLK+jUQ+jX/QdntG7pfnvQu5DSmc
         9jV1FtOkg/Ux1qYc+USMiV5hGDtabGMiEpo2BgG1kg4H9/1903W/1yIeiLLdkXVPnwAc
         9WhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D+QsL62QgEy/nW3Wz6cUnE7d92yFV4N6IiqIZsKNUWA=;
        b=ty49QqqEfFr3dI1OUj4GUZcs7h3Lask+f+sk0FhhQjJXPdk100wibCb6I4aIrHulxU
         ZMaij8jLxWQh4QG8ksikc4jCUzpFADbKbitoJquWgzb0wm9/jryNN8dsSTU/b4DEo02N
         mfq5NNLmlAVReQDAOL7u/UAlhOILKd3WkE4jnBr+PCcbfIJfSQ+EzEsAuScRvoDi/iYH
         kQwMPdgVoWsp5XfEKXSwl65wRqLkz8AI/7UYLW5I5E4ZGDfszXdVPoPXzAlvDH33MyIo
         dgfROEG+qSaWFsN9cPt9VAy1yxx/vmKWNJGi0lb9dQHcHKKlGnBjVVqu06SoIqzAuh6j
         VWNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CLf68kYemBuf983r4qNaoU8/CDcfgWmdwc+7Mrm2oN+PgMziw
	NeTtb+g9IK/Al1sm92dhLv8=
X-Google-Smtp-Source: ABdhPJxv02GuT8H/rc2QgAGWn7MAYh2JRtcC8dPOexh7MspeopXfLU+TPEVUzto4rTglHpxobz7vEA==
X-Received: by 2002:a25:d914:: with SMTP id q20mr3001054ybg.522.1604675426783;
        Fri, 06 Nov 2020 07:10:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:e81:: with SMTP id z1ls868033ybr.11.gmail; Fri, 06 Nov
 2020 07:10:26 -0800 (PST)
X-Received: by 2002:a25:b444:: with SMTP id c4mr3660035ybg.74.1604675426232;
        Fri, 06 Nov 2020 07:10:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604675426; cv=none;
        d=google.com; s=arc-20160816;
        b=OPIlhja1gZcy2/aLuDFqhYfz8nfAl7pXsUeGt7cX0vjDzyh7uCMaadp6xNiYFMCCV8
         byqJekLKNONERK/X+STlEMDjQ6GwnLtX5hz4eQaTz6yPJG36ijUgi0nqIdK8mqzRSrH/
         hNA76/LyThhWc2a2LiW8BxjaWJxMNIQaCCUhCSuI/QZPvsu4gwFPTKRnd9NcuIRW5ELZ
         R8pknckn4el/CokoS08KjlG7L4SZq3De/V9HBN8DfhSjGxKYe7IyFAsuDB81tg+8kzzG
         4YC8A4vfHZP4DnV21pNt/U+wWdLCA8dCvdMcfVSX6E2ETF754kOCGyhcBodCo0CpOOr9
         JIWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fFHB+5JvEzdwoFmu1R3PoDbPLTvIXW95bHQ8Lg76zgU=;
        b=dzf1VgJIrnImebF/mGScF48M9ghSDkqS2KJg9/Voy6rCYswbPqZEwEyXru6E5DFj/n
         gCZzG+GOWL61VPhT+yaErS5EtZxpjFMlrZxsJLPji4EXhy0ryU9s/fIRqkcv7rrtAKe8
         e/7Wpo4CLz+49aDm72oB3y5FSeFvbM7bYOKIAKk+lreOvzxoD02GZF8KNDXPeq0shgw/
         1K8/QREYRyCZ45dBU5S+dL1QIdFtl//tIzk1dt3Ubc2RABEuuieeAWKtghKRMn+bt0x/
         XoRjjbXvPP8+pzi5GqgIlZ4yd000KN2rjEgo29LPEfmn2aBAkFklPcBiHXo2q4nkYv64
         SR1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pfKvbldl;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l5si94412ybb.1.2020.11.06.07.10.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Nov 2020 07:10:26 -0800 (PST)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8ADB322227;
	Fri,  6 Nov 2020 15:10:24 +0000 (UTC)
Date: Fri, 6 Nov 2020 15:10:11 +0000
From: Mark Brown <broonie@kernel.org>
To: Saravana Kannan <saravanak@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Cheng-Jui.Wang@mediatek.com,
	Android Kernel Team <kernel-team@android.com>,
	LKML <linux-kernel@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	"moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Daniel Mentz <danielmentz@google.com>, linux-spi@vger.kernel.org
Subject: Re: [PATCH v1 2/2] spi: Populate fwnode in of_register_spi_device()
Message-ID: <20201106151011.GE49612@sirena.org.uk>
References: <20201104205431.3795207-1-saravanak@google.com>
 <20201104205431.3795207-2-saravanak@google.com>
 <20201105171201.GF4856@sirena.org.uk>
 <CAGETcx9_En10j0DwktXtPDrx=Aqdr2iWEuHmYB-=SnfODTmMfg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wTWi5aaYRw9ix9vO"
Content-Disposition: inline
In-Reply-To: <CAGETcx9_En10j0DwktXtPDrx=Aqdr2iWEuHmYB-=SnfODTmMfg@mail.gmail.com>
X-Cookie: It's the thought, if any, that counts!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=pfKvbldl;       spf=pass
 (google.com: domain of broonie@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=broonie@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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


--wTWi5aaYRw9ix9vO
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Nov 05, 2020 at 11:26:44AM -0800, Saravana Kannan wrote:
> On Thu, Nov 5, 2020 at 9:12 AM Mark Brown <broonie@kernel.org> wrote:

> > >       of_node_get(nc);
> > >       spi->dev.of_node = nc;
> > > +     spi->dev.fwnode = of_fwnode_handle(nc);

> > Why is this a manual step in an individual subsystem rather than
> > something done in the driver core

> It can't be done in driver core because "fwnode" is the abstraction
> driver core uses. It shouldn't care or know if the firmware is DT,
> ACPI or something else -- that's the whole point of fwnode.

Clearly it *can* be done in the driver core, the question is do we want
to.  The abstraction thing feels weaker at init than use after init,
"init from X" is a common enough pattern.  If it's done by the driver
core there would be no possibility of anything that creates devices
getting things wrong here, and the driver core already has a bunch of
integration with both DT and ACPI so it seems like a weird boundary to
have.

> > and wouldn't that just be a case of
> > checking to see if there is a fwnode already set and only initializing
> > if not anyway?

> Honestly, we should be deleting device.of_node and always use
> device.fwnode. But that's a long way away (lots of clean up). The
> "common" place to do this is where a struct device is created from a
> firmware (device_node, acpi_device, etc). I don't see a "common place"
> for when a device is created out of a device_node, so I think this
> patch is a reasonable middle ground.

That is obviously a much bigger job that's going to require going
through subsystems (and their drivers) properly to eliminate references
to of_node, I'm not clear how doing this little bit per subsystem rather
than in the core helps or hinders going through and doing that.  I don't
think you'll ever have a single place where a device is constructed, and
I'm not sure that that is even desirable, since there are per subsystem
things that need doing.

I'd be totally happy with eliminating all references to of_node from the
subsystem but for this it seems more sensible to do it in the driver
core and cover everything rather than running around everything that
creates a device from DT individually and having stuff fall through the
cracks - it's been a year since the equivalent change was made in I2C
for example, we've had new buses merged in that time never mind SPI not
being covered.

BTW I'm also missing patch 1 and the cover letter for this series, not
sure what's going on there?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106151011.GE49612%40sirena.org.uk.

--wTWi5aaYRw9ix9vO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl+lZ1IACgkQJNaLcl1U
h9DyUgf9GVIIEgVFeiFwfpBxRp9KUtKikyJJ4G/Plgv+Bogc094JDTo+SIaMoQbG
cmwe2/ku3ir8I4FL8ud8W572cFMJbzHdG+giRDMDzb69A+mmfwUiW8D48ZhVX4ks
LGqvriy1bH0BKfzAvoduiZTjGxeIEeZ7/k2i1r4oq9X35GLl3o4po4045SW8uWVQ
XQ9Gdy0PgMcUEcdwDnWlaRzXmUUMmYRpVdhliGYiAoQJ754UPh2Vl9dCj3nhw1vI
uI0s2QMjWdYju1fJtjkStB8b8mZkSWyoeoMJSZhi+d8Ie3bEi7u5QPc+F4f9Ln59
IJVRNPipUqgtxuadJaa6Ak57PilcXA==
=zoTL
-----END PGP SIGNATURE-----

--wTWi5aaYRw9ix9vO--
