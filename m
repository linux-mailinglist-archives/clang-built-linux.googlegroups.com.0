Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3PNQCAQMGQELP53DOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0453126F6
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Feb 2021 19:52:31 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id a19sf2845771uak.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Feb 2021 10:52:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612723950; cv=pass;
        d=google.com; s=arc-20160816;
        b=Af/iK9rmTHwYMO4Ff6Ay1YQ9rzJbO7km8LneTkinCaXymRXoJm6a950UWl9bvKwNFx
         2jxWb45oU3KyY0FT+M+56IqqZlLPDp6m01yQjsdwNBv0v+IwK/jplXyJzViIy4AlggY1
         lgCvLzkS1Z6U/qLNQc1VGYg2X0JExYvE6NJXg4gfaXxgV+e+FHiqXLoLisBj5NdJtYLn
         EE/ESdJx3DKh63vMjGro0AUBg41kOe+XyQ966Kxl5nSAGLFga5De4axHsIIP8De43fV2
         TukBFl9OoZlncWu1A9JEXh4A5khEwIIaqT3bgut1anTEnkJo0uNroObX5ApoHfOwnzC2
         d/kQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=7rUrBGgArY3KqgPpwJhoj8pK9mIPH+vzYYcFLvc6oNg=;
        b=Jzth/sHwH8URx6LgPMxjwlGFbzxL0frJTOS3U80E6a4t2Cq6vy6PAxtKbxfZ+16piU
         RN49vZ7nwJhdvQbGNQpv4Fi3bvaPNjyuawZsBxvM7ZX2F0nezTIcANf9JL7UWyIkrlET
         ii6mupKy0t+OVfSheVZytlWXKrvFcvw5J7bXlVwizGe8uVpLDJXMJo726DRM6eC5hlQk
         5Y60yVVywno0i1+4/X3FAchWT2SKygRMXRGs2IEsuFMx+z3Bp8xMtPg22APQc8K7FhZn
         opGRk9r0IBvZTc58Bc1AFrAj7cTQ299hHQandOpgOxTcxJ182dHGclB2CXnWBrmFdEy5
         /Xaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7rUrBGgArY3KqgPpwJhoj8pK9mIPH+vzYYcFLvc6oNg=;
        b=Azve6wy3iMiBu0PfpuwKh/ztbN/T3Etc1SNSHmA+kCiWvO6cFMCk+Ei4LuPM7cMx74
         nBd9RXsZlIv+H0UtZjvXqX3gtfl7IxLz2KMsx8ira0m2Dp7Y7Od1f5JFFR2wrDe/GjRh
         Xf4RjN7goZtV1Pk5AyD4aJg7VlV9uTFkgimvO/F1QjjytJ2IaL10dd8yGz5p8gq0iiAy
         070tlgJFKPugfePg+zZRPuI5NQH9ywI/ZOECyvD8Ida5tpPGI11R3o6L2xct8FYNyL03
         VJVAeeRR6E8HAu/LzWV7ezrT758ctspOmgtv9VVvho7di32Fpf47hytW84h0uJE5z5nN
         9d0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7rUrBGgArY3KqgPpwJhoj8pK9mIPH+vzYYcFLvc6oNg=;
        b=egYT/zZJtcrMVQWamIHDM5oq8x03SmdMCqzLPHzQ+rGFkfIUQqiRtuYip/AbpVuS7B
         SW0iXiN9J2LB1TwScDyghcQV8KLV/+/LbcjAUZRC17mX3D9SG9bFLSenY90WCRTb9RGJ
         nRREAkaoURhwDWCG4ClGbIlVbifyxGxDD7PSifXhoXXOx230C5pIf5hyDUno7zOebjnR
         DD8KtRDjubsg0Lf8gHqUqaBeJGwt4DUh0hYypZ5zwGV50+jaMqgx2zMzhOJNNy8+bXfH
         paT400DVjA5ecjeEWSqSmkwFvso+H9vfNyPvnG9XkJh+R2TCwA/LK8ntnjtAoDghm27d
         Lqjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530LXHa0HMsFXO7s2kmR7SiZDJdeNmtGvtSn2ZDqMbU+w5vkcOvh
	wJa9NqJ0tGJpXEnUExoURP0=
X-Google-Smtp-Source: ABdhPJwXrcC6xBpXW1cXSsOAafL8+/OiTajFWBGJBk1uZOL4BgX15pme+FFglKSET+1zcOl87nY6Xw==
X-Received: by 2002:ab0:28d4:: with SMTP id g20mr8206217uaq.131.1612723949808;
        Sun, 07 Feb 2021 10:52:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2645:: with SMTP id m66ls1776927vsm.3.gmail; Sun, 07 Feb
 2021 10:52:29 -0800 (PST)
X-Received: by 2002:a67:1202:: with SMTP id 2mr7298485vss.53.1612723949202;
        Sun, 07 Feb 2021 10:52:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612723949; cv=none;
        d=google.com; s=arc-20160816;
        b=Nebe/3Dpd6M12pmk0PBcIc7Ls0roef9p3nWV/6Ox6aZQOLGsfaQ6v8RpFU6pxyBtKd
         lebtJ+p7TmdoBNhR4hpaxFJRa0IkFg1ANoD4Z4eQKXzq/V9r2BJLnTXnyh8a04p1mfvd
         3Otv4+P8I39vR5s3dg+sbeeKn5HGvqo2mc2oG/nUkfZSeYjubPZiGdzuc2a1lMxE9mST
         ht9wdquf9k38N7tmmtQGTGrT02pMqCjfzoUyB+J3oRrfKSwtDRwZkgE6b6cqxRmCX+r/
         oA3g4c9+AR0N9JqKx+tWM36N4avju+IEgiXwM1D7R5fMSpRN6g91N6JR5r55E0A4e9H/
         4XVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=rEVjL5zjviwxcPQNqmEo9OLFkQcOTsKtHzo0hiix5eg=;
        b=qv6r8p3KP80C+DcaoVcTBwmKj5btnrIb6UI93IFHhdTmYvMsCCoELrmQ69Hp3w0uXb
         K+ckSwJYXdpeXHZh2mrM0pV0231/4Wa4PFehnSk/D3WEpCdNWloQANY7e5s+IXL1zPXE
         zf3Fw9/Kan+lESWGzrboW9ByXd8U5zDgubFrTvFLacCgF9VX3OBAAomjXdPUacbGeXe4
         xIqr96n0PDb2Mp8KGYsMnwiGBxVr8MZ/jmStj4tPxytaTO9UcNdsk0gx7YFpEmauz33g
         7PJfNaAM2owGKFKa6p4IzgxZiuiEXa9H+0WafMNGka3q/panYhaRXOGpqrTMNjyWDniV
         bgVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id l5si145635vkn.3.2021.02.07.10.52.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Feb 2021 10:52:29 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: Fpi5qLBl2HIOsKugyjXsJTJdzHaC68v6nDYX1yhCu57pJwIwGA8AZD27KhTk8/5Ap1WpDn5e/f
 7bI/7B575cog==
X-IronPort-AV: E=McAfee;i="6000,8403,9888"; a="266457713"
X-IronPort-AV: E=Sophos;i="5.81,160,1610438400"; 
   d="gz'50?scan'50,208,50";a="266457713"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Feb 2021 10:52:27 -0800
IronPort-SDR: Rpp4mLPWV51TIY5NQAmV1N9sbyuF0ykQ/ax2A0oWtIZkNt6H0ONmVPk3wTsQxI5mJ8nKMrm6vv
 33orcvwHsP+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,160,1610438400"; 
   d="gz'50?scan'50,208,50";a="417334850"
Received: from lkp-server02.sh.intel.com (HELO 8b832f01bb9c) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 07 Feb 2021 10:52:25 -0800
Received: from kbuild by 8b832f01bb9c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l8pAX-000317-8f; Sun, 07 Feb 2021 18:52:25 +0000
Date: Mon, 8 Feb 2021 02:51:24 +0800
From: kernel test robot <lkp@intel.com>
To: "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org
Subject: drivers/media/test-drivers/vidtv/vidtv_psi.c:1457:31: warning:
 taking address of packed member 'bitfield' of class or structure
 'vidtv_psi_table_nit' may result in an unaligned pointer value
Message-ID: <202102080217.H0P26LAj-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="MGYHOYXEY6WxJCY8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--MGYHOYXEY6WxJCY8
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Daniel,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   61556703b610a104de324e4f061dc6cf7b218b46
commit: c2f78f0cb294aa6f009d3a170f4ee8ad199ba5da media: vidtv: psi: add a Network Information Table (NIT)
date:   2 months ago
config: mips-randconfig-r032-20210207 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c2f78f0cb294aa6f009d3a170f4ee8ad199ba5da
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout c2f78f0cb294aa6f009d3a170f4ee8ad199ba5da
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/media/test-drivers/vidtv/vidtv_psi.c:753:31: warning: taking address of packed member 'bitfield2' of class or structure 'vidtv_psi_table_pmt' may result in an unaligned pointer value [-Waddress-of-packed-member]
           vidtv_psi_set_desc_loop_len(&pmt->bitfield2, desc_loop_len, 10);
                                        ^~~~~~~~~~~~~~
   drivers/media/test-drivers/vidtv/vidtv_psi.c:764:32: warning: taking address of packed member 'bitfield2' of class or structure 'vidtv_psi_table_pmt_stream' may result in an unaligned pointer value [-Waddress-of-packed-member]
                   vidtv_psi_set_desc_loop_len(&s->bitfield2, desc_loop_len, 10);
                                                ^~~~~~~~~~~~
   drivers/media/test-drivers/vidtv/vidtv_psi.c:796:32: warning: taking address of packed member 'bitfield' of class or structure 'vidtv_psi_table_sdt_service' may result in an unaligned pointer value [-Waddress-of-packed-member]
                   vidtv_psi_set_desc_loop_len(&s->bitfield, desc_loop_len, 12);
                                                ^~~~~~~~~~~
>> drivers/media/test-drivers/vidtv/vidtv_psi.c:1457:31: warning: taking address of packed member 'bitfield' of class or structure 'vidtv_psi_table_nit' may result in an unaligned pointer value [-Waddress-of-packed-member]
           vidtv_psi_set_desc_loop_len(&nit->bitfield, desc_loop_len, 12);
                                        ^~~~~~~~~~~~~
>> drivers/media/test-drivers/vidtv/vidtv_psi.c:1472:32: warning: taking address of packed member 'bitfield' of class or structure 'vidtv_psi_table_transport' may result in an unaligned pointer value [-Waddress-of-packed-member]
                   vidtv_psi_set_desc_loop_len(&t->bitfield, desc_loop_len, 12);
                                                ^~~~~~~~~~~
>> drivers/media/test-drivers/vidtv/vidtv_psi.c:1480:31: warning: taking address of packed member 'bitfield2' of class or structure 'vidtv_psi_table_nit' may result in an unaligned pointer value [-Waddress-of-packed-member]
           vidtv_psi_set_desc_loop_len(&nit->bitfield2, transport_loop_len, 12);
                                        ^~~~~~~~~~~~~~
   drivers/media/test-drivers/vidtv/vidtv_psi.c:92:19: warning: unused function 'vidtv_psi_sdt_serv_get_desc_loop_len' [-Wunused-function]
   static inline u16 vidtv_psi_sdt_serv_get_desc_loop_len(struct vidtv_psi_table_sdt_service *s)
                     ^
   drivers/media/test-drivers/vidtv/vidtv_psi.c:103:19: warning: unused function 'vidtv_psi_pmt_stream_get_desc_loop_len' [-Wunused-function]
   static inline u16 vidtv_psi_pmt_stream_get_desc_loop_len(struct vidtv_psi_table_pmt_stream *s)
                     ^
   drivers/media/test-drivers/vidtv/vidtv_psi.c:114:19: warning: unused function 'vidtv_psi_pmt_get_desc_loop_len' [-Wunused-function]
   static inline u16 vidtv_psi_pmt_get_desc_loop_len(struct vidtv_psi_table_pmt *p)
                     ^
   9 warnings generated.


vim +1457 drivers/media/test-drivers/vidtv/vidtv_psi.c

  1442	
  1443	static void vidtv_psi_nit_table_update_sec_len(struct vidtv_psi_table_nit *nit)
  1444	{
  1445		u16 length = 0;
  1446		struct vidtv_psi_table_transport *t = nit->transport;
  1447		u16 desc_loop_len;
  1448		u16 transport_loop_len = 0;
  1449	
  1450		/*
  1451		 * from immediately after 'section_length' until
  1452		 * 'network_descriptor_length'
  1453		 */
  1454		length += NIT_LEN_UNTIL_NETWORK_DESCRIPTOR_LEN;
  1455	
  1456		desc_loop_len = vidtv_psi_desc_comp_loop_len(nit->descriptor);
> 1457		vidtv_psi_set_desc_loop_len(&nit->bitfield, desc_loop_len, 12);
  1458	
  1459		length += desc_loop_len;
  1460	
  1461		length += sizeof_field(struct vidtv_psi_table_nit, bitfield2);
  1462	
  1463		while (t) {
  1464			/* skip both pointers at the end */
  1465			transport_loop_len += sizeof(struct vidtv_psi_table_transport) -
  1466					      sizeof(struct vidtv_psi_desc *) -
  1467					      sizeof(struct vidtv_psi_table_transport *);
  1468	
  1469			length += transport_loop_len;
  1470	
  1471			desc_loop_len = vidtv_psi_desc_comp_loop_len(t->descriptor);
> 1472			vidtv_psi_set_desc_loop_len(&t->bitfield, desc_loop_len, 12);
  1473	
  1474			length += desc_loop_len;
  1475	
  1476			t = t->next;
  1477		}
  1478	
  1479		// Actually sets the transport stream loop len, maybe rename this function later
> 1480		vidtv_psi_set_desc_loop_len(&nit->bitfield2, transport_loop_len, 12);
  1481		length += CRC_SIZE_IN_BYTES;
  1482	
  1483		vidtv_psi_set_sec_len(&nit->header, length);
  1484	}
  1485	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102080217.H0P26LAj-lkp%40intel.com.

--MGYHOYXEY6WxJCY8
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AA==

--MGYHOYXEY6WxJCY8--
