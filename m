Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2VCVH7AKGQEVGOWVCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 965852CF06A
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 16:10:38 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id b18sf5680334ilr.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Dec 2020 07:10:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607094636; cv=pass;
        d=google.com; s=arc-20160816;
        b=LzG0BEUbsJHcC4gEiW/hg40x9u+XYDuey74Uzipad1K1vLPB07kwh54wD+l4QCNY5Y
         qanpL3Wb2v992fi5XyzYsaGTBqBDVq7Uzrq8rErOktMdeXEZa3prMtPMspmxUoVAwQYp
         yH236a+kazK4hMc9+FawmHaG/dTDQgKzGpMxshN7UaXTHrqWNcccoSLTPgbuv7yDAjMQ
         hTr8ZY0UKzjEjO4tDE0z35zNYLQNGdTnWgMc3CwOu84ExEmJGvj5Fh2OfH/3WhCYkal7
         S1huhD0+cs3pKCEAM82uZpBGvVcVJPBa6GZH0vKt0kNZ5i6Uca20T3v3T4Q8w4OwkRaX
         gNfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=lfgQFG2Ggd+fig8eEI2B7U9sZJUYFzDUK6lkYz8aJqw=;
        b=PKnGNc+xFzdoN0hAKRGImDwXVHXP6T0lq9KDVk3na257OPZQT5xZkmzucaWajoxQBi
         G5uaQVRr82ljX2YFl/aFRoinJjbZOig7fLOiRGA9MV53OcEgjRwsV7BDWArcXoEEm0fC
         9+/J+nvOeUm4YwfVufQEQurV+3LagrU5LQegL2ZDacwXNnbUiuuR/hAyuUFVoZeW9Hwo
         UPurAz2YJ8pbJLgB6B3jycHJEGjxwXh/t5LqAE52niRAJzHApmyk21GUh00hjOaSeJVi
         Qfkmm/QHRme8ImFpj81ieHejNLjiWRNbqr9efujQ86n3vksMtHpqJF07Y4ygAp3XLPW1
         ugQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lfgQFG2Ggd+fig8eEI2B7U9sZJUYFzDUK6lkYz8aJqw=;
        b=SkXTIudgllQERFLzLG9IJ+MggA9xpaOkn/yuj1fvRvqfusjtBnlpaunoqM3IXdpWo0
         reKbeItBIYqJeAgJvH96DHyBfOlmCnpBxJLEwrEasfNL27OLoCzgb43sNpoVqLkdU6yT
         AVNSyIrOhToGscOf8dp7t//U4PuWs5q8yCC2Zi1n/cegBymQlpuGmuGecWf8uZHSx1xO
         +N/zmMRChMeor7Ac/sarsKJTQzr0wqR5rCr90T8zbMqZiJownh8Z4QnhR36mEpbPShLN
         Pq/EEXoIIf9MJsEvxGIKKK5x/yhGk36xSkr4XAhqVY4o91wxGr1TWuv8XBVWyTCnpMir
         LZJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lfgQFG2Ggd+fig8eEI2B7U9sZJUYFzDUK6lkYz8aJqw=;
        b=LGwv3mv00JfmgmDzyqQuA8lxS1uIS0VQMEEBQ0xWqs1CDsfNWyTep3T5iZ4gtgfy2d
         Qku4OVVuJXdaDUMOiWgjXPznPkRdDfeheAigBCSeRVMxY1mdVq1d9I5ArQnhiRjYNJGz
         bv/K3v/ZrLDnj2fMMJpO0Cf+IaGotr4a6kGLzhxBQ62dAmx+l7pu27WyI99/f2LqkMUw
         Df8l6r4xDfaMi70ITGdEyT3g6apyOC6KE44EfgAlIM3I5igCokNSqmTMXp+jGmHa7k0H
         3VE9wLW/zIb2eTPT8toahubSK9Tkvm/aeAJjaW4/bCzGLX0ErKia6RdTxyt2vPm3B/TL
         yXlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533fhrnzNxA06TU/kUkRKW/8++QsBnDDCbMqWfgKZje8k639YngY
	SjSqpHmnANELWGUIB8S7GJE=
X-Google-Smtp-Source: ABdhPJwC//m7iV23LqaE6VQiNCGa0Yl1Zb3cTMA/60vtc9k83bpUJ0ueW41I4dj6h3J0+wvBPb24zQ==
X-Received: by 2002:a02:b396:: with SMTP id p22mr7034904jan.124.1607094635048;
        Fri, 04 Dec 2020 07:10:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:bb4b:: with SMTP id w72ls2330914ili.9.gmail; Fri, 04 Dec
 2020 07:10:34 -0800 (PST)
X-Received: by 2002:a05:6e02:ea5:: with SMTP id u5mr7491271ilj.188.1607094634431;
        Fri, 04 Dec 2020 07:10:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607094634; cv=none;
        d=google.com; s=arc-20160816;
        b=h8sxRUT350MoEOLxDv9xwE/pB1GM04P6ZXf9EvzUATuWFtSEDfNYN2bnBD92mREP/t
         APFuEaBGNQCcTaDQ9LiryfzgF/g9xtYL1hpq+aRBWWYwlWe6Gz6pZkIpX4GYpihUf/WV
         ITDY3PND98eiRnEYmrSuuGsp/CVEFkeRMmPQbvTURiAIt3Sd+ukADDODIfYNfzZXbi9F
         9B7mDQsM0e9H29cdYUy08grMLkgTZEQs9J8KqaNNAnUYM0LOivZkRgNIthxGZznfu1zw
         q/Coj02TE0jCN62NIGqOGa63nLm5Vxga7i6NacNPvfj6bT+iG+PO4byzcy+AGyilrExu
         pK9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=AloiWs3tqj6zgnJ13gcnMyLfmqkoDVsi9hcpUz7R0co=;
        b=zh+T0FbAc9GkvEtQNcy7MjbVCPl7eAvWlBDtW5UbqrcnZfe6vv5ZB1yufzRe+scj/T
         8uDckC/Q9wCmCuD2pUpOOJkzjnWWmaIGVfXC8wVXedC3/3roqH/XAte11jM1VTFtgLP9
         mRXXl3hlsSHBF0jpaBpAmU8xZEnlIanYCeFt38aJ9RoJbkd6ldjIAUArOt2CWrEviyHN
         MeMdqXW/sK4boCcRXdZFxENuk+vMbAqe57oPWRfP2rFUkkYwYAUwbUfYfn3/SFFu09+f
         YhJk9Zh+bE6OCRvhntCk0Nhh/GyWi3Y7LG5uZ0CTrGidtm1PyZtO7TvB2liTojsovfSO
         NSkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id q4si202232iog.3.2020.12.04.07.10.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Dec 2020 07:10:34 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: ThPPAZNwOf7OLQTsmMHHRIHJelZ3tcQ+oLP6F3ODC1v/D0wlLih/khXdZxErRVkV4BG8WZ/0BG
 m2L8AEEKTf/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="160445464"
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; 
   d="gz'50?scan'50,208,50";a="160445464"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Dec 2020 07:10:31 -0800
IronPort-SDR: JYaZt6lqNbzh6B2w9hDTg7qqnYM9snqBvSb7QuRH7T9N6vQTvSOvAjHZcgfPhvmEYM/cMzIsp8
 +cZvghTbI52Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; 
   d="gz'50?scan'50,208,50";a="368897278"
Received: from lkp-server02.sh.intel.com (HELO f74a175f0d75) ([10.239.97.151])
  by fmsmga002.fm.intel.com with ESMTP; 04 Dec 2020 07:10:29 -0800
Received: from kbuild by f74a175f0d75 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1klCj6-0000AE-WB; Fri, 04 Dec 2020 15:10:28 +0000
Date: Fri, 4 Dec 2020 23:09:39 +0800
From: kernel test robot <lkp@intel.com>
To: =?utf-8?Q?=C5=81ukasz?= Patron <priv.luk@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: [ebiggers:mmc-crypto-testing 6/134]
 drivers/input/touchscreen/nt36xxx.c:36:9: warning: variable 'retries' is
 uninitialized when used here
Message-ID: <202012042336.3XWRZw0G-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="J2SCkAp4GZ/dPZZf"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/linux.git mmc-crypto-testing
head:   4a151975f421e11263e7dc0e72d521017e3b12bd
commit: dd7be61e322fd7a375d8d58333ca4eeea34bb4fc [6/134] Input: add Novatek NT36xxx touchscreen driver
config: x86_64-randconfig-a013-20201204 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 32c501dd88b62787d3a5ffda7aabcf4650dbe3cd)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/linux.git/commit/?id=dd7be61e322fd7a375d8d58333ca4eeea34bb4fc
        git remote add ebiggers https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/linux.git
        git fetch --no-tags ebiggers mmc-crypto-testing
        git checkout dd7be61e322fd7a375d8d58333ca4eeea34bb4fc
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/input/touchscreen/nt36xxx.c:37:9: error: implicit declaration of function 'i2c_transfer' [-Werror,-Wimplicit-function-declaration]
                   ret = i2c_transfer(client->adapter, msg, 2);
                         ^
>> drivers/input/touchscreen/nt36xxx.c:36:9: warning: variable 'retries' is uninitialized when used here [-Wuninitialized]
           while (retries < 5) {
                  ^~~~~~~
   drivers/input/touchscreen/nt36xxx.c:19:13: note: initialize the variable 'retries' to silence this warning
           int retries;
                      ^
                       = 0
   drivers/input/touchscreen/nt36xxx.c:64:9: error: implicit declaration of function 'i2c_transfer' [-Werror,-Wimplicit-function-declaration]
                   ret = i2c_transfer(client->adapter, &msg, 1);
                         ^
   drivers/input/touchscreen/nt36xxx.c:63:9: warning: variable 'retries' is uninitialized when used here [-Wuninitialized]
           while (retries < 5) {
                  ^~~~~~~
   drivers/input/touchscreen/nt36xxx.c:55:13: note: initialize the variable 'retries' to silence this warning
           int retries;
                      ^
                       = 0
>> drivers/input/touchscreen/nt36xxx.c:137:5: warning: no previous prototype for function 'nvt_read_pid' [-Wmissing-prototypes]
   int nvt_read_pid(struct nvt_i2c *nvt_i2c)
       ^
   drivers/input/touchscreen/nt36xxx.c:137:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int nvt_read_pid(struct nvt_i2c *nvt_i2c)
   ^
   static 
   drivers/input/touchscreen/nt36xxx.c:678:7: error: implicit declaration of function 'i2c_check_functionality' [-Werror,-Wimplicit-function-declaration]
           if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
                ^
>> drivers/input/touchscreen/nt36xxx.c:882:1: warning: declaration specifier missing, defaulting to 'int'
   module_i2c_driver(nvt_ts_driver);
   ^
   int
   drivers/input/touchscreen/nt36xxx.c:882:19: error: a parameter list without types is only allowed in a function definition
   module_i2c_driver(nvt_ts_driver);
                     ^
   4 warnings and 4 errors generated.

vim +/retries +36 drivers/input/touchscreen/nt36xxx.c

    14	
    15	static int nvt_i2c_read(struct i2c_client *client, uint16_t address,
    16				uint8_t *buf, uint16_t len)
    17	{
    18		int ret;
    19		int retries;
    20		struct i2c_msg msg[2] = {
    21			/* first write slave position to i2c devices */
    22			{
    23				.addr = address,
    24				.len = 1,
    25				.buf = &buf[0]
    26			},
    27			/* Second read data from position */
    28			{
    29				.addr = address,
    30				.flags = I2C_M_RD,
    31				.len = len - 1,
    32				.buf = &buf[1]
    33			}
    34		};
    35	
  > 36		while (retries < 5) {
    37			ret = i2c_transfer(client->adapter, msg, 2);
    38			if (ret < 0)
    39				return ret;
    40			if (ret == 2)
    41				break;
    42			retries++;
    43		}
    44	
    45		if (retries == 5)
    46			return -EIO;
    47	
    48		return 0;
    49	}
    50	
    51	static int nvt_i2c_write(struct i2c_client *client, uint16_t address,
    52				 uint8_t *buf, uint16_t len)
    53	{
    54		int ret;
    55		int retries;
    56		struct i2c_msg msg = {
    57			.addr = address,
    58			.flags = !I2C_M_RD,
    59			.len = len,
    60			.buf = buf
    61		};
    62	
    63		while (retries < 5) {
    64			ret = i2c_transfer(client->adapter, &msg, 1);
    65			if (ret < 0)
    66				return ret;
    67			if (ret == 1)
    68				break;
    69			retries++;
    70		}
    71	
    72		if (retries == 5)
    73			return -EIO;
    74	
    75		return 0;
    76	}
    77	
    78	static void nvt_sw_reset_idle(struct nvt_i2c *nvt_i2c)
    79	{
    80		uint8_t buf[4] = { 0 };
    81	
    82		buf[0] = 0x00;
    83		buf[1] = 0xA5;
    84		nvt_i2c_write(nvt_i2c->client, I2C_HW_Address, buf, 2);
    85	
    86		msleep(15);
    87	}
    88	
    89	static int nvt_bootloader_reset(struct nvt_i2c *nvt_i2c)
    90	{
    91		int ret = 0;
    92		uint8_t buf[8] = { 0 };
    93	
    94		buf[0] = 0x00;
    95		buf[1] = 0x69;
    96		ret = nvt_i2c_write(nvt_i2c->client, I2C_HW_Address, buf, 2);
    97	
    98		msleep(35);
    99	
   100		return ret;
   101	}
   102	
   103	static int nvt_check_fw_reset_state(struct nvt_i2c *nvt_i2c,
   104					    RST_COMPLETE_STATE check_reset_state)
   105	{
   106		uint8_t buf[8] = { 0 };
   107		int ret = 0;
   108		int retry = 0;
   109	
   110		while (1) {
   111			msleep(10);
   112	
   113			buf[0] = EVENT_MAP_RESET_COMPLETE;
   114			buf[1] = 0x00;
   115			nvt_i2c_read(nvt_i2c->client, I2C_FW_Address, buf, 6);
   116	
   117			if ((buf[1] >= check_reset_state) &&
   118			    (buf[1] <= RESET_STATE_MAX)) {
   119				ret = 0;
   120				break;
   121			}
   122	
   123			retry++;
   124	
   125			if (retry > 100) {
   126				dev_err(&nvt_i2c->client->dev,
   127					"error, retry=%d, buf[1]=0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X\n",
   128					retry, buf[1], buf[2], buf[3], buf[4], buf[5]);
   129				ret = -1;
   130				break;
   131			}
   132		}
   133	
   134		return ret;
   135	}
   136	
 > 137	int nvt_read_pid(struct nvt_i2c *nvt_i2c)
   138	{
   139		uint8_t buf[3] = { 0 };
   140		int ret = 0;
   141	
   142		/* Set xdata index to EVENT BUF ADDR */
   143		buf[0] = 0xFF;
   144		buf[1] = (nvt_i2c->mmap->EVENT_BUF_ADDR >> 16) & 0xFF;
   145		buf[2] = (nvt_i2c->mmap->EVENT_BUF_ADDR >> 8) & 0xFF;
   146		nvt_i2c_write(nvt_i2c->client, I2C_FW_Address, buf, 3);
   147	
   148		/* Read project id */
   149		buf[0] = EVENT_MAP_PROJECTID;
   150		buf[1] = 0x00;
   151		buf[2] = 0x00;
   152		nvt_i2c_read(nvt_i2c->client, I2C_FW_Address, buf, 3);
   153	
   154		nvt_i2c->nvt_pid = (buf[2] << 8) + buf[1];
   155	
   156		dev_info(&nvt_i2c->client->dev, "PID=%04X\n", nvt_i2c->nvt_pid);
   157	
   158		return ret;
   159	}
   160	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012042336.3XWRZw0G-lkp%40intel.com.

--J2SCkAp4GZ/dPZZf
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AQA=

--J2SCkAp4GZ/dPZZf--
