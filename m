Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBEN5ZHYAKGQE4NWEGDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 78268130A25
	for <lists+clang-built-linux@lfdr.de>; Sun,  5 Jan 2020 23:09:22 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id p3sf7093246qvt.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 05 Jan 2020 14:09:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578262161; cv=pass;
        d=google.com; s=arc-20160816;
        b=fsJkcozV0zV6SWUjRbqLHMJa954ez4nP8Yyx92Un2XNw8o0QH1MBkQHXUvb6bTnPdN
         m2tz7QJW5kPVncEK14xPU0XFrTwoT6y3DEe2bXynKFL9MxT598uBaFeXCDV/quyYntYQ
         aQpf7PIH8bMSzM5IHLQk0eitII74ILlz4zXkUFN+Nyrc+vFFVKFGEPpGaEB47Fl/Z5dz
         /zNgmBWAMifFp13z6qW/MPjENBoBQk+t1SyMQExXyBV57UH0Z2WkEypPNTk8ZaJi/Eij
         cXwEXIvf1QTVMyeiAQyOb5xrd4mcVLefBTn3VAewsMCEJhZclGMkW3acw1LSBSfMk2dZ
         lsXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KWYsTkfWPrY0tovORDV3w1KjHAgHjR8RVi6OaR9EuMk=;
        b=qwVrIz0ldrzHN5kZI+4K6mHs+G9O6vx88Yie7lL8FtH+8RezVQjzv1TjhfdlDosQui
         7Oy/gWLv4sk+OBCLV179TIgOuS8icqGpb9Z7Xqid3/xFmmauiGGMTofQRk/wAyhQUuG8
         ZUsvVfn2+YE/8gZK6fBqyEWNsSUCum58heDNTg4lU7aUwTfKcoZTLykiDUTst2RcDy7J
         0AOHDyw+AZJ1ZLQRTk5w5iWh3nLi9UiJmXn1NlDRuAm7CXiopvmmtzCKcqMw/nSUIRLJ
         uH+7y6PWLgzE//66xcyI38pZV2Tf8JeMyS2ieefSO8ajshBTv8o5Kl3aSlqtXW9FLdNs
         Ebzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KWYsTkfWPrY0tovORDV3w1KjHAgHjR8RVi6OaR9EuMk=;
        b=V9n6qSaN0D69CetcYmYCcDnrQ86NBLbNwiimRF/7NtRcJpIAHwRFguxYeUR/bjSSjy
         Zj7Fg1DD8FxfSEDe8HcZ3QFPb8tZDXGZGl+GySYWhk6DDQV8JW8E3ViqTonghUCCZTHn
         2otLuik2MiC5WR4oTmpyPX4MZ9fRyE+WvbO0r2mZPbAyKkzOMyllhCdSEHfCvmNPtTXL
         HUl5wmHsU+xScpL89UZIxyV8RiThiw2wGgfrE+CUDSbPe2U2NGxJYx+1BYgc3DG+AOe+
         pezH5v+vGfC3t+QJJpdzMDWsJQL6t69BQ6p9W/zxZCekDtw1Ag4D5y0FdmbQFZjjWxC5
         atSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KWYsTkfWPrY0tovORDV3w1KjHAgHjR8RVi6OaR9EuMk=;
        b=gFEPKs2Hhi+t7Z6f7dmSpLF1/jtXVNYgb82EYDm2vvZloWRWZGw7/+rXSsCk6LRiqE
         2kR+hx4neEWYzYILGiKin/f25DLPwY4wbf7XFphu+WqGI7+MBsnWD0JwB7BVChZhpIlM
         fSRoW6E6BeQTSosp7dm1zO8O/M87bCEhzQm/bqI4+XlkGb9VUs1I9ifDIdiP1kLtfgZ+
         WVr93KuF2AGOAQqOridUih3+JTL/WuGU74+7Ez+vmKOEgPd9uG6oQaJqgDodSTgLoF8c
         jlPCHzC+IXM0ilMW1P6yyGjBKQbtUo9QjyBS+Cb+UZNBg6et2NdykhLCNkP2bXM1QGLC
         F4bw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV+tpMWpIfVQawV6YtJCR3dPzVd24qcg2QyQ9oZaqng3C4eQh8D
	zB6GFBkhY7g75q+U9xq3s9M=
X-Google-Smtp-Source: APXvYqyoLHCZ8yjRpv1aLgmiVv6PyjPtp4sbFr2KFgmco+jqBuwtmUH4fDq7vDbuCQzedXw9LBOMRg==
X-Received: by 2002:aed:2a54:: with SMTP id k20mr74820418qtf.363.1578262161063;
        Sun, 05 Jan 2020 14:09:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4c88:: with SMTP id j8ls739913qtv.14.gmail; Sun, 05 Jan
 2020 14:09:20 -0800 (PST)
X-Received: by 2002:aed:3f32:: with SMTP id p47mr74873306qtf.374.1578262160602;
        Sun, 05 Jan 2020 14:09:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578262160; cv=none;
        d=google.com; s=arc-20160816;
        b=mT67xoBTSccidf7rfPNh7HMJh2Cr5GrU+DZC4q9h3juMsqvWD9ytHw3SymssHXPAr/
         IFQWbOINdiLJyhlkNIgT2WVt0C41cpO9ZGOhc78dyb7UUME4zBY31BoF4xUdoaxBeXeV
         Ig+dJ5IsTn19Vy0Jcb1LckVIaU+GcLosBoOsRPBi/J0xLOFhS5TpOUDWUsQxbE7f0NK4
         G28ohq1OfRKI8f/YvtG66FqgsgjtAh+x/A2oFCxu9/TE8dXCBCsOfsc27fQDazpewnc0
         MsomOt8+tHwTRuVZeMTGCxXKRdl0+P2Unzp01Vc7o5dO5wcyXeHzcrxThUC+rErd+hZy
         PJlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=Z49ZjcEISoFHrAlzBZgotRxxgGm7JPA8CmDub8MyA0I=;
        b=YRMRFvCazZRqYvFGD3WNcIlHltTg1DJC++Nbg3VmF73ZXbTQweZ0uIiq3e0/+spp0K
         BBw6+9k+C/9ct1auZkV2HH2WfFHA3vV4h8Oy8F73s/Ky1JKj46VLQL6umydE25NLCyMn
         PFv8pxNRFn+T4AZ1mJXTOGhTVF79Le4gl5tTL3I9QibtWMeZgxMi2qdGdSXT3i9qoTPW
         GLgOmkGFomZtvBOtMgZjr2SphbgC5qvF0jdqwiUKmvblAEROj9bm2AFLeJCOWunonfdv
         DNO5LsNeyv+OoHaUJxUtad4ik/3hpTM6z9nZ6GAOfhPGfYccN2tHALJYWQth5j6QBXa1
         XXWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id y2si2120139qtj.5.2020.01.05.14.09.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Jan 2020 14:09:20 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Jan 2020 14:09:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,400,1571727600"; 
   d="gz'50?scan'50,208,50";a="420527277"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 05 Jan 2020 14:09:16 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1ioE5D-000GOt-Nf; Mon, 06 Jan 2020 06:09:15 +0800
Date: Mon, 6 Jan 2020 06:08:27 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [sashal-linux-stable:queue-5.4 54/58]
 sound/pci/hda/patch_realtek.c:7009:13: error: use of undeclared identifier
 'alc285_fixup_speaker2_to_dac1'; did you mean 'alc298_fixup_speaker_volume'?
Message-ID: <202001060626.vHlemqaV%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="7cq6v4ixoqeiynp3"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--7cq6v4ixoqeiynp3
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
BCC: philip.li@intel.com
TO: Alexander Levin <alexander.levin@microsoft.com>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/sashal/linux-stable.git queue-5.4
head:   3bb9b8ba98d2eb0da0cd2323db178711246577f1
commit: 6a1114718441eb10dd9c449bb88c3381a76f4d17 [54/58] ALSA: hda/realtek - Add Bass Speaker and fixed dac for bass speaker
config: x86_64-allyesconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 085898d469ab782f0a26f119b109aa8eb5d37745)
reproduce:
        git checkout 6a1114718441eb10dd9c449bb88c3381a76f4d17
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> sound/pci/hda/patch_realtek.c:7009:13: error: use of undeclared identifier 'alc285_fixup_speaker2_to_dac1'; did you mean 'alc298_fixup_speaker_volume'?
                   .v.func = alc285_fixup_speaker2_to_dac1,
                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                             alc298_fixup_speaker_volume
   sound/pci/hda/patch_realtek.c:5524:13: note: 'alc298_fixup_speaker_volume' declared here
   static void alc298_fixup_speaker_volume(struct hda_codec *codec,
               ^
   1 error generated.

vim +7009 sound/pci/hda/patch_realtek.c

  5902	
  5903	static const struct hda_fixup alc269_fixups[] = {
  5904		[ALC269_FIXUP_SONY_VAIO] = {
  5905			.type = HDA_FIXUP_PINCTLS,
  5906			.v.pins = (const struct hda_pintbl[]) {
  5907				{0x19, PIN_VREFGRD},
  5908				{}
  5909			}
  5910		},
  5911		[ALC275_FIXUP_SONY_VAIO_GPIO2] = {
  5912			.type = HDA_FIXUP_FUNC,
  5913			.v.func = alc275_fixup_gpio4_off,
  5914			.chained = true,
  5915			.chain_id = ALC269_FIXUP_SONY_VAIO
  5916		},
  5917		[ALC269_FIXUP_DELL_M101Z] = {
  5918			.type = HDA_FIXUP_VERBS,
  5919			.v.verbs = (const struct hda_verb[]) {
  5920				/* Enables internal speaker */
  5921				{0x20, AC_VERB_SET_COEF_INDEX, 13},
  5922				{0x20, AC_VERB_SET_PROC_COEF, 0x4040},
  5923				{}
  5924			}
  5925		},
  5926		[ALC269_FIXUP_SKU_IGNORE] = {
  5927			.type = HDA_FIXUP_FUNC,
  5928			.v.func = alc_fixup_sku_ignore,
  5929		},
  5930		[ALC269_FIXUP_ASUS_G73JW] = {
  5931			.type = HDA_FIXUP_PINS,
  5932			.v.pins = (const struct hda_pintbl[]) {
  5933				{ 0x17, 0x99130111 }, /* subwoofer */
  5934				{ }
  5935			}
  5936		},
  5937		[ALC269_FIXUP_LENOVO_EAPD] = {
  5938			.type = HDA_FIXUP_VERBS,
  5939			.v.verbs = (const struct hda_verb[]) {
  5940				{0x14, AC_VERB_SET_EAPD_BTLENABLE, 0},
  5941				{}
  5942			}
  5943		},
  5944		[ALC275_FIXUP_SONY_HWEQ] = {
  5945			.type = HDA_FIXUP_FUNC,
  5946			.v.func = alc269_fixup_hweq,
  5947			.chained = true,
  5948			.chain_id = ALC275_FIXUP_SONY_VAIO_GPIO2
  5949		},
  5950		[ALC275_FIXUP_SONY_DISABLE_AAMIX] = {
  5951			.type = HDA_FIXUP_FUNC,
  5952			.v.func = alc_fixup_disable_aamix,
  5953			.chained = true,
  5954			.chain_id = ALC269_FIXUP_SONY_VAIO
  5955		},
  5956		[ALC271_FIXUP_DMIC] = {
  5957			.type = HDA_FIXUP_FUNC,
  5958			.v.func = alc271_fixup_dmic,
  5959		},
  5960		[ALC269_FIXUP_PCM_44K] = {
  5961			.type = HDA_FIXUP_FUNC,
  5962			.v.func = alc269_fixup_pcm_44k,
  5963			.chained = true,
  5964			.chain_id = ALC269_FIXUP_QUANTA_MUTE
  5965		},
  5966		[ALC269_FIXUP_STEREO_DMIC] = {
  5967			.type = HDA_FIXUP_FUNC,
  5968			.v.func = alc269_fixup_stereo_dmic,
  5969		},
  5970		[ALC269_FIXUP_HEADSET_MIC] = {
  5971			.type = HDA_FIXUP_FUNC,
  5972			.v.func = alc269_fixup_headset_mic,
  5973		},
  5974		[ALC269_FIXUP_QUANTA_MUTE] = {
  5975			.type = HDA_FIXUP_FUNC,
  5976			.v.func = alc269_fixup_quanta_mute,
  5977		},
  5978		[ALC269_FIXUP_LIFEBOOK] = {
  5979			.type = HDA_FIXUP_PINS,
  5980			.v.pins = (const struct hda_pintbl[]) {
  5981				{ 0x1a, 0x2101103f }, /* dock line-out */
  5982				{ 0x1b, 0x23a11040 }, /* dock mic-in */
  5983				{ }
  5984			},
  5985			.chained = true,
  5986			.chain_id = ALC269_FIXUP_QUANTA_MUTE
  5987		},
  5988		[ALC269_FIXUP_LIFEBOOK_EXTMIC] = {
  5989			.type = HDA_FIXUP_PINS,
  5990			.v.pins = (const struct hda_pintbl[]) {
  5991				{ 0x19, 0x01a1903c }, /* headset mic, with jack detect */
  5992				{ }
  5993			},
  5994		},
  5995		[ALC269_FIXUP_LIFEBOOK_HP_PIN] = {
  5996			.type = HDA_FIXUP_PINS,
  5997			.v.pins = (const struct hda_pintbl[]) {
  5998				{ 0x21, 0x0221102f }, /* HP out */
  5999				{ }
  6000			},
  6001		},
  6002		[ALC269_FIXUP_LIFEBOOK_NO_HP_TO_LINEOUT] = {
  6003			.type = HDA_FIXUP_FUNC,
  6004			.v.func = alc269_fixup_pincfg_no_hp_to_lineout,
  6005		},
  6006		[ALC255_FIXUP_LIFEBOOK_U7x7_HEADSET_MIC] = {
  6007			.type = HDA_FIXUP_FUNC,
  6008			.v.func = alc269_fixup_pincfg_U7x7_headset_mic,
  6009		},
  6010		[ALC269_FIXUP_AMIC] = {
  6011			.type = HDA_FIXUP_PINS,
  6012			.v.pins = (const struct hda_pintbl[]) {
  6013				{ 0x14, 0x99130110 }, /* speaker */
  6014				{ 0x15, 0x0121401f }, /* HP out */
  6015				{ 0x18, 0x01a19c20 }, /* mic */
  6016				{ 0x19, 0x99a3092f }, /* int-mic */
  6017				{ }
  6018			},
  6019		},
  6020		[ALC269_FIXUP_DMIC] = {
  6021			.type = HDA_FIXUP_PINS,
  6022			.v.pins = (const struct hda_pintbl[]) {
  6023				{ 0x12, 0x99a3092f }, /* int-mic */
  6024				{ 0x14, 0x99130110 }, /* speaker */
  6025				{ 0x15, 0x0121401f }, /* HP out */
  6026				{ 0x18, 0x01a19c20 }, /* mic */
  6027				{ }
  6028			},
  6029		},
  6030		[ALC269VB_FIXUP_AMIC] = {
  6031			.type = HDA_FIXUP_PINS,
  6032			.v.pins = (const struct hda_pintbl[]) {
  6033				{ 0x14, 0x99130110 }, /* speaker */
  6034				{ 0x18, 0x01a19c20 }, /* mic */
  6035				{ 0x19, 0x99a3092f }, /* int-mic */
  6036				{ 0x21, 0x0121401f }, /* HP out */
  6037				{ }
  6038			},
  6039		},
  6040		[ALC269VB_FIXUP_DMIC] = {
  6041			.type = HDA_FIXUP_PINS,
  6042			.v.pins = (const struct hda_pintbl[]) {
  6043				{ 0x12, 0x99a3092f }, /* int-mic */
  6044				{ 0x14, 0x99130110 }, /* speaker */
  6045				{ 0x18, 0x01a19c20 }, /* mic */
  6046				{ 0x21, 0x0121401f }, /* HP out */
  6047				{ }
  6048			},
  6049		},
  6050		[ALC269_FIXUP_HP_MUTE_LED] = {
  6051			.type = HDA_FIXUP_FUNC,
  6052			.v.func = alc269_fixup_hp_mute_led,
  6053		},
  6054		[ALC269_FIXUP_HP_MUTE_LED_MIC1] = {
  6055			.type = HDA_FIXUP_FUNC,
  6056			.v.func = alc269_fixup_hp_mute_led_mic1,
  6057		},
  6058		[ALC269_FIXUP_HP_MUTE_LED_MIC2] = {
  6059			.type = HDA_FIXUP_FUNC,
  6060			.v.func = alc269_fixup_hp_mute_led_mic2,
  6061		},
  6062		[ALC269_FIXUP_HP_MUTE_LED_MIC3] = {
  6063			.type = HDA_FIXUP_FUNC,
  6064			.v.func = alc269_fixup_hp_mute_led_mic3,
  6065			.chained = true,
  6066			.chain_id = ALC295_FIXUP_HP_AUTO_MUTE
  6067		},
  6068		[ALC269_FIXUP_HP_GPIO_LED] = {
  6069			.type = HDA_FIXUP_FUNC,
  6070			.v.func = alc269_fixup_hp_gpio_led,
  6071		},
  6072		[ALC269_FIXUP_HP_GPIO_MIC1_LED] = {
  6073			.type = HDA_FIXUP_FUNC,
  6074			.v.func = alc269_fixup_hp_gpio_mic1_led,
  6075		},
  6076		[ALC269_FIXUP_HP_LINE1_MIC1_LED] = {
  6077			.type = HDA_FIXUP_FUNC,
  6078			.v.func = alc269_fixup_hp_line1_mic1_led,
  6079		},
  6080		[ALC269_FIXUP_INV_DMIC] = {
  6081			.type = HDA_FIXUP_FUNC,
  6082			.v.func = alc_fixup_inv_dmic,
  6083		},
  6084		[ALC269_FIXUP_NO_SHUTUP] = {
  6085			.type = HDA_FIXUP_FUNC,
  6086			.v.func = alc_fixup_no_shutup,
  6087		},
  6088		[ALC269_FIXUP_LENOVO_DOCK] = {
  6089			.type = HDA_FIXUP_PINS,
  6090			.v.pins = (const struct hda_pintbl[]) {
  6091				{ 0x19, 0x23a11040 }, /* dock mic */
  6092				{ 0x1b, 0x2121103f }, /* dock headphone */
  6093				{ }
  6094			},
  6095			.chained = true,
  6096			.chain_id = ALC269_FIXUP_PINCFG_NO_HP_TO_LINEOUT
  6097		},
  6098		[ALC269_FIXUP_PINCFG_NO_HP_TO_LINEOUT] = {
  6099			.type = HDA_FIXUP_FUNC,
  6100			.v.func = alc269_fixup_pincfg_no_hp_to_lineout,
  6101			.chained = true,
  6102			.chain_id = ALC269_FIXUP_THINKPAD_ACPI,
  6103		},
  6104		[ALC269_FIXUP_DELL1_MIC_NO_PRESENCE] = {
  6105			.type = HDA_FIXUP_PINS,
  6106			.v.pins = (const struct hda_pintbl[]) {
  6107				{ 0x19, 0x01a1913c }, /* use as headset mic, without its own jack detect */
  6108				{ 0x1a, 0x01a1913d }, /* use as headphone mic, without its own jack detect */
  6109				{ }
  6110			},
  6111			.chained = true,
  6112			.chain_id = ALC269_FIXUP_HEADSET_MODE
  6113		},
  6114		[ALC269_FIXUP_DELL2_MIC_NO_PRESENCE] = {
  6115			.type = HDA_FIXUP_PINS,
  6116			.v.pins = (const struct hda_pintbl[]) {
  6117				{ 0x16, 0x21014020 }, /* dock line out */
  6118				{ 0x19, 0x21a19030 }, /* dock mic */
  6119				{ 0x1a, 0x01a1913c }, /* use as headset mic, without its own jack detect */
  6120				{ }
  6121			},
  6122			.chained = true,
  6123			.chain_id = ALC269_FIXUP_HEADSET_MODE_NO_HP_MIC
  6124		},
  6125		[ALC269_FIXUP_DELL3_MIC_NO_PRESENCE] = {
  6126			.type = HDA_FIXUP_PINS,
  6127			.v.pins = (const struct hda_pintbl[]) {
  6128				{ 0x1a, 0x01a1913c }, /* use as headset mic, without its own jack detect */
  6129				{ }
  6130			},
  6131			.chained = true,
  6132			.chain_id = ALC269_FIXUP_HEADSET_MODE_NO_HP_MIC
  6133		},
  6134		[ALC269_FIXUP_DELL4_MIC_NO_PRESENCE] = {
  6135			.type = HDA_FIXUP_PINS,
  6136			.v.pins = (const struct hda_pintbl[]) {
  6137				{ 0x19, 0x01a1913c }, /* use as headset mic, without its own jack detect */
  6138				{ 0x1b, 0x01a1913d }, /* use as headphone mic, without its own jack detect */
  6139				{ }
  6140			},
  6141			.chained = true,
  6142			.chain_id = ALC269_FIXUP_HEADSET_MODE
  6143		},
  6144		[ALC269_FIXUP_HEADSET_MODE] = {
  6145			.type = HDA_FIXUP_FUNC,
  6146			.v.func = alc_fixup_headset_mode,
  6147			.chained = true,
  6148			.chain_id = ALC255_FIXUP_MIC_MUTE_LED
  6149		},
  6150		[ALC269_FIXUP_HEADSET_MODE_NO_HP_MIC] = {
  6151			.type = HDA_FIXUP_FUNC,
  6152			.v.func = alc_fixup_headset_mode_no_hp_mic,
  6153		},
  6154		[ALC269_FIXUP_ASPIRE_HEADSET_MIC] = {
  6155			.type = HDA_FIXUP_PINS,
  6156			.v.pins = (const struct hda_pintbl[]) {
  6157				{ 0x19, 0x01a1913c }, /* headset mic w/o jack detect */
  6158				{ }
  6159			},
  6160			.chained = true,
  6161			.chain_id = ALC269_FIXUP_HEADSET_MODE,
  6162		},
  6163		[ALC286_FIXUP_SONY_MIC_NO_PRESENCE] = {
  6164			.type = HDA_FIXUP_PINS,
  6165			.v.pins = (const struct hda_pintbl[]) {
  6166				{ 0x18, 0x01a1913c }, /* use as headset mic, without its own jack detect */
  6167				{ }
  6168			},
  6169			.chained = true,
  6170			.chain_id = ALC269_FIXUP_HEADSET_MIC
  6171		},
  6172		[ALC256_FIXUP_HUAWEI_MACH_WX9_PINS] = {
  6173			.type = HDA_FIXUP_PINS,
  6174			.v.pins = (const struct hda_pintbl[]) {
  6175				{0x12, 0x90a60130},
  6176				{0x13, 0x40000000},
  6177				{0x14, 0x90170110},
  6178				{0x18, 0x411111f0},
  6179				{0x19, 0x04a11040},
  6180				{0x1a, 0x411111f0},
  6181				{0x1b, 0x90170112},
  6182				{0x1d, 0x40759a05},
  6183				{0x1e, 0x411111f0},
  6184				{0x21, 0x04211020},
  6185				{ }
  6186			},
  6187			.chained = true,
  6188			.chain_id = ALC255_FIXUP_MIC_MUTE_LED
  6189		},
  6190		[ALC298_FIXUP_HUAWEI_MBX_STEREO] = {
  6191			.type = HDA_FIXUP_FUNC,
  6192			.v.func = alc298_fixup_huawei_mbx_stereo,
  6193			.chained = true,
  6194			.chain_id = ALC255_FIXUP_MIC_MUTE_LED
  6195		},
  6196		[ALC269_FIXUP_ASUS_X101_FUNC] = {
  6197			.type = HDA_FIXUP_FUNC,
  6198			.v.func = alc269_fixup_x101_headset_mic,
  6199		},
  6200		[ALC269_FIXUP_ASUS_X101_VERB] = {
  6201			.type = HDA_FIXUP_VERBS,
  6202			.v.verbs = (const struct hda_verb[]) {
  6203				{0x18, AC_VERB_SET_PIN_WIDGET_CONTROL, 0},
  6204				{0x20, AC_VERB_SET_COEF_INDEX, 0x08},
  6205				{0x20, AC_VERB_SET_PROC_COEF,  0x0310},
  6206				{ }
  6207			},
  6208			.chained = true,
  6209			.chain_id = ALC269_FIXUP_ASUS_X101_FUNC
  6210		},
  6211		[ALC269_FIXUP_ASUS_X101] = {
  6212			.type = HDA_FIXUP_PINS,
  6213			.v.pins = (const struct hda_pintbl[]) {
  6214				{ 0x18, 0x04a1182c }, /* Headset mic */
  6215				{ }
  6216			},
  6217			.chained = true,
  6218			.chain_id = ALC269_FIXUP_ASUS_X101_VERB
  6219		},
  6220		[ALC271_FIXUP_AMIC_MIC2] = {
  6221			.type = HDA_FIXUP_PINS,
  6222			.v.pins = (const struct hda_pintbl[]) {
  6223				{ 0x14, 0x99130110 }, /* speaker */
  6224				{ 0x19, 0x01a19c20 }, /* mic */
  6225				{ 0x1b, 0x99a7012f }, /* int-mic */
  6226				{ 0x21, 0x0121401f }, /* HP out */
  6227				{ }
  6228			},
  6229		},
  6230		[ALC271_FIXUP_HP_GATE_MIC_JACK] = {
  6231			.type = HDA_FIXUP_FUNC,
  6232			.v.func = alc271_hp_gate_mic_jack,
  6233			.chained = true,
  6234			.chain_id = ALC271_FIXUP_AMIC_MIC2,
  6235		},
  6236		[ALC271_FIXUP_HP_GATE_MIC_JACK_E1_572] = {
  6237			.type = HDA_FIXUP_FUNC,
  6238			.v.func = alc269_fixup_limit_int_mic_boost,
  6239			.chained = true,
  6240			.chain_id = ALC271_FIXUP_HP_GATE_MIC_JACK,
  6241		},
  6242		[ALC269_FIXUP_ACER_AC700] = {
  6243			.type = HDA_FIXUP_PINS,
  6244			.v.pins = (const struct hda_pintbl[]) {
  6245				{ 0x12, 0x99a3092f }, /* int-mic */
  6246				{ 0x14, 0x99130110 }, /* speaker */
  6247				{ 0x18, 0x03a11c20 }, /* mic */
  6248				{ 0x1e, 0x0346101e }, /* SPDIF1 */
  6249				{ 0x21, 0x0321101f }, /* HP out */
  6250				{ }
  6251			},
  6252			.chained = true,
  6253			.chain_id = ALC271_FIXUP_DMIC,
  6254		},
  6255		[ALC269_FIXUP_LIMIT_INT_MIC_BOOST] = {
  6256			.type = HDA_FIXUP_FUNC,
  6257			.v.func = alc269_fixup_limit_int_mic_boost,
  6258			.chained = true,
  6259			.chain_id = ALC269_FIXUP_THINKPAD_ACPI,
  6260		},
  6261		[ALC269VB_FIXUP_ASUS_ZENBOOK] = {
  6262			.type = HDA_FIXUP_FUNC,
  6263			.v.func = alc269_fixup_limit_int_mic_boost,
  6264			.chained = true,
  6265			.chain_id = ALC269VB_FIXUP_DMIC,
  6266		},
  6267		[ALC269VB_FIXUP_ASUS_ZENBOOK_UX31A] = {
  6268			.type = HDA_FIXUP_VERBS,
  6269			.v.verbs = (const struct hda_verb[]) {
  6270				/* class-D output amp +5dB */
  6271				{ 0x20, AC_VERB_SET_COEF_INDEX, 0x12 },
  6272				{ 0x20, AC_VERB_SET_PROC_COEF, 0x2800 },
  6273				{}
  6274			},
  6275			.chained = true,
  6276			.chain_id = ALC269VB_FIXUP_ASUS_ZENBOOK,
  6277		},
  6278		[ALC269_FIXUP_LIMIT_INT_MIC_BOOST_MUTE_LED] = {
  6279			.type = HDA_FIXUP_FUNC,
  6280			.v.func = alc269_fixup_limit_int_mic_boost,
  6281			.chained = true,
  6282			.chain_id = ALC269_FIXUP_HP_MUTE_LED_MIC1,
  6283		},
  6284		[ALC269VB_FIXUP_ORDISSIMO_EVE2] = {
  6285			.type = HDA_FIXUP_PINS,
  6286			.v.pins = (const struct hda_pintbl[]) {
  6287				{ 0x12, 0x99a3092f }, /* int-mic */
  6288				{ 0x18, 0x03a11d20 }, /* mic */
  6289				{ 0x19, 0x411111f0 }, /* Unused bogus pin */
  6290				{ }
  6291			},
  6292		},
  6293		[ALC283_FIXUP_CHROME_BOOK] = {
  6294			.type = HDA_FIXUP_FUNC,
  6295			.v.func = alc283_fixup_chromebook,
  6296		},
  6297		[ALC283_FIXUP_SENSE_COMBO_JACK] = {
  6298			.type = HDA_FIXUP_FUNC,
  6299			.v.func = alc283_fixup_sense_combo_jack,
  6300			.chained = true,
  6301			.chain_id = ALC283_FIXUP_CHROME_BOOK,
  6302		},
  6303		[ALC282_FIXUP_ASUS_TX300] = {
  6304			.type = HDA_FIXUP_FUNC,
  6305			.v.func = alc282_fixup_asus_tx300,
  6306		},
  6307		[ALC283_FIXUP_INT_MIC] = {
  6308			.type = HDA_FIXUP_VERBS,
  6309			.v.verbs = (const struct hda_verb[]) {
  6310				{0x20, AC_VERB_SET_COEF_INDEX, 0x1a},
  6311				{0x20, AC_VERB_SET_PROC_COEF, 0x0011},
  6312				{ }
  6313			},
  6314			.chained = true,
  6315			.chain_id = ALC269_FIXUP_LIMIT_INT_MIC_BOOST
  6316		},
  6317		[ALC290_FIXUP_SUBWOOFER_HSJACK] = {
  6318			.type = HDA_FIXUP_PINS,
  6319			.v.pins = (const struct hda_pintbl[]) {
  6320				{ 0x17, 0x90170112 }, /* subwoofer */
  6321				{ }
  6322			},
  6323			.chained = true,
  6324			.chain_id = ALC290_FIXUP_MONO_SPEAKERS_HSJACK,
  6325		},
  6326		[ALC290_FIXUP_SUBWOOFER] = {
  6327			.type = HDA_FIXUP_PINS,
  6328			.v.pins = (const struct hda_pintbl[]) {
  6329				{ 0x17, 0x90170112 }, /* subwoofer */
  6330				{ }
  6331			},
  6332			.chained = true,
  6333			.chain_id = ALC290_FIXUP_MONO_SPEAKERS,
  6334		},
  6335		[ALC290_FIXUP_MONO_SPEAKERS] = {
  6336			.type = HDA_FIXUP_FUNC,
  6337			.v.func = alc290_fixup_mono_speakers,
  6338		},
  6339		[ALC290_FIXUP_MONO_SPEAKERS_HSJACK] = {
  6340			.type = HDA_FIXUP_FUNC,
  6341			.v.func = alc290_fixup_mono_speakers,
  6342			.chained = true,
  6343			.chain_id = ALC269_FIXUP_DELL3_MIC_NO_PRESENCE,
  6344		},
  6345		[ALC269_FIXUP_THINKPAD_ACPI] = {
  6346			.type = HDA_FIXUP_FUNC,
  6347			.v.func = alc_fixup_thinkpad_acpi,
  6348			.chained = true,
  6349			.chain_id = ALC269_FIXUP_SKU_IGNORE,
  6350		},
  6351		[ALC269_FIXUP_DMIC_THINKPAD_ACPI] = {
  6352			.type = HDA_FIXUP_FUNC,
  6353			.v.func = alc_fixup_inv_dmic,
  6354			.chained = true,
  6355			.chain_id = ALC269_FIXUP_THINKPAD_ACPI,
  6356		},
  6357		[ALC255_FIXUP_ACER_MIC_NO_PRESENCE] = {
  6358			.type = HDA_FIXUP_PINS,
  6359			.v.pins = (const struct hda_pintbl[]) {
  6360				{ 0x19, 0x01a1913c }, /* use as headset mic, without its own jack detect */
  6361				{ }
  6362			},
  6363			.chained = true,
  6364			.chain_id = ALC255_FIXUP_HEADSET_MODE
  6365		},
  6366		[ALC255_FIXUP_ASUS_MIC_NO_PRESENCE] = {
  6367			.type = HDA_FIXUP_PINS,
  6368			.v.pins = (const struct hda_pintbl[]) {
  6369				{ 0x19, 0x01a1913c }, /* use as headset mic, without its own jack detect */
  6370				{ }
  6371			},
  6372			.chained = true,
  6373			.chain_id = ALC255_FIXUP_HEADSET_MODE
  6374		},
  6375		[ALC255_FIXUP_DELL1_MIC_NO_PRESENCE] = {
  6376			.type = HDA_FIXUP_PINS,
  6377			.v.pins = (const struct hda_pintbl[]) {
  6378				{ 0x19, 0x01a1913c }, /* use as headset mic, without its own jack detect */
  6379				{ 0x1a, 0x01a1913d }, /* use as headphone mic, without its own jack detect */
  6380				{ }
  6381			},
  6382			.chained = true,
  6383			.chain_id = ALC255_FIXUP_HEADSET_MODE
  6384		},
  6385		[ALC255_FIXUP_DELL2_MIC_NO_PRESENCE] = {
  6386			.type = HDA_FIXUP_PINS,
  6387			.v.pins = (const struct hda_pintbl[]) {
  6388				{ 0x19, 0x01a1913c }, /* use as headset mic, without its own jack detect */
  6389				{ }
  6390			},
  6391			.chained = true,
  6392			.chain_id = ALC255_FIXUP_HEADSET_MODE_NO_HP_MIC
  6393		},
  6394		[ALC255_FIXUP_HEADSET_MODE] = {
  6395			.type = HDA_FIXUP_FUNC,
  6396			.v.func = alc_fixup_headset_mode_alc255,
  6397			.chained = true,
  6398			.chain_id = ALC255_FIXUP_MIC_MUTE_LED
  6399		},
  6400		[ALC255_FIXUP_HEADSET_MODE_NO_HP_MIC] = {
  6401			.type = HDA_FIXUP_FUNC,
  6402			.v.func = alc_fixup_headset_mode_alc255_no_hp_mic,
  6403		},
  6404		[ALC293_FIXUP_DELL1_MIC_NO_PRESENCE] = {
  6405			.type = HDA_FIXUP_PINS,
  6406			.v.pins = (const struct hda_pintbl[]) {
  6407				{ 0x18, 0x01a1913d }, /* use as headphone mic, without its own jack detect */
  6408				{ 0x1a, 0x01a1913c }, /* use as headset mic, without its own jack detect */
  6409				{ }
  6410			},
  6411			.chained = true,
  6412			.chain_id = ALC269_FIXUP_HEADSET_MODE
  6413		},
  6414		[ALC292_FIXUP_TPT440_DOCK] = {
  6415			.type = HDA_FIXUP_FUNC,
  6416			.v.func = alc_fixup_tpt440_dock,
  6417			.chained = true,
  6418			.chain_id = ALC269_FIXUP_LIMIT_INT_MIC_BOOST
  6419		},
  6420		[ALC292_FIXUP_TPT440] = {
  6421			.type = HDA_FIXUP_FUNC,
  6422			.v.func = alc_fixup_disable_aamix,
  6423			.chained = true,
  6424			.chain_id = ALC292_FIXUP_TPT440_DOCK,
  6425		},
  6426		[ALC283_FIXUP_HEADSET_MIC] = {
  6427			.type = HDA_FIXUP_PINS,
  6428			.v.pins = (const struct hda_pintbl[]) {
  6429				{ 0x19, 0x04a110f0 },
  6430				{ },
  6431			},
  6432		},
  6433		[ALC255_FIXUP_MIC_MUTE_LED] = {
  6434			.type = HDA_FIXUP_FUNC,
  6435			.v.func = snd_hda_gen_fixup_micmute_led,
  6436		},
  6437		[ALC282_FIXUP_ASPIRE_V5_PINS] = {
  6438			.type = HDA_FIXUP_PINS,
  6439			.v.pins = (const struct hda_pintbl[]) {
  6440				{ 0x12, 0x90a60130 },
  6441				{ 0x14, 0x90170110 },
  6442				{ 0x17, 0x40000008 },
  6443				{ 0x18, 0x411111f0 },
  6444				{ 0x19, 0x01a1913c },
  6445				{ 0x1a, 0x411111f0 },
  6446				{ 0x1b, 0x411111f0 },
  6447				{ 0x1d, 0x40f89b2d },
  6448				{ 0x1e, 0x411111f0 },
  6449				{ 0x21, 0x0321101f },
  6450				{ },
  6451			},
  6452		},
  6453		[ALC280_FIXUP_HP_GPIO4] = {
  6454			.type = HDA_FIXUP_FUNC,
  6455			.v.func = alc280_fixup_hp_gpio4,
  6456		},
  6457		[ALC286_FIXUP_HP_GPIO_LED] = {
  6458			.type = HDA_FIXUP_FUNC,
  6459			.v.func = alc286_fixup_hp_gpio_led,
  6460		},
  6461		[ALC280_FIXUP_HP_GPIO2_MIC_HOTKEY] = {
  6462			.type = HDA_FIXUP_FUNC,
  6463			.v.func = alc280_fixup_hp_gpio2_mic_hotkey,
  6464		},
  6465		[ALC280_FIXUP_HP_DOCK_PINS] = {
  6466			.type = HDA_FIXUP_PINS,
  6467			.v.pins = (const struct hda_pintbl[]) {
  6468				{ 0x1b, 0x21011020 }, /* line-out */
  6469				{ 0x1a, 0x01a1903c }, /* headset mic */
  6470				{ 0x18, 0x2181103f }, /* line-in */
  6471				{ },
  6472			},
  6473			.chained = true,
  6474			.chain_id = ALC280_FIXUP_HP_GPIO4
  6475		},
  6476		[ALC269_FIXUP_HP_DOCK_GPIO_MIC1_LED] = {
  6477			.type = HDA_FIXUP_PINS,
  6478			.v.pins = (const struct hda_pintbl[]) {
  6479				{ 0x1b, 0x21011020 }, /* line-out */
  6480				{ 0x18, 0x2181103f }, /* line-in */
  6481				{ },
  6482			},
  6483			.chained = true,
  6484			.chain_id = ALC269_FIXUP_HP_GPIO_MIC1_LED
  6485		},
  6486		[ALC280_FIXUP_HP_9480M] = {
  6487			.type = HDA_FIXUP_FUNC,
  6488			.v.func = alc280_fixup_hp_9480m,
  6489		},
  6490		[ALC288_FIXUP_DELL_HEADSET_MODE] = {
  6491			.type = HDA_FIXUP_FUNC,
  6492			.v.func = alc_fixup_headset_mode_dell_alc288,
  6493			.chained = true,
  6494			.chain_id = ALC255_FIXUP_MIC_MUTE_LED
  6495		},
  6496		[ALC288_FIXUP_DELL1_MIC_NO_PRESENCE] = {
  6497			.type = HDA_FIXUP_PINS,
  6498			.v.pins = (const struct hda_pintbl[]) {
  6499				{ 0x18, 0x01a1913c }, /* use as headset mic, without its own jack detect */
  6500				{ 0x1a, 0x01a1913d }, /* use as headphone mic, without its own jack detect */
  6501				{ }
  6502			},
  6503			.chained = true,
  6504			.chain_id = ALC288_FIXUP_DELL_HEADSET_MODE
  6505		},
  6506		[ALC288_FIXUP_DISABLE_AAMIX] = {
  6507			.type = HDA_FIXUP_FUNC,
  6508			.v.func = alc_fixup_disable_aamix,
  6509			.chained = true,
  6510			.chain_id = ALC288_FIXUP_DELL1_MIC_NO_PRESENCE
  6511		},
  6512		[ALC288_FIXUP_DELL_XPS_13] = {
  6513			.type = HDA_FIXUP_FUNC,
  6514			.v.func = alc_fixup_dell_xps13,
  6515			.chained = true,
  6516			.chain_id = ALC288_FIXUP_DISABLE_AAMIX
  6517		},
  6518		[ALC292_FIXUP_DISABLE_AAMIX] = {
  6519			.type = HDA_FIXUP_FUNC,
  6520			.v.func = alc_fixup_disable_aamix,
  6521			.chained = true,
  6522			.chain_id = ALC269_FIXUP_DELL2_MIC_NO_PRESENCE
  6523		},
  6524		[ALC293_FIXUP_DISABLE_AAMIX_MULTIJACK] = {
  6525			.type = HDA_FIXUP_FUNC,
  6526			.v.func = alc_fixup_disable_aamix,
  6527			.chained = true,
  6528			.chain_id = ALC293_FIXUP_DELL1_MIC_NO_PRESENCE
  6529		},
  6530		[ALC292_FIXUP_DELL_E7X] = {
  6531			.type = HDA_FIXUP_FUNC,
  6532			.v.func = alc_fixup_dell_xps13,
  6533			.chained = true,
  6534			.chain_id = ALC292_FIXUP_DISABLE_AAMIX
  6535		},
  6536		[ALC298_FIXUP_ALIENWARE_MIC_NO_PRESENCE] = {
  6537			.type = HDA_FIXUP_PINS,
  6538			.v.pins = (const struct hda_pintbl[]) {
  6539				{ 0x18, 0x01a1913c }, /* headset mic w/o jack detect */
  6540				{ }
  6541			},
  6542			.chained_before = true,
  6543			.chain_id = ALC269_FIXUP_HEADSET_MODE,
  6544		},
  6545		[ALC298_FIXUP_DELL1_MIC_NO_PRESENCE] = {
  6546			.type = HDA_FIXUP_PINS,
  6547			.v.pins = (const struct hda_pintbl[]) {
  6548				{ 0x18, 0x01a1913c }, /* use as headset mic, without its own jack detect */
  6549				{ 0x1a, 0x01a1913d }, /* use as headphone mic, without its own jack detect */
  6550				{ }
  6551			},
  6552			.chained = true,
  6553			.chain_id = ALC269_FIXUP_HEADSET_MODE
  6554		},
  6555		[ALC298_FIXUP_DELL_AIO_MIC_NO_PRESENCE] = {
  6556			.type = HDA_FIXUP_PINS,
  6557			.v.pins = (const struct hda_pintbl[]) {
  6558				{ 0x18, 0x01a1913c }, /* use as headset mic, without its own jack detect */
  6559				{ }
  6560			},
  6561			.chained = true,
  6562			.chain_id = ALC269_FIXUP_HEADSET_MODE
  6563		},
  6564		[ALC275_FIXUP_DELL_XPS] = {
  6565			.type = HDA_FIXUP_VERBS,
  6566			.v.verbs = (const struct hda_verb[]) {
  6567				/* Enables internal speaker */
  6568				{0x20, AC_VERB_SET_COEF_INDEX, 0x1f},
  6569				{0x20, AC_VERB_SET_PROC_COEF, 0x00c0},
  6570				{0x20, AC_VERB_SET_COEF_INDEX, 0x30},
  6571				{0x20, AC_VERB_SET_PROC_COEF, 0x00b1},
  6572				{}
  6573			}
  6574		},
  6575		[ALC256_FIXUP_DELL_XPS_13_HEADPHONE_NOISE] = {
  6576			.type = HDA_FIXUP_VERBS,
  6577			.v.verbs = (const struct hda_verb[]) {
  6578				/* Disable pass-through path for FRONT 14h */
  6579				{0x20, AC_VERB_SET_COEF_INDEX, 0x36},
  6580				{0x20, AC_VERB_SET_PROC_COEF, 0x1737},
  6581				{}
  6582			},
  6583			.chained = true,
  6584			.chain_id = ALC255_FIXUP_DELL1_MIC_NO_PRESENCE
  6585		},
  6586		[ALC256_FIXUP_DELL_XPS_13_HEADPHONE_NOISE2] = {
  6587			.type = HDA_FIXUP_FUNC,
  6588			.v.func = alc256_fixup_dell_xps_13_headphone_noise2,
  6589			.chained = true,
  6590			.chain_id = ALC256_FIXUP_DELL_XPS_13_HEADPHONE_NOISE
  6591		},
  6592		[ALC293_FIXUP_LENOVO_SPK_NOISE] = {
  6593			.type = HDA_FIXUP_FUNC,
  6594			.v.func = alc_fixup_disable_aamix,
  6595			.chained = true,
  6596			.chain_id = ALC269_FIXUP_THINKPAD_ACPI
  6597		},
  6598		[ALC233_FIXUP_LENOVO_LINE2_MIC_HOTKEY] = {
  6599			.type = HDA_FIXUP_FUNC,
  6600			.v.func = alc233_fixup_lenovo_line2_mic_hotkey,
  6601		},
  6602		[ALC255_FIXUP_DELL_SPK_NOISE] = {
  6603			.type = HDA_FIXUP_FUNC,
  6604			.v.func = alc_fixup_disable_aamix,
  6605			.chained = true,
  6606			.chain_id = ALC255_FIXUP_DELL1_MIC_NO_PRESENCE
  6607		},
  6608		[ALC225_FIXUP_DISABLE_MIC_VREF] = {
  6609			.type = HDA_FIXUP_FUNC,
  6610			.v.func = alc_fixup_disable_mic_vref,
  6611			.chained = true,
  6612			.chain_id = ALC269_FIXUP_DELL1_MIC_NO_PRESENCE
  6613		},
  6614		[ALC225_FIXUP_DELL1_MIC_NO_PRESENCE] = {
  6615			.type = HDA_FIXUP_VERBS,
  6616			.v.verbs = (const struct hda_verb[]) {
  6617				/* Disable pass-through path for FRONT 14h */
  6618				{ 0x20, AC_VERB_SET_COEF_INDEX, 0x36 },
  6619				{ 0x20, AC_VERB_SET_PROC_COEF, 0x57d7 },
  6620				{}
  6621			},
  6622			.chained = true,
  6623			.chain_id = ALC225_FIXUP_DISABLE_MIC_VREF
  6624		},
  6625		[ALC280_FIXUP_HP_HEADSET_MIC] = {
  6626			.type = HDA_FIXUP_FUNC,
  6627			.v.func = alc_fixup_disable_aamix,
  6628			.chained = true,
  6629			.chain_id = ALC269_FIXUP_HEADSET_MIC,
  6630		},
  6631		[ALC221_FIXUP_HP_FRONT_MIC] = {
  6632			.type = HDA_FIXUP_PINS,
  6633			.v.pins = (const struct hda_pintbl[]) {
  6634				{ 0x19, 0x02a19020 }, /* Front Mic */
  6635				{ }
  6636			},
  6637		},
  6638		[ALC292_FIXUP_TPT460] = {
  6639			.type = HDA_FIXUP_FUNC,
  6640			.v.func = alc_fixup_tpt440_dock,
  6641			.chained = true,
  6642			.chain_id = ALC293_FIXUP_LENOVO_SPK_NOISE,
  6643		},
  6644		[ALC298_FIXUP_SPK_VOLUME] = {
  6645			.type = HDA_FIXUP_FUNC,
  6646			.v.func = alc298_fixup_speaker_volume,
  6647			.chained = true,
  6648			.chain_id = ALC298_FIXUP_DELL_AIO_MIC_NO_PRESENCE,
  6649		},
  6650		[ALC295_FIXUP_DISABLE_DAC3] = {
  6651			.type = HDA_FIXUP_FUNC,
  6652			.v.func = alc295_fixup_disable_dac3,
  6653		},
  6654		[ALC256_FIXUP_DELL_INSPIRON_7559_SUBWOOFER] = {
  6655			.type = HDA_FIXUP_PINS,
  6656			.v.pins = (const struct hda_pintbl[]) {
  6657				{ 0x1b, 0x90170151 },
  6658				{ }
  6659			},
  6660			.chained = true,
  6661			.chain_id = ALC255_FIXUP_DELL1_MIC_NO_PRESENCE
  6662		},
  6663		[ALC269_FIXUP_ATIV_BOOK_8] = {
  6664			.type = HDA_FIXUP_FUNC,
  6665			.v.func = alc_fixup_auto_mute_via_amp,
  6666			.chained = true,
  6667			.chain_id = ALC269_FIXUP_NO_SHUTUP
  6668		},
  6669		[ALC221_FIXUP_HP_MIC_NO_PRESENCE] = {
  6670			.type = HDA_FIXUP_PINS,
  6671			.v.pins = (const struct hda_pintbl[]) {
  6672				{ 0x18, 0x01a1913c }, /* use as headset mic, without its own jack detect */
  6673				{ 0x1a, 0x01a1913d }, /* use as headphone mic, without its own jack detect */
  6674				{ }
  6675			},
  6676			.chained = true,
  6677			.chain_id = ALC269_FIXUP_HEADSET_MODE
  6678		},
  6679		[ALC256_FIXUP_ASUS_HEADSET_MODE] = {
  6680			.type = HDA_FIXUP_FUNC,
  6681			.v.func = alc_fixup_headset_mode,
  6682		},
  6683		[ALC256_FIXUP_ASUS_MIC] = {
  6684			.type = HDA_FIXUP_PINS,
  6685			.v.pins = (const struct hda_pintbl[]) {
  6686				{ 0x13, 0x90a60160 }, /* use as internal mic */
  6687				{ 0x19, 0x04a11120 }, /* use as headset mic, without its own jack detect */
  6688				{ }
  6689			},
  6690			.chained = true,
  6691			.chain_id = ALC256_FIXUP_ASUS_HEADSET_MODE
  6692		},
  6693		[ALC256_FIXUP_ASUS_AIO_GPIO2] = {
  6694			.type = HDA_FIXUP_FUNC,
  6695			/* Set up GPIO2 for the speaker amp */
  6696			.v.func = alc_fixup_gpio4,
  6697		},
  6698		[ALC233_FIXUP_ASUS_MIC_NO_PRESENCE] = {
  6699			.type = HDA_FIXUP_PINS,
  6700			.v.pins = (const struct hda_pintbl[]) {
  6701				{ 0x19, 0x01a1913c }, /* use as headset mic, without its own jack detect */
  6702				{ }
  6703			},
  6704			.chained = true,
  6705			.chain_id = ALC269_FIXUP_HEADSET_MIC
  6706		},
  6707		[ALC233_FIXUP_EAPD_COEF_AND_MIC_NO_PRESENCE] = {
  6708			.type = HDA_FIXUP_VERBS,
  6709			.v.verbs = (const struct hda_verb[]) {
  6710				/* Enables internal speaker */
  6711				{0x20, AC_VERB_SET_COEF_INDEX, 0x40},
  6712				{0x20, AC_VERB_SET_PROC_COEF, 0x8800},
  6713				{}
  6714			},
  6715			.chained = true,
  6716			.chain_id = ALC233_FIXUP_ASUS_MIC_NO_PRESENCE
  6717		},
  6718		[ALC233_FIXUP_LENOVO_MULTI_CODECS] = {
  6719			.type = HDA_FIXUP_FUNC,
  6720			.v.func = alc233_alc662_fixup_lenovo_dual_codecs,
  6721		},
  6722		[ALC233_FIXUP_ACER_HEADSET_MIC] = {
  6723			.type = HDA_FIXUP_VERBS,
  6724			.v.verbs = (const struct hda_verb[]) {
  6725				{ 0x20, AC_VERB_SET_COEF_INDEX, 0x45 },
  6726				{ 0x20, AC_VERB_SET_PROC_COEF, 0x5089 },
  6727				{ }
  6728			},
  6729			.chained = true,
  6730			.chain_id = ALC233_FIXUP_ASUS_MIC_NO_PRESENCE
  6731		},
  6732		[ALC294_FIXUP_LENOVO_MIC_LOCATION] = {
  6733			.type = HDA_FIXUP_PINS,
  6734			.v.pins = (const struct hda_pintbl[]) {
  6735				/* Change the mic location from front to right, otherwise there are
  6736				   two front mics with the same name, pulseaudio can't handle them.
  6737				   This is just a temporary workaround, after applying this fixup,
  6738				   there will be one "Front Mic" and one "Mic" in this machine.
  6739				 */
  6740				{ 0x1a, 0x04a19040 },
  6741				{ }
  6742			},
  6743		},
  6744		[ALC225_FIXUP_DELL_WYSE_MIC_NO_PRESENCE] = {
  6745			.type = HDA_FIXUP_PINS,
  6746			.v.pins = (const struct hda_pintbl[]) {
  6747				{ 0x16, 0x0101102f }, /* Rear Headset HP */
  6748				{ 0x19, 0x02a1913c }, /* use as Front headset mic, without its own jack detect */
  6749				{ 0x1a, 0x01a19030 }, /* Rear Headset MIC */
  6750				{ 0x1b, 0x02011020 },
  6751				{ }
  6752			},
  6753			.chained = true,
  6754			.chain_id = ALC269_FIXUP_HEADSET_MODE_NO_HP_MIC
  6755		},
  6756		[ALC700_FIXUP_INTEL_REFERENCE] = {
  6757			.type = HDA_FIXUP_VERBS,
  6758			.v.verbs = (const struct hda_verb[]) {
  6759				/* Enables internal speaker */
  6760				{0x20, AC_VERB_SET_COEF_INDEX, 0x45},
  6761				{0x20, AC_VERB_SET_PROC_COEF, 0x5289},
  6762				{0x20, AC_VERB_SET_COEF_INDEX, 0x4A},
  6763				{0x20, AC_VERB_SET_PROC_COEF, 0x001b},
  6764				{0x58, AC_VERB_SET_COEF_INDEX, 0x00},
  6765				{0x58, AC_VERB_SET_PROC_COEF, 0x3888},
  6766				{0x20, AC_VERB_SET_COEF_INDEX, 0x6f},
  6767				{0x20, AC_VERB_SET_PROC_COEF, 0x2c0b},
  6768				{}
  6769			}
  6770		},
  6771		[ALC274_FIXUP_DELL_BIND_DACS] = {
  6772			.type = HDA_FIXUP_FUNC,
  6773			.v.func = alc274_fixup_bind_dacs,
  6774			.chained = true,
  6775			.chain_id = ALC269_FIXUP_DELL1_MIC_NO_PRESENCE
  6776		},
  6777		[ALC274_FIXUP_DELL_AIO_LINEOUT_VERB] = {
  6778			.type = HDA_FIXUP_PINS,
  6779			.v.pins = (const struct hda_pintbl[]) {
  6780				{ 0x1b, 0x0401102f },
  6781				{ }
  6782			},
  6783			.chained = true,
  6784			.chain_id = ALC274_FIXUP_DELL_BIND_DACS
  6785		},
  6786		[ALC298_FIXUP_TPT470_DOCK] = {
  6787			.type = HDA_FIXUP_FUNC,
  6788			.v.func = alc_fixup_tpt470_dock,
  6789			.chained = true,
  6790			.chain_id = ALC293_FIXUP_LENOVO_SPK_NOISE
  6791		},
  6792		[ALC255_FIXUP_DUMMY_LINEOUT_VERB] = {
  6793			.type = HDA_FIXUP_PINS,
  6794			.v.pins = (const struct hda_pintbl[]) {
  6795				{ 0x14, 0x0201101f },
  6796				{ }
  6797			},
  6798			.chained = true,
  6799			.chain_id = ALC255_FIXUP_DELL1_MIC_NO_PRESENCE
  6800		},
  6801		[ALC255_FIXUP_DELL_HEADSET_MIC] = {
  6802			.type = HDA_FIXUP_PINS,
  6803			.v.pins = (const struct hda_pintbl[]) {
  6804				{ 0x19, 0x01a1913c }, /* use as headset mic, without its own jack detect */
  6805				{ }
  6806			},
  6807			.chained = true,
  6808			.chain_id = ALC269_FIXUP_HEADSET_MIC
  6809		},
  6810		[ALC295_FIXUP_HP_X360] = {
  6811			.type = HDA_FIXUP_FUNC,
  6812			.v.func = alc295_fixup_hp_top_speakers,
  6813			.chained = true,
  6814			.chain_id = ALC269_FIXUP_HP_MUTE_LED_MIC3
  6815		},
  6816		[ALC221_FIXUP_HP_HEADSET_MIC] = {
  6817			.type = HDA_FIXUP_PINS,
  6818			.v.pins = (const struct hda_pintbl[]) {
  6819				{ 0x19, 0x0181313f},
  6820				{ }
  6821			},
  6822			.chained = true,
  6823			.chain_id = ALC269_FIXUP_HEADSET_MIC
  6824		},
  6825		[ALC285_FIXUP_LENOVO_HEADPHONE_NOISE] = {
  6826			.type = HDA_FIXUP_FUNC,
  6827			.v.func = alc285_fixup_invalidate_dacs,
  6828			.chained = true,
  6829			.chain_id = ALC269_FIXUP_THINKPAD_ACPI
  6830		},
  6831		[ALC295_FIXUP_HP_AUTO_MUTE] = {
  6832			.type = HDA_FIXUP_FUNC,
  6833			.v.func = alc_fixup_auto_mute_via_amp,
  6834		},
  6835		[ALC286_FIXUP_ACER_AIO_MIC_NO_PRESENCE] = {
  6836			.type = HDA_FIXUP_PINS,
  6837			.v.pins = (const struct hda_pintbl[]) {
  6838				{ 0x18, 0x01a1913c }, /* use as headset mic, without its own jack detect */
  6839				{ }
  6840			},
  6841			.chained = true,
  6842			.chain_id = ALC269_FIXUP_HEADSET_MIC
  6843		},
  6844		[ALC294_FIXUP_ASUS_MIC] = {
  6845			.type = HDA_FIXUP_PINS,
  6846			.v.pins = (const struct hda_pintbl[]) {
  6847				{ 0x13, 0x90a60160 }, /* use as internal mic */
  6848				{ 0x19, 0x04a11120 }, /* use as headset mic, without its own jack detect */
  6849				{ }
  6850			},
  6851			.chained = true,
  6852			.chain_id = ALC269_FIXUP_HEADSET_MODE_NO_HP_MIC
  6853		},
  6854		[ALC294_FIXUP_ASUS_HEADSET_MIC] = {
  6855			.type = HDA_FIXUP_PINS,
  6856			.v.pins = (const struct hda_pintbl[]) {
  6857				{ 0x19, 0x01a1103c }, /* use as headset mic */
  6858				{ }
  6859			},
  6860			.chained = true,
  6861			.chain_id = ALC269_FIXUP_HEADSET_MODE_NO_HP_MIC
  6862		},
  6863		[ALC294_FIXUP_ASUS_SPK] = {
  6864			.type = HDA_FIXUP_VERBS,
  6865			.v.verbs = (const struct hda_verb[]) {
  6866				/* Set EAPD high */
  6867				{ 0x20, AC_VERB_SET_COEF_INDEX, 0x40 },
  6868				{ 0x20, AC_VERB_SET_PROC_COEF, 0x8800 },
  6869				{ }
  6870			},
  6871			.chained = true,
  6872			.chain_id = ALC294_FIXUP_ASUS_HEADSET_MIC
  6873		},
  6874		[ALC295_FIXUP_CHROME_BOOK] = {
  6875			.type = HDA_FIXUP_FUNC,
  6876			.v.func = alc295_fixup_chromebook,
  6877			.chained = true,
  6878			.chain_id = ALC225_FIXUP_HEADSET_JACK
  6879		},
  6880		[ALC225_FIXUP_HEADSET_JACK] = {
  6881			.type = HDA_FIXUP_FUNC,
  6882			.v.func = alc_fixup_headset_jack,
  6883		},
  6884		[ALC293_FIXUP_SYSTEM76_MIC_NO_PRESENCE] = {
  6885			.type = HDA_FIXUP_PINS,
  6886			.v.pins = (const struct hda_pintbl[]) {
  6887				{ 0x1a, 0x01a1913c }, /* use as headset mic, without its own jack detect */
  6888				{ }
  6889			},
  6890			.chained = true,
  6891			.chain_id = ALC269_FIXUP_HEADSET_MODE_NO_HP_MIC
  6892		},
  6893		[ALC285_FIXUP_LENOVO_PC_BEEP_IN_NOISE] = {
  6894			.type = HDA_FIXUP_VERBS,
  6895			.v.verbs = (const struct hda_verb[]) {
  6896				/* Disable PCBEEP-IN passthrough */
  6897				{ 0x20, AC_VERB_SET_COEF_INDEX, 0x36 },
  6898				{ 0x20, AC_VERB_SET_PROC_COEF, 0x57d7 },
  6899				{ }
  6900			},
  6901			.chained = true,
  6902			.chain_id = ALC285_FIXUP_LENOVO_HEADPHONE_NOISE
  6903		},
  6904		[ALC255_FIXUP_ACER_HEADSET_MIC] = {
  6905			.type = HDA_FIXUP_PINS,
  6906			.v.pins = (const struct hda_pintbl[]) {
  6907				{ 0x19, 0x03a11130 },
  6908				{ 0x1a, 0x90a60140 }, /* use as internal mic */
  6909				{ }
  6910			},
  6911			.chained = true,
  6912			.chain_id = ALC255_FIXUP_HEADSET_MODE_NO_HP_MIC
  6913		},
  6914		[ALC225_FIXUP_DELL_WYSE_AIO_MIC_NO_PRESENCE] = {
  6915			.type = HDA_FIXUP_PINS,
  6916			.v.pins = (const struct hda_pintbl[]) {
  6917				{ 0x16, 0x01011020 }, /* Rear Line out */
  6918				{ 0x19, 0x01a1913c }, /* use as Front headset mic, without its own jack detect */
  6919				{ }
  6920			},
  6921			.chained = true,
  6922			.chain_id = ALC225_FIXUP_WYSE_AUTO_MUTE
  6923		},
  6924		[ALC225_FIXUP_WYSE_AUTO_MUTE] = {
  6925			.type = HDA_FIXUP_FUNC,
  6926			.v.func = alc_fixup_auto_mute_via_amp,
  6927			.chained = true,
  6928			.chain_id = ALC225_FIXUP_WYSE_DISABLE_MIC_VREF
  6929		},
  6930		[ALC225_FIXUP_WYSE_DISABLE_MIC_VREF] = {
  6931			.type = HDA_FIXUP_FUNC,
  6932			.v.func = alc_fixup_disable_mic_vref,
  6933			.chained = true,
  6934			.chain_id = ALC269_FIXUP_HEADSET_MODE_NO_HP_MIC
  6935		},
  6936		[ALC286_FIXUP_ACER_AIO_HEADSET_MIC] = {
  6937			.type = HDA_FIXUP_VERBS,
  6938			.v.verbs = (const struct hda_verb[]) {
  6939				{ 0x20, AC_VERB_SET_COEF_INDEX, 0x4f },
  6940				{ 0x20, AC_VERB_SET_PROC_COEF, 0x5029 },
  6941				{ }
  6942			},
  6943			.chained = true,
  6944			.chain_id = ALC286_FIXUP_ACER_AIO_MIC_NO_PRESENCE
  6945		},
  6946		[ALC256_FIXUP_ASUS_HEADSET_MIC] = {
  6947			.type = HDA_FIXUP_PINS,
  6948			.v.pins = (const struct hda_pintbl[]) {
  6949				{ 0x19, 0x03a11020 }, /* headset mic with jack detect */
  6950				{ }
  6951			},
  6952			.chained = true,
  6953			.chain_id = ALC256_FIXUP_ASUS_HEADSET_MODE
  6954		},
  6955		[ALC256_FIXUP_ASUS_MIC_NO_PRESENCE] = {
  6956			.type = HDA_FIXUP_PINS,
  6957			.v.pins = (const struct hda_pintbl[]) {
  6958				{ 0x19, 0x04a11120 }, /* use as headset mic, without its own jack detect */
  6959				{ }
  6960			},
  6961			.chained = true,
  6962			.chain_id = ALC256_FIXUP_ASUS_HEADSET_MODE
  6963		},
  6964		[ALC299_FIXUP_PREDATOR_SPK] = {
  6965			.type = HDA_FIXUP_PINS,
  6966			.v.pins = (const struct hda_pintbl[]) {
  6967				{ 0x21, 0x90170150 }, /* use as headset mic, without its own jack detect */
  6968				{ }
  6969			}
  6970		},
  6971		[ALC294_FIXUP_ASUS_INTSPK_HEADSET_MIC] = {
  6972			.type = HDA_FIXUP_PINS,
  6973			.v.pins = (const struct hda_pintbl[]) {
  6974				{ 0x14, 0x411111f0 }, /* disable confusing internal speaker */
  6975				{ 0x19, 0x04a11150 }, /* use as headset mic, without its own jack detect */
  6976				{ }
  6977			},
  6978			.chained = true,
  6979			.chain_id = ALC269_FIXUP_HEADSET_MODE_NO_HP_MIC
  6980		},
  6981		[ALC256_FIXUP_MEDION_HEADSET_NO_PRESENCE] = {
  6982			.type = HDA_FIXUP_PINS,
  6983			.v.pins = (const struct hda_pintbl[]) {
  6984				{ 0x19, 0x04a11040 },
  6985				{ 0x21, 0x04211020 },
  6986				{ }
  6987			},
  6988			.chained = true,
  6989			.chain_id = ALC256_FIXUP_ASUS_HEADSET_MODE
  6990		},
  6991		[ALC294_FIXUP_ASUS_INTSPK_GPIO] = {
  6992			.type = HDA_FIXUP_FUNC,
  6993			/* The GPIO must be pulled to initialize the AMP */
  6994			.v.func = alc_fixup_gpio4,
  6995			.chained = true,
  6996			.chain_id = ALC294_FIXUP_ASUS_INTSPK_HEADSET_MIC
  6997		},
  6998		[ALC289_FIXUP_DELL_SPK2] = {
  6999			.type = HDA_FIXUP_PINS,
  7000			.v.pins = (const struct hda_pintbl[]) {
  7001				{ 0x17, 0x90170130 }, /* bass spk */
  7002				{ }
  7003			},
  7004			.chained = true,
  7005			.chain_id = ALC269_FIXUP_DELL4_MIC_NO_PRESENCE
  7006		},
  7007		[ALC289_FIXUP_DUAL_SPK] = {
  7008			.type = HDA_FIXUP_FUNC,
> 7009			.v.func = alc285_fixup_speaker2_to_dac1,
  7010			.chained = true,
  7011			.chain_id = ALC289_FIXUP_DELL_SPK2
  7012		},
  7013	};
  7014	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202001060626.vHlemqaV%25lkp%40intel.com.

--7cq6v4ixoqeiynp3
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--7cq6v4ixoqeiynp3--
