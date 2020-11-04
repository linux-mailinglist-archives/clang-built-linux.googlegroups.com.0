Return-Path: <clang-built-linux+bncBDA7X7F2WUEBBQ5XRH6QKGQENVBJA2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id F20FD2A5EE2
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 08:44:03 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id c21sf3315680lfd.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 23:44:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604475843; cv=pass;
        d=google.com; s=arc-20160816;
        b=p3IUN8dRPs3XIDKcmJ8QXGiQQ2cU2DisPS5KNd50UCzpvuLHE8jLBLhOrsp/1TNwLg
         k4as30yM86ULKajLtA9u0bl6ejN10YxLR5liV1izK4ktKQNOACO3eVdAatYEtvuQn4Mn
         Rmyz5RwXBq/wqwrub3/tbY/cqO94V5lBp/d70coy/VzBkXOY+NtEdplcIwip7ULUCYH8
         nZY7XivP9SynW3fGeCvX0oYQ1ueRuNH5QBcYvYwvAQbPTlRSjfFbqNfllJJyjBdy8BbA
         i5Scm89+ynJ1+Jpi8oFHsdwxjg3oiSe0ohzZaggihmmzx96pwCZM/fB6+F5H14etO4Mw
         YTkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=faCAX7cJqpmKE2kNAEWfTPFrz4kji3NTHcbGL1xvBIM=;
        b=eSu+eE9GKusGkwExzOg29QD21r6E1AmY7+0lrMCHtf4JCGV5ZYnq6ICvLnJWfZ9yBs
         vzCBAxVgDN1o/CnKsuJ6LModZpzJiRwJx6d0hc+tsxwxODG5GaIvUQJCgRWKbiaXaUCc
         KAdoy5oLNDID6u5BFeO5OQwWHV85Tneg1j/m2YcJGNpdb6PqpboJyqmFwaJg0OBb+d28
         ah2f54aZPjx5uEmLziZuzizJ3yIW52HH9f7jJDMdzULLFjwiZ+4P8aB0joRvhExXYClM
         QC9j7wdHjFZLjADUkEjIrooJfh6qIx/++W31g80zPVmlTnC4TNWAG4Q7/JDi3VIJZDFr
         wHCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=rJ8Y+JA8;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=faCAX7cJqpmKE2kNAEWfTPFrz4kji3NTHcbGL1xvBIM=;
        b=MCS5bkFIav0B6iHCpmnniDToRUvUksD8/xHxBsQhq7+as20xiJi/5jJ0RoFxicW6g2
         dNHuYNEhNFQGMPBo9UxFlti93XQzJb4QKoZRfUryS9LLZ5MGcV0GtDApZvrmLkZ0jOft
         GPvpa2xOmHmpdLlAh7zhVOuCHXTqSTJcB+OWXsyios/xIXSfytWBErRh6fgNadcggHvn
         H5NV4vipPazHBV0slIJBFER1Pjy7B7KzjYjbhj1Foxfd9ERyekVoLCDSnCzg7aimfxVl
         KUQD9nFH3thjSnhkA+x5blGRlS3JA7WnLzin1IzkLlxQJkpwPEaek8IWMbfFaRYr2YWw
         zRXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=faCAX7cJqpmKE2kNAEWfTPFrz4kji3NTHcbGL1xvBIM=;
        b=Ij4aXkSup2lutPR/LbwiWP/cldDWCarvqHe63uC7cvms0QMBXYK1A8i8nxDJz69ME9
         I0L741l6MQS7CMEJ3OxIeltImk0bIp8t+AUJKVbIgq54cIXIvifGS7smepFmolHaHeJu
         hXDOfM7JlKy3dyPtllC7xvRM6ITrtiNA3zM70ghe8B8dHLEiQaHA5AJJ4GaQog2UVE+y
         Qn/LCh50VZTDBqHMZZkwTomVOMAfEnjKUXQ4AFLAAV6G3FU+fgQ8+8dtWAY6XNLcjGsk
         kK72WaaNkYBSyR897TVjv2xKtDLtTXwWWayl3UOFRcr1nJxiq6yM7ITQboa0uca9BQs/
         18iQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lVJ2rc7yE8zER+MY0gfoZtHbAk/BuPRH+02LB9D4RtWcJAE6/
	FCRuT9Cyway3kwKllxW44DU=
X-Google-Smtp-Source: ABdhPJx4OIlCjn4wp0BlvYsSOLChs2rAf15o/gayxPqGd08eY7Xi/Z+LRW5D0DrJPQPSZsUXQ3EyZg==
X-Received: by 2002:a2e:90d4:: with SMTP id o20mr9661905ljg.168.1604475843349;
        Tue, 03 Nov 2020 23:44:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:888a:: with SMTP id k10ls227464lji.10.gmail; Tue, 03 Nov
 2020 23:44:02 -0800 (PST)
X-Received: by 2002:a2e:808f:: with SMTP id i15mr10284142ljg.10.1604475842334;
        Tue, 03 Nov 2020 23:44:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604475842; cv=none;
        d=google.com; s=arc-20160816;
        b=RA15aa5Lv//mHQZDWaLQRTGC0IdtwjTgqnP3ZUzq38xKhvv0Wk7JFVzBdhLCJYaMwU
         P/DrCWEHWI7BAJo1ZRmd5BzVThUYAm6wB1fgGIWKOaSRuC9rInVHSSava4SLOCEMKX4I
         gyCNgZE4V4sxt2AV/c9LegXkbjbYoIKxgFK61UJg+1jdzjYP+/9QNH4pVaqMtR2vLTKI
         TschL8c889S45uzxxGxxvyI/o0N9HK8i2OYLnKnVKdoEVcgV09SDkDTuyyV7yOyLSJ3Z
         uG6lKVSrhhAWpP546LjuNJpgvXO+mh5eb7c1yxFlPyZ9od+y6wPcxBX/hg5CyV+a+46m
         4SPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=+pslqzaYff85uAHHDaCf1ExrrgksPVybGyHLPDHG7DU=;
        b=m/bB28HWhaxFddZQp5VzLXnBgt842Y8GPlLqYkYR1cw0vUTUv6V1/2BFWeWUr8yOqh
         QnCPGOzBSoECRXl6LUnNwKXP2XdPCEyYtS/ihImXUbqpqA8t7+YPSfbkQ9NBgAOfJc1Y
         ztnBQQUaSni8LA5xzxloBt/F9Uw4xNMs8ZawESYka1DvE87W9mxcdZ5L95coM2MPkYo5
         z4A0dFCXfkwb7xAmAgGgyNOAH2+BP/EsO80txBEOzs5lrI2+h5bmjhdqON7sB71TNMzg
         7q2HL3hWth1GpfVYuGyOYrqHRPF4Q4I8yPYSYaR8l/j3qj/PBuKI83CxOI5Ue4/VUv8i
         YIDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=rJ8Y+JA8;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id r7si33466ljc.7.2020.11.03.23.44.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 23:44:02 -0800 (PST)
Received-SPF: pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id n15so20991671wrq.2
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 23:44:02 -0800 (PST)
X-Received: by 2002:adf:dd8d:: with SMTP id x13mr31156838wrl.398.1604475841737;
        Tue, 03 Nov 2020 23:44:01 -0800 (PST)
Received: from dell ([91.110.221.242])
        by smtp.gmail.com with ESMTPSA id n9sm1218783wmd.4.2020.11.03.23.44.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2020 23:44:01 -0800 (PST)
Date: Wed, 4 Nov 2020 07:43:59 +0000
From: Lee Jones <lee.jones@linaro.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RESEND 19/19] scsi: hpsa: Strip out a bunch of set but unused
 variables
Message-ID: <20201104074359.GR4488@dell>
References: <20201102142359.561122-20-lee.jones@linaro.org>
 <202011040526.DkrzVIF8-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <202011040526.DkrzVIF8-lkp@intel.com>
X-Original-Sender: lee.jones@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=rJ8Y+JA8;       spf=pass
 (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, 04 Nov 2020, kernel test robot wrote:

> Hi Lee,
>=20
> I love your patch! Perhaps something to improve:
>=20
> [auto build test WARNING on mkp-scsi/for-next]
> [also build test WARNING on scsi/for-next linus/master v5.10-rc2 next-202=
01103]
> [cannot apply to linux/master]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>=20
> url:    https://github.com/0day-ci/linux/commits/Lee-Jones/Rid-W-1-warnin=
gs-in-SCSI/20201102-222943
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git for-=
next
> config: s390-randconfig-r015-20201103 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1fcd=
5d5655e29f85e12b402e32974f207cfedf32)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install s390 cross compiling tool for clang build
>         # apt-get install binutils-s390x-linux-gnu
>         # https://github.com/0day-ci/linux/commit/072f10ed00f6c539280c114=
3a76e724bd7618c22
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Lee-Jones/Rid-W-1-warnings-in-SC=
SI/20201102-222943
>         git checkout 072f10ed00f6c539280c1143a76e724bd7618c22
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Ds390=20

[...]

>   8706		/* configure PCI DMA stuff */
>   8707		rc =3D dma_set_mask(&pdev->dev, DMA_BIT_MASK(64));
>   8708		if (rc !=3D 0)

Ah, missing brace.

I wonder why my own compiler didn't complain.

Will fix.

>   8709			rc =3D dma_set_mask(&pdev->dev, DMA_BIT_MASK(32));
> > 8710			if (rc !=3D 0) {
>   8711				dev_err(&pdev->dev, "no suitable DMA available\n");
>   8712				goto clean3;	/* shost, pci, lu, aer/h */
>   8713			}
>   8714		}
>   8715=09
>   8716		/* make sure the board interrupts are off */
>   8717		h->access.set_intr_mask(h, HPSA_INTR_OFF);
>   8718=09
> > 8719		rc =3D hpsa_request_irqs(h, do_hpsa_intr_msi, do_hpsa_intr_intx);
>   8720		if (rc)
>   8721			goto clean3;	/* shost, pci, lu, aer/h */

--=20
Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
Senior Technical Lead - Developer Services
Linaro.org =E2=94=82 Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201104074359.GR4488%40dell.
