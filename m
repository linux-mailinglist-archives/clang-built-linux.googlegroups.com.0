Return-Path: <clang-built-linux+bncBD26TVH6RINBBKURY76QKGQEVJ6WUOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E5B2B3ACD
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 01:32:44 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id 204sf7514730oid.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 16:32:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605486763; cv=pass;
        d=google.com; s=arc-20160816;
        b=s7XF+j3b4XqzexmlTf8Cc5fKV71vNpDHI9+kp9OuKs6Nkx8X3H0cJBUpzVCOUDjB69
         ZnMgpVXAGHq+2Yj7oAK/9gp6bveXkHvhq9Yhr9/A1HWx7Fqs5XYNgEUqEcDufPA4xBtX
         4O7B00T5Nt++liwPc/DBHAqkGW2+eWyK6303XnoJsFJgq1HAm+sPodEa7i7st64GY0V0
         zVxTUkEDdVrPyIrBjIbzw8+mzMRdlNOdC3fcFATJPAElXFdo+aQwM3rlN6jOElBPD2Wv
         FzGNRDpOtRZr87xgbk3lMj5NnVnI29c17hkBuuhaJjJPjw3xXtW+k7OWKiiaFyGMqqLo
         ESQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=c0cFXAi93R9M2nA8XgI9WN2o/CEYRILRMn9XOqG+vhg=;
        b=lDSWK94Rvy1hyHe1WuXSzeHv6sflhXucrP2/xRN8AF6wOAk4S+F1thFO8OeYBOgjJ7
         ao8EQbPk575plrRkDEzwyLlch0oQog5OXQLnY5kxXuWNSLtEbGm1W2o5wNCKT59sc/5h
         U6XZFdSQrREO83S/+wYQL/HFu5+tofMUDVgUf9cYXdwilIDIzRLMlkJaPXUmiGO7v/48
         xL+OkOXl7HMpNnSfT9HR43gxrlC6ZRAq7KCZgLsUG7BMQ539c3+rQ1XMJ+rOJYddwiIL
         B+5QWrcZ2YsezpHWZB2Z00Xs2s0NjqfHEBFvH6OfAX1ZdaZUry2wCUSSit9tVuTjIR3f
         FaPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c0cFXAi93R9M2nA8XgI9WN2o/CEYRILRMn9XOqG+vhg=;
        b=oZy18FJArDZARPBxg9cQSkdelq3+CUCMXW5Jkgmy9/p/cGz4Vz+rHee/hkDZRo3EvZ
         6DBOUP+bokcl3D1mVgw8WOleAdIYPRD2528Ra4NqVKrjjJP+5aUAqh99/DF3tHU/WYD4
         o5lslpMQDTGzUM70n/pmwUYsfPTrBJFQHj+bkVNfEdiDMHWDHqJjFjj+wxaNtfYPQObP
         tf+YtYbkCQFNk1yFTMxtgHVgiaLb94FK7n2AK7EvtD96RvMju/M1ukszfLdpbvYJ13tl
         ynfs83reUEvsrTDjVCL0Y01Ngh9bA4AgOKd9xP8r25IgESNuZS1a/wt9lXyDgUTAErfq
         jOTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c0cFXAi93R9M2nA8XgI9WN2o/CEYRILRMn9XOqG+vhg=;
        b=jyyiq/ypSuvO0OduW3sZ1kd1/o95zdcLUNLDyttbqWa0jWbiK3gKlpmmwf8X0+HAKZ
         yv8Aylun7hz+zT8E5/H533/VaCASpW/qdFXUdADd8aonofJL/+K6HGI1OE529xwbtdDH
         +3VlbQwvEw7zjfFSSfLnGoQ93j2V72BpSREoQDw609GNjapigUqoP2jqixxHR/FfamwS
         WxyQNoBC7KvchqhKjZ/p41icJZBsIOWhzBhn0uIZ1ilyui0G24Oizh6enINVo5f6J63P
         fV3p7SS6XnBeHadwYMJQ/Oiv0xkQUlPvPGhPoRLZlgBiImbwAPOws91nkl5iSj+yFtCw
         eURg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+C4ul60LNUhbQcXRSJzzCbOhFaoVVJ71yz9kZWzJKPY51Xx8k
	h2MvB2OCJy+aXCjfbxTs/Iw=
X-Google-Smtp-Source: ABdhPJxpWt5HkTj8SEyWtFTciQcUXRoR9zvq/eI4niNBiaZaomN1v0lQAgmZ437KqDbn5HKpNdYRzw==
X-Received: by 2002:a4a:a445:: with SMTP id w5mr8522337ool.63.1605486762971;
        Sun, 15 Nov 2020 16:32:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7e9a:: with SMTP id m26ls2872508otp.7.gmail; Sun, 15 Nov
 2020 16:32:42 -0800 (PST)
X-Received: by 2002:a9d:46f:: with SMTP id 102mr9426495otc.293.1605486762631;
        Sun, 15 Nov 2020 16:32:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605486762; cv=none;
        d=google.com; s=arc-20160816;
        b=PWggxw73tO6kiIPUtKsJ9l20MT/bdyWVcsJZaFMQXGsyHbWt4oX6hyofnGMASAriOv
         ApG7523IVxVohm9ecgMtwvn5WmdaZpYiu7vHPxcMKNp69nLbCpk/vagpYII2hAxFdS1D
         NsULJF3ea4t5Ebbruc1T8TulFuw7oph8/b3XAFFoo7izbWBToQi5rznOcXaXmXJsdWCH
         cmhjrt8IA1UMUFqebfIxii6x+u0CAPQ5KcJCO9a+X/3hll59iBzAs0srBMG5BzgBeEF+
         ZZ6JMMis0DUHdww/71AnlXBsRnI5Il87VoBGd7/MpiG/ecHH3FjQsD+DcJ1VHE863QjZ
         p0/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=x5NLvrCLhwWu1o2TxaENQra7cflClgxFBRwo81HIcFY=;
        b=toy1ozjzPCCbNUDg1ZvBXs7pP12ILD0ydby/bIN9pii+qZRVX33hNO4uuWwLMFQcoa
         no/a26kAudkigbzHhK7Z+uO9qG0pFqD1XowanNQYYxqcezMSWvylSgd0EJaFQN4SLvO6
         UVfSTCRWEFW/7mwSM0KkdeMyK5J5u87WiUtaHGZ9hJdOJUOfVFn/3V+2X5dSApn72LnR
         cpRBwenJkcwC2iFDeg74hYjYgTAlR0FuhuG8F6cwV9BCVm33FYIflViBfJrSwxHzrYst
         Olb+BmdFgoutHC0kcxdyi7jpkO0TqJM69CC83O1Vc+YlQp36S6i1nDP3HuBNUqDp5wef
         F3jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id r6si2075982oth.4.2020.11.15.16.32.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Nov 2020 16:32:42 -0800 (PST)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: +h7TZRRkDma4ADS2G5shO3p5Banj6odcAreHjMGSwa7Y+j+JAR+stozrtA1HXj1GUJa2oOwH2+
 dVLyaVhkfjxg==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="169903338"
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; 
   d="scan'208";a="169903338"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Nov 2020 16:32:41 -0800
IronPort-SDR: Blo/4i4yhgpV+3/7MsPMF0q5CjhQjb/3WFoG9A8sL2eOdoEcUG2VzbZw2RtePzZCtfU2jghPUI
 f4WmyeLSQasw==
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; 
   d="scan'208";a="543395623"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.117]) ([10.239.13.117])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Nov 2020 16:32:38 -0800
Subject: Re: [kbuild-all] Re: [PATCH v6] can: usb: etas_es58X: add support for
 ETAS ES58X CAN USB interfaces
To: Vincent MAILHOL <mailhol.vincent@wanadoo.fr>,
 kernel test robot <lkp@intel.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
 linux-can <linux-can@vger.kernel.org>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, Oliver Hartkopp
 <socketcan@hartkopp.net>,
 Arunachalam Santhanam <arunachalam.santhanam@in.bosch.com>,
 Wolfgang Grandegger <wg@grandegger.com>, Jakub Kicinski <kuba@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>
References: <20201114152325.523630-1-mailhol.vincent@wanadoo.fr>
 <202011150212.yNjsvCzu-lkp@intel.com>
 <CAMZ6RqJFasm658=-6Q4-Dm+gDG-tqj39ujzXbMAdYwmaRE=1ew@mail.gmail.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <25305b69-72f8-d862-6e67-9af1b2de3403@intel.com>
Date: Mon, 16 Nov 2020 08:31:53 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAMZ6RqJFasm658=-6Q4-Dm+gDG-tqj39ujzXbMAdYwmaRE=1ew@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.115 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 11/15/20 7:41 PM, Vincent MAILHOL wrote:
> The report from Intel's test robot is a false positive.
>
> On Sun. 15 Nov. 2020 at 03:12, kernel test robot wrote:
>> Hi Vincent,
>>
>> Thank you for the patch! Yet something to improve:
>>
>> [auto build test ERROR on linus/master]
>> [also build test ERROR on bff6f1db91e330d7fba56f815cdbc412c75fe163 v5.10-rc3 next-20201113]
>> [If your patch is applied to the wrong git tree, kindly drop us a note.
> Patch is applied to the wrong git tree. It is based on the testing
> branch of linux-can-next:
> https://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can-next.git/log/?h=testing
>
>> And when submitting patch, we suggest to use '--base' as documented in
>> https://git-scm.com/docs/git-format-patch]
> I did so (c.f. the base-commit and prerequisite-patch-id tags at the
> bottom of the patch). While the base-commit was taken into account,
> the prerequisite-patch-id tags seem to have been ignored.
>
> FYI, I used the below command to generate the patch.
> git format-patch --base=bff6f1db91e330d7fba56f815cdbc412c75fe163 -v6
> -o patch/v6 HEAD~1

Hi Vincent,

Thanks for the feedback, we'll fix the problem asap.

Best Regards,
Rong Chen


>
>
> Yours sincerely,
> Vincent Mailhol
>
>> url:    https://github.com/0day-ci/linux/commits/Vincent-Mailhol/can-usb-etas_es58X-add-support-for-ETAS-ES58X-CAN-USB-interfaces/20201114-232854
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git f01c30de86f1047e9bae1b1b1417b0ce8dcd15b1
>> config: x86_64-randconfig-a005-20201115 (attached as .config)
>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 9a85643cd357e412cff69067bb5c4840e228c2ab)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install x86_64 cross compiling tool for clang build
>>          # apt-get install binutils-x86-64-linux-gnu
>>          # https://github.com/0day-ci/linux/commit/80a9b72580bad04e879752fa5c54d278b486e2bb
>>          git remote add linux-review https://github.com/0day-ci/linux
>>          git fetch --no-tags linux-review Vincent-Mailhol/can-usb-etas_es58X-add-support-for-ETAS-ES58X-CAN-USB-interfaces/20201114-232854
>>          git checkout 80a9b72580bad04e879752fa5c54d278b486e2bb
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>>> drivers/net/can/usb/etas_es58x/es58x_core.c:745:12: error: use of undeclared identifier 'CAN_MAX_RAW_DLC'
>>             if (dlc > CAN_MAX_RAW_DLC) {
>>                       ^
>>     drivers/net/can/usb/etas_es58x/es58x_core.c:748:22: error: use of undeclared identifier 'CAN_MAX_RAW_DLC'
>>                                __func__, dlc, CAN_MAX_RAW_DLC);
>>                                               ^
>>>> drivers/net/can/usb/etas_es58x/es58x_core.c:753:9: error: implicit declaration of function 'can_fd_dlc2len' [-Werror,-Wimplicit-function-declaration]
>>                     len = can_fd_dlc2len(dlc);
>>                           ^
>>     drivers/net/can/usb/etas_es58x/es58x_core.c:753:9: note: did you mean 'can_dlc2len'?
>>     include/linux/can/dev.h:190:4: note: 'can_dlc2len' declared here
>>     u8 can_dlc2len(u8 can_dlc);
>>        ^
>>>> drivers/net/can/usb/etas_es58x/es58x_core.c:756:9: error: implicit declaration of function 'can_cc_dlc2len' [-Werror,-Wimplicit-function-declaration]
>>                     len = can_cc_dlc2len(dlc);
>>                           ^
>>     drivers/net/can/usb/etas_es58x/es58x_core.c:756:9: note: did you mean 'can_dlc2len'?
>>     include/linux/can/dev.h:190:4: note: 'can_dlc2len' declared here
>>     u8 can_dlc2len(u8 can_dlc);
>>        ^
>>>> drivers/net/can/usb/etas_es58x/es58x_core.c:775:3: error: implicit declaration of function 'can_frame_set_cc_len' [-Werror,-Wimplicit-function-declaration]
>>                     can_frame_set_cc_len(ccf, dlc, es58x_priv(netdev)->can.ctrlmode);
>>                     ^
>>     5 errors generated.
>> --
>>>> drivers/net/can/usb/etas_es58x/es581_4.c:385:20: error: implicit declaration of function 'can_get_cc_dlc' [-Werror,-Wimplicit-function-declaration]
>>             tx_can_msg->dlc = can_get_cc_dlc(cf, priv->can.ctrlmode);
>>                               ^
>>>> drivers/net/can/usb/etas_es58x/es581_4.c:387:41: error: no member named 'len' in 'struct can_frame'
>>             memcpy(tx_can_msg->data, cf->data, cf->len);
>>                                                ~~  ^
>>>> drivers/net/can/usb/etas_es58x/es581_4.c:391:13: error: implicit declaration of function 'can_cc_dlc2len' [-Werror,-Wimplicit-function-declaration]
>>             msg_len += es581_4_sizeof_rx_tx_msg(*tx_can_msg);
>>                        ^
>>     drivers/net/can/usb/etas_es58x/es581_4.c:30:29: note: expanded from macro 'es581_4_sizeof_rx_tx_msg'
>>             offsetof(typeof(msg), data[can_cc_dlc2len((msg).dlc)])
>>                                        ^
>>     drivers/net/can/usb/etas_es58x/es581_4.c:391:13: note: did you mean 'can_dlc2len'?
>>     drivers/net/can/usb/etas_es58x/es581_4.c:30:29: note: expanded from macro 'es581_4_sizeof_rx_tx_msg'
>>             offsetof(typeof(msg), data[can_cc_dlc2len((msg).dlc)])
>>                                        ^
>>     include/linux/can/dev.h:190:4: note: 'can_dlc2len' declared here
>>     u8 can_dlc2len(u8 can_dlc);
>>        ^
>>>> drivers/net/can/usb/etas_es58x/es581_4.c:515:48: error: use of undeclared identifier 'CAN_CTRLMODE_CC_LEN8_DLC'
>>             .ctrlmode_supported = CAN_CTRLMODE_LOOPBACK | CAN_CTRLMODE_CC_LEN8_DLC,
>>                                                           ^
>>     4 errors generated.
>> --
>>>> drivers/net/can/usb/etas_es58x/es58x_fd.c:119:24: error: implicit declaration of function 'can_cc_dlc2len' [-Werror,-Wimplicit-function-declaration]
>>                     u16 rx_can_msg_len = es58x_fd_sizeof_rx_tx_msg(*rx_can_msg);
>>                                          ^
>>     drivers/net/can/usb/etas_es58x/es58x_fd.c:36:3: note: expanded from macro 'es58x_fd_sizeof_rx_tx_msg'
>>                     can_cc_dlc2len(__msg.dlc);                              \
>>                     ^
>>     drivers/net/can/usb/etas_es58x/es58x_fd.c:119:24: note: did you mean 'can_dlc2len'?
>>     drivers/net/can/usb/etas_es58x/es58x_fd.c:36:3: note: expanded from macro 'es58x_fd_sizeof_rx_tx_msg'
>>                     can_cc_dlc2len(__msg.dlc);                              \
>>                     ^
>>     include/linux/can/dev.h:190:4: note: 'can_dlc2len' declared here
>>     u8 can_dlc2len(u8 can_dlc);
>>        ^
>>>> drivers/net/can/usb/etas_es58x/es58x_fd.c:141:11: error: implicit declaration of function 'can_fd_len2dlc' [-Werror,-Wimplicit-function-declaration]
>>                                     dlc = can_fd_len2dlc(rx_can_msg->len);
>>                                           ^
>>     drivers/net/can/usb/etas_es58x/es58x_fd.c:141:11: note: did you mean 'can_len2dlc'?
>>     include/linux/can/dev.h:193:4: note: 'can_len2dlc' declared here
>>     u8 can_len2dlc(u8 len);
>>        ^
>>>> drivers/net/can/usb/etas_es58x/es58x_fd.c:371:25: error: no member named 'len' in 'struct can_frame'
>>                     tx_can_msg->len = cf->len;
>>                                       ~~  ^
>>>> drivers/net/can/usb/etas_es58x/es58x_fd.c:373:21: error: implicit declaration of function 'can_get_cc_dlc' [-Werror,-Wimplicit-function-declaration]
>>                     tx_can_msg->dlc = can_get_cc_dlc(cf, priv->can.ctrlmode);
>>                                       ^
>>     drivers/net/can/usb/etas_es58x/es58x_fd.c:374:41: error: no member named 'len' in 'struct can_frame'
>>             memcpy(tx_can_msg->data, cf->data, cf->len);
>>                                                ~~  ^
>>     drivers/net/can/usb/etas_es58x/es58x_fd.c:377:13: error: implicit declaration of function 'can_cc_dlc2len' [-Werror,-Wimplicit-function-declaration]
>>             msg_len += es58x_fd_sizeof_rx_tx_msg(*tx_can_msg);
>>                        ^
>>     drivers/net/can/usb/etas_es58x/es58x_fd.c:36:3: note: expanded from macro 'es58x_fd_sizeof_rx_tx_msg'
>>                     can_cc_dlc2len(__msg.dlc);                              \
>>                     ^
>>>> drivers/net/can/usb/etas_es58x/es58x_fd.c:617:6: error: use of undeclared identifier 'CAN_CTRLMODE_CC_LEN8_DLC'
>>                 CAN_CTRLMODE_CC_LEN8_DLC,
>>                 ^
>>     7 errors generated.
>>
>> vim +/CAN_MAX_RAW_DLC +745 drivers/net/can/usb/etas_es58x/es58x_core.c
>>
>>     718
>>     719  /**
>>     720   * es58x_rx_can_msg() - Handle a received a CAN message.
>>     721   * @netdev: CAN network device.
>>     722   * @timestamp: Hardware time stamp (only relevant in rx branches).
>>     723   * @data: CAN payload.
>>     724   * @can_id: CAN ID.
>>     725   * @es58x_flags: Please refer to enum es58x_flag.
>>     726   * @dlc: Data Length Code (raw value).
>>     727   *
>>     728   * Fill up a CAN skb and post it.
>>     729   *
>>     730   * This function handles the case where the DLC of a classical CAN
>>     731   * frame is greater than CAN_MAX_DLEN (c.f. the len8_dlc field of
>>     732   * struct can_frame).
>>     733   *
>>     734   * Return: zero on success.
>>     735   */
>>     736  int es58x_rx_can_msg(struct net_device *netdev, u64 timestamp, const u8 *data,
>>     737                       canid_t can_id, enum es58x_flag es58x_flags, u8 dlc)
>>     738  {
>>     739          struct canfd_frame *cfd;
>>     740          struct can_frame *ccf;
>>     741          struct sk_buff *skb;
>>     742          u8 len;
>>     743          bool is_can_fd = !!(es58x_flags & ES58X_FLAG_FD_DATA);
>>     744
>>   > 745          if (dlc > CAN_MAX_RAW_DLC) {
>>     746                  netdev_err(netdev,
>>     747                             "%s: DLC is %d but maximum should be %d\n",
>>     748                             __func__, dlc, CAN_MAX_RAW_DLC);
>>     749                  return -EMSGSIZE;
>>     750          }
>>     751
>>     752          if (is_can_fd) {
>>   > 753                  len = can_fd_dlc2len(dlc);
>>     754                  skb = alloc_canfd_skb(netdev, &cfd);
>>     755          } else {
>>   > 756                  len = can_cc_dlc2len(dlc);
>>     757                  skb = alloc_can_skb(netdev, &ccf);
>>     758                  cfd = (struct canfd_frame *)ccf;
>>     759          }
>>     760
>>     761          if (!skb) {
>>     762                  netdev->stats.rx_dropped++;
>>     763                  return -ENOMEM;
>>     764          }
>>     765          cfd->can_id = can_id;
>>     766          if (es58x_flags & ES58X_FLAG_EFF)
>>     767                  cfd->can_id |= CAN_EFF_FLAG;
>>     768          if (is_can_fd) {
>>     769                  cfd->len = len;
>>     770                  if (es58x_flags & ES58X_FLAG_FD_BRS)
>>     771                          cfd->flags |= CANFD_BRS;
>>     772                  if (es58x_flags & ES58X_FLAG_FD_ESI)
>>     773                          cfd->flags |= CANFD_ESI;
>>     774          } else {
>>   > 775                  can_frame_set_cc_len(ccf, dlc, es58x_priv(netdev)->can.ctrlmode);
>>     776                  if (es58x_flags & ES58X_FLAG_RTR) {
>>     777                          ccf->can_id |= CAN_RTR_FLAG;
>>     778                          len = 0;
>>     779                  }
>>     780          }
>>     781          memcpy(cfd->data, data, len);
>>     782          netdev->stats.rx_packets++;
>>     783          netdev->stats.rx_bytes += len;
>>     784
>>     785          es58x_set_skb_timestamp(netdev, skb, timestamp);
>>     786          netif_rx(skb);
>>     787
>>     788          es58x_priv(netdev)->err_passive_before_rtx_success = 0;
>>     789
>>     790          return 0;
>>     791  }
>>     792
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/25305b69-72f8-d862-6e67-9af1b2de3403%40intel.com.
