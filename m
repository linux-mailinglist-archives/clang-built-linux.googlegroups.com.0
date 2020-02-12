Return-Path: <clang-built-linux+bncBCP5TCG4SYBBBE6XR3ZAKGQETM42YRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E9F15A237
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 08:39:01 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id y73sf949102pfg.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 23:39:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581493139; cv=pass;
        d=google.com; s=arc-20160816;
        b=QuLADs7GYad958ewjt0e95hPs5vSxkjbSEmz+Xe8SdE3dk4wWamWxWeXJvJi3KNv6F
         tN1+RA1tBhMzQikAnfPSFfNeHFbybJZyOvFZHAp/LZiAZDVsGHvcibADV9tMORpsiaVe
         cvB5DlGY556nk7BsyjdWQp30GFa0Cp8V0CzlxRahuiOQnz7Htw7MDkZaDs6cQwK0TnDz
         Il8G46v3fHmw5dr6DqnLSPzeYSGIihN2kWOs6RTYZoeg1t/f7iItD0LSHVV84+W4Os3Z
         koPLfSaI13bUg5Mr9VE0l5ZnUEB4jeXtOFZBWjph46vTw2INeLfaR/ljbojq1r+SnBJe
         +z5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Z2Vle7UczKOPXywqmPLhI4perpkwAHtpGL8MCyEk2kM=;
        b=UKm3Z9FoXP2iHldjCb6BdmZ3krT//T7E4vimWw/LOyKk6sKToOkY3D+nHq5jlxhYrV
         o731lqQFdX3u9EsOedkV+PtvRQHaeFNeU04B735mChGYRFgRieBWZ4sBuIEaEuIGSQ4d
         8J2tnrlpUxzyuOezym8vCCfdxAIHGQhQNhIlryAkhOGZupLidqVBXDPk6nHlkJc+iDgq
         gXWewyAbbH+HkQvSxtPeISwsantkfsFuvYk/jsPuGfrXMoMVfP/LFlSnrk9AZKxSuCO4
         q4BOHsowjml1vHhgjyRr0sb89928AhAY3rBUvea1ljdS3a8JokOLYV6J9jf7YJBeT9Pr
         GEOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TC9l1keL;
       spf=pass (google.com: domain of prabhakar.csengg@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=prabhakar.csengg@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z2Vle7UczKOPXywqmPLhI4perpkwAHtpGL8MCyEk2kM=;
        b=TMy+rC6QPepuCGix3IZMGYN2VjotfAuG+8/l0J5Y4STFfQHv7w+o4WU+9BPd3GJPjo
         0VqnwQRH1IqN+CZF6E0TKRyp61FLz84DYS6Kx1iZGFvYiicAF6trIyy38scPe6JVZdxP
         E4fsbT97+dyqB8I81RTlN0JaNXsyvIdT5Um6AyH5VZqgIbS5tW8imRJ0lMYyr3FEJiI+
         mDHPsYqDBX64yzKUhOeUyn7j5ktvtjdvc8WflNzgkkJPd0ZxpRlpwvP/NzMFNAWJoYYS
         4VezHaVvhg1i7MEZBeLJHQokTt90XnEQ/CNWVARjr8AssFuxDjyenyxXRLRmU2VNqxJ/
         +FAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z2Vle7UczKOPXywqmPLhI4perpkwAHtpGL8MCyEk2kM=;
        b=fXc3a/44nl8Ne+6jh4EB6ukrWzmKNXRWHYwB7DHPuAmka6q5oP6bGTnKimyjkm3cLP
         zB//outWNx1TbQU6UYdACbWbXKnr153qFad3YVb39Db1+ozaFH6awfWaWjPW31+jFZkf
         KRHo+OwPDpqVdPH5KDXCUizbtKoWPHDw2d0elt2rfd+QbwnJNr0mUKAEyg9p843paOac
         xILQLMi3jhRCGCDbbdk60Cy2rBVO7GJMrPSIV4gp1BYigF6WTlYqFzXKpuN9+FBpM2pt
         m1vcLyNk1gtNnlcC+2O60QQTxdbJ5a/8msf7aNIkUcOAAFeye/nRoZODVX17SJn3c3jr
         z9Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z2Vle7UczKOPXywqmPLhI4perpkwAHtpGL8MCyEk2kM=;
        b=BsFNjgfAg4SZYpFeC4RTlj0LQarFjReOJzMDIZlDfrilHee0Wck6gjtYQ1w2Xynsam
         kSbx802oSur6B2IvSlJlpMcJpTOb/WHxkAiizLfH7QG71xSsPVJoWA5I9/tS5O14OuPM
         +ocYUnKfd4Mf2zXftRzCwynRazy8ZXuvOPpymAFZwJ4THC0swrTBZIEMV6OuBGHclhmx
         bT9xzDRqGilhDiy6qmVYVbb6rZkluLGJLXr42bpY1iRHxt5eIidTRb3Kix9w1RdFSaWR
         nDzDC49LdttoYtv4O9tGjohmWn7nj/eyIb5Y+HwTKDvOpDTeerSBw3MVaTTVFgEQ0DGS
         mW+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWyPFHRhIb3Y5olfSyoK0spG7VyuQE1Ol5kHL7QI64dvq9Rd4oQ
	WGgArEKCQVDHO7HGhsiODU8=
X-Google-Smtp-Source: APXvYqyASZI4ApZ72NtO2GDpuPkD87B96WfwomcacRMDWhKCeHFc22gOl/fzOtEBKvbhs/3bUeea5w==
X-Received: by 2002:a17:902:7283:: with SMTP id d3mr21824382pll.118.1581493139731;
        Tue, 11 Feb 2020 23:38:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:253:: with SMTP id fz19ls3356112pjb.0.gmail; Tue, 11
 Feb 2020 23:38:59 -0800 (PST)
X-Received: by 2002:a17:902:8e84:: with SMTP id bg4mr6899075plb.11.1581493139213;
        Tue, 11 Feb 2020 23:38:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581493139; cv=none;
        d=google.com; s=arc-20160816;
        b=G8uZtI8hk49JsOs+HAxtwK5nMbWcRssA8XBPENsuRMamDAcDp2Yv9oclKpQsrEXh5O
         VrKCRccypVaEGTVT7KRNkXuvmSEtXpM+7/41LZlIQW4Ql4Xv3Es5pp27ThMKoeimoFBx
         fctCOkR5IdzKNTtkJZGCM9D9VOA0cFPG/JvkXHUY4UpQMC3Ol8ub07mmUZBPqHX8p7lo
         GxfQahmvAjfzZv5AB4idc05fdZbpRG02lNUR6/LbmuPagydnDU/+GtF6/P/rv1w7S4St
         Q8SKmT97bDnpbIGx4xKh7KBSLYvJpx/LvdLH85NOtP3D0nU/J7/o672m4yKV8qXk+zeQ
         g3UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XWghytwp0n8q64ohIAtcpx40VHgmilMQUtH3KTGYx7s=;
        b=a97ppsmhzCEb38iFuawslVAIp1XJv0Qagu9omsbH2Jnvmdl1i0m4XUkACvMZ3goO83
         BbJX1DXtn4294rO0LWkLTor7TZIiVGy2zy5JFQ3ubf3d8fSNA0Lrug094hPTMmJGIIh3
         OwUX4MGmpwfdpdG2b/+adcSpyOQ0+VMRP3mIgL0hjjik3Pi/tcHgnbwz9XdKw+Rr7onc
         hn5kz8frh1d/SuoKXTIMZFnxVYo6Dh0p4XRWPDo47okfyB9toGlZaMDpJvJOOHqO1/kt
         36B5HXJA5FMLYkXUcuxxtXL5M7+7HY+Oa+yvMVc79j3I9K9eC+GX7ioy1xQqJdoR3FEa
         3gTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TC9l1keL;
       spf=pass (google.com: domain of prabhakar.csengg@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=prabhakar.csengg@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id f3si182316pjw.0.2020.02.11.23.38.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 23:38:59 -0800 (PST)
Received-SPF: pass (google.com: domain of prabhakar.csengg@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id l136so1162463oig.1
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 23:38:59 -0800 (PST)
X-Received: by 2002:aca:5a04:: with SMTP id o4mr5370457oib.71.1581493138499;
 Tue, 11 Feb 2020 23:38:58 -0800 (PST)
MIME-Version: 1.0
References: <20200208183641.6674-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200208183641.6674-6-prabhakar.mahadev-lad.rj@bp.renesas.com> <20200212034239.GA38314@ubuntu-m2-xlarge-x86>
In-Reply-To: <20200212034239.GA38314@ubuntu-m2-xlarge-x86>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 12 Feb 2020 07:38:32 +0000
Message-ID: <CA+V-a8vMcRvsh7+pcgD4jk50X0DtZ9uXFegZVXM5M1k-R6jOVA@mail.gmail.com>
Subject: Re: [PATCH v4 5/6] PCI: rcar: Add support for rcar PCIe controller in
 endpoint mode
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jingoo Han <jingoohan1@gmail.com>, 
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Heiko Stuebner <heiko@sntech.de>, Andrew Murray <andrew.murray@arm.com>, 
	linux-pci <linux-pci@vger.kernel.org>, LAK <linux-arm-kernel@lists.infradead.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: prabhakar.csengg@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TC9l1keL;       spf=pass
 (google.com: domain of prabhakar.csengg@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=prabhakar.csengg@gmail.com;
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

Hi Nathan,

On Wed, Feb 12, 2020 at 3:42 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Hi Lad,
>
> On Sat, Feb 08, 2020 at 06:36:40PM +0000, Lad Prabhakar wrote:
> > This patch adds support for rcar PCIe controller to work in endpoint mode.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  drivers/pci/controller/Kconfig        |   7 +
> >  drivers/pci/controller/Makefile       |   1 +
> >  drivers/pci/controller/pcie-rcar-ep.c | 492 ++++++++++++++++++++++++++++++++++
> >  drivers/pci/controller/pcie-rcar.h    |   6 +
> >  4 files changed, 506 insertions(+)
> >  create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
> >
>
> <snip>
>
> > diff --git a/drivers/pci/controller/pcie-rcar-ep.c b/drivers/pci/controller/pcie-rcar-ep.c
> > new file mode 100644
> > index 0000000..32a7fca
> > --- /dev/null
> > +++ b/drivers/pci/controller/pcie-rcar-ep.c
>
> <snip>
>
> > +static int rcar_pcie_ep_set_bar(struct pci_epc *epc, u8 func_no,
> > +                             struct pci_epf_bar *epf_bar)
> > +{
> > +     struct rcar_pcie *ep = epc_get_drvdata(epc);
> > +     dma_addr_t cpu_addr = epf_bar->phys_addr;
> > +     int flags = epf_bar->flags | LAR_ENABLE | LAM_64BIT;
> > +     enum pci_barno bar = epf_bar->barno;
> > +     u64 size = 1ULL << fls64(epf_bar->size - 1);
> > +     u32 mask;
> > +     int idx;
> > +     int err;
> > +
> > +     idx = find_first_zero_bit(ep->ib_window_map, ep->num_ib_windows);
> > +     if (idx >= ep->num_ib_windows) {
> > +             dev_err(ep->dev, "no free inbound window\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     if ((flags & PCI_BASE_ADDRESS_SPACE) == PCI_BASE_ADDRESS_SPACE_IO)
> > +             flags |= IO_SPACE;
> > +
> > +     ep->bar_to_atu[bar] = idx;
> > +     /* use 64 bit bars */
> > +     set_bit(idx, ep->ib_window_map);
> > +     set_bit(idx + 1, ep->ib_window_map);
> > +
> > +     if (cpu_addr > 0) {
> > +             unsigned long nr_zeros = __ffs64(cpu_addr);
> > +             u64 alignment = 1ULL << nr_zeros;
> > +
> > +             size = min(size, alignment);
> > +     } else {
> > +             size = size;
> > +     }
>
> We received a report from the 0day bot that clang warns that this is
> unnecessary. Would you mind removing it if you have to spin up a new
> version?
>
Sure ill fix that.

Cheers,
--Prabhakar Lad

> You can view the full report here:
>
> https://groups.google.com/d/msg/clang-built-linux/KHUKw5L8yxw/Mb7KRMG7BQAJ
>
> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BV-a8vMcRvsh7%2BpcgD4jk50X0DtZ9uXFegZVXM5M1k-R6jOVA%40mail.gmail.com.
