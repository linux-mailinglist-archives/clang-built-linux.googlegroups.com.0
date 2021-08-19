Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBO7P7KEAMGQEWAN3VVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FEA3F2130
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 21:57:49 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id p4-20020ab03b84000000b002ab9500506fsf1632072uaw.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 12:57:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629403068; cv=pass;
        d=google.com; s=arc-20160816;
        b=PL/he2CpwBNggjITrCvVa+DViOjtHV+iaLFG7Dva+v+481fuj+N6snaGgWSzELKqSb
         kGTs4puJmwt0sX7mAHklNrl9v61S7Yf9O4fT5oBK4FHswbt/g76MBoeOXdf7/rE6NNd6
         xWnJ4kj4KiBQZedFQwp6ZUQIfG01pLtdE75C6O5PaOaDBuhUklF0MG2fhh/zTI2T7kAi
         E4CK7OuIXFyO1S/i0+E9ZHeIg3VdimKF1dw+DaiNHAzRL+QsvGAut1xtyT3bgOSAIcVc
         PgTrUot9gKaqz0+V6Z4lZkPok4eUHGKam0251kqlGtktgIIM2rT222lhtqIR40ht11Je
         a/OQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Rodx2+ulQGIOZFxhIkSXDe+XqZVaEOgPqegORFQuA3U=;
        b=u+CWDtLs+3JKa/AlSY2cLtRIpaVM8vlEUJKJEi2+8GoKuROVWuhggLEwnVz8mw53Nu
         2wvKhvTw74heymXwrCVvX2OJ07VZsuma33vjAPcsKJVb0fw8PrytiLyFPzHVEEQxQxDP
         dE1YBASeb0TZpM4MQgtVb7AkPPdARzTcyKAtrzlP/Fp01seGRELaTsBiPd5qFFQQTTnc
         RqbBydkIH/TgoJoh3xLKTOOKF/HeXjj39CBqz7Ev2DvQvnmW5nPqlsqoI4nBC5gNa8U2
         Jx276ZsOff0R+cKwq5RAV7kxI3LA5QOFQOVJfD2i6xDtkM6AUhmqFoZWRKNSeX+yToZV
         kYqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Rodx2+ulQGIOZFxhIkSXDe+XqZVaEOgPqegORFQuA3U=;
        b=UPxx761jX4eKrOr9q9gFvZoHYKntZIVB/4aoCPQXHbkqohhWAz+B9735IViS1Am2ip
         B1QsFFsm+EHavJnbS3hY05WhC2F60yo2XXpYTMOPT9VALfRNouyYmJ+7lzcOXXVEV0+J
         Spk4EZ1XfwJMeuk777JFIFgO62Jda+1WymWqt8uLZcnmxQUUDRMrYPLqRJ6OrZ4ZOOYK
         8/LGlp2VXJ1NtsmfdIo65CMAclqIIfhtvSsBziaB8HzL7fJs2JOZ6N9ol24h4gs0cuWF
         9GS2jGyU4qFrYnV8BaKGVK1g2BGmwKbgJRIHK6Y6v6dNs4S/rTX4sJk0vtK9inAI4SC8
         nZvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Rodx2+ulQGIOZFxhIkSXDe+XqZVaEOgPqegORFQuA3U=;
        b=YEtEodjnTkW9XGhg+LagnAKetGobJJ4bBOp9iYAbJ0akIu35zD37y1WYSlfMtXmyfI
         Em2pgHKd2AiqIzeAiqceVI7lNZseKzPAtIQ+Z15LfwZ/snhcfP9x0PfBhAmL6zGEpjBX
         xcJPBM6+lS8kGlDVFJKFVqYrvPSOi8ITS7J07EvTWeHW2bXec4hJNzjfqKGQofGwF3cR
         MWeuaj1UTpG52j1MfzY2vZbNI7IQInhpp6zNKECkKblnc+5FuDHPDekuZYKZEwG3bkX3
         MdDrn0FJLBYGvcQ8D0o6yulGoz/x5JLmcp7x4w41AQhlRfGBu/oM5ODrAx5riy+BpBhl
         M84Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532RYz9hVMtXYZ42WQ6N+ct4EeWnr5EEH9xWQ67gtr4PFmlfeTKM
	3BuDHFjytKpfXCcAPMqHJcw=
X-Google-Smtp-Source: ABdhPJxw/w4Tdygyr9FGsX8MfAiiDHYWU2fg9unaL2aYb34ufkqXNL0YcDUam+FC3MGOePyHHUocdA==
X-Received: by 2002:a05:6102:222f:: with SMTP id d15mr14477781vsb.16.1629403068043;
        Thu, 19 Aug 2021 12:57:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:a81:: with SMTP id n1ls1256801vsg.8.gmail; Thu, 19
 Aug 2021 12:57:47 -0700 (PDT)
X-Received: by 2002:a05:6102:c8b:: with SMTP id f11mr14216948vst.27.1629403067068;
        Thu, 19 Aug 2021 12:57:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629403067; cv=none;
        d=google.com; s=arc-20160816;
        b=aB0ChVvQB9chtANLFo1HP2gTH+898tlFc5qeLl6eA2Uemdywox2Pkrojgxuk8GIWgK
         WLJSHjtTOWcKYZ1NEHfw5MSBOUWheaWl7Ypwe/UBUi6Nc22Bisfas53drwcxVxu2SenK
         j7u79o9e4t4tq4gGt9SdpdDQZ1boOcB20YysFTbP8kon8TekWNRxAHV6h+l5x2RWX2kf
         /FoZSmru/9guaJ2l9FKI7wDjOqVgn3zBlipw7W4X52eB7aNETyAgX9u0OZQVF4keJRnD
         FMMejthnmVWO+YpbRXa3MkMeYBocJtDeBmvGXZGtQQ3kVr622Pa4bgZ07bvoPsYZRQov
         4UHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=WirhekHJpxAfXUWq/51WE9Y6MGR621dNgrJjgUiUDho=;
        b=RNZnZtRcfI94zfoE0VwD9melKTCuL598XMpkskbQC9rcHC24d1iKZztItwgzvolCiW
         swKXeP+3BgJQYkYh5hGUmfeuKoEyh9zJOD3TTUTJMy9IStVY9FwuU6Pvr4uCv0xEgjME
         gZIfFDiXH1TK+6k5QqgfpC+jJMmAziEo28gzk/3oX08jPeheBHIsA9CRef8yyH/SuGjc
         TlYoR8pUwjccWb1L8vZeb8b8i/n6ZADrRlJztT8FilEYArd8rXP9DTmB+XGHrzt6g/AC
         RNen1utD8SPmxefH8T320+WXwdObOu1s8bNpfhaqEc9m8rlFaGHN1vS/FUhw0ONKJ8k+
         KF6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id i6si258002vko.5.2021.08.19.12.57.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Aug 2021 12:57:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="196218859"
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; 
   d="gz'50?scan'50,208,50";a="196218859"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Aug 2021 12:57:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; 
   d="gz'50?scan'50,208,50";a="532641537"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 19 Aug 2021 12:57:37 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mGoAT-000UFE-6Q; Thu, 19 Aug 2021 19:57:37 +0000
Date: Fri, 20 Aug 2021 03:56:39 +0800
From: kernel test robot <lkp@intel.com>
To: Koba Ko <koba.ko@canonical.com>, Marcel Holtmann <marcel@holtmann.org>,
	Johan Hedberg <johan.hedberg@gmail.com>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	linux-bluetooth@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org
Subject: Re: [PATCH] Bluetooth: btusb: add a reject table to disable msft
Message-ID: <202108200332.Bxb2MTlM-lkp@intel.com>
References: <20210819135927.49715-1-koba.ko@canonical.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="DocE+STaALJfprDB"
Content-Disposition: inline
In-Reply-To: <20210819135927.49715-1-koba.ko@canonical.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--DocE+STaALJfprDB
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Koba,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on bluetooth/master]
[also build test WARNING on v5.14-rc6]
[cannot apply to bluetooth-next/master next-20210819]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Koba-Ko/Bluetooth-btusb-add-a-reject-table-to-disable-msft/20210819-220108
base:   https://git.kernel.org/pub/scm/linux/kernel/git/bluetooth/bluetooth.git master
config: i386-randconfig-a003-20210819 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d2b574a4dea5b718e4386bf2e26af0126e5978ce)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/bbff58c00c9efb048da28df9dbc3c79c0c40763b
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Koba-Ko/Bluetooth-btusb-add-a-reject-table-to-disable-msft/20210819-220108
        git checkout bbff58c00c9efb048da28df9dbc3c79c0c40763b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=i386 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   clang-14: warning: optimization flag '-falign-jumps=0' is not supported [-Wignored-optimization-argument]
   In file included from drivers/bluetooth/btusb.c:9:
   In file included from include/linux/dmi.h:6:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:12:
   In file included from include/linux/mutex.h:17:
   In file included from include/linux/lockdep.h:14:
   In file included from include/linux/smp.h:110:
   In file included from include/linux/preempt.h:78:
   In file included from arch/x86/include/asm/preempt.h:7:
   In file included from include/linux/thread_info.h:59:
   arch/x86/include/asm/thread_info.h:172:13: warning: calling '__builtin_frame_address' with a nonzero argument is unsafe [-Wframe-address]
           oldframe = __builtin_frame_address(1);
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/x86/include/asm/thread_info.h:174:11: warning: calling '__builtin_frame_address' with a nonzero argument is unsafe [-Wframe-address]
                   frame = __builtin_frame_address(2);
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/bluetooth/btusb.c:2917:9: warning: assigning to 'struct usb_device_id *' from 'const struct usb_device_id *' discards qualifiers [-Wincompatible-pointer-types-discards-qualifiers]
                   match = usb_match_id(data->intf, msft_rej_table);
                         ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   3 warnings generated.


vim +2917 drivers/bluetooth/btusb.c

  2829	
  2830	static int btusb_setup_intel_new(struct hci_dev *hdev)
  2831	{
  2832		struct btusb_data *data = hci_get_drvdata(hdev);
  2833		struct intel_version ver;
  2834		struct intel_boot_params params;
  2835		u32 boot_param;
  2836		char ddcname[64];
  2837		int err;
  2838		struct intel_debug_features features;
  2839		struct usb_device_id *match;
  2840	
  2841		BT_DBG("%s", hdev->name);
  2842	
  2843		/* Set the default boot parameter to 0x0 and it is updated to
  2844		 * SKU specific boot parameter after reading Intel_Write_Boot_Params
  2845		 * command while downloading the firmware.
  2846		 */
  2847		boot_param = 0x00000000;
  2848	
  2849		/* Read the Intel version information to determine if the device
  2850		 * is in bootloader mode or if it already has operational firmware
  2851		 * loaded.
  2852		 */
  2853		err = btintel_read_version(hdev, &ver);
  2854		if (err) {
  2855			bt_dev_err(hdev, "Intel Read version failed (%d)", err);
  2856			btintel_reset_to_bootloader(hdev);
  2857			return err;
  2858		}
  2859	
  2860		err = btintel_version_info(hdev, &ver);
  2861		if (err)
  2862			return err;
  2863	
  2864		err = btusb_intel_download_firmware(hdev, &ver, &params, &boot_param);
  2865		if (err)
  2866			return err;
  2867	
  2868		/* controller is already having an operational firmware */
  2869		if (ver.fw_variant == 0x23)
  2870			goto finish;
  2871	
  2872		err = btusb_intel_boot(hdev, boot_param);
  2873		if (err)
  2874			return err;
  2875	
  2876		clear_bit(BTUSB_BOOTLOADER, &data->flags);
  2877	
  2878		err = btusb_setup_intel_new_get_fw_name(&ver, &params, ddcname,
  2879							sizeof(ddcname), "ddc");
  2880	
  2881		if (err < 0) {
  2882			bt_dev_err(hdev, "Unsupported Intel firmware naming");
  2883		} else {
  2884			/* Once the device is running in operational mode, it needs to
  2885			 * apply the device configuration (DDC) parameters.
  2886			 *
  2887			 * The device can work without DDC parameters, so even if it
  2888			 * fails to load the file, no need to fail the setup.
  2889			 */
  2890			btintel_load_ddc_config(hdev, ddcname);
  2891		}
  2892	
  2893		/* Read the Intel supported features and if new exception formats
  2894		 * supported, need to load the additional DDC config to enable.
  2895		 */
  2896		btintel_read_debug_features(hdev, &features);
  2897	
  2898		/* Set DDC mask for available debug features */
  2899		btintel_set_debug_features(hdev, &features);
  2900	
  2901		/* Read the Intel version information after loading the FW  */
  2902		err = btintel_read_version(hdev, &ver);
  2903		if (err)
  2904			return err;
  2905	
  2906		btintel_version_info(hdev, &ver);
  2907	
  2908	finish:
  2909		/* All Intel controllers that support the Microsoft vendor
  2910		 * extension are using 0xFC1E for VsMsftOpCode.
  2911		 */
  2912		switch (ver.hw_variant) {
  2913		case 0x11:	/* JfP */
  2914		case 0x12:	/* ThP */
  2915		case 0x13:	/* HrP */
  2916		case 0x14:	/* CcP */
> 2917			match = usb_match_id(data->intf, msft_rej_table);
  2918			if (!match)
  2919				hci_set_msft_opcode(hdev, 0xFC1E);
  2920			break;
  2921		}
  2922	
  2923		/* Set the event mask for Intel specific vendor events. This enables
  2924		 * a few extra events that are useful during general operation. It
  2925		 * does not enable any debugging related events.
  2926		 *
  2927		 * The device will function correctly without these events enabled
  2928		 * and thus no need to fail the setup.
  2929		 */
  2930		btintel_set_event_mask(hdev, false);
  2931	
  2932		return 0;
  2933	}
  2934	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108200332.Bxb2MTlM-lkp%40intel.com.

--DocE+STaALJfprDB
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICK+nHmEAAy5jb25maWcAlDxJd9w2k/f8in7OJTnEllpLPDNPBzQJspEmCRoAe9EFry23
HM2nxdOS8sX/fqoALgAIyvl80HNXFfbaUeDPP/08I68vTw/7l7ub/f3999nXw+PhuH85fJnd
3t0f/meW8lnF1YymTL0H4uLu8fXvD3dnHy9nF+9Pz96f/Ha8OZutDsfHw/0seXq8vfv6Cs3v
nh5/+vmnhFcZy3WS6DUVkvFKK7pVV+9u7vePX2d/HY7PQDc7PX9/8v5k9svXu5f//vAB/j7c
HY9Pxw/393896G/Hp/893LzMvsw/X/x+vj//cthffP799OPhHKbw+XZ+mF/ub09O55eHi//6
/ePN4dd33aj5MOzViTMVJnVSkCq/+t4D8WdPe3p+Av86HJHYIK+agRxAHe387OJk3sGLdDwe
wKB5UaRD88Kh88eCySWk0gWrVs7kBqCWiiiWeLglzIbIUudc8UmE5o2qGxXFswq6pgOKiU96
w4Uzg0XDilSxkmpFFgXVkgunK7UUlMAqq4zDHyCR2BQO/+dZbljpfvZ8eHn9NrADq5jStFpr
ImA3WMnU1dkcyLu58bJmMIyiUs3unmePTy/YQ799PCFFt3/v3sXAmjTuZpj5a0kK5dAvyZrq
FRUVLXR+zeqB3MUsADOPo4rrksQx2+upFnwKcR5HXEuFjNNvjTNfd2dCvJn1WwQ498jWuvMf
N+Fv93j+FhoXEhkwpRlpCmU4wjmbDrzkUlWkpFfvfnl8enREW25I7c5R7uSa1UlkhJpLttXl
p4Y2Do+7UGycqGJAbohKlrprMbCl4FLqkpZc7DRRiiTL6IobSQu2iEyFNKBCg3MmAoYyCJwF
KZxpBFAjUCCbs+fXz8/fn18OD4NA5bSigiVGdGvBF85KXZRc8k0cQ7OMJorhhLJMl1aEA7qa
VimrjH6Id1KyXIB6Aql01ihSQEk4MC2ohB7iTZOlK4AISXlJWOXDJCtjRHrJqMCN3E3MiygB
pw3bCCpCcRGnwumJtZm/LnkaKMSMi4Smra5jru2QNRGStrvSM4Hbc0oXTZ5Jn1kOj19mT7fB
gQ72iCcryRsY03Jjyp0RDc+4JEZ6vscar0nBUqKoLohUOtklRYQ1jGZfj/ivQ5v+6JpWSr6J
1AvBSZrAQG+TlXBiJP2jidKVXOqmxikHgmIlNqkbM10hjZ0J7NSbNEZ+1N0D+BwxEQKzutK8
oiAjroxeA9sLxlNjdPvTrThiWFrQiJgbpNMFy5fIXO2cTDft4Y9m0xusOguWTwGk/zDHbBYC
P2OrQKrRQQ5NfQBIxIbspHYFtkN1GjjENVUt2HpAZ85EQfEJlBydAgkV7oZh01rQAhgkKgb+
cvrzFJSWtYIdrTxN3MHXvGgqRcQuqodbqphNaNsnHJp3Owps80Htn/81e4FTme1hXs8v+5fn
2f7m5un18eXu8WvALMhnJDF9eAoBRd6IVAxpDlMmS9AlZJ2HWmMhU9TfCQVDA61VdF3I1OgH
ytjKJPM2SrL+qFIm0XmL7/8/WHyvXmDZTPKi0/Rm80TSzGREqGCjNeDcOcFPTbcgVbGTkZbY
bR6AcPGmj1ZlRFAjUJPSGFwJkgQI7Bj2tijQCS1d5kdMReHYJM2TRcGM9ur3z19/zwkr+x+H
N1Y9C3JPo7DVEgwL6Ieow4suLAj2kmXqan7iwvE0SrJ18Kfzgc1ZpSBmIBkN+jg98/ixqWTr
2BvGNMq6O1l58+fhy+v94Ti7PexfXo+H5+F4G4ibyrrz+H3gogGFD9reytjFsFWRDj3DtiGV
0gs0ejCVpioJDFAsdFY0cukYuVzwppbuFoJnluRRiVkUq7ZBZHctwi596D8jTOgoJsnA0pEq
3bBULT3GVm6DyEjOdllKz7u0bWuWxligxYrUDTlaYAZSck0drwZ4QlIlfY3JE+y7xUV3qe0u
pWuWxOxai4ceUDXF5k5FNt3Os2ktrGQyiXRkHKaYduDJqqchingmGcIEcMVAdcYXt6TJquYg
EGiLwQmMrbDVyxA7jo4HjCqce0rBdIAPGWrRjgNoQXaRfpH/YFuNnyYcVjK/SQkdW3fNiYBE
GgSlAAhiUYD4ISgA/MjNUMSjNoM6j8wVEGHQueAcbSX+P3a8ieY12Dt2TdFLNlzARUmqxI+e
AjIJ/4npulRzUS9JBXpAOOo3jNGs3mLp6WVIA8YlobVx442CD/3IRNYrmCXYL5zmgLU2ydFj
fucl2FCGHo7HFTlVGCx1Pld0qy3rRCg6VQOrTYtRcNq7i542D3/rqmRuoiP3pN5fa4wzCYQu
WeN6i1mj6Db4CarD2aiau/SS5RUpMoetzcwzj4WM65/FlKJcgt52YhvmpEgY142w7lPfE0nX
TNJuO2O6EvpbECGYqxJXSLsr5RiiPVe5h5qNQXnGoNgdH1nAOFTR1RgLhom1YRIw1QoCG9A4
XlIlKWPGCCJJzyE0mtBAI8QwBE1T1zZZDocJ6jBeM0CYu16XJg722eT0xFMFxvC3Gd36cLx9
Oj7sH28OM/rX4RGcQgKGPEG3EIKXwRmIDmvnHx28dQf+4TDDbNelHcV6FnGPSRbNwo7tqSBe
1gR8C7GKy2lBYlkb7MuT+YLHycgCTl3ktPO4/UaARUONjqMWIPC8nJzEQIjpE3Bz49ZGLpss
A6etJjBmn9yY6BX2A13FmgjFSEwLgYeQscKLVYz6NDbTi1r9pG5HvP14qc8c6wS/XUMnlWgS
o5RTmkCM6MimTU1rYzTU1bvD/e3Z/De8X3BTuyswvVo2de2lnsFtTVbWjR/hytLN2KNcluhL
igoMKbNpiKuPb+HJ9ur0Mk7QcdIP+vHIvO769JAk2vPpOoRlXa9XsussmM7SZNwE9CFbCEz2
pOiHBM1RKSEHoE7bRnBw+CBMus6BEcIkJXiM1r2zMa+gzoRNTNShjEaCrgQmm5aNe4vh0RmW
jZLZ+bAFFZVNxYExlGzhmkdDIhuJ+cgptAkizMaQQi8bMNPFwuNN4FUty3rUq2EiTEFhFtVR
ZBlYZEpEsUswPeharDq3sVMBWqmQV3OrPevj083h+fnpOHv5/s1G1E781AvmNa8oMkBMobiz
wxlnlKhGUOvpusoFkWVt0pBR6c95kWZMLmP2hiqw5sxPr2B/llXAnxIxZYEUC5bbKXrt6FbB
seBRR5wOjxLUCl4b1DLusCMJKYd+InHJEDxzmelywSZmCkfNBPO2zHr6vGSgd8ADx/QizkdE
eljugGvB5wCfNW+om7SEHSdrJjxF38HGMcyYRNasMrnaiXkv1yjTxQJ0nF7TxMtcr8AMBtOx
aeG6wbQkyG2hWj9tGHgdv7DoJxRkrWJWoiPtcgRD9H3+8VJuo/0jKo64eAOhZDKJK8uJkS6n
OgRlAe57ydgP0G/j49zcYeMXYOVqYkqr3yfgH2NObSIayT0xLWmWgUTwKt7NhlV4q5JMjN6i
z+K+RQlWYqLfnIL5zrenb2B1MXE8yU6w7eQmrxlJznT83tIgJzYMfeuJVuARTWug1nBOSJ/R
BxWuJiGgLdrM2YVLUpxO45RMfPWdlHztQ8BzYGVTGl2bkZIVu6tLF29UCES0pXQEnxFQZ2gK
tBcPI/263E4biTatjJE3LWgSS77iPMACWs3spZMM2Bye5+N1GNDTY+Byl7v5074XkBXSiDEC
3LhKllSR6BBNmUTh10vCt+494bKmVpF5gXpaxoxDZbwRif44+CMLmkNH8zgSby4vz0Nc5+mf
ha0ciDU1snTdVgMqkzEEo3run6qpa9CkZgE/QXA8BgoqwJ22GZaF4Cta2ewN3sGOXAbfmlq3
xQnDHp4e716ejt7FhxPktQa8qdrQdpJCkLp4C5/gZYZ/v+PQGB+Ab2gQ2LSxyMR8/YUWNCfJ
DsRjwjjY3awL/EMnPBbFQcYXMT+NfVyFZ4BbDg5jmJ9mCcggKJQJhWPFPPTCWFxBVxzvFcER
jXksFnPuBb8t8PI8ZtbXpawL8IXOvCYDFFN30Wl0JPO4qzOgf9jDadzdANHjWQYByNXJ38mJ
/Resc7xpxNZJScWSmG9lHKUM/EpoDIJNItGFcaan0UaDdqUgeOXpMDgrkN+KzqPEK/iGXp34
J1GrKS4wiWpwrjlenQjR1O01m7dEZDB0xcpuDgOp7WCic1vjgLdBG9RmA2sqEU8cmOW+ka7A
TiWEuxPjgUcVBDFW5JXcmm1r748jccFAEXdDIpSYt49lyTI3d5kx4I3GiQWX1/r05MSTlGs9
vziJjgqos5NJFPRzEhPH66vTgWmtpl8KvEJ23Hm6pf5NiCByqdOmnKrzAnr9RxNNItbLnWRo
NEAKBArOqS83eA+fENUy9nAlYI4Z8/OY/Jw4URPGmw7c5GI3IClYXsGAc19OgVmLxthsJ1Xd
s7CDPgkzh3Fcm1dZp5J7e1amGMpi1/FMPLAJy3a6SFU8Yd8ZlTdidz8ls6xRADHdY7MCKIq9
xrAG9enfh+MMDNT+6+Hh8PhieiNJzWZP37BG1kmgjlIf9kbYcRJszmMEcG4AhwC3RckVq00G
Omon7Fi0DzOdM3Um4puRYX6yIjWWy2BoHmPDEhgwtSlH5ddqIqqg1NENHcRPewAUpbqjHRyE
Um/Iik4Fz3UZEE9dKAIqKRwx3HyyvoY2oRXDLPOQzO1UCAQN+Ujr++kjPGAHN/rVuSRGBiWo
Y75qwlxUCWZCtUWC2KR2c34GAjyswETZGRsnSjpp0EGHI63ZgTz0orze6kTYCcVMpqEIj8FA
BV1rvqZCsJT26bipLkBptdVwwVpIuLgFUWA9d1cPwXCLRqkJm2DwilW7dkvGpC7hGubLR91n
ZLKBImkwx5S7OtyATCwnKPCRDJc4RGC9xxtHM+820EcGcFaXDNbggqLaNhiB5LkADlSj/tQS
HGBShItqJMTROpWgODNWuPfUff643SLMhDZ1LkgaLiHERfhz+lTrBNmPx6JWO0MOUSXo/nA9
3WYw7sdKlp8XMtw7mo44ol08RKZLHvfFLV/mIu7gtkKSNlg/ihc6GyLQrSlilQKDuJOaOkrD
h7eXvv4QiJjanrRWnp+Fv8dRlYdEF5mtxWgY+/8srnYZXvIDZwVGIwFFlmKdqU8y4WKAUu7i
dwdKAIw+g3OGvppHAvA+IBg1d7SdBYxtCVoEPhhqrwtT3hYUdnoEKYOAhez0oiBVzM9GGryN
2+j24qyrLpxlx8P/vR4eb77Pnm/2915c3akNP8FhFEnO11htjnkbNYHua9WGHe/QqGniBTEd
RVcfiB05tRv/QSPkIwkM+s+b4AGZYp2JLNSogfGaG8WKiR2YKjrxaP7ZPP/x/JCQVymFUdPJ
g6naovI1HVSNR+KurOeU25BTZl+Od3/Z63Z3xnafYlpxiI/qUXrFCBm+KrIdTF+/tAYtJHK7
wT2tgNdXl67i9FHxtK3JwG6NmJY8JqYmtqwh3gAvx+YNBav4sI1xvB7FNT4dS2L3YD6NdI2q
Wcu5vfCAiUZSNOYUKvNCYD7Rd8GrXDSjOB7BS2DyyQ2iA9d6qtrwwfOf++PhyziQ8BdTsODm
c0CZu2As+IQAxqQNrpxr/rjG6lmUfbk/+PrLd1s6iGHygqRpUKE4IEvqvq3zUIryUJx7XHfD
FbWiFtXdhoXLMnPv8zVGSkKyH8dttgz/9bkDzH4BJ2V2eLl5/6srpei55BzzOfG7N4MuS/vz
DZKUiXjW3qJJ5Vz4IwhH9CG2Bx/WDezFSwBPqsX8BDb6U8NEzMhh3cKicQZoCxkwJe32BeDY
1XaCGQL/PhYhS2Etf3QbeFHHLwRJwbaRQSqqLi5OTh1/oUx1tRhphp3MFn6/3ZuE+Nnac797
3B+/z+jD6/0+kL42OWEuK4a+RvS+ZwceJlaD8NI8azNDZHfHh3+DgM/SseqnaUxhZkyUxrm0
OYlh5dlGJ1lbiDgoNhfa5U6GNjnneUH7PkcIzPqbq4WRvm0JsBwbzB93aCeqEwz5uk5HCo5m
bPYL/fvl8Ph89/n+MGwJw6Kw2/3N4deZfP327en4Muw/pvjWxK2cRAiVbm0QQgRecpcwT3en
EJGR1XgLEYF19h1yKPlx+9oIUtc0HLsr0MHEY1sD3Oeq8EWMqxmRHrfKwk1cI3jh40Fdy6aI
t+1wRnDhL4G/iVs4j0T4sNaJfOoaq8gEXn4o5ha9YLpY2aeOK10yxfLgeZ9Ze8LmYyZATPvi
xCofv8alF4z/5IjdUbGcGsRsqU2mPtiErlAn2BobyEmMYjFhAU58756rw9fjfnbbDW69LYPp
nmrFCTr0SFg98V6tvUgFCyga0FrXZjdjIQSE0+vtxalz3wkguSSnumIhbH5xGUJVTcCDvQoe
Ye+PN3/evRxuMJH525fDN5g6GraR+2BTz/6tns03+7AutvauNjteR2/MsUirsJ4KU9fgFiyo
V6Fin7fDaDuJlyzZxAvwlgyzlj3Z0DWvVTiafULX5/SayiSqsdY/wYxIkHnDSlV8Mq5YpRft
S+NuHVgwFeucwdZgHjhSPTdau4VO9TQ1/bYbzDRnscL2rKlsgSUVApNI1R80CR/jAplXLz48
QTY9LjlfBUi06aiEWN5w1973Og2O0bhk9mVssJOmsJCDVsl23ROHMQHqGJs7n0Bax8VX1M7M
7ecHbIGp3iyZou3rLLcvLAiUOt1VBA2teYJjWwR0Z/MFM88a9eiltiwx6dt+YSA8HUFzEFpM
uBtlafmq9YY8OukG+f7B4dcQJhsuN3oBC7VvWAJcydCLH9DSTCcgMkkRYLpGVLricCRegXxY
OR7hE8xdYRBkHugoU49mWsQ6iYzfFYGLdovwbit2np5meAPrVue3ZGXZaDBRS9omss3FSBSN
r/liJC3fWTmxL+eSst4my/AJZ6dAWrbDi+qAom1n6zcmcClvJmpXWZ1Y09Z/KSSyGZIm6G2+
gWrLej0dazGTyUfTGk+oAHYaui4U797hjsg3TC1BV9pzNfWUI/X4wzexJUceacLHDBZchuBO
Z1V4U48qHWt8/UMY9hJx2AdaSxEuAES6u/OnCQiFkyQGVIPXM2gPwMogwwWNJc8ULg2El2/a
DYgoMdO4u12NrcSrPA/N1hYUUlS7+q16h7SNzXwdkhRYaYx3fODNp84YHL+MwvI2W3o2QpDA
iPThDepJPNLYeoar5JVliraGI3rb7JF0Wb+psg1jExRYHtV9WURsnHL2N1Bhc3u60eYx1LA4
fMd+Nu9u0X1b0PsPYNA8h6BfN2pQ9wHLZIFK+4oIPKlE7OpRSf7gAoV6tn3c3tq6mEBMPbLz
LzHbtzsgVN2jHY/MVO2Aybo87x3NhK9/+7x/PnyZ/cu+6vl2fLq9azPdQ8AHZO0JvbV2Q2Zf
pdD2kdbwBOWNkbzNwE9AoZPKqugTlh+4xH0cBCyBz+BctWYeiEl8zzR866lVGKEGsR8PMeHa
CNVULdgtUhjaWPRUMUPni0zhsR8pkv6jSBMPFDvK6PPOFoliL9AzCb/FEOInP00UEm6v/xHZ
xIeDWjJ70VIyKfHLNP0bYM1Kw8Pedhv/2QSNV+8+PH++e/zw8PQF+Obzob/NBPEvYc9BgFNQ
S957QRfqeJnDTWhnLcxHC8Ib/UXhXRXjg2CZSLwX/OQX8XdPhRcyjwK9bO7wrljRXDC1G6Pw
gUnqg7vUQxg5I26z8JRVC9JlLP9vh0Ad4d7mu9B+dK9D3EZeRx+hIdp+jqxTe8FNYpRAZ235
yricdX98uUNZnqnv3/yXN31ZCr4oxXujKJfJlEungsXLJ7jgIW8cjOiurPyEqRB/qwCG6QC3
6LcF+2/9EWjuO+1noPjwGQUncodWjNsCs/T/OfuSNrdxZMH7/Ir8+vTeoae5iBR1qAO4SKLF
LQlqSV/4uezsrvzadnqcWa+r/v0gAJDEEqBq5uBFEQEQOyICsTB2QVfoKcjTU8omflYATeB0
/6h2Rf/I/5rHTXreT+c1bXx1l8jZAd8WfnpZDNFiJCOUnn2txKTix6woLHgqdYH2V8ruQweS
36sO3Hwr85he+eJ4s5C4MWbh/ooXteDzTdZAi7jCqevgmCJ5zo82flRhDMrkMDymxX56z9ZD
Uim03I5t0jwuFItNmFCl/vH8+ff3T6Big6iOD9xq+l1ZO2nZ7OsBWFVllVd7XeUjiWjWlypH
IsE8moPyCghlbQvGSfHnaBBvbf387fXnnw/18vxiaalwG9z525N5b02aM3rULCa+gkRhAicM
ArICMAoJHoJrHSwLLmFgMDVRqsvUSoGD6ga+crnTwOxfwJnszDz8uDV0X8Duwb2zkABsKeMx
1UUm/Lxa/fEGBGNFJbBYmVLMvHx6l+fihwjmlfe/bLxdrJjLI6IZ9pbOZMyGu9Boc9e3jC++
EpyPyExNsoR/7Fxmnx/TM3a4f6S2K/wEs+wmJt51Um+ChnlS+qkVcF0YnyjQqJ3weVoccrn3
kDgwddGwZuuyBEXeAmPbm3u9QOgn9ZMHcJ7BFaXzh7qhEAKuutBPMIGTemLemO69N5VrVEMU
ekqF0+ekFeMbuHl+/8/rz3+D5YK1c9nKPhWaGyX8HvOSHJY7iV0kivAFv9ipo2nROQwKIf0e
Km2E2M8191FADy1q8bxXI4TAL8ZxHlQbBADxqCA6iJv+7+F4V60iAEPP6QgutxketIzTiH2M
N1ZUsubeIJp5NFrEGGOzjR1XHikNZBMLunf0u7RGHeXyjkflMcINKWDXFJWNrg8oOxFiBeIH
og1gBBOnNnInJ8x2jREJB6isIkwmUGPtMFG86czfY37MbCC3TbegPem1rQ6jVXYlpkkTqEMP
rvj1WVnIAjEO54ZJv8t8zPQKU8bGQ3bFiETG2AMGa0/aU52o4TKUeqXnXPmY1vJ9e8YdiwRu
aSW2xGDyxBJbpgdAbJHhcyea59A7cqzdSg42V8+yabMOHiYOa+z7TJOdU/XSnm6wCf/L3z7/
/uvL57/ptdd5hIvEbJxjdaIusVyQoHvZ64t6wvHwyI66ZGAk2M9jTrT4UMUQa1tZQMRe1gaK
A0GH5tQXzFTsbMpc0xAvp4LawLrsYrMR/AwxF7JAIXMJtbDV6djZDElL7ALjKOsjADQ2CzQS
jg94yhZW9dY8sJMXZHN0PfPyfKLUbT8DkbpVoq6saT1eAgNMi0M8VlfZfKs5gD3WBDtWxbrp
KrQ0G2L+AIKrTzpjctViEAkV9P81QY16YL91QyfPzv2Tdrrwst3xiet82f1Td0ZgJkYjHhsw
ub6b3yEMyHiuj9pJm2cZrD7ORcD/H7KszN9cgeVlgRGIgjniD4IMHWBXmWHfZ7rpnIZZYgtJ
rsnZ1KUjMtLR8dPnf2u2v1PFeJ1GKaUQzQbtGIDfY54exjb9kDXouzmnkIefuEL4CoSjTp1K
Jx2YIODcgasEqAtdLbFb4MLCd7XHAzRIItuh2XImwC8me7ELBG7BpXIO56qj1gDqHCiTH7Uf
bFuUnQ2BcL9lpkWSYZiKNBrrB7C6azFjOEClfRAnG7OAgLKpdu6rKtCXAPzGw02rBJcQtalQ
OncAVmf+VffaR9K+zA84c8pvbNTk78JGZEy8wH9c6l1g4+HSKyOoIOqLznTlRdYUaFaASpl7
9iNQp4pUp+UnqEW5zZMEL4MzOCwMs7bDb4081y9iAIBiEneIDSKlhaRLl1/dsdWEqrhqrx1p
1LolaHV2J5rmiF4qRVHAoEbaQlugY1PJ//BQiOyYbwZUdaIUEUy+oz7ZHExRQbK5JcrSmSKt
8jPz8ffn35/ZkfcPqYQ0XpEk/ZilmG56wh6HVOeROXBPM+vDcr9b9UNABudaBwLOGuBG9BNJ
j3KnE5buU+zDdL9e6VA8YpMzo9O93ccspfZwFMPeBg5Ej0QxwRnblRu3Pofn1GQqLBL2b4F7
kc+V9NghNw/0I2+S1Sl6SnFEdmxPhd2Fx/2jDcy4AtGqYv8oMUiXM3Jyn4Ki8Cr6eMSi5c7r
rizQ5qBwXbG4TCy1SZHghMu9nTu4yoliGo4VraBsIlI9u8b2LdeVrhSXzfzlb//8P+OPl+e/
SYeDr5/e3l7++fLZYP+AOtN1PRIE77MlfppPFENWNnnhMB3nFJz332C1768rxc5aoBoBMCyl
JihsGqz+nl6cXPxMEK+0YV+pqT4mqIidrC8KPljd3iaGKlSWfYLXEJsb3r2NQ6vgiNVWE9SD
YV7dbH1oCyfDAm3mDZi30RZy/Sw9SdnxTfhbnvZcOEOn/17Q9ql0Fa5eVkhyh0udQoL62yv4
WqbJQKt3usIqRKBdxpXLbVc0F3ot2Vwsw6MAdcn5MmnvLMjEDi9myxOiatvOfG6daPhbJlar
jpiUWupK5Amu+EeXh4muMi4sgIwHqjlucxjsVXxAoFhDlcE46oF2+PLjQ2PEMdAoqhDS4oDE
ikc7eOwHZa/Ar5HWmjcxhzFxHv0ER9ZHXEHCe5BRzL23gycB4Gj7Yp+phqF9pxry73k+CdV+
jcdS72/i9RJsazvNJu+mxy6SQde5hsBgiGwKS/cKwB5yFFBwzddSkzwaeUro0BektmwTuFYS
TD1EtjD9leHh/fntHWEPu9NwKPDh5oJK33YjW4SlFTVXyt9W9QZCfd1Yqj6Suie5g2nMUHY4
VbwxUghQXOSqqoQN3h72iyaETcBxGNCQ86yaRg2wIQEQY8zSxUgUmKq1GPZY6nIOgHAJhGHQ
4A8crpodglEJ3fNkgCqMtLQTMLXKNZmHoTFPAeGl9fX35/fX1/ffHr48/8/L52fFi3YpLaLd
qePfD/rvY1amw5mm5hBIsAhRYnubo7RphrPAKk09YEerStEPlTFEDHUmaEoVWS6rAy+8Wf3q
iO/Z0D3a2wv7g3+g7i+VQU+GY+joBusftFX7qjSC+bZsMufkKUqSPTtWejTtG0OdMvUFHz9X
9iUbTN1m71r2RSWcQpZtuz+AvOpbK2xGfH9+/vL28P768Osz6wCYNXwBk4YHKen6ipGOhMAj
HrzNHrlfGX/+XSI07U9lpSxC8XvaQosaTIDLpjvjHIkkOHTokQ2H4K7TD9ldp06FjnBF0clI
qb16wO8VLoajWZX4PcqxYvlNkKI7clWsBYH3Fnb8GSrcGQtGOxq3qF76ezRZICWMmTAErHKv
ABSFvAHRmegcQltLwwYJYhcka1tlcjT8Iq5Vc789KavWaG8xHIe2rSY+yVqIudgjuXnACRPy
kioWW/av8VLBWLKrVWUBOAZ892SBpS28iHBiY3wXGpWF0zSIJ4BmAWf+kAn99MClWclNXhj3
gPI/ZUFoV2vVcAgm6c649VgQOhlYrP0l4jvBM4Bw7Ab8/OfO2A4OrxTenOaorIWYzkSYO0d1
YHEER5wM5mLWW7Y4Gww4tkrcOCZyY4ou/knT1Y+PBrgpsN3D4wA6JpfTOKaS48BJxz3eQPGX
JkYQFn0Af6Fkk79jp9+CwtCUwT6/fn//+foVMlsh0TpgEPYD+9t3BBAEAsh3ioUlllv87eVf
36/gZQqfy17Zfxbv5+XVaIVMGNe9/spa9/IV0M/OalaoRLc+fXmGqKscvXQdshkudakDnJG8
YDPAA7rzjjpH4cM28AuEZIrgcPfLszEuPivzjBXfv/x4ffluthWC/XI/OvTzWsG5qrf/vLx/
/u0vrAF6lcLmUGTO+t21KdforRqNM1H5UEZ6R44q0pWGdLJ4Cb98ljfIQ2tabZ2Fz8qxqDQz
Uw0sjeuVNL6Xoe5U6/AJwuQukXpxeUEcSJOTynguXHrUiw/NMQ54TmerF7Mf9tdXtkp+Ls3f
Xy13+RnE7fVySI+nXH63oSdL9IOlT0sp7stojgeKng3UMbrJ00HDLTaRpoO57NjM53IHCFAA
TNa2uuoVDPFFOk5U6crRxaXXzSUEHEQqWZaxUOCIhxviABnhNsuSmDtaIJ+bE5VAEhEmMzky
FQP6cq4gd0daVqUZkuCg+QGL32MZZBaMVmWtmblK+NVXGGsBqmv1rWOqU81zPNXJlm0OEoJV
xYwZ6/TRxmZZagHLUHmGAkdr7p/IF+JeXVOA2vOzc/L71h2Z7F07x6YRopNqNl3WPNpDbVgA
H0sUYCdRmhA87Ix9U2nRU6avz5x5yxhlnsdCES4OjSMDSI06/rSaqNFCRtpycJi/MuypTT8s
vWIAyy2OwaRBvgbTZr/dj4a5IoPIGBKY8GnE7xS+vHp6ognwzQCMnWZDP0HZYWLkbbJIIC9Q
iRqZKRScl1UX+4QjtyTZ7mLs236QYJkCJ3TT8kYvNapmltzGkh8nTBSg7JydTYS7n6/vr59f
v6qWwU2nx0qVXkwWYGzOTKxN9ef7CYcmZsvyvq2NzpU5fqJNFQHbQmnOFmLZhcENz2nxsSdo
Yj1ZB+jKFUWHAuWm8yI7amJ/WxioAN1qE/M+xXo7D1NqeV8BmN6wFCMTlnXIHnAI1CwauySx
UnFcf8F9ANQBBxVsll9yRXRXwfKko+oA6ARXfhGiVjOEb0AQjK1XBsfCMMbKxlN9joWO+VIX
Gn9sDjHgURUzQ4x7xxMk4AbSH8xUrJOCWf2oYNpf3j4jp3nR0LanY1XSsLp4gR69NI+C6DYy
VhZntRmzUD/BOYdiy7SGkBf4iXMkjSuxylDua86L4LVmdBcGdOPhZmTskqtaCvlLIGxi6Urm
emR3Z4UddKTL6S7xAqIqWUpaBTvPC01IoEQUnwZyYJgo0kOTSVR69LdbLL77RMA/vuPa1KWl
dRaHEZ6cJqd+nOAoiL7aHVH5nYrtudRyHW/gkcdPK6dINUk0LkeRG6T+u4003xdqAISSZmM/
UEVBfCwpE1PLU/E0GjriLIDbwNo/RcHYvFqRCqep5nC2j4ONwnULoIiOvXxUgmtyi5NtZJHv
wuwWW9RlPozJ7tgV9GaVKAomhW9UbbPRTKVb6db3rAUtg0b98entofz+9v7z9288ZaWMyPj+
89P3N6jn4evL9+eHL2zvvvyA/6oHyAAqGnT3/3/Uix0InClejODgVYcnxugMK3sIf1gXDtPs
CTs6TrmFYLjhFBchr11q9PGgyI7amz9fcqTKILZM5sgTNa1Kk8LCGyv0SFLSkJGgWrZLR5pS
T4sqQFw4wDeWJLAaOqlQ1DNbU4KWegRsgxERedfhvVe+fFibh/uOi2Ckk0hBypyHCaa6STDF
m4bVrtwcA24DUaNOFvwaE7HBFuPbjG1A4fSuwSCYg/62AFAQlfGDsOQ9xW5KSbA/UyOGmnCQ
LoriwQ93m4f/YpLz85X9+W9MM8UE/AKENrxuiWQcLn1Ch3H1M8q4ga0GZBCSEjKmyBYPInDl
GRY3RuLgtG1yw85Bv9FRDHTjcHbphIpHHo7Ooffk3jkFceS+I9nFlSqu7Jyoy82FAZnSoWlI
2TlyznGG+DA4ok6QjJqKtqVfmQhQiTMyDksNBh8vfGb6ltLRUfrC+FJkliWD2ug2s01Vu7L4
MWm7cSx9JmXiptBgOy4XmrpyONi5QgDrch2RFu0EP48BWzRuHGwj8fzqJPlIHM8igGRHLCSy
ceLZRb/dBg4mCwhInRIme+aO5MhAcmz78qMrrQR8Az8Qefcg+6DnOQLGQ91uFFt8jrjA4g3V
eVoUEMVMMxmHFXlhbB67OMOs1VjEogrxNcr4tQKXaoen7tiisSmV75CcdIOetkiCeOahvXGu
IhUcCv1wKwY/9F0WmVOhimR9yT5y1Lj0qsxa6jhYl6JDobvUk4ytXFdYYc4wDWgqJLXSmnxU
3TM1lCZ+s5+J7/ujcTQojDorGzrWcZ2PtwOqVlU/yA7yZii111ry6IgyqpbrM7wDsMxa4xSp
XDutwoU6QLi2QOW7Bv/OKkj7luTGOk83eAbWNKvhVnEYbTY3vD+Za2EM5aFt8B0FleEbSuTq
MSUktaDLMnbpcGYkTkkbzNNGKSOf3DT+mqBGtVqhS3mu0eWQHYuKlnpIdgEaB3zuZzQ+XjMa
n7gFfXGZyk8tK/v+rJvs0GT3Byaua6VopvXGPAyQIjz4hrbBDgUkcp2PZLwnNybpOMyGc/wW
Vz6a64escJeunJ7nUykwFNFUBVWAe2jQc5Obr+N2fUV9roqbtgCL4G7bi4+QZlgbZA4Zmw5M
yRt2B4Cj0WhuULsmESgcXZjHM7mq6XIUVJkE0e2Go2Se26VlPprAD8CeSee48MtD6oLra3jB
3FxFzPN+wWycX7+zfHkOUohaqXbnQ31n5mvSXwo9l3h9qV02rvTk8A6kpycsP4b6IfYV0rTa
Iqur22Z0mPEyXORWNjIsva6inW4cynDpS+REkyTyWVn8LeZEPybJxqWZMCfC3Bms79tNeOfm
E1NY1Phyr596LQED/PY9x4TsC1I1dz7XkEF+bDl/BAgXqmgSJsGdcxc8wXojuBENHMvpckND
B+nV9W3T1vjZ0OhtLxkbVfy/HTxJuPP08zc43Z/h5lLmOifGQzrmuGCoFGxPWotBF+w6CCAn
2Z0dL6PrFM2hbPRX/iPjXDOHx8FTAXYF+/IO39gVDYU4rujAP1btQdeoPVYkvDne0R4rJ8PF
6rwVzehCPzq9K6eGnEGhWGu84mNGtuwQH02jaYUA9MRGeIYZ29d3V02fa33vY29zZ1swEZnJ
HNqVTRxqjcQPdw5hHVBDi++lPvHj3b1GsGVCKDqjPTjv9CiKkppxEZqlAIX7yxR2kJJF8YhX
2VZMiGR/NAaWOp7UGBzMbLJ7og4t2SmrVZjtAi/075XStg77uXOY8TGUv7sz0bSm2tooujJz
mQUC7c73HVIFIDf3jlvaZuyw1VwtVOzAbxTdFquGqAv3p07PaHUkXfdUFw4zBVgeDv/fDPyF
HBqkpjzfacRT03b0STdgumbjrTrgwVWUskNxPA/aaSsgd0rpJSBHGuMzIDYKdfjPDhXq96PU
edGvCvZz7I+lwxgOsBcIP12ivj9Ktdfyo2G4IiDjNXItuJkgRJlhpXLxaKhWLp8R4disSlcA
M0FDbqX7eJU0VcXmw0Wzz3N8xTCmqnP70dHUTNO93LTHp6rEeXFgdpEQctL8k9r+RYo5p4VV
vlg5giV3HQ6nRgH+pePr2/vf316+PD+caTo9P3Cq5+cv0g8FMJM/G/ny6cf780/7WQlci4Rn
nFAeKypqQDEBFp8KQJ6YBObQawG6Kw6EOqxVpUdT4juyri94XFMDeGCdEwdrAXj2xyWbA/pI
8QsTcGV3xE/Cq7hJlF+LZrQWFzmGG476DX9cS347HCMXr6lXWqs+KSpK0ZQh2EkFgqAm8diB
6mmpSUZgr+0I2dn1Ja0jzIZMrXSRMjEkBPJxjqkqTSHonkhVCIabmS4MSUscoYbsVuGDg/7j
U67yVCqKq2yLRtcpXdH7QomtgmxRBQtZyiqHVmGhIuBLeI/oeKUlfmtfr67HvfoGimz81D5/
KAd6Hh2WPeIV1PiicnrPrlFqv2nucPK91NZZWX7/8fu7812de9JpL/MA4H532HRw5H4PEX65
x+A3HSOiBkOUVRNTk6EvbxLD23V+e/75FXJMvkx5z96MZoHJPC3AGtKsTMLBe02NNWlgadYX
TIq6/eJ7wWad5umXbZyYg/ChfcI99gS6uIimGaWKi3G0KbPg8lkTJU/FU9qSXntBmWDsgMVv
IoWgi6IAv090oiT5K0SY1LSQDKcUb+fj4HuOW02j2d6lCfz4Dk0uAyj0cRKtU1ank8MUciYx
XUZxCu7NX9ypashIvPHju0TJxr8zFWLb3OlbnYQBfvZoNOEdmprctmG0u0OU4cfYQtD1foA/
jcw0TXEdHE/PMw3E7wBF5p3PSSn8DtHQXsmV4GYAC9W5ubtImJzY4Uz+0nB2xuGPO8vU18E4
tOfs6Ao9PFPehrtNykjHhOU7a8TlhL9M23Diqeqdpx0/MTU9KwDYCYwpuAVOWPArUfU4VASi
g95rEU04jjUz2m3x0RMU2RPpHKZarchaxfiMMsD6IQgu9Ha7EWK2Cva23R4maZMOgk6vVrlQ
aV7c8yUCYW41HdcEG0lDqhZzMF8oQsWUfIHmmsuEAsfFwJkga9Mee0KdCQ774IRWfejR1zcN
P6phdBfMuWRHZt0OCI6z1STDULTMiyvEq+oR5FDnGVYdVzg7Efr8mMggDNCeX0nfly3mTTaT
1OTA33GwbkDKi7bHvstRKVHDHiw4CO2jc31L569lzn6sNejjsWiOZ4JUnKc7fH5JXWSOQ3n5
8rlP20NP9tgTyrIKaeT5PvJtYKjOegD2GXfrCKbUVmahOrGlwvgGrObu1uM7Yk9LEmPv/2J3
8uDGimQjfnMhmM1NRpTNp6LKDgQo1aZzQR5Jw8QERwjvheyUsh9IuxQSqUGwmiDOVTYiTMbd
2AwoP1sFX4uLOuI8Z2Iw8vm+LjeGZSsHaZbVHELr1IDsVY+DCcJb2xqUQS7ttk1637cggQkJ
tacpCcNEbYkiNnmEXzESqfGSQt/06ecXkaP5H+0DCFCaR4rmXYZ4whkU/OdYJt4mMIHsb91n
ToCzIQmyre8toyjgTNoCNlw1fxbwrMTvZYGuypShzY/05GrWLw3CgNj8Mg0gCqhVoM8ktdEi
0qVrLRKctfqZs7Fs4HjSvQcnyNhQJq1o/pUTpsKnecYX9dn3TjizOhPt68T03ZGKTmxVzHbS
mNQt7LB/+/Tz02fQRlrOTQPPZ7ZoFbD3NkgCskvGbnhStCvCfcQJlH5sQTT7qlU59zo4g8Md
mQPQ0uefL5++2jGj5IFjJxmXiCSIPBQ45kXXgxkQT4BmZI5U6YQHpbZoJpQfR5FHIMF9SYzk
kSj9HngKLA6TSpQJM2hHY9QYLSqiuJHe1cy6aJhwhPovKVRNz99flcRHKraHPLF1MZOgH+Kp
Z3KHCKoSEtoVbNwvjihZ2jRdReB3tJ78evdT/RAkCcYTqERVRx2zX5c58vF2zyNnQCAT60Bu
Xr//HYoyCF+yXP+PeDvIqmAIzOcZnULP+qUAlaVi1vrB4Swo0bTclw67fklRgekq7ow41ZFl
zc3xMDJR+HFJtw4BUBKxVZUWfU4cpvuSiklfcbhekbwRPgzk4LQj0EnvkYGxxz0a+TjW0buU
7AJaQ/cd/p4i0XvK5qS79w1OVTb7qrjdI83gERryz+bloczYWYvb40tqOEI++iGuypqmu3N4
tExLiq1yu1WTD5R+vhurvc6GXkROQ9Z6w3YBj1fi+HwzHhy7oWk/ti7TKfBpx6M5ys/yHKBn
+9jgDuPQXFZackwLk80uvK5ntwB2CXCEKlJWnX0ZdJ2h2ZVOLJntPDPx1F1dAuefV1qaSYDy
6D8yg+TCg3MM96XjUV5cVYoHWC25loqmpQlgh44mEQDwClGK8xYXSURLIOoXHpGK4dOVZhyv
Mq/1MnoziCdOYVycllhwwRqvbQuCaMnPZ3BKNqGPfHk8FFqmyAVhmBioCJhPpLcLScaWl5ay
fcbc4Hm01z0Oug68MRzXQds8OZ7n66sRY20qkv0ReN6klJpWZZZsw/iPaYdOe4jxcTqETZY2
4s0FHKiVRcE4/bUIORddBDl2ujkF/OaZELHhY4JvdixAUwBTr3pCsj9djc8GQ+DSMhQq0bwn
AgNS6Zj1kae7Vy44/kh8pzw7ycvGcJJR8c350g6ojRVQNWpiBQCId2mjPdM3HJVkvZKzAQCX
AaLr9e3tSYdDm+gQhh871YfcxOixgdgmy/SktOw6rZ60U3WCQKwZxUXcFlVm0VrOXH+mA08e
N4eaEq9dQYY8NaqtgqgnfHhbJiActASeAOVKaUggph2aMNuQJxQ9LgF5ZKW050IGhGx08smx
/v3r+8uPr89/sB5BE7PfXn5gXCNfOn0qxFIe+b1oUJNcWb+xUReo+LYBroZsE3pa3JkJ1WVk
F21wgVSn+WOlNV3ZwN1of5mNtA7kufrc9HV1y7oqV5fE6hDqjZWRwEDIdDSWymhV85ohX//1
+vPl/bdvb9qy4Sko03IwhwzAXYbeWjOWqK03vjF/d5bkIYbTsiCksdMDayeD//b69n4n3J34
bOlHDiZuxsf4W9yMv63g63wb4W+LEg0ud2v4sXawwfw4tLQdKpI60h0IZO3IY8mQXVnecG0M
P2O5Bt7dKGFZzjYUnsGRr6WSRtHOPewMH4f4e7JE72Jc9AH0xeEOK3HsqLZEVDjhXGuEZrUd
UZMfmn++vT9/e/gVQomJog//9Y2tu69/Pjx/+/X5Cxi3/UNS/Z3JwJ/Z9vtvs/YMTnLnc7bY
97Q8NDxKBSZiO2kd8SmArDgEnnv6i7q4uKd3ta2t9QqsLquMzD0wT4fu5p6z/hS6J5uWtRGq
UkFKE9BvU5Jxdjt+ZzIVQ/1DHBOfpK2hY+rzsoUnynOAC6p8/rog9iNXj80oarw7bdoO+/PH
j2NrCgAMO5CWMjEDszDi6LKZQtvwxrbvv4nDXXZIWYyaakXwqIZ3pXbUoseqdgEM51TvCa0Y
R6zzAhwk49iYXRM4CPEDQfFW1jDEY3PHaJpJ4M64Q2JFIFU6bPUx1KzeM4jNzWAyrwb6ofzq
oJiG/ZIpBMozdgkMFUMcM81YmzpED9o5hPIjHpNZz47BfjqDozdDJ8nF/dnRh89fX0RUHyRS
Lqspq0rwSzpxoQFtlELFVdd4CycSO9LggpOs2ty0f0E8yU/vrz/ti3/oWMNfP//bZmUhZ6gf
Jck4cdbiMOBR8B+kUTWYtjWOLKIQNv/t+fmB7TR2Xnx5gRiW7BDhX3v7367vgK5MUVLouNOl
duLKfEiCLgy1GbRIHCYiBuGlxtXBBllr+upMxuHWoM5tllyoFR1VIkaebkURWhhcyzSt0APz
uj+zYvqLA9TE/od/QiCWfcg3u/w23mPZLkLDbeCIajaR1LjWbMLnZOfF2PPYRFCzOyGkXqK/
w5pYLdqjxFG23FCV1Uxw8yNP82mYMUONPvTPnyW37TYOPLtB/SnxIn3cAdxmRdUONnw2Zh6p
qX6cSFLyNPSkxIT5iSQ7Fn3/dCmLq92g6qm58XBw9sctn+h50qocwp06Ut7NDWNSOq4emNtF
mqZtoCJsfrIiJxCsHVVWTsujaC5FP6jZoyZUUZ2O8LjhqL2o63Kg6bnHDup5Y3F3fl6FPTps
ylDEB3he6l3fBfi+LCo0OP5EU1xL3jS7cnpu+pIWjhkbyoP8sjx4e3aGv316e/jx8v3z+8+v
mFOKi8RqFFuHDTno73zzaD6eGfeX9uUZ46Vg6Wr5kyWAJwCEOOEylVPkBxNFuzd0d1zjoEeE
nWop+0fTe1qcUU7umVdGn6gjj5DQbuAWzhwnT8dplOvnb68//3z49unHDyaF8K9aL8W83HZz
u4kA09/0fvEXIbUDAlznHc66iRaKkB6uRuZXkVdWLwQvte4q9wP84/mYt5fa80W00Cfo0OsK
Hw48Vtfcagd3CL5g7ApH12kS0+3NqKkumo9+sDWglNQkygO2GNv0bDRIPDWawCea6WpNDr7c
kggXkzn6muW7cIMd+xw9iz/GDI57ac856Ynci0UwV+zq/7vEgvnEynLab/0kMT9ZDsnW7G92
DH3/Zs3BtWwghJyrR1fqx9kmURu/2rhZVufQ5z9+MEbPEI3EoNim9jq66Yw+Ha7jpG3TlgPY
ZaOeiQs6uBmDIaEyqLdeIdcgokEXFvTWQ4rtk2jrLDZ0ZRYkvmfq24xhEkfJPreHzxo8NVyt
gPKQZcQYtjTfelGQ2FA/8SNrNDk8cE5LmrO++/X1YhUEHs3hjrfgMaldHARduNuERhurLtlG
sd3GibFam/JtHJnD02fRECWhNXGW0bo+bZTVlMRWKY7Y+RhXKvCP9Y0XU4HnLPU3nrYGkLme
c4jc20IrukwxW4PLA1KME+NfWlxhKVf0KpLJ0+AE63DkmIgKQRU4bM34xORZGDgc2sUMtTm5
gJU0LjPZIyU8qGiKjaAshWA5+vLy8/13JmyunLjkcOiLAxFpC7QBZaLduVNnF61tKnNVrDmv
/ihuI94I/+//eZF6ofrT27sx+YxWZh4F/5cWO3IWkpwGm50ig+iYJNCcDBWcf3U4+c00jiRy
CwE9CFWLHAukU2pn6ddP//Ns9lMqsJjogrGUMwHVXnRnMPTQ084PHYUdcxqFH7oL48teo9Hd
jhAKTQzUiupWvDoKC02hU4SuWsMxUyP76chEWyUzIlLzQaqIbeLhVW0TH0ckhbdxYfwtsljk
opjFEJ5+rS+oapSuAKWywYEbsiBW+6IidTnDxMB/B6Lb0ag0Fat657j9VLp6iF2+aCoZhOat
yIA6Veh0U6sQpM3f2tg1y5a+gIdrCCqt2LPIYjpuMVgCywoV6Ww/PXdd9WQ3TsDXEtmpZMdr
jasWciIIbVUWyTPIms2OJyWcPM9YJAqo8euPEGW658yWF2ObTlYEWcyT3SYiaukJl10DD32t
mAhgv8TKAa3CE+0U0DBr7eEEAdYammJPRVNPGVZz8uIxsXpHoanK9DHY3m43rKES5fAOM6mO
uRL2Z+4KYxtDbHQ4u2nDGe/nb72Nh3Ve4jCWTSMJfOWQmMaGsfdsFYShjSlpB9ViS4dVl7D2
rww58LjBVnsFkRjH9bpUzScH+2o1hHHkCr85kWQbPw5wza3Sen8TbbcrrciLgedvErRxFNvD
Y3PjOmYXoiPXBXGA+VhPBGzVbPzoZtfKETsPqxRQQbRd7TTQbENswyoUEXzZ6ikgEpXXUhG7
BBkBQMQ3pCpap+EGXRZCIEEDSk2L+EDOh0LcSRsf25eHtsr3JcVCmEwk/RB5Khsxfb4f2EEX
2fBzRn3PC9BRFwLo+qjnu93O5XbUREPsJ+KARprMbwHVEpH9HC+6zbwAynfOIxIyp/n0zphz
zLdD5nLJtxtf4V00uPaysGBq3wuwY1qniLBKAaHsJR2x0w2QFVSI73qVxkf3s0KxC/TTc0EN
rKuOmGQazXqfGUUc4D1gqPWEOpwiQgsfB1RfOeMZY4ik9yE028aBj/b3Vo57Ahm5GiZkOUKY
SdpTArGc10l87y7NntR+dHQu9CWvUFcVtM6Q9cGDWWHdBF8XhH64dT42nBn7i5T9mBmmO07C
jmJR2SaqnMZYciVIeBT4drPyoqrYEVgjJfi1zx28kVbbOiaLpIxOEP5/pa2gT/Wivf1trmgN
9gcME4XbiCIImh1rZNwPVeQnFOkfQwQerbH1eGBcIm6xo1C4/DckAdcXO4L0TETH8hj7DlOw
eRTTmhSYRK4QdMUN60YJbwEm345MU+QKf7gsvMLcUGYlQgluFf2QbdbHiW3A3g8cwWKWjEpN
QVyBjSea6blspZXino7sRSIQWydCf+zWkDtkswlEgJZgnBSyDQER6DpiDRXgHqsKxcZd2BG8
RqdZu0mA4wy2dj8BHnsxMqAc46O3J0fFOI+i0uxw5lEhCf1tuHYRQc4yOPSwdsdxuHMgdGdo
BRGhlzVH7dZuetHUnYcMU9aFHtrC6tYXBzhAsCEcshiN6DbjOxqESYyss7po9oGf1pnJys0E
/ZYdiyGypus4RFdYvcW1LAoBxuIraGRlMWiCQRM0PSDEFLrThmS9DQm292t0bzOuDYWGaA1R
EG7wYWMoh329TrPWcOGIg44JoDbB+h5qhkwofEs6OB0CJWk2sE27PspAs92uMwWMZpt463dC
02W1241U0ny8DeOpJ6eiuXPBwFvhDjvdOmnzbxepDctKhLcPYofMEGzRgzgtqrHbr19haUfG
nsZ3buM97cYQd1ScGYIx2+87ajewbGh37seyox1FOYY+jIJVQYpRxOiJxRCJF6Nrvew7Ghlp
R00SWsWJH27xrRJEXoy/AWg37hZ7ZFAoQniFRS+xKPTwawKut43jeos9VJhhuMDb3uHqBFF0
59Jlt0aCtzjcbHDREdRgsSOs3kzTsbFa36ZdHW/jzbB+JnS3gl3yazfwY7ShH3wvIQgvRIcu
z7MYuRXZ9bXxGM+D9Y/hojDe4rHhJqJzlu881E5BpQgw8e2Wd4WPf/pjFTsDhU99SgfUZnnG
M9EZ4ZYYOEBlQ4YIMf8qBZ/hBVd8UGYRri4YA7XGuBR15m885GJjiMDHuASGiEELj40fBEzf
bOu1NT+RYLyzwKXhDmEX6DBQtpvQkahrxrndUaVkfpDkiSME4kJGt7i9xkzBep9gUnbZkMDb
oWcjw9y56hhJGDgCGS4coSNW3UxwrDNHMMyZpO58b03O4ATIpHN4guzjutt4yGgAHFcEMUzk
Yzr8iQCir2fdGaRRbLIZOk5iLKzcTDH4gY8ulMuQBOh770RwTcLtNjxg7QZU4rvCISw0u79C
E2AGYhoFsiM5HOU8BAZECdN+3Cas2H0zIMoVgYqNHBMLMg62RzzDkk5U6FSYd5q5pcA7d3ov
NHHDyfPVWFSclyWaCbUEQQBjCNGKdH+ioAMZSgjVpvR/whV10R+KBmIYyVdcUJyRp7Gmv3j2
x1yPpRO+3WNNvPYlD6s2Dj1j0NDRnEjzYk/O1TAe2gtrd9GN1xJNlYjR70GHSI9ET+2BUULk
KxEa8C83RrwZk6pqM8ej+lTKagqCn7uGtRQIUtIc+F+rDXT3BSE0eqC9C3XniXT1e5CsjTgS
P0403Ch57vRkZjev4HlJC38MZWXLGM7vz1/BZ+fnNyxKlkgMznuSVUQNhcmYw7kJF/6cqHYQ
sN0JHunrbrWn4gO0zcZ8oBjlsrMZabjxbkhj1dqABP+iNFJZrctsGETyQSrTaIYMXPhbdigc
NDtRdGSnoqppwzJV89ex8CbTmQVRFFtKy9QI4EQxBXma1QQlB4Q1ztwT/p+/f/8Mzlt2Ooxp
je1zK6E1hzFOEX2EBaRibqFCabhV4yNOMM0cqObjNBnPap8kZAiSrWe5QaokELxihMhGWvqE
BXWsMjXwKiB4zF5PfePlUMyOltdz6wLPspjQSGoIJYGxE7x33GDiZnRZWktoLZZPKVrYiRke
2bAYKR+H5igyqCtrB0dXDs0IIA9kKMAfkI4HutL9zA/dRiWcgtsO6K09ljFj7/hoaO/CA7gM
0zLDlUiAZt/pKpxDgorFxn08k/607qxddawuh0Ut4IzYAdahxicyOw6wy0tz2QgyCCHHmZM7
reV0Lm/1haxzBCzgFI80dmS2BfQH0nwcs7p1pYQEmhM70FcGNkm6OnGItgseF6JmfOxh1rFi
FwnjFn1fzj57f9rQCIWqNt4LVOWGZ2iyCS3aZOdtzT3EwYG7ZxzveIlY8JhMyLFDHKoKjgmm
irAcNmnlzeZdyq7oeQQaxxea4VZk5grtiwF7IQaUbVo1QWQkbxOquxdJo/opLK/+Vdu0XMUa
Ri4cNnsJqMBT4iUGSFilmINDi2ztBqHlZhvfjAjCHFFHnm9VBkCXIRgnOD0lbBUHRl3g0DBx
ZezHy+efr89fnz+//3z9/vL57UE4PJRTXhEl38bCAQCJfQtNgfL+ep1auyaLVAU2lCOpwzBi
jBbNxLO+gp3dQrRhAZs51HNIVljVZ7NIR6qaOMSXjsa+FznS3nNrK1SdKFBb42JX/EUs6M7i
OTg88N1bGXrDeot6Iyl48JLBq8a1RzNB4gjqMhPs0L4r6ADpKYNKvsKskB3oDhul4VptvNBm
v1QCyJi5kr6XfeJa+cE2XNuBVR1GocW23IkAykmyMEp2zomY3H30o9J0JlQborjSqgygdOLC
gDazltHNtlKDnfFBqCPfC8y2ANQ5mdcabhSzGrhF7GqSzcqtzNChv86/Aknk3SPZ7bDHZH7y
tsda+KmZXPWE0f3d9DIODGPHb/V5r48AHYDp8q3TdW98VzqFmhKB4W6gAI148dyFpVsuMDWY
mEuEmgtPvgLqRM1AZxSShWJf3iAMclsN5KCoPBYCiAZ5FtFa6blWjeoXGtBkcEWGSoU0hzFl
B9eZs1CBgJfE2MbRaXQhUMHlUbhLUIzcSFXe+mt4Nu3gY4CSGHKmjgkCvONy4le7pIiKSA2I
GS1GI706cVSADoq1l1TUIqfiSH3XKAtvEjmxRenyBdVJ4pXijghxGpGPPhprJIHvORof4HO8
J00URlGEzxHHJgl2yi5EZi6dBSOE1NXCguQShWi7S1rtQi/Chw2es4Otj2kOFiJ2PcahYwWi
1mwYHePatuvd4CQB1gXuEIGuRc7ooGsbYYEUpLi415vDaOJtjLXHlhN1HGOhHKhJkETaNAmU
q43ir+abnaNRSawKcToKZEoXKkJHnaO2oQNliLkmTvfgMLAJ+npnEgV49Vnns1EK0M500caP
HcPbJUm0PuNAEqPLrO4et7sA3V4gJuvvdDrO4dqnE0XrR/gsnjuKo0Z9CwlEJ9hEjvKTAL1e
wz65eWj3u/35YyHsy7HKL+zgi9eXNKdJXK0DJOrYstD0hHYpxDHqSjWRD7teIUwfNp2WPK+g
uFSPlZllexvF2EW0yLBJPPTGkEoGtMv9UF8cZsYL0STkrw4MrQ6QwBudN4uNVVCsai9GmSiG
SgKVqTVQ2wYrBaYwfhyiWxZkwyDEjy0hIQfoPNmStolLHAfBirOUQeSH6LmoCLlI9Rdn8LPe
qQXKpIJIkQsgkzGHA8tpROvn5Mdt6IigxvNgnStaJEDpJOlJ2dAjydurSaa1Yfq+qjxREUxW
qPCwixNZmvcXHtKYFlWRDb/MsZG+vHyaJJj3P3+oWX1k90kN6TCWEdCwIhHgOFxcBJBAYoBM
Hk6KnkAYCgeS5r0LNcU4cuG577A6cXOEH6vLylB8fv2JZBu+lHnBs8pbi6PlPkiVKnzll9SW
GO3KZVCLL8+vm+rl++9/PLz+AHHyzfzqZVMpm3aB6ToHBQ6TXbDJ7rR4moLg/zJ2Zc2NI8n5
3b9CT47dsDcGB3HQEftQBEASLVyDAimoXxhyD2enw93SWNLYO/71rqwCiDoyoX7og/kl6szK
yroyWX4mV56KQ60667KRSr05FNoFB5l8XdQBvCY3WkMi+4rxI4RgvmTif9xGH5r5VfrNB4db
eaMrbi6rnaaxWx8a3RYADe2Ln08gDqpNlBuXb9entyu0gZSD357epVfLq/SF+YtbhP76339c
397vmDrEKcau6Mu6aIRw695LyKJLpvzrP76+P327G85ulUBsIDyBKUiN7lBBsrBR9CLrIKz7
3/1Yh/LHhsFZlOw8bn6mPKbzQrqWFAsGDm9gDibPqSqUcOjDBSmyrjncHWrV+KDcpsGHbyap
MZyVq1xKN8zVpWR2d9oHlupe6MjwkXQhwq1+6XlB8lrJTnlA06vlbQ9dFYssFm00hXvHyrqp
lsEzBYW3xu8ytmTIkkqFLLllBJ30AxmB0rTZjEGsdOOCWEriXNb4jDXD4l9Sf4iPg9rRV2Um
xn5m10UvBnqeYQqZJndPz1++fvv29PoncnNBTUzDwKTXWXW35I9fvr4Inf/lBfwJ/fvd768v
X65vb+A8F9zdfv/6TyMJVejhzE65uSMwATlLNiFm9t3wbbrx7EYQZH+71a2liV5A1O0oQ+mB
5+Zf8y6ktnoVR8bD0MNPGGaGKETfiixwFQYMqXt1DgOPlVkQYldRFNNJ1DTcOLPWQ50mSYRR
w62b07kLEl532M6cYoD4NJfdsBcLw1GfVn6ss5UDzpzfGO3u54zFUWr41zPYl/mbTELMtvBm
1a6xIocYeZM64gHk2NsQZDAbbS0CUOo2/0SevrBaezekPrYwv6G6B4kbMXaI99wzXEBOElul
sShu7ACikRPjUqZOdkcKbBglG6flZjrWGMO5i/yNmxSQI3eMnrvE85ymGx6C1O2C4WG79dzC
ADVGRo6go8c8s7iPYi3hFEhM99tA7mRp8gZi/GRIOSK8ie+qmmwMonRjuLmzJFjL5fp8S9uq
ikydeC2mcaT4TQltEKBOBXQ8ctsRgHCDbZVouLnztQAR6gNhxrdhut0hH96nKeEFb+raI08D
WyEb7XtrS619v34Xmul/rt+vz+93EA/D6cRTl8cbL/SZ3Y0KSEO3H900l/nvJ8Xy5UXwCH0I
R1dotqD4kig4ckepkimoCw15f/f+x7Owea1kwR6BJ0xzd86XFSx+Nb1/fftyFTP78/UFQtdc
v/3upndr9CR0h18dBckWmTSpU82pzoMMRJDbbw1nO4QulRodT9+vr0/im2cxzbjxcScx6oay
gXVr5ZbuWEZmbByz7LVovA1SJ6Djj5sWhmjNDgCGBDvPXeCto5MENfS3GDV0dCRQI2fOb89e
wFy1356D2LWbgBo52QHVnVolFclOVBLhjdDcBBVJQVCd2UtSU5dqP/5euFcUnoTRjLcINQl0
xwA3qnFCc6Oi1UxEYbBCJqKpVgqZKkvA+cw+F3YYtvFqutvYnY0FNQkRuW/PfpiuyvWZx3FA
y3U9bGvPcxpQkkNn9gey72PcnRf6bvEEMHjoA9YF930sm7OHZnNWhXKzOfsr8xnvvdDrstBp
1qZtG8+fITvVqG4rcqmt7JHEh1jsdrJ9zrIaW68ogC5o/ynaNEg78ug+ZrhnFY2BtgQEvCmy
gzMiBD3asb2bYZbhN9EUWgxpcZ+i8wOu/+XUUAmau0idLY4odU0+dp+EmOGTP2wTn5ZpgGNH
GQlq6iWXc1brU69RKFnM/bent9/ImSuH4z7EpII7W+jJ0g2ON7GesZmNMhu60p7nFxPBxqwt
3lMjX3qpOfiPt/eX71//7wpbVdKucDYFJD+EyeoqZ5tfYbBGl1HhKTQ15kMHNG4dOukmPolu
U92phAEWLEpi6ksJEl/WQ2BdWrFRwteLw4aNMYtJuTigkvCJy4U628+Dj1/o1JnGLPCMm2IG
Fnke0TtjtiGxeqzEhxFfQ5OBQLPNhqe6GWqgYPXqHm9cmfCJyuwzT00GaFtJlHiwYbPhZ99I
ST5Or9h41BVDI1dhdH7UkXWaSu8VHtGww4ltPY9sAF4GfoSduOtM5bD1Q2JE9kLzIgdqtz4P
Pb/HH6kaMlv7uS8amfBb5bDuRIU3+BSCqC9dr71d7/Lz7m7/+vL8Lj55m6N9ybuIb+9Pz788
vf5y95e3p3exUPn6fv3r3a8a61Qe2HTlw85Lt5o9PRHBXYFNPHtb758I0Tdm+Ykc+76HuR9Y
YN/+CsbWiO3wSTBNcx76cmxhVf0io5b929379VWsRt8hRLxZaSOrvB+x97xyG3pSzlmQ51Zl
S3P4ymI1abpJAqcqkmyMNXXkc979jf9Iv2RjsDG2wm7EILRKMIS+k//nSvRfiPs9WXBsi09W
NDr6mwDp/yBNXUnxPKz/vWBLJq+kA/toi3remLol9VKr7tBXnqdf7ZpZA32OBOK54P64tb+f
FEPue7a4K0h1Q2gXVeVAiapQVtPwMT5SadF9onB8H23pfVzhzuJJDp+Bi5nSqqIYT0jfQTQf
5mPbD0uLS9PlJtDD3V9+bNTxTtg1VAdLcHQEPkjsnlFER+Sl0KLnMNOAz+0vKrGIT3FLZKnq
Bt/qk6ex4xDjrmKmcam/+JlHXRhZMpiXO+iGeoeTM4ecABmldg51i3TwVC/sfhvAbL/1XIkv
Mp+sKQzcME5cec8DMa1i91Bu8MY3fWMD0A9VkKLO+RbUatiJCHuLiMpOHe2Y+2JCh1PwNkdV
dDbNJyuyDPokRYPbLG0c+Ji6shW4UpbJPKLYwEX2zcvr+293TCwkv355ev7p/uX1+vR8NyzD
7KdMTnj5cCbnECGfgeeNdu3bPgI/JkTJAfXt9t1lYmlnz0bVIR/C0BtRauQMNkVHHawoXPSU
OyfAoPaoiYSd0iiwiqpoF9EuKP28qazWhxx8q6OEJRJLP0LKYwLP15Wcntw2cOwaMQ5TylK+
adzA444oyoxNc+FfPy6NOdgzuN9PaUVppmzCWyDo+XqHlvbdy/O3PycT9KeuqszqWtvXy8Qp
6iymCXJ4LDxyAa2W/kU2X5WZ9wTufn15VTaTma3Q5uF2fPzkCFmzOwbYQfYN3CKfdOhu1A10
Zhq4ob8hnjTfcDJNhToKFvYS8LWZGh08PVRkzQAdrYHIhp2wmUPbrMlZHEeWFV+OQeRF1oCR
S7LAsYtgegid0h/b/sRDamwznrVD4FxeORZV0RSO1Gcv37+/PGuPVP9SNJEXBP5f9ZtUziba
PKd4W6ePeYcf5FCLKVmM4eXl2xuEOBayeP328vvd8/V/VxYUp7p+vNhOGo2LK+4tFZnI4fXp
99/gbS4SVpodMMfJ5wO7sF674TYR5G2wQ3eSN8GWvTkB8odygMCyLf7MPzfDNqlpSNCWDcDl
5E8jq63C16fv17v//OPXX0Wn5PaO4V70SZ2DD+altILWtEO5f9RJi5Dty75+YH1xEavl3Pgq
E3/2ZVX1cGX1uwVkbfcovmIOUNbsUOyq0vyEP3I8LQDQtADQ07q1HpSq7Yvy0FyKRqzwMdc9
c47GJbM9XMTbF31f5Bfdo88ehkZ22pn571h2X5WHo1lcCN8DA6mz7m4JaCgrWdahNH0cud32
2xzhHrnAB61Y9r0dLn5Buxrf7YAPH3dFH1BTn2BgPX4MKyAhtugiREAnYXuZbdMYMzi034FZ
XdR2RQO3ArHDDOgdP5f+SqyvmnMpepQqY1+eSay0Ds50rCpSL0rwEyvoUydcnJEpywvCLTu0
6PDoE0E8FEpBHJ98AGFnyoE6oCUpGWe65ZqiFUOpJHv//pEIaCCwMN+TjXNu27xt8TUdwEMa
E69/YMD0ZV40+N1TKaz39BggE82ExiwbsvkOBR5/C1pW+powVFDNs5P+qhkGQ14Zv8GD72Ec
NpG58JPdIR8I45nVhZC5pq0L6yOwTSknk1AiDkspfM9CFjix95Hnox9s2pB6Z/f05b++ff3H
b+/C1q2yfL6bj8yOAlV3y+H2eYl6Z7spTYNxabAFvx/yQF+aL8jkigBBJidOBGLGvZoRGRUE
A37O2vryUOnxPxaQsyPrGZre5CYLh9I0piHzxH8BV96fGa0Sh1u0rIu3EyRx9S57NWnTb4yW
5VlUNKk6POFdHvsedgag5d1nY9Y0WNrT4348adEpqBB/IKpzLse81iKhV+2h1Wdq+A1RKk6j
mMwbwinVwuPMixhTVp2GwI7lOhXasTfngvH21OhBUKwf4HzD8KTZgEug2iTkNSuag9B3LtSz
h1pMpibxk2jjpWlmyqVsutMg35To7u4E2nIOHhKRXp6KM5XSSPLYI0WnnkcABna00Ns5/3sY
mPnPL6zaKr+wDnXXDOXo2+yytxI9gzcmXkhwz+2KLWjZDNjRhCzz7TmGTZy/RwVjbpqxPzUr
MRuBLRuqy5lVZU75oNS66NP0fGQulV4bFVrWJMJLCn7YnfZ2DTi8x2kyPJhSA44Et8llfjKg
J2g/ZpBEWIiZfKxq284k1UPHzjaJG+7aZcH6klWXkx9HVvwO4O9Oll96s8GFmNSsCUbCt/Jc
rylSplA/pFCXdoOx3E9Two25rC8nT2Ylzssj4XxOwkNZjkQErBssFx546GHJdEpTKgjZBFNx
eyaYcoIP8AMRtkFguyFNCJfYIN7M84mIwBKuS8rdnlQ+4+OhIAIiNdLJT0AcJ0xwTHnrbiZX
mnSdladN+QRlZfCOe7r0OesrttLoB+lonIQr9rj6uUqeFnaZPA2r5GlcTI1EVC0AiYUGYEV2
bENa4ZVixX6gm1TBK22uGPJPH6ZA9/ycBM1RNNwPE7rtFU6L3r5OVzTVMef0aAeQHubClvaT
lV6TDirTkS75zEBncd/2B5+6jSIlp63o3q/GeBNvCnyJqkRnZMRzQ4CbOohofdFl45EIcwEG
T9kNZU5PyX1dhHS1BLqlc5YoEclazVyE9yY5O5csJQMHLPgHKl4uJ1tOD43zGBDP4QF9rPeW
rpVLu2P+N/m4wPByKOWQKWFBbdrbV/9ifdL1hXygeeHl50J3tw4MJ9R/smy+1jI1wLOrnK5V
2B8LmV07m9avw8Zs63ciyhiWZcBtC0OHeZeXWPjvG18N9kSHpC+A7LNQz0ngb+txm4ZRIgzc
7Eiy9gPceZ953BKpnMzYIihXXzRtSY8P5YtZMBPV2mV1HEoPwvzycCz5UJlnxcr45eWhkdvF
gs2RJv6STQ8A4SBp/3q9vn15+na9y7rT7crUdNywsE4Pm5FP/sOWSi7t/EpYVD1Vi5mFsxJr
TYDqn2n9dMvhJBaR2OUOIw+OCJgEQHpwqFgrWJntS2qxNTON2dnplhnru5qjHs0nnrIeZc1O
xpPN1V7TkwDJOJZx4HvT8HGSd1ZLE1l+WtK2nM7Wnuj5YebrWC/0jBDnH2GWvWHlTrKJBLHW
lZmKMSEGadlKzdg3EE+B4Vuqt8+Un2o+XIa2q4qzrU8t9nq4FxZ1duZoWJGJibf7W2pYcwO+
ZlbPPKRHbJ2pJUKFaCxqQSyW2buVeX9hFqVuu6Jf9TygfzGFAECab8WRr5joQdGpZ5r6Vuaq
q170K7v5x7IqmxEfABMmlw1wSFXLsOEkH6EmxmHfHRgxxAKh6+H/XTmf48uVOhKVRZ9GkdW8
mu3Y6XIaygrJCTBh5QY0YkVa1dHEiCVkICOJxCsInZf5YthAfP16t41cjg+4ATDB1JPFG+P9
xqeiUC0sG+KhlMYSEQHeNZaYuEaus2zQcFA3hijUr21q9ChK0Xaossg6u7E4dnkApzvYx7vh
wjPMO/fMkPEwqkKk3xSAJqogNJaqwRHRH2MHnAvHJqg2aJEEECGyOQGTaCJZAryyZrjx0OuO
Gw8VuFXj+aBpNoER/FejJx5BJ+qcEKMRsHFEhtwEkF+FfogXIdzgRQg3W4wObjOcfUMJQQRH
Ii7DzCMt9jV5VyY9lrwwFdfM0YInvhVZdkHIwLI3ljRED+Z1hgBpdEXH2/ww1HZEzJvB0rSX
/j6kLrPPfDenpxe+VnV4sJh6KVI8iYi1EcNKIcHIWxNoyaK/vTKAbUAhYRLSCDWUbzjPHz4q
U7hFZFmVFpXNmtfp1o/BW/bsr20lC7HQ9eMU7TqAknT74cQl+ba0M3KdL42piDIaV+jFSJUn
ABdAAEU9GI2Q34ETd1RoJBb884PyCtlGh0tfibkM0Tb9IJRTCh2P5Qmo6Lt1sYAFvo9MvkDH
s5wewSPZRTHqwVVnSJE5TNHxNp0wVUMHM54DGGTyCx+tkyCvfCGgjNE4MnNJ8soXeoruwuIw
wLtCNOzszFIeapZzZItnRvDmvKF9cQCHcggDvIC9MPF3uS+x5cHEoZbpNoavGTivA3ULHAFi
zEKeAErlCXgTxWjE2ZljYGEwot8KBPXivDCUF86QRcfAeBCZVxkMKF43p4AnidfNacmD3pTW
OCL1yAn7OErQwDkGR4CMGQEIG90+8QQAHJr5iEEz7Nk2TTBgcQO2ClJ9e2MJ/ZVtaZMzGDcf
aNaFFxFbDcSHzcSQZ6O/wVqPhywIkgJDlHlJIBFqeEkfaasGswxega8lprgWqw33UKfRyoHs
zEJcjjNYVkspGFKkucCtm49aCYAQFxZ1Fjy6rs6QUKlvPvo0IgocIdIsvdYhcyfQsYlO0A1f
YSadGhAQWMVbs/0lAypJgKBOGAwGvKTbhEwywZ6L6QwpLpqckd6yZp7PcoNqG3foMxXdYk0i
dLkj3bWvr1pIj+4aQ4zbww07iRUPEQVc44lQhzY6R+ojgiaBAJ1hFLQ23IaOxcIcZOjnVQc3
HkUPwFEOcZ3W5D3/OGs//jDrgLLOTzCMzUKjfsrogHtY6JbgApuA2uw89Kw7IuioR0gAAhxj
6tcNb6d8027mscxdD9CCqLe4+HnZya3VR2FK9EVzGPAAkoKxZ5hpflIpaulNZ4pzMfjv1y/w
GguK42ytAj/bDIV+qCdpWXaS7vdtcn8a7fJL4mWPnTFK2Ly2eiOVvZMQJ94KSPAEB7IkvCuq
e+JURsFD29Fl3JWHXdEI3CwnPHzpH21aKX7ZxLbnrOxt4gmCfxk0Ic6sqh7tmnd9m5f3xSP2
xEAmJR1AWMmL9hhKuHu686KNZyeZPXZ9wakEhTAd2qaHINe3RBcaNMSfOntRc6dxioo1NqWA
sLlWQYoKH+oS+ywqTRTxUNS7srdle987GRyqti/bE1XVY1sNxb3xkaTQ0nAuz6zST9xlLkOc
hlZvisIjg+T+0RL3U1a1hzIziQ+sGvS7hSrj4oG3TZk5VXzsqWuVAJcZywv7m3LA7gUC8ont
ekuYhoeyOdr9eV80vBQaqbXoVSavHtoZWnedDaRpz62ViGiSSe+YqUx0+NHht4tuLGgPAtqf
6l1VdCwPDFEG6LDdeA7x4VgUFXfEXj40qYVoOY1bi97ribc0Cn+UXuxJhr5Qw41OoRQTH2/3
A9GmdQsnt4WliOpTNZSITDZDaRN63S85kNreHiegmVgDIcfFEKM6tysa0UTNYCbWFQOrHpvR
ogrdWWXODDiRL3vsVo3OsLxk+xNPQcggpQc6oa+gz8qMW4Wq2KNY58P40gumkWlV0fWlMC/N
9Hp4EOOOx77NMkb1ppg9VOMbtJqfGquTuJp7FoMJnFeTxeNdUcAbSjvloWC1QxIjQNgNhdU6
oghddbKIfW1rRwjSw3hpbGfeiCsFrFk/fGofzSx0qjMoxZxnqRKhR3lROFI1HIXywm+hKbg/
8UFdNydKdwKb69Lx0MzvFOw/F71ViAeGzH0PZVm3A36RD/CxFGOHyByyMJtlpqgmMRL6/JiD
oUxNEFxocogtd9pZnavomWiItp5+OVZZ1dFWWZ2JtVdgraDmmwmI4SktUrg9hxrHEOwBMZC7
Eg8iPrHnxdm5SzFnsXsR1O715f3lC/gGcB+pQhr3Ozp9qf3R6n2Qhc1mhGuB7Se0BeBShLKp
O22EzdTW8DW5UC+HVtiPI1pMOys7TTvCDMYLDdEes/ICb4LF0kk9Vl6GpRakwySKIVG3FiPE
dZGTj0E9VV1pXpFU3zf/z9mzNDeO8/hXXN9p5tA7eli2vFtzkCXZ1kSvFmVH6YvLnajTrkns
rO3UN9lfvwApyaQEOr176bQBkOIDBAESBFLxqEsBewXqBx7brvxAwVyHjOdNUt8/8JJpCnuV
H27T8L550jf0/VOjNOMEDpKsYF1BuPBgu93iA+qIlf1PLeALURqVfD+INA5FvB7lPRFl4uHw
l70BAwA3G9Z+GYuv95BBxLw5TlbVeHjh6h9QLZgitJoJYnyGliHmfZ33fZvk4cREUGvYZVJ0
qIQN80+rv3xSem0ez5eRf43JEPQNUz77k2llGHySe02skBkBrh3TkCCQe16tLdNY5VTdEctN
c1LdrH4BQ4e+gze+0DRA5cgWylmz990rrkm5ov36+rPer03buknAYtc0b7S+cDHWx2w67AE2
kKdbQRfvNi0Kzqh4iTvyX3bns07Qen6i+SB/vCZfICHwPhjwZqlmlOEfSGGH/c8R71aZFfjg
/Kl+w0gbI3TO9Vk0+v5+Gc3jO1zwWxaMXncfrQvv7uV8HH2vR4e6fqqf/gsqrZWaVvXLG/cl
fcWUW/vDj2NbEvscve6e94dnJdqFzPyB72oeUwE6yvWZzjn3BymjXAvlD/AZCQpfHTcBzliX
nS1/2V2gE6+j5ct7PYp3H/WpC/vI5y7xoINPtZJ+iU9LlG2zNKaf/nPZde9Th80NylLbhRCl
Xcvd03N9+SN43718AUFQ80aMTvV/v+9PtZC8gqTdkTCoyvcuuVZ/vHn9On/RjkCXtqwjKAt8
pZhEjIWob6svLlsJMVVPyjuW4K3UsP+asanmHRTnOf5mkKxV3ZE01YdJNKHOwRucNekvJi9Y
l2vqBlC0ZsPCpTqBcbjMysb0l8FDIdqcPsHfqU9G/RVEaFoO1ngUDJQuWfSWQdSePam9wUNF
2PTQbiPKcvQ2WUTbBaj8/sorlqHaDdjE4c9Gjf/B+6cTk8ApoEtsonnB87P3+5Hde0URZfQ7
Bl4eBKluwlYsLIWkXURVuS56jY0YmsGL+/5HH4BSN6XhNz6AldUvBJoB/rUcs5prG7tioKPA
f2zHoK/6ZKLxhHR54qMJ5ig+2uNRp1mpdgvmJWN38qkGn9pywCTcsuUHHTrmqvBcWq1nHXrL
OBS1ydoE/COA3YLLf36c949gvHBhOTw358JxJcUhSrNc1OWH0abfWNRgt5s5eUTZChS78WKT
zAZNI3p1e8EypLiofMjVBE0csC39nNqEBXINu6Ui7eD31vdJcYko1UxpPsAzqrpSXlkBXwU2
Y2pqIoFgJfTDnBiVPAHlx1v9xRehet9e6n/q0x9BLf0asX/vL48/hxaUqBOTFOaRjexqOLYl
JyL8/9Teb5b3cqlPh92lHiW4YxECWTQjyMF8LpOs/5Zv2BRNjYpSloEAE/G4VD0eEax5XYCa
scx+iSYFXxImrIx8Kl4AmkZoA0hHpGgRiFycBEzk6yQx/DjSz+Ks6KHnBYqvFLeI1T2u+nQZ
Bq1agAfJxJDygp5XmhaZ71egU9uwnJkiwgWC2ZOxQz/3FAT3li7EuWgxvimzqIvgK9pxlfAc
COchYLTN5Vhr0FgRN0bfFp4PgfYf6vAzjZNwR2BoLtc5wY1k5xyfhuXYJUMGc/R94eWDXmHm
cocMs8vRauwW0czcno3HPdZBoEOMWe4Y+gYB1qmqwXlEh5PjrV6BNgGcWMM5zl2HTNPSYtFf
Vv0mHwunosfIqfhg6EcfqSa2trNNcKGPAZAYti7XtZaxA8s1iOEubWdGKXZiMXWhhdRSpe9h
om9dsTL2nZkpO0AJZvSq6RTT+vQHXiA0wS+7leRQweQ5NsMot/2PhenCMueJ3xs/jPIkIruq
X4iYbS5i25zdWE0NTe/ldE/WcTPz+8v+8Pdv5u98ayiW81FzqfZ+eMJdaXiiOvrtetT9+3UX
FFOHqlbS6wd7YD5fAr2hjCtgBd1AgTpeDIqkkT915ze6XUYw/utm0enJ2DKxTU3IOzGJy2GQ
SZEABhMYlscT7NTqnqFwOEY0c3qzXJSuw11xu0koT/vn52Hp5hysv/G1x2O9mEEKLoPtbZWV
w0XQ4FehV5TzkLwTUgjlWy8K7+drDcbzy2gTlQ/aNvTlDEXTnnNyruHjtX+7oAF+Hl3EoF05
NK0vP/aoymDA1R/759FvOLaX3QmM+N8Hm3k3imBHsUgXQE/tK08j/zld7gF7fk4G+1jv+oCu
DD10Uu0o6oOrqN0sScPU90ENiuZRjBP10Tnt7P5+f8NRPOPByPmtrh9/Ku8+aYrueB/+TaO5
J4fiusL4ggbxeQMpmnWjcChJFgnJwzol+L/cW4JUksWGROYFQTPv5LhJlEm58ukJB5k1lig/
qyjzCzzo+oQqyrOIuoYOA88HQzTDk3oGlqV0ls5Rg/uPovR5djMFkPjmeOKa7hDTU68RtPLL
DMQ1CWzjEf7rdHk0/nXtCZIAusxWNPcjXncChrh0IyZWpDUuoZI2mLKiiyMpGBwL/NaCMms7
AgxaJvNAh6DXHW9fsWmPBrrbMmzKQL63xN587nwLma2OlMCE2bcZBa9co+q3i2OYPdUEH2lJ
AqaNXCmTTGnvfYlkMqW04ZZg9ZC4zkTSQVsEqD2TmWFQrQeUOyMVLIkCdCbZl7HFFHeuoTyg
7RDM8e3p7TGJWGxaBmUeqRSWNfxwgyGaVAHcGQ5A7i/Q4XxIzxHGxKaGhuNs8jBSIZno6nUJ
RDI2S5eeCY7Z3gfU9t4SzYMpKOXusIfzr7Z1R0yR75RkOxAxkV9etAgGluTM8IYlFgl/q0q0
vIClQeZPkwgc1xx+CwtaDlVlmIBZfosri42N6dio1gCGNBqvBC7mTSOKsgCWqTtQHTEZoFac
yFEJPq70qGgOxRCxpsFqvr1QgJUsXc5rZTRm/s1eVzwRUv+C55P2+UmmE9aNSLLkt/US3DFN
aogR49xaUijlXGe78JIofhhyoUBrap5oIhVKJFNLkxxcphn/Ao37K/XcmpCAWWP5uUYHF3b3
sOcIdyhxi5gJbdN2nF3emdPSuyVuk7FbUlIe4TYhUxHuEDtlwpKJNbaoKZp/HbvGTSbNHd8g
BAWyNyl6bsQPbkm+PaRfk3xYZ1pWYefzfjx8AaPottKAPrOpHxKSsYT/GWqWsW40yok9+2Tx
Tm31MKh7DMBEWtdP1qjkl4XW5c1vLbM4WEQaN1NQdnUeLoCarxeSW0tXiD2kPqY30NxLNwU1
nwPUNsk2YZOl4RaZPphsQ8DCeIFKICWvGhIwoHNJO5ahXAfmimxnMPX63Jlf66q5NLzWhLeD
sez5sArG4yns5s35oeyfJjBEI+8Y8JC0tYvfPLrrn8Y/9tTtIQb+M/7CW6I8HtN3chjHyWN+
FOH9K/H9VWlO7tT4I0BoUeOZewWPTQxGcyjFhOc/W+SfRg9cZMgmfzrX6gVCHOaDfciYLvh/
M77bebzNFjQ3ySSUV6OE710/9DqxjpSY2fBz65Px8BCT80UVplHxtV8oALuoQdFLA2i8kDa6
EAc2s59pUiXwT/tR+3JHS5OGJX3cxiso1kzjZAbYZDHRRNvknVvQL2s2C/J4CF8+STGUr+Tz
rFque5faHTaNyiLbgsyNvQ2ZTKN7UHWtkEPwTHZNty/INXm90c1kUK7x7ns8Hc/HH5fR6uOt
Pn3ZjJ7f6/OFShOwesjDYqN+oE3M80ktbZ+WRfiguDU2gG3IlLNkkCxhoAliVvKDFBJXuZPO
X4zyZ2zXRCLOLmQRV8AXu7Ksj8nYNkcnqJBAlPNEeaGCDxW2IfWgmmPu5twvnzrGTMI49tKs
6tohc5M4kt6usjKPyfOKhkBlGbYuFp4v9YwSjRiy348lAwt+oHNYnGV361zyN28IMRooyEF5
MPhO0FQiz2ID7exsWropdDOdgiqRceP8MyIWObYmCE+PSvPoVaUyaYGhEo1/hUgTgVgi8gM/
nGoCbPfIZtano+Xz9GNbn34/JBFigFT4qwvOLVF2YYI+I9z4nzYPzH7T1cQrkMgWUQXLJkk0
Z8u8Vctk6y9p4diE5tv4a2oJ3INZm0Kn7lob0n85Pv49Ysf302M91JrhY6wA89jFVCfysgk3
JQGdx0EHvS5ofNLkr6J8m0flQK1pn/VSzehWvBfFsMfIlXbSL1nRw5D79IbqxWVYeNtkrgmw
3XxL56QVwTytpVNf4dBYHzDt5ogjR/nuueYXJSM2jNv4Gamk6PEvcYV5MVTli/r1eKnfTsdH
0qgI8f0JnsGSg00UFpW+vZ6fCdMJg7JKphf+5JpYH5YqEYkFjGepWXLvr4J0QRJkkhLQNlJp
TEvNc47cR0XnhAwsc3i6359qKZfcdVdoqalQ0AMabOrw2AjG8Df2cb7Ur6PsMPJ/7t9+x1uX
x/0PmMarA7vIgff6cnwGMAaklaelzYVHoEUKo9Nx9/R4fNUVJPHCC7rK/7gGvP16PEVfdZV8
Riru+P4jqXQVDHAcGXKv3FG8v9QCO3/fv+ClYDdIwwvaqAxlRwX8yd//AwCUxThWLlcFdj3H
TZ9H5R5fm/TrH+dt/fq+e4Fh1I4zib+yng+mect31f5lf/hHVxGF7a7wfomjJEnGVbxFEX4l
Vk9Ylf71hjb85/J4PLRO+cFQMAjyrRf4PCkLuSAamgXzQEOhTNyGoHmg0y8nHNLgX3s8o8L+
NWSgAJljZ6oEYbmibNuhcpdeCbgDCF12OnXHtMHV0ORl6phkeKeGoCjd2dSW3ko3cJY4jhyJ
qgG3vp4UAlgGvRFVpxiwKbOCuhSO5Ergx3a+XizkxXCFbf05RYrHITq4CDWvvCW74tEfL0vZ
OiGfRSLh3SJacHK1/uaaGzV90dhe/eK/5G2hVFztYtsShq+sOhJLrZjdE2nc+hRNWS3JtfXh
pueJICT642P9Up+Or/VFEWFeUMX2WDpQbQBqbCgOlCMQN4B+GJ954pnkUgPEWPZVEr/Vj4BZ
BtzMb+5jGqrSB57lqnmzPZvO7p14RWBIFwMCMOsB5CA10imm+LIdqNwC5nmDAB2caXB4G9PD
31UsmPV+qt26q/y/7kyRib5dZ75tyYFZk8Sbjh1nAFArQmAvtA+A3LEmEi7gZo7GsBI4Whgl
lQ9TSUk5wEwsuZmsvHNtU43ZA6C55xikftdjWsHIhx0oHzw9cZOzG3YK2B76bD01ZmahXFAA
zJpR/AGIicwe4vc2EoZ4E+BeQc9mlVqzyFUB2xFt6vgm2HOmFh+mIhY7yIEy9GlvxlWlhHPE
pEJVhTVKrmGlb42nSrAxDtKY5xw3o641cU+zJ8q2hHb+hFxdiZ/bYzWOEw/3gjFK8L5hYvT7
3VGl22+m66qdSHJrYs1UWOqtpz0vziLFG2NXUzULuGqQZIHwDpVZMIFxVmov+cQZrtmHMViF
jgpLYENvR106ZpyYg0727dhqgG+Z/BZDyyzP03SDpvgk8TmKmyJkvhcrr6CHJRq1/u0FlDM1
hFLijy1HKXylEirX7m33CA07gCr2+bIzm4RxrT38aWHxjZ/1K38rIi6ZFF3PK2MPNtBVI5Cp
Bcwpwm/ZNQZAt3uEE9fo/+5vW77PXJOWfJH3VfvMEQy+qUFHq/MD27i+TVeg2mi/HDt8RXcl
wHg2BcbzYMucdMpnOVPDbm++uX3H3nZe+gMurvn2T+01H3BWkyFGDbfV7IpCu2muk2h0q+7I
r/PJ+mVmTlhTBWsmSbhQATHzk0hhjzZCQB8nzF2Wt1/qenG1XAbI3vatNoHGNbMrLiQbtgYO
34mlR68Ox5AzLcJvW9VgADIeU8YGIJyZhb60csgrDpWjOgFg4k7U37OJ2g0fL0w8hf+DPCu1
GVQCNh5r7l6SiWWTzi2wWzimFPgbf7uWsjPBtjGeWpTaAHIW2uI4ctR7IWLbZrdXordGveOb
p/fX14/Geu3zjYITjtn4fLc+PH6M2Mfh8rM+7/8H3dSDgP2Rx3GXOomf8vEzsN3lePoj2J8v
p/33d7yblb9xk064vvzcnesvMZDVT6P4eHwb/Qbf+X30o2vHWWqHXPf/teQ1AfXNHir8/Pxx
Op4fj281zE+78DpJujSVFMv8d1+yLiqPWaD8aGSeJDGWD0UGWjbFTPnaNuRQpQ2AXJ2iGlIn
5yhCJY/KpW0ZBsVZw/4LMVnvXi4/JWHUQk+XUSEewR32F2W4vEU4Vhxs8HDAMGWbqIFYisCk
6pSQcjNEI95f90/7y8dwwrzEsmV1JliVamDaVYBqKvUsBzCWoTGPVmtMbqz66K9KNoiq06HW
FhmWNoKtVDYV4LelzMmgZ2KFw9K64KOS13p3fj/VrzVoPO8wUgqrRj1Wjcx+PPxFlTFXCbHe
QnrWWVJNFDV8s438ZGxN5KIytMelgAH2nXD2VQ5JZATB1zFLJgGrdPBbZbaRrYjNG0MmnpPw
xN5D/vHzCDPsyrvLX8AGtspFXrCugIkp9cSLbYWL4DdGmpYAecBmtjySHDKTJ89jU9tSPzlf
mdO+BSmhyAMJP4FaZC9QBKhvGQFik3l3fHx+6ChFJxM5L80yt7zcUA0WAYPuGgaZzrDVOFhs
zQwlXZKCkb1tOcS0FCNXPriIdbHkGoK8yCSG+ot5mG5UvgspDOVlYdsS8b5TtjsLR/aTizcw
zWM5Th2ItjFmZu5ZlAijkiikmWcqMfSzvAS2kD6RQ1stQ4WxyDTlZuHvsXr6YNtKJOJyu95E
zHIIkLqgSp/ZY1OJEc1BGq/ydqBKmCCHdNnmGFexsBE0JT3qATN25PwUa+aYrqVErdj4adzP
fa2gZKfJTZjEE6NnKnAYGY5/E4OlLY3bN5gOGH3lwb8qNISnyu75UF/E4Q0hTu6aqNvyb/kc
8s6YzeQTj+YgMPGWKQnsqx4AA9FEiwVpEWDRsMySsAwLjf6R+LZjybHwG/nKv0rrGm2D+uiW
M8DqdtyxrUX0QvM3yCKxFY1BhatlHrzEW3nwhzm2so+S0yIm7BpBoHfE0MtTqRA22/Djy/6g
m2vZMEz9OEq74daILnEevi2ychA3VtrGiE/yxrRvIUdfRufL7vAEpsGhVjvEwzUV67yUrFR5
BvFZEGXA0lU32+YBlDXuar87PL+/wP/fjuc9qvrSiFC9beIXigsnfApLh1v4lQ8o2vvb8QJb
+/565i/bmRYpagJm4msExXAbq9siGm6GSfluI0bIqatQy2NUacn+aJpJdgEG+6JGU0jymWn0
w1Npahalhb11qs+o9BACaZ4bEyNZKppFkluk+hDEK5CWCvsGOahCn4obbVTrXB72yM/Nxji4
jnsem6ajSf0BSBB2iiaQMEdzYAsIezoQWbxlNLS3GTpjua2r3DImEvpb7oEiNRkAOvnc2q/9
mbgqnweMSnYeHvUMkc2cHv/Zv6JpgGvjaX8Wx43EouMakybYQRR4Bb+k325Ufp+bFnnIkUep
wizFIphOx+SLAlYsekkrqplNPlIChKOIeCipvGrD3dym9etN7NixUQ0H+ubwNG445+MLvuLX
HfBKPjc3KYUArl/f8MRDXWfUcijDJKdYNK5mxkRVuARM8zypTEDfpg7OOEK5nC9BuBu0ccpR
VkDKFKpP15JpSXu5b5JwO9ekBcjvh1466J79+HP/RoRWLb6i79n1ftmLt4vIl58IDAp3ZXMM
CSf8eK+yLcMEE2XuR5Ymyp84i8YnxT6dCw9kQ1iqzi6S6xbi5oWfsHLe3FFoqxBb3/Jees3C
4Zidqg34IJb66mHE3r+fudfJdXDaPPRKTCsJuE0iMF4DBc2DeS0TtczcT7Z3WerxeGIcJYfU
hoqaZzfbMiuK3j07QdV8kayBRaCB0O7fCpkXbygndqTBTONRUrnJVzV6rOhxFcZSvxVkXnlb
y00THvCs38AOiWOgb1/uezxmmKZtiZfnqywNt0mQTJTTEcRmfhhneJZeBKHkvI0o7mgngrH1
WyahImoXRJom7DhvvPpNHqfLMo1+rYL5uCtqlsxpZ1WVLhyEpWpFrcKeUnGMOgjjRSpNc1W7
mvdjQEqYOO+uRPL6hE8muSh/FUeDVH7tW2TSYvW08X3HAxnlHZ5Ox/2TpDmlQZFFgTyuDWg7
j9IAFP0o1919iqo6tUoORt++5Zd/Cs38fyt7kuU4ch3v7ysUOs1EuLutsiTLBx9YmcwqunJT
LlWSLhmyXG0r2pYcWua15+sHAJOZXMDqN4duuQAkd2IhQcBiE+jh3taDRCfRwvsW7KI5GMB6
d/TydHtHykP4VKLtOJfOMeP52g0CoWGRWZrQFFuO+85LkeOjYfXagSlMZR1fGPMOzRyXhv2d
TjZrN0jk6Epc4zzFg7pSKvRi1RjyZMstZ6JaNiq1w1OOX2SNlDcywI4X5DWafUnV17ltjVF5
jVwp+6Kxyng4AdMsd24gRtiQRR4jTgQi4z2wJ4JSVSZOHQjUoXwX2B/+F7ForlnLwzvJxQ2l
MHQwLFc0ML6pzvlNY/xAka7ef1gItrwrz88PIeioHzHymdiNrarY5Iu5Kpz3QgjQfDvpmtxf
ww38u5QJJ0YTTMrh2OWTyZ6UTlSirIMaepGm7Bue2Wu/AwYKPNgNRlpUdgxP/KUFTFp40CSV
Ww/UlqlzaeR6q+rrxHuMbUPiwDI100QkaznsqiY1gWrsZ2gCbRGwQ7IWvY9a1pERcKrCrKau
4+piYB0UAfMOMHP7RwAIplbBUklyKxzMiGpl0jc6ps+MOfVLOcVwOkMGqjzWHtBGKjj1KrC7
cBoN8ELITY9B6elprXV2vUwX7i9dyFwp1FcsaditA26pYHAB40gUAwTSZONqtCMG3yNgzB1e
VbBKHa5E13Gz98lUOn31yR6ryBfhjCDUdNQpijK/YIRMXq5fUf0sapW1kUVUJRpl8eERMlQL
V4uZENgOvh5NQo0HXbHd5BU35TaVPUvLzp83A+FW3ISjOSVOsvJX3kTT9CUokbDIrofYA25N
660wDRQtTH7HVN3IbNiCPZLZUXdVPg7pvE4XwdIgEA4kPy3jF3qtBd/FllVAZRZXnEgPXmTZ
6GIo0JoqPwFL59N9mdpAINDJkrLDWRpkflNxwFOucwBec2zf4G/aLuW/q5qcE7Y3YLOEU4AB
KDl5F+Nw+KrKnlYDGZb4Zm2o7If/+A4d3+dtdLgxI2FAhUbXxWsfbzcKLMTmug6PyGcKXHJs
3Las1VEOrAAEPkBpQBA+MRNhgIQRddlXnbBpCYAvv+nlFMlwdKvljDfMoTDS70RTer3ViJho
0NgOFEznm6zohi132qcxlryiApLOmkRMDpK1rsDTMAeUkfyzAElvu2iNT8AdrglzkotrDZv5
4QTF5GqqgS00wB+edzK0It+Ja2halecVl2jT+gZtMucRooUrcVVd+UkbOMpCwoBVtbMKRn/R
u297S9uByc+mVBB2l0eELyKmBWrEtbWeteIUlyqGYg3Cr1o1gs9CYqjiUTwMRbVEXjZgihpO
R0Ua3J7OTM7QAxVYRJG2Tg60NJp6ZNPfwMr9I92mpFgGeqVqqw/n528dgfKpypW0BNKNCnJC
pFnA1U3lfIX6iqZq/8hE94e8wv+XHd+kjMSWxdZa+M7jrtssKtsAYeJ3YsLcWoDhePru/cxW
/fI1xHyjKnze2UL/j19f/rw4npZk52kPBPAEOsGanROE5VCf9bHM8/71y+PRn9xYkN7odp1A
G9/mtpF4/mmzJQLiOGByItVVTVAcGDt52khO/OqPMUEXpqDCbWTbahvZlPageGctXVG7jSfA
P6gXmibQg+e7gH4FsmHJzn4hi2xMFOuELsA/hgvPlkOmtqKJLWRmWixrWbU6aJCOusM1BVgV
WGsbm8paKP5iQrm78H47T8k1JKLqE9K5+kBIuxN8OABNPvA3Gk1VdUgR/RKlVy5XIrkG+c/2
fCTCxSFzJHI7ZvJ09WltPSe36+B8KoDd4dsaUE4qKwUaKjn+TxwKp0I/CHrbl02d+L+HVess
jxF6gCHLes0zoUQ54l0ZmWXNMAEFSl4QrqRJm1F1wmsg1U6KzVDvMP8bH/eKqPoaEy1HGjOp
+jaMtqEH8xjaDPObrg2stC9qTArc+tipQR6i3ZUzwu3AKEDZg51UeHtXxM3RDzU/KWVur8O8
NSz/4/H98+PFxdmH306ssLJIYOTHAPKDL3Amef/uvbOIHdx7zmndIbk4e+s2zsIsohjn9t7D
8THbXKJz/jDSI+K0YY9kEe37BevM5pFYTl0e5izW9/PzeN/PWQ9Bm+TDu/NIlR/cqPveV9xN
vUty+iHW4venfotBr8J1N/BhbpyvTxYRd1WfKjZZFDjNbZqp/oQHL2LNjU2owZ/6A2gQsV1g
8MGUGkRs9xn8h0jH3sUKPOFyNTkEZ+762FTqYmjcagjW+50tRAIyFGzx6HQhRSIxT0ykEZoA
DN/ezrk7YZpKdDobaVjsdaPy/GDBKyFzlbg9IThYwht/vBChEkw+xonkiaLsVRc2lEZBuXnL
DK7rm40XxtGi6LvM8WBJczaNYqkSnZNxNkw0aCirphC5utHJrE1kRe4SrRp2l7a+7hy/63dh
+7vXJ/SFCXKijoJvqh1/g3l9iQHhhkCYzSq3Tp8KE4xfNKpc8YKsw3TNMqViubNtfZIzEtg6
OShm66GCaqj7fhN1rEqVaCR3IzOe62EEwJb8KrpGJZZByB3DG1hEKE9ljmrxYaJ/CHE/0dWC
vRmlIGZgxaWylDp4P546kLaVCM/+Ccg4mxI0VDzVaqu+seOn0pF5Ql9ixqu1zGs7nAOLpjZ/
PP7j+fP9wx+vz/snzAD527f995/7p2Omi20RC1YykXRVUV3zNwsTjahrAa3gLaqJKq9EWiue
c01E6CZ8mKIVGfriRJJYW7WBsl6BQpi3/KHLTAkrAakjt+DByfwEHFq1KgXe3x36lNJZODaI
iqVNKMQwKuuUYKGZNukSzCb2E7nleJc5bpj3mrDz77TFx+Pvtw9f8DHgG/zfl8d/P7z5dfvj
Fn7dfvl5//Dm+fbPPRR4/+UNJiz4ihzqzeeffx5rprXZPz3svx99u336sif3x5l56dvg/Y/H
p19H9w/3+K7n/n9vx3eIRuNOKNs0Hl4OaCNTWmeTFOTXQSpKFG8dCAMINkKyAbZTSneSJhTs
TFM6P+wuKVbBzqfCnC16n7tJXDwKdCtwCeY7bH5gDDo+rtNLYV9cmMqvYLXQWb5tLCEHr4zD
SfL06+fL49EdZt59fDrSTMGaFCKG7q1ErfwyRvAihEuRssCQtN0kql7bLMxDhJ+snUi0FjAk
bey7ihnGEk62WdDwaEtErPGbug6pARiWgFdMISkoMWLFlDvCHdNnRPX8Dbz74XQOom+m/eJX
2cnioujzAFH2OQ8Mm17TX+skQoPpD7Mo+m4NSkVATplJgiWhiil9Yf36+fv93W9/7X8d3dES
/vp0+/PbL9u9xExty3mXjMg0XEkySRgYS5i2Imi5TBoEB20v3Fd746j0zVYuzs5OHOtR+6+9
vnzDZwF3ty/7L0fygXqJjyj+ff/y7Ug8Pz/e3RMqvX25DTZskhTh7DKwZA0qo1i8rav8mh6z
hbt2pTBhQdDPVl6qLdP7tQCOtzUeQEt6Wo76xnPYxmXCrOMk43w1DdK9O56g7IGYadEyaGXe
7AJYlS2ZtbxMmFm7OlQfaLt+YkYzlCkYJl3P6x2mtW2rtsFaWGMatsggFiLcPetChGv4ih/v
bSHCbO/p/df980tYWZO8W7CTRogw7CNDFS5BhMJQ5xzjubpiuf0yFxu5CCdMw0PGBnV0J29T
lYWbgi0/uh2K9JSBMXQKNgJ5Noez0xSp89DbbKi1OOGAi7PzkJusxdkJI0zX4l1YRPEuJMQ7
6GW1YqZyV0PJ4W3p/c9vbqhawx7CwQbY4DqCWohSHQgOOs1itYsmXDAzKjCstTrA2hOBFrF3
DG/hzrh1DPBIeORRXrCRv0dkpkVfjMeGsyCbGizyGHxoW7kYzi6Y6S9OmcaDkeuPGksQGxSD
1jXqaX/88RMfQLmKuhmKLNdXXn5D8htOVR6RF6eLkB/fcP2JOc2M6NFnRj8MArvl8cdR+frj
8/7JRDIxUU68RVhitu26KTkHDdO1ZkmBv/pgjAgzstdgbRBOHJoBIkm6ULFDRAD8pNA8kfhu
pb4OsDqBIKOVGwSvKE/YSfP2Z2OiaMrVQSRsl23NDMREgyr/od00EcqStNJq2Va57Nj7mFnN
J6dGz375fv/56RZsqKfH15f7B0ZO5mrJMiuCN8lpuCYBMYoT80aHW6MzVbzRSKSZgFVSjIRR
HAjJaoohXSpbtitGooE6jEF9Tw6RHGrkJBm5SgJtkiOaRJrfzfWOXSuivS4KiceBdJKIOd9D
8YSxQv4kXfmZUvw+33990K/g7r7t7/4Cq3leEfpmHKcNUyW004modYrmU9Cyw399PD62/E7+
g1pNkUtViuZau49lZvHm0VXbCJWeD/Xl3CYDGZZgLwEHaqzECrkqpWiApFw575SE5623VCD3
MZ+IdaBo3p+BSlAm9fWQNfR6yTY+bZJclhFsKbuh75R942lQmSpT+F8DI7l0D72SqkkVH3UJ
hqqQYGQWS2gws+j1SbPIw+owy4txO/dQHpgcTPA8KUNlYXzBoOzeEQV6FsAqBNlRjm/9HUaS
gLkFrNoBnZy7FKP6+cOGqa4f3K9c9Rj1YnOP4LIFwuQqkctr7om7Q+CJVsKIZie6SNogooBp
imHPuXusBFmo3XTr5TZs+slwmAku5l++kk9HoyEXguWdVoU9JhMKlIrJWXeuGKH4WMeH3yAb
AiGSOx47N5p9elDQZeaSHahVsgU/ZalPWWrUYBhyAnP0VzcItqdTQzBBDTtbI5re9dWcKjUS
KHF+yhQrGt5WndHdGrbnIZq2hg0Ur3iZfGLqjdybzUMyrG7sN8YWYgmIBYvJbwrBIq5uWPCo
Xnr8w77PGVHkLbwVufHrncRWWyUKmMVWwkg1duYzZDjAiOxngxpE+cEcBoXw1G54KWU6tBQL
egBevHKf/SEU9amDid+whlmKcJdxq1x31NqwdY/PHzCTGJ2JOxiwaO02p5c2T86rpd1C/H3o
crTMPa+h/GbohGXpq+YSlRCriqJWTqLnVBXOb3zhiW/wQHzZD6uTdoESzRGQdItn5nqbtlW4
Alayw4yBVZYK5hU3fjPYXNxBdCTRbKf6Cs08P6k1QS/+tkUIgfDSA4ZO2veixkUy2eyEnWuJ
QKmsq86DaV0GxC6GeJ/SzbXA8L13Wnps2LmyQl14Cox7EWQUL4L+fLp/ePlLR3f4sX/+Gt5t
k3K0oVGylBgNRPct50AcZHBFLw5WOag0+XR6/z5Kcdmji/HptGx07rywhIkC79dM/Tpx4LzG
rkuBSco93zUHrGOvWkplsaxAJA+yaYDKwmhq+A9Us2XVapN6HOHoqE32+f33/W8v9z9GnfOZ
SO80/CkcY13XaEEFMHTU7xPpvEWxsC0oRzxnnkjSnWiyoauqnE6CrUsVrkCi5qO2+lScI08t
1jjDyCSpacOSdOuZ2aRLTCOvat51v4FZoEccH0/eLk7/Za37Gtg3vuIuHEeGBsxZslNF5PJ4
DQSYRkGVsNVYx0jdq1a/PEKX3kJ0iaX6+Bhq3lCV+XU4glnVJHLI+lJ/InKFgb4W3PG57mpd
kayyS9oCqyzxWS376t+uR3uEYiaMurcX6H+8BP9l524aWUS6//z69SveaaqH55enVwzyaC3W
QqwU+ZY3liFkAaf7VH1+8PHt3ycclY4QwpcwRg9p0YMGE9UeH3udb5mBN1603hyHZHjdRpQF
vhOOj7ApcLyvtqURMfgNrGS7HfibKW0yZ/plK8b3gWDtD45PLOHswjRx17BLYLxv1zRLTN5k
mz42kpScgIT/8J+/aNcq68JWpmobXMV7JH0J+xSYzzKWXpeoxiczeBhygAokAD/DGi3LyG3O
2D/ckQUff4WdodkNC725iCTmarRJ8HvUVpUJaePlPDu4xdz1p73mw4WOTw6Cs5bRW2Eq15Lf
KE7lVYcR4KsyLA7xpFeyrBy+rXalLeMJBkyrrfxndnN5+GI1uq+aKhX44M6xFadNoml2V2HB
O+4R5XS60KEHuv2RhnDJ47xy9aJj/d/yfmmInJEjROzxGa2EcQrBnMiBRYedMZgD7dKKYe+n
EjZNSNZocxCNLNPpyTk/nttiqFcdsWNPwdgWYeOAGi8go36LE1XD8TurRjDbV21YY9gWv7mq
6XpbOBwE61RS5NPjo0bRiJKUERkbtLnQdOSUAq3DayugtUhHyevp5X6BM9WBEVyr1Roaf3gN
0RTj28kMZFFYpYOOi4qNQM4UniHbWEwV5czXiEU3TTQ6ymrmjGnqnoJYUjFzc8tPv2c5meno
VNorMuLUaohEUedyMudBJ3zrUQC3N1v44+LszP++o3MDYt2klbQf3wYtmeNCsPZUwFuDOVh7
qbH1dT3SH1WPP5/fHGGo/defWgdb3z58te0rGNMEfdEq52W3A8a4Hr11P6CRZPH2Vnpy9Cnr
6ykTkKXAVlkXIqdeoEmFuYoKm5DqYCYmTjy20hpf9Kn16mUZBqKGNYbe6kS7sTex1iQn1NTn
04u3XPtnwn9uvkc7tX4k3F2Cmg/KflpZpiStI90jN3zLoanWzuOghX95RdWbkdGamXtmqwa6
RiHBSPDYygVXtr9GceA2UtZeOm1944HuQLNK8l/PP+8f0EUIevPj9WX/9x7+sX+5+/333/97
bjMFI6CyV3Qi4Z+X1A1wJS72gEY0YqeLKGFIFXvvS2jsrM/V8Tyu7+SVDGSLldnXFRE8+W6n
MSDQqx35Y/s17VrnuaaGUsO8szjyYZZ1AMBD+/bjyZkPJkO8HbHnPlbL9Y5eOmqSD4dI6PRI
050GFakm6XPRDGBL9aa0hb88RuqoOMcU6mie5VIycm+cZX2DPR5NcUydBg6YAPphD+MFitlu
01TM9wizvpVkzmf8sdf/YxVP+5mGD7i3p6m48KEsVNhpg+WUM5wbKsP+jE4N0G25L1spU9jc
+vLkgIaw0ZItIlv+0sbEl9uX2yO0Iu7wljM4VqIbUl8vGoG+IOO2oUbptyKyscPmkF48kDaf
VBRfS7k+1Aeb6VeeNDAmZae83APalSTpWdtGs5LEcgnhVxeQDJTpjIF7X8wHS4DDyDvzd9x9
JxChgklHS5N0Wpw4FYwLwQLJSzv4kgmP63TS41SXo0bZzGc9DoEODgN2HgZAj1wTQjvXIP1y
rTZ20oRf5XYqoMvkuqssjkaOIfPSDll+WdW6s5bqQYrhdBx2GLtqRL3macwZbuYNJoMcdqpb
492Cr55yZGMEFDzI9slHsoKiyUF5eCvukWCABZp3pKSDPL+QZPxQl+IzmMSVVXS076e7pZys
RO9ciuDU4Wy30I0kHLS6kbKA/dhc8o0LyhsB3Dt8PRARd4Bqq1I5VOtEnbz7cEo3WWiI8c94
SJnnGKZl/1H0TTWevbmH3vr52UgT8Ii/L845HuGx8mDRhqw+pJGiya/NpQOGy51vfy/Oh/GC
gFTLvua/ipSVLleRDyiU4FXqegfLTKHtTK/tD0gNDIqR96zLGy1KDNcY2cLYH7xvxcir4Y0+
pn/DK5fh7dWF8zraQkjeuWyi6OnPYRo8cT3QP30FhEo8f66T1PFoT7oEdN9jDu9p8uPXoHpw
6GzYZcE1GZCoI0Xr7cudjmcbnvqP7N9dv/adXbd/fkGVBk2K5PF/9k+3X62cFGS9ziJNG7Pj
sZdlhk82rk8qr7SN7cs/jSX2FlHnjE6Al2eUn2MM3mbFTi54Iid6VUY8Ml4iV7PsgAtEyzaM
ywgWv31OQLJ/ijs3noK0okyq7cgu7KAhDTB2vELutCFjXFSnGvJN2vE6nrYm0ZWtjQXNIpJC
lXiLxW95ovC/t3Gp2p47EQc2wLWXsrUjFbIlL2dJD3siTtcs0cniAJ68I6q8KlADiFE5Hhtx
slo2qMdEdqg2U85PWQ8tGo21vIpyTz2U+oZdP9KNvMce6dqk5hkZEWyAoquu4gTa7TA2bePd
v9/+vo+8piXsFd3exPHcQaFL0aAt2UXvafQYxuLPEFal/JNZvdo33HGn6TCegPkd3hax2wk9
HqiU4nNtK8kIlVZnQVHkOkqX08A82DaST+QS76w5Txy3tEw1BZh0B8ZJx9/i95bqgHHlqeay
kW2jn5lHjieNTkR1sOxdu9GyCMsz1cMlRYpo9zu72W18b+oJicv3cd+wx77e3imqA6vcuQ04
wDZlkQjYZgfbggcXkQkwhfgEziJAZoVXXrZuTQjQEObYj8ZfFUpzNaoZ4L8s5oV+8PxYe/P8
H5sAR3LZQgIA

--DocE+STaALJfprDB--
