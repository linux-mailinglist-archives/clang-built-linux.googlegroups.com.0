Return-Path: <clang-built-linux+bncBDM3FG7YWUNBBNOVRKAAMGQEIZ6WWVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F102F8C59
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 09:58:31 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id j37sf8363232pgb.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 00:58:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610787509; cv=pass;
        d=google.com; s=arc-20160816;
        b=rmypFz8MsGWkQLvRzDP0oN3mFg2ki1LBGAvNLqQaTVMiB8Ldq0+HPw7yNB7BE7q6f6
         FeigKSqWTbKNVhgjTPKmsu4/UOS/mRjivOAkj3oIMcEus8Pte8HTA1fYrcmquOZaIUva
         s4ePBZamZUHAyr4MumiwQ2CHG6KirdA5l7h4+P3+TmQ609dI7RCW+/pRMk7EHEeVs4QJ
         9VLxvG2Vr77V6ZDB9F7lCfzHVLpg2YH8PpdiKGp3EFVarvQgZ+W41Tovzohnef9KX3O1
         LIO+cjPAgYmFaPWSGwl2trUu4QmBOpBtajOQFZQtoeioVNS0hzMuULXso/X2trO4YLyQ
         Fr0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=aBMzLrQZ0TpPqPmTpIrNPOPmG9uamxAtI1bGLNuU4a4=;
        b=EGocUjVq4cO1WQMjbs8XB+RNtH4lwn549yNJbmvn0uT9hbnhWEYdr40YftGB+6tfDS
         7Md5Nc/b3PmGwOAX9DOjvzTe6+kggFvHeeI3CzcqPDZC3vXZNfnr/1gfQq4ghcaycSZi
         pBrgWBx1UU5yxqwcfqNyIN7mg6eJkMQL+h65ShhK73am9RfJ7Zxe13iVPr2a+DI8kE/n
         7oXiJURmPRjI/QqPToysZPQQ7l5QM78YPpHUtoPxeQBSKuy2GT4mFIW94nBjB/2DscK/
         Hb6Ry5drBPpWp1ayEsc38LL8Q5lfinkt/MJyLJpzswWoBixU5E0/bjfFJOWqkb03wnHA
         GkYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MJh05eYo;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e33 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aBMzLrQZ0TpPqPmTpIrNPOPmG9uamxAtI1bGLNuU4a4=;
        b=Ng8+Wfj9nlEkPLIFHTQVcP591Gtf/WWsR8O0w3h5m/NlbhTXrCZBjNvNMPT0/nuzrv
         5T3H38FGmE4Ptb+QYPN/z9Z9+4hFXAK8UmJ7VSVygm3Us+B75wJHMWexcBBiikLXDkSC
         wwtP3om6EEUetCmQAQfU91DwA9hlpDPvox5CxLXqSxpL6Xb1ohSH2QfIZz7UBvp/MT29
         jDZx+tTdSXxZRHJM9y18UelTNNlNQQLYckfuGB2BJvR+RrOReJrGyI3rY5V9OWwjZEjt
         1Vhz6O3dW7Okf+TuENPnBohmO2p64vyR0/TUhy4rvVPRd3KXqPmXLeaUPaIoKsm66QMA
         Ff0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aBMzLrQZ0TpPqPmTpIrNPOPmG9uamxAtI1bGLNuU4a4=;
        b=f5zv7h3Me3/1auKax/FwOYOrwgKKJUTS7f44jB1vGu9cHnPehfls0NLgKSUFxCm7Q6
         Qsr58iWUkHPrvnx4a5FmXpyD/KeQlgc9k/T3K5gDHtEFPNhQAGsnfE0ecUeo9HrfvJz6
         Fk3O4AfWjIF7DtLw7Q258QoXHv+XucquyChEmBjc+3xClHkdMGvSer63DcmYJRE1sJlG
         c73r4/RoqrfMfKRLIN2lDbWTYg9bNDG8agpxQJGOJjCeNlRHo1yhvhqwLMFdWYB5D+FI
         sRVRdY74RYU3MH3RjCtmyvaK3g2w7XnVbpVTCbTWJGCseKC0yh9o4KSjuwjXtRQTTNJ6
         CItw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aBMzLrQZ0TpPqPmTpIrNPOPmG9uamxAtI1bGLNuU4a4=;
        b=sZWxWs1/0jc7K50ROQus0/VwC1/SP/NEEoSgxgz9FdmxEhK9DsiZmdBpWdM75imLve
         QOc9aJ2prkwTZKmz7ghg6Tbpy301na5fFd5kbWeuAvScF+iBBsNPSJAUAKd9CLOuX9Xk
         VzaX0ALZeQGU1zxKitEoFSXS6gnJgIZtxmhvNGHhiOpvjgcEkjAh2AWbhlliIQdWJvU5
         84zLvdhUXGYsZzZ7+xvRtFsJqJPuE7sha+MilBaUdyfxggOeN/U5qxR5xMoKfDNkLhoe
         8NpQRJSgb9rUJWxp3uN+szVA6IPVh8uABBQMEKOlYrPTaf94sJo+xpjIiWhwZe51pwj7
         gkWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337zLTffiO/yMeFbf1yu3Z1jLjpTZyKfE2wutLnIFlhHNBSYqoP
	pggQk9eIY5QegLWdf5OXG9Y=
X-Google-Smtp-Source: ABdhPJzIDTKegbrxr2lCZHcuOldG5ni/a+6AUtq/LCHPeZ+fZpcTEKfqBw6GYJ5Qd6EMZ25b2tKYzQ==
X-Received: by 2002:a17:90a:6c90:: with SMTP id y16mr15365625pjj.129.1610787509808;
        Sat, 16 Jan 2021 00:58:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4881:: with SMTP id b1ls5894605pjh.1.gmail; Sat, 16
 Jan 2021 00:58:29 -0800 (PST)
X-Received: by 2002:a17:902:6843:b029:de:439f:dd49 with SMTP id f3-20020a1709026843b02900de439fdd49mr14528355pln.7.1610787509104;
        Sat, 16 Jan 2021 00:58:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610787509; cv=none;
        d=google.com; s=arc-20160816;
        b=JR92YMvFPAGt3vjYY1RsvuGRwUCASG6VS/1SyNBWMZAsJFv9HZSK/Ut1a3Gn7aw1qp
         uJPt200zGDpcPH96zfUwzqQbqRSoYCPybSZPIIcpMVR7vR4G9loHr4KbrSn7BV4wG05y
         TWKe0/7Z/gaMYnT6jLagRhpLyhipu7ZCs2/QG3Xkem5T0Dh1GNWmBYHq3Eb1Ci5HVYn7
         mqaWNIeo3cFOAXX8dFpaZ649Xbd0xxxZQZWI26iAL4luooPepiCRb2IW+KxQpXkaqCQz
         mdp0Qs1oWpmzprc3392jdJRy/SfI3Lwfh+PQJZkuJblv05NbGrTB9BSvI/Iav+5ZZoqH
         Q8Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=O9TQPLWzylJtdUhjEGIQhWoGnDjzWuMSqgBN/X7C7oc=;
        b=Rb1TmSRE53Bow5pI/r9oXP2YmaIfch/FlQXmbPZvi6YUuIivusGQUqAF6Bzttmexdf
         xvJTadze+tbEaYjQxV1LUaR4UudN1+4GYJpY/otjQ6GDzHZj9f1RPQw+RmksEAP09E79
         +Lkni1sMpRyN7kBl/UGCvhGdB3F2fs0L6cRGog6P2E/lOWKPCCQ/iFpeisaTm5qEvkyw
         C5lOuZMfsLYz5omRpHa1zEEVA2SeaGsvguh7u3gweieKBejpIfcAQrMGC40BoPTbG+kw
         kpUJdyxOeHJsX7jjUusBcC+slJI8stoGzCFrsm+ujc7CoK/TFo5EFH5cIn7GSOQ/ucDW
         TOzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MJh05eYo;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e33 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com. [2607:f8b0:4864:20::e33])
        by gmr-mx.google.com with ESMTPS id t9si440352pjv.2.2021.01.16.00.58.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Jan 2021 00:58:29 -0800 (PST)
Received-SPF: pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e33 as permitted sender) client-ip=2607:f8b0:4864:20::e33;
Received: by mail-vs1-xe33.google.com with SMTP id 187so2433240vsg.4
        for <clang-built-linux@googlegroups.com>; Sat, 16 Jan 2021 00:58:28 -0800 (PST)
X-Received: by 2002:a67:3008:: with SMTP id w8mr13398901vsw.32.1610787508201;
 Sat, 16 Jan 2021 00:58:28 -0800 (PST)
MIME-Version: 1.0
References: <202101141227.3CQFCbmL-lkp@intel.com>
In-Reply-To: <202101141227.3CQFCbmL-lkp@intel.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Sat, 16 Jan 2021 14:28:17 +0530
Message-ID: <CAFqt6zZJBKDThBm5-60=8W1w+WHC=0NDKznGd9niaBPi+BsRVg@mail.gmail.com>
Subject: Re: [linux-next:master 2144/2798] drivers/net/ethernet/marvell/prestera/prestera_switchdev.c:1049:11:
 warning: variable 'vid' is uninitialized when used here
To: kernel test robot <lkp@intel.com>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Jakub Kicinski <kuba@kernel.org>, Ido Schimmel <idosch@nvidia.com>, 
	Florian Fainelli <f.fainelli@gmail.com>, Kurt Kanzenbach <kurt@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jrdr.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MJh05eYo;       spf=pass
 (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e33
 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jan 14, 2021 at 9:54 AM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   aa515cdce7a151dcc14b7600d33f1414c6fa32c9
> commit: b7a9e0da2d1c954b7c38217a29e002528b90d174 [2144/2798] net: switchdev: remove vid_begin -> vid_end range from VLAN objects
> config: x86_64-randconfig-a004-20210114 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 6077d55381a6aa3e947ef7abdc36a7515c598c8a)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=b7a9e0da2d1c954b7c38217a29e002528b90d174
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout b7a9e0da2d1c954b7c38217a29e002528b90d174
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/net/ethernet/marvell/prestera/prestera_switchdev.c:1049:11: warning: variable 'vid' is uninitialized when used here [-Wuninitialized]
>                                                 vid, flag_untagged,
>                                                 ^~~
>    drivers/net/ethernet/marvell/prestera/prestera_switchdev.c:1032:9: note: initialize the variable 'vid' to silence this warning
>            u16 vid;
>                   ^
>                    = 0
>    1 warning generated.
>
>
> vim +/vid +1049 drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
>
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1020
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1021  static int prestera_port_vlans_add(struct prestera_port *port,
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1022                                  const struct switchdev_obj_port_vlan *vlan,
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1023                                  struct switchdev_trans *trans,
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1024                                  struct netlink_ext_ack *extack)
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1025  {
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1026       bool flag_untagged = vlan->flags & BRIDGE_VLAN_INFO_UNTAGGED;
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1027       bool flag_pvid = vlan->flags & BRIDGE_VLAN_INFO_PVID;
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1028       struct net_device *dev = vlan->obj.orig_dev;
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1029       struct prestera_bridge_port *br_port;
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1030       struct prestera_switch *sw = port->sw;
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1031       struct prestera_bridge *bridge;
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1032       u16 vid;
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1033
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1034       if (netif_is_bridge_master(dev))
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1035               return 0;
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1036
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1037       if (switchdev_trans_ph_commit(trans))
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1038               return 0;
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1039
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1040       br_port = prestera_bridge_port_by_dev(sw->swdev, dev);
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1041       if (WARN_ON(!br_port))
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1042               return -EINVAL;
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1043
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1044       bridge = br_port->bridge;
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1045       if (!bridge->vlan_enabled)
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1046               return 0;
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1047
> b7a9e0da2d1c954b Vladimir Oltean 2021-01-09  1048       return prestera_bridge_port_vlan_add(port, br_port,
> e1189d9a5fbec815 Vadym Kochan    2020-09-16 @1049                                            vid, flag_untagged,

Currently vid is passed as garbage value. Is initializing vid = 0 and
passing it to prestera_bridge_port_vlan_add()
the right thing to do ? Or do we need to pass more appropriate values ?

> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1050                                            flag_pvid, extack);
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1051  }
> e1189d9a5fbec815 Vadym Kochan    2020-09-16  1052
>
> :::::: The code at line 1049 was first introduced by commit
> :::::: e1189d9a5fbec8153dbe03f3589bc2baa96694e2 net: marvell: prestera: Add Switchdev driver implementation
>
> :::::: TO: Vadym Kochan <vadym.kochan@plvision.eu>
> :::::: CC: David S. Miller <davem@davemloft.net>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFqt6zZJBKDThBm5-60%3D8W1w%2BWHC%3D0NDKznGd9niaBPi%2BBsRVg%40mail.gmail.com.
