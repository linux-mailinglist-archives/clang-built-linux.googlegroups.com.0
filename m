Return-Path: <clang-built-linux+bncBCM77JPN2AIRBQ7F6CAAMGQEWNVGYXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E0130F9FF
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 18:45:41 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id v7sf4003864ybl.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 09:45:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612460740; cv=pass;
        d=google.com; s=arc-20160816;
        b=s4HIsIMtsPqUMs2ySumcjNoZa4fbzf/bxW4GVpnxdetOstPkT6hWCbH7jyuOw9biy1
         H9i7+B0546RW5dSzQjJP/VyHd5XzRLBAL5TzwOxJK1cqp/jGD4UjA8tA6tCmGqVt8bAP
         ZkTX3gVpna4360dV/hbpTPl4v4t4TtxGSb8YiB9++TjABooDQVZZRe8EwkVS25duD4Pj
         N/UWFPvzol7KtYwJ9mNbMUH2Qk1oYn6ZUmnXBet76gbc5LosGOsWGkXOMf4+5keoOAEM
         0igwz8DuKrPSrIp48WbeFvgrirS66YyQe47J3KEz8mLgziSFBZXDj0JJGV9szGFmH9c6
         FR1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=h6LKnhbBp9fLOO7sW5YHsIVDAQpPMvAwsliUsxb5meI=;
        b=jfEP1ChRn5KnzHHD2h2Z0KVyhQS9EGjc0cydSok6HU6pUyJN9Ok9HN5e4zRD0Ef7Yy
         WqoLd7UzaojpvtXk1XEFD9ox62d4giE5RKTyJUcqmtBLgDUQdu5csX1AIVd14ubdu+qW
         vVUbzFDszOOKIfptOJ8dEQfrRPNvphS3hqc+auYnVs+6YKEnORK06xgTPgkIS02Fth04
         PQ7EQOd3r+/P8LRAM5MZQKVDj4mguf7da0ZkH0T8HzSACrThznruJlt8m/Q6Mk+1ebb8
         gteH07vOoaG6ryP7Zl8EOLV0bbFVnriLCTMhWxv0OaOCbAwRh6JEtPvoS6kIFFy2YXKN
         PJOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F1KC94Jx;
       spf=pass (google.com: domain of kyletso@google.com designates 2607:f8b0:4864:20::f33 as permitted sender) smtp.mailfrom=kyletso@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h6LKnhbBp9fLOO7sW5YHsIVDAQpPMvAwsliUsxb5meI=;
        b=rYhjzxiEPpQLQjDT0/SKgYuSeFkv0/tLT/ED6rMBhoqIdN24nZ9r84t6PYPrt3DLff
         jSdE+SsQyTUvJ6dLjDNCfauCEz7Yh3EDyWMzda/TJ6SchGP09/YHNw0InRuEDWyyEasY
         jfMCY8xzbqlNs9nOdCrbHNPuUQ6TAGxDBH6IGOCagQK92QlNYHAW+RSml/BLQXbxkg9n
         ZJsdRboM9lNmO3xx8RD746R9asyK9zGEHAhFrUxNAhcvKHQftKamKHLU2W6xgmxrJC+N
         1caQnwX73PrKG21HQf8186JI8VmqXgGJ+B2ecw7rupCDsxdjyWNzEh5SvRuWoxvk727X
         GgSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h6LKnhbBp9fLOO7sW5YHsIVDAQpPMvAwsliUsxb5meI=;
        b=aR0TYMRk2LEt03fjltEHN72J/TI5iFxJHqyKl6Mi+2qShArzWWdhEtcwcc2sIPq5cJ
         n3ftBk50U1ziRgrHaanyrE3urWRHnbXpBam/Q0G+Cl3gRfvMLkXiZBqhHyAocZSV+oXm
         iOR7NkK5HyRBLdvdmYJR/vd7OG1244wZNvdEYXtPW4rOsvum1IetoV7TY3FjTvpltk++
         yxnWLhuhHz1ahURi0OM8rr/WwqJaI6OJSnMNvYV5v/y6tnL8i+tK/uQVIqXnVx2Z55eo
         FsCAgGtikTQPKzvqNXMsVcDUneYtel+BcQymL5ZGTYxBbkKRuZAGx2UqaeykFI+pQlt9
         Bsnw==
X-Gm-Message-State: AOAM530JkRnJ5vge+As4iZ7F/6ESNm/bR0OlvbpzHAkxj73r2S2EQvsz
	LYmq3bGC6AgoKzv7COhn7u8=
X-Google-Smtp-Source: ABdhPJxIMti9hzIg0ZfheIa56tTEZvMbeqdxTyazlcubVdFNdRSoTo7QA1mZpf8kHDxe6r0vlSENww==
X-Received: by 2002:a25:8c5:: with SMTP id 188mr551900ybi.18.1612460740002;
        Thu, 04 Feb 2021 09:45:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3006:: with SMTP id w6ls3064595ybw.4.gmail; Thu, 04 Feb
 2021 09:45:39 -0800 (PST)
X-Received: by 2002:a25:9bc8:: with SMTP id w8mr514213ybo.354.1612460739595;
        Thu, 04 Feb 2021 09:45:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612460739; cv=none;
        d=google.com; s=arc-20160816;
        b=ZxfGaceaong0YzL4voH51vt7+ShIgeFNMQTqa8YEjSKNZj+NWa7K4fi3cnG7EETeGX
         MW+eRwdhkccXEkVI9K+M3nXloNJg0zgLgLc2szF8buaD5oTECnc+xJ061PV3NNVlVRqU
         b7Q2RhMgXAvoYLqbGBCLl+xhQBJxymIaqlUBwRBQkFhGKbKesFL/tyEpjj78JD+DU7PB
         xUgf48969I/fFhLrHunQdljdOR7z862n36thlewMDryh5g5hikRGznsgGl2HbsqKywhT
         Ul6uBgdgwZvBlVxAHhZ4VQcJFIda/0u539L4DwOY1uDlCkIim5KA3DDcI4RoXs7JI6Ye
         rAcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cqyjoq8OoX0qfgab+vhSM3IoqZR0KCLAhoUlCdPfvrw=;
        b=BHxqNJJ1X6E72ypU9Tf0QD/rQs9kuPmqryxbxUYANNZzr5ZWmapJfQpCd4ElAYvf9z
         BT/L0L8yPPC5yoDZgYn133DqebgGkmrD2nTK4cIYyLN+UFZQFvFhsXNPJltZx2MbxQc4
         KhHvt1pLRZgsG1HJZKp0zguXV+naM5ZyUMxEWtfyILx9FEcFVic0qsx6xJxbuQ8H2f4c
         CPQe7ZbNSf4f+QqdDTGLcyPlMYcgO+iZxuOcOTKADJ29yJWtITY6N/l4aaLvPNqP2OXJ
         3kOD5zu8BNVIDwTARuPcs4FZKONVbxNRhFUKntF58W/8lmqXVixfxMp5SdTBl9HmKzKX
         W9rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F1KC94Jx;
       spf=pass (google.com: domain of kyletso@google.com designates 2607:f8b0:4864:20::f33 as permitted sender) smtp.mailfrom=kyletso@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com. [2607:f8b0:4864:20::f33])
        by gmr-mx.google.com with ESMTPS id k12si363001ybf.5.2021.02.04.09.45.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 09:45:39 -0800 (PST)
Received-SPF: pass (google.com: domain of kyletso@google.com designates 2607:f8b0:4864:20::f33 as permitted sender) client-ip=2607:f8b0:4864:20::f33;
Received: by mail-qv1-xf33.google.com with SMTP id l11so2133159qvt.1
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 09:45:39 -0800 (PST)
X-Received: by 2002:a05:6214:11ab:: with SMTP id u11mr550555qvv.17.1612460738789;
 Thu, 04 Feb 2021 09:45:38 -0800 (PST)
MIME-Version: 1.0
References: <202102050042.DpTJdrHK-lkp@intel.com>
In-Reply-To: <202102050042.DpTJdrHK-lkp@intel.com>
From: "'Kyle Tso' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Feb 2021 01:45:22 +0800
Message-ID: <CAGZ6i=0t1W0Qm99b6FO9+F-YQtreNnZuQxF2V_09PMm32uRppw@mail.gmail.com>
Subject: Re: [usb:usb-testing 155/158] drivers/platform/chrome/cros_ec_typec.c:778:8:
 error: use of undeclared identifier 'CABLE_ATYPE'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	USB <linux-usb@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kyletso@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=F1KC94Jx;       spf=pass
 (google.com: domain of kyletso@google.com designates 2607:f8b0:4864:20::f33
 as permitted sender) smtp.mailfrom=kyletso@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Kyle Tso <kyletso@google.com>
Reply-To: Kyle Tso <kyletso@google.com>
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

On Fri, Feb 5, 2021 at 12:24 AM kernel test robot <lkp@intel.com> wrote:
>
> Hi Kyle,
>
> FYI, the error/warning still remains.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
> head:   d021e0694d77ee3cdc5d3fca2c8d53ae7575499a
> commit: 0e1d6f55a12e47942ce207dfb93e23049b454c9e [155/158] usb: pd: Update VDO definitions

Hi,
This seems to be the old buggy patch.

commit: 0e1d6f55a12e47942ce207dfb93e23049b454c9e [155/158] usb: pd:
Update VDO definitions

thanks,
Kyle

> config: mips-randconfig-r011-20210204 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 275c6af7d7f1ed63a03d05b4484413e447133269)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/commit/?id=0e1d6f55a12e47942ce207dfb93e23049b454c9e
>         git remote add usb https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git
>         git fetch --no-tags usb usb-testing
>         git checkout 0e1d6f55a12e47942ce207dfb93e23049b454c9e
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> drivers/platform/chrome/cros_ec_typec.c:778:8: error: use of undeclared identifier 'CABLE_ATYPE'
>                    case CABLE_ATYPE:
>                         ^
> >> drivers/platform/chrome/cros_ec_typec.c:781:8: error: use of undeclared identifier 'CABLE_BTYPE'
>                    case CABLE_BTYPE:
>                         ^
>    drivers/platform/chrome/cros_ec_typec.c:1000:3: warning: format specifies type 'unsigned char' but the argument has type 'unsigned int' [-Wformat]
>                    typec->pd_ctrl_ver);
>                    ^~~~~~~~~~~~~~~~~~
>    include/linux/dev_printk.h:123:39: note: expanded from macro 'dev_dbg'
>            dynamic_dev_dbg(dev, dev_fmt(fmt), ##__VA_ARGS__)
>                                         ~~~     ^~~~~~~~~~~
>    include/linux/dynamic_debug.h:162:19: note: expanded from macro 'dynamic_dev_dbg'
>                               dev, fmt, ##__VA_ARGS__)
>                                    ~~~    ^~~~~~~~~~~
>    include/linux/dynamic_debug.h:147:56: note: expanded from macro '_dynamic_func_call'
>            __dynamic_func_call(__UNIQUE_ID(ddebug), fmt, func, ##__VA_ARGS__)
>                                                                  ^~~~~~~~~~~
>    include/linux/dynamic_debug.h:129:15: note: expanded from macro '__dynamic_func_call'
>                    func(&id, ##__VA_ARGS__);               \
>                                ^~~~~~~~~~~
>    1 warning and 2 errors generated.
>
>
> vim +/CABLE_ATYPE +778 drivers/platform/chrome/cros_ec_typec.c
>
> 8fab2755191f86 Prashant Malani 2020-11-16  750
> 3b3dd1f0dbfe92 Benson Leung    2021-01-28  751  static int cros_typec_handle_sop_prime_disc(struct cros_typec_data *typec, int port_num, u16 pd_revision)
> 8b46a212ad11f2 Prashant Malani 2020-11-16  752  {
> 8b46a212ad11f2 Prashant Malani 2020-11-16  753          struct cros_typec_port *port = typec->ports[port_num];
> 8b46a212ad11f2 Prashant Malani 2020-11-16  754          struct ec_response_typec_discovery *disc = port->disc_data;
> f4edab68e10119 Prashant Malani 2020-11-16  755          struct typec_cable_desc c_desc = {};
> f4edab68e10119 Prashant Malani 2020-11-16  756          struct typec_plug_desc p_desc;
> 8b46a212ad11f2 Prashant Malani 2020-11-16  757          struct ec_params_typec_discovery req = {
> 8b46a212ad11f2 Prashant Malani 2020-11-16  758                  .port = port_num,
> 8b46a212ad11f2 Prashant Malani 2020-11-16  759                  .partner_type = TYPEC_PARTNER_SOP_PRIME,
> 8b46a212ad11f2 Prashant Malani 2020-11-16  760          };
> 72d6e32bd85bd1 Prashant Malani 2020-11-16  761          u32 cable_plug_type;
> 8b46a212ad11f2 Prashant Malani 2020-11-16  762          int ret = 0;
> 8b46a212ad11f2 Prashant Malani 2020-11-16  763
> 8b46a212ad11f2 Prashant Malani 2020-11-16  764          memset(disc, 0, EC_PROTO2_MAX_RESPONSE_SIZE);
> 8b46a212ad11f2 Prashant Malani 2020-11-16  765          ret = cros_typec_ec_command(typec, 0, EC_CMD_TYPEC_DISCOVERY, &req, sizeof(req),
> 8b46a212ad11f2 Prashant Malani 2020-11-16  766                                      disc, EC_PROTO2_MAX_RESPONSE_SIZE);
> 8b46a212ad11f2 Prashant Malani 2020-11-16  767          if (ret < 0) {
> 8b46a212ad11f2 Prashant Malani 2020-11-16  768                  dev_err(typec->dev, "Failed to get SOP' discovery data for port: %d\n", port_num);
> 8b46a212ad11f2 Prashant Malani 2020-11-16  769                  goto sop_prime_disc_exit;
> 8b46a212ad11f2 Prashant Malani 2020-11-16  770          }
> 8b46a212ad11f2 Prashant Malani 2020-11-16  771
> 8b46a212ad11f2 Prashant Malani 2020-11-16  772          /* Parse the PD identity data, even if only 0s were returned. */
> 8b46a212ad11f2 Prashant Malani 2020-11-16  773          cros_typec_parse_pd_identity(&port->c_identity, disc);
> 8b46a212ad11f2 Prashant Malani 2020-11-16  774
> 72d6e32bd85bd1 Prashant Malani 2020-11-16  775          if (disc->identity_count != 0) {
> 72d6e32bd85bd1 Prashant Malani 2020-11-16  776                  cable_plug_type = VDO_TYPEC_CABLE_TYPE(port->c_identity.vdo[0]);
> 72d6e32bd85bd1 Prashant Malani 2020-11-16  777                  switch (cable_plug_type) {
> 72d6e32bd85bd1 Prashant Malani 2020-11-16 @778                  case CABLE_ATYPE:
> f4edab68e10119 Prashant Malani 2020-11-16  779                          c_desc.type = USB_PLUG_TYPE_A;
> 72d6e32bd85bd1 Prashant Malani 2020-11-16  780                          break;
> 72d6e32bd85bd1 Prashant Malani 2020-11-16 @781                  case CABLE_BTYPE:
> f4edab68e10119 Prashant Malani 2020-11-16  782                          c_desc.type = USB_PLUG_TYPE_B;
> 72d6e32bd85bd1 Prashant Malani 2020-11-16  783                          break;
> 72d6e32bd85bd1 Prashant Malani 2020-11-16  784                  case CABLE_CTYPE:
> f4edab68e10119 Prashant Malani 2020-11-16  785                          c_desc.type = USB_PLUG_TYPE_C;
> 72d6e32bd85bd1 Prashant Malani 2020-11-16  786                          break;
> 72d6e32bd85bd1 Prashant Malani 2020-11-16  787                  case CABLE_CAPTIVE:
> f4edab68e10119 Prashant Malani 2020-11-16  788                          c_desc.type = USB_PLUG_CAPTIVE;
> 72d6e32bd85bd1 Prashant Malani 2020-11-16  789                          break;
> 72d6e32bd85bd1 Prashant Malani 2020-11-16  790                  default:
> f4edab68e10119 Prashant Malani 2020-11-16  791                          c_desc.type = USB_PLUG_NONE;
> 72d6e32bd85bd1 Prashant Malani 2020-11-16  792                  }
> f4edab68e10119 Prashant Malani 2020-11-16  793                  c_desc.active = PD_IDH_PTYPE(port->c_identity.id_header) == IDH_PTYPE_ACABLE;
> 72d6e32bd85bd1 Prashant Malani 2020-11-16  794          }
> 8b46a212ad11f2 Prashant Malani 2020-11-16  795
> f4edab68e10119 Prashant Malani 2020-11-16  796          c_desc.identity = &port->c_identity;
> 3b3dd1f0dbfe92 Benson Leung    2021-01-28  797          c_desc.pd_revision = pd_revision;
> 8b46a212ad11f2 Prashant Malani 2020-11-16  798
> f4edab68e10119 Prashant Malani 2020-11-16  799          port->cable = typec_register_cable(port->port, &c_desc);
> 8b46a212ad11f2 Prashant Malani 2020-11-16  800          if (IS_ERR(port->cable)) {
> 8b46a212ad11f2 Prashant Malani 2020-11-16  801                  ret = PTR_ERR(port->cable);
> 8b46a212ad11f2 Prashant Malani 2020-11-16  802                  port->cable = NULL;
> f4edab68e10119 Prashant Malani 2020-11-16  803                  goto sop_prime_disc_exit;
> f4edab68e10119 Prashant Malani 2020-11-16  804          }
> f4edab68e10119 Prashant Malani 2020-11-16  805
> f4edab68e10119 Prashant Malani 2020-11-16  806          p_desc.index = TYPEC_PLUG_SOP_P;
> f4edab68e10119 Prashant Malani 2020-11-16  807          port->plug = typec_register_plug(port->cable, &p_desc);
> f4edab68e10119 Prashant Malani 2020-11-16  808          if (IS_ERR(port->plug)) {
> f4edab68e10119 Prashant Malani 2020-11-16  809                  ret = PTR_ERR(port->plug);
> f4edab68e10119 Prashant Malani 2020-11-16  810                  port->plug = NULL;
> f4edab68e10119 Prashant Malani 2020-11-16  811                  goto sop_prime_disc_exit;
> 8b46a212ad11f2 Prashant Malani 2020-11-16  812          }
> 8b46a212ad11f2 Prashant Malani 2020-11-16  813
> 1563090965421f Prashant Malani 2020-11-16  814          ret = cros_typec_register_altmodes(typec, port_num, false);
> 1563090965421f Prashant Malani 2020-11-16  815          if (ret < 0) {
> 1563090965421f Prashant Malani 2020-11-16  816                  dev_err(typec->dev, "Failed to register plug altmodes, port: %d\n", port_num);
> 1563090965421f Prashant Malani 2020-11-16  817                  goto sop_prime_disc_exit;
> 1563090965421f Prashant Malani 2020-11-16  818          }
> 1563090965421f Prashant Malani 2020-11-16  819
> f4edab68e10119 Prashant Malani 2020-11-16  820          return 0;
> f4edab68e10119 Prashant Malani 2020-11-16  821
> 8b46a212ad11f2 Prashant Malani 2020-11-16  822  sop_prime_disc_exit:
> f4edab68e10119 Prashant Malani 2020-11-16  823          cros_typec_remove_cable(typec, port_num);
> 8b46a212ad11f2 Prashant Malani 2020-11-16  824          return ret;
> 8b46a212ad11f2 Prashant Malani 2020-11-16  825  }
> 8b46a212ad11f2 Prashant Malani 2020-11-16  826
>
> :::::: The code at line 778 was first introduced by commit
> :::::: 72d6e32bd85bd1e5cb5aa467f4eb5d0a69559953 platform/chrome: cros_ec_typec: Store cable plug type
>
> :::::: TO: Prashant Malani <pmalani@chromium.org>
> :::::: CC: Benson Leung <bleung@chromium.org>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGZ6i%3D0t1W0Qm99b6FO9%2BF-YQtreNnZuQxF2V_09PMm32uRppw%40mail.gmail.com.
