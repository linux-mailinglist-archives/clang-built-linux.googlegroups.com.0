Return-Path: <clang-built-linux+bncBDZJXP7F6YLRBEPMVT6AKGQES65VYVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id D123E291382
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 20:21:05 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id s11sf3481996ljh.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 11:21:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602958865; cv=pass;
        d=google.com; s=arc-20160816;
        b=cAqIgDarLNJqa1NgB450+7iez6g5x1RzZ24r1F113i2a27rVCbwt9r8uN8sBdmlGyd
         BzZDRQL5zrWbMqE1gVwRw94ZUQjsZmgSexD3qDGkklNvJ2QEAntkJQa+el3E4bpyTK4+
         zByqWG1FbIy0570eYCIrcR5pM+0pV0kgUyea5gdQoeQN6h7PX8479vOBC2jUYzruV5L2
         DRHDucqeHDPW/3dBtkzoUVNAebrK6SQOR7yDE/476/hUCh9DbOouLTYruqlilowdbmw2
         Rd3/5r6+kGg7mMa1RK52g6ZyIxX67uQ/mpBcdS8A7DvjM1Sn5onWYJWTZZ3e1eduJRFo
         bAzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Uy7UvowuHQQgnpfhbEyi4PG5Ws1WHvZiZN6fb0Gtvqg=;
        b=z+aHD4klEPjYyVoBP8K0O/ui/pncLkSXCynNaZ/zVtYyldCFx+EXVOgWnE8WfyNaCT
         NrXgSLl8YU6PQ1Hkh9EM51kyG1qVGtoOUWJc2Grt3+Vlg7hYid0tMP85TcX0/ylfGjzi
         l51DgTNs16PIszG7vjARclD8O20OYFqvDm+RvKX5A8wzJvEEiOqjz+QmpWhMiDNO9QPN
         B7fjej3tOF4t05E5bCLeSQikuNVeBVRGoSwds8pYTMkTcaTG6faSx8CRmnsUFnTwjB7Q
         x0wsOi1luhjd8N26WhsScMr8te4IojbeAsmcXdYf74GDQltlPvIkZL6a7IN0KOvp/sp8
         yCfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Uy7UvowuHQQgnpfhbEyi4PG5Ws1WHvZiZN6fb0Gtvqg=;
        b=HDasaNQfjkSRSOOuD4QcvioLc2br4Gulbb/OS4qgKCofOBtrFD4jbYLeTbbO1vIetU
         hC/q/mfBIh7yeluyL3fVw4e/xUcbaa3Q1ZOHEshLTEILHzCYJZD3Cc6b6jPmVmV3yu7M
         mHEJzrNawdeMvMi1zqaHa+QhaMASHGeI72VbpnWeMD/DBn/Xhn2RG3+GSzNHF5VHdVRK
         CeouCJ6ykopscQBt+Mebt5hGd7I6V29MLnryLvJJ5KKButb8iNC5SL1z8tm+g+QXbm0I
         8XWThDLqNYnzox6j9hacbLcIvHguyItjlb7XPh6Vrlkd8rWImgFd2nnWk4LQQO2biQXV
         e5+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uy7UvowuHQQgnpfhbEyi4PG5Ws1WHvZiZN6fb0Gtvqg=;
        b=KN1ItSOJqW9lm8v0+5ZFafM2LYaGYWIafHKYDpY+7nL53d3JtbiZE+Ee4RtXZavjdK
         AFS0/ut3OJArnG9TcWvoQRiTnABuam4XmIz9Pqx5tgJN6cZj0FTpD7g3a9V0G0oSBnV9
         uVxGKIWM/5nywtnlPf1FGGLkDjosnzqzsFXmVSwwDWacekqo/AjsRnx9vUvwN714dj2V
         AdVmqNX2jgbNo0INQ4qEZbpRb5GCloI/W5FnjVGGRMTH/Pk67W/U6BTxon1NB1/3nI0W
         LE9EJhzNBOU2wC4OwHPYm224jy+G38/OotY9/i9RDOC9dO6I81jblXxV/emPn8wRYKkg
         nfEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kdbx+ecX0CDb0CZNsHVm2f8xx/bxGnYkjs8PCbVBRCcFC4CR6
	R++FndKm1iKL/Ajw3z3xIS8=
X-Google-Smtp-Source: ABdhPJwQoEepzM8TUpuAi4EiYIxSdz7P1dhrg4wRL2wkFu8cY5bIHX3Yat4y7F+c33vuAIgxm79Rag==
X-Received: by 2002:a2e:99ca:: with SMTP id l10mr3412550ljj.218.1602958865286;
        Sat, 17 Oct 2020 11:21:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:594:: with SMTP id 142ls156543ljf.9.gmail; Sat, 17 Oct
 2020 11:21:04 -0700 (PDT)
X-Received: by 2002:a2e:86d4:: with SMTP id n20mr3887500ljj.293.1602958863959;
        Sat, 17 Oct 2020 11:21:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602958863; cv=none;
        d=google.com; s=arc-20160816;
        b=O29pW186LAX6cATyuzr9OKQdw0HCqSl64OyMRbx/hnaXSbCE/hFP8ZsstGuE9NrBTr
         KNooabnT9gFPSACAEyGOtYdTlev94k8oKEgJn+k3EUWPQfdETOA5NCYJvU36GV7B3Wgt
         qatDIPDX4CCxPfyelDjsH4W9sQWEKBXfRI5wfDpsgRe9DRL4ZQ9aEco/8RZDYkYJ/Fp7
         cAgT4dsTXyaOnmT2beVNvoafj4VZJcnnllCqq60M730dtQuAkSLp8QRg8mZqW6N2HtJu
         u0Oro4YHDsf8ZV+dl7ylUJAGURv8TCcYNiS09qpDiAJOiR4Xk6MZ3b/njGNp5MTcrOlW
         cSww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=H3BndMxk0w2Od5QI8FPcLZ2c+HJ1zdXLlyPDtw6HpUM=;
        b=P4Wh/tbaRSZ/5empG9pxbIoHh9/bzzSgba51em9QRUAnjgpmKC/vlSsRl7gW64/7gm
         S5oCzLD//Qq5C1bOPJayMunXu4eLTuZ8zQEMHQ0x6N3oZUNIlmrQwdesxgsN/7eWIseF
         gexqXgwiHBMTGYfZBKqWFTtErgcw1K3hViZIBpsy3jhJQD0s9Quw7RGjHIsj1kBkBhxY
         28v93mh858aZ5JKle2gN6AvQ1QGgsGjIXo1QRC+FFjvMLztaEVno4fDh5xTKSwUcygxN
         RFAikt0uZuniY0aCL6vGi+c+6CYVIRJjFIg99H5aX2V5kqWTO5BLjyh5FCfnD0BGXk5U
         uEXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p1si129106ljc.0.2020.10.17.11.21.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2020 11:21:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
X-IronPort-AV: E=Sophos;i="5.77,387,1596492000"; 
   d="scan'208";a="473115757"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Oct 2020 20:21:01 +0200
Date: Sat, 17 Oct 2020 20:21:01 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
cc: trix@redhat.com, linux-kernel@vger.kernel.org, 
    cocci <cocci@systeme.lip6.fr>, alsa-devel@alsa-project.org, 
    clang-built-linux@googlegroups.com, linux-iio@vger.kernel.org, 
    nouveau@lists.freedesktop.org, storagedev@microchip.com, 
    dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org, 
    keyrings@vger.kernel.org, linux-mtd@lists.infradead.org, 
    ath10k@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
    usb-storage@lists.one-eyed-alien.net, linux-watchdog@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-samsung-soc@vger.kernel.org, 
    linux-scsi@vger.kernel.org, linux-nvdimm@lists.01.org, 
    amd-gfx@lists.freedesktop.org, linux-acpi@vger.kernel.org, 
    intel-wired-lan@lists.osuosl.org, industrypack-devel@lists.sourceforge.net, 
    linux-pci@vger.kernel.org, spice-devel@lists.freedesktop.org, 
    MPT-FusionLinux.pdl@broadcom.com, linux-media@vger.kernel.org, 
    linux-serial@vger.kernel.org, linux-nfc@lists.01.org, 
    linux-pm@vger.kernel.org, linux-can@vger.kernel.org, 
    linux-block@vger.kernel.org, linux-gpio@vger.kernel.org, 
    xen-devel@lists.xenproject.org, linux-amlogic@lists.infradead.org, 
    openipmi-developer@lists.sourceforge.net, 
    platform-driver-x86@vger.kernel.org, linux-integrity@vger.kernel.org, 
    linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org, 
    netdev@vger.kernel.org, linux-usb@vger.kernel.org, 
    linux-wireless@vger.kernel.org, linux-security-module@vger.kernel.org, 
    linux-crypto@vger.kernel.org, patches@opensource.cirrus.com, 
    bpf@vger.kernel.org, ocfs2-devel@oss.oracle.com, 
    linux-power@fi.rohmeurope.com
Subject: Re: [Cocci] [RFC] treewide: cleanup unreachable breaks
In-Reply-To: <f530b7aeecbbf9654b4540cfa20023a4c2a11889.camel@perches.com>
Message-ID: <alpine.DEB.2.22.394.2010172016370.9440@hadrien>
References: <20201017160928.12698-1-trix@redhat.com> <f530b7aeecbbf9654b4540cfa20023a4c2a11889.camel@perches.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Julia.Lawall@inria.fr
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as
 permitted sender) smtp.mailfrom=julia.lawall@inria.fr
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



On Sat, 17 Oct 2020, Joe Perches wrote:

> On Sat, 2020-10-17 at 09:09 -0700, trix@redhat.com wrote:
> > From: Tom Rix <trix@redhat.com>
> >
> > This is a upcoming change to clean up a new warning treewide.
> > I am wondering if the change could be one mega patch (see below) or
> > normal patch per file about 100 patches or somewhere half way by collecting
> > early acks.
> >
> > clang has a number of useful, new warnings see
> > https://clang.llvm.org/docs/DiagnosticsReference.html
> >
> > This change cleans up -Wunreachable-code-break
> > https://clang.llvm.org/docs/DiagnosticsReference.html#wunreachable-code-break
> > for 266 of 485 warnings in this week's linux-next, allyesconfig on x86_64.
>
> Early acks/individual patches by subsystem would be good.
> Better still would be an automated cocci script.

Coccinelle is not especially good at this, because it is based on control
flow, and a return or goto diverts the control flow away from the break.
A hack to solve the problem is to put an if around the return or goto, but
that gives the break a meaningless file name and line number.  I collected
the following list, but it only has 439 results, so fewer than clang.  But
maybe there are some files that are not considered by clang in the x86
allyesconfig configuration.

Probably checkpatch is the best solution here, since it is not
configuration sensitive and doesn't care about control flow.

julia

drivers/scsi/mvumi.c: function mvumi_cfg_hw_reg line 114
drivers/watchdog/geodewdt.c: function geodewdt_ioctl line 18
drivers/media/usb/b2c2/flexcop-usb.c: function flexcop_usb_init line 21
drivers/media/usb/b2c2/flexcop-usb.c: function flexcop_usb_memory_req line 20
drivers/tty/nozomi.c: function write_mem32 line 17
drivers/tty/nozomi.c: function write_mem32 line 25
drivers/tty/nozomi.c: function read_mem32 line 17
drivers/tty/nozomi.c: function read_mem32 line 21
sound/soc/codecs/wl1273.c: function wl1273_startup line 27
drivers/iio/adc/meson_saradc.c: function meson_sar_adc_iio_info_read_raw line 12
drivers/iio/adc/meson_saradc.c: function meson_sar_adc_iio_info_read_raw line 19
drivers/gpu/drm/amd/display/dc/dcn10/dcn10_resource.c: function map_transmitter_id_to_phy_instance line 6
drivers/gpu/drm/amd/display/dc/dcn10/dcn10_resource.c: function map_transmitter_id_to_phy_instance line 9
drivers/gpu/drm/amd/display/dc/dcn10/dcn10_resource.c: function map_transmitter_id_to_phy_instance line 12
drivers/gpu/drm/amd/display/dc/dcn10/dcn10_resource.c: function map_transmitter_id_to_phy_instance line 15
drivers/media/tuners/mt2063.c: function mt2063_init line 81
drivers/nfc/st21nfca/core.c: function st21nfca_hci_im_transceive line 46
arch/sh/boards/mach-landisk/gio.c: function gio_ioctl line 53
drivers/gpu/drm/mgag200/mgag200_mode.c: function mgag200_crtc_set_plls line 11
drivers/gpu/drm/mgag200/mgag200_mode.c: function mgag200_crtc_set_plls line 15
drivers/gpu/drm/mgag200/mgag200_mode.c: function mgag200_crtc_set_plls line 18
drivers/gpu/drm/mgag200/mgag200_mode.c: function mgag200_crtc_set_plls line 22
drivers/gpu/drm/mgag200/mgag200_mode.c: function mgag200_crtc_set_plls line 25
drivers/media/dvb-frontends/cx24117.c: function cx24117_attach line 16
drivers/block/xen-blkback/blkback.c: function dispatch_rw_block_io line 48
drivers/platform/x86/sony-laptop.c: function __sony_nc_gfx_switch_status_get line 16
drivers/platform/x86/sony-laptop.c: function __sony_nc_gfx_switch_status_get line 22
drivers/platform/x86/sony-laptop.c: function __sony_nc_gfx_switch_status_get line 31
drivers/char/mwave/mwavedd.c: function mwave_ioctl line 288
drivers/scsi/be2iscsi/be_mgmt.c: function beiscsi_adap_family_disp line 15
drivers/scsi/be2iscsi/be_mgmt.c: function beiscsi_adap_family_disp line 19
drivers/scsi/be2iscsi/be_mgmt.c: function beiscsi_adap_family_disp line 22
drivers/scsi/be2iscsi/be_mgmt.c: function beiscsi_adap_family_disp line 27
drivers/iio/imu/bmi160/bmi160_core.c: function bmi160_write_raw line 11
drivers/block/z2ram.c: function z2_open line 138
drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c: function _rtl8723e_set_media_status line 38
samples/hidraw/hid-example.c: function bus_str line 6
samples/hidraw/hid-example.c: function bus_str line 9
samples/hidraw/hid-example.c: function bus_str line 12
samples/hidraw/hid-example.c: function bus_str line 15
samples/hidraw/hid-example.c: function bus_str line 18
drivers/scsi/ipr.c: function ipr_pci_error_detected line 10
drivers/gpio/gpio-bd70528.c: function bd70528_gpio_set_config line 11
drivers/gpio/gpio-bd70528.c: function bd70528_gpio_set_config line 17
drivers/gpio/gpio-bd70528.c: function bd70528_gpio_set_config line 21
drivers/pinctrl/pinctrl-rockchip.c: function rockchip_pinconf_get line 71
drivers/pinctrl/pinctrl-rockchip.c: function rockchip_pinconf_set line 74
drivers/gpu/drm/amd/display/include/signal_types.h: function dc_is_dvi_signal line 6
security/keys/trusted-keys/trusted_tpm1.c: function datablob_parse line 63
arch/x86/math-emu/fpu_trig.c: function fyl2xp1 line 71
drivers/usb/gadget/function/f_hid.c: function hidg_setup line 26
drivers/usb/gadget/function/f_hid.c: function hidg_setup line 34
drivers/usb/gadget/function/f_hid.c: function hidg_setup line 40
drivers/usb/gadget/function/f_hid.c: function hidg_setup line 58
drivers/usb/gadget/function/f_hid.c: function hidg_setup line 76
drivers/usb/gadget/function/f_hid.c: function hidg_setup line 84
drivers/usb/gadget/function/f_hid.c: function hidg_setup line 90
drivers/usb/gadget/function/f_hid.c: function hidg_setup line 98
drivers/staging/rts5208/rtsx_scsi.c: function start_stop_unit line 29
drivers/platform/x86/wmi.c: function acpi_wmi_ec_space_handler line 31
drivers/platform/x86/wmi.c: function acpi_wmi_ec_space_handler line 34
drivers/platform/x86/wmi.c: function acpi_wmi_ec_space_handler line 37
drivers/nvdimm/claim.c: function nd_namespace_store line 72
sound/soc/ti/davinci-mcasp.c: function davinci_mcasp_probe line 265
drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c: function mcp77_clk_read line 66
drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c: function mcp77_clk_read line 73
drivers/gpu/drm/nouveau/nvkm/subdev/clk/mcp77.c: function mcp77_clk_read line 76
tools/testing/selftests/powerpc/pmu/ebb/trace.c: function trace_decode_reg line 3
tools/testing/selftests/powerpc/pmu/ebb/trace.c: function trace_decode_reg line 4
tools/testing/selftests/powerpc/pmu/ebb/trace.c: function trace_decode_reg line 5
tools/testing/selftests/powerpc/pmu/ebb/trace.c: function trace_decode_reg line 6
tools/testing/selftests/powerpc/pmu/ebb/trace.c: function trace_decode_reg line 7
tools/testing/selftests/powerpc/pmu/ebb/trace.c: function trace_decode_reg line 8
tools/testing/selftests/powerpc/pmu/ebb/trace.c: function trace_decode_reg line 9
tools/testing/selftests/powerpc/pmu/ebb/trace.c: function trace_decode_reg line 10
tools/testing/selftests/powerpc/pmu/ebb/trace.c: function trace_decode_reg line 11
tools/testing/selftests/powerpc/pmu/ebb/trace.c: function trace_decode_reg line 12
tools/testing/selftests/powerpc/pmu/ebb/trace.c: function trace_decode_reg line 13
tools/testing/selftests/powerpc/pmu/ebb/trace.c: function trace_decode_reg line 14
tools/testing/selftests/powerpc/pmu/ebb/trace.c: function trace_decode_reg line 15
tools/testing/selftests/powerpc/pmu/ebb/trace.c: function trace_decode_reg line 16
tools/testing/selftests/powerpc/pmu/ebb/trace.c: function trace_decode_reg line 17
tools/testing/selftests/powerpc/pmu/ebb/trace.c: function trace_decode_reg line 18
tools/testing/selftests/powerpc/pmu/ebb/trace.c: function trace_decode_reg line 19
tools/testing/selftests/powerpc/pmu/ebb/trace.c: function trace_decode_reg line 20
tools/testing/selftests/powerpc/pmu/ebb/trace.c: function trace_decode_reg line 21
drivers/media/usb/pwc/pwc-if.c: function usb_pwc_probe line 91
drivers/media/usb/pwc/pwc-if.c: function usb_pwc_probe line 103
drivers/media/usb/pwc/pwc-if.c: function usb_pwc_probe line 162
drivers/media/usb/pwc/pwc-if.c: function usb_pwc_probe line 188
drivers/media/usb/pwc/pwc-if.c: function usb_pwc_probe line 207
drivers/media/usb/pwc/pwc-if.c: function usb_pwc_probe line 219
drivers/media/usb/pwc/pwc-if.c: function usb_pwc_probe line 232
drivers/media/usb/pwc/pwc-if.c: function usb_pwc_probe line 250
drivers/media/dvb-frontends/drx39xyj/drxj.c: function ctrl_set_standard line 76
drivers/media/dvb-frontends/drx39xyj/drxj.c: function ctrl_set_uio_cfg line 65
drivers/media/dvb-frontends/drx39xyj/drxj.c: function ctrl_set_uio_cfg line 90
drivers/media/dvb-frontends/drx39xyj/drxj.c: function ctrl_set_uio_cfg line 115
drivers/media/dvb-frontends/drx39xyj/drxj.c: function hi_command line 52
drivers/media/dvb-frontends/drx39xyj/drxj.c: function get_device_capabilities line 182
drivers/media/dvb-frontends/drx39xyj/drxj.c: function ctrl_power_mode line 40
drivers/media/dvb-frontends/drx39xyj/drxj.c: function drx_ctrl_u_code line 159
drivers/macintosh/via-pmu-led.c: function pmu_led_set line 15
drivers/net/wan/lmc/lmc_proto.c: function lmc_proto_type line 5
drivers/net/wan/lmc/lmc_proto.c: function lmc_proto_type line 8
drivers/net/wan/lmc/lmc_proto.c: function lmc_proto_type line 11
drivers/net/wan/lmc/lmc_proto.c: function lmc_proto_type line 15
drivers/net/wireless/realtek/rtlwifi/rtl8821ae/phy.c: function rtl8812ae_phy_config_rf_with_headerfile line 20
drivers/net/wireless/realtek/rtlwifi/rtl8821ae/phy.c: function rtl8812ae_phy_config_rf_with_headerfile line 26
drivers/net/wireless/realtek/rtlwifi/rtl8821ae/phy.c: function rtl8821ae_phy_config_rf_with_headerfile line 18
arch/mips/loongson2ef/common/cs5536/cs5536_isa.c: function pci_isa_read_reg line 48
arch/mips/loongson2ef/common/cs5536/cs5536_isa.c: function pci_isa_read_reg line 51
arch/mips/loongson2ef/common/cs5536/cs5536_isa.c: function pci_isa_read_reg line 54
arch/mips/loongson2ef/common/cs5536/cs5536_isa.c: function pci_isa_read_reg line 59
arch/mips/loongson2ef/common/cs5536/cs5536_isa.c: function pci_isa_read_reg line 62
arch/mips/include/asm/mach-au1x00/au1000.h: function alchemy_get_cputype line 5
arch/mips/include/asm/mach-au1x00/au1000.h: function alchemy_get_cputype line 8
arch/mips/include/asm/mach-au1x00/au1000.h: function alchemy_get_cputype line 11
arch/mips/include/asm/mach-au1x00/au1000.h: function alchemy_get_cputype line 14
arch/mips/include/asm/mach-au1x00/au1000.h: function alchemy_get_cputype line 18
arch/mips/include/asm/mach-au1x00/au1000.h: function alchemy_get_cputype line 21
arch/x86/kernel/cpu/microcode/amd.c: function __verify_patch_size line 21
drivers/scsi/aic94xx/aic94xx_task.c: function asd_task_tasklet_complete line 78
drivers/parport/parport_ip32.c: function parport_ip32_fifo_supported line 27
drivers/staging/comedi/drivers/ni_mio_common.c: function ni_serial_insn_config line 90
drivers/power/supply/ipaq_micro_battery.c: function get_capacity line 7
drivers/power/supply/ipaq_micro_battery.c: function get_capacity line 10
drivers/power/supply/ipaq_micro_battery.c: function get_capacity line 13
drivers/net/wireless/marvell/mwifiex/cfg80211.c: function mwifiex_cfg80211_change_virtual_intf line 95
drivers/net/wireless/marvell/mwifiex/cfg80211.c: function mwifiex_cfg80211_change_virtual_intf line 143
fs/ocfs2/cluster/tcp.c: function o2net_process_message line 33
drivers/scsi/hpsa.c: function find_PCI_BAR_index line 27
drivers/s390/char/tape_34xx.c: function tape_34xx_unit_check line 351
drivers/scsi/nsp32.c: function nsp32_msgin_occur line 193
drivers/scsi/nsp32.c: function nsp32_msgin_occur line 204
drivers/scsi/nsp32.c: function nsp32_msgin_occur line 215
drivers/scsi/nsp32.c: function nsp32_msgin_occur line 220
drivers/usb/misc/iowarrior.c: function iowarrior_write line 44
drivers/usb/misc/iowarrior.c: function iowarrior_write line 114
drivers/usb/misc/iowarrior.c: function iowarrior_write line 121
drivers/gpu/drm/amd/display/dc/dce100/dce100_resource.c: function map_transmitter_id_to_phy_instance line 6
drivers/gpu/drm/amd/display/dc/dce100/dce100_resource.c: function map_transmitter_id_to_phy_instance line 9
drivers/gpu/drm/amd/display/dc/dce100/dce100_resource.c: function map_transmitter_id_to_phy_instance line 12
drivers/gpu/drm/amd/display/dc/dce100/dce100_resource.c: function map_transmitter_id_to_phy_instance line 15
drivers/gpu/drm/amd/display/dc/dce100/dce100_resource.c: function map_transmitter_id_to_phy_instance line 18
drivers/gpu/drm/amd/display/dc/dce100/dce100_resource.c: function map_transmitter_id_to_phy_instance line 21
drivers/gpu/drm/amd/display/dc/dce100/dce100_resource.c: function map_transmitter_id_to_phy_instance line 24
drivers/usb/image/microtek.c: function mts_show_command line 72
security/safesetid/lsm.c: function safesetid_security_capable line 41
security/safesetid/lsm.c: function safesetid_security_capable line 57
security/safesetid/lsm.c: function safesetid_security_capable line 61
arch/powerpc/net/bpf_jit_comp.c: function bpf_jit_build_body line 345
arch/mips/rb532/setup.c: function get_system_type line 5
arch/mips/rb532/setup.c: function get_system_type line 8
sound/soc/intel/skylake/skl-pcm.c: function skl_pcm_trigger line 46
drivers/scsi/pcmcia/nsp_cs.c: function nspintr line 151
drivers/usb/storage/freecom.c: function freecom_transport line 220
drivers/gpu/drm/radeon/radeon_i2c.c: function r100_hw_i2c_xfer line 133
drivers/power/supply/wm831x_power.c: function wm831x_power_probe line 141
drivers/platform/x86/acer-wmi.c: function AMW0_set_u32 line 34
drivers/scsi/bnx2fc/bnx2fc_hwi.c: function bnx2fc_process_unsol_compl line 150
drivers/isdn/mISDN/dsp_dtmf.c: function dsp_dtmf_goertzel_decode line 57
drivers/gpu/drm/amd/display/dc/dce112/dce112_resource.c: function map_transmitter_id_to_phy_instance line 6
drivers/gpu/drm/amd/display/dc/dce112/dce112_resource.c: function map_transmitter_id_to_phy_instance line 9
drivers/gpu/drm/amd/display/dc/dce112/dce112_resource.c: function map_transmitter_id_to_phy_instance line 12
drivers/gpu/drm/amd/display/dc/dce112/dce112_resource.c: function map_transmitter_id_to_phy_instance line 15
drivers/gpu/drm/amd/display/dc/dce112/dce112_resource.c: function map_transmitter_id_to_phy_instance line 18
drivers/gpu/drm/amd/display/dc/dce112/dce112_resource.c: function map_transmitter_id_to_phy_instance line 21
drivers/gpu/drm/amd/display/dc/dce112/dce112_resource.c: function map_transmitter_id_to_phy_instance line 24
drivers/s390/scsi/zfcp_fc.c: function zfcp_fc_job_wka_port line 22
drivers/s390/scsi/zfcp_fc.c: function zfcp_fc_job_wka_port line 25
drivers/media/dvb-frontends/stv0900_core.c: function stv0900_attach line 52
drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c: function ixgbe_calc_eeprom_checksum_X540 line 47
drivers/scsi/isci/phy.c: function sci_phy_event_handler line 72
drivers/scsi/isci/phy.c: function sci_phy_event_handler line 277
drivers/vme/vme.c: function find_bridge line 8
drivers/vme/vme.c: function find_bridge line 13
drivers/vme/vme.c: function find_bridge line 18
drivers/vme/vme.c: function find_bridge line 23
drivers/vme/vme.c: function find_bridge line 27
drivers/vme/vme.c: function vme_get_size line 16
drivers/vme/vme.c: function vme_get_size line 25
drivers/vme/vme.c: function vme_get_size line 28
drivers/vme/vme.c: function vme_get_size line 32
drivers/scsi/lpfc/lpfc_debugfs.c: function lpfc_idiag_pcicfg_read line 59
drivers/scsi/lpfc/lpfc_debugfs.c: function lpfc_idiag_queacc_write line 64
drivers/scsi/lpfc/lpfc_debugfs.c: function lpfc_idiag_queacc_write line 120
drivers/scsi/lpfc/lpfc_debugfs.c: function lpfc_idiag_queacc_write line 135
drivers/scsi/lpfc/lpfc_debugfs.c: function lpfc_idiag_queacc_write line 180
drivers/scsi/lpfc/lpfc_debugfs.c: function lpfc_idiag_queacc_write line 207
drivers/scsi/lpfc/lpfc_debugfs.c: function lpfc_idiag_queacc_write line 210
drivers/gpu/drm/qxl/qxl_ioctl.c: function qxl_process_single_command line 21
drivers/gpu/drm/amd/display/dc/dce110/dce110_resource.c: function map_transmitter_id_to_phy_instance line 6
drivers/gpu/drm/amd/display/dc/dce110/dce110_resource.c: function map_transmitter_id_to_phy_instance line 9
drivers/gpu/drm/amd/display/dc/dce110/dce110_resource.c: function map_transmitter_id_to_phy_instance line 12
drivers/gpu/drm/amd/display/dc/dce110/dce110_resource.c: function map_transmitter_id_to_phy_instance line 15
drivers/gpu/drm/amd/display/dc/dce110/dce110_resource.c: function map_transmitter_id_to_phy_instance line 18
drivers/gpu/drm/amd/display/dc/dce110/dce110_resource.c: function map_transmitter_id_to_phy_instance line 21
drivers/gpu/drm/amd/display/dc/dce110/dce110_resource.c: function map_transmitter_id_to_phy_instance line 24
drivers/net/wireless/ath/ath10k/htt_rx.c: function ath10k_htt_t2h_msg_handler line 119
drivers/gpu/drm/nouveau/nvkm/subdev/bios/pll.c: function pll_map line 11
drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c: function nv50_ram_timing_read line 24
sound/pci/rme9652/rme9652.c: function rme9652_spdif_sample_rate line 34
sound/pci/rme9652/rme9652.c: function rme9652_spdif_sample_rate line 38
sound/pci/rme9652/rme9652.c: function rme9652_spdif_sample_rate line 42
sound/pci/rme9652/rme9652.c: function rme9652_spdif_sample_rate line 46
sound/pci/rme9652/rme9652.c: function rme9652_spdif_sample_rate line 50
sound/pci/rme9652/rme9652.c: function rme9652_spdif_sample_rate line 54
sound/pci/rme9652/rme9652.c: function rme9652_spdif_sample_rate line 61
drivers/gpu/drm/amd/amdgpu/dce_v11_0.c: function dce_v11_0_pick_dig_encoder line 32
drivers/media/usb/go7007/go7007-usb.c: function go7007_usb_probe line 58
drivers/pnp/pnpbios/rsparser.c: function pnpbios_encode_allocated_resource_data line 95
drivers/pnp/pnpbios/rsparser.c: function pnpbios_parse_compatible_ids line 48
drivers/pnp/pnpbios/rsparser.c: function pnpbios_parse_allocated_resource_data line 120
drivers/net/wireless/ath/ath6kl/testmode.c: function ath6kl_tm_cmd line 31
drivers/misc/mei/hbm.c: function mei_hbm_dispatch line 277
drivers/scsi/hptiop.c: function hptiop_finish_scsi_req line 45
drivers/pinctrl/samsung/pinctrl-s3c24xx.c: function s3c24xx_eint_get_trigger line 5
drivers/pinctrl/samsung/pinctrl-s3c24xx.c: function s3c24xx_eint_get_trigger line 8
drivers/pinctrl/samsung/pinctrl-s3c24xx.c: function s3c24xx_eint_get_trigger line 11
drivers/pinctrl/samsung/pinctrl-s3c24xx.c: function s3c24xx_eint_get_trigger line 14
drivers/pinctrl/samsung/pinctrl-s3c24xx.c: function s3c24xx_eint_get_trigger line 17
drivers/base/power/main.c: function pm_op line 18
kernel/bpf/syscall.c: function attach_type_to_prog_type line 7
drivers/pci/hotplug/ibmphp_pci.c: function ibmphp_configure_card line 234
drivers/pci/hotplug/ibmphp_pci.c: function unconfigure_boot_card line 96
drivers/scsi/fcoe/fcoe.c: function fcoe_device_notification line 54
drivers/scsi/lpfc/lpfc_sli.c: function lpfc_mbox_api_table_setup line 26
drivers/scsi/lpfc/lpfc_sli.c: function lpfc_sli_api_table_setup line 18
drivers/scsi/lpfc/lpfc_sli.c: function lpfc_sli4_iocb2wqe line 567
drivers/media/dvb-frontends/drxd_hard.c: function CorrectSysClockDeviation line 43
tools/perf/util/probe-event.c: function parse_perf_probe_point line 174
drivers/scsi/bfa/bfa_ioc.h: function bfa_cb_image_get_chunk line 6
drivers/scsi/bfa/bfa_ioc.h: function bfa_cb_image_get_chunk line 9
drivers/scsi/bfa/bfa_ioc.h: function bfa_cb_image_get_chunk line 12
drivers/scsi/bfa/bfa_ioc.h: function bfa_cb_image_get_size line 6
drivers/scsi/bfa/bfa_ioc.h: function bfa_cb_image_get_size line 9
drivers/scsi/bfa/bfa_ioc.h: function bfa_cb_image_get_size line 12
drivers/gpu/drm/amd/display/dc/dce120/dce120_resource.c: function map_transmitter_id_to_phy_instance line 6
drivers/gpu/drm/amd/display/dc/dce120/dce120_resource.c: function map_transmitter_id_to_phy_instance line 9
drivers/gpu/drm/amd/display/dc/dce120/dce120_resource.c: function map_transmitter_id_to_phy_instance line 12
drivers/gpu/drm/amd/display/dc/dce120/dce120_resource.c: function map_transmitter_id_to_phy_instance line 15
drivers/gpu/drm/amd/display/dc/dce120/dce120_resource.c: function map_transmitter_id_to_phy_instance line 18
drivers/gpu/drm/amd/display/dc/dce120/dce120_resource.c: function map_transmitter_id_to_phy_instance line 21
drivers/gpu/drm/amd/display/dc/dce120/dce120_resource.c: function map_transmitter_id_to_phy_instance line 24
drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c: function _rtl88ee_set_media_status line 35
sound/oss/dmasound/dmasound_core.c: function sq_ioctl line 12
sound/oss/dmasound/dmasound_core.c: function sq_ioctl line 16
sound/oss/dmasound/dmasound_core.c: function sq_ioctl line 33
sound/oss/dmasound/dmasound_core.c: function sq_ioctl line 57
sound/oss/dmasound/dmasound_core.c: function sq_ioctl line 143
sound/oss/dmasound/dmasound_core.c: function get_afmt_string line 5
sound/oss/dmasound/dmasound_core.c: function get_afmt_string line 8
sound/oss/dmasound/dmasound_core.c: function get_afmt_string line 11
sound/oss/dmasound/dmasound_core.c: function get_afmt_string line 14
sound/oss/dmasound/dmasound_core.c: function get_afmt_string line 17
sound/oss/dmasound/dmasound_core.c: function get_afmt_string line 20
sound/oss/dmasound/dmasound_core.c: function get_afmt_string line 23
sound/oss/dmasound/dmasound_core.c: function get_afmt_string line 26
sound/oss/dmasound/dmasound_core.c: function get_afmt_string line 29
drivers/s390/char/tape_3590.c: function tape_3590_erp_read_opposite line 15
drivers/gpu/drm/amd/display/dc/dce80/dce80_resource.c: function map_transmitter_id_to_phy_instance line 6
drivers/gpu/drm/amd/display/dc/dce80/dce80_resource.c: function map_transmitter_id_to_phy_instance line 9
drivers/gpu/drm/amd/display/dc/dce80/dce80_resource.c: function map_transmitter_id_to_phy_instance line 12
drivers/gpu/drm/amd/display/dc/dce80/dce80_resource.c: function map_transmitter_id_to_phy_instance line 15
drivers/gpu/drm/amd/display/dc/dce80/dce80_resource.c: function map_transmitter_id_to_phy_instance line 18
drivers/gpu/drm/amd/display/dc/dce80/dce80_resource.c: function map_transmitter_id_to_phy_instance line 21
drivers/gpu/drm/amd/display/dc/dce80/dce80_resource.c: function map_transmitter_id_to_phy_instance line 24
drivers/media/usb/ttusb-dec/ttusb_dec.c: function ttusb_dec_start_feed line 16
drivers/media/usb/ttusb-dec/ttusb_dec.c: function ttusb_dec_start_feed line 20
drivers/media/usb/ttusb-dec/ttusb_dec.c: function ttusb_dec_stop_feed line 7
drivers/media/usb/ttusb-dec/ttusb_dec.c: function ttusb_dec_stop_feed line 11
drivers/net/ethernet/cisco/enic/enic_ethtool.c: function enic_grxclsrule line 19
security/integrity/ima/ima_appraise.c: function ima_get_hash_algo line 18
sound/pci/rme9652/hdspm.c: function hdspm_get_aes_sample_rate line 8
sound/pci/rme9652/hdspm.c: function hdspm_wc_sync_check line 16
sound/pci/rme9652/hdspm.c: function hdspm_wc_sync_check line 29
sound/pci/rme9652/hdspm.c: function hdspm_wc_sync_check line 43
sound/pci/rme9652/hdspm.c: function hdspm_get_tco_sample_rate line 10
sound/pci/rme9652/hdspm.c: function hdspm_get_sync_in_sample_rate line 10
sound/pci/rme9652/hdspm.c: function hdspm_get_wc_sample_rate line 9
drivers/nfc/trf7970a.c: function trf7970a_is_iso15693_write_or_lock line 11
drivers/media/usb/gspca/pac_common.h: function pac_find_sof line 45
drivers/net/ethernet/aquantia/atlantic/aq_nic.c: function aq_nic_set_link_ksettings line 46
drivers/scsi/lpfc/lpfc_scsi.c: function lpfc_scsi_api_table_setup line 25
drivers/media/dvb-frontends/nxt200x.c: function nxt200x_readreg_multibyte line 18
drivers/media/dvb-frontends/nxt200x.c: function nxt200x_readreg_multibyte line 41
drivers/media/dvb-frontends/nxt200x.c: function nxt200x_readreg_multibyte line 44
drivers/media/dvb-frontends/nxt200x.c: function nxt200x_writereg_multibyte line 30
drivers/media/dvb-frontends/nxt200x.c: function nxt200x_writereg_multibyte line 54
drivers/media/dvb-frontends/nxt200x.c: function nxt200x_setup_frontend_parameters line 33
drivers/media/dvb-frontends/nxt200x.c: function nxt200x_setup_frontend_parameters line 58
drivers/media/dvb-frontends/nxt200x.c: function nxt200x_setup_frontend_parameters line 72
drivers/media/dvb-frontends/nxt200x.c: function nxt200x_setup_frontend_parameters line 88
drivers/media/dvb-frontends/nxt200x.c: function nxt200x_setup_frontend_parameters line 104
drivers/media/dvb-frontends/nxt200x.c: function nxt200x_setup_frontend_parameters line 116
drivers/media/dvb-frontends/nxt200x.c: function nxt200x_setup_frontend_parameters line 142
drivers/media/dvb-frontends/nxt200x.c: function nxt200x_setup_frontend_parameters line 198
drivers/media/dvb-frontends/nxt200x.c: function nxt200x_setup_frontend_parameters line 220
drivers/media/dvb-frontends/nxt200x.c: function nxt200x_init line 15
drivers/media/dvb-frontends/nxt200x.c: function nxt200x_writetuner line 57
drivers/tty/serial/imx.c: function imx_uart_readl line 5
drivers/tty/serial/imx.c: function imx_uart_readl line 16
drivers/tty/serial/imx.c: function imx_uart_readl line 19
drivers/tty/serial/imx.c: function imx_uart_readl line 22
drivers/tty/serial/imx.c: function imx_uart_readl line 25
drivers/crypto/atmel-sha.c: function atmel_sha_init line 37
drivers/edac/amd64_edac.c: function map_err_sym_to_channel line 7
drivers/edac/amd64_edac.c: function map_err_sym_to_channel line 11
drivers/edac/amd64_edac.c: function map_err_sym_to_channel line 14
drivers/edac/amd64_edac.c: function map_err_sym_to_channel line 24
drivers/edac/amd64_edac.c: function map_err_sym_to_channel line 28
drivers/edac/amd64_edac.c: function map_err_sym_to_channel line 31
drivers/edac/amd64_edac.c: function map_err_sym_to_channel line 34
drivers/gpu/drm/amd/display/dc/dce60/dce60_resource.c: function map_transmitter_id_to_phy_instance line 6
drivers/gpu/drm/amd/display/dc/dce60/dce60_resource.c: function map_transmitter_id_to_phy_instance line 9
drivers/gpu/drm/amd/display/dc/dce60/dce60_resource.c: function map_transmitter_id_to_phy_instance line 12
drivers/gpu/drm/amd/display/dc/dce60/dce60_resource.c: function map_transmitter_id_to_phy_instance line 15
drivers/gpu/drm/amd/display/dc/dce60/dce60_resource.c: function map_transmitter_id_to_phy_instance line 18
drivers/gpu/drm/amd/display/dc/dce60/dce60_resource.c: function map_transmitter_id_to_phy_instance line 21
drivers/gpu/drm/amd/display/dc/dce60/dce60_resource.c: function map_transmitter_id_to_phy_instance line 24
drivers/scsi/st.c: function st_int_ioctl line 155
drivers/infiniband/hw/cxgb4/qp.c: function c4iw_modify_qp line 146
drivers/infiniband/hw/cxgb4/qp.c: function c4iw_modify_qp line 195
drivers/infiniband/hw/cxgb4/qp.c: function c4iw_modify_qp line 200
drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c: function mcp251xfd_get_mode_str line 4
drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c: function mcp251xfd_get_mode_str line 6
drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c: function mcp251xfd_get_mode_str line 8
drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c: function mcp251xfd_get_mode_str line 10
drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c: function mcp251xfd_get_mode_str line 12
drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c: function mcp251xfd_get_mode_str line 14
drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c: function mcp251xfd_get_mode_str line 16
drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c: function mcp251xfd_get_mode_str line 18
drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c: function __mcp251xfd_get_model_str line 4
drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c: function __mcp251xfd_get_model_str line 6
drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c: function __mcp251xfd_get_model_str line 8
drivers/ata/libata-scsi.c: function ata_get_xlat_func line 35
drivers/char/ipmi/ipmi_devintf.c: function ipmi_ioctl line 201
arch/arm/nwfpe/fpa11_cprt.c: function EmulateCPRT line 15
arch/arm/nwfpe/fpa11_cprt.c: function EmulateCPRT line 18
drivers/vme/bridges/vme_ca91cx42.c: function ca91cx42_dma_list_add line 108
drivers/vme/bridges/vme_ca91cx42.c: function ca91cx42_master_set line 92
drivers/vme/bridges/vme_ca91cx42.c: function ca91cx42_master_set line 124
drivers/vme/bridges/vme_ca91cx42.c: function ca91cx42_slave_set line 39
drivers/vme/bridges/vme_ca91cx42.c: function ca91cx42_lm_set line 45
drivers/scsi/sym53c8xx_2/sym_hipd.c: function sym_int_sir line 230
drivers/gpu/drm/radeon/r300.c: function r300_packet0_check line 534
drivers/gpu/drm/amd/amdgpu/atombios_encoders.c: function amdgpu_atombios_encoder_get_encoder_mode line 70
drivers/gpu/drm/amd/amdgpu/atombios_encoders.c: function amdgpu_atombios_encoder_get_encoder_mode line 96
drivers/gpu/drm/amd/amdgpu/atombios_encoders.c: function amdgpu_atombios_encoder_get_encoder_mode line 103
drivers/media/dvb-frontends/si21xx.c: function si21xx_set_voltage line 15
drivers/media/dvb-frontends/si21xx.c: function si21xx_set_voltage line 18
drivers/staging/vme/devices/vme_user.c: function vme_user_ioctl line 75
drivers/staging/vme/devices/vme_user.c: function vme_user_ioctl line 119
drivers/mmc/host/atmel-mci.c: function atmci_tasklet_func line 197
drivers/irqchip/irq-mips-gic.c: function gic_ipi_domain_match line 9
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c: function input_buffer_configuration line 47
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c: function input_buffer_configuration line 84
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c: function input_system_configure_channel line 14
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c: function input_system_configure_channel line 17
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c: function input_system_configure_channel line 20
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c: function input_system_configure_channel line 23
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c: function configuration_to_registers line 83
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c: function input_system_configure_channel_sensor line 82
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c: function input_system_configure_channel_sensor line 85
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c: function input_system_configure_channel_sensor line 88
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c: function input_system_configure_channel_sensor line 91
drivers/net/ethernet/8390/mac8390.c: function mac8390_ident line 27
drivers/net/ethernet/8390/mac8390.c: function mac8390_ident line 42
drivers/irqchip/irq-crossbar.c: function crossbar_of_init line 100
drivers/mtd/devices/ms02-nv.c: function ms02nv_init line 21
arch/powerpc/platforms/cell/spufs/switch.c: function __do_spu_restore line 21
arch/powerpc/platforms/cell/spufs/switch.c: function __do_spu_save line 23
arch/powerpc/include/asm/kvm_book3s_64.h: function kvmppc_hpte_page_shifts line 11
arch/powerpc/include/asm/kvm_book3s_64.h: function kvmppc_hpte_page_shifts line 14
arch/powerpc/include/asm/kvm_book3s_64.h: function kvmppc_hpte_page_shifts line 17
arch/powerpc/include/asm/kvm_book3s_64.h: function kvmppc_hpte_page_shifts line 20
arch/x86/kernel/cpu/mce/core.c: function __mcheck_cpu_ancient_init line 10
arch/x86/kernel/cpu/mce/core.c: function __mcheck_cpu_ancient_init line 14
sound/pci/echoaudio/midi.c: function mtc_process_data line 10
sound/pci/echoaudio/midi.c: function mtc_process_data line 14
sound/pci/rme32.c: function snd_rme32_capture_getrate line 36
tools/power/acpi/tools/acpidbg/acpidbg.c: function main line 33
tools/power/acpi/tools/acpidbg/acpidbg.c: function main line 39
drivers/scsi/lpfc/lpfc_init.c: function lpfc_init_api_table_setup line 22
drivers/gpu/drm/amd/amdgpu/dce_v10_0.c: function dce_v10_0_pick_dig_encoder line 32
drivers/acpi/utils.c: function acpi_extract_package line 66
drivers/acpi/utils.c: function acpi_extract_package line 91
drivers/acpi/utils.c: function acpi_extract_package line 106
drivers/acpi/utils.c: function acpi_extract_package line 117
drivers/char/lp.c: function lp_do_ioctl line 48
drivers/mtd/mtdchar.c: function mtdchar_ioctl line 265
drivers/mtd/mtdchar.c: function mtdchar_ioctl line 276
arch/x86/kvm/emulate.c: function writeback line 26
drivers/usb/host/xhci-mem.c: function xhci_setup_addressable_virt_dev line 46
drivers/media/usb/tm6000/tm6000-core.c: function tm6000_set_audio_rinput line 26
drivers/media/usb/tm6000/tm6000-core.c: function tm6000_set_audio_rinput line 48
drivers/media/usb/tm6000/tm6000-core.c: function tm6000_tvaudio_set_mute line 26
drivers/media/dvb-frontends/dib0090.c: function dib0090_fw_identify line 79
drivers/media/dvb-frontends/dib0090.c: function dib0090_identify line 81
drivers/net/dsa/b53/b53_common.c: function b53_switch_init line 46
drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c: function iwl_mvm_mac_ctx_send line 9
drivers/gpu/drm/amd/display/dc/dcn21/dcn21_resource.c: function map_transmitter_id_to_phy_instance line 6
drivers/gpu/drm/amd/display/dc/dcn21/dcn21_resource.c: function map_transmitter_id_to_phy_instance line 9
drivers/gpu/drm/amd/display/dc/dcn21/dcn21_resource.c: function map_transmitter_id_to_phy_instance line 12
drivers/gpu/drm/amd/display/dc/dcn21/dcn21_resource.c: function map_transmitter_id_to_phy_instance line 15
drivers/gpu/drm/amd/display/dc/dcn21/dcn21_resource.c: function map_transmitter_id_to_phy_instance line 18
sound/soc/sh/hac.c: function hac_hw_params line 19
drivers/gpu/drm/radeon/atombios_encoders.c: function atombios_get_encoder_mode line 83
drivers/gpu/drm/radeon/atombios_encoders.c: function atombios_get_encoder_mode line 119
drivers/gpu/drm/radeon/atombios_encoders.c: function atombios_get_encoder_mode line 126
drivers/pci/controller/pci-v3-semi.c: function v3_get_dma_range_config line 64
drivers/video/fbdev/amifb.c: function amifb_probe line 90
drivers/video/fbdev/amifb.c: function ami_decode_var line 84
fs/efs/inode.c: function efs_iget line 120
drivers/vme/bridges/vme_tsi148.c: function tsi148_dma_list_add line 81
drivers/vme/bridges/vme_tsi148.c: function tsi148_dma_list_add line 119
drivers/vme/bridges/vme_tsi148.c: function tsi148_master_set line 191
drivers/vme/bridges/vme_tsi148.c: function tsi148_slave_set line 38
drivers/vme/bridges/vme_tsi148.c: function tsi148_dma_set_vme_dest_attributes line 87
drivers/vme/bridges/vme_tsi148.c: function tsi148_dma_set_vme_src_attributes line 87
drivers/vme/bridges/vme_tsi148.c: function tsi148_lm_set line 41
net/ipv4/fib_frontend.c: function fib_gw_from_via line 35
arch/arm/mach-s3c/mach-rx1950.c: function rx1950_led_blink_set line 17
tools/perf/ui/stdio/hist.c: function hist_entry_callchain__fprintf line 15
tools/perf/ui/stdio/hist.c: function hist_entry_callchain__fprintf line 21
tools/perf/ui/stdio/hist.c: function hist_entry_callchain__fprintf line 24
tools/perf/ui/stdio/hist.c: function hist_entry_callchain__fprintf line 27
drivers/usb/serial/iuu_phoenix.c: function iuu_uart_baud line 74
drivers/usb/serial/iuu_phoenix.c: function iuu_uart_baud line 88
drivers/gpu/drm/amd/amdgpu/dce_v8_0.c: function dce_v8_0_pick_dig_encoder line 32
drivers/net/hyperv/netvsc.c: function netvsc_process_raw_pkt line 19
drivers/gpu/drm/amd/display/dc/dcn20/dcn20_resource.c: function map_transmitter_id_to_phy_instance line 6
drivers/gpu/drm/amd/display/dc/dcn20/dcn20_resource.c: function map_transmitter_id_to_phy_instance line 9
drivers/gpu/drm/amd/display/dc/dcn20/dcn20_resource.c: function map_transmitter_id_to_phy_instance line 12
drivers/gpu/drm/amd/display/dc/dcn20/dcn20_resource.c: function map_transmitter_id_to_phy_instance line 15
drivers/gpu/drm/amd/display/dc/dcn20/dcn20_resource.c: function map_transmitter_id_to_phy_instance line 18
drivers/gpu/drm/amd/display/dc/dcn20/dcn20_resource.c: function map_transmitter_id_to_phy_instance line 21
drivers/cpufreq/e_powersaver.c: function eps_cpu_init line 55

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.22.394.2010172016370.9440%40hadrien.
