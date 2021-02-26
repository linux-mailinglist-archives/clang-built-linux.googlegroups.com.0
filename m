Return-Path: <clang-built-linux+bncBDK47RPYQALRBDW24GAQMGQEEN6IIDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 18501325C03
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 04:37:51 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id q13sf2824749ljp.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 19:37:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614310670; cv=pass;
        d=google.com; s=arc-20160816;
        b=ATSVNahjSi2rLZ1B2AnLIVg/lHvMeVZ7taNFhjj3xR1u6cu/57CHkRVJ9sF0OxvOxP
         65y4zQ3p78vcx0jSp2r2O7chDO9uJpavwrlX389FyOPUDwPfcwTkCw3UB2nIahgf6tpN
         2NvkiyWJei0ruXJ9quJy6QHF2TI1b10NLuJnIZmp8qwkBISDrJeQ2PJ3mgx54TLUdCZQ
         x7pmFUXLUbjJQ+5Pt1UDB2T3NWimpiBimzltfEICXSTCKMthU/uqs02GovJprWWthKmM
         Am1pxDBxMxSo1kvecZqkTWHkTOw6Qh+hXDF/Txw0n1SYREfZ9cd4ilmpNMOFLe3bXW+M
         0Tpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=bF40Y1b2Uu+2wtFA2NnJdX1fghL/2f2yN8Q4xr55xhE=;
        b=s1vq0M81fvRzULsRRRzw2nSXN7RIPbPE5FIP8JbuPQj31IYpFgAbLXr5MXEfSRDH1f
         Mtr4U7N15I6O1ms5Wx7jZgUEKm5QccNG+OlKZRVvBvWBmVDljoaO65uJq2lbcWZE2AMq
         Iw8MUwVj106JclifnSV2wr8aHrRlYyITskccqTSaFLCXcxQB/oOss+ujQ/lWc7Dqx/FP
         X0YpiqkgqdLK5uONmsrf6kMJ4TAvUBUGDrIpk9Mhwk/bQK0kDSXfemFJym32Kj3ZzLt+
         hrXnnOM0ClVeCQ3I57RUlBd57jFYDW/8APIIRWqRvsD2op0ROZVQHkaMzyDVvhByS//O
         QI6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UtsDVfem;
       spf=pass (google.com: domain of vic.michel.web@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=vic.michel.web@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bF40Y1b2Uu+2wtFA2NnJdX1fghL/2f2yN8Q4xr55xhE=;
        b=JxpBhR/is0fakpLFJ3BtQ3hu3mqm/bAU9LB4EZ27/TCmj2BXx5V9+6i1Hgxj5zaNoy
         gNkmBDeIjIa3o1+5CipZAmx/9BLlGVzZiZpR0VdErtt4bkNOy1wX9Afrw6m5T9Ykb/CB
         W7IpW+tWHTArVLEW9vSGZI7O1q0FRBXLUobJ0AgWlEfVWaqSnguy8MOW0dtiFDKF3tyF
         j9Y41LlFG4XKtpZ5PxHMa6YKOpUkSwPDGzOBRedddwUtb8L7/I6q6Ukm4GwN5V7OAEbp
         1EvuZaoj5O0wtT4CmLDCW9Wkkv5PsghT29HtQrAkSwYxrAEMd0+XLfUKK3mGat9ZRnvP
         hxLw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bF40Y1b2Uu+2wtFA2NnJdX1fghL/2f2yN8Q4xr55xhE=;
        b=D7tKcc6Rcb4c0ry73OOz2AbfEEBAN4TDB2NuQYjxKZ99h2IgkEbNtq61b/mqytXuBP
         ulKfpFnWjUUQkrAFVtxw6v8IdwTs+jxkpk7bMjkhzSReuR3tbRcS+EecA4wEmALu43X7
         JOOX5z9VWiA+6TPGc/C/N5MXSqVhlhPaPBke0bYVV6EaGjYbqGPxnKgCZXCdM3kGaGHO
         Up4ZHgrgSR9sd+2/XG55QVuX1LbOEAHZdrMDMWyGb4qtRKIZl+EamizeHQzTtwSdzPVa
         BsfBUnwRt+qbjs+sTkGpF9HyxTnS+HQ5bqSQ3ick8BXD+POoVTQdTuxASPpSxzKix3CK
         weqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bF40Y1b2Uu+2wtFA2NnJdX1fghL/2f2yN8Q4xr55xhE=;
        b=LIMjp89eiMHseeVMKN3us/b8+vp6eLyWRGliOte88U8VBZDjJhybG9iPrOPx9t9nwz
         LHopI0McbECB+X9ks6jUxWb6uRo8NlT893cjGF9x6v3CzGdX8xnP0og4WnSiSmg1bPNr
         WSYdHA16MmGUjVPL6WVP7cs5EUv1KDN96TPWbX214PJW55fwnmu815tPOjRoXvz9T7Og
         fPJJw+YrwW8o4lXZq5sGLpHkiHW7fQfL2DR41AYWLn5Z/Ndc9Z9RHJWgoMZ3126gIjgm
         1z7pm59zpmMsgn7TcKEen30Fe9bJLcZMWdD2kM1t8TeUS80q5/qCryMSjZ29H8vg7Ys+
         6rqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531pqCA+4PFppJPHJ3bzILOsbYZCIP6vVmfBi6x+N/KYfH1W8Vhu
	R7suAlh5fXEI2lphDRqMsuI=
X-Google-Smtp-Source: ABdhPJz5OcWTHwh6JRjbADRBQbn3cSfXhxH9xLs+r8UVxmr/UMW1J94Mvj9TeYIJuJnlwUc369GTSg==
X-Received: by 2002:ac2:4257:: with SMTP id m23mr562150lfl.99.1614310670549;
        Thu, 25 Feb 2021 19:37:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:e86:: with SMTP id 128ls1828193lfo.0.gmail; Thu, 25 Feb
 2021 19:37:49 -0800 (PST)
X-Received: by 2002:a19:f11d:: with SMTP id p29mr584972lfh.547.1614310669391;
        Thu, 25 Feb 2021 19:37:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614310669; cv=none;
        d=google.com; s=arc-20160816;
        b=OAgqigxTF9Cr1xDP+aatT0Es4lHgVSVVskfZYjsD5wEtd+X4qKtNoFxPtTIZj1ZM6T
         /tVGSmnid+Qw1+dYEFMDNNT9aWcaBFutDtwwZ5vTQ2jLhIjf0eKrCeeXCEQKgmig98zm
         p+clhUXX6TT40uKJy4E/thoNVMkSpMvCbtK7vlzrRKEyy6ok2pRO//TYQf+j1LJSoLa6
         AP1rOLopBhuIwd2pnQ3WetICsUYK3d86RtKPNtuHjlXDKNTAR+5riqfxe2jqHqY9DlCg
         gCjf+siUQImZXXa24TSrTjVcEk+BYXTet639TFeIqS+fagN/R1geXw9Fzyu82IiHypzd
         jV8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MIinfI4eTiDXqDUjTnrz2+9vdjv3YBhLDRBmFvYl6Tw=;
        b=Hi5NLvaeD501hIaDSKsLOvqgOkCuiP0PGkGUJMwbX3yfCnTyH73g0iYPrly70VyROJ
         h9/tron+TouJ0sSw0athzjrVkSyo2VjfsLvg2U6eDx91JnWk4i4UcYTRZZgkpqg4mElR
         ZQSkrjawX+TxGOxMf7eBYHkudR6ERqJUc/j5rqdIDc8pZbax81pRjF7xJlC8AkBvv2+I
         MiAZHfi8g0Y3nochfOEtC07OwvRelXRvCr0/OZ9btbQDosjPxZrYCRriYHS7C5j2DqCP
         tAdNiXfMklpRqqDuTCJAa6JSrMS/SZlaiLVicMky/6uUI3S6Q0Fe3Tp3ITC5uUG+VVQG
         mU4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UtsDVfem;
       spf=pass (google.com: domain of vic.michel.web@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=vic.michel.web@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id q26si369649ljj.4.2021.02.25.19.37.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 19:37:49 -0800 (PST)
Received-SPF: pass (google.com: domain of vic.michel.web@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id z11so11800977lfb.9
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 19:37:49 -0800 (PST)
X-Received: by 2002:a19:dcd:: with SMTP id 196mr563856lfn.590.1614310669172;
 Thu, 25 Feb 2021 19:37:49 -0800 (PST)
MIME-Version: 1.0
References: <CAG=0SSaASGLay-c-sT1b+-PBdnUxAMUtHPTevo9-qpOd8=yqaQ@mail.gmail.com>
 <20210226025806.GA19253@MSI.localdomain>
In-Reply-To: <20210226025806.GA19253@MSI.localdomain>
From: Victor MICHEL <vic.michel.web@gmail.com>
Date: Thu, 25 Feb 2021 19:37:38 -0800
Message-ID: <CAG=0SSZNeJOhr3yRP8ntar+xJV7sAQDvp_YhzPGNy9ePH+9Sug@mail.gmail.com>
Subject: Re: x86 ThinLTO: BUG: unable to handle page fault
To: Nathan Chancellor <nathan@kernel.org>
Cc: clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: vic.michel.web@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UtsDVfem;       spf=pass
 (google.com: domain of vic.michel.web@gmail.com designates
 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=vic.michel.web@gmail.com;
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

Thanks! Ah, I really should've looked for more than 5 seconds - yes,
that resolves it

Looks like a patch was already sent to linux-wireless:
https://lore.kernel.org/linux-wireless/20210223140039.1708534-1-weiyongjun1@huawei.com/

Sorry for the noise, and thanks :)

Victor


On Thu, Feb 25, 2021 at 6:58 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Thu, Feb 25, 2021 at 06:11:16PM -0800, Victor MICHEL wrote:
> > Hello,
> >
> > I've been trying the recently-merged LTO patches on x86, but it
> > consistently trips a BUG when I try to load my wifi driver (iwlwifi):
> > BUG: unable to handle page fault for address: 0000000200000000
> > The rest seems to work fine.
> >
> > The kernel was built from Linus' tree at commit 2c87f7a38f93.
> > I cannot reproduce when compiling the same kernel without ThinLTO.
> >
> > I attached the full backtrace & kernel config - happy to provide more
> > info / try things out if needed!
> >
> > Cheers,
> >
> > Victor
> >
>
> Thanks for the report!
>
> Does the below diff resolve it for you? Taking a stab in the dark.
>
> Cheers,
> Nathan
>
> diff --git a/drivers/net/wireless/intel/iwlwifi/mvm/fw.c b/drivers/net/wireless/intel/iwlwifi/mvm/fw.c
> index 15e2773ce7e7..9d0cceee76b8 100644
> --- a/drivers/net/wireless/intel/iwlwifi/mvm/fw.c
> +++ b/drivers/net/wireless/intel/iwlwifi/mvm/fw.c
> @@ -1083,6 +1083,7 @@ static const struct dmi_system_id dmi_ppag_approved_list[] = {
>                         DMI_MATCH(DMI_SYS_VENDOR, "ASUSTek COMPUTER INC."),
>                 },
>         },
> +       { /* Terminating entry */ }
>  };
>
>  static int iwl_mvm_ppag_init(struct iwl_mvm *mvm)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAG%3D0SSZNeJOhr3yRP8ntar%2BxJV7sAQDvp_YhzPGNy9ePH%2B9Sug%40mail.gmail.com.
