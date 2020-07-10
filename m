Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBIV4UH4AKGQE7FVSN5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E97621B4F1
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 14:25:08 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id 75sf2367989uai.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 05:25:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594383907; cv=pass;
        d=google.com; s=arc-20160816;
        b=ggq9gxmAmfl8SMfMJkpgKKn15j500BjzpoSDMFe1Mz1XM72GvN8BQ1NkyxNnkpvCm7
         1KdlMm2/sCdTrsh/iWmoM3Upc2Ekj3iWMzme0fK06Pp795L0KenyKBFkmpCE6jb/6LXY
         lbX10dDTLelJ4lGzUcEzkCJnAUDO6olr5COuoWz9CL+L04zi/nBLBr5T09zNw++VNPVP
         vmo7YigcPj9gu+Rde+aMTFs+jM9/ZqgIlfklve5VwGIFRQvkYfvZiM6iVC6SZ9wIrKRn
         VJpppzme//6fiR6heGVTZ5sHi3gNPk1w0BjiXnWJ9Q7bCViebBgmQCcTtZ4bm3gKwOke
         jHbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=l6FOz/tx3dBNvNlZpkZKLikEMadr7l+fQ8DoIo3754s=;
        b=ciP0zG432DqfsXBp6rzi71YPjmtB3WI3wLMrx66/gqVUZOg3rdEEMbHYbyvVKR1Jsi
         Sc4RQl9VSZoQ4oSpEO1TNsJdObnCJRWVcCkyUVrAZ8ikqfApjTgW9lPYgrZCrYgvp7bG
         jAi7ViyBY8556o2Q9c2xC9kRHsxtjY+KkM6VTdKoXjlGakNZ7tx1VX2Yigwexr/9pO97
         fNQ64/3LHVoCvCvcMXTEEJZtSeF4kG5B1RA7opBuQ0CW+CSIF227p8KdthTwRLCkPdoV
         7Uocap68+/Ct2O9AA30pZ3H4E56S4QX7zCh4HjoJpUNk/hcAAiL3nGyVq38PriNESqqY
         FhsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qs3++11i;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l6FOz/tx3dBNvNlZpkZKLikEMadr7l+fQ8DoIo3754s=;
        b=jNYE3rc0WFHs7lZsfx02yfnGOD6B3PRLKtFZ69XoXCHwPhz2hN1QLkbd/i0W1KjV3e
         uO7sejPEHQUy9v9Ucd8kjOxtDMZVKhldTSurE0lOrty+N3CHWIMtXEjT4iFzP6q490kB
         WpinmmJRtFGlJlIy0Infn2tKUDREoFCRke5PrJJMi2TjIv+itKmXVuZmjCkFPMPeC901
         odcxcrYm9qoJrRMqT/PXZEUUJv5EjV38tS7BUpBqMhHsTyEfOz9aDbuG1u21efIcS+0k
         XzkRobPcmz0Woa+Rruxz/53rTGe/t9H584ARbrOvAoAdcBwOKi9RPyi97Xlv+FfYG9D0
         9xxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=l6FOz/tx3dBNvNlZpkZKLikEMadr7l+fQ8DoIo3754s=;
        b=lJv1wS7FlQ5gpLhNk8/jj2N+plMJBiBZ7DYYMv9MFU0Zz4w6Hun49CQpeheCTD6Rhv
         9D6Ex6LuapC56YKqttok9FY9nW7rdbgfE4dNYOQGRaoSbs4mq3N0nfA2l0QO90Jf/NXb
         MTX9NBeCS4hhesOsNrMRClPtj1DlNGJD5Odrn93mG8bwvvZSLAwtLbCUG346YAiumfCQ
         3W/pAdbwH7JOe6tEju6iB7iHELsyp2ifrbLzUglN1PnrkCfR09X/PN+grgTCVSPkCxSq
         ZUDXe07I3v8LXAkWGUoNG5C4PbqZGLVPGtUtj4Jxm27pHVNnrUdUy8E0qgiF/o/WgnYh
         EFWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vEJ8ifN95U8uXb/9tIj7i0ZfAt1Edsqa5c2ddsgE3SDKaDaP3
	yqCc4qn6wkdrYKQy4XeB8vY=
X-Google-Smtp-Source: ABdhPJzx0+zdWyvmXtoZ4zXBKVqGb0kYAgMwgeWWkbPROldsISM/UDSv1mnwAnLVJIv0d+Ru57jhag==
X-Received: by 2002:a1f:5f49:: with SMTP id t70mr47946040vkb.19.1594383906924;
        Fri, 10 Jul 2020 05:25:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d605:: with SMTP id n5ls1106239vsj.11.gmail; Fri, 10 Jul
 2020 05:25:06 -0700 (PDT)
X-Received: by 2002:a05:6102:243b:: with SMTP id l27mr50500527vsi.173.1594383906544;
        Fri, 10 Jul 2020 05:25:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594383906; cv=none;
        d=google.com; s=arc-20160816;
        b=0WaOjvQ1b20J1mlX6NXlCoBFDXS1rn1+DkE6RL5q1iifEEJVHqOVuLlA4WxQpDb4vi
         IabwPuxLEhVwdzwK4QWWwZs1B+SsYJ3+vcCCPUX53iiMzEw2VXmNWxAnJWB5C/YOC0jZ
         fHvGuc8sLcPqgmAM6l+gxNGOf/ZwiAiIQXqPFPKhoC6PVP9h1hA5uiW1lzilbtCXZVPt
         taj58hhS5lKZJ+ar4Zb8u6QN2gWsDmVqxD5Nzn+Osf5IhZ+8h7K5SKfKLrwLC1DzcZwi
         5e4zbrVviB5P6Il20qdnCXDw+lZj0l69DOJBs6er1Ck0KXpYtrhZsBc8keZVviyzk3yp
         ia8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Jq73zyM9ZqnA09Ssz8CQxvLkCULF+iHJt/dmdR2xPRs=;
        b=qsn53A6BJiqO7HbjfCdoNKosg+aEvd+j/RXNGhzSEsIhMz5BbmSDRZFqPfkPlqmkZm
         gipaTi99yVv9O78BsyLukE78M/jctDqNwCc7lL0gNF1X8WgrYQGcV5XVvL7+whCQI+xL
         WuhIU67946WBEMxx4l/jg6BEoY2T/J3Rxe85021OvW10CcgnKhvsKPAomp5nOyzFM0RA
         D9cl3v2QL1E7vEacUhNxAAUhn7Uyrh5OP4DIGlOPCHsvGvU/eT70zVc2yM3kBIKCaQo+
         E4qQunoe51r/IJDWX3D7fBPEloy3Kw7qBLZIVKxynAA/qWNj71mhPrGL69brdZvCdwjJ
         F2ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qs3++11i;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o9si271816vsr.1.2020.07.10.05.25.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jul 2020 05:25:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1C45C20748;
	Fri, 10 Jul 2020 12:25:04 +0000 (UTC)
Date: Fri, 10 Jul 2020 13:24:59 +0100
From: Mark Brown <broonie@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kernel test robot <lkp@intel.com>,
	Sven Van Asbroeck <thesven73@gmail.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: sound/soc/codecs/zl38060.c:614:34: warning: unused variable
 'zl38_dt_ids'
Message-ID: <20200710122459.GE5653@sirena.org.uk>
References: <20200710024100.GA2055744@ubuntu-n2-xlarge-x86>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EgVrEAR5UttbsTXg"
Content-Disposition: inline
In-Reply-To: <20200710024100.GA2055744@ubuntu-n2-xlarge-x86>
X-Cookie: Use only in a well-ventilated area.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qs3++11i;       spf=pass
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


--EgVrEAR5UttbsTXg
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Jul 09, 2020 at 07:41:00PM -0700, Nathan Chancellor wrote:

> When CONFIG_SND_SOC_ZL38060 is y, MODULE_DEVICE_TABLE expands to nothing
> so zl38_dt_ids will be unused. This is a pretty common construct in the
> kernel and the only way I can think of to resolve this through the code
> is by adding __used annotations to all of these variables, which I think
> is overkill for this.

> Personally, I think this warning should be downgraded to W=2, thoughts?

We've had that warning available for ever, we shouldn't need to disable
it now.  I had thought there was supposed to be magic which caused
of_match_ptr() to make things look referenced when !OF but don't seem to
actually see any sign of it.  The other thing is to just have ifdefs
around the table.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200710122459.GE5653%40sirena.org.uk.

--EgVrEAR5UttbsTXg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl8IXhsACgkQJNaLcl1U
h9DSGwf+MlJ4XSqif2TolBc5SBPYppVlodlEgCHk63vcT2C70y5Ddq4UJ3FrWKTQ
qWkFsOf+ACwdiYjrJAD91zKvpMimbnvSzUdMg3hkLTieIrAv7OAmvG3eyXP1pYpX
5lYunnsdyrIgikmN2pZZDwi8gXkIerPjyYmI1P353ZnPS2MG/B79F8VQmFyxzqdm
bx9wJ12Xd23mMm22I3UI816P2U8kAwph9kfio1OEgTjGspflwgWOjib4zGkeABJT
e39lX81b4/vUg420RgSnKVRQ8OOn3SN1mumsQzGD4scsJw+iVXEpgCLUu+lv6VvU
8hptWqRd09bWQneLsD7Qy15R1/+4HQ==
=5G8g
-----END PGP SIGNATURE-----

--EgVrEAR5UttbsTXg--
