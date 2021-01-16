Return-Path: <clang-built-linux+bncBDM3FG7YWUNBBUOXRKAAMGQE7T33MEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D87B2F8C5D
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 10:03:14 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id l1sf2842066uad.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 01:03:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610787793; cv=pass;
        d=google.com; s=arc-20160816;
        b=my/KDknl6RZn21E5TVsttB5oJC89jg4I9eqpQIl/0AyhyDlrVIY0buu2VIUKs154Pu
         fw6RanilnZl4VBUy0EACVpVWV1EGWMHAfYD2EaTLeS2KojekFKieIoH3QyKFez3UABRF
         J/2aHqOntZ99nV0YU/C4kRKASLiSsY5p8Jr2VYTgPGiyDhvpTyLz2lJYFpiw8fQE+Mc1
         djcTPoNbxRu99GOniBWFFf7vvWH4DjHK6ptU5FPzfix6oah5FiRgEmCZ5FjR+LB/hwFM
         A+Td3GmdZjqeVUn/pUiyEQuqPGEY695qElccBLBtm+5KyqJn0Gjbd7kgXIbKTe5VU+XR
         kRkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=eXW/B3iJbobbCtzHRHB/l2f7g9ad51rYXqIcgZxy+oU=;
        b=GbXDABdcgFGmWhSCV3pT/MS6mNkeqCrnHBZu4ldp+Y/V9mHc74N50Z/FDso9hohOps
         Jk0opdF+6NfqjTNKvVUtgR0jGQvjQjG5oRGq1JSZcPr6BQApWk46Phch8oNDZYM3oRza
         V/ogSLdqunX+0yZpbvgWd2n5MAayOON0X87uFVJO2o42nZiICgoiv/TaRoqpzbyGZkxI
         TTSt94YYTF9/vGc7ZdHXBpAg5G8BFxp4N0vd/6cGU6PG+nmyQzxgzeBfBGW+i4cP1KA4
         wJ8c7a449SNm5vVAm1gC+LMCyRxbsmq2veRs0nR20RT5pGpnMak8GP4PsZtsebywuikN
         ARhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QkfIS1Vd;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::92d as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eXW/B3iJbobbCtzHRHB/l2f7g9ad51rYXqIcgZxy+oU=;
        b=SZSRsVVTTjR4dBO+3ol/6UZ+BNSAeL9Ay1RKwWRZ12OU8uxm/gwbFVE9Y8Kws9tgEG
         sXId43PplsNDc7uv/3iZUOodMYnbL0GzVd4lMYM85BkDxuR30bqSBYyzr8rV0Hzv0/CV
         SXUqXszeFsHKMLovQ5BVUrPYBNejn5VZqbdXs4qHrVEacxXuKfGC4FiCGkmwJ7MgYX3C
         NsAUFF1ypGaZDQZKPIN+Fk3JNtv/i6b3cJVs/4QLBdQgiibi6siZO+5iJQWKFZfR0lts
         eaGnoYYxpT1dEr4hgLHxR+Pbfwjj0Qc3YH6tK9STXZCAgbv7uAwVW1HpVcXIOVTUWilv
         81Lw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eXW/B3iJbobbCtzHRHB/l2f7g9ad51rYXqIcgZxy+oU=;
        b=ax0Fj5ZbTSmFaYZ4KzwSKsYlMvRmFiTlBfgL1vVr0Paq8elw+w3gumG7eTP1Z3m604
         R5ds/ZiX75Fx2cybqDB9WZHc4Ick6NfwdFUOa5OBSf65ErhHjrEzD2aVT9CpTZFeBKG9
         9EJtSISCYZABBw5UqUTmXpxrmY0wEThv6JnwHm0spP+pgkWFwkGcX6qi9WfVsfYo5Q8I
         5j15I1/ZMhlxqeacT6F1um9F0yM/VmnLZBnmxOwB+x0sILkdClzBHiQ+MZ3HpCoalPb5
         KYT/4se6RwmCDUvZ2lMM6k8O/GsIATyQ2JSq5XJAQIZaUfooYAO5+wm8MJhgLVIZ5gbm
         Y2og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eXW/B3iJbobbCtzHRHB/l2f7g9ad51rYXqIcgZxy+oU=;
        b=db9cazVprMUxQOhWwwaoU5SGX0Nkc07+uuzB5bBt26GaI5pqF7CX6G7t5btP6IIOhr
         kVU5ZQVmS7HyWFfCm0eTIL8LjyHr32TRySsF8uw+sOqkj64AZaN3Gzz6Hh3kjJ23MqzX
         SaYcZkggJjzr2lQBq49tG5Vln6xQEmktYCy3FYhB/7X7XVR/RXjaTL6/ipsgxY5wXG7Y
         GJGUuoE7XrkhIn1XF819adFk3oqItl4tP7po3gDrV2U9WSDIsv6ZkKdSdEepxbEbmgzB
         SWjE3ooxg/w9tDKcmPU7euoVcNR1efV6XERPRTljsM9lY6y7RJ1cU91o8Cg+2w3Xkxxc
         4gUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wZ00BXOqS5ZnDtU9BXQNZ8FH0JBOa0OYURbEuXp1LVjHhlNLN
	yGUZBGA4AX8sQF2hApdk5CI=
X-Google-Smtp-Source: ABdhPJzaczI5V5wocFSWvUvCCkxA4x1gzZ7FBNf1BxsZu7Lr7hoQSNy67LAe0WzUSts2PYQVWqIUIw==
X-Received: by 2002:a67:6e02:: with SMTP id j2mr12556264vsc.52.1610787793334;
        Sat, 16 Jan 2021 01:03:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:25d1:: with SMTP id y17ls933977uan.9.gmail; Sat, 16 Jan
 2021 01:03:12 -0800 (PST)
X-Received: by 2002:ab0:6ecf:: with SMTP id c15mr12977691uav.52.1610787792879;
        Sat, 16 Jan 2021 01:03:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610787792; cv=none;
        d=google.com; s=arc-20160816;
        b=sVUTNcfOpFSYlVfW1AfEURd5g6suXAdsV8tkwkI/4xM6eFKCfuI6tLmbBj7f/PrQNd
         /onJHpB10H1fxwi1Br6KIMbIy2+EP0UmB0L4ZSTLCIQJuh6aKWJTZHi8l42D9jyMO0cM
         xkMNQTxFgjC0Qfmt5D/ZOs3JLEQIP+P0giVXvEjGjoSvQ9x+GBu43xnwqjFDWFPqQ5GJ
         jUOqhSjgtR1Sdfv1ljMldxJZ+ONrbE2x/wLnwQXJMchhuCk7AC+ddUxYUlwYr/nBYHmY
         Rj6AAYBB6pcn+XebhtHVfq5S1Um0CQE8bP3p6+wYU+Pqj8/rPCaQneiGMnNnVlQhjQ8O
         dcBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TGR+e6y4a4ALxxGALLyK0opaFiTH9KlJnPBPSPmQys8=;
        b=0z4MYptMST6NgNhh98k3Pb/GIItZOoZNVH1Ae57h7QOqtTcSam/AMotPlOddUkloBI
         Edvs+OwPPs1T6V97IadsH4bUtYNasJeUhISQZvM2UNSKg3k4j8tt+2hj29MVZYN44X4b
         GZ8c3sY+lLAIWHnGmEkBKXYTTDxBZuc7HGZJWaFYpidTuc0Cxhm0dgCHOlOEiCmivzmv
         zr6a1LegVoca4/tY9C0mCx/Y1Mgy32iqCQlgLZyu6DTuCnnKez0Jg0BgyZmgO1XWYM2f
         wJ27vd8E4OTeeKcdsS2AU3nh0HKJcb4a+/AN5cmy+NsmhDMUhhhbRzWKvCLUJV20oJ7k
         mwGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QkfIS1Vd;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::92d as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ua1-x92d.google.com (mail-ua1-x92d.google.com. [2607:f8b0:4864:20::92d])
        by gmr-mx.google.com with ESMTPS id h123si761440vkg.0.2021.01.16.01.03.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Jan 2021 01:03:12 -0800 (PST)
Received-SPF: pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::92d as permitted sender) client-ip=2607:f8b0:4864:20::92d;
Received: by mail-ua1-x92d.google.com with SMTP id j59so3755207uad.5
        for <clang-built-linux@googlegroups.com>; Sat, 16 Jan 2021 01:03:12 -0800 (PST)
X-Received: by 2002:ab0:3894:: with SMTP id z20mr12424187uav.82.1610787792585;
 Sat, 16 Jan 2021 01:03:12 -0800 (PST)
MIME-Version: 1.0
References: <202101141227.3CQFCbmL-lkp@intel.com> <CAFqt6zZJBKDThBm5-60=8W1w+WHC=0NDKznGd9niaBPi+BsRVg@mail.gmail.com>
In-Reply-To: <CAFqt6zZJBKDThBm5-60=8W1w+WHC=0NDKznGd9niaBPi+BsRVg@mail.gmail.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Sat, 16 Jan 2021 14:33:02 +0530
Message-ID: <CAFqt6zYtZ7GkjZkXtT=oJ7AjFmLCMSeuNOf299NMfQZCofDtxA@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=QkfIS1Vd;       spf=pass
 (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::92d
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

On Sat, Jan 16, 2021 at 2:28 PM Souptick Joarder <jrdr.linux@gmail.com> wrote:
>
> On Thu, Jan 14, 2021 at 9:54 AM kernel test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   aa515cdce7a151dcc14b7600d33f1414c6fa32c9
> > commit: b7a9e0da2d1c954b7c38217a29e002528b90d174 [2144/2798] net: switchdev: remove vid_begin -> vid_end range from VLAN objects
> > config: x86_64-randconfig-a004-20210114 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 6077d55381a6aa3e947ef7abdc36a7515c598c8a)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=b7a9e0da2d1c954b7c38217a29e002528b90d174
> >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout b7a9e0da2d1c954b7c38217a29e002528b90d174
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/net/ethernet/marvell/prestera/prestera_switchdev.c:1049:11: warning: variable 'vid' is uninitialized when used here [-Wuninitialized]
> >                                                 vid, flag_untagged,
> >                                                 ^~~
> >    drivers/net/ethernet/marvell/prestera/prestera_switchdev.c:1032:9: note: initialize the variable 'vid' to silence this warning
> >            u16 vid;
> >                   ^
> >                    = 0
> >    1 warning generated.
> >
> >
> > vim +/vid +1049 drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
> >
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1020
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1021  static int prestera_port_vlans_add(struct prestera_port *port,
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1022                                  const struct switchdev_obj_port_vlan *vlan,
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1023                                  struct switchdev_trans *trans,
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1024                                  struct netlink_ext_ack *extack)
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1025  {
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1026       bool flag_untagged = vlan->flags & BRIDGE_VLAN_INFO_UNTAGGED;
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1027       bool flag_pvid = vlan->flags & BRIDGE_VLAN_INFO_PVID;
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1028       struct net_device *dev = vlan->obj.orig_dev;
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1029       struct prestera_bridge_port *br_port;
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1030       struct prestera_switch *sw = port->sw;
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1031       struct prestera_bridge *bridge;
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1032       u16 vid;
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1033
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1034       if (netif_is_bridge_master(dev))
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1035               return 0;
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1036
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1037       if (switchdev_trans_ph_commit(trans))
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1038               return 0;
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1039
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1040       br_port = prestera_bridge_port_by_dev(sw->swdev, dev);
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1041       if (WARN_ON(!br_port))
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1042               return -EINVAL;
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1043
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1044       bridge = br_port->bridge;
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1045       if (!bridge->vlan_enabled)
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1046               return 0;
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1047
> > b7a9e0da2d1c954b Vladimir Oltean 2021-01-09  1048       return prestera_bridge_port_vlan_add(port, br_port,
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16 @1049                                            vid, flag_untagged,
>
> Currently vid is passed as garbage value. Is initializing vid = 0 and
> passing it to prestera_bridge_port_vlan_add()
> the right thing to do ? Or do we need to pass more appropriate values ?

Please ignore this comment. Vladimir has already posted the fix.
>
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1050                                            flag_pvid, extack);
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1051  }
> > e1189d9a5fbec815 Vadym Kochan    2020-09-16  1052
> >
> > :::::: The code at line 1049 was first introduced by commit
> > :::::: e1189d9a5fbec8153dbe03f3589bc2baa96694e2 net: marvell: prestera: Add Switchdev driver implementation
> >
> > :::::: TO: Vadym Kochan <vadym.kochan@plvision.eu>
> > :::::: CC: David S. Miller <davem@davemloft.net>
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFqt6zYtZ7GkjZkXtT%3DoJ7AjFmLCMSeuNOf299NMfQZCofDtxA%40mail.gmail.com.
