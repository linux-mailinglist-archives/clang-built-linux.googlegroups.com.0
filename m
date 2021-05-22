Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBJ6LUWCQMGQERJQW7UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id E11F038D757
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 May 2021 22:12:24 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id v15-20020a67c00f0000b029023607a23f3dsf9067189vsi.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 May 2021 13:12:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621714344; cv=pass;
        d=google.com; s=arc-20160816;
        b=pfBqz10Gk1ohxikaHwdVTU8VAgmiORLtxFMNUu00QWsurfS7v1MT+F+fMcEFkmPi9g
         lExD5g1BDTaAQ3Wcur5VdP4dqNw2Ufs+vW0anzqQbj+So+iIjgwZUUhwESJosiLLP6Hl
         5CIWV+PIf3I6nFhxCCL/cZCZnoFNEREXw0xP+Pk/SDQ6Nw11nrtLnxmrVW/wrEKAMhAt
         BX6DaRvh5yjQ1mwhcQ9hmJhfleTuotnKecmkdNV2MJJ7lAZqgiEFa/1NieeIqtE6FR19
         u0ekFzd7Uo9AHIlTV8CtwepJ3+smgs7kE5NFfJMCOkHLW7cGT2ZjZUqLSv1Uw5nQFjPl
         fAbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=PYUx9AeEe2XFt3HuwJERiv1siiFLc6nTJhG0BiMgFBY=;
        b=yGqPsyy7ov5t5XlGpD2AaTQkjTfEDfNlcslhNvkPbHIRM4+vR9KhKF+qEXuBnXX6Bk
         9RiT6pFDsd9++QevCWv2W7bc3J1kKMHTwTjWtrfBCNlngKxVtfuBfd7JMQefBTHjT2hX
         IGeQwDfuNUGklDepYBEZ0swLpkC3Q/7I2PuZ62bcJM5ta4qBhtbcOvKf73fMXFdZETL1
         sVP67fqIEzNm5fSlvPvrp3gYhoOxIf/l6HCn8lJ4opEAAAl/Ukbn6ojz69vHmGROuYnf
         mq7evc+aeI0BdapNw3MjTyBlbiaLfPAsDKl6eVBmBx2JGg4t353fPgTXqwIkrnv0mhAk
         kwww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PYUx9AeEe2XFt3HuwJERiv1siiFLc6nTJhG0BiMgFBY=;
        b=iYYQ7u+GuI014U1gvdFew8YAx1OG+mnRe7RAO/Bcy7KOaBBCk/Q6BlMPcdLFdaxJfF
         MPsZBR5+wi4d1dpKfGSJwj+M3/W+70gi4XC5uTvNLCd2NuVr93bqeIQil/vgKBdGesbY
         9d5eq9l4e8kf0IIQHUNPfObWS/339miR1UAkdRD2KW+Q6lC7zK6n+Z0JWQNyT7zQ9ZYI
         enXYL+FPBaPpxrA1FWKaN3n6KNwPEQ6sp526EL0QyxwYXDwXq85l5IAtc0YwojIRhegO
         twtqcmZFLMhxNOId8SBoO1eXgVUH3Vf0LE7YCXHeZMX0FY1E6prJbcvz3a3FiTmNmdM+
         1JQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PYUx9AeEe2XFt3HuwJERiv1siiFLc6nTJhG0BiMgFBY=;
        b=LG3Xe5hHZMyN7/M6DMfOXABJgDvrHDx7ospw6GvCGtcB3qyFzOU04k6MsZEVzZXf9b
         8fcW0qqs2VJLZ0If1CSrL7Re+1cdOa7hua2K5ryjKxgvW9nxA+klHwABxhnbOpndI4GV
         jFXKAYMBVJ7n5lI6bU8IMAsdoK3o9GVZQIp+5U2VI2v/iLYCa5rLnBfhJ24I9f9+RBvR
         R9PUepDAtvc/nuILtzUkHHDh44J3u0ITrg6KlqrN+I9De29Ix6THXgDGQ87esW5HF2/B
         pwqwEDGezmftpS5GR9dhi+6LJdEI+wx3FgVIL3Zzyt+K7IynK2182+QLZTBm+5PtmdM1
         rO8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530uxUl4KqvoipoNjx8QehmDBg/B4MW7rgoLnMVdvK5QKzA6nLh1
	LdU136i8A8TNR4pww/sxuCs=
X-Google-Smtp-Source: ABdhPJxwSYPXUDxaxaRFLUpmhYSCzHXuQcWifHf7SGE87H74Fj9As/z/I0Iy3X0m+7sWPRDBnd4bvw==
X-Received: by 2002:a05:6102:18a:: with SMTP id r10mr7601842vsq.44.1621714343838;
        Sat, 22 May 2021 13:12:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f74d:: with SMTP id w13ls1908426vso.11.gmail; Sat, 22
 May 2021 13:12:23 -0700 (PDT)
X-Received: by 2002:a05:6102:2c1:: with SMTP id h1mr16913550vsh.5.1621714343084;
        Sat, 22 May 2021 13:12:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621714343; cv=none;
        d=google.com; s=arc-20160816;
        b=DHhP9Ceyib7CVrANiYGMDWOH+l0CAAD8ERZ7+Z+6JS081ge0zxmqvubEH0F2DoGZjI
         llrhWEa/kA8BKxs6YDFJKW8/yY1x5EaxUt4BpTuOFyBAQv46l2eAOwmQX+8MZDz9Igux
         +Xa7gARKKsSBYOVhI8KYt4FWHU4z3DgI05sR9w5Nz8Hq2rotVA/ORuDU3zf3RKlk1bvg
         lluYWBAWewM9aHEDU2aqfoBQ5HM+YVYTbqjLEp+UvL7FAa3LzqxYHKEdKvCOwt8ZLS2i
         xDtriIzWPX3aJDudY7Bd6UWZcBZCyWbNwbUiaef72GFgNMTXFtxK9X7sTa/ITlUE3o4h
         lD3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=xVUMnQYLhbdcrOOyJL4QrxY0wO8Sj60+sd8rnVKBP0M=;
        b=MDaUNeWKYb8hq9PdpDOUUgpIClWJnvjPkURBn3e6xb+Qi12T9onIzC2ky8Cb0ZeHBX
         oqXFEFUnHg9byOVQQutU3jJnO3yiNELDFm57BXhDkkDDVoGwr5Ydg0csPmRYMi0i+cmY
         i7C9QTylF6dLL8zV7iaBcZ6Uc3lC+CfHDokMhZrQ4NYrZcwdSnfZff1BfLp0VBWPWxwZ
         PuoHv3VKBhMLAskun25zVEx7nwEg/Tnv+84nyz4wIboigMp2lJPWFO0L/fuE09thVtV+
         zwSSYF7H/z1mOdhnkxEloxRVCsY2BkLYYmyZi/cHxqeAgJjQ+Iqaj1GDECh0oWKbb1TO
         qCaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id p6si485694vkm.2.2021.05.22.13.12.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 May 2021 13:12:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: nYr2cEFIglLNWkN+CGpAx/cqvdXhCGez4LWDuo3knV4gCGgKHC8LApGiYFRquSefJ2SsQsCM/b
 wSa+ron8HR7Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9992"; a="265600933"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="gz'50?scan'50,208,50";a="265600933"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 May 2021 13:12:20 -0700
IronPort-SDR: kc8F0LBgHocppQ3TBtqegPZyCGgIfI60z5gh9RNhPkr1tywb+5dnQ8gH9X0yuVc13C34LC8Xfb
 EEin2BweahxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="gz'50?scan'50,208,50";a="463057592"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 22 May 2021 13:12:16 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lkXyq-0000Pm-7R; Sat, 22 May 2021 20:12:16 +0000
Date: Sun, 23 May 2021 04:11:18 +0800
From: kernel test robot <lkp@intel.com>
To: Navin Sankar Velliangiri <navin@linumiz.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Navin Sankar Velliangiri <navin@linumiz.com>,
	Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Jonathan Corbet <corbet@lwn.net>, linux-hwmon@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6] hwmon: Add sht4x Temperature and Humidity Sensor
 Driver
Message-ID: <202105230429.lAn8JRGa-lkp@intel.com>
References: <20210522060917.41256-1-navin@linumiz.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="lrZ03NoBR/3+SXJZ"
Content-Disposition: inline
In-Reply-To: <20210522060917.41256-1-navin@linumiz.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--lrZ03NoBR/3+SXJZ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Navin,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on hwmon/hwmon-next]
[also build test WARNING on v5.13-rc2 next-20210521]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Navin-Sankar-Velliangiri/hwmon-Add-sht4x-Temperature-and-Humidity-Sensor-Driver/20210522-232201
base:   https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git hwmon-next
config: x86_64-randconfig-r033-20210523 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e84a9b9bb3051c35dea993cdad7b3d2575638f85)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/a122a0f7b0de4be7208671bb4f68ee1e14a3f28e
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Navin-Sankar-Velliangiri/hwmon-Add-sht4x-Temperature-and-Humidity-Sensor-Driver/20210522-232201
        git checkout a122a0f7b0de4be7208671bb4f68ee1e14a3f28e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/hwmon/sht4x.c:84:2: warning: variable 'ret' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
           if (!data->valid || time_after(jiffies, next_update)) {
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:56:28: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:30: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/hwmon/sht4x.c:125:9: note: uninitialized use occurs here
           return ret;
                  ^~~
   drivers/hwmon/sht4x.c:84:2: note: remove the 'if' if its condition is always true
           if (!data->valid || time_after(jiffies, next_update)) {
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:56:23: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                         ^
   drivers/hwmon/sht4x.c:74:9: note: initialize the variable 'ret' to silence this warning
           int ret;
                  ^
                   = 0
   1 warning generated.


vim +84 drivers/hwmon/sht4x.c

    66	
    67	/**
    68	 * sht4x_read_values() - read and parse the raw data from the SHT4X
    69	 * @sht4x_data: the struct sht4x_data to use for the lock
    70	 * Return: 0 if succesfull, 1 if not
    71	 */
    72	static int sht4x_read_values(struct sht4x_data *data)
    73	{
    74		int ret;
    75		u16 t_ticks, rh_ticks;
    76		unsigned long next_update;
    77		struct i2c_client *client = data->client;
    78		u8 crc, raw_data[SHT4X_RESPONSE_LENGTH],
    79		cmd[] = {SHT4X_CMD_MEASURE_HPM};
    80	
    81		mutex_lock(&data->lock);
    82		next_update = data->last_updated +
    83			      msecs_to_jiffies(data->update_interval);
  > 84		if (!data->valid || time_after(jiffies, next_update)) {
    85			ret = i2c_master_send(client, cmd, SHT4X_CMD_LEN);
    86			if (ret < 0)
    87				goto unlock;
    88	
    89			usleep_range(SHT4X_MEAS_DELAY,
    90				     SHT4X_MEAS_DELAY + SHT4X_DELAY_EXTRA);
    91	
    92			ret = i2c_master_recv(client, raw_data, SHT4X_RESPONSE_LENGTH);
    93			if (ret != SHT4X_RESPONSE_LENGTH) {
    94				if (ret >= 0)
    95					ret = -ENODATA;
    96	
    97				goto unlock;
    98			}
    99	
   100			t_ticks = raw_data[0] << 8 | raw_data[1];
   101			rh_ticks = raw_data[3] << 8 | raw_data[4];
   102	
   103			crc = crc8(sht4x_crc8_table, &raw_data[0], SHT4X_WORD_LEN, CRC8_INIT_VALUE);
   104			if (crc != raw_data[2]) {
   105				dev_err(&client->dev, "data integrity check failed\n");
   106				ret = -EIO;
   107				goto unlock;
   108			}
   109	
   110			crc = crc8(sht4x_crc8_table, &raw_data[3], SHT4X_WORD_LEN, CRC8_INIT_VALUE);
   111			if (crc != raw_data[5]) {
   112				dev_err(&client->dev, "data integrity check failed\n");
   113				ret = -EIO;
   114				goto unlock;
   115			}
   116	
   117			data->temperature = ((21875 * (int32_t)t_ticks) >> 13) - 45000;
   118			data->humidity = ((15625 * (int32_t)rh_ticks) >> 13) - 6000;
   119			data->last_updated = jiffies;
   120			data->valid = true;
   121		}
   122	
   123	unlock:
   124		mutex_unlock(&data->lock);
   125		return ret;
   126	}
   127	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105230429.lAn8JRGa-lkp%40intel.com.

--lrZ03NoBR/3+SXJZ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--lrZ03NoBR/3+SXJZ--
