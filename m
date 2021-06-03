Return-Path: <clang-built-linux+bncBDA67XESXUKBBQ4I4KCQMGQENT5D3II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D05399B8B
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 09:26:59 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id f12-20020a056402150cb029038fdcfb6ea2sf2802265edw.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 00:26:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622705219; cv=pass;
        d=google.com; s=arc-20160816;
        b=f7xf5r4/ljIhTtMmwmmD1RwZG1jEJj2IPsnS9Q2XT/lDPNc9WWNFcLoRa0yBf8Xv42
         kiI61Fwsg9Zukq1GaEMie5gXEKpWcF204C8C1AMD8bDY95Fx081aM9QrOq4JrrlwhTTv
         0I6e4wSuksGSQhP/3EscWByPnf/az1HO5c5NgAVQws0aGrlSbUg1Cvg8QLREWiChn2AW
         +pIQVSHI84nDXwryOuWD4PXd/QZ615ZL21hkIH6P0X2YUh8+WuMZs9+EoKW/AznunWwR
         K7/7DLMrX29tIV4E3I3PGWBmfvamNT+txjBxrLzp7VBbuSEGHgAtbzbV7PQL0p7cscgS
         dcBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4nt+Vb+dQChNBsjcGVkoS2ZRo5bBHJ4SuJ5bL6c3jHE=;
        b=INv5A/+WUJBplytolf0vgHzvO3Kd/luig2E37Iucmdmg+bZe8SIFjAFB6W1CO/T13l
         OCiv3iJ2YIzL/shCzwEIp3qaJl7+VcmKuJrQ2tdHMUhc3XDVSj8AImFlPU8XvNiK5G4k
         Oo4WO+XtrOk2Er4QMq/BYvIgw7h0ixjQJylhkHIqu6FaGiZ4Y1F5/w/MFnGQ9Efo69be
         zYpEkMOqCl2jJTRCPoXph13PkXtbMcxbP3aGx+NXrwcg3RoH+0Hh1YQzWzUunYQFm9a6
         XFGi7YlFagXKNFitr3NJhO8Qb9eo2dTesIRZfr/NoFVmiCXzZN+xJ/H1qoO/7KH+6TVj
         axdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=gqAljoVq;
       spf=pass (google.com: domain of jean-philippe@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=jean-philippe@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4nt+Vb+dQChNBsjcGVkoS2ZRo5bBHJ4SuJ5bL6c3jHE=;
        b=GItouIoPElLDvuGfeNQT18oZww/DAdW2xKPP6D7OOfUQhxsA2lM3QBl0rxntl0VWGc
         LdNHkf3AYcTr0sAG7X+jrfhXF2nbyKzQF76mYECopjqaaM5JxrbmnTvA91qR4rnHU4Ha
         NtYSHNDBLIlBbV20CC/XJwL9QRMs1Fl2B/MgpUOBlgAHFVL1z6M1kf87F5bUgUzjm6RA
         yy8oHqu0IKMbYlzMXfNOW18PAwSmyDCzekGclquXXdb3hbyLd5ybHccljmJgsDhbFb1y
         4RnlFWuc3BEpuAHJhC+pdlGZG45NEgD0J6vl///UliH59bCzjhSNLLCwTK5j2htbToJw
         fvqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4nt+Vb+dQChNBsjcGVkoS2ZRo5bBHJ4SuJ5bL6c3jHE=;
        b=YfzIGXbCRNDZ/81W+k0xQ3/gJb0j5DuyakAN9opuZUn/cbl6PbhkjeP/HuNsaMsXcY
         d8Mff/eUf720G9rWk7fk6N8C1iGnmsXo/DtoPTstSdhUwSkUJ0Eb0XKPpvv3G5xzH9c9
         137BVLWhdnCqUy2uuD2rHUrBAyRIpQGpF9byELJQaAgisDrWtYtdu7f2+YtgmXy2bIcP
         Qrebsc62SRoQbnt8mf4cOkz4Q7q/1rhZFLqnoXjkzmnzxdMUonOA/XHuS9VTr1LQ4E4B
         qLpbKgALEhJrUt488PMFYkNRZbMmb9T0vFp3KAtnP5dmkMUernjhRDyKXM73U59nGqL4
         JwAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ypEQtHIHwO43FHXcYJVWs7Y3fxRU1bta941TUYDkoDIHvYWiH
	AZbS9nQ2HaWbDquyXme50U0=
X-Google-Smtp-Source: ABdhPJwA57imJl9hrLBQzlL6qe4gA3/KjsMHAksDOz8UYRGcqHIurXzmd8xANizqwFfOl7PPjWTe1Q==
X-Received: by 2002:a05:6402:1d85:: with SMTP id dk5mr24805219edb.289.1622705219422;
        Thu, 03 Jun 2021 00:26:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1510:: with SMTP id f16ls1731759edw.1.gmail; Thu,
 03 Jun 2021 00:26:58 -0700 (PDT)
X-Received: by 2002:a50:d54c:: with SMTP id f12mr42050008edj.301.1622705218522;
        Thu, 03 Jun 2021 00:26:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622705218; cv=none;
        d=google.com; s=arc-20160816;
        b=EktDcgORL7zqViSCurOmawv2f1ZYaP7T6uEvo1mM7X5eUrtcE6sekYPdahCNh9QqVx
         W1/H3db/9yZ9Hqr8OMwtt5K/JCZnqTMxzSzF+KxfKRYtwvE1STc+9kF42QyG0LYHytqp
         X8Qxru8RZ/SlnXnj6B0LBveuiyITMS+LsL4On2vaXzkxsn24cbFe57cRpS0rJ/YCRNyv
         QgSzccuZyPzOaxyy+iyBAGGdKML8NDlhybWgXjDv7246q+v4fw6SQrLTC7p6qAt2Ktjn
         2XCDpWJrMO8EbAwH/OhgKMUTs/3zn1tk07TG4oNXFSeOkzsVmT0na9HU2/HIb25/dJuk
         jpYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LjHtr3gTuVS3B9K5gbkiLkfbQy+nc18Icq13dk6Hd1w=;
        b=MZuGXvpBEtH/Vy6fw437Mgn8Yej4hzI0ugKgsA3A2oLpiV5pTvRO3AhZJeGSop2ogE
         k1FJ3ES1Dt6iivLj+7QqstwqCesDtnsCvuSI4+iHkqkD3dmPXmKzEHQX5yr9E1QOOTep
         Qe+acM/Kj5a/MOl/RBMpidHVhy4PVDzxg/aMidNQxw2tiKPCakvI7Tcl7vdl6LAZu8zu
         5VrIqcJc9m3vxHkMO0Dzk6yPn9D9WEldN3/fXPlVr2ngAvWVllZpxR4e7LDdo6rlI+Wo
         cz3Htg7wzL+ReP9uV1kGg5CUBvd3Qm+pKTkFbg75a+ff/qk5pvs5OYlQfS0Fy9i3nNt5
         J+nQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=gqAljoVq;
       spf=pass (google.com: domain of jean-philippe@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=jean-philippe@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com. [2a00:1450:4864:20::435])
        by gmr-mx.google.com with ESMTPS id v19si129513edw.2.2021.06.03.00.26.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 00:26:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jean-philippe@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) client-ip=2a00:1450:4864:20::435;
Received: by mail-wr1-x435.google.com with SMTP id l2so4757354wrw.6
        for <clang-built-linux@googlegroups.com>; Thu, 03 Jun 2021 00:26:58 -0700 (PDT)
X-Received: by 2002:adf:fd90:: with SMTP id d16mr8109626wrr.35.1622705218314;
        Thu, 03 Jun 2021 00:26:58 -0700 (PDT)
Received: from myrica (adsl-84-226-111-173.adslplus.ch. [84.226.111.173])
        by smtp.gmail.com with ESMTPSA id n2sm2121259wmb.32.2021.06.03.00.26.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jun 2021 00:26:57 -0700 (PDT)
Date: Thu, 3 Jun 2021 09:26:39 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: kernel test robot <lkp@intel.com>
Cc: rjw@rjwysocki.net, lenb@kernel.org, joro@8bytes.org, mst@redhat.com,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	will@kernel.org, catalin.marinas@arm.com, baolu.lu@linux.intel.com,
	dwmw2@infradead.org, linux-acpi@vger.kernel.org,
	iommu@lists.linux-foundation.org
Subject: Re: [PATCH v3 2/6] ACPI: Move IOMMU setup code out of IORT
Message-ID: <YLiELyo+KLuYqA24@myrica>
References: <20210602154444.1077006-3-jean-philippe@linaro.org>
 <202106030417.97asL7dA-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202106030417.97asL7dA-lkp@intel.com>
X-Original-Sender: jean-philippe@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=gqAljoVq;       spf=pass
 (google.com: domain of jean-philippe@linaro.org designates
 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=jean-philippe@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Thu, Jun 03, 2021 at 04:06:18AM +0800, kernel test robot wrote:
> >> drivers/acpi/scan.c:1540:26: error: no member named 'ops' in 'struct iommu_fwspec'
>            return fwspec ? fwspec->ops : NULL;
>                            ~~~~~~  ^
> >> drivers/acpi/scan.c:1564:9: error: implicit declaration of function 'iommu_probe_device' [-Werror,-Wimplicit-function-declaration]
>                    err = iommu_probe_device(dev);
>                          ^

These are only defined when CONFIG_IOMMU_API is set. IORT uses them inside
an #ifdef, I can do the same. Maybe moving these two functions to a new
drivers/acpi/iommu.c would be nicer, though.

Thanks,
Jean

>    2 errors generated.
> 
> 
> vim +1540 drivers/acpi/scan.c
> 
>   1535	
>   1536	static inline const struct iommu_ops *acpi_iommu_fwspec_ops(struct device *dev)
>   1537	{
>   1538		struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
>   1539	
> > 1540		return fwspec ? fwspec->ops : NULL;
>   1541	}
>   1542	
>   1543	static const struct iommu_ops *acpi_iommu_configure_id(struct device *dev,
>   1544							       const u32 *id_in)
>   1545	{
>   1546		int err;
>   1547		const struct iommu_ops *ops;
>   1548	
>   1549		/*
>   1550		 * If we already translated the fwspec there is nothing left to do,
>   1551		 * return the iommu_ops.
>   1552		 */
>   1553		ops = acpi_iommu_fwspec_ops(dev);
>   1554		if (ops)
>   1555			return ops;
>   1556	
>   1557		err = iort_iommu_configure_id(dev, id_in);
>   1558	
>   1559		/*
>   1560		 * If we have reason to believe the IOMMU driver missed the initial
>   1561		 * add_device callback for dev, replay it to get things in order.
>   1562		 */
>   1563		if (!err && dev->bus && !device_iommu_mapped(dev))
> > 1564			err = iommu_probe_device(dev);
>   1565	
>   1566		/* Ignore all other errors apart from EPROBE_DEFER */
>   1567		if (err == -EPROBE_DEFER) {
>   1568			return ERR_PTR(err);
>   1569		} else if (err) {
>   1570			dev_dbg(dev, "Adding to IOMMU failed: %d\n", err);
>   1571			return NULL;
>   1572		}
>   1573		return acpi_iommu_fwspec_ops(dev);
>   1574	}
>   1575	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YLiELyo%2BKLuYqA24%40myrica.
