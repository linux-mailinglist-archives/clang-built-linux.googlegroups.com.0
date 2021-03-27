Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBL7B7WBAMGQEUIBA5EY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC4F34B8A0
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 18:51:44 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id i1sf8178452qvu.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 10:51:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616867503; cv=pass;
        d=google.com; s=arc-20160816;
        b=UQ27dF5VB5jLqzGwvHF7ACv/cabRGjR6iND0G+q6xLeCKm6nPVZc/06kaGQiNioFFH
         /FwcJxIlfZTGH/LdECpcmDMALlIbogpEa5Hy1iRkOty01zfY5Cgq/xHnva0A+6BuSW6C
         3ciRsENucGwk5jXMD2ZH8uIrnrCYeCXFhZZ0/RBAVuZdMDuQcJNrNsWT6BHDUXkA5tVg
         BuG53DAyv5iNG21ZvXJ697MN3qsL0dH20OYDb76ZfQqAJz6jCHSLEfpmieIiy4vjzDcu
         L7anqp1uAqeXpnx4Rm6sJuqdo8dENwMPPPGrTLhwPQ9kCmY+j1Znf3j0bIeWRA/Ozy9w
         zXfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=aiwVkk0q2SDFjna4fqxXb3xGYsZBLzlg2TVIv1fmVuw=;
        b=K20GHMnwxAFvwTEfgqPaar9lXjjP3pJE6jO053mzAM39FrxISt/KzyZUlpzmfU98cb
         NAr6YITqF0SnuXUxGgf6kLJllshNYEH1Z5AvP/QKspvo7ujOJ0J/LELOccmZdMrot8rK
         WxuZkdQV7MGIMSRbIJ4JJtTmUWOFnZrMrJ1Ff+xikFE1b4+yBfyvRjhorkNZlD0aRifS
         AL/oVduv2nYT4JAAhCK6ora30U0jn9kqit01lbRcNfF74KFOi3WRiDt0S/MgxHyIoMpi
         oN49WCDoem4VvtqGWlKLhb9GkD+uLDZ34UjSNhhs1yldTbbufSFAteWmrKVPq4zdseAM
         Q8rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aiwVkk0q2SDFjna4fqxXb3xGYsZBLzlg2TVIv1fmVuw=;
        b=Vy8wOn+/tRd3/w4rHofj9B3jU3O/rwGZQkA3b0j33VqRN6HWd2YUqEC4CM3i+4BPkI
         RECXOVIN7oquWBNgD5tG02vg+Ubmo3L8GchE5Mc+s7q6sVDBdHwJJSZjeeG/rtTDXaBM
         rWBTSQhnjDKJlceK4rvPgMAe8x06Iq8WQQVP59QtR7ZxuwFariroB1Is+UvxVlgxCfj8
         MuKDSjGhfbMTu028ulUzMFBuWlBzgy++Qe+VE4nXBrYEpjZThnoC+052EKqiklSBeOmN
         YGm8Zqx/7RU9whJj5R4vq5K5+xSybor1bG57/TwcVsJ+M+fsH0NkeofurzbZq4MsKnz8
         3Wcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aiwVkk0q2SDFjna4fqxXb3xGYsZBLzlg2TVIv1fmVuw=;
        b=juRjQM2xqdw1VblMbKg514pDvKVLtQ3YZaahxrRRi/Yv65/Sar7b3VIoypFrsVWFOC
         jBAiXIJTqNhDHmw4aiX1iTv+euCMLy6DsmdO35fGxn6NM/c2Zdgvh6bVxAFES38c9YCo
         NKex62OdA0m4H8fHHHlRH60OSbuPnTtiHr4Rrl6BI/qSXvBJjM0CpvGncZGAnFPSxeXn
         atfxVgv7TCQZVta27AkHyo6sr8YNBrG0CoWtNubdApgSDOTFla9NeQsIBCBQPj+LepDf
         bu8npnJsg+zyNbgogTkkwvqrYAsAjZYBg84KJz1gZ5dkvG7rsacUnBjCI+5CtuaMKhNB
         GIXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531vE4a9+XlRYr/MfFQEzshl2D4QUotSO1FZFws867WFF9fyilaA
	jNM2I9DjRHwhKbGoV9Wz/m4=
X-Google-Smtp-Source: ABdhPJzDH5iEjmgJ15d+EMABZjO37ZFO2z2zPJ2yfL6YzceEY+O238CL98Ng5YCZJ9GlVjUDcgfkug==
X-Received: by 2002:ac8:5745:: with SMTP id 5mr16621001qtx.252.1616867503423;
        Sat, 27 Mar 2021 10:51:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:f97:: with SMTP id b23ls6342404qkn.0.gmail; Sat, 27
 Mar 2021 10:51:43 -0700 (PDT)
X-Received: by 2002:a05:620a:10a6:: with SMTP id h6mr18613560qkk.366.1616867502799;
        Sat, 27 Mar 2021 10:51:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616867502; cv=none;
        d=google.com; s=arc-20160816;
        b=RWO4s+B/HhkxVz/WOJrPRZ35x/13UMkk5r7cKqz/Oe1d96aQUYiEf68fI0pMmtdISx
         rZCPXmVPHDApgHyWltLCVUJBQlRbR8AASiDiXrDiIJUlYNukUwg6h/nwPg0Waic1cans
         Z2YO+OSxJZsI3pcjXAxPWoZcQoC/eSLarUTSUgbocOy+PMZRnYhjxNuRhGMIwWQYUhYH
         F24KDqAecmA5eGI4uJ/QZUxOa4b/9oG6ZIUfsyP5eAtJmGSc+dlINWHMR85YTSbMwH37
         zjS4g/Rg2q14cFGOeyAbdigYZRjDEixe4vTslw+U9WIorAh2H47INcRq21G3AXnLaV5N
         Jlow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=03LY9s0s9fzzkeZxwP+QxY0IC0piuFGy+JNOW7JJmAc=;
        b=yV/D8+8UL7cFHd60h7HdWWV15znoLVKbowx/1WR4OuicCcyutm1Ypq10I6gP0xQOr7
         NgyArxW4FWmLbnjiR9cj9vdFm/OmpvvXdJdVuoQpXiLyc0OlI/fsmbrWaJHkFdQipwoc
         8Kz4ODLedFaaVFaDYvtE692QEhNiPd8ANkoLa3NvwwLkSJPaH0zxftDizTaV7dzCxept
         mNuMJtJzgrI56GjUMREK02mkZWAj3ECSjxmPuFly05PKrCTA6iG4cRml6RzgPehkHy00
         NmOW6TOYNmK3EX46jHzvvPbbRk5v/w+KC9QmcB/rT/appjMxfvUP91liD1p77pYp2Kf9
         ZgHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id n9si455508qkg.0.2021.03.27.10.51.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Mar 2021 10:51:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: 7q5GZUI8jKqdstsAwsnQ+AjPxEzL68eoyR9vYSRHinbI7IVLRF8uer7ox7AJ6N5raJjqgBygPG
 ehu6rZEQsxpw==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="178453074"
X-IronPort-AV: E=Sophos;i="5.81,283,1610438400"; 
   d="gz'50?scan'50,208,50";a="178453074"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Mar 2021 10:51:40 -0700
IronPort-SDR: ofzx+QMVa8UfmP7q6beMwXYH/7qZckFgGSuZ+Tih7fQ+VOPVDPoJyuWH9Pann0Rj9JSbtnU3ub
 6ShUwpE6KHVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,283,1610438400"; 
   d="gz'50?scan'50,208,50";a="515451066"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 27 Mar 2021 10:51:37 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lQD61-0003cQ-81; Sat, 27 Mar 2021 17:51:37 +0000
Date: Sun, 28 Mar 2021 01:50:56 +0800
From: kernel test robot <lkp@intel.com>
To: John Chen <johnchen902@gmail.com>, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Rohit Pidaparthi <rohitpid@gmail.com>,
	RicardoEPRodrigues <ricardo.e.p.rodrigues@gmail.com>,
	Jiri Kosina <jikos@kernel.org>,
	Benjamin Tissoires <benjamin.tissoires@redhat.com>,
	John Chen <johnchen902@gmail.com>
Subject: Re: [PATCH 4/4] HID: input: map battery capacity (00850065)
Message-ID: <202103280118.9Jjxpf6B-lkp@intel.com>
References: <20210327130508.24849-5-johnchen902@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="uAKRQypu60I7Lcqm"
Content-Disposition: inline
In-Reply-To: <20210327130508.24849-5-johnchen902@gmail.com>
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


--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi John,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on hid/for-next]
[also build test ERROR on linux/master linus/master jikos-hid/for-next jikos-trivial/for-next v5.12-rc4 next-20210326]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/John-Chen/HID-add-Apple-Magic-Mouse-2-support/20210327-211004
base:   https://git.kernel.org/pub/scm/linux/kernel/git/hid/hid.git for-next
config: x86_64-randconfig-a012-20210327 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d50fe9f0d6b9ee61df8830a67ea0a33c27a637e7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/00e05cc61c9d267c5857d61fd40638d560460f89
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review John-Chen/HID-add-Apple-Magic-Mouse-2-support/20210327-211004
        git checkout 00e05cc61c9d267c5857d61fd40638d560460f89
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/hid/hid-input.c:1082:12: error: no member named 'battery_min' in 'struct hid_device'
                           device->battery_min = 0;
                           ~~~~~~  ^
>> drivers/hid/hid-input.c:1083:12: error: no member named 'battery_max' in 'struct hid_device'
                           device->battery_max = 100;
                           ~~~~~~  ^
   2 errors generated.


vim +1082 drivers/hid/hid-input.c

   568	
   569	static void hidinput_configure_usage(struct hid_input *hidinput, struct hid_field *field,
   570					     struct hid_usage *usage)
   571	{
   572		struct input_dev *input = hidinput->input;
   573		struct hid_device *device = input_get_drvdata(input);
   574		int max = 0, code;
   575		unsigned long *bit = NULL;
   576	
   577		field->hidinput = hidinput;
   578	
   579		if (field->flags & HID_MAIN_ITEM_CONSTANT)
   580			goto ignore;
   581	
   582		/* Ignore if report count is out of bounds. */
   583		if (field->report_count < 1)
   584			goto ignore;
   585	
   586		/* only LED usages are supported in output fields */
   587		if (field->report_type == HID_OUTPUT_REPORT &&
   588				(usage->hid & HID_USAGE_PAGE) != HID_UP_LED) {
   589			goto ignore;
   590		}
   591	
   592		if (device->driver->input_mapping) {
   593			int ret = device->driver->input_mapping(device, hidinput, field,
   594					usage, &bit, &max);
   595			if (ret > 0)
   596				goto mapped;
   597			if (ret < 0)
   598				goto ignore;
   599		}
   600	
   601		switch (usage->hid & HID_USAGE_PAGE) {
   602		case HID_UP_UNDEFINED:
   603			goto ignore;
   604	
   605		case HID_UP_KEYBOARD:
   606			set_bit(EV_REP, input->evbit);
   607	
   608			if ((usage->hid & HID_USAGE) < 256) {
   609				if (!hid_keyboard[usage->hid & HID_USAGE]) goto ignore;
   610				map_key_clear(hid_keyboard[usage->hid & HID_USAGE]);
   611			} else
   612				map_key(KEY_UNKNOWN);
   613	
   614			break;
   615	
   616		case HID_UP_BUTTON:
   617			code = ((usage->hid - 1) & HID_USAGE);
   618	
   619			switch (field->application) {
   620			case HID_GD_MOUSE:
   621			case HID_GD_POINTER:  code += BTN_MOUSE; break;
   622			case HID_GD_JOYSTICK:
   623					if (code <= 0xf)
   624						code += BTN_JOYSTICK;
   625					else
   626						code += BTN_TRIGGER_HAPPY - 0x10;
   627					break;
   628			case HID_GD_GAMEPAD:
   629					if (code <= 0xf)
   630						code += BTN_GAMEPAD;
   631					else
   632						code += BTN_TRIGGER_HAPPY - 0x10;
   633					break;
   634			default:
   635				switch (field->physical) {
   636				case HID_GD_MOUSE:
   637				case HID_GD_POINTER:  code += BTN_MOUSE; break;
   638				case HID_GD_JOYSTICK: code += BTN_JOYSTICK; break;
   639				case HID_GD_GAMEPAD:  code += BTN_GAMEPAD; break;
   640				default:              code += BTN_MISC;
   641				}
   642			}
   643	
   644			map_key(code);
   645			break;
   646	
   647		case HID_UP_SIMULATION:
   648			switch (usage->hid & 0xffff) {
   649			case 0xba: map_abs(ABS_RUDDER);   break;
   650			case 0xbb: map_abs(ABS_THROTTLE); break;
   651			case 0xc4: map_abs(ABS_GAS);      break;
   652			case 0xc5: map_abs(ABS_BRAKE);    break;
   653			case 0xc8: map_abs(ABS_WHEEL);    break;
   654			default:   goto ignore;
   655			}
   656			break;
   657	
   658		case HID_UP_GENDESK:
   659			if ((usage->hid & 0xf0) == 0x80) {	/* SystemControl */
   660				switch (usage->hid & 0xf) {
   661				case 0x1: map_key_clear(KEY_POWER);  break;
   662				case 0x2: map_key_clear(KEY_SLEEP);  break;
   663				case 0x3: map_key_clear(KEY_WAKEUP); break;
   664				case 0x4: map_key_clear(KEY_CONTEXT_MENU); break;
   665				case 0x5: map_key_clear(KEY_MENU); break;
   666				case 0x6: map_key_clear(KEY_PROG1); break;
   667				case 0x7: map_key_clear(KEY_HELP); break;
   668				case 0x8: map_key_clear(KEY_EXIT); break;
   669				case 0x9: map_key_clear(KEY_SELECT); break;
   670				case 0xa: map_key_clear(KEY_RIGHT); break;
   671				case 0xb: map_key_clear(KEY_LEFT); break;
   672				case 0xc: map_key_clear(KEY_UP); break;
   673				case 0xd: map_key_clear(KEY_DOWN); break;
   674				case 0xe: map_key_clear(KEY_POWER2); break;
   675				case 0xf: map_key_clear(KEY_RESTART); break;
   676				default: goto unknown;
   677				}
   678				break;
   679			}
   680	
   681			if ((usage->hid & 0xf0) == 0xb0) {	/* SC - Display */
   682				switch (usage->hid & 0xf) {
   683				case 0x05: map_key_clear(KEY_SWITCHVIDEOMODE); break;
   684				default: goto ignore;
   685				}
   686				break;
   687			}
   688	
   689			/*
   690			 * Some lazy vendors declare 255 usages for System Control,
   691			 * leading to the creation of ABS_X|Y axis and too many others.
   692			 * It wouldn't be a problem if joydev doesn't consider the
   693			 * device as a joystick then.
   694			 */
   695			if (field->application == HID_GD_SYSTEM_CONTROL)
   696				goto ignore;
   697	
   698			if ((usage->hid & 0xf0) == 0x90) {	/* D-pad */
   699				switch (usage->hid) {
   700				case HID_GD_UP:	   usage->hat_dir = 1; break;
   701				case HID_GD_DOWN:  usage->hat_dir = 5; break;
   702				case HID_GD_RIGHT: usage->hat_dir = 3; break;
   703				case HID_GD_LEFT:  usage->hat_dir = 7; break;
   704				default: goto unknown;
   705				}
   706				if (field->dpad) {
   707					map_abs(field->dpad);
   708					goto ignore;
   709				}
   710				map_abs(ABS_HAT0X);
   711				break;
   712			}
   713	
   714			switch (usage->hid) {
   715			/* These usage IDs map directly to the usage codes. */
   716			case HID_GD_X: case HID_GD_Y: case HID_GD_Z:
   717			case HID_GD_RX: case HID_GD_RY: case HID_GD_RZ:
   718				if (field->flags & HID_MAIN_ITEM_RELATIVE)
   719					map_rel(usage->hid & 0xf);
   720				else
   721					map_abs_clear(usage->hid & 0xf);
   722				break;
   723	
   724			case HID_GD_WHEEL:
   725				if (field->flags & HID_MAIN_ITEM_RELATIVE) {
   726					set_bit(REL_WHEEL, input->relbit);
   727					map_rel(REL_WHEEL_HI_RES);
   728				} else {
   729					map_abs(usage->hid & 0xf);
   730				}
   731				break;
   732			case HID_GD_SLIDER: case HID_GD_DIAL:
   733				if (field->flags & HID_MAIN_ITEM_RELATIVE)
   734					map_rel(usage->hid & 0xf);
   735				else
   736					map_abs(usage->hid & 0xf);
   737				break;
   738	
   739			case HID_GD_HATSWITCH:
   740				usage->hat_min = field->logical_minimum;
   741				usage->hat_max = field->logical_maximum;
   742				map_abs(ABS_HAT0X);
   743				break;
   744	
   745			case HID_GD_START:	map_key_clear(BTN_START);	break;
   746			case HID_GD_SELECT:	map_key_clear(BTN_SELECT);	break;
   747	
   748			case HID_GD_RFKILL_BTN:
   749				/* MS wireless radio ctl extension, also check CA */
   750				if (field->application == HID_GD_WIRELESS_RADIO_CTLS) {
   751					map_key_clear(KEY_RFKILL);
   752					/* We need to simulate the btn release */
   753					field->flags |= HID_MAIN_ITEM_RELATIVE;
   754					break;
   755				}
   756				goto unknown;
   757	
   758			default: goto unknown;
   759			}
   760	
   761			break;
   762	
   763		case HID_UP_LED:
   764			switch (usage->hid & 0xffff) {		      /* HID-Value:                   */
   765			case 0x01:  map_led (LED_NUML);     break;    /*   "Num Lock"                 */
   766			case 0x02:  map_led (LED_CAPSL);    break;    /*   "Caps Lock"                */
   767			case 0x03:  map_led (LED_SCROLLL);  break;    /*   "Scroll Lock"              */
   768			case 0x04:  map_led (LED_COMPOSE);  break;    /*   "Compose"                  */
   769			case 0x05:  map_led (LED_KANA);     break;    /*   "Kana"                     */
   770			case 0x27:  map_led (LED_SLEEP);    break;    /*   "Stand-By"                 */
   771			case 0x4c:  map_led (LED_SUSPEND);  break;    /*   "System Suspend"           */
   772			case 0x09:  map_led (LED_MUTE);     break;    /*   "Mute"                     */
   773			case 0x4b:  map_led (LED_MISC);     break;    /*   "Generic Indicator"        */
   774			case 0x19:  map_led (LED_MAIL);     break;    /*   "Message Waiting"          */
   775			case 0x4d:  map_led (LED_CHARGING); break;    /*   "External Power Connected" */
   776	
   777			default: goto ignore;
   778			}
   779			break;
   780	
   781		case HID_UP_DIGITIZER:
   782			if ((field->application & 0xff) == 0x01) /* Digitizer */
   783				__set_bit(INPUT_PROP_POINTER, input->propbit);
   784			else if ((field->application & 0xff) == 0x02) /* Pen */
   785				__set_bit(INPUT_PROP_DIRECT, input->propbit);
   786	
   787			switch (usage->hid & 0xff) {
   788			case 0x00: /* Undefined */
   789				goto ignore;
   790	
   791			case 0x30: /* TipPressure */
   792				if (!test_bit(BTN_TOUCH, input->keybit)) {
   793					device->quirks |= HID_QUIRK_NOTOUCH;
   794					set_bit(EV_KEY, input->evbit);
   795					set_bit(BTN_TOUCH, input->keybit);
   796				}
   797				map_abs_clear(ABS_PRESSURE);
   798				break;
   799	
   800			case 0x32: /* InRange */
   801				switch (field->physical & 0xff) {
   802				case 0x21: map_key(BTN_TOOL_MOUSE); break;
   803				case 0x22: map_key(BTN_TOOL_FINGER); break;
   804				default: map_key(BTN_TOOL_PEN); break;
   805				}
   806				break;
   807	
   808			case 0x3b: /* Battery Strength */
   809				hidinput_setup_battery(device, HID_INPUT_REPORT, field);
   810				usage->type = EV_PWR;
   811				return;
   812	
   813			case 0x3c: /* Invert */
   814				map_key_clear(BTN_TOOL_RUBBER);
   815				break;
   816	
   817			case 0x3d: /* X Tilt */
   818				map_abs_clear(ABS_TILT_X);
   819				break;
   820	
   821			case 0x3e: /* Y Tilt */
   822				map_abs_clear(ABS_TILT_Y);
   823				break;
   824	
   825			case 0x33: /* Touch */
   826			case 0x42: /* TipSwitch */
   827			case 0x43: /* TipSwitch2 */
   828				device->quirks &= ~HID_QUIRK_NOTOUCH;
   829				map_key_clear(BTN_TOUCH);
   830				break;
   831	
   832			case 0x44: /* BarrelSwitch */
   833				map_key_clear(BTN_STYLUS);
   834				break;
   835	
   836			case 0x45: /* ERASER */
   837				/*
   838				 * This event is reported when eraser tip touches the surface.
   839				 * Actual eraser (BTN_TOOL_RUBBER) is set by Invert usage when
   840				 * tool gets in proximity.
   841				 */
   842				map_key_clear(BTN_TOUCH);
   843				break;
   844	
   845			case 0x46: /* TabletPick */
   846			case 0x5a: /* SecondaryBarrelSwitch */
   847				map_key_clear(BTN_STYLUS2);
   848				break;
   849	
   850			case 0x5b: /* TransducerSerialNumber */
   851				usage->type = EV_MSC;
   852				usage->code = MSC_SERIAL;
   853				bit = input->mscbit;
   854				max = MSC_MAX;
   855				break;
   856	
   857			default:  goto unknown;
   858			}
   859			break;
   860	
   861		case HID_UP_TELEPHONY:
   862			switch (usage->hid & HID_USAGE) {
   863			case 0x2f: map_key_clear(KEY_MICMUTE);		break;
   864			case 0xb0: map_key_clear(KEY_NUMERIC_0);	break;
   865			case 0xb1: map_key_clear(KEY_NUMERIC_1);	break;
   866			case 0xb2: map_key_clear(KEY_NUMERIC_2);	break;
   867			case 0xb3: map_key_clear(KEY_NUMERIC_3);	break;
   868			case 0xb4: map_key_clear(KEY_NUMERIC_4);	break;
   869			case 0xb5: map_key_clear(KEY_NUMERIC_5);	break;
   870			case 0xb6: map_key_clear(KEY_NUMERIC_6);	break;
   871			case 0xb7: map_key_clear(KEY_NUMERIC_7);	break;
   872			case 0xb8: map_key_clear(KEY_NUMERIC_8);	break;
   873			case 0xb9: map_key_clear(KEY_NUMERIC_9);	break;
   874			case 0xba: map_key_clear(KEY_NUMERIC_STAR);	break;
   875			case 0xbb: map_key_clear(KEY_NUMERIC_POUND);	break;
   876			case 0xbc: map_key_clear(KEY_NUMERIC_A);	break;
   877			case 0xbd: map_key_clear(KEY_NUMERIC_B);	break;
   878			case 0xbe: map_key_clear(KEY_NUMERIC_C);	break;
   879			case 0xbf: map_key_clear(KEY_NUMERIC_D);	break;
   880			default: goto ignore;
   881			}
   882			break;
   883	
   884		case HID_UP_CONSUMER:	/* USB HUT v1.12, pages 75-84 */
   885			switch (usage->hid & HID_USAGE) {
   886			case 0x000: goto ignore;
   887			case 0x030: map_key_clear(KEY_POWER);		break;
   888			case 0x031: map_key_clear(KEY_RESTART);		break;
   889			case 0x032: map_key_clear(KEY_SLEEP);		break;
   890			case 0x034: map_key_clear(KEY_SLEEP);		break;
   891			case 0x035: map_key_clear(KEY_KBDILLUMTOGGLE);	break;
   892			case 0x036: map_key_clear(BTN_MISC);		break;
   893	
   894			case 0x040: map_key_clear(KEY_MENU);		break; /* Menu */
   895			case 0x041: map_key_clear(KEY_SELECT);		break; /* Menu Pick */
   896			case 0x042: map_key_clear(KEY_UP);		break; /* Menu Up */
   897			case 0x043: map_key_clear(KEY_DOWN);		break; /* Menu Down */
   898			case 0x044: map_key_clear(KEY_LEFT);		break; /* Menu Left */
   899			case 0x045: map_key_clear(KEY_RIGHT);		break; /* Menu Right */
   900			case 0x046: map_key_clear(KEY_ESC);		break; /* Menu Escape */
   901			case 0x047: map_key_clear(KEY_KPPLUS);		break; /* Menu Value Increase */
   902			case 0x048: map_key_clear(KEY_KPMINUS);		break; /* Menu Value Decrease */
   903	
   904			case 0x060: map_key_clear(KEY_INFO);		break; /* Data On Screen */
   905			case 0x061: map_key_clear(KEY_SUBTITLE);	break; /* Closed Caption */
   906			case 0x063: map_key_clear(KEY_VCR);		break; /* VCR/TV */
   907			case 0x065: map_key_clear(KEY_CAMERA);		break; /* Snapshot */
   908			case 0x069: map_key_clear(KEY_RED);		break;
   909			case 0x06a: map_key_clear(KEY_GREEN);		break;
   910			case 0x06b: map_key_clear(KEY_BLUE);		break;
   911			case 0x06c: map_key_clear(KEY_YELLOW);		break;
   912			case 0x06d: map_key_clear(KEY_ASPECT_RATIO);	break;
   913	
   914			case 0x06f: map_key_clear(KEY_BRIGHTNESSUP);		break;
   915			case 0x070: map_key_clear(KEY_BRIGHTNESSDOWN);		break;
   916			case 0x072: map_key_clear(KEY_BRIGHTNESS_TOGGLE);	break;
   917			case 0x073: map_key_clear(KEY_BRIGHTNESS_MIN);		break;
   918			case 0x074: map_key_clear(KEY_BRIGHTNESS_MAX);		break;
   919			case 0x075: map_key_clear(KEY_BRIGHTNESS_AUTO);		break;
   920	
   921			case 0x079: map_key_clear(KEY_KBDILLUMUP);	break;
   922			case 0x07a: map_key_clear(KEY_KBDILLUMDOWN);	break;
   923			case 0x07c: map_key_clear(KEY_KBDILLUMTOGGLE);	break;
   924	
   925			case 0x082: map_key_clear(KEY_VIDEO_NEXT);	break;
   926			case 0x083: map_key_clear(KEY_LAST);		break;
   927			case 0x084: map_key_clear(KEY_ENTER);		break;
   928			case 0x088: map_key_clear(KEY_PC);		break;
   929			case 0x089: map_key_clear(KEY_TV);		break;
   930			case 0x08a: map_key_clear(KEY_WWW);		break;
   931			case 0x08b: map_key_clear(KEY_DVD);		break;
   932			case 0x08c: map_key_clear(KEY_PHONE);		break;
   933			case 0x08d: map_key_clear(KEY_PROGRAM);		break;
   934			case 0x08e: map_key_clear(KEY_VIDEOPHONE);	break;
   935			case 0x08f: map_key_clear(KEY_GAMES);		break;
   936			case 0x090: map_key_clear(KEY_MEMO);		break;
   937			case 0x091: map_key_clear(KEY_CD);		break;
   938			case 0x092: map_key_clear(KEY_VCR);		break;
   939			case 0x093: map_key_clear(KEY_TUNER);		break;
   940			case 0x094: map_key_clear(KEY_EXIT);		break;
   941			case 0x095: map_key_clear(KEY_HELP);		break;
   942			case 0x096: map_key_clear(KEY_TAPE);		break;
   943			case 0x097: map_key_clear(KEY_TV2);		break;
   944			case 0x098: map_key_clear(KEY_SAT);		break;
   945			case 0x09a: map_key_clear(KEY_PVR);		break;
   946	
   947			case 0x09c: map_key_clear(KEY_CHANNELUP);	break;
   948			case 0x09d: map_key_clear(KEY_CHANNELDOWN);	break;
   949			case 0x0a0: map_key_clear(KEY_VCR2);		break;
   950	
   951			case 0x0b0: map_key_clear(KEY_PLAY);		break;
   952			case 0x0b1: map_key_clear(KEY_PAUSE);		break;
   953			case 0x0b2: map_key_clear(KEY_RECORD);		break;
   954			case 0x0b3: map_key_clear(KEY_FASTFORWARD);	break;
   955			case 0x0b4: map_key_clear(KEY_REWIND);		break;
   956			case 0x0b5: map_key_clear(KEY_NEXTSONG);	break;
   957			case 0x0b6: map_key_clear(KEY_PREVIOUSSONG);	break;
   958			case 0x0b7: map_key_clear(KEY_STOPCD);		break;
   959			case 0x0b8: map_key_clear(KEY_EJECTCD);		break;
   960			case 0x0bc: map_key_clear(KEY_MEDIA_REPEAT);	break;
   961			case 0x0b9: map_key_clear(KEY_SHUFFLE);		break;
   962			case 0x0bf: map_key_clear(KEY_SLOW);		break;
   963	
   964			case 0x0cd: map_key_clear(KEY_PLAYPAUSE);	break;
   965			case 0x0cf: map_key_clear(KEY_VOICECOMMAND);	break;
   966			case 0x0e0: map_abs_clear(ABS_VOLUME);		break;
   967			case 0x0e2: map_key_clear(KEY_MUTE);		break;
   968			case 0x0e5: map_key_clear(KEY_BASSBOOST);	break;
   969			case 0x0e9: map_key_clear(KEY_VOLUMEUP);	break;
   970			case 0x0ea: map_key_clear(KEY_VOLUMEDOWN);	break;
   971			case 0x0f5: map_key_clear(KEY_SLOW);		break;
   972	
   973			case 0x181: map_key_clear(KEY_BUTTONCONFIG);	break;
   974			case 0x182: map_key_clear(KEY_BOOKMARKS);	break;
   975			case 0x183: map_key_clear(KEY_CONFIG);		break;
   976			case 0x184: map_key_clear(KEY_WORDPROCESSOR);	break;
   977			case 0x185: map_key_clear(KEY_EDITOR);		break;
   978			case 0x186: map_key_clear(KEY_SPREADSHEET);	break;
   979			case 0x187: map_key_clear(KEY_GRAPHICSEDITOR);	break;
   980			case 0x188: map_key_clear(KEY_PRESENTATION);	break;
   981			case 0x189: map_key_clear(KEY_DATABASE);	break;
   982			case 0x18a: map_key_clear(KEY_MAIL);		break;
   983			case 0x18b: map_key_clear(KEY_NEWS);		break;
   984			case 0x18c: map_key_clear(KEY_VOICEMAIL);	break;
   985			case 0x18d: map_key_clear(KEY_ADDRESSBOOK);	break;
   986			case 0x18e: map_key_clear(KEY_CALENDAR);	break;
   987			case 0x18f: map_key_clear(KEY_TASKMANAGER);	break;
   988			case 0x190: map_key_clear(KEY_JOURNAL);		break;
   989			case 0x191: map_key_clear(KEY_FINANCE);		break;
   990			case 0x192: map_key_clear(KEY_CALC);		break;
   991			case 0x193: map_key_clear(KEY_PLAYER);		break;
   992			case 0x194: map_key_clear(KEY_FILE);		break;
   993			case 0x196: map_key_clear(KEY_WWW);		break;
   994			case 0x199: map_key_clear(KEY_CHAT);		break;
   995			case 0x19c: map_key_clear(KEY_LOGOFF);		break;
   996			case 0x19e: map_key_clear(KEY_COFFEE);		break;
   997			case 0x19f: map_key_clear(KEY_CONTROLPANEL);		break;
   998			case 0x1a2: map_key_clear(KEY_APPSELECT);		break;
   999			case 0x1a3: map_key_clear(KEY_NEXT);		break;
  1000			case 0x1a4: map_key_clear(KEY_PREVIOUS);	break;
  1001			case 0x1a6: map_key_clear(KEY_HELP);		break;
  1002			case 0x1a7: map_key_clear(KEY_DOCUMENTS);	break;
  1003			case 0x1ab: map_key_clear(KEY_SPELLCHECK);	break;
  1004			case 0x1ae: map_key_clear(KEY_KEYBOARD);	break;
  1005			case 0x1b1: map_key_clear(KEY_SCREENSAVER);		break;
  1006			case 0x1b4: map_key_clear(KEY_FILE);		break;
  1007			case 0x1b6: map_key_clear(KEY_IMAGES);		break;
  1008			case 0x1b7: map_key_clear(KEY_AUDIO);		break;
  1009			case 0x1b8: map_key_clear(KEY_VIDEO);		break;
  1010			case 0x1bc: map_key_clear(KEY_MESSENGER);	break;
  1011			case 0x1bd: map_key_clear(KEY_INFO);		break;
  1012			case 0x1cb: map_key_clear(KEY_ASSISTANT);	break;
  1013			case 0x201: map_key_clear(KEY_NEW);		break;
  1014			case 0x202: map_key_clear(KEY_OPEN);		break;
  1015			case 0x203: map_key_clear(KEY_CLOSE);		break;
  1016			case 0x204: map_key_clear(KEY_EXIT);		break;
  1017			case 0x207: map_key_clear(KEY_SAVE);		break;
  1018			case 0x208: map_key_clear(KEY_PRINT);		break;
  1019			case 0x209: map_key_clear(KEY_PROPS);		break;
  1020			case 0x21a: map_key_clear(KEY_UNDO);		break;
  1021			case 0x21b: map_key_clear(KEY_COPY);		break;
  1022			case 0x21c: map_key_clear(KEY_CUT);		break;
  1023			case 0x21d: map_key_clear(KEY_PASTE);		break;
  1024			case 0x21f: map_key_clear(KEY_FIND);		break;
  1025			case 0x221: map_key_clear(KEY_SEARCH);		break;
  1026			case 0x222: map_key_clear(KEY_GOTO);		break;
  1027			case 0x223: map_key_clear(KEY_HOMEPAGE);	break;
  1028			case 0x224: map_key_clear(KEY_BACK);		break;
  1029			case 0x225: map_key_clear(KEY_FORWARD);		break;
  1030			case 0x226: map_key_clear(KEY_STOP);		break;
  1031			case 0x227: map_key_clear(KEY_REFRESH);		break;
  1032			case 0x22a: map_key_clear(KEY_BOOKMARKS);	break;
  1033			case 0x22d: map_key_clear(KEY_ZOOMIN);		break;
  1034			case 0x22e: map_key_clear(KEY_ZOOMOUT);		break;
  1035			case 0x22f: map_key_clear(KEY_ZOOMRESET);	break;
  1036			case 0x232: map_key_clear(KEY_FULL_SCREEN);	break;
  1037			case 0x233: map_key_clear(KEY_SCROLLUP);	break;
  1038			case 0x234: map_key_clear(KEY_SCROLLDOWN);	break;
  1039			case 0x238: /* AC Pan */
  1040				set_bit(REL_HWHEEL, input->relbit);
  1041				map_rel(REL_HWHEEL_HI_RES);
  1042				break;
  1043			case 0x23d: map_key_clear(KEY_EDIT);		break;
  1044			case 0x25f: map_key_clear(KEY_CANCEL);		break;
  1045			case 0x269: map_key_clear(KEY_INSERT);		break;
  1046			case 0x26a: map_key_clear(KEY_DELETE);		break;
  1047			case 0x279: map_key_clear(KEY_REDO);		break;
  1048	
  1049			case 0x289: map_key_clear(KEY_REPLY);		break;
  1050			case 0x28b: map_key_clear(KEY_FORWARDMAIL);	break;
  1051			case 0x28c: map_key_clear(KEY_SEND);		break;
  1052	
  1053			case 0x29d: map_key_clear(KEY_KBD_LAYOUT_NEXT);	break;
  1054	
  1055			case 0x2c7: map_key_clear(KEY_KBDINPUTASSIST_PREV);		break;
  1056			case 0x2c8: map_key_clear(KEY_KBDINPUTASSIST_NEXT);		break;
  1057			case 0x2c9: map_key_clear(KEY_KBDINPUTASSIST_PREVGROUP);		break;
  1058			case 0x2ca: map_key_clear(KEY_KBDINPUTASSIST_NEXTGROUP);		break;
  1059			case 0x2cb: map_key_clear(KEY_KBDINPUTASSIST_ACCEPT);	break;
  1060			case 0x2cc: map_key_clear(KEY_KBDINPUTASSIST_CANCEL);	break;
  1061	
  1062			case 0x29f: map_key_clear(KEY_SCALE);		break;
  1063	
  1064			default: map_key_clear(KEY_UNKNOWN);
  1065			}
  1066			break;
  1067	
  1068		case HID_UP_GENDEVCTRLS:
  1069			switch (usage->hid) {
  1070			case HID_DC_BATTERYSTRENGTH:
  1071				hidinput_setup_battery(device, HID_INPUT_REPORT, field);
  1072				usage->type = EV_PWR;
  1073				return;
  1074			}
  1075			goto unknown;
  1076	
  1077		case HID_UP_BATTERY:
  1078			switch (usage->hid) {
  1079			case HID_BAT_ABSOLUTESTATEOFCHARGE:
  1080				hidinput_setup_battery(device, HID_INPUT_REPORT, field);
  1081				usage->type = EV_PWR;
> 1082				device->battery_min = 0;
> 1083				device->battery_max = 100;
  1084				return;
  1085			}
  1086			goto unknown;
  1087	
  1088		case HID_UP_HPVENDOR:	/* Reported on a Dutch layout HP5308 */
  1089			set_bit(EV_REP, input->evbit);
  1090			switch (usage->hid & HID_USAGE) {
  1091			case 0x021: map_key_clear(KEY_PRINT);           break;
  1092			case 0x070: map_key_clear(KEY_HP);		break;
  1093			case 0x071: map_key_clear(KEY_CAMERA);		break;
  1094			case 0x072: map_key_clear(KEY_SOUND);		break;
  1095			case 0x073: map_key_clear(KEY_QUESTION);	break;
  1096			case 0x080: map_key_clear(KEY_EMAIL);		break;
  1097			case 0x081: map_key_clear(KEY_CHAT);		break;
  1098			case 0x082: map_key_clear(KEY_SEARCH);		break;
  1099			case 0x083: map_key_clear(KEY_CONNECT);	        break;
  1100			case 0x084: map_key_clear(KEY_FINANCE);		break;
  1101			case 0x085: map_key_clear(KEY_SPORT);		break;
  1102			case 0x086: map_key_clear(KEY_SHOP);	        break;
  1103			default:    goto ignore;
  1104			}
  1105			break;
  1106	
  1107		case HID_UP_HPVENDOR2:
  1108			set_bit(EV_REP, input->evbit);
  1109			switch (usage->hid & HID_USAGE) {
  1110			case 0x001: map_key_clear(KEY_MICMUTE);		break;
  1111			case 0x003: map_key_clear(KEY_BRIGHTNESSDOWN);	break;
  1112			case 0x004: map_key_clear(KEY_BRIGHTNESSUP);	break;
  1113			default:    goto ignore;
  1114			}
  1115			break;
  1116	
  1117		case HID_UP_MSVENDOR:
  1118			goto ignore;
  1119	
  1120		case HID_UP_CUSTOM: /* Reported on Logitech and Apple USB keyboards */
  1121			set_bit(EV_REP, input->evbit);
  1122			goto ignore;
  1123	
  1124		case HID_UP_LOGIVENDOR:
  1125			/* intentional fallback */
  1126		case HID_UP_LOGIVENDOR2:
  1127			/* intentional fallback */
  1128		case HID_UP_LOGIVENDOR3:
  1129			goto ignore;
  1130	
  1131		case HID_UP_PID:
  1132			switch (usage->hid & HID_USAGE) {
  1133			case 0xa4: map_key_clear(BTN_DEAD);	break;
  1134			default: goto ignore;
  1135			}
  1136			break;
  1137	
  1138		default:
  1139		unknown:
  1140			if (field->report_size == 1) {
  1141				if (field->report->type == HID_OUTPUT_REPORT) {
  1142					map_led(LED_MISC);
  1143					break;
  1144				}
  1145				map_key(BTN_MISC);
  1146				break;
  1147			}
  1148			if (field->flags & HID_MAIN_ITEM_RELATIVE) {
  1149				map_rel(REL_MISC);
  1150				break;
  1151			}
  1152			map_abs(ABS_MISC);
  1153			break;
  1154		}
  1155	
  1156	mapped:
  1157		/* Mapping failed, bail out */
  1158		if (!bit)
  1159			return;
  1160	
  1161		if (device->driver->input_mapped &&
  1162		    device->driver->input_mapped(device, hidinput, field, usage,
  1163						 &bit, &max) < 0) {
  1164			/*
  1165			 * The driver indicated that no further generic handling
  1166			 * of the usage is desired.
  1167			 */
  1168			return;
  1169		}
  1170	
  1171		set_bit(usage->type, input->evbit);
  1172	
  1173		/*
  1174		 * This part is *really* controversial:
  1175		 * - HID aims at being generic so we should do our best to export
  1176		 *   all incoming events
  1177		 * - HID describes what events are, so there is no reason for ABS_X
  1178		 *   to be mapped to ABS_Y
  1179		 * - HID is using *_MISC+N as a default value, but nothing prevents
  1180		 *   *_MISC+N to overwrite a legitimate even, which confuses userspace
  1181		 *   (for instance ABS_MISC + 7 is ABS_MT_SLOT, which has a different
  1182		 *   processing)
  1183		 *
  1184		 * If devices still want to use this (at their own risk), they will
  1185		 * have to use the quirk HID_QUIRK_INCREMENT_USAGE_ON_DUPLICATE, but
  1186		 * the default should be a reliable mapping.
  1187		 */
  1188		while (usage->code <= max && test_and_set_bit(usage->code, bit)) {
  1189			if (device->quirks & HID_QUIRK_INCREMENT_USAGE_ON_DUPLICATE) {
  1190				usage->code = find_next_zero_bit(bit,
  1191								 max + 1,
  1192								 usage->code);
  1193			} else {
  1194				device->status |= HID_STAT_DUP_DETECTED;
  1195				goto ignore;
  1196			}
  1197		}
  1198	
  1199		if (usage->code > max)
  1200			goto ignore;
  1201	
  1202		if (usage->type == EV_ABS) {
  1203	
  1204			int a = field->logical_minimum;
  1205			int b = field->logical_maximum;
  1206	
  1207			if ((device->quirks & HID_QUIRK_BADPAD) && (usage->code == ABS_X || usage->code == ABS_Y)) {
  1208				a = field->logical_minimum = 0;
  1209				b = field->logical_maximum = 255;
  1210			}
  1211	
  1212			if (field->application == HID_GD_GAMEPAD || field->application == HID_GD_JOYSTICK)
  1213				input_set_abs_params(input, usage->code, a, b, (b - a) >> 8, (b - a) >> 4);
  1214			else	input_set_abs_params(input, usage->code, a, b, 0, 0);
  1215	
  1216			input_abs_set_res(input, usage->code,
  1217					  hidinput_calc_abs_res(field, usage->code));
  1218	
  1219			/* use a larger default input buffer for MT devices */
  1220			if (usage->code == ABS_MT_POSITION_X && input->hint_events_per_packet == 0)
  1221				input_set_events_per_packet(input, 60);
  1222		}
  1223	
  1224		if (usage->type == EV_ABS &&
  1225		    (usage->hat_min < usage->hat_max || usage->hat_dir)) {
  1226			int i;
  1227			for (i = usage->code; i < usage->code + 2 && i <= max; i++) {
  1228				input_set_abs_params(input, i, -1, 1, 0, 0);
  1229				set_bit(i, input->absbit);
  1230			}
  1231			if (usage->hat_dir && !field->dpad)
  1232				field->dpad = usage->code;
  1233		}
  1234	
  1235		/* for those devices which produce Consumer volume usage as relative,
  1236		 * we emulate pressing volumeup/volumedown appropriate number of times
  1237		 * in hidinput_hid_event()
  1238		 */
  1239		if ((usage->type == EV_ABS) && (field->flags & HID_MAIN_ITEM_RELATIVE) &&
  1240				(usage->code == ABS_VOLUME)) {
  1241			set_bit(KEY_VOLUMEUP, input->keybit);
  1242			set_bit(KEY_VOLUMEDOWN, input->keybit);
  1243		}
  1244	
  1245		if (usage->type == EV_KEY) {
  1246			set_bit(EV_MSC, input->evbit);
  1247			set_bit(MSC_SCAN, input->mscbit);
  1248		}
  1249	
  1250		return;
  1251	
  1252	ignore:
  1253		usage->type = 0;
  1254		usage->code = 0;
  1255	}
  1256	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103280118.9Jjxpf6B-lkp%40intel.com.

--uAKRQypu60I7Lcqm
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICEdLX2AAAy5jb25maWcAlFxLe9w2r973V8yTbvot2voWNz3n8YKSqBlmJFEhpbl4o2dq
j1Of+pJvbLfNvz8AqQtJQdM0iyRDgHcQeAGC+v6772fs7fX5cfd6f7N7ePg6+7x/2h92r/vb
2d39w/5/Z4mcFbKa8URUPwFzdv/09vfPf3+4bC4vZu9/Oj396WS23B+e9g+z+Pnp7v7zG1S+
f3767vvvYlmkYt7EcbPiSgtZNBXfVFfvbh52T59nf+4PL8A3Oz3/6QTa+OHz/ev//Pwz/P14
fzg8H35+ePjzsflyeP6//c3r7Pb9yd3+17uT28vfft3vL09v7z58OD/ZXf6y353szs9vzn7Z
XZ7/sv/lP++6XudDt1cnXWGWjMuAT+gmzlgxv/rqMEJhliVDkeHoq5+en8Cfnt1p2KdA6zEr
mkwUS6epobDRFatE7NEWTDdM581cVnKS0Mi6KuuKpIsCmuYOSRa6UnVcSaWHUqE+NWupnHFF
tciSSuS8qViU8UZL5XRQLRRnsC5FKuEvYNFYFfb5+9ncyMzD7GX/+vZl2HlRiKrhxaphCtZI
5KK6Oj8D9n5YeSmgm4rranb/Mnt6fsUWBoaalaJZQKdcjZi6lZcxy7qlf/eOKm5Y7a6jmWSj
WVY5/Au24s2Sq4JnzfxalAO7S4mAckaTsuuc0ZTN9VQNOUW4oAnXukJ57JfHGS+5fO6ojzHg
2I/RN9fHa8vj5Ati2/wZtYUJT1mdVUZsnL3pihdSVwXL+dW7H56en/Zw1Pu+9JrRS6C3eiXK
mKSVUotNk3+qec1JhjWr4kUzonfSq6TWTc5zqbYNqyoWL4ap1JpnInI3i9WgQIlmzAYzBR0Z
DhgwSG7WHSw4o7OXt99evr687h+HgzXnBVciNke4VDJyzrpL0gu5pik8TXlcCew6TZvcHuWA
r+RFIgqjJ+hGcjFXoLzg4JFkUXzEPlzygqkESBo2rFFcQwd01XjhHkEsSWTOROGXaZFTTM1C
cIUruh03nmtBz6cljPrx5ssqBRID2wPaBXQpzYXzUiuzLk0uE+4PMZUq5kmrS4VrcnTJlObT
q53wqJ6n2sjU/ul29nwXSMdgqGS81LKGjqwIJ9Lpxoiay2JO21eq8oplImEVbzKmqybexhkh
Z8ZcrAaxDcimPb7iRaWPEptISZbE0NFxthz2lyUfa5Ivl7qpSxxyoEDtUY/L2gxXaWO8AuN3
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

--uAKRQypu60I7Lcqm--
