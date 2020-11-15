Return-Path: <clang-built-linux+bncBDOLNZMBXEEBBBNIYT6QKGQENQ5L7LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A302B34A9
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 12:41:59 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id n16sf6132342pgk.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 03:41:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605440518; cv=pass;
        d=google.com; s=arc-20160816;
        b=R81fxJ/OJBXzEg5kKkbo2lo5geaHxD+wy401nq3Gcmt/xyD6/EMezQdkOIBnL5kGxN
         X5xn3LVpgRnHJMv0f+epAZaWKcDTlPfIiaruORBOdw6VOpCtAl1wZ8McnCm/x8Frz2c5
         qwZ6xMt8sMjnexKDcegzlgLbOhBXhLMSA3APwqeYXjEeGv1KVOicTdw3POHSHISiynrk
         bWTuqxdW11J1q60ilq+12J7tABMI0NUsMbg3fM0LJlU1ocLWRO9QUsNH1zfJ5PmHr+69
         mk27jZXaBMO94MLZrcB3SLD95akhF2UvJqaZS9NG1VTq9OG4nlWkjpNGJhIH/pRZDOKG
         Bq9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=UoUPtVTRPkuxfkwZwLaPIyFVv2IoGYIBxcwEObh5GrQ=;
        b=B5nj8d+mtJvG/MRtL7nBk8aaWKh7ALIJMdsLpHW8ql9tgE1stu8z2GRQrkFRQRsWgf
         9indybct9kvvX42cJGBbnRYwHEBEVrU3R9eJtnZoyKDHrbkPDdNvLZkakhvaJqzeKXo+
         2d2zXHk8INJZsbJAVscwgQtP0IM8EbAxxx8b2x9maEbtQ/ntdHW1DT7kRH8mcN4jOXtR
         9MQNG/yvkY2kX4+drPJU0N51aOb6HxKCMFHuEinmxcQFJYyWgezQ2C4kAER0PvSIaRx/
         BMhfLW9yH78Wibbt38cdehqQnn/7/FeXXw/jrs9UYlwVBHO7oQDYCANVMpOJ1s5UBdfX
         0biA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincent.mailhol@gmail.com designates 209.85.219.195 as permitted sender) smtp.mailfrom=vincent.mailhol@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UoUPtVTRPkuxfkwZwLaPIyFVv2IoGYIBxcwEObh5GrQ=;
        b=jhEYz4peqRPX+cxtRYwqDLZa+w2JyjBX/LPXqYfmm0H6talFqZjHYaFepDQM7Yzkdr
         YnyGcqMxqKiG8Yx6pxcZ3/ChKnRccOClXcKyrSRSm2NLtXhZbXHazPooOs/vFvU8c2kW
         G8uyL7mZsevaKw0EZPPJW5e4Hm1REvQqS7/F80DwOViOhvhJVI+u8wBpMsSfjcCXH+iy
         Kl8Dtd9EFNV9sefQ21Y36B3ioHZG4FYa1B4xLXsDhtZdpHKV3RczOY9o6dTk/D3ArKCq
         TsWCUXbxRGqZq3vy/TsZJMchm4+25CK/6t9W0yA8CEQ6pfRFvSlx7WTj+PkC8efpZbxW
         CvvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UoUPtVTRPkuxfkwZwLaPIyFVv2IoGYIBxcwEObh5GrQ=;
        b=evKQR4xNCkTte+F0QWsQ0e4EVKo4EtCcpibqPZm2dG3u5EvwqFWlNagrjxcK+drwu0
         vFG4TO3X6tomv7ObOiIgfXGCSVA+kk0ATpnrp9XLuLla0Zuv6WjwUgw+b/nvgl1QQJPX
         1Rdf6H/b11M+dfJ6Gtxt/ou1vI+1uxEwL2HD8TqFzuVMygqrB6KQGSEVzoewCZdr9DCN
         ATxoa7iwtSbR7wD8L9tliX1q0oXgOEbB1Jz2N5auEg1tSERmn+/2gyDprSWro2Y32Qdo
         Gw3vZgJLvXAeSTfpYFkFdCAr+Y7ufXlupT+eA8MkY74xZ9kgjmPisrZOjktBvLM/tsrg
         cPNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533185SI9VPhFBcTn7+rZR7pYB73txq/8BcLa6FZH7zQcuK+Yj5F
	stGkNZWIGCSLNOHlYeG+z3Q=
X-Google-Smtp-Source: ABdhPJwQS+Cvg/7IPbOGMYlYew1PZ3id1cTrGS2QV/pa6RisE0dlGFRDAt73rM8uuiw5f4Fa3jzASw==
X-Received: by 2002:a17:902:ee04:b029:d7:3d20:876 with SMTP id z4-20020a170902ee04b02900d73d200876mr9060157plb.25.1605440517997;
        Sun, 15 Nov 2020 03:41:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c395:: with SMTP id h21ls5914164pjt.3.gmail; Sun, 15
 Nov 2020 03:41:57 -0800 (PST)
X-Received: by 2002:a17:90a:9385:: with SMTP id q5mr11237342pjo.20.1605440517271;
        Sun, 15 Nov 2020 03:41:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605440517; cv=none;
        d=google.com; s=arc-20160816;
        b=MMRFl3IIdZYDUjkJhnkz7c0+ZY1fKEA7Wew3iF173OIl0VspNwU1hF5tBcBAyoyCXU
         FhdcGNVhnH8NIw5kFm2kox3ewCYq9beT+zqAu3bmIKEpO2AJxmp1aEKAcLcuVCKqj4Ll
         e4Pxe930Fow4uOJ1tAL/aGPpOejzNRFIrkfspMrQ80zMxzH8Dm3NLOXHUo6kNPN0xurG
         B5JzdiaQkXD53+vJ+WIHV7kEVWSqxLggXQa3if44jJY5W6UKlGe7rx+h5OSP+C9fX5HK
         A4V4R0K4TP/GX+9vaqM+7h+pmkBQnHfCIvgxDwBokJRlVqrtuzvwg3MLwP11tkW/Pgr+
         8Q+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=f9TFXb0r9Tccm0T3gjIoQS3fTTI3ZOZAjprd/SljobU=;
        b=h+Q8YlPm870z7cjcaOQgFK8z+QQY6qozkj5dxX6mgGDruJE6XzBbVX0TpWCG5jjXXX
         /fS32/8uaCTLvJ3ix1+u9bLbzfsqrYab7Tfzf3NbCvKzgKddqNFdiaVhDNQCxDb15HEU
         jwROvG8whKeGkXIuM4c8XmqyH+QsjQ9jl6WgfyxrdJZA3j9w3pDObqkgqj2MPfDMaIBY
         NxzDHFk43rxLxWhPB+kJB8fC5yA3cIsP/Qg8FCqTCo/HAbKkS0ynILZ52Oqis0bzhj0F
         z3PIxtuwvWuN6GDpRDWOMIHom9vzkQXOnAvYcExUDfwh2bGCnz6ygYBjH+j5BqApvXE2
         nNGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincent.mailhol@gmail.com designates 209.85.219.195 as permitted sender) smtp.mailfrom=vincent.mailhol@gmail.com
Received: from mail-yb1-f195.google.com (mail-yb1-f195.google.com. [209.85.219.195])
        by gmr-mx.google.com with ESMTPS id 80si921151pga.5.2020.11.15.03.41.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2020 03:41:57 -0800 (PST)
Received-SPF: pass (google.com: domain of vincent.mailhol@gmail.com designates 209.85.219.195 as permitted sender) client-ip=209.85.219.195;
Received: by mail-yb1-f195.google.com with SMTP id l14so8949746ybq.3
        for <clang-built-linux@googlegroups.com>; Sun, 15 Nov 2020 03:41:57 -0800 (PST)
X-Received: by 2002:a25:cfd1:: with SMTP id f200mr5775390ybg.145.1605440516314;
 Sun, 15 Nov 2020 03:41:56 -0800 (PST)
MIME-Version: 1.0
References: <20201114152325.523630-1-mailhol.vincent@wanadoo.fr> <202011150212.yNjsvCzu-lkp@intel.com>
In-Reply-To: <202011150212.yNjsvCzu-lkp@intel.com>
From: Vincent MAILHOL <mailhol.vincent@wanadoo.fr>
Date: Sun, 15 Nov 2020 20:41:45 +0900
Message-ID: <CAMZ6RqJFasm658=-6Q4-Dm+gDG-tqj39ujzXbMAdYwmaRE=1ew@mail.gmail.com>
Subject: Re: [PATCH v6] can: usb: etas_es58X: add support for ETAS ES58X CAN
 USB interfaces
To: kernel test robot <lkp@intel.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, linux-can <linux-can@vger.kernel.org>, 
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	Oliver Hartkopp <socketcan@hartkopp.net>, 
	Arunachalam Santhanam <arunachalam.santhanam@in.bosch.com>, 
	Wolfgang Grandegger <wg@grandegger.com>, Jakub Kicinski <kuba@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	"open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>, Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mailhol.vincent@wanadoo.fr
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincent.mailhol@gmail.com designates 209.85.219.195 as
 permitted sender) smtp.mailfrom=vincent.mailhol@gmail.com
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

The report from Intel's test robot is a false positive.

On Sun. 15 Nov. 2020 at 03:12, kernel test robot wrote:
> Hi Vincent,
>
> Thank you for the patch! Yet something to improve:
>
> [auto build test ERROR on linus/master]
> [also build test ERROR on bff6f1db91e330d7fba56f815cdbc412c75fe163 v5.10-rc3 next-20201113]
> [If your patch is applied to the wrong git tree, kindly drop us a note.

Patch is applied to the wrong git tree. It is based on the testing
branch of linux-can-next:
https://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can-next.git/log/?h=testing

> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]

I did so (c.f. the base-commit and prerequisite-patch-id tags at the
bottom of the patch). While the base-commit was taken into account,
the prerequisite-patch-id tags seem to have been ignored.

FYI, I used the below command to generate the patch.
git format-patch --base=bff6f1db91e330d7fba56f815cdbc412c75fe163 -v6
-o patch/v6 HEAD~1


Yours sincerely,
Vincent Mailhol

> url:    https://github.com/0day-ci/linux/commits/Vincent-Mailhol/can-usb-etas_es58X-add-support-for-ETAS-ES58X-CAN-USB-interfaces/20201114-232854
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git f01c30de86f1047e9bae1b1b1417b0ce8dcd15b1
> config: x86_64-randconfig-a005-20201115 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 9a85643cd357e412cff69067bb5c4840e228c2ab)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/80a9b72580bad04e879752fa5c54d278b486e2bb
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Vincent-Mailhol/can-usb-etas_es58X-add-support-for-ETAS-ES58X-CAN-USB-interfaces/20201114-232854
>         git checkout 80a9b72580bad04e879752fa5c54d278b486e2bb
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> drivers/net/can/usb/etas_es58x/es58x_core.c:745:12: error: use of undeclared identifier 'CAN_MAX_RAW_DLC'
>            if (dlc > CAN_MAX_RAW_DLC) {
>                      ^
>    drivers/net/can/usb/etas_es58x/es58x_core.c:748:22: error: use of undeclared identifier 'CAN_MAX_RAW_DLC'
>                               __func__, dlc, CAN_MAX_RAW_DLC);
>                                              ^
> >> drivers/net/can/usb/etas_es58x/es58x_core.c:753:9: error: implicit declaration of function 'can_fd_dlc2len' [-Werror,-Wimplicit-function-declaration]
>                    len = can_fd_dlc2len(dlc);
>                          ^
>    drivers/net/can/usb/etas_es58x/es58x_core.c:753:9: note: did you mean 'can_dlc2len'?
>    include/linux/can/dev.h:190:4: note: 'can_dlc2len' declared here
>    u8 can_dlc2len(u8 can_dlc);
>       ^
> >> drivers/net/can/usb/etas_es58x/es58x_core.c:756:9: error: implicit declaration of function 'can_cc_dlc2len' [-Werror,-Wimplicit-function-declaration]
>                    len = can_cc_dlc2len(dlc);
>                          ^
>    drivers/net/can/usb/etas_es58x/es58x_core.c:756:9: note: did you mean 'can_dlc2len'?
>    include/linux/can/dev.h:190:4: note: 'can_dlc2len' declared here
>    u8 can_dlc2len(u8 can_dlc);
>       ^
> >> drivers/net/can/usb/etas_es58x/es58x_core.c:775:3: error: implicit declaration of function 'can_frame_set_cc_len' [-Werror,-Wimplicit-function-declaration]
>                    can_frame_set_cc_len(ccf, dlc, es58x_priv(netdev)->can.ctrlmode);
>                    ^
>    5 errors generated.
> --
> >> drivers/net/can/usb/etas_es58x/es581_4.c:385:20: error: implicit declaration of function 'can_get_cc_dlc' [-Werror,-Wimplicit-function-declaration]
>            tx_can_msg->dlc = can_get_cc_dlc(cf, priv->can.ctrlmode);
>                              ^
> >> drivers/net/can/usb/etas_es58x/es581_4.c:387:41: error: no member named 'len' in 'struct can_frame'
>            memcpy(tx_can_msg->data, cf->data, cf->len);
>                                               ~~  ^
> >> drivers/net/can/usb/etas_es58x/es581_4.c:391:13: error: implicit declaration of function 'can_cc_dlc2len' [-Werror,-Wimplicit-function-declaration]
>            msg_len += es581_4_sizeof_rx_tx_msg(*tx_can_msg);
>                       ^
>    drivers/net/can/usb/etas_es58x/es581_4.c:30:29: note: expanded from macro 'es581_4_sizeof_rx_tx_msg'
>            offsetof(typeof(msg), data[can_cc_dlc2len((msg).dlc)])
>                                       ^
>    drivers/net/can/usb/etas_es58x/es581_4.c:391:13: note: did you mean 'can_dlc2len'?
>    drivers/net/can/usb/etas_es58x/es581_4.c:30:29: note: expanded from macro 'es581_4_sizeof_rx_tx_msg'
>            offsetof(typeof(msg), data[can_cc_dlc2len((msg).dlc)])
>                                       ^
>    include/linux/can/dev.h:190:4: note: 'can_dlc2len' declared here
>    u8 can_dlc2len(u8 can_dlc);
>       ^
> >> drivers/net/can/usb/etas_es58x/es581_4.c:515:48: error: use of undeclared identifier 'CAN_CTRLMODE_CC_LEN8_DLC'
>            .ctrlmode_supported = CAN_CTRLMODE_LOOPBACK | CAN_CTRLMODE_CC_LEN8_DLC,
>                                                          ^
>    4 errors generated.
> --
> >> drivers/net/can/usb/etas_es58x/es58x_fd.c:119:24: error: implicit declaration of function 'can_cc_dlc2len' [-Werror,-Wimplicit-function-declaration]
>                    u16 rx_can_msg_len = es58x_fd_sizeof_rx_tx_msg(*rx_can_msg);
>                                         ^
>    drivers/net/can/usb/etas_es58x/es58x_fd.c:36:3: note: expanded from macro 'es58x_fd_sizeof_rx_tx_msg'
>                    can_cc_dlc2len(__msg.dlc);                              \
>                    ^
>    drivers/net/can/usb/etas_es58x/es58x_fd.c:119:24: note: did you mean 'can_dlc2len'?
>    drivers/net/can/usb/etas_es58x/es58x_fd.c:36:3: note: expanded from macro 'es58x_fd_sizeof_rx_tx_msg'
>                    can_cc_dlc2len(__msg.dlc);                              \
>                    ^
>    include/linux/can/dev.h:190:4: note: 'can_dlc2len' declared here
>    u8 can_dlc2len(u8 can_dlc);
>       ^
> >> drivers/net/can/usb/etas_es58x/es58x_fd.c:141:11: error: implicit declaration of function 'can_fd_len2dlc' [-Werror,-Wimplicit-function-declaration]
>                                    dlc = can_fd_len2dlc(rx_can_msg->len);
>                                          ^
>    drivers/net/can/usb/etas_es58x/es58x_fd.c:141:11: note: did you mean 'can_len2dlc'?
>    include/linux/can/dev.h:193:4: note: 'can_len2dlc' declared here
>    u8 can_len2dlc(u8 len);
>       ^
> >> drivers/net/can/usb/etas_es58x/es58x_fd.c:371:25: error: no member named 'len' in 'struct can_frame'
>                    tx_can_msg->len = cf->len;
>                                      ~~  ^
> >> drivers/net/can/usb/etas_es58x/es58x_fd.c:373:21: error: implicit declaration of function 'can_get_cc_dlc' [-Werror,-Wimplicit-function-declaration]
>                    tx_can_msg->dlc = can_get_cc_dlc(cf, priv->can.ctrlmode);
>                                      ^
>    drivers/net/can/usb/etas_es58x/es58x_fd.c:374:41: error: no member named 'len' in 'struct can_frame'
>            memcpy(tx_can_msg->data, cf->data, cf->len);
>                                               ~~  ^
>    drivers/net/can/usb/etas_es58x/es58x_fd.c:377:13: error: implicit declaration of function 'can_cc_dlc2len' [-Werror,-Wimplicit-function-declaration]
>            msg_len += es58x_fd_sizeof_rx_tx_msg(*tx_can_msg);
>                       ^
>    drivers/net/can/usb/etas_es58x/es58x_fd.c:36:3: note: expanded from macro 'es58x_fd_sizeof_rx_tx_msg'
>                    can_cc_dlc2len(__msg.dlc);                              \
>                    ^
> >> drivers/net/can/usb/etas_es58x/es58x_fd.c:617:6: error: use of undeclared identifier 'CAN_CTRLMODE_CC_LEN8_DLC'
>                CAN_CTRLMODE_CC_LEN8_DLC,
>                ^
>    7 errors generated.
>
> vim +/CAN_MAX_RAW_DLC +745 drivers/net/can/usb/etas_es58x/es58x_core.c
>
>    718
>    719  /**
>    720   * es58x_rx_can_msg() - Handle a received a CAN message.
>    721   * @netdev: CAN network device.
>    722   * @timestamp: Hardware time stamp (only relevant in rx branches).
>    723   * @data: CAN payload.
>    724   * @can_id: CAN ID.
>    725   * @es58x_flags: Please refer to enum es58x_flag.
>    726   * @dlc: Data Length Code (raw value).
>    727   *
>    728   * Fill up a CAN skb and post it.
>    729   *
>    730   * This function handles the case where the DLC of a classical CAN
>    731   * frame is greater than CAN_MAX_DLEN (c.f. the len8_dlc field of
>    732   * struct can_frame).
>    733   *
>    734   * Return: zero on success.
>    735   */
>    736  int es58x_rx_can_msg(struct net_device *netdev, u64 timestamp, const u8 *data,
>    737                       canid_t can_id, enum es58x_flag es58x_flags, u8 dlc)
>    738  {
>    739          struct canfd_frame *cfd;
>    740          struct can_frame *ccf;
>    741          struct sk_buff *skb;
>    742          u8 len;
>    743          bool is_can_fd = !!(es58x_flags & ES58X_FLAG_FD_DATA);
>    744
>  > 745          if (dlc > CAN_MAX_RAW_DLC) {
>    746                  netdev_err(netdev,
>    747                             "%s: DLC is %d but maximum should be %d\n",
>    748                             __func__, dlc, CAN_MAX_RAW_DLC);
>    749                  return -EMSGSIZE;
>    750          }
>    751
>    752          if (is_can_fd) {
>  > 753                  len = can_fd_dlc2len(dlc);
>    754                  skb = alloc_canfd_skb(netdev, &cfd);
>    755          } else {
>  > 756                  len = can_cc_dlc2len(dlc);
>    757                  skb = alloc_can_skb(netdev, &ccf);
>    758                  cfd = (struct canfd_frame *)ccf;
>    759          }
>    760
>    761          if (!skb) {
>    762                  netdev->stats.rx_dropped++;
>    763                  return -ENOMEM;
>    764          }
>    765          cfd->can_id = can_id;
>    766          if (es58x_flags & ES58X_FLAG_EFF)
>    767                  cfd->can_id |= CAN_EFF_FLAG;
>    768          if (is_can_fd) {
>    769                  cfd->len = len;
>    770                  if (es58x_flags & ES58X_FLAG_FD_BRS)
>    771                          cfd->flags |= CANFD_BRS;
>    772                  if (es58x_flags & ES58X_FLAG_FD_ESI)
>    773                          cfd->flags |= CANFD_ESI;
>    774          } else {
>  > 775                  can_frame_set_cc_len(ccf, dlc, es58x_priv(netdev)->can.ctrlmode);
>    776                  if (es58x_flags & ES58X_FLAG_RTR) {
>    777                          ccf->can_id |= CAN_RTR_FLAG;
>    778                          len = 0;
>    779                  }
>    780          }
>    781          memcpy(cfd->data, data, len);
>    782          netdev->stats.rx_packets++;
>    783          netdev->stats.rx_bytes += len;
>    784
>    785          es58x_set_skb_timestamp(netdev, skb, timestamp);
>    786          netif_rx(skb);
>    787
>    788          es58x_priv(netdev)->err_passive_before_rtx_success = 0;
>    789
>    790          return 0;
>    791  }
>    792
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMZ6RqJFasm658%3D-6Q4-Dm%2BgDG-tqj39ujzXbMAdYwmaRE%3D1ew%40mail.gmail.com.
