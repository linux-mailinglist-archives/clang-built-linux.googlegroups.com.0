Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCGXTLXQKGQEMRUK5VA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 28679110457
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Dec 2019 19:38:02 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id 109sf1984888otv.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Dec 2019 10:38:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575398280; cv=pass;
        d=google.com; s=arc-20160816;
        b=AXDiMShSk5GVNnGwqri6ePWilEecbqZf8COADgqdx2hj0Wz7tzZdRkikWcP0KaAvT8
         u4azxBLqvJaPGU74SrA8gr20JKgf9O3WsmPYCryskmwyH/K3EkTASvBlxkwskj5gvZ86
         GTMy7sVLYIdtDMdeks1Jts3G/kLHm3HXRs1rIbjfpsCnNcDNR4xuXZLFCWoA4p06fUNj
         jmvxF8MB27ola3WN0uwqAIQ39RYcLOsoNdtUA5AdKOyAt86nMP0vGiuX5KAYtWzCZdvs
         Y4v4osQbejxqTWDy4kI5d79tvUYDbyVMRIM06T6zK3So1/KumDGoLtymALcVhe8Pt6Y9
         gRZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=DHTw/gcYtcld5KJgrR6itBkBUN/XHQ6pSbmGYBCZjRE=;
        b=SRac50nxYSGkUp3qgqfQROWOFEtt6s6stMCHXQT+cF8NqnYEgDFtVmrvffJ2zwaF50
         Gs0/UPPfPErsIUiGJp0z1OyDS/xeJaFHGLHAuLrE/utfnG2fM0thWpkDaDNfjdNqWolf
         SJLlYIwQGfjmzgaCJ/AOJktlMW2+xGHE9XY/hBHjO44wkRXMRZCBm6r+/zkR325lQufe
         ulYdqj8t9zMI/jQ3Urx0/7lk/ssmZus2f3GEEmcLSls7X9w5J2orFC90MFzTBSO9pU+m
         of5qgOdIuRyEdb++Yupzkyztry/wImCO/AJ5SElqzBr+6qoTscqOvkcr8IebkeJJfs1b
         cp7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sn5LL99I;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DHTw/gcYtcld5KJgrR6itBkBUN/XHQ6pSbmGYBCZjRE=;
        b=ivk+x7GukJwXc40kXX3aDzKXlI94iXTCOMG3tMA6crRRpe9IFxKIIV+4bXCzct7Luc
         hmnXK5DcWFErt/u/hZmTl/C4lINZnTQJhHtmzOMClMcUt8rnOZEz9I36utHYFPUaiFHP
         1voQycWTpD2tjjWrHltCzAuuf4gyPx7t3XME5/vh96df23lxNw5chpfTVteMRNhbYKIb
         qrZ8Y3E0HY/wj1hQ70ZcxEWYAr+6NsZIAZ/STCZrsRuEphah3p4Z+Wo89TRJZD6/NOym
         P7OWDfgZVNqHB5g+PQekkRW7J6zBHhLTNwZMdpMJALZVW1sEmL5KkqdeFP5FKDxUhHTB
         I+VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DHTw/gcYtcld5KJgrR6itBkBUN/XHQ6pSbmGYBCZjRE=;
        b=LHY04UQlEUNbzUw2uqpAN8Rlh7wzy2r1VFbakextIHo4c0UhaXxdEzGFUVzVd/AHva
         n7oOLIFqIV9AhRJkSftLSC8DRpML3kZjbMRuW90mS9itS1UZZ+EaCASuaoSYQ4FYTqWl
         qHXYDky/3SivmWGJbkoVhJZ+7vV3NU0X7H6VVoIyGRDFWdkA34FmkKygIQPyDPFK4aMT
         cwP+wTEc+k+S/qageqCOdGm6a4bwaVgMRBdmsuZFNjAe0t2geR4q821/TUUAdM+s7irQ
         Y4jtG7cc7/e2K9Rb103ft8LifKD9bd236/jZLRXV7KixXegZ+7mDglXUTpEdeuAKf85k
         4lTw==
X-Gm-Message-State: APjAAAX/3Q/6AQe73u/8QgWyBqVDHK4tV45ROuu9WxTfldnGgsFoY4BD
	9H/RHUoXm8hfajw8g2YxlOQ=
X-Google-Smtp-Source: APXvYqycyL98wskPiCHGErekeiy5zxeDTSVH2geOGLDvesckZnz4eMY/cK57le12m84dpbrY0ZnGcw==
X-Received: by 2002:aca:fd58:: with SMTP id b85mr5006481oii.106.1575398280726;
        Tue, 03 Dec 2019 10:38:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:fc47:: with SMTP id a68ls745694oii.5.gmail; Tue, 03 Dec
 2019 10:38:00 -0800 (PST)
X-Received: by 2002:aca:1918:: with SMTP id l24mr4859980oii.19.1575398280365;
        Tue, 03 Dec 2019 10:38:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575398280; cv=none;
        d=google.com; s=arc-20160816;
        b=yVZcKOkL8KVlhbZEAJpOiDeq903nHmo4PfeE3kI4rbrr7Lc+QPzuhf7khSAZ8516ZB
         RG6W5aq3ms6aHwKN9MVXQG3Iw210GjccQ+PoGeN3PcwyOWnhN33Vr/UBE60UmvF9lyye
         S5IaEsr1XVG59BlkU8rTDVA2QNr3i0/QJHThdIFKEfOIBNpmZ2ye0TRwEde4xs/Y/RC7
         4h9F1BczKgUu6KCOLTWvsWNU1PkHu8qF5bGcEkbvyk1vB3wQdWy7goo0D6KstD72OUEV
         d3rFiDO8zZidFGhfz+m8s07GlMEIq8p5hcduFVnm7E3jOWoFlVfLDPV06ACGNMOmzD0S
         JcQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oy3AI/D2cMPKIfM7RIV8ZLT/+l9v1Cf4asT/xEzMT+M=;
        b=b290hHs9ufdlZWRoRQ4vEyzIFJLTraeO1bis/mHxdcd0VB3z+a6iEEK05LobF15b3G
         9X7a1vMhUixpz8hjkvrK6RGoA2See3jzJkL2lxOPo4Aa3p+Wcds8sW3SEyNaK5kTW1RQ
         dmSPs6FvJ7vZ22Aez+GQbYF9iQ+Vv1LrG29bfQkLu8GTkToKVRWi/kGzs8yj0falgWuK
         I7Q4zrvhnGRRzJmwfZqQEtNy3sCj4k+Jsvy/KqcuyfT/Sn4EoPt4Wijri4apCUWp+FDF
         SD3nelFA4AVgDWeC1SdVyr2ti4AulgseWI8X23NPL/wmhCE/WWHbZ3CuiB0qd7T601Ly
         2G3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sn5LL99I;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id x65si213476oig.5.2019.12.03.10.38.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Dec 2019 10:38:00 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id s18so2274306pfm.4
        for <clang-built-linux@googlegroups.com>; Tue, 03 Dec 2019 10:38:00 -0800 (PST)
X-Received: by 2002:a65:590f:: with SMTP id f15mr6722974pgu.381.1575398279180;
 Tue, 03 Dec 2019 10:37:59 -0800 (PST)
MIME-Version: 1.0
References: <201912040139.EtA8bCsH%lkp@intel.com>
In-Reply-To: <201912040139.EtA8bCsH%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 3 Dec 2019 10:37:48 -0800
Message-ID: <CAKwvOdm6QUn0jaNkr-D=WnKt42DzxeX9DCnJckzezPbBg+QpVw@mail.gmail.com>
Subject: Re: [PATCH RFC v7 net-next] netdev: pass the stuck queue to the
 timeout handler
To: "Michael S. Tsirkin" <mst@redhat.com>
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	kbuild-all@lists.01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sn5LL99I;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Hi Michael,
Below is a report from 0day from a build w/ Clang, can you please take
a look?  Looks like the signedness of the final parameter of the
callback should be changed?

On Tue, Dec 3, 2019 at 9:46 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20191203071101.427592-1-mst@redhat.com>
> References: <20191203071101.427592-1-mst@redhat.com>
> TO: "Michael S. Tsirkin" <mst@redhat.com>
>
> Hi "Michael,
>
> [FYI, it's a private test report for your RFC patch.]
> [auto build test ERROR on v5.4-rc8]
> [also build test ERROR on v5.4 v5.4-rc7]
> [cannot apply to net-next/master jkirsher-next-queue/dev-queue net/master next-20191202 next-20191203]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Michael-S-Tsirkin/netdev-pass-the-stuck-queue-to-the-timeout-handler/20191203-152315
> base:    af42d3466bdc8f39806b26f593604fdc54140bcb
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 7999cd41d16d841d66c9c91b56bddaf209c54955)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> drivers/net/ethernet/sfc/efx.c:2467:21: error: incompatible pointer types initializing 'void (*)(struct net_device *, unsigned int)' with an expression of type 'void (struct net_device *, int)' [-Werror,-Wincompatible-pointer-types]
>            .ndo_tx_timeout         = efx_watchdog,
>                                      ^~~~~~~~~~~~
>    1 error generated.
> --
> >> drivers/net/ethernet/sfc/falcon/efx.c:2219:21: error: incompatible pointer types initializing 'void (*)(struct net_device *, unsigned int)' with an expression of type 'void (struct net_device *, int)' [-Werror,-Wincompatible-pointer-types]
>            .ndo_tx_timeout         = ef4_watchdog,
>                                      ^~~~~~~~~~~~
>    1 error generated.
>
> vim +2467 drivers/net/ethernet/sfc/efx.c
>
> e5fbd977641c92 drivers/net/ethernet/sfc/efx.c Jon Cooper        2017-02-08  2462
> 7fa8d547049aae drivers/net/ethernet/sfc/efx.c Shradha Shah      2015-05-06  2463  static const struct net_device_ops efx_netdev_ops = {
> c3ecb9f3235ce6 drivers/net/sfc/efx.c          Stephen Hemminger 2008-11-21  2464        .ndo_open               = efx_net_open,
> c3ecb9f3235ce6 drivers/net/sfc/efx.c          Stephen Hemminger 2008-11-21  2465        .ndo_stop               = efx_net_stop,
> 4472702e657580 drivers/net/sfc/efx.c          Ben Hutchings     2010-06-08  2466        .ndo_get_stats64        = efx_net_stats,
> c3ecb9f3235ce6 drivers/net/sfc/efx.c          Stephen Hemminger 2008-11-21 @2467        .ndo_tx_timeout         = efx_watchdog,
> c3ecb9f3235ce6 drivers/net/sfc/efx.c          Stephen Hemminger 2008-11-21  2468        .ndo_start_xmit         = efx_hard_start_xmit,
> c3ecb9f3235ce6 drivers/net/sfc/efx.c          Stephen Hemminger 2008-11-21  2469        .ndo_validate_addr      = eth_validate_addr,
> c3ecb9f3235ce6 drivers/net/sfc/efx.c          Stephen Hemminger 2008-11-21  2470        .ndo_do_ioctl           = efx_ioctl,
> c3ecb9f3235ce6 drivers/net/sfc/efx.c          Stephen Hemminger 2008-11-21  2471        .ndo_change_mtu         = efx_change_mtu,
> c3ecb9f3235ce6 drivers/net/sfc/efx.c          Stephen Hemminger 2008-11-21  2472        .ndo_set_mac_address    = efx_set_mac_address,
> 0fca8c97612f90 drivers/net/ethernet/sfc/efx.c Ben Hutchings     2012-01-09  2473        .ndo_set_rx_mode        = efx_set_rx_mode,
> abfe903980161b drivers/net/sfc/efx.c          Ben Hutchings     2011-04-05  2474        .ndo_set_features       = efx_set_features,
> 4a53ea8a74248a drivers/net/ethernet/sfc/efx.c Andrew Rybchenko  2016-06-15  2475        .ndo_vlan_rx_add_vid    = efx_vlan_rx_add_vid,
> 4a53ea8a74248a drivers/net/ethernet/sfc/efx.c Andrew Rybchenko  2016-06-15  2476        .ndo_vlan_rx_kill_vid   = efx_vlan_rx_kill_vid,
> cd2d5b529cdb9b drivers/net/ethernet/sfc/efx.c Ben Hutchings     2012-02-14  2477  #ifdef CONFIG_SFC_SRIOV
> 7fa8d547049aae drivers/net/ethernet/sfc/efx.c Shradha Shah      2015-05-06  2478        .ndo_set_vf_mac         = efx_sriov_set_vf_mac,
> 7fa8d547049aae drivers/net/ethernet/sfc/efx.c Shradha Shah      2015-05-06  2479        .ndo_set_vf_vlan        = efx_sriov_set_vf_vlan,
> 7fa8d547049aae drivers/net/ethernet/sfc/efx.c Shradha Shah      2015-05-06  2480        .ndo_set_vf_spoofchk    = efx_sriov_set_vf_spoofchk,
> 7fa8d547049aae drivers/net/ethernet/sfc/efx.c Shradha Shah      2015-05-06  2481        .ndo_get_vf_config      = efx_sriov_get_vf_config,
> 4392dc6900618c drivers/net/ethernet/sfc/efx.c Edward Cree       2015-05-20  2482        .ndo_set_vf_link_state  = efx_sriov_set_vf_link_state,
> cd2d5b529cdb9b drivers/net/ethernet/sfc/efx.c Ben Hutchings     2012-02-14  2483  #endif
> 08a7b29be9734a drivers/net/ethernet/sfc/efx.c Bert Kenward      2017-01-10  2484        .ndo_get_phys_port_id   = efx_get_phys_port_id,
> ac019f08953278 drivers/net/ethernet/sfc/efx.c Bert Kenward      2017-01-10  2485        .ndo_get_phys_port_name = efx_get_phys_port_name,
> 94b274bf5fba6c drivers/net/sfc/efx.c          Ben Hutchings     2011-01-10  2486        .ndo_setup_tc           = efx_setup_tc,
> 64d8ad6d745bbb drivers/net/sfc/efx.c          Ben Hutchings     2011-01-05  2487  #ifdef CONFIG_RFS_ACCEL
> 64d8ad6d745bbb drivers/net/sfc/efx.c          Ben Hutchings     2011-01-05  2488        .ndo_rx_flow_steer      = efx_filter_rfs,
> 64d8ad6d745bbb drivers/net/sfc/efx.c          Ben Hutchings     2011-01-05  2489  #endif
> e5fbd977641c92 drivers/net/ethernet/sfc/efx.c Jon Cooper        2017-02-08  2490        .ndo_udp_tunnel_add     = efx_udp_tunnel_add,
> e5fbd977641c92 drivers/net/ethernet/sfc/efx.c Jon Cooper        2017-02-08  2491        .ndo_udp_tunnel_del     = efx_udp_tunnel_del,
> c3ecb9f3235ce6 drivers/net/sfc/efx.c          Stephen Hemminger 2008-11-21  2492  };
> c3ecb9f3235ce6 drivers/net/sfc/efx.c          Stephen Hemminger 2008-11-21  2493
>
> :::::: The code at line 2467 was first introduced by commit
> :::::: c3ecb9f3235ce6e39249690cdd24d678894c2c72 sfc: convert to net_device_ops
>
> :::::: TO: Stephen Hemminger <shemminger@vyatta.com>
> :::::: CC: David S. Miller <davem@davemloft.net>
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm6QUn0jaNkr-D%3DWnKt42DzxeX9DCnJckzezPbBg%2BQpVw%40mail.gmail.com.
