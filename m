Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBEXCYXYAKGQEWHO6PCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA6D1305CB
	for <lists+clang-built-linux@lfdr.de>; Sun,  5 Jan 2020 06:16:04 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id t126sf9648660vkg.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Jan 2020 21:16:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578201363; cv=pass;
        d=google.com; s=arc-20160816;
        b=GvqvYd5A5vn7OObZ2LQGPvU2s1+JUXLaYEAimblVkKVhj4tymj0ufwp6ETZfgH7LSq
         s6T1u5lAtfNnxPTd2U1xm7gQZFQVpJuZpWmun1qQwfY8iDIn4+37TIEC5a4pVyEzqV6Y
         UzCFUOFBbboVMcpbqCcv8VminT9ldbetKOQxxJdU4sMoyjG5d8ruhTjBVNATXRmKLVoO
         Q0PLrRJOo+5rjrzfxpPc2B/fp51Zdr9FQDo/tMCfKnWWjyUugtFX1BqgcgiNTpaAuKhr
         YlG/7yxNfUkWrTWfXOrEIPVOTpguRiByomsgaeA/TpfalpNrVp3DBfv8eBdd9aQZT0Go
         U14A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NsIPJUTbxcC4S67Lqh9StGANKb+krLjAOwd1G0rf6GQ=;
        b=JIGn4FJBAEIvTJjXQogJTeOiXgkXgqQ1g5/J+D52YW9CkNNHxtVhWlR1IabepviDsj
         7hRutzscWIDllV2QKSfMCLKSlRVK1CDTx6iYurF6BGp9DKXSnjNFyhwfEiAStLBIRo3v
         h7aXX7oLVDYOdZJwOKwU74bb7aid8fH8b7+1E5zIxUXJELSpuDeaVTGKyOnw9d+RTXKg
         ULqIC2SErPR104xFHxWtch1Gaz+zsM0eckjxGmLO6zTyaFQMM5lx/y7HNHM9UQ+pVk6f
         +pI/uFDOZ6I3yU9EKHzMTy7w2qVUWKxxssCz/wGUQSXPVcEf8m7OILMG9WXYIrrrTdCc
         jlxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NsIPJUTbxcC4S67Lqh9StGANKb+krLjAOwd1G0rf6GQ=;
        b=TB781vo/0Llbt8eNxYXz5GnZDdiF0/zoWG2IaEJD94mLFGB87utd1O49Bhsg915yNG
         3w1CD3B4zis8HhnJa0YhcpcmJHDtyELIR0cxDdDNLxKMLp+dhoZWmfVRE/tDvz+/bVOl
         BqN9e/QCuRpiav8sS7WO60vtqN74/v5vG2Qs0nY2HbYvK48twHOFj+xIo1vRliaKZhTo
         ndqlM2E+bTx0cohwmBH3TOwQASFQB+ew4VWtddyLdIZIpuYaQ9/wMIAavVuXl5TKnJ7M
         cmRuLxNf1E6E1UciSEfKR+Zm+IqihvnUV4/EDyteZ79+x+zFGhhdzMgi+1c/bQLEPLau
         al9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NsIPJUTbxcC4S67Lqh9StGANKb+krLjAOwd1G0rf6GQ=;
        b=fXfdiCCm3Q66MustaZNy+QPQJ1h+Sxedtp5z5dag4ndxkMQtq8TiUdI2cmMt2BtXbr
         5bGh5QGIT2ibiJLvit75hn+vPX99V07Ctk72fM/ytH7lsk/NPYjVyklqLYK+1HO2QLZX
         HMyw6oZB4HhCO9F7VLvdPqE4+ZF6LcpInaCTXy8nB3jLfsUI3pkR0fxLo6aayjfjzkPu
         hoaZ5fPm+YaJz5R4Ci+9f1Ebz+GKLn7aajBiOHJPHbV3NsHUz+hpTIPNmBUizqE7A1YT
         USNuI7nmyLrG1lMZLePyY8+CZNF5+k4+NxmPkHUHHOZHaD/OMIsploUBdaY3D+45Ns5g
         WaBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU0YPfjXQCUgPI1mGV+4+mi+1d/GRCnQyNKl7GZ6zgA1yyM64FW
	KleUjctKcprikTKKFKDEpWs=
X-Google-Smtp-Source: APXvYqygVLWVelBwZ3bVARBoVXTunBC3GUbfY1rjhr7So7pZNhpw/9k7/EAd3JBq3URJBIu5IBJzzg==
X-Received: by 2002:a67:ab4f:: with SMTP id k15mr39327740vsh.163.1578201362914;
        Sat, 04 Jan 2020 21:16:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:24d:: with SMTP id a13ls3192075vsq.11.gmail; Sat,
 04 Jan 2020 21:16:02 -0800 (PST)
X-Received: by 2002:a67:ee13:: with SMTP id f19mr51045115vsp.147.1578201362493;
        Sat, 04 Jan 2020 21:16:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578201362; cv=none;
        d=google.com; s=arc-20160816;
        b=EcpJBHExWDLjzUOvtNMtD2m/ZloUX2k03kcQSpDNMn309xWCUYfSKvjPT6UsEOzbAy
         K/otAf6zNIJahGz8wKQTnqxoRSBCUxUjqrCI9/bijo8O9+Swjoc6pe6jWijfc4s8corJ
         NUdzSdXpGednW1TGZdN1QOkCeR0XvoCm6+slXG//uX9MT3KmMuucjJ3jDiClop74D9ki
         gMERuCOnd+qVKOOjMffaeRfOj946zGcLZeteswS1GF/unKuhs7m9ohD9GSJbJvBMu3IY
         1cyZGHJriWfg0qXULj9NEEiIGapXKiijv4K3x/LonlUQnlFNUdcYrmTDQiZBOZDHR8+E
         c+OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=6FMP3tjxNCqrRlctKJGOa9zXCkF0ZNINzQgs3ke4Lfw=;
        b=LCV7HSxQyEysThEDHv15LVTrsyy9MKDbTLjWp+h3IYLzu8hfrDfBUxCvoWYqn09wdd
         eqSarP7Y/mrCHCzvi7O2q+35run2HLIZv9I5KdawhFAsTZjIAtfuBW7Mfc9kw8a398VM
         3anVvIH4gCqP3TdCCtwH49Yle1bDSBkR6kin9Z77lFTAgDv0mkCJYx0WSjF8X+zpmqa7
         wqoX2zVz89fvJfwB3FljKp5Qzo04JxyUDkB9wv3koRG/labBJ9HIXYfyc7wAHDg/WPHV
         5XkWfNOfgHQAKJCqfPn/W/L4V5vLEQI44FI2EzReLWd4r3swpHat138xySJdc9/y+SDo
         KFOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id o19si2772392vka.4.2020.01.04.21.16.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Jan 2020 21:16:02 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Jan 2020 21:16:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,397,1571727600"; 
   d="gz'50?scan'50,208,50";a="253007717"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 04 Jan 2020 21:15:59 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1inyGc-0008SB-J8; Sun, 05 Jan 2020 13:15:58 +0800
Date: Sun, 5 Jan 2020 13:15:13 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [tinywindzz:v5.5-rc4-for-tiny4412 1/1]
 drivers/char/tiny4412-backlight.c:123:17: error: implicit declaration of
 function 'pinctrl_select_state'
Message-ID: <202001051312.BLogiQq2%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="hp4ubkqp4ysi3wya"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
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


--hp4ubkqp4ysi3wya
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
TO: Yangtao Li <tiny.windzz@gmail.com>

tree:   https://github.com/TinyWindzz/linux v5.5-rc4-for-tiny4412
head:   944de41ab30d36371205f9932cdb54af86826979
commit: 944de41ab30d36371205f9932cdb54af86826979 [1/1] backlight: add backlight support
config: x86_64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 320b43c39f0eb636c84815ce463893b21befdc8f)
reproduce:
        git checkout 944de41ab30d36371205f9932cdb54af86826979
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> drivers/char/tiny4412-backlight.c:123:17: error: implicit declaration of function 'pinctrl_select_state' [-Werror,-Wimplicit-function-declaration]
                   pinctrl_select_state(pctrl, pstate_in);
                   ^
   drivers/char/tiny4412-backlight.c:136:17: error: implicit declaration of function 'pinctrl_select_state' [-Werror,-Wimplicit-function-declaration]
                   pinctrl_select_state(pctrl, pstate_out);
                   ^
   drivers/char/tiny4412-backlight.c:203:5: error: implicit declaration of function 'pinctrl_select_state' [-Werror,-Wimplicit-function-declaration]
       pinctrl_select_state(pctrl, pstate_out);
       ^
>> drivers/char/tiny4412-backlight.c:274:13: error: implicit declaration of function 'devm_pinctrl_get' [-Werror,-Wimplicit-function-declaration]
       pctrl = devm_pinctrl_get(dev);
               ^
   drivers/char/tiny4412-backlight.c:274:13: note: did you mean 'of_pinctrl_get'?
   include/linux/pinctrl/pinctrl.h:193:21: note: 'of_pinctrl_get' declared here
   struct pinctrl_dev *of_pinctrl_get(struct device_node *np)
                       ^
>> drivers/char/tiny4412-backlight.c:274:11: warning: incompatible integer to pointer conversion assigning to 'struct pinctrl *' from 'int' [-Wint-conversion]
       pctrl = devm_pinctrl_get(dev);
             ^ ~~~~~~~~~~~~~~~~~~~~~
>> drivers/char/tiny4412-backlight.c:282:18: error: implicit declaration of function 'pinctrl_lookup_state' [-Werror,-Wimplicit-function-declaration]
       pstate_in  = pinctrl_lookup_state(pctrl, "backlight_in");
                    ^
>> drivers/char/tiny4412-backlight.c:282:16: warning: incompatible integer to pointer conversion assigning to 'struct pinctrl_state *' from 'int' [-Wint-conversion]
       pstate_in  = pinctrl_lookup_state(pctrl, "backlight_in");
                  ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/char/tiny4412-backlight.c:283:16: warning: incompatible integer to pointer conversion assigning to 'struct pinctrl_state *' from 'int' [-Wint-conversion]
       pstate_out = pinctrl_lookup_state(pctrl, "backlight_out");
                  ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/char/tiny4412-backlight.c:377:5: error: implicit declaration of function 'devm_pinctrl_put' [-Werror,-Wimplicit-function-declaration]
       devm_pinctrl_put(pctrl);
       ^
   3 warnings and 6 errors generated.

vim +/pinctrl_select_state +123 drivers/char/tiny4412-backlight.c

    81	
    82	static irqreturn_t timer_for_1wire_interrupt(int irq, void *dev_id)
    83	{
    84	    unsigned int tint;
    85	    tint = timer->TINT_CSTAT;
    86	    tint |= 0x100;
    87	    timer->TINT_CSTAT = tint;
    88	    //printk("timer_for_1wire_interrupt\n");
    89	    io_bit_count--;
    90	
    91	    switch (one_wire_status)
    92	    {
    93	        case START:
    94	
    95	            if (io_bit_count == 0)
    96	            {
    97	                io_bit_count = 16;
    98	                one_wire_status = REQUEST;
    99	            }
   100	
   101	            break;
   102	        case REQUEST:
   103	            gpio_set_value(one_write_pin, io_data & (1U << 31));
   104	            io_data <<= 1;
   105	
   106	            if (io_bit_count == 0)
   107	            {
   108	                io_bit_count = 2;
   109	                one_wire_status = WAITING;
   110	            }
   111	
   112	            break;
   113	        case WAITING:
   114	
   115	            if (io_bit_count == 0)
   116	            {
   117	                io_bit_count = 32;
   118	                one_wire_status = RESPONSE;
   119	            }
   120	
   121	            if (io_bit_count == 1)
   122	            {
 > 123	                pinctrl_select_state(pctrl, pstate_in);
   124	                gpio_set_value(one_write_pin, 1);
   125	            }
   126	
   127	            break;
   128	        case RESPONSE:
   129	            io_data = (io_data << 1) | gpio_get_value(one_write_pin);
   130	
   131	            if (io_bit_count == 0)
   132	            {
   133	                io_bit_count = 2;
   134	                one_wire_status = STOPING;
   135	                gpio_set_value(one_write_pin, 1);
   136	                pinctrl_select_state(pctrl, pstate_out);
   137	                //one_wire_session_complete(one_wire_request, io_data);
   138	            }
   139	
   140	            break;
   141	        case STOPING:
   142	
   143	            if (io_bit_count == 0)
   144	            {
   145	                one_wire_status = IDLE;
   146	                stop_timer_for_1wire();
   147	            }
   148	
   149	            break;
   150	        default:
   151	            stop_timer_for_1wire();
   152	    }
   153	
   154	    return IRQ_HANDLED;
   155	}
   156	
   157	
   158	static const unsigned char crc8_tab[] =
   159	{
   160	    0x00, 0x07, 0x0E, 0x09, 0x1C, 0x1B, 0x12, 0x15,
   161	    0x38, 0x3F, 0x36, 0x31, 0x24, 0x23, 0x2A, 0x2D,
   162	    0x70, 0x77, 0x7E, 0x79, 0x6C, 0x6B, 0x62, 0x65,
   163	    0x48, 0x4F, 0x46, 0x41, 0x54, 0x53, 0x5A, 0x5D,
   164	    0xE0, 0xE7, 0xEE, 0xE9, 0xFC, 0xFB, 0xF2, 0xF5,
   165	    0xD8, 0xDF, 0xD6, 0xD1, 0xC4, 0xC3, 0xCA, 0xCD,
   166	    0x90, 0x97, 0x9E, 0x99, 0x8C, 0x8B, 0x82, 0x85,
   167	    0xA8, 0xAF, 0xA6, 0xA1, 0xB4, 0xB3, 0xBA, 0xBD,
   168	    0xC7, 0xC0, 0xC9, 0xCE, 0xDB, 0xDC, 0xD5, 0xD2,
   169	    0xFF, 0xF8, 0xF1, 0xF6, 0xE3, 0xE4, 0xED, 0xEA,
   170	    0xB7, 0xB0, 0xB9, 0xBE, 0xAB, 0xAC, 0xA5, 0xA2,
   171	    0x8F, 0x88, 0x81, 0x86, 0x93, 0x94, 0x9D, 0x9A,
   172	    0x27, 0x20, 0x29, 0x2E, 0x3B, 0x3C, 0x35, 0x32,
   173	    0x1F, 0x18, 0x11, 0x16, 0x03, 0x04, 0x0D, 0x0A,
   174	    0x57, 0x50, 0x59, 0x5E, 0x4B, 0x4C, 0x45, 0x42,
   175	    0x6F, 0x68, 0x61, 0x66, 0x73, 0x74, 0x7D, 0x7A,
   176	    0x89, 0x8E, 0x87, 0x80, 0x95, 0x92, 0x9B, 0x9C,
   177	    0xB1, 0xB6, 0xBF, 0xB8, 0xAD, 0xAA, 0xA3, 0xA4,
   178	    0xF9, 0xFE, 0xF7, 0xF0, 0xE5, 0xE2, 0xEB, 0xEC,
   179	    0xC1, 0xC6, 0xCF, 0xC8, 0xDD, 0xDA, 0xD3, 0xD4,
   180	    0x69, 0x6E, 0x67, 0x60, 0x75, 0x72, 0x7B, 0x7C,
   181	    0x51, 0x56, 0x5F, 0x58, 0x4D, 0x4A, 0x43, 0x44,
   182	    0x19, 0x1E, 0x17, 0x10, 0x05, 0x02, 0x0B, 0x0C,
   183	    0x21, 0x26, 0x2F, 0x28, 0x3D, 0x3A, 0x33, 0x34,
   184	    0x4E, 0x49, 0x40, 0x47, 0x52, 0x55, 0x5C, 0x5B,
   185	    0x76, 0x71, 0x78, 0x7F, 0x6A, 0x6D, 0x64, 0x63,
   186	    0x3E, 0x39, 0x30, 0x37, 0x22, 0x25, 0x2C, 0x2B,
   187	    0x06, 0x01, 0x08, 0x0F, 0x1A, 0x1D, 0x14, 0x13,
   188	    0xAE, 0xA9, 0xA0, 0xA7, 0xB2, 0xB5, 0xBC, 0xBB,
   189	    0x96, 0x91, 0x98, 0x9F, 0x8A, 0x8D, 0x84, 0x83,
   190	    0xDE, 0xD9, 0xD0, 0xD7, 0xC2, 0xC5, 0xCC, 0xCB,
   191	    0xE6, 0xE1, 0xE8, 0xEF, 0xFA, 0xFD, 0xF4, 0xF3,
   192	};
   193	
   194	#define crc8_init(crc) ((crc) = 0XACU)
   195	#define crc8(crc, v) ( (crc) = crc8_tab[(crc) ^(v)])
   196	
   197	static void start_one_wire_session(unsigned char req)
   198	{
   199	    unsigned int tcon;
   200	    printk("backlight_write\n");
   201	    one_wire_status = START;
   202	    gpio_set_value(one_write_pin, 1);
   203	    pinctrl_select_state(pctrl, pstate_out);
   204	    // IDLE to START
   205	    {
   206	        unsigned char crc;
   207	        crc8_init(crc);
   208	        crc8(crc, req);
   209	        io_data = (req << 8) + crc;
   210	        io_data <<= 16;
   211	    }
   212	    io_bit_count = 1;
   213	    pinctrl_select_state(pctrl, pstate_out);
   214	    timer->TCNTB3 = 650;
   215	    //init tranfer and start timer
   216	    tcon = timer->TCON;
   217	    tcon &= ~(0xF << 16);
   218	    tcon |= (1 << 17);
   219	    timer->TCON = tcon;
   220	    tcon |= (1 << 16);
   221	    tcon |= (1 << 19);
   222	    tcon &= ~(1 << 17);
   223	    timer->TCON = tcon;
   224	    timer->TINT_CSTAT |= 0x08;
   225	    gpio_set_value(one_write_pin, 0);
   226	}
   227	
   228	static ssize_t backlight_write(struct file *file, const char __user *buf, size_t count, loff_t *off)
   229	{
   230	    unsigned char reg, ret;
   231	    ret = copy_from_user(&reg, buf, 1);
   232	
   233	    if (ret < 0)
   234	    {
   235	        printk("%s copy_from_user error\n", __func__);
   236	    }
   237	
   238	    if (reg > 127)
   239	        { reg = 127; }
   240	
   241	    start_one_wire_session(reg + 0x80);
   242	    return 1;
   243	}
   244	
   245	
   246	static int backlight_open(struct inode *inode, struct file *file)
   247	{
   248	    printk("backlight_open\n");
   249	    return 0;
   250	}
   251	
   252	static int backlight_release(struct inode *inode, struct file *file)
   253	{
   254	    printk("backlight_exit\n");
   255	    return 0;
   256	}
   257	
   258	static struct file_operations backlight_fops =
   259	{
   260	    .owner              = THIS_MODULE,
   261	    .open               = backlight_open,
   262	    .release            = backlight_release,
   263	    .write              = backlight_write,
   264	};
   265	static struct device *dev;
   266	static struct clk *base_clk;
   267	static struct resource *res = NULL, *irq = NULL;
   268	static int backlight_probe(struct platform_device *pdev)
   269	{
   270	    int ret;
   271	    dev_t devid;
   272	    dev = &pdev->dev;
   273	    printk("enter %s\n", __func__);
 > 274	    pctrl = devm_pinctrl_get(dev);
   275	
   276	    if (pctrl == NULL)
   277	    {
   278	        printk("devm_pinctrl_get error\n");
   279	        return -EINVAL;
   280	    }
   281	
 > 282	    pstate_in  = pinctrl_lookup_state(pctrl, "backlight_in");
   283	    pstate_out = pinctrl_lookup_state(pctrl, "backlight_out");
   284	
   285	    if (pstate_in == NULL || pstate_out == NULL)
   286	    {
   287	        printk("pinctrl_lookup_state error\n");
   288	        return -EINVAL;
   289	    }
   290	
   291	    one_write_pin = of_get_named_gpio(dev->of_node, "tiny4412,backlight", 0);
   292	
   293	    if (!one_write_pin)
   294	    {
   295	        printk("of_get_named_gpio error\n");
   296	        return -EINVAL;
   297	    }
   298	
   299	    devm_gpio_request_one(dev, one_write_pin, GPIOF_OUT_INIT_HIGH, "one_write");
   300	    //pinctrl_select_state(pctrl, pstate);
   301	    res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
   302	
   303	    if (res == NULL)
   304	    {
   305	        printk("platform_get_resource error\n");
   306	        return -EINVAL;
   307	    }
   308	
   309	    base_clk = devm_clk_get(&pdev->dev, "timers");
   310	
   311	    if (IS_ERR(base_clk))
   312	    {
   313	        dev_err(dev, "failed to get timer base clk\n");
   314	        return PTR_ERR(base_clk);
   315	    }
   316	
   317	    ret = clk_prepare_enable(base_clk);
   318	
   319	    if (ret < 0)
   320	    {
   321	        dev_err(dev, "failed to enable base clock\n");
   322	        return ret;
   323	    }
   324	
   325	    timer = devm_ioremap_resource(&pdev->dev, res);
   326	
   327	    if (timer == NULL)
   328	    {
   329	        printk("devm_ioremap_resource error\n");
   330	        return -EINVAL;
   331	    }
   332	
   333	    printk("timer: %x\n", (unsigned int)timer);
   334	    timer->TCFG0  = 0xf00;
   335	    timer->TCFG1  = 0x10004;
   336	    irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
   337	
   338	    if (irq == NULL)
   339	    {
   340	        printk("platform_get_resource irq error\n");
   341	        return -EINVAL;
   342	    }
   343	
   344	    ret = devm_request_irq(dev, irq->start, timer_for_1wire_interrupt , IRQF_TIMER, "backlight", NULL);
   345	
   346	    if (ret)
   347	    {
   348	        dev_err(dev, "unable to request irq\n");
   349	        return -EINVAL;
   350	    }
   351	
   352	    start_one_wire_session(0xff);
   353	    msleep(100);
   354	    start_one_wire_session(0xff);
   355	
   356	    if (alloc_chrdev_region(&devid, 0, 1, "backlight") < 0)
   357	    {
   358	        printk("%s ERROR\n", __func__);
   359	        return -EINVAL;
   360	    }
   361	
   362	    major = MAJOR(devid);
   363	    cdev_init(&backlight_cdev, &backlight_fops);
   364	    cdev_add(&backlight_cdev, devid, 1);
   365	    cls = class_create(THIS_MODULE, "backlight_demo");
   366	    device_create(cls, NULL, MKDEV(major, 0), NULL, "backlight");
   367	    return 0;
   368	}
   369	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202001051312.BLogiQq2%25lkp%40intel.com.

--hp4ubkqp4ysi3wya
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--hp4ubkqp4ysi3wya--
