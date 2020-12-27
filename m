Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBOFPT77QKGQEPCERFWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 6390B2E2F78
	for <lists+clang-built-linux@lfdr.de>; Sun, 27 Dec 2020 01:39:22 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id 139sf5189736pgd.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 26 Dec 2020 16:39:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609029561; cv=pass;
        d=google.com; s=arc-20160816;
        b=t15CI7YOakGlW1P1tMTfCKvo1v17Jwg3ZI1pt/5CiaGQxhiOxZJyJXkh32PENaIMPp
         A+YGTRrSfuFpFrWvBPJUvKGy0LRM8lPGCLM5rUmNXALXWJcvz30bNnNmoPlXOgbTeiAh
         SLxqWr4Y3gEU6+jaalwYxCK1Qcz8F0RWsEOnvm6BroirFfdeiUU0IHzWw4HrK+BP2UYQ
         Jw0idEtgnUWU0F8hH+aL+lf7TyL9YmSi8QXHdMt0SfTCHJtjw0XvzJ92F/4+9G3J9oLA
         Kl2XHFg/km3QpD4hwhyLpRy9EKMKRQnGjX+Z3q8erBo80wbHUM/4QAfvU7I0Y2igXJjz
         K1tQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=YCJkYOBtTOhDUoA0MpMCCjJ5Dfsb7QUEdDnWHneVFfg=;
        b=Tjgrv6Nmlp5sZQm7R2RvHAWGX6yf5XtkSl8qJe6FHO75tHLBTqYsHpeth7N5lC9Lrb
         XgQA553uU0iRQyL4XcEzPIIP1wADouxxNCCVu402X2DkeXiqoMV57y5d+CWGbLKG2azN
         /L4Rlko7SEyoFe7XWgPOh97W3IzHeY0AyT0DtgJ7qpuxKuqP5xQbhy+DMrKrj56UmJ9A
         lThXJZlQe44kQWrqFkZ/GfEtxyz3TpWmiaL6e/UhpWE6EQZ+vorB+BTVjdz+IunsVOrv
         cIT+UaHMZ7T8QVna3h+cV1a3eSYjTeE8/6Bi839z41elINfI0tXv6V1Hew5iGGYuKh01
         TYpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YCJkYOBtTOhDUoA0MpMCCjJ5Dfsb7QUEdDnWHneVFfg=;
        b=I9KaSwptWoEhB+tdURl42pRss8eStMf3zVr1YzSudYrZpABrL3+Da1Y1XExIVkC3Yh
         JzVZ/uj4gUtJvABgNRuggj9z87Plu9/MPEyEVChsvlabOhV+VBe9irQ/UMUsQ1MwoW76
         H5gG46G5eJfJ/s4NDwvtTDAIxvBYCA6YPSQ2aebGoKoUFj4wP8SNyPlhEM1tPWl271va
         BuyzqSQB+95pHm+hLdgoAjsEd/+NYHU7ont7NvlBVLPORQ0xcY4qBKKH6YV9VgdJ5uV3
         74BJcuzmDqp7HhoPac4PhtsOyo+PESWjo7WAZczRWPzlufVEOGxxyEIsZrLTmq0HQfvd
         +NhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YCJkYOBtTOhDUoA0MpMCCjJ5Dfsb7QUEdDnWHneVFfg=;
        b=IJUHHI9FvbRha/XWH33Q8fD28YfzUfjogCiwE8zefcoYfUmtYig76asl4fOkveAzUL
         3Fgf2laPh0OZ7Y6xlyMDA/KnwGuaWYZ6JnMjDSxivezLekl4CijUr9/nR036bLbO83pj
         AhDSzTJtHfLMKSNRdRve1+uqEkipVWt6mnoCrqk9xOIykqCMoLQ4c5NrLXAFNScKsc/t
         H2DRRfJVKQwYWYj1jgIckdW92uuv5W6byTPT2gUAG58I73UyAB92lIP9wa/OC3t+ENwB
         IBCB4spyEr7HL/k3R8BwqR84Xkk8ooHYdxMIR/4wmi16/CxcnJIkimWfccqgNHa1iJQ5
         TTGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532acDdXaIWJYIhx+b0hVAefHpeXfXTCnAnbsyo+xsZ889KAwDfn
	MdAdLrtOeYj927T7ljixETI=
X-Google-Smtp-Source: ABdhPJwnvwRAGt6Widfg61oB1uXhwAA6dbkj0Ic7aCguGSTqsiT1beuJswDhq1bU1fXQQ+QYKEdPfQ==
X-Received: by 2002:a63:6e45:: with SMTP id j66mr38424763pgc.238.1609029560745;
        Sat, 26 Dec 2020 16:39:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7583:: with SMTP id j3ls25951475pll.0.gmail; Sat, 26
 Dec 2020 16:39:20 -0800 (PST)
X-Received: by 2002:a17:90a:4a4:: with SMTP id g33mr14141625pjg.221.1609029559954;
        Sat, 26 Dec 2020 16:39:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609029559; cv=none;
        d=google.com; s=arc-20160816;
        b=ewPSu/3b2u2yqjjSaUAKzxNoG3zpUuN7vaxXbKxzTSNp899inHlOj3bT5r9jfXkTDl
         mgTkzJgR9cQjQhPRSFJkrSPDhZrwir8U6tSFSou5VQ32diKcfkZubuvQOXXF08HzEv9l
         0KCl0ZqF/gVNzIO8mj80DCzPDB+la2A6JGcELAnXRBMUTok75rpIQ2ZaZE19V/GK0thH
         A8tBDJ8k0rrO4QA8kSB+DskSoAwEhQ5374fRBk7ck4y9g+3vS0ejubYN26SiKDLkey7b
         G9xk4LILaMyduU7eUvoLihMvFlBm1qDzk3vLs+nQ0/3JHZ4xfLYn8g3jqMZPv539CKpl
         9m/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=OJflN0qdt6ODeoAcCBlGwiPNFpjky6Vd+pXYTOO7eCs=;
        b=KaFkEVafynx65p6kZad1vJFZMxhvGT/ICzvOIV0W1aFjPucPbbYqHqSV+B8Cd6Vd1X
         i4nlyGzD2C/XmL6cZZq+rB/40Xqe9yWL8+pNGscfSfQmNNqBL1L1W2Cf0nC3HMWDM9UN
         hUelDOFESBHFHTuqIDej0jzIFJtMWdz5sKu5t/7EvAp7xzRxrjFavRGEFBo+TVCYLo9N
         suI4dQndQS88lTZlcmxezCUugqFVOtvdsEbBNgjnEDBsQqxFvKpHtYkjUcTW7oHLEANA
         LB44JEdTnFT3K/8v/iO5ywJBukajNYcZFBVEROr5FAvqj2bEa/V7SOSknyr5yUS+xfCd
         Kuyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id z9si1727540pgv.2.2020.12.26.16.39.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Dec 2020 16:39:19 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: GCgmNnZyHOjdw6qxXkeTC2SZtzDDUFm1136nwb/N/18A3nv9XvxAC+QGm60DB+NnCJzg38HwZI
 m4+UahvmKTHQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9846"; a="156072081"
X-IronPort-AV: E=Sophos;i="5.78,451,1599548400"; 
   d="gz'50?scan'50,208,50";a="156072081"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Dec 2020 16:39:09 -0800
IronPort-SDR: 0t8OPiN7bOpFarcMmGqznYhyMxgRJAh8aprKi8Aby+qLyo5rF3NvUHvdsOpiLHiweQAeDBu1nA
 sJHhQZalhrqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,451,1599548400"; 
   d="gz'50?scan'50,208,50";a="347191954"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 26 Dec 2020 16:39:06 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ktK5R-0002E7-SX; Sun, 27 Dec 2020 00:39:05 +0000
Date: Sun, 27 Dec 2020 08:38:11 +0800
From: kernel test robot <lkp@intel.com>
To: trix@redhat.com, khalid@gonehiking.org, jejb@linux.ibm.com,
	martin.petersen@oracle.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
	Tom Rix <trix@redhat.com>
Subject: Re: [PATCH] [SCSI] BusLogic: add printf attribute to log function
Message-ID: <202012270816.UnMMxDxy-lkp@intel.com>
References: <20201221162212.3755805-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="pWyiEgJYm5f9v55/"
Content-Disposition: inline
In-Reply-To: <20201221162212.3755805-1-trix@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--pWyiEgJYm5f9v55/
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

I love your patch! Perhaps something to improve:

[auto build test WARNING on mkp-scsi/for-next]
[also build test WARNING on scsi/for-next linux/master linus/master v5.10 n=
ext-20201223]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/trix-redhat-com/BusLogic-a=
dd-printf-attribute-to-log-function/20201222-002810
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git for-ne=
xt
config: x86_64-randconfig-a012-20201221 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7=
d14f4628d6174b33640d502bff3b54ae45)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/075b48dfc24070e441424a025=
64f8934db1d039b
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review trix-redhat-com/BusLogic-add-print=
f-attribute-to-log-function/20201222-002810
        git checkout 075b48dfc24070e441424a02564f8934db1d039b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/scsi/BusLogic.c:1849:6: warning: format specifies type 'unsigned=
 long' but the argument has type 'u32' (aka 'unsigned int') [-Wformat]
                                           adapter->bios_addr);
                                           ^~~~~~~~~~~~~~~~~~
   drivers/scsi/BusLogic.h:125:42: note: expanded from macro 'blogic_info'
           blogic_msg(BLOGIC_INFO_LEVEL, format, ##args)
                                         ~~~~~~    ^~~~
   1 warning generated.


vim +1849 drivers/scsi/BusLogic.c

^1da177e4c3f415 Linus Torvalds 2005-04-16  1821 =20
839cb99e8f74839 Khalid Aziz    2013-05-16  1822  static bool __init blogic_=
reportconfig(struct blogic_adapter *adapter)
^1da177e4c3f415 Linus Torvalds 2005-04-16  1823  {
839cb99e8f74839 Khalid Aziz    2013-05-16  1824  	unsigned short alltgt_mas=
k =3D (1 << adapter->maxdev) - 1;
839cb99e8f74839 Khalid Aziz    2013-05-16  1825  	unsigned short sync_ok, f=
ast_ok;
839cb99e8f74839 Khalid Aziz    2013-05-16  1826  	unsigned short ultra_ok, =
wide_ok;
839cb99e8f74839 Khalid Aziz    2013-05-16  1827  	unsigned short discon_ok,=
 tagq_ok;
839cb99e8f74839 Khalid Aziz    2013-05-16  1828  	bool common_syncneg, comm=
on_tagq_depth;
839cb99e8f74839 Khalid Aziz    2013-05-16  1829  	char syncstr[BLOGIC_MAXDE=
V + 1];
839cb99e8f74839 Khalid Aziz    2013-05-16  1830  	char widestr[BLOGIC_MAXDE=
V + 1];
839cb99e8f74839 Khalid Aziz    2013-05-16  1831  	char discon_str[BLOGIC_MA=
XDEV + 1];
839cb99e8f74839 Khalid Aziz    2013-05-16  1832  	char tagq_str[BLOGIC_MAXD=
EV + 1];
839cb99e8f74839 Khalid Aziz    2013-05-16  1833  	char *syncmsg =3D syncstr=
;
839cb99e8f74839 Khalid Aziz    2013-05-16  1834  	char *widemsg =3D widestr=
;
839cb99e8f74839 Khalid Aziz    2013-05-16  1835  	char *discon_msg =3D disc=
on_str;
839cb99e8f74839 Khalid Aziz    2013-05-16  1836  	char *tagq_msg =3D tagq_s=
tr;
839cb99e8f74839 Khalid Aziz    2013-05-16  1837  	int tgt_id;
839cb99e8f74839 Khalid Aziz    2013-05-16  1838 =20
839cb99e8f74839 Khalid Aziz    2013-05-16  1839  	blogic_info("Configuring =
BusLogic Model %s %s%s%s%s SCSI Host Adapter\n", adapter, adapter->model, b=
logic_adapter_busnames[adapter->adapter_bus_type], (adapter->wide ? " Wide"=
 : ""), (adapter->differential ? " Differential" : ""), (adapter->ultra ? "=
 Ultra" : ""));
43622697117c393 Colin Ian King 2020-01-08  1840  	blogic_info("  Firmware V=
ersion: %s, I/O Address: 0x%lX, IRQ Channel: %d/%s\n", adapter, adapter->fw=
_ver, adapter->io_addr, adapter->irq_ch, (adapter->level_int ? "Level" : "E=
dge"));
839cb99e8f74839 Khalid Aziz    2013-05-16  1841  	if (adapter->adapter_bus_=
type !=3D BLOGIC_PCI_BUS) {
839cb99e8f74839 Khalid Aziz    2013-05-16  1842  		blogic_info("  DMA Chann=
el: ", adapter);
839cb99e8f74839 Khalid Aziz    2013-05-16  1843  		if (adapter->dma_ch > 0)
839cb99e8f74839 Khalid Aziz    2013-05-16  1844  			blogic_info("%d, ", ada=
pter, adapter->dma_ch);
^1da177e4c3f415 Linus Torvalds 2005-04-16  1845  		else
839cb99e8f74839 Khalid Aziz    2013-05-16  1846  			blogic_info("None, ", a=
dapter);
839cb99e8f74839 Khalid Aziz    2013-05-16  1847  		if (adapter->bios_addr >=
 0)
43622697117c393 Colin Ian King 2020-01-08  1848  			blogic_info("BIOS Addre=
ss: 0x%lX, ", adapter,
839cb99e8f74839 Khalid Aziz    2013-05-16 @1849  					adapter->bios_addr);
^1da177e4c3f415 Linus Torvalds 2005-04-16  1850  		else
839cb99e8f74839 Khalid Aziz    2013-05-16  1851  			blogic_info("BIOS Addre=
ss: None, ", adapter);
^1da177e4c3f415 Linus Torvalds 2005-04-16  1852  	} else {
839cb99e8f74839 Khalid Aziz    2013-05-16  1853  		blogic_info("  PCI Bus: =
%d, Device: %d, Address: ", adapter,
839cb99e8f74839 Khalid Aziz    2013-05-16  1854  				adapter->bus, adapter-=
>dev);
839cb99e8f74839 Khalid Aziz    2013-05-16  1855  		if (adapter->pci_addr > =
0)
43622697117c393 Colin Ian King 2020-01-08  1856  			blogic_info("0x%lX, ", =
adapter, adapter->pci_addr);
^1da177e4c3f415 Linus Torvalds 2005-04-16  1857  		else
839cb99e8f74839 Khalid Aziz    2013-05-16  1858  			blogic_info("Unassigned=
, ", adapter);
839cb99e8f74839 Khalid Aziz    2013-05-16  1859  	}
839cb99e8f74839 Khalid Aziz    2013-05-16  1860  	blogic_info("Host Adapter=
 SCSI ID: %d\n", adapter, adapter->scsi_id);
839cb99e8f74839 Khalid Aziz    2013-05-16  1861  	blogic_info("  Parity Che=
cking: %s, Extended Translation: %s\n",
839cb99e8f74839 Khalid Aziz    2013-05-16  1862  			adapter, (adapter->pari=
ty ? "Enabled" : "Disabled"),
839cb99e8f74839 Khalid Aziz    2013-05-16  1863  			(adapter->ext_trans_ena=
ble ? "Enabled" : "Disabled"));
839cb99e8f74839 Khalid Aziz    2013-05-16  1864  	alltgt_mask &=3D ~(1 << a=
dapter->scsi_id);
839cb99e8f74839 Khalid Aziz    2013-05-16  1865  	sync_ok =3D adapter->sync=
_ok & alltgt_mask;
839cb99e8f74839 Khalid Aziz    2013-05-16  1866  	fast_ok =3D adapter->fast=
_ok & alltgt_mask;
839cb99e8f74839 Khalid Aziz    2013-05-16  1867  	ultra_ok =3D adapter->ult=
ra_ok & alltgt_mask;
839cb99e8f74839 Khalid Aziz    2013-05-16  1868  	if ((blogic_multimaster_t=
ype(adapter) &&
839cb99e8f74839 Khalid Aziz    2013-05-16  1869  			(adapter->fw_ver[0] >=
=3D '4' ||
839cb99e8f74839 Khalid Aziz    2013-05-16  1870  			 adapter->adapter_bus_t=
ype =3D=3D BLOGIC_EISA_BUS)) ||
839cb99e8f74839 Khalid Aziz    2013-05-16  1871  			blogic_flashpoint_type(=
adapter)) {
839cb99e8f74839 Khalid Aziz    2013-05-16  1872  		common_syncneg =3D false=
;
839cb99e8f74839 Khalid Aziz    2013-05-16  1873  		if (sync_ok =3D=3D 0) {
839cb99e8f74839 Khalid Aziz    2013-05-16  1874  			syncmsg =3D "Disabled";
839cb99e8f74839 Khalid Aziz    2013-05-16  1875  			common_syncneg =3D true=
;
839cb99e8f74839 Khalid Aziz    2013-05-16  1876  		} else if (sync_ok =3D=
=3D alltgt_mask) {
839cb99e8f74839 Khalid Aziz    2013-05-16  1877  			if (fast_ok =3D=3D 0) {
839cb99e8f74839 Khalid Aziz    2013-05-16  1878  				syncmsg =3D "Slow";
839cb99e8f74839 Khalid Aziz    2013-05-16  1879  				common_syncneg =3D tru=
e;
839cb99e8f74839 Khalid Aziz    2013-05-16  1880  			} else if (fast_ok =3D=
=3D alltgt_mask) {
839cb99e8f74839 Khalid Aziz    2013-05-16  1881  				if (ultra_ok =3D=3D 0)=
 {
839cb99e8f74839 Khalid Aziz    2013-05-16  1882  					syncmsg =3D "Fast";
839cb99e8f74839 Khalid Aziz    2013-05-16  1883  					common_syncneg =3D tr=
ue;
839cb99e8f74839 Khalid Aziz    2013-05-16  1884  				} else if (ultra_ok =
=3D=3D alltgt_mask) {
839cb99e8f74839 Khalid Aziz    2013-05-16  1885  					syncmsg =3D "Ultra";
839cb99e8f74839 Khalid Aziz    2013-05-16  1886  					common_syncneg =3D tr=
ue;
839cb99e8f74839 Khalid Aziz    2013-05-16  1887  				}
839cb99e8f74839 Khalid Aziz    2013-05-16  1888  			}
839cb99e8f74839 Khalid Aziz    2013-05-16  1889  		}
839cb99e8f74839 Khalid Aziz    2013-05-16  1890  		if (!common_syncneg) {
839cb99e8f74839 Khalid Aziz    2013-05-16  1891  			for (tgt_id =3D 0; tgt_=
id < adapter->maxdev; tgt_id++)
839cb99e8f74839 Khalid Aziz    2013-05-16  1892  				syncstr[tgt_id] =3D ((=
!(sync_ok & (1 << tgt_id))) ? 'N' : (!(fast_ok & (1 << tgt_id)) ? 'S' : (!(=
ultra_ok & (1 << tgt_id)) ? 'F' : 'U')));
839cb99e8f74839 Khalid Aziz    2013-05-16  1893  			syncstr[adapter->scsi_i=
d] =3D '#';
839cb99e8f74839 Khalid Aziz    2013-05-16  1894  			syncstr[adapter->maxdev=
] =3D '\0';
^1da177e4c3f415 Linus Torvalds 2005-04-16  1895  		}
^1da177e4c3f415 Linus Torvalds 2005-04-16  1896  	} else
839cb99e8f74839 Khalid Aziz    2013-05-16  1897  		syncmsg =3D (sync_ok =3D=
=3D 0 ? "Disabled" : "Enabled");
839cb99e8f74839 Khalid Aziz    2013-05-16  1898  	wide_ok =3D adapter->wide=
_ok & alltgt_mask;
839cb99e8f74839 Khalid Aziz    2013-05-16  1899  	if (wide_ok =3D=3D 0)
839cb99e8f74839 Khalid Aziz    2013-05-16  1900  		widemsg =3D "Disabled";
839cb99e8f74839 Khalid Aziz    2013-05-16  1901  	else if (wide_ok =3D=3D a=
lltgt_mask)
839cb99e8f74839 Khalid Aziz    2013-05-16  1902  		widemsg =3D "Enabled";
^1da177e4c3f415 Linus Torvalds 2005-04-16  1903  	else {
839cb99e8f74839 Khalid Aziz    2013-05-16  1904  		for (tgt_id =3D 0; tgt_i=
d < adapter->maxdev; tgt_id++)
839cb99e8f74839 Khalid Aziz    2013-05-16  1905  			widestr[tgt_id] =3D ((w=
ide_ok & (1 << tgt_id)) ? 'Y' : 'N');
839cb99e8f74839 Khalid Aziz    2013-05-16  1906  		widestr[adapter->scsi_id=
] =3D '#';
839cb99e8f74839 Khalid Aziz    2013-05-16  1907  		widestr[adapter->maxdev]=
 =3D '\0';
839cb99e8f74839 Khalid Aziz    2013-05-16  1908  	}
839cb99e8f74839 Khalid Aziz    2013-05-16  1909  	discon_ok =3D adapter->di=
scon_ok & alltgt_mask;
839cb99e8f74839 Khalid Aziz    2013-05-16  1910  	if (discon_ok =3D=3D 0)
839cb99e8f74839 Khalid Aziz    2013-05-16  1911  		discon_msg =3D "Disabled=
";
839cb99e8f74839 Khalid Aziz    2013-05-16  1912  	else if (discon_ok =3D=3D=
 alltgt_mask)
839cb99e8f74839 Khalid Aziz    2013-05-16  1913  		discon_msg =3D "Enabled"=
;
^1da177e4c3f415 Linus Torvalds 2005-04-16  1914  	else {
839cb99e8f74839 Khalid Aziz    2013-05-16  1915  		for (tgt_id =3D 0; tgt_i=
d < adapter->maxdev; tgt_id++)
839cb99e8f74839 Khalid Aziz    2013-05-16  1916  			discon_str[tgt_id] =3D =
((discon_ok & (1 << tgt_id)) ? 'Y' : 'N');
839cb99e8f74839 Khalid Aziz    2013-05-16  1917  		discon_str[adapter->scsi=
_id] =3D '#';
839cb99e8f74839 Khalid Aziz    2013-05-16  1918  		discon_str[adapter->maxd=
ev] =3D '\0';
839cb99e8f74839 Khalid Aziz    2013-05-16  1919  	}
839cb99e8f74839 Khalid Aziz    2013-05-16  1920  	tagq_ok =3D adapter->tagq=
_ok & alltgt_mask;
839cb99e8f74839 Khalid Aziz    2013-05-16  1921  	if (tagq_ok =3D=3D 0)
839cb99e8f74839 Khalid Aziz    2013-05-16  1922  		tagq_msg =3D "Disabled";
839cb99e8f74839 Khalid Aziz    2013-05-16  1923  	else if (tagq_ok =3D=3D a=
lltgt_mask)
839cb99e8f74839 Khalid Aziz    2013-05-16  1924  		tagq_msg =3D "Enabled";
^1da177e4c3f415 Linus Torvalds 2005-04-16  1925  	else {
839cb99e8f74839 Khalid Aziz    2013-05-16  1926  		for (tgt_id =3D 0; tgt_i=
d < adapter->maxdev; tgt_id++)
839cb99e8f74839 Khalid Aziz    2013-05-16  1927  			tagq_str[tgt_id] =3D ((=
tagq_ok & (1 << tgt_id)) ? 'Y' : 'N');
839cb99e8f74839 Khalid Aziz    2013-05-16  1928  		tagq_str[adapter->scsi_i=
d] =3D '#';
839cb99e8f74839 Khalid Aziz    2013-05-16  1929  		tagq_str[adapter->maxdev=
] =3D '\0';
839cb99e8f74839 Khalid Aziz    2013-05-16  1930  	}
839cb99e8f74839 Khalid Aziz    2013-05-16  1931  	blogic_info("  Synchronou=
s Negotiation: %s, Wide Negotiation: %s\n",
839cb99e8f74839 Khalid Aziz    2013-05-16  1932  			adapter, syncmsg, widem=
sg);
839cb99e8f74839 Khalid Aziz    2013-05-16  1933  	blogic_info("  Disconnect=
/Reconnect: %s, Tagged Queuing: %s\n", adapter,
839cb99e8f74839 Khalid Aziz    2013-05-16  1934  			discon_msg, tagq_msg);
839cb99e8f74839 Khalid Aziz    2013-05-16  1935  	if (blogic_multimaster_ty=
pe(adapter)) {
43622697117c393 Colin Ian King 2020-01-08  1936  		blogic_info("  Scatter/G=
ather Limit: %d of %d segments, Mailboxes: %d\n", adapter, adapter->drvr_sg=
limit, adapter->adapter_sglimit, adapter->mbox_count);
43622697117c393 Colin Ian King 2020-01-08  1937  		blogic_info("  Driver Qu=
eue Depth: %d, Host Adapter Queue Depth: %d\n", adapter, adapter->drvr_qdep=
th, adapter->adapter_qdepth);
^1da177e4c3f415 Linus Torvalds 2005-04-16  1938  	} else
43622697117c393 Colin Ian King 2020-01-08  1939  		blogic_info("  Driver Qu=
eue Depth: %d, Scatter/Gather Limit: %d segments\n", adapter, adapter->drvr=
_qdepth, adapter->drvr_sglimit);
839cb99e8f74839 Khalid Aziz    2013-05-16  1940  	blogic_info("  Tagged Que=
ue Depth: ", adapter);
839cb99e8f74839 Khalid Aziz    2013-05-16  1941  	common_tagq_depth =3D tru=
e;
839cb99e8f74839 Khalid Aziz    2013-05-16  1942  	for (tgt_id =3D 1; tgt_id=
 < adapter->maxdev; tgt_id++)
839cb99e8f74839 Khalid Aziz    2013-05-16  1943  		if (adapter->qdepth[tgt_=
id] !=3D adapter->qdepth[0]) {
839cb99e8f74839 Khalid Aziz    2013-05-16  1944  			common_tagq_depth =3D f=
alse;
^1da177e4c3f415 Linus Torvalds 2005-04-16  1945  			break;
^1da177e4c3f415 Linus Torvalds 2005-04-16  1946  		}
839cb99e8f74839 Khalid Aziz    2013-05-16  1947  	if (common_tagq_depth) {
839cb99e8f74839 Khalid Aziz    2013-05-16  1948  		if (adapter->qdepth[0] >=
 0)
839cb99e8f74839 Khalid Aziz    2013-05-16  1949  			blogic_info("%d", adapt=
er, adapter->qdepth[0]);
^1da177e4c3f415 Linus Torvalds 2005-04-16  1950  		else
839cb99e8f74839 Khalid Aziz    2013-05-16  1951  			blogic_info("Automatic"=
, adapter);
^1da177e4c3f415 Linus Torvalds 2005-04-16  1952  	} else
839cb99e8f74839 Khalid Aziz    2013-05-16  1953  		blogic_info("Individual"=
, adapter);
839cb99e8f74839 Khalid Aziz    2013-05-16  1954  	blogic_info(", Untagged Q=
ueue Depth: %d\n", adapter,
839cb99e8f74839 Khalid Aziz    2013-05-16  1955  			adapter->untag_qdepth);
839cb99e8f74839 Khalid Aziz    2013-05-16  1956  	if (adapter->terminfo_val=
id) {
839cb99e8f74839 Khalid Aziz    2013-05-16  1957  		if (adapter->wide)
839cb99e8f74839 Khalid Aziz    2013-05-16  1958  			blogic_info("  SCSI Bus=
 Termination: %s", adapter,
839cb99e8f74839 Khalid Aziz    2013-05-16  1959  				(adapter->low_term ? (=
adapter->high_term ? "Both Enabled" : "Low Enabled") : (adapter->high_term =
? "High Enabled" : "Both Disabled")));
^1da177e4c3f415 Linus Torvalds 2005-04-16  1960  		else
839cb99e8f74839 Khalid Aziz    2013-05-16  1961  			blogic_info("  SCSI Bus=
 Termination: %s", adapter,
839cb99e8f74839 Khalid Aziz    2013-05-16  1962  				(adapter->low_term ? "=
Enabled" : "Disabled"));
839cb99e8f74839 Khalid Aziz    2013-05-16  1963  		if (adapter->scam)
839cb99e8f74839 Khalid Aziz    2013-05-16  1964  			blogic_info(", SCAM: %s=
", adapter,
839cb99e8f74839 Khalid Aziz    2013-05-16  1965  				(adapter->scam_enabled=
 ? (adapter->scam_lev2 ? "Enabled, Level 2" : "Enabled, Level 1") : "Disabl=
ed"));
839cb99e8f74839 Khalid Aziz    2013-05-16  1966  		blogic_info("\n", adapte=
r);
^1da177e4c3f415 Linus Torvalds 2005-04-16  1967  	}
^1da177e4c3f415 Linus Torvalds 2005-04-16  1968  	/*
839cb99e8f74839 Khalid Aziz    2013-05-16  1969  	   Indicate reporting the=
 Host Adapter configuration completed
839cb99e8f74839 Khalid Aziz    2013-05-16  1970  	   successfully.
^1da177e4c3f415 Linus Torvalds 2005-04-16  1971  	 */
^1da177e4c3f415 Linus Torvalds 2005-04-16  1972  	return true;
^1da177e4c3f415 Linus Torvalds 2005-04-16  1973  }
^1da177e4c3f415 Linus Torvalds 2005-04-16  1974 =20

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202012270816.UnMMxDxy-lkp%40intel.com.

--pWyiEgJYm5f9v55/
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
khH+A36uAb3JXQIA

--pWyiEgJYm5f9v55/--
