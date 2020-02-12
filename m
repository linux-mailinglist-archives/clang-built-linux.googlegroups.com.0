Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBM7IRXZAKGQEMW3C2YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id CC057159F98
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 04:42:44 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id q13sf471247otm.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 19:42:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581478963; cv=pass;
        d=google.com; s=arc-20160816;
        b=nOImm7F+YgK/C+Zn2uJiFpo7XYsbJ083K5yHhuDITKVMyomYXxa10/y+YuEx9XKL8n
         lXpPRE2PTgisPGQ1KqwCCYrSDbIJVm+5CRQAcZs8OZV+/98RLstkC3CuWOK2FCfvqfM8
         SpK5R+wU/f2MIHrOu0f5as7Ye5ZYCKMvyyzzMY+FfsahhWhhn4QdbQ+SOmBkd5CNcIYu
         /q+YfYBbigXf8HHhATW0zQqCVDIMNX/blDaj0RNmffqtnUgDJkY02ThbW7pcp9+24pOO
         pAV2XHTOk916AVP3+z5PcDq9NFa9iVBI6O7ihcsw/NOpOSoG6XSVe+xQ5EyV4ahaoFwH
         wWCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=Canc3qHr8m5pz3IhEVUbHe+7ZsgNUmowrzAlekAdx6o=;
        b=gOml88+ucZ7pwMUCg9WxIu30muWufwrvxfSoapyj1v9Jsey3Y9WWDS22kKLpAANCXb
         kqJxh/q34stuAaptDvYlOIpjryAWhndQ54e5g0WV3b8GX9bUfKyZ7W9kxbSUPNAjFB2T
         GeNEVzughumudBKXKMyJGvETPh16EHV70OLNLURtNHVtgQ4EvMMrAMixsqRd1UnkK6wD
         GcZjx5Vdka6pFiWOIbAPrBtytKN6Wz+ntLcAQYBkN5UbBjTUNHIl2bSFrpkBbjvYveNm
         ZZ6tSbG2dRkEVR/TVsA1hFO9gFJ8bLctrBViXTbfIu3m/mUvyn+CASNz/eTElCYHtoOm
         eDLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gJKKvum6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Canc3qHr8m5pz3IhEVUbHe+7ZsgNUmowrzAlekAdx6o=;
        b=jDDC70R06Ims3bgeHNmjnA8TyML72sB1BYsv8FRrCfP1uZNogGWbF9Fg5tm7VkCo8o
         njG4Mq3w+kpxj56wtvPgwqiBNcTx2qzdDNBF2MjEQJvcEo0wr7EQw6tvAeFf2utuGICa
         MBG0Xzb37lQVnUAHoD4qjfP8qz5UtgHwOd7jCDlRyHpstAlYMMnApj4CI6W8Gp/KegAJ
         PON7MGIzyYzB4hMibcqstlZKciCq3PXwNpfvQ6DTFqIDltkmjpegizR4ReznAGTt0bve
         R42WzXunV18JF72ISK4JHzc2lCUkOrqQ6BGHavAEuy5ezoLIvRc5VyGT4I5FcdruLN5R
         M+0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Canc3qHr8m5pz3IhEVUbHe+7ZsgNUmowrzAlekAdx6o=;
        b=u4AakIjUcuoGQBbYQ+h59BEIugRAx8boeg+NU4gzo+uSf0TqhNkA6dd2rHeTmuT+zQ
         /e6lFHliytU/BaCoQsle1U6N0/0bU7kgtGY86LUstOlN+S+APjLAqdg80t1A9dgFYGyy
         a4oNPL0V/9/1gmaLG6pJseTqK4iWmrLe/uLH47LjKSbImHG+DOJFhgnJ8WJl0F3K9YPl
         XQ70OcMoRZR0thoRM+qVe7SdZVJLnORAJxIntqB0wjJSUFQzWCKs/p5IEDMBnaFNDVNG
         V4Xz8rtS2fMLCFBayGLzpnICl0FO8d/qOeB2tcCwwtN6SOi8eiZIrQpzneT3PJD8Caw/
         WQPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Canc3qHr8m5pz3IhEVUbHe+7ZsgNUmowrzAlekAdx6o=;
        b=LDOh+jKNPBN/7mv0p32KkxbV+yLSTkRoTJAJgvJsGyl8s7VkQHFKXAge7T45EIVal1
         aS1PBLXotBp/XST1ZpCm4fTkSZ+ifIXM4pIwCAIjlHNPcWnplGHYfV0OVX2im/3+8x2M
         z7TRh70REnNn5oC1gnpveJNLnv3fGBRK7Iv00i6/SwfL5tP7d4f/w0ieyXB7aNG7QZB8
         LgX1gbee2HLWwrm2wpKmWqJ7qugsR89rSc2rXfFG6T9wGzXx1zhfL+WozT4EFT877CPt
         tdliq8fxpqTL+seJD9X8jJoimaZxMzclZYT7Hq16ozuuA0Pt5i3wv/364dSJwxWRb9Nc
         24lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU1dhtk8EtcFvkpKDMNEE6mdt5fY9hkw3j+l4WqkP7bhOLQz8V2
	yRO4bgjAVVsPGKAXCKjqBV4=
X-Google-Smtp-Source: APXvYqx0+EhakQH0HwET6scQWPo8avt04uaVOWTGUm+oLC8q2ScvilnsR4yPuf/5llcPVeSyz5d0HQ==
X-Received: by 2002:a05:6830:9a:: with SMTP id a26mr7919572oto.273.1581478963431;
        Tue, 11 Feb 2020 19:42:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:611c:: with SMTP id i28ls4067357otj.3.gmail; Tue, 11 Feb
 2020 19:42:43 -0800 (PST)
X-Received: by 2002:a9d:6457:: with SMTP id m23mr7857702otl.162.1581478963042;
        Tue, 11 Feb 2020 19:42:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581478963; cv=none;
        d=google.com; s=arc-20160816;
        b=CebDGs7PY3AtDx1UP6yRyv8X4/4STafSsuAervW8+fg14xTzZ6TMFouYLmUUlmQvcA
         trHdDOsig5D7KaQjiszW7ooE/MaAqJH+I3YVbQcPIj7S82l5SP5VHpSVMrISI6ie+9zH
         9fVDDj8R6Dfm6bTcAfg+tfp6bqHchOL+lO6NthsHK7qE9594uzAiH3rmVq2lXVNF8Amp
         rFhuLXxhJ9skU2Tzsk4HajwBHg8d1BsGMwhUAYxeRHc0leI0YR6LeSP6U0XIp6Kx9M8j
         fVU+HOHhnbxA+jH65twsZDZ6ngSwfS41VxmslbTr784JAbzDcpc1XXVSQNIkInKVIQwh
         drmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tPe7sTayWWBZzGlUQCbzCqIvW36rOIyLLoO5hc2eptg=;
        b=dTetFDdm9/4/KB7dH8QGDzb2OJuQ4SqW+iY+iUTqGMIHtZSE7AePJpTjc1Yc9/RDMS
         910V0T8Fmc3rGqwEAZHHiK1cQH9QPWPPOSpzGMaYcJPK97F1qE2Nk/W2QO1CvhS8Hwb/
         E53Acf+AJZMTpuHM0bh6vNSxA6KVILUVVddRMArQHFxGitEGFziD5U52Uef1OSk3150Y
         D3FzayBiyeJjnCPu3TJqGqdZ2kUBnSc2ly/UqIde9qR5yLW5YlP1EFuGgBkn/lY/yFVV
         hMcw10eWmwu1FwFOnvmAfwhb1kj2F4Lb57/J9VZ0QIGRX5XX16k5cN+WLXtAYSlpJrCv
         1apw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gJKKvum6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id r12si296056ota.4.2020.02.11.19.42.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 19:42:43 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id a142so699812oii.7
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 19:42:43 -0800 (PST)
X-Received: by 2002:aca:1c09:: with SMTP id c9mr5137811oic.85.1581478962535;
        Tue, 11 Feb 2020 19:42:42 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id m69sm1928958otc.78.2020.02.11.19.42.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 11 Feb 2020 19:42:41 -0800 (PST)
Date: Tue, 11 Feb 2020 20:42:39 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andrew Murray <andrew.murray@arm.com>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 5/6] PCI: rcar: Add support for rcar PCIe controller
 in endpoint mode
Message-ID: <20200212034239.GA38314@ubuntu-m2-xlarge-x86>
References: <20200208183641.6674-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200208183641.6674-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200208183641.6674-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gJKKvum6;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Lad,

On Sat, Feb 08, 2020 at 06:36:40PM +0000, Lad Prabhakar wrote:
> This patch adds support for rcar PCIe controller to work in endpoint mode.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  drivers/pci/controller/Kconfig        |   7 +
>  drivers/pci/controller/Makefile       |   1 +
>  drivers/pci/controller/pcie-rcar-ep.c | 492 ++++++++++++++++++++++++++++++++++
>  drivers/pci/controller/pcie-rcar.h    |   6 +
>  4 files changed, 506 insertions(+)
>  create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
> 

<snip>

> diff --git a/drivers/pci/controller/pcie-rcar-ep.c b/drivers/pci/controller/pcie-rcar-ep.c
> new file mode 100644
> index 0000000..32a7fca
> --- /dev/null
> +++ b/drivers/pci/controller/pcie-rcar-ep.c

<snip>

> +static int rcar_pcie_ep_set_bar(struct pci_epc *epc, u8 func_no,
> +				struct pci_epf_bar *epf_bar)
> +{
> +	struct rcar_pcie *ep = epc_get_drvdata(epc);
> +	dma_addr_t cpu_addr = epf_bar->phys_addr;
> +	int flags = epf_bar->flags | LAR_ENABLE | LAM_64BIT;
> +	enum pci_barno bar = epf_bar->barno;
> +	u64 size = 1ULL << fls64(epf_bar->size - 1);
> +	u32 mask;
> +	int idx;
> +	int err;
> +
> +	idx = find_first_zero_bit(ep->ib_window_map, ep->num_ib_windows);
> +	if (idx >= ep->num_ib_windows) {
> +		dev_err(ep->dev, "no free inbound window\n");
> +		return -EINVAL;
> +	}
> +
> +	if ((flags & PCI_BASE_ADDRESS_SPACE) == PCI_BASE_ADDRESS_SPACE_IO)
> +		flags |= IO_SPACE;
> +
> +	ep->bar_to_atu[bar] = idx;
> +	/* use 64 bit bars */
> +	set_bit(idx, ep->ib_window_map);
> +	set_bit(idx + 1, ep->ib_window_map);
> +
> +	if (cpu_addr > 0) {
> +		unsigned long nr_zeros = __ffs64(cpu_addr);
> +		u64 alignment = 1ULL << nr_zeros;
> +
> +		size = min(size, alignment);
> +	} else {
> +		size = size;
> +	}

We received a report from the 0day bot that clang warns that this is
unnecessary. Would you mind removing it if you have to spin up a new
version?

You can view the full report here:

https://groups.google.com/d/msg/clang-built-linux/KHUKw5L8yxw/Mb7KRMG7BQAJ

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200212034239.GA38314%40ubuntu-m2-xlarge-x86.
