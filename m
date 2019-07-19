Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBWV4Y3UQKGQEASM5DJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1931F6E46F
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 12:41:32 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id s9sf27233907qtn.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 03:41:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563532891; cv=pass;
        d=google.com; s=arc-20160816;
        b=pLUDbaMnxm1CmXM19T8UZQ/ur/8TpMZk+ayx0nounOFQ0kyWE3W5GTaO43w3IKTpd1
         gfXGuLNm1bggHNVIQ9gQhM2y/On5wtFZd2woTs4Pv4GaOikHBlDx47vspdSBy1koLNyh
         RwOcvOrgCNUc7DvoqkeKp7TkHE2vDAeeYsGCaxPlQ9a4ZRBzWnIe6oRcmwnpFHaldqM4
         5m6ybLCiM83Mv/DGLPRaMwJ/icF6hWSCYwRHqTtqVEbPnJvXhf55xKNTQwWNxpSBEu8j
         Eg+HWtKs6g4BWTF7w8QOCZSS3jmBhK/JmdkErnWpz1uetlGaPqgE5OBBQ3Ha6JM2zrxE
         4gXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=rGLgOc/J12xZ8HvLT5eNS8dJu5h0qNd+08PUBs0YMhs=;
        b=jZeOx/uixxjM+4TLM5vjexAEuuzLYQEsKqhbadcJWGldcUqLeuSqF7kQ7naz050CN7
         9x10gtkMuGvzLFz4lrLyNUguC4ywCFApcFKfKSjhDlLLUke2GBgjwXzN1PIuoneVsp29
         ADLezgkTcXBNBp/Nl0f/eoeghRfUanO3CxMlUFbzX89Z5u3cQ8Ii4I//YUyeTanoyrTx
         TqYwLlRDpuhiNShVBstP2FpqqSEGC4iWbqoXuxcYCa+rzECygDOZNFZCDGyr6v3TADPU
         xDapmP3FLXbUDp3oTk5rSk6WW1NUSRyXDWseceAvW3W/nIPN/f6Ly6Hv//VUQl41NzkX
         VBwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rGLgOc/J12xZ8HvLT5eNS8dJu5h0qNd+08PUBs0YMhs=;
        b=ZMatjz23kQXU4IeVZCP2Wbuie+dl/8McDTz4k2KmJk/InUZBFF+y2Kk1mu2kAl+EVK
         H87DzbiZguv9aR0tOF35Vav6RoYyeCR7KcQXCgQlRTY/SW4lJg9Z+tqr053kbNDfyORw
         3M/rKDt0lfuT/vQpejdd7vyOQMgKtrtCiNvwT8+2cV7bH4hM655lG/5gw33cDs/Iuh0G
         5L06uGswkrWdPweFnc2KBoGJcJIOL52c/tdSU/7/E7UrLcK7RvZ4KMJuUka2qzYGwvE9
         Aw9nTNzzhnLkOMywCRih0xyS9f1YjRG7LfznWIvGPMuR6wUKKWEuvVmVQFUf2cn4vjEI
         +EIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rGLgOc/J12xZ8HvLT5eNS8dJu5h0qNd+08PUBs0YMhs=;
        b=XRZ08fA5vc+S1pi6L+0ko6xbjY1BhpRLdsSsLRBI3UZcy2wR3G3vm0XPLxcoXW0qdF
         1FzbnWc0fNWw3WRZsvjG7IrppvJizqaweImfAj2QEhz/lMdLW2k3lcNemixFEH/f3mFX
         CKvJJvcAXy86Bcb5nV4wr7UHOpZ9BFa22sJs/3q+LEutmbrZN/10D1DrdpcxFKib5yyL
         xnmRGjRsiK5DT1AYLh33WJyGa5Tl5he91e0M3GINSG4MxIx7Ihe82/8kltjOqx7AyaFk
         JzKsSLreLclyxL809p/P1NRwgBiLr+FUYNspQ76QLa3eH5uYlr5/XqOLh5IFZwbo4Koc
         6yHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVIzODDbQfUhf4eKmbeCCO3rsGDs4AtW2vtty1iuOiVmjbVTu1O
	kbuKnBH13ocC//WjaDGp6RQ=
X-Google-Smtp-Source: APXvYqyNcozDDPZaXzunbS5ALIwwSlyngc0NVT2Ej8Kmouc1Ttta+GHn16zF9i4Wq8E+woX7WhoVjg==
X-Received: by 2002:ae9:ef44:: with SMTP id d65mr34765978qkg.402.1563532890671;
        Fri, 19 Jul 2019 03:41:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2c41:: with SMTP id e1ls7913261qta.14.gmail; Fri, 19 Jul
 2019 03:41:30 -0700 (PDT)
X-Received: by 2002:ac8:72d7:: with SMTP id o23mr32035659qtp.98.1563532890335;
        Fri, 19 Jul 2019 03:41:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563532890; cv=none;
        d=google.com; s=arc-20160816;
        b=gBRQtuyyl1o5aKHSpteo31p2xjNYNsotmSdycstpMFl0zPe5MJEOIVhf5jLhj1WODf
         kuXyxXTHJ+3LW9kOPdhGB4RR7t8nMJABi6ZXsN85xPqBCcuLxifKmmuQftv2xQA3k53z
         Z2Uom48q+svPO97ApLHIqPb11JZBqimLivd3zFTx3QP+Oq2VM+h1LUOYVUHafMJpfnsT
         AGV6XT5z9XhVgvKrIUB07pE3Yllxh0brrh0mEPwCR1LlkDsQItCOv7/k/XtD0TS/v554
         zk5K+AZVnbPIYUI/trB2O0BowF/yovtZFXN7kdoxqyZlG/witf2fL9WgFZzNLctQTh6m
         ApNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=tG8ZUgmmOed+fAql+Hxlo70rHwp0ac4i4bM1Wp7Fdm0=;
        b=a/J29lGryVtU1xmvPuQfZqptXQe5SiyEEJkb4e62+T296YCv0JaUa0GLd+YfQQlJRw
         wePcr+9VH+u/YSCvSN4W6FSZphCVANS7IjPM/hTkpQGrU8kvquS6gttoDGTjXzsCQ9ZZ
         qwoxnqutuoEb3Rbz8TaQZg5yd9sDiuIAuVGbK9GW4Uxu/fLDWGuvKiALCmvG+ZEzvevU
         JbwP99s3y2dFah4W3A6hunXji1+jBSiENId28gvaRvTaKu7vd0K1p/NUGxmdh8MEqzJj
         K8AgV1AEcvMrL8a6bc2CL5xRAas/GvsQ7Gjx6XgPRQvVgmWW7+j6vdugK+MjGt3kvNJB
         Lk9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id m23si2019034qtc.0.2019.07.19.03.41.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jul 2019 03:41:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Jul 2019 03:41:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,282,1559545200"; 
   d="gz'50?scan'50,208,50";a="170870989"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 19 Jul 2019 03:41:25 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1hoQKL-0004mL-6x; Fri, 19 Jul 2019 18:41:25 +0800
Date: Fri, 19 Jul 2019 18:41:14 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] staging: rtl8712: Add parenthesis to Macro argument
Message-ID: <201907191844.R215UcXV%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="7slqm33nwxorkvxq"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--7slqm33nwxorkvxq
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
In-Reply-To: <20190713212652.11095-1-christianluciano.m@gmail.com>
References: <20190713212652.11095-1-christianluciano.m@gmail.com>
TO: christianluciano.m@gmail.com
CC: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org, christianluciano.m@gmail.com
CC: 

Hi,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on linus/master]
[cannot apply to v5.2 next-20190718]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/christianluciano-m-gmail-com/staging-rtl8712-Add-parenthesis-to-Macro-argument/20190714-103146
config: x86_64-rhel-7.2 (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 6a6f28f7b72077708df4411acfefd7c0cfccc0fe)
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/staging//rtl8712/hal_init.c:136:12: error: expected expression
           fwhdrsz = FIELD_OFFSET(struct fw_hdr, fwpriv) + pfwhdr->fw_priv_sz;
                     ^
   drivers/staging//rtl8712/basic_types.h:24:49: note: expanded from macro 'FIELD_OFFSET'
   #define FIELD_OFFSET(s, field)  ((addr_t)&(((s) *)(0))->(field))
                                                    ^
>> drivers/staging//rtl8712/hal_init.c:136:12: error: expected identifier
   drivers/staging//rtl8712/basic_types.h:24:56: note: expanded from macro 'FIELD_OFFSET'
   #define FIELD_OFFSET(s, field)  ((addr_t)&(((s) *)(0))->(field))
                                                           ^
>> drivers/staging//rtl8712/hal_init.c:136:40: error: use of undeclared identifier 'fwpriv'
           fwhdrsz = FIELD_OFFSET(struct fw_hdr, fwpriv) + pfwhdr->fw_priv_sz;
                                                 ^
   drivers/staging//rtl8712/hal_init.c:176:26: error: expected expression
                   ptr = (u8 *)mappedfw + FIELD_OFFSET(struct fw_hdr, fwpriv) +
                                          ^
   drivers/staging//rtl8712/basic_types.h:24:49: note: expanded from macro 'FIELD_OFFSET'
   #define FIELD_OFFSET(s, field)  ((addr_t)&(((s) *)(0))->(field))
                                                    ^
   drivers/staging//rtl8712/hal_init.c:176:26: error: expected identifier
   drivers/staging//rtl8712/basic_types.h:24:56: note: expanded from macro 'FIELD_OFFSET'
   #define FIELD_OFFSET(s, field)  ((addr_t)&(((s) *)(0))->(field))
                                                           ^
   drivers/staging//rtl8712/hal_init.c:176:54: error: use of undeclared identifier 'fwpriv'
                   ptr = (u8 *)mappedfw + FIELD_OFFSET(struct fw_hdr, fwpriv) +
                                                                      ^
   6 errors generated.
--
>> drivers/staging//rtl8712/rtl871x_ioctl_linux.c:413:4: error: expected expression
                           FIELD_OFFSET(struct NDIS_802_11_WEP, KeyMaterial);
                           ^
   drivers/staging//rtl8712/basic_types.h:24:49: note: expanded from macro 'FIELD_OFFSET'
   #define FIELD_OFFSET(s, field)  ((addr_t)&(((s) *)(0))->(field))
                                                    ^
>> drivers/staging//rtl8712/rtl871x_ioctl_linux.c:413:4: error: expected identifier
   drivers/staging//rtl8712/basic_types.h:24:56: note: expanded from macro 'FIELD_OFFSET'
   #define FIELD_OFFSET(s, field)  ((addr_t)&(((s) *)(0))->(field))
                                                           ^
>> drivers/staging//rtl8712/rtl871x_ioctl_linux.c:413:41: error: use of undeclared identifier 'KeyMaterial'; did you mean 'key_serial'?
                           FIELD_OFFSET(struct NDIS_802_11_WEP, KeyMaterial);
                                                                ^~~~~~~~~~~
                                                                key_serial
   drivers/staging//rtl8712/basic_types.h:24:57: note: expanded from macro 'FIELD_OFFSET'
   #define FIELD_OFFSET(s, field)  ((addr_t)&(((s) *)(0))->(field))
                                                            ^
   include/linux/key.h:400:28: note: 'key_serial' declared here
   static inline key_serial_t key_serial(const struct key *key)
                              ^
   drivers/staging//rtl8712/rtl871x_ioctl_linux.c:1562:9: error: expected expression
                                FIELD_OFFSET(struct NDIS_802_11_WEP, KeyMaterial);
                                ^
   drivers/staging//rtl8712/basic_types.h:24:49: note: expanded from macro 'FIELD_OFFSET'
   #define FIELD_OFFSET(s, field)  ((addr_t)&(((s) *)(0))->(field))
                                                    ^
   drivers/staging//rtl8712/rtl871x_ioctl_linux.c:1562:9: error: expected identifier
   drivers/staging//rtl8712/basic_types.h:24:56: note: expanded from macro 'FIELD_OFFSET'
   #define FIELD_OFFSET(s, field)  ((addr_t)&(((s) *)(0))->(field))
                                                           ^
   drivers/staging//rtl8712/rtl871x_ioctl_linux.c:1562:46: error: use of undeclared identifier 'KeyMaterial'; did you mean 'key_serial'?
                                FIELD_OFFSET(struct NDIS_802_11_WEP, KeyMaterial);
                                                                     ^~~~~~~~~~~
                                                                     key_serial
   drivers/staging//rtl8712/basic_types.h:24:57: note: expanded from macro 'FIELD_OFFSET'
   #define FIELD_OFFSET(s, field)  ((addr_t)&(((s) *)(0))->(field))
                                                            ^
   include/linux/key.h:400:28: note: 'key_serial' declared here
   static inline key_serial_t key_serial(const struct key *key)
                              ^
   6 errors generated.

vim +136 drivers/staging//rtl8712/hal_init.c

2865d42c78a9121 Larry Finger        2010-08-20  124  
2865d42c78a9121 Larry Finger        2010-08-20  125  static u8 chk_fwhdr(struct fw_hdr *pfwhdr, u32 ulfilelength)
2865d42c78a9121 Larry Finger        2010-08-20  126  {
2865d42c78a9121 Larry Finger        2010-08-20  127  	u32	fwhdrsz, fw_sz;
2865d42c78a9121 Larry Finger        2010-08-20  128  
2865d42c78a9121 Larry Finger        2010-08-20  129  	/* check signature */
2865d42c78a9121 Larry Finger        2010-08-20  130  	if ((pfwhdr->signature != 0x8712) && (pfwhdr->signature != 0x8192))
2865d42c78a9121 Larry Finger        2010-08-20  131  		return _FAIL;
2865d42c78a9121 Larry Finger        2010-08-20  132  	/* check fw_priv_sze & sizeof(struct fw_priv) */
2865d42c78a9121 Larry Finger        2010-08-20  133  	if (pfwhdr->fw_priv_sz != sizeof(struct fw_priv))
2865d42c78a9121 Larry Finger        2010-08-20  134  		return _FAIL;
2865d42c78a9121 Larry Finger        2010-08-20  135  	/* check fw_sz & image_fw_sz */
2865d42c78a9121 Larry Finger        2010-08-20 @136  	fwhdrsz = FIELD_OFFSET(struct fw_hdr, fwpriv) + pfwhdr->fw_priv_sz;
2865d42c78a9121 Larry Finger        2010-08-20  137  	fw_sz =  fwhdrsz + pfwhdr->img_IMEM_size + pfwhdr->img_SRAM_size +
2865d42c78a9121 Larry Finger        2010-08-20  138  		 pfwhdr->dmem_size;
2865d42c78a9121 Larry Finger        2010-08-20  139  	if (fw_sz != ulfilelength)
2865d42c78a9121 Larry Finger        2010-08-20  140  		return _FAIL;
2865d42c78a9121 Larry Finger        2010-08-20  141  	return _SUCCESS;
2865d42c78a9121 Larry Finger        2010-08-20  142  }
2865d42c78a9121 Larry Finger        2010-08-20  143  
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  144  static u8 rtl8712_dl_fw(struct _adapter *adapter)
2865d42c78a9121 Larry Finger        2010-08-20  145  {
2865d42c78a9121 Larry Finger        2010-08-20  146  	sint i;
2865d42c78a9121 Larry Finger        2010-08-20  147  	u8 tmp8, tmp8_a;
2865d42c78a9121 Larry Finger        2010-08-20  148  	u16 tmp16;
e29d3ebcda3ebc0 Sudip Mukherjee     2014-10-27  149  	u32 maxlen = 0; /* for compare usage */
2865d42c78a9121 Larry Finger        2010-08-20  150  	uint dump_imem_sz, imem_sz, dump_emem_sz, emem_sz; /* max = 49152; */
2865d42c78a9121 Larry Finger        2010-08-20  151  	struct fw_hdr fwhdr;
2865d42c78a9121 Larry Finger        2010-08-20  152  	u32 ulfilelength;	/* FW file size */
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  153  	const u8 *mappedfw = NULL;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  154  	u8 *tmpchar = NULL, *payload, *ptr;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  155  	struct tx_desc *txdesc;
2865d42c78a9121 Larry Finger        2010-08-20  156  	u32 txdscp_sz = sizeof(struct tx_desc);
e375870b9295be4 Larry Finger        2011-01-14  157  	u8 ret = _FAIL;
2865d42c78a9121 Larry Finger        2010-08-20  158  
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  159  	ulfilelength = rtl871x_open_fw(adapter, &mappedfw);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  160  	if (mappedfw && (ulfilelength > 0)) {
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  161  		update_fwhdr(&fwhdr, mappedfw);
2865d42c78a9121 Larry Finger        2010-08-20  162  		if (chk_fwhdr(&fwhdr, ulfilelength) == _FAIL)
8c213fa59199f96 Larry Finger        2012-02-05  163  			return ret;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  164  		fill_fwpriv(adapter, &fwhdr.fwpriv);
2865d42c78a9121 Larry Finger        2010-08-20  165  		/* firmware check ok */
2865d42c78a9121 Larry Finger        2010-08-20  166  		maxlen = (fwhdr.img_IMEM_size > fwhdr.img_SRAM_size) ?
2865d42c78a9121 Larry Finger        2010-08-20  167  			  fwhdr.img_IMEM_size : fwhdr.img_SRAM_size;
2865d42c78a9121 Larry Finger        2010-08-20  168  		maxlen += txdscp_sz;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  169  		tmpchar = kmalloc(maxlen + FWBUFF_ALIGN_SZ, GFP_KERNEL);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  170  		if (!tmpchar)
8c213fa59199f96 Larry Finger        2012-02-05  171  			return ret;
2865d42c78a9121 Larry Finger        2010-08-20  172  
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  173  		txdesc = (struct tx_desc *)(tmpchar + FWBUFF_ALIGN_SZ -
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  174  			    ((addr_t)(tmpchar) & (FWBUFF_ALIGN_SZ - 1)));
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  175  		payload = (u8 *)(txdesc) + txdscp_sz;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  176  		ptr = (u8 *)mappedfw + FIELD_OFFSET(struct fw_hdr, fwpriv) +
2865d42c78a9121 Larry Finger        2010-08-20  177  		      fwhdr.fw_priv_sz;
2865d42c78a9121 Larry Finger        2010-08-20  178  		/* Download FirmWare */
2865d42c78a9121 Larry Finger        2010-08-20  179  		/* 1. determine IMEM code size and Load IMEM Code Section */
2865d42c78a9121 Larry Finger        2010-08-20  180  		imem_sz = fwhdr.img_IMEM_size;
2865d42c78a9121 Larry Finger        2010-08-20  181  		do {
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  182  			memset(txdesc, 0, TXDESC_SIZE);
168a2c10288d78f Luis de Bethencourt 2015-10-19  183  			if (imem_sz >  MAX_DUMP_FWSZ/*49152*/) {
2865d42c78a9121 Larry Finger        2010-08-20  184  				dump_imem_sz = MAX_DUMP_FWSZ;
168a2c10288d78f Luis de Bethencourt 2015-10-19  185  			} else {
2865d42c78a9121 Larry Finger        2010-08-20  186  				dump_imem_sz = imem_sz;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  187  				txdesc->txdw0 |= cpu_to_le32(BIT(28));
2865d42c78a9121 Larry Finger        2010-08-20  188  			}
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  189  			txdesc->txdw0 |= cpu_to_le32(dump_imem_sz &
2865d42c78a9121 Larry Finger        2010-08-20  190  						       0x0000ffff);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  191  			memcpy(payload, ptr, dump_imem_sz);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  192  			r8712_write_mem(adapter, RTL8712_DMA_VOQ,
2865d42c78a9121 Larry Finger        2010-08-20  193  					dump_imem_sz + TXDESC_SIZE,
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  194  					(u8 *)txdesc);
2865d42c78a9121 Larry Finger        2010-08-20  195  			ptr += dump_imem_sz;
2865d42c78a9121 Larry Finger        2010-08-20  196  			imem_sz -= dump_imem_sz;
2865d42c78a9121 Larry Finger        2010-08-20  197  		} while (imem_sz > 0);
2865d42c78a9121 Larry Finger        2010-08-20  198  		i = 10;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  199  		tmp16 = r8712_read16(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  200  		while (((tmp16 & _IMEM_CODE_DONE) == 0) && (i > 0)) {
942eaa867f32138 Amitoj Kaur Chawla  2015-10-10  201  			usleep_range(10, 1000);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  202  			tmp16 = r8712_read16(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  203  			i--;
2865d42c78a9121 Larry Finger        2010-08-20  204  		}
2865d42c78a9121 Larry Finger        2010-08-20  205  		if (i == 0 || (tmp16 & _IMEM_CHK_RPT) == 0)
2865d42c78a9121 Larry Finger        2010-08-20  206  			goto exit_fail;
2865d42c78a9121 Larry Finger        2010-08-20  207  
2865d42c78a9121 Larry Finger        2010-08-20  208  		/* 2.Download EMEM code size and Load EMEM Code Section */
2865d42c78a9121 Larry Finger        2010-08-20  209  		emem_sz = fwhdr.img_SRAM_size;
2865d42c78a9121 Larry Finger        2010-08-20  210  		do {
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  211  			memset(txdesc, 0, TXDESC_SIZE);
a7e585918ecd5a2 Liam Ryan           2017-09-12  212  			if (emem_sz >  MAX_DUMP_FWSZ) { /* max=48k */
2865d42c78a9121 Larry Finger        2010-08-20  213  				dump_emem_sz = MAX_DUMP_FWSZ;
a7e585918ecd5a2 Liam Ryan           2017-09-12  214  			} else {
2865d42c78a9121 Larry Finger        2010-08-20  215  				dump_emem_sz = emem_sz;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  216  				txdesc->txdw0 |= cpu_to_le32(BIT(28));
2865d42c78a9121 Larry Finger        2010-08-20  217  			}
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  218  			txdesc->txdw0 |= cpu_to_le32(dump_emem_sz &
2865d42c78a9121 Larry Finger        2010-08-20  219  						       0x0000ffff);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  220  			memcpy(payload, ptr, dump_emem_sz);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  221  			r8712_write_mem(adapter, RTL8712_DMA_VOQ,
e7d992d8b6224aa Parth Sane          2016-04-25  222  					dump_emem_sz + TXDESC_SIZE,
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  223  					(u8 *)txdesc);
2865d42c78a9121 Larry Finger        2010-08-20  224  			ptr += dump_emem_sz;
2865d42c78a9121 Larry Finger        2010-08-20  225  			emem_sz -= dump_emem_sz;
2865d42c78a9121 Larry Finger        2010-08-20  226  		} while (emem_sz > 0);
2865d42c78a9121 Larry Finger        2010-08-20  227  		i = 5;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  228  		tmp16 = r8712_read16(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  229  		while (((tmp16 & _EMEM_CODE_DONE) == 0) && (i > 0)) {
942eaa867f32138 Amitoj Kaur Chawla  2015-10-10  230  			usleep_range(10, 1000);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  231  			tmp16 = r8712_read16(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  232  			i--;
2865d42c78a9121 Larry Finger        2010-08-20  233  		}
2865d42c78a9121 Larry Finger        2010-08-20  234  		if (i == 0 || (tmp16 & _EMEM_CHK_RPT) == 0)
2865d42c78a9121 Larry Finger        2010-08-20  235  			goto exit_fail;
2865d42c78a9121 Larry Finger        2010-08-20  236  
2865d42c78a9121 Larry Finger        2010-08-20  237  		/* 3.Enable CPU */
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  238  		tmp8 = r8712_read8(adapter, SYS_CLKR);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  239  		r8712_write8(adapter, SYS_CLKR, tmp8 | BIT(2));
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  240  		tmp8_a = r8712_read8(adapter, SYS_CLKR);
2865d42c78a9121 Larry Finger        2010-08-20  241  		if (tmp8_a != (tmp8 | BIT(2)))
2865d42c78a9121 Larry Finger        2010-08-20  242  			goto exit_fail;
2865d42c78a9121 Larry Finger        2010-08-20  243  
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  244  		tmp8 = r8712_read8(adapter, SYS_FUNC_EN + 1);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  245  		r8712_write8(adapter, SYS_FUNC_EN + 1, tmp8 | BIT(2));
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  246  		tmp8_a = r8712_read8(adapter, SYS_FUNC_EN + 1);
2865d42c78a9121 Larry Finger        2010-08-20  247  		if (tmp8_a != (tmp8 | BIT(2)))
2865d42c78a9121 Larry Finger        2010-08-20  248  			goto exit_fail;
2865d42c78a9121 Larry Finger        2010-08-20  249  
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  250  		r8712_read32(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  251  
2865d42c78a9121 Larry Finger        2010-08-20  252  		/* 4.polling IMEM Ready */
2865d42c78a9121 Larry Finger        2010-08-20  253  		i = 100;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  254  		tmp16 = r8712_read16(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  255  		while (((tmp16 & _IMEM_RDY) == 0) && (i > 0)) {
2865d42c78a9121 Larry Finger        2010-08-20  256  			msleep(20);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  257  			tmp16 = r8712_read16(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  258  			i--;
2865d42c78a9121 Larry Finger        2010-08-20  259  		}
2865d42c78a9121 Larry Finger        2010-08-20  260  		if (i == 0) {
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  261  			r8712_write16(adapter, 0x10250348, 0xc000);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  262  			r8712_write16(adapter, 0x10250348, 0xc001);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  263  			r8712_write16(adapter, 0x10250348, 0x2000);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  264  			r8712_write16(adapter, 0x10250348, 0x2001);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  265  			r8712_write16(adapter, 0x10250348, 0x2002);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  266  			r8712_write16(adapter, 0x10250348, 0x2003);
2865d42c78a9121 Larry Finger        2010-08-20  267  			goto exit_fail;
2865d42c78a9121 Larry Finger        2010-08-20  268  		}
2865d42c78a9121 Larry Finger        2010-08-20  269  		/* 5.Download DMEM code size and Load EMEM Code Section */
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  270  		memset(txdesc, 0, TXDESC_SIZE);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  271  		txdesc->txdw0 |= cpu_to_le32(fwhdr.fw_priv_sz & 0x0000ffff);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  272  		txdesc->txdw0 |= cpu_to_le32(BIT(28));
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  273  		memcpy(payload, &fwhdr.fwpriv, fwhdr.fw_priv_sz);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  274  		r8712_write_mem(adapter, RTL8712_DMA_VOQ,
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  275  				fwhdr.fw_priv_sz + TXDESC_SIZE, (u8 *)txdesc);
2865d42c78a9121 Larry Finger        2010-08-20  276  
2865d42c78a9121 Larry Finger        2010-08-20  277  		/* polling dmem code done */
2865d42c78a9121 Larry Finger        2010-08-20  278  		i = 100;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  279  		tmp16 = r8712_read16(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  280  		while (((tmp16 & _DMEM_CODE_DONE) == 0) && (i > 0)) {
2865d42c78a9121 Larry Finger        2010-08-20  281  			msleep(20);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  282  			tmp16 = r8712_read16(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  283  			i--;
2865d42c78a9121 Larry Finger        2010-08-20  284  		}
2865d42c78a9121 Larry Finger        2010-08-20  285  		if (i == 0)
2865d42c78a9121 Larry Finger        2010-08-20  286  			goto exit_fail;
2865d42c78a9121 Larry Finger        2010-08-20  287  
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  288  		tmp8 = r8712_read8(adapter, 0x1025000A);
2865d42c78a9121 Larry Finger        2010-08-20  289  		if (tmp8 & BIT(4)) /* When boot from EEPROM,
4dadfb97b73f0fb Juliana Rodrigues   2016-03-13  290  				    * & FW need more time to read EEPROM
4dadfb97b73f0fb Juliana Rodrigues   2016-03-13  291  				    */
2865d42c78a9121 Larry Finger        2010-08-20  292  			i = 60;
2865d42c78a9121 Larry Finger        2010-08-20  293  		else			/* boot from EFUSE */
2865d42c78a9121 Larry Finger        2010-08-20  294  			i = 30;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  295  		tmp16 = r8712_read16(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  296  		while (((tmp16 & _FWRDY) == 0) && (i > 0)) {
2865d42c78a9121 Larry Finger        2010-08-20  297  			msleep(100);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  298  			tmp16 = r8712_read16(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  299  			i--;
2865d42c78a9121 Larry Finger        2010-08-20  300  		}
2865d42c78a9121 Larry Finger        2010-08-20  301  		if (i == 0)
2865d42c78a9121 Larry Finger        2010-08-20  302  			goto exit_fail;
168a2c10288d78f Luis de Bethencourt 2015-10-19  303  	} else {
2865d42c78a9121 Larry Finger        2010-08-20  304  		goto exit_fail;
168a2c10288d78f Luis de Bethencourt 2015-10-19  305  	}
e375870b9295be4 Larry Finger        2011-01-14  306  	ret = _SUCCESS;
2865d42c78a9121 Larry Finger        2010-08-20  307  
2865d42c78a9121 Larry Finger        2010-08-20  308  exit_fail:
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  309  	kfree(tmpchar);
e375870b9295be4 Larry Finger        2011-01-14  310  	return ret;
2865d42c78a9121 Larry Finger        2010-08-20  311  }
2865d42c78a9121 Larry Finger        2010-08-20  312  
2865d42c78a9121 Larry Finger        2010-08-20  313  uint rtl8712_hal_init(struct _adapter *padapter)
2865d42c78a9121 Larry Finger        2010-08-20  314  {
2865d42c78a9121 Larry Finger        2010-08-20  315  	u32 val32;
2865d42c78a9121 Larry Finger        2010-08-20  316  	int i;
2865d42c78a9121 Larry Finger        2010-08-20  317  
2865d42c78a9121 Larry Finger        2010-08-20  318  	/* r8712 firmware download */
2865d42c78a9121 Larry Finger        2010-08-20  319  	if (rtl8712_dl_fw(padapter) != _SUCCESS)
2865d42c78a9121 Larry Finger        2010-08-20  320  		return _FAIL;
2865d42c78a9121 Larry Finger        2010-08-20  321  
87a573ada017b40 Przemo Firszt       2012-12-10  322  	netdev_info(padapter->pnetdev, "1 RCR=0x%x\n",
87a573ada017b40 Przemo Firszt       2012-12-10  323  		    r8712_read32(padapter, RCR));
2865d42c78a9121 Larry Finger        2010-08-20  324  	val32 = r8712_read32(padapter, RCR);
2865d42c78a9121 Larry Finger        2010-08-20  325  	r8712_write32(padapter, RCR, (val32 | BIT(26))); /* Enable RX TCP
4dadfb97b73f0fb Juliana Rodrigues   2016-03-13  326  							  * Checksum offload
4dadfb97b73f0fb Juliana Rodrigues   2016-03-13  327  							  */
87a573ada017b40 Przemo Firszt       2012-12-10  328  	netdev_info(padapter->pnetdev, "2 RCR=0x%x\n",
87a573ada017b40 Przemo Firszt       2012-12-10  329  		    r8712_read32(padapter, RCR));
2865d42c78a9121 Larry Finger        2010-08-20  330  	val32 = r8712_read32(padapter, RCR);
2865d42c78a9121 Larry Finger        2010-08-20  331  	r8712_write32(padapter, RCR, (val32 | BIT(25))); /* Append PHY status */
2865d42c78a9121 Larry Finger        2010-08-20  332  	val32 = r8712_read32(padapter, 0x10250040);
2865d42c78a9121 Larry Finger        2010-08-20  333  	r8712_write32(padapter,  0x10250040, (val32 & 0x00FFFFFF));
2865d42c78a9121 Larry Finger        2010-08-20  334  	/* for usb rx aggregation */
2865d42c78a9121 Larry Finger        2010-08-20  335  	r8712_write8(padapter, 0x102500B5, r8712_read8(padapter, 0x102500B5) |
2865d42c78a9121 Larry Finger        2010-08-20  336  	       BIT(0)); /* page = 128bytes */
2865d42c78a9121 Larry Finger        2010-08-20  337  	r8712_write8(padapter, 0x102500BD, r8712_read8(padapter, 0x102500BD) |
2865d42c78a9121 Larry Finger        2010-08-20  338  	       BIT(7)); /* enable usb rx aggregation */
2865d42c78a9121 Larry Finger        2010-08-20  339  	r8712_write8(padapter, 0x102500D9, 1); /* TH=1 => means that invalidate
4dadfb97b73f0fb Juliana Rodrigues   2016-03-13  340  						*  usb rx aggregation
4dadfb97b73f0fb Juliana Rodrigues   2016-03-13  341  						*/
2865d42c78a9121 Larry Finger        2010-08-20  342  	r8712_write8(padapter, 0x1025FE5B, 0x04); /* 1.7ms/4 */
2865d42c78a9121 Larry Finger        2010-08-20  343  	/* Fix the RX FIFO issue(USB error) */
2865d42c78a9121 Larry Finger        2010-08-20  344  	r8712_write8(padapter, 0x1025fe5C, r8712_read8(padapter, 0x1025fe5C)
2865d42c78a9121 Larry Finger        2010-08-20  345  		     | BIT(7));
2865d42c78a9121 Larry Finger        2010-08-20  346  	for (i = 0; i < 6; i++)
2865d42c78a9121 Larry Finger        2010-08-20  347  		padapter->eeprompriv.mac_addr[i] = r8712_read8(padapter,
2865d42c78a9121 Larry Finger        2010-08-20  348  							       MACID + i);
2865d42c78a9121 Larry Finger        2010-08-20  349  	return _SUCCESS;
2865d42c78a9121 Larry Finger        2010-08-20  350  }
2865d42c78a9121 Larry Finger        2010-08-20  351  
2865d42c78a9121 Larry Finger        2010-08-20  352  uint rtl8712_hal_deinit(struct _adapter *padapter)
2865d42c78a9121 Larry Finger        2010-08-20  353  {
2865d42c78a9121 Larry Finger        2010-08-20  354  	r8712_write8(padapter, RF_CTRL, 0x00);
2865d42c78a9121 Larry Finger        2010-08-20  355  	/* Turn off BB */
2865d42c78a9121 Larry Finger        2010-08-20  356  	msleep(20);
2865d42c78a9121 Larry Finger        2010-08-20  357  	/* Turn off MAC	*/
2865d42c78a9121 Larry Finger        2010-08-20  358  	r8712_write8(padapter, SYS_CLKR + 1, 0x38); /* Switch Control Path */
2865d42c78a9121 Larry Finger        2010-08-20  359  	r8712_write8(padapter, SYS_FUNC_EN + 1, 0x70);
2865d42c78a9121 Larry Finger        2010-08-20  360  	r8712_write8(padapter, PMC_FSM, 0x06);  /* Enable Loader Data Keep */
2865d42c78a9121 Larry Finger        2010-08-20  361  	r8712_write8(padapter, SYS_ISO_CTRL, 0xF9); /* Isolation signals from
4dadfb97b73f0fb Juliana Rodrigues   2016-03-13  362  						     * CORE, PLL
4dadfb97b73f0fb Juliana Rodrigues   2016-03-13  363  						     */
2865d42c78a9121 Larry Finger        2010-08-20  364  	r8712_write8(padapter, SYS_ISO_CTRL + 1, 0xe8); /* Enable EFUSE 1.2V */
2865d42c78a9121 Larry Finger        2010-08-20  365  	r8712_write8(padapter, AFE_PLL_CTRL, 0x00); /* Disable AFE PLL. */
2865d42c78a9121 Larry Finger        2010-08-20  366  	r8712_write8(padapter, LDOA15_CTRL, 0x54);  /* Disable A15V */
2865d42c78a9121 Larry Finger        2010-08-20  367  	r8712_write8(padapter, SYS_FUNC_EN + 1, 0x50); /* Disable E-Fuse 1.2V */
2865d42c78a9121 Larry Finger        2010-08-20  368  	r8712_write8(padapter, LDOV12D_CTRL, 0x24); /* Disable LDO12(for CE) */
2865d42c78a9121 Larry Finger        2010-08-20  369  	r8712_write8(padapter, AFE_MISC, 0x30); /* Disable AFE BG&MB */
2865d42c78a9121 Larry Finger        2010-08-20  370  	/* Option for Disable 1.6V LDO.	*/
2865d42c78a9121 Larry Finger        2010-08-20  371  	r8712_write8(padapter, SPS0_CTRL, 0x56); /* Disable 1.6V LDO */
2865d42c78a9121 Larry Finger        2010-08-20  372  	r8712_write8(padapter, SPS0_CTRL + 1, 0x43);  /* Set SW PFM */
2865d42c78a9121 Larry Finger        2010-08-20  373  	return _SUCCESS;
2865d42c78a9121 Larry Finger        2010-08-20  374  }
2865d42c78a9121 Larry Finger        2010-08-20  375  
2865d42c78a9121 Larry Finger        2010-08-20  376  uint rtl871x_hal_init(struct _adapter *padapter)
2865d42c78a9121 Larry Finger        2010-08-20  377  {
2865d42c78a9121 Larry Finger        2010-08-20  378  	padapter->hw_init_completed = false;
8d2884ace7919ea Amitoj Kaur Chawla  2015-10-07  379  	if (!padapter->halpriv.hal_bus_init)
2865d42c78a9121 Larry Finger        2010-08-20  380  		return _FAIL;
2865d42c78a9121 Larry Finger        2010-08-20  381  	if (padapter->halpriv.hal_bus_init(padapter) != _SUCCESS)
2865d42c78a9121 Larry Finger        2010-08-20  382  		return _FAIL;
168a2c10288d78f Luis de Bethencourt 2015-10-19  383  	if (rtl8712_hal_init(padapter) == _SUCCESS) {
2865d42c78a9121 Larry Finger        2010-08-20  384  		padapter->hw_init_completed = true;
168a2c10288d78f Luis de Bethencourt 2015-10-19  385  	} else {
2865d42c78a9121 Larry Finger        2010-08-20  386  		padapter->hw_init_completed = false;
2865d42c78a9121 Larry Finger        2010-08-20  387  		return _FAIL;
2865d42c78a9121 Larry Finger        2010-08-20  388  	}
2865d42c78a9121 Larry Finger        2010-08-20  389  	return _SUCCESS;
2865d42c78a9121 Larry Finger        2010-08-20  390  }

:::::: The code at line 136 was first introduced by commit
:::::: 2865d42c78a9121caad52cb02d1fbb7f5cdbc4ef staging: r8712u: Add the new driver to the mainline kernel

:::::: TO: Larry Finger <Larry.Finger@lwfinger.net>
:::::: CC: Larry Finger <Larry.Finger@lwfinger.net>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201907191844.R215UcXV%25lkp%40intel.com.

--7slqm33nwxorkvxq
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
gXTWesGF3UAP6sr+/wEKunmdcLcCAA==

--7slqm33nwxorkvxq--
