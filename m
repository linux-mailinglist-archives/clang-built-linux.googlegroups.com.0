Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTUA5OCAMGQEHDNX2PA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6289E37AD28
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 19:35:11 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id w195-20020a627bcc0000b029028e75db9c52sf13251914pfc.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 10:35:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620754510; cv=pass;
        d=google.com; s=arc-20160816;
        b=UcwlNVNHK2OUYQfstLZD22hBsoeUvD3HfubjMIgRKIPTtcgcIQGZLbKvXRgH2ZR3em
         9XjpUL/UkyGIsAjyucBWRDQoNLdiz5XHv3PklKIhLeptiCigLjlScFX15WELL/THbDDf
         u6rZHTKMsVTpZi3nG8V4NtCdAyAlIFMcMvd/CAvV0+Gzg1mfwW+5MXvlfruA/Qboi5TP
         q80z/Vu0CkLm2mwRIhGCQ+bt7Hw8BTjOWj4MkoEqBla4yIfnL2N6U13CZVKw4mlqVgbs
         ndAQmHrhqQjfQlwQ74cqMonc0XpTR+hnd306pdqGhZgjMH92JER0CbCg85MY3/IWB6xn
         TjJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=MRiJvSRHWD6o47ypeGp5GNiM2KR6/Rsm3qEKLvaFKSE=;
        b=Nk16JCKYWjFHi00upiqUw8TDvZIdx6fqyysY1/2uE4waQs108siqzlxdJ8iC3B/2aZ
         lpvrasidQagyVlfPKwuEw4N0+5IHw4YWUQsBaRErzOD4fJEmmAzotxRHPwwF1Ampoph5
         Itpd9WTlehdmSFOmMaZ7/jQOICKOSHJV3owJBxhJ/akvGBksGRwXFCOFV8oJSKBoUHDm
         Z0Y7UKlCuyHMQPwIm93tcgo0jq688xhQSi7ccl5oHXRBgkE7VJEx+n4D5ShGiz9ejczX
         fOJQG6n8n1wD93IwxCmV3ngGfHJRXrx8n4ULd70QMNtvTxME/DElbDqsUDAJiX3SNZci
         pkFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UmtMPRNK;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MRiJvSRHWD6o47ypeGp5GNiM2KR6/Rsm3qEKLvaFKSE=;
        b=CRVGPuOO9Vivt2WYLEQqfRvJkvZlpK48gh1EfczgSlpG6OOFuBh9GOVb6zyhYx4BCV
         e+RgTiS5Sw4SyF4pPgzkfvGANq6+bBVj9sg8wcem4d2+GHz56A65fxpB2J0elidIYT0v
         I1DfxlybFKVe2NdY9NiO18OInFnZp17YST/XKRZXNAYkdJ0ER6G9R9vQLNitEyLJ4yv3
         bCytXqudiBqdG2Kq2v04U5fvQj2tCiVMurhiP7Oz779AJjO4SeXkO7AIWZZ8i2+G0ZLv
         9xEWgPJqnVN2aRr7E69fp51cXHGixC11gTBBpLib7FxkUN6J5OhwiNoYaQWaf9W/qH8Q
         neQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MRiJvSRHWD6o47ypeGp5GNiM2KR6/Rsm3qEKLvaFKSE=;
        b=TtY8dojI1up64O5N4AZU22aB/BN4R4w1tjLEGr8PquGcQD2k1oRAKXCCJXWl/XxkBS
         fzC/9ENHZjuJ+8VDVo7hDmBgcCrkrxgU36af8cWnB/N0+jfOCb5k3ObB3/PCbZXlLb69
         NADLe8Cn564/hGFcAHMllZhHY6Z7Df9M1+SH86ZvoZCMLgaqBaYUavn2r813NodnP3fB
         uCCNcOntvOULC19CkNl+lEogVgEnPWheuicNG6PT3z8ihUzFARaD2MjWbhow7IDbiwZy
         N8GnYt9Y3CMKWEij8jc6lnnlkkSncZEgkJc6dRDxwqsAiyY0Dc6umz0yBpjH+cxl75d0
         VzlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qyVPmCl7SNj5VPy/zrdhd1Pt8GnWHMCdVLmpo4BorlC7gY7AZ
	PD1LwBMLe+Du5dg7CevE9kM=
X-Google-Smtp-Source: ABdhPJyPkxgh/RrLh3GAx/q/w8TDVoFmtmupiNHEfYHZvkYq3CUfkWTPWyXSpeu4VIBZe5Nu+U2LGg==
X-Received: by 2002:a63:205b:: with SMTP id r27mr32540758pgm.95.1620754510149;
        Tue, 11 May 2021 10:35:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:79d4:: with SMTP id u203ls153328pfc.8.gmail; Tue, 11 May
 2021 10:35:09 -0700 (PDT)
X-Received: by 2002:a63:2dc4:: with SMTP id t187mr10017127pgt.80.1620754509664;
        Tue, 11 May 2021 10:35:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620754509; cv=none;
        d=google.com; s=arc-20160816;
        b=zfATe8v/b/beBboUcrgF4lZCjQjgZ8jrmp4fcM7ktxFqI4QC3QIW6HWFF73HkWlF0N
         Sxr4gG61uz9g3nuEpFcCnpJaphkI6XBRone1Ks/oHEJJSsd972HWB1zcbs3vM4SimSMi
         6KxkZqKPZM94e+RwlWJq1A8KzPDgyT4PfgKK2q0Kh5f9jj1PewXuWM+1gTQUyD/zfamz
         C7y7w5oOdqWPd4n0neoiye9zuSFr8zkfd6zsiVWwdcyo9NVCepNXiMEdTTE7o7hl6OrS
         2lD43pQmS4XWnwLC40JqiYpcmrj0sYz0/G9HSMmM7DoCKij5soKpezv04O+ydxi/yem8
         rykQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=qseVjY8fvzpL/iZ+3ko2FL50WZA49YKSrAd6PKS2JSs=;
        b=D9DEMtl3Eq7zPh8BQrpFE7QhNJ2ZFBc+v/bDlZe4lewMFr4yofsmZUV72/ULje+oGQ
         T6UYcKSTJVayrLfHdniHGC5TXPCo3g98vNehaXQg1+4334G+CYGPDy6aqRABdFn7apY1
         DRernJuZvI8UY7aFgjTx+CJcnCCx+e9eovQ2X/pt9zqAIeBYa2zaN0AAbeeevafjSi1D
         ZFMd43hZwkm/eVFmSH7etwSKyrVkU2onXWdGhiVKGcZwFigdTUTIHdKkmo+HBi6Zz0En
         9mNCGOM9Nw6JvdECU/V0B3YywS+lUh5BPQ4/Oa0QN+78VM/7MoxGJeJ2jEB9BGTkqW7O
         P1Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UmtMPRNK;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q59si293794pjh.0.2021.05.11.10.35.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 10:35:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 20864611CA;
	Tue, 11 May 2021 17:35:06 +0000 (UTC)
Date: Tue, 11 May 2021 10:35:03 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
	kernel test robot <lkp@intel.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v1 2/2] memory: tegra: Enable compile testing for all
 drivers
Message-ID: <YJrARxhVD7QM/GPv@archlinux-ax161>
References: <20210510213729.7095-3-digetx@gmail.com>
 <202105112125.VctfC6sX-lkp@intel.com>
 <dd0b550e-76a0-bfbc-9d6f-5d867812046d@gmail.com>
 <06addbf3-0090-b76f-65cf-e0c10d284c69@canonical.com>
 <3ab5d50b-4955-7144-5d1d-d44cb0892d65@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <3ab5d50b-4955-7144-5d1d-d44cb0892d65@gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=UmtMPRNK;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

On Tue, May 11, 2021 at 07:00:34PM +0300, Dmitry Osipenko wrote:
> 11.05.2021 18:31, Krzysztof Kozlowski =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> ...
>                                       ~~~~~~~~~~~~~~~~~~~~~^
> >>>>> drivers/memory/tegra/tegra124-emc.c:802:26: warning: implicit conve=
rsion from 'unsigned long' to 'u32' (aka 'unsigned int') changes value from=
 18446744071562067985 to 2147483665 [-Wconstant-conversion]
> >>>                    emc_ccfifo_writel(emc, EMC_ZQ_CAL_LONG_CMD_DEV0, E=
MC_ZQ_CAL);
> >>>                    ~~~~~~~~~~~~~~~~~      ^~~~~~~~~~~~~~~~~~~~~~~~
> >>>    drivers/memory/tegra/tegra124-emc.c:154:36: note: expanded from ma=
cro 'EMC_ZQ_CAL_LONG_CMD_DEV0'
> >>>            (DRAM_DEV_SEL_0 | EMC_ZQ_CAL_LONG | EMC_ZQ_CAL_CMD)
> >>>             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~
> >>>    13 warnings generated.
> >>
> >> This doesn't look like a useful warning from clang, it should see that
> >> the constant value itself isn't truncated, hence it should be a proble=
m
> >> of clang. Do you think it's okay to ignore this nonsense?
> >=20
> > I admit I also do not see the real issue here. The DRAM_DEV_SEL_0 fits
> > in u32 and there is no other bitwise arithmetic than just OR, so why
> > clang assumes it can have 32 most signifcant bits toggled on?
> >=20
> > +Cc Nathan and Nick,
> > Maybe you could shed some light here on this warning?
> >=20
> > Dmitry,
> > In general you should not ignore it because:
> > 1. This breaks allyesconfig with clang on powerpc (or it is one of the
> > stoppers),
> > 2. We might want in some future to build it with clang.
>=20
> I meant to ignore it from the perspective of the memory drivers, i.e. it
> likely should be fixed in clang and not worked around in the code. Thank
> you for pinging the right people.

I do not think this is a bug in clang, gcc warns the same (just not here
in this case): https://godbolt.org/z/e9GWobMnd

DRAM_DEV_SEL_0 and DRAM_DEV_SEL_1 are implicitly signed integers because
there is no suffix on the literal 1. DRAM_DEV_SEL_0 is 2 << 30, which
can be turned into 1 << 31. That is equal to INT_MAX + 1, which then
overflows and becomes INT_MIN (undefined behavior). INT_MIN is then
promoted to unsigned long because EMC_ZQ_CAL_LONG and EMC_ZQ_CAL_CMD are
unsigned long due to the BIT macro, resulting in the gigantic number
that clang reports above.

I assume that this driver only runs on hardware where unsigned int is
the same size as unsigned long, meaning this problem is merely
theoretical?

Regardless, defining DRAM_DEV_SEL_{0,1} with the BIT macro fixes the
warning for me and should make everything work as expected.

diff --git a/drivers/memory/tegra/tegra124-emc.c b/drivers/memory/tegra/teg=
ra124-emc.c
index 5699d909abc2..a21ca8e0841a 100644
--- a/drivers/memory/tegra/tegra124-emc.c
+++ b/drivers/memory/tegra/tegra124-emc.c
@@ -272,8 +272,8 @@
 #define EMC_PUTERM_ADJ				0x574
=20
 #define DRAM_DEV_SEL_ALL			0
-#define DRAM_DEV_SEL_0				(2 << 30)
-#define DRAM_DEV_SEL_1				(1 << 30)
+#define DRAM_DEV_SEL_0				BIT(31)
+#define DRAM_DEV_SEL_1				BIT(30)
=20
 #define EMC_CFG_POWER_FEATURES_MASK		\
 	(EMC_CFG_DYN_SREF | EMC_CFG_DRAM_ACPD | EMC_CFG_DRAM_CLKSTOP_SR | \

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YJrARxhVD7QM/GPv%40archlinux-ax161.
