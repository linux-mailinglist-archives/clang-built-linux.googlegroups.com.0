Return-Path: <clang-built-linux+bncBDXJDZXNUMORBC5M73ZQKGQEBDMIPCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id ADBCB196860
	for <lists+clang-built-linux@lfdr.de>; Sat, 28 Mar 2020 19:23:08 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id 84sf5338479ybz.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Mar 2020 11:23:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585419787; cv=pass;
        d=google.com; s=arc-20160816;
        b=oe80qZH/wA5zTU3OrUpODn+lWEBEmu9wc+TbDU/sPrbIyC9J4daOPB1PDtBY2s36wK
         K2h0pCA1dts0b86+EMlSqQ8K23BVyocI9LSrInLVaj4CGDUihXdTCsp3Kysl2hFxTViL
         YSeaf+8XZKSIC+Y0JV7hdHkOAe7YczZMCA6OkxzL461Bl9esNu5yz4vgqpIUpUEJD0QN
         dGNAhuTV8aYtpF+EpV3uHLUj9Fz8oIU4Mb08iSidR8tSiIHDaY0Wo3vUFrfHMRW3gZg1
         91IwLfRDfGTQM4wnW+tzdmdmE6Og4SrGLUeH44CFjSp8i470fDzGUZGj2GbX6bJVsE12
         zcbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=V2NPLOgGoMoqhZTq/BrC/FbmR3fKfjsNG410WnbFDkw=;
        b=AilSnTlDSxXaPcS52eoxrwmiM/QoOziUgLgPN69zkPpnOuLOAuuV2hzVCONxgeITQz
         XfBztNajV4pINWvCCRsPF2yeaQvjgvcMlZeGpgCJHNSMeWga6tIH8vvzpGgv8zspqtDe
         6zfHYH5Ex/pmV1T3fH0iuf+c3m24EEkIkauqMUIaGCmegvQRyFS+YNffVF8hb5K+uNB3
         aQqebhg/Pw9b1Mpg+Grd+NLzyAnnrAhEQctC9TwBIssUCPaWwjBrC8bZBCv9Rba56MnO
         aUrGRcdtRWZZgsoSrr92g2/EMiRDLcMgBR9+dDo6UeEQCEuCU2vXoK8olZQd0lS0CIRK
         TfEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qzaTJUy+;
       spf=pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V2NPLOgGoMoqhZTq/BrC/FbmR3fKfjsNG410WnbFDkw=;
        b=aJgrx7b3Vy1dLRda7IyToXL+nQI4VzHAcWleJEpB5jFQh+izg+QG2hC26BN6WeLsfR
         04o3oAo5WXa/S7u1WEY55bUoK9oQ3jJtt8HhwsGb2ofCbiN2H+Y+qX2beQwUSMD5Aqsv
         PYl83TivOGBzQZ7HKlgqO2pUiixz1BnfRd6n6pVg7wQF9k7ACwDoCDgABawdWdAuzlD/
         xPIN2HwoVNMdhsAQ2khnuGzJu+YpNYHkd2ua6Q9t2FqBh6T+l5RxnjIqZVwlGxP6juLu
         MaSTL6uYoCZjCIVerItJQkZMMQ2LBt1bebZvhr219d7h9NqjXWvb1VSbVKsvsC7fmgeZ
         9otA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V2NPLOgGoMoqhZTq/BrC/FbmR3fKfjsNG410WnbFDkw=;
        b=rlTTVHQ058ebJhJFsgOPFhCzGoEbQruW1QJRIRZOOqiJI2hiyKI3AbXpG9B3cAuR/0
         PcZBPhwUBK+gAQF7kJsp3RRmKi0VPC6w/fb7jACmwhZ4/zx2SD1QbBe1VWwTMr+0ymkr
         7Z2x1kloAWtCI8S7RS1QWAAw6sU+E5P9Bs3wm10K3j7OziKbOSvqOB1mNsL9UimkS/H1
         wBBke1mtZysKJkR0dY+nDaFaRXZsVHI/RNmGHay5F+1xXYTcc/zTTpPJykNYZftpJlcY
         RQeTNHiSP7802o1VM9afa5nnJAxqQyx1d+/L8BZ817xg+wGgQgtnE9nJLquzLIeJ/xOd
         EP/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1zoiSiug7eM5+LFgfCZb8ynzColq7yLMJ4bYxziZ9ZWVOLkRFx
	v/n1iTcGTh/Xp+IJYdvqxqE=
X-Google-Smtp-Source: ADFU+vviPrOCCka5v+w37Ea8dO6fiVDgRNMyiujVb9JO2cTlvZbWCDkiqJq34FcS0oF2guBAg1nuiA==
X-Received: by 2002:a25:6a56:: with SMTP id f83mr7567740ybc.17.1585419787434;
        Sat, 28 Mar 2020 11:23:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aab3:: with SMTP id t48ls4216575ybi.2.gmail; Sat, 28 Mar
 2020 11:23:07 -0700 (PDT)
X-Received: by 2002:a25:cd46:: with SMTP id d67mr7648542ybf.352.1585419787008;
        Sat, 28 Mar 2020 11:23:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585419787; cv=none;
        d=google.com; s=arc-20160816;
        b=WDhVCm9oHt5dK/MiKkiCRzvHnGhTehqftBrXGQnZvRQsDQ8Iprmir5mwpXbiV/Lye4
         ZOMGUGHZAwXvYC8H+LAYzoSNpM3xS9TvMP5w356BiZVtQUGavp7zNortahuYTPuzbcqj
         yTOak+HaMMoEnVaJWK9RVXuo0sT1itV/+yxprH2FK09ZrfQ+O/HAMJLbIPov3RYLRKG7
         52hD8ERminHY7e65Xjq4n/CHKTacgGajBZXoYWDMKFDBxopnQ4IZqmDMkDHN6/7lhOT7
         ZI9ZPrHq6p2BD2G9u+ZPYwBio1/CS65b2w1STCErPGOdOoQGJ09JbOMNOvZg2Kbzav8x
         rcZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=DR63tpxE9fraB6Ue149mZlTNuhuDFW2c6vFydopETJQ=;
        b=ZuWbyteGXELQJn3G21UuaESgbnievRfif1pJmq6tPoL72ppp2Qisdk0aMfV845Jp9w
         kwnlxGHb5opz0pVMOMogftEEw3fpppBcpc2DGuxxLf7vjzmZ4AMkfKLlorxeJuSgXyqm
         RDZXnRzUzQDt5WgPRDexu2uFkeoUBSmG0tVTubaVLaRklZiAUzv6n4wakQOZn4iTxzxK
         LdCw+U2S7FxjeVcH0QB5kY4dBtOnjs3qgoPjiuVbTBuI1hT1kPELaklBCnwUtBvYIpa4
         LoT6x5kQluQhbvdYhEKxRQVusc7yXWX0I90oLaAZ9dgubws21rB9ZyapKka2YRFpDTJE
         NcZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qzaTJUy+;
       spf=pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x13si503970ybs.4.2020.03.28.11.23.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2020 11:23:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (mobile-166-175-186-165.mycingular.net [166.175.186.165])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B91AE20714;
	Sat, 28 Mar 2020 18:23:05 +0000 (UTC)
Date: Sat, 28 Mar 2020 13:23:04 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: kbuild test robot <lkp@intel.com>
Cc: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-pci@vger.kernel.org
Subject: Re: [pci:pci/edr 4/10] drivers/pci/pcie/err.c:168:28: error: use of
 undeclared identifier 'service'
Message-ID: <20200328182304.GA70832@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202003290223.P0IbgBYa%lkp@intel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: helgaas@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qzaTJUy+;       spf=pass
 (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=helgaas@kernel.org;       dmarc=pass (p=NONE
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

On Sun, Mar 29, 2020 at 02:09:30AM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git pci/edr
> head:   3a4c9f97543f0dbf580dd3646164e829ba08e600
> commit: d9dbf5828770b236fcae3cc866d844fe360174d0 [4/10] PCI/ERR: Remove service dependency in pcie_do_recovery()
> config: x86_64-defconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 0fca766458da04bbc6d33b3f9ecd57e615c556c1)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout d9dbf5828770b236fcae3cc866d844fe360174d0
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/pci/pcie/err.c:168:28: error: use of undeclared identifier 'service'
>                    status = reset_link(dev, service);

My merge error, sorry.  This is on a test branch (pci/edr), not in my
-next branch yet.

>                                             ^
>    1 error generated.
> 
> vim +/service +168 drivers/pci/pcie/err.c
> 
> 2e28bc84cf6eec Oza Pawandeep              2018-05-17  148  
> d9dbf5828770b2 Kuppuswamy Sathyanarayanan 2020-03-23  149  void pcie_do_recovery(struct pci_dev *dev,
> d9dbf5828770b2 Kuppuswamy Sathyanarayanan 2020-03-23  150  		      enum pci_channel_state state,
> d9dbf5828770b2 Kuppuswamy Sathyanarayanan 2020-03-23  151  		      pci_ers_result_t (*reset_link)(struct pci_dev *pdev))
> 2e28bc84cf6eec Oza Pawandeep              2018-05-17  152  {
> 542aeb9c8f930e Keith Busch                2018-09-20  153  	pci_ers_result_t status = PCI_ERS_RESULT_CAN_RECOVER;
> 542aeb9c8f930e Keith Busch                2018-09-20  154  	struct pci_bus *bus;
> 2e28bc84cf6eec Oza Pawandeep              2018-05-17  155  
> bfcb79fca19d26 Keith Busch                2018-09-20  156  	/*
> bfcb79fca19d26 Keith Busch                2018-09-20  157  	 * Error recovery runs on all subordinates of the first downstream port.
> bfcb79fca19d26 Keith Busch                2018-09-20  158  	 * If the downstream port detected the error, it is cleared at the end.
> bfcb79fca19d26 Keith Busch                2018-09-20  159  	 */
> bfcb79fca19d26 Keith Busch                2018-09-20  160  	if (!(pci_pcie_type(dev) == PCI_EXP_TYPE_ROOT_PORT ||
> bfcb79fca19d26 Keith Busch                2018-09-20  161  	      pci_pcie_type(dev) == PCI_EXP_TYPE_DOWNSTREAM))
> bfcb79fca19d26 Keith Busch                2018-09-20  162  		dev = dev->bus->self;
> 542aeb9c8f930e Keith Busch                2018-09-20  163  	bus = dev->subordinate;
> bfcb79fca19d26 Keith Busch                2018-09-20  164  
> 542aeb9c8f930e Keith Busch                2018-09-20  165  	pci_dbg(dev, "broadcast error_detected message\n");
> b5dfbeacf74865 Kuppuswamy Sathyanarayanan 2020-03-27  166  	if (state == pci_channel_io_frozen) {
> 542aeb9c8f930e Keith Busch                2018-09-20  167  		pci_walk_bus(bus, report_frozen_detected, &status);
> 6d2c89441571ea Kuppuswamy Sathyanarayanan 2020-03-23 @168  		status = reset_link(dev, service);
> 
> :::::: The code at line 168 was first introduced by commit
> :::::: 6d2c89441571ea534d6240f7724f518936c44f8d PCI/ERR: Update error status after reset_link()
> 
> :::::: TO: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>
> :::::: CC: Bjorn Helgaas <bhelgaas@google.com>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200328182304.GA70832%40google.com.
