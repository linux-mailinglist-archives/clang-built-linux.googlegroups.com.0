Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB65X373QKGQEV2QQZRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4453120C4E3
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 01:53:33 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id y22sf6185247otj.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jun 2020 16:53:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593302012; cv=pass;
        d=google.com; s=arc-20160816;
        b=vWCcbOZcD69J5ShuYu4YTBZqyi0uT2GCQ7xReMKpypdVrk5sabJmtVxs+hssXU9YqO
         T2FlnUQtMOzjypihw3lOdpNNhzzi4h70acw34DuQgbvA14bImSBgpHWge71lnPH3J/Q3
         Zase1pBI+8J3VKjKHPkecpBX4KFBK8xRJNr076cHFf4kVa25XuVOC7O1SbCKpgDlpXX7
         4u7L7G4balnLMhrtF3lMQA4gP51kLaT0bh4vZCAI784urv7/oit+PWBD37MKRwhqxYdI
         2DWI4Yiyr9HW5fHCMqkuTGKqmmL5zWzCjThek6FereCYuIyqhXj1AKTrWg5wayX0pA61
         sjMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=/jeJg+ukPyxhxHRNZqwajbmsNRZwiq6mrzZwK9zrBFA=;
        b=keLzMnCTiz0CwlWnhOzx+bKybuLTv5/xYw6nohBSRgTXK98rOq3jVj0QiGcn2txyzU
         yPzHoWVSL+3eU0IylI99TD9d26PWAOnpGdoNi77SnrMuVWMQ/5PWwPkbOtFcFrNOWpG6
         FatB6wXSnWQ+JJZWDkqVomRCvGTpGI0Cs/RroG6I3H2YZK3cwdSU9svyjEpjEcr8uqEp
         N/2SHQiHP8oFUhA9Zkj9v+8HO8K/wCpDM2eOzjlYK829og36gC0oj+e45rUfGXjt1rUf
         hJy5N0hkmj3ZloprHiYKy9hLD4s3W8vRYjzUTXiyKiGH2RiklZCq9ZFckXKUqWzIeyaQ
         eXHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/jeJg+ukPyxhxHRNZqwajbmsNRZwiq6mrzZwK9zrBFA=;
        b=OWyDxwStJYJMvpdUsMFKOSjXJpa2nIwSYWR2faEvKK+wO0hOfqhXvdLLNCM8i/xnWH
         GNkP5oN7PafUJBpnQPsiJsFqkFWjvWxEPttbxyyBAu5hyrmwaIaE0o9rFXDmXvsBmDz7
         tGpbcl1LTbV+9QWhfxcha74jIlI8K/E7ohYBdJMSUmAscV/rO7QWUgmsgW9MSv3Gq6R3
         bk/gbP46gdgvlN3wrMKhd6yCRQRoBt62qGqTfMN4s3U7GcB/J1H40jXgM8lKW/S4tnjy
         Rfib5I72eoxcWvmehZH26wBU8/p8ajyRqs9P2AAh1j/KrmcFv3mkrloIbD5rFjSRLqr1
         JdFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/jeJg+ukPyxhxHRNZqwajbmsNRZwiq6mrzZwK9zrBFA=;
        b=eO/gRJe/iUzbpZDJ3afkNq1K1Tu3OZ6SA1a+spu4kw8AGsSYb9ga9836wOVRhDWFsB
         g7CO9mbqhieIvNVcfbd0axIr7q3wttKoYVUsoV2yDVUSBS/4TWEaYRXMP65O7UywTn8j
         BxhGDaV8qTiSRoO1MyN6pfgXTS2Vr9QMgPXM/yrTzjrux68HjMtTyZpxgF68Kobc6KgN
         To/OHJdjByWkkHTQLprlyQkh/6sZ59Oaie4eT8bcQ0AAQ+5cIjkG+1wQYcd+8Y1WTLgX
         AdW+LdSbZQ6IhxqHXVcEBj4y8rmz6nSePi1JLP8COO7ok3JrllqVELV9+sPW6hzdQ/qc
         tlPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532NTkk5MoiVQ+GoULlEeONP2aO0wvWJHNERiOKRwFXfhwDwpDit
	w4aaSBTM1jKPhZfV5p0knG8=
X-Google-Smtp-Source: ABdhPJxHfZKqWjKQPhiPcc1B3Cx6O5HlqcZaDc2OIMIiknotFiN8lwRGkTFJKuGhPlZWRKZgIdDk4Q==
X-Received: by 2002:a9d:1704:: with SMTP id i4mr3735892ota.52.1593302011900;
        Sat, 27 Jun 2020 16:53:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f30a:: with SMTP id r10ls1666633oih.2.gmail; Sat, 27 Jun
 2020 16:53:31 -0700 (PDT)
X-Received: by 2002:aca:34c4:: with SMTP id b187mr6360263oia.38.1593302011312;
        Sat, 27 Jun 2020 16:53:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593302011; cv=none;
        d=google.com; s=arc-20160816;
        b=wUVoabYIFE9/rHydati5kbZExAFab/ixSR96yKAxcV9Ptui1/oqZy+FGW17JQMLwY+
         iEguZBnHdkTBzPT5i8tfQGEPS6T7hBx4Ky7nmAqNMCfYntLTtdurfMGaX8q2xwPo+Rpi
         KbvyMiJ8XhAnY7ruGT5FcEA4xkCsChk+B174IfcNeCz8GcEOAfjA4anQPlfgAEBWqK89
         PfofUFjfznRNAFYhOHWDXZwiV9P0XYetUNhD7tyuHRFB/qCz7R6Hm9YEH1G/W4FVU4nz
         N4ZIfR9Ez6R24hDQ1NumsRbfDQ7mtIxmHjSjbgRd33EH+v6Xv7Pv767s/bz/LWBOHpW1
         wvfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=j0J0sKW2ovbtNvaZat5tczP2WGB/ZHXXo9wZxPgXeXg=;
        b=gwxhX8H6Px2DKHcChuoZ3YS9AdZHZUiD9BwCzB9/20kt45Uv8TB4/xYrV5RrmfTAhv
         65dgvyoSMtrWDgkqMj7Sa+Vjm7P9scM9L8VGdH4odGRJeDuMe/260SgnW1D/IZO2XJQi
         oFZTze89x+BUyShJU5nd7yoRLzqRCSyovO361DEt9pLOCQ296OvmO96YKGi9hJLgmz3j
         YxkqreQiv28ZprPaMAEmTJ+/pxh2M+nd0abVSZ3vXRCWKo8oY7R2PT5LwTsQ8ddGSiTY
         qkIi/NC6+2ukk/m+52au4DlsaVn+V0B4KR11GBK2owKS7gBbzKKylN/QATKd6sec1qYj
         Rf+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id c22si2394455oto.3.2020.06.27.16.53.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Jun 2020 16:53:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: 8uNfxbLJ0mP5gYe09ef59y8lW5+brOMpFihfZzYoyk8PvSAU8FGsmViO3vVY41PstZm1HoyT81
 Ni3h2+QgcR1g==
X-IronPort-AV: E=McAfee;i="6000,8403,9665"; a="133172998"
X-IronPort-AV: E=Sophos;i="5.75,289,1589266800"; 
   d="gz'50?scan'50,208,50";a="133172998"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jun 2020 16:53:29 -0700
IronPort-SDR: 0dIVlrPjAbwJ4DZQbmqlhyD7bOY9CoTfqyiUOrVaeueJ9nNXjqt1IsHy7Q19xnrVVqnhTcOCGe
 xay+LCsNIQ2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,289,1589266800"; 
   d="gz'50?scan'50,208,50";a="453760555"
Received: from lkp-server01.sh.intel.com (HELO 538b5e3c8319) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 27 Jun 2020 16:53:26 -0700
Received: from kbuild by 538b5e3c8319 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jpKdR-00031N-K0; Sat, 27 Jun 2020 23:53:25 +0000
Date: Sun, 28 Jun 2020 07:53:13 +0800
From: kernel test robot <lkp@intel.com>
To: B K Karthik <bkkarthik@pesu.pes.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jan Sebastian =?iso-8859-1?Q?G=F6tte?= <linux@jaseg.net>,
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
	dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] fbtft-bus.c: Removing that prohibited space before ')'
Message-ID: <202006280704.4jwWOKUW%lkp@intel.com>
References: <20200627045150.ysqvd47o52f4a6rc@pesu-pes-edu>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="IJpNTDwzlM2Ie8A6"
Content-Disposition: inline
In-Reply-To: <20200627045150.ysqvd47o52f4a6rc@pesu-pes-edu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--IJpNTDwzlM2Ie8A6
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi K,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on staging/staging-testing]
[also build test ERROR on v5.8-rc2 next-20200626]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use  as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/B-K-Karthik/fbtft-bus-c-Removing-that-prohibited-space-before/20200627-125315
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git 92cd1b5d65f5c67147c7da39a3c2ad7e6ff81027
config: x86_64-randconfig-r015-20200628 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project a43b99a1e38e2beffb68a6db93f216f511e7fd41)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/staging/fbtft/fbtft-bus.c:65:53: error: too few arguments provided to function-like macro invocation
   define_fbtft_write_reg(fbtft_write_reg8_bus8, u8, u8)
                                                       ^
   drivers/staging/fbtft/fbtft-bus.c:14:9: note: macro 'define_fbtft_write_reg' defined here
   #define define_fbtft_write_reg(func, buffer_type, data_type, modifier)        \
           ^
>> drivers/staging/fbtft/fbtft-bus.c:65:1: error: unknown type name 'define_fbtft_write_reg'
   define_fbtft_write_reg(fbtft_write_reg8_bus8, u8, u8)
   ^
   drivers/staging/fbtft/fbtft-bus.c:67:57: error: too few arguments provided to function-like macro invocation
   define_fbtft_write_reg(fbtft_write_reg16_bus16, u16, u16)
                                                           ^
   drivers/staging/fbtft/fbtft-bus.c:14:9: note: macro 'define_fbtft_write_reg' defined here
   #define define_fbtft_write_reg(func, buffer_type, data_type, modifier)        \
           ^
   drivers/staging/fbtft/fbtft-bus.c:67:1: error: unknown type name 'define_fbtft_write_reg'
   define_fbtft_write_reg(fbtft_write_reg16_bus16, u16, u16)
   ^
>> drivers/staging/fbtft/fbtft-bus.c:86:3: error: non-void function 'fbtft_write_reg8_bus9' should return a value [-Wreturn-type]
                   return;
                   ^
   drivers/staging/fbtft/fbtft-bus.c:109:3: error: non-void function 'fbtft_write_reg8_bus9' should return a value [-Wreturn-type]
                   return;
                   ^
   6 errors generated.

vim +65 drivers/staging/fbtft/fbtft-bus.c

    64	
  > 65	define_fbtft_write_reg(fbtft_write_reg8_bus8, u8, u8)
    66	define_fbtft_write_reg(fbtft_write_reg16_bus8, __be16, u16, cpu_to_be16)
  > 67	define_fbtft_write_reg(fbtft_write_reg16_bus16, u16, u16)
    68	
    69	void fbtft_write_reg8_bus9(struct fbtft_par *par, int len, ...)
    70	{
    71		va_list args;
    72		int i, ret;
    73		int pad = 0;
    74		u16 *buf = (u16 *)par->buf;
    75	
    76		if (unlikely(par->debug & DEBUG_WRITE_REGISTER)) {
    77			va_start(args, len);
    78			for (i = 0; i < len; i++)
    79				*(((u8 *)buf) + i) = (u8)va_arg(args, unsigned int);
    80			va_end(args);
    81			fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par,
    82					  par->info->device, u8, buf, len, "%s: ",
    83					  __func__);
    84		}
    85		if (len <= 0)
  > 86			return;
    87	
    88		if (par->spi && (par->spi->bits_per_word == 8)) {
    89			/* we're emulating 9-bit, pad start of buffer with no-ops
    90			 * (assuming here that zero is a no-op)
    91			 */
    92			pad = (len % 4) ? 4 - (len % 4) : 0;
    93			for (i = 0; i < pad; i++)
    94				*buf++ = 0x000;
    95		}
    96	
    97		va_start(args, len);
    98		*buf++ = (u8)va_arg(args, unsigned int);
    99		i = len - 1;
   100		while (i--) {
   101			*buf = (u8)va_arg(args, unsigned int);
   102			*buf++ |= 0x100; /* dc=1 */
   103		}
   104		va_end(args);
   105		ret = par->fbtftops.write(par, par->buf, (len + pad) * sizeof(u16));
   106		if (ret < 0) {
   107			dev_err(par->info->device,
   108				"write() failed and returned %d\n", ret);
   109			return;
   110		}
   111	}
   112	EXPORT_SYMBOL(fbtft_write_reg8_bus9);
   113	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006280704.4jwWOKUW%25lkp%40intel.com.

--IJpNTDwzlM2Ie8A6
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--IJpNTDwzlM2Ie8A6--
