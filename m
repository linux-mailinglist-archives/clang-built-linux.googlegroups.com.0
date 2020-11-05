Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2E3SD6QKGQEDOO7QDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC732A810D
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 15:36:26 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id z28sf1044820qkj.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 06:36:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604586985; cv=pass;
        d=google.com; s=arc-20160816;
        b=iW4l0qc+hbxws70qXv1jhV0Y5mNIFPWjGIQlI2Uj7P1kdNw5GyDSo/v64DEXLS0eU8
         dJIEGeybIXPI9TD7DW2SGaJNnjHMyhAjqbUyF7BIoeVRpgPH4/sCNBIHWJGTl7lkrzWv
         MyiiUpl3v33nSC4V/a/yGog8bhndXoRcy26gfP95Kw35f85ppBWMLMxFTtQ4ePpoC4k9
         RpI52MlGwHjAfVw41JlU6KpcuEEucmk1olQhlzN4+beeypQMzH4JSEPbltEOIMjIor2Z
         qElyYZ25Jef10LgN5FFHNmYJ/kSHHdjvs1TnVQSW2sGfoO4830it1yknAujRvWMXaSie
         F8wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=dvxcOFl2kGYTho5dStCwr/MSCOtInj3JtRnsDHv7x68=;
        b=lgACIRnXDV/o6+/6Exd0Nb9+toTqKgQsPIZJU5ZSKoRsHd0mEOY/NoQVIKaoQI46S+
         A4tj+ugow3MiY1PScGAIMBMNuhiFrTMRCmJi/NJ+lq6aNG+GNuPqqzwBcwDI8zEIHm8E
         VKv4/47OHXRik7xNdumT1UiZZ76wHkAJbjTWIsZtUPuZxk9J7CB4ahcXWsr3L8sJQD4D
         MD8yz9KTvOL6lruWBcMeDNxj5RUlSJ4EG1CIenRWWLgRv24DUA1r4CRpRtiwm0hpynNQ
         AHOe6DLsnYbtXUw5m2l6DMF6nPRgXSKLysr4iwkHHiQQGHWNAStlRSKJXCPufyzyf63s
         KD0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dvxcOFl2kGYTho5dStCwr/MSCOtInj3JtRnsDHv7x68=;
        b=f2jSk2fSZ09YObdHGhwqX58pioZHDQxZpYQY/3Nf72xUwqYofDfbY5dJZBaCVsKU+Q
         xdqg/NFUMeze5pL1WLW5rJCSlyzWU2PQoxpq4YeaNdjSgwaiPRmazFUNJMJFTtkwZZkH
         Vw8IeEqJFQsJbkPFyXg/s4AHgeh1VJ43ECBhNBm6ZBKuPuSXYxo5BHnT3zLdGCeiQcyQ
         Tx0mjRY7RwK3F95Oj6Ykekua+kVVGk5eRaWJwQlyPhDg9YmJz3f2xujq8Fb62WyzfTr2
         TenVmP6VPGjRIwef7Ex9X7VQdYPY9bsxX1vwyw3oykL+Se2QlpHClNT/r4NbBlCnt5ne
         zkpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dvxcOFl2kGYTho5dStCwr/MSCOtInj3JtRnsDHv7x68=;
        b=bjRxktYTC19SeM9/DHku2VvN2XCQoipoyw2loUt9R45BUhQuKe/i+FfyvSlojm2zVI
         1T2M69q4VxfoaFpNIdyOoji3HAR3uCKMMD3lRE9F5xpZx4Jl6fjGHc+cd2qrWqmTfgmw
         aVrlyRezT6n+c7TG3vq4R5SLVJNNM0+AP+5cCSSMc4TlyT+g7hxMWAlplG7JVX+TmFTw
         f4LaSQ6SoZj2biQcP6APjyNI0ka0riR4ABpaBlQsPD9hmU6mCOa0EwQveQ96cykZwGuk
         Q4lXtDuQhYJVJMMo3lKOcnsQ6L+Xyvp058uWfxB1+gw1XknDriQJwYIluPqDMQ8OGGe1
         UezA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TET5RoEUHoULhWUJMTpwSMTBi1+psNntBrd6u24nemTcafdqU
	0WyQmXxKJuZTh51GJMNhZgs=
X-Google-Smtp-Source: ABdhPJwp6usRjzQgP/KSMoTPxYpAgsQj8PObvMZ9dEZqZSraLpUBg4QtOe65vmVz8aaCXUCFlmCVXA==
X-Received: by 2002:a37:7ac3:: with SMTP id v186mr2268036qkc.451.1604586984893;
        Thu, 05 Nov 2020 06:36:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:efcc:: with SMTP id d195ls849710qkg.10.gmail; Thu, 05
 Nov 2020 06:36:24 -0800 (PST)
X-Received: by 2002:a37:8903:: with SMTP id l3mr2202960qkd.219.1604586984174;
        Thu, 05 Nov 2020 06:36:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604586984; cv=none;
        d=google.com; s=arc-20160816;
        b=pNokv/zPNXf9EZzYd9daNr2rLUqssPgBvEEAFQLTjPW0K2rnQbKIHqdVRHFsD44rph
         K4HDijatGYgBkY2XTE436fcMz1GAVT4lqlZ6LPHED6sjS0hMvtRE80m1mzNeIRj895T4
         i/MwLyGl1XVPcUsquL9vgeisBt4e9dLcqcGnIsNxcYYh2uZIIQ97loFkw5XkswwEi3lN
         73o29Ys9o60g4PkCrsNhxGCYL6i626Nv9RDCEUxct2mIavS8bFhbYxM4gSR8qRZMOjyX
         XNXFGzduaG44ty2iSQyGtwFvOJVOp1eoZody3QJqnqroqlUATpkAC28S5kQOvC04obGU
         TAbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=y806muX2yUxuLohu84tXYatb7thDrk5LdJY2t1YI+9o=;
        b=LMJFAU79YQbN8fPr4KVoS3b3qdznc/z4+qhDXCXgRbYR255naoZWsMBmQ50n2dB9i6
         VAfWvUMzP1L9xkvJ4mL9lwgAxhuD6ozOSVhuB8de8cDME0urz+tVsvXmb4RDWIrQv/DM
         55mbyYRD7HCSEDbmi6s+G19YxyHViW9I0IQI+zcrrQjLCD0JRuiNws1P+2HLPVQeKuwY
         /lCc3cEUEVlN7/Rp6jAE42yddQq0KmcBpJ2D4VYK+ydieM1Km35a1EgFaVdI0UQE/c1o
         gv6yLD39iBhFSX1cqh94vtjJxoX/QOnMPIHoFB8+W6qLPtPM+JNUBkmnJej9N0Dun0lD
         e5Kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id z205si107544qkb.1.2020.11.05.06.36.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Nov 2020 06:36:24 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: hcGDIJSzOszZJyFKnvAcoqUzKlkDYt3AO0/H0pX+TdTaMC2//mrQBVheMbn+5Wv2syfxY5nYCf
 XVSSv256PWIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="149242220"
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; 
   d="gz'50?scan'50,208,50";a="149242220"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Nov 2020 06:36:16 -0800
IronPort-SDR: gPH3GLQ/yQ3CqhZnteXwekiN2Fa7qj0gfzR9daNSBZQYVrckFWo+2c+gG17K/AzQXRx6jqpY+5
 gXUBmDuhxY7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; 
   d="gz'50?scan'50,208,50";a="527981736"
Received: from lkp-server02.sh.intel.com (HELO e61783667810) ([10.239.97.151])
  by fmsmga006.fm.intel.com with ESMTP; 05 Nov 2020 06:36:14 -0800
Received: from kbuild by e61783667810 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kagN3-0001ON-De; Thu, 05 Nov 2020 14:36:13 +0000
Date: Thu, 5 Nov 2020 22:35:39 +0800
From: kernel test robot <lkp@intel.com>
To: Khalil Blaiech <kblaiech@mellanox.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Wolfram Sang <wsa-dev@sang-engineering.com>,
	Vadim Pasternak <vadimp@mellanox.com>
Subject: drivers/i2c/busses/i2c-mlxbf.c:1927:3: error: implicit declaration
 of function 'i2c_slave_event'
Message-ID: <202011052231.PeuMT1eJ-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="9amGYk9869ThD9tj"
Content-Disposition: inline
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


--9amGYk9869ThD9tj
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   4ef8451b332662d004df269d4cdeb7d9f31419b5
commit: b5b5b32081cd206baa6e58cca7f112d9723785d6 i2c: mlxbf: I2C SMBus driver for Mellanox BlueField SoC
date:   6 weeks ago
config: arm64-randconfig-r011-20201105 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 09ec07827b1128504457a93dee80b2ceee1af600)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b5b5b32081cd206baa6e58cca7f112d9723785d6
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout b5b5b32081cd206baa6e58cca7f112d9723785d6
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/i2c/busses/i2c-mlxbf.c:1927:3: error: implicit declaration of function 'i2c_slave_event' [-Werror,-Wimplicit-function-declaration]
                   i2c_slave_event(slave, I2C_SLAVE_WRITE_REQUESTED, &value);
                   ^
>> drivers/i2c/busses/i2c-mlxbf.c:1927:26: error: use of undeclared identifier 'I2C_SLAVE_WRITE_REQUESTED'
                   i2c_slave_event(slave, I2C_SLAVE_WRITE_REQUESTED, &value);
                                          ^
>> drivers/i2c/busses/i2c-mlxbf.c:1929:32: error: use of undeclared identifier 'I2C_SLAVE_WRITE_RECEIVED'
                   ret = i2c_slave_event(slave, I2C_SLAVE_WRITE_RECEIVED,
                                                ^
>> drivers/i2c/busses/i2c-mlxbf.c:1931:26: error: use of undeclared identifier 'I2C_SLAVE_STOP'
                   i2c_slave_event(slave, I2C_SLAVE_STOP, &value);
                                          ^
   drivers/i2c/busses/i2c-mlxbf.c:1943:2: error: implicit declaration of function 'i2c_slave_event' [-Werror,-Wimplicit-function-declaration]
           i2c_slave_event(slave, I2C_SLAVE_READ_REQUESTED, &value);
           ^
>> drivers/i2c/busses/i2c-mlxbf.c:1943:25: error: use of undeclared identifier 'I2C_SLAVE_READ_REQUESTED'
           i2c_slave_event(slave, I2C_SLAVE_READ_REQUESTED, &value);
                                  ^
>> drivers/i2c/busses/i2c-mlxbf.c:1947:26: error: use of undeclared identifier 'I2C_SLAVE_READ_PROCESSED'
                   i2c_slave_event(slave, I2C_SLAVE_READ_PROCESSED, &value);
                                          ^
   drivers/i2c/busses/i2c-mlxbf.c:1951:25: error: use of undeclared identifier 'I2C_SLAVE_STOP'
           i2c_slave_event(slave, I2C_SLAVE_STOP, &value);
                                  ^
   drivers/i2c/busses/i2c-mlxbf.c:2011:2: error: implicit declaration of function 'i2c_slave_event' [-Werror,-Wimplicit-function-declaration]
           i2c_slave_event(slave, I2C_SLAVE_WRITE_REQUESTED, &value);
           ^
   drivers/i2c/busses/i2c-mlxbf.c:2011:25: error: use of undeclared identifier 'I2C_SLAVE_WRITE_REQUESTED'
           i2c_slave_event(slave, I2C_SLAVE_WRITE_REQUESTED, &value);
                                  ^
   drivers/i2c/busses/i2c-mlxbf.c:2016:32: error: use of undeclared identifier 'I2C_SLAVE_WRITE_RECEIVED'
                   ret = i2c_slave_event(slave, I2C_SLAVE_WRITE_RECEIVED,
                                                ^
   drivers/i2c/busses/i2c-mlxbf.c:2023:25: error: use of undeclared identifier 'I2C_SLAVE_STOP'
           i2c_slave_event(slave, I2C_SLAVE_STOP, &value);
                                  ^
>> drivers/i2c/busses/i2c-mlxbf.c:2244:3: error: field designator 'reg_slave' does not refer to any field in type 'const struct i2c_algorithm'
           .reg_slave = mlxbf_i2c_reg_slave,
            ^
>> drivers/i2c/busses/i2c-mlxbf.c:2245:3: error: field designator 'unreg_slave' does not refer to any field in type 'const struct i2c_algorithm'
           .unreg_slave = mlxbf_i2c_unreg_slave,
            ^
   drivers/i2c/busses/i2c-mlxbf.c:2296:8: error: implicit declaration of function 'acpi_device_uid' [-Werror,-Wimplicit-function-declaration]
           uid = acpi_device_uid(adev);
                 ^
   drivers/i2c/busses/i2c-mlxbf.c:2296:8: note: did you mean 'cpu_device_up'?
   include/linux/cpu.h:93:5: note: 'cpu_device_up' declared here
   int cpu_device_up(struct device *dev);
       ^
   drivers/i2c/busses/i2c-mlxbf.c:2296:6: warning: incompatible integer to pointer conversion assigning to 'const char *' from 'int' [-Wint-conversion]
           uid = acpi_device_uid(adev);
               ^ ~~~~~~~~~~~~~~~~~~~~~
   1 warning and 15 errors generated.

vim +/i2c_slave_event +1927 drivers/i2c/busses/i2c-mlxbf.c

  1879	
  1880	/* Send byte to 'external' smbus master. */
  1881	static int mlxbf_smbus_irq_send(struct mlxbf_i2c_priv *priv, u8 recv_bytes)
  1882	{
  1883		u8 data_desc[MLXBF_I2C_SLAVE_DATA_DESC_SIZE] = { 0 };
  1884		u8 write_size, pec_en, addr, byte, value, byte_cnt, desc_size;
  1885		struct i2c_client *slave = priv->slave;
  1886		u32 control32, data32;
  1887		int ret;
  1888	
  1889		if (!slave)
  1890			return -EINVAL;
  1891	
  1892		addr = 0;
  1893		byte = 0;
  1894		desc_size = MLXBF_I2C_SLAVE_DATA_DESC_SIZE;
  1895	
  1896		/*
  1897		 * Read bytes received from the external master. These bytes should
  1898		 * be located in the first data descriptor register of the slave GW.
  1899		 * These bytes are the slave address byte and the internal register
  1900		 * address, if supplied.
  1901		 */
  1902		if (recv_bytes > 0) {
  1903			data32 = mlxbf_i2c_read_data(priv->smbus->io,
  1904						     MLXBF_I2C_SLAVE_DATA_DESC_ADDR);
  1905	
  1906			/* Parse the received bytes. */
  1907			switch (recv_bytes) {
  1908			case 2:
  1909				byte = (data32 >> 8) & GENMASK(7, 0);
  1910				fallthrough;
  1911			case 1:
  1912				addr = (data32 & GENMASK(7, 0)) >> 1;
  1913			}
  1914	
  1915			/* Check whether it's our slave address. */
  1916			if (slave->addr != addr)
  1917				return -EINVAL;
  1918		}
  1919	
  1920		/*
  1921		 * I2C read transactions may start by a WRITE followed by a READ.
  1922		 * Indeed, most slave devices would expect the internal address
  1923		 * following the slave address byte. So, write that byte first,
  1924		 * and then, send the requested data bytes to the master.
  1925		 */
  1926		if (recv_bytes > 1) {
> 1927			i2c_slave_event(slave, I2C_SLAVE_WRITE_REQUESTED, &value);
  1928			value = byte;
> 1929			ret = i2c_slave_event(slave, I2C_SLAVE_WRITE_RECEIVED,
  1930					      &value);
> 1931			i2c_slave_event(slave, I2C_SLAVE_STOP, &value);
  1932	
  1933			if (ret < 0)
  1934				return ret;
  1935		}
  1936	
  1937		/*
  1938		 * Now, send data to the master; currently, the driver supports
  1939		 * READ_BYTE, READ_WORD and BLOCK READ protocols. Note that the
  1940		 * hardware can send up to 128 bytes per transfer. That is the
  1941		 * size of its data registers.
  1942		 */
> 1943		i2c_slave_event(slave, I2C_SLAVE_READ_REQUESTED, &value);
  1944	
  1945		for (byte_cnt = 0; byte_cnt < desc_size; byte_cnt++) {
  1946			data_desc[byte_cnt] = value;
> 1947			i2c_slave_event(slave, I2C_SLAVE_READ_PROCESSED, &value);
  1948		}
  1949	
  1950		/* Send a stop condition to the backend. */
  1951		i2c_slave_event(slave, I2C_SLAVE_STOP, &value);
  1952	
  1953		/* Handle the actual transfer. */
  1954	
  1955		/* Set the number of bytes to write to master. */
  1956		write_size = (byte_cnt - 1) & 0x7f;
  1957	
  1958		/* Write data to Slave GW data descriptor. */
  1959		mlxbf_i2c_smbus_write_data(priv, data_desc, byte_cnt,
  1960					   MLXBF_I2C_SLAVE_DATA_DESC_ADDR);
  1961	
  1962		pec_en = 0; /* Disable PEC since it is not supported. */
  1963	
  1964		/* Prepare control word. */
  1965		control32 = MLXBF_I2C_SLAVE_ENABLE;
  1966		control32 |= rol32(write_size, MLXBF_I2C_SLAVE_WRITE_BYTES_SHIFT);
  1967		control32 |= rol32(pec_en, MLXBF_I2C_SLAVE_SEND_PEC_SHIFT);
  1968	
  1969		mlxbf_i2c_write(priv->smbus->io, MLXBF_I2C_SMBUS_SLAVE_GW, control32);
  1970	
  1971		/*
  1972		 * Wait until the transfer is completed; the driver will wait
  1973		 * until the GW is idle, a cause will rise on fall of GW busy.
  1974		 */
  1975		mlxbf_smbus_slave_wait_for_idle(priv, MLXBF_I2C_SMBUS_TIMEOUT);
  1976	
  1977		/* Release the Slave GW. */
  1978		mlxbf_i2c_write(priv->smbus->io,
  1979				MLXBF_I2C_SMBUS_SLAVE_RS_MASTER_BYTES, 0x0);
  1980		mlxbf_i2c_write(priv->smbus->io, MLXBF_I2C_SMBUS_SLAVE_PEC, 0x0);
  1981		mlxbf_i2c_write(priv->smbus->io, MLXBF_I2C_SMBUS_SLAVE_READY, 0x1);
  1982	
  1983		return 0;
  1984	}
  1985	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011052231.PeuMT1eJ-lkp%40intel.com.

--9amGYk9869ThD9tj
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AhT1hd7/AReAkYGPWgIA

--9amGYk9869ThD9tj--
