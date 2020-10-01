Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRGR3D5QKGQE4VOH42I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id E938F28077D
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 21:06:45 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id s12sf4585860pfu.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Oct 2020 12:06:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601579204; cv=pass;
        d=google.com; s=arc-20160816;
        b=MAeoqBmunCfbJk0GjF+GHsh8m8E76/otsXImB0rlDjJ0z5KFr07eoBtuADcSVIMxPW
         huqwTAc3rk3n1lRKNoH/9evWP/9mPq2TFdFZ236iygTNdwOb0g+dw6fdgNX8j7gVQjZj
         mpfuAmPyIElMqfqSaixstm9mnmp9gyJ1mHhAPy19qfYPP1x3dsNBeDadlwwL4S0EzZ8g
         yZh0lyyz5+mVkxyD+En1IAZwc5getcSIvW+LB2IWi0r6JVQMw93qlOr4uaDXvZ+lgCwE
         00VhyBea8dxPej9XKtFSo8Mbet+WrA8W/EwqvXEC92amN2T1mIOgxMY67tDaBC4wQeHG
         Yr5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=cZpA+hLqTV1RJHiJdtbkRriaH2z6rPJ3U+XyQKVkL64=;
        b=s/kmAtzUGPs/Vh9GMFJdRYD8bCaJwz5OUkgZj4M+PyJCnZK7liNzwHw+Ojj9UoFlE0
         jE1ijiB2Njl0iY27HFS66Dnf24XiJUoTLOXbSvKmC309iWYCejEjFtiRaUJTP5ushrZJ
         q031suK48Ol35NKTyoqyLhtMsM0eexwwvJnrA1X5/kEMjnQBkZC8qnlLGmdNBLf31C2f
         j9zSobkzaNZfCivrwOpz2kdVsV2lpGUcWmLCEKRfTU3H4fXkpGqvXP2Nt2HUIsF29tX7
         jMSL33Ctg/pWeoA1mkdNbGUQM9b1P0/Rq3dXNveLhd73ToL0GL5JjxvcQb/S5f+iMdcR
         xodg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YNiWNDVB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cZpA+hLqTV1RJHiJdtbkRriaH2z6rPJ3U+XyQKVkL64=;
        b=TXSUrZ6SNCtw2crYU3UTwUe3lUw4ykJnfd5blBBOhzlA8+SNtS+jFFyOsR36Yl8sCE
         PYtw6NsXckYgRvn7gvfduahXodBphSjaQ2xJgGDFgGPNi0dS9ErdRB9qa4tlBMl5V18z
         T+56cGMSzyZVMPJ+pbYgmYQEsuzUklovOFiAF3C79+dEQQnoSbN4lnbDn93/TD5XkpaD
         zt86ShU0j+9s1mqjp+nnCZxBoJpU97kJduaa+JfCvqkJMCXOYRHeDwXp19yohcTsqlpl
         BYvS7YvDXiQFT9/lCYJtRaRyKv/iGpeMia0bVIfquhW9DUbROKVRiWOd72Jv0twgCjGg
         bKig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cZpA+hLqTV1RJHiJdtbkRriaH2z6rPJ3U+XyQKVkL64=;
        b=cySJvqTyqglrgoZKx1uoq7Ozbzcbuu67BO2ErDECpau+f88KYh6b22Jk8T20QAVIuc
         yBZ7Nti23WhPPGS/2bCzQunKMNbZnAWAUDV8oEMElxQsS5ppU6c4BihXjWmeH+J2ifq0
         oDt3gjk5ZDRCRBnBQRg7+eZtlGqtErm67G+GUph4KjLiZITqf37ffpYY1sxdkNY6tQx3
         gfs6M7+vjtpMCki+L4LI/HBReGwyhoGpQGAYuaz1a7q8xbK6DdiUGOT8cwRKoTkYuzpm
         IhHp8n2/YOATh3nJADTFp7QHGlfNSDkOEPzTf7EXZsDu3JbD4b+5/H1Rdvy1geBKCDFa
         0jMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cZpA+hLqTV1RJHiJdtbkRriaH2z6rPJ3U+XyQKVkL64=;
        b=PFgCAuCn87LJtbY/sL8avu/MkqTZDbeHcFTp1N6+NtslDpBvSKwd0d2oYhVk689+Zo
         MHtf8sgXkmhgv0M9QSWwuM1CqRJjZnzOVNKWqO4RKBKnJC4RD59RRtceAeGmMhxkfemC
         xaxipNgfGOYhR3FWCHGHyTHtThzMNZqAEO7K2p4zvqnmUfXOppUDvOT9LkwqVS2t3psv
         XIYZeIjGFQ8T3z+qTyrpnDx8xOIuJuU6NzlAitoM+CV3UqTdRKs28apURy/BcX4Qb2Ie
         NHvLvariyt/3pBrmcMpk34GkquzogFnewSgCIgm0ojABscdvhrG0sGTS/nelbR950veg
         byeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LUNpFTRRMuXYoY7L7nTJHsEwuhEmPTfxDnEL00Eh6mXNi8YF2
	DsrnBtaXnu3/DLchJ/c7O70=
X-Google-Smtp-Source: ABdhPJzIu67PPTSzI+XxNQpnPipfu616xi8zThmPgDoU/Plpa7BFBWFzaDpTonX3Bg+EalIOHfFzfQ==
X-Received: by 2002:a63:f54f:: with SMTP id e15mr7467815pgk.310.1601579204381;
        Thu, 01 Oct 2020 12:06:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8514:: with SMTP id v20ls2609200pfn.2.gmail; Thu, 01 Oct
 2020 12:06:43 -0700 (PDT)
X-Received: by 2002:a62:3541:0:b029:13f:ebd9:ad5c with SMTP id c62-20020a6235410000b029013febd9ad5cmr8934475pfa.30.1601579203839;
        Thu, 01 Oct 2020 12:06:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601579203; cv=none;
        d=google.com; s=arc-20160816;
        b=wSbyfhKYIJ384BLeEHWN0eMYIPxOXt2PX/vA8nU9hyUzl+JWHktpPDy4UDbjxlAgLU
         Ynl7LSr+6cvv8Ke38ByLoVGHkpa7Gas+DPRIP4jmt0AUK+kW1gD/lyOA6/uQBlaHNyZy
         dVUqkLN2Ba4oYytl7D+VramjJ47IlqqHbrTzooDnVgl2ljKLXPLPuQju4558cEyADq6E
         OO3Lnb5wR8ioY2ZRymnx88u653m3nQeCfiiV+SUlZuckECLBzEYfvq4UNg9O1UhbNnvW
         r5S4EOmuQtxYOss/CP48NrUlFkZxZ3ufUs3apGfhGTfH34otXUHh6ebB6B3BxsyHnFvp
         0Thg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1peGYDAEoGnpc+iW+0DY5ubcEZ1z2VlKHtE5sC8AzFc=;
        b=l8yMGy1P93IFO6lcCdhIf83s/Cd4F96tF0Au+6hjzZJbMH1TXmfn7beow4Icu2aD+G
         05/rSnmAsAOa2V6n870U8qBIxDtKSW/4hfDIM5QPVyE6LBX7CAq2f6YvUh7dBrDQzpPO
         W+rndXTJNXTXFkb34U9TbIJsxsgIcnYYign+7jqvs/8zGib3gvaf7aBc/n0sGDlraKGX
         EujSZL79+dU8JPSUKBIBjERvJ1r0zEgjl98778HetDCnaH6hvSELEgDkH94mc/y9kRM/
         G6wBvGaWOl05ga32R7u8xn5KrOuP+51+/i/3Sa6s5FligfR4tT91282k8mMGEs/xSiOh
         rGyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YNiWNDVB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id lj12si86120pjb.0.2020.10.01.12.06.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 12:06:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id l126so5478924pfd.5
        for <clang-built-linux@googlegroups.com>; Thu, 01 Oct 2020 12:06:43 -0700 (PDT)
X-Received: by 2002:a05:6a00:844:b029:13f:dd99:d1a4 with SMTP id q4-20020a056a000844b029013fdd99d1a4mr9030546pfk.31.1601579203389;
        Thu, 01 Oct 2020 12:06:43 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45e1:2200::1])
        by smtp.gmail.com with ESMTPSA id f19sm6317703pfj.25.2020.10.01.12.06.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 12:06:42 -0700 (PDT)
Date: Thu, 1 Oct 2020 12:06:41 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: tehuang@realtek.com
Cc: kvalo@codeaurora.org, yhchuang@realtek.com,
	linux-wireless@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 3/5] rtw88: add dump firmware fifo support
Message-ID: <20201001190641.GA3723966@ubuntu-m3-large-x86>
References: <20200925061219.23754-1-tehuang@realtek.com>
 <20200925061219.23754-4-tehuang@realtek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200925061219.23754-4-tehuang@realtek.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YNiWNDVB;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Sep 25, 2020 at 02:12:17PM +0800, tehuang@realtek.com wrote:
> From: Tzu-En Huang <tehuang@realtek.com>
> 
> Rtw88 currently has a function to dump reserved page section of the
> firmware fifo. Reserved page is just part of the firmware fifo, there
> are multiple sections in the firmware fifo for different usages, such as
> firmware rx fifo and tx fifo.
> This commit adds a function to check not only the reserved page section
> but also other parts of the firmware fifo. In addition, we need to dump
> firmware fifo to dump the debug log message if firmware crashes.
> 
> Signed-off-by: Tzu-En Huang <tehuang@realtek.com>
> ---
>  drivers/net/wireless/realtek/rtw88/debug.c    |  3 +-
>  drivers/net/wireless/realtek/rtw88/fw.c       | 77 +++++++++++++++----
>  drivers/net/wireless/realtek/rtw88/fw.h       |  3 +-
>  drivers/net/wireless/realtek/rtw88/main.h     | 14 ++++
>  drivers/net/wireless/realtek/rtw88/rtw8822b.c |  3 +
>  drivers/net/wireless/realtek/rtw88/rtw8822c.c |  3 +
>  6 files changed, 85 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/net/wireless/realtek/rtw88/debug.c b/drivers/net/wireless/realtek/rtw88/debug.c
> index 985cf5d60615..bff6ce19345a 100644
> --- a/drivers/net/wireless/realtek/rtw88/debug.c
> +++ b/drivers/net/wireless/realtek/rtw88/debug.c
> @@ -229,7 +229,8 @@ static int rtw_debugfs_get_rsvd_page(struct seq_file *m, void *v)
>  	if (!buf)
>  		return -ENOMEM;
>  
> -	ret = rtw_dump_drv_rsvd_page(rtwdev, offset, buf_size, (u32 *)buf);
> +	ret = rtw_fw_dump_fifo(rtwdev, RTW_FW_FIFO_SEL_RSVD_PAGE, offset,
> +			       buf_size, (u32 *)buf);
>  	if (ret) {
>  		rtw_err(rtwdev, "failed to dump rsvd page\n");
>  		vfree(buf);
> diff --git a/drivers/net/wireless/realtek/rtw88/fw.c b/drivers/net/wireless/realtek/rtw88/fw.c
> index 6a50bb993caf..042015bc8055 100644
> --- a/drivers/net/wireless/realtek/rtw88/fw.c
> +++ b/drivers/net/wireless/realtek/rtw88/fw.c
> @@ -1413,29 +1413,16 @@ int rtw_fw_download_rsvd_page(struct rtw_dev *rtwdev)
>  	return ret;
>  }
>  
> -int rtw_dump_drv_rsvd_page(struct rtw_dev *rtwdev,
> -			   u32 offset, u32 size, u32 *buf)
> +static void rtw_fw_read_fifo_page(struct rtw_dev *rtwdev, u32 offset, u32 size,
> +				  u32 *buf, u32 residue, u16 start_pg)
>  {
> -	struct rtw_fifo_conf *fifo = &rtwdev->fifo;
> -	u32 residue, i;
> -	u16 start_pg;
> +	u32 i;
>  	u16 idx = 0;
>  	u16 ctl;
>  	u8 rcr;
>  
> -	if (size & 0x3) {
> -		rtw_warn(rtwdev, "should be 4-byte aligned\n");
> -		return -EINVAL;
> -	}
> -
> -	offset += fifo->rsvd_boundary << TX_PAGE_SIZE_SHIFT;
> -	residue = offset & (FIFO_PAGE_SIZE - 1);
> -	start_pg = offset >> FIFO_PAGE_SIZE_SHIFT;
> -	start_pg += RSVD_PAGE_START_ADDR;
> -
>  	rcr = rtw_read8(rtwdev, REG_RCR + 2);
>  	ctl = rtw_read16(rtwdev, REG_PKTBUF_DBG_CTRL) & 0xf000;
> -
>  	/* disable rx clock gate */
>  	rtw_write8(rtwdev, REG_RCR, rcr | BIT(3));
>  
> @@ -1457,6 +1444,64 @@ int rtw_dump_drv_rsvd_page(struct rtw_dev *rtwdev,
>  out:
>  	rtw_write16(rtwdev, REG_PKTBUF_DBG_CTRL, ctl);
>  	rtw_write8(rtwdev, REG_RCR + 2, rcr);
> +}
> +
> +static void rtw_fw_read_fifo(struct rtw_dev *rtwdev, enum rtw_fw_fifo_sel sel,
> +			     u32 offset, u32 size, u32 *buf)
> +{
> +	struct rtw_chip_info *chip = rtwdev->chip;
> +	u32 start_pg, residue;
> +
> +	if (sel >= RTW_FW_FIFO_MAX) {
> +		rtw_dbg(rtwdev, RTW_DBG_FW, "wrong fw fifo sel\n");
> +		return;
> +	}
> +	if (sel == RTW_FW_FIFO_SEL_RSVD_PAGE)
> +		offset += rtwdev->fifo.rsvd_boundary << TX_PAGE_SIZE_SHIFT;
> +	residue = offset & (FIFO_PAGE_SIZE - 1);
> +	start_pg = (offset >> FIFO_PAGE_SIZE_SHIFT) + chip->fw_fifo_addr[sel];
> +
> +	rtw_fw_read_fifo_page(rtwdev, offset, size, buf, residue, start_pg);
> +}
> +
> +static bool rtw_fw_dump_check_size(struct rtw_dev *rtwdev,
> +				   enum rtw_fw_fifo_sel sel,
> +				   u32 start_addr, u32 size)
> +{
> +	switch (sel) {
> +	case RTW_FW_FIFO_SEL_TX:
> +	case RTW_FW_FIFO_SEL_RX:
> +		if ((start_addr + size) > rtwdev->chip->fw_fifo_addr[sel])
> +			return false;
> +		/*fall through*/
> +	default:
> +		return true;
> +	}
> +}
> +
> +int rtw_fw_dump_fifo(struct rtw_dev *rtwdev, u8 fifo_sel, u32 addr, u32 size,
> +		     u32 *buffer)
> +{
> +	if (!rtwdev->chip->fw_fifo_addr) {

This causes a clang warning, which points out it is probably not doing
what you think it is:

drivers/net/wireless/realtek/rtw88/fw.c:1485:21: warning: address of
array 'rtwdev->chip->fw_fifo_addr' will always evaluate to 'true'
[-Wpointer-bool-conversion]
        if (!rtwdev->chip->fw_fifo_addr) {
            ~~~~~~~~~~~~~~~^~~~~~~~~~~~
1 warning generated.

Was fw_fifo_addr[0] intended or should the check just be deleted?

Cheers,
Nathan

> +		rtw_dbg(rtwdev, RTW_DBG_FW, "chip not support dump fw fifo\n");
> +		return -ENOTSUPP;
> +	}
> +
> +	if (size == 0 || !buffer)
> +		return -EINVAL;
> +
> +	if (size & 0x3) {
> +		rtw_dbg(rtwdev, RTW_DBG_FW, "not 4byte alignment\n");
> +		return -EINVAL;
> +	}
> +
> +	if (!rtw_fw_dump_check_size(rtwdev, fifo_sel, addr, size)) {
> +		rtw_dbg(rtwdev, RTW_DBG_FW, "fw fifo dump size overflow\n");
> +		return -EINVAL;
> +	}
> +
> +	rtw_fw_read_fifo(rtwdev, fifo_sel, addr, size, buffer);
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/net/wireless/realtek/rtw88/fw.h b/drivers/net/wireless/realtek/rtw88/fw.h
> index b4e3f755e8fb..9c4863c011ba 100644
> --- a/drivers/net/wireless/realtek/rtw88/fw.h
> +++ b/drivers/net/wireless/realtek/rtw88/fw.h
> @@ -16,7 +16,6 @@
>  
>  #define FIFO_PAGE_SIZE_SHIFT		12
>  #define FIFO_PAGE_SIZE			4096
> -#define RSVD_PAGE_START_ADDR		0x780
>  #define FIFO_DUMP_ADDR			0x8000
>  
>  #define DLFW_PAGE_SIZE_SHIFT_LEGACY	12
> @@ -565,5 +564,7 @@ void rtw_fw_update_pkt_probe_req(struct rtw_dev *rtwdev,
>  void rtw_fw_channel_switch(struct rtw_dev *rtwdev, bool enable);
>  void rtw_fw_h2c_cmd_dbg(struct rtw_dev *rtwdev, u8 *h2c);
>  void rtw_fw_c2h_cmd_isr(struct rtw_dev *rtwdev);
> +int rtw_fw_dump_fifo(struct rtw_dev *rtwdev, u8 fifo_sel, u32 addr, u32 size,
> +		     u32 *buffer);
>  
>  #endif
> diff --git a/drivers/net/wireless/realtek/rtw88/main.h b/drivers/net/wireless/realtek/rtw88/main.h
> index 292336387b89..06bdc68555e7 100644
> --- a/drivers/net/wireless/realtek/rtw88/main.h
> +++ b/drivers/net/wireless/realtek/rtw88/main.h
> @@ -1083,6 +1083,17 @@ enum rtw_wlan_cpu {
>  	RTW_WCPU_11N,
>  };
>  
> +enum rtw_fw_fifo_sel {
> +	RTW_FW_FIFO_SEL_TX,
> +	RTW_FW_FIFO_SEL_RX,
> +	RTW_FW_FIFO_SEL_RSVD_PAGE,
> +	RTW_FW_FIFO_SEL_REPORT,
> +	RTW_FW_FIFO_SEL_LLT,
> +	RTW_FW_FIFO_SEL_RXBUF_FW,
> +
> +	RTW_FW_FIFO_MAX,
> +};
> +
>  /* hardware configuration for each IC */
>  struct rtw_chip_info {
>  	struct rtw_chip_ops *ops;
> @@ -1099,6 +1110,7 @@ struct rtw_chip_info {
>  	u32 ptct_efuse_size;
>  	u32 txff_size;
>  	u32 rxff_size;
> +	u32 fw_rxff_size;
>  	u8 band;
>  	u8 page_size;
>  	u8 csi_buf_pg_num;
> @@ -1109,6 +1121,8 @@ struct rtw_chip_info {
>  	bool rx_ldpc;
>  	u8 max_power_index;
>  
> +	u16 fw_fifo_addr[RTW_FW_FIFO_MAX];
> +
>  	bool ht_supported;
>  	bool vht_supported;
>  	u8 lps_deep_mode_supported;
> diff --git a/drivers/net/wireless/realtek/rtw88/rtw8822b.c b/drivers/net/wireless/realtek/rtw88/rtw8822b.c
> index b7a98dbbb09c..22d0dd640ac9 100644
> --- a/drivers/net/wireless/realtek/rtw88/rtw8822b.c
> +++ b/drivers/net/wireless/realtek/rtw88/rtw8822b.c
> @@ -2442,6 +2442,7 @@ struct rtw_chip_info rtw8822b_hw_spec = {
>  	.ptct_efuse_size = 96,
>  	.txff_size = 262144,
>  	.rxff_size = 24576,
> +	.fw_rxff_size = 12288,
>  	.txgi_factor = 1,
>  	.is_pwr_by_rate_dec = true,
>  	.max_power_index = 0x3f,
> @@ -2504,6 +2505,8 @@ struct rtw_chip_info rtw8822b_hw_spec = {
>  
>  	.coex_info_hw_regs_num = ARRAY_SIZE(coex_info_hw_regs_8822b),
>  	.coex_info_hw_regs = coex_info_hw_regs_8822b,
> +
> +	.fw_fifo_addr = {0x780, 0x700, 0x780, 0x660, 0x650, 0x680},
>  };
>  EXPORT_SYMBOL(rtw8822b_hw_spec);
>  
> diff --git a/drivers/net/wireless/realtek/rtw88/rtw8822c.c b/drivers/net/wireless/realtek/rtw88/rtw8822c.c
> index dd216a23fc99..e37300e98517 100644
> --- a/drivers/net/wireless/realtek/rtw88/rtw8822c.c
> +++ b/drivers/net/wireless/realtek/rtw88/rtw8822c.c
> @@ -4294,6 +4294,7 @@ struct rtw_chip_info rtw8822c_hw_spec = {
>  	.ptct_efuse_size = 124,
>  	.txff_size = 262144,
>  	.rxff_size = 24576,
> +	.fw_rxff_size = 12288,
>  	.txgi_factor = 2,
>  	.is_pwr_by_rate_dec = false,
>  	.max_power_index = 0x7f,
> @@ -4364,6 +4365,8 @@ struct rtw_chip_info rtw8822c_hw_spec = {
>  
>  	.coex_info_hw_regs_num = ARRAY_SIZE(coex_info_hw_regs_8822c),
>  	.coex_info_hw_regs = coex_info_hw_regs_8822c,
> +
> +	.fw_fifo_addr = {0x780, 0x700, 0x780, 0x660, 0x650, 0x680},
>  };
>  EXPORT_SYMBOL(rtw8822c_hw_spec);
>  
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201001190641.GA3723966%40ubuntu-m3-large-x86.
