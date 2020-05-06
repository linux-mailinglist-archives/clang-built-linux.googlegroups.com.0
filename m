Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5UJZX2QKGQEUWRQAWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 178391C7DC9
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 01:15:04 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id g11sf3339960plo.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 16:15:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588806902; cv=pass;
        d=google.com; s=arc-20160816;
        b=PBPbPQqvug93HM9/+JBx/WGlBUnzgdVEc6X07iRATn9yICrTX355xzNMGEE3mI/Hba
         OOWeAquR92Q20FpagguHTQIpO3sjaH0OxtJbpe+oCLYVdaLx+ZYU0PEZ5EHFFGnWpZS/
         rVijRcWr55wQ9njh/oVlmPdJNAT5pJbGryY6wNFd70TWGWkALl+pbgMfEcejKIiQ0Xsy
         78bA3la+0+l6T0fS/DZ94PV7eCZH4IeBrRVKjKZkkDw3+VtjyMxlO7PjewYjTgLbdWcz
         Yp6P0V3exKfG8Jdg232TE1taTYgsJUU5Tj9Wm1C2hJlIpgeCEw4I/T/HbpAWV1wWjjJ+
         nFgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=VdVTyKwolwhLzalPN/tPXY2GNj57MXq2SaHPnvUnyls=;
        b=WfsFsvmvLG+lobHM8K01CqSFHVG9DPCt46uJvZn8aBym1+rcbPZXumG5Wc1530Wbk+
         alqACbFvo3EU8s6aZsUf3Aik2lSEyffpvNcEIWdb6BZ3vr+Adn7XnFh6sGMA2s7R5YdL
         FT1amlTZveGUqD0U/eeO3G/QEcKHcVdjZwoFRx0itfPbuIydZbj4RO7DFnScc4z219AP
         WkpPuLcsGVjVBvtBeycbnsFqcYo9Pyaec9Drn8PNo1pE5lqP8DBwlvVxyXVPIWOpPA/0
         khIwvkBVSLn9vyGT2vP5gG3ybKb3P7I0U/9+DfDHoMprdNKLhO8r+U9D+wQxp+zifLUd
         7LkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VdVTyKwolwhLzalPN/tPXY2GNj57MXq2SaHPnvUnyls=;
        b=GK9s7qkTo6LXbpWN8WhE8E7fDvM72g6lCynkrnLzceqOVvdzy2yeHowYrPuiEdyza2
         6ey8F+Q5nu7K4Kjru0xkYA7FlR1IqkkZRPcXgC0tL1G6k8UwruVyZ4sHRYt18DCeVSvW
         N6ORFUM0dZHYfFD4vHD4Vbjek7WSNifBzZHGpobftrUFITjmPVJxkdrszPIdH5olPquv
         bOVkjbfW6D2wxOete/mPW7fkkcnrgfdVBUyijeF4uaEPyJqpSMSieqz56+EF5xibAnSi
         jcyrtIH96e1kTVI7Qiq7e/KVVW0neWuAZVwHHOLL+8L7ikQ3TWCeWsENO53LPRQ9O7v+
         CpIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VdVTyKwolwhLzalPN/tPXY2GNj57MXq2SaHPnvUnyls=;
        b=uGErbJoSVWXog38zONKXodMbCLNZ9pxqfsQ3m42ru6V7VXNuh7cuwMzqqd2HDQIghP
         ZtGoTQ/yaxkqj2ioYvZVWtTwhTdKIGIlr9M6QE6hbbefqwT/YHkHlmbI0W6esAzKnIx1
         Wo1YDSxPPzcV6ujPNP0YbJhJmGC7oIwIXcmTE9dYXMTmtOrLzcz0RvLPjsgr96IIwQwA
         muiEnSLxfZaVtZlQIwMThyrHz3uWewOMlPE1oSl2ea+f53fpIc71XE8egvct8BH8KHVA
         lCddJuVLbSjOA/0r4UQp8klmZ458GKjpfW7pVnyUgbRqhdqaj7VErep4Ac7imZ6/c6Ah
         gCsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua/mGKplWX2jJyR5DXI5XFuEaZKtTShr6fg9YlRbH7/kMyNk+WN
	GU6VSm1zqMuUxqyw7+zqTqY=
X-Google-Smtp-Source: APiQypIk//V5Wxz9PJ5rU+9q6l0eUKCojY3AYg1ISd5qa3B5YCvbK2TnWOzAPnVphIEciVQOfVEOlQ==
X-Received: by 2002:a17:90a:25c3:: with SMTP id k61mr11747247pje.28.1588806902394;
        Wed, 06 May 2020 16:15:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:55c3:: with SMTP id j186ls3299727pfb.6.gmail; Wed, 06
 May 2020 16:15:01 -0700 (PDT)
X-Received: by 2002:a63:f707:: with SMTP id x7mr9516650pgh.374.1588806901716;
        Wed, 06 May 2020 16:15:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588806901; cv=none;
        d=google.com; s=arc-20160816;
        b=cRrpN36psnWZoUXhq4TdZ41LMqOsqXADwwyc/0ghe7wm13V55PjHfBcgzj/8yy/gCb
         Tt3kkrT2XX6fMaIOe+Vh0JZ/EG9lWWDho6TE5aGossS5V58mTDpCOiXe1J/q78ASt1Wt
         4iL6+DdV4G4PLBWxhK/0gsWro/mg9es8TS1jOk+c1WPeelwD1hJdv/eIBnkxZcOB+qG4
         uAzjRxlCyky2a3FP31/zFO4URO2+LZn2PG8AJ7QzrcSAeTK8f3zNy4gYkVzJf/YEUt3A
         KfThy+IC3pcs4QujK5DkjkVeTmmC5zVHJMNre4VSlYgyIXxA0AZMGMM8wd2o6K8GluLj
         r3uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=S8KV25x0sphVM4pXAV/lQ75fYkXSqj8wAHbZ+lqgil8=;
        b=GBNIK9F7fK3SU1W9HqlZ6q1+Jf25cMcpJZB6nUHu4SFQI4UFDqP21OthSNk2iMr82A
         2OgiDzTbXEqsmaJZs4L/lqH+1sbEl1h6JQrHpDNfix1S7/JmKj7vwD02Q0PgbauXmBZ3
         xc1NiJxdN+BhlkpC6unmuJUdZF+RIlLjSOrjgtiqP+SsD65z3Bc3CB54sk7APlpJ4Qt6
         OFMpYQzNe9Yfxsif6D2Ej6B3JPqQVXgf6VpDcLnRTgfQ9jxKqHfZqPoMvVkN1A2yNUGv
         0hg1dG/FITr2l6zOfdo+AcC92xAbQnK2d0CQ5ESyAeFQ/ZLVln2sapEcKnNqszwccNpY
         Z4Dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id q189si340458pfc.0.2020.05.06.16.15.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 May 2020 16:15:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: cLdivFgQiAzsNa9kOmzW8N5wF8+HkAugDIQ+pdsJ1o3TZV0CQ6hTl6U+BC/DO7L9GnjtDd+0P3
 xLBN3UIz1KKg==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 May 2020 16:15:00 -0700
IronPort-SDR: QfFKj+mFCPnPlgXUf/Y3poQabNIrg0LNz6SYXJTEHQsLfq+OBNerw5HdH5TFVESuTqogV80kIm
 IFvo7IriCyww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,361,1583222400"; 
   d="gz'50?scan'50,208,50";a="278404933"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 06 May 2020 16:14:57 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jWTFh-000HOO-C1; Thu, 07 May 2020 07:14:57 +0800
Date: Thu, 7 May 2020 07:14:44 +0800
From: kbuild test robot <lkp@intel.com>
To: Huacai Chen <chenhc@lemote.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-mips@linux-mips.org,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Pei Huang <huangpei@loongson.cn>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [mips-linux:mips-next 29/53] net/mac80211/debugfs_sta.c:643:9:
 warning: 'PRINT' macro redefined
Message-ID: <202005070735.lx91bBGI%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BOKacYhQ+x31HxR3"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/mips/linux.git mips-next
head:   3a06c204fbc83de2a7eb6fc2f4548f813faed454
commit: d339cd02b888eb8c4508fd772120782eac59a9fa [29/53] MIPS: Move unaligned load/store helpers to inst.h
config: mips-ath25_defconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 24b4965ce65b14ead595dcc68add22ba37533207)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        git checkout d339cd02b888eb8c4508fd772120782eac59a9fa
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> net/mac80211/debugfs_sta.c:643:9: warning: 'PRINT' macro redefined [-Wmacro-redefined]
   #define PRINT(fmt, ...)                                                 \
           ^
   arch/mips/include/asm/asm.h:90:9: note: previous definition is here
   #define PRINT(string)                                   \
           ^
   1 warning generated.

vim +/PRINT +643 net/mac80211/debugfs_sta.c

90fcba65d29e3f Johannes Berg  2013-03-01  614  
80aaa9c1641590 Ido Yariv      2018-08-31  615  static ssize_t sta_he_capa_read(struct file *file, char __user *userbuf,
80aaa9c1641590 Ido Yariv      2018-08-31  616  				size_t count, loff_t *ppos)
80aaa9c1641590 Ido Yariv      2018-08-31  617  {
80aaa9c1641590 Ido Yariv      2018-08-31  618  	char *buf, *p;
80aaa9c1641590 Ido Yariv      2018-08-31  619  	size_t buf_sz = PAGE_SIZE;
80aaa9c1641590 Ido Yariv      2018-08-31  620  	struct sta_info *sta = file->private_data;
80aaa9c1641590 Ido Yariv      2018-08-31  621  	struct ieee80211_sta_he_cap *hec = &sta->sta.he_cap;
80aaa9c1641590 Ido Yariv      2018-08-31  622  	struct ieee80211_he_mcs_nss_supp *nss = &hec->he_mcs_nss_supp;
80aaa9c1641590 Ido Yariv      2018-08-31  623  	u8 ppe_size;
80aaa9c1641590 Ido Yariv      2018-08-31  624  	u8 *cap;
80aaa9c1641590 Ido Yariv      2018-08-31  625  	int i;
80aaa9c1641590 Ido Yariv      2018-08-31  626  	ssize_t ret;
80aaa9c1641590 Ido Yariv      2018-08-31  627  
80aaa9c1641590 Ido Yariv      2018-08-31  628  	buf = kmalloc(buf_sz, GFP_KERNEL);
80aaa9c1641590 Ido Yariv      2018-08-31  629  	if (!buf)
80aaa9c1641590 Ido Yariv      2018-08-31  630  		return -ENOMEM;
80aaa9c1641590 Ido Yariv      2018-08-31  631  	p = buf;
80aaa9c1641590 Ido Yariv      2018-08-31  632  
80aaa9c1641590 Ido Yariv      2018-08-31  633  	p += scnprintf(p, buf_sz + buf - p, "HE %ssupported\n",
80aaa9c1641590 Ido Yariv      2018-08-31  634  		       hec->has_he ? "" : "not ");
80aaa9c1641590 Ido Yariv      2018-08-31  635  	if (!hec->has_he)
80aaa9c1641590 Ido Yariv      2018-08-31  636  		goto out;
80aaa9c1641590 Ido Yariv      2018-08-31  637  
80aaa9c1641590 Ido Yariv      2018-08-31  638  	cap = hec->he_cap_elem.mac_cap_info;
80aaa9c1641590 Ido Yariv      2018-08-31  639  	p += scnprintf(p, buf_sz + buf - p,
add7453ad62f05 Shaul Triebitz 2018-09-05  640  		       "MAC-CAP: %#.2x %#.2x %#.2x %#.2x %#.2x %#.2x\n",
add7453ad62f05 Shaul Triebitz 2018-09-05  641  		       cap[0], cap[1], cap[2], cap[3], cap[4], cap[5]);
80aaa9c1641590 Ido Yariv      2018-08-31  642  
80aaa9c1641590 Ido Yariv      2018-08-31 @643  #define PRINT(fmt, ...)							\
80aaa9c1641590 Ido Yariv      2018-08-31  644  	p += scnprintf(p, buf_sz + buf - p, "\t\t" fmt "\n",		\
80aaa9c1641590 Ido Yariv      2018-08-31  645  		       ##__VA_ARGS__)
80aaa9c1641590 Ido Yariv      2018-08-31  646  

:::::: The code at line 643 was first introduced by commit
:::::: 80aaa9c1641590ab85c74824399cdb6b2e28e772 mac80211: Add he_capa debugfs entry

:::::: TO: Ido Yariv <idox.yariv@intel.com>
:::::: CC: Johannes Berg <johannes.berg@intel.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005070735.lx91bBGI%25lkp%40intel.com.

--BOKacYhQ+x31HxR3
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
D8GH6f9X2QAA

--BOKacYhQ+x31HxR3--
