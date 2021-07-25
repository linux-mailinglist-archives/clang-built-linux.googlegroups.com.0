Return-Path: <clang-built-linux+bncBDT2NAOB24NBB2XF6SDQMGQEZRQZANA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5A03D4CF5
	for <lists+clang-built-linux@lfdr.de>; Sun, 25 Jul 2021 11:46:18 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id l12-20020a5d6d8c0000b029011a3b249b10sf3208796wrs.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 25 Jul 2021 02:46:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627206378; cv=pass;
        d=google.com; s=arc-20160816;
        b=UH3BOL3Oti9oy8vPIeMAgElKL8RCOF81QHUPSETo1LS0cCYowzStkj31unDMLHIasm
         0wb4ullIB8IGkC2CCme95XZaD5j8DVMyRp8ZgPhLgeBQiGtuY+dqsD7r083x++If063/
         VBSt0Ah0OYOhY6OV1E1+kcrLAbIGmOMwfFVqJb95Q3efFkSI7PS2UMtHmdOPFN74bexH
         /M0WNMQMvRFfduJw9h0VsXDQsdPyRhFQCY6bT1GVLJZJV8FB6WhICS6t9EgEyhJcCuFR
         MLobDwq1EYjcUuwiaQNxubBrMGjqPKIXepABdBWu/esX1vWPMrZkQFahUuqyknSB4If8
         70RA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=JVw0e4XkDbsOucW36eFnqxeo+Iuikmz7a8FMrGyw0Ks=;
        b=wzk9Zv+wZ/4v6UAUPyGfJgCVvKTwPuMCpB9Ya6ZdapT979tLcAxyHjL3tLw6vpLNPj
         SMlV+u336fwXbaUJMBbrTrxMcJsazMYfiXRleQqpywH4QB3PXxb2Hn+RpkCLic2wdrxZ
         YDMCVgYKkT6fsL4fryozMevYOymQ5Srzc4+0B9tC88E7b3FqeCI6S61HJPbGOTH47+JF
         ZrnHl1mKzpRKruoLSeiH7R94d43aCLDG3KF2XgTK7ONux5TNBNUO91tEFNH/Trh/eu7e
         iqDz/yRzF4hkiKCMv7dtDB/mY4qWEpw3Xu8sCxaNKIwfx7B3pTgMo2N3Lgx21aAy/Ke0
         JVCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JVw0e4XkDbsOucW36eFnqxeo+Iuikmz7a8FMrGyw0Ks=;
        b=GVyGSbZ09JvwdVy6zFdYvyBlVKV9jdsHTwTpoFEHddxxhCPRHgJ9K8t9ktRoSpPb4r
         /ZG4mhZQkV6e+oTBtWbxtaX8BbRQ+SoHZFpuaw13KejX3nu7hpS99ePDtRbotb2tGlJc
         uIk/Uxb4CFuYP+scArcHCWu2YVuhUEPAdf8fO1T6sYGxmYhtb5rr2Y7DVUnbeCHKsjSY
         LTEpTl4x/9Du2pQTn2xd+nhJrmGMZeB1sB73hOwR3RWhGw33W7bYFsaGXHNa7i5jWr6D
         vQursoDzdawMOOLUHMO/ELdSNDzZh47ObPKNvYnk0z13rdku1CSz+aLiOYlrDxcB5GkA
         tEEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JVw0e4XkDbsOucW36eFnqxeo+Iuikmz7a8FMrGyw0Ks=;
        b=TcUUxkAXbfLg/d+xGI07CpQaS/GNojdS7NtIl1LlLvYjqDL0Zj0equNNip4uI7dz6T
         NEtBdablGDlLY+y1z6XgG685cmxni5gsPx31saNJXQYIWcpa4hy5k2IhsfRZrChan5rO
         SM6W5QeDheuwskW88fKG5XXOUKGovgD3rALgkwrcv3X3jqtrTSG6GMWS4dA91zFsdTTO
         KmPyfCAz1RsgA5pWeV2ESLx4dAo4zAhY8q1gOTXKx1O8q8Q2rSUSUig+E9WpJKhEl0k+
         7fwepI7qETUh0BnrXOnEMKEd9EZYbpbz6gBXnxvLv/Ythlhpu04aS1xHdR/czz6al8U3
         YMuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533e8HNx2fMba9u72cEhInuEhMZ8fi5ylAZy2n0654cYzKra8Mm2
	f8W2stu37HNqU+sxYTrZnb0=
X-Google-Smtp-Source: ABdhPJxQ6dgX5BxdytosQGswUEFx7r6c2J61dkrdT03bF9I44Uthsf7HLHocmbjR+zQ2pxVZ4QgxoQ==
X-Received: by 2002:adf:c448:: with SMTP id a8mr13564100wrg.103.1627206378317;
        Sun, 25 Jul 2021 02:46:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4c50:: with SMTP id n16ls3021344wrt.2.gmail; Sun, 25 Jul
 2021 02:46:17 -0700 (PDT)
X-Received: by 2002:adf:fc10:: with SMTP id i16mr5362962wrr.229.1627206377479;
        Sun, 25 Jul 2021 02:46:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627206377; cv=none;
        d=google.com; s=arc-20160816;
        b=yzX+BDRRLQPZN/DbmeR6dCUFOZOMY5Q4U9B3XZ4WmACOAStG6Kd+fChmqxae5o2qwL
         xMjj2djTNIw76M7I3Gv9RFt7+balyXWqdket2XAvlE4f+yxWrXAAzUbf+EsgykhqMJMs
         LLZwvTyxro8V7OvqGh9YxrXfSAzOu1BeQaVjjKOuVfUSIZ2DF82ntRv1mLxAZdUrtnTS
         c1O0OH5GNDhFXbxy5sjVykMq3eYDBQXh88E3Lv98NuiS+08kq0urLDOYBb43QpKwvA1Q
         W/CswxvfDWZA59z/mk4fQbzNTkmOCX9ZHWhPhUOnrM9lFXCurowKEddoOhK3aDqM/Ua8
         oKXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=kYO3TLA6q/fVvHrmDEIn3ZyLSE+GniagQ1y1oXp/tgo=;
        b=TIOwTMAMohNa3ms4BXfXMSqR6lfpiQVndgxI5LSGPbSPPRqrdCUqjGepk+mrG5Qw+L
         IxEm1QG/eDvqeBxvKS8+EEKkEUjCwh4J8SfmoP90H5t4b+Zhrl9LXfy2MmuE66KJM2zm
         RAJx62ZXFq2IOaF8b2+VSlgAtwJsibkWjOQSAkIMadXlo6ucFOUY+j1xg4kgRmss2W1e
         sJ3IHWdjJQEjKTD1TQD7tl6spEqBtDmfAT3CVzVv08hjjuQgzgo9hbZ2UJCNfAOZCiWc
         PAyj07BAdQIFfzXSGk+PTqyincExmhDbsIYfy/K8EzVu4AtR7VLRT6D9LVbamGCoSixq
         LumQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id m12si1220708wrj.4.2021.07.25.02.46.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jul 2021 02:46:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1m7ai5-0006YS-AR; Sun, 25 Jul 2021 11:46:13 +0200
Received: from pengutronix.de (unknown [IPv6:2a03:f580:87bc:d400:6671:797e:8cf2:7596])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 80320657530;
	Sun, 25 Jul 2021 09:46:06 +0000 (UTC)
Date: Sun, 25 Jul 2021 11:46:05 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: kernel test robot <lkp@intel.com>
Cc: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Rob Herring <robh+dt@kernel.org>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Wolfgang Grandegger <wg@grandegger.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-can@vger.kernel.org,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	netdev@vger.kernel.org
Subject: Re: [PATCH v3 2/3] can: rcar_canfd: Add support for RZ/G2L family
Message-ID: <20210725094605.gzhrbunkot7ytvel@pengutronix.de>
References: <20210721194951.30983-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <202107251336.iD47PRoA-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y4plgjlsv5x2mcmy"
Content-Disposition: inline
In-Reply-To: <202107251336.iD47PRoA-lkp@intel.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: clang-built-linux@googlegroups.com
X-Original-Sender: mkl@pengutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33
 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
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


--y4plgjlsv5x2mcmy
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On 25.07.2021 13:39:37, kernel test robot wrote:
> Hi Lad,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on renesas-devel/next]
> [also build test WARNING on v5.14-rc2 next-20210723]
> [cannot apply to mkl-can-next/testing robh/for-next]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Lad-Prabhakar/Renesas-RZ-G2L-CANFD-support/20210722-035332
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git next
> config: arm64-randconfig-r031-20210723 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9625ca5b602616b2f5584e8a49ba93c52c141e40)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/082d605e73c5922419a736aa9ecd3a76c0241bf7
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Lad-Prabhakar/Renesas-RZ-G2L-CANFD-support/20210722-035332
>         git checkout 082d605e73c5922419a736aa9ecd3a76c0241bf7
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/net/can/rcar/rcar_canfd.c:1699:12: warning: cast to smaller integer type 'enum rcanfd_chip_id' from 'const void *' [-Wvoid-pointer-to-enum-cast]
>            chip_id = (enum rcanfd_chip_id)of_device_get_match_data(&pdev->dev);
>                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.

Seems we need the cast (uintptr_t), that I asked you to remove. Can you
test if

| chip_id = (enum rcanfd_chip_id)(uintptr_t)of_device_get_match_data(&pdev->dev);

works?

Marc

-- 
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210725094605.gzhrbunkot7ytvel%40pengutronix.de.

--y4plgjlsv5x2mcmy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmD9MtsACgkQqclaivrt
76kqAQgAjSoUVJ3e+wxfDmjcDBWUjqWHDAX/uFWGQXQfCOdcCnnujfMBMJbgcAC0
QqyEWtFblN+zYQCqhUoJLNURHBbhAkCiByljWA0uNw8aO8GzsOiISDusY8us3FdK
VRpUW8yNEC9/7RdcpBew8HaE/0fVETC1OdSolqUsS2H1UWXFQsRQzCaYeEn5EFse
1ldsDrRsyXvvXZiKqibPKJ4DBhrmw81STNVBH+pIRexhrTGQrH5XVzARTJO7XJO8
6hTXIiCx5l0H0mwHXqBq6AZswzcEcqnH7P5U3N8i5MzKBi+v5H3RA63U/ytRMmn6
Qs1YmDFcUN7Sl4tcGqkQ1S+PWhZsEw==
=2kyD
-----END PGP SIGNATURE-----

--y4plgjlsv5x2mcmy--
