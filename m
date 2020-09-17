Return-Path: <clang-built-linux+bncBCQ6FHMJVICRBNORRT5QKGQEVEYWAJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id ED75A26D76C
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 11:13:26 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id x11sf986788pll.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 02:13:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600334005; cv=pass;
        d=google.com; s=arc-20160816;
        b=gPWjcKfT77L06vwDsxiRQRqk4b62Gve5W4LSwAEFD1PZVpyD6F92GDFa3GRkAUJ4xV
         /MMJGT3gkf2N4rhdc6LJykp9BDkfzGi3uzmSR/N8bwltCscvg+9DOPMcPnkT1sU71KEd
         dxTghY1rSWnMpHC/5xcTnRcU8SYme9R0WrpdGMM6k0jW2RIjyy83NMnHQedTjvP0HUyV
         NJfUuifgAI0U+FrjyKAmCJfiKYJqLo9H2WzeDZwGdnDONDtUMl8sDLsPvgWQK2xKou9A
         8O92SNKb8wlrWO0C22r/+fxR63MB58uEQwB1+2RsHf2sD1yGjZr51vc8I7khHBDaWhFm
         MH+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=mUlGXn1XXWJ01U4Vo0IXzqgz0cwBEWFTIr41N5xA57I=;
        b=bcalzMQ2m/RkzmE950O8Yn8/ZSf/1NDVcAMIKTNE8/BpzIoNeGTFYOx7UBBz81zyxB
         o44iE5UmnT2jTQMuZnp/W6R3SM6tMpuJGhH9w0dxe3QVGmOB+VCNm3PpLOQcPwzL/wxt
         HlZ6cfBfBKiLUYcEQLkqzkbnsF8f4s6b1am6cMmUx2TzNmsrIyQHHwJqciwUh/bLJzap
         KDJ4rqgHfULygwUEf0gjC3slaLYENxxzPYs+OHwLTHiSpthmS+MBrXmIzU06iEuxDHEv
         P11GHlGvm3xau7iTtxKmwk7CYwgdKJQeRlPJKLIjNpPEIkmuvSU4d4hijkNLEaZNLuFF
         Hjfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b="hZL/fxSZ";
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mUlGXn1XXWJ01U4Vo0IXzqgz0cwBEWFTIr41N5xA57I=;
        b=MUsDM9p9HpJERx4ekG3Lv8xT/FiX8xcpM0L2PCPh/W8U/y94N7EY3Bi0mf276Oad6B
         3wpXsbm921gbKtqfxxnKfqW16zjG39n+Dg/Zwd5KKlJ9biwMP9GM+U4mx+4lq8UFndjL
         dmD8/vocxwdryBSKsFd9y5VU5pdlL2rEOrEElyGNP3hb59h5ehbV6UbF/vlXN7O4BuPB
         8BdQpWwVB70rSDJNWh8t2rCQv8bHTsZtS5zsEFyLQ2OX3enM/byLZ56nAx8+cPWuZr5V
         Jn6DSqaQx0NoCfIVQz8GPB+hDMkeQqJp0sJ7zpX/E4Pqe2WijgOLfQjJt5wtAr5PQLO3
         r0ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mUlGXn1XXWJ01U4Vo0IXzqgz0cwBEWFTIr41N5xA57I=;
        b=nd1dZa7/75agjCyarSIIXshXpAFVleoYWZT/mLdOYu5XAUiFyGhxpabLZC9PHUHkgO
         wEj5cfXwQ9poABLL57WZI7a5CxpcyZzrMnD/oKZpizA9ckseka5LdIsmAn+qu1UOryMX
         JfcCAbD6rX8nNp+DaeXudEHrz30CUxBXwC1WF/PVU/CS0Rswt5d2mR2jSSwxWsvhcqU6
         JdcdaJSw3ckVOAhH45royA8h+O0+ysk4DiZWgIClJMHMLT5Z6DIDhWek5PvrNpxZBgU2
         PVR6KAFqmeD5OSyytRG5kMFMqz9ThUhtNtLG7zF2oc1BIhhZq4LsKuD+sW7Mjye/zKKF
         RqXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531b9II68YYrDRq/KtAAbxasuIh57J3cz7rnO8L8RrCGJzOWV72P
	v2sEvwErCzLlFbKqqmFCu00=
X-Google-Smtp-Source: ABdhPJwADUPMrX7FIry1tHwTGoj+fL8z/5sA+nV5NIpWpghq+Da2k/vy6H9FLS68fs/USLTffqetkA==
X-Received: by 2002:a63:df42:: with SMTP id h2mr18625747pgj.239.1600334005212;
        Thu, 17 Sep 2020 02:13:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4e13:: with SMTP id c19ls645319pgb.1.gmail; Thu, 17 Sep
 2020 02:13:24 -0700 (PDT)
X-Received: by 2002:a63:2c44:: with SMTP id s65mr16023279pgs.210.1600334004587;
        Thu, 17 Sep 2020 02:13:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600334004; cv=none;
        d=google.com; s=arc-20160816;
        b=LrgHWt3rPracB6x31oooc8MmFZyO1bXYzJkriBJcr5f7ibF92C1i4dxk15efVAVYfj
         3Um8LFoum43WL7rfTuXIO8Po4gn3fi7mwIteR7r0NJeOiTCz51Ka4X1dP18bqmqN6G5c
         qLPX7tGYhPMJYHA81v0UHDpsnKX9nHXLHrvinijaK9uHovUMQuufSwpGWINDfFEc8Dne
         EW4R2MsdLMz5S8Zuo59mJ8YiEGz6Afk3UigDc6QvILr4QC4r9OD1s+kkD5f8fDjTxnVW
         zKp68lQ20/QNVlk/lelAoyVw7MovWQ7e3ZOWFDhl0tSlq+RFW6b5zZE/HPwYoSI60cxI
         sk6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=YsiztN215XWC9ZmIuGyLCBmCmoZZqVF3RiMsEwH8JZE=;
        b=NqqN5LZGfJh4ViXlgU5yH74vW+pqDl3FPphkduukeqJq1kpY6XRkVaili4zX2SPdkN
         FIV98SblpPxGv2B6uvDypNADwULFEJzG/h6BlfrqNVa/D/J0XHEQ4/iYA5QaQd8DuyWi
         +DWnVc1JWId3pn3tn69gtda1LiH4A+JnnkzUfEN4rQdELAig6j9R4V9cbObCuDrfUBwW
         KGP35Mc0QNpyMm9K3FtWGz7xccpLq0xWd4icvPEReZyo9O4jPNh1rJRMPs5pfVh+cJhK
         YWwHMfSQqX/B+BMNofsYGxEfwoFC2r/m8ks7M59xOJDQWPsbpgvBnxzjO2rhxDUe8YIA
         pzIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b="hZL/fxSZ";
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id s3si488327pjk.3.2020.09.17.02.13.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2020 02:13:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of sfr@canb.auug.org.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4BsWTn4pdZz9sSW;
	Thu, 17 Sep 2020 19:13:17 +1000 (AEST)
Date: Thu, 17 Sep 2020 19:13:16 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Will Deacon <will@kernel.org>
Cc: Mike Kravetz <mike.kravetz@oracle.com>, Nick Desaulniers
 <ndesaulniers@google.com>, song.bao.hua@hisilicon.com,
 akpm@linux-foundation.org, guro@fb.com,
 linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org,
 linuxarm@huawei.com, ardb@kernel.org, clang-built-linux@googlegroups.com
Subject: Re: arm64: mm: move dma_contiguous_reserve() to be after
 paging_init()
Message-ID: <20200917191316.578a5181@canb.auug.org.au>
In-Reply-To: <20200917090234.GB29556@willie-the-truck>
References: <20200916085933.25220-1-song.bao.hua@hisilicon.com>
	<20200917001934.2793370-1-ndesaulniers@google.com>
	<ccfcf5a5-79d1-6339-b4b8-33b587507807@oracle.com>
	<20200917090234.GB29556@willie-the-truck>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/GGeMPW_mpWrv0BgtdARWqO.";
 protocol="application/pgp-signature"; micalg=pgp-sha256
X-Original-Sender: sfr@canb.auug.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@canb.auug.org.au header.s=201702 header.b="hZL/fxSZ";
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates
 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
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

--Sig_/GGeMPW_mpWrv0BgtdARWqO.
Content-Type: text/plain; charset="UTF-8"

Hi Will,

On Thu, 17 Sep 2020 10:02:35 +0100 Will Deacon <will@kernel.org> wrote:
>
> By "pulled" do you mean removed? (potential terminology clash with git pull
> is confusing me here!).

"removed"  It will not be in today's linux-next.

-- 
Cheers,
Stephen Rothwell

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200917191316.578a5181%40canb.auug.org.au.

--Sig_/GGeMPW_mpWrv0BgtdARWqO.
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl9jKKwACgkQAVBC80lX
0GygRAf/RzlnqJWzwyGrK922onkkSMnGqxeSkGLLdek7NfJ7dgIFeHWwkTWW3qp4
zVP9q2YC1ez6ebEjbtfl9Wo7FegBQL6MCGhYcbGxRouWzIFC8AhEVcpYxiaFKAOp
f5vZ4zZCg1OMzvE2Vvk8v5GR/OwT4bX62w3hKw/JEgS2hJYR8r+nVmVmqfqqWbkE
ugINDp3MsIjxUL9t8scTJxBvJJ368GJ/RkAWNDePGiuHu5IgvHWqqnTKmJRt9L7/
OD2CnpnIprwtVbz0m0ftqUBVQR79T2fPlhfoD7BbNOFf/k72aTH2CGL+eCLYs1y+
WJqWau3aOmR7KKcTcsglUCeHOBkF4Q==
=geWz
-----END PGP SIGNATURE-----

--Sig_/GGeMPW_mpWrv0BgtdARWqO.--
