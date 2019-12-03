Return-Path: <clang-built-linux+bncBCQYDA7264GRBT7WTLXQKGQEDPI5FVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 761DD110571
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Dec 2019 20:45:21 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id x9sf2260895plv.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Dec 2019 11:45:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575402320; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZiKsB34VPqV98diAuAb1hvhSsWXotOAyJkZ5s9cls8QgPrUZJZehqk4P7QyeqQb+G5
         mtkXraFVyC1eezHi5z3x3DnhgQ330JLlCNIS0jwIA3XyHxcsjz3+vRzJc+HYbTp7jDID
         Va1tn7N73gEINBUmsyuUrC3oRBFbhDJ8ZHI4IBPU7RoC462tr1sXcqJ+Xdpv4a6WaGOT
         HiA4CwT0JpZzGtBjsyJn7iDomfqS+zeUFBc3RHdOxq9gUmo7RODHo4bhg5w8/oNEOQb8
         vrhAlXwF9VGe4E0W8k1JRNTjHKyx9b9C5MrvjfUrAFqeuCSXjAcECmFMRLpi1S+7PW3t
         FwEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PFcq8guA47Ugp5Vr52pJs9rt9hODbpuc4ObWH/Wg/0g=;
        b=XYqXeIDhcuwjpX0XE+FO8kHBNhfc3DiNAv9lBZXiYeyHTZUYwbnNAEPxffZhoHhVa1
         uYiX8RgGRz5v/TyOrbEPTP3D1GnlJHv1lsSEuG5FY7F56WfMsKWuUGBEthm4/lFbr6yn
         fU+0Ksf5tCAtGPHJggwnRivAWRR0ROqwh3VjXzCtzsq/EMCnSO6dUjeBjl2PGwrUW89g
         xKBhppXEJC5kE4T+knSd4pXx7mc0gJwAojmIehlpaom1yVwaqUTrfqel8NckagXopvhr
         HPci7ZUGs/2DlJVAHlXP3gPU3UGkxEpZ2LzcjULV+6Mnot0V6HkOLbk+YeDuby2goMbC
         c3CQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Uy80WJ0T;
       spf=pass (google.com: domain of mst@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=mst@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PFcq8guA47Ugp5Vr52pJs9rt9hODbpuc4ObWH/Wg/0g=;
        b=A+3dhIXpVnBi5NM70xPl6Cb246uz+cTmwCrE5w/ilVQ/Husu9w1p7N2lvg1t62yPtC
         hGJjWSifIu/yhSMkX6bhv2m6n5Ez0p0dM4ikv6L7Vwz5UnPb/Gafgu71F2Pg3ANvLQ7g
         w6AgFXFVxDWpgf35cD7+Tti/kROl6HzEI/mknhexIaIG9VgjDm70mv/ggxIupdA8Yxpj
         fDdC0tGdGpn/tH1gE1pe5079iOZBS8nssbD1GMz/UyotvQ5btLjYt6ZytA7fuF0IFjO+
         NNiXnvgdzXzag+8tnIMTrr9jbixBxt4B4MMtR5HhJekx+RX363u8kQykvmVzFfPVWbYQ
         DI3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PFcq8guA47Ugp5Vr52pJs9rt9hODbpuc4ObWH/Wg/0g=;
        b=bKiknmhHPb9Js0PvR++oC1OwR7LsZvnOodE3yIaZH7BVnjC0PGOH6BIzXvYgD/EnN4
         hlOHACtfiuNH5nFtDRh/kCr7Rl+B2ztU+83GFEzl3xPhGMRr4wwptzqzuq+Qi8WJQ8IB
         Aw0R92Kul5GPNLlF6C6BfKCxgsdd80g14dstRZL0XuMkSvfJlSPR5Nn4WKO1j09m1wN9
         nEZvZZCw9hmNe8wfdkWtxp1YWEUVAr2PB98Nr6fyPeb9DNhx1gaU1FFpwCS1WcKTudKu
         b/EgqFqcNMOZxOJC6ymi7f8zc+GjxEGRndoKNkroihMFwKTXwnLt7LQJXwsoJS+3YcHM
         VpyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXnRk9yIYfFwzVLixATdBvXqW0pg1MR8M9KkCwTz4HeEWdV0iSU
	5hFj2vFclQr1Z9CMs8ntdgw=
X-Google-Smtp-Source: APXvYqx6BSOv9ieKreDJCQy+xBiiS+TL4se3lZDTCns+7a6orAuqU37iVGlLBo0CN/zJizWBJF13GA==
X-Received: by 2002:a63:4f5c:: with SMTP id p28mr7004473pgl.409.1575402319758;
        Tue, 03 Dec 2019 11:45:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2223:: with SMTP id i35ls996656pgi.11.gmail; Tue, 03 Dec
 2019 11:45:19 -0800 (PST)
X-Received: by 2002:a63:fb05:: with SMTP id o5mr7261030pgh.355.1575402319193;
        Tue, 03 Dec 2019 11:45:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575402319; cv=none;
        d=google.com; s=arc-20160816;
        b=Yhhbt5+O0VEbA0FA9vxjLvJEX9XlqjLtRtChQADZbqo9MmSuohBCWFcxqzOWxJyEYY
         algcS+mtuQmunslwbkOwMn/SGhgpVmCzplo7JN0TfESvOXOLEoxatmIiITdly8fPxDK0
         OorUbnMRRO3fr+H5D7FeNJ2gg/Udrv9bMpT4eRDRkOJ8/AcYif7P785azMDbHPtqI4G5
         2nr8S7lEsC11U3s5lPlVO8Q3fI1xD+la0S1fnfYORhHgR0lZzbRDNm2o+tmfA9AELIYg
         Z3uIjeYuy+07quUsfext3kypiOnjO1wyOtFyb0440DlXVTzdxuwbIelbvJVcertOuOJH
         8G4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=j8fjML7c+k9HGWD092I7NQkEmplpKfDdYHKXZWVvHC4=;
        b=uELw89U1c4oz2wY+NksfDDit+Ex9q9eR6DrbrsKzsY+nJYOZxfzEiXn735qAezZt1n
         aFzWzCPXHOjXfEDwK7T52xFSe5C3woSEIT4LPpLWWm5vrLw8qHGqqvyNVMngR3/2ZNSK
         MyC82WIopfVvYM1WumvQHvs2pFpkHRgVx5epO4HFuyicLbwyrIhHf8FVclCpCr52aHq9
         agy0Fbh12L9B1swyIALjq5Kz7/6UNXr4fkjfvlIU1rAwgKgqCbkcaQ+viwDoBwaVKN7J
         UeU54Dg7d4KyL3t4NUNOiI/tsvuE3rA3vRzd8x/lS6OKb5HRDOpzuHnqdFTVyu5OsBgC
         ZIng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Uy80WJ0T;
       spf=pass (google.com: domain of mst@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=mst@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id h2si344992pju.2.2019.12.03.11.45.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Dec 2019 11:45:19 -0800 (PST)
Received-SPF: pass (google.com: domain of mst@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-410-2rKsUs5lNe6DiA_sE3TBNA-1; Tue, 03 Dec 2019 14:45:16 -0500
Received: by mail-qt1-f198.google.com with SMTP id e8so3241015qtg.9
        for <clang-built-linux@googlegroups.com>; Tue, 03 Dec 2019 11:45:16 -0800 (PST)
X-Received: by 2002:ae9:efcc:: with SMTP id d195mr7071012qkg.416.1575402315711;
        Tue, 03 Dec 2019 11:45:15 -0800 (PST)
X-Received: by 2002:ae9:efcc:: with SMTP id d195mr7070981qkg.416.1575402315371;
        Tue, 03 Dec 2019 11:45:15 -0800 (PST)
Received: from redhat.com (bzq-79-181-48-215.red.bezeqint.net. [79.181.48.215])
        by smtp.gmail.com with ESMTPSA id p35sm2303382qtd.12.2019.12.03.11.45.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2019 11:45:14 -0800 (PST)
Date: Tue, 3 Dec 2019 14:45:09 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org
Subject: Re: [PATCH RFC v7 net-next] netdev: pass the stuck queue to the
 timeout handler
Message-ID: <20191203144459-mutt-send-email-mst@kernel.org>
References: <201912040139.EtA8bCsH%lkp@intel.com>
 <CAKwvOdm6QUn0jaNkr-D=WnKt42DzxeX9DCnJckzezPbBg+QpVw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKwvOdm6QUn0jaNkr-D=WnKt42DzxeX9DCnJckzezPbBg+QpVw@mail.gmail.com>
X-MC-Unique: 2rKsUs5lNe6DiA_sE3TBNA-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: mst@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Uy80WJ0T;
       spf=pass (google.com: domain of mst@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=mst@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Dec 03, 2019 at 10:37:48AM -0800, Nick Desaulniers wrote:
> Hi Michael,
> Below is a report from 0day from a build w/ Clang, can you please take
> a look?  Looks like the signedness of the final parameter of the
> callback should be changed?

Yep, fixing it up, thanks!

> On Tue, Dec 3, 2019 at 9:46 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > CC: kbuild-all@lists.01.org
> > In-Reply-To: <20191203071101.427592-1-mst@redhat.com>
> > References: <20191203071101.427592-1-mst@redhat.com>
> > TO: "Michael S. Tsirkin" <mst@redhat.com>
> >
> > Hi "Michael,
> >
> > [FYI, it's a private test report for your RFC patch.]
> > [auto build test ERROR on v5.4-rc8]
> > [also build test ERROR on v5.4 v5.4-rc7]
> > [cannot apply to net-next/master jkirsher-next-queue/dev-queue net/master next-20191202 next-20191203]
> > [if your patch is applied to the wrong git tree, please drop us a note to help
> > improve the system. BTW, we also suggest to use '--base' option to specify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> >
> > url:    https://github.com/0day-ci/linux/commits/Michael-S-Tsirkin/netdev-pass-the-stuck-queue-to-the-timeout-handler/20191203-152315
> > base:    af42d3466bdc8f39806b26f593604fdc54140bcb
> > config: x86_64-rhel-7.6 (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 7999cd41d16d841d66c9c91b56bddaf209c54955)
> > reproduce:
> >         # save the attached .config to linux build tree
> >         make ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > >> drivers/net/ethernet/sfc/efx.c:2467:21: error: incompatible pointer types initializing 'void (*)(struct net_device *, unsigned int)' with an expression of type 'void (struct net_device *, int)' [-Werror,-Wincompatible-pointer-types]
> >            .ndo_tx_timeout         = efx_watchdog,
> >                                      ^~~~~~~~~~~~
> >    1 error generated.
> > --
> > >> drivers/net/ethernet/sfc/falcon/efx.c:2219:21: error: incompatible pointer types initializing 'void (*)(struct net_device *, unsigned int)' with an expression of type 'void (struct net_device *, int)' [-Werror,-Wincompatible-pointer-types]
> >            .ndo_tx_timeout         = ef4_watchdog,
> >                                      ^~~~~~~~~~~~
> >    1 error generated.
> >
> > vim +2467 drivers/net/ethernet/sfc/efx.c
> >
> > e5fbd977641c92 drivers/net/ethernet/sfc/efx.c Jon Cooper        2017-02-08  2462
> > 7fa8d547049aae drivers/net/ethernet/sfc/efx.c Shradha Shah      2015-05-06  2463  static const struct net_device_ops efx_netdev_ops = {
> > c3ecb9f3235ce6 drivers/net/sfc/efx.c          Stephen Hemminger 2008-11-21  2464        .ndo_open               = efx_net_open,
> > c3ecb9f3235ce6 drivers/net/sfc/efx.c          Stephen Hemminger 2008-11-21  2465        .ndo_stop               = efx_net_stop,
> > 4472702e657580 drivers/net/sfc/efx.c          Ben Hutchings     2010-06-08  2466        .ndo_get_stats64        = efx_net_stats,
> > c3ecb9f3235ce6 drivers/net/sfc/efx.c          Stephen Hemminger 2008-11-21 @2467        .ndo_tx_timeout         = efx_watchdog,
> > c3ecb9f3235ce6 drivers/net/sfc/efx.c          Stephen Hemminger 2008-11-21  2468        .ndo_start_xmit         = efx_hard_start_xmit,
> > c3ecb9f3235ce6 drivers/net/sfc/efx.c          Stephen Hemminger 2008-11-21  2469        .ndo_validate_addr      = eth_validate_addr,
> > c3ecb9f3235ce6 drivers/net/sfc/efx.c          Stephen Hemminger 2008-11-21  2470        .ndo_do_ioctl           = efx_ioctl,
> > c3ecb9f3235ce6 drivers/net/sfc/efx.c          Stephen Hemminger 2008-11-21  2471        .ndo_change_mtu         = efx_change_mtu,
> > c3ecb9f3235ce6 drivers/net/sfc/efx.c          Stephen Hemminger 2008-11-21  2472        .ndo_set_mac_address    = efx_set_mac_address,
> > 0fca8c97612f90 drivers/net/ethernet/sfc/efx.c Ben Hutchings     2012-01-09  2473        .ndo_set_rx_mode        = efx_set_rx_mode,
> > abfe903980161b drivers/net/sfc/efx.c          Ben Hutchings     2011-04-05  2474        .ndo_set_features       = efx_set_features,
> > 4a53ea8a74248a drivers/net/ethernet/sfc/efx.c Andrew Rybchenko  2016-06-15  2475        .ndo_vlan_rx_add_vid    = efx_vlan_rx_add_vid,
> > 4a53ea8a74248a drivers/net/ethernet/sfc/efx.c Andrew Rybchenko  2016-06-15  2476        .ndo_vlan_rx_kill_vid   = efx_vlan_rx_kill_vid,
> > cd2d5b529cdb9b drivers/net/ethernet/sfc/efx.c Ben Hutchings     2012-02-14  2477  #ifdef CONFIG_SFC_SRIOV
> > 7fa8d547049aae drivers/net/ethernet/sfc/efx.c Shradha Shah      2015-05-06  2478        .ndo_set_vf_mac         = efx_sriov_set_vf_mac,
> > 7fa8d547049aae drivers/net/ethernet/sfc/efx.c Shradha Shah      2015-05-06  2479        .ndo_set_vf_vlan        = efx_sriov_set_vf_vlan,
> > 7fa8d547049aae drivers/net/ethernet/sfc/efx.c Shradha Shah      2015-05-06  2480        .ndo_set_vf_spoofchk    = efx_sriov_set_vf_spoofchk,
> > 7fa8d547049aae drivers/net/ethernet/sfc/efx.c Shradha Shah      2015-05-06  2481        .ndo_get_vf_config      = efx_sriov_get_vf_config,
> > 4392dc6900618c drivers/net/ethernet/sfc/efx.c Edward Cree       2015-05-20  2482        .ndo_set_vf_link_state  = efx_sriov_set_vf_link_state,
> > cd2d5b529cdb9b drivers/net/ethernet/sfc/efx.c Ben Hutchings     2012-02-14  2483  #endif
> > 08a7b29be9734a drivers/net/ethernet/sfc/efx.c Bert Kenward      2017-01-10  2484        .ndo_get_phys_port_id   = efx_get_phys_port_id,
> > ac019f08953278 drivers/net/ethernet/sfc/efx.c Bert Kenward      2017-01-10  2485        .ndo_get_phys_port_name = efx_get_phys_port_name,
> > 94b274bf5fba6c drivers/net/sfc/efx.c          Ben Hutchings     2011-01-10  2486        .ndo_setup_tc           = efx_setup_tc,
> > 64d8ad6d745bbb drivers/net/sfc/efx.c          Ben Hutchings     2011-01-05  2487  #ifdef CONFIG_RFS_ACCEL
> > 64d8ad6d745bbb drivers/net/sfc/efx.c          Ben Hutchings     2011-01-05  2488        .ndo_rx_flow_steer      = efx_filter_rfs,
> > 64d8ad6d745bbb drivers/net/sfc/efx.c          Ben Hutchings     2011-01-05  2489  #endif
> > e5fbd977641c92 drivers/net/ethernet/sfc/efx.c Jon Cooper        2017-02-08  2490        .ndo_udp_tunnel_add     = efx_udp_tunnel_add,
> > e5fbd977641c92 drivers/net/ethernet/sfc/efx.c Jon Cooper        2017-02-08  2491        .ndo_udp_tunnel_del     = efx_udp_tunnel_del,
> > c3ecb9f3235ce6 drivers/net/sfc/efx.c          Stephen Hemminger 2008-11-21  2492  };
> > c3ecb9f3235ce6 drivers/net/sfc/efx.c          Stephen Hemminger 2008-11-21  2493
> >
> > :::::: The code at line 2467 was first introduced by commit
> > :::::: c3ecb9f3235ce6e39249690cdd24d678894c2c72 sfc: convert to net_device_ops
> >
> > :::::: TO: Stephen Hemminger <shemminger@vyatta.com>
> > :::::: CC: David S. Miller <davem@davemloft.net>
> >
> > ---
> > 0-DAY kernel test infrastructure                 Open Source Technology Center
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191203144459-mutt-send-email-mst%40kernel.org.
