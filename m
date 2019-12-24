Return-Path: <clang-built-linux+bncBDE33KV2ZYFRBH63Q7YAKGQEWM3QENQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A7612A034
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Dec 2019 11:51:12 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id e22sf7880151ote.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Dec 2019 02:51:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577184671; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q1z7ZmucoKFRxQ5Su4WtyXAXsiY4idwuOf+wksBZEr6+o0QNdQVXMpH0T8fR7d5jEP
         qEfFyP/ANiOwkIay3Fiyd85eKYZco4lGFeq75f28+wig6ARkSgD6Q7SkV9EEJnclCEa8
         QnAc+ZuacQ6u9TTsnacE/4Nl6wng5mYOhytlYrlIZHbgdKtcmWid4oD+R3pl+kFGoe7R
         YQNGXyNHub0ReabNadd8dBUKewQxFe2nHVOex6Zq/Ar+0uaPhBbTKRnWnv6GlWK+RRAl
         QCSYgO/uJ/aBJqXMY/LYegMpadVCJo+iEK18X1vFyR2Eamx98vuLZTf8tRudFaPYNrGa
         eIPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4/vLjPQ/E16dpVPABaETMK0C2GFRdwXVyUTK4HmbMg0=;
        b=Obcstt2b6oaLDNBtHLrLkkZgqL19nWWKq2jFNNQLTVgE5CupFBTqHDCcS3IXxPVcNi
         OvDSVJC3YRCA6fb4RtsZu+ZDKaF9L1IngBYEcZykrNijV1aRU/fou4aPjZBH8+qMuKQe
         Fyv7cyf8qzr//pu6ZsFPA4ZQmEHlh2e5mn6fHq6afOrQJu0XbXTq3uNFl+dp8JwJNh+O
         kAuQi6x6BZ204opLdq1juWDTRNkjwQevbuNzf7lQy6zZhBGJbXZkGx0FoPKtPb4gTAV1
         EOV/ZENpQFjIwcHsajL4BBdoyEKzdhloX5WGv1rYD8+3zoYV/QfNgJdb8vaooe5BdEmL
         59lA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=google header.b=OXORYFS6;
       spf=pass (google.com: domain of sreekanth.reddy@broadcom.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=sreekanth.reddy@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4/vLjPQ/E16dpVPABaETMK0C2GFRdwXVyUTK4HmbMg0=;
        b=h5MYBJtH0JnkcfhgCu2QRvH09Y8wgHerM4WKQulFSWmFyacR5XmtlMVTNDclHKFhd8
         twE1TIRPnDB5iuHrPBPbECZ3GeCNI2u3uiBgl3zvSSKX4jEy9uqB5Obn71UlwcamTrbK
         4KhQjBLdUVYnP8dXUi5WilXnpOMpsTZUYfY5CJT3glFy+Cj47xbqWpvWWWr2OBFxPJL1
         hyXtQMro5e5A4V1ukX9jXFTWcsgwOsZgCrVDbdb7YeFdxbWYBwX/A/3DjzXGrZp9Qm75
         DFjKaeP1gbezUhrvenaxjvToc+QvnXdXj2zba+/pRE7hM5Gssl2MXpRsVraleHcHuehR
         HeSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4/vLjPQ/E16dpVPABaETMK0C2GFRdwXVyUTK4HmbMg0=;
        b=gOhBVbWPtseUnSU3Ulqx4nvLlfCzCiBv6dvegD6c9Iicj00tjRR/sPTvjZo0sb9u2R
         KLTeb2XEFdGm2VYqQxtmO9Co7zjyE4KR477H1baUxyD4AN8LXuffo2alIz7pjjA8JiwC
         uoAxMBBqYj5sXcHxicuaGNGrMcrzzSeakFjR5qJOasVlFeakeMEmKEXStBUytmfLSNd5
         W/FmtGDflcXAcQR70a3N58f/OM+8zK11LIXIrCABfAVFmbyzh8oMRtmqT8dnYC6Av8AB
         fVZFpjVYn96VGMozCjKHONFiWV7VmM+6fXLGNUlaP4wtd2eTOkoQTwN6jbCBOH1Dhdez
         uZ/g==
X-Gm-Message-State: APjAAAXw0Jll2C978/wigmnGsx8AcM6WkQMaKs0qkk4IleiUPb4lqt2v
	xBLD//J0mHp2OEw6wG/v38s=
X-Google-Smtp-Source: APXvYqw6cH64iEGSdGqwD5ZDPV8dKZ2L3EDYwCQb2vU6y8xvdWX42Z3cDw+SRQwnIOIxl9voaW0FOg==
X-Received: by 2002:a05:6830:2110:: with SMTP id i16mr36878861otc.337.1577184671219;
        Tue, 24 Dec 2019 02:51:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7059:: with SMTP id x25ls5862562otj.16.gmail; Tue, 24
 Dec 2019 02:51:10 -0800 (PST)
X-Received: by 2002:a9d:2073:: with SMTP id n106mr28554137ota.145.1577184670907;
        Tue, 24 Dec 2019 02:51:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577184670; cv=none;
        d=google.com; s=arc-20160816;
        b=IBlBK5ZjBGJPH4orYMCw6SqOcWB9guemuBvQXAiAdEkaTOqtSJCd4nVvGrO68NPDw5
         aOUZuxEVyF5Wmm8KOmRO93a9lV9LACPdu6pKHvjz5OlINHvYMXS2rXJJaQnKC+BeM7N+
         iAP7W3/tCZeQUz6sYKbyHJeK/DYrNljl2lmb0bDP6iWE8Bj1pWWkyw2OFOSFgW7mA0KA
         K1xyCXdqhzBgrsMy0/2TSxDzbUf9HYEt1FXKXBVjA5/UOfQs9c33WWSfIAXp3v4gJ5Zv
         Sw/Mexn1dU6G5L9/CklC5XxTBEUZ04AoXsPCL6cluZESd/dAQlXlog6iqF31usM869rG
         1fUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=J88KQkLJwp6npGyj7JR/Bh7HFbLug48Gcj2j4OlHtOA=;
        b=FC4MHbQhtYzPQM43CruhT4+7/4N2sF1AQENhOE1Nx3C6kosAxIsEYu3E35TYnaRRVt
         yfumGAW8AEi+n1nfKpV5k7DHacbBmmiCGwAOGqJNumN0C9+LxMxtgzjOoSGdpDFyBIBA
         9pcxlsQs9lYK6hbLZyoTNGhWd0W+6lQhs28GYE4kPwczudD5BvUPsjJtRV3PNFXy+8oi
         0gaCtZIiGHon28dgbpvJpdZ0tQFM9eMLPxk9kYYHGZQV0ytz/zVZO2FSWV59TJTczAVq
         jRf7sPoE5R/EgEaZGXwx0EKvKil6K4q1DvV13hQKUQ7GNrg7gH119+QwxtyE9vsNbBMH
         vgbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=google header.b=OXORYFS6;
       spf=pass (google.com: domain of sreekanth.reddy@broadcom.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=sreekanth.reddy@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id a12si673793otq.5.2019.12.24.02.51.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Dec 2019 02:51:10 -0800 (PST)
Received-SPF: pass (google.com: domain of sreekanth.reddy@broadcom.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id k16so21364321otb.2
        for <clang-built-linux@googlegroups.com>; Tue, 24 Dec 2019 02:51:10 -0800 (PST)
X-Received: by 2002:a05:6830:1385:: with SMTP id d5mr6778761otq.61.1577184670540;
 Tue, 24 Dec 2019 02:51:10 -0800 (PST)
MIME-Version: 1.0
References: <20191220103210.43631-1-suganath-prabu.subramani@broadcom.com>
 <20191220103210.43631-3-suganath-prabu.subramani@broadcom.com> <20191224054340.GA55348@ubuntu-m2-xlarge-x86>
In-Reply-To: <20191224054340.GA55348@ubuntu-m2-xlarge-x86>
From: "'Sreekanth Reddy' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Dec 2019 16:20:58 +0530
Message-ID: <CAK=zhgpc6XzQ8=yeQc5-E0Ue4vnRsZgdyusUJhtMu7rDmv=CMA@mail.gmail.com>
Subject: Re: [PATCH 02/10] mpt3sas: Add support for NVMe shutdown.
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Suganath Prabu S <suganath-prabu.subramani@broadcom.com>, 
	linux-scsi <linux-scsi@vger.kernel.org>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Sathya Prakash <sathya.prakash@broadcom.com>, 
	Kashyap Desai <kashyap.desai@broadcom.com>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sreekanth.reddy@broadcom.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@broadcom.com header.s=google header.b=OXORYFS6;       spf=pass
 (google.com: domain of sreekanth.reddy@broadcom.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=sreekanth.reddy@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
X-Original-From: Sreekanth Reddy <sreekanth.reddy@broadcom.com>
Reply-To: Sreekanth Reddy <sreekanth.reddy@broadcom.com>
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

On Tue, Dec 24, 2019 at 11:13 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Fri, Dec 20, 2019 at 05:32:02AM -0500, Suganath Prabu S wrote:
> <snip>
>
> Hi Suganath,
>
> We received an email from the 0day bot about this patch (see below)
> about this patch. Would you look into addressing it?

Thanks Nathan, we will fix this and will send the patch with fix ASAP.

Regards,
Sreekanth

>
> > diff --git a/drivers/scsi/mpt3sas/mpt3sas_scsih.c b/drivers/scsi/mpt3sas/mpt3sas_scsih.c
> > index a038be8..c451e57 100644
> > --- a/drivers/scsi/mpt3sas/mpt3sas_scsih.c
> > +++ b/drivers/scsi/mpt3sas/mpt3sas_scsih.c
> > @@ -1049,6 +1049,34 @@ mpt3sas_get_pdev_by_handle(struct MPT3SAS_ADAPTER *ioc, u16 handle)
> >       return pcie_device;
> >  }
> >
> > +/**
> > + * _scsih_set_nvme_max_shutdown_latency - Update max_shutdown_latency.
> > + * @ioc: per adapter object
> > + * Context: This function will acquire ioc->pcie_device_lock
> > + *
> > + * Update ioc->max_shutdown_latency to that NVMe drives RTD3 Entry Latency
> > + * which has reported maximum among all available NVMe drives.
> > + * Minimum max_shutdown_latency will be six seconds.
> > + */
> > +static void
> > +_scsih_set_nvme_max_shutdown_latency(struct MPT3SAS_ADAPTER *ioc)
> > +{
> > +     struct _pcie_device *pcie_device;
> > +     unsigned long flags;
> > +     u16 shutdown_latency = IO_UNIT_CONTROL_SHUTDOWN_TIMEOUT;
> > +
> > +     spin_lock_irqsave(&ioc->pcie_device_lock, flags);
> > +     list_for_each_entry(pcie_device, &ioc->pcie_device_list, list) {
> > +             if (pcie_device->shutdown_latency) {
> > +                     if (shutdown_latency < pcie_device->shutdown_latency)
> > +                             shutdown_latency =
> > +                                     pcie_device->shutdown_latency;
> > +             }
> > +     }
> > +     ioc->max_shutdown_latency = shutdown_latency;
> > +     spin_unlock_irqrestore(&ioc->pcie_device_lock, flags);
> > +}
> > +
> >  /**
> >   * _scsih_pcie_device_remove - remove pcie_device from list.
> >   * @ioc: per adapter object
> > @@ -1063,6 +1091,7 @@ _scsih_pcie_device_remove(struct MPT3SAS_ADAPTER *ioc,
> >  {
> >       unsigned long flags;
> >       int was_on_pcie_device_list = 0;
> > +     u8 update_latency;
>
> This should be initialized to 0 like the remove_by_handle function
> below.
>
> Cheers,
> Nathan
>
> On Tue, Dec 24, 2019 at 05:13:52AM +0800, kbuild test robot wrote:
> > CC: kbuild-all@lists.01.org
> > In-Reply-To: <20191220103210.43631-3-suganath-prabu.subramani@broadcom.com>
> > References: <20191220103210.43631-3-suganath-prabu.subramani@broadcom.com>
> > TO: Suganath Prabu S <suganath-prabu.subramani@broadcom.com>
> > CC: linux-scsi@vger.kernel.org, martin.petersen@oracle.com
> > CC: sreekanth.reddy@broadcom.com, sathya.prakash@broadcom.com, kashyap.desai@broadcom.com, Suganath Prabu S <suganath-prabu.subramani@broadcom.com>
> >
> > Hi Suganath,
> >
> > I love your patch! Perhaps something to improve:
> >
> > [auto build test WARNING on scsi/for-next]
> > [also build test WARNING on mkp-scsi/for-next v5.5-rc3 next-20191220]
> > [if your patch is applied to the wrong git tree, please drop us a note to help
> > improve the system. BTW, we also suggest to use '--base' option to specify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> >
> > url:    https://github.com/0day-ci/linux/commits/Suganath-Prabu-S/mpt3sas-Enhancements-of-phase14/20191223-182859
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi.git for-next
> > config: arm64-defconfig (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 891e25b02d760d0de18c7d46947913b3166047e7)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # save the attached .config to linux build tree
> >         make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/scsi/mpt3sas/mpt3sas_scsih.c:1114:6: warning: variable 'update_latency' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
> >            if (pcie_device->shutdown_latency == ioc->max_shutdown_latency)
> >                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers/scsi/mpt3sas/mpt3sas_scsih.c:1128:6: note: uninitialized use occurs here
> >            if (update_latency)
> >                ^~~~~~~~~~~~~~
> >    drivers/scsi/mpt3sas/mpt3sas_scsih.c:1114:2: note: remove the 'if' if its condition is always true
> >            if (pcie_device->shutdown_latency == ioc->max_shutdown_latency)
> >            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers/scsi/mpt3sas/mpt3sas_scsih.c:1094:19: note: initialize the variable 'update_latency' to silence this warning
> >            u8 update_latency;
> >                             ^
> >                              = '\0'
> >    1 warning generated.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK%3Dzhgpc6XzQ8%3DyeQc5-E0Ue4vnRsZgdyusUJhtMu7rDmv%3DCMA%40mail.gmail.com.
