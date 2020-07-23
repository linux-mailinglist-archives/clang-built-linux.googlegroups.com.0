Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBR4U4T4AKGQEUTYLCIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CE722A64B
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 05:55:52 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id a185sf2936553ybg.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 20:55:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595476551; cv=pass;
        d=google.com; s=arc-20160816;
        b=xHVSaOlvUnflZvJCyakNVC4sAi33R2Q9pBtEgZK5R3Vb8V5fh1pC/1eKfGSooSO29l
         6BvuhkJaLESYeIc/8uf4cGYRp+Y/9vDNMVGx3ZQkeEtUxNTEbjpcsrYZZMV3N5SFh7+j
         ZmttePF5sSDdAPIWbffhxGAbkYDUrv7/qYgVXocZkLn0W4rnumNbQ87GfRR6AKrmYhNI
         NsLlc4IYX2LBy5Ll+rYLKdHWsKp4JyN+OKOThZlyUCiroJQjMZIYbQpCHtB/av67vtIa
         6fT8cRiFLCOfikkUpFWjKLIJM/vtFfJiPhJjpvr55bv8o/rKIQZNA4x8yzZJbbrQ9o8p
         ceMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=xGtk+5N5/bb4GcmtdW3y49pYsH8HSCFxuIG8U2o+Z1U=;
        b=Gy1BBFvw0l5B7BXEzFvca4UhiP92KSSgFV2wcG45D1NipXt40Ai6ilYWDyVSP4mqJe
         HBJrJE0/mtBuGHXO0T/gewcEdryfsspb3hTrLW/FBQ1uMVvrwIkmu9XgrTp6+f/JVtyy
         wdKZE5BU9f350krd0J8aOoftxEYv62q+uS0AwSZTnZOWCfhVmVHESIRGKcMS1NQ9h5MX
         s14x+Wkvg8/FObMQnHTNnG6MMl1JSx9X69Q3NpWJf3uPX+tGgTDoa6VmZQlIZHvSpwVD
         qBZWW1vdpV0dJMx1ghVbIOEFKZI+3/vAdJX/RqK2MrhGiunklF/tletq8DpNiXMgL+Jh
         s2FQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SOu6WvfM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xGtk+5N5/bb4GcmtdW3y49pYsH8HSCFxuIG8U2o+Z1U=;
        b=WhECp/ZkvSxFj3gs68OajwXSorvgNt+J8hUYIdzY7f6payqeV1gZ6MXom0DlMSVQLH
         oiOkwWEdaRanZI1cOYmnE02V+Wl4Dim4/gXyjY4Lcqa2tqPj41k4QjgRd8jICU+Iug/h
         k0X42beTEBoTygozDZ1WPUCrLsuF2xXI2mZGfWYQ4eT/s+Xbofj6SVLt/hzdgK5VehiU
         UF54Gn/GgA1g/yhySH/AP8l60mvHINi7U0bU+gcqCAUrG5TEqDhiP99a0fmxOb2+wvLs
         69Kk0At/UzMbZgMTlGNExfFWqWeO9pieaWs1dH4VfPVyVZLuhry/P9ybszttheNCT0fJ
         FtXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xGtk+5N5/bb4GcmtdW3y49pYsH8HSCFxuIG8U2o+Z1U=;
        b=WU2eZfXIr/j0WRxTPXlnX8ephwK1w7rAwzr1dlQaxZqOWo2oN3oqpf2rIBHOB3mDAJ
         cPrdMtNnC7sUakx5JvT+TtEBDkkAwhrInsxtTEYgEkgT7KBXVEqL+VEM6V9o9nfTG+lb
         UO21iy1CI/Z0+zw9RzlVndXIIC98XMxQPgFLsrm92yPuBb2pAKHCL38T1QdXOoCl6QkJ
         sTg+9jaVWyKzyf0B86MvyaziPxzfYBeCs+4PUEZRrkyth7jJ/AWtdYXtiYZExolkDt7w
         ceJm16tDK5GGPw2T5lZ/KBxIUFto0juXMnBZRd5TrJ7g7xBM6sqXhwVdaUQSzD5CVeGt
         +UOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xGtk+5N5/bb4GcmtdW3y49pYsH8HSCFxuIG8U2o+Z1U=;
        b=pEqq2wg4J5bLzWok4/LugKxcOtIiPuSaqZ0n4sRhS1PAztzjqkYZFwiR4uOHWxFwvX
         p3papms+8h/vuuOWwuPaZ92k2ac7PcqtnjwooNz6eLWJHiCNJpYwfdbHiqG3UlS1QcK4
         5F7deMVPWoaCsaT2s1KMIvppP+NffILVNqM30WURIiWFcsXznA4fERlvyogorgMpoRVT
         yeL0sARpnCRhcMD4UxPpseOxuEyNVWTZyXHsDaXklnv+pcOtoj4CWRUT1zZa8fYGTpFD
         l1FYX/CiBQR35KJZTLRVuD49BuI8FxIW61mzEqmRPUL/IJ96zhEkYpD+mqrJSSiYYqC0
         fZcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hPcIxxhHvWI3bX2Wx6RwRclmk9+lAuhtFHy4U+nV6LTzPBxCp
	2ypvh/g8+rfTdeSosuYmmNA=
X-Google-Smtp-Source: ABdhPJwxNuY28lKpEUJPZDnfstX8pJqnb0EXDW+xl5mRcnPXaLecijcdLG0aTuyCCysGyifSWBIDJA==
X-Received: by 2002:a5b:e:: with SMTP id a14mr1929280ybp.91.1595476551420;
        Wed, 22 Jul 2020 20:55:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:a185:: with SMTP id a5ls1642099ybi.9.gmail; Wed, 22 Jul
 2020 20:55:51 -0700 (PDT)
X-Received: by 2002:a25:83:: with SMTP id 125mr3999567yba.243.1595476551093;
        Wed, 22 Jul 2020 20:55:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595476551; cv=none;
        d=google.com; s=arc-20160816;
        b=qfvXeGyi8f3oIAiAmYHXE86f6yhfm/4PVqdPZzzsblnAmEiMayWq2xL/Lkf70olxY1
         24pf+F5lZqPmyMRabKn1aViBcFvSAigCvwx5dvRmyTaasE3xr6oWS7/KupQ6G1N+FoX8
         TYdgTVtWhxjYvlXmzkdi8O6YgK3Mt4xRVr9yLtGQ8pBSUR85+sz7Qh9d/XZMTN+7URRw
         wKCIgrl1r5DVNqws2P7Gt0gvmudxJvIjtnmjBfZ4Kl+m6wXYUMCJw07exBpGTc4TQwVS
         T6AcqsgWVyzoPxg/T8286RglRj184MIaNLKTMiMMVxug3BfIF2QMPyKtAAEGzVAH1bfq
         BwRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Ns7wpf72unt03MFAaT63ZBxapsf1iBwHXsotL+FOYDg=;
        b=AOYcPpcfVhgLt4gk8TFoeNTlBunwG/O48c3Zl8xUjWHyHSFIVifzVJ58uQfYaigFdu
         FgeI6CbxX1pga/AmqiWYEgrnMvS3U3XQhi0xEWGJTZnqpT1o10S8S9opJHng2hn20LCm
         VzeliCNWTIqGvNoy+2D1QLn1t0Rp7S6/+5Ah2szRzHOpMJ2gLptFkR664zqBQwk0FRU7
         h41tyNdc585wfiB12AetxuxE2DCrST4F/WZRysrR9cxmxO0IKXcqgx25T9p5Arsh+gl0
         6r9hwkfTQs0dlz2BY/gnm+v8QFKGnDd8ApczfcAN3Kp77BumbDb5dPzjYCCTmi3YtUQT
         zg9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SOu6WvfM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com. [2607:f8b0:4864:20::732])
        by gmr-mx.google.com with ESMTPS id l10si158371ybt.5.2020.07.22.20.55.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2020 20:55:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) client-ip=2607:f8b0:4864:20::732;
Received: by mail-qk1-x732.google.com with SMTP id u64so4154401qka.12
        for <clang-built-linux@googlegroups.com>; Wed, 22 Jul 2020 20:55:51 -0700 (PDT)
X-Received: by 2002:a37:5f04:: with SMTP id t4mr3228400qkb.255.1595476550715;
        Wed, 22 Jul 2020 20:55:50 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id q29sm1597436qtc.10.2020.07.22.20.55.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2020 20:55:50 -0700 (PDT)
Date: Wed, 22 Jul 2020 20:55:48 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lee Jones <lee.jones@linaro.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: Adding branches for testing
Message-ID: <20200723035548.GA363815@ubuntu-n2-xlarge-x86>
References: <202007180528.vD5KVnHi%lkp@intel.com>
 <20200722180319.GH3533@dell>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200722180319.GH3533@dell>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SOu6WvfM;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Lee,

On Wed, Jul 22, 2020 at 07:03:19PM +0100, Lee Jones wrote:
> Good evening,
>=20
> Is it possible to obtain build-test results for successful builds?
>=20
> If so, what is the process for adding branches to your system?
>=20
> Thanks in advance.
>=20
> Kind regards,
> Lee
>=20
> --=20
> Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
> Senior Technical Lead - Developer Services
> Linaro.org =E2=94=82 Open source software for Arm SoCs
> Follow Linaro: Facebook | Twitter | Blog
>=20

I filed a pull request against their repository and I get email
notifications whenever I push to a new branch on my repository:

https://github.com/intel/lkp-tests/pull/64

Looks like there are a lot of trees to look over in case you want to
customize it in some way, I am not sure of any documentation over it
though:

https://github.com/intel/lkp-tests/tree/master/repo/linux

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200723035548.GA363815%40ubuntu-n2-xlarge-x86.
