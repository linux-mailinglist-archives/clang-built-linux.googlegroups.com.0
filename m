Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3GNQCBAMGQECSQNYCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDD932C399
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 01:16:45 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id 194sf28682037ybl.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 16:16:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614817004; cv=pass;
        d=google.com; s=arc-20160816;
        b=wY0U28w3Er6WliUrUQOPdmE2GQlju7svDYqsvO7DTcUUdVFQPmrZ4ju/DIMAaC690G
         7Gysg8pczs/1CD667xoGICqfoB7euUCRFhBCKatkwud03f6iHKuFIVEDIxt4Php+oqfo
         9tQm6VaAkSanfPO/Y8cSE81cTVVkMJZp/rPPMu7jNDlHnLwymkgfnnpsRJadOY76/SMY
         z1iX8ilxssdcgSoKYPZ/YCXdtDElEbg+tOBFcAhuWh1BL0nU6DO+FcP2mSy1fymzSO0/
         k14Afyf+xHXFNWmaZmmyVlW461QQedeOCU8VEnmHkLMlGtEIV4EBHmu7UN3/FyF8fjQP
         M8DA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=CALnHIYaiWNNc+pBii7Yn+OcC6iZwbkhHb/tF7E3k7Y=;
        b=dYRxgPMX6eKO6SfzFfwrk7TWgEqj5uWimWm81eHDxVV+q2A9dm/JKWrqkrpdN7F0KC
         FDVEQ7DsXlTZA6EG9tmZjkmcK3w3xGjLfBILX+SwadsWU5KUHWb7HuGiFjeqXd6s3PbD
         QcZEPg6trYeqA5e1NBxx0/1lgfIG5Yy8ixIWZj/axSWke+nhante7JlLTPWItt9JikLn
         8p/MrndZAaWFklpGFgonBDBsxUzAFbeE8mW/DnO0REozNG7jw4y4o6Ke01pgP+pdcyuD
         5+0YZ8pbA8dwt2Ayf5s89FE/YqgI61dgqQa3WnGsPEZZxA56qvqbeNR03C8ucFJfBhrt
         VJOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CALnHIYaiWNNc+pBii7Yn+OcC6iZwbkhHb/tF7E3k7Y=;
        b=FGwAyN3b1oKdaaWCYN6XrPozG1UKuxQ9EEZjJBnHonCwaTCv1m2oCFCprIpHRAdExZ
         wCXu1PLGv8zCOHFjBikdkM4ce+Ad643NtHB3F/68cIf2rS/qRTyydUaqgeUdvkBdRhi6
         +Cq221TM73JhCmHxR7LEkF5cZRo5PJLeo6T068R165Rb7HONCMsZlzJhU3iUB9sf6RoN
         dtIZkFYkLDatOZO03Bk1zIO5pSTxs+or5K+RRFXEE/u+pJybEaaYzA+XrK1sbBC/0uL0
         SVABL3Sf7W/W2QP0O5gU31D7EYmdFM3nctXUTTMAWsrhCYsTfgfKSgZuIOJi1daFWn82
         TsyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CALnHIYaiWNNc+pBii7Yn+OcC6iZwbkhHb/tF7E3k7Y=;
        b=kiOZagherAyhPGgQvZhJ22UNhVaPIcatjAPWBLXsx9srwOiOs9SzKwoetWWyXW59jI
         +PaGrEmpRGGVUsvURtLjziWTmvp2WTWhtkjtcufFCaSepLEzW6hdqzFciC0YpkfFqdP9
         T9nWyU1mKbULOMrEzUL3SRC9jiwbsdsaHqKrpIIljq6kDYR3bzyeDHEZ1twGyHe6FXIN
         UBgfwuhwMlNCfN53AXab/bn/oI38QPETcQLoLugWSCQ/FKNZJX3xht36HbsoNA/ywU+T
         sBlRrO18kDfXU6ewaZoFy2pi9UA8JFlvba2XfDNXZ/HnWSK4nNHQGogt5bpbx8dWXMpm
         RrQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XE2fbiIsfFrg70oBHDa/bJtAnDM9BUeBQvZUZ/zo+1b+68fcd
	hWWjdQBy5PG0sIgB7NZwHh8=
X-Google-Smtp-Source: ABdhPJwCrft0AKx7SLQA1XaY09dtxz6PmzldrgiGOAZYjZqj9OlGDrOfhtmWg6MlgfZp/9y8y5d9pQ==
X-Received: by 2002:a25:6056:: with SMTP id u83mr2512315ybb.463.1614817004706;
        Wed, 03 Mar 2021 16:16:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:dc49:: with SMTP id y70ls1940632ybe.4.gmail; Wed, 03 Mar
 2021 16:16:44 -0800 (PST)
X-Received: by 2002:a25:3802:: with SMTP id f2mr2705317yba.48.1614817004093;
        Wed, 03 Mar 2021 16:16:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614817004; cv=none;
        d=google.com; s=arc-20160816;
        b=JeLT49+oSVoT0zHs3U6HfKCBTphC2+goGI34vs/rQ3mX+remWWK8o1ISOq5bR18C3x
         HdnMm9kycoVtLP7+fIDeq7cIPn6CHhdvKG0heXlfjl8Mg4FOAIWeOmzAZn70tnptRG7B
         lBJ6tNEaZuwcV1wpe4p890Ry/XqfbVtmP8rDdSFfM012OGQpUlEMaZUHRSprFySArpT8
         1IgYaLMX9IxiDBC/3PQIFylwpAlHQZNQb7/YXQRHjyWTzhWHKvjhGQR9pho84XsDCjlh
         DOwHdgfWBXbXrGrK++pAh51qb7hPuyl0nX+CZenqyDviMoNOuNChdxPMDAbfDqbVAPmG
         zcQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=tvLBckw7ymOOLMnumMABtE8wL8qgWq7d9PkGqBMqfjE=;
        b=t7Drj8BiZVPC59YLGbj0m/4QYSUBLJPeIPke4yfCFgneP3L19pNplYzwRudDBS40zw
         5glcXtArYVPWi4Nxod/WSL0V/yxJhJIbpWjWMO0ImXvxhAeQXCWWhAzZycN9W5OF6MZH
         nwYo/P0Rh0aVQwfI2CG5cd2CpZe+giSW4lzDWKt+Dz0jSKRFDGvnBHcjt/vdQZYsYDJP
         YFCS2aDzCAeKe+zF/zeDzX0wbwibo+eOlt2MI/KSg+c32upqSWuClzA89BnLTsCroYLM
         oaHH8P6cqcwJU9DOahHq1OlhiNR9Rjw8JpCJarQit4/Cwph9k+k5OvVB+6aDtGBTaehP
         aTmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id x7si1912895ybm.0.2021.03.03.16.16.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Mar 2021 16:16:44 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: X6r3OQ3KZDT1IFNrz8qedOXmTcAcBSlR7WW65hfBtDYAgNcGDfifiPu/AQMDavpgOwYs7JRnZz
 3+VAV7j0kfKQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="184893317"
X-IronPort-AV: E=Sophos;i="5.81,221,1610438400"; 
   d="gz'50?scan'50,208,50";a="184893317"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2021 16:16:40 -0800
IronPort-SDR: DFMCzogvwX8/b7p0BKf4w5ISw0tkLvPtDqA5CH//2vdhvPwJk1XwElECyoUfhsfb6MNru60Xb8
 1RnfXY8lZ0Wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,221,1610438400"; 
   d="gz'50?scan'50,208,50";a="435593212"
Received: from lkp-server02.sh.intel.com (HELO 2482ff9f8ac0) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 03 Mar 2021 16:16:30 -0800
Received: from kbuild by 2482ff9f8ac0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lHbfK-0001ro-19; Thu, 04 Mar 2021 00:16:30 +0000
Date: Thu, 4 Mar 2021 08:15:30 +0800
From: kernel test robot <lkp@intel.com>
To: David Howells <dhowells@redhat.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [dhowells-fs:fscache-iter 77/85] fs/fscache/io.c:292: warning:
 expecting prototype for fscache_clear_page_bits(). Prototype was for
 __fscache_clear_page_bits() instead
Message-ID: <202103040827.S7JxIygI-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="r5Pyd7+fXNt84Ff3"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git fscache-iter
head:   0b18b2dc89af7a17a626618e55ab2139b9570f7a
commit: 05173e3a1defdfcff7b88cb74c23d2ad12abe486 [77/85] fscache: Add support for writing to the cache
config: s390-randconfig-r005-20210303 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a7cad6680b4087eff8994f1f99ac40c661a6621f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/commit/?id=05173e3a1defdfcff7b88cb74c23d2ad12abe486
        git remote add dhowells-fs https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git
        git fetch --no-tags dhowells-fs fscache-iter
        git checkout 05173e3a1defdfcff7b88cb74c23d2ad12abe486
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/fscache/io.c:292: warning: expecting prototype for fscache_clear_page_bits(). Prototype was for __fscache_clear_page_bits() instead
>> fs/fscache/io.c:353: warning: expecting prototype for fscache_write_to_cache(). Prototype was for __fscache_write_to_cache() instead


vim +292 fs/fscache/io.c

   280	
   281	/**
   282	 * fscache_clear_page_bits - Clear the PG_fscache bits from a set of pages
   283	 * @mapping: The netfs inode to use as the source
   284	 * @start: The start position in @mapping
   285	 * @len: The amount of data to unlock
   286	 *
   287	 * Clear the PG_fscache flag from a sequence of pages and wake up anyone who's
   288	 * waiting.
   289	 */
   290	void __fscache_clear_page_bits(struct address_space *mapping,
   291				       loff_t start, size_t len)
 > 292	{
   293		pgoff_t first = start / PAGE_SIZE;
   294		pgoff_t last = (start + len - 1) / PAGE_SIZE;
   295		struct page *page;
   296	
   297		if (len) {
   298			XA_STATE(xas, &mapping->i_pages, first);
   299	
   300			rcu_read_lock();
   301			xas_for_each(&xas, page, last) {
   302				unlock_page_fscache(page);
   303			}
   304			rcu_read_unlock();
   305		}
   306	}
   307	EXPORT_SYMBOL(__fscache_clear_page_bits);
   308	
   309	/*
   310	 * Deal with the completion of writing the data to the cache.
   311	 */
   312	static void fscache_wreq_done(void *priv, ssize_t transferred_or_error,
   313				      bool was_async)
   314	{
   315		struct fscache_write_request *wreq = priv;
   316	
   317		fscache_clear_page_bits(wreq->mapping, wreq->start, wreq->len);
   318	
   319		if (wreq->term_func)
   320			wreq->term_func(wreq->term_func_priv, transferred_or_error,
   321					was_async);
   322		fscache_end_operation(&wreq->cache_resources);
   323		kfree(wreq);
   324	}
   325	
   326	/**
   327	 * fscache_write_to_cache - Save a write to the cache and clear PG_fscache
   328	 * @cookie: The cookie representing the cache object
   329	 * @mapping: The netfs inode to use as the source
   330	 * @start: The start position in @mapping
   331	 * @len: The amount of data to write back
   332	 * @i_size: The new size of the inode
   333	 * @term_func: The function to call upon completion
   334	 * @term_func_priv: The private data for @term_func
   335	 *
   336	 * Helper function for a netfs to write dirty data from an inode into the cache
   337	 * object that's backing it.
   338	 *
   339	 * @start and @len describe the range of the data.  This does not need to be
   340	 * page-aligned, but to satisfy DIO requirements, the cache may expand it up to
   341	 * the page boundaries on either end.  All the pages covering the range must be
   342	 * marked with PG_fscache.
   343	 *
   344	 * If given, @term_func will be called upon completion and supplied with
   345	 * @term_func_priv.  Note that the PG_fscache flags will have been cleared by
   346	 * this point, so the netfs must retain its own pin on the mapping.
   347	 */
   348	void __fscache_write_to_cache(struct fscache_cookie *cookie,
   349				      struct address_space *mapping,
   350				      loff_t start, size_t len, loff_t i_size,
   351				      netfs_io_terminated_t term_func,
   352				      void *term_func_priv)
 > 353	{

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103040827.S7JxIygI-lkp%40intel.com.

--r5Pyd7+fXNt84Ff3
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICEweQGAAAy5jb25maWcAjDzbdtu2su/9Cq30pfuhrW9xm32WHyASlFCRBAOAsuUXLsVR
Up/6kiUr2Tvn688MwAsADuX0ITVnBsBggLkC0M8//TxjXw/Pj9vD/d324eH77PPuabffHnYf
Z5/uH3b/M0vlrJRmxlNhfgPi/P7p639/fzl/dzJ7+9vp2W8nv+7vTmer3f5p9zBLnp8+3X/+
Cs3vn59++vmnRJaZWDRJ0qy50kKWjeE35urN3cP26fPs227/AnSz0/PfTn47mf3y+f7w799/
h38f7/f75/3vDw/fHpsv++f/3d0dZrvd3R+f/vz0x4fTs7PLD7uLs7PtH5dvL87uPlycnH88
OXt7/ueni7fn23+96UZdDMNenXisCN0kOSsXV997IH72tKfnJ/Bfh8tTbDDP0oEcQB3t2fnb
k7Me7iH8AZdMN0wXzUIa6Q0aIhpZm6o2JF6UuSj5gBLqfXMt1WqAzGuRp0YUvDFsnvNGS+V1
ZZaKM5hHmUn4B0g0NoX1+Xm2sKv9MHvZHb5+GVZMlMI0vFw3TMG8RCHM1fkwT5mwvJvomzcU
uGG1P1fLXqNZbjz6JVvzZsVVyfNmcSuqgdzHzAFzRqPy24LRmJvbqRZyCnFBI+oykUWluNYc
d8DPs5bG43t2/zJ7ej6gCEd4y/0xApzDMfzN7fHW0kfHyAuCY39CRNuUZ6zOjd0A3lp14KXU
pmQFv3rzy9Pz025QNn3NvAXUG70WVTIC4P8Tkw/wSmpx0xTva15zGjpqcs1Msmy6Fv30EiW1
bgpeSLVpmDEsWRLTqzXPxXzojNVg1qKVZwr6twgcmuV5RD5ArQaBMs5evn54+f5y2D16GgQ6
msqCidKTQsWU5ojyOV/wkiuRuBZ8Xi8yHa757unj7PlTNNBPUWur/OsRxx06Ae1c8TUvje4Y
N/ePYIAp3o1IVo0suV5KTzilbJa3DeyeQpY+/wCsYAyZioSQuGsl0jxYLQsld/ZSLJYNbE87
IUVLYsT50Bx2Ni8qAwOUnOCmQ69lXpeGqY3PVIs80iyR0KqTX1LVv5vtyz+zA7Az2wJrL4ft
4WW2vbt7/vp0uH/6PEh0LRS0ruqGJbYP4bsfAtmUzIi1pxJznQIXMgG9RTLj8x3jmvU5MQe0
+towu/4eCLZczjajPi3qBqGUOLQI5KZFbyBSodEBpeS6/YDEeu8H4hBa5iAGu9usxFVSzzSx
XWF1GsD5PMFnw29gX1L8a0fsN49AKCvbR6s/BGoEqlNOwY1iSYTAjmEp8nzQJg9Tcg6+ki+S
eS60W5RWfuH8Q+c6F+VZ4ktArNwfpJaJ1RIigki/ej+OfWaNXorMXJ3+4cNxWQp24+PPBiUR
pVmBl8943Me5Wz999/fu49eH3X72abc9fN3vXiy4nR2B7e0ummRdVxWENbop64I1cwZBWxLo
URsxARenZ38G1iZoQEw5WShZV55mVGzBnbZzNUDBuySL6DPyfPN81fbm8WW/m2slDJ+zZBW4
LYfTyTLWmZCgEqk+hldpGEeE2Ay2+K0/kxa+rBfc5POAoQp8pKH2Rdsm5WuRcGIO0DK2F6NZ
cJUdw8+ro2jrHSl9Bt/W0zDjBYUYq4DXBdM4wGrcQr4VRM/pAzBQ8b9BIMoBBpMnUoBQ7o6b
oC2sa7KqJOxJdGpGqkBydtltrGyZJ+cOLj3TMHXwQQkzZNCm0ISHexBWycZwystb7DcroDct
awVrOMR3Ku1C8MGCpkeiV0BORq6Am4habSsqYrUILwKH71ttPNbnUqL3xb+DnZc0soL1E7e8
yaSy+0uqAvSccv4xtYY/ghA1iDNtLFiL9PQypgHHkvDK2HQWjbvHZpUNH879eNso7KsAdylw
a3ndgzYW6HhHYZzbBAO4l0C2ZCXEVqS4XRg9jqMCe+3ZPGe/yyJw7pHG9XCeZ7AgipLznEGQ
m9U+/1kNiX/0CUoUSduBk6K6SZbBOvNK5jml+GJRstzPze1sfYCNeX2AXoLd9jtngtqSQja1
CtwLS9dC824RPB2H/uZMKeEv5QpJNoUeQ5pgYXuoFRoqchT3Vdl4N1h3eM3ApnRhF5L95Wcy
uLEKCRFJqqA/FXYIpiSXLA2pbUe+oFawEIFB0Pw9ISiYPE9TnkZriarY9AlHt8UQCIM16wIm
JIN4pUpOTy78/m1s0BaWqt3+0/P+cft0t5vxb7snCBoZRA0Jho2QCgyxIDms9Rv04G3s8YPD
DNyuCzdKFyRMOGdItRmsjlrRpj1n8wlEPae2ey4DX43tYfcpiFXajUA1WtZZlnMX0tiJM3BD
gWkxvLB+E6tXIhNJF3T3hkFmIg90wdo969a0L8awmtTrR+HFvreQmDWpX7jBmHKOG6lMBfOG
xYwV3F4X93kcQ3K/cmH1CNflu8trDokkgcCd0KlZY2cAi+fNdQHSiBJ+q29BHiwkjgqRcBUp
ZR+j1iC0uR916PN3J96XdfyygM4zcMk9Jz4jrpKXwzYDY/M2UK4cmK+wDtJlRtX++W738vK8
nx2+f3GplRdi+00Ly+ftu5OTJuPM1MpnMqB49ypFc3ry7hWaU6qTHudv5g747pJUiRbNk1M6
Iumanx/FXhzFviXUx5OXqcsgesPvI4pn0dhw1AZlSzLSYlGuR/CnxxpPyc9hJ8XXNqal1yJp
4bVISnaXF3PfJzlrOC4KjuCFp1alsinJ1eVFv72kqfLa2g2PrPZNSgmeT3fJZ6hzujCxGhZJ
DIFwcxXDUsWug2DNQg1YAkh2veh7eQvLF6w5QM7e0msGqPOTSRT0c0KIdXl7dTocUKz4Dfcm
YD8bsNc8Mk2YGjtkVasF+oCg+GVpFASTsjhWcS7lnE5TINqVeEpBpyfodNCcBfGEHQyDcYx9
yILRMbNm7V6xe3zef49PL5wptsVWiM3AsbRD0+hWgyO8a9QVlNs99xqNgr/W8Ugtla5ysPZV
kTaVQdfmm0OIhZcbjcyAwuiri8uhDgGZrfV3UUoZA+1ns6gZJHxnby8HKV8zVTbpBhJhcH6W
ipR0IEhX1/5dBrXhvsf3KRkwJ0udoFKE+S3MqJ4oZwf92wHSr49fAPbly/P+4I+YKKaXTVoX
FdlT0GxI9q7jiBRyc5F2HnN9vz983T7c/193VumVgaXhCWTatjBbs1zc2oAIpAsZPJVIdftn
YLiglYhVVW4DrXjHe0FCs9xUkOtlsUNdrYsxBA8NkuX47Mxhsjgob+GNknVYgu6xo3QJgUxv
SjAbGQ1t8P9EVxjXYaR109jQBlPmsIN1JkbHcchguQaZp7BzVzwoyvUUa1sst8MLOU7akQSC
NMwZB0y4lgEjIVd2DWoAGCWDVNsiRnug34XRhnIFz93Dp8Pu5fDi7y83QHktSizz5pmZ6nFo
HRzVbvd3f98fdndoBn/9uPsC1JCpzJ6/4LheuOe0JnElp8A7hLAuMoaFV54f+wvUrYEEg4dC
MCC/BPrZaJJ5fx14BrmEwCSphiwdUnWsdSV4TBFZSEzKsIoNe7KZh/VUt6BxMO2gihsa4aAN
qGwWFWjaMkOZWIXmSkkF++0vnoSbwpK5QogPsczaHpdBgGCRkNNghcqIRS1rPRYvRDX2GKw9
jSe8cwaZg8g2XXVuTKC5aZ0NUQvQvZW3ZzfaqDqJndr5GfgXEDcsYpM1IG6Ik+I56qIpZNqe
48eiVXyhG4Yb1/obt5pg1mJJYa2AKghgewpuS6yuTzTzlNyD/XgESxRRIAFtIOJZwhguqcJ6
OInG85dXSMCyuL9GC+T2jDsAGYpYPqst1F2VmMClsh5HK7bYg7GyO0HuLl8QRG3J4YdoZZ56
9JRYNU+Q4AgKQ02XuA42wmGooyUj7cls1N/R09Epiu5MeaQkIFowNECMtcAf6AcUdELPSwwS
0X7hOQnWT0g5yAyPPZXZRFjQoi7U5AmWVbztJNM6BwuFhg8Lqbhlo9bopvkNaCvYKfw7ivcs
DQ6NOCCR12VM0kvEjtAF2yOFzoULT/uiihdp5liswSMriCJT7V3DwZ2jxULXMLcyPR8hWGRQ
2112HOusE7FqdibrglX9FL06XAclttuwJwxYYNPlMOraK0UfQcXN3aq1ND0HGMv7tUCq1N73
5NKRRG2q2DQjdp1qGR1ghVWltpAJO7GrYLrIIJHrXz9sX3YfZ/+4QuaX/fOn+wd3BWG4aAJk
7USP8WjJXM2PN91xQ1fgOzJSsGR4+Q4zJlGSBcJXYpg+cwSh45mA7+JtoVxjCffqxCvhOI2i
Cjitrtlj/hz8dh0c1waZGJ6cgT5Z4UYbEVE60QI05j3GgCGmO4W9RtcaovAkbq4XJNDdRRrO
WvqDO8MXSpgNdbjS0mAdNR13CsGFNKYt1o46HrAgiWsyRbGzKVJM5Z0DUZNk13P6sNcTiMAb
HLDhp2bSkyUyFqnb634a5EOp+WssqVa+Y0WouzzZaV1gd0h0k8Hyt8f0rra63R/ucV/OzPcv
uyCUBwEZYRuxdI2njtTpLMRkCzaQel5Ap1JTCJ6JADzUQyJWgm08qqPh9Ir31ufZRMul9XK4
aOElC0AnZFvogug0vG/qIVebeejsO8Q8e0+n+cF4fcrcX9OCiFeEFXgWWUBdnkb2sF0zXeFl
VrUJdXiKopkvjxC90sePddDe7HuNRLNRjcgnq8tXmHEEx9lpaY4zNBANdxMIWnt5+KicLcUP
oCd5HigmOQ5IpkVoyY6J0CM4zs5rIoyIjorQ3v05LkNH8iP4SbY9kkmuQ5ppOTq6Y4L0KV5h
6TVRxlQjWdblqxrSB0nMSMyCVeEVAG0U4Rq7YNlP38BrQ1g2gbQsTeCGANGd0MM8WFX5FMPF
K2t8+X93d18P2w8PO/u4YmYPmw+eGZ6LMisMRuyj6JhCWQYGhK3OeFIDUFjqaUl1okQVXiF1
iEJo6g4vdtKm5b1dn5qKX5Yvtk/bz7tHsjrV198H7uzFR3stpoLI057heHH6UM6/wTo7p1Br
+AcTgrjiP6KIUzVeOBeKZfhmjM+YNs3CDxztlcIV5xW2xYcV3l5zxwH+7dUQMzpMCOEtt/7y
RATdrQ9ZxicuRAt3JkEVm92BhHGxA56xXUQMzTEQDgImB3BbkkriIpi9c6A46mWQ00NEpFjc
HEtnTZfXdB3gerA0VY3pTxOHTQvpFnnRa6W9XdUJy24MWCrb3dXFyTvvkITK9ekLHTmHMI9B
xEMMmymYQ1i+TIKLDrBlbPx6FRwVMOrWv4cFtpi+On3nLU5YdOj7usXBiV5uKxmWsm/nNRWp
3p5nkKGHPbq7MvRLEa4UnqjaSqNba/tsxI8O0+7mCZYWVtHt2yGO5gqLMvZ6OkkAutdMlJp7
I1wZ7kotLEhZp23RYHf8I+HVHC0ML7vypzVo5e7wn+f9P5DmepbMSwOSFad4A7fl1RPwC4/E
IkgqWLAjTE7thJtMeQ3xC3RlIf2GFlhHGZuPs+cwWVDisXBdz/G0RCSbUXdOU2llcG3xQEAb
kUwx3bBlNJyo2pricEGbYwWGShJFnax9SpYhhBoqrew9YG6Ci7oe2AqaGiJYf1E5F5QwHe7k
qs/x7PHZRF4MZFVJn5DjJEUlKAV1qIXC6yRF7W0Zh8A7FqVf9+7pYyG6TuZKshQnQM0W5mf5
J17y9DjKW2zQ7MuV8J2yG3JtRAiqU4/lgL9M1pOyAdwwV2o34UK53TRwjCCuaYELx95ELdpi
Y8FaYKuQAV1SUWCcKAFW7Hqk1X3PsMRgMSW12XEU+HPR77TALHTIuUjI6fYESf0qyTXwcC0l
/eSgp1rCX69Q6NdJNvOceprQE6z5gvnX8Tt4uSanj5E2RnfHuswror81LyUB3nDfQPVgkUNs
JQXFWJrAnwQ8SRcEdD4P6iVdOGJnfeQBZsvtqJ0dnJR4RwFsHMUDQ0fxEAVR9zs6dDexqzff
dk/Pb/z5FulbLXxlqNaX4VdrOrH+k4WWp8PZV8qk3QIKd30fvU2TsjRWr0swDpOG4DI2EwGu
d0n+aIWoLkdMCnIzu16sd6NMyuUYin05wxn2rwVttdeXhEm14AV5Cd/NoEum7JmmHg9Wz7Es
Thpb294uyahZ60Ci3if8IdBXotCQetE3Dx0jfHHZ5Nduhq+QLQtGxaNuC1V5302QQFWR1gx+
Bx/S45FlwdQqclcWBSmIPQqAQKeo6OdjQDo+Be2BZG3YhY/P+x2GlpBAH3b70a8nEF3B+Ph0
+xgP+BeYLq88MkLh87yAVXzKUZY2RKe6ztzbv+itYguGPlO+DsD9botBXazlj9xiXDfk6Aaz
7eCUFmGj13kIdBPzAfa3CwIQEZkAVM7/Aps0Mf77WgavyjK0knhrhIJFAaXjNazMIwxSlmUI
yfyX6QgIY36EuFA2mk+l5M2GWu6bfiHsbrqx5ZqX2d3z44f7p93H2eMzluW9oozftGkVImh6
2O4/78LrTEEbw9SC22U4ukUHyjILl4wgoXVzRAYKXoSaEXD+uD3c/X1krvijAlgZMJuKT/Dj
iLxEqXvWfEyNvbhbR3mGvc7Dbux9zRA6FwarFaIa0fcYMIJTyPBFRIvD7UZ12MJbCZO4Y/3Z
0s5kr4iNND4eljblAw01T4uAfofuafwk4ghPbbevcIVXSdtEOu4FH23jH1Pp4Xq8R0X17yNu
YDCVEIIpZj3dhW8CWqswhjvLQMBbYxzBBwM2QqR4SOuggdUEk2XhdFLXj8QU6Xwzv9/Qq0CL
yE8gNB5qwIac+/IGpKioCKU7oDwi/HZ1vl3+2PoM63A5sQ6XE+twObUOl7HEW4ldTniqdkHC
cbo2ATAcYyTnKPK9/AE5HhMTuYuDMeaVs7RTepMmZASHWpeYYLPgd5POF+jTk5JWREfTZUy2
rmEDS8xhqOrHFLlestPx2ARh/IMkYYsf5IAY2csy2sGDeoRKdfDRuNR1eISR6sln9cZdChxS
cLxUWHAYAAsfdNZv3/PgTQoqh7PYuDDCTEGQ5mfG8yr41VXJ/bYWvqYfLc2VSCeq+Ouclc2f
J2en1HvWlCeB63DfbeLqsZQnwcdZOCeW008+b86oxc1ZFVwEqpawW+iNe5nL64qVtJZwznFa
byfssd0iUz80kSbUk9O01PjDBTIPHxHDojF76SXQ4B7a/UnF8z6Vf+vRg6fBLZYB7j8z8MBF
W6slOopPWzwcZjtT5xGy4uVaXwtD/ojUmqgzr6eKzGOKXMpqTmda7qqOPwCNGOdibWIXK1dR
5XRe7n6ngprdUsdpbOMkMZGeYchzDmGaxijZZYLDUyFlqMMIO3ii/aox3qyTvMCrZ83CxsXe
Wiv/FYjK7K8c+cUU+/sf6sb9KBge31bBaeON37y9cYYsVMp/f+IhkpxpLdJAvNj/vNab6FnJ
/H1Ulod85rrPOv2zoxk+5YhuZFouVgZy2wkppUpWDay0cE+2e2c76jNC+AdV3lnjhN1gEA3c
qIquGQNylVAmGkMNVQeJvspWIvx9CgcB91TVtD3DWb6jHHvCRFAixO9JV2WRcSXCAmvtJdUJ
r5ZNdOmyg2FN0pjN5AgdGd7Zpq1imSXBB2jjQhj/PiICy0SMAE3NlAmhyySoDSJIL9M8WKN2
e233s+x+94C/U/D4+PXp/s6GXLNfoM2/Zh933+7vgrwXexJFOFr7OmrMXJZWMRuFWueW4Ymg
H2Z0U2FPZJj4g+x2PFSagQ0LM/JGZB7AK/dFkPDnWFJIy+zJ/QACjYd1DX7LwyodX4cFtIyJ
XK7D8h43SyNl3lne0bKkdiKzdH//Lbho6d68hItbhbLqoQlTaUhXJIKNhqqSX++2+4+zD/v7
j5/tUg/vxe7vWhZmMr6BU7tL60ueB1eWAnBTMbPE3wnyTgnWpqjIywrasDJluQxfyYNa2Q4z
oYprptxLr3EtNLvfP/5n+/+dPVlz4zaTf0WVp3xVk8TyPQ/zAJGUxJiXCVKHX1SKrcyo4rG8
kl2b7K/f7gZB4mh4svtVfRmru3ESaDQafRx3o+fD9ml3HLo5BXZaYqwy43toEJkWxBhpbECi
eZDoW7P6PpQjfyM1RI6z9XQ6VqbJe92e6lJoKLEkM2vLXqqfNzRcVtFYAs8vRJAsalYfr9Bo
A9FVsnGdjat8c1/KzV2LsVsby0RdwbpyVeJg5Vqi02lSL1JpRgbpY0eiv0zblORWx6MXbQY/
xCTN0sZ6IUavOLip1OorTe09hMhpUkTKOoR3AQ+sYlozk/eTwd8GoWeeBr2OzSI9ay+BW0RW
UBQMp+iFkZkV0pL58oaXpEtOjdyZ4BuSQ2eTX7RwPsIP45SCUz/3CVFu5KFk1qRiU94asm5H
oa5jSBfuFqyNiSHv4K+NDgTreUf2PZ8wDgi1YLoOwK5/42sOR5G4bJMsmgQUjqJ4wVrVN2KD
PBkZsZa05G8YlvqP58PjX91HHj25/Fc3u6qsnsaRlOojDKtTSP77dsL4JONE+H5Yk97VvFjk
yUj2bu36pAGo44lLIPWqJpq5A58KuNFG0oVGDkBpw1kgcEspm3nd8thufQ0nuYGb8rKhSeI9
S+sD3xy9sg7dnx59uQQYZr62TYSBNWSlbOHMkMicrCh+0XmnllaGtQns2NyIHaBrIPjm80W0
ujZ5uEOv4uHu/t6eRunL6e34/p1iP52+AZt/Gr0dty8npBs9719gSUH396/4pxm98v9RmooL
VJZtR9NqJkZ/6pPl6fDfL3i6dC80o5+Pu/963x930MB59B9jeNG8NIdlzazaEnCx0nvBmx3y
Z8pLS8aoRRpj/GQ2ZJy0Lm1U3ArlRBDv/ZGgxFGn/VsU9avrkAru8TPMzF+fRm/b192nURT/
At/nP/62lQbLiea1gjEeV/YltqdkJXuNNIM8UZ/79efA4W+UdWwNAGGycjYLKRWIQEaofsDQ
BZ4ERFPS6NVycj6TrFL1WZy+gLjNgVP6L4eRGFQ+AIf7jRQcAuN+d3F5nPHUlb9ahggGzpC8
2VpSeKvAStvEc6+9eL6pY8FzI00wrzZyGa5zk9gBfxRQZK0wtxK3cYyjP2A5pVhhIC6iup92
bMy6AAcKqCsvSW0m50NoY7obE2Rubk2C9I5fw5UFnT/NwyEhQ6O4rGH8IkIvDDuAi0CNvNg0
bLQSs3QuHmxbQhN538JmSflooSZdHThlBpJILNKWU0aYNGRtLthRJg9dtBSu8llZzli7MoNm
3oplkgYqSG/Pr1arjytAG9yM7VsuatgLnsmkxqYRcNB5IN2ASyiTnLtSGmSFaJAo0Br8WZdF
mfP6c5Mw/RHF7cVnLoiVQVElhUT3dHZWYO1kqO00lEy5a0QyUNdwJ5GsXZ1JhEpUT8nZIaXI
ZRvg4CZZmYl6Cv//4QzJMgLpGW6lPyRcF2UFd7GPO79IRaDnK4zRyK2+ar62kh7IJUCM23S6
gtuZAin5LE1H8NMXoQe2kFMBXl8Yw2XEQWpUxwi6xoYiq9vbm8/Xk0AxZc6MtwGz25Mov7oc
X5550JvVauUBby9vb8c+9IYhVVpZZ86iNBKx1/GO1QTnIgZ21XWcf7CJqqyVgWFnq8buG7GO
zWop1m4/MhRWmvHZeBwFKuuYi12hBo7PZg4CeEiSua30LCjURo9vxn59xJPcKgvyAhJZaME0
t2cXK7fQva6JndM6wUPr7gM8sYhAi8gb9BAt4SOXoamVTTI+W5kGwXBkooFIJN1a4ur24vb8
PFARYpvoduxMHhW6vGWA1zdsA9efAw0s4HyXMnELKcaxmcG+P6/xv9y3jeHG24d+N4ETM9iR
JqttGUcRps1E2JxVsRuMJ5e/P7/BtWj3t+I0nV5TfsCDAAuX+IgXPJmiPTesjE8FPzB9hm38
i8A4mWbCNn1FsG+iYCDzyjQdIwje5e3LEIBLi6qxWy7tl2+sRdgB1hBEsc8sGVBmphmWzObW
0z1iN3ziH5tG5oJPmYFICiiNf13bGpeX7jUq/LEy1j0oaiLL/bPpvH2GPTdz/X80TCnnuDqj
pU6/MMjyH/WSujk/nN5+Oe2fdqNWTvp7Kda+2z1hKrTDkTD63U08bV/RyIUJVrgUgcc82Bbq
3cU6vPXbAldmYVMv4CBxlE7KQOnl9f0teMmnpzfzEIGfmywx7UIUbDpF18IssZWcCqdcUu9y
EfK0QaJcNHW6comoi+1pd3zG8J17DKT959bS/HSlyxZWpqkhteH4FGS6RjlYCSdWUmxWX8Zn
55cf06y/3Fzf2iS/l2um6WTBApVNgTH13luPMzF3yXpSiprfdkYfOfMm3T10ejDYiIZsBJye
pgXtgLiIOWicMtConNSCgc+m55ZKdEDUrB+bhd+YPHXAtGmWJbmZWKrHkX+iiDiUTOMEIyaa
z0A9ssnjiO1mOi1r1kO4p1hi4P6SqzQXM5CNRMFWTDlFypqzmLFpJk6+hgGLHtHsth+GtUxj
+MH07WGeFPOW+2K4kFt24qcyFdcTf2uTSR9r76rQZYuRXXHjGBLOAETFHua5sF59TLyIb0C4
N9s1sdG6aWQVUoD4lJeOytykwPiH0BseORd5Jeep7TJpEiQzgbFKZVKngndBMamn7e9pI9sf
9HnWFg+BziZZoKNLgTeG5e3Z2ZgnyOlHaBgpXDXt+LwsWX53Y0cC575sUuRdwjO2Dvq7xjD7
P6iI/l6mgQVEf6fN+fgigMe4wollq9PxzFRGLgxW2/jSOyWSi9UZCKpNYz5jKVSdzNoMo2HD
Cqma1KuwZc9PEa+yC7+dKBeYPNTUVaTuiiXQ9OzCh7ijJPg5BoktrHdZRT8ee5BzF3JhxSHv
YLxxYIcMpPQh5NWVd67Pt8cnerHAaM6u2toeDf3E/zrJHAgMd+3KjC+ooLVYWrIfAYEudwLu
9xQtkTCrcSbypGu3J9awTSGvrm7Z+nqS7JK9ZnDD7+2hOalMyQbftsftI4qP3iOYJdIvrNj5
sAayREWqUHFFbPvDRpNwJn1LjXSKDAiMABOHXi4wTMFnuIA2rHIqA84ZrQk79HcAdg+/hpNL
FsPGJYuCLgvNIOJuZpLV7uIbuTU3XVY9xyi3SwpiXbjmi8hLgoMw72ZBjF9F5mu5cUL7Xs6k
AaYSdXzpB9k9Eg/zPnwLFYvTbLsHdsX4b9iR2JlEoL9OPiOA3AGIU26gX7ozFRh8nuBwOzE/
0hyu6irSPKVUsi98j84K5q58TXFxfhPIVAEoO2GE8YaTVTir7PMNoBbN+flZtxTsQgrzwSbI
cR0svHLllE21g0G6G0EXemPg+Do5+qZ3PXP768tt4HjglLEGwZX5HRc5iPF1bKmlFznr8pCX
RZ3YFlEAohhadhxebGqRtzXLu3wuNCwTWmdN3cqGMq/19lfqznMecSNHMNeOSW5QX3COX7Ky
XyTmkjWMq+xcfBXjwqAUSJUcPT7v1Wu8ey/GYlFG4cnv9BL3UcSrWMysGoIqYkNd3vTD0WxL
YZsKuoFGKQ4ieaH4WUrXTNktgk7HbwcY1m709m032j49UQzI7bOq9fSraYfgN9b3PS2ips5M
1kHRZHuwyrEKwzhtT6PX/cvj2/HZ2tk6DWmAxDg3YW5wSMy3K5dkumb5QhpAypJoGcMqJEZ3
y+xsvQY87MKC9nJEOVQ4EQ1slPVmcn+OTwVmndEcH3DxKW51+/mMy6I7UBRwPzSPnnlS58K6
63UgzkTUoRiC6HgVbhJK8FXgYYrjKKfTLmVvLocs85oYmQCFc27gAi65zmjfpFmJhhNJtVmm
rOKBo5+KtFbWfD+qWcVzrwR7+dYFvCoZfN9FHo0KZfoPjx66YR2Y0zq5Nz6YN+FtH7jN0Oqh
BwTr1tzfICxZu79WhJbmQKEe4BZl1lghxgcCbZ2Nh1trcaqBBodKIzWpmO7kzfVF4OwdiO7x
CorM+MN+E1UrJ5uF9QbgEGRikk6Ml7S6zz8xNBxtcjZwWZbWlmIHkxcijDTRgcykEXpslW5u
YxtPRhjcyUrObVESGYnllC31cfv6bf/osfbo8HI6PJNV1+vz9p+OFfqHjTJu84RBCwz/Zm0O
Yv3tGY+vyyWKaMYR/oPWextat/fq7pbGfkfnqSWQw8+eX8qmTopZw4dYAUKQIpkpbeemIw3W
N6TUVoLV6+5xD2cZdsez1kR6cdlZpZiwqDZ1wT1oM5060MryHiBQi0+ENmySZHemfgJhIP3W
do4sBU3hFyefErZsZ6K268kFxgZdO5XTUnNga21rbgBhWmcg76V2QMgBCiMO9CXJpTcdSQZ7
I3dgD3eJN8xZkk/SgMaa8NOau2EQKivhEt5Kt8pFuhAgTgVKQR+0XsuErp2PtxRZY5upqqqT
pSyLlJMpqUtrN9wkQvFJ36k+bRzA70Jpxq3mmmVazAO+VGosBdxBZ03JvQQhQRY5MgkBk9gF
FOWidBuHawKZaQWqzsUsjeg1wV2FGZr0uMD1NLPikCC0TtTycmjpDb+cNm6H4O4B/IGN3kdo
fANlPm1hBz9CEDDchBOTEFeJAg9oWFvGLBlAtdSt6qqkEdmaNYkhNGzkLHLmvAM6D2QmJkpr
r6FMYLaoInVfo22aNYl5ZXjdVHUKkmegu1LAZ7+z+9QZK7n9kVWSxK7IaVM0iQjtX8AlGWpD
EmcGoCk0V3EWi5UlCfcaKm2FNJlbD/L4ET03/16u7XpNqFekSf09ASxBJmzwfcLOYTM6TA/N
4GWjvFZtYXaAO6zVarHF425TSe6OQHwqTfPSZSartMhLG/QAEn03+L5+DQuz9od1DMedu0NF
VlmOSuzJ2qsujdO/P6tBlivnUQoyVtNkiZeRN4cjxX6G1JDe09oI/yzf9uiH4R7pfZG2oExJ
cOS1ZjTnXFZ16SbmwATZHcRrAd/uURR6Ox6en0H88VzuimTp7Gf8pbx8zXkfoBviiqyusydR
UULLzJb7iWBCjyIFpsZCDSuq0pjoX0DKmkpgDb0M/UEpMkr443n/8tfP4/+QdUI9mxAeyry/
PAEFswJGPw9bwrCvp1bzbAUNO9PUpahXTnrP29M3UlQ0h+PjN2cIff+a4/7rV25YcCudzRzJ
vC81waF4RSZBPqaSj6Xkc8aaU+ViMLf2YH5sAAO34PVJQNG99Zt+K7mAjTKzEmYgrL+0wefH
gKYDtjOqzuVMOU8YD7Jo4JcC9Jp/pOkstR7WxX1ebeIKO+QPnK5dc6xmk89y67weUNyELbHj
bnrADmpw5+mmUh3vJyVSSjbLRFSZKK02gbZyYTshDtNILihG7ZN2ygVdpvoxRxH/ZNEVZFsG
xAZ9J1X6kbWzCBAburR3aJ350F5ZiJknogpAu0zrJod2RtcvkHYVpxIlhqEmVDyh+DHJNqUt
6pgYXrYwKEKMrTWf6lp8ZovrBV7VlEPWMK9o34cRyBWKNTKsG99pwfVF6J5H8qRoPeAiroQH
HGLRD+pxhfFiC2i0XQ25sKRlk01cYG1FiyCYS+L0k2CWJ4UCUXwOq4sKDD1hP4xCo1wtu8O2
ezjzjST3j8fD6fDn22j+z+vu+Mti9PV9B+eeqYjvncA+JjWksvXEljxAQHXdl7R8QSkKLS/V
7K7zP7UyamlC9PuuLLWeilnSVWI8fWFyDTzbvTFHpMaWh/ej88Kk1R8cvpcYRJpNSvOFvsQk
jq5ep/MuJuSo2n7dqZQW0p/WH5EabJxaYoL62y8zUbRUpGESjPTnUnRa+u+Ht93r8fDIiRDo
Gd6ghyP/IsMUVpW+fj999QW2usqldVASgJgKpx4kpJk4VEF6BjB0w2pO6YKgxz9Lygg9Kl9G
0bf9639GJxRi/uxdwHtJQ3x/PnwFsDxE3Org0Mpr/HjYPj0evocKsnjlyLuqfpsed7vT4xY+
/P3hmN6HKvkRKdHuf81XoQo8nPlilO3fdgo7ed8/o6TXTxJT1b8vRKXu37fPMPzg/LB4Y+FS
6jxvxa4wSeDfoTo5bH+N+VeLolcJ5FrD34sQ6udodgDCl4O9VfRrAL01pBhqBA7ROMlFwd0m
TWrMW1vWOUb2tQQIkwSVPJhi6QdV9bp7/5WCqsFoRIvEHQ9jbjoMPmgfnayaiI5RtZ7+fns8
vASDlfTJhgfeFrAtq5a598lRPniEr8UdUh5ueD2Q5BBJ6bez4eqBHg2SS0evw1B4/h76QdQq
6LwfRoytcrU7UjKjF5iR74eX/dvhyI3gIzKDVwr/siNeno6H/ZMlLRdxXaYxOwBN3i8NsfKs
OAA2/CgWdlqlBWWMWUszl2IHrDBfcSxcO3NA1Y4JiXoyWKI7+yNGl/KdyRujTfiBhqENym3S
NKobEBh1pLGFj1w9eHCGAU3epcX2H1EMHMjZdTNJzPBxBrZPBj4oQfzx6HLokO9d2ap6k1be
8xWSMuEGhz1ZVrbjdFqyliFZmlsPaWQOHangJKYY5cS9zks7U0lOMqUTrW24cthbvYu9A8eD
2iAWO1mILI3hnob5Nv1coHr0EmUUYY0QmMz5ho0RBJgLK6lnB4DtKNMV3OkzHyWTqMVsqBbm
0q3lkiJzTdHJF1r3aAMNXH7QgNYQmLAhuo7R+u+T+Nz+5ZaFRvKJE32qTlKYUcBMJQMk2ytL
6tIYiqQQyJJg1LlZoV8+W4M5G4GX4IFSTw5nqe50/ndnmger9x/X40wYlTCtIgYdCDXKm2tO
pbvselwZ+cgONWn6rzC8NDf/aqJ6MmUqxybu9YnrtthIAQtprVZSsE/OpCggSAOJbck6VJxM
Md97OuVmuUgzNQXGsjz3Bk4gnHl+rroS/uLSCHa+HBp/vxFGzaHfPy8Okdeo9mwLPa5gsmBv
2Qxb0zo91W8VwtF8kQuxELxO2qxIQbqkvKWpDqKU2gh28jOjuIna3rVFwQ5lKo1cxfxwcAVY
k6tBDFfqEBiTrUkLTM5eiKatTZ3pVPZqMi1tuIBUAbSueOisUAhOSdmlVBhUkwjoA5n2qcq4
ExUNbjv6pagLZzIVIqTBU1jMemKVweyXizFHTxiDvVMFUWOsAbRknkr7QFIwezHT+WQG8mjt
R/1On8WuUnQRRKMvs/wAwyfbtMZw3rH9OsmRiGwpQPaalpmTA9wvgw5XK7bBAtfhyjblN9Ar
WBE0B4HO5AnMYVn5eq5o62dpkIbWZpBSFcLNGNivWX3YGhuHQB8kGdQUczh0ylltP5B6VKEF
pvHlhOKrYzoAS1uLSNzlvONyN341FxQE6TeMf4YSGiOgpbL8fH19xi+ZNp5q3q4r5ytUt8pS
/jYVzW/JCv8LV8dAkyppeeCQXUxD5wZV64hsCNFGg2mJ+iS0Cv3p/e3PWyNoY9EwB74WZj/q
tLrMnXbvTwdKUTsMpucjOiSVCbiznz8Ihvl9zR1PQEprOcTmNVHRPM3i2vSYu0vqwmzKuY5R
SE3nJ3fcKIQ+fDsgZixtsolZQQeiPho3hSSfxpuoTqwswX0CzVk6w/AckVNK/TMICvr+689s
3w76d9AapxcPS74oa3wNDR3GInaYZgfY1EYyZzF1iBI6Dx1BpgfCsKUM6rU9AQgg6vGdFcsS
p2kC+GHGwzJqcOgRMBzrdKDfSopwwmrL+1bIeWgP+gJy/1kw3ajZhoZQHI6F/+Bf5v70VOGx
3Rery1DjgLt25q4DOUJJPTRqQTBkOkYRXbu2AQpdFj18UPFQFnHuqr2WC2dc7QefrC7DSG2x
byx3Tva2YgxnUvO9Lz/tT4fb26vPv4x/MtFowEr85fLixjr1TNzNxQ3flEFycxUsfnvFe+c4
RJyXqENyZY/NwNyEMNdnQcw4iDkPYi6CmMvw+K+5VAwOyXWw4s8BzOeL62CTn6/YUFh28dAo
P19+Do/lhs2LAyQgIuD62twGah2fX4U+BaDGbotCRmx8GLMp5wNq8Llbl0bw+TtMih8N7opv
8ZoHeztKIz7/aGAXoZLjH/Vw7HTxrkxvNzUDa20Y2mMAg7PDEGhElKAJUqBlRQDXqLYu2cJ1
CUyfD1aiSdY1pkGN/C7NRMLD4V51x7WWQl+dNxWfpmjZ5JfWPFjnk8bAjfUutdLpAaJtpsai
jzPbSTLLfQl+OAyKFHcB0xe4ny3vTTHI0p2qR8zd4/tx//aPYbTSC4Fr68zB33Avu28THZue
f1tJagm3CPJUS9ZorcAfRZOuSk78ViqDJNZ9GHqAwS8xgkPvU2yg6PaeRr67sdbgoC2IpEeb
pk6jQKqlsOJPoxwVFEZVm647tT37GiBQTEVtAzqCuBHsWXQXyf630x/7l9/eT7vj98PT7pdv
u+fX3dG4baQYrxx7leCbDEiryg0SBY+y5BanvsAMM2LaSmUy//ITmilgRN9P/2y/bz9hXN/X
/cun0/bPHdSzf/qEMXG+4or59Mfrnz+pRXS3O77snsnVdPdip503DCBH+5f92377vP8fJxlZ
FJFEjzfwzUJg1MkUwz+jI4exfVgqtD41NTsAggmN7iiDlfmZDJTAyHKqdnYJOKTYBLe3kArk
OLT0ifqJdVKUdzRTYDQGCXs7DMyRRoenuH95dney7ukK1gVJm5a8jmHWv3TPldHxn9e3w+gR
U0MejiO1zozvQ8Qw0pmoUreODnzuwxMRs0CfVN5FaTU3d4WD8IvYCUkNoE9amwZTA4wl7EVd
r+PBnohQ5++qyqe+MwO66RpQI+yTel6bNtySUDpUy7962QU3cSqV26X9MNRRzabj89u8zTwE
xjVggX7XK/qX6SD9wxkr6Klom3lixo/r4Lb5ZQfsDVmV8uT9j+f94y9/7f4ZPdJ6/oqOZP94
y7iWwqsp9tdSEvm9SCKWsI6ZKmXOfSBgu4vk/OpqbElv6qH9/e3b7uUNM8zsnkbJCw0Cc838
9/7t20icTofHPaHi7dvWG1VkBqfTX5KBRXM4ucX5WVVm6/HF2RXTR5HMUglrIPyVZHKfLpiJ
mAvgeAv9QSZk8YYn18nv7iTiZoeNbqCRjb8VImb9JtHEg2X1kmnOCabgoivo5Ef4FavM1fs8
WS9r+51ZTy9qLZqW19fqMaANjW/QgPbsej69ueOz02rOaBlF6wGor2ADF4pSqVn3X3enN//j
1dHFuV+SwH4jK5ZVTzJxl5z7X0rB/a8KlTfjszid+qucrd9Y3w4TjC8ZGEOXwnJOMvyX+Yh1
Ho+vueux3iFWvssBeH51zYGvxhyzAATr1a8ZzIVfFT4VTUr/vFtWqgm1cPav3yzLqX7jS5Yd
SMdEzv1i5XKasp9YIYb8f96aFXkCVzbO5L6nkI2XP9DA+d8Nof4cx4m/pKb6kOI5pD+5SV0l
BXeqyZz3gNCH17LEefCfjw7fX4+708kWhnWHdUhXh5M9lB7s9pJbPdnDh50C9PwDhvEgm96t
od6+PB2+j4r373/sjsq02JXgu6VSYL6JihO44noycwzTTQzLnxRG7W63+4SL2ISNBoVX5e8p
yv0J2utVaw9LERiUjMtJVoii/oQb7cmCIm1Pwc2SicT0Ab6s2FN04nWwn0lBMl45Qfuzhk3Y
MAjNZKHj3Aae938ct3AjOR7e3/YvzBmO+QUFs68IXkc+m0VEx98Nv3pvYQ5U4U4jkdqoRk0h
Eh7VS2If19CTsWiOr1B6xu74AWkTs0WNPyL5qPngMTaMzpLlfKLAoTM3nqgeHEaofvsPRR2c
fAnjZFGUMRuXolIe+s55jMeIHQzMOCqDGOh6EAcnWhB3sfmo5MUmWDYOddPvPzk9dMzOXcQk
lBDFRzyYJCaPyu3QwvNHEnKd5wkqsUjx1azNUN4GsmonWUcj24lNtro6+7yJMBYq6cySzmZy
IKjuInmL5isLxGIdHMVN92DJl79RMY2ckA1ot4NJHBJlQEQ2YJ3ezj8jd8c3NJ2Hm8+JfEhP
+68v27f34270+G33+JfKUasrpietXgnW6R+NL+bhpZVyscOrpIzG3IQ0hWURi3rttsc/4WHF
wNaiO7SxCHZtoKAFRPYY1ENtFPEvpkNXOUkL7B0ZIE01c8+CXB0dGa83leVAp2GbCVzK4Yyu
uYAHGVzCRb2hp3I71pnwLMP6rjWYaLM24z5o03iMM942qfkGqVHTtIgxWSZGekstK+M6Nhko
hiZINkWbTyy3vrrL32DsFbQmQEunKK9W0XxGxmx1Yl0yIrhbg9RggcbXNoV/NYk2adNu7FL2
7Yi2fueaaXMQwsDGTSZr/hJuEFwyRUW9DC1aRTFhXy4Ad20d2pFbOfeCC2eMfx+MjLeM/gJo
rCoM2WcMn6kWZFozn6kBxYBJLvwBTzqQYWyR+UGd0F5uBAWfZk3ECcAgYTMtI5RrGcRovkcg
PzPVEJijXz0g2OylgmxWt9dMJzskuYVUXLE06JWt8IKNiDMgmznsHqZejK3PzVqHnkS/u2Ny
dHfD4DezBzMLhIGASWXh3aXE4QqkgReWXZOQmMhImYmIujZdk/ENwUoDWCTAusn9XFT0GuNa
GyFOxHG9aTbXlxbf6Y2RKHI7EbZF/3plMPelduUdnvSANsp5R1tqEET4D/y6qbM9UzZammVq
PozdWLWbWrk86PJmGvhZVk7sXyZX0nOU2UZcWd266amj7AGjs5tjTOt7SkDPWfdUqZWxqKRI
PjM47mrrW8H30595EcvS//izpMHQk+U0Nj+yWYZCU1o+nhL9qUr3GKAXn6UwvYYlfG1r5vDh
sJjZbLs7mb2D1X4Z05IKQV+P+5e3vyg0xdP33ekrFzGgC9SLnQ9ZFd9tMFaXdcfsgq9lmBtu
kfRhDr/cBCnu2zRpvlz2H6aT5rwaegoMXJ+nkWsJZYE9ryOQSSclyqJJXQMdnz05OC29tmT/
vPvlbf+9E3ZORPqo4EduElVnAu4n0xo6QjbZX87PLm/Nb4xpbNALLbecXURMV2pAGUuUYtui
8TGsn8yLVyqVGwAaGeYYlNFYSg6GOrIpCztuqKpFsZdpW6giIgMBenNxzmuvzSLLRNzhizwy
Ad6C999OquWA3q3qePfH+9ev+BhpZJK1zG8xvBeKtmzsha6j0p0z9Bqh7ORONooei+9XREAB
/z+aBF0TvgZzBpyaf7cTKTovF7iuuw0TlikOFxwodRdhaM+6vEsKkx/8q7myB45mtwkzZLRQ
9S5G3XtxX69hKYz7F+4wGNfNVJt2EXQBq08Ip50epZVH3d7n7TywlXJZ8Amm6EJYphjmzr4f
Dy2h/09wVdRljDmz7VOo/1yKZrnyK15yvoq9021jZxtRv50IMh2wC4jgzp6yk5d+wx2CFWkD
pGgV8C/IKNwzb0NjE6JlZ3BCNVEdtcSzAgNDZoECg+e3aVPZ62NQb9GB3S1mSs8k7vyp0pgP
hqSsL1o8ibjbNAgecUeTFHHvfcgvE0xENaM4w+5oFrnfOaDGFzDXvMmlqSds0WoGl40ZpxT7
UV+U8zpZjDDbRXFwFPq4umnWadR3QpoWZw4CR+bIhsqmRmF9PaTC4rpCqacoBwYJ4rBOvWXb
rwz8yDkI5yo2j3pXRKJReXg9fRplh8e/3l/VqTPfvnw1XR6guQjtZ0rLL80Co9tvayhYFZJE
wrYZQk7HSYP+LfO2wLzH8s6cfmWW06P6wuPzM8NcrSwbuPqI3CCktjjtRoi262zfq+V9H6rZ
nMqPp0eZ7cFZjcnWj9YBMIhbtENC9weF7VT+dhnG30ibFzEt2p8Y5+0uSSrF8ZW2CS0AhqPv
59Pr/oWiwH8afX9/2/29gz92b4+//vqrGd2t1CH6ZiRs9+5UveyL0bAYx0SFwFCHVEWRUNoq
7opfUk4r0bi7sEbtdpOsEo/x67g/3r7lyZdLhdlIED/ImM9taSmT3CtGHXP2qHKpqDhSBXaY
BdyEUQ6XGXyKD1hsN3/qsUpHCAvNFVyu0c/SOY+HQXoXRhlNA4UiGas6lyI13xj0Ner/sGJ0
lSqRCvAXYr7uRPlwOjmG8Ap6NCh/o8FfW2B4TtghSk/1wRzeqfPQk83UBv5LSX5P27ftCEW+
R1TTmrH41HdIpbcMKw4oZy5EGbxaKk46pIsNCU8g19Rt1XshW8wl0De7/qiGacAUyKSLVU/B
UcuKnGrnRcbrrvP1B+UfCCAS7q0Kwyw4JOCXDmLQaXwobuPwiKRbWM/Cz8d2w/TRA20m99Jf
jvZ4nT1+392yajqd/Z2ofKpBEsdHHFbjCh2ew1mRKZGnSXQoGbMu1F4W0bopuZjzRVmpQZke
dnjq95fFj7GzWlRznkZf6PtAJGHkZpk2c9TfSLcdhc5JnASCyAqITCTorUifDCnhylA0XiX4
XO9qhXDgqlpjydEwKEmQ02fVjchxxUL2N2mnU3PoFImI6K3nGfwu+CEljDTyJ8yoqrtxyqWp
N6pA1M9hK9b3/Di99vSVxW2oI/QPRfcroQxCiq+h6sFk3V4b/OsWSdc+QYeGkUhM7uH2T4kW
3npawiL2oN3i6BaA9L6jLEDcnZf+B9aIXi62J3sCfBu+EfAkel50LcE1XBTAPwUZy1MB18fZ
JYc1+iHhJLujx9q09NnMoEqA6iaJWmXsNaHbV4rAmNd1ATushw4OjvhUyAWq7SnUJKtlrcJS
hMloWfJvfQMbNZb6x5S6ZZGRtjoY/VSvA8yk01bBY8Fo1yS1zhaDpg8HRLsgTrJGcBNuTCxu
Oq9KKTDMGuv9O1wzKQZV2imbLMU/OZps/LRnaWnjPBHihEYBzElryzo+H0hEnRmZ35wTiTgp
K9477ZnK62Z3ekNZDK8gEYal237dGW5CbWE+iaiQQ572ZIhE5MKSFc0wi6NzoTNSHxywOqkH
VcllPYRa4deWHY7lo8+Iejzv7gs3XlTvqVmvDKm8ox68o5CsU4vge5WoUfnFrRuiRHVx3ea4
6iytsULCMSHqRGzIdujs78sz+J+xyuHQI86u7jdkVcc9sSS5+0bx4Qf1PE3Uk8X/Am/uOqp0
6QAA

--r5Pyd7+fXNt84Ff3--
